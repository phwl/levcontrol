%% Simple test of the REST api.

% Run the init such that we get kalman matrices
run test_kalman_scaling_init.m;

BASE_URL = "http://10.42.0.253:5000/api"; % ** Replace IP with RP ip here **

%% Simple Config Example

% Updates the configuration using the struct provided. Mapping of struct
% member values to actual configs is defined in the IP config YAML.
update_config(BASE_URL, lqg);

% There is a simple XOR mask to demonstrate AXI interface capability;
% Check the Simulink model for seeing how that works.
write_axi(BASE_URL, "axi_sys_s_axi", "axi_led_mask", 0xff);

val = read_axi(BASE_URL, "axi_sys_s_axi", "axi_led_output");
fprintf("Actual LED value: %02x\n", val);

%% DMA Example
dma_zero_mem(BASE_URL);

N_frames = 256000;
decimation_factor = 1;
f_samp = 125e6 / 8 / decimation_factor;

conf = struct();
conf.frames = N_frames;
conf.channels = [0, 1, 2, 3, 4, 5, 6, 7];
conf.decimation = numel(conf.channels) * decimation_factor;
conf.trigger_source = "software";
dma_config(BASE_URL, conf);

dma_wait(BASE_URL, 10.0);

data = dma_get_data_blockwise(BASE_URL,0,N_frames*8*4);
sig = decode_dma_stream(data(1:end-32));
t_vec = (1:1:N_frames-1) / f_samp;

% Plot signals
plot(t_vec, sig.lqg_yk_0);
hold on;
plot(t_vec, sig.lqg_yk_1);

%% HTTP functions

% This is all you need to interface with the REST API on the RP.
function [resp_data] = do_post(url,body)
    import matlab.net.*;
    import matlab.net.http.*;

    uri = URI(url);
    header = [HeaderField("Content-Type", "application/json")];
    req = RequestMessage(RequestMethod.POST, header, body);
    resp = req.send(uri);

    if resp.StatusCode ~= StatusCode.OK
        disp(resp.Body.Data);
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

function [] = dma_zero_mem(base_url)
    do_post(base_url + "/dma/zero_target_mem", struct());
end

function [resp_data] = dma_get_status(base_url)
    resp_data = do_post(base_url + "/dma/status", struct());
end

function [] = dma_config(base_url,conf)
    do_post(base_url + "/dma/config", conf);
end

function [] = dma_wait(base_url,timeout)
    body = struct();
    body.timeout_seconds = timeout;
    do_post(base_url + "/dma/wait", body);
end

function [data] = dma_get_data(base_url,offset,length)
    body = struct();
    body.offset = offset;
    body.length = length;
    resp = do_post(base_url + "/dma/data", body);
    data = matlab.net.base64decode(resp.data);
end

function [data] = dma_get_data_blockwise(base_url,offset,length)
    % Section off in 8MB blocks.
    block_size = 1024 * 1024 * 8;
    bytes_left = length;
    bytes_written = 0;
    data = zeros(1, length, "uint8");
    while bytes_left > 0
        cur_bytes = min(bytes_left, block_size);

        data(bytes_written+1:bytes_written+cur_bytes) = dma_get_data(base_url, offset + bytes_written, cur_bytes);

        bytes_written = bytes_written + cur_bytes;
        bytes_left = bytes_left - cur_bytes;
    end
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

%% DMA Decode helper functions


