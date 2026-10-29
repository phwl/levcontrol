import numpy as np
from pylqg import ClosedLoop, Wire, HILSimDevice, LQGDevice, saddle


class _Dummy:
    def __init__(self, ts, lat, fn=lambda a, b: (0.0, 0.0)):
        self.TS, self.io_latency_s, self.fn, self.calls = ts, lat, fn, []
    def step(self, a, b=None):
        self.calls.append(1); return np.array(self.fn(a, b)) if b is not None else None


def test_wire_delay_and_zero_order_hold():
    w = Wire(latency_s=300e-9)
    w.push(100, [0.5, -0.5])
    assert np.allclose(w.read(399), 0) and np.allclose(w.read(400), [0.5, -0.5])
    assert np.allclose(w.read(10_000), [0.5, -0.5])           # held until the next value arrives


def test_multirate_schedule_is_9_to_4():
    class C(_Dummy):
        def step(self, y): self.calls.append(1); return np.zeros(2)
        def xhat_physical(self): return np.zeros(7)
    class P(_Dummy):
        def step(self, a, b): self.calls.append(1); return (0.0, 0.0)
        def physical_states(self): return np.zeros(3), np.zeros(3), np.zeros(3)
    c, p = C(64e-9, 5e-7), P(144e-9, 7e-7)
    loop = ClosedLoop(c, p)
    loop.run(10 * 576e-9, log_stride=1000)
    assert (len(c.calls), len(p.calls)) == (90, 40)           # lcm(64 ns, 144 ns) = 576 ns
    loop.run(5 * 576e-9, log_stride=1000)
    assert (len(c.calls), len(p.calls)) == (135, 60)          # state persists between run() calls


def test_signal_crosses_loop_with_expected_latency():
    seen = []
    class C(_Dummy):
        def step(self, y): seen.append(float(y[0])); return np.zeros(2)
        def xhat_physical(self): return np.zeros(7)
    class P(_Dummy):
        def step(self, a, b): return (0.25, 0.0)              # constant DAC value from t = 0
        def physical_states(self): return np.zeros(3), np.zeros(3), np.zeros(3)
    loop = ClosedLoop(C(64e-9, 0), P(144e-9, 500e-9))
    loop.run(2e-6)
    first_ns = 64 * next(i for i, v in enumerate(seen) if v == 0.25)   # controller samples at 0, 64, 128 ns ...
    assert first_ns == 512                                    # first controller sample at/after the 500 ns DAC latency


def _rig(noise_mode):
    model = saddle.build_plant(noise_mode); model.compile(saddle.scenarios(), False, verbose=False)
    plant = HILSimDevice(); plant.connect(); plant.set_model(model); plant.send_config_update()
    plant.set_nlfsw_iomask(0); plant.set_nlfsw_sel(0); plant.reset_simulation(); plant.start_simulation()
    ctrl = LQGDevice()
    ctrl.load_parameters(1, saddle.lqg_params(1)); ctrl.load_parameters(2, saddle.lqg_params(2)); ctrl.select_set(1)
    return ctrl, plant, ClosedLoop(ctrl, plant)


def _stats(r):
    a = int(0.3 * len(r["t"]))
    return np.std(r["y1"][a:]), np.std(r["y2"][a:]), np.max(np.abs(r["q"][a:, 0]))


def test_paper_protocol_psd_noise():
    ctrl, plant, loop = _rig("psd")
    T = 1.5e-3
    free = _stats(loop.run(T))
    ctrl.enable_feedback(True); s1 = _stats(loop.run(T))
    ctrl.select_set(2); s2 = _stats(loop.run(T))                        # controller first ...
    plant.set_nlfsw_sel(0x02); s3 = _stats(loop.run(T))                 # ... then the potential
    ctrl.enable_feedback(False); s4 = _stats(loop.run(T))
    assert s1[0] < free[0] / 10 and s1[1] < free[1] / 2.5               # feedback cools both axes
    assert s2[2] < 60e-9 and s3[2] < 60e-9                              # Set 2 stable, also in the saddle
    assert s4[2] > 500e-9                                               # without feedback: falls into the well


def test_per_step_variance_default_still_stabilises_saddle():
    ctrl, plant, loop = _rig("variance")
    T = 1.0e-3
    free = _stats(loop.run(T))
    assert free[0] < 2e-4                                               # ~50 uV: below the 14-bit LSB regime
    ctrl.enable_feedback(True); ctrl.select_set(2); plant.set_nlfsw_sel(0x02)
    assert _stats(loop.run(T))[2] < 20e-9
    ctrl.enable_feedback(False)
    assert _stats(loop.run(T))[2] > 500e-9
