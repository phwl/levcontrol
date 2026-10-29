#ifndef FPGA_LQG_AXI__H
#define FPGA_LQG_AXI__H
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
#include "fpga_lqg_axi_hw.h"
/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 fpga_lqg_axi_BaseAddress;
} fpga_lqg_axi_Config;
#endif
/**
* The fpga_lqg_axi driver instance data. The user is required to
* allocate a variable of this type for every fpga_lqg_axi device in the system.
* A pointer to a variable of this type is then passed to the driver
* API functions.
*/
typedef struct {
    u32 fpga_lqg_axi_BaseAddress;
    u32 IsReady;
} fpga_lqg_axi;
/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define fpga_lqg_axi_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define fpga_lqg_axi_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define fpga_lqg_axi_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define fpga_lqg_axi_ReadReg(BaseAddress, RegOffset) \
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
int fpga_lqg_axi_Initialize(fpga_lqg_axi *InstancePtr, u16 DeviceId);
fpga_lqg_axi_Config* fpga_lqg_axi_LookupConfig(u16 DeviceId);
int fpga_lqg_axi_CfgInitialize(fpga_lqg_axi *InstancePtr, fpga_lqg_axi_Config *ConfigPtr);
#else
int fpga_lqg_axi_Initialize(fpga_lqg_axi *InstancePtr, const char* InstanceName);
int fpga_lqg_axi_Release(fpga_lqg_axi *InstancePtr);
#endif
/**
* Write to axi_state_reset gateway of fpga_lqg_axi. Assignments are LSB-justified.
*
* @param	InstancePtr is the axi_state_reset instance to operate on.
* @param	Data is value to be written to gateway axi_state_reset.
*
* @return	None.
*
* @note    .
*
*/
void fpga_lqg_axi_axi_state_reset_write(fpga_lqg_axi *InstancePtr, u32 Data);
/**
* Read from axi_state_reset gateway of fpga_lqg_axi. Assignments are LSB-justified.
*
* @param	InstancePtr is the axi_state_reset instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_lqg_axi_axi_state_reset_read(fpga_lqg_axi *InstancePtr);
/**
* Write to axi_led_mask gateway of fpga_lqg_axi. Assignments are LSB-justified.
*
* @param	InstancePtr is the axi_led_mask instance to operate on.
* @param	Data is value to be written to gateway axi_led_mask.
*
* @return	None.
*
* @note    .
*
*/
void fpga_lqg_axi_axi_led_mask_write(fpga_lqg_axi *InstancePtr, u8 Data);
/**
* Read from axi_led_mask gateway of fpga_lqg_axi. Assignments are LSB-justified.
*
* @param	InstancePtr is the axi_led_mask instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 fpga_lqg_axi_axi_led_mask_read(fpga_lqg_axi *InstancePtr);
/**
* Read from axi_led_output gateway of fpga_lqg_axi. Assignments are LSB-justified.
*
* @param	InstancePtr is the axi_led_output instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 fpga_lqg_axi_axi_led_output_read(fpga_lqg_axi *InstancePtr);
#ifdef __cplusplus
}
#endif
#endif
