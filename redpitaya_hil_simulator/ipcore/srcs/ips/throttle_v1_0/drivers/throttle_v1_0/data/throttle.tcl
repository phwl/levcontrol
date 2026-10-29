proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "throttle" "NUM_INSTANCES" "DEVICE_ID" "C_THROTTLE_CFG_IN_S_AXI_BASEADDR" "C_THROTTLE_CFG_IN_S_AXI_HIGHADDR" 
    xdefine_config_file $drv_handle "throttle_g.c" "throttle" "DEVICE_ID" "C_THROTTLE_CFG_IN_S_AXI_BASEADDR" 
    xdefine_canonical_xpars $drv_handle "xparameters.h" "throttle" "DEVICE_ID" "C_THROTTLE_CFG_IN_S_AXI_BASEADDR" "C_THROTTLE_CFG_IN_S_AXI_HIGHADDR" 

}