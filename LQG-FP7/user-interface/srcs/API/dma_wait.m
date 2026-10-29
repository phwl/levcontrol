function [resp_status] = dma_wait(base_url,timeout)
    body = struct();
    body.timeout_seconds = timeout;
    [~, resp_status] = do_post(base_url + "/dma/wait", body);
end