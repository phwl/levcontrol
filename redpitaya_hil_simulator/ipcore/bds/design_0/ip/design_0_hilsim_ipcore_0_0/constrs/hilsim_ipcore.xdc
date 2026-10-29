set rateCeproc_domain2 hilsim_ipcore_default_clock_driver/clockdriver_x1/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellsproc_domain2 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCeproc_domain2/Q]] IS_ENABLE]]
set rateCeproc_domain36 hilsim_ipcore_default_clock_driver/clockdriver_x0/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellsproc_domain36 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCeproc_domain36/Q]] IS_ENABLE]]
set_multicycle_path -from $rateCellsproc_domain2 -to $rateCellsproc_domain2 -setup 2
set_multicycle_path -from $rateCellsproc_domain2 -to $rateCellsproc_domain2 -hold 1
set_multicycle_path -from $rateCellsproc_domain2 -to $rateCellsproc_domain36 -setup 2
set_multicycle_path -from $rateCellsproc_domain2 -to $rateCellsproc_domain36 -hold 1
set_multicycle_path -from $rateCellsproc_domain36 -to $rateCellsproc_domain2 -setup 2
set_multicycle_path -from $rateCellsproc_domain36 -to $rateCellsproc_domain2 -hold 1
set_multicycle_path -from $rateCellsproc_domain36 -to $rateCellsproc_domain36 -setup 36
set_multicycle_path -from $rateCellsproc_domain36 -to $rateCellsproc_domain36 -hold 35
