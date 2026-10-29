
function [data, resp_status] = dma_get_data(base_url,offset,length)
    body = struct();
    body.offset = offset;
    body.length = length;
    [resp, resp_status] = do_post(base_url + "/dma/data", body);
    data = matlab.net.base64decode(resp.data);
end
