/**
* @file hilsim_ipcore_sinit.c
*
* The implementation of the hilsim_ipcore driver's static initialzation
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
#include "hilsim_ipcore.h"
extern hilsim_ipcore_Config hilsim_ipcore_ConfigTable[];
/**
* Lookup the device configuration based on the unique device ID.  The table
* ConfigTable contains the configuration info for each device in the system.
*
* @param DeviceId is the device identifier to lookup.
*
* @return
*     - A pointer of data type hilsim_ipcore_Config which
*    points to the device configuration if DeviceID is found.
*    - NULL if DeviceID is not found.
*
* @note    None.
*
*/
hilsim_ipcore_Config *hilsim_ipcore_LookupConfig(u16 DeviceId) {
    hilsim_ipcore_Config *ConfigPtr = NULL;
    int Index;
    for (Index = 0; Index < XPAR_HILSIM_IPCORE_NUM_INSTANCES; Index++) {
        if (hilsim_ipcore_ConfigTable[Index].DeviceId == DeviceId) {
            ConfigPtr = &hilsim_ipcore_ConfigTable[Index];
            break;
        }
    }
    return ConfigPtr;
}
int hilsim_ipcore_Initialize(hilsim_ipcore *InstancePtr, u16 DeviceId) {
    hilsim_ipcore_Config *ConfigPtr;
    Xil_AssertNonvoid(InstancePtr != NULL);
    ConfigPtr = hilsim_ipcore_LookupConfig(DeviceId);
    if (ConfigPtr == NULL) {
        InstancePtr->IsReady = 0;
        return (XST_DEVICE_NOT_FOUND);
    }
    return hilsim_ipcore_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif
