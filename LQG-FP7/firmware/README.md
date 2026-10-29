# LQG-FP7

This repository contains the MATLAB and Vivado Project files for the LQG-FP7
design. This is a simple PoC of a live-reconfigurable, adaptable-dynamic-range
LQG controller with 7 states, running on fixed-point airthmetic implemented in
an FPGA IP core.

### MATLAB Files

The necessary MATLAB and MATLAB/Simulink files can be found in the `matlab`
directory. The main Simulink file is `matlab/test_kalman_scaling.slx` with the
associated initialization file `matlab/test_kalman_scaling_init.m`. The
needed accompanying files are also included in the directory. This project
forks from the original work by Vojtech Mlynar, located [here](https://github.com/VojtechMlynar/RedPitaya_InvertedPotential).

### Vivado Files

Similarly to the MATLAB files, the IP core design data project is located in the
`vivado` subdirectory and is forked from the `proj_ref_7020` reference
project as described [here](https://vojtechmlynar.github.io/Red%20Pitaya%20Guide/Internal%20reference%20design/Vivado/Reference%20project%20documentation.html)

### SDK Versions

The following table displays the versions used to design and compile this project.
Usually, matching Matlab and Vitis versions are required to get the Model-Composer
part of the project to synthesize correctly.

| **Tool** | **Version** |
|----------|-------------|
| Matlab/Simulink | R2024a |
| Vitis Model Composer | 2024.2 |
| Vivado | 2024.2 |

## How to Build and Essential Project Knowledge

1) The core implementation of this project (i.e. the LQG itself with all the
   matrix multiplications, etc.) is done in Matlab/Simulink with Vitis Model Composer.
   The Model-Composer block on the top level design of the Simulink file
   `matlab/test_kalman_scaling.slx` can be used to (re-)generate the IP core
   output to the `matlab/netlist_lqg_axitest` folder.

   The raw IP-core has both the AXI and also configuration connections (the 
   matrix element values, etc.). We discriminate between *configuration* and
   *AXI-mapped* signals; basically speaking, everything that only changes rarely
   (like matrix entries in the LQG) is deemed to be part of the configuration bus.
   Everything that must be fast / readily and independently changable from software
   is part of the AXI-mapped signals. The reason for this discrimination is
   that configuration signals are implemented in a way where they allow for
   better path timing optimizations.

2) To split *AXI-mapped* and *configuration* signals and also automatically 
   resolve the memory layout, the next step is to generate the Verilog
   wrapper for the Model-Composer IP-Core. This is done using the `generate_wrapper.sh`
   script in the project root. It uses the `ipcoreconfig` project to accomplish
   this using the IP-core description in `ip_description.yaml`. If you add new
   gateways to the Matlab core, they must be added here such that the generator
   knows about them and how to expose them to the rest of the system.

3) Open the Vivado project `vivado/lqg_fp7/lqg_fp7.xpr` and synthesize, implement
   and generate the bitstream for the project.

   Golden images of the bitstreams are located in `vivado/bitstreams` and given
   versions to identify them.

### Setting up the coreconfig server on the RedPitaya

First, a few prerequisite packages must be installed on the RP for the server
to work:

- `python3-yaml`
- `python3-bitarray`
- `python3-numpy`
- `python3-flask`

They are also documented in the docs of `ipcoreconfig`. Install them using 
`apt-get install python3-yaml python3-bitarray python3-numpy python3-flask`.
Note the RP needs internet to install the packages.

A self-contained deployment package can be built using `generate_package.sh`
from the project root. This produces `package/lqg_fp7_package.tar.gz`, which
includes the coreconfig server, both IP description YAMLs, the FPGA bitstreams,
and a `start.sh` launcher script. A prebuilt version is already commited to the
repository.

To deploy, copy the archive to the RedPitaya and extract it:

```sh
scp package/lqg_fp7_package.tar.gz root@<RP_IP>:<some directory>
ssh root@<RP_IP> "cd <some directory> && tar -xzf lqg_fp7_package.tar.gz"
```

Then start the server by running:

```sh
cd <some directory> && ./start.sh
```

The `start.sh` script automatically detects the RedPitaya model, loads the
correct FPGA bitstream, and starts the configuration server.

### Interfacing from Matlab

