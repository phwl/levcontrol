
classdef HILSimNLFunction < handle
    properties (Access = private)
        bypass;
        func;
        func_alternate;
        in_max;
        out_max;
    end

    methods
        function [this] = HILSimNLFunction()
            % By default, all functions are bypassed.
            this.bypass = true;
            this.func = NaN;
            this.func_alternate = NaN;

            this.in_max = 0;
            this.out_max = 0;
        end

        function [] = set_func(this,func)
            this.bypass = false;
            this.func = func;
        end

        function [] = set_func_alternate(this,func_alternate)
            if ~isa(this.func, "function_handle")
                error("Cannot set the alternate function for this NLF before setting the primary function.");
            end
            this.func_alternate = func_alternate;
        end

        function [] = clear_func_alternate(this)
            this.func_alternate = NaN;
        end

        function [] = set_bypass(this)
            this.bypass = true;
            this.func = NaN;
            this.func_alternate = NaN;
        end

        function [val] = get_bypass(this)
            val = this.bypass;
        end

        function [] = reset_max_vals(this)
            this.in_max = 0;
            this.out_max = 0;
        end

        function [] = update_max_vals(this, in_max, out_max)
            this.in_max = max(this.in_max, in_max);
            this.out_max = max(this.out_max, out_max);
        end

        function [in_max] = get_in_max(this)
            in_max = this.in_max;
        end

        function [out_max] = get_out_max(this)
            out_max = this.out_max;
        end

        function [presc, gain, nlf_xrange, nlf_yrange] = calculate_presc_gain(this, input_scaling, output_scaling)
            nlf_xrange = this.in_max * 1.7; % Factor TBD
            presc = input_scaling / nlf_xrange;

            nlf_xrange_lsp = linspace(-nlf_xrange, nlf_xrange, 10000);
            if ~isa(this.func_alternate, "function_handle")
                % Alternate NLF is disabled.
                nlf_yrange = max(abs(this.func(nlf_xrange_lsp)));
            else
                % Also take into account the y-range of the alternate NLF.
                nlf_yrange = max([abs(this.func(nlf_xrange_lsp)), abs(this.func_alternate(nlf_xrange_lsp))]);
            end
            gain = output_scaling * nlf_yrange;
        end

        function [presc, gain, nlf_lut, nlf_lut_alternate] = export_nlf_params(this, input_scaling, output_scaling, lut_size)
            [presc, gain, nlf_xrange, nlf_yrange] = this.calculate_presc_gain(input_scaling, output_scaling);
            
            % Calculate LUT values for NLF.
            nlf_lut = zeros(lut_size, 1);
            nlf_lut_alternate = zeros(lut_size, 1);
            for addr = 0:(lut_size-1)
                idx = addr;
                if idx >= lut_size/2
                    idx = idx - lut_size;
                end
            
                % Calculate x-value.
                value = idx / (lut_size/2) * nlf_xrange;
            
                % Calculate scaled y-value.
                nlf_lut(addr+1) = this.func(value) / nlf_yrange;
                
                if isa(this.func_alternate, "function_handle")
                    nlf_lut_alternate(addr+1) = this.func_alternate(value) / nlf_yrange;
                end
            end            
        end

        function [nlf_opts] = export_nlf_params_structured_dbl(this, input_scaling, output_scaling, lut_size)
            if this.get_bypass()
                nlf_opts.enabled = 0;
                nlf_opts.presc = 0;
                nlf_opts.gain = 0;
                nlf_opts.lut = zeros(lut_size, 1);
            else
                [presc, gain, lut] = this.export_nlf_params(input_scaling, output_scaling, lut_size);
                nlf_opts.enabled = 1;
                nlf_opts.presc = presc;
                nlf_opts.gain = gain;
                nlf_opts.lut = lut;
            end
        end

        function [nlf_opts] = export_nlf_params_structured_fixpt(this, input_scaling, output_scaling, lut_size, dt)
            if this.get_bypass()
                nlf_opts.enabled = uint64(0);
                nlf_opts.presc = fi(0, dt.const);
                nlf_opts.gain = fi(0, dt.const);
                nlf_opts.lut = fi(zeros(lut_size, 1), dt.nlf);
            else
                [presc, gain, lut] = this.export_nlf_params(input_scaling, output_scaling, lut_size);
                nlf_opts.enabled = uint64(1);
                nlf_opts.presc = fi(presc, dt.const);
                nlf_opts.gain = fi(gain, dt.const);
                nlf_opts.lut = fi(lut, dt.nlf);
            end
        end

        function [f] = get_func(this)
            if this.bypass
                f = @(x) x;
            else
                f = this.func;
            end
        end

        function [f] = get_func_alternate(this)
            if this.bypass
                f = @(x) x;
            elseif ~isa(this.func_alternate, "function_handle")
                f = @(x) 0;
            else
                f = this.func_alternate;
            end
        end
    end
end