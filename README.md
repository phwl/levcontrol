# SciPost LQG Codebase

This repository contains the code and artifacts accompanying the article:

**"FPGA-based LQG controller and hardware-in-the-loop simulator implementation for nanomechanical systems"**.

It provides an end-to-end, open workflow for configuring and running real-time control and simulation on Red Pitaya STEMlab FPGA hardware. In practice, the repository combines:

- an FPGA-based LQG controller stack (Kalman filter + LQR, fixed-point implementation, configuration server, MATLAB tooling, and GUI), and
- a Red Pitaya hardware-in-the-loop simulator for stochastic second-order systems with configurable nonlinear elements.

Together, these components support development and validation workflows where control algorithms can be prepared, scaled, deployed, and tested under realistic real-time constraints.

## Repository Layout

- **LQG-FP7/**
  LQG controller firmware, MATLAB models, packaging scripts, and user interface.
  Start here: [LQG-FP7/README.md](./LQG-FP7/README.md)

- **redpitaya_hil_simulator/**
  HIL simulator firmware/IP, configuration server, MATLAB library, and documentation.
  Start here: [redpitaya_hil_simulator/README.md](./redpitaya_hil_simulator/README.md)

## Documentation Entry Points

- LQG user-interface setup guide:
  [LQG-FP7/user-interface/README.md](./LQG-FP7/user-interface/README.md)
- LQG firmware details:
  [LQG-FP7/firmware/README.md](./LQG-FP7/firmware/README.md)
- HIL simulator overview and setup:
  [redpitaya_hil_simulator/README.md](./redpitaya_hil_simulator/README.md)
- HIL API reference:
  [redpitaya_hil_simulator/docs/api_docs.md](./redpitaya_hil_simulator/docs/api_docs.md)
- HIL user guide:
  [redpitaya_hil_simulator/docs/user_guide.md](./redpitaya_hil_simulator/docs/user_guide.md)

## Notes

- Toolchain versions and hardware notes are documented per module in their respective README files.
- For practical setup steps, always follow the module-specific guides above.
