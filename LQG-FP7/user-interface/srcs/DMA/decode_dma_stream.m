function S = decode_dma_stream(byte_stream, varargin)
% DECODE_DMA_STREAM Vectorized decode of DMA byte stream into signal matrix
%
% S is a matrix with signals in rows and time (frames) along columns.
% Row order (11 rows):
% 1: lqg_yk_0, 2: lqg_yk_1, 3: lqg_uk_0, 4: lqg_uk_1,
% 5-11: lqg_xkhat_0 .. lqg_xkhat_6

    % Parse optional input (dma channels are expected zero-based: 0..7)
    if nargin > 1
        dma_channels = varargin{1};
    else
        dma_channels = 0:7;  % Default: all 8 channels
    end
    dma_channels = dma_channels(:);

    assert(isa(byte_stream,'uint8'), 'Input must be uint8');

    BYTES_PER_CHANNEL = uint32(4);
    C = numel(dma_channels);
    FRAME_SIZE = double(C * BYTES_PER_CHANNEL);
    assert(mod(numel(byte_stream), FRAME_SIZE) == 0, ...
           'Byte stream length must be a multiple of %d (detected %d channels)', ...
           FRAME_SIZE, length(dma_channels));

    N = numel(byte_stream) / FRAME_SIZE; % number of frames

    if N == 0
        S = zeros(11,0);
        return
    end

    % Reshape bytes into 4 x C x N, then typecast to uint32 words per (channel,frame)
    bytes = reshape(byte_stream, 4, C, N);
    bytes2 = reshape(bytes, 4, C * N);
    words_vec = typecast(bytes2(:), 'uint32');       % (C*N) x 1
    words_mat = reshape(words_vec, C, N);            % C x N, in dma_channels order

    % Map words into 8-channel matrix (rows A..H -> 1..8). Missing channels stay 0.
    chan_words = zeros(8, N, 'uint32');
    for i = 1:C
        pos = uint32(dma_channels(i)) + 1;
        chan_words(pos, :) = words_mat(i, :);
    end

    % Quick presence flags for channels A..H
    has = false(8,1);
    has(dma_channels + 1) = true;

    % Preallocate signal rows
    S = zeros(11, N);

    % Helper accessors (use uint32 inputs for extract_bits)
    % lqg_uk_0, lqg_uk_1 (from A)
    if has(1)
        a = chan_words(1, :);
        uk0 = decode_sfix_14_13(extract_bits(a, 0, 14));
        uk1 = decode_sfix_14_13(extract_bits(a, 14, 14));
    else
        uk0 = zeros(1,N); uk1 = zeros(1,N);
    end

    % lqg_yk_0 (A & B)
    if has(1) && has(2)
        a = chan_words(1,:); b = chan_words(2,:);
        yk0_lower = extract_bits(a, 28, 4);
        yk0_upper = extract_bits(b, 0, 10);
        yk0 = decode_sfix_14_13(bitor(yk0_lower, bitshift(yk0_upper, 4)));
    else
        yk0 = zeros(1,N);
    end

    % lqg_yk_1 (B)
    if has(2)
        b = chan_words(2,:);
        yk1 = decode_sfix_14_13(extract_bits(b, 10, 14));
    else
        yk1 = zeros(1,N);
    end

    % lqg_xkhat_0 (B & C)
    if has(2) && has(3)
        b = chan_words(2,:); c = chan_words(3,:);
        lower = extract_bits(b, 24, 8);
        upper = extract_bits(c, 0, 17);
        xkhat0 = decode_sfix_25_22(bitor(lower, bitshift(upper, 8)));
    else
        xkhat0 = zeros(1,N);
    end

    % lqg_xkhat_1 (C & D)
    if has(3) && has(4)
        c = chan_words(3,:); d = chan_words(4,:);
        lower = extract_bits(c, 17, 15);
        upper = extract_bits(d, 0, 10);
        xkhat1 = decode_sfix_25_22(bitor(lower, bitshift(upper, 15)));
    else
        xkhat1 = zeros(1,N);
    end

    % lqg_xkhat_2 (D & E)
    if has(4) && has(5)
        d = chan_words(4,:); e = chan_words(5,:);
        lower = extract_bits(d, 10, 22);
        upper = extract_bits(e, 0, 3);
        xkhat2 = decode_sfix_25_22(bitor(lower, bitshift(upper, 22)));
    else
        xkhat2 = zeros(1,N);
    end

    % lqg_xkhat_3 (E)
    if has(5)
        e = chan_words(5,:);
        xkhat3 = decode_sfix_25_22(extract_bits(e, 3, 25));
    else
        xkhat3 = zeros(1,N);
    end

    % lqg_xkhat_4 (E & F)
    if has(5) && has(6)
        e = chan_words(5,:); f = chan_words(6,:);
        lower = extract_bits(e, 28, 4);
        upper = extract_bits(f, 0, 21);
        xkhat4 = decode_sfix_25_22(bitor(lower, bitshift(upper, 4)));
    else
        xkhat4 = zeros(1,N);
    end

    % lqg_xkhat_5 (F & G)
    if has(6) && has(7)
        f = chan_words(6,:); g = chan_words(7,:);
        lower = extract_bits(f, 21, 11);
        upper = extract_bits(g, 0, 14);
        xkhat5 = decode_sfix_25_22(bitor(lower, bitshift(upper, 11)));
    else
        xkhat5 = zeros(1,N);
    end

    % lqg_xkhat_6 (G & H)
    if has(7) && has(8)
        g = chan_words(7,:); h = chan_words(8,:);
        lower = extract_bits(g, 14, 18);
        upper = extract_bits(h, 0, 7);
        xkhat6 = decode_sfix_25_22(bitor(lower, bitshift(upper, 18)));
    else
        xkhat6 = zeros(1,N);
    end

    % Assemble rows per expected plotting order used elsewhere
    S(1, :) = yk0;
    S(2, :) = yk1;
    S(3, :) = uk0;
    S(4, :) = uk1;
    S(5, :) = xkhat0;
    S(6, :) = xkhat1;
    S(7, :) = xkhat2;
    S(8, :) = xkhat3;
    S(9, :) = xkhat4;
    S(10, :) = xkhat5;
    S(11, :) = xkhat6;
end