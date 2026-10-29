HIL-Simulator User Guide
========================

This document servers as an informal guide on how to use the RedPitaya-based
HIL simulator device.

# General Overview

The simulation system consists of the following software and hardware components:

- The RedPitaya itself, on which an embedded Linux (Ubuntu derivative) runs and
  that hosts the FPGA image. For the simulator, a ZYNQ 7020 is required, due to 
  the higher demand of DSP slices.
- The TCP server running on the application cores of the RedPitaya. This software
  takes control over the FPGA image via registers and can be interfaced with
  using JSON messages over a TCP socket.
- The model configuration helper, written in MATLAB, that is used to convert a
  user model into the configuration data required by the TCP server. It also
  directly connects to the TCP socket to exchange data and control it via a
  MATLAB API.

# How To - From Model to Simulation

All the main work of configuring a new model for the simulator will be done in
MATLAB using the HIL simulator API. The API files are found in the `matlab/hilsim_lib`
folder. Additionally, some examples are provided in the `matlab` directory
that can be used as a reference for your own implementation.

## General Structure of the Simulator

The possible models that can be implemented in this simulator are limited by a
predefined general structure in which these models must be formulated. Generally,
the simulator takes in the two ADC inputs, routes them to three state processing
slices, each of them is a configurable second order system, and then takes the
state outputs of those slices and routes them to the two DAC outputs. All
feedback paths are limited to within each of the state slices. The signal path
thus looks like the following:

- **ADC Inputs** (2x) <br/>
  The inputs are digitized and input calibration is applied, resulting in the
  input signals $u_1(t)$ and $u_2(t)$.

- **Input Nonlinear Functions** (MATLAB: `model.input_nlfs`) <br/>
  They map the input signals $u_i(t)$ to $u'_i(t)$:
  $$u'_i(t) = \alpha_i(u_i(t))$$
  with $a_i$ being arbitrary nonlinear functions.

- **Gaussian White Noise Sources** (3x) (MATLAB: `model.noise_sources`) <br/>
  Generate the noise output signals $\xi_j(t)$ with a specified noise power.

- **Input Matrix**, that supplies a linear combination of the outputs of the input
  nonlinear functions $u'_i(t) = \alpha_i(u_i(t))$ and the noise sources $\xi_j(t)$ for each state slice input.
  (MATLAB: `model.input_matrix`) <br/>
  The slice inputs are denoted as $z_j(t)$
  $$\begin{bmatrix} z_1(t) \\ z_2(t) \\ z_3(t) \end{bmatrix} = \begin{bmatrix} a_{1,1} & a_{1,2} \\ a_{2,1} & a_{2,2} \\ a_{3,1} & a_{3,2} \end{bmatrix} \begin{bmatrix} u'_1(t) \\ u'_2(t) \end{bmatrix} + \begin{bmatrix} b_1 & b_2 & b_3 \end{bmatrix} \begin{bmatrix} \xi_1(t) \\ \xi_2(t) \\ \xi_3(t) \end{bmatrix}$$

- **State Processing Slices**, each of them is configurable as an up to second order
  system with nonlinear feedback functions for $x$ and $\dot{x}$ (MATLAB:
  `model.slices`) <br/>
  They take the input matrix outputs $z_j(t)$ as inputs. Each slice models a
  system of the type
  $$\ddot{x}_j(t) = f_j(\dot{x}_j(t)) + g_j(x_j(t)) + c_j z_j(t)$$
  and provides the solutions
  $$x_j(t), \quad \dot{x}_j(t)$$
  as outputs. The functions $f_j$ and $g_j$ are arbitrary nonlinear functions.

- **Output Slices** (2x) for each DAC output that take in either $x$ or $\dot{x}$
  from each processing slices (MATLAB: `model.output_slices(i).x_xdot_selectors`),
  applies an optional nonlinear function to each (MATLAB: `model.output_slices(i).output_nlfs`)
  and then creates a linear combination of the nonlinear function outputs
  (MATLAB: `model.output_slices(i).linear_factors`) <br/>
  The configurable linear factors $d_{k,j}$ and nonlinear functions $\beta_{k,j}$
  are used in the following relation:
  $$\begin{bmatrix} y_1(t) \\ y_2(t) \end{bmatrix} = \begin{bmatrix} d_{1,1} & d_{1,2} & d_{1,3} \\ d_{2,1} & d_{2,2} & d_{2,3} \end{bmatrix} \begin{bmatrix} \beta_{1,1}(x_1(t) | \dot{x}_1(t)) & \beta_{1,2}(x_1(t) | \dot{x}_1(t)) \\ \beta_{2,1}(x_2(t) | \dot{x}_2(t)) & \beta_{2,2}(x_2(t) | \dot{x}_2(t)) \\ \beta_{3,1}(x_3(t) | \dot{x}_3(t)) & \beta_{3,2}(x_3(t) | \dot{x}_3(t)) \end{bmatrix}$$
  The functions $\beta_{k,j}$ can again be arbitrarily configured as nonlinear
  functions if desired.

- **DAC Outputs** (2x) <br/>
  The outputs $y_k(t)$ are routed to the DAC outputs, after applying the set up
  DAC calibration.

As already hinted to by the MATLAB-comments, each of these sections are accessed
with their respective MATLAB objects. More details about this are provided in the
API section.

## Input and Output Calibration

The in- and outputs of the RedPitaya usually have to be calibrated in order to
eliminate their respective offset voltage and evaluate their gain coefficient.

