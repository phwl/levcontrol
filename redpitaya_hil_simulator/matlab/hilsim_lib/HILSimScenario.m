classdef HILSimScenario < handle & matlab.mixin.Copyable
    
    properties
        in_signals;
        sim_time;
        nlf_alternate_switch;
    end
    
    methods
        
        function [this] = HILSimScenario(in_signals, sim_time)
            this.in_signals = in_signals;
            this.sim_time = sim_time;

            this.nlf_alternate_switch.slice0.u_nlf = 0;
            this.nlf_alternate_switch.slice1.u_nlf = 0;
            this.nlf_alternate_switch.slice2.u_nlf = 0;
            this.nlf_alternate_switch.slice0.x_nlf = 0;
            this.nlf_alternate_switch.slice1.x_nlf = 0;
            this.nlf_alternate_switch.slice2.x_nlf = 0;
            this.nlf_alternate_switch.slice0.xdot_nlf = 0;
            this.nlf_alternate_switch.slice1.xdot_nlf = 0;
            this.nlf_alternate_switch.slice2.xdot_nlf = 0;
        end

    end
end

