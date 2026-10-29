"""HILSimDevice: software stand-in for the Red Pitaya running the HIL IP core and
the C configuration server, with the same operations as HILSimClient.m
(connect / set_model / send_config_update / calibration / start / stop / reset /
NLF switching / DMA acquisition) plus a real-time `step`."""
from __future__ import annotations
import numpy as np
from .model import HILSimModel, TS
from .engine import FPEngine, TDEngine
from ..fixedpoint import round_half_away

ADC_LSB = 1.0 / 8192       # 14 bit over +-1 V


class HILSimDevice:
    TS = TS
    def __init__(self, backend: str = "fixed", io_latency_s: float = 788e-9):
        """backend: 'fixed' (integer TD-FP model, default) | 'double' (TD-DBL).
        io_latency_s: total worst-case input->output delay (paper Table 2: 788 ns)."""
        self.backend = backend
        self.io_latency_s = io_latency_s
        self.connected = False
        self.model: HILSimModel | None = None
        self._cfg_model = None
        self.engine = None
        self.running = False
        self.adc_offset = [0.0, 0.0]; self.adc_factor = [1.0, 1.0]
        self.dac_offset = [0.0, 0.0]; self.dac_factor = [1.0, 1.0]
        self._nlfsw_io = 0; self._nlfsw_sel = 0; self._gpio = 0
        self._last_adc = [0.0, 0.0]
        self._daq = None

    # -- connection / configuration ---------------------------------------------
    def connect(self):
        self.connected = True; self.send_ping()

    def disconnect(self):
        self.connected = False

    def send_ping(self):
        if not self.connected:
            raise RuntimeError("Not connected.")
        return True

    def set_model(self, model: HILSimModel):
        self.model = model

    def send_config_update(self):
        self._need_conn()
        if self.model is None:
            raise RuntimeError("Not valid model was set.")
        m = self.model
        if self.backend == "fixed":
            self._cfg_model = m.get_tdfp_model()
            self.engine = FPEngine(self._cfg_model, True, m.seed, m.noise_kind)
        else:
            m._need()
            self.engine = TDEngine(m._td, True, m.seed, m.noise_kind)

    # -- run control --------------------------------------------------------------
    def start_simulation(self):
        self._need_conn(); self.running = True

    def stop_simulation(self):
        self._need_conn(); self.running = False

    def reset_simulation(self):
        self._need_conn()
        if self.engine is not None:
            self.engine.reset()

    def is_simulation_running(self):
        return self.running

    # -- calibration ----------------------------------------------------------------
    def reset_adc_calib(self):
        self.adc_offset = [0.0, 0.0]; self.adc_factor = [1.0, 1.0]

    def set_adc_calib(self, adc0_offset=np.nan, adc0_factor=np.nan, adc1_offset=np.nan, adc1_factor=np.nan):
        for i, (o, f) in enumerate(((adc0_offset, adc0_factor), (adc1_offset, adc1_factor))):
            if not np.isnan(o): self.adc_offset[i] = o
            if not np.isnan(f): self.adc_factor[i] = f

    def get_adc_calib(self):
        return self.adc_offset[0], self.adc_factor[0], self.adc_offset[1], self.adc_factor[1]

    def do_input_zero_calib(self):
        """Remove any DC offset currently seen at the inputs (call with the inputs disconnected)."""
        self.adc_offset = [-v for v in self._last_adc]

    def reset_dac_calib(self):
        self.dac_offset = [0.0, 0.0]; self.dac_factor = [1.0, 1.0]

    def set_dac_calib(self, dac0_offset=np.nan, dac0_factor=np.nan, dac1_offset=np.nan, dac1_factor=np.nan):
        for i, (o, f) in enumerate(((dac0_offset, dac0_factor), (dac1_offset, dac1_factor))):
            if not np.isnan(o): self.dac_offset[i] = o
            if not np.isnan(f): self.dac_factor[i] = f

    def get_dac_calib(self):
        return self.dac_offset[0], self.dac_factor[0], self.dac_offset[1], self.dac_factor[1]

    def read_adc_values(self):
        return tuple(self._last_adc)

    # -- NLF switching (bit0..8 = slice0 u,x,xdot, slice1 u,x,xdot, slice2 u,x,xdot) ------------
    def set_nlfsw_iomask(self, mask): self._nlfsw_io = int(mask) & 0x1FF
    def get_nlfsw_iomask(self): return self._nlfsw_io
    def set_nlfsw_sel(self, mask): self._nlfsw_sel = int(mask) & 0x1FF
    def get_nlfsw_sel(self): return self._nlfsw_sel
    def set_gpio_nlfsw(self, mask): self._gpio = int(mask) & 0x1FF      # external GPIO level (software stand-in)
    def get_nlfsw_current(self):
        return (self._nlfsw_sel & ~self._nlfsw_io | self._gpio & self._nlfsw_io) & 0x1FF

    def _alt(self):
        c = self.get_nlfsw_current()
        return np.array([[(c >> (3 * j + k)) & 1 for k in range(3)] for j in range(3)], bool)

    # -- DMA acquisition ----------------------------------------------------------------
    def configure_daq(self, num_frames, frame_stride, channel_mask=0, use_hw_trigger=False):
        """frame_stride in 8 ns base frames (125 MHz), like the real DAQ."""
        self._daq = dict(n=int(num_frames), every=max(1, int(round(frame_stride * 8e-9 / TS))),
                         cnt=0, armed=False, dac=[], adc=[])

    def prime_daq(self):
        self._daq.update(armed=True, cnt=0, dac=[], adc=[])

    def is_daq_finished(self):
        return self._daq is not None and len(self._daq["dac"]) >= self._daq["n"]

    def read_daq_data(self):
        return dict(dac=np.array(self._daq["dac"]), adc=np.array(self._daq["adc"]))

    # -- real time ------------------------------------------------------------------------
    def step(self, in0_volts: float, in1_volts: float):
        """One 144 ns simulator step: ADC -> model -> DAC.  Returns the two DAC voltages."""
        if not self.running or self.engine is None:
            return 0.0, 0.0
        v = []
        for i, x in enumerate((in0_volts, in1_volts)):
            raw = max(-8192, min(8191, int(round_half_away(x / ADC_LSB))))
            v.append(raw * ADC_LSB * self.adc_factor[i] + self.adc_offset[i])
        self._last_adc = [in0_volts, in1_volts]
        y0, y1 = self.engine.step(v[0], v[1], self._alt())
        out = []
        for i, y in enumerate((y0, y1)):
            w = (y * self.dac_factor[i] + self.dac_offset[i]) / ADC_LSB
            out.append(max(-8192, min(8191, int(np.floor(w)))) * ADC_LSB)
        d = self._daq
        if d is not None and d["armed"]:
            if d["cnt"] % d["every"] == 0 and len(d["dac"]) < d["n"]:
                d["dac"].append(out); d["adc"].append(v)
            d["cnt"] += 1
        return out[0], out[1]

    def physical_states(self):
        """True internal plant states in physical units: (q[3], qdot[3], qddot[3]) - a debugging
        probe that does not exist on the real board."""
        e = self.engine
        if e is None:
            return np.zeros(3), np.zeros(3), np.zeros(3)
        if self.backend != "fixed":
            return np.array(e.x), np.array(e.xd), np.array(e.xdd)
        ss = self.model.slices
        q = [e.st[j]["x"] / 2**17 / (ss[j].xdotdot_presc * ss[j].xdot_presc * ss[j].x_presc) for j in range(3)]
        qd = [e.st[j]["xd"] / 2**17 / (ss[j].xdotdot_presc * ss[j].xdot_presc) for j in range(3)]
        return np.array(q), np.array(qd), np.zeros(3)

    def _need_conn(self):
        if not self.connected:
            raise RuntimeError("Not connected.")