Whilst calibration can be done manually or within a user-supplied/written script,
a simple two-point calibration routine is already implemented in the
`hilsim/matlab_calibration.m` file. It prompts the user to connect specified
DC voltages to the input terminals and measure voltages at the outputs. The
calculated calibration constants are then saved into a `calib.mat` file for
further usage with the HIL simulator client. (See section "Loading the
Configuration onto the RedPitaya")

## Defining Your Model

The first step to using the HIL simulator is to lay out your system model as
state space equations in the continuous time domain. This step can be done in
any way you see fit for your application. However, the exact form how the model
equations are written does matter, as it has to conform to the simulator's
internal structure.

This similarity between the simulator's architectural structure and the way
the configuration is done in the continuous time domain is done on purpose to
reduce the decomposition and optimization steps required by the API code as well
as provide the user a finer control over the actual layout of the model later
on in hardware/configuration.

In the example file `matlab/hilsim_particle_example.m` the model's parameters
are defined at the top of the model definition:

```matlab
%% Particle Model Parameters & Potential Function
p.T0 = 293;                         % Heat bath temperature
p.m = 9.77e-18;                     % Particle mass [kg]
p.k_ap = 9.686367199937547e-06;     % Initial potential stiffness [N/m]
p.k_ip = -9.07067175478047e-07;     % Inverted potential stiffness [N/m]
p.C_el = 4697940.12339623;          % Electrical transduction coefficient [V/m]
p.C_f  = 6.17940000000000e-12;      % Feedback coefficient divided by mass [N/V] 
p.Q = 200;                          % Quality factor
p.Omega = sqrt(p.k_ap/p.m);         % Harmonic potential nat. frequency
p.Omega_ip = sqrt(abs(p.k_ip/p.m)); % Inverted potential nat. frequency
p.Gamma = p.Omega/(p.Q);            % Damping

%p.k_ip = -9.07067175478047e-07;
p.sigma = 0.5*1e-7; % Scale
p.alpha = 0.1 * p.sigma^2 * abs(p.k_ip/(p.sigma^4)) / p.m;
p.beta = p.sigma^2 * abs(p.k_ip / (p.sigma^2)) / p.m;
p.a = 0.1 * abs(p.k_ip / (p.sigma^4));
p.b = abs(p.k_ip / (p.sigma^2));

p.noise_power = 1e-4;

pot_poly = (p.sigma^2)*[ p.a/4, 0, -p.b/2, 0, 0 ];
force_func = @(x) p.alpha * x.^3 - p.beta * x;
rts = roots(pot_poly);
x_pot = linspace(1.2*min(rts), 1.2*max(rts),100);
```

Using these definitions, we can now configure the system model using the
`HILSimModel` object interface:

```matlab
%% HIL Simulation Model Setup
model = HILSimModel();

model.noise_sources(1).set_noise_power(p.noise_power);
model.noise_sources(2).set_noise_power(p.noise_power);
model.noise_sources(3).set_noise_power(p.noise_power);
model.input_matrix.set_matrix([0, 0, 0; ...
                               0, 0, 0; ...
                               1, 0, 1]);
model.output_slices(1).linear_factors = [0, 0, p.C_el / 5];
model.output_slices(2).linear_factors = [0, 0, 0];
model.slices(3).u_nlf.set_bypass();
model.slices(3).u_factor = (p.C_f / p.m);
model.slices(3).x_nlf.set_func(force_func);
model.slices(3).x_factor = -1;
model.slices(3).xdot_nlf.set_bypass();
model.slices(3).xdot_factor = -p.Gamma;
```

In this example, we configure all noise sources to have the same power and use
the third slice for implementing one axis of the particle model. The API interface
is outlined in detail in the API section.

All renormalization and scaling is done by the tool automatically, so these
definitions shall be done using the direct parameters of the disired model.

The nonlinear functions can be configured using
[anonymous functions](https://de.mathworks.com/help/matlab/matlab_prog/anonymous-functions.html)
passed to the `set_function` member function of `HILSimNLFunction` object
instances.

## NLF Switching in Simulation and Hardware

Besides the normal nonlinear function for a path, the simulator can also use an
alternate NLF. This is useful when a model needs to switch between two related
nonlinear behaviors without recompiling the entire design.

In practice, there are two places where NLF switching matters:

- during MATLAB-side scenario definition and compilation
- during runtime on the RedPitaya hardware

### Defining Alternate NLFs in the Model

An alternate nonlinear function can be attached to a path in addition to the
normal one. The particle example does this for the `x` path of slices 0 and 2:

```matlab
model.slices(1).x_nlf.set_func(p.force_func);
model.slices(1).x_nlf.set_func_alternate(p.force_func_alt);

model.slices(3).x_nlf.set_func(p.force_func);
model.slices(3).x_nlf.set_func_alternate(p.force_func_alt);
```

Once both variants are defined, the active one can be selected either in a
simulation scenario or later at runtime in hardware.

## Simulation Scenarios

Now that the model in it's general form is supplied to the HIL simulatior
library, the next step is to define the simulation scenarios. These serve the
following twofold purposes:

- First, as the model is generally nonlinear, there is no easy / generalized way
  of calculating internal signal and value scales using just some input scales.
  Thus, the renormalization would be impossible to calculate and the user would
  need to supply the model already normalized, which is a lot less user friendly.

- Second, the defined scenarios are used to optimize the simulator model for the
  exact purpose / scenario they will be used in after implementation. This is
  beneficial, as this will maximize the possible resolution of the model and
  make sure that the model will be stable when run on the simulator.

Each scenario is composed of two input signals that represent the signals that
be applied to the ADC inputs and a total simulation duration. The user may define
any number of scenarios, however at least one is required. For each scenario, the
library will run a simulation using different backend simulator models and calculate
the scaling and thus renormalization of the internal signals and values.

If the final application uses alternate NLF selections, then the scenarios used
for `model.compile(...)` should also reflect those operating conditions. In
other words, if the hardware will later switch to alternate NLFs, it is good
practice to include representative scenarios with those switches active during
compilation as well.

```matlab
%% Prepare Simulation Scenario(s)
t_s = 1e-7;                     % Simulate with a sample duration of 10 µs
num_samples = 1000*3;           % Number of samples in the signals
sim_time = t_s * num_samples;

% First scenario: Pulse on input 1.
in_signals = zeros(2,2,num_samples);
in_signals(1,2,:) = linspace(0, t_s*(num_samples-1), num_samples);
in_signals(2,2,:) = linspace(0, t_s*(num_samples-1), num_samples);
for i=1:num_samples
    if i > 100 && i < 200
        in_signals(1,1,i) = 0.3;
    end
end
scenario_0 = HILSimScenario(in_signals, sim_time);

% First scenario: Positive / negative pulse on input 1.
in_signals = zeros(2,2,num_samples);
in_signals(1,2,:) = linspace(0, t_s*(num_samples-1), num_samples);
in_signals(2,2,:) = linspace(0, t_s*(num_samples-1), num_samples);
for i=1:num_samples
    if i > 100 && i < 352
        in_signals(1,1,i) = .1;
    elseif i >= 352 && i <= 778
        in_signals(1,1,i) = -.1;
    end
end
scenario_1 = HILSimScenario(in_signals, sim_time);

% Variant of scenario_1 with alternate x-NLFs enabled for all three slices.
scenario_1_alt = copy(scenario_1);
scenario_1_alt.nlf_alternate_switch.slice0.x_nlf = 1;
scenario_1_alt.nlf_alternate_switch.slice1.x_nlf = 1;
scenario_1_alt.nlf_alternate_switch.slice2.x_nlf = 1;

% Compile the scenarios into a vector.
scenarios = [scenario_0; scenario_1; scenario_1_alt];
```

Here, `scenario_1_alt` uses the same input signals as `scenario_1`, but with
the alternate `x`-path nonlinear functions enabled. This allows the compiler to
consider both operating modes when determining internal scaling.

The defined scenarios can now be supplied to the HIL simulator library using the
`model.compile` function.

```matlab
%% Compile Model
model.compile(scenarios);
```

After this step, additional simulations using the 
actual compiled configuration can be done. If the simulation duration allows for
it, the actual hardware IP core implementation can be used to accurately simulate
what the simulator will output after loading the configuration.

For example, if we want to plot the outputs of the simulator for the first
scenario above and compare the time-discrete floating point and time-discrete
fixed point implementation, we can do this after comilation:

```matlab
sig_out_td = model.sim_td(scenario_1, false);
sig_out_tdfp = model.sim_tdfp(scenario_1, false);

axis tight;
hold on;
plot(sig_out_td(1).Time, sig_out_td(1).Data);
plot(sig_out_tdfp(1).Time, sig_out_tdfp(1).Data);
```

The same mechanism can also be used during MATLAB-side simulation to compare the
effect of different NLF selections before anything is loaded onto the hardware.

### Runtime NLF Switching on Hardware

After the configuration has been loaded onto the RedPitaya, the active NLF can
also be switched at runtime through the `HILSimClient` NLF switch interface.

Two independent masks are involved:

- **Software selection mask**: selects normal vs. alternate NLF
- **I/O mask**: selects whether the effective switch state comes from software
  or from an external GPIO input

#### Software Selection Mask

The software selection is set with `client.set_nlfsw_sel(sel_mask)`.

Bit meaning:

- `0`: use the normal NLF
- `1`: use the alternate NLF

#### I/O Mask

The I/O source mask is set with `client.set_nlfsw_iomask(iomask)`.

Bit meaning:

- `0`: use the software selection bit from `set_nlfsw_sel(...)`
- `1`: use the external GPIO signal as the NLF selection source

#### Bit Mapping

Both masks use the same bit layout:

- bits `0`, `1`, `2`: slice 0 / `u`, `x`, `xdot`
- bits `3`, `4`, `5`: slice 1 / `u`, `x`, `xdot`
- bits `6`, `7`, `8`: slice 2 / `u`, `x`, `xdot`

For example, bit `1` controls the `x`-path NLF switch of slice 0.

To use software-only control for all switch positions, first clear the I/O mask
and then set the desired software selection bits:

```matlab
client.set_nlfsw_iomask(0x00);
client.set_nlfsw_sel(0x00);
```

This configures all switch positions to use software control and selects the
normal NLF everywhere.

To use an external GPIO signal for the slice 0 `x` switch, set bit `1` in the
I/O mask:

```matlab
client.set_nlfsw_iomask(0x02);
client.set_nlfsw_sel(0x00);
```

In this setup, the slice 0 `x` switch is controlled externally, while the other
switch positions still follow the software selection mask.

The effective, currently active hardware switch state can be read back using
`client.get_nlfsw_current()`.

## Loading the Configuration onto the RedPitaya

After verifying that the simulator acts as expected for the desired model and
input scenarios, the compiled configuration can now be loaded onto the RedPitaya
device itself.

To do this, the HIL simulator library provides an interface that directly
communicates with the TCP server running on the RedPitaya. Make sure that the
RP is connected to the network, is reachable and that the TCP server application
is running.

To connect to the device, just provide the client with the IP address and port
of the RedPitaya:

```matlab
RP_IPADDR = "10.10.10.10";  % Local IP of the RedPitaya
RP_PORT = 1000;             % Default port is 1000

% Connect to HILSim RP via TCP/IP
client = HILSimClient(RP_IPADDR, RP_PORT);
client.connect();
```

Next, the compiled model can be sent to the RedPitaya:
 
```matlab
% Send the compiled model to the RedPitaya
client.set_model(model);
client.send_config_update();
```

Before running the simulation, it is advised to run a calibration of the device.
In this case, we run the input offset calibration every time (make sure to 
disable the input signal when running the calibration) and load the other
calibration constants from a file. The script `matlab/hilsim_calibration.m` can
be used to do a calibration of the RedPitaya device and create a calibration
constants `.mat` file.

```matlab
% Calibrate away any zero DC-offset in the ADC-inputs.
client.do_input_zero_calib();
% Load other calibration values from the saved calib data. (ADC zero offset
% compensation is done individually each time)
client.set_adc_calib(NaN, calib.adc0_factor, NaN, calib.adc1_factor);
client.set_dac_calib(calib.dac0_offset, calib.dac0_factor, calib.dac1_offset, calib.dac1_factor);
```

Now, we can start the simulation. To start from a clean state, we send a reset
command first. This resets all internal states (integrators, etc.) to zero.

```matlab
% Reset all integrators in the model & start the simulation.
client.reset_simulation();
client.start_simulation();
```

Now the simulation is running. To stop the simulation again, the following
commands can be issued:

```matlab
% Stop the simulation.
client.stop_simulation();
client.reset_simulation();
```

For simply running the simulation until the user wants to stop it, a breakpoint
at the `client.stop_simulation()` command usually suffices.

To gracefully disconnect the client from the TCP server, use the `disconnect`
function:

```matlab
% Disconnect from the RedPitaya.
client.disconnect();
```

## DMA-Based Data Acquisition (DAQ)

The client library also provides a DMA-based acquisition interface that can be
used to capture raw simulator I/O data into RAM on the RedPitaya and then read
it back over TCP. A complete example of this workflow is shown in
`matlab/hilsim_particle_example.m`.

The DAQ flow consists of four steps:

1. Configure the acquisition using `client.configure_daq(...)`
2. Arm or trigger it using `client.prime_daq()`
3. Wait for completion using `client.is_daq_finished()` or `client.wait_finished(...)`
4. Read back the raw buffer using `client.read_daq_data(offset, length)`

Typical usage looks like this:

```matlab
client.configure_daq(10000, 36*10, 1, 0);
client.prime_daq();
client.wait_finished(15.0);
data = client.read_daq_data(0, 10000);
```

The `configure_daq` parameters have the following meaning:

- `num_frames`: number of frames to record
- `frame_stride`: capture every `frame_stride`-th base frame
- `channel_mask`: selects which packed DMA words are written to RAM
- `use_hw_trigger`: `0` for software trigger, `1` for hardware trigger

The DAQ base frame rate is `125 MHz`.

### DMA Data Layout

The raw DMA stream is packed into 32-bit words:

- **first word**: low 16 bits = `dac0`, high 16 bits = `dac1`
- **second word**: low 16 bits = `adc0`, high 16 bits = `adc1`

So, when both packed words are enabled in the DAQ stream, one full captured
sample consists of two 32-bit words in the order:

1. DAC word
2. ADC word

In the particle example, only the first packed word is recorded and decoded,
which is why the example extracts `dac0` and `dac1` from each returned 32-bit
value:

```matlab
dac_a = arrayfun(@(d) from_fixrepr(bitand(d, uint32(0xffff)), 16, 10), data);
dac_b = arrayfun(@(d) from_fixrepr(bitand(bitsrl(d, 16), uint32(0xffff)), 16, 10), data);
```

This means:

- `bitand(d, uint32(0xffff))` extracts the low 16-bit `dac0` sample
- `bitand(bitsrl(d, 16), uint32(0xffff))` extracts the high 16-bit `dac1` sample

The helper `from_fixrepr(...)` used in the example converts the raw fixed-point
representation into MATLAB `double` values.
