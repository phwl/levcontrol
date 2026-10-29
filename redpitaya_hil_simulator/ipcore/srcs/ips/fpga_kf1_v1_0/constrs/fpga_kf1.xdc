set rateCeadc_clock_domain_wrapper4 fpga_kf1_default_clock_driver/clockdriver_x0/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellsadc_clock_domain_wrapper4 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCeadc_clock_domain_wrapper4/Q]] IS_ENABLE]]
set_multicycle_path -from $rateCellsadc_clock_domain_wrapper4 -to $rateCellsadc_clock_domain_wrapper4 -setup 4
set_multicycle_path -from $rateCellsadc_clock_domain_wrapper4 -to $rateCellsadc_clock_domain_wrapper4 -hold 3
