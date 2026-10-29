function [value, resp_status] = read_axi(base_url,bus,id)
    body = struct("bus", bus, "id", id);
    [resp, resp_status] = do_post(base_url + "/axi_mappings", body);
    value = resp.value;
end