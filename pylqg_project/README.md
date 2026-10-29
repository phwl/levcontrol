# pylqg – Python version of the FPGA LQG controller and HIL simulator

Software re-implementation of the two Red Pitaya designs from
*"FPGA-based LQG controller and hardware-in-the-loop simulator implementation for
nanomechanical systems"* (Mlynář, Berndorfer, Kugi, Deutschmann-Olek), written from the
MATLAB/Simulink/Verilog sources of the repository (not only from the paper).
Both "boards" are Python objects that can be wired together exactly like the two
Red Pitayas in Section 4: LQG analog outputs → simulator inputs and back.

```
pip install numpy scipy            # matplotlib optional (plots)
python examples/quickstart.py
python examples/saddle_demo.py     # paper Section 4 protocol, writes saddle_demo.png/.npz
python tests/run_tests.py          # 23 tests, no pytest required (pytest also works)
```

## Layout

| Python | MATLAB / firmware original |
|---|---|
| `lqg/design.py` `LQGParams`, `design_lqg`, `pack_config` | GUI `assembleStateSpace`, `recalculateLQG`, `transformStateSpace`, `optimizedTransformStateSpace`, `padStateSpace`, `assembleLQGStruct`, `shift_decompose.m` |
| `lqg/core.py` `LQGCore` | Simulink `lqg_with_axi_test` + Verilog `matmul_shiftfix*.v`, `fixpt_helpers.v` |
| `lqg/device.py` `LQGDevice` | GUI actions: two parameter sets, Push, Enable feedback, set switch, Reset states, Record |
| `hil/model.py` `HILSimModel`, `Slice`, `NoiseSource`, `Scenario`… | `HILSimModel.m` (`compile`, exports), `HILSimSlice.m`, … |
| `hil/nlf.py` `NLFunction` | `HILSimNLFunction.m` (1024-entry LUT, alternate function) |
| `hil/engine.py` `TDEngine`, `FPEngine`, `run_tc` | `MHILSimTDDouble`, `MHILSimTDFixpoint`, `MHILSimTCDouble` |
| `hil/device.py` `HILSimDevice` | `HILSimClient.m` (start/stop/reset, calibration, NLF switch masks, DAQ) |
| `loop.py` `ClosedLoop`, `Wire` | the analog cabling between the boards |
| `saddle.py`, `examples/saddle_demo.py` | `hilsim_2d_saddle_example.m` + LQG parameter sets |

## Noise switch (as requested)

