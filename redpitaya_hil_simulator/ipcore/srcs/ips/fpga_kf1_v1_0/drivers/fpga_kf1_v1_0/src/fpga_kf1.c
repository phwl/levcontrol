#include "fpga_kf1.h"
#ifndef __linux__
int fpga_kf1_CfgInitialize(fpga_kf1 *InstancePtr, fpga_kf1_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->fpga_kf1_cfg_in_BaseAddress = ConfigPtr->fpga_kf1_cfg_in_BaseAddress;

    InstancePtr->IsReady = 1;
    return XST_SUCCESS;
}
#endif
void fpga_kf1_gateway_in_b2_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 140, Data);
}
int fpga_kf1_gateway_in_b2_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 140);
    return Data;
}
void fpga_kf1_gateway_in_b1_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 136, Data);
}
int fpga_kf1_gateway_in_b1_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 136);
    return Data;
}
void fpga_kf1_gateway_in_b2_ip_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 148, Data);
}
int fpga_kf1_gateway_in_b2_ip_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 148);
    return Data;
}
void fpga_kf1_gateway_in_b1_ip_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 144, Data);
}
int fpga_kf1_gateway_in_b1_ip_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 144);
    return Data;
}
void fpga_kf1_gateway_in_k2_ip_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 60, Data);
}
int fpga_kf1_gateway_in_k2_ip_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 60);
    return Data;
}
void fpga_kf1_gateway_in_k1_ip_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 56, Data);
}
int fpga_kf1_gateway_in_k1_ip_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 56);
    return Data;
}
void fpga_kf1_gateway_in_l2_ip_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 52, Data);
}
int fpga_kf1_gateway_in_l2_ip_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 52);
    return Data;
}
void fpga_kf1_gateway_in_l1_ip_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 48, Data);
}
int fpga_kf1_gateway_in_l1_ip_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 48);
    return Data;
}
void fpga_kf1_gateway_in_k2_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 28, Data);
}
int fpga_kf1_gateway_in_k2_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 28);
    return Data;
}
void fpga_kf1_gateway_in_k1_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 24, Data);
}
int fpga_kf1_gateway_in_k1_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 24);
    return Data;
}
void fpga_kf1_gateway_in_l2_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 20, Data);
}
int fpga_kf1_gateway_in_l2_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 20);
    return Data;
}
void fpga_kf1_gateway_in_l1_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 16, Data);
}
int fpga_kf1_gateway_in_l1_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 16);
    return Data;
}
void fpga_kf1_gateway_in_f22_ip_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 44, Data);
}
int fpga_kf1_gateway_in_f22_ip_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 44);
    return Data;
}
void fpga_kf1_gateway_in_f21_ip_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 40, Data);
}
int fpga_kf1_gateway_in_f21_ip_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 40);
    return Data;
}
void fpga_kf1_gateway_in_f12_ip_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 36, Data);
}
int fpga_kf1_gateway_in_f12_ip_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 36);
    return Data;
}
void fpga_kf1_gateway_in_f11_ip_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 32, Data);
}
int fpga_kf1_gateway_in_f11_ip_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 32);
    return Data;
}
void fpga_kf1_gateway_in_f22_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 12, Data);
}
int fpga_kf1_gateway_in_f22_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 12);
    return Data;
}
void fpga_kf1_gateway_in_f21_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 8, Data);
}
int fpga_kf1_gateway_in_f21_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 8);
    return Data;
}
void fpga_kf1_gateway_in_f12_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 4, Data);
}
int fpga_kf1_gateway_in_f12_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 4);
    return Data;
}
void fpga_kf1_gateway_in_f11_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 0, Data);
}
int fpga_kf1_gateway_in_f11_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 0);
    return Data;
}
void fpga_kf1_x_ref_in_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 156, Data);
}
int fpga_kf1_x_ref_in_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 156);
    return Data;
}
void fpga_kf1_sw_override_in_write(fpga_kf1 *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 88, Data);
}
u8 fpga_kf1_sw_override_in_read(fpga_kf1 *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 88);
    return Data;
}
void fpga_kf1_reg_timer_period_write(fpga_kf1 *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 124, Data);
}
u32 fpga_kf1_reg_timer_period_read(fpga_kf1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 124);
    return Data;
}
void fpga_kf1_reg_rp_switch_tf_write(fpga_kf1 *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 104, Data);
}
u32 fpga_kf1_reg_rp_switch_tf_read(fpga_kf1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 104);
    return Data;
}
void fpga_kf1_reg_rp_switch_t0_write(fpga_kf1 *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 100, Data);
}
u32 fpga_kf1_reg_rp_switch_t0_read(fpga_kf1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 100);
    return Data;
}
void fpga_kf1_reg_out_switch_tf_write(fpga_kf1 *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 112, Data);
}
u32 fpga_kf1_reg_out_switch_tf_read(fpga_kf1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 112);
    return Data;
}
void fpga_kf1_reg_out_switch_t0_write(fpga_kf1 *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 108, Data);
}
u32 fpga_kf1_reg_out_switch_t0_read(fpga_kf1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 108);
    return Data;
}
void fpga_kf1_out_switch_on_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 116, Data);
}
int fpga_kf1_out_switch_on_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 116);
    return Data;
}
void fpga_kf1_out_switch_off_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 120, Data);
}
int fpga_kf1_out_switch_off_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 120);
    return Data;
}
void fpga_kf1_fb_src_switch_in_write(fpga_kf1 *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 256, Data);
}
u8 fpga_kf1_fb_src_switch_in_read(fpga_kf1 *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 256);
    return Data;
}
void fpga_kf1_ema_const_slow_in_write(fpga_kf1 *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 132, Data);
}
u32 fpga_kf1_ema_const_slow_in_read(fpga_kf1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 132);
    return Data;
}
void fpga_kf1_ema_const_in_write(fpga_kf1 *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 84, Data);
}
u32 fpga_kf1_ema_const_in_read(fpga_kf1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 84);
    return Data;
}
void fpga_kf1_dma_trigger_time_write(fpga_kf1 *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 128, Data);
}
u32 fpga_kf1_dma_trigger_time_read(fpga_kf1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 128);
    return Data;
}
void fpga_kf1_div_scale_in_write(fpga_kf1 *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 80, Data);
}
u32 fpga_kf1_div_scale_in_read(fpga_kf1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 80);
    return Data;
}
void fpga_kf1_div_mux_selector_write(fpga_kf1 *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 76, Data);
}
u8 fpga_kf1_div_mux_selector_read(fpga_kf1 *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 76);
    return Data;
}
void fpga_kf1_barrier_ub_in_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 260, Data);
}
int fpga_kf1_barrier_ub_in_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 260);
    return Data;
}
void fpga_kf1_barrier_lb_in_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 264, Data);
}
int fpga_kf1_barrier_lb_in_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 264);
    return Data;
}
void fpga_kf1_barrier_ram_we_in_write(fpga_kf1 *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 288, Data);
}
u32 fpga_kf1_barrier_ram_we_in_read(fpga_kf1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 288);
    return Data;
}
void fpga_kf1_barrier_ram_addr_in_write(fpga_kf1 *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 276, Data);
}
u32 fpga_kf1_barrier_ram_addr_in_read(fpga_kf1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 276);
    return Data;
}
void fpga_kf1_barrier_c_ofst_idx_in_write(fpga_kf1 *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 272, Data);
}
u32 fpga_kf1_barrier_c_ofst_idx_in_read(fpga_kf1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 272);
    return Data;
}
void fpga_kf1_barrier_c_idx_in_write(fpga_kf1 *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 268, Data);
}
u32 fpga_kf1_barrier_c_idx_in_read(fpga_kf1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 268);
    return Data;
}
void fpga_kf1_barrier_c1_data_in_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 284, Data);
}
int fpga_kf1_barrier_c1_data_in_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 284);
    return Data;
}
void fpga_kf1_barrier_c0_data_in_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 280, Data);
}
int fpga_kf1_barrier_c0_data_in_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 280);
    return Data;
}
void fpga_kf1_fixed_led_pattern_in_write(fpga_kf1 *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 72, Data);
}
u32 fpga_kf1_fixed_led_pattern_in_read(fpga_kf1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 72);
    return Data;
}
void fpga_kf1_disco_mode_enable_write(fpga_kf1 *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 68, Data);
}
u32 fpga_kf1_disco_mode_enable_read(fpga_kf1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 68);
    return Data;
}
void fpga_kf1_ap_ip_switch_in_write(fpga_kf1 *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 64, Data);
}
u8 fpga_kf1_ap_ip_switch_in_read(fpga_kf1 *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 64);
    return Data;
}
void fpga_kf1_adc_ch2_offst_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 96, Data);
}
int fpga_kf1_adc_ch2_offst_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 96);
    return Data;
}
void fpga_kf1_adc_ch1_offst_write(fpga_kf1 *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 92, Data);
}
int fpga_kf1_adc_ch1_offst_read(fpga_kf1 *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 92);
    return Data;
}
void fpga_kf1_registers_wren_in_write(fpga_kf1 *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf1_WriteReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 152, Data);
}
u32 fpga_kf1_registers_wren_in_read(fpga_kf1 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf1_ReadReg(InstancePtr->fpga_kf1_cfg_in_BaseAddress, 152);
    return Data;
}