function signals = decode_dma_frame(frame_bytes)
% DECODE_DMA_FRAME Decodes a 32-byte DMA frame into LQG signals
%
% Input:
%   frame_bytes - 32-element uint8 array representing one DMA frame
%
% Output:
%   signals - struct containing decoded signals:
%       .lqg_uk_0    - sfix_14_12 (2 elements)
%       .lqg_uk_1    - sfix_14_12 (2 elements)
%       .lqg_yk_0    - sfix_14_12 (2 elements)
%       .lqg_yk_1    - sfix_14_12 (2 elements)
%       .lqg_xkhat_0 - sfix_25_22 (7 elements)
%       .lqg_xkhat_1 - sfix_25_22
%       .lqg_xkhat_2 - sfix_25_22
%       .lqg_xkhat_3 - sfix_25_22
%       .lqg_xkhat_4 - sfix_25_22
%       .lqg_xkhat_5 - sfix_25_22
%       .lqg_xkhat_6 - sfix_25_22

    % Validate input
    if length(frame_bytes) ~= 32
        error('Input must be exactly 32 bytes');
    end
    
    % Convert to uint8 column vector for consistency
    frame_bytes = uint8(frame_bytes(:));
    
    % Convert bytes to 32-bit words (little-endian)
    % DMA channels a through h (8 channels, 4 bytes each)
    dma_a = typecast(frame_bytes(1:4), 'uint32');
    dma_b = typecast(frame_bytes(5:8), 'uint32');
    dma_c = typecast(frame_bytes(9:12), 'uint32');
    dma_d = typecast(frame_bytes(13:16), 'uint32');
    dma_e = typecast(frame_bytes(17:20), 'uint32');
    dma_f = typecast(frame_bytes(21:24), 'uint32');
    dma_g = typecast(frame_bytes(25:28), 'uint32');
    dma_h = typecast(frame_bytes(29:32), 'uint32');
    
    % Extract bit fields and decode signals
    % Based on the mapping in dma_channel_mapper.v
    
    % Channel A: lqg_uk_0[13:0], lqg_uk_1[13:0], lqg_yk_0[3:0]
    signals.lqg_uk_0 = decode_sfix_14_12(extract_bits(dma_a, 0, 14));
    signals.lqg_uk_1 = decode_sfix_14_12(extract_bits(dma_a, 14, 14));
    
    % Channel B: lqg_yk_0[13:4], lqg_yk_1[13:0], lqg_xkhat_0[7:0]
    yk_0_lower = extract_bits(dma_a, 28, 4);
    yk_0_upper = extract_bits(dma_b, 0, 10);
    signals.lqg_yk_0 = decode_sfix_14_12(bitor(yk_0_lower, bitshift(yk_0_upper, 4)));
    
    signals.lqg_yk_1 = decode_sfix_14_12(extract_bits(dma_b, 10, 14));
    
    % Channel C: lqg_xkhat_0[24:8], lqg_xkhat_1[14:0]
    xkhat_0_lower = extract_bits(dma_b, 24, 8);
    xkhat_0_upper = extract_bits(dma_c, 0, 17);
    signals.lqg_xkhat_0 = decode_sfix_25_22(bitor(xkhat_0_lower, bitshift(xkhat_0_upper, 8)));
    
    % Channel D: lqg_xkhat_1[24:15], lqg_xkhat_2[21:0]
    xkhat_1_lower = extract_bits(dma_c, 17, 15);
    xkhat_1_upper = extract_bits(dma_d, 0, 10);
    signals.lqg_xkhat_1 = decode_sfix_25_22(bitor(xkhat_1_lower, bitshift(xkhat_1_upper, 15)));
    
    % Channel E: lqg_xkhat_2[24:22], lqg_xkhat_3[24:0], lqg_xkhat_4[3:0]
    xkhat_2_lower = extract_bits(dma_d, 10, 22);
    xkhat_2_upper = extract_bits(dma_e, 0, 3);
    signals.lqg_xkhat_2 = decode_sfix_25_22(bitor(xkhat_2_lower, bitshift(xkhat_2_upper, 22)));
    
    signals.lqg_xkhat_3 = decode_sfix_25_22(extract_bits(dma_e, 3, 25));
    
    % Channel F: lqg_xkhat_4[24:4], lqg_xkhat_5[10:0]
    xkhat_4_lower = extract_bits(dma_e, 28, 4);
    xkhat_4_upper = extract_bits(dma_f, 0, 21);
    signals.lqg_xkhat_4 = decode_sfix_25_22(bitor(xkhat_4_lower, bitshift(xkhat_4_upper, 4)));
    
    % Channel G: lqg_xkhat_5[24:11], lqg_xkhat_6[17:0]
    xkhat_5_lower = extract_bits(dma_f, 21, 11);
    xkhat_5_upper = extract_bits(dma_g, 0, 14);
    signals.lqg_xkhat_5 = decode_sfix_25_22(bitor(xkhat_5_lower, bitshift(xkhat_5_upper, 11)));
    
    % Channel H: lqg_xkhat_6[24:18]
    xkhat_6_lower = extract_bits(dma_g, 14, 18);
    xkhat_6_upper = extract_bits(dma_h, 0, 7);
    signals.lqg_xkhat_6 = decode_sfix_25_22(bitor(xkhat_6_lower, bitshift(xkhat_6_upper, 18)));
