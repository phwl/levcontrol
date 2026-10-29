#ifndef THRTL_8CH_CFG__H
#define THRTL_8CH_CFG__H
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
#include "thrtl_8ch_cfg_hw.h"
/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 thrtl_8ch_cfg_cfg_in_BaseAddress;
} thrtl_8ch_cfg_Config;
#endif
/**
* The thrtl_8ch_cfg driver instance data. The user is required to
* allocate a variable of this type for every thrtl_8ch_cfg device in the system.
* A pointer to a variable of this type is then passed to the driver
* API functions.
*/
typedef struct {
    u32 thrtl_8ch_cfg_cfg_in_BaseAddress;
    u32 IsReady;
} thrtl_8ch_cfg;
/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define thrtl_8ch_cfg_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define thrtl_8ch_cfg_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define thrtl_8ch_cfg_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define thrtl_8ch_cfg_ReadReg(BaseAddress, RegOffset) \
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
int thrtl_8ch_cfg_Initialize(thrtl_8ch_cfg *InstancePtr, u16 DeviceId);
thrtl_8ch_cfg_Config* thrtl_8ch_cfg_LookupConfig(u16 DeviceId);
int thrtl_8ch_cfg_CfgInitialize(thrtl_8ch_cfg *InstancePtr, thrtl_8ch_cfg_Config *ConfigPtr);
#else
int thrtl_8ch_cfg_Initialize(thrtl_8ch_cfg *InstancePtr, const char* InstanceName);
int thrtl_8ch_cfg_Release(thrtl_8ch_cfg *InstancePtr);
#endif
/**
* Write to usr_rst_in gateway of thrtl_8ch_cfg. Assignments are LSB-justified.
*
* @param	InstancePtr is the usr_rst_in instance to operate on.
* @param	Data is value to be written to gateway usr_rst_in.
*
* @return	None.
*
* @note    .
*
*/
void thrtl_8ch_cfg_usr_rst_in_write(thrtl_8ch_cfg *InstancePtr, u32 Data);
/**
* Read from usr_rst_in gateway of thrtl_8ch_cfg. Assignments are LSB-justified.
*
* @param	InstancePtr is the usr_rst_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 thrtl_8ch_cfg_usr_rst_in_read(thrtl_8ch_cfg *InstancePtr);
/**
* Write to trigger_src gateway of thrtl_8ch_cfg. Assignments are LSB-justified.
*
* @param	InstancePtr is the trigger_src instance to operate on.
* @param	Data is value to be written to gateway trigger_src.
*
* @return	None.
*
* @note    .
*
*/
void thrtl_8ch_cfg_trigger_src_write(thrtl_8ch_cfg *InstancePtr, u32 Data);
/**
* Read from trigger_src gateway of thrtl_8ch_cfg. Assignments are LSB-justified.
*
* @param	InstancePtr is the trigger_src instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 thrtl_8ch_cfg_trigger_src_read(thrtl_8ch_cfg *InstancePtr);
/**
* Write to trigger_in gateway of thrtl_8ch_cfg. Assignments are LSB-justified.
*
* @param	InstancePtr is the trigger_in instance to operate on.
* @param	Data is value to be written to gateway trigger_in.
*
* @return	None.
*
* @note    .
*
*/
void thrtl_8ch_cfg_trigger_in_write(thrtl_8ch_cfg *InstancePtr, u32 Data);
/**
* Read from trigger_in gateway of thrtl_8ch_cfg. Assignments are LSB-justified.
*
* @param	InstancePtr is the trigger_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 thrtl_8ch_cfg_trigger_in_read(thrtl_8ch_cfg *InstancePtr);
/**
* Write to frames_no_in gateway of thrtl_8ch_cfg. Assignments are LSB-justified.
*
* @param	InstancePtr is the frames_no_in instance to operate on.
* @param	Data is value to be written to gateway frames_no_in.
*
* @return	None.
*
* @note    .
*
*/
void thrtl_8ch_cfg_frames_no_in_write(thrtl_8ch_cfg *InstancePtr, u32 Data);
/**
* Read from frames_no_in gateway of thrtl_8ch_cfg. Assignments are LSB-justified.
*
* @param	InstancePtr is the frames_no_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 thrtl_8ch_cfg_frames_no_in_read(thrtl_8ch_cfg *InstancePtr);
/**
* Write to decim_in gateway of thrtl_8ch_cfg. Assignments are LSB-justified.
*
* @param	InstancePtr is the decim_in instance to operate on.
* @param	Data is value to be written to gateway decim_in.
*
* @return	None.
*
* @note    .
*
*/
void thrtl_8ch_cfg_decim_in_write(thrtl_8ch_cfg *InstancePtr, u32 Data);
/**
* Read from decim_in gateway of thrtl_8ch_cfg. Assignments are LSB-justified.
*
* @param	InstancePtr is the decim_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 thrtl_8ch_cfg_decim_in_read(thrtl_8ch_cfg *InstancePtr);
/**
* Write to data_sel_in gateway of thrtl_8ch_cfg. Assignments are LSB-justified.
*
* @param	InstancePtr is the data_sel_in instance to operate on.
* @param	Data is value to be written to gateway data_sel_in.
*
* @return	None.
*
* @note    .
*
*/
void thrtl_8ch_cfg_data_sel_in_write(thrtl_8ch_cfg *InstancePtr, u8 Data);
/**
* Read from data_sel_in gateway of thrtl_8ch_cfg. Assignments are LSB-justified.
*
* @param	InstancePtr is the data_sel_in instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 thrtl_8ch_cfg_data_sel_in_read(thrtl_8ch_cfg *InstancePtr);
#ifdef __cplusplus
}
#endif
#endif
