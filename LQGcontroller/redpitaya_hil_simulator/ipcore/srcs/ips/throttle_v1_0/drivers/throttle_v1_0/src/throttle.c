#include "throttle.h"
#ifndef __linux__
int throttle_CfgInitialize(throttle *InstancePtr, throttle_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->throttle_cfg_in_BaseAddress = ConfigPtr->throttle_cfg_in_BaseAddress;

    InstancePtr->IsReady = 1;
    return XST_SUCCESS;
}
#endif
void throttle_trigger_src_write(throttle *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    throttle_WriteReg(InstancePtr->throttle_cfg_in_BaseAddress, 16, Data);
}
u32 throttle_trigger_src_read(throttle *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = throttle_ReadReg(InstancePtr->throttle_cfg_in_BaseAddress, 16);
    return Data;
}
void throttle_usr_rst_in_write(throttle *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    throttle_WriteReg(InstancePtr->throttle_cfg_in_BaseAddress, 4, Data);
}
u32 throttle_usr_rst_in_read(throttle *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = throttle_ReadReg(InstancePtr->throttle_cfg_in_BaseAddress, 4);
    return Data;
}
void throttle_trigger_in_write(throttle *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    throttle_WriteReg(InstancePtr->throttle_cfg_in_BaseAddress, 0, Data);
}
u32 throttle_trigger_in_read(throttle *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = throttle_ReadReg(InstancePtr->throttle_cfg_in_BaseAddress, 0);
    return Data;
}
void throttle_frames_no_in_write(throttle *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    throttle_WriteReg(InstancePtr->throttle_cfg_in_BaseAddress, 8, Data);
}
u32 throttle_frames_no_in_read(throttle *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = throttle_ReadReg(InstancePtr->throttle_cfg_in_BaseAddress, 8);
    return Data;
}
void throttle_decim_in_write(throttle *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    throttle_WriteReg(InstancePtr->throttle_cfg_in_BaseAddress, 12, Data);
}
u32 throttle_decim_in_read(throttle *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = throttle_ReadReg(InstancePtr->throttle_cfg_in_BaseAddress, 12);
    return Data;
}
