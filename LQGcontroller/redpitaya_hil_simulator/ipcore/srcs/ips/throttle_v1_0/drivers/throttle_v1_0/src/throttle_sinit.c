/**
* @file throttle_sinit.c
*
* The implementation of the throttle driver's static initialzation
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
#include "throttle.h"
extern throttle_Config throttle_ConfigTable[];
/**
* Lookup the device configuration based on the unique device ID.  The table
* ConfigTable contains the configuration info for each device in the system.
*
* @param DeviceId is the device identifier to lookup.
*
* @return
*     - A pointer of data type throttle_Config which
*    points to the device configuration if DeviceID is found.
*    - NULL if DeviceID is not found.
*
* @note    None.
*
*/
throttle_Config *throttle_LookupConfig(u16 DeviceId) {
    throttle_Config *ConfigPtr = NULL;
    int Index;
    for (Index = 0; Index < XPAR_THROTTLE_NUM_INSTANCES; Index++) {
        if (throttle_ConfigTable[Index].DeviceId == DeviceId) {
            ConfigPtr = &throttle_ConfigTable[Index];
            break;
        }
    }
    return ConfigPtr;
}
int throttle_Initialize(throttle *InstancePtr, u16 DeviceId) {
    throttle_Config *ConfigPtr;
    Xil_AssertNonvoid(InstancePtr != NULL);
    ConfigPtr = throttle_LookupConfig(DeviceId);
    if (ConfigPtr == NULL) {
        InstancePtr->IsReady = 0;
        return (XST_DEVICE_NOT_FOUND);
    }
    return throttle_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif
