function dbl_out = sliceAndConvertUint32(uint, MSb, LSb, f, s)
    %%MSb and LSb are indexed starting 1

    mask = uint32((2^(1+MSb-LSb))-1); % Ones for N bits (n = MSb-LSb)
    %mask = bitshift(mask,LSb);
    %mask = bitset(mask,LSb:MSb,1,"uint32");
    
    slice = bitand(bitshift(uint, -(LSb-1)),mask);
    if s
        %slice = bitset(slice,32:MSb,bitget(slice,MSb)); %Extend sign
        slice = bitor(slice, bitcmp(mask).*bitget(uint,MSb));
        temp_num = typecast(slice,'int32');
    else
        temp_num = typecast(slice,'uint32');
    end
    
    dbl_out = double(temp_num)/2^f;
end
