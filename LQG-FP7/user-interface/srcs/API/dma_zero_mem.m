function [resp_status] = dma_zero_mem(base_url)
    [~, resp_status] = do_post(base_url + "/dma/zero_target_mem", struct());
end

