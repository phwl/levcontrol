/**
* @file fpga_kf1_sinit.c
*
* The implementation of the fpga_kf1 driver's static initialzation
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
#include "fpga_kf1.h"
extern fpga_kf1_Config fpga_kf1_ConfigTable[];
/**
* Lookup the device configuration based on the unique device ID.  The table
* ConfigTable contains the configuration info for each device in the system.
*
* @param DeviceId is the device identifier to lookup.
*
* @return
*     - A pointer of data type fpga_kf1_Config which
*    points to the device configuration if DeviceID is found.
*    - NULL if DeviceID is not found.
*
* @note    None.
*
*/
fpga_kf1_Config *fpga_kf1_LookupConfig(u16 DeviceId) {
    fpga_kf1_Config *ConfigPtr = NULL;
    int Index;
    for (Index = 0; Index < XPAR_FPGA_KF1_NUM_INSTANCES; Index++) {
        if (fpga_kf1_ConfigTable[Index].DeviceId == DeviceId) {
            ConfigPtr = &fpga_kf1_ConfigTable[Index];
            break;
        }
    }
    return ConfigPtr;
}
int fpga_kf1_Initialize(fpga_kf1 *InstancePtr, u16 DeviceId) {
    fpga_kf1_Config *ConfigPtr;
    Xil_AssertNonvoid(InstancePtr != NULL);
    ConfigPtr = fpga_kf1_LookupConfig(DeviceId);
    if (ConfigPtr == NULL) {
        InstancePtr->IsReady = 0;
        return (XST_DEVICE_NOT_FOUND);
    }
    return fpga_kf1_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif
