#!/usr/bin/env python3
"""Paper Section 4: LQG controller + HIL simulator in a closed loop (software version).

Protocol (paper Fig. 5):
  1. confining potential, no feedback
  2. feedback ON with parameter Set 1 (confining design)
  3. controller switched to Set 2 (saddle design)   <- controller FIRST ...
  4. simulator potential switched to the saddle     <- ... then the potential
  5. feedback OFF: the particle falls down the well
With --opposite the potential is switched first while the controller still runs Set 1
(the paper says it should fail).

NOTE on noise: with the paper's P_w = 3.2e-34 and the MATLAB library's *per-step
variance* semantics the free motion is only ~20-50 uV rms - below one 14-bit LSB - so
this demo defaults to --noise-mode psd (P_w treated as a PSD, variance = P_w/Ts), which
matches the Kalman-filter design.  Use --noise-mode variance to see the library default.
"""
import argparse, sys, time, os
import numpy as np
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
from pylqg import ClosedLoop, HILSimDevice, LQGDevice, saddle


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--noise-mode", choices=["variance", "psd"], default="psd")
    ap.add_argument("--noise-pwr", type=float, default=None, help="override P_w (default 3.2e-34)")
    ap.add_argument("--phase-ms", type=float, default=3.0)
    ap.add_argument("--opposite", action="store_true", help="switch simulator first, then controller")
    ap.add_argument("--double", action="store_true", help="use double-precision backends instead of fixed point")
    ap.add_argument("--out", default="saddle_demo", help="output basename (.npz / .png)")
    a = ap.parse_args()

    # --- simulator board: configure, compile against scenarios, deploy ---------------------
    model = saddle.build_plant(a.noise_mode, a.noise_pwr)
    model.compile(saddle.scenarios(), enable_noise=False, verbose=False)
    plant = HILSimDevice(backend="double" if a.double else "fixed")
    plant.connect(); plant.set_model(model); plant.send_config_update()
    plant.set_nlfsw_iomask(0x00); plant.set_nlfsw_sel(0x00)          # software switching, confining potential
    plant.reset_simulation(); plant.start_simulation()

    # --- controller board: two parameter sets, feedback off ---------------------------------
    ctrl = LQGDevice(fixed_point=not a.double)
    ctrl.load_parameters(1, saddle.lqg_params(1)); ctrl.load_parameters(2, saddle.lqg_params(2))
    ctrl.select_set(1)
    for n in (1, 2):
        d = ctrl.recalculate(n)
        print(f"Set {n}: |K| max {np.abs(d.K7).max():.3f}, predicted feedback std {np.diag(d.U_std)*1e3} mV")
    loop = ClosedLoop(ctrl, plant)

    T = a.phase_ms * 1e-3
    phases = []
    def phase(name, action=None):
        if action: action()
        t0 = time.time(); r = loop.run(T); r["name"] = name
        n = len(r["t"]); s = slice(int(0.3 * n), None)
        print(f"{name:34s} y rms {np.std(r['y1'][s])*1e3:8.2f} / {np.std(r['y2'][s])*1e3:8.2f} mV | "
              f"u rms {np.std(r['u1'][s])*1e3:6.2f} / {np.std(r['u2'][s])*1e3:6.2f} mV | "
              f"max|q1| {np.max(np.abs(r['q'][s,0]))*1e9:9.1f} nm  [{time.time()-t0:.1f}s]")
        phases.append(r)

    phase("confining, no feedback")
    phase("confining, feedback (Set 1)", lambda: ctrl.enable_feedback(True))
    if not a.opposite:
        phase("confining, feedback (Set 2)", lambda: ctrl.select_set(2))
        phase("saddle,    feedback (Set 2)", lambda: plant.set_nlfsw_sel(0x02))
    else:
        phase("saddle,    feedback (Set 1)  <- wrong order", lambda: plant.set_nlfsw_sel(0x02))
    phase("saddle,    feedback OFF", lambda: ctrl.enable_feedback(False))

    np.savez(a.out + ".npz", **{f"p{i}_{k}": v for i, r in enumerate(phases) for k, v in r.items() if k != "name"})
    try:
        import matplotlib; matplotlib.use("Agg")
        import matplotlib.pyplot as plt
        fig, ax = plt.subplots(3, 1, figsize=(11, 8), sharex=True)
        for i, r in enumerate(phases):
            t = r["t"] * 1e3
            ax[0].plot(t, r["y1"] * 1e3, "C0", lw=.5); ax[0].plot(t, r["y2"] * 1e3, "C1", lw=.5)
            ax[1].plot(t, r["u1"] * 1e3, "C2", lw=.5); ax[1].plot(t, r["u2"] * 1e3, "C4", lw=.5)
            ax[2].plot(t, r["q"][:, 0] * 1e9, "C0", lw=.8, label="q1 (true)" if i == 0 else None)
            ax[2].plot(t, r["xhat"][:, 0] * 1e9, "k--", lw=.6, label="q1 (LQG estimate)" if i == 0 else None)
            if i % 2 == 0:
                for x in ax: x.axvspan(t[0], t[-1], color="0.93")
            ax[0].text(t[0], 1.02, r["name"].replace("feedback", "fb"), transform=ax[0].get_xaxis_transform(), fontsize=6, rotation=0, va="bottom")
        ax[0].set_ylabel("ADC y1 (blue), y2 (orange) [mV]"); ax[1].set_ylabel("DAC u1, u2 [mV]")
        ax[2].set_ylabel("q1 [nm]"); ax[2].set_xlabel("time [ms]"); ax[2].legend(loc="upper left", fontsize=7)
        fig.tight_layout(); fig.savefig(a.out + ".png", dpi=130); print("wrote", a.out + ".png", a.out + ".npz")
    except ImportError:
        print("matplotlib not installed - skipped plot; data in", a.out + ".npz")


if __name__ == "__main__":
    main()