`HILSimModel(noise_mode="variance")` (default) — `noise_pwr` is the variance of one noise sample per
144 ns step, which is how I read the Simulink models (`Cov = pwr·Ts`, assuming the Band-Limited White Noise block
emits variance `Cov/Ts` – from memory of MathWorks' semantics, not run here) and the hardware prescaler
(`sqrt(pwr/4)` on an RMS‑2 generator, per the authors' code comment). `noise_mode="psd"` — `noise_pwr` is a two-sided PSD,
per-step variance = `noise_pwr/Ts`. **With the paper's P_w = 3.2e-34 the default gives ≈50/22 µV free
motion (below one 14‑bit LSB); `psd` gives ≈135/58 mV**, which is what the Kalman design (same P_w as a PSD)
assumes. `examples/saddle_demo.py` therefore defaults to `--noise-mode psd`.
`model.noise_kind = "lfsr"` selects the hardware-style 24‑bit LFSR + Box–Muller generator.

## Where the code differs from the paper text (the code is the default)

* **LQR gain:** the GUI computes `lqrd` but packs the *continuous* `lqr` gain (`K_LQR_c`). Options
  `lqr_method="continuous"|"lqrd"|"dare"` (paper Eq. 15–16).
* **Process-noise discretisation:** GUI uses `c2d` (ZOH) on `G` with `P_W/Ts`; paper Eq. 9e is Van Loan.
  `noise_discretization="zoh"|"vanloan"`.
* **Effective HIL time step is 143.889 ns, not 144 ns (−0.077 %)**: the step constant `Ts·2^22 = 0.60398`
  must be stored as an 18/10 constant (618/1024). All 18/10 constants (e.g. damping gain ≈0.029) carry
  ≈1–3 % quantisation error – inherent to the design, reproduced here.
* **LQG converters:** `u` passes through 14/12 truncate+saturate blocks and ×2 ⇒ DAC LSB unused (13‑bit
  effective, 244 µV); ADC input likewise floor‑quantised to 2^-12 V.
* **Example script:** the authors' `hilsim_2d_saddle_example.m` scales C by 0.5 and drops cross-talk; the
  paper lists other values again. `saddle.py` uses the *controller's* C (with cross-talk, C22 = 4e6) so both
  boards model the same physics. The third slice is made inert.
* **Saved GUI tables are stale:** `KLQRdispUITable` in the `.mat` files is identical for Set 1 and Set 2 and does
  not match their own inputs. It *is* reproduced (whole table within 0.8 %, Y block to 4 digits) with
  f_y = 35 kHz, C22 = 4e6 – used as a regression test.

## Validation done

* LQG core vs an independent per-element re-implementation of the Verilog/Simulink datapath: identical
  states over 400 random steps (this is *not* a co-simulation against the bitstream).
* LQG design: physical- vs normalised-coordinate gains consistent; GUI reference gain (above); packed
  coefficient error < 1e-4.
* HIL integer engine vs a float twin using the same quantised constants: 0.004 % of peak.
  TD vs RK4 continuous reference: 1–2 %; FP vs TD-double: 0.4–3 % (constant quantisation, above).
* Closed loop (psd noise): feedback cuts y rms from 216/61 mV to 9/17 mV; predicted feedback std (design)
  9–10 mV vs measured 6–15 mV; Set 2 holds the saddle (max|q1| ≈ 8 nm); feedback off → falls to the well.
* Multirate wiring: 9 controller steps per 4 simulator steps (lcm 576 ns), exact integer‑ns schedule.

## Known differences / not verified

* **Paper claim not reproduced:** with these parameters Set 1 also holds the *saddle* (`--opposite`).
  Feedback stiffness ≈105× the potential curvature, so flipping its sign is a ~1 % perturbation. The paper's
  failure may depend on bench details I cannot see.
* Fig. 5 amplitudes are not reproduced quantitatively (y1/y2 ratio differs); cause unknown.
* Assumed (tunable): controller I/O latency 12 samples total (`k.nTauFb` of the authors' test bench), simulator
  788 ns (paper Table 2); ADC/DAC ±1 V, 14 bit; calibration folded into net "volts"; HW accumulator 47/39
  (the Simulink TD-FP model uses 64/56); 36 LFSR clocks per noise sample (inferred).
* Not implemented: TCP/JSON server and REST server (the Python objects are the API), the GUI, the
  Vitis `sim_hwimpl` model, DMA memory streaming for the LQG, Z/φ axes in closed loop (design supports them,
  untested), input/output NLF stages beyond compilation (only the x‑path NLF + alternate is tested).
* Speed: ≈60 µs per controller step, ≈1.3 s wall time per simulated millisecond of closed loop (pure Python).

## Tutorial notebook

`notebooks/pylqg_tutorial.ipynb` is a full, executed tutorial (about 3 minutes to re-run): the state-space model and its exact
discretisation, derivations (with proofs and numerical checks) of the Kalman filter, the LQR and the LQG separation principle,
the FPGA implementation (shift-float coefficients, state scaling, bit-exact datapath, latency), the HIL simulator
(integrator analysis, lookup tables, noise, scaling) reproductions of the paper's saddle-potential example and of the
single-particle double-well example, and an estimate (measured compute speed plus a latency-budget analysis) of what a general-purpose PC could do instead of the FPGA. It needs only NumPy, SciPy and Matplotlib plus this package; open it from the
`notebooks/` folder (or put `pylqg_project/` next to it) and run all cells.

## Compile-time range check (HIL)

`HILSimModel.compile()` now emits a `RuntimeWarning` (and lists them in `model.quantisation_issues`) when a constant
saturates or underflows the sfix18_10 format, e.g. when a noise power dwarfs the signal path. Without this check such a model
compiles silently and the fixed-point engine returns all zeros.
