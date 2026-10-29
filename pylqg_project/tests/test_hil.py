import numpy as np
from pylqg.hil import HILSimModel, Scenario, HILSimDevice, TDEngine, FPEngine
from pylqg.hil.noise import NoiseGen
from pylqg.hil.model import TS
from pylqg import saddle

M0 = 5e-17


def _osc_model():
    m = HILSimModel()
    m.input_matrix.set_matrix([[5e-12, 1e-12, 0], [1e-12, 5e-12, 0], [0, 0, 0]])
    for j, f in ((0, 35e3), (1, 20e3)):
        m.slices[j].u_factor = 1 / M0; m.slices[j].x_factor = -(2 * np.pi * f) ** 2; m.slices[j].xdot_factor = -2 * np.pi * 1e3
    m.output_slices[0].linear_factors = [4e6, 0, 0]; m.output_slices[1].linear_factors = [0, 4e6, 0]
    a0 = np.zeros(6000); a1 = np.zeros(6000); a0[100:200] = 0.05; a1[300:400] = -0.05
    sc = Scenario.from_arrays(a0, a1, 1e-7)
    m.compile(sc, False, verbose=False)
    return m, sc


def test_fixed_point_engine_matches_float_twin_with_same_constants():
    m, sc = _osc_model()
    fp = m.sim_tdfp(sc, False); mm = m.get_tdfp_model()
    c = lambda r: r / 1024.0
    dt = c(mm["int_dt_res"]) / 2 ** mm["int_scale_bits"]
    n = len(fp[0].Data); t = np.arange(n) * TS
    x, xd, xp = [0.] * 3, [0.] * 3, [0.] * 3
    y = np.zeros((2, n))
    for i in range(n):
        a0, a1 = (np.floor(v * 2 ** 17) / 2 ** 17 for v in sc.sample(t[i]))
        X = [0.] * 3
        for j in range(3):
            s, f = mm["slices"][j], mm["inp"][j]
            xdd = c(s["u"]["gain"]) * (c(f[0]) * a0 + c(f[1]) * a1) + c(s["x"]["gain"]) * x[j] + c(s["xd"]["gain"]) * xd[j]
            P1 = c(s["xd_presc_mul"]) * 2.0 ** -s["xd_presc_bitshift"]; P0 = c(s["x_presc_mul"]) * 2.0 ** -s["x_presc_bitshift"]
            xdn = xd[j] + P1 * dt * (1.5 * xdd - .5 * xp[j]); xn = x[j] + P0 * dt * .5 * (xdn + xd[j])
            xp[j], xd[j], x[j], X[j] = xdd, xdn, xn, xn
        for k in range(2):
            y[k, i] = sum(c(mm["out"][k]["fac"][j]) * X[j] for j in range(3))
    for k in range(2):
        assert np.max(np.abs(fp[k].Data - y[k])) / np.max(np.abs(y[k])) < 2e-4


def test_backends_agree_within_hardware_constant_quantisation():
    m, sc = _osc_model()
    tc, td, fp = m.sim_tc(sc, False), m.sim_td(sc, False), m.sim_tdfp(sc, False)
    for k in range(2):
        pk = np.max(np.abs(tc[k].Data))
        assert np.max(np.abs(td[k].Data - tc[k].Data)) / pk < 0.03    # AB2/trapezoid vs RK4
        assert np.max(np.abs(fp[k].Data - td[k].Data)) / pk < 0.05    # 18/10 constants (see README)


def _accel_model(mode, pwr):
    m = HILSimModel(noise_mode=mode)
    m.noise_sources[0].set_noise_power(pwr)
    m.input_matrix.set_matrix([[0, 0, 1], [0, 0, 0], [0, 0, 0]])
    m.slices[0].u_factor = 1.0; m.slices[0].x_factor = 0.0; m.slices[0].xdot_factor = 0.0
    m.output_slices[0].x_xdot_selectors = ["xdotdot", "x", "x"]; m.output_slices[0].linear_factors = [1, 0, 0]
    return m


