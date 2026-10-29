function [resp_data, resp_status] = update_config(base_url,lqg)
    config = lqg;

    body = struct();
    body.type = "matlab-json";
    body.payload = config;

    [resp_data, resp_status] = do_post(base_url + "/update_config", body);
end

