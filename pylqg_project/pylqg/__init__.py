"""pylqg: Python re-implementation of the FPGA LQG controller and the
HIL simulator from "FPGA-based LQG controller and hardware-in-the-loop
simulator implementation for nanomechanical systems" (Mlynar, Berndorfer,
Kugi, Deutschmann-Olek), so both can be wired together in software."""
__version__ = "0.1.0"
from .loop import ClosedLoop, Wire
from .lqg import LQGDevice, LQGParams, design_lqg
from .hil import HILSimDevice, HILSimModel, Scenario
