import numpy as np
import pytest
from pylqg.fixedpoint import wrap, sat, shift_decompose, to_raw
from pylqg.lqg import design_lqg
from pylqg.lqg.design import lqrd, lqr_c, _zoh
from pylqg import saddle


def test_wrap_sat_to_raw():
    assert wrap(2 ** 24, 25) == -2 ** 24 and wrap(-2 ** 24 - 1, 25) == 2 ** 24 - 1
    assert sat(10 ** 9, 14) == 8191 and sat(-10 ** 9, 14) == -8192
    assert to_raw(2e16, 18, 10) == 2 ** 17 - 1            # float-domain saturation, no int64 overflow
    assert to_raw(200.0, 18, 10, overflow="wrap") == -57344
    with pytest.raises(ValueError):
        to_raw(9.0, 18, 14, overflow="error")             # server raises on out-of-range residues


def test_shift_decompose_reconstructs():
    rng = np.random.default_rng(0)
    M = rng.standard_normal((5, 5)) * 10.0 ** rng.integers(-6, 1, (5, 5))
    s, r = shift_decompose(M, None, 31)
    assert np.allclose(r * 2.0 ** (-s), M, rtol=1e-12)
    assert np.all((np.abs(r) <= 1.0) & (np.abs(r) > 0.5))
    s, r = shift_decompose(np.array([[3.0, 0.0, 0.3]]), 0, 31)   # shift >= 0 clamp for F/Gamma/L
    assert s.min() >= 0 and r[0, 0] == 3.0


def test_lqr_variants_consistent():
    d = design_lqg(saddle.lqg_params(1))
    A, B, Q, R = d.A, d.B, d.Q, d.R
    # lqrd -> continuous LQR when Ts -> 0
    assert np.allclose(lqrd(A, B, Q, R, 1e-12), lqr_c(A, B, Q, R), rtol=2e-3)
    # design in physical coordinates and in normalised coordinates give the same controller
    dp = design_lqg(saddle.lqg_params(1, transformed_model=False, numerical_transform=False))
    assert np.allclose(dp.K_used @ d.T_mat, d.K_c, rtol=1e-6, atol=1e-9)
    # closed loop stable
    assert np.all(np.linalg.eigvals(A - B @ d.K_c).real < 0)
    assert np.max(np.abs(np.linalg.eigvals(d.Ad - d.Ld @ d.C))) < 1


def test_saddle_set2_is_inverted_oscillator():
    d2 = design_lqg(saddle.lqg_params(2))
    assert d2.A[1, 0] > 0                                  # -sign(w)|w|^2 with w<0  => positive stiffness term


def test_matches_gui_reference_gain():
    """The GUI's saved table (K_LQR display) is reproduced when the plant uses f_y=35 kHz, C22=4e6."""
    ref = np.array([[2.379437846835033, 2.3778961905680474, 0.03871435691575444, -0.009666649155529691],
                    [-0.010210175233164007, -0.009913465154702601, 5.373330224003561, 5.6157482923428095]])
    K = design_lqg(saddle.lqg_params(1)).K_display()[:, :4]
    assert np.max(np.abs(K - ref)) / np.abs(ref).max() < 0.01
    assert abs(K[1, 2] / ref[1, 2] - 1) < 1e-4            # Y block matches to 4 digits


def test_packing_quantisation_error_small():
    cfg = design_lqg(saddle.lqg_params(1)).pack(True)
    d = design_lqg(saddle.lqg_params(1))
    dq = cfg.dequantised()
    for k, ref in (("F", d.F7), ("B", d.B7), ("L", d.L7), ("K", -d.K7)):
        assert np.max(np.abs(dq[k] - ref)) / np.max(np.abs(ref)) < 1e-4
    assert cfg.F_shift.max() <= 31 and np.abs(cfg.K_res).max() < 2 ** 17
    off = design_lqg(saddle.lqg_params(1)).pack(False)
    assert not off.K_res.any()                             # feedback off => K = 0


def test_paper_variants_available():
    base = design_lqg(saddle.lqg_params(1)).K_used
    paper = design_lqg(saddle.lqg_params(1, lqr_method="dare")).K_used
    vl = design_lqg(saddle.lqg_params(1, noise_discretization="vanloan"))
    assert paper.shape == base.shape and np.all(np.isfinite(paper))
    assert np.max(np.abs(vl.Ld - design_lqg(saddle.lqg_params(1)).Ld)) / np.max(np.abs(vl.Ld)) < 0.05
