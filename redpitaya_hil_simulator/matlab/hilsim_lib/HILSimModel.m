
classdef HILSimModel < handle

    properties
        % Input NLFs
        input_nlfs (2,1) HILSimNLFunction;
        % Noise sources
        noise_sources (3,1) HILSimNoiseSource;
        % Input matrix.
        input_matrix (1,1) HILSimInputMatrix;
        % Ouptut slices
        output_slices (1,2) HILSimOutputSlice;

        % Slice configurations
        slices (3,1) HILSimSlice;
    end

    properties (Access = private)
        % Compiled models.
        tc_model (1,1) = NaN;
        td_model (1,1) = NaN;
        tdfp_model (1,1) = NaN;
        tddbl_model (1,1) = NaN;

        % Compilation done flag.
        compilation_done (1,1) = false;
    end

    methods
        function [this] = HILSimModel()
            for i = 1:2
                this.input_nlfs(i) = HILSimNLFunction();
                this.output_slices(i) = HILSimOutputSlice();
            end

            for i = 1:3
                this.noise_sources(i) = HILSimNoiseSource();
                this.slices(i) = HILSimSlice();
            end

            this.input_matrix = HILSimInputMatrix();
        end

        function [] = compile(this, scenarios, enable_noise)

            if ~exist("enable_noise", "var")
                enable_noise = false;
            end

            fprintf("[HILSim] Started model compilation (enable_noise=%d)...\n", enable_noise);

            % Build double precision models.
            this.tc_model = this.export_ct_sim_model();
            this.td_model = this.export_td_sim_model();

            % Initialize the time-discrete fixpoint model.

            % Reset scaling values of the slices.
            for i = 1:3
                this.slices(i).xdotdot_presc = 1.0;
                this.slices(i).xdot_presc = 1.0;
                this.slices(i).x_presc = 1.0;
            end

            % Calculate scaling report + max-values.
            this.do_scaling_report(scenarios, "Scaling report before integration variable renormalization (time discrete, double precision)", enable_noise);

            % Do integration variable renormalization
            target_scale = 2;
            fprintf("[HILSim] Applying integration variable renormalization...\n");
            for i = 1:3
                if this.slices(i).get_xdd_max() > eps && ~this.slices(i).ignore_xdotdot_presc
                    this.slices(i).xdotdot_presc = target_scale / this.slices(i).get_xdd_max();
                else
                    this.slices(i).xdotdot_presc = 1.0;
                end

                if this.slices(i).get_x_max() > eps && this.slices(i).get_xd_max() > eps && ~this.slices(i).ignore_x_presc
                    this.slices(i).x_presc = this.slices(i).get_xd_max() / this.slices(i).get_x_max();
                else
                    this.slices(i).x_presc = 1.0;
                end

                if this.slices(i).get_xd_max() > eps && this.slices(i).get_xdd_max() > eps && ~this.slices(i).ignore_xdot_presc
                    this.slices(i).xdot_presc = this.slices(i).get_xdd_max() / this.slices(i).get_xd_max();
                else
                    this.slices(i).xdot_presc = 1.0;
                end
            end

            fprintf("[HILSim] Integration variable renormalization report:\n");
            for i = 1:3
                [x_bs, x_mul] = this.slices(i).calculate_x_presc_params();
                [xd_bs, xd_mul] = this.slices(i).calculate_xdot_presc_params();
                fprintf("\t%-20s %s\n", sprintf("slice%d", i), sprintf("xdotdot_presc=%04e", this.slices(i).xdotdot_presc));
                fprintf("\t%-20s %s\n", "", sprintf("xdot_presc=%04e (sh=%d mul=%.4f)", this.slices(i).xdot_presc, -xd_bs, xd_mul));
                fprintf("\t%-20s %s\n\n", "", sprintf("x_presc=%04e (sh=%d mul=%.4f)", this.slices(i).x_presc, -x_bs, x_mul));
            end

            % Do post-adjustment / scaled simulation
            this.do_scaling_report(scenarios, "Scaling report after integration variable renormalization (time discrete, double precision)", enable_noise);

            % Export the time-discrete fixpoint model.
            m = this.export_model();
            this.tdfp_model = m;
            this.tddbl_model = this.export_model_dbl();
            
            fprintf("[HILSim] Running post-implementation simulation...\n");
            for i = 1:length(scenarios)
                fprintf("[HILSim] Inspecting scenario %d...\n", i);

                sim_out = this.do_sim_tdfp(m, scenarios(i), enable_noise);

                % Do a scaling/magnitude report.
                fprintf("[HILSim] Post-implementation report for scenario %d:\n\n", i);

                COL_WIDTH = 20;
                SEPARATOR = "--------------------";
                FMT_TEMPLATE = sprintf("\\t%%-%ds  %%-%ds  %%-%ds\\n", COL_WIDTH, COL_WIDTH, COL_WIDTH);

                fprintf(FMT_TEMPLATE, "Signal", "Max. Magnitude", "");
                fprintf(FMT_TEMPLATE, SEPARATOR, SEPARATOR, "");
                fprintf(FMT_TEMPLATE, "adc0", sprintf("%04e", max(abs(scenarios(i).in_signals(1,1,:)))), "");
                fprintf(FMT_TEMPLATE, "adc1", sprintf("%04e", max(abs(scenarios(i).in_signals(2,1,:)))), "");
                fprintf(FMT_TEMPLATE, "adc0_nlf_out", sprintf("%04e", max(abs(sim_out.adc0_nlf_out.Data))), "");
                fprintf(FMT_TEMPLATE, "adc1_nlf_out", sprintf("%04e", max(abs(sim_out.adc1_nlf_out.Data))), "");

                fprintf(FMT_TEMPLATE, "slice0/u", sprintf("%04e", max(abs(sim_out.u0.Data))), "");
                fprintf(FMT_TEMPLATE, "slice0/x", sprintf("%04e", max(abs(sim_out.x0.Data))), "");
                fprintf(FMT_TEMPLATE, "slice0/xdot", sprintf("%04e", max(abs(sim_out.xd0.Data))), "");
                fprintf(FMT_TEMPLATE, "slice0/xdotdot", sprintf("%04e", max(abs(sim_out.xdd0.Data))), "");

                fprintf(FMT_TEMPLATE, "slice1/u", sprintf("%04e", max(abs(sim_out.u1.Data))), "");
                fprintf(FMT_TEMPLATE, "slice1/x", sprintf("%04e", max(abs(sim_out.x1.Data))), "");
                fprintf(FMT_TEMPLATE, "slice1/xdot", sprintf("%04e", max(abs(sim_out.xd1.Data))), "");
                fprintf(FMT_TEMPLATE, "slice1/xdotdot", sprintf("%04e", max(abs(sim_out.xdd1.Data))), "");

                fprintf(FMT_TEMPLATE, "slice2/u", sprintf("%04e", max(abs(sim_out.u2.Data))), "");
                fprintf(FMT_TEMPLATE, "slice2/x", sprintf("%04e", max(abs(sim_out.x2.Data))), "");
                fprintf(FMT_TEMPLATE, "slice2/xdot", sprintf("%04e", max(abs(sim_out.xd2.Data))), "");
                fprintf(FMT_TEMPLATE, "slice2/xdotdot", sprintf("%04e", max(abs(sim_out.xdd2.Data))), "");

                fprintf(FMT_TEMPLATE, "dac0", sprintf("%04e", max(abs(sim_out.dac0.Data))), "");
                fprintf(FMT_TEMPLATE, "dac1", sprintf("%04e", max(abs(sim_out.dac1.Data))), "");

                fprintf("\n");
            end

            % Compilation is done.
            this.compilation_done = true;

            fprintf("[HILSim] Model compilation done.\n");
        end

        function [out_signals] = sim_tc(this, scenario, enable_noise)
            if ~exist("enable_noise", "var")
                enable_noise = true;
            end
            
            % Check time continuous model is present.
            if this.compilation_done == false
                error("The model needs to be compiled before simulation.");
            end

            sim_out = this.do_sim_tc(this.tc_model, scenario, enable_noise);
            out_signals = [sim_out.dac0; sim_out.dac1];
        end

        function [out_signals] = sim_td(this, scenario, enable_noise)
            if ~exist("enable_noise", "var")
                enable_noise = true;
            end

            % Check time discrete/continuous model is present.
            if this.compilation_done == false
                error("The model needs to be compiled before simulation.");
            end

            sim_out = this.do_sim_tddbl(this.td_model, scenario, enable_noise);
            out_signals = [sim_out.dac0; sim_out.dac1];
        end

        function [out_signals] = sim_tdfp(this, scenario, enable_noise)
            if ~exist("enable_noise", "var")
                enable_noise = true;
            end
            
            % Check model was compiled.
            if this.compilation_done == false
                error("The model needs to be compiled before simulation.");
            end

            sim_out = this.do_sim_tdfp(this.tdfp_model, scenario, enable_noise);
            out_signals = [sim_out.dac0; sim_out.dac1];
        end

        function [out_signals] = sim_hwimpl(this, scenario)
            % Check model was compiled.
            if this.compilation_done == false
                error("The model needs to be compiled before simulation.");
            end

            sim_out = this.do_sim_hwimpl(this.tddbl_model, scenario);
            out_signals = [sim_out.dac0; sim_out.dac1];
        end

        function [tdfp_model] = get_tdfp_model(this)
            % Check model was compiled.
            if this.compilation_done == false
                error("The model needs to be compiled first.");
            end

            tdfp_model = this.tdfp_model;
        end

        function [export] = export_hwconfig(this)
            % Configuration Name
            export.name = "Particle Matlab-Model Export";
            
            % SLICE 0
            slice0.x_enable_nlf = this.tdfp_model.slice0.x_mux;
            slice0.x_gain = fixpt_to_repr(this.tdfp_model.slice0.x_gain);
            slice0.x_nlf_presc = fixpt_to_repr(this.tdfp_model.slice0.x_nlf.presc);
            slice0.x_nlf_gain = fixpt_to_repr(this.tdfp_model.slice0.x_nlf.gain);
            slice0.x_nlf_lut_0 = fixpt_to_repr(this.tdfp_model.slice0.x_nlf.lut);
            slice0.x_nlf_lut_1 = fixpt_to_repr(this.tdfp_model.slice0.x_nlf.lut_alternate);
            
            slice0.xd_enable_nlf = this.tdfp_model.slice0.xd_mux;
            slice0.xd_gain = fixpt_to_repr(this.tdfp_model.slice0.xd_gain);
            slice0.xd_nlf_presc = fixpt_to_repr(this.tdfp_model.slice0.xd_nlf.presc);
            slice0.xd_nlf_gain = fixpt_to_repr(this.tdfp_model.slice0.xd_nlf.gain);
            slice0.xd_nlf_lut_0 = fixpt_to_repr(this.tdfp_model.slice0.xd_nlf.lut);
            slice0.xd_nlf_lut_1 = fixpt_to_repr(this.tdfp_model.slice0.xd_nlf.lut_alternate);
            
            slice0.u_enable_nlf = this.tdfp_model.slice0.u_mux;
            slice0.u_gain = fixpt_to_repr(this.tdfp_model.slice0.u_gain);
            slice0.u_nlf_presc = fixpt_to_repr(this.tdfp_model.slice0.u_nlf.presc);
            slice0.u_nlf_gain = fixpt_to_repr(this.tdfp_model.slice0.u_nlf.gain);
            slice0.u_nlf_lut_0 = fixpt_to_repr(this.tdfp_model.slice0.u_nlf.lut);
            slice0.u_nlf_lut_1 = fixpt_to_repr(this.tdfp_model.slice0.u_nlf.lut_alternate);
            
            slice0.x_presc_shift = -this.tdfp_model.slice0.x_presc_bitshift;
            slice0.x_presc_mul = fixpt_to_repr(this.tdfp_model.slice0.x_presc_mul);
            slice0.xd_presc_shift = -this.tdfp_model.slice0.xd_presc_bitshift;
            slice0.xd_presc_mul = fixpt_to_repr(this.tdfp_model.slice0.xd_presc_mul);
            
            % SLICE 1
            slice1.x_enable_nlf = this.tdfp_model.slice1.x_mux;
            slice1.x_gain = fixpt_to_repr(this.tdfp_model.slice1.x_gain);
            slice1.x_nlf_presc = fixpt_to_repr(this.tdfp_model.slice1.x_nlf.presc);
            slice1.x_nlf_gain = fixpt_to_repr(this.tdfp_model.slice1.x_nlf.gain);
            slice1.x_nlf_lut_0 = fixpt_to_repr(this.tdfp_model.slice0.x_nlf.lut);
            slice1.x_nlf_lut_1 = fixpt_to_repr(this.tdfp_model.slice0.x_nlf.lut_alternate);
            
            slice1.xd_enable_nlf = this.tdfp_model.slice1.xd_mux;
            slice1.xd_gain = fixpt_to_repr(this.tdfp_model.slice1.xd_gain);
            slice1.xd_nlf_presc = fixpt_to_repr(this.tdfp_model.slice1.xd_nlf.presc);
            slice1.xd_nlf_gain = fixpt_to_repr(this.tdfp_model.slice1.xd_nlf.gain);
            slice1.xd_nlf_lut_0 = fixpt_to_repr(this.tdfp_model.slice1.xd_nlf.lut);
            slice1.xd_nlf_lut_1 = fixpt_to_repr(this.tdfp_model.slice1.xd_nlf.lut_alternate);
            
            slice1.u_enable_nlf = this.tdfp_model.slice1.u_mux;
            slice1.u_gain = fixpt_to_repr(this.tdfp_model.slice1.u_gain);
            slice1.u_nlf_presc = fixpt_to_repr(this.tdfp_model.slice1.u_nlf.presc);
            slice1.u_nlf_gain = fixpt_to_repr(this.tdfp_model.slice1.u_nlf.gain);
            slice1.u_nlf_lut_0 = fixpt_to_repr(this.tdfp_model.slice1.u_nlf.lut);
            slice1.u_nlf_lut_1 = fixpt_to_repr(this.tdfp_model.slice1.u_nlf.lut_alternate);
            
            slice1.x_presc_shift = -this.tdfp_model.slice1.x_presc_bitshift;
            slice1.x_presc_mul = fixpt_to_repr(this.tdfp_model.slice1.x_presc_mul);
            slice1.xd_presc_shift = -this.tdfp_model.slice1.xd_presc_bitshift;
            slice1.xd_presc_mul = fixpt_to_repr(this.tdfp_model.slice1.xd_presc_mul);
            
            % SLICE 2
            slice2.x_enable_nlf = this.tdfp_model.slice2.x_mux;
            slice2.x_gain = fixpt_to_repr(this.tdfp_model.slice2.x_gain);
            slice2.x_nlf_presc = fixpt_to_repr(this.tdfp_model.slice2.x_nlf.presc);
            slice2.x_nlf_gain = fixpt_to_repr(this.tdfp_model.slice2.x_nlf.gain);
            slice2.x_nlf_lut_0 = fixpt_to_repr(this.tdfp_model.slice2.x_nlf.lut);
            slice2.x_nlf_lut_1 = fixpt_to_repr(this.tdfp_model.slice2.x_nlf.lut_alternate);
            
            slice2.xd_enable_nlf = this.tdfp_model.slice2.xd_mux;
            slice2.xd_gain = fixpt_to_repr(this.tdfp_model.slice2.xd_gain);
            slice2.xd_nlf_presc = fixpt_to_repr(this.tdfp_model.slice2.xd_nlf.presc);
            slice2.xd_nlf_gain = fixpt_to_repr(this.tdfp_model.slice2.xd_nlf.gain);
            slice2.xd_nlf_lut_0 = fixpt_to_repr(this.tdfp_model.slice2.xd_nlf.lut);
            slice2.xd_nlf_lut_1 = fixpt_to_repr(this.tdfp_model.slice2.xd_nlf.lut_alternate);
            
            slice2.u_enable_nlf = this.tdfp_model.slice2.u_mux;
            slice2.u_gain = fixpt_to_repr(this.tdfp_model.slice2.u_gain);
            slice2.u_nlf_presc = fixpt_to_repr(this.tdfp_model.slice2.u_nlf.presc);
            slice2.u_nlf_gain = fixpt_to_repr(this.tdfp_model.slice2.u_nlf.gain);
            slice2.u_nlf_lut_0 = fixpt_to_repr(this.tdfp_model.slice2.u_nlf.lut);
            slice2.u_nlf_lut_1 = fixpt_to_repr(this.tdfp_model.slice2.u_nlf.lut_alternate);
            
            slice2.x_presc_shift = -this.tdfp_model.slice2.x_presc_bitshift;
            slice2.x_presc_mul = fixpt_to_repr(this.tdfp_model.slice2.x_presc_mul);
            slice2.xd_presc_shift = -this.tdfp_model.slice2.xd_presc_bitshift;
            slice2.xd_presc_mul = fixpt_to_repr(this.tdfp_model.slice2.xd_presc_mul);
            
            % Slices
            export.slices = [slice0 slice1 slice2];

            % Noise prescaler values.
            export.noise0_presc = fixpt_to_repr(this.tdfp_model.noise0_presc);
            export.noise1_presc = fixpt_to_repr(this.tdfp_model.noise1_presc);
            export.noise2_presc = fixpt_to_repr(this.tdfp_model.noise2_presc);

            % Input non-linear functions (adc0, adc1)
            export.adc0_nlf.enabled = this.tdfp_model.adc0_nlf.enabled;
            export.adc0_nlf.lut = fixpt_to_repr(this.tdfp_model.adc0_nlf.lut);
            export.adc0_nlf.presc = fixpt_to_repr(this.tdfp_model.adc0_nlf.presc);
            export.adc0_nlf.gain = fixpt_to_repr(this.tdfp_model.adc0_nlf.gain);
            export.adc1_nlf.enabled = this.tdfp_model.adc1_nlf.enabled;
            export.adc1_nlf.lut = fixpt_to_repr(this.tdfp_model.adc1_nlf.lut);
            export.adc1_nlf.presc = fixpt_to_repr(this.tdfp_model.adc1_nlf.presc);
            export.adc1_nlf.gain = fixpt_to_repr(this.tdfp_model.adc1_nlf.gain);

            % Input matrix
            export.input_matrix.fac_u0_adc0 = fixpt_to_repr(this.tdfp_model.inp_mat.fac_u0_adc0);
            export.input_matrix.fac_u0_adc1 = fixpt_to_repr(this.tdfp_model.inp_mat.fac_u0_adc1);
            export.input_matrix.fac_u0_noise = fixpt_to_repr(this.tdfp_model.inp_mat.fac_u0_noise);
            export.input_matrix.fac_u1_adc0 = fixpt_to_repr(this.tdfp_model.inp_mat.fac_u1_adc0);
            export.input_matrix.fac_u1_adc1 = fixpt_to_repr(this.tdfp_model.inp_mat.fac_u1_adc1);
            export.input_matrix.fac_u1_noise = fixpt_to_repr(this.tdfp_model.inp_mat.fac_u1_noise);
            export.input_matrix.fac_u2_adc0 = fixpt_to_repr(this.tdfp_model.inp_mat.fac_u2_adc0);
            export.input_matrix.fac_u2_adc1 = fixpt_to_repr(this.tdfp_model.inp_mat.fac_u2_adc1);
            export.input_matrix.fac_u2_noise = fixpt_to_repr(this.tdfp_model.inp_mat.fac_u2_noise);

            % Output matrix
            export.output_matrix.dac0_selx0 = this.tdfp_model.out_mat.dac0_selx0;
            export.output_matrix.dac0_selx1 = this.tdfp_model.out_mat.dac0_selx1;
            export.output_matrix.dac0_selx2 = this.tdfp_model.out_mat.dac0_selx2;
            export.output_matrix.fac_dac0_xx0 = fixpt_to_repr(this.tdfp_model.out_mat.fac_dac0_xx0);
            export.output_matrix.fac_dac0_xx1 = fixpt_to_repr(this.tdfp_model.out_mat.fac_dac0_xx1);
            export.output_matrix.fac_dac0_xx2 = fixpt_to_repr(this.tdfp_model.out_mat.fac_dac0_xx2);
            export.output_matrix.nlf_dac0_xx0.enabled = this.tdfp_model.out_mat.nlf_dac0_xx0.enabled;
            export.output_matrix.nlf_dac0_xx0.presc = fixpt_to_repr(this.tdfp_model.out_mat.nlf_dac0_xx0.presc);
            export.output_matrix.nlf_dac0_xx0.gain = fixpt_to_repr(this.tdfp_model.out_mat.nlf_dac0_xx0.gain);
            export.output_matrix.nlf_dac0_xx0.lut = fixpt_to_repr(this.tdfp_model.out_mat.nlf_dac0_xx0.lut);
            export.output_matrix.nlf_dac0_xx1.enabled = this.tdfp_model.out_mat.nlf_dac0_xx1.enabled;
            export.output_matrix.nlf_dac0_xx1.presc = fixpt_to_repr(this.tdfp_model.out_mat.nlf_dac0_xx1.presc);
            export.output_matrix.nlf_dac0_xx1.gain = fixpt_to_repr(this.tdfp_model.out_mat.nlf_dac0_xx1.gain);
            export.output_matrix.nlf_dac0_xx1.lut = fixpt_to_repr(this.tdfp_model.out_mat.nlf_dac0_xx1.lut);
            export.output_matrix.nlf_dac0_xx2.enabled = this.tdfp_model.out_mat.nlf_dac0_xx2.enabled;
            export.output_matrix.nlf_dac0_xx2.presc = fixpt_to_repr(this.tdfp_model.out_mat.nlf_dac0_xx2.presc);
            export.output_matrix.nlf_dac0_xx2.gain = fixpt_to_repr(this.tdfp_model.out_mat.nlf_dac0_xx2.gain);
            export.output_matrix.nlf_dac0_xx2.lut = fixpt_to_repr(this.tdfp_model.out_mat.nlf_dac0_xx2.lut);

            export.output_matrix.dac1_selx0 = this.tdfp_model.out_mat.dac1_selx0;
            export.output_matrix.dac1_selx1 = this.tdfp_model.out_mat.dac1_selx1;
            export.output_matrix.dac1_selx2 = this.tdfp_model.out_mat.dac1_selx2;
            export.output_matrix.fac_dac1_xx0 = fixpt_to_repr(this.tdfp_model.out_mat.fac_dac1_xx0);
            export.output_matrix.fac_dac1_xx1 = fixpt_to_repr(this.tdfp_model.out_mat.fac_dac1_xx1);
            export.output_matrix.fac_dac1_xx2 = fixpt_to_repr(this.tdfp_model.out_mat.fac_dac1_xx2);
            export.output_matrix.nlf_dac1_xx0.enabled = this.tdfp_model.out_mat.nlf_dac1_xx0.enabled;
            export.output_matrix.nlf_dac1_xx0.presc = fixpt_to_repr(this.tdfp_model.out_mat.nlf_dac1_xx0.presc);
            export.output_matrix.nlf_dac1_xx0.gain = fixpt_to_repr(this.tdfp_model.out_mat.nlf_dac1_xx0.gain);
            export.output_matrix.nlf_dac1_xx0.lut = fixpt_to_repr(this.tdfp_model.out_mat.nlf_dac1_xx0.lut);
            export.output_matrix.nlf_dac1_xx1.enabled = this.tdfp_model.out_mat.nlf_dac1_xx1.enabled;
            export.output_matrix.nlf_dac1_xx1.presc = fixpt_to_repr(this.tdfp_model.out_mat.nlf_dac1_xx1.presc);
            export.output_matrix.nlf_dac1_xx1.gain = fixpt_to_repr(this.tdfp_model.out_mat.nlf_dac1_xx1.gain);
            export.output_matrix.nlf_dac1_xx1.lut = fixpt_to_repr(this.tdfp_model.out_mat.nlf_dac1_xx1.lut);
            export.output_matrix.nlf_dac1_xx2.enabled = this.tdfp_model.out_mat.nlf_dac1_xx2.enabled;
            export.output_matrix.nlf_dac1_xx2.presc = fixpt_to_repr(this.tdfp_model.out_mat.nlf_dac1_xx2.presc);
            export.output_matrix.nlf_dac1_xx2.gain = fixpt_to_repr(this.tdfp_model.out_mat.nlf_dac1_xx2.gain);
            export.output_matrix.nlf_dac1_xx2.lut = fixpt_to_repr(this.tdfp_model.out_mat.nlf_dac1_xx2.lut);
        end

    end

    methods (Access = private)

        function [sim_out] = do_sim_hwimpl(this, tddbl_model, scenario)
            m = this.tdfp_model;
            tcm = this.tc_model;

            % System (anaproc) clock
            hw.f_s = 125e6 * 2;
            hw.t_s = 1/hw.f_s;
            hw.t_ns = hw.t_s * 1e9;
            
            % AXI clock
            hw.f_axi = 125e6;
            hw.t_axi = 1/hw.f_axi;
            hw.t_axi_ns = 1/hw.f_axi * 1e9;
            
            % ADC/DAC clock
            hw.f_adc = 125e6;
            hw.t_adc = 1/hw.f_adc;
            hw.t_adc_ns = 1/hw.f_adc * 1e9;
            
            hw.oversample = 36;

            % ADC/DAC datatype.
            dt.adc.sz = 14;
            dt.adc.bin = 12;
            
            % Accumulator datatype (used for integrator stage)
            dt.accum.sz = 47;
            dt.accum.bin = 39;
            
            % Slice state & input datatype.
            dt.slice.sz = 25;
            dt.slice.bin = 17;
            % Constant datatype (smaller so that DSP slices are optimally used)
            dt.const.sz = 18;
            dt.const.bin = 10;
            
            % Nonlinear function datatype.
            dt.nlf.sz = 16;
            dt.nlf.bin = 14;

            % DMA datatype.
            dt.dma.sz = 16;
            dt.dma.bin = 10;
            
            % Output datatype.
            dt.out.sz = 32;
            dt.out.bin = 24;

            % Setup NLF LUT-sizes.
            ip.f_nlf.lut_addr_bits = 10;
            ip.f_nlf.lut_sz = 2^ip.f_nlf.lut_addr_bits;

            ip.int_scale_bits = floor(log2(1/(hw.t_s * hw.oversample)));
            ip.int_dt_residual = (hw.t_s * hw.oversample) * 2^ip.int_scale_bits;

            threehalf_dt = (3/2) * hw.t_s * hw.oversample;
            ip.int_threehalf_dt_shift = floor(log2(1/threehalf_dt));
            ip.int_threehalf_dt_residual = threehalf_dt * 2^ip.int_threehalf_dt_shift;
            
            neghalf_dt = (1/2) * hw.t_s * hw.oversample;
            ip.int_neghalf_dt_shift = ip.int_threehalf_dt_shift; %floor(log2(1/abs(neghalf_dt)));
            ip.int_neghalf_dt_residual = neghalf_dt * 2^ip.int_neghalf_dt_shift;

            % AXI BUS A (0x8000_0000)
            ip.offsets.led = hex2dec("0000");
            ip.offsets.system_cfg = hex2dec("0010");
            ip.offsets.input_mat_cfg = hex2dec("0040");
            ip.offsets.output_mat_cfg = hex2dec("0080");
            ip.offsets.slice0_cfg = hex2dec("0100");
            ip.offsets.slice1_cfg = hex2dec("0140");
            ip.offsets.slice2_cfg = hex2dec("0180");
            ip.offsets.adc_nlf_cfg = hex2dec("01c0");
            
            % AXI BUS B (0x8000_0200)
            ip.offsets.calib = hex2dec("0000");
            ip.offsets.nlf_switch = hex2dec("0040");

            % NLF LUT Address Space Setup
            % Slice nonlinear functions.
            ip.nlfaddr.slice0_u0 = hex2dec("00");
            ip.nlfaddr.slice0_u1 = hex2dec("01");
            ip.nlfaddr.slice0_x0 = hex2dec("02");
            ip.nlfaddr.slice0_x1 = hex2dec("03");
            ip.nlfaddr.slice0_xd0 = hex2dec("04");
            ip.nlfaddr.slice0_xd1 = hex2dec("05");
            
            ip.nlfaddr.slice1_u0 = hex2dec("10");
            ip.nlfaddr.slice1_u1 = hex2dec("11");
            ip.nlfaddr.slice1_x0 = hex2dec("12");
            ip.nlfaddr.slice1_x1 = hex2dec("13");
            ip.nlfaddr.slice1_xd0 = hex2dec("14");
            ip.nlfaddr.slice1_xd1 = hex2dec("15");
            
            ip.nlfaddr.slice2_u0 = hex2dec("20");
            ip.nlfaddr.slice2_u1 = hex2dec("21");
            ip.nlfaddr.slice2_x0 = hex2dec("22");
            ip.nlfaddr.slice2_x1 = hex2dec("23");
            ip.nlfaddr.slice2_xd0 = hex2dec("24");
            ip.nlfaddr.slice2_xd1 = hex2dec("25");
            
            % Output Matrix.
            ip.nlfaddr.dac0_xx0 = hex2dec("30");
            ip.nlfaddr.dac0_xx1 = hex2dec("31");
            ip.nlfaddr.dac0_xx2 = hex2dec("32");
            ip.nlfaddr.dac1_xx0 = hex2dec("33");
            ip.nlfaddr.dac1_xx1 = hex2dec("34");
            ip.nlfaddr.dac1_xx2 = hex2dec("35");
            
            % Input Matrix.
            ip.nlfaddr.adc0 = hex2dec("40");
            ip.nlfaddr.adc1 = hex2dec("41");

            % Box-Muller
            P_V = 2.113788753330265e-10 * 1e-2; % Noise Variance.
            sigma_rng = 0.5 * sqrt(P_V) * 0.9e4;
            
            ip.rng.box_muller_lut_cos = zeros(2^12,1);
            ip.rng.box_muller_lut_sin = zeros(2^12,1);
            for addr = 0:2^12-1
                low = mod(addr, 2^6);
                high = floor(addr / 2^6);
                % u1 and u2 are box-distributed random variables between 0 and 1
                % We can just split the address, as each subvector of bits is
                % individually box-distributed for LFSR random generators.
                u1 = (low+1) / 2^6;
                u2 = (high+1) / 2^6;
            
                % Calculate according to box-muller
                bm_cos = sqrt(-2*log(u1)) * cos(2*pi*u2);
                bm_sin = sqrt(-2*log(u1)) * sin(2*pi*u2);
            
                ip.rng.box_muller_lut_cos(addr+1) = bm_cos;
                ip.rng.box_muller_lut_sin(addr+1) = bm_sin;
            end
            
            ip.rng.scaling_factor = sigma_rng;

            cfg = tddbl_model;

            assignin("base", "cfg", cfg);
            assignin("base", "ip", ip);
            assignin("base", "hw", hw);
            assignin("base", "dt", dt);

            simin.adc0.time = transpose(reshape(scenario.in_signals(1,2,:), 1, []));
            simin.adc0.signals.values = transpose(reshape(scenario.in_signals(1,1,:), 1, []));
            simin.adc1.time = transpose(reshape(scenario.in_signals(2,2,:), 1, []));
            simin.adc1.signals.values = transpose(reshape(scenario.in_signals(2,1,:), 1, []));

            sim_out = sim("MHILSimHWImpl", "SrcWorkspace", "current", "StartTime", "0", "StopTime", string(scenario.sim_time));
        end

        function [sim_out] = do_sim_ref(this, td_model, scenario, enable_noise)
            if ~exist("enable_noise", "var")
                enable_noise = true;
            end
            
            % Simulate the time-discrete model with reference.
            m = td_model;
            
            if ~enable_noise
                m.n0_power = 0;
                m.n1_power = 0;
                m.n2_power = 0;
            end

            s.s0_xdd_presc = this.slices(1).xdotdot_presc;
            s.s0_xd_presc = this.slices(1).xdot_presc;
            s.s0_x_presc = this.slices(1).x_presc;

            s.s1_xdd_presc = this.slices(2).xdotdot_presc;
            s.s1_xd_presc = this.slices(2).xdot_presc;
            s.s1_x_presc = this.slices(2).x_presc;

            s.s2_xdd_presc = this.slices(3).xdotdot_presc;
            s.s2_xd_presc = this.slices(3).xdot_presc;
            s.s2_x_presc = this.slices(3).x_presc;

            simin.adc0.time = transpose(reshape(scenario.in_signals(1,2,:), 1, []));
            simin.adc0.signals.values = transpose(reshape(scenario.in_signals(1,1,:), 1, []));
            simin.adc1.time = transpose(reshape(scenario.in_signals(2,2,:), 1, []));
            simin.adc1.signals.values = transpose(reshape(scenario.in_signals(2,1,:), 1, []));

            simin.nlf_alternate_switch = scenario.nlf_alternate_switch;

            sim_out = sim("MHILSimRef", "SrcWorkspace", "current", "StartTime", "0", "StopTime", string(scenario.sim_time));
        end

        function [sim_out] = do_sim_tc(~, tc_model, scenario, enable_noise)
            if ~exist("enable_noise", "var")
                enable_noise = true;
            end

            % Simulate the time-continuous model.
            m = tc_model;
            if ~enable_noise
                m.n0_power = 0;
                m.n1_power = 0;
                m.n2_power = 0;
            end

            simin.adc0.time = transpose(reshape(scenario.in_signals(1,2,:), 1, []));
            simin.adc0.signals.values = transpose(reshape(scenario.in_signals(1,1,:), 1, []));
            simin.adc1.time = transpose(reshape(scenario.in_signals(2,2,:), 1, []));
            simin.adc1.signals.values = transpose(reshape(scenario.in_signals(2,1,:), 1, []));

            simin.nlf_alternate_switch = scenario.nlf_alternate_switch;

            sim_out = sim("MHILSimTCDouble", "SrcWorkspace", "current", "StartTime", "0", "StopTime", string(scenario.sim_time));
        end

        function [sim_out] = do_sim_tdfp(~, tdfp_model, scenario, enable_noise)
            if ~exist("enable_noise", "var")
                enable_noise = true;
            end
            
            % Simulate the time-discrete fixpoint model.
            m = tdfp_model;
            if ~enable_noise
                m.n0_power = 0;
                m.n1_power = 0;
                m.n2_power = 0;
                m.noise0_presc = fi(0, m.datatype.const);
                m.noise1_presc = fi(0, m.datatype.const);
                m.noise2_presc = fi(0, m.datatype.const);
            end

            simin.adc0.time = transpose(reshape(scenario.in_signals(1,2,:), 1, []));
            simin.adc0.signals.values = transpose(reshape(scenario.in_signals(1,1,:), 1, []));
            simin.adc1.time = transpose(reshape(scenario.in_signals(2,2,:), 1, []));
            simin.adc1.signals.values = transpose(reshape(scenario.in_signals(2,1,:), 1, []));

            simin.nlf_alternate_switch = scenario.nlf_alternate_switch;

            sim_out = sim("MHILSimTDFixpoint", "SrcWorkspace", "current", "StartTime", "0", "StopTime", string(scenario.sim_time));
        end

        function [sim_out] = do_sim_tddbl(~, tddbl_model, scenario, enable_noise)
            if ~exist("enable_noise", "var")
                enable_noise = true;
            end

             % Simulate the time-discrete double-precision model.
            m = tddbl_model;

            if ~enable_noise
                m.n0_power = 0;
                m.n1_power = 0;
                m.n2_power = 0;
            end

            simin.adc0.time = transpose(reshape(scenario.in_signals(1,2,:), 1, []));
            simin.adc0.signals.values = transpose(reshape(scenario.in_signals(1,1,:), 1, []));
            simin.adc1.time = transpose(reshape(scenario.in_signals(2,2,:), 1, []));
            simin.adc1.signals.values = transpose(reshape(scenario.in_signals(2,1,:), 1, []));

            simin.nlf_alternate_switch = scenario.nlf_alternate_switch;

            sim_out = sim("MHILSimTDDouble", "SrcWorkspace", "current", "StartTime", "0", "StopTime", string(scenario.sim_time));
        end

        function [m] = export_model(this)
            % Fixpoint datatypes of the model.
            m.t_s = 36 * (1/250e6);

            % Datatype for constants (smaller due to asymmetric input sizes
            % of ZYNQ 7 series DSP slices (25x18)
            m.datatype.const_sz = 18;
            m.datatype.const_bin = 10;
            m.datatype.const = fixdt(1, m.datatype.const_sz, m.datatype.const_bin);

            % Datatype for active signals, standard fixpoint datatype.
            m.datatype.slice_sz = 25;
            m.datatype.slice_bin = 17;
            m.datatype.slice = fixdt(1, m.datatype.slice_sz, m.datatype.slice_bin);

            % Datatype of the NLF LUT values.
            m.datatype.nlf_sz = 16;
            m.datatype.nlf_bin = 14;
            m.datatype.nlf = fixdt(1, m.datatype.nlf_sz, m.datatype.nlf_bin);

            % Datatype of the integration accumulators
            m.datatype.accum_sz = 64;
            m.datatype.accum_bin = 56;
            m.datatype.accum = fixdt(1, m.datatype.accum_sz, m.datatype.accum_bin);

            % Address bit size of NLF LUTs.
            m.datatype.nlf_lut_addr_sz = 10; % 10 bit address space of LUTs
            m.datatype.nlf_lut_size = 2^m.datatype.nlf_lut_addr_sz;

            % Integration time constants and bitshifts.
            m.int_scale_bits = floor(log2(1/m.t_s));
            m.int_dt_residual = fi(m.t_s * 2^m.int_scale_bits, m.datatype.const);

            % Calculate scaling optimizations.
            in_overrides = this.optimize_input_scaling();

            % Calculate NLF LUTs
            m.slice0 = this.slices(1).export_slice(in_overrides(1), m.datatype.nlf_lut_size, m.datatype);
            m.slice1 = this.slices(2).export_slice(in_overrides(2), m.datatype.nlf_lut_size, m.datatype);
            m.slice2 = this.slices(3).export_slice(in_overrides(3), m.datatype.nlf_lut_size, m.datatype);
            
            m.adc0_nlf = this.export_input_nlf(1, m.datatype.nlf_lut_size, m.datatype);
            m.adc1_nlf = this.export_input_nlf(2, m.datatype.nlf_lut_size, m.datatype);

            % Setup input matrix
            m.inp_mat = this.export_input_matrix(in_overrides, m.datatype);
            
            % Setup output slices.
            m.out_mat = this.export_output_slices(m.datatype.nlf_lut_size, m.datatype);

            % Intrinsic noise sources have a power of 4 (RMS of 2) units.
            m.n0_power = this.noise_sources(1).noise_pwr;
            m.noise0_presc = fi(in_overrides(1).noise_presc, m.datatype.const); % fi(sqrt(this.noise_sources(1).noise_pwr / 4), m.datatype.const);
            m.n1_power = this.noise_sources(2).noise_pwr;
            m.noise1_presc = fi(in_overrides(2).noise_presc, m.datatype.const); % fi(sqrt(this.noise_sources(2).noise_pwr / 4), m.datatype.const);
            m.n2_power = this.noise_sources(3).noise_pwr;
            m.noise2_presc = fi(in_overrides(3).noise_presc, m.datatype.const); % fi(sqrt(this.noise_sources(3).noise_pwr / 4), m.datatype.const);
        end

        function [m] = export_model_dbl(this)
            % Fixpoint datatypes of the model.
            m.t_s = 36 * (1/250e6);

            % Datatype for constants (smaller due to asymmetric input sizes
            % of ZYNQ 7 series DSP slices (25x18)
            m.datatype.const_sz = 18;
            m.datatype.const_bin = 10;
            m.datatype.const = fixdt(1, m.datatype.const_sz, m.datatype.const_bin);

            % Datatype for active signals, standard fixpoint datatype.
            m.datatype.slice_sz = 25;
            m.datatype.slice_bin = 17;
            m.datatype.slice = fixdt(1, m.datatype.slice_sz, m.datatype.slice_bin);

            % Datatype of the NLF LUT values.
            m.datatype.nlf_sz = 16;
            m.datatype.nlf_bin = 14;
            m.datatype.nlf = fixdt(1, m.datatype.nlf_sz, m.datatype.nlf_bin);

            % Datatype of the integration accumulators
            m.datatype.accum_sz = 64;
            m.datatype.accum_bin = 56;
            m.datatype.accum = fixdt(1, m.datatype.accum_sz, m.datatype.accum_bin);

            % Address bit size of NLF LUTs.
            m.datatype.nlf_lut_addr_sz = 10; % 10 bit address space of LUTs
            m.datatype.nlf_lut_size = 2^m.datatype.nlf_lut_addr_sz;

            % Integration time constants and bitshifts.
            m.int_scale_bits = floor(log2(1/m.t_s));
            m.int_dt_residual = m.t_s * 2^m.int_scale_bits;

            % Calculate scaling optimizations.
            in_overrides = this.optimize_input_scaling();

            % Calculate NLF LUTs
            m.slice0 = this.slices(1).export_slice_dbl(in_overrides(1), m.datatype.nlf_lut_size);
            m.slice1 = this.slices(2).export_slice_dbl(in_overrides(2), m.datatype.nlf_lut_size);
            m.slice2 = this.slices(3).export_slice_dbl(in_overrides(3), m.datatype.nlf_lut_size);
            
            m.adc0_nlf = this.export_input_nlf_dbl(1, m.datatype.nlf_lut_size);
            m.adc1_nlf = this.export_input_nlf_dbl(2, m.datatype.nlf_lut_size);

            % Setup input matrix
            m.inp_mat = this.export_input_matrix_dbl(in_overrides);

            % Setup output slices.
            m.out_mat = this.export_output_slices_dbl(m.datatype.nlf_lut_size);

            % Intrinsic noise sources have a power of 4 (RMS of 2) units.
            m.n0_power = this.noise_sources(1).noise_pwr;
            m.noise0_presc = in_overrides(1).noise_presc; % sqrt(this.noise_sources(1).noise_pwr / 4);
            m.n1_power = this.noise_sources(2).noise_pwr;
            m.noise1_presc = in_overrides(2).noise_presc; % sqrt(this.noise_sources(2).noise_pwr / 4);
            m.n2_power = this.noise_sources(3).noise_pwr;
            m.noise2_presc = in_overrides(3).noise_presc; % sqrt(this.noise_sources(3).noise_pwr / 4);
        end

        function [in_overrides] = optimize_input_scaling(this)
            imat = this.input_matrix.get_matrix();
            in_overrides = [struct(), struct(), struct()];
            for slice_i = 1:3
                if this.slices(slice_i).u_nlf.get_bypass()
                    fac_u = this.slices(slice_i).u_factor * this.slices(slice_i).xdotdot_presc;
                else
                    [presc, ~, ~, ~] = this.slices(slice_i).u_nlf.calculate_presc_gain(1.0, 1.0);
                    fac_u = presc;
                end

                fac_adc0 = imat(slice_i,1) * fac_u;
                fac_adc1 = imat(slice_i,2) * fac_u;
                fac_noise = this.noise_sources(slice_i).get_noise_presc_factor() * imat(slice_i,3) * fac_u;

                common_factor = sqrt(mean(abs([fac_adc0, fac_adc1, fac_noise])));

                if common_factor < eps
                    in_overrides(slice_i).fac_adc0 = 0;
                    in_overrides(slice_i).fac_adc1 = 0;
                    in_overrides(slice_i).fac_noise = 0;
                    in_overrides(slice_i).noise_presc = 0;
                    in_overrides(slice_i).fac_u = fac_u;
                else
                    in_overrides(slice_i).fac_adc0 = fac_adc0 / common_factor;
                    in_overrides(slice_i).fac_adc1 = fac_adc1 / common_factor;

                    fac_noise = fac_noise / common_factor;
                    in_overrides(slice_i).fac_noise = fac_noise / sqrt(abs(fac_noise));
                    in_overrides(slice_i).noise_presc = sqrt(abs(fac_noise));

                    in_overrides(slice_i).fac_u = common_factor;
                end
                
            end
        end

        function [nlf] = export_input_nlf(this, i, lut_size, dt)
            if this.input_nlfs(i).get_bypass()
                nlf.enabled = uint64(0); % NLF bypass/disabled
                nlf.presc = fi(0, dt.const);
                nlf.gain = fi(0, dt.const);
                nlf.lut = fi(zeros(lut_size, 1), dt.nlf);
            else
                nlf.enabled = uint64(1); % NLF used/enabled
                [presc, gain, lut] = this.input_nlfs(i).export_nlf_params(1.0, 1.0, lut_size);
                nlf.presc = fi(presc, dt.const);
                nlf.gain = fi(gain, dt.const);
                nlf.lut = fi(lut, dt.nlf);
            end
        end

        function [nlf] = export_input_nlf_dbl(this, i, lut_size)
            if this.input_nlfs(i).get_bypass()
                nlf.enabled = 0; % NLF bypass/disabled
                nlf.presc = 0;
                nlf.gain = 0;
                nlf.lut = zeros(lut_size, 1);
            else
                nlf.enabled = 1; % NLF used/enabled
                [nlf.presc, nlf.gain, nlf.lut] = this.input_nlfs(i).export_nlf_params(1.0, 1.0, lut_size);
            end
        end

        function [inp_mat] = export_input_matrix(this, in_overrides, dt)
            im_dbl = this.export_input_matrix_dbl(in_overrides);

            inp_mat.fac_u0_adc0 = fi(im_dbl.fac_u0_adc0, dt.const);
            inp_mat.fac_u0_adc1 = fi(im_dbl.fac_u0_adc1, dt.const);
            inp_mat.fac_u0_noise = fi(im_dbl.fac_u0_noise, dt.const);

            inp_mat.fac_u1_adc0 = fi(im_dbl.fac_u1_adc0, dt.const);
            inp_mat.fac_u1_adc1 = fi(im_dbl.fac_u1_adc1, dt.const);
            inp_mat.fac_u1_noise = fi(im_dbl.fac_u1_noise, dt.const);

            inp_mat.fac_u2_adc0 = fi(im_dbl.fac_u2_adc0, dt.const);
            inp_mat.fac_u2_adc1 = fi(im_dbl.fac_u2_adc1, dt.const);
            inp_mat.fac_u2_noise = fi(im_dbl.fac_u2_noise, dt.const);
        end

        function [inp_mat] = export_input_matrix_dbl(~, in_overrides)
            inp_mat.fac_u0_adc0 = in_overrides(1).fac_adc0;
            inp_mat.fac_u0_adc1 = in_overrides(1).fac_adc1;
            inp_mat.fac_u0_noise = in_overrides(1).fac_noise;

            inp_mat.fac_u1_adc0 = in_overrides(2).fac_adc0;
            inp_mat.fac_u1_adc1 = in_overrides(2).fac_adc1;
            inp_mat.fac_u1_noise = in_overrides(2).fac_noise;

            inp_mat.fac_u2_adc0 = in_overrides(3).fac_adc0;
            inp_mat.fac_u2_adc1 = in_overrides(3).fac_adc1;
            inp_mat.fac_u2_noise = in_overrides(3).fac_noise;
        end

        function [out_mat] = export_output_slices(this, lut_size, dt)
            factor_scalers = zeros(2,3);
            nlf_scalers = zeros(2,3);
            for i = 1:2
                for j = 1:3
                    if this.output_slices(i).output_nlfs(j).get_bypass()
                        if this.output_slices(i).get_xsel_value(j) == 0
                            % x is selected
                            % NLF is disabled -> prescaling is required.
                            factor_scalers(i,j) = 1.0 / (this.slices(j).xdotdot_presc * this.slices(j).xdot_presc * this.slices(j).x_presc);
                        elseif this.output_slices(i).get_xsel_value(j) == 1
                            % xdot is selected
                            % NLF is disabled -> prescaling is required.
                            factor_scalers(i,j) = 1.0 / (this.slices(j).xdotdot_presc * this.slices(j).xdot_presc);
                        else
                            % xdotdot is selected.
                            % NLF is disabled -> prescaling is required.
                            factor_scalers(i,j) = 1.0 / (this.slices(j).xdotdot_presc);
                        end
                        nlf_scalers(i,j) = 1.0;
                    else
                        % NLF is enabled -> prescaling not required.
                        factor_scalers(i,j) = 1.0;
                        nlf_scalers(i,j) = 1.0 / (this.slices(j).xdotdot_presc * this.slices(j).xdot_presc * this.slices(j).x_presc);
                    end
                end
            end

            out_mat.dac0_selx0 = uint64(this.output_slices(1).get_xsel_value(1));
            out_mat.dac0_selx1 = uint64(this.output_slices(1).get_xsel_value(2));
            out_mat.dac0_selx2 = uint64(this.output_slices(1).get_xsel_value(3));
            out_mat.dac1_selx0 = uint64(this.output_slices(2).get_xsel_value(1));
            out_mat.dac1_selx1 = uint64(this.output_slices(2).get_xsel_value(2));
            out_mat.dac1_selx2 = uint64(this.output_slices(2).get_xsel_value(3));
            out_mat.nlf_dac0_xx0 = this.output_slices(1).output_nlfs(1).export_nlf_params_structured_fixpt(nlf_scalers(1,1), 1.0, lut_size, dt);
            out_mat.nlf_dac0_xx1 = this.output_slices(1).output_nlfs(2).export_nlf_params_structured_fixpt(nlf_scalers(1,2), 1.0, lut_size, dt);
            out_mat.nlf_dac0_xx2 = this.output_slices(1).output_nlfs(3).export_nlf_params_structured_fixpt(nlf_scalers(1,3), 1.0, lut_size, dt);
            out_mat.nlf_dac1_xx0 = this.output_slices(2).output_nlfs(1).export_nlf_params_structured_fixpt(nlf_scalers(2,1), 1.0, lut_size, dt);
            out_mat.nlf_dac1_xx1 = this.output_slices(2).output_nlfs(2).export_nlf_params_structured_fixpt(nlf_scalers(2,2), 1.0, lut_size, dt);
            out_mat.nlf_dac1_xx2 = this.output_slices(2).output_nlfs(3).export_nlf_params_structured_fixpt(nlf_scalers(2,3), 1.0, lut_size, dt);
            out_mat.fac_dac0_xx0 = fi(this.output_slices(1).linear_factors(1) * factor_scalers(1,1), dt.const);
            out_mat.fac_dac0_xx1 = fi(this.output_slices(1).linear_factors(2) * factor_scalers(1,2), dt.const);
            out_mat.fac_dac0_xx2 = fi(this.output_slices(1).linear_factors(3) * factor_scalers(1,3), dt.const);
            out_mat.fac_dac1_xx0 = fi(this.output_slices(2).linear_factors(1) * factor_scalers(2,1), dt.const);
            out_mat.fac_dac1_xx1 = fi(this.output_slices(2).linear_factors(2) * factor_scalers(2,2), dt.const);
            out_mat.fac_dac1_xx2 = fi(this.output_slices(2).linear_factors(3) * factor_scalers(2,3), dt.const);
        end

        function [out_mat] = export_output_slices_dbl(this, lut_size)
            factor_scalers = zeros(2,3);
            nlf_scalers = zeros(2,3);
            for i = 1:2
                for j = 1:3
                    if this.output_slices(i).output_nlfs(j).get_bypass()
                        if this.output_slices(i).get_xsel_value(j) == 0
                            % x is selected
                            % NLF is disabled -> prescaling is required.
                            factor_scalers(i,j) = 1.0 / (this.slices(j).xdotdot_presc * this.slices(j).xdot_presc * this.slices(j).x_presc);
                        elseif this.output_slices(i).get_xsel_value(j) == 1
                            % xdot is selected
                            % NLF is disabled -> prescaling is required.
                            factor_scalers(i,j) = 1.0 / (this.slices(j).xdotdot_presc * this.slices(j).xdot_presc);
                        else
                            % xdotdot is selected
                            % NLF is disabled -> prescaling is required.
                            factor_scalers(i,j) = 1.0 / (this.slices(j).xdotdot_presc);
                        end
                        nlf_scalers(i,j) = 1.0;
                    else
                        % NLF is enabled -> prescaling not required.
                        factor_scalers(i,j) = 1.0;
                        nlf_scalers(i,j) = 1.0 / (this.slices(j).xdotdot_presc * this.slices(j).xdot_presc * this.slices(j).x_presc);
                    end
                end
            end

            out_mat.dac0_selx0 = this.output_slices(1).get_xsel_value(1);
            out_mat.dac0_selx1 = this.output_slices(1).get_xsel_value(2);
            out_mat.dac0_selx2 = this.output_slices(1).get_xsel_value(3);
            out_mat.dac1_selx0 = this.output_slices(2).get_xsel_value(1);
            out_mat.dac1_selx1 = this.output_slices(2).get_xsel_value(2);
            out_mat.dac1_selx2 = this.output_slices(2).get_xsel_value(3);
            out_mat.nlf_dac0_xx0 = this.output_slices(1).output_nlfs(1).export_nlf_params_structured_dbl(nlf_scalers(1,1), 1.0, lut_size);
            out_mat.nlf_dac0_xx1 = this.output_slices(1).output_nlfs(2).export_nlf_params_structured_dbl(nlf_scalers(1,2), 1.0, lut_size);
            out_mat.nlf_dac0_xx2 = this.output_slices(1).output_nlfs(3).export_nlf_params_structured_dbl(nlf_scalers(1,3), 1.0, lut_size);
            out_mat.nlf_dac1_xx0 = this.output_slices(2).output_nlfs(1).export_nlf_params_structured_dbl(nlf_scalers(2,1), 1.0, lut_size);
            out_mat.nlf_dac1_xx1 = this.output_slices(2).output_nlfs(2).export_nlf_params_structured_dbl(nlf_scalers(2,2), 1.0, lut_size);
            out_mat.nlf_dac1_xx2 = this.output_slices(2).output_nlfs(3).export_nlf_params_structured_dbl(nlf_scalers(2,3), 1.0, lut_size);
            out_mat.fac_dac0_xx0 = this.output_slices(1).linear_factors(1) * factor_scalers(1,1);
            out_mat.fac_dac0_xx1 = this.output_slices(1).linear_factors(2) * factor_scalers(1,2);
            out_mat.fac_dac0_xx2 = this.output_slices(1).linear_factors(3) * factor_scalers(1,3);
            out_mat.fac_dac1_xx0 = this.output_slices(2).linear_factors(1) * factor_scalers(2,1);
            out_mat.fac_dac1_xx1 = this.output_slices(2).linear_factors(2) * factor_scalers(2,2);
            out_mat.fac_dac1_xx2 = this.output_slices(2).linear_factors(3) * factor_scalers(2,3);
        end

        function [] = do_scaling_report(this, scenarios, heading, enable_noise)
            % Initialize the NLF's max values.
            this.input_nlfs(1).reset_max_vals();
            this.input_nlfs(2).reset_max_vals();

            for i = 1:2
                for j = 1:3
                    this.output_slices(i).output_nlfs(j).reset_max_vals();
                end
            end

            for i = 1:3
                this.slices(i).u_nlf.reset_max_vals();
                this.slices(i).x_nlf.reset_max_vals();
                this.slices(i).xdot_nlf.reset_max_vals();
                this.slices(i).reset_integration_scaling();
            end

            % Simulate TD-model with test input functions to determine the
            % input/output range of required NLF's.
            for i = 1:length(scenarios)
                fprintf("[HILSim] Inspecting scenario %d...\n", i);
                sim_out = this.do_sim_ref(this.td_model, scenarios(i), enable_noise);

                % Get max values for each of the NLF's in- and outputs.
                this.input_nlfs(1).update_max_vals(max(abs(sim_out.in0_nlf_i.Data)), max(abs(sim_out.in0_nlf_o.Data)));
                this.input_nlfs(2).update_max_vals(max(abs(sim_out.in1_nlf_i.Data)), max(abs(sim_out.in1_nlf_o.Data)));

                this.output_slices(1).output_nlfs(1).update_max_vals(max(abs(sim_out.os0_nlf0_i.Data)), max(abs(sim_out.os0_nlf0_o.Data)));
                this.output_slices(1).output_nlfs(2).update_max_vals(max(abs(sim_out.os0_nlf1_i.Data)), max(abs(sim_out.os0_nlf1_o.Data)));
                this.output_slices(1).output_nlfs(3).update_max_vals(max(abs(sim_out.os0_nlf2_i.Data)), max(abs(sim_out.os0_nlf2_o.Data)));
                this.output_slices(2).output_nlfs(1).update_max_vals(max(abs(sim_out.os1_nlf0_i.Data)), max(abs(sim_out.os1_nlf0_o.Data)));
                this.output_slices(2).output_nlfs(2).update_max_vals(max(abs(sim_out.os1_nlf1_i.Data)), max(abs(sim_out.os1_nlf1_o.Data)));
                this.output_slices(2).output_nlfs(3).update_max_vals(max(abs(sim_out.os1_nlf2_i.Data)), max(abs(sim_out.os1_nlf2_o.Data)));

                this.slices(1).u_nlf.update_max_vals(max(abs(sim_out.s0_u_nlf_i.Data)), max(abs(sim_out.s0_u_nlf_o.Data)));
                this.slices(2).u_nlf.update_max_vals(max(abs(sim_out.s1_u_nlf_i.Data)), max(abs(sim_out.s1_u_nlf_o.Data)));
                this.slices(3).u_nlf.update_max_vals(max(abs(sim_out.s2_u_nlf_i.Data)), max(abs(sim_out.s2_u_nlf_o.Data)));

                this.slices(1).x_nlf.update_max_vals(max(abs(sim_out.s0_x_nlf_i.Data)), max(abs(sim_out.s0_x_nlf_o.Data)));
                this.slices(2).x_nlf.update_max_vals(max(abs(sim_out.s1_x_nlf_i.Data)), max(abs(sim_out.s1_x_nlf_o.Data)));
                this.slices(3).x_nlf.update_max_vals(max(abs(sim_out.s2_x_nlf_i.Data)), max(abs(sim_out.s2_x_nlf_o.Data)));

                this.slices(1).xdot_nlf.update_max_vals(max(abs(sim_out.s0_xdot_nlf_i.Data)), max(abs(sim_out.s0_xdot_nlf_o.Data)));
                this.slices(2).xdot_nlf.update_max_vals(max(abs(sim_out.s1_xdot_nlf_i.Data)), max(abs(sim_out.s1_xdot_nlf_o.Data)));
                this.slices(3).xdot_nlf.update_max_vals(max(abs(sim_out.s2_xdot_nlf_i.Data)), max(abs(sim_out.s2_xdot_nlf_o.Data)));

                % Update integration scaling for all three slices.
                this.slices(1).update_integration_scaling(max(abs(sim_out.s0_xdd.Data)), max(abs(sim_out.s0_xd.Data)), max(abs(sim_out.s0_x.Data)));
                this.slices(2).update_integration_scaling(max(abs(sim_out.s1_xdd.Data)), max(abs(sim_out.s1_xd.Data)), max(abs(sim_out.s1_x.Data)));
                this.slices(3).update_integration_scaling(max(abs(sim_out.s2_xdd.Data)), max(abs(sim_out.s2_xd.Data)), max(abs(sim_out.s2_x.Data)));
            end

            % Display result for scaling.
            fprintf("[HILSim] %s:\n", heading);
            fprintf("\t%-20s %-20s %-20s\n", "adc0_nlf", sprintf("in=%04e", this.input_nlfs(1).get_in_max()), sprintf("out=%04e", this.input_nlfs(1).get_out_max()));
            fprintf("\t%-20s %-20s %-20s\n", "adc1_nlf", sprintf("in=%04e", this.input_nlfs(2).get_in_max()), sprintf("out=%04e", this.input_nlfs(2).get_out_max()));

            for i = 1:3
                fprintf("\t%-20s %-20s %-20s\n", sprintf("slice%d/u_nlf", i), sprintf("in=%04e", this.slices(i).u_nlf.get_in_max()), sprintf("out=%04e", this.slices(i).u_nlf.get_out_max()));
                fprintf("\t%-20s %-20s %-20s\n", sprintf("slice%d/x_nlf", i), sprintf("in=%04e", this.slices(i).x_nlf.get_in_max()), sprintf("out=%04e", this.slices(i).x_nlf.get_out_max()));
                fprintf("\t%-20s %-20s %-20s\n", sprintf("slice%d/xdot_nlf", i), sprintf("in=%04e", this.slices(i).xdot_nlf.get_in_max()), sprintf("out=%04e", this.slices(i).xdot_nlf.get_out_max()));
            end

            for i = 1:2
                for j = 1:3
                    fprintf("\t%-20s %-20s %-20s\n", sprintf("nlf_dac%d_xx%d", i-1, j-1), sprintf("in=%04e", this.output_slices(i).output_nlfs(j).get_in_max()), sprintf("out=%04e", this.output_slices(i).output_nlfs(j).get_out_max()));
                end
            end

            for i = 1:3
                fprintf("\t%-20s %-20s %-20s %-20s\n", sprintf("slice%d", i), sprintf("xdd=%04e", this.slices(i).get_xdd_max()), sprintf("xd=%04e", this.slices(i).get_xd_max()), sprintf("x=%04e", this.slices(i).get_x_max()));
            end
        end

        function [m] = export_ct_sim_model(this)
            % Slice configuration
            m.s0_u_nlf = this.slices(1).u_nlf.get_func();
            m.s0_x_nlf = this.slices(1).x_nlf.get_func();
            m.s0_xdot_nlf = this.slices(1).xdot_nlf.get_func();
            m.s0_u_nlf_alternate = this.slices(1).u_nlf.get_func_alternate();
            m.s0_x_nlf_alternate = this.slices(1).x_nlf.get_func_alternate();
            m.s0_xdot_nlf_alternate = this.slices(1).xdot_nlf.get_func_alternate();
            m.s0_u_factor = this.slices(1).u_factor;
            m.s0_x_factor = this.slices(1).x_factor;
            m.s0_xdot_factor = this.slices(1).xdot_factor;

            m.s1_u_nlf = this.slices(2).u_nlf.get_func();
            m.s1_x_nlf = this.slices(2).x_nlf.get_func();
            m.s1_xdot_nlf = this.slices(2).xdot_nlf.get_func();
            m.s1_u_nlf_alternate = this.slices(2).u_nlf.get_func_alternate();
            m.s1_x_nlf_alternate = this.slices(2).x_nlf.get_func_alternate();
            m.s1_xdot_nlf_alternate = this.slices(2).xdot_nlf.get_func_alternate();
            m.s1_u_factor = this.slices(2).u_factor;
            m.s1_x_factor = this.slices(2).x_factor;
            m.s1_xdot_factor = this.slices(2).xdot_factor;
            
            m.s2_u_nlf = this.slices(3).u_nlf.get_func();
            m.s2_x_nlf = this.slices(3).x_nlf.get_func();
            m.s2_xdot_nlf = this.slices(3).xdot_nlf.get_func();
            m.s2_u_nlf_alternate = this.slices(3).u_nlf.get_func_alternate();
            m.s2_x_nlf_alternate = this.slices(3).x_nlf.get_func_alternate();
            m.s2_xdot_nlf_alternate = this.slices(3).xdot_nlf.get_func_alternate();
            m.s2_u_factor = this.slices(3).u_factor;
            m.s2_x_factor = this.slices(3).x_factor;
            m.s2_xdot_factor = this.slices(3).xdot_factor;

            % Noise configuration
            m.n0_power = this.noise_sources(1).noise_pwr;
            m.n1_power = this.noise_sources(2).noise_pwr;
            m.n2_power = this.noise_sources(3).noise_pwr;

            % Input matrix
            m.inp_mat = this.input_matrix.get_matrix();
            % Input NLFs.
            m.in0_nlf = this.input_nlfs(1).get_func();
            m.in1_nlf = this.input_nlfs(2).get_func();

            % Output slices.
            m.os0_xsel0 = this.output_slices(1).get_xsel_value(1);
            m.os0_xsel1 = this.output_slices(1).get_xsel_value(2);
            m.os0_xsel2 = this.output_slices(1).get_xsel_value(3);
            m.os0_nlf0 = this.output_slices(1).output_nlfs(1).get_func();
            m.os0_nlf1 = this.output_slices(1).output_nlfs(2).get_func();
            m.os0_nlf2 = this.output_slices(1).output_nlfs(3).get_func();
            m.os0_fac0 = this.output_slices(1).linear_factors(1);
            m.os0_fac1 = this.output_slices(1).linear_factors(2);
            m.os0_fac2 = this.output_slices(1).linear_factors(3);
            m.os1_xsel0 = this.output_slices(2).get_xsel_value(1);
            m.os1_xsel1 = this.output_slices(2).get_xsel_value(2);
            m.os1_xsel2 = this.output_slices(2).get_xsel_value(3);
            m.os1_nlf0 = this.output_slices(2).output_nlfs(1).get_func();
            m.os1_nlf1 = this.output_slices(2).output_nlfs(2).get_func();
            m.os1_nlf2 = this.output_slices(2).output_nlfs(3).get_func();
            m.os1_fac0 = this.output_slices(2).linear_factors(1);
            m.os1_fac1 = this.output_slices(2).linear_factors(2);
            m.os1_fac2 = this.output_slices(2).linear_factors(3);
        end

        function [m] = export_td_sim_model(this)
            % Slice configuration
            m.s0_u_nlf = this.slices(1).u_nlf.get_func();
            m.s0_x_nlf = this.slices(1).x_nlf.get_func();
            m.s0_xdot_nlf = this.slices(1).xdot_nlf.get_func();
            m.s0_u_nlf_alternate = this.slices(1).u_nlf.get_func_alternate();
            m.s0_x_nlf_alternate = this.slices(1).x_nlf.get_func_alternate();
            m.s0_xdot_nlf_alternate = this.slices(1).xdot_nlf.get_func_alternate();
            m.s0_u_factor = this.slices(1).u_factor;
            m.s0_x_factor = this.slices(1).x_factor;
            m.s0_xdot_factor = this.slices(1).xdot_factor;

            m.s1_u_nlf = this.slices(2).u_nlf.get_func();
            m.s1_x_nlf = this.slices(2).x_nlf.get_func();
            m.s1_xdot_nlf = this.slices(2).xdot_nlf.get_func();
            m.s1_u_nlf_alternate = this.slices(2).u_nlf.get_func_alternate();
            m.s1_x_nlf_alternate = this.slices(2).x_nlf.get_func_alternate();
            m.s1_xdot_nlf_alternate = this.slices(2).xdot_nlf.get_func_alternate();
            m.s1_u_factor = this.slices(2).u_factor;
            m.s1_x_factor = this.slices(2).x_factor;
            m.s1_xdot_factor = this.slices(2).xdot_factor;
            
            m.s2_u_nlf = this.slices(3).u_nlf.get_func();
            m.s2_x_nlf = this.slices(3).x_nlf.get_func();
            m.s2_xdot_nlf = this.slices(3).xdot_nlf.get_func();
            m.s2_u_nlf_alternate = this.slices(3).u_nlf.get_func_alternate();
            m.s2_x_nlf_alternate = this.slices(3).x_nlf.get_func_alternate();
            m.s2_xdot_nlf_alternate = this.slices(3).xdot_nlf.get_func_alternate();
            m.s2_u_factor = this.slices(3).u_factor;
            m.s2_x_factor = this.slices(3).x_factor;
            m.s2_xdot_factor = this.slices(3).xdot_factor;

            % Noise configuration
            m.n0_power = this.noise_sources(1).noise_pwr;
            m.n1_power = this.noise_sources(2).noise_pwr;
            m.n2_power = this.noise_sources(3).noise_pwr;

            % Input / output matrices.
            m.inp_mat = this.input_matrix.get_matrix();
            % Input / output NLFs.
            m.in0_nlf = this.input_nlfs(1).get_func();
            m.in1_nlf = this.input_nlfs(2).get_func();

            % Output slices.
            m.os0_xsel0 = this.output_slices(1).get_xsel_value(1);
            m.os0_xsel1 = this.output_slices(1).get_xsel_value(2);
            m.os0_xsel2 = this.output_slices(1).get_xsel_value(3);
            m.os0_nlf0 = this.output_slices(1).output_nlfs(1).get_func();
            m.os0_nlf1 = this.output_slices(1).output_nlfs(2).get_func();
            m.os0_nlf2 = this.output_slices(1).output_nlfs(3).get_func();
            m.os0_fac0 = this.output_slices(1).linear_factors(1);
            m.os0_fac1 = this.output_slices(1).linear_factors(2);
            m.os0_fac2 = this.output_slices(1).linear_factors(3);
            m.os1_xsel0 = this.output_slices(2).get_xsel_value(1);
            m.os1_xsel1 = this.output_slices(2).get_xsel_value(2);
            m.os1_xsel2 = this.output_slices(2).get_xsel_value(3);
            m.os1_nlf0 = this.output_slices(2).output_nlfs(1).get_func();
            m.os1_nlf1 = this.output_slices(2).output_nlfs(2).get_func();
            m.os1_nlf2 = this.output_slices(2).output_nlfs(3).get_func();
            m.os1_fac0 = this.output_slices(2).linear_factors(1);
            m.os1_fac1 = this.output_slices(2).linear_factors(2);
            m.os1_fac2 = this.output_slices(2).linear_factors(3);

            % Effective sampling time.
            m.t_s = 18 / 125e6;
        end

    end

end

function [d] = fixpt_to_repr(dfp)
    d = hex2dec(dfp.hex);
end


