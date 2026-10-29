proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "hilsim_ipcore" "NUM_INSTANCES" "DEVICE_ID" "C_AXI_DOMAIN_S_AXI_BASEADDR" "C_AXI_DOMAIN_S_AXI_HIGHADDR" "C_AXI_DOMAIN_AXI_B_S_AXI_BASEADDR" "C_AXI_DOMAIN_AXI_B_S_AXI_HIGHADDR" 
    xdefine_config_file $drv_handle "hilsim_ipcore_g.c" "hilsim_ipcore" "DEVICE_ID" "C_AXI_DOMAIN_S_AXI_BASEADDR" "C_AXI_DOMAIN_AXI_B_S_AXI_BASEADDR" 
    xdefine_canonical_xpars $drv_handle "xparameters.h" "hilsim_ipcore" "DEVICE_ID" "C_AXI_DOMAIN_S_AXI_BASEADDR" "C_AXI_DOMAIN_S_AXI_HIGHADDR" "C_AXI_DOMAIN_AXI_B_S_AXI_BASEADDR" "C_AXI_DOMAIN_AXI_B_S_AXI_HIGHADDR" 

}