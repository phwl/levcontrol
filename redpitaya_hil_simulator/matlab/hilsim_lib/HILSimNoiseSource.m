
classdef HILSimNoiseSource < handle
    
    properties
        % Source noise power (variance of gaussian noise)
        noise_pwr (1,1) double = 1.0;
    end

    methods

        function [this] = HILSimNoiseSource()
            this.noise_pwr = 1;
        end

        function [] = set_noise_power(this, noise_pwr)
            this.noise_pwr = noise_pwr;
        end

        function [noise_presc_factor] = get_noise_presc_factor(this)
            noise_presc_factor = sqrt(this.noise_pwr / 4);
        end

    end
end