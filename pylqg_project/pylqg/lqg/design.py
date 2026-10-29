"""LQG design pipeline: port of LQG_FP7_GUI.mlapp (assembleStateSpace,
recalculateLQG, transformStateSpace, optimizedTransformStateSpace,
padStateSpace, assembleLQGStruct).

Where the GUI code and the paper text disagree the *code* is the default:
  lqr_method          'continuous' (code: lqr() gain is what is packed)
                      'lqrd'       (ZOH-equivalent cost, computed by the GUI but not packed)
                      'dare'       (paper Eq. 13-16)
  noise_discretization 'zoh'       (code: c2d(G) with Q/Ts)
                       'vanloan'   (paper Eq. 9e)
"""
from __future__ import annotations
from dataclasses import dataclass, field, replace
import numpy as np
import scipy.io as sio
import scipy.linalg as sla
from ..fixedpoint import shift_decompose, to_raw

N_STATES = 7
IDX = {"x": [0, 1], "y": [2, 3], "z": [4, 5], "phi": [6]}


@dataclass
class LQGParams:
    """Physical model + design options (== the GUI's parameter-set struct)."""
    Ts: float = 64e-9
    m: float = 5e-17
    f: tuple = (15e3, 40e3, 100e3)           # signed natural frequencies [Hz] (x, y, z)
    T_phi: float = 1e-4
    Gamma: tuple = (2 * np.pi * 1e3,) * 3    # damping rates [rad/s]
    P_W: tuple = (3.2e-34, 3.2e-34, 3.2e-34, 1e-6)   # process-noise PSD (x, y, z, phi)
    C_mat_full: np.ndarray = None            # (2,7) [V/m ...]
    B_mat_full: np.ndarray = None            # (7,2) already divided by m [m/s^2/V]
    P_V_mat_full: np.ndarray = None          # (2,2) measurement-noise PSD [V^2 s]
    R_LQR_full: np.ndarray = None            # (2,2)  (GUI: FbGain.^2)
    Q_LQR_usr: np.ndarray = None             # (7,7)
    use_x: bool = True
    use_y: bool = True
    use_z: bool = False
    use_phi: bool = False
    closed_loop_form: bool = False
    transformed_model: bool = True           # physical state normalisation (paper Eq. 25)
    numerical_transform: bool = True         # covariance balancing (paper Eq. 26-30)
    limit_transform: bool = True
    undo_transform: bool = True
    target_state_std: float = 0.01
    adc_factor: tuple = (1.0, 1.0)
    adc_offset: tuple = (0.0, 0.0)
    dac_factor: tuple = (1.0, 1.0)
    dac_offset: tuple = (0.0, 0.0)
    lqr_method: str = "continuous"
    noise_discretization: str = "zoh"
    shift_bits: int = 5
    input_matrix_max: float = 1.0
    output_matrix_max: float = 32.0

    def __post_init__(self):
        z = lambda *s: np.zeros(s)
        if self.C_mat_full is None:
            self.C_mat_full = z(2, 7)
        if self.B_mat_full is None:
            self.B_mat_full = z(7, 2)
        if self.P_V_mat_full is None:
            self.P_V_mat_full = np.eye(2) * 4e-12
        if self.R_LQR_full is None:
            self.R_LQR_full = np.eye(2) * 1e-20
        if self.Q_LQR_usr is None:
            self.Q_LQR_usr = np.eye(7)

    # ---- GUI file import -------------------------------------------------
    @classmethod
    def from_gui_mat(cls, path, Ts=64e-9, **over) -> "LQGParams":
        """Load a parameters_*.mat file saved by the LQG GUI (name/value list)."""
        d = {}
        for it in np.atleast_1d(sio.loadmat(path, squeeze_me=True, struct_as_record=False)["parsStruct"]):
            d[str(it.name)] = it.value
        m = float(d["ParticlemassEditField"])
        g = lambda k: float(d[k])
        cnv = np.atleast_2d(np.asarray(d["CNVUITable"], float))      # 2x7 [N/V]
        adc = np.atleast_2d(np.asarray(d["ADCCalibUITable"], float))  # rows: [factor, offset]
        dac = np.atleast_2d(np.asarray(d["DACCalibUITable"], float))
        fmt = str(d["InternalmodelformatDropDown"]).strip("[]").split(",")
        p = cls(
            Ts=Ts, m=m,
            f=(g("XfrequencyEditField"), g("YfrequencyEditField"), g("ZfrequencyEditField")),
            T_phi=g("PhiTimeConstEditField"),
            Gamma=tuple(2 * np.pi * g(k) for k in ("XdampingEditField", "YdampingEditField", "ZdampingEditField")),
            P_W=tuple(g(k) for k in ("XprocessnoiseEditField", "YprocessnoiseEditField",
                                     "ZprocessnoiseEditField", "PhiprocessnoiseEditField")),
            C_mat_full=np.atleast_2d(np.asarray(d["CVmUITable"], float)),
            B_mat_full=cnv.T / m,
            P_V_mat_full=np.atleast_2d(np.asarray(d["MeasnoisematrixUITable"], float)),
            R_LQR_full=np.atleast_2d(np.asarray(d["FbGainUITable"], float)) ** 2,
            Q_LQR_usr=np.atleast_2d(np.asarray(d["RelativeStateWeightUITable"], float)),
            use_x=bool(d["UseXaxisCheckBox"]), use_y=bool(d["UseYaxisCheckBox"]),
            use_z=bool(d["UseZaxisCheckBox"]), use_phi=bool(d["UsePhiCheckBox"]),
            closed_loop_form=bool(int(fmt[0])), transformed_model=bool(int(fmt[1])),
            numerical_transform=bool(d["TransformStateSpaceCheckBox"]),
            limit_transform=bool(d["LimitTransformCheckBox"]),
            undo_transform=bool(d["UndoTransformForPlotCheckBox"]),
            target_state_std=g("TargetstatestandarddeviationEditField"),
            adc_factor=(adc[0, 0], adc[1, 0]), adc_offset=(adc[0, 1], adc[1, 1]),
            dac_factor=(dac[0, 0], dac[1, 0]), dac_offset=(dac[0, 1], dac[1, 1]),
        )
        return replace(p, **over) if over else p

    def with_(self, **kw):
        return replace(self, **kw)


# --------------------------------------------------------------------------
# numerical helpers
# --------------------------------------------------------------------------
def _zoh(A, B, Ts):
    n, m = B.shape
    M = np.zeros((n + m, n + m))
    M[:n, :n], M[:n, n:] = A, B
    E = sla.expm(M * Ts)
    return E[:n, :n], E[:n, n:]


def _vanloan_q(A, GQGt, Ts):
    n = A.shape[0]
    M = np.zeros((2 * n, 2 * n))
    M[:n, :n], M[:n, n:], M[n:, n:] = -A, GQGt, A.T
    E = sla.expm(M * Ts)
    Ad = E[n:, n:].T
    return Ad, Ad @ E[:n, n:]


def lqr_c(A, B, Q, R):
    s = np.max(np.abs(np.diag(R)))
    P = sla.solve_continuous_are(A, B, Q / s, R / s)
    return np.linalg.solve(R / s, B.T @ P)


def lqr_dare(Ad, Bd, Q, R, N=None):
    s = np.max(np.abs(np.diag(R)))
    N_ = None if N is None else N / s
    P = sla.solve_discrete_are(Ad, Bd, Q / s, R / s, s=N_)
    rhs = Bd.T @ P @ Ad + (0 if N_ is None else N_.T)
    return np.linalg.solve(R / s + Bd.T @ P @ Bd, rhs)


def lqrd(A, B, Q, R, Ts):
    """Equivalent of Matlab lqrd: ZOH plant, continuous cost integrated over Ts."""
    n, m = B.shape
    Ab = np.zeros((n + m, n + m)); Ab[:n, :n], Ab[:n, n:] = A, B
    Qb = sla.block_diag(Q, R)
    N = n + m
    M = np.zeros((2 * N, 2 * N)); M[:N, :N], M[:N, N:], M[N:, N:] = -Ab.T, Qb, Ab
    E = sla.expm(M * Ts)
    cost = E[N:, N:].T @ E[:N, N:]
    cost = 0.5 * (cost + cost.T)
    Ad, Bd = _zoh(A, B, Ts)
    return lqr_dare(Ad, Bd, cost[:n, :n], cost[n:, n:], cost[:n, n:])


# --------------------------------------------------------------------------
# design
# --------------------------------------------------------------------------
@dataclass
class LQGDesign:
    """Result of `design_lqg`.  Matrices with suffix _hw are in the coordinates
    that are actually quantised and loaded onto the FPGA."""
    params: LQGParams
    idx_states: list
    idx_dacs: list
    idx_adcs: list
    A: np.ndarray; B: np.ndarray; G: np.ndarray; C: np.ndarray
    Q: np.ndarray; R: np.ndarray; Pv: np.ndarray; Pw: np.ndarray
    Ad: np.ndarray; Bd: np.ndarray; Ld: np.ndarray; K_used: np.ndarray
    K_c: np.ndarray; K_d: np.ndarray
    P_U: np.ndarray; U_std: np.ndarray
    T_mat: np.ndarray                 # physical normalisation (states_nom = T_mat @ states)
    T_opt: np.ndarray                 # numerical balancing    (states = T_opt @ states_hw)
    F_hw: np.ndarray; B_hw: np.ndarray; L_hw: np.ndarray; K_hw: np.ndarray   # reduced
    F7: np.ndarray; B7: np.ndarray; L7: np.ndarray; K7: np.ndarray            # padded to 7 states
    T7: np.ndarray                    # padded T_mat @ T_opt (hw -> physical)
    T7_opt: np.ndarray

    def K_display(self):
        """K as the GUI shows it ('undo transform' => normalised coordinates)."""
        invT = np.linalg.inv(self.T7_opt) if self.params.undo_transform else np.eye(7)
        return self.K7 @ invT

    def pack(self, feedback: bool = True) -> "LQGConfig":
        return pack_config(self, feedback)


def design_lqg(p: LQGParams) -> LQGDesign:
    Ts = p.Ts
    # ---- assembleStateSpace ------------------------------------------------
    use = {"x": p.use_x, "y": p.use_y, "z": p.use_z, "phi": p.use_phi}
    idx_dacs = [i for i, u in enumerate([np.any(p.B_mat_full[:, 0]), np.any(p.B_mat_full[:, 1])]) if u]
    idx_adcs = [i for i, u in enumerate([np.any(p.C_mat_full[0]), np.any(p.C_mat_full[1])]) if u]
    if not idx_adcs:
        raise ValueError("The system is not measurable! (C matrix is empty)")
    idx_states = sum((IDX[k] for k in ("x", "y", "z", "phi") if use[k]), [])
    if not idx_states:
        raise ValueError("No dynamics enabled!")
    w = [2 * np.pi * f for f in p.f]
    use_phi_for_lqr = bool(np.any(p.B_mat_full[6])) and p.use_phi
    blocks_A, blocks_G, Pw_diag = [], [], []
    for k, ax in enumerate(("x", "y", "z")):
        if use[ax]:
            blocks_A.append(np.array([[0, 1], [-np.sign(w[k]) * abs(w[k]) ** 2, -p.Gamma[k]]]))
            blocks_G.append(np.array([[0.0], [1.0 / p.m]]))
            Pw_diag.append(p.P_W[k])
    if p.use_phi:
        blocks_A.append(np.array([[-1.0 / p.T_phi]])); blocks_G.append(np.array([[1.0]])); Pw_diag.append(p.P_W[3])
    A = sla.block_diag(*blocks_A); G = sla.block_diag(*blocks_G); Pw = np.diag(Pw_diag)
    B = p.B_mat_full[np.ix_(idx_states, idx_dacs)]
    C = p.C_mat_full[np.ix_(idx_adcs, idx_states)]
    sq = np.sqrt(0.5 * p.m * np.array([abs(w[0]) ** 2, 1, abs(w[1]) ** 2, 1, abs(w[2]) ** 2, 1, 1]))
    Qfull = p.Q_LQR_usr * np.outer(sq, sq)
    Q = Qfull[np.ix_(idx_states, idx_states)]
    R = p.R_LQR_full[np.ix_(idx_dacs, idx_dacs)]
    Pv = p.P_V_mat_full[np.ix_(idx_adcs, idx_adcs)]

    n = len(idx_states)
    T_mat = np.eye(n)
    if p.transformed_model:                                   # transformStateSpace
        c_ref = np.max(np.abs(p.C_mat_full))
        d = []
        for k, ax in enumerate(("x", "y", "z")):
            if use[ax]:
                d += [1 / c_ref, abs(w[k]) / c_ref]
        if p.use_phi:
            d += [1 / c_ref]
        T_mat = np.diag(d)
        Ti = np.linalg.inv(T_mat)
        A, B, G, C, Q = Ti @ A @ T_mat, Ti @ B, Ti @ G, C @ T_mat, T_mat.T @ Q @ T_mat

    # ---- recalculateLQG ----------------------------------------------------
    lq = list(range(n - 1)) if (p.use_phi and not use_phi_for_lqr) else list(range(n))
    Al, Bl, Ql = A[np.ix_(lq, lq)], B[lq], Q[np.ix_(lq, lq)]
    Ad_l, Bd_l = _zoh(Al, Bl, Ts)
    K_c = lqr_c(Al, Bl, Ql, R)
    K_d = lqrd(Al, Bl, Ql, R, Ts)
    K_p = lqr_dare(Ad_l, Bd_l, Ql, R)
    pad = lambda K: np.hstack([K, np.zeros((K.shape[0], n - len(lq)))])
    K_c, K_d, K_p = pad(K_c), pad(K_d), pad(K_p)
    K_used = {"continuous": K_c, "lqrd": K_d, "dare": K_p}[p.lqr_method]

    Ad, BGd = _zoh(A, np.hstack([B, G]), Ts)
    Bd, Gd = BGd[:, :B.shape[1]], BGd[:, B.shape[1]:]
    if p.noise_discretization == "zoh":
        Qd = Gd @ (Pw / Ts) @ Gd.T
    else:
        Qd = _vanloan_q(A, G @ Pw @ G.T, Ts)[1]
    Rd = Pv / Ts
    s = np.max(np.abs(np.diag(Rd)))
    Pk = sla.solve_discrete_are(Ad.T, C.T, Qd / s, Rd / s)
    Ld = Ad @ Pk @ C.T @ np.linalg.inv(C @ Pk @ C.T + Rd / s)
    A_LC = Ad - Ld @ C

    # continuous KF only for the theoretical feedback std (GUI 'FbStd' table)
    Pc = sla.solve_continuous_are(A.T, C.T, G @ Pw @ G.T, Pv)
    Lc = Pc @ C.T @ np.linalg.inv(Pv)
    Pest = sla.solve_continuous_lyapunov(A - B @ K_c, -(Lc @ Pv @ Lc.T))
    P_U = K_c @ Pest @ K_c.T
    U_std = np.sign(P_U) * np.sqrt(np.abs(P_U))

    # ---- optimizedTransformStateSpace (numerical balancing) -----------------
    T_opt = np.eye(n)
    if p.numerical_transform:
        Pe0 = sla.solve_discrete_lyapunov(Ad - Bd @ K_used, Ld @ Rd @ Ld.T)
        R_chol = np.linalg.cholesky(Pe0).T                    # upper, like Matlab chol
        T_bal = np.diag(np.diag(R_chol) / p.target_state_std)
        maxK = np.max(np.abs(K_used @ T_bal))
        maxIn = np.max(np.abs(np.linalg.solve(T_bal, np.hstack([Ld, Bd]))))
        if p.limit_transform and maxK > p.output_matrix_max and maxIn <= p.input_matrix_max:
            T_io = p.output_matrix_max * np.eye(n) / maxK
        elif p.limit_transform and maxK <= p.output_matrix_max and maxIn > p.input_matrix_max:
            T_io = p.input_matrix_max * np.eye(n) * maxIn     # (sic) as in the GUI code
        else:
            T_io = np.eye(n)
        T_opt = T_bal @ T_io
    Ti = np.linalg.inv(T_opt)
    F_hw, B_hw, L_hw, K_hw = Ti @ A_LC @ T_opt, Ti @ Bd, Ti @ Ld, K_used @ T_opt

    # ---- padStateSpace -----------------------------------------------------
    def padm(M, rows, cols, shape):
        Z = np.zeros(shape); Z[np.ix_(rows, cols)] = M; return Z
    F7 = padm(F_hw, idx_states, idx_states, (7, 7))
    B7 = padm(B_hw, idx_states, idx_dacs, (7, 2))
    L7 = padm(L_hw, idx_states, idx_adcs, (7, 2))
    K7 = padm(K_hw, idx_dacs, idx_states, (2, 7))
    T7 = np.eye(7); T7[np.ix_(idx_states, idx_states)] = T_mat @ T_opt
    T7o = np.eye(7); T7o[np.ix_(idx_states, idx_states)] = T_opt
    return LQGDesign(p, idx_states, idx_dacs, idx_adcs, A, B, G, C, Q, R, Pv, Pw, Ad, Bd, Ld,
                     K_used, K_c, K_d, P_U, U_std, T_mat, T_opt, F_hw, B_hw, L_hw, K_hw,
                     F7, B7, L7, K7, T7, T7o)


# --------------------------------------------------------------------------
# packing (assembleLQGStruct + server-side bit encoding)
# --------------------------------------------------------------------------
@dataclass
class LQGConfig:
    """Everything that is written to the FPGA: shift/residue integers.
    Residues are raw sfix18_14; shifts are ufix5 (K: signed)."""
    F_shift: np.ndarray; F_res: np.ndarray
    G_shift: np.ndarray; G_res: np.ndarray
    L_shift: np.ndarray; L_res: np.ndarray
    K_shift: np.ndarray; K_res: np.ndarray
    yk_offset_raw: np.ndarray         # sfix14_12
    yk_factor_raw: np.ndarray         # sfix18_14
    uk_offset_raw: np.ndarray
    uk_factor_raw: np.ndarray
    T7: np.ndarray                    # hw -> physical states (not sent to FPGA)
    feedback: bool = True

    def dequantised(self):
        """Effective matrices after shift/residue quantisation (for analysis)."""
        f = lambda r, s: (r / 2.0 ** 14) * 2.0 ** (-s.astype(float))
        return dict(F=f(self.F_res, self.F_shift), B=f(self.G_res, self.G_shift),
                    L=f(self.L_res, self.L_shift), K=f(self.K_res, self.K_shift))


def pack_config(d: LQGDesign, feedback: bool = True) -> LQGConfig:
    p = d.params
    F, B, L, K = d.F7.copy(), d.B7.copy(), d.L7.copy(), d.K7.copy()
    if p.closed_loop_form:
        F = F - B @ K
        B = 0 * B
    if not feedback:
        K = 0 * K
    smax = 2 ** p.shift_bits - 1
    q = lambda R: to_raw(R, 18, 14, "nearest", "error")          # server: int(round(v*2^14)), raises if too big
    Fs, Fr = shift_decompose(F, 0, smax)
    Gs, Gr = shift_decompose(B, 0, smax)
    Ls, Lr = shift_decompose(L, 0, smax)
    Ks, Kr = shift_decompose(-K, None, smax)                      # sign flipped for the FPGA
    adc_o = 2 * np.asarray(p.adc_offset); adc_f = 0.5 * np.asarray(p.adc_factor)
    dac_o = 2 * np.asarray(p.dac_offset); dac_f = 2 * np.asarray(p.dac_factor)
    return LQGConfig(Fs, q(Fr), Gs, q(Gr), Ls, q(Lr), Ks, q(Kr),
                     to_raw(adc_o, 14, 12), to_raw(adc_f, 18, 14),
                     to_raw(dac_o, 14, 12), to_raw(dac_f, 18, 14), d.T7, feedback)
