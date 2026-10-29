HIL-Simulator Library API Documentation
=======================================

This document serves as the main documentation resource for the HIL Simulator
MATLAB library.

## Class `HILSimClient`
<a name="HILSimClient"></a>

### Public Properties

*None*

### Member Functions

- **`HILSimClient(ip_addr, tcp_port) -> obj`**: <br/>
  Constructs a new HIL simulator client object.
  - Returns: `obj` (1,1) [`HILSimClient`](#HILSimClient)

- **`get_ip_addr() -> ip_addr`**: <br/>
  Getter for the set up IP address at which the RedPitaya is expected to be
  found.
  - Returns: `ip_addr` (1,1) `string`: The IP address.

- **`get_tcp_port() -> tcp_port`**: <br/>
  Getter for the set up TCP port at which the TCP server is expected to be
  listening.
  - Returns: `tcp_port` (1,1) `string`: The TCP port.

- **`connect()`**: <br/>
  Connects to the TCP server running on the RedPitaya device using the given
  IP-Address and port. If this connection fails, this function will throw an
  error.

- **`disconnect()`**: <br/>
  Disconnects the client if it is currently connected to a TCP server.

- **`send_ping()`**: <br/>
  If connected, sends a ping message to the TCP server to check if it is
  reachable and alive. On failure, it will throw an error.

- **`set_model(model)`**: <br/>
  Sets the HIL simulator model that should be used to configure the HIL simulator
  with.
  - `model` (1,1) [`HILSimModel`](#HILSimModel)

- **`send_config_update()`**: <br/>
  Sends the set model's configuration to the connected TCP server instance and
  configures the simulator IP core.
  
- **`is_simulation_running() -> val`**: <br/>
  Getter for the simulation running flag. Will return `true` if a simulation
  is currently running on the connected device.
  - Returns: `val` (1,1) `bool`: The flag value.

- **`start_simulation()`**: <br/>
  Start the simulation with the currently loaded configuration.

- **`stop_simulation()`**: <br/>
  Stop any currently running simulation.

- **`reset_simulation()`**: <br/>
  Resets all simulator-related memory in the simulator - i.e. the integrator
  memories. Thus, all integrators are reset to a known state. This reset is very
  useful for restoring the simulator if it has been reconfiured or entered an
  unstable state. Usually, it is also good practice to reset the simulation every
  time before starting it, just to be sure to start off from a well-defined
  state.

- **`reset_adc_calib()`**: <br/>
  Reset the ADC calibration constants to their default values (`0` offset, `1` gain).

- **`set_adc_calib(adc0_offset, adc0_factor, adc1_offset, adc1_factor)`**: <br/>
  Sets the ADC calibration constants. The offset values are used to correct
  for DC biases on the inputs, the factors are linear multiplicative constants
  used to correct for accurately represting input voltage amplitudes.
  The calibration values can usually be obtained using the included calibration
  script `matlab/hilsim_calibration.m`.
  *Note:* If any of the calibration values shall be left untouched, pass `NaN`
  (Not-A-Number) to the respective vaulue. This will "mask" off this value and
  keep the currently configured constant.
  - `adc0_offset` (1,1) `double`: Offset calibration value for ADC channel 0.
  - `adc0_factor` (1,1) `double`: Amplitude calibration value for ADC channel 0.
  - `adc1_offset` (1,1) `double`: Offset calibration value for ADC channel 1.
  - `adc1_factor` (1,1) `double`: Amplitude calibration value for ADC channel 1.

- **`get_adc_calib() -> adc0_offset, adc0_factor, adc1_offset, adc1_factor`**: <br/>
  Grab the currently configured ADC calibration values from the connected device.
  - Returns: `adc0_offset` (1,1) `double`: Offset calibration value for ADC channel 0.
  - Returns: `adc0_factor` (1,1) `double`: Amplitude calibration value for ADC channel 0.
  - Returns: `adc1_offset` (1,1) `double`: Offset calibration value for ADC channel 1.
  - Returns: `adc1_factor` (1,1) `double`: Amplitude calibration value for ADC channel 1.

- **`do_input_zero_calib()`**: <br/>
  This function can be used to zero-calibrate the ADC inputs. For this, connect
  your "0V" reference potential (or open) to both ADC inputs and execute this
  routine. It will automatically average over a few readings and set up the
  offset calibration constants that were obtained. This function will not
  overwrite the scaling / amplitude calibration of the ADC inputs.

- **`read_adc_values() -> adc0_value, adc1_value`**: <br/>
  Reads back a sample of current ADC input channel values. This set of samples
  is obtained after applying the calibration correction to the input signals.
  - Returns: `adc0_value` (1,1) `double`: Sample of the ADC channel 0 input value.
  - Returns: `adc1_value` (1,1) `double`: Sample of the ADC channel 1 input value.

- **`reset_dac_calib()`**: <br/>
  Reset the current DAC calibration values to the default (`0` offset, `1` gain).

- **`set_dac_calib(dac0_offset, dac0_factor, dac1_offset, dac1_factor)`**: <br/>
  Set the DAC calibration constants to the given values. The offsets are used to
  eliminate DC biases introduced by the DAC outputs and analog frontends, the
  factors for correcting amplitude scaling.
  *Note:* If any of the calibration values shall be left untouched, pass `NaN`
  (Not-A-Number) to the respective vaulue. This will "mask" off this value and
  keep the currently configured constant.
  - `dac0_offset` (1,1) `double`: Offset calibration value for DAC channel 0.
  - `dac0_factor` (1,1) `double`: Amplitude calibration value for DAC channel 0.
  - `dac1_offset` (1,1) `double`: Offset calibration value for DAC channel 1.
  - `dac1_factor` (1,1) `double`: Amplitude calibration value for DAC channel 1.

- **`get_dac_calib() -> dac0_offset, dac0_factor, dac1_offset, dac1_factor`**: <br/>
  Grab the currently configured ADC calibration values from the connected device.
  - Returns: `dac0_offset` (1,1) `double`: Offset calibration value for DAC channel 0.
  - Returns: `dac0_factor` (1,1) `double`: Amplitude calibration value for DAC channel 0.
  - Returns: `dac1_offset` (1,1) `double`: Offset calibration value for DAC channel 1.
  - Returns: `dac1_factor` (1,1) `double`: Amplitude calibration value for DAC channel 1.

- **`set_nlfsw_iomask(iomask)`**: <br/>
  Sets the source selection mask for the nonlinear-function switch control bits.
  Each bit determines whether the corresponding switch state is taken from the
  software selection register or from an external GPIO input.
  - `iomask` (1,1) `uint32`: Bit mask with the following meaning per bit:
    - `0`: use the software selection bit configured via `set_nlfsw_sel`
    - `1`: use the external GPIO input as selection source
  Bit mapping:
  - bits `0`, `1`, `2`: slice 0 / `u`, `x`, `xdot`
  - bits `3`, `4`, `5`: slice 1 / `u`, `x`, `xdot`
  - bits `6`, `7`, `8`: slice 2 / `u`, `x`, `xdot`

- **`get_nlfsw_iomask() -> iomask`**: <br/>
  Reads back the current nonlinear-function switch source selection mask.
  - Returns: `iomask` (1,1) `uint32`: Current I/O source mask. A bit value of
    `0` means software-controlled selection, `1` means external-GPIO-controlled
    selection.

- **`set_nlfsw_sel(sel_mask)`**: <br/>
  Sets the software-controlled nonlinear-function switch selections. These bits
  are only applied for positions whose corresponding `iomask` bit is `0`.
  - `sel_mask` (1,1) `uint32`: Bit mask with the following meaning per bit:
    - `0`: use the normal NLF
    - `1`: use the alternate NLF
  Bit mapping:
  - bits `0`, `1`, `2`: slice 0 / `u`, `x`, `xdot`
  - bits `3`, `4`, `5`: slice 1 / `u`, `x`, `xdot`
  - bits `6`, `7`, `8`: slice 2 / `u`, `x`, `xdot`

- **`get_nlfsw_sel() -> sel_mask`**: <br/>
  Reads back the current software selection mask for the nonlinear-function
  switches.
  - Returns: `sel_mask` (1,1) `uint32`: Current software selection mask. A bit
    value of `0` selects the normal NLF, `1` selects the alternate NLF.

- **`get_nlfsw_current() -> current_sel`**: <br/>
  Reads back the effective, currently active nonlinear-function switch states as
  seen by the hardware after combining software selection and external GPIO
  control.
  - Returns: `current_sel` (1,1) `uint32`: Effective switch-state bit mask. A
    bit value of `0` selects the normal NLF, `1` selects the alternate NLF.
  Bit mapping:
  - bits `0`, `1`, `2`: slice 0 / `u`, `x`, `xdot`
  - bits `3`, `4`, `5`: slice 1 / `u`, `x`, `xdot`
  - bits `6`, `7`, `8`: slice 2 / `u`, `x`, `xdot`

- **`configure_daq(num_frames, frame_stride, channel_mask, use_hw_trigger)`**: <br/>
  Configures the DMA-based data acquisition unit. This prepares a finite DMA
  transfer into RAM but does not start it yet.
  - `num_frames` (1,1) `uint32`: Number of acquisition frames to record.
  - `frame_stride` (1,1) `uint32`: Acquisition stride in base sample frames.
    This acts as a decimation factor. For example, a value of `1` records every
    frame, while a value of `N` records every `N`-th frame.
  - `channel_mask` (1,1) `uint8`: Bit mask selecting which DMA data words are
    stored per frame.
  - `use_hw_trigger` (1,1) `logical`: Selects the trigger source. `false`
    starts the acquisition via software after `prime_daq()`, `true` arms the
    DMA and waits for the hardware trigger.
  Notes:
  - The DAQ base frame clock is `125 MHz`.
  - At least one channel bit must be enabled.
  - `frame_stride` must be greater than or equal to the number of enabled
    channel bits.

- **`prime_daq()`**: <br/>
  Arms or starts a previously configured DMA acquisition.
  - If software trigger mode was selected, this immediately triggers the DMA
    transfer.
  - If hardware trigger mode was selected, this arms the DAQ and waits for the
    external hardware trigger event.

- **`is_daq_finished() -> finished`**: <br/>
  Checks whether the currently configured DMA acquisition has completed.
  - Returns: `finished` (1,1) `logical`: `true` if the acquisition is complete,
    otherwise `false`.

- **`wait_finished(timeout_sec) -> success`**: <br/>
  Convenience helper that polls `is_daq_finished()` until the acquisition is
  complete or the given timeout expires.
  - `timeout_sec` (1,1) `double`: Maximum waiting time in seconds.
  - Returns: `success` (1,1) `logical`: `true` if the acquisition completed
    before the timeout, otherwise `false`.

- **`read_daq_data(offset, length) -> data`**: <br/>
  Reads back raw DMA capture data from the server-side acquisition buffer.
  - `offset` (1,1) `uint32`: Byte offset into the acquisition buffer.
  - `length` (1,1) `uint32`: Number of bytes to read.
  - Returns: `data` (n,1) `uint32`: Raw 32-bit DMA words.
  DMA word layout:
  - First word: low 16 bits = `dac0`, high 16 bits = `dac1`
  - Second word: low 16 bits = `adc0`, high 16 bits = `adc1`
  In other words, one full captured sample consists of two 32-bit words when
  both packed words are recorded.

## Class `HILSimInputMatrix`
<a name="HILSimInputMatrix"></a>

### Public Properties

*None*

### Member Functions

- **`HILSimInputMatrix() -> obj`**: <br/>
  Constructs a new input matrix configuration object.
  - Returns: `obj` (1,1) [`HILSimInputMatrix`](#HILSimInputMatrix)

- **`set_matrix(mat)`**: <br/>
  Setter function for the matrix representation of the input matrix. The matrix can
  be represented as a compact notation of the following operation. $u_i$ are the
  input signals to the processing slices, $a_i$ the input signals after passing
  through the optional input nonlinear functions and $M$ the matrix that is
  set using the `set_matrix` function.
  (TODO)
  $$\begin{bmatrix} u_1 \\ u_2 \\ u_3 \end{bmatrix} = \begin{bmatrix} \alpha_{1,1} & \alpha_{1,2} & \alpha_{1,\eta} & 0 & 0 \\ \alpha_{2,1} & \alpha_{2,2} & 0 & \alpha_{2,\eta} & 0 \\ \alpha_{3,1} & \alpha_{3,2} & 0 & 0 & \alpha_{3,\eta} \end{bmatrix} \begin{bmatrix} a_1 \\ a_2 \\ \eta_1 \\ \eta_2 \\ \eta_3 \end{bmatrix} \quad \Rightarrow \quad M = \begin{bmatrix} \alpha_{1,1} & \alpha_{1,2} & \alpha_{1,\eta} \\ \alpha_{2,1} & \alpha_{2,2} & \alpha_{2,\eta} \\ \alpha_{3,1} & \alpha_{3,2} & \alpha_{3,\eta} \end{bmatrix}$$
  This compact notation is chosen because any slice input $u_i$ may only be
  fed by one of the noise sources at any time.
  - `mat` (3,3) `double`: Compact representation of the linear input matrix.

- **`get_matrix() -> mat`**: <br/>
  Getter function for the compact matrix representation of the Input Matrix
  object. See notes of `set_matrix` for more information about this compact
  representation.
  - Returns: `mat` (3,3) `double`: The compact representation matrix.

## Class `HILSimModel`
<a name="HILSimModel"></a>

### Public Properties

- **`input_nlfs`** (2,1) [`HILSimNLFunction`](#HILSimNLFunction): <br/>
  Vector containing configuration objects for the input nonlinear functions.

- **`noise_sources`** (3,1) [`HILSimNoiseSource`](#HILSimNoiseSource): <br/>
  Vector containing configuration objects for the three gaussian white noise
  sources of the simulator system.

- **`input_matrix`** (1,1) [`HILSimInputMatrix`](#HILSimInputMatrix): <br/>
  Configuration object for the input matrix of the simulator. The input matrix
  takes the two ADC inputs and creates the slice input signals.

- **`output_slices`** (1,2) [`HILSimOutputSlice`](#HILSimOutputSlice): <br/>
  Vector of configuration objects for the output slices of the simulator. The
  output slices take in the state variables of the processing slices and
  produce the DAC output signals.

- **`slices`** (3,1) [`HILSimSlice`](#HILSimSlice): <br/>
  Configuration objects for the processing slices of the simulator. Each slice
  can be configured to act as an up-to second order system in state space
  representation with nonlinear feedback functions.

### Member Functions

- **`HILSimModel() -> obj`**: <br/>
  Constructs a new Model object.
  - Returns: `obj` (1,1) [`HILSimModel`](#HILSimModel)

- **`compile(scenarios, [enable_noise])`**: <br/>
  Compiles the current configuration of the model object instance with respect
  to the given simulation `scenarios`. Optionally, noise sources can be
  *enabled* with the `enable_noise` parameter. By default, `enable_noise = false`.
  Usually, noise sources should not be enabled during the compilation process to
  produce deterministic results.
  - `scenarios` (n,1) [`HILSimScenario`](#HILSimScenario): Scenarios to optimize
    / construct the simulator for. This set should be a *sensible representation*
    of the scenarios the simulator will face when used.
  - `enable_noise` (1,1) `bool`: (Optional) Enable / disable noise sources.

- **`sim_tc(scenario, [enable_noise]) -> out_signals`**: <br/>
  Does a *time-continuous double precision* simulation of the current model with
  respect to the given simulation `scenario`. The model has to be compiled using
  the `compile` function before simulation.
  Optionally, noise sources can be *disabled* with the `enable_noise` parameter.
  By default, `enable_noise = true`.
  - `scenario` (1,1) [`HILSimScenario`](#HILSimScenario): The scenario to simulate
  - `enable_noise` (1,1) `bool`: (Optional) Enable / disable noise sources.
  - Returns: `out_signals` (2,1) `timeseries`: The DAC output timeseries.

- **`sim_td(scenario, [enable_noise]) -> out_signals`**: <br/>
  Does a *time-discrete double precision* simulation of the current model with
  respect to the given simulation `scenario`. The model has to be compiled using
  the `compile` function before simulation.
  Optionally, noise sources can be *disabled* with the `enable_noise` parameter.
  - `scenario` (1,1) [`HILSimScenario`](#HILSimScenario): The scenario to simulate
  - `enable_noise` (1,1) `bool`: (Optional) Enable / disable noise sources.
  - Returns: `out_signals` (2,1) `timeseries`: The DAC output timeseries.

- **`sim_tdfp(scenario, [enable_noise]) -> out_signals`**: <br/>
  Does a *time-discrete fixed point* simulation of the current model with
  respect to the given simulation `scenario`. The model has to be compiled using
  the `compile` function before simulation.
  Optionally, noise sources can be *disabled* with the `enable_noise` parameter.
  - `scenario` (1,1) [`HILSimScenario`](#HILSimScenario): The scenario to simulate
  - `enable_noise` (1,1) `bool`: (Optional) Enable / disable noise sources.
  - Returns: `out_signals` (2,1) `timeseries`: The DAC output timeseries.

- **`sim_hwimpl(scenario) -> out_signals`**: <br/>
  Does a *hardware-accurate* simulation of the current model with
  respect to the given simulation `scenario`. The model has to be compiled using
  the `compile` function before simulation.
  Noise sources are *always enabled* with this simulation option.
  - `scenario` (1,1) [`HILSimScenario`](#HILSimScenario): The scenario to simulate
  - Returns: `out_signals` (2,1) `timeseries`: The DAC output timeseries.

- **`get_tdfp_model() -> tdfp_model`**: <br/>
  After compilation is done, this function can be used to export the current
  time-discrete fixed point model / configuration of the simulator.
  - Returns: `tdfp_model` (1,1) `struct`: The exported TD-FP model as a struct
    containing the configuration values.

- **`export_hwconfig() -> export`**: <br/>
  After compilation is done, this function can be used to export the actual
  configuration that will/can be used to configure the simulator IP core with
  via the TCP server.
  - Returns: `export` (1,1) `struct`: The exported hardware configuration struct.

## Class `HILSimNLFunction`
<a name="HILSimNLFunction"></a>

### Public Properties

*None*

### Member Functions

- **`HILSimNLFunction() -> obj`**: <br/>
  Constructs a new nonlinear function configuration object. By default, all
  nonlinear functions will be set as *bypassed*, thus they model $f(x) = x$.
  - Returns: `obj` (1,1) [`HILSimNLFunction`](#HILSimNLFunction)

- **`set_func(func)`**: <br/>
  Sets the (nonlinear) function that this configuration object shall represent.
  The function itself is passed via a MATLAB anonymous function (similar to a
  lambda functional). Setting a function will also set the nonlinear function
  object as *not-bypassed*.
  - `func` (1,1) `function_handle`: Anonymous function describing what this
    nonlinear function object shall do.

- **`get_func() -> func`**: <br/>
  Getter for the set nonlinear function. This will return $f(x) = x$ if bypass
  is enabled.
  - Returns: `func` (1,1) `function_handle`: The set function.

- **`set_bypass()`**: <br/>
  Sets this configuration object as *bypassed*, i.e. modelling $f(x) = x$. Note
  that setting this will bypass the nonlinear function in hardware, thus if the
  function $f(x) = x$ is desired, always prefer setting it to bypassed over
  setting the function to `@(x) x`.

- **`get_bypass() -> val`**: <br/>
  Getter for the bypass status of this configuration object.
  - Returns: `val` (1,1) `bool`: Returns `true` if the bypass is enabled.

*Other member functions are for internal use within the library only.*

## Class `HILSimNoiseSource`
<a name="HILSimNoiseSource"></a>

### Public Properties

- **`noise_pwr`** (1,1) `double`: <br/>
  Currently set power of the noise source.

### Member Functions

- **`HILSimNoiseSource() -> obj`**: <br/>
  Constructs a new noise source configuration object. By default, `noise_pwr`
  will be set to `1.0`.
  - Returns: `obj` (1,1) [`HILSimNoiseSource`](#HILSimNoiseSource)

- **`set_noise_power(pwr)`**: <br/>
  Setter for the `noise_pwr` property.
  - `pwr` (1,1) `doulbe`: The new value for `pwr`.

*Other member functions are for internal use within the library only.*

## Class `HILSimOutputSlice`
<a name="HILSimOutputSlice"></a>

### Public Properties

- **`linear_factors`** (1,3) `double`: <br/>
  The linear factors, $d_{i,1}, d_{i,2}, d_{i,3}$, for the $i$-th output slice.

- **`output_nlfs`** (1,3) [`HILSimNLFunction`](#HILSimNLFunction): <br/>
  The output nonlinear functions, $\beta_{i,1}, \beta_{i,2}, \beta_{i,3}$, for
  the $i$-th output slice.

- **`x_xdot_selectors`** (1,3) `string`: <br/>
  Selects between $x$ and $\dot{x}$ for the respective arguments of the set up
  nonlinear functions $\beta_{i,j}$.

### Member Functions

- **`HILSimOutputSlice() -> obj`**: <br/>
  Constructs a new output slice configuration object instance.
  - Returns: `obj` (1,1) [`HILSimOutputSlice`](#HILSimOutputSlice)

*Other member functions are for internal use within the library only.*

## Class `HILSimScenario`
<a name="HILSimScenario"></a>

### Public Properties

- **`in_signals`** (2,2,n) `double`: <br/>
  Input signal definition for the two ADC channels. The array uses the
  following layout:
  - `in_signals(1,1,:)`: sample values of ADC input 0
  - `in_signals(1,2,:)`: time stamps corresponding to ADC input 0
  - `in_signals(2,1,:)`: sample values of ADC input 1
  - `in_signals(2,2,:)`: time stamps corresponding to ADC input 1
  Thus, for each input channel, the first column contains the signal values and
  the second column contains the associated time axis.

- **`sim_time`** (1,1) `double`: <br/>
  Total simulation duration represented by the scenario.

- **`nlf_alternate_switch`** (1,1) `struct`: <br/>
  Per-slice switch settings for selecting normal vs. alternate nonlinear
  functions during simulation. The struct contains the fields `slice0`,
  `slice1`, and `slice2`, each with subfields `u_nlf`, `x_nlf`, and
  `xdot_nlf`. A value of `0` selects the normal NLF, a value of `1` selects
  the alternate NLF.

### Member Functions

- **`HILSimScenario(in_signals, sim_time) -> obj`**: <br/>
  Constructs a simulation scenario object.
  - `in_signals` (2,2,n) `double`: Input signals for the two ADC channels.
    The array is organized as follows:
    - `in_signals(1,1,:)`: ADC input 0 sample values
    - `in_signals(1,2,:)`: ADC input 0 time values
    - `in_signals(2,1,:)`: ADC input 1 sample values
    - `in_signals(2,2,:)`: ADC input 1 time values
  - `sim_time` (1,1) `double`: Total simulation duration in seconds.
  - Returns: `obj` (1,1) [`HILSimScenario`](#HILSimScenario)

  By default, all entries in `nlf_alternate_switch` are initialized to `0`, so
  all slice paths use their normal nonlinear functions unless changed
  explicitly.

## Class `HILSimSlice`
<a name="HILSimSlice"></a>

# Other Library Components and Simulink Models

The HIL simulator library features a set of Simulink models that implement the
simulator's structure in different mathematical and time domains.

- `MHILSimHWImpl.slx`: This is the main Vitis-Model-Composer Simulink Model that
  acts as the reference implementation for the simulator and is also used to
  generate the FPGA IP core running in the RedPitaya. This model can / should
  only be opened using Vitis Model Composer.

- `MHILSimRef.slx`: This module implements a time-discrete double precision
  floating point model of the simulator and is used internally to do the scaling
  and reference calculations for the model.

- `MHILSimTCDouble.slx`: This is the simulation model in the time-continuous
  domain using double precision floating point signals.

- `MHILSimTDDouble.slx`: This is the simulation model in the time-discrete
  domain using double precision floating point signals.

- `MHILSimTDFixpoint.slx`: This is the simulation model in the time-discrete
  domain using fixed point signals.

Additional Files:

- `hw_edit_init.m`: Initialization script to be executed before editing the
  hardware model (`MHILSimHWImpl.slx`).