"""HILSimModel & friends: user-facing configuration classes (ports of
HILSimSlice/InputMatrix/OutputSlice/NoiseSource/Scenario/Model.m) plus the
scenario-driven scaling ('compile') and export to the time-discrete
double-precision and fixed-point models."""
from __future__ import annotations
import math
import logging
from dataclasses import dataclass, field
import numpy as np
from .nlf import NLFunction
from ..fixedpoint import to_raw

log = logging.getLogger("pylqg.hil")

TS = 36 / 250e6                 # 144 ns (36 clocks of 4 ns) = 6.944 MS/s
LUT_BITS = 10
LUT_SIZE = 1 << LUT_BITS
S_FMT, C_FMT, N_FMT = (25, 17), (18, 10), (16, 14)   # signals / constants / LUT words
ACC_FRAC, ACC_W = 39, 47                              # integration accumulator (hardware)
_EPS = np.finfo(float).eps


class NoiseSource:
    """Gaussian white noise source. `noise_pwr` is, in the default noise mode,
    the *variance of one noise sample per 144 ns step* (Simulink Cov = pwr*Ts,
    so var = pwr).  With HILSimModel.noise_mode == 'psd' it is a two-sided PSD
    and the per-step variance becomes noise_pwr / Ts."""
    def __init__(self):
        self.noise_pwr = 1.0

    def set_noise_power(self, pwr):
        self.noise_pwr = float(pwr)


class InputMatrix:
    """3x3 compact input matrix: rows = slices, cols = [adc0, adc1, noise]."""
    def __init__(self):
        self._m = np.zeros((3, 3))

    def set_matrix(self, mat):
        self._m = np.asarray(mat, float).reshape(3, 3)

    def get_matrix(self):
        return self._m.copy()


class OutputSlice:
    def __init__(self):
        self.linear_factors = np.zeros(3)
        self.output_nlfs = [NLFunction() for _ in range(3)]
        self.x_xdot_selectors = ["x", "x", "x"]        # 'x' | 'xdot' | 'xdotdot'

    def get_xsel_value(self, i):
        return {"x": 0, "xdot": 1, "xdotdot": 2}.get(self.x_xdot_selectors[i], 0)


class Slice:
    """One state-processing slice:  xdd = u_f*a(u) + x_f*g(x) + xd_f*f(xd)."""
    def __init__(self):
        self.u_nlf, self.x_nlf, self.xdot_nlf = NLFunction(), NLFunction(), NLFunction()
        self.u_factor = self.x_factor = self.xdot_factor = 1.0
        self.x_presc = self.xdot_presc = self.xdotdot_presc = 1.0
        self.ignore_x_presc = self.ignore_xdot_presc = self.ignore_xdotdot_presc = False
        self.reset_integration_scaling()

    def reset_integration_scaling(self):
        self.xdd_max = self.xd_max = self.x_max = 0.0

    def update_integration_scaling(self, xdd, xd, x):
        self.xdd_max, self.xd_max, self.x_max = max(self.xdd_max, xdd), max(self.xd_max, xd), max(self.x_max, x)

    @staticmethod
    def _presc_params(p):
        b = math.floor(math.log2(1 / p))
        return b, p * 2.0 ** b

    def calculate_x_presc_params(self):
        return self._presc_params(self.x_presc)

    def calculate_xdot_presc_params(self):
        return self._presc_params(self.xdot_presc)

    def export_slice_dbl(self, ov, lut_size):
        """Port of HILSimSlice.export_slice_dbl (ov = input-scaling override)."""
        s = {}
        def split(g):   # split total gain over two multipliers for numerical advantage
            if 0.1 < abs(g) < 10:
                return g, 1.0
            r = math.sqrt(abs(g)); return r, r * (1 if g >= 0 else -1)
        z = np.zeros(lut_size)
        # u
        if self.u_nlf.get_bypass():
            s["u"] = dict(mux=1, gain=ov["fac_u"], nlf=dict(presc=0, gain=0, lut=z, lut_alt=z))
        else:
            _, tg, lut, lut_alt = self.u_nlf.export_nlf_params(1.0, self.xdotdot_presc * self.u_factor, lut_size)
            g_n, g_l = split(tg)
            s["u"] = dict(mux=0, gain=g_l, nlf=dict(presc=ov["fac_u"], gain=g_n, lut=lut, lut_alt=lut_alt))
        # xdot
        if self.xdot_nlf.get_bypass():
            s["xd"] = dict(mux=1, gain=self.xdot_factor / self.xdot_presc, nlf=dict(presc=0, gain=0, lut=z, lut_alt=z))
        else:
            pr, tg, lut, lut_alt = self.xdot_nlf.export_nlf_params(1 / (self.xdotdot_presc * self.xdot_presc),
                                                                   self.xdotdot_presc * self.xdot_factor, lut_size)
            g_n, g_l = split(tg)
            s["xd"] = dict(mux=0, gain=g_l, nlf=dict(presc=pr, gain=g_n, lut=lut, lut_alt=lut_alt))
        # x
        if self.x_nlf.get_bypass():
            s["x"] = dict(mux=1, gain=self.x_factor / (self.xdot_presc * self.x_presc), nlf=dict(presc=0, gain=0, lut=z, lut_alt=z))
        else:
            pr, tg, lut, lut_alt = self.x_nlf.export_nlf_params(1 / (self.xdotdot_presc * self.xdot_presc * self.x_presc),
                                                                self.xdotdot_presc * self.x_factor, lut_size)
            g_n, g_l = split(tg)
            s["x"] = dict(mux=0, gain=g_l, nlf=dict(presc=pr, gain=g_n, lut=lut, lut_alt=lut_alt))
        s["x_presc_bitshift"], s["x_presc_mul"] = self.calculate_x_presc_params()
        s["xd_presc_bitshift"], s["xd_presc_mul"] = self.calculate_xdot_presc_params()
        return s