Once you get the coreconfig server running, you can interface with your IP core
via HTTP calls to the REST API. The following example (see also `matlab/rest_api_test.m`)
demonstrates how you can update the config and read/write to AXI interface
registers.

If you need server-side acceleration of some read/writes to/from AXI, you may
implement such in the `ipcoreconfig` project's `coreconfig/server.py`!

The most basic variant to get something up-and-running is the following, stripped-down
version of `rest_api_test.m`. It does not show the DMA functionality.

```matlab
%% Simple test of the REST api.

% Run the init such that we get kalman matrices
run test_kalman_scaling_init.m;

BASE_URL = "http://10.42.0.2:5000/api"; % ** Replace IP with RP ip here **

% Updates the configuration using the struct provided. Mapping of struct
% member values to actual configs is defined in the IP config YAML.
update_config(BASE_URL, lqg);

% There is a simple XOR mask to demonstrate AXI interface capability;
% Check the Simulink model for seeing how that works.
write_axi(BASE_URL, "axi_sys_s_axi", "axi_led_mask", 0xff);

val = read_axi(BASE_URL, "axi_sys_s_axi", "axi_led_output");
fprintf("Actual LED value: %02x\n", val);

% This is all you need to interface with the REST API on the RP.
function [resp_data] = do_post(url,body)
    import matlab.net.*;
    import matlab.net.http.*;

    uri = URI(url);
    header = [HeaderField("Content-Type", "application/json")];
    req = RequestMessage(RequestMethod.POST, header, body);
    resp = req.send(uri);

    if resp.StatusCode ~= StatusCode.OK
        error("Got bad status code from server");
    end

    resp_data = resp.Body.Data;
end

function [value] = read_axi(base_url,bus,id)
    body = struct("bus", bus, "id", id);
    resp = do_post(base_url + "/axi_mappings", body);
    value = resp.value;
end

function [] = write_axi(base_url,bus,id,value)
    body = struct("bus", bus, "id", id, "value", value);
    do_post(base_url + "/axi_mappings", body);
end

function [] = update_config(base_url,lqg)
    config = lqg;
    config.yk_offset = [0, 0];
    config.yk_factor = [0.125, 0.125];
    config.uk_offset = [0, 0];
    config.uk_factor = [1, 1];
    config.led = 42;

    body = struct();
    body.type = "matlab-json";
    body.payload = config;

    do_post(base_url + "/update_config", body);
end
```

#### DMA Interface

To measure signals and states of the LQG, the DMA API can be utilized. The IP
maps the internal signals to the respective 8 DMA channels (32 bit wide each)
in the way as shown in the following table. For more details, see `src/rtl/dma_channel_mapper.v`.

| DMA Channel | Bit Range | Source Signal        |
| ----------- | --------- | -------------------- |
| **A**       | `[13:0]`  | `lqg_uk_0[13:0]`     |
|             | `[27:14]` | `lqg_uk_1[13:0]`     |
|             | `[31:28]` | `lqg_yk_0[3:0]`      |
| **B**       | `[9:0]`   | `lqg_yk_0[13:4]`     |
|             | `[23:10]` | `lqg_yk_1[13:0]`     |
|             | `[31:24]` | `lqg_xkhat_0[7:0]`   |
| **C**       | `[16:0]`  | `lqg_xkhat_0[24:8]`  |
|             | `[31:17]` | `lqg_xkhat_1[14:0]`  |
| **D**       | `[9:0]`   | `lqg_xkhat_1[24:15]` |
|             | `[31:10]` | `lqg_xkhat_2[21:0]`  |
| **E**       | `[2:0]`   | `lqg_xkhat_2[24:22]` |
|             | `[27:3]`  | `lqg_xkhat_3[24:0]`  |
|             | `[31:28]` | `lqg_xkhat_4[3:0]`   |
| **F**       | `[20:0]`  | `lqg_xkhat_4[24:4]`  |
|             | `[31:21]` | `lqg_xkhat_5[10:0]`  |
| **G**       | `[13:0]`  | `lqg_xkhat_5[24:11]` |
|             | `[31:14]` | `lqg_xkhat_6[17:0]`  |
| **H**       | `[6:0]`   | `lqg_xkhat_6[24:18]` |

The datatypes of the signals are described in the `ip_description.yaml`. The
example provided in `matlab/rest_api_test.m` provides a conversion helper function
which can be used to perform the conversion to actual float values from the DMA data
blob.