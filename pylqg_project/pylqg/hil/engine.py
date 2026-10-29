"""Simulation engines for the HIL model.

TDEngine : time-discrete double precision (Simulink MHILSimTDDouble)
FPEngine : time-discrete fixed point, integer arithmetic (MHILSimTDFixpoint / IP core)
Both expose  step(adc0_volts, adc1_volts, alt) -> (y0, y1) [volts]  and  reset().
`alt` is a (3,3) bool array [slice][u,x,xdot] selecting the alternate NLF.
"""
from __future__ import annotations
import math
import numpy as np
from .noise import NoiseGen
from .model import TS, LUT_SIZE, ACC_FRAC, ACC_W

_ZERO_ALT = np.zeros((3, 3), bool)


class TDEngine:
    def __init__(self, m, enable_noise=True, seed=23341, noise_kind="gaussian", probe=False):
        self.m = m
        self.std = [math.sqrt(v) if enable_noise else 0.0 for v in m["noise_var"]]
        self.gen = NoiseGen(noise_kind, seed)
        self.probe = None
        if probe:
            self.probe = dict(**{"in": [[0.0, 0.0] for _ in range(2)]},
                              sl=[[[0.0, 0.0] for _ in range(3)] for _ in range(3)],
                              st=[[0.0] * 3 for _ in range(3)],
                              out=[[[0.0, 0.0] for _ in range(3)] for _ in range(2)])
        self.reset()

    def reset(self):
        self.x = [0.0] * 3; self.xd = [0.0] * 3; self.xdd = [0.0] * 3

    def _p(self, lst, a, b):
        lst[0] = max(lst[0], abs(a)); lst[1] = max(lst[1], abs(b))

    def step(self, a0, a1, alt=_ZERO_ALT):
        m, pr = self.m, self.probe
        f0, f1 = m["in_nlf"]
        b0, b1 = float(f0(a0)), float(f1(a1))
        if pr:
            self._p(pr["in"][0], a0, b0); self._p(pr["in"][1], a1, b1)
        g = self.gen.draw()
        M, X, XD, XDD = m["inp_mat"], [0.0] * 3, [0.0] * 3, [0.0] * 3
        for j in range(3):
            s = m["slices"][j]
            u = M[j, 0] * b0 + M[j, 1] * b1 + M[j, 2] * self.std[j] * g[j]
            fu = s["u_nlf"][int(alt[j][0])]; fx = s["x_nlf"][int(alt[j][1])]; fd = s["xd_nlf"][int(alt[j][2])]
            nu, nx, nd = float(fu(u)), float(fx(self.x[j])), float(fd(self.xd[j]))
            xdd = s["u_f"] * nu + s["x_f"] * nx + s["xd_f"] * nd
            xd = self.xd[j] + TS * (1.5 * xdd - 0.5 * self.xdd[j])
            x = self.x[j] + TS * 0.5 * (xd + self.xd[j])
            if pr:
                self._p(pr["sl"][j][0], u, nu); self._p(pr["sl"][j][1], self.x[j], nx); self._p(pr["sl"][j][2], self.xd[j], nd)
                st = pr["st"][j]; st[0] = max(st[0], abs(xdd)); st[1] = max(st[1], abs(xd)); st[2] = max(st[2], abs(x))
            self.x[j], self.xd[j], self.xdd[j] = x, xd, xdd
            X[j], XD[j], XDD[j] = x, xd, xdd
        sig = (X, XD, XDD)
        y = [0.0, 0.0]
        for k in range(2):
            o = m["out"][k]
            for j in range(3):
                v = sig[o["sel"][j]][j]
                w = float(o["nlf"][j](v))
                if pr:
                    self._p(pr["out"][k][j], v, w)
                y[k] += o["fac"][j] * w
        return y[0], y[1]

    @staticmethod
    def _grid(scenario):
        n = int(round(scenario.sim_time / TS))
        return n, np.arange(n) * TS

    @classmethod
    def run(cls, m, scenario, enable_noise=True, seed=23341, probe=False, noise_kind="gaussian"):
        eng = cls(m, enable_noise, seed, noise_kind, probe)
        n, t = cls._grid(scenario)
        alt = scenario.alt_array()
        y = np.zeros((2, n))
        for i in range(n):
            a0, a1 = scenario.sample(t[i])
            y[:, i] = eng.step(a0, a1, alt)
        return (t, y), eng.probe

    @classmethod
    def run_tc(cls, m, scenario, enable_noise, seed, substeps=8):
        std = [math.sqrt(v) if enable_noise else 0.0 for v in m["noise_var"]]
        gen = NoiseGen("gaussian", seed)
        n, t = cls._grid(scenario)
        alt = scenario.alt_array(); M = m["inp_mat"]; h = TS / substeps
        x = np.zeros(3); v = np.zeros(3); y = np.zeros((2, n))
        sl = m["slices"]
        def acc(x, v, u):
            return np.array([sl[j]["u_f"] * float(sl[j]["u_nlf"][int(alt[j][0])](u[j])) +
                             sl[j]["x_f"] * float(sl[j]["x_nlf"][int(alt[j][1])](x[j])) +
                             sl[j]["xd_f"] * float(sl[j]["xd_nlf"][int(alt[j][2])](v[j])) for j in range(3)])
        for i in range(n):
            a0, a1 = scenario.sample(t[i])
            b0, b1 = float(m["in_nlf"][0](a0)), float(m["in_nlf"][1](a1))
            g = gen.draw()
            u = np.array([M[j, 0] * b0 + M[j, 1] * b1 + M[j, 2] * std[j] * g[j] for j in range(3)])
            for _ in range(substeps):       # RK4 on (x, v)
                k1x, k1v = v, acc(x, v, u)
                k2x, k2v = v + h / 2 * k1v, acc(x + h / 2 * k1x, v + h / 2 * k1v, u)
                k3x, k3v = v + h / 2 * k2v, acc(x + h / 2 * k2x, v + h / 2 * k2v, u)
                k4x, k4v = v + h * k3v, acc(x + h * k3x, v + h * k3v, u)
                x = x + h / 6 * (k1x + 2 * k2x + 2 * k3x + k4x)
                v = v + h / 6 * (k1v + 2 * k2v + 2 * k3v + k4v)
            xdd = acc(x, v, u)
            sig = (x, v, xdd)
            for k in range(2):
                o = m["out"][k]
                y[k, i] = sum(o["fac"][j] * float(o["nlf"][j](sig[o["sel"][j]][j])) for j in range(3))
        return t, y


# ==========================================================================
# fixed point
# ==========================================================================
_M25, _H25 = (1 << 25) - 1, 1 << 24
_M47, _H47 = (1 << ACC_W) - 1, 1 << (ACC_W - 1)
_S_ONE = 1 << 17


def _w25(v):
    return ((v + _H25) & _M25) - _H25


def _gain(v, g):                 # Simulink Gain: sfix25_17 x sfix18_10 -> sfix25_17, floor, wrap
    return _w25((v * g) >> 10)


def _nlf(x, nl, alt):
    """Hardware NLF: x*presc -> sfix25_24, top 10 bits = address, low 15 bits = interpolation weight."""
    n = _w25((x * nl["presc"]) >> 3)
    addr = (n >> 15) & 0x3FF
    frac = n & 0x7FFF
    lut = nl["lut_alt"] if alt else nl["lut"]
    p0 = (int(lut[addr]) * (_S_ONE - (frac << 2))) >> 14
    p1 = (int(lut[(addr + 1) & 0x3FF]) * (frac << 2)) >> 14
    return _w25((_w25(p0 + p1) * nl["gain"]) >> 10)


def _nlf_out(x, nl):
    return _nlf(x, dict(presc=nl["presc"], gain=nl["gain"], lut=nl["lut"], lut_alt=nl["lut"]), False)


class FPEngine:
    def __init__(self, m, enable_noise=True, seed=23341, noise_kind="gaussian", probe=False):
        self.m = m
        self.enable_noise = enable_noise
        self.gen = NoiseGen(noise_kind, seed)
        self.probe = {} if probe else None
        self.reset()

    def reset(self):
        self.st = [dict(x=0, xd=0, half=0, acc1=0, acc2=0, xdp=0) for _ in range(3)]

    def _pm(self, name, raw):
        if self.probe is not None:
            v = abs(raw) / _S_ONE
            if v > self.probe.get(name, 0.0):
                self.probe[name] = v

    def _slice(self, j, u, alt3):
        m = self.m; s = m["slices"][j]; st = self.st[j]
        us = u if s["u"]["mux"] else _nlf(u, s["u"]["nlf"], alt3[0])
        xs = st["x"] if s["x"]["mux"] else _nlf(st["x"], s["x"]["nlf"], alt3[1])
        ds = st["xd"] if s["xd"]["mux"] else _nlf(st["xd"], s["xd"]["nlf"], alt3[2])
        t = _gain(us, s["u"]["gain"]) + _gain(xs, s["x"]["gain"]) + _gain(ds, s["xd"]["gain"])
        xdd = -_H25 if t < -_H25 else (_H25 - 1 if t > _H25 - 1 else t)      # saturating add
        # --- xddot -> xdot integrator (3/2, -1/2 stencil) ---
        half = xdd >> 1
        d1 = _w25(_w25(xdd + half) - st["half"]); st["half"] = half
        inc = _w25((d1 * m["int_dt_res"]) >> 10)
        sh = ACC_FRAC - 17 - m["int_scale_bits"]
        st["acc1"] = ((st["acc1"] + (inc << sh if sh >= 0 else inc >> -sh) + _H47) & _M47) - _H47
        k = ACC_FRAC + s["xd_presc_bitshift"] - 17
        r = _w25(st["acc1"] >> k if k >= 0 else st["acc1"] << -k)
        xd = _w25((r * s["xd_presc_mul"]) >> 10)
        # --- xdot -> x integrator (trapezoid) ---
        h2 = _w25(xd + st["xdp"]) >> 1; st["xdp"] = xd
        inc = _w25((h2 * m["int_dt_res"]) >> 10)
        st["acc2"] = ((st["acc2"] + (inc << sh if sh >= 0 else inc >> -sh) + _H47) & _M47) - _H47
        k = ACC_FRAC + s["x_presc_bitshift"] - 17
        r = _w25(st["acc2"] >> k if k >= 0 else st["acc2"] << -k)
        x = _w25((r * s["x_presc_mul"]) >> 10)
        st["x"], st["xd"] = x, xd
        if self.probe is not None:
            self._pm(f"slice{j}/xdd", xdd); self._pm(f"slice{j}/xd", xd); self._pm(f"slice{j}/x", x)
        return x, xd, xdd

    def step(self, a0, a1, alt=_ZERO_ALT):
        m = self.m
        r0, r1 = int(math.floor(a0 * _S_ONE)), int(math.floor(a1 * _S_ONE))
        r0, r1 = _w25(r0), _w25(r1)
        if m["adc_nlf"][0]["enabled"]:
            r0 = _nlf_out(r0, m["adc_nlf"][0])
        if m["adc_nlf"][1]["enabled"]:
            r1 = _nlf_out(r1, m["adc_nlf"][1])
        if self.enable_noise:
            g = self.gen.draw()
            nz = [int(math.floor(2.0 * g[j] * _S_ONE)) for j in range(3)]       # hardware noise: RMS 2
        else:
            nz = [0, 0, 0]
        X, XD, XDD = [0] * 3, [0] * 3, [0] * 3
        for j in range(3):
            f = m["inp"][j]
            u = _w25(_gain(r0, f[0]) + _gain(r1, f[1]) + _gain(_gain(nz[j], m["noise_presc"][j]), f[2]))
            X[j], XD[j], XDD[j] = self._slice(j, u, alt[j])
        sig = (X, XD, XDD)
        y = []
        for k in range(2):
            o = m["out"][k]; acc = 0
            for j in range(3):
                v = sig[o["sel"][j]][j]
                if o["nlf"][j]["enabled"]:
                    v = _nlf_out(v, o["nlf"][j])
                acc = _w25(acc + _gain(v, o["fac"][j]))
            y.append(acc / _S_ONE)
        return y[0], y[1]

    @classmethod
    def run(cls, m, scenario, enable_noise=True, seed=23341, probe=False, noise_kind="gaussian"):
        eng = cls(m, enable_noise, seed, noise_kind, probe)
        n, t = TDEngine._grid(scenario)
        alt = scenario.alt_array()
        y = np.zeros((2, n))
        for i in range(n):
            a0, a1 = scenario.sample(t[i])
            y[:, i] = eng.step(a0, a1, alt)
        return (t, y), eng.probe
