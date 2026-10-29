/**
* @file fpga_lqg_axi_sinit.c
*
* The implementation of the fpga_lqg_axi driver's static initialzation
* functionality.
*
* @note
*
* None
*
*/
#ifndef __linux__
#include "xstatus.h"
#include "xparameters.h"
#include "fpga_lqg_axi.h"
extern fpga_lqg_axi_Config fpga_lqg_axi_ConfigTable[];
/**
* Lookup the device configuration based on the unique device ID.  The table
* ConfigTable contains the configuration info for each device in the system.
*
* @param DeviceId is the device identifier to lookup.
*
* @return
*     - A pointer of data type fpga_lqg_axi_Config which
*    points to the device configuration if DeviceID is found.
*    - NULL if DeviceID is not found.
*
* @note    None.
*
*/
fpga_lqg_axi_Config *fpga_lqg_axi_LookupConfig(u16 DeviceId) {
    fpga_lqg_axi_Config *ConfigPtr = NULL;
    int Index;
    for (Index = 0; Index < XPAR_FPGA_LQG_AXI_NUM_INSTANCES; Index++) {
        if (fpga_lqg_axi_ConfigTable[Index].DeviceId == DeviceId) {
            ConfigPtr = &fpga_lqg_axi_ConfigTable[Index];
            break;
        }
    }
    return ConfigPtr;
}
int fpga_lqg_axi_Initialize(fpga_lqg_axi *InstancePtr, u16 DeviceId) {
    fpga_lqg_axi_Config *ConfigPtr;
    Xil_AssertNonvoid(InstancePtr != NULL);
    ConfigPtr = fpga_lqg_axi_LookupConfig(DeviceId);
    if (ConfigPtr == NULL) {
        InstancePtr->IsReady = 0;
        return (XST_DEVICE_NOT_FOUND);
    }
    return fpga_lqg_axi_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif
