#include "throttle_w_cdc.h"
#ifndef __linux__
int throttle_w_cdc_CfgInitialize(throttle_w_cdc *InstancePtr, throttle_w_cdc_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->throttle_w_cdc_cfg_in_BaseAddress = ConfigPtr->throttle_w_cdc_cfg_in_BaseAddress;

    InstancePtr->IsReady = 1;
    return XST_SUCCESS;
}
#endif
void throttle_w_cdc_usr_rst_in_write(throttle_w_cdc *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    throttle_w_cdc_WriteReg(InstancePtr->throttle_w_cdc_cfg_in_BaseAddress, 4, Data);
}
u32 throttle_w_cdc_usr_rst_in_read(throttle_w_cdc *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = throttle_w_cdc_ReadReg(InstancePtr->throttle_w_cdc_cfg_in_BaseAddress, 4);
    return Data;
}
void throttle_w_cdc_trigger_in_write(throttle_w_cdc *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    throttle_w_cdc_WriteReg(InstancePtr->throttle_w_cdc_cfg_in_BaseAddress, 0, Data);
}
u32 throttle_w_cdc_trigger_in_read(throttle_w_cdc *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = throttle_w_cdc_ReadReg(InstancePtr->throttle_w_cdc_cfg_in_BaseAddress, 0);
    return Data;
}
void throttle_w_cdc_frames_no_in_write(throttle_w_cdc *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    throttle_w_cdc_WriteReg(InstancePtr->throttle_w_cdc_cfg_in_BaseAddress, 8, Data);
}
u32 throttle_w_cdc_frames_no_in_read(throttle_w_cdc *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = throttle_w_cdc_ReadReg(InstancePtr->throttle_w_cdc_cfg_in_BaseAddress, 8);
    return Data;
}
void throttle_w_cdc_decim_in_write(throttle_w_cdc *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    throttle_w_cdc_WriteReg(InstancePtr->throttle_w_cdc_cfg_in_BaseAddress, 12, Data);
}
u32 throttle_w_cdc_decim_in_read(throttle_w_cdc *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = throttle_w_cdc_ReadReg(InstancePtr->throttle_w_cdc_cfg_in_BaseAddress, 12);
    return Data;
}
