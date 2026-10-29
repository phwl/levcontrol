import numpy as np
from pylqg.lqg import LQGCore, LQGCoreFloat, LQGDevice, design_lqg
from pylqg.fixedpoint import wrap
from pylqg import saddle


def _naive_step(cfg, x, adc):
    """Straightforward per-element re-implementation of the Verilog/Simulink datapath."""
    sat = lambda a, b: max(min(int(a), (1 << (b - 1)) - 1), -(1 << (b - 1)))
    def mm(res, sh, xv, bidir=False):
        out = []
        for i in range(res.shape[0]):
            acc = 0
            for k in range(res.shape[1]):
                p, s = int(res[i, k]) * int(xv[k]), int(sh[i, k])
                if bidir and s < 0:
                    p = sat(p << (-s), 43)
                else:
                    p >>= s
                acc = wrap(acc + wrap(p << 1, 43), 43)
            out.append(acc)
        return out
    y25 = []
    for i in range(2):
        v = sat(int(adc[i]) + int(cfg.yk_offset_raw[i]), 14)
        y25.append(sat((v * int(cfg.yk_factor_raw[i])) >> 14, 14) << 10)
    u25 = [sat(a >> 15, 25) for a in mm(cfg.K_res, cfg.K_shift, x, True)]
    f = [sat(a >> 15, 28) for a in mm(cfg.F_res, cfg.F_shift, x)]
    g = [sat(a >> 15, 28) for a in mm(cfg.G_res, cfg.G_shift, u25)]
    l = [sat(a >> 15, 28) for a in mm(cfg.L_res, cfg.L_shift, y25)]
    return np.array([sat(sat(sat(f[i] + g[i], 28) + l[i], 28), 25) for i in range(7)])


def test_core_is_bit_exact_vs_naive_reference():
    cfg = design_lqg(saddle.lqg_params(1)).pack(True)
    core, x = LQGCore(cfg), np.zeros(7, dtype=np.int64)
    rng = np.random.default_rng(3)
    for k in range(400):
        adc = np.round(rng.normal(0, 800, 2)).astype(int)
        core.step_raw(adc); x = _naive_step(cfg, x, adc)
        assert np.array_equal(core.x, x), f"mismatch at step {k}"


def test_fixed_point_tracks_float_reference():
    d = design_lqg(saddle.lqg_params(1))
    core, fl = LQGCore(d.pack(True)), LQGCoreFloat(d, True)
    rng = np.random.default_rng(1)
    t = np.arange(8000)
    y = 0.02 * np.sin(2 * np.pi * 15e3 * 64e-9 * t)[:, None] * [1, .3] + 0.002 * rng.standard_normal((8000, 2))
    uf, ux = [], []
    for k in range(len(t)):
        yq = np.round(y[k] * 8192) / 8192
        ux.append(core.step(yq)); uf.append(fl.step(yq))
    ux, uf = np.array(ux), np.array(uf)
    assert np.sqrt(np.mean((ux - uf) ** 2)) < 3e-4           # ~ 1 u-quantum (2^-12 V)
    assert abs(ux.std() / uf.std() - 1) < 0.02


def test_output_quantum_and_saturation():
    cfg = design_lqg(saddle.lqg_params(1)).pack(True)
    core = LQGCore(cfg)
    core.x[:] = 2 ** 24 - 1                                   # extreme state -> saturated DAC word
    dac = core.step_raw([0, 0])
    assert np.all(np.abs(dac) <= 8192)
    assert np.all(dac % 2 == 0)                               # u is 14/12 then x2 => DAC LSB unused (13-bit effective)
    core.reset(); core.x[0] = 12345678
    for _ in range(3):
        assert np.all(core.step_raw([0, 0]) % 2 == 0)


def test_device_set_switch_and_feedback_gate():
    dev = LQGDevice()
    dev.load_parameters(1, saddle.lqg_params(1)); dev.load_parameters(2, saddle.lqg_params(2))
    dev.select_set(1)
    assert not dev.core.cfg.K_res.any()                       # feedback off => K zero
    dev.enable_feedback(True)
    k1 = dev.core.cfg.K_res.copy()
    dev.select_set(2)
    assert dev.core.cfg.K_res.any() and not np.array_equal(k1, dev.core.cfg.K_res)
    x_before = dev.core.x.copy(); dev.select_set(1)
    assert np.array_equal(dev.core.x, x_before)               # switching sets keeps the estimator state
    dev.reset_states(); assert not dev.core.x.any()
    dev.record(5, stride=2)
    for _ in range(20): dev.step([0.01, 0.0])
    rec = dev.get_recording()
    assert len(rec["t"]) == 5 and dev.recording_finished
