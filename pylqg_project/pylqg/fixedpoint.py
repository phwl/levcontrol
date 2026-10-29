"""Small fixed-point toolbox shared by the LQG and HIL emulators.

Everything is done on *raw* two's-complement integers (Python ints or int64
numpy arrays).  A format is (width, frac): value = raw * 2**-frac.

The FPGA designs use three different behaviours depending on the block:
  * Simulink 'Gain'/'Convert' with defaults        -> floor + wrap
  * System Generator / Model Composer 'Convert'    -> truncate(floor) + saturate
  * Verilog fixpt_cast (matmul core)               -> floor + wrap
"""
from __future__ import annotations
import math
import numpy as np


def wrap(v, bits):
    """Two's-complement wrap-around to `bits` bits (int or ndarray)."""
    m = 1 << bits
    half = m >> 1
    if isinstance(v, np.ndarray):
        return ((v + half) & (m - 1)) - half
    return ((int(v) + half) & (m - 1)) - half


def sat(v, bits):
    """Saturate to signed `bits` bits (int or ndarray)."""
    lo, hi = -(1 << (bits - 1)), (1 << (bits - 1)) - 1
    if isinstance(v, np.ndarray):
        return np.clip(v, lo, hi)
    v = int(v)
    return lo if v < lo else hi if v > hi else v


def rshift_floor(v, n):
    """Arithmetic right shift (floor); negative n means left shift."""
    if n >= 0:
        return v >> n
    return v << (-n)


def round_half_away(x):
    """Round half away from zero (Sysgen 'Round (unbiased: +/- Inf)')."""
    return math.floor(abs(x) + 0.5) * (1 if x >= 0 else -1)


def to_raw(x, width, frac, rounding="nearest", overflow="sat"):
    """Quantize a float (or array) to a raw integer of format (width, frac).

    rounding: 'nearest' (Matlab fi default / python round-half-even),
              'floor', 'away'.
    overflow: 'sat', 'wrap', 'error'.
    """
    arr = np.asarray(x, dtype=float) * (1 << frac) if frac >= 0 else np.asarray(x, dtype=float) / (1 << -frac)
    if rounding == "nearest":
        r = np.rint(arr)              # half-to-even, like python round()
    elif rounding == "floor":
        r = np.floor(arr)
    elif rounding == "away":
        r = np.sign(arr) * np.floor(np.abs(arr) + 0.5)
    else:
        raise ValueError(rounding)
    lo, hi = -(1 << (width - 1)), (1 << (width - 1)) - 1
    if overflow == "sat":                       # clip in the float domain: avoids int64 overflow
        r = np.clip(r, lo, hi)
    elif overflow == "wrap":
        m = float(1 << width)
        r = np.mod(r - lo, m) + lo
    elif overflow == "error":
        if np.any(r < lo) or np.any(r > hi) or not np.all(np.isfinite(r)):
            raise ValueError(f"value {x} does not fit sfix{width}_{frac}")
    if not np.all(np.isfinite(r)):
        raise ValueError(f"non-finite value {x} cannot be quantised")
    r = r.astype(np.int64)
    return int(r) if r.ndim == 0 else r


def from_raw(raw, frac):
    return np.asarray(raw, dtype=float) / (1 << frac) if not isinstance(raw, int) else raw / (1 << frac)


def shift_decompose(M, shift_min=0, shift_max=31):
    """Port of user-interface/srcs/shift_decompose.m (shift_multiple = 1).

    Returns (shift, residue) with  M = residue * 2**(-shift).
    shift_min=None disables the lower clamp (used for the K matrix, which may
    need left shifts).  Zero entries get shift 0 / residue 0.
    """
    M = np.atleast_2d(np.asarray(M, dtype=float))
    S = np.zeros(M.shape, dtype=np.int64)
    R = np.zeros(M.shape)
    eps = np.finfo(float).eps
    for i in range(M.shape[0]):
        for j in range(M.shape[1]):
            v = M[i, j]
            if abs(v) < eps:
                continue
            lg = math.ceil(math.log2(abs(v)))
            shift = lg                       # floor(lg/1)
            if shift_min is not None and -shift < shift_min:
                shift = -shift_min
            if shift_max is not None and -shift > shift_max:
                shift = -shift_max
            R[i, j] = v * 2.0 ** (-shift)
            S[i, j] = -shift
    return S, R
