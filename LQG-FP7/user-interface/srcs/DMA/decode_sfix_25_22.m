function value = decode_sfix_25_22(raw_bits)
    % Decode sfix_25_22: 25-bit signed, 22 fractional bits
    % Accepts scalar or array inputs and returns array of same size.

    rb = uint32(raw_bits);
    % sign bit mask (bit 24 -> value 2^24)
    sign_mask = bitshift(uint32(1), 24);
    neg_idx = bitand(rb, sign_mask) ~= 0;
    if any(neg_idx(:))
        extend_mask = uint32(hex2dec('FE000000'));
        rb(neg_idx) = bitor(rb(neg_idx), extend_mask);
    end

    % reinterpret bits as signed int32 and scale
    v = typecast(rb(:), 'int32');
    v = double(v) / 2^22;
    value = reshape(v, size(rb));
end