#include "fpga_kf_3dof_plus.h"
#ifndef __linux__
int fpga_kf_3dof_plus_CfgInitialize(fpga_kf_3dof_plus *InstancePtr, fpga_kf_3dof_plus_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress = ConfigPtr->fpga_kf_3dof_plus_cfg_in_BaseAddress;

    InstancePtr->IsReady = 1;
    return XST_SUCCESS;
}
#endif
void fpga_kf_3dof_plus_dac_1_bias_write(fpga_kf_3dof_plus *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 68, Data);
}
int fpga_kf_3dof_plus_dac_1_bias_read(fpga_kf_3dof_plus *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 68);
    return Data;
}
void fpga_kf_3dof_plus_dac_2_bias_write(fpga_kf_3dof_plus *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 72, Data);
}
int fpga_kf_3dof_plus_dac_2_bias_read(fpga_kf_3dof_plus *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 72);
    return Data;
}
void fpga_kf_3dof_plus_x_ref_ub_write(fpga_kf_3dof_plus *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 36, Data);
}
int fpga_kf_3dof_plus_x_ref_ub_read(fpga_kf_3dof_plus *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 36);
    return Data;
}
void fpga_kf_3dof_plus_x_ref_lb_write(fpga_kf_3dof_plus *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 40, Data);
}
int fpga_kf_3dof_plus_x_ref_lb_read(fpga_kf_3dof_plus *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 40);
    return Data;
}
void fpga_kf_3dof_plus_x_ref_in_write(fpga_kf_3dof_plus *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 12, Data);
}
int fpga_kf_3dof_plus_x_ref_in_read(fpga_kf_3dof_plus *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 12);
    return Data;
}
void fpga_kf_3dof_plus_x_ref_enb_write(fpga_kf_3dof_plus *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 44, Data);
}
u32 fpga_kf_3dof_plus_x_ref_enb_read(fpga_kf_3dof_plus *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 44);
    return Data;
}
void fpga_kf_3dof_plus_sw_override_in_write(fpga_kf_3dof_plus *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 8, Data);
}
u8 fpga_kf_3dof_plus_sw_override_in_read(fpga_kf_3dof_plus *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 8);
    return Data;
}
void fpga_kf_3dof_plus_reg_timer_period_write(fpga_kf_3dof_plus *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 80, Data);
}
u32 fpga_kf_3dof_plus_reg_timer_period_read(fpga_kf_3dof_plus *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 80);
    return Data;
}
void fpga_kf_3dof_plus_reg_rp_switch_tf_write(fpga_kf_3dof_plus *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 88, Data);
}
u32 fpga_kf_3dof_plus_reg_rp_switch_tf_read(fpga_kf_3dof_plus *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 88);
    return Data;
}
void fpga_kf_3dof_plus_reg_rp_switch_t0_write(fpga_kf_3dof_plus *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 84, Data);
}
u32 fpga_kf_3dof_plus_reg_rp_switch_t0_read(fpga_kf_3dof_plus *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 84);
    return Data;
}
void fpga_kf_3dof_plus_reg_out_switch_tf_write(fpga_kf_3dof_plus *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 96, Data);
}
u32 fpga_kf_3dof_plus_reg_out_switch_tf_read(fpga_kf_3dof_plus *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 96);
    return Data;
}
void fpga_kf_3dof_plus_reg_out_switch_t0_write(fpga_kf_3dof_plus *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 92, Data);
}
u32 fpga_kf_3dof_plus_reg_out_switch_t0_read(fpga_kf_3dof_plus *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 92);
    return Data;
}
void fpga_kf_3dof_plus_out_switch_on_write(fpga_kf_3dof_plus *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 108, Data);
}
int fpga_kf_3dof_plus_out_switch_on_read(fpga_kf_3dof_plus *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 108);
    return Data;
}
void fpga_kf_3dof_plus_out_switch_off_write(fpga_kf_3dof_plus *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 104, Data);
}
int fpga_kf_3dof_plus_out_switch_off_read(fpga_kf_3dof_plus *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 104);
    return Data;
}
void fpga_kf_3dof_plus_noise_gain_in_write(fpga_kf_3dof_plus *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 32, Data);
}
int fpga_kf_3dof_plus_noise_gain_in_read(fpga_kf_3dof_plus *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 32);
    return Data;
}
void fpga_kf_3dof_plus_iu_ub_write(fpga_kf_3dof_plus *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 52, Data);
}
int fpga_kf_3dof_plus_iu_ub_read(fpga_kf_3dof_plus *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 52);
    return Data;
}
void fpga_kf_3dof_plus_iu_lb_write(fpga_kf_3dof_plus *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 56, Data);
}
int fpga_kf_3dof_plus_iu_lb_read(fpga_kf_3dof_plus *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 56);
    return Data;
}
void fpga_kf_3dof_plus_iu_enb_write(fpga_kf_3dof_plus *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 60, Data);
}
u32 fpga_kf_3dof_plus_iu_enb_read(fpga_kf_3dof_plus *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 60);
    return Data;
}
void fpga_kf_3dof_plus_fb_src_switch_in_write(fpga_kf_3dof_plus *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 4, Data);
}
u8 fpga_kf_3dof_plus_fb_src_switch_in_read(fpga_kf_3dof_plus *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 4);
    return Data;
}
void fpga_kf_3dof_plus_dma_trigger_time_write(fpga_kf_3dof_plus *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 100, Data);
}
u32 fpga_kf_3dof_plus_dma_trigger_time_read(fpga_kf_3dof_plus *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 100);
    return Data;
}
void fpga_kf_3dof_plus_barrier_ub_in_write(fpga_kf_3dof_plus *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 1024, Data);
}
int fpga_kf_3dof_plus_barrier_ub_in_read(fpga_kf_3dof_plus *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 1024);
    return Data;
}
void fpga_kf_3dof_plus_barrier_lb_in_write(fpga_kf_3dof_plus *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 1028, Data);
}
int fpga_kf_3dof_plus_barrier_lb_in_read(fpga_kf_3dof_plus *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 1028);
    return Data;
}
void fpga_kf_3dof_plus_barrier_ram_we_in_write(fpga_kf_3dof_plus *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 1052, Data);
}
u32 fpga_kf_3dof_plus_barrier_ram_we_in_read(fpga_kf_3dof_plus *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 1052);
    return Data;
}
void fpga_kf_3dof_plus_barrier_ram_addr_in_write(fpga_kf_3dof_plus *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 1040, Data);
}
u32 fpga_kf_3dof_plus_barrier_ram_addr_in_read(fpga_kf_3dof_plus *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 1040);
    return Data;
}
void fpga_kf_3dof_plus_barrier_c_ofst_idx_in_write(fpga_kf_3dof_plus *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 1036, Data);
}
u32 fpga_kf_3dof_plus_barrier_c_ofst_idx_in_read(fpga_kf_3dof_plus *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 1036);
    return Data;
}
void fpga_kf_3dof_plus_barrier_c_idx_in_write(fpga_kf_3dof_plus *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 1032, Data);
}
u32 fpga_kf_3dof_plus_barrier_c_idx_in_read(fpga_kf_3dof_plus *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 1032);
    return Data;
}
void fpga_kf_3dof_plus_barrier_c1_data_in_write(fpga_kf_3dof_plus *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 1048, Data);
}
int fpga_kf_3dof_plus_barrier_c1_data_in_read(fpga_kf_3dof_plus *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 1048);
    return Data;
}
void fpga_kf_3dof_plus_barrier_c0_data_in_write(fpga_kf_3dof_plus *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 1044, Data);
}
int fpga_kf_3dof_plus_barrier_c0_data_in_read(fpga_kf_3dof_plus *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 1044);
    return Data;
}
void fpga_kf_3dof_plus_k_iu_write(fpga_kf_3dof_plus *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 64, Data);
}
int fpga_kf_3dof_plus_k_iu_read(fpga_kf_3dof_plus *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 64);
    return Data;
}
void fpga_kf_3dof_plus_fixed_led_pattern_in_write(fpga_kf_3dof_plus *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 28, Data);
}
u32 fpga_kf_3dof_plus_fixed_led_pattern_in_read(fpga_kf_3dof_plus *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 28);
    return Data;
}
void fpga_kf_3dof_plus_disco_mode_enable_write(fpga_kf_3dof_plus *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 24, Data);
}
u32 fpga_kf_3dof_plus_disco_mode_enable_read(fpga_kf_3dof_plus *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 24);
    return Data;
}
void fpga_kf_3dof_plus_c_iu_write(fpga_kf_3dof_plus *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 48, Data);
}
int fpga_kf_3dof_plus_c_iu_read(fpga_kf_3dof_plus *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 48);
    return Data;
}
void fpga_kf_3dof_plus_ap_ip_switch_in_write(fpga_kf_3dof_plus *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 0, Data);
}
u8 fpga_kf_3dof_plus_ap_ip_switch_in_read(fpga_kf_3dof_plus *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 0);
    return Data;
}
void fpga_kf_3dof_plus_adc_ch2_offst_write(fpga_kf_3dof_plus *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 20, Data);
}
int fpga_kf_3dof_plus_adc_ch2_offst_read(fpga_kf_3dof_plus *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 20);
    return Data;
}
void fpga_kf_3dof_plus_adc_ch1_offst_write(fpga_kf_3dof_plus *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 16, Data);
}
int fpga_kf_3dof_plus_adc_ch1_offst_read(fpga_kf_3dof_plus *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 16);
    return Data;
}
void fpga_kf_3dof_plus_registers_wren_in_write(fpga_kf_3dof_plus *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 268, Data);
}
u32 fpga_kf_3dof_plus_registers_wren_in_read(fpga_kf_3dof_plus *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 268);
    return Data;
}
void fpga_kf_3dof_plus_registers_update_in_write(fpga_kf_3dof_plus *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 272, Data);
}
u32 fpga_kf_3dof_plus_registers_update_in_read(fpga_kf_3dof_plus *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 272);
    return Data;
}
void fpga_kf_3dof_plus_registers_subaddr_in_write(fpga_kf_3dof_plus *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 264, Data);
}
u32 fpga_kf_3dof_plus_registers_subaddr_in_read(fpga_kf_3dof_plus *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 264);
    return Data;
}
void fpga_kf_3dof_plus_registers_data_in_write(fpga_kf_3dof_plus *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 256, Data);
}
int fpga_kf_3dof_plus_registers_data_in_read(fpga_kf_3dof_plus *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 256);
    return Data;
}
void fpga_kf_3dof_plus_registers_addr_in_write(fpga_kf_3dof_plus *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_3dof_plus_WriteReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 260, Data);
}
u32 fpga_kf_3dof_plus_registers_addr_in_read(fpga_kf_3dof_plus *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_3dof_plus_ReadReg(InstancePtr->fpga_kf_3dof_plus_cfg_in_BaseAddress, 260);
    return Data;
}
