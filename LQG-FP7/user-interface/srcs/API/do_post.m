function [resp_data, resp_status] = do_post(url,body)
    import matlab.net.*;
    import matlab.net.http.*;

    uri = URI(url);
    header = [HeaderField("Content-Type", "application/json")];
    req = RequestMessage(RequestMethod.POST, header, body);
    resp = req.send(uri);

    % if resp.StatusCode ~= StatusCode.OK
    %     disp(resp.Body.Data);
    %     error("Got bad status code from server");
    % end
    resp_status = resp.StatusCode;
    resp_data = resp.Body.Data;
end

