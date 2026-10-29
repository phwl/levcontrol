function bits = extract_bits(value, start_bit, num_bits)
    % Extract num_bits starting from start_bit (0-indexed)
    mask = bitshift(uint32(1), num_bits) - 1;
    bits = bitand(bitshift(value, -start_bit), mask);
end
