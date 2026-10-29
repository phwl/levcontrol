proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "fpga_lqg_axi" "NUM_INSTANCES" "DEVICE_ID" "C_AXI_SYS_S_AXI_BASEADDR" "C_AXI_SYS_S_AXI_HIGHADDR" 
    xdefine_config_file $drv_handle "fpga_lqg_axi_g.c" "fpga_lqg_axi" "DEVICE_ID" "C_AXI_SYS_S_AXI_BASEADDR" 
    xdefine_canonical_xpars $drv_handle "xparameters.h" "fpga_lqg_axi" "DEVICE_ID" "C_AXI_SYS_S_AXI_BASEADDR" "C_AXI_SYS_S_AXI_HIGHADDR" 

}