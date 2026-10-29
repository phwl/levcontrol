function [data, resp_status] = dma_get_data_blockwise(base_url,offset,length)
    % Section off in 8MB blocks.
    import matlab.net.http.*;
    block_size = 1024 * 1024 * 8;
    bytes_left = length;
    bytes_written = 0;
    data = zeros(1, length, "uint8");
    resp_status = [];
    while bytes_left > 0
        cur_bytes = min(bytes_left, block_size);

        [data(bytes_written+1:bytes_written+cur_bytes), resp_status] = dma_get_data(base_url, offset + bytes_written, cur_bytes);

        % Check for error status and break if encountered
        if resp_status ~= StatusCode.OK
            break;
        end

        bytes_written = bytes_written + cur_bytes;
        bytes_left = bytes_left - cur_bytes;
    end
end