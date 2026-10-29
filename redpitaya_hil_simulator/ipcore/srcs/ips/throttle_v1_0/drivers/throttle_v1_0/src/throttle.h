#ifndef THROTTLE__H
#define THROTTLE__H
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
#include "throttle_hw.h"
/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 throttle_cfg_in_BaseAddress;
} throttle_Config;
#endif
/**
* The throttle driver instance data. The user is required to
* allocate a variable of this type for every throttle device in the system.
* A pointer to a variable of this type is then passed to the driver
* API functions.
*/
typedef struct {
    u32 throttle_cfg_in_BaseAddress;
    u32 IsReady;
} throttle;
/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define throttle_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define throttle_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define throttle_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define throttle_ReadReg(BaseAddress, RegOffset) \
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
int throttle_Initialize(throttle *InstancePtr, u16 DeviceId);
throttle_Config* throttle_LookupConfig(u16 DeviceId);
int throttle_CfgInitialize(throttle *InstancePtr, throttle_Config *ConfigPtr);
#else
int throttle_Initialize(throttle *InstancePtr, const char* InstanceName);
int throttle_Release(throttle *InstancePtr);
#endif
/**
* Write to trigger_src gateway of throttle. Assignments are LSB-justified.
*
* @param	InstancePtr is the trigger_src instance to operate on.
* @param	Data is value to be written to gateway trigger_src.
*
* @return	None.
*
* @note    .
*
*/
void throttle_trigger_src_write(throttle *InstancePtr, u32 Data);
/**
* Read from trigger_src gateway of throttle. Assignments are LSB-justified.
*
* @param	InstancePtr is the trigger_src instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 throttle_trigger_src_read(throttle *InstancePtr);
/**
* Write to usr_rst_in gateway of throttle. Assignments are LSB-justified.
*
* @param	InstancePtr is the usr_rst_in instance to operate on.
* @param	Data is value to be written to gateway usr_rst_in.
*
* @return	None.
*
* @note    .
*
*/
void throttle_usr_rst_in_write(throttle *InstancePtr, u32 Data);
/**
* Read from usr_rst_in gateway of throttle. Assignments are LSB-justified.
*
* @param	InstancePtr is the usr_rst_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 throttle_usr_rst_in_read(throttle *InstancePtr);
/**
* Write to trigger_in gateway of throttle. Assignments are LSB-justified.
*
* @param	InstancePtr is the trigger_in instance to operate on.
* @param	Data is value to be written to gateway trigger_in.
*
* @return	None.
*
* @note    .
*
*/
void throttle_trigger_in_write(throttle *InstancePtr, u32 Data);
/**
* Read from trigger_in gateway of throttle. Assignments are LSB-justified.
*
* @param	InstancePtr is the trigger_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 throttle_trigger_in_read(throttle *InstancePtr);
/**
* Write to frames_no_in gateway of throttle. Assignments are LSB-justified.
*
* @param	InstancePtr is the frames_no_in instance to operate on.
* @param	Data is value to be written to gateway frames_no_in.
*
* @return	None.
*
* @note    .
*
*/
void throttle_frames_no_in_write(throttle *InstancePtr, u32 Data);
/**
* Read from frames_no_in gateway of throttle. Assignments are LSB-justified.
*
* @param	InstancePtr is the frames_no_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 throttle_frames_no_in_read(throttle *InstancePtr);
/**
* Write to decim_in gateway of throttle. Assignments are LSB-justified.
*
* @param	InstancePtr is the decim_in instance to operate on.
* @param	Data is value to be written to gateway decim_in.
*
* @return	None.
*
* @note    .
*
*/
void throttle_decim_in_write(throttle *InstancePtr, u32 Data);
/**
* Read from decim_in gateway of throttle. Assignments are LSB-justified.
*
* @param	InstancePtr is the decim_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 throttle_decim_in_read(throttle *InstancePtr);
#ifdef __cplusplus
}
#endif
#endif
