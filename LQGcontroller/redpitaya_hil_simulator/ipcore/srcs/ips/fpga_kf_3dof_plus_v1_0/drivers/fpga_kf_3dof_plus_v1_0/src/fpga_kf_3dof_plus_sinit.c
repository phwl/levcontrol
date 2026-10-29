/**
* @file fpga_kf_3dof_plus_sinit.c
*
* The implementation of the fpga_kf_3dof_plus driver's static initialzation
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
#include "fpga_kf_3dof_plus.h"
extern fpga_kf_3dof_plus_Config fpga_kf_3dof_plus_ConfigTable[];
/**
* Lookup the device configuration based on the unique device ID.  The table
* ConfigTable contains the configuration info for each device in the system.
*
* @param DeviceId is the device identifier to lookup.
*
* @return
*     - A pointer of data type fpga_kf_3dof_plus_Config which
*    points to the device configuration if DeviceID is found.
*    - NULL if DeviceID is not found.
*
* @note    None.
*
*/
fpga_kf_3dof_plus_Config *fpga_kf_3dof_plus_LookupConfig(u16 DeviceId) {
    fpga_kf_3dof_plus_Config *ConfigPtr = NULL;
    int Index;
    for (Index = 0; Index < XPAR_FPGA_KF_3DOF_PLUS_NUM_INSTANCES; Index++) {
        if (fpga_kf_3dof_plus_ConfigTable[Index].DeviceId == DeviceId) {
            ConfigPtr = &fpga_kf_3dof_plus_ConfigTable[Index];
            break;
        }
    }
    return ConfigPtr;
}
int fpga_kf_3dof_plus_Initialize(fpga_kf_3dof_plus *InstancePtr, u16 DeviceId) {
    fpga_kf_3dof_plus_Config *ConfigPtr;
    Xil_AssertNonvoid(InstancePtr != NULL);
    ConfigPtr = fpga_kf_3dof_plus_LookupConfig(DeviceId);
    if (ConfigPtr == NULL) {
        InstancePtr->IsReady = 0;
        return (XST_DEVICE_NOT_FOUND);
    }
    return fpga_kf_3dof_plus_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif
