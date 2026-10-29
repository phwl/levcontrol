"""Section-4 example of the paper: levitated particle in an adjustable 2D
double-well/saddle potential, stabilised by the LQG (Set 1: confining, Set 2: saddle).

Parameters follow the paper's listing / LQG parameter files.  Two deliberate,
documented choices:
  * the plant uses the *same* C matrix as the controller model (with the paper's
    cross-talk terms, C22 = 4e6 V/m) so both boards describe the same physics;
    the authors' MATLAB script instead scales C by 0.5 and drops the cross-talk
    (a calibration convention of their bench);
  * the unused third slice is inert (row 3 of the input matrix and its u_factor are 0).
"""
from __future__ import annotations
import numpy as np
from .hil import HILSimModel, Scenario
from .lqg import LQGParams

M = 5e-17
CF = np.array([[5e-12, 1e-12], [1e-12, 5e-12]])                 # N/V
CE = np.array([[4e6, 1e5], [2e5, 4e6]])                         # V/m
OMEGA1, ALPHA1, OMEGA2, GAMMA = 2 * np.pi * 15e3, 2 * np.pi * 40e3, 2 * np.pi * 35e3, 2 * np.pi * 1e3
P_W = 3.2e-34                                                   # process noise power of the paper


def lqg_params(set_n: int = 1, **over) -> LQGParams:
    """LQG parameter set 1 (confining, +15 kHz) or 2 (saddle, -15 kHz)."""
    C = np.zeros((2, 7)); C[:, 0] = CE[:, 0]; C[:, 2] = CE[:, 1]
    cnv = np.zeros((2, 7)); cnv[:, 1] = CF[:, 0]; cnv[:, 3] = CF[:, 1]      # [N/V] into (dx, dy)
    p = LQGParams(Ts=64e-9, m=M, f=(15e3 if set_n == 1 else -15e3, 35e3, 100e3), T_phi=1e-4,
                  Gamma=(GAMMA,) * 3, P_W=(P_W,) * 3 + (1e-6,), C_mat_full=C, B_mat_full=cnv.T / M,
                  P_V_mat_full=np.eye(2) * 4e-12, R_LQR_full=np.eye(2) * (5e-11) ** 2,
                  use_x=True, use_y=True, use_z=False, use_phi=False, target_state_std=0.01)
    return p.with_(**over) if over else p


def build_plant(noise_mode: str = "variance", noise_pwr: float | None = None, noise_kind: str = "gaussian") -> HILSimModel:
    """HILSimModel of Eq. (41).  `noise_pwr` defaults to the paper's P_w."""
    p_w = P_W if noise_pwr is None else noise_pwr
    model = HILSimModel(noise_mode=noise_mode)
    model.noise_kind = noise_kind
    for ns in model.noise_sources:
        ns.set_noise_power(p_w)
    model.input_matrix.set_matrix([[CF[0, 0], CF[0, 1], 1], [CF[1, 0], CF[1, 1], 1], [0, 0, 0]])
    model.output_slices[0].linear_factors = [CE[0, 0], CE[0, 1], 0]
    model.output_slices[1].linear_factors = [CE[1, 0], CE[1, 1], 0]
    s0, s1, s2 = model.slices
    s0.u_factor = 1 / M
    s0.x_nlf.set_func(lambda q: q)                                          # confining:  -Omega^2 q
    s0.x_nlf.set_func_alternate(lambda q: ALPHA1 ** 4 / OMEGA1 ** 2 * q ** 3 - q)   # saddle: Omega^2 q - alpha^4 q^3
    s0.x_factor = -OMEGA1 ** 2
    s0.xdot_factor = -GAMMA
    s1.u_factor = 1 / M; s1.x_factor = -OMEGA2 ** 2; s1.xdot_factor = -GAMMA
    s2.u_factor = s2.x_factor = s2.xdot_factor = 0.0                       # third slice unused: fully inert
    return model


def scenarios(dt: float = 1e-7, n: int = 3000):
    """The three compile scenarios of hilsim_2d_saddle_example.m (pulses on both inputs)."""
    def pulse(a, b, amp1, amp2=None):
        s0, s1 = np.zeros(n), np.zeros(n)
        s0[a:b] = amp1; s1[a:b] = -amp1
        if amp2 is not None:
            s0[b:779] = -amp2; s1[b:779] = amp2
        return s0, s1
    a0, a1 = pulse(101, 200, 0.05)
    sc0 = Scenario.from_arrays(a0, a1, dt)
    a0, a1 = pulse(101, 352, 0.02)
    a0[352:779], a1[352:779] = -0.02, 0.02
    sc1 = Scenario.from_arrays(a0, a1, dt)
    sc1_alt = sc1.copy()
    for j in range(3):
        sc1_alt.nlf_alternate_switch[j]["x_nlf"] = 1
    return [sc0, sc1, sc1_alt]


def steady_state_rms(noise_mode="variance", noise_pwr=None):
    """Analytic per-axis rms position (in volts at y1,y2 ignoring cross-talk) of the free
    confining potential for the chosen noise settings (used to choose demo noise levels)."""
    m = build_plant(noise_mode, noise_pwr)
    var = m.step_noise_variance(0)
    ts = 144e-9
    out = []
    for om, ce in ((OMEGA1, CE[0, 0]), (OMEGA2, CE[1, 1])):
        vv = ts * var / M ** 2 / (2 * GAMMA)          # velocity variance, small-step OU limit
        out.append(ce * np.sqrt(vv) / om)
    return out
