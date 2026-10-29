"""Noise generation: numpy Gaussian (default) or the hardware-style generator
(24-bit Galois LFSR, poly x^24+x^23+x^22+x^17+1, Box-Muller from a 12-bit LUT)."""
from __future__ import annotations
import math
import numpy as np

_LFSR_MASK = (1 << 23) | (1 << 22) | (1 << 21) | (1 << 16)       # taps 24, 23, 22, 17
_CLOCKS_PER_SAMPLE = 36                                           # 36 x 4 ns clocks per 144 ns step


def _bm_tables():
    a = np.arange(4096)
    u1 = ((a % 64) + 1) / 64.0
    u2 = ((a // 64) + 1) / 64.0
    r = np.sqrt(-2 * np.log(u1))
    c, s = r * np.cos(2 * np.pi * u2), r * np.sin(2 * np.pi * u2)
    v = c + s
    scale = 1.0 / math.sqrt(np.mean(v ** 2))       # unit power over the full address space
    return v * scale


class NoiseGen:
    def __init__(self, kind: str = "gaussian", seed: int = 23341, n: int = 3):
        self.kind, self.n = kind, n
        if kind == "gaussian":
            self._rng = np.random.default_rng(seed)
            self._buf = np.zeros((0, n)); self._i = 0
        elif kind == "lfsr":
            self._tab = _bm_tables()
            self._s = [((seed * (2 * i + 1) * 2654435761) & 0xFFFFFF) or 1 for i in range(n)]
        else:
            raise ValueError(kind)

    def draw(self):
        """n independent unit-variance Gaussian samples."""
        if self.kind == "gaussian":
            if self._i >= len(self._buf):
                self._buf = self._rng.standard_normal((8192, self.n)); self._i = 0
            r = self._buf[self._i]; self._i += 1
            return r
        out = np.empty(self.n)
        for k in range(self.n):
            s = self._s[k]
            for _ in range(_CLOCKS_PER_SAMPLE):
                lsb = s & 1
                s >>= 1
                if lsb:
                    s ^= _LFSR_MASK
            self._s[k] = s
            out[k] = self._tab[s & 0xFFF]
        return out
