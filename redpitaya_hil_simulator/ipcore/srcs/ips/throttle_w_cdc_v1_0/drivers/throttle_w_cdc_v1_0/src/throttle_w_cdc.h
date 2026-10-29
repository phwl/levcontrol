#ifndef THROTTLE_W_CDC__H
#define THROTTLE_W_CDC__H
#ifdef __cplusplus
extern "C" {
#endif
/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "throttle_w_cdc_hw.h"
/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 throttle_w_cdc_cfg_in_BaseAddress;
} throttle_w_cdc_Config;
#endif
/**
* The throttle_w_cdc driver instance data. The user is required to
* allocate a variable of this type for every throttle_w_cdc device in the system.
* A pointer to a variable of this type is then passed to the driver
* API functions.
*/
typedef struct {
    u32 throttle_w_cdc_cfg_in_BaseAddress;
    u32 IsReady;
} throttle_w_cdc;
/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define throttle_w_cdc_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define throttle_w_cdc_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define throttle_w_cdc_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define throttle_w_cdc_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif
/************************** Function Prototypes *****************************/
#ifndef __linux__
int throttle_w_cdc_Initialize(throttle_w_cdc *InstancePtr, u16 DeviceId);
throttle_w_cdc_Config* throttle_w_cdc_LookupConfig(u16 DeviceId);
int throttle_w_cdc_CfgInitialize(throttle_w_cdc *InstancePtr, throttle_w_cdc_Config *ConfigPtr);
#else
int throttle_w_cdc_Initialize(throttle_w_cdc *InstancePtr, const char* InstanceName);
int throttle_w_cdc_Release(throttle_w_cdc *InstancePtr);
#endif
/**
* Write to usr_rst_in gateway of throttle_w_cdc. Assignments are LSB-justified.
*
* @param	InstancePtr is the usr_rst_in instance to operate on.
* @param	Data is value to be written to gateway usr_rst_in.
*
* @return	None.
*
* @note    .
*
*/
void throttle_w_cdc_usr_rst_in_write(throttle_w_cdc *InstancePtr, u32 Data);
/**
* Read from usr_rst_in gateway of throttle_w_cdc. Assignments are LSB-justified.
*
* @param	InstancePtr is the usr_rst_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 throttle_w_cdc_usr_rst_in_read(throttle_w_cdc *InstancePtr);
/**
* Write to trigger_in gateway of throttle_w_cdc. Assignments are LSB-justified.
*
* @param	InstancePtr is the trigger_in instance to operate on.
* @param	Data is value to be written to gateway trigger_in.
*
* @return	None.
*
* @note    .
*
*/
void throttle_w_cdc_trigger_in_write(throttle_w_cdc *InstancePtr, u32 Data);
/**
* Read from trigger_in gateway of throttle_w_cdc. Assignments are LSB-justified.
*
* @param	InstancePtr is the trigger_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 throttle_w_cdc_trigger_in_read(throttle_w_cdc *InstancePtr);
/**
* Write to frames_no_in gateway of throttle_w_cdc. Assignments are LSB-justified.
*
* @param	InstancePtr is the frames_no_in instance to operate on.
* @param	Data is value to be written to gateway frames_no_in.
*
* @return	None.
*
* @note    .
*
*/
void throttle_w_cdc_frames_no_in_write(throttle_w_cdc *InstancePtr, u32 Data);
/**
* Read from frames_no_in gateway of throttle_w_cdc. Assignments are LSB-justified.
*
* @param	InstancePtr is the frames_no_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 throttle_w_cdc_frames_no_in_read(throttle_w_cdc *InstancePtr);
/**
* Write to decim_in gateway of throttle_w_cdc. Assignments are LSB-justified.
*
* @param	InstancePtr is the decim_in instance to operate on.
* @param	Data is value to be written to gateway decim_in.
*
* @return	None.
*
* @note    .
*
*/
void throttle_w_cdc_decim_in_write(throttle_w_cdc *InstancePtr, u32 Data);
/**
* Read from decim_in gateway of throttle_w_cdc. Assignments are LSB-justified.
*
* @param	InstancePtr is the decim_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 throttle_w_cdc_decim_in_read(throttle_w_cdc *InstancePtr);
#ifdef __cplusplus
}
#endif
#endif