def test_noise_mode_switch_variance_vs_psd():
    pwr = 4e-4                                                # per-step variance 4e-4  (std 0.02)
    for kind_engine in ("td", "fp"):
        std = {}
        for mode in ("variance", "psd"):
            m = _accel_model(mode, pwr)
            m._td = m.export_td_sim_model()
            if kind_engine == "td":
                eng = TDEngine(m._td, True, 5)
            else:
                # compile with a scenario that excites the noise path so scaling is defined
                m.slices[0].xdotdot_presc = 1.0
                m._tdfp = None
                m._td = m.export_td_sim_model()
                m.compile(Scenario.from_arrays(np.zeros(300), np.zeros(300), 1e-7), True, verbose=False)
                eng = FPEngine(m.get_tdfp_model(), True, 5)
            out = np.array([eng.step(0.0, 0.0)[0] for _ in range(6000)])
            std[mode] = out.std()
        assert abs(std["variance"] / np.sqrt(pwr) - 1) < 0.1, (kind_engine, std)
        assert abs(std["psd"] / np.sqrt(pwr / TS) - 1) < 0.1, (kind_engine, std)
        assert abs(std["psd"] / std["variance"] / np.sqrt(1 / TS) - 1) < 0.15


def test_noise_mode_validation():
    m = HILSimModel()
    try:
        m.noise_mode = "bogus"
    except ValueError:
        return
    raise AssertionError("invalid noise mode accepted")


def test_lfsr_boxmuller_statistics():
    g = NoiseGen("lfsr", 1234)
    v = np.array([g.draw() for _ in range(6000)])
    assert np.all(np.abs(v.mean(axis=0)) < 0.05) and np.all(np.abs(v.std(axis=0) - 1) < 0.06)
    assert abs(np.corrcoef(v[:, 0], v[:, 1])[0, 1]) < 0.05 and abs(np.corrcoef(v[:-1, 0], v[1:, 0])[0, 1]) < 0.05


def test_nlf_lut_and_alternate_switch():
    m = saddle.build_plant("variance"); m.compile(saddle.scenarios(), False, verbose=False)
    dev = HILSimDevice(); dev.connect(); dev.set_model(m); dev.send_config_update(); dev.start_simulation()
    dev.set_nlfsw_iomask(0); dev.set_nlfsw_sel(0)
    assert dev.get_nlfsw_current() == 0
    dev.set_nlfsw_sel(0x02); assert dev.get_nlfsw_current() == 0x02
    dev.set_nlfsw_iomask(0x02); dev.set_gpio_nlfsw(0x00); assert dev.get_nlfsw_current() == 0
    dev.set_gpio_nlfsw(0x02); assert dev.get_nlfsw_current() == 0x02      # external GPIO drives bit 1
    # static check of the NLF path: displaced particle relaxes to 0 (confining) or falls to a well (saddle)
    dev.set_nlfsw_iomask(0)
    for sel, expect_far in ((0x00, False), (0x02, True)):
        dev.set_nlfsw_sel(sel); dev.reset_simulation()
        for _ in range(300): dev.step(0.0, 0.0)
        for _ in range(60): dev.step(0.03, -0.03)                    # pulse kicks the particle
        for _ in range(20000): dev.step(0.0, 0.0)
        q = dev.physical_states()[0][0]
        assert (abs(q) > 5e-7) == expect_far, (sel, q)


def test_daq_and_calibration():
    m = saddle.build_plant("psd"); m.compile(saddle.scenarios(), False, verbose=False)
    dev = HILSimDevice(); dev.connect(); dev.set_model(m); dev.send_config_update(); dev.start_simulation()
    dev.configure_daq(50, 36 * 10); dev.prime_daq()
    for _ in range(50 * 45): dev.step(0.0, 0.0)
    assert dev.is_daq_finished() and dev.read_daq_data()["dac"].shape == (50, 2)
    dev.step(0.0, 0.0); dev._last_adc = [0.01, -0.02]; dev.do_input_zero_calib()
    assert np.allclose(dev.get_adc_calib()[0::2], [-0.01, 0.02])
