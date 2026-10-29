"""Smallest useful example: configure both 'boards' like in the MATLAB workflow and close the loop."""
import os, sys
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
import numpy as np
from pylqg import ClosedLoop, HILSimDevice, LQGDevice, saddle

# ---- simulator board (hilsim_2d_saddle_example.m) ----------------------------------------
model = saddle.build_plant(noise_mode="psd")        # 'variance' (default of HILSimModel) or 'psd'
model.compile(saddle.scenarios(), enable_noise=False)
sim = HILSimDevice(); sim.connect()
sim.set_model(model); sim.send_config_update()      # == client.set_model / send_config_update
sim.set_nlfsw_iomask(0x00); sim.set_nlfsw_sel(0x00) # software NLF switching, confining potential
sim.reset_simulation(); sim.start_simulation()

# ---- LQG board (GUI: Load parameters, Recalculate, Push, Enable feedback) --------------------
lqg = LQGDevice()
lqg.load_parameters(1, saddle.lqg_params(1)); lqg.load_parameters(2, saddle.lqg_params(2))
lqg.select_set(1); lqg.enable_feedback(True)

# ---- wire them together (LQG outputs -> simulator inputs, simulator outputs -> LQG inputs) -
loop = ClosedLoop(lqg, sim)
r = loop.run(2e-3)
a = len(r["t"]) // 3
print(f"y rms with feedback: {r['y1'][a:].std()*1e3:.1f} / {r['y2'][a:].std()*1e3:.1f} mV")

lqg.select_set(2)                                   # controller first ...
sim.set_nlfsw_sel(0x02)                             # ... then the potential -> saddle
r = loop.run(2e-3)
print(f"saddle, Set 2: max |q1| = {np.abs(r['q'][a:, 0]).max()*1e9:.1f} nm")
