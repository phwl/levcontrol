#include "fpga_lqg_axi.h"
#ifndef __linux__
int fpga_lqg_axi_CfgInitialize(fpga_lqg_axi *InstancePtr, fpga_lqg_axi_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->fpga_lqg_axi_BaseAddress = ConfigPtr->fpga_lqg_axi_BaseAddress;

    InstancePtr->IsReady = 1;
    return XST_SUCCESS;
}
#endif
void fpga_lqg_axi_axi_state_reset_write(fpga_lqg_axi *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_lqg_axi_WriteReg(InstancePtr->fpga_lqg_axi_BaseAddress, 4, Data);
}
u32 fpga_lqg_axi_axi_state_reset_read(fpga_lqg_axi *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_lqg_axi_ReadReg(InstancePtr->fpga_lqg_axi_BaseAddress, 4);
    return Data;
}
void fpga_lqg_axi_axi_led_mask_write(fpga_lqg_axi *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_lqg_axi_WriteReg(InstancePtr->fpga_lqg_axi_BaseAddress, 0, Data);
}
u8 fpga_lqg_axi_axi_led_mask_read(fpga_lqg_axi *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_lqg_axi_ReadReg(InstancePtr->fpga_lqg_axi_BaseAddress, 0);
    return Data;
}
u8 fpga_lqg_axi_axi_led_output_read(fpga_lqg_axi *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_lqg_axi_ReadReg(InstancePtr->fpga_lqg_axi_BaseAddress, 8);
    return Data;
}
