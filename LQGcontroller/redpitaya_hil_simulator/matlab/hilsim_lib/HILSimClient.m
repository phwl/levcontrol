
classdef HILSimClient < handle
    
    properties (Access = private)
        ip_addr;
        tcp_port;

        model (1,1) HILSimModel;
        model_valid (1,1) logical;

        tcp_client;
        connected (1,1) logical;
    end
    
    methods
        function [this] = HILSimClient(ip_addr, tcp_port)
            this.ip_addr = ip_addr;
            this.tcp_port = tcp_port;
            this.model_valid = false;
            this.connected = false;
        end

        function [ip_addr] = get_ip_addr(this)
            ip_addr = this.ip_addr;
        end

        function [tcp_port] = get_tcp_port(this)
            tcp_port = this.tcp_port;
        end

        function [] = connect(this)
            this.tcp_client = tcpclient(this.ip_addr, this.tcp_port, "ConnectTimeout", 5, "Timeout", 5);
            this.connected = true;

            this.send_ping();
        end

        function [] = disconnect(this)
            if this.connected ~= true
                return
            end
                
            this.tcp_client.delete();
            this.connected = false;
        end

        function [] = send_ping(this)
            if this.connected ~= true
                error("Not connected.");
            end

            ping.request = "ping";
            ping.payload.pingval = 1234;
            
            pong = this.packet_exchange(ping);

            if pong.response ~= "pong" || pong.payload.pingval ~= 1234
                error("Ping failed.");
            end
        end

        function [] = set_model(this, model)
            this.model = model;
            this.model_valid = true;
        end

        function [] = send_config_update(this)
            if this.connected ~= true
                error("Not connected.");
            end

            if ~this.model_valid
                error("Not valid model was set.");
            end

            req.request = "update_config";
            req.payload.new_config = this.model.export_hwconfig();

            resp = this.packet_exchange(req);

            if resp.response ~= "update_config" || ~resp.payload.success
                display(resp.payload);
                error("Request failed.");
            end
        end

        function [val] = is_simulation_running(this)
            if this.connected ~= true
                error("Not connected.");
            end

            req.request = "get_sim_running";
            req.payload = struct();
            
            resp = this.packet_exchange(req);

            if resp.response ~= "get_sim_running"
                error("Request failed.");
            end

            val = logical(resp.payload.sim_running);
        end

        function [] = start_simulation(this)
            if this.connected ~= true
                error("Not connected.");
            end

            req.request = "set_sim_running";
            req.payload.sim_running_setval = true;

            resp = this.packet_exchange(req);

            if resp.response ~= "set_sim_running" || ~resp.payload.success
                error("Request failed.");
            end
        end

        function [] = stop_simulation(this)
            if this.connected ~= true
                error("Not connected.");
            end

            req.request = "set_sim_running";
            req.payload.sim_running_setval = false;

            resp = this.packet_exchange(req);

            if resp.response ~= "set_sim_running" || ~resp.payload.success
                error("Request failed.");
            end
        end

        function [] = reset_simulation(this)
            if ~this.connected
                error("Not connected.");
            end

            req.request = "do_sim_reset";
            req.payload = struct();

            resp = this.packet_exchange(req);

            if resp.response ~= "do_sim_reset" || ~resp.payload.success
                error("Request failed.");
            end
        end

        function [] = reset_adc_calib(this)
            if ~this.connected
                error("Not connected.");
            end

            req.request = "reset_adc_calib";
            req.payload = struct();

            resp = this.packet_exchange(req);

            if resp.response ~= "reset_adc_calib" || ~resp.payload.success
                error("Request failed.");
            end
        end

        function [] = set_adc_calib(this, adc0_offset, adc0_factor, adc1_offset, adc1_factor)
            if ~this.connected
                error("Not connected.");
            end

            req.request = "set_adc_calib";
            req.payload = struct();

            if ~isnan(adc0_offset)
                req.payload.adc0_offset = adc0_offset;
            end
            if ~isnan(adc0_factor)
                req.payload.adc0_factor = adc0_factor;
            end
            if ~isnan(adc1_offset)
                req.payload.adc1_offset = adc1_offset;
            end
            if ~isnan(adc1_factor)
                req.payload.adc1_factor = adc1_factor;
            end

            resp = this.packet_exchange(req);

            if resp.response ~= "set_adc_calib" || ~resp.payload.success
                error("Request failed.");
            end
        end

        function [adc0_offset, adc0_factor, adc1_offset, adc1_factor] = get_adc_calib(this)
            if ~this.connected
                error("Not connected.");
            end

            req.request = "get_adc_calib";
            req.payload = struct();

            resp = this.packet_exchange(req);

            if resp.response ~= "get_adc_calib" || ~resp.payload.success
                error("Request failed.");
            end

            adc0_offset = resp.payload.adc0_offset;
            adc0_factor = resp.payload.adc0_factor;
            adc1_offset = resp.payload.adc1_offset;
            adc1_factor = resp.payload.adc1_factor;
        end

        function [] = do_input_zero_calib(this)
            if ~this.connected
                error("Not connected.");
            end

            req.request = "do_adc_zero_calib";
            req.payload = struct();

            resp = this.packet_exchange(req);

            if resp.response ~= "do_adc_zero_calib" || ~resp.payload.success
                error("Request failed.");
            end
        end

        function [adc0_value, adc1_value] = read_adc_values(this)
            if ~this.connected
                error("Not connected.");
            end

            req.request = "read_adc";
            req.payload = struct();

            resp = this.packet_exchange(req);

            if resp.response ~= "read_adc" || ~resp.payload.success
                error("Request failed");
            end

            adc0_value = resp.payload.adc0_value;
            adc1_value = resp.payload.adc1_value;
        end

        function [] = reset_dac_calib(this)
            if ~this.connected
                error("Not connected.");
            end

            req.request = "reset_dac_calib";
            req.payload = struct();

            resp = this.packet_exchange(req);

            if resp.response ~= "reset_dac_calib" || ~resp.payload.success
                error("Request failed.");
            end
        end

        function [] = set_dac_calib(this, dac0_offset, dac0_factor, dac1_offset, dac1_factor)
            if ~this.connected
                error("Not connected.");
            end

            req.request = "set_dac_calib";
            req.payload = struct();

            if ~isnan(dac0_offset)
                req.payload.dac0_offset = dac0_offset;
            end
            if ~isnan(dac0_factor)
                req.payload.dac0_factor = dac0_factor;
            end
            if ~isnan(dac1_offset)
                req.payload.dac1_offset = dac1_offset;
            end
            if ~isnan(dac1_factor)
                req.payload.dac1_factor = dac1_factor;
            end

            resp = this.packet_exchange(req);

            if resp.response ~= "set_dac_calib" || ~resp.payload.success
                error("Request failed.");
            end
        end

        function [dac0_offset, dac0_factor, dac1_offset, dac1_factor] = get_dac_calib(this)
            if ~this.connected
                error("Not connected.");
            end

            req.request = "get_dac_calib";
            req.payload = struct();

            resp = this.packet_exchange(req);

            if resp.response ~= "get_dac_calib" || ~resp.payload.success
                error("Request failed.");
            end

            dac0_offset = resp.payload.dac0_offset;
            dac0_factor = resp.payload.dac0_factor;
            dac1_offset = resp.payload.dac1_offset;
            dac1_factor = resp.payload.dac1_factor;
        end

        function [] = set_nlfsw_iomask(this, iomask)
            if ~this.connected
                error("Not connected.");
            end

            req.request = "set_nlfsw_iomask";
            req.payload = struct();
            req.payload.iomask = iomask;

            resp = this.packet_exchange(req);

            if resp.response ~= "set_nlfsw_iomask" || ~resp.payload.success
                error("Request failed.");
            end
        end

        function [iomask] = get_nlfsw_iomask(this)
            if ~this.connected
                error("Not connected.");
            end

            req.request = "get_nlfsw_iomask";
            req.payload = struct();
            
            resp = this.packet_exchange(req);

            if resp.response ~= "get_nlfsw_iomask" || ~resp.payload.success
                error("Request failed.");
            end

            iomask = resp.payload.iomask;
        end

        function [] = set_nlfsw_sel(this, sel_mask)
            if ~this.connected
                error("Not connected.");
            end

            req.request = "set_nlfsw_sel";
            req.payload = struct();
            req.payload.sel = sel_mask;

            resp = this.packet_exchange(req);

            if resp.response ~= "set_nlfsw_sel" || ~resp.payload.success
                error("Request failed.");
            end
        end

        function [sel_mask] = get_nlfsw_sel(this)
            if ~this.connected
                error("Not connected.");
            end

            req.request = "get_nlfsw_sel";
            req.payload = struct();
            
            resp = this.packet_exchange(req);

            if resp.response ~= "get_nlfsw_sel" || ~resp.payload.success
                error("Request failed.");
            end

            sel_mask = resp.payload.sel;
        end

        function [current_sel] = get_nlfsw_current(this)
            if ~this.connected
                error("Not connected");
            end

            req.request = "get_nlfsw_current";
            req.payload = struct();

            resp = this.packet_exchange(req);

            if resp.response ~= "get_nlfsw_current" || ~resp.payload.success
                error("Request failed.");
            end

            current_sel = resp.payload.nlfsw_current;
        end

        function [] = configure_daq(this, num_frames, frame_stride, channel_mask, use_hw_trigger)
            if ~this.connected
                error("Not connected");
            end

            req = struct();
            req.request = "configure_daq";
            req.payload = struct();
            req.payload.num_frames = num_frames;
            req.payload.frame_stride = frame_stride;
            req.payload.channel_mask = channel_mask;
            req.payload.trigger = use_hw_trigger;

            resp = this.packet_exchange(req);

            if resp.response ~= "configure_daq" || ~resp.payload.success
                error("Request failed.");
            end
        end

        function [] = prime_daq(this)
            if ~this.connected
                error("Not connected");
            end

            req = struct();
            req.request = "prime_daq";
            req.payload = struct();

            resp = this.packet_exchange(req);

            if resp.response ~= "prime_daq" || ~resp.payload.success
                error("Request failed.");
            end
        end

        function [finished] = is_daq_finished(this)
            if ~this.connected
                error("Not connected");
            end

            req = struct();
            req.request = "check_finished_daq";
            req.payload = struct();

            resp = this.packet_exchange(req);

            if resp.response ~= "check_finished_daq" || ~resp.payload.success
                error("Request failed.");
            end

            finished = resp.payload.daq_finished;
        end

        function [success] = wait_finished(this, timeout_sec)
            interval_dt = 0.5;
            elapsed_intervals = 0;
            timeout_intervals = timeout_sec / interval_dt;

            while elapsed_intervals < timeout_intervals
                finished = this.is_daq_finished();
                if finished
                    success = true;
                    return;
                end
                pause(interval_dt);
                fprintf("Waiting for DAQ finished... (Elapsed time: %.2f / %.2f)\n", elapsed_intervals*interval_dt, timeout_sec);
                elapsed_intervals = elapsed_intervals + 1;
            end

            success = false;
        end

        function [data] = read_daq_data(this, offset, length)
            if ~this.connected
                error("Not connected");
            end

            req = struct();
            req.request = "send_daq_data";
            req.payload = struct();
            req.payload.offset = offset;
            req.payload.length = length;

            resp = this.packet_exchange(req);

            if resp.response ~= "send_daq_data" || ~resp.payload.success
                error("Request failed.");
            end

            % Receive response.
            data_sz_bytes = swapbytes(this.tcp_client.read(1, "uint32"));
            if data_sz_bytes == 0
                data = [];
                return;
            end
            data = this.tcp_client.read(data_sz_bytes/4, "uint32");
        end
    end

    methods (Access = private)

        function [receive_packet] = packet_exchange(this, send_packet)
            packet_json = jsonencode(send_packet);
            packet_payload_sz = length(packet_json);

            % Send the packet.
            this.tcp_client.write(swapbytes(uint32(packet_payload_sz)));
            this.tcp_client.write(packet_json);

            % Wait and receive response.
            resp_sz_bytes = swapbytes(this.tcp_client.read(1, "uint32"));
            resp_payload = this.tcp_client.read(resp_sz_bytes, "string");
            receive_packet = jsondecode(resp_payload);
        end

    end
end

