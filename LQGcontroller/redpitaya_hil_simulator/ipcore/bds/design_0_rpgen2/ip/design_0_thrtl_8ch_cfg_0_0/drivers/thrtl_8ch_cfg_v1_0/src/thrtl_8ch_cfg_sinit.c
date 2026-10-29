/**
* @file thrtl_8ch_cfg_sinit.c
*
* The implementation of the thrtl_8ch_cfg driver's static initialzation
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
#include "thrtl_8ch_cfg.h"
extern thrtl_8ch_cfg_Config thrtl_8ch_cfg_ConfigTable[];
/**
* Lookup the device configuration based on the unique device ID.  The table
* ConfigTable contains the configuration info for each device in the system.
*
* @param DeviceId is the device identifier to lookup.
*
* @return
*     - A pointer of data type thrtl_8ch_cfg_Config which
*    points to the device configuration if DeviceID is found.
*    - NULL if DeviceID is not found.
*
* @note    None.
*
*/
thrtl_8ch_cfg_Config *thrtl_8ch_cfg_LookupConfig(u16 DeviceId) {
    thrtl_8ch_cfg_Config *ConfigPtr = NULL;
    int Index;
    for (Index = 0; Index < XPAR_THRTL_8CH_CFG_NUM_INSTANCES; Index++) {
        if (thrtl_8ch_cfg_ConfigTable[Index].DeviceId == DeviceId) {
            ConfigPtr = &thrtl_8ch_cfg_ConfigTable[Index];
            break;
        }
    }
    return ConfigPtr;
}
int thrtl_8ch_cfg_Initialize(thrtl_8ch_cfg *InstancePtr, u16 DeviceId) {
    thrtl_8ch_cfg_Config *ConfigPtr;
    Xil_AssertNonvoid(InstancePtr != NULL);
    ConfigPtr = thrtl_8ch_cfg_LookupConfig(DeviceId);
    if (ConfigPtr == NULL) {
        InstancePtr->IsReady = 0;
        return (XST_DEVICE_NOT_FOUND);
    }
    return thrtl_8ch_cfg_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif
