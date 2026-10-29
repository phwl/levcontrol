function [resp_status] = write_axi(base_url,bus,id,value)
    body = struct("bus", bus, "id", id, "value", value);
    [~, resp_status] = do_post(base_url + "/axi_mappings", body);
end

