
classdef HILSimSlice < handle

    properties
        % Nonlinear feedback functions
        u_nlf (1,1) HILSimNLFunction;
        x_nlf (1,1) HILSimNLFunction;
        xdot_nlf (1,1) HILSimNLFunction;

        % u, x, xdot (factors)
        u_factor (1,1) double = 1;
        x_factor (1,1) double = 1;
        xdot_factor (1,1) double = 1;

        % x, xdot prescalers
        x_presc (1,1) double = 1;
        xdot_presc (1,1) double = 1;
        xdotdot_presc (1,1) double = 1;

        % Prescaling settings
        ignore_x_presc (1,1) uint8 = 0;
        ignore_xdot_presc (1,1) uint8 = 0;
        ignore_xdotdot_presc (1,1) uint8 = 0;
    end

    properties (Access = private)
        % Prescaling variables.
        xdd_max (1,1) double = 0;
        xd_max (1,1) double = 0;
        x_max (1,1) double = 0;
    end

    methods

        function [this] = HILSimSlice()
            this.u_nlf = HILSimNLFunction();
            this.x_nlf = HILSimNLFunction();
            this.xdot_nlf = HILSimNLFunction();
        end

        function [this] = reset_integration_scaling(this)
            this.xdd_max = 0;
            this.xd_max = 0;
            this.x_max = 0;
        end

        function [this] = update_integration_scaling(this, xdd_max, xd_max, x_max)
            this.xdd_max = max(this.xdd_max, xdd_max);
            this.xd_max = max(this.xd_max, xd_max);
            this.x_max = max(this.x_max, x_max);
        end

        function [val] = get_xdd_max(this)
            val = this.xdd_max;
        end

        function [val] = get_xd_max(this)
            val = this.xd_max;
        end

        function [val] = get_x_max(this)
            val = this.x_max;
        end

        function [bitshift, mul] = calculate_x_presc_params(this)
            bitshift = floor(log2(1/this.x_presc));
            mul = this.x_presc * (2^bitshift);
        end

        function [bitshift, mul] = calculate_xdot_presc_params(this)
            bitshift = floor(log2(1/this.xdot_presc));
            mul = this.xdot_presc * (2^bitshift);
        end

        function [s] = export_slice(this, in_overrides, lut_size, dt)
            % Export the slice's double-model.
            s_dbl = this.export_slice_dbl(in_overrides, lut_size);

            % Convert model data to correct fixpoint datatypes.
            s.u_mux = uint64(s_dbl.u_mux);
            s.u_gain = fi(s_dbl.u_gain, dt.const);
            s.u_nlf.presc = fi(s_dbl.u_nlf.presc, dt.const);
            s.u_nlf.gain = fi(s_dbl.u_nlf.gain, dt.const);
            s.u_nlf.lut = fi(s_dbl.u_nlf.lut, dt.nlf);
            s.u_nlf.lut_alternate = fi(s_dbl.u_nlf.lut_alternate, dt.nlf);

            s.x_mux = uint64(s_dbl.x_mux);
            s.x_gain = fi(s_dbl.x_gain, dt.const);
            s.x_nlf.presc = fi(s_dbl.x_nlf.presc, dt.const);
            s.x_nlf.gain = fi(s_dbl.x_nlf.gain, dt.const);
            s.x_nlf.lut = fi(s_dbl.x_nlf.lut, dt.nlf);
            s.x_nlf.lut_alternate = fi(s_dbl.x_nlf.lut_alternate, dt.nlf);

            s.xd_mux = uint64(s_dbl.xd_mux);
            s.xd_gain = fi(s_dbl.xd_gain, dt.const);
            s.xd_nlf.presc = fi(s_dbl.xd_nlf.presc, dt.const);
            s.xd_nlf.gain = fi(s_dbl.xd_nlf.gain, dt.const);
            s.xd_nlf.lut = fi(s_dbl.xd_nlf.lut, dt.nlf);
            s.xd_nlf.lut_alternate = fi(s_dbl.xd_nlf.lut_alternate, dt.nlf);
            
            s.x_presc_bitshift = s_dbl.x_presc_bitshift;
            s.x_presc_mul = fi(s_dbl.x_presc_mul, dt.const);
            s.xd_presc_bitshift = s_dbl.xd_presc_bitshift;
            s.xd_presc_mul = fi(s_dbl.xd_presc_mul, dt.const);
        end

        function [s] = export_slice_dbl(this, in_overrides, lut_size)
            % MUX-Config: 0 = Use NLF, 1 = NLF bypass

            GAIN_SPLIT_UPPER_BOUND = 10;
            GAIN_SPLIT_LOWER_BOUND = 0.1;

            % u-NLF
            if this.u_nlf.get_bypass()
                s.u_mux = 1; % NLF bypass
                s.u_gain = in_overrides.fac_u; %this.u_factor * this.xdotdot_presc;
                s.u_nlf.presc = 0;
                s.u_nlf.gain = 0;
                s.u_nlf.lut = zeros(lut_size, 1);
                s.u_nlf.lut_alternate = zeros(lut_size, 1);
            else
                s.u_mux = 0; % NLF used
                [~, total_gain, lut, lut_alternate] = this.u_nlf.export_nlf_params(1.0, this.xdotdot_presc * this.u_factor, lut_size);
                s.u_nlf.presc = in_overrides.fac_u; %presc; Presc is calculated by input scaling optimizer.
                s.u_nlf.lut = lut;
                s.u_nlf.lut_alternate = lut_alternate;
                % Split total gain between two multiplications to gain
                % numerical advantage.
                if abs(total_gain) < GAIN_SPLIT_UPPER_BOUND && abs(total_gain) > GAIN_SPLIT_LOWER_BOUND
                    s.u_nlf.gain = total_gain;
                    s.u_gain = 1;
                else
                    s.u_nlf.gain = sqrt(abs(total_gain));
                    s.u_gain = sqrt(abs(total_gain)) * sign(total_gain);
                end
            end

            % xdot-NLF
            if this.xdot_nlf.get_bypass()
                s.xd_mux = 1; % NLF bypass
                s.xd_gain = this.xdot_factor / this.xdot_presc;
                s.xd_nlf.presc = 0;
                s.xd_nlf.gain = 0;
                s.xd_nlf.lut = zeros(lut_size, 1);
                s.xd_nlf.lut_alternate = zeros(lut_size, 1);
            else
                s.xd_mux = 0; % NLF used
                [presc, total_gain, lut, lut_alternate] = this.xdot_nlf.export_nlf_params(1/(this.xdotdot_presc * this.xdot_presc), this.xdotdot_presc * this.xdot_factor, lut_size);
                s.xd_nlf.presc = presc;
                s.xd_nlf.lut = lut;
                s.xd_nlf.lut_alternate = lut_alternate;
                % Split total gain between two multiplications to gain
                % numerical advantage.
                if abs(total_gain) < GAIN_SPLIT_UPPER_BOUND && abs(total_gain) > GAIN_SPLIT_LOWER_BOUND
                    s.xd_nlf.gain = total_gain;
                    s.xd_gain = 1;
                else
                    s.xd_nlf.gain = sqrt(abs(total_gain));
                    s.xd_gain = sqrt(abs(total_gain)) * sign(total_gain);
                end
            end

            % x-NLF
            if this.x_nlf.get_bypass()
                s.x_mux = 1; % NLF bypass
                s.x_gain = this.x_factor / (this.xdot_presc * this.x_presc);
                s.x_nlf.presc = 0;
                s.x_nlf.gain = 0;
                s.x_nlf.lut = zeros(lut_size, 1);
                s.x_nlf.lut_alternate = zeros(lut_size, 1);
            else
                s.x_mux = 0; % NLF used
                [presc, total_gain, lut, lut_alternate] = this.x_nlf.export_nlf_params(1/(this.xdotdot_presc * this.xdot_presc * this.x_presc), this.xdotdot_presc * this.x_factor, lut_size);
                s.x_nlf.presc = presc;
                s.x_nlf.lut = lut;
                s.x_nlf.lut_alternate = lut_alternate;
                % Split total gain between two multiplications to gain
                % numerical advantage.
                if abs(total_gain) < GAIN_SPLIT_UPPER_BOUND && abs(total_gain) > GAIN_SPLIT_LOWER_BOUND
                    s.x_nlf.gain = total_gain;
                    s.x_gain = 1;
                else
                    s.x_nlf.gain = sqrt(abs(total_gain));
                    s.x_gain = sqrt(abs(total_gain)) * sign(total_gain);
                end
            end

            % Calculate and set the x/xdot prescaler parameters.
            [s.x_presc_bitshift,  x_presc_mul ] = this.calculate_x_presc_params();
            [s.xd_presc_bitshift, xd_presc_mul] = this.calculate_xdot_presc_params();
            s.x_presc_mul = x_presc_mul;
            s.xd_presc_mul = xd_presc_mul;

        end

    end

end