@dataclass
class Scenario:
    """Simulation scenario: in_signals[ch, 0, n] = value (V), in_signals[ch, 1, n] = time (s)
    (same layout as HILSimScenario.m).  nlf_alternate_switch[slice][path] in {0,1}."""
    in_signals: np.ndarray
    sim_time: float
    nlf_alternate_switch: dict = field(default_factory=lambda: {j: {"u_nlf": 0, "x_nlf": 0, "xdot_nlf": 0} for j in range(3)})

    @classmethod
    def from_arrays(cls, adc0, adc1, dt, **kw):
        n = len(adc0)
        sig = np.zeros((2, 2, n)); sig[0, 0], sig[1, 0] = adc0, adc1
        sig[:, 1, :] = np.arange(n) * dt
        return cls(sig, n * dt, **kw)

    def copy(self):
        import copy
        return copy.deepcopy(self)

    def alt_array(self):
        return np.array([[self.nlf_alternate_switch[j][k] for k in ("u_nlf", "x_nlf", "xdot_nlf")] for j in range(3)], bool)

    def sample(self, t):
        return (np.interp(t, self.in_signals[0, 1], self.in_signals[0, 0]),
                np.interp(t, self.in_signals[1, 1], self.in_signals[1, 0]))


@dataclass
class TimeSeries:
    Time: np.ndarray
    Data: np.ndarray


