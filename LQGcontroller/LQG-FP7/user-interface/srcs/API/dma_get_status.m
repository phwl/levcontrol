function [resp_data, resp_status] = dma_get_status(base_url)
    [resp_data, resp_status] = do_post(base_url + "/dma/status", struct());
end
