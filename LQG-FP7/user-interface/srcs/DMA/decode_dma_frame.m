function signals = decode_dma_frame(frame_bytes, varargin)
% DECODE_DMA_FRAME Decodes a DMA frame into LQG signals
%
% Input:
%   frame_bytes - uint8 array representing one DMA frame
%                 Size: 32 bytes if all channels present, or 4*num_channels if selective
%
%   dma_channels (optional) - vector of active DMA channel indices [1-8] for [A-H]
%                             If not provided, assumes all 8 channels are present
%
% Output:
%   signals - struct containing decoded signals (only for active channels):
%       .lqg_uk_0    - sfix_14_12 (from channel A)
%       .lqg_uk_1    - sfix_14_12 (from channel A)
%       .lqg_yk_0    - sfix_14_12 (from channels A & B)
%       .lqg_yk_1    - sfix_14_12 (from channel B)
%       .lqg_xkhat_0 - sfix_25_22 (from channels B & C)
%       .lqg_xkhat_1 - sfix_25_22 (from channels C & D)
%       .lqg_xkhat_2 - sfix_25_22 (from channels D & E)
%       .lqg_xkhat_3 - sfix_25_22 (from channel E)
%       .lqg_xkhat_4 - sfix_25_22 (from channels E & F)
%       .lqg_xkhat_5 - sfix_25_22 (from channels F & G)
%       .lqg_xkhat_6 - sfix_25_22 (from channels G & H)

    % Parse optional input
    if nargin > 1
        dma_channels = varargin{1}+1;
    else
        dma_channels = 1:8;  % Default: all channels A-H
    end
    
    dma_channels = dma_channels(:);  % Ensure column vector
    
    % Validate input
    expected_bytes = length(dma_channels) * 4;
    if length(frame_bytes) ~= expected_bytes
        error('Input must be %d bytes for %d channels, got %d bytes', ...
              expected_bytes, length(dma_channels), length(frame_bytes));
    end
    
    % Convert to uint8 column vector for consistency
    frame_bytes = uint8(frame_bytes(:));
    
    % Create a mapping of channel index (1-8 for A-H) to the 32-bit word data
    % For all 8 channels normally present
    dma_channels_all = [0, 0, 0, 0, 0, 0, 0, 0];
    for i = 1:length(dma_channels)
        ch_idx = dma_channels(i);
        byte_start = (i-1)*4 + 1;
        dma_channels_all(ch_idx) = typecast(frame_bytes(byte_start:byte_start+3), 'uint32');
    end
    
    % Extract data for each active channel
    dma_a = 0;
    dma_b = 0;
    dma_c = 0;
    dma_d = 0;
    dma_e = 0;
    dma_f = 0;
    dma_g = 0;
    dma_h = 0;
    
    for i = 1:length(dma_channels)
        switch dma_channels(i)
            case 1
                dma_a = dma_channels_all(1);
            case 2
                dma_b = dma_channels_all(2);
            case 3
                dma_c = dma_channels_all(3);
            case 4
                dma_d = dma_channels_all(4);
            case 5
                dma_e = dma_channels_all(5);
            case 6
                dma_f = dma_channels_all(6);
            case 7
                dma_g = dma_channels_all(7);
            case 8
                dma_h = dma_channels_all(8);
        end
    end
    
    % Initialize signals struct
    signals = struct();
    
    % Channel A: lqg_uk_0[13:0], lqg_uk_1[13:0], lqg_yk_0[3:0]
    if ismember(1, dma_channels)
        signals.lqg_uk_0 = decode_sfix_14_12(extract_bits(dma_a, 0, 14));
        signals.lqg_uk_1 = decode_sfix_14_12(extract_bits(dma_a, 14, 14));
    end
    
    % Channel A & B: lqg_yk_0 spans both (requires both A and B)
    if ismember(1, dma_channels) && ismember(2, dma_channels)
        yk_0_lower = extract_bits(dma_a, 28, 4);
        yk_0_upper = extract_bits(dma_b, 0, 10);
        signals.lqg_yk_0 = decode_sfix_14_12(bitor(yk_0_lower, bitshift(yk_0_upper, 4)));
    end
    
    % Channel B: lqg_yk_1[13:0], lqg_xkhat_0[7:0]
    if ismember(2, dma_channels)
        signals.lqg_yk_1 = decode_sfix_14_12(extract_bits(dma_b, 10, 14));
    end
    
    % Channel B & C: lqg_xkhat_0 spans both (requires both B and C)
    if ismember(2, dma_channels) && ismember(3, dma_channels)
        xkhat_0_lower = extract_bits(dma_b, 24, 8);
        xkhat_0_upper = extract_bits(dma_c, 0, 17);
        signals.lqg_xkhat_0 = decode_sfix_25_22(bitor(xkhat_0_lower, bitshift(xkhat_0_upper, 8)));
    end
    
    % Channel C & D: lqg_xkhat_1 spans both (requires both C and D)
    if ismember(3, dma_channels) && ismember(4, dma_channels)
        xkhat_1_lower = extract_bits(dma_c, 17, 15);
        xkhat_1_upper = extract_bits(dma_d, 0, 10);
        signals.lqg_xkhat_1 = decode_sfix_25_22(bitor(xkhat_1_lower, bitshift(xkhat_1_upper, 15)));
    end
    
    % Channel D & E: lqg_xkhat_2 spans both (requires both D and E)
    if ismember(4, dma_channels) && ismember(5, dma_channels)
        xkhat_2_lower = extract_bits(dma_d, 10, 22);
        xkhat_2_upper = extract_bits(dma_e, 0, 3);
        signals.lqg_xkhat_2 = decode_sfix_25_22(bitor(xkhat_2_lower, bitshift(xkhat_2_upper, 22)));
    end
    
    % Channel E: lqg_xkhat_3[24:0]
    if ismember(5, dma_channels)
        signals.lqg_xkhat_3 = decode_sfix_25_22(extract_bits(dma_e, 3, 25));
    end
    
    % Channel E & F: lqg_xkhat_4 spans both (requires both E and F)
    if ismember(5, dma_channels) && ismember(6, dma_channels)
        xkhat_4_lower = extract_bits(dma_e, 28, 4);
        xkhat_4_upper = extract_bits(dma_f, 0, 21);
        signals.lqg_xkhat_4 = decode_sfix_25_22(bitor(xkhat_4_lower, bitshift(xkhat_4_upper, 4)));
    end
    
    % Channel F & G: lqg_xkhat_5 spans both (requires both F and G)
    if ismember(6, dma_channels) || ismember(7, dma_channels)
        xkhat_5_lower = extract_bits(dma_f, 21, 11);
        xkhat_5_upper = extract_bits(dma_g, 0, 14);
        signals.lqg_xkhat_5 = decode_sfix_25_22(bitor(xkhat_5_lower, bitshift(xkhat_5_upper, 11)));
    end
    
    % Channel G & H: lqg_xkhat_6 spans both (requires both G and H)
    if ismember(7, dma_channels) && ismember(8, dma_channels)
        xkhat_6_lower = extract_bits(dma_g, 14, 18);
        xkhat_6_upper = extract_bits(dma_h, 0, 7);
        signals.lqg_xkhat_6 = decode_sfix_25_22(bitor(xkhat_6_lower, bitshift(xkhat_6_upper, 18)));
    end
end