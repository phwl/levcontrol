classdef HILSimOutputSlice < handle

    properties
        % Linear factors of output slice
        linear_factors (1,3) double;
        % Nonlinear transfer functions for processing slice outputs.
        output_nlfs (1,3) HILSimNLFunction;
        % MUX selection table for x/xdot of processing slice outputs.
        x_xdot_selectors (1,3) string;
    end
    
    methods
        
        function [this] = HILSimOutputSlice()
            this.linear_factors = zeros(1,3);
            for i = 1:3
                this.output_nlfs(i) = HILSimNLFunction();
                this.x_xdot_selectors(i) = "x";
            end
        end

        function [xsel_value] = get_xsel_value(this, index)
            if this.x_xdot_selectors(index) == "x"
                xsel_value = 0;
            elseif this.x_xdot_selectors(index) == "xdot"
                xsel_value = 1;
            elseif this.x_xdot_selectors(index) == "xdotdot"
                xsel_value = 2;
            else
                xsel_value = 0;
            end
        end

    end
end