class HILSimModel:
    """Model configuration + compilation (see the paper, Section 3.3)."""

    def __init__(self, noise_mode: str = "variance"):
        self.input_nlfs = [NLFunction(), NLFunction()]
        self.noise_sources = [NoiseSource() for _ in range(3)]
        self.input_matrix = InputMatrix()
        self.output_slices = [OutputSlice(), OutputSlice()]
        self.slices = [Slice() for _ in range(3)]
        self.noise_mode = noise_mode          # 'variance' (default, MATLAB semantics) | 'psd'
        self.noise_kind = "gaussian"          # 'gaussian' | 'lfsr' (hardware-style LFSR + Box-Muller)
        self.seed = 23341
        self._td = None
        self._tdfp = None
        self.compiled = False

    # -- noise ---------------------------------------------------------------
    @property
    def noise_mode(self):
        return self._noise_mode

    @noise_mode.setter
    def noise_mode(self, v):
        if v not in ("variance", "psd"):
            raise ValueError("noise_mode must be 'variance' or 'psd'")
        self._noise_mode = v

    def step_noise_variance(self, j: int) -> float:
        """Variance of the noise sample xi_j[n] injected every simulator step."""
        p = self.noise_sources[j].noise_pwr
        return p / TS if self.noise_mode == "psd" else p

    def _noise_presc_factor(self, j):           # HILSimNoiseSource.get_noise_presc_factor (hw noise has power 4)
        return math.sqrt(self.step_noise_variance(j) / 4)

    # -- exports -------------------------------------------------------------------
    def export_td_sim_model(self):
        m = dict(t_s=TS, inp_mat=self.input_matrix.get_matrix(),
                 in_nlf=[n.get_func() for n in self.input_nlfs],
                 noise_var=[self.step_noise_variance(j) for j in range(3)],
                 slices=[], out=[])
        for s in self.slices:
            m["slices"].append(dict(
                u_nlf=(s.u_nlf.get_func(), s.u_nlf.get_func_alternate()),
                x_nlf=(s.x_nlf.get_func(), s.x_nlf.get_func_alternate()),
                xd_nlf=(s.xdot_nlf.get_func(), s.xdot_nlf.get_func_alternate()),
                u_f=s.u_factor, x_f=s.x_factor, xd_f=s.xdot_factor))
        for o in self.output_slices:
            m["out"].append(dict(sel=[o.get_xsel_value(i) for i in range(3)],
                                 nlf=[n.get_func() for n in o.output_nlfs], fac=o.linear_factors.copy()))
        return m

    def optimize_input_scaling(self):
        imat = self.input_matrix.get_matrix()
        ovs = []
        for i, s in enumerate(self.slices):
            if s.u_nlf.get_bypass():
                fac_u = s.u_factor * s.xdotdot_presc
            else:
                fac_u = s.u_nlf.calculate_presc_gain(1.0, 1.0)[0]
            f0, f1 = imat[i, 0] * fac_u, imat[i, 1] * fac_u
            fn = self._noise_presc_factor(i) * imat[i, 2] * fac_u
            common = math.sqrt(np.mean(np.abs([f0, f1, fn])))
            if common < _EPS:
                ovs.append(dict(fac_adc0=0.0, fac_adc1=0.0, fac_noise=0.0, noise_presc=0.0, fac_u=fac_u))
            else:
                fn /= common
                ovs.append(dict(fac_adc0=f0 / common, fac_adc1=f1 / common,
                                fac_noise=fn / math.sqrt(abs(fn)) if fn != 0 else 0.0,
                                noise_presc=math.sqrt(abs(fn)), fac_u=common))
        return ovs

    def export_output_slices_dbl(self):
        out = []
        for i, o in enumerate(self.output_slices):
            fac, nl = [], []
            for j in range(3):
                sl = self.slices[j]
                P2, P1, P0 = sl.xdotdot_presc, sl.xdot_presc, sl.x_presc
                if o.output_nlfs[j].get_bypass():
                    sel = o.get_xsel_value(j)
                    fs = 1 / (P2 * P1 * P0) if sel == 0 else 1 / (P2 * P1) if sel == 1 else 1 / P2
                    ns = 1.0
                else:
                    fs, ns = 1.0, 1 / (P2 * P1 * P0)
                fac.append(o.linear_factors[j] * fs)
                nlf = o.output_nlfs[j]
                if nlf.get_bypass():
                    nl.append(dict(enabled=0, presc=0.0, gain=0.0, lut=np.zeros(LUT_SIZE)))
                else:
                    pr, g, lut, _ = nlf.export_nlf_params(ns, 1.0, LUT_SIZE)
                    nl.append(dict(enabled=1, presc=pr, gain=g, lut=lut))
            out.append(dict(sel=[o.get_xsel_value(j) for j in range(3)], fac=fac, nlf=nl))
        return out

    def export_model_dbl(self):
        ov = self.optimize_input_scaling()
        def nlf_in(n):
            if n.get_bypass():
                return dict(enabled=0, presc=0.0, gain=0.0, lut=np.zeros(LUT_SIZE))
            p, g, l, _ = n.export_nlf_params(1.0, 1.0, LUT_SIZE)
            return dict(enabled=1, presc=p, gain=g, lut=l)
        return dict(t_s=TS, int_scale_bits=math.floor(math.log2(1 / TS)),
                    slices=[s.export_slice_dbl(ov[i], LUT_SIZE) for i, s in enumerate(self.slices)],
                    adc_nlf=[nlf_in(n) for n in self.input_nlfs],
                    inp=[[o["fac_adc0"], o["fac_adc1"], o["fac_noise"]] for o in ov],
                    noise_presc=[o["noise_presc"] for o in ov],
                    out=self.export_output_slices_dbl())

    def export_model(self):
        """Time-discrete fixed-point model: every constant quantised to its hardware format."""
        d = self.export_model_dbl()
        self.quantisation_issues = issues = []
        lo_, hi_ = -(1 << (C_FMT[0] - 1)), (1 << (C_FMT[0] - 1)) - 1

        def cq(v, what="constant"):
            raw = int(to_raw(v, *C_FMT, "nearest", "sat"))
            if raw in (lo_, hi_) and abs(v) * (1 << C_FMT[1]) > hi_:
                issues.append(f"{what} = {v:.3g} saturates the sfix18_10 range (+-{hi_ / (1 << C_FMT[1]):.0f})")
            elif raw == 0 and v != 0:
                issues.append(f"{what} = {v:.3g} underflows to 0 (resolution 2^-10)")
            return raw
        lq = lambda a: to_raw(np.asarray(a, float), *N_FMT, "nearest", "sat").astype(np.int64)
        def nq(n):
            return dict(enabled=n["enabled"], presc=cq(n["presc"]), gain=cq(n["gain"]), lut=lq(n["lut"]))
        m = dict(t_s=TS, int_scale_bits=d["int_scale_bits"])
        m["int_dt_res"] = cq(TS * 2.0 ** d["int_scale_bits"])
        m["slices"] = []
        for s in d["slices"]:
            j = len(m["slices"])
            q = dict(x_presc_bitshift=s["x_presc_bitshift"], x_presc_mul=cq(s["x_presc_mul"], f"slice{j} x prescaler"),
                     xd_presc_bitshift=s["xd_presc_bitshift"], xd_presc_mul=cq(s["xd_presc_mul"], f"slice{j} xdot prescaler"))
            for k in ("u", "x", "xd"):
                q[k] = dict(mux=s[k]["mux"], gain=cq(s[k]["gain"], f"slice{j} {k} gain"),
                            nlf=dict(presc=cq(s[k]["nlf"]["presc"], f"slice{j} {k}-NLF prescaler"), gain=cq(s[k]["nlf"]["gain"], f"slice{j} {k}-NLF gain"),
                                     lut=lq(s[k]["nlf"]["lut"]), lut_alt=lq(s[k]["nlf"]["lut_alt"])))
            m["slices"].append(q)
        m["adc_nlf"] = [nq(n) for n in d["adc_nlf"]]
        m["inp"] = [[cq(v, f"input matrix slice{j} {nm}") for v, nm in zip(row, ("<-adc0", "<-adc1", "<-noise"))] for j, row in enumerate(d["inp"])]
        m["noise_presc"] = [cq(v, f"noise prescaler slice{j}") for j, v in enumerate(d["noise_presc"])]
        m["out"] = [dict(sel=o["sel"], fac=[cq(v, f"output {i} factor {j}") for j, v in enumerate(o["fac"])], nlf=[nq(n) for n in o["nlf"]]) for i, o in enumerate(d["out"])]
        if issues:
            import warnings
            warnings.warn("HIL model constants do not fit the hardware formats - the fixed-point simulation will be wrong "
                          "(typically because coefficients differ by more than ~1e3, e.g. a noise power that dwarfs the signal path):\n  "
                          + "\n  ".join(issues[:8]) + (f"\n  ... and {len(issues) - 8} more" if len(issues) > 8 else ""), RuntimeWarning, stacklevel=3)
        return m

    # -- compile ------------------------------------------------------------------
    def compile(self, scenarios, enable_noise: bool = False, verbose: bool = True):
        """Determine all fixed-point scalings from the given scenarios
        (HILSimModel.compile).  `scenarios` may be a single Scenario."""
        from .engine import TDEngine, FPEngine
        if isinstance(scenarios, Scenario):
            scenarios = [scenarios]
        self._td = self.export_td_sim_model()
        for s in self.slices:
            s.xdotdot_presc = s.xdot_presc = s.x_presc = 1.0
        # 1) double-precision reference simulation with range probes
        for n in self.input_nlfs:
            n.reset_max_vals()
        for o in self.output_slices:
            for n in o.output_nlfs:
                n.reset_max_vals()
        for s in self.slices:
            for n in (s.u_nlf, s.x_nlf, s.xdot_nlf):
                n.reset_max_vals()
            s.reset_integration_scaling()
        for sc in scenarios:
            probe = TDEngine.run(self._td, sc, enable_noise, self.seed, probe=True)[1]
            for i in range(2):
                self.input_nlfs[i].update_max_vals(*probe["in"][i])
                for j in range(3):
                    self.output_slices[i].output_nlfs[j].update_max_vals(*probe["out"][i][j])
            for j in range(3):
                for k, n in enumerate((self.slices[j].u_nlf, self.slices[j].x_nlf, self.slices[j].xdot_nlf)):
                    n.update_max_vals(*probe["sl"][j][k])
                self.slices[j].update_integration_scaling(*probe["st"][j])
        # 2) integration-variable renormalisation (target scale 2)
        for s in self.slices:
            s.xdotdot_presc = 2.0 / s.xdd_max if (s.xdd_max > _EPS and not s.ignore_xdotdot_presc) else 1.0
            s.x_presc = s.xd_max / s.x_max if (s.x_max > _EPS and s.xd_max > _EPS and not s.ignore_x_presc) else 1.0
            s.xdot_presc = s.xdd_max / s.xd_max if (s.xd_max > _EPS and s.xdd_max > _EPS and not s.ignore_xdot_presc) else 1.0
        if verbose:
            for j, s in enumerate(self.slices):
                log.info("slice%d: max xdd=%.3e xd=%.3e x=%.3e -> presc xdd=%.3e xd=%.3e x=%.3e",
                         j, s.xdd_max, s.xd_max, s.x_max, s.xdotdot_presc, s.xdot_presc, s.x_presc)
        self._tdfp = self.export_model()
        self.compiled = True
        # 3) post-implementation check on the fixed-point model
        self.report = []
        for i, sc in enumerate(scenarios):
            probe = FPEngine.run(self._tdfp, sc, enable_noise, self.seed, probe=True)[1]
            self.report.append(probe)
            if verbose:
                worst = max(probe.values())
                log.info("scenario %d: largest internal magnitude %.3g (limit 128)", i, worst)
        return self

    # -- simulation ------------------------------------------------------------------
    def _need(self):
        if not self.compiled:
            raise RuntimeError("The model needs to be compiled before simulation.")

    def get_tdfp_model(self):
        self._need(); return self._tdfp

    def sim_td(self, scenario, enable_noise=True):
        from .engine import TDEngine
        self._need()
        t, y = TDEngine.run(self._td, scenario, enable_noise, self.seed)[0]
        return [TimeSeries(t, y[0]), TimeSeries(t, y[1])]

    def sim_tdfp(self, scenario, enable_noise=True):
        from .engine import FPEngine
        self._need()
        t, y = FPEngine.run(self._tdfp, scenario, enable_noise, self.seed)[0]
        return [TimeSeries(t, y[0]), TimeSeries(t, y[1])]

    def sim_tc(self, scenario, enable_noise=True, substeps=8):
        """Time-continuous reference (RK4, noise held over one 144 ns step like the Simulink model)."""
        from .engine import TDEngine
        self._need()
        t, y = TDEngine.run_tc(self._td, scenario, enable_noise, self.seed, substeps)
        return [TimeSeries(t, y[0]), TimeSeries(t, y[1])]
