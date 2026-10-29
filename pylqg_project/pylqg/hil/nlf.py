"""Nonlinear-function block (port of HILSimNLFunction.m): an arbitrary scalar
function that is realised in hardware as a 1024-entry LUT (16 bit, 14 fractional
bits) with linear interpolation, zero-symmetric input range, plus an optional
*alternate* function that can be switched at runtime."""
from __future__ import annotations
import numpy as np


def _ev(f, x):
    y = np.asarray(f(x), dtype=float)
    return np.full_like(x, float(y)) if y.ndim == 0 else y


class NLFunction:
    def __init__(self):
        self._bypass = True
        self._func = None
        self._alt = None
        self.in_max = 0.0
        self.out_max = 0.0

    # -- configuration ------------------------------------------------------
    def set_func(self, func):
        self._bypass, self._func = False, func

    def set_func_alternate(self, func):
        if self._func is None:
            raise ValueError("Cannot set the alternate function before the primary function.")
        self._alt = func

    def clear_func_alternate(self):
        self._alt = None

    def set_bypass(self):
        self._bypass, self._func, self._alt = True, None, None

    def get_bypass(self) -> bool:
        return self._bypass

    def has_alternate(self) -> bool:
        return self._alt is not None

    def get_func(self):
        return (lambda x: x) if self._bypass else self._func

    def get_func_alternate(self):
        if self._bypass:
            return lambda x: x
        return self._alt if self._alt is not None else (lambda x: 0.0 * np.asarray(x, float))

    # -- range tracking used by HILSimModel.compile ---------------------------
    def reset_max_vals(self):
        self.in_max = self.out_max = 0.0

    def update_max_vals(self, in_max, out_max):
        self.in_max, self.out_max = max(self.in_max, in_max), max(self.out_max, out_max)

    # -- scaling / LUT export --------------------------------------------------
    def calculate_presc_gain(self, input_scaling, output_scaling):
        xr = self.in_max * 1.7                     # 'Factor TBD' in the MATLAB code
        if xr <= 0:
            xr = 1.0                               # MATLAB would produce Inf; keep usable
        presc = input_scaling / xr
        xs = np.linspace(-xr, xr, 10000)
        yr = np.max(np.abs(_ev(self._func, xs)))
        if self._alt is not None:
            yr = max(yr, np.max(np.abs(_ev(self._alt, xs))))
        if yr <= 0:
            yr = 1.0
        return presc, output_scaling * yr, xr, yr

    def export_nlf_params(self, input_scaling, output_scaling, lut_size):
        presc, gain, xr, yr = self.calculate_presc_gain(input_scaling, output_scaling)
        idx = np.arange(lut_size)
        idx = np.where(idx >= lut_size // 2, idx - lut_size, idx)     # two's-complement address order
        xs = idx / (lut_size / 2) * xr
        lut = _ev(self._func, xs) / yr
        lut_alt = _ev(self._alt, xs) / yr if self._alt is not None else np.zeros(lut_size)
        return presc, gain, lut, lut_alt