end

function bits = extract_bits(value, start_bit, num_bits)
    % Extract num_bits starting from start_bit (0-indexed)
    mask = bitshift(uint32(1), num_bits) - 1;
    bits = bitand(bitshift(value, -start_bit), mask);
end

function value = decode_sfix_14_12(raw_bits)
    % Decode sfix_14_12: 14-bit signed, 12 fractional bits
    % Sign extend from 14 bits to 32 bits
    if bitand(raw_bits, 8192) ~= 0  % Check sign bit (bit 13)
        raw_bits = bitor(raw_bits, uint32(hex2dec('FFFFC000')));  % Sign extend
    end
    % Convert to signed integer then to double with scaling
    value = double(typecast(raw_bits, 'int32')) / 2^12;
end

function value = decode_sfix_25_22(raw_bits)
    % Decode sfix_25_22: 25-bit signed, 22 fractional bits
    % Sign extend from 25 bits to 32 bits
    if bitand(raw_bits, 16777216) ~= 0  % Check sign bit (bit 24)
        raw_bits = bitor(raw_bits, uint32(hex2dec('FE000000')));  % Sign extend
    end
    % Convert to signed integer then to double with scaling
    value = double(typecast(raw_bits, 'int32')) / 2^22;
end

function sig = decode_dma_stream(byte_stream)
    % byte_stream : uint8 vector, length = 32*N
    % sig         : struct of signal vectors
    
    assert(isa(byte_stream,'uint8'), 'Input must be uint8');
    byte_stream = byte_stream(:);
    
    FRAME_SIZE = 32;
    N = numel(byte_stream) / FRAME_SIZE;
    assert(mod(numel(byte_stream), FRAME_SIZE) == 0, ...
           'Byte stream length must be a multiple of 32');
    
    sig.lqg_uk_0     = zeros(N,1);
    sig.lqg_uk_1     = zeros(N,1);
    sig.lqg_yk_0     = zeros(N,1);
    sig.lqg_yk_1     = zeros(N,1);
    sig.lqg_xkhat_0  = zeros(N,1);
    sig.lqg_xkhat_1  = zeros(N,1);
    sig.lqg_xkhat_2  = zeros(N,1);
    sig.lqg_xkhat_3  = zeros(N,1);
    sig.lqg_xkhat_4  = zeros(N,1);
    sig.lqg_xkhat_5  = zeros(N,1);
    sig.lqg_xkhat_6  = zeros(N,1);
    
    for k = 1:N
        idx = (k-1)*FRAME_SIZE + (1:FRAME_SIZE);
        frame = byte_stream(idx);
    
        s = decode_dma_frame(frame);
    
        sig.lqg_uk_0(k)    = s.lqg_uk_0;
        sig.lqg_uk_1(k)    = s.lqg_uk_1;
        sig.lqg_yk_0(k)    = s.lqg_yk_0;
        sig.lqg_yk_1(k)    = s.lqg_yk_1;
        sig.lqg_xkhat_0(k) = s.lqg_xkhat_0;
        sig.lqg_xkhat_1(k) = s.lqg_xkhat_1;
        sig.lqg_xkhat_2(k) = s.lqg_xkhat_2;
        sig.lqg_xkhat_3(k) = s.lqg_xkhat_3;
        sig.lqg_xkhat_4(k) = s.lqg_xkhat_4;
        sig.lqg_xkhat_5(k) = s.lqg_xkhat_5;
        sig.lqg_xkhat_6(k) = s.lqg_xkhat_6;
    end

end
