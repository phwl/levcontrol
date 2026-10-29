proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "fpga_kf_2dof" "NUM_INSTANCES" "DEVICE_ID" "C_AXI_CLOCK_DOMAIN_WRAPPER_CFG_IN_S_AXI_BASEADDR" "C_AXI_CLOCK_DOMAIN_WRAPPER_CFG_IN_S_AXI_HIGHADDR" 
    xdefine_config_file $drv_handle "fpga_kf_2dof_g.c" "fpga_kf_2dof" "DEVICE_ID" "C_AXI_CLOCK_DOMAIN_WRAPPER_CFG_IN_S_AXI_BASEADDR" 
    xdefine_canonical_xpars $drv_handle "xparameters.h" "fpga_kf_2dof" "DEVICE_ID" "C_AXI_CLOCK_DOMAIN_WRAPPER_CFG_IN_S_AXI_BASEADDR" "C_AXI_CLOCK_DOMAIN_WRAPPER_CFG_IN_S_AXI_HIGHADDR" 

}