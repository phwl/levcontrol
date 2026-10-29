"""Bit-level emulation of the FPGA LQG datapath (Simulink `lqg_with_axi_test`
+ Verilog `matmul_shiftfix`).

Per 64 ns sample (15.625 MHz):
    u[k]   = K  x[k]                       (K is loaded as -K_lqr)
    x[k+1] = F x[k] + Gamma u[k] + L y[k]  (F = Ad - Ld C)

Arithmetic (verified against the sources):
  * residue sfix18_14 x state sfix25_22 -> exact 43-bit product (binpt 36)
  * arithmetic right shift by the per-element shift (K: signed, saturating left shift)
  * cast to sfix43_37 (floor, wrap) and wrapping 43-bit sum      [Verilog]
  * sfix43_37 -> sfix28_22 -> add -> sfix25_22: truncate+saturate [Model Composer]
  * I/O: ADC/DAC 14-bit words, 14/12 truncate+saturate calibration blocks.
"""
from __future__ import annotations
import numpy as np
from ..fixedpoint import wrap, sat, round_half_away
from .design import LQGConfig, LQGDesign

ADC_LSB = 1.0 / 8192          # 14 bit over +-1 V


def _matmul_shiftfix(res, shift, x, bidir=False):
    """One matmul_shiftfix(_bidir) instance.  res/shift: (M,N) int, x: (N,) int (frac 22).
    Returns (M,) raw sfix43_37."""
    prod = res.astype(np.int64) * x.astype(np.int64)[None, :]          # frac 14+22 = 36, |.|<2^42
    if bidir:
        left = shift < 0
        r = prod >> np.maximum(shift, 0)
        if left.any():
            sl = np.where(left, -shift, 0)
            lim_hi = (1 << 42) - 1
            big = np.abs(prod) >= (1 << 42) >> sl                     # would overflow 43 bit
            shifted = np.where(big, np.where(prod < 0, -(1 << 42), lim_hi), prod << sl)
            r = np.where(left, shifted, r)
    else:
        r = prod >> shift
    r = wrap(r << 1, 43)                                              # frac 36 -> 37, wrap
    return wrap(r.sum(axis=1), 43)


class LQGCore:
    """Fixed-point LQG core.  `step_raw` works on ADC/DAC words, `step` on volts."""

    _M43 = (1 << 43) - 1
    _H43 = 1 << 42

    def __init__(self, cfg: LQGConfig | None = None):
        self.cfg = None
        self.x = np.zeros(7, dtype=np.int64)          # sfix25_22
        self.u25 = np.zeros(2, dtype=np.int64)
        if cfg is not None:
            self.load(cfg)

    def load(self, cfg: LQGConfig):
        """Atomic parameter update (the FPGA stages all matrices, then swaps)."""
        self.cfg = cfg
        self._Kres = cfg.K_res.astype(np.int64)
        self._Ksh_r = np.maximum(cfg.K_shift, 0).astype(np.int64)
        self._Ksh_l = np.maximum(-cfg.K_shift, 0).astype(np.int64)
        self._K_has_left = bool((cfg.K_shift < 0).any())
        self._Wres = np.hstack([cfg.F_res, cfg.G_res, cfg.L_res]).astype(np.int64)      # (7,11)
        self._Wsh = np.hstack([cfg.F_shift, cfg.G_shift, cfg.L_shift]).astype(np.int64)
        self._yo = [int(v) for v in cfg.yk_offset_raw]; self._yf = [int(v) for v in cfg.yk_factor_raw]
        self._uo = [int(v) for v in cfg.uk_offset_raw]; self._uf = [int(v) for v in cfg.uk_factor_raw]

    def reset(self):
        self.x[:] = 0
        self.u25[:] = 0

    # -- bit accurate step --------------------------------------------------
    def step_raw(self, adc_raw) -> np.ndarray:
        M43, H43 = self._M43, self._H43
        # input calibration chain, 14/12 truncate + saturate (scalar ints)
        y25 = np.empty(2, dtype=np.int64)
        for i in range(2):
            v = int(adc_raw[i]) + self._yo[i]
            v = -8192 if v < -8192 else 8191 if v > 8191 else v
            v = (v * self._yf[i]) >> 14
            v = -8192 if v < -8192 else 8191 if v > 8191 else v
            y25[i] = v << 10                                           # -> sfix25_22
        x = self.x
        # u = K x   (matmul_shiftfix_bidir, K residue x state -> 43 bit exact)
        prod = self._Kres * x                                          # (2,7) frac 36
        r = prod >> self._Ksh_r
        if self._K_has_left:
            big = np.abs(prod) >= (H43 >> self._Ksh_l)
            r = np.where(self._Ksh_l > 0,
                         np.where(big, np.where(prod < 0, -H43, H43 - 1), prod << self._Ksh_l), r)
        r = (((r << 1) + H43) & M43) - H43                             # cast 43/36 -> 43/37 (wrap)
        u43 = ((r.sum(axis=1) + H43) & M43) - H43
        u25 = np.clip(u43 >> 15, -(1 << 24), (1 << 24) - 1)
        # x+ = F x + G u + L y   (one fused 7x11 product; sums kept per matrix)
        z = np.concatenate((x, u25, y25))
        r = ((self._Wres * z) >> self._Wsh) << 1
        r = ((r + H43) & M43) - H43
        s = np.add.reduceat(r, (0, 7, 9), axis=1)
        s = np.clip((((s + H43) & M43) - H43) >> 15, -(1 << 27), (1 << 27) - 1)   # 43/37 -> 28/22 sat
        t = np.clip(s[:, 0] + s[:, 1], -(1 << 27), (1 << 27) - 1)
        t = np.clip(t + s[:, 2], -(1 << 27), (1 << 27) - 1)
        xn = np.clip(t, -(1 << 24), (1 << 24) - 1)                     # -> 25/22 sat
        # output chain
        dac = np.empty(2, dtype=np.int64)
        for i in range(2):
            o = int(u25[i]) >> 10
            o = -8192 if o < -8192 else 8191 if o > 8191 else o
            o = (o * self._uf[i]) >> 14
            o = -8192 if o < -8192 else 8191 if o > 8191 else o
            o += self._uo[i]
            dac[i] = -8192 if o < -8192 else 8191 if o > 8191 else o
        self.x, self.u25 = xn, u25
        return dac

    # -- volts interface ---------------------------------------------------
    def step(self, y_volts) -> np.ndarray:
        raw = [sat(round_half_away(float(v) / ADC_LSB), 14) for v in y_volts]
        return self.step_raw(raw) * ADC_LSB

    def xhat_physical(self) -> np.ndarray:
        """State estimate in physical units [x, dx, y, dy, z, dz, phi]."""
        return self.cfg.T7 @ (self.x / float(1 << 22))


class LQGCoreFloat:
    """Ideal double-precision reference of the same recursion (no quantisation,
    no converters) - useful to isolate the effect of fixed-point arithmetic."""

    def __init__(self, design: LQGDesign, feedback=True):
        d = design
        self.F, self.B, self.L = d.F7, d.B7, d.L7
        self.K = -(d.K7 if feedback else 0 * d.K7)
        self.T7 = d.T7
        self.p = d.params
        self.x = np.zeros(7)
        if self.p.closed_loop_form:
            raise NotImplementedError("use open form for the float reference")

    def reset(self):
        self.x[:] = 0

    def step(self, y_volts):
        u = self.K @ self.x
        self.x = self.F @ self.x + self.B @ u + self.L @ np.asarray(y_volts, float)
        return np.clip(u, -1, 1)

    def xhat_physical(self):
        return self.T7 @ self.x
