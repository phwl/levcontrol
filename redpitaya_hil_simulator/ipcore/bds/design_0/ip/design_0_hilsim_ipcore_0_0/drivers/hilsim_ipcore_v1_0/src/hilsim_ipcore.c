#include "hilsim_ipcore.h"
#ifndef __linux__
int hilsim_ipcore_CfgInitialize(hilsim_ipcore *InstancePtr, hilsim_ipcore_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->hilsim_ipcore_BaseAddress = ConfigPtr->hilsim_ipcore_BaseAddress;
    InstancePtr->hilsim_ipcore_axi_b_BaseAddress = ConfigPtr->hilsim_ipcore_axi_b_BaseAddress;

    InstancePtr->IsReady = 1;
    return XST_SUCCESS;
}
#endif
void hilsim_ipcore_system_run_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 16, Data);
}
u32 hilsim_ipcore_system_run_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 16);
    return Data;
}
void hilsim_ipcore_slice2_xd_presc_shift_write(hilsim_ipcore *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 432, Data);
}
u8 hilsim_ipcore_slice2_xd_presc_shift_read(hilsim_ipcore *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 432);
    return Data;
}
void hilsim_ipcore_slice2_xd_presc_mul_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 436, Data);
}
int hilsim_ipcore_slice2_xd_presc_mul_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 436);
    return Data;
}
void hilsim_ipcore_slice2_xd_nlf_presc_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 408, Data);
}
int hilsim_ipcore_slice2_xd_nlf_presc_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 408);
    return Data;
}
void hilsim_ipcore_slice2_xd_nlf_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 412, Data);
}
int hilsim_ipcore_slice2_xd_nlf_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 412);
    return Data;
}
void hilsim_ipcore_slice2_xd_mux_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 400, Data);
}
u32 hilsim_ipcore_slice2_xd_mux_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 400);
    return Data;
}
void hilsim_ipcore_slice2_xd_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 404, Data);
}
int hilsim_ipcore_slice2_xd_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 404);
    return Data;
}
void hilsim_ipcore_slice2_x_presc_shift_write(hilsim_ipcore *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 440, Data);
}
u8 hilsim_ipcore_slice2_x_presc_shift_read(hilsim_ipcore *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 440);
    return Data;
}
void hilsim_ipcore_slice2_x_presc_mul_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 444, Data);
}
int hilsim_ipcore_slice2_x_presc_mul_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 444);
    return Data;
}
void hilsim_ipcore_slice2_x_nlf_presc_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 392, Data);
}
int hilsim_ipcore_slice2_x_nlf_presc_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 392);
    return Data;
}
void hilsim_ipcore_slice2_x_nlf_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 396, Data);
}
int hilsim_ipcore_slice2_x_nlf_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 396);
    return Data;
}
void hilsim_ipcore_slice2_x_mux_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 384, Data);
}
u32 hilsim_ipcore_slice2_x_mux_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 384);
    return Data;
}
void hilsim_ipcore_slice2_x_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 388, Data);
}
int hilsim_ipcore_slice2_x_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 388);
    return Data;
}
void hilsim_ipcore_slice2_u_nlf_presc_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 424, Data);
}
int hilsim_ipcore_slice2_u_nlf_presc_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 424);
    return Data;
}
void hilsim_ipcore_slice2_u_nlf_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 428, Data);
}
int hilsim_ipcore_slice2_u_nlf_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 428);
    return Data;
}
void hilsim_ipcore_slice2_u_mux_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 416, Data);
}
u32 hilsim_ipcore_slice2_u_mux_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 416);
    return Data;
}
void hilsim_ipcore_slice2_u_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 420, Data);
}
int hilsim_ipcore_slice2_u_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 420);
    return Data;
}
void hilsim_ipcore_slice1_xd_presc_shift_write(hilsim_ipcore *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 368, Data);
}
u8 hilsim_ipcore_slice1_xd_presc_shift_read(hilsim_ipcore *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 368);
    return Data;
}
void hilsim_ipcore_slice1_xd_presc_mul_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 372, Data);
}
int hilsim_ipcore_slice1_xd_presc_mul_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 372);
    return Data;
}
void hilsim_ipcore_slice1_xd_nlf_presc_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 344, Data);
}
int hilsim_ipcore_slice1_xd_nlf_presc_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 344);
    return Data;
}
void hilsim_ipcore_slice1_xd_nlf_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 348, Data);
}
int hilsim_ipcore_slice1_xd_nlf_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 348);
    return Data;
}
void hilsim_ipcore_slice1_xd_mux_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 336, Data);
}
u32 hilsim_ipcore_slice1_xd_mux_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 336);
    return Data;
}
void hilsim_ipcore_slice1_xd_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 340, Data);
}
int hilsim_ipcore_slice1_xd_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 340);
    return Data;
}
void hilsim_ipcore_slice1_x_presc_shift_write(hilsim_ipcore *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 376, Data);
}
u8 hilsim_ipcore_slice1_x_presc_shift_read(hilsim_ipcore *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 376);
    return Data;
}
void hilsim_ipcore_slice1_x_presc_mul_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 380, Data);
}
int hilsim_ipcore_slice1_x_presc_mul_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 380);
    return Data;
}
void hilsim_ipcore_slice1_x_nlf_presc_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 328, Data);
}
int hilsim_ipcore_slice1_x_nlf_presc_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 328);
    return Data;
}
void hilsim_ipcore_slice1_x_nlf_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 332, Data);
}
int hilsim_ipcore_slice1_x_nlf_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 332);
    return Data;
}
void hilsim_ipcore_slice1_x_mux_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 320, Data);
}
u32 hilsim_ipcore_slice1_x_mux_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 320);
    return Data;
}
void hilsim_ipcore_slice1_x_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 324, Data);
}
int hilsim_ipcore_slice1_x_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 324);
    return Data;
}
void hilsim_ipcore_slice1_u_nlf_presc_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 360, Data);
}
int hilsim_ipcore_slice1_u_nlf_presc_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 360);
    return Data;
}
void hilsim_ipcore_slice1_u_nlf_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 364, Data);
}
int hilsim_ipcore_slice1_u_nlf_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 364);
    return Data;
}
void hilsim_ipcore_slice1_u_mux_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 352, Data);
}
u32 hilsim_ipcore_slice1_u_mux_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 352);
    return Data;
}
void hilsim_ipcore_slice1_u_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 356, Data);
}
int hilsim_ipcore_slice1_u_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 356);
    return Data;
}
void hilsim_ipcore_slice0_xd_presc_shift_write(hilsim_ipcore *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 304, Data);
}
u8 hilsim_ipcore_slice0_xd_presc_shift_read(hilsim_ipcore *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 304);
    return Data;
}
void hilsim_ipcore_slice0_xd_presc_mul_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 308, Data);
}
int hilsim_ipcore_slice0_xd_presc_mul_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 308);
    return Data;
}
void hilsim_ipcore_slice0_xd_nlf_presc_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 280, Data);
}
int hilsim_ipcore_slice0_xd_nlf_presc_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 280);
    return Data;
}
void hilsim_ipcore_slice0_xd_nlf_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 284, Data);
}
int hilsim_ipcore_slice0_xd_nlf_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 284);
    return Data;
}
void hilsim_ipcore_slice0_xd_mux_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 272, Data);
}
u32 hilsim_ipcore_slice0_xd_mux_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 272);
    return Data;
}
void hilsim_ipcore_slice0_xd_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 276, Data);
}
int hilsim_ipcore_slice0_xd_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 276);
    return Data;
}
void hilsim_ipcore_slice0_x_presc_shift_write(hilsim_ipcore *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 312, Data);
}
u8 hilsim_ipcore_slice0_x_presc_shift_read(hilsim_ipcore *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 312);
    return Data;
}
void hilsim_ipcore_slice0_x_presc_mul_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 316, Data);
}
int hilsim_ipcore_slice0_x_presc_mul_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 316);
    return Data;
}
void hilsim_ipcore_slice0_x_nlf_presc_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 264, Data);
}
int hilsim_ipcore_slice0_x_nlf_presc_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 264);
    return Data;
}
void hilsim_ipcore_slice0_x_nlf_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 268, Data);
}
int hilsim_ipcore_slice0_x_nlf_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 268);
    return Data;
}
void hilsim_ipcore_slice0_x_mux_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 256, Data);
}
u32 hilsim_ipcore_slice0_x_mux_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 256);
    return Data;
}
void hilsim_ipcore_slice0_x_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 260, Data);
}
int hilsim_ipcore_slice0_x_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 260);
    return Data;
}
void hilsim_ipcore_slice0_u_nlf_presc_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 296, Data);
}
int hilsim_ipcore_slice0_u_nlf_presc_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 296);
    return Data;
}
void hilsim_ipcore_slice0_u_nlf_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 300, Data);
}
int hilsim_ipcore_slice0_u_nlf_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 300);
    return Data;
}
void hilsim_ipcore_slice0_u_mux_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 288, Data);
}
u32 hilsim_ipcore_slice0_u_mux_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 288);
    return Data;
}
void hilsim_ipcore_slice0_u_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 292, Data);
}
int hilsim_ipcore_slice0_u_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 292);
    return Data;
}
void hilsim_ipcore_out_mat_nlf_dac1_xx2_presc_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 240, Data);
}
int hilsim_ipcore_out_mat_nlf_dac1_xx2_presc_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 240);
    return Data;
}
void hilsim_ipcore_out_mat_nlf_dac1_xx2_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 244, Data);
}
int hilsim_ipcore_out_mat_nlf_dac1_xx2_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 244);
    return Data;
}
void hilsim_ipcore_out_mat_nlf_dac1_xx2_en_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 236, Data);
}
u32 hilsim_ipcore_out_mat_nlf_dac1_xx2_en_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 236);
    return Data;
}
void hilsim_ipcore_out_mat_nlf_dac1_xx1_presc_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 228, Data);
}
int hilsim_ipcore_out_mat_nlf_dac1_xx1_presc_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 228);
    return Data;
}
void hilsim_ipcore_out_mat_nlf_dac1_xx1_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 232, Data);
}
int hilsim_ipcore_out_mat_nlf_dac1_xx1_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 232);
    return Data;
}
void hilsim_ipcore_out_mat_nlf_dac1_xx1_en_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 224, Data);
}
u32 hilsim_ipcore_out_mat_nlf_dac1_xx1_en_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 224);
    return Data;
}
void hilsim_ipcore_out_mat_nlf_dac1_xx0_presc_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 216, Data);
}
int hilsim_ipcore_out_mat_nlf_dac1_xx0_presc_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 216);
    return Data;
}
void hilsim_ipcore_out_mat_nlf_dac1_xx0_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 220, Data);
}
int hilsim_ipcore_out_mat_nlf_dac1_xx0_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 220);
    return Data;
}
void hilsim_ipcore_out_mat_nlf_dac1_xx0_en_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 212, Data);
}
u32 hilsim_ipcore_out_mat_nlf_dac1_xx0_en_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 212);
    return Data;
}
void hilsim_ipcore_out_mat_nlf_dac0_xx2_presc_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 204, Data);
}
int hilsim_ipcore_out_mat_nlf_dac0_xx2_presc_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 204);
    return Data;
}
void hilsim_ipcore_out_mat_nlf_dac0_xx2_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 208, Data);
}
int hilsim_ipcore_out_mat_nlf_dac0_xx2_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 208);
    return Data;
}
void hilsim_ipcore_out_mat_nlf_dac0_xx2_en_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 200, Data);
}
u32 hilsim_ipcore_out_mat_nlf_dac0_xx2_en_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 200);
    return Data;
}
void hilsim_ipcore_out_mat_nlf_dac0_xx1_presc_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 192, Data);
}
int hilsim_ipcore_out_mat_nlf_dac0_xx1_presc_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 192);
    return Data;
}
void hilsim_ipcore_out_mat_nlf_dac0_xx1_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 196, Data);
}
int hilsim_ipcore_out_mat_nlf_dac0_xx1_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 196);
    return Data;
}
void hilsim_ipcore_out_mat_nlf_dac0_xx1_en_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 188, Data);
}
u32 hilsim_ipcore_out_mat_nlf_dac0_xx1_en_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 188);
    return Data;
}
void hilsim_ipcore_out_mat_nlf_dac0_xx0_presc_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 180, Data);
}
int hilsim_ipcore_out_mat_nlf_dac0_xx0_presc_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 180);
    return Data;
}
void hilsim_ipcore_out_mat_nlf_dac0_xx0_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 184, Data);
}
int hilsim_ipcore_out_mat_nlf_dac0_xx0_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 184);
    return Data;
}
void hilsim_ipcore_out_mat_nlf_dac0_xx0_en_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 176, Data);
}
u32 hilsim_ipcore_out_mat_nlf_dac0_xx0_en_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 176);
    return Data;
}
void hilsim_ipcore_out_mat_fac_dac1_xx2_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 172, Data);
}
int hilsim_ipcore_out_mat_fac_dac1_xx2_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 172);
    return Data;
}
void hilsim_ipcore_out_mat_fac_dac1_xx1_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 168, Data);
}
int hilsim_ipcore_out_mat_fac_dac1_xx1_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 168);
    return Data;
}
void hilsim_ipcore_out_mat_fac_dac1_xx0_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 164, Data);
}
int hilsim_ipcore_out_mat_fac_dac1_xx0_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 164);
    return Data;
}
void hilsim_ipcore_out_mat_fac_dac0_xx2_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 148, Data);
}
int hilsim_ipcore_out_mat_fac_dac0_xx2_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 148);
    return Data;
}
void hilsim_ipcore_out_mat_fac_dac0_xx1_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 144, Data);
}
int hilsim_ipcore_out_mat_fac_dac0_xx1_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 144);
    return Data;
}
void hilsim_ipcore_out_mat_fac_dac0_xx0_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 140, Data);
}
int hilsim_ipcore_out_mat_fac_dac0_xx0_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 140);
    return Data;
}
void hilsim_ipcore_out_mat_dac1_selx2_write(hilsim_ipcore *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 160, Data);
}
u8 hilsim_ipcore_out_mat_dac1_selx2_read(hilsim_ipcore *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 160);
    return Data;
}
void hilsim_ipcore_out_mat_dac1_selx1_write(hilsim_ipcore *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 156, Data);
}
u8 hilsim_ipcore_out_mat_dac1_selx1_read(hilsim_ipcore *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 156);
    return Data;
}
void hilsim_ipcore_out_mat_dac1_selx0_write(hilsim_ipcore *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 152, Data);
}
u8 hilsim_ipcore_out_mat_dac1_selx0_read(hilsim_ipcore *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 152);
    return Data;
}
void hilsim_ipcore_out_mat_dac0_selx2_write(hilsim_ipcore *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 136, Data);
}
u8 hilsim_ipcore_out_mat_dac0_selx2_read(hilsim_ipcore *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 136);
    return Data;
}
void hilsim_ipcore_out_mat_dac0_selx1_write(hilsim_ipcore *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 132, Data);
}
u8 hilsim_ipcore_out_mat_dac0_selx1_read(hilsim_ipcore *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 132);
    return Data;
}
void hilsim_ipcore_out_mat_dac0_selx0_write(hilsim_ipcore *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 128, Data);
}
u8 hilsim_ipcore_out_mat_dac0_selx0_read(hilsim_ipcore *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 128);
    return Data;
}
void hilsim_ipcore_led_value_write(hilsim_ipcore *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 0, Data);
}
u8 hilsim_ipcore_led_value_read(hilsim_ipcore *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 0);
    return Data;
}
void hilsim_ipcore_inp_mat_fac_u2_noise_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 96, Data);
}
int hilsim_ipcore_inp_mat_fac_u2_noise_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 96);
    return Data;
}
void hilsim_ipcore_inp_mat_fac_u2_adc1_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 92, Data);
}
int hilsim_ipcore_inp_mat_fac_u2_adc1_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 92);
    return Data;
}
void hilsim_ipcore_inp_mat_fac_u2_adc0_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 88, Data);
}
int hilsim_ipcore_inp_mat_fac_u2_adc0_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 88);
    return Data;
}
void hilsim_ipcore_inp_mat_fac_u1_noise_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 84, Data);
}
int hilsim_ipcore_inp_mat_fac_u1_noise_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 84);
    return Data;
}
void hilsim_ipcore_inp_mat_fac_u1_adc1_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 80, Data);
}
int hilsim_ipcore_inp_mat_fac_u1_adc1_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 80);
    return Data;
}
void hilsim_ipcore_inp_mat_fac_u1_adc0_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 76, Data);
}
int hilsim_ipcore_inp_mat_fac_u1_adc0_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 76);
    return Data;
}
void hilsim_ipcore_inp_mat_fac_u0_noise_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 72, Data);
}
int hilsim_ipcore_inp_mat_fac_u0_noise_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 72);
    return Data;
}
void hilsim_ipcore_inp_mat_fac_u0_adc1_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 68, Data);
}
int hilsim_ipcore_inp_mat_fac_u0_adc1_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 68);
    return Data;
}
void hilsim_ipcore_inp_mat_fac_u0_adc0_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 64, Data);
}
int hilsim_ipcore_inp_mat_fac_u0_adc0_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 64);
    return Data;
}
void hilsim_ipcore_cfg_system_reset_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 56, Data);
}
u32 hilsim_ipcore_cfg_system_reset_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 56);
    return Data;
}
void hilsim_ipcore_cfg_noise_presc2_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 52, Data);
}
int hilsim_ipcore_cfg_noise_presc2_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 52);
    return Data;
}
void hilsim_ipcore_cfg_noise_presc1_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 48, Data);
}
int hilsim_ipcore_cfg_noise_presc1_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 48);
    return Data;
}
void hilsim_ipcore_cfg_noise_presc0_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 44, Data);
}
int hilsim_ipcore_cfg_noise_presc0_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 44);
    return Data;
}
void hilsim_ipcore_cfg_nlf_we_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 28, Data);
}
u32 hilsim_ipcore_cfg_nlf_we_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 28);
    return Data;
}
void hilsim_ipcore_cfg_nlf_start_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 20, Data);
}
u32 hilsim_ipcore_cfg_nlf_start_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 20);
    return Data;
}
void hilsim_ipcore_cfg_nlf_select_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 32, Data);
}
u32 hilsim_ipcore_cfg_nlf_select_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 32);
    return Data;
}
void hilsim_ipcore_cfg_nlf_data_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 40, Data);
}
int hilsim_ipcore_cfg_nlf_data_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 40);
    return Data;
}
void hilsim_ipcore_cfg_nlf_addr_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 36, Data);
}
u32 hilsim_ipcore_cfg_nlf_addr_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 36);
    return Data;
}
void hilsim_ipcore_adc1_nlf_presc_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 460, Data);
}
int hilsim_ipcore_adc1_nlf_presc_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 460);
    return Data;
}
void hilsim_ipcore_adc1_nlf_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 464, Data);
}
int hilsim_ipcore_adc1_nlf_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 464);
    return Data;
}
void hilsim_ipcore_adc1_nlf_enable_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 468, Data);
}
u32 hilsim_ipcore_adc1_nlf_enable_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 468);
    return Data;
}
void hilsim_ipcore_adc0_nlf_presc_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 448, Data);
}
int hilsim_ipcore_adc0_nlf_presc_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 448);
    return Data;
}
void hilsim_ipcore_adc0_nlf_gain_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 452, Data);
}
int hilsim_ipcore_adc0_nlf_gain_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 452);
    return Data;
}
void hilsim_ipcore_adc0_nlf_enable_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_BaseAddress, 456, Data);
}
u32 hilsim_ipcore_adc0_nlf_enable_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 456);
    return Data;
}
u32 hilsim_ipcore_cfg_nlf_done_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_BaseAddress, 24);
    return Data;
}
void hilsim_ipcore_nlf_switch_sw_switch_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_axi_b_BaseAddress, 72, Data);
}
u32 hilsim_ipcore_nlf_switch_sw_switch_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_axi_b_BaseAddress, 72);
    return Data;
}
void hilsim_ipcore_nlf_switch_io_mask_write(hilsim_ipcore *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_axi_b_BaseAddress, 68, Data);
}
u32 hilsim_ipcore_nlf_switch_io_mask_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_axi_b_BaseAddress, 68);
    return Data;
}
void hilsim_ipcore_dac1_calib_offset_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_axi_b_BaseAddress, 28, Data);
}
int hilsim_ipcore_dac1_calib_offset_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_axi_b_BaseAddress, 28);
    return Data;
}
void hilsim_ipcore_dac1_calib_factor_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_axi_b_BaseAddress, 36, Data);
}
int hilsim_ipcore_dac1_calib_factor_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_axi_b_BaseAddress, 36);
    return Data;
}
void hilsim_ipcore_dac0_calib_offset_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_axi_b_BaseAddress, 24, Data);
}
int hilsim_ipcore_dac0_calib_offset_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_axi_b_BaseAddress, 24);
    return Data;
}
void hilsim_ipcore_dac0_calib_factor_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_axi_b_BaseAddress, 32, Data);
}
int hilsim_ipcore_dac0_calib_factor_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_axi_b_BaseAddress, 32);
    return Data;
}
void hilsim_ipcore_adc1_calib_offset_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_axi_b_BaseAddress, 4, Data);
}
int hilsim_ipcore_adc1_calib_offset_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_axi_b_BaseAddress, 4);
    return Data;
}
void hilsim_ipcore_adc1_calib_factor_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_axi_b_BaseAddress, 12, Data);
}
int hilsim_ipcore_adc1_calib_factor_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_axi_b_BaseAddress, 12);
    return Data;
}
void hilsim_ipcore_adc0_calib_offset_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_axi_b_BaseAddress, 0, Data);
}
int hilsim_ipcore_adc0_calib_offset_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_axi_b_BaseAddress, 0);
    return Data;
}
void hilsim_ipcore_adc0_calib_factor_write(hilsim_ipcore *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    hilsim_ipcore_WriteReg(InstancePtr->hilsim_ipcore_axi_b_BaseAddress, 8, Data);
}
int hilsim_ipcore_adc0_calib_factor_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_axi_b_BaseAddress, 8);
    return Data;
}
int hilsim_ipcore_adc0_value_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_axi_b_BaseAddress, 16);
    return Data;
}
int hilsim_ipcore_adc1_value_read(hilsim_ipcore *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_axi_b_BaseAddress, 20);
    return Data;
}
u32 hilsim_ipcore_nlf_switch_read(hilsim_ipcore *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = hilsim_ipcore_ReadReg(InstancePtr->hilsim_ipcore_axi_b_BaseAddress, 64);
    return Data;
}
