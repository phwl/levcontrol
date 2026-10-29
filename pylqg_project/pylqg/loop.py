"""Closed-loop co-simulation of the LQG board and the HIL-simulator board, wired
like in the paper (LQG analog outputs -> simulator inputs, simulator outputs ->
LQG inputs).

The two devices run at different rates (LQG 64 ns, simulator 144 ns), so the loop
repeats every lcm = 576 ns (9 LQG steps per 4 simulator steps).  The analog
wires hold the last converter value (zero-order hold) and add a fixed transport
latency (converter + pipeline delay of the sending device), optional gain and
additive Gaussian pick-up noise.  Everything is scheduled on an integer
nanosecond timeline, so no rate approximation is involved."""
from __future__ import annotations
from collections import deque
import numpy as np


class Wire:
    """Two-channel analog connection: delay + zero-order hold (+ gain/offset/noise)."""
    def __init__(self, latency_s=0.0, gain=(1.0, 1.0), offset=(0.0, 0.0), noise_rms=0.0, seed=0):
        self.latency_ns = max(1, int(round(latency_s * 1e9)))
        self.gain, self.offset, self.noise_rms = np.asarray(gain, float), np.asarray(offset, float), noise_rms
        self._q = deque()
        self._last = np.zeros(2)
        self._rng = np.random.default_rng(seed)

    def push(self, t_ns, value):
        self._q.append((t_ns + self.latency_ns, np.asarray(value, float)))

    def read(self, t_ns):
        while self._q and self._q[0][0] <= t_ns:
            self._last = self._q.popleft()[1]
        v = self._last * self.gain + self.offset
        if self.noise_rms:
            v = v + self._rng.normal(0.0, self.noise_rms, 2)
        return v


class ClosedLoop:
    """Wire an LQGDevice to a HILSimDevice and run them together.

    ctrl  : pylqg.lqg.LQGDevice     (64 ns)
    plant : pylqg.hil.HILSimDevice  (144 ns)
    meas_noise_rms : additive pick-up noise on the plant->controller wire [V]
    """
    def __init__(self, ctrl, plant, meas_noise_rms: float = 0.0, seed: int = 1):
        self.ctrl, self.plant = ctrl, plant
        self.c2p = Wire(ctrl.io_latency_s, seed=seed)
        self.p2c = Wire(plant.io_latency_s, noise_rms=meas_noise_rms, seed=seed + 1)
        self.dt_c = int(round(ctrl.TS * 1e9))
        self.dt_p = int(round(plant.TS * 1e9))
        self.t_ns = 0
        self._next_c = 0
        self._next_p = 0

    @property
    def t(self):
        return self.t_ns * 1e-9

    def run(self, duration_s: float, log_stride: int = 16) -> dict:
        """Advance the loop by `duration_s`.  Logs every `log_stride`-th controller sample.
        Returned arrays: t, y1, y2 (what the controller measures), u1, u2 (controller output),
        q (true plant states, physical: rows q1,q2,q3), xhat (controller's estimate, physical)."""
        t_end = self.t_ns + int(round(duration_s * 1e9))
        ctrl, plant = self.ctrl, self.plant
        T, Y, U, Q, XH = [], [], [], [], []
        k = 0
        nc, np_ = self._next_c, self._next_p
        while min(nc, np_) < t_end:
            if nc <= np_:
                y = self.p2c.read(nc)
                u = ctrl.step(y)
                self.c2p.push(nc, u)
                if k % log_stride == 0:
                    T.append(nc * 1e-9); Y.append(y); U.append(u)
                    Q.append(plant.physical_states()[0]); XH.append(ctrl.xhat_physical())
                k += 1
                nc += self.dt_c
            else:
                a = self.c2p.read(np_)
                self.p2c.push(np_, plant.step(a[0], a[1]))
                np_ += self.dt_p
        self._next_c, self._next_p, self.t_ns = nc, np_, t_end
        Y, U, Q, XH = np.array(Y), np.array(U), np.array(Q), np.array(XH)
        return dict(t=np.array(T), y1=Y[:, 0], y2=Y[:, 1], u1=U[:, 0], u2=U[:, 1], q=Q, xhat=XH)
