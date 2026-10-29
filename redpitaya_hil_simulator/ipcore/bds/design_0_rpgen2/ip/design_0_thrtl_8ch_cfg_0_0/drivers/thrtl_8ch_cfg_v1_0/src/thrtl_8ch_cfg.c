#include "thrtl_8ch_cfg.h"
#ifndef __linux__
int thrtl_8ch_cfg_CfgInitialize(thrtl_8ch_cfg *InstancePtr, thrtl_8ch_cfg_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->thrtl_8ch_cfg_cfg_in_BaseAddress = ConfigPtr->thrtl_8ch_cfg_cfg_in_BaseAddress;

    InstancePtr->IsReady = 1;
    return XST_SUCCESS;
}
#endif
void thrtl_8ch_cfg_usr_rst_in_write(thrtl_8ch_cfg *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    thrtl_8ch_cfg_WriteReg(InstancePtr->thrtl_8ch_cfg_cfg_in_BaseAddress, 4, Data);
}
u32 thrtl_8ch_cfg_usr_rst_in_read(thrtl_8ch_cfg *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = thrtl_8ch_cfg_ReadReg(InstancePtr->thrtl_8ch_cfg_cfg_in_BaseAddress, 4);
    return Data;
}
void thrtl_8ch_cfg_trigger_src_write(thrtl_8ch_cfg *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    thrtl_8ch_cfg_WriteReg(InstancePtr->thrtl_8ch_cfg_cfg_in_BaseAddress, 16, Data);
}
u32 thrtl_8ch_cfg_trigger_src_read(thrtl_8ch_cfg *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = thrtl_8ch_cfg_ReadReg(InstancePtr->thrtl_8ch_cfg_cfg_in_BaseAddress, 16);
    return Data;
}
void thrtl_8ch_cfg_trigger_in_write(thrtl_8ch_cfg *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    thrtl_8ch_cfg_WriteReg(InstancePtr->thrtl_8ch_cfg_cfg_in_BaseAddress, 0, Data);
}
u32 thrtl_8ch_cfg_trigger_in_read(thrtl_8ch_cfg *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = thrtl_8ch_cfg_ReadReg(InstancePtr->thrtl_8ch_cfg_cfg_in_BaseAddress, 0);
    return Data;
}
void thrtl_8ch_cfg_frames_no_in_write(thrtl_8ch_cfg *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    thrtl_8ch_cfg_WriteReg(InstancePtr->thrtl_8ch_cfg_cfg_in_BaseAddress, 8, Data);
}
u32 thrtl_8ch_cfg_frames_no_in_read(thrtl_8ch_cfg *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = thrtl_8ch_cfg_ReadReg(InstancePtr->thrtl_8ch_cfg_cfg_in_BaseAddress, 8);
    return Data;
}
void thrtl_8ch_cfg_decim_in_write(thrtl_8ch_cfg *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    thrtl_8ch_cfg_WriteReg(InstancePtr->thrtl_8ch_cfg_cfg_in_BaseAddress, 12, Data);
}
u32 thrtl_8ch_cfg_decim_in_read(thrtl_8ch_cfg *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = thrtl_8ch_cfg_ReadReg(InstancePtr->thrtl_8ch_cfg_cfg_in_BaseAddress, 12);
    return Data;
}
void thrtl_8ch_cfg_data_sel_in_write(thrtl_8ch_cfg *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    thrtl_8ch_cfg_WriteReg(InstancePtr->thrtl_8ch_cfg_cfg_in_BaseAddress, 20, Data);
}
u8 thrtl_8ch_cfg_data_sel_in_read(thrtl_8ch_cfg *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = thrtl_8ch_cfg_ReadReg(InstancePtr->thrtl_8ch_cfg_cfg_in_BaseAddress, 20);
    return Data;
}
