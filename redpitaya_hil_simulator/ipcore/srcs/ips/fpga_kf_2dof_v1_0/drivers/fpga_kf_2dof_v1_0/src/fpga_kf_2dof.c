#include "fpga_kf_2dof.h"
#ifndef __linux__
int fpga_kf_2dof_CfgInitialize(fpga_kf_2dof *InstancePtr, fpga_kf_2dof_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress = ConfigPtr->fpga_kf_2dof_cfg_in_BaseAddress;

    InstancePtr->IsReady = 1;
    return XST_SUCCESS;
}
#endif
void fpga_kf_2dof_x_ref_in_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 12, Data);
}
int fpga_kf_2dof_x_ref_in_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 12);
    return Data;
}
void fpga_kf_2dof_gateway_in79_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 668, Data);
}
int fpga_kf_2dof_gateway_in79_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 668);
    return Data;
}
void fpga_kf_2dof_gateway_in78_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 664, Data);
}
int fpga_kf_2dof_gateway_in78_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 664);
    return Data;
}
void fpga_kf_2dof_gateway_in77_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 660, Data);
}
int fpga_kf_2dof_gateway_in77_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 660);
    return Data;
}
void fpga_kf_2dof_gateway_in76_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 656, Data);
}
int fpga_kf_2dof_gateway_in76_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 656);
    return Data;
}
void fpga_kf_2dof_gateway_in75_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 652, Data);
}
int fpga_kf_2dof_gateway_in75_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 652);
    return Data;
}
void fpga_kf_2dof_gateway_in74_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 648, Data);
}
int fpga_kf_2dof_gateway_in74_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 648);
    return Data;
}
void fpga_kf_2dof_gateway_in73_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 644, Data);
}
int fpga_kf_2dof_gateway_in73_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 644);
    return Data;
}
void fpga_kf_2dof_gateway_in72_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 640, Data);
}
int fpga_kf_2dof_gateway_in72_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 640);
    return Data;
}
void fpga_kf_2dof_gateway_in71_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 636, Data);
}
int fpga_kf_2dof_gateway_in71_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 636);
    return Data;
}
void fpga_kf_2dof_gateway_in70_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 632, Data);
}
int fpga_kf_2dof_gateway_in70_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 632);
    return Data;
}
void fpga_kf_2dof_gateway_in69_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 628, Data);
}
int fpga_kf_2dof_gateway_in69_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 628);
    return Data;
}
void fpga_kf_2dof_gateway_in68_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 624, Data);
}
int fpga_kf_2dof_gateway_in68_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 624);
    return Data;
}
void fpga_kf_2dof_gateway_in67_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 620, Data);
}
int fpga_kf_2dof_gateway_in67_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 620);
    return Data;
}
void fpga_kf_2dof_gateway_in66_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 616, Data);
}
int fpga_kf_2dof_gateway_in66_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 616);
    return Data;
}
void fpga_kf_2dof_gateway_in65_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 612, Data);
}
int fpga_kf_2dof_gateway_in65_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 612);
    return Data;
}
void fpga_kf_2dof_gateway_in64_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 608, Data);
}
int fpga_kf_2dof_gateway_in64_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 608);
    return Data;
}
void fpga_kf_2dof_gateway_in63_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 604, Data);
}
int fpga_kf_2dof_gateway_in63_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 604);
    return Data;
}
void fpga_kf_2dof_gateway_in62_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 600, Data);
}
int fpga_kf_2dof_gateway_in62_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 600);
    return Data;
}
void fpga_kf_2dof_gateway_in61_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 596, Data);
}
int fpga_kf_2dof_gateway_in61_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 596);
    return Data;
}
void fpga_kf_2dof_gateway_in60_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 592, Data);
}
int fpga_kf_2dof_gateway_in60_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 592);
    return Data;
}
void fpga_kf_2dof_gateway_in59_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 588, Data);
}
int fpga_kf_2dof_gateway_in59_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 588);
    return Data;
}
void fpga_kf_2dof_gateway_in58_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 584, Data);
}
int fpga_kf_2dof_gateway_in58_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 584);
    return Data;
}
void fpga_kf_2dof_gateway_in57_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 580, Data);
}
int fpga_kf_2dof_gateway_in57_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 580);
    return Data;
}
void fpga_kf_2dof_gateway_in56_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 576, Data);
}
int fpga_kf_2dof_gateway_in56_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 576);
    return Data;
}
void fpga_kf_2dof_gateway_in55_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 548, Data);
}
int fpga_kf_2dof_gateway_in55_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 548);
    return Data;
}
void fpga_kf_2dof_gateway_in54_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 544, Data);
}
int fpga_kf_2dof_gateway_in54_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 544);
    return Data;
}
void fpga_kf_2dof_gateway_in53_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 540, Data);
}
int fpga_kf_2dof_gateway_in53_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 540);
    return Data;
}
void fpga_kf_2dof_gateway_in52_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 536, Data);
}
int fpga_kf_2dof_gateway_in52_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 536);
    return Data;
}
void fpga_kf_2dof_gateway_in51_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 532, Data);
}
int fpga_kf_2dof_gateway_in51_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 532);
    return Data;
}
void fpga_kf_2dof_gateway_in50_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 528, Data);
}
int fpga_kf_2dof_gateway_in50_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 528);
    return Data;
}
void fpga_kf_2dof_gateway_in49_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 524, Data);
}
int fpga_kf_2dof_gateway_in49_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 524);
    return Data;
}
void fpga_kf_2dof_gateway_in48_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 520, Data);
}
int fpga_kf_2dof_gateway_in48_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 520);
    return Data;
}
void fpga_kf_2dof_gateway_in47_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 572, Data);
}
int fpga_kf_2dof_gateway_in47_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 572);
    return Data;
}
void fpga_kf_2dof_gateway_in46_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 568, Data);
}
int fpga_kf_2dof_gateway_in46_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 568);
    return Data;
}
void fpga_kf_2dof_gateway_in45_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 564, Data);
}
int fpga_kf_2dof_gateway_in45_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 564);
    return Data;
}
void fpga_kf_2dof_gateway_in44_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 560, Data);
}
int fpga_kf_2dof_gateway_in44_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 560);
    return Data;
}
void fpga_kf_2dof_gateway_in43_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 556, Data);
}
int fpga_kf_2dof_gateway_in43_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 556);
    return Data;
}
void fpga_kf_2dof_gateway_in42_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 552, Data);
}
int fpga_kf_2dof_gateway_in42_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 552);
    return Data;
}
void fpga_kf_2dof_gateway_in41_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 516, Data);
}
int fpga_kf_2dof_gateway_in41_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 516);
    return Data;
}
void fpga_kf_2dof_gateway_in40_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 512, Data);
}
int fpga_kf_2dof_gateway_in40_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 512);
    return Data;
}
void fpga_kf_2dof_gateway_in39_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 412, Data);
}
int fpga_kf_2dof_gateway_in39_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 412);
    return Data;
}
void fpga_kf_2dof_gateway_in38_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 408, Data);
}
int fpga_kf_2dof_gateway_in38_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 408);
    return Data;
}
void fpga_kf_2dof_gateway_in37_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 404, Data);
}
int fpga_kf_2dof_gateway_in37_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 404);
    return Data;
}
void fpga_kf_2dof_gateway_in36_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 400, Data);
}
int fpga_kf_2dof_gateway_in36_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 400);
    return Data;
}
void fpga_kf_2dof_gateway_in35_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 396, Data);
}
int fpga_kf_2dof_gateway_in35_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 396);
    return Data;
}
void fpga_kf_2dof_gateway_in34_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 392, Data);
}
int fpga_kf_2dof_gateway_in34_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 392);
    return Data;
}
void fpga_kf_2dof_gateway_in33_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 388, Data);
}
int fpga_kf_2dof_gateway_in33_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 388);
    return Data;
}
void fpga_kf_2dof_gateway_in32_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 384, Data);
}
int fpga_kf_2dof_gateway_in32_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 384);
    return Data;
}
void fpga_kf_2dof_gateway_in31_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 380, Data);
}
int fpga_kf_2dof_gateway_in31_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 380);
    return Data;
}
void fpga_kf_2dof_gateway_in30_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 376, Data);
}
int fpga_kf_2dof_gateway_in30_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 376);
    return Data;
}
void fpga_kf_2dof_gateway_in29_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 372, Data);
}
int fpga_kf_2dof_gateway_in29_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 372);
    return Data;
}
void fpga_kf_2dof_gateway_in28_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 368, Data);
}
int fpga_kf_2dof_gateway_in28_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 368);
    return Data;
}
void fpga_kf_2dof_gateway_in27_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 364, Data);
}
int fpga_kf_2dof_gateway_in27_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 364);
    return Data;
}
void fpga_kf_2dof_gateway_in26_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 360, Data);
}
int fpga_kf_2dof_gateway_in26_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 360);
    return Data;
}
void fpga_kf_2dof_gateway_in25_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 356, Data);
}
int fpga_kf_2dof_gateway_in25_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 356);
    return Data;
}
void fpga_kf_2dof_gateway_in24_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 352, Data);
}
int fpga_kf_2dof_gateway_in24_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 352);
    return Data;
}
void fpga_kf_2dof_gateway_in23_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 348, Data);
}
int fpga_kf_2dof_gateway_in23_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 348);
    return Data;
}
void fpga_kf_2dof_gateway_in22_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 344, Data);
}
int fpga_kf_2dof_gateway_in22_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 344);
    return Data;
}
void fpga_kf_2dof_gateway_in21_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 340, Data);
}
int fpga_kf_2dof_gateway_in21_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 340);
    return Data;
}
void fpga_kf_2dof_gateway_in20_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 336, Data);
}
int fpga_kf_2dof_gateway_in20_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 336);
    return Data;
}
void fpga_kf_2dof_gateway_in19_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 332, Data);
}
int fpga_kf_2dof_gateway_in19_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 332);
    return Data;
}
void fpga_kf_2dof_gateway_in18_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 328, Data);
}
int fpga_kf_2dof_gateway_in18_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 328);
    return Data;
}
void fpga_kf_2dof_gateway_in17_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 324, Data);
}
int fpga_kf_2dof_gateway_in17_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 324);
    return Data;
}
void fpga_kf_2dof_gateway_in16_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 320, Data);
}
int fpga_kf_2dof_gateway_in16_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 320);
    return Data;
}
void fpga_kf_2dof_gateway_in9_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 292, Data);
}
int fpga_kf_2dof_gateway_in9_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 292);
    return Data;
}
void fpga_kf_2dof_gateway_in8_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 288, Data);
}
int fpga_kf_2dof_gateway_in8_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 288);
    return Data;
}
void fpga_kf_2dof_gateway_in7_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 284, Data);
}
int fpga_kf_2dof_gateway_in7_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 284);
    return Data;
}
void fpga_kf_2dof_gateway_in6_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 280, Data);
}
int fpga_kf_2dof_gateway_in6_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 280);
    return Data;
}
void fpga_kf_2dof_gateway_in5_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 276, Data);
}
int fpga_kf_2dof_gateway_in5_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 276);
    return Data;
}
void fpga_kf_2dof_gateway_in4_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 272, Data);
}
int fpga_kf_2dof_gateway_in4_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 272);
    return Data;
}
void fpga_kf_2dof_gateway_in3_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 268, Data);
}
int fpga_kf_2dof_gateway_in3_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 268);
    return Data;
}
void fpga_kf_2dof_gateway_in2_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 264, Data);
}
int fpga_kf_2dof_gateway_in2_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 264);
    return Data;
}
void fpga_kf_2dof_gateway_in15_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 316, Data);
}
int fpga_kf_2dof_gateway_in15_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 316);
    return Data;
}
void fpga_kf_2dof_gateway_in14_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 312, Data);
}
int fpga_kf_2dof_gateway_in14_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 312);
    return Data;
}
void fpga_kf_2dof_gateway_in13_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 308, Data);
}
int fpga_kf_2dof_gateway_in13_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 308);
    return Data;
}
void fpga_kf_2dof_gateway_in12_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 304, Data);
}
int fpga_kf_2dof_gateway_in12_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 304);
    return Data;
}
void fpga_kf_2dof_gateway_in11_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 300, Data);
}
int fpga_kf_2dof_gateway_in11_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 300);
    return Data;
}
void fpga_kf_2dof_gateway_in10_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 296, Data);
}
int fpga_kf_2dof_gateway_in10_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 296);
    return Data;
}
void fpga_kf_2dof_gateway_in1_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 260, Data);
}
int fpga_kf_2dof_gateway_in1_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 260);
    return Data;
}
void fpga_kf_2dof_gateway_in_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 256, Data);
}
int fpga_kf_2dof_gateway_in_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 256);
    return Data;
}
void fpga_kf_2dof_sw_override_in_write(fpga_kf_2dof *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 8, Data);
}
u8 fpga_kf_2dof_sw_override_in_read(fpga_kf_2dof *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 8);
    return Data;
}
void fpga_kf_2dof_reg_timer_period_write(fpga_kf_2dof *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 80, Data);
}
u32 fpga_kf_2dof_reg_timer_period_read(fpga_kf_2dof *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 80);
    return Data;
}
void fpga_kf_2dof_reg_rp_switch_tf_write(fpga_kf_2dof *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 88, Data);
}
u32 fpga_kf_2dof_reg_rp_switch_tf_read(fpga_kf_2dof *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 88);
    return Data;
}
void fpga_kf_2dof_reg_rp_switch_t0_write(fpga_kf_2dof *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 84, Data);
}
u32 fpga_kf_2dof_reg_rp_switch_t0_read(fpga_kf_2dof *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 84);
    return Data;
}
void fpga_kf_2dof_reg_out_switch_tf_write(fpga_kf_2dof *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 96, Data);
}
u32 fpga_kf_2dof_reg_out_switch_tf_read(fpga_kf_2dof *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 96);
    return Data;
}
void fpga_kf_2dof_reg_out_switch_t0_write(fpga_kf_2dof *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 92, Data);
}
u32 fpga_kf_2dof_reg_out_switch_t0_read(fpga_kf_2dof *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 92);
    return Data;
}
void fpga_kf_2dof_out_switch_on_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 108, Data);
}
int fpga_kf_2dof_out_switch_on_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 108);
    return Data;
}
void fpga_kf_2dof_out_switch_off_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 104, Data);
}
int fpga_kf_2dof_out_switch_off_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 104);
    return Data;
}
void fpga_kf_2dof_fb_src_switch_in_write(fpga_kf_2dof *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 4, Data);
}
u8 fpga_kf_2dof_fb_src_switch_in_read(fpga_kf_2dof *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 4);
    return Data;
}
void fpga_kf_2dof_dma_trigger_time_write(fpga_kf_2dof *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 100, Data);
}
u32 fpga_kf_2dof_dma_trigger_time_read(fpga_kf_2dof *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 100);
    return Data;
}
void fpga_kf_2dof_barrier_ub_in_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 1024, Data);
}
int fpga_kf_2dof_barrier_ub_in_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 1024);
    return Data;
}
void fpga_kf_2dof_barrier_lb_in_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 1028, Data);
}
int fpga_kf_2dof_barrier_lb_in_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 1028);
    return Data;
}
void fpga_kf_2dof_barrier_ram_we_in_write(fpga_kf_2dof *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 1052, Data);
}
u32 fpga_kf_2dof_barrier_ram_we_in_read(fpga_kf_2dof *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 1052);
    return Data;
}
void fpga_kf_2dof_barrier_ram_addr_in_write(fpga_kf_2dof *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 1040, Data);
}
u32 fpga_kf_2dof_barrier_ram_addr_in_read(fpga_kf_2dof *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 1040);
    return Data;
}
void fpga_kf_2dof_barrier_c_ofst_idx_in_write(fpga_kf_2dof *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 1036, Data);
}
u32 fpga_kf_2dof_barrier_c_ofst_idx_in_read(fpga_kf_2dof *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 1036);
    return Data;
}
void fpga_kf_2dof_barrier_c_idx_in_write(fpga_kf_2dof *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 1032, Data);
}
u32 fpga_kf_2dof_barrier_c_idx_in_read(fpga_kf_2dof *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 1032);
    return Data;
}
void fpga_kf_2dof_barrier_c1_data_in_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 1048, Data);
}
int fpga_kf_2dof_barrier_c1_data_in_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 1048);
    return Data;
}
void fpga_kf_2dof_barrier_c0_data_in_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 1044, Data);
}
int fpga_kf_2dof_barrier_c0_data_in_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 1044);
    return Data;
}
void fpga_kf_2dof_fixed_led_pattern_in_write(fpga_kf_2dof *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 28, Data);
}
u32 fpga_kf_2dof_fixed_led_pattern_in_read(fpga_kf_2dof *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 28);
    return Data;
}
void fpga_kf_2dof_disco_mode_enable_write(fpga_kf_2dof *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 24, Data);
}
u32 fpga_kf_2dof_disco_mode_enable_read(fpga_kf_2dof *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 24);
    return Data;
}
void fpga_kf_2dof_ap_ip_switch_in_write(fpga_kf_2dof *InstancePtr, u8 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 0, Data);
}
u8 fpga_kf_2dof_ap_ip_switch_in_read(fpga_kf_2dof *InstancePtr) {

    u8 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 0);
    return Data;
}
void fpga_kf_2dof_adc_ch2_offst_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 20, Data);
}
int fpga_kf_2dof_adc_ch2_offst_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 20);
    return Data;
}
void fpga_kf_2dof_adc_ch1_offst_write(fpga_kf_2dof *InstancePtr, int Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 16, Data);
}
int fpga_kf_2dof_adc_ch1_offst_read(fpga_kf_2dof *InstancePtr) {

    int Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 16);
    return Data;
}
void fpga_kf_2dof_registers_wren_in_write(fpga_kf_2dof *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    fpga_kf_2dof_WriteReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 768, Data);
}
u32 fpga_kf_2dof_registers_wren_in_read(fpga_kf_2dof *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = fpga_kf_2dof_ReadReg(InstancePtr->fpga_kf_2dof_cfg_in_BaseAddress, 768);
    return Data;
}
