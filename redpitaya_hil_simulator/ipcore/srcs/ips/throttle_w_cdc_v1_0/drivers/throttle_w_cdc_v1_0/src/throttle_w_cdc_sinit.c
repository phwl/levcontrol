/**
* @file throttle_w_cdc_sinit.c
*
* The implementation of the throttle_w_cdc driver's static initialzation
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
#include "throttle_w_cdc.h"
extern throttle_w_cdc_Config throttle_w_cdc_ConfigTable[];
/**
* Lookup the device configuration based on the unique device ID.  The table
* ConfigTable contains the configuration info for each device in the system.
*
* @param DeviceId is the device identifier to lookup.
*
* @return
*     - A pointer of data type throttle_w_cdc_Config which
*    points to the device configuration if DeviceID is found.
*    - NULL if DeviceID is not found.
*
* @note    None.
*
*/
throttle_w_cdc_Config *throttle_w_cdc_LookupConfig(u16 DeviceId) {
    throttle_w_cdc_Config *ConfigPtr = NULL;
    int Index;
    for (Index = 0; Index < XPAR_THROTTLE_W_CDC_NUM_INSTANCES; Index++) {
        if (throttle_w_cdc_ConfigTable[Index].DeviceId == DeviceId) {
            ConfigPtr = &throttle_w_cdc_ConfigTable[Index];
            break;
        }
    }
    return ConfigPtr;
}
int throttle_w_cdc_Initialize(throttle_w_cdc *InstancePtr, u16 DeviceId) {
    throttle_w_cdc_Config *ConfigPtr;
    Xil_AssertNonvoid(InstancePtr != NULL);
    ConfigPtr = throttle_w_cdc_LookupConfig(DeviceId);
    if (ConfigPtr == NULL) {
        InstancePtr->IsReady = 0;
        return (XST_DEVICE_NOT_FOUND);
    }
    return throttle_w_cdc_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif
