"""LQGDevice: what the MATLAB GUI + REST server present for one LQG board:
two parameter sets, feedback enable, live set switching, state reset and
frame recording of inputs, outputs and internal states."""
from __future__ import annotations
import numpy as np
from .design import LQGParams, LQGDesign, design_lqg
from .core import LQGCore, LQGCoreFloat


class LQGDevice:
    TS = 64e-9                      # 15.625 MHz processing clock
    # Test bench of the authors assumes a 12-sample feedback delay (k.nTauFb=12); 1 sample is
    # already inside the core (y[k] -> x[k+1] -> u[k+1]) so 11 samples of converter/pipeline
    # latency are added by the loop by default.  Tunable.
    def __init__(self, io_latency_samples: int = 11, fixed_point: bool = True):
        self.fixed_point = fixed_point
        self.io_latency_s = io_latency_samples * self.TS
        self.params: dict[int, LQGParams] = {}
        self.designs: dict[int, LQGDesign] = {}
        self.core = LQGCore()
        self._float_core = None
        self.active_set = 1
        self.feedback = False
        self.connected = True       # a software device is always reachable
        self._rec = None
        self.n_steps = 0

    # -- GUI actions --------------------------------------------------------
    def load_parameters(self, set_n: int, params: LQGParams) -> None:
        self.params[set_n] = params
        self.designs.pop(set_n, None)

    def recalculate(self, set_n: int) -> LQGDesign:
        """'Recalculate LQR' button."""
        self.designs[set_n] = design_lqg(self.params[set_n])
        return self.designs[set_n]

    def push_parameters(self) -> None:
        """'Push parameters' button (also triggered by the feedback and set switches)."""
        n = self.active_set
        if n not in self.designs:
            self.recalculate(n)
        d = self.designs[n]
        if self.fixed_point:
            self.core.load(d.pack(self.feedback))
        else:
            x = None if self._float_core is None else self._float_core.x
            self._float_core = LQGCoreFloat(d, self.feedback)
            if x is not None:
                self._float_core.x = x

    def select_set(self, n: int) -> None:
        self.active_set = n
        self.push_parameters()

    def enable_feedback(self, on: bool) -> None:
        self.feedback = bool(on)
        self.push_parameters()

    def reset_states(self) -> None:
        self.core.reset()
        if self._float_core is not None:
            self._float_core.reset()

    # -- real-time ----------------------------------------------------------
    def step(self, y_volts) -> np.ndarray:
        core = self.core if self.fixed_point else self._float_core
        u = core.step(y_volts)
        self.n_steps += 1
        if self._rec is not None:
            self._record_frame(y_volts, u, core)
        return u

    def xhat_physical(self) -> np.ndarray:
        return (self.core if self.fixed_point else self._float_core).xhat_physical()

    # -- data acquisition ---------------------------------------------------
    def record(self, n_frames: int, stride: int = 1) -> None:
        """Arm the recorder: latch a frame every `stride` samples (paper: multiple of 64 ns)."""
        self._rec = dict(n=n_frames, stride=stride, cnt=0, y=[], u=[], xhat=[], t=[])

    def _record_frame(self, y, u, core):
        r = self._rec
        if r["cnt"] % r["stride"] == 0 and len(r["y"]) < r["n"]:
            r["y"].append(np.array(y, float)); r["u"].append(np.array(u, float))
            r["xhat"].append(core.xhat_physical()); r["t"].append(self.n_steps * self.TS)
        r["cnt"] += 1

    @property
    def recording_finished(self) -> bool:
        return self._rec is not None and len(self._rec["y"]) >= self._rec["n"]

    def get_recording(self) -> dict:
        r = self._rec
        names = ["x", "dx", "y", "dy", "z", "dz", "phi"]
        xh = np.array(r["xhat"]) if r["xhat"] else np.zeros((0, 7))
        out = dict(t=np.array(r["t"]), y1=np.array(r["y"])[:, 0], y2=np.array(r["y"])[:, 1],
                   u1=np.array(r["u"])[:, 0], u2=np.array(r["u"])[:, 1])
        out.update({n: xh[:, i] for i, n in enumerate(names)})
        return out
