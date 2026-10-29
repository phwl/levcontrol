function [resp_status] = dma_config(base_url,conf)
    [~, resp_status] = do_post(base_url + "/dma/config", conf);
end