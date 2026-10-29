#ifndef FPGA_KF_2DOF__H
#define FPGA_KF_2DOF__H
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
#include "fpga_kf_2dof_hw.h"
/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 fpga_kf_2dof_cfg_in_BaseAddress;
} fpga_kf_2dof_Config;
#endif
/**
* The fpga_kf_2dof driver instance data. The user is required to
* allocate a variable of this type for every fpga_kf_2dof device in the system.
* A pointer to a variable of this type is then passed to the driver
* API functions.
*/
typedef struct {
    u32 fpga_kf_2dof_cfg_in_BaseAddress;
    u32 IsReady;
} fpga_kf_2dof;
/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define fpga_kf_2dof_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define fpga_kf_2dof_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define fpga_kf_2dof_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define fpga_kf_2dof_ReadReg(BaseAddress, RegOffset) \
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
int fpga_kf_2dof_Initialize(fpga_kf_2dof *InstancePtr, u16 DeviceId);
fpga_kf_2dof_Config* fpga_kf_2dof_LookupConfig(u16 DeviceId);
int fpga_kf_2dof_CfgInitialize(fpga_kf_2dof *InstancePtr, fpga_kf_2dof_Config *ConfigPtr);
#else
int fpga_kf_2dof_Initialize(fpga_kf_2dof *InstancePtr, const char* InstanceName);
int fpga_kf_2dof_Release(fpga_kf_2dof *InstancePtr);
#endif
/**
* Write to x_ref_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the x_ref_in instance to operate on.
* @param	Data is value to be written to gateway x_ref_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_x_ref_in_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from x_ref_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the x_ref_in instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_x_ref_in_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in79 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in79 instance to operate on.
* @param	Data is value to be written to gateway gateway_in79.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in79_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in79 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in79 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in79_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in78 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in78 instance to operate on.
* @param	Data is value to be written to gateway gateway_in78.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in78_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in78 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in78 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in78_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in77 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in77 instance to operate on.
* @param	Data is value to be written to gateway gateway_in77.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in77_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in77 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in77 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in77_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in76 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in76 instance to operate on.
* @param	Data is value to be written to gateway gateway_in76.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in76_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in76 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in76 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in76_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in75 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in75 instance to operate on.
* @param	Data is value to be written to gateway gateway_in75.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in75_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in75 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in75 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in75_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in74 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in74 instance to operate on.
* @param	Data is value to be written to gateway gateway_in74.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in74_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in74 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in74 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in74_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in73 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in73 instance to operate on.
* @param	Data is value to be written to gateway gateway_in73.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in73_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in73 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in73 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in73_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in72 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in72 instance to operate on.
* @param	Data is value to be written to gateway gateway_in72.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in72_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in72 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in72 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in72_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in71 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in71 instance to operate on.
* @param	Data is value to be written to gateway gateway_in71.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in71_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in71 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in71 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in71_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in70 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in70 instance to operate on.
* @param	Data is value to be written to gateway gateway_in70.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in70_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in70 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in70 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in70_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in69 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in69 instance to operate on.
* @param	Data is value to be written to gateway gateway_in69.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in69_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in69 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in69 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in69_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in68 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in68 instance to operate on.
* @param	Data is value to be written to gateway gateway_in68.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in68_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in68 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in68 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in68_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in67 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in67 instance to operate on.
* @param	Data is value to be written to gateway gateway_in67.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in67_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in67 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in67 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in67_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in66 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in66 instance to operate on.
* @param	Data is value to be written to gateway gateway_in66.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in66_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in66 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in66 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in66_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in65 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in65 instance to operate on.
* @param	Data is value to be written to gateway gateway_in65.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in65_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in65 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in65 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in65_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in64 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in64 instance to operate on.
* @param	Data is value to be written to gateway gateway_in64.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in64_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in64 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in64 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in64_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in63 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in63 instance to operate on.
* @param	Data is value to be written to gateway gateway_in63.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in63_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in63 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in63 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in63_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in62 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in62 instance to operate on.
* @param	Data is value to be written to gateway gateway_in62.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in62_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in62 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in62 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in62_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in61 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in61 instance to operate on.
* @param	Data is value to be written to gateway gateway_in61.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in61_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in61 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in61 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in61_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in60 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in60 instance to operate on.
* @param	Data is value to be written to gateway gateway_in60.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in60_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in60 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in60 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in60_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in59 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in59 instance to operate on.
* @param	Data is value to be written to gateway gateway_in59.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in59_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in59 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in59 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in59_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in58 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in58 instance to operate on.
* @param	Data is value to be written to gateway gateway_in58.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in58_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in58 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in58 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in58_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in57 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in57 instance to operate on.
* @param	Data is value to be written to gateway gateway_in57.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in57_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in57 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in57 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in57_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in56 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in56 instance to operate on.
* @param	Data is value to be written to gateway gateway_in56.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in56_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in56 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in56 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in56_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in55 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in55 instance to operate on.
* @param	Data is value to be written to gateway gateway_in55.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in55_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in55 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in55 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in55_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in54 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in54 instance to operate on.
* @param	Data is value to be written to gateway gateway_in54.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in54_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in54 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in54 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in54_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in53 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in53 instance to operate on.
* @param	Data is value to be written to gateway gateway_in53.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in53_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in53 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in53 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in53_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in52 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in52 instance to operate on.
* @param	Data is value to be written to gateway gateway_in52.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in52_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in52 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in52 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in52_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in51 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in51 instance to operate on.
* @param	Data is value to be written to gateway gateway_in51.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in51_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in51 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in51 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in51_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in50 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in50 instance to operate on.
* @param	Data is value to be written to gateway gateway_in50.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in50_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in50 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in50 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in50_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in49 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in49 instance to operate on.
* @param	Data is value to be written to gateway gateway_in49.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in49_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in49 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in49 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in49_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in48 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in48 instance to operate on.
* @param	Data is value to be written to gateway gateway_in48.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in48_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in48 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in48 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in48_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in47 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in47 instance to operate on.
* @param	Data is value to be written to gateway gateway_in47.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in47_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in47 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in47 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in47_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in46 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in46 instance to operate on.
* @param	Data is value to be written to gateway gateway_in46.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in46_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in46 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in46 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in46_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in45 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in45 instance to operate on.
* @param	Data is value to be written to gateway gateway_in45.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in45_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in45 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in45 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in45_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in44 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in44 instance to operate on.
* @param	Data is value to be written to gateway gateway_in44.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in44_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in44 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in44 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in44_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in43 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in43 instance to operate on.
* @param	Data is value to be written to gateway gateway_in43.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in43_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in43 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in43 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in43_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in42 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in42 instance to operate on.
* @param	Data is value to be written to gateway gateway_in42.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in42_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in42 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in42 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in42_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in41 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in41 instance to operate on.
* @param	Data is value to be written to gateway gateway_in41.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in41_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in41 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in41 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in41_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in40 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in40 instance to operate on.
* @param	Data is value to be written to gateway gateway_in40.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in40_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in40 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in40 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in40_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in39 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in39 instance to operate on.
* @param	Data is value to be written to gateway gateway_in39.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in39_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in39 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in39 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in39_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in38 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in38 instance to operate on.
* @param	Data is value to be written to gateway gateway_in38.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in38_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in38 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in38 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in38_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in37 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in37 instance to operate on.
* @param	Data is value to be written to gateway gateway_in37.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in37_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in37 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in37 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in37_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in36 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in36 instance to operate on.
* @param	Data is value to be written to gateway gateway_in36.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in36_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in36 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in36 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in36_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in35 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in35 instance to operate on.
* @param	Data is value to be written to gateway gateway_in35.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in35_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in35 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in35 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in35_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in34 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in34 instance to operate on.
* @param	Data is value to be written to gateway gateway_in34.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in34_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in34 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in34 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in34_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in33 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in33 instance to operate on.
* @param	Data is value to be written to gateway gateway_in33.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in33_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in33 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in33 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in33_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in32 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in32 instance to operate on.
* @param	Data is value to be written to gateway gateway_in32.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in32_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in32 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in32 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in32_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in31 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in31 instance to operate on.
* @param	Data is value to be written to gateway gateway_in31.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in31_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in31 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in31 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in31_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in30 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in30 instance to operate on.
* @param	Data is value to be written to gateway gateway_in30.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in30_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in30 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in30 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in30_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in29 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in29 instance to operate on.
* @param	Data is value to be written to gateway gateway_in29.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in29_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in29 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in29 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in29_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in28 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in28 instance to operate on.
* @param	Data is value to be written to gateway gateway_in28.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in28_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in28 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in28 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in28_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in27 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in27 instance to operate on.
* @param	Data is value to be written to gateway gateway_in27.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in27_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in27 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in27 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in27_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in26 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in26 instance to operate on.
* @param	Data is value to be written to gateway gateway_in26.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in26_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in26 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in26 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in26_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in25 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in25 instance to operate on.
* @param	Data is value to be written to gateway gateway_in25.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in25_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in25 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in25 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in25_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in24 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in24 instance to operate on.
* @param	Data is value to be written to gateway gateway_in24.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in24_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in24 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in24 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in24_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in23 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in23 instance to operate on.
* @param	Data is value to be written to gateway gateway_in23.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in23_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in23 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in23 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in23_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in22 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in22 instance to operate on.
* @param	Data is value to be written to gateway gateway_in22.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in22_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in22 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in22 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in22_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in21 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in21 instance to operate on.
* @param	Data is value to be written to gateway gateway_in21.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in21_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in21 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in21 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in21_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in20 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in20 instance to operate on.
* @param	Data is value to be written to gateway gateway_in20.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in20_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in20 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in20 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in20_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in19 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in19 instance to operate on.
* @param	Data is value to be written to gateway gateway_in19.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in19_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in19 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in19 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in19_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in18 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in18 instance to operate on.
* @param	Data is value to be written to gateway gateway_in18.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in18_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in18 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in18 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in18_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in17 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in17 instance to operate on.
* @param	Data is value to be written to gateway gateway_in17.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in17_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in17 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in17 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in17_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in16 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in16 instance to operate on.
* @param	Data is value to be written to gateway gateway_in16.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in16_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in16 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in16 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in16_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in9 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in9 instance to operate on.
* @param	Data is value to be written to gateway gateway_in9.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in9_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in9 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in9 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in9_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in8 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in8 instance to operate on.
* @param	Data is value to be written to gateway gateway_in8.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in8_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in8 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in8 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in8_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in7 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in7 instance to operate on.
* @param	Data is value to be written to gateway gateway_in7.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in7_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in7 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in7 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in7_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in6 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in6 instance to operate on.
* @param	Data is value to be written to gateway gateway_in6.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in6_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in6 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in6 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in6_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in5 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in5 instance to operate on.
* @param	Data is value to be written to gateway gateway_in5.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in5_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in5 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in5 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in5_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in4 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in4 instance to operate on.
* @param	Data is value to be written to gateway gateway_in4.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in4_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in4 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in4 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in4_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in3 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in3 instance to operate on.
* @param	Data is value to be written to gateway gateway_in3.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in3_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in3 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in3 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in3_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in2 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in2 instance to operate on.
* @param	Data is value to be written to gateway gateway_in2.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in2_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in2 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in2 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in2_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in15 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in15 instance to operate on.
* @param	Data is value to be written to gateway gateway_in15.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in15_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in15 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in15 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in15_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in14 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in14 instance to operate on.
* @param	Data is value to be written to gateway gateway_in14.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in14_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in14 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in14 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in14_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in13 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in13 instance to operate on.
* @param	Data is value to be written to gateway gateway_in13.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in13_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in13 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in13 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in13_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in12 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in12 instance to operate on.
* @param	Data is value to be written to gateway gateway_in12.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in12_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in12 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in12 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in12_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in11 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in11 instance to operate on.
* @param	Data is value to be written to gateway gateway_in11.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in11_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in11 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in11 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in11_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in10 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in10 instance to operate on.
* @param	Data is value to be written to gateway gateway_in10.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in10_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in10 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in10 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in10_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in1 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in1 instance to operate on.
* @param	Data is value to be written to gateway gateway_in1.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in1_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in1 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in1 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in1_read(fpga_kf_2dof *InstancePtr);
/**
* Write to gateway_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in instance to operate on.
* @param	Data is value to be written to gateway gateway_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_gateway_in_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from gateway_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_gateway_in_read(fpga_kf_2dof *InstancePtr);
/**
* Write to sw_override_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the sw_override_in instance to operate on.
* @param	Data is value to be written to gateway sw_override_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_sw_override_in_write(fpga_kf_2dof *InstancePtr, u8 Data);
/**
* Read from sw_override_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the sw_override_in instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 fpga_kf_2dof_sw_override_in_read(fpga_kf_2dof *InstancePtr);
/**
* Write to reg_timer_period gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_timer_period instance to operate on.
* @param	Data is value to be written to gateway reg_timer_period.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_reg_timer_period_write(fpga_kf_2dof *InstancePtr, u32 Data);
/**
* Read from reg_timer_period gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_timer_period instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_2dof_reg_timer_period_read(fpga_kf_2dof *InstancePtr);
/**
* Write to reg_rp_switch_tf gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_rp_switch_tf instance to operate on.
* @param	Data is value to be written to gateway reg_rp_switch_tf.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_reg_rp_switch_tf_write(fpga_kf_2dof *InstancePtr, u32 Data);
/**
* Read from reg_rp_switch_tf gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_rp_switch_tf instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_2dof_reg_rp_switch_tf_read(fpga_kf_2dof *InstancePtr);
/**
* Write to reg_rp_switch_t0 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_rp_switch_t0 instance to operate on.
* @param	Data is value to be written to gateway reg_rp_switch_t0.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_reg_rp_switch_t0_write(fpga_kf_2dof *InstancePtr, u32 Data);
/**
* Read from reg_rp_switch_t0 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_rp_switch_t0 instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_2dof_reg_rp_switch_t0_read(fpga_kf_2dof *InstancePtr);
/**
* Write to reg_out_switch_tf gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_out_switch_tf instance to operate on.
* @param	Data is value to be written to gateway reg_out_switch_tf.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_reg_out_switch_tf_write(fpga_kf_2dof *InstancePtr, u32 Data);
/**
* Read from reg_out_switch_tf gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_out_switch_tf instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_2dof_reg_out_switch_tf_read(fpga_kf_2dof *InstancePtr);
/**
* Write to reg_out_switch_t0 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_out_switch_t0 instance to operate on.
* @param	Data is value to be written to gateway reg_out_switch_t0.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_reg_out_switch_t0_write(fpga_kf_2dof *InstancePtr, u32 Data);
/**
* Read from reg_out_switch_t0 gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_out_switch_t0 instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_2dof_reg_out_switch_t0_read(fpga_kf_2dof *InstancePtr);
/**
* Write to out_switch_on gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_switch_on instance to operate on.
* @param	Data is value to be written to gateway out_switch_on.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_out_switch_on_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from out_switch_on gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_switch_on instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_out_switch_on_read(fpga_kf_2dof *InstancePtr);
/**
* Write to out_switch_off gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_switch_off instance to operate on.
* @param	Data is value to be written to gateway out_switch_off.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_out_switch_off_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from out_switch_off gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_switch_off instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_out_switch_off_read(fpga_kf_2dof *InstancePtr);
/**
* Write to fb_src_switch_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the fb_src_switch_in instance to operate on.
* @param	Data is value to be written to gateway fb_src_switch_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_fb_src_switch_in_write(fpga_kf_2dof *InstancePtr, u8 Data);
/**
* Read from fb_src_switch_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the fb_src_switch_in instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 fpga_kf_2dof_fb_src_switch_in_read(fpga_kf_2dof *InstancePtr);
/**
* Write to dma_trigger_time gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the dma_trigger_time instance to operate on.
* @param	Data is value to be written to gateway dma_trigger_time.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_dma_trigger_time_write(fpga_kf_2dof *InstancePtr, u32 Data);
/**
* Read from dma_trigger_time gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the dma_trigger_time instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_2dof_dma_trigger_time_read(fpga_kf_2dof *InstancePtr);
/**
* Write to barrier_ub_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_ub_in instance to operate on.
* @param	Data is value to be written to gateway barrier_ub_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_barrier_ub_in_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from barrier_ub_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_ub_in instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_barrier_ub_in_read(fpga_kf_2dof *InstancePtr);
/**
* Write to barrier_lb_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_lb_in instance to operate on.
* @param	Data is value to be written to gateway barrier_lb_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_barrier_lb_in_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from barrier_lb_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_lb_in instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_barrier_lb_in_read(fpga_kf_2dof *InstancePtr);
/**
* Write to barrier_ram_we_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_ram_we_in instance to operate on.
* @param	Data is value to be written to gateway barrier_ram_we_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_barrier_ram_we_in_write(fpga_kf_2dof *InstancePtr, u32 Data);
/**
* Read from barrier_ram_we_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_ram_we_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_2dof_barrier_ram_we_in_read(fpga_kf_2dof *InstancePtr);
/**
* Write to barrier_ram_addr_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_ram_addr_in instance to operate on.
* @param	Data is value to be written to gateway barrier_ram_addr_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_barrier_ram_addr_in_write(fpga_kf_2dof *InstancePtr, u32 Data);
/**
* Read from barrier_ram_addr_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_ram_addr_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_2dof_barrier_ram_addr_in_read(fpga_kf_2dof *InstancePtr);
/**
* Write to barrier_c_ofst_idx_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c_ofst_idx_in instance to operate on.
* @param	Data is value to be written to gateway barrier_c_ofst_idx_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_barrier_c_ofst_idx_in_write(fpga_kf_2dof *InstancePtr, u32 Data);
/**
* Read from barrier_c_ofst_idx_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c_ofst_idx_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_2dof_barrier_c_ofst_idx_in_read(fpga_kf_2dof *InstancePtr);
/**
* Write to barrier_c_idx_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c_idx_in instance to operate on.
* @param	Data is value to be written to gateway barrier_c_idx_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_barrier_c_idx_in_write(fpga_kf_2dof *InstancePtr, u32 Data);
/**
* Read from barrier_c_idx_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c_idx_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_2dof_barrier_c_idx_in_read(fpga_kf_2dof *InstancePtr);
/**
* Write to barrier_c1_data_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c1_data_in instance to operate on.
* @param	Data is value to be written to gateway barrier_c1_data_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_barrier_c1_data_in_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from barrier_c1_data_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c1_data_in instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_barrier_c1_data_in_read(fpga_kf_2dof *InstancePtr);
/**
* Write to barrier_c0_data_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c0_data_in instance to operate on.
* @param	Data is value to be written to gateway barrier_c0_data_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_barrier_c0_data_in_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from barrier_c0_data_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c0_data_in instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_barrier_c0_data_in_read(fpga_kf_2dof *InstancePtr);
/**
* Write to fixed_led_pattern_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the fixed_led_pattern_in instance to operate on.
* @param	Data is value to be written to gateway fixed_led_pattern_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_fixed_led_pattern_in_write(fpga_kf_2dof *InstancePtr, u32 Data);
/**
* Read from fixed_led_pattern_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the fixed_led_pattern_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_2dof_fixed_led_pattern_in_read(fpga_kf_2dof *InstancePtr);
/**
* Write to disco_mode_enable gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the disco_mode_enable instance to operate on.
* @param	Data is value to be written to gateway disco_mode_enable.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_disco_mode_enable_write(fpga_kf_2dof *InstancePtr, u32 Data);
/**
* Read from disco_mode_enable gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the disco_mode_enable instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_2dof_disco_mode_enable_read(fpga_kf_2dof *InstancePtr);
/**
* Write to ap_ip_switch_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the ap_ip_switch_in instance to operate on.
* @param	Data is value to be written to gateway ap_ip_switch_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_ap_ip_switch_in_write(fpga_kf_2dof *InstancePtr, u8 Data);
/**
* Read from ap_ip_switch_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the ap_ip_switch_in instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 fpga_kf_2dof_ap_ip_switch_in_read(fpga_kf_2dof *InstancePtr);
/**
* Write to adc_ch2_offst gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc_ch2_offst instance to operate on.
* @param	Data is value to be written to gateway adc_ch2_offst.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_adc_ch2_offst_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from adc_ch2_offst gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc_ch2_offst instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_adc_ch2_offst_read(fpga_kf_2dof *InstancePtr);
/**
* Write to adc_ch1_offst gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc_ch1_offst instance to operate on.
* @param	Data is value to be written to gateway adc_ch1_offst.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_adc_ch1_offst_write(fpga_kf_2dof *InstancePtr, int Data);
/**
* Read from adc_ch1_offst gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc_ch1_offst instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_2dof_adc_ch1_offst_read(fpga_kf_2dof *InstancePtr);
/**
* Write to registers_wren_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the registers_wren_in instance to operate on.
* @param	Data is value to be written to gateway registers_wren_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_2dof_registers_wren_in_write(fpga_kf_2dof *InstancePtr, u32 Data);
/**
* Read from registers_wren_in gateway of fpga_kf_2dof. Assignments are LSB-justified.
*
* @param	InstancePtr is the registers_wren_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_2dof_registers_wren_in_read(fpga_kf_2dof *InstancePtr);
#ifdef __cplusplus
}
#endif
#endif
