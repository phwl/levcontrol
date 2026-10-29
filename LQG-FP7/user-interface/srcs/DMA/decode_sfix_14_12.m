function value = decode_sfix_14_12(raw_bits)
    % Decode sfix_14_12: 14-bit signed, 12 fractional bits
    % Accepts scalar or array inputs and returns array of same size.

    rb = uint32(raw_bits);
    % sign bit mask (bit 13 -> value 2^13)
    sign_mask = bitshift(uint32(1), 13);
    % indices with negative sign
    neg_idx = bitand(rb, sign_mask) ~= 0;
    if any(neg_idx(:))
        extend_mask = uint32(hex2dec('FFFFC000'));
        rb(neg_idx) = bitor(rb(neg_idx), extend_mask);
    end

    % reinterpret bits as signed int32 and scale
    v = typecast(rb(:), 'int32');
    v = double(v) / 2^12;
    value = reshape(v, size(rb));
end