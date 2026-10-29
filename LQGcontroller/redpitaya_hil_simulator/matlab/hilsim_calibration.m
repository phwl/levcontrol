
% Add the HIL-Simulator Library to the project.
addpath hilsim_lib/

clc;
close all;
clear;

NUM_CALIB_VALUES = 10;

%% IP-Settings for RedPitaya
RP_IPADDR = "10.42.0.66";
RP_PORT = 1000;

%% Connect to HILSim RP via TCP/IP
client = HILSimClient(RP_IPADDR, RP_PORT);
client.connect();

% Stop & reset everything.
client.stop_simulation();
client.reset_simulation();
client.reset_adc_calib();
client.reset_dac_calib();

%% ADC zero point calibration.
fprintf("\n=> ADC zero-point calibration.\n");
fprintf("To start the calibration process, connect 0V (open) to all ADC inputs of the RedPitaya.\n");
if ~input_yesno("Confirm?")
    return;
end

client.do_input_zero_calib();
[adc0_offset, adc0_factor, adc1_offset, adc1_factor] = client.get_adc_calib();
fprintf("Done.\n\nADC zero-point calibration results:\n\tadc0_offset=%.4f Units\n\tadc1_offset=%.4f Units\n", adc0_offset, adc1_offset);

%% ADC scaling calibration.
fprintf("\n=> ADC scaling calibration.\n");
fprintf("Connect 0.8 VDC to ADC input 0.\n");
if ~input_yesno("Confirm?")
    return;
end

values = zeros(1,NUM_CALIB_VALUES);
for i = 1:NUM_CALIB_VALUES
    [a0,a1] = client.read_adc_values();
    values(i) = a0;
end
a0_0p8v_value = mean(values);
adc0_factor = 0.8 / a0_0p8v_value;
fprintf("0.8V ADC-0 mean value: %.4f Units\n", a0_0p8v_value);
fprintf("ADC-0 scaling factor: %.4f Units\n", adc0_factor);

fprintf("Connect 0.8 VDC to ADC input 1.\n");
if ~input_yesno("Confirm?")
    return;
end

values = zeros(1,NUM_CALIB_VALUES);
for i = 1:NUM_CALIB_VALUES
    [a0,a1] = client.read_adc_values();
    values(i) = a1;
end
a1_0p8v_value = mean(values);
adc1_factor = 0.8 / a1_0p8v_value;
fprintf("0.8V ADC-1 mean value: %.4f Units\n", a1_0p8v_value);
fprintf("ADC-1 scaling factor: %.4f Units\n", adc1_factor);

% Set the new factors.
client.set_adc_calib(NaN, adc0_factor, NaN, adc1_factor);

%% DAC calibration.
fprintf("\n=> DAC calibration.\n");
fprintf("The DAC calibration utility will output a DC voltage to the DAC's. Ensure outputs are only connected to necessary measuring equipment.\n");
if ~input_yesno("Confirm?")
    return;
end

client.set_dac_calib(1.0, 0.0, 1.0, 0.0);
d0_pos_voltage = input("Measure DC output voltage of DAC-0: ");
d1_pos_voltage = input("Measure DC output voltage of DAC-1: ");

client.set_dac_calib(-1.0, 0.0, -1.0, 0.0);
d0_neg_voltage = input("Measure DC output voltage of DAC-0: ");
d1_neg_voltage = input("Measure DC output voltage of DAC-1: ");

dac0_offset = -(-1.0 + 2.0 * (-d0_neg_voltage / (d0_pos_voltage - d0_neg_voltage)));
dac1_offset = -(-1.0 + 2.0 * (-d1_neg_voltage / (d1_pos_voltage - d1_neg_voltage)));
fprintf("dac0_offset=%.4f Units, dac1_offset=%.4f Units\n", dac0_offset, dac1_offset);

dac0_factor = 2.0 / (d0_pos_voltage - d0_neg_voltage);
dac1_factor = 2.0 / (d1_pos_voltage - d1_neg_voltage);
fprintf("dac0_factor=%.4f Units, dac1_factor=%.4f Units\n", dac0_factor, dac1_factor);

%% Done
fprintf("Calibration utility done.\n\n");
fprintf("Calibration results:\n");
fprintf("\tadc0_offset=%f\n", adc0_offset);
fprintf("\tadc0_factor=%f\n", adc0_factor);
fprintf("\tadc1_offset=%f\n", adc1_offset);
fprintf("\tadc1_factor=%f\n", adc1_factor);
fprintf("\tdac0_offset=%f\n", dac0_offset);
fprintf("\tdac0_factor=%f\n", dac0_factor);
fprintf("\tdac1_offset=%f\n", dac1_offset);
fprintf("\tdac1_factor=%f\n", dac1_factor);

calib.adc0_offset = adc0_offset;
calib.adc0_factor = adc0_factor;
calib.adc1_offset = adc1_offset;
calib.adc1_factor = adc1_factor;
calib.dac0_offset = dac0_offset;
calib.dac0_factor = dac0_factor;
calib.dac1_offset = dac1_offset;
calib.dac1_factor = dac1_factor;

client.disconnect();

save("calib.mat", "calib");

%% Misc functions

function [ok] = input_yesno(prompt)
    in = input(prompt + " [y/n] ","s");
    if in == "y"
        ok = true;
    else
        ok = false;
    end
end