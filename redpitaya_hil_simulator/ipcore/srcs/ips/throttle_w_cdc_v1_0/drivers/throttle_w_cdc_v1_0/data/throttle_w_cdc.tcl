proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "throttle_w_cdc" "NUM_INSTANCES" "DEVICE_ID" "C_FPGA_CLOCK_DOMAIN_CFG_IN_S_AXI_BASEADDR" "C_FPGA_CLOCK_DOMAIN_CFG_IN_S_AXI_HIGHADDR" 
    xdefine_config_file $drv_handle "throttle_w_cdc_g.c" "throttle_w_cdc" "DEVICE_ID" "C_FPGA_CLOCK_DOMAIN_CFG_IN_S_AXI_BASEADDR" 
    xdefine_canonical_xpars $drv_handle "xparameters.h" "throttle_w_cdc" "DEVICE_ID" "C_FPGA_CLOCK_DOMAIN_CFG_IN_S_AXI_BASEADDR" "C_FPGA_CLOCK_DOMAIN_CFG_IN_S_AXI_HIGHADDR" 

}