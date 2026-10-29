#ifndef HILSIM_IPCORE__H
#define HILSIM_IPCORE__H
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
#include "hilsim_ipcore_hw.h"
/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 hilsim_ipcore_BaseAddress;
    u32 hilsim_ipcore_axi_b_BaseAddress;
} hilsim_ipcore_Config;
#endif
/**
* The hilsim_ipcore driver instance data. The user is required to
* allocate a variable of this type for every hilsim_ipcore device in the system.
* A pointer to a variable of this type is then passed to the driver
* API functions.
*/
typedef struct {
    u32 hilsim_ipcore_BaseAddress;
    u32 hilsim_ipcore_axi_b_BaseAddress;
    u32 IsReady;
} hilsim_ipcore;
/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define hilsim_ipcore_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define hilsim_ipcore_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define hilsim_ipcore_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define hilsim_ipcore_ReadReg(BaseAddress, RegOffset) \
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
int hilsim_ipcore_Initialize(hilsim_ipcore *InstancePtr, u16 DeviceId);
hilsim_ipcore_Config* hilsim_ipcore_LookupConfig(u16 DeviceId);
int hilsim_ipcore_CfgInitialize(hilsim_ipcore *InstancePtr, hilsim_ipcore_Config *ConfigPtr);
#else
int hilsim_ipcore_Initialize(hilsim_ipcore *InstancePtr, const char* InstanceName);
int hilsim_ipcore_Release(hilsim_ipcore *InstancePtr);
#endif
/**
* Write to system_run gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the system_run instance to operate on.
* @param	Data is value to be written to gateway system_run.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_system_run_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from system_run gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the system_run instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_system_run_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice2_xd_presc_shift gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_xd_presc_shift instance to operate on.
* @param	Data is value to be written to gateway slice2_xd_presc_shift.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice2_xd_presc_shift_write(hilsim_ipcore *InstancePtr, u8 Data);
/**
* Read from slice2_xd_presc_shift gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_xd_presc_shift instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 hilsim_ipcore_slice2_xd_presc_shift_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice2_xd_presc_mul gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_xd_presc_mul instance to operate on.
* @param	Data is value to be written to gateway slice2_xd_presc_mul.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice2_xd_presc_mul_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice2_xd_presc_mul gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_xd_presc_mul instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice2_xd_presc_mul_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice2_xd_nlf_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_xd_nlf_presc instance to operate on.
* @param	Data is value to be written to gateway slice2_xd_nlf_presc.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice2_xd_nlf_presc_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice2_xd_nlf_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_xd_nlf_presc instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice2_xd_nlf_presc_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice2_xd_nlf_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_xd_nlf_gain instance to operate on.
* @param	Data is value to be written to gateway slice2_xd_nlf_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice2_xd_nlf_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice2_xd_nlf_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_xd_nlf_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice2_xd_nlf_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice2_xd_mux gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_xd_mux instance to operate on.
* @param	Data is value to be written to gateway slice2_xd_mux.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice2_xd_mux_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from slice2_xd_mux gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_xd_mux instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_slice2_xd_mux_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice2_xd_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_xd_gain instance to operate on.
* @param	Data is value to be written to gateway slice2_xd_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice2_xd_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice2_xd_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_xd_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice2_xd_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice2_x_presc_shift gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_x_presc_shift instance to operate on.
* @param	Data is value to be written to gateway slice2_x_presc_shift.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice2_x_presc_shift_write(hilsim_ipcore *InstancePtr, u8 Data);
/**
* Read from slice2_x_presc_shift gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_x_presc_shift instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 hilsim_ipcore_slice2_x_presc_shift_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice2_x_presc_mul gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_x_presc_mul instance to operate on.
* @param	Data is value to be written to gateway slice2_x_presc_mul.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice2_x_presc_mul_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice2_x_presc_mul gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_x_presc_mul instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice2_x_presc_mul_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice2_x_nlf_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_x_nlf_presc instance to operate on.
* @param	Data is value to be written to gateway slice2_x_nlf_presc.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice2_x_nlf_presc_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice2_x_nlf_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_x_nlf_presc instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice2_x_nlf_presc_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice2_x_nlf_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_x_nlf_gain instance to operate on.
* @param	Data is value to be written to gateway slice2_x_nlf_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice2_x_nlf_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice2_x_nlf_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_x_nlf_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice2_x_nlf_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice2_x_mux gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_x_mux instance to operate on.
* @param	Data is value to be written to gateway slice2_x_mux.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice2_x_mux_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from slice2_x_mux gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_x_mux instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_slice2_x_mux_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice2_x_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_x_gain instance to operate on.
* @param	Data is value to be written to gateway slice2_x_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice2_x_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice2_x_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_x_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice2_x_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice2_u_nlf_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_u_nlf_presc instance to operate on.
* @param	Data is value to be written to gateway slice2_u_nlf_presc.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice2_u_nlf_presc_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice2_u_nlf_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_u_nlf_presc instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice2_u_nlf_presc_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice2_u_nlf_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_u_nlf_gain instance to operate on.
* @param	Data is value to be written to gateway slice2_u_nlf_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice2_u_nlf_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice2_u_nlf_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_u_nlf_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice2_u_nlf_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice2_u_mux gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_u_mux instance to operate on.
* @param	Data is value to be written to gateway slice2_u_mux.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice2_u_mux_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from slice2_u_mux gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_u_mux instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_slice2_u_mux_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice2_u_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_u_gain instance to operate on.
* @param	Data is value to be written to gateway slice2_u_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice2_u_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice2_u_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice2_u_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice2_u_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice1_xd_presc_shift gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_xd_presc_shift instance to operate on.
* @param	Data is value to be written to gateway slice1_xd_presc_shift.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice1_xd_presc_shift_write(hilsim_ipcore *InstancePtr, u8 Data);
/**
* Read from slice1_xd_presc_shift gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_xd_presc_shift instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 hilsim_ipcore_slice1_xd_presc_shift_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice1_xd_presc_mul gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_xd_presc_mul instance to operate on.
* @param	Data is value to be written to gateway slice1_xd_presc_mul.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice1_xd_presc_mul_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice1_xd_presc_mul gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_xd_presc_mul instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice1_xd_presc_mul_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice1_xd_nlf_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_xd_nlf_presc instance to operate on.
* @param	Data is value to be written to gateway slice1_xd_nlf_presc.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice1_xd_nlf_presc_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice1_xd_nlf_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_xd_nlf_presc instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice1_xd_nlf_presc_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice1_xd_nlf_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_xd_nlf_gain instance to operate on.
* @param	Data is value to be written to gateway slice1_xd_nlf_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice1_xd_nlf_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice1_xd_nlf_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_xd_nlf_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice1_xd_nlf_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice1_xd_mux gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_xd_mux instance to operate on.
* @param	Data is value to be written to gateway slice1_xd_mux.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice1_xd_mux_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from slice1_xd_mux gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_xd_mux instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_slice1_xd_mux_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice1_xd_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_xd_gain instance to operate on.
* @param	Data is value to be written to gateway slice1_xd_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice1_xd_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice1_xd_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_xd_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice1_xd_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice1_x_presc_shift gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_x_presc_shift instance to operate on.
* @param	Data is value to be written to gateway slice1_x_presc_shift.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice1_x_presc_shift_write(hilsim_ipcore *InstancePtr, u8 Data);
/**
* Read from slice1_x_presc_shift gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_x_presc_shift instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 hilsim_ipcore_slice1_x_presc_shift_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice1_x_presc_mul gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_x_presc_mul instance to operate on.
* @param	Data is value to be written to gateway slice1_x_presc_mul.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice1_x_presc_mul_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice1_x_presc_mul gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_x_presc_mul instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice1_x_presc_mul_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice1_x_nlf_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_x_nlf_presc instance to operate on.
* @param	Data is value to be written to gateway slice1_x_nlf_presc.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice1_x_nlf_presc_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice1_x_nlf_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_x_nlf_presc instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice1_x_nlf_presc_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice1_x_nlf_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_x_nlf_gain instance to operate on.
* @param	Data is value to be written to gateway slice1_x_nlf_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice1_x_nlf_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice1_x_nlf_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_x_nlf_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice1_x_nlf_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice1_x_mux gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_x_mux instance to operate on.
* @param	Data is value to be written to gateway slice1_x_mux.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice1_x_mux_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from slice1_x_mux gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_x_mux instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_slice1_x_mux_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice1_x_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_x_gain instance to operate on.
* @param	Data is value to be written to gateway slice1_x_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice1_x_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice1_x_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_x_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice1_x_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice1_u_nlf_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_u_nlf_presc instance to operate on.
* @param	Data is value to be written to gateway slice1_u_nlf_presc.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice1_u_nlf_presc_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice1_u_nlf_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_u_nlf_presc instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice1_u_nlf_presc_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice1_u_nlf_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_u_nlf_gain instance to operate on.
* @param	Data is value to be written to gateway slice1_u_nlf_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice1_u_nlf_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice1_u_nlf_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_u_nlf_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice1_u_nlf_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice1_u_mux gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_u_mux instance to operate on.
* @param	Data is value to be written to gateway slice1_u_mux.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice1_u_mux_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from slice1_u_mux gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_u_mux instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_slice1_u_mux_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice1_u_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_u_gain instance to operate on.
* @param	Data is value to be written to gateway slice1_u_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice1_u_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice1_u_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice1_u_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice1_u_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice0_xd_presc_shift gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_xd_presc_shift instance to operate on.
* @param	Data is value to be written to gateway slice0_xd_presc_shift.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice0_xd_presc_shift_write(hilsim_ipcore *InstancePtr, u8 Data);
/**
* Read from slice0_xd_presc_shift gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_xd_presc_shift instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 hilsim_ipcore_slice0_xd_presc_shift_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice0_xd_presc_mul gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_xd_presc_mul instance to operate on.
* @param	Data is value to be written to gateway slice0_xd_presc_mul.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice0_xd_presc_mul_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice0_xd_presc_mul gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_xd_presc_mul instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice0_xd_presc_mul_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice0_xd_nlf_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_xd_nlf_presc instance to operate on.
* @param	Data is value to be written to gateway slice0_xd_nlf_presc.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice0_xd_nlf_presc_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice0_xd_nlf_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_xd_nlf_presc instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice0_xd_nlf_presc_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice0_xd_nlf_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_xd_nlf_gain instance to operate on.
* @param	Data is value to be written to gateway slice0_xd_nlf_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice0_xd_nlf_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice0_xd_nlf_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_xd_nlf_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice0_xd_nlf_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice0_xd_mux gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_xd_mux instance to operate on.
* @param	Data is value to be written to gateway slice0_xd_mux.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice0_xd_mux_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from slice0_xd_mux gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_xd_mux instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_slice0_xd_mux_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice0_xd_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_xd_gain instance to operate on.
* @param	Data is value to be written to gateway slice0_xd_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice0_xd_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice0_xd_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_xd_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice0_xd_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice0_x_presc_shift gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_x_presc_shift instance to operate on.
* @param	Data is value to be written to gateway slice0_x_presc_shift.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice0_x_presc_shift_write(hilsim_ipcore *InstancePtr, u8 Data);
/**
* Read from slice0_x_presc_shift gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_x_presc_shift instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 hilsim_ipcore_slice0_x_presc_shift_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice0_x_presc_mul gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_x_presc_mul instance to operate on.
* @param	Data is value to be written to gateway slice0_x_presc_mul.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice0_x_presc_mul_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice0_x_presc_mul gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_x_presc_mul instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice0_x_presc_mul_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice0_x_nlf_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_x_nlf_presc instance to operate on.
* @param	Data is value to be written to gateway slice0_x_nlf_presc.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice0_x_nlf_presc_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice0_x_nlf_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_x_nlf_presc instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice0_x_nlf_presc_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice0_x_nlf_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_x_nlf_gain instance to operate on.
* @param	Data is value to be written to gateway slice0_x_nlf_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice0_x_nlf_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice0_x_nlf_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_x_nlf_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice0_x_nlf_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice0_x_mux gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_x_mux instance to operate on.
* @param	Data is value to be written to gateway slice0_x_mux.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice0_x_mux_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from slice0_x_mux gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_x_mux instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_slice0_x_mux_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice0_x_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_x_gain instance to operate on.
* @param	Data is value to be written to gateway slice0_x_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice0_x_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice0_x_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_x_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice0_x_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice0_u_nlf_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_u_nlf_presc instance to operate on.
* @param	Data is value to be written to gateway slice0_u_nlf_presc.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice0_u_nlf_presc_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice0_u_nlf_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_u_nlf_presc instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice0_u_nlf_presc_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice0_u_nlf_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_u_nlf_gain instance to operate on.
* @param	Data is value to be written to gateway slice0_u_nlf_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice0_u_nlf_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice0_u_nlf_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_u_nlf_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice0_u_nlf_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice0_u_mux gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_u_mux instance to operate on.
* @param	Data is value to be written to gateway slice0_u_mux.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice0_u_mux_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from slice0_u_mux gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_u_mux instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_slice0_u_mux_read(hilsim_ipcore *InstancePtr);
/**
* Write to slice0_u_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_u_gain instance to operate on.
* @param	Data is value to be written to gateway slice0_u_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_slice0_u_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from slice0_u_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the slice0_u_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_slice0_u_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_nlf_dac1_xx2_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac1_xx2_presc instance to operate on.
* @param	Data is value to be written to gateway out_mat_nlf_dac1_xx2_presc.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_nlf_dac1_xx2_presc_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from out_mat_nlf_dac1_xx2_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac1_xx2_presc instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_out_mat_nlf_dac1_xx2_presc_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_nlf_dac1_xx2_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac1_xx2_gain instance to operate on.
* @param	Data is value to be written to gateway out_mat_nlf_dac1_xx2_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_nlf_dac1_xx2_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from out_mat_nlf_dac1_xx2_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac1_xx2_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_out_mat_nlf_dac1_xx2_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_nlf_dac1_xx2_en gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac1_xx2_en instance to operate on.
* @param	Data is value to be written to gateway out_mat_nlf_dac1_xx2_en.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_nlf_dac1_xx2_en_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from out_mat_nlf_dac1_xx2_en gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac1_xx2_en instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_out_mat_nlf_dac1_xx2_en_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_nlf_dac1_xx1_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac1_xx1_presc instance to operate on.
* @param	Data is value to be written to gateway out_mat_nlf_dac1_xx1_presc.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_nlf_dac1_xx1_presc_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from out_mat_nlf_dac1_xx1_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac1_xx1_presc instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_out_mat_nlf_dac1_xx1_presc_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_nlf_dac1_xx1_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac1_xx1_gain instance to operate on.
* @param	Data is value to be written to gateway out_mat_nlf_dac1_xx1_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_nlf_dac1_xx1_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from out_mat_nlf_dac1_xx1_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac1_xx1_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_out_mat_nlf_dac1_xx1_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_nlf_dac1_xx1_en gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac1_xx1_en instance to operate on.
* @param	Data is value to be written to gateway out_mat_nlf_dac1_xx1_en.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_nlf_dac1_xx1_en_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from out_mat_nlf_dac1_xx1_en gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac1_xx1_en instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_out_mat_nlf_dac1_xx1_en_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_nlf_dac1_xx0_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac1_xx0_presc instance to operate on.
* @param	Data is value to be written to gateway out_mat_nlf_dac1_xx0_presc.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_nlf_dac1_xx0_presc_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from out_mat_nlf_dac1_xx0_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac1_xx0_presc instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_out_mat_nlf_dac1_xx0_presc_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_nlf_dac1_xx0_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac1_xx0_gain instance to operate on.
* @param	Data is value to be written to gateway out_mat_nlf_dac1_xx0_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_nlf_dac1_xx0_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from out_mat_nlf_dac1_xx0_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac1_xx0_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_out_mat_nlf_dac1_xx0_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_nlf_dac1_xx0_en gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac1_xx0_en instance to operate on.
* @param	Data is value to be written to gateway out_mat_nlf_dac1_xx0_en.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_nlf_dac1_xx0_en_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from out_mat_nlf_dac1_xx0_en gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac1_xx0_en instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_out_mat_nlf_dac1_xx0_en_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_nlf_dac0_xx2_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac0_xx2_presc instance to operate on.
* @param	Data is value to be written to gateway out_mat_nlf_dac0_xx2_presc.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_nlf_dac0_xx2_presc_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from out_mat_nlf_dac0_xx2_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac0_xx2_presc instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_out_mat_nlf_dac0_xx2_presc_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_nlf_dac0_xx2_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac0_xx2_gain instance to operate on.
* @param	Data is value to be written to gateway out_mat_nlf_dac0_xx2_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_nlf_dac0_xx2_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from out_mat_nlf_dac0_xx2_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac0_xx2_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_out_mat_nlf_dac0_xx2_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_nlf_dac0_xx2_en gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac0_xx2_en instance to operate on.
* @param	Data is value to be written to gateway out_mat_nlf_dac0_xx2_en.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_nlf_dac0_xx2_en_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from out_mat_nlf_dac0_xx2_en gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac0_xx2_en instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_out_mat_nlf_dac0_xx2_en_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_nlf_dac0_xx1_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac0_xx1_presc instance to operate on.
* @param	Data is value to be written to gateway out_mat_nlf_dac0_xx1_presc.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_nlf_dac0_xx1_presc_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from out_mat_nlf_dac0_xx1_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac0_xx1_presc instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_out_mat_nlf_dac0_xx1_presc_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_nlf_dac0_xx1_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac0_xx1_gain instance to operate on.
* @param	Data is value to be written to gateway out_mat_nlf_dac0_xx1_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_nlf_dac0_xx1_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from out_mat_nlf_dac0_xx1_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac0_xx1_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_out_mat_nlf_dac0_xx1_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_nlf_dac0_xx1_en gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac0_xx1_en instance to operate on.
* @param	Data is value to be written to gateway out_mat_nlf_dac0_xx1_en.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_nlf_dac0_xx1_en_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from out_mat_nlf_dac0_xx1_en gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac0_xx1_en instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_out_mat_nlf_dac0_xx1_en_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_nlf_dac0_xx0_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac0_xx0_presc instance to operate on.
* @param	Data is value to be written to gateway out_mat_nlf_dac0_xx0_presc.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_nlf_dac0_xx0_presc_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from out_mat_nlf_dac0_xx0_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac0_xx0_presc instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_out_mat_nlf_dac0_xx0_presc_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_nlf_dac0_xx0_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac0_xx0_gain instance to operate on.
* @param	Data is value to be written to gateway out_mat_nlf_dac0_xx0_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_nlf_dac0_xx0_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from out_mat_nlf_dac0_xx0_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac0_xx0_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_out_mat_nlf_dac0_xx0_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_nlf_dac0_xx0_en gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac0_xx0_en instance to operate on.
* @param	Data is value to be written to gateway out_mat_nlf_dac0_xx0_en.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_nlf_dac0_xx0_en_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from out_mat_nlf_dac0_xx0_en gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_nlf_dac0_xx0_en instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_out_mat_nlf_dac0_xx0_en_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_fac_dac1_xx2 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_fac_dac1_xx2 instance to operate on.
* @param	Data is value to be written to gateway out_mat_fac_dac1_xx2.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_fac_dac1_xx2_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from out_mat_fac_dac1_xx2 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_fac_dac1_xx2 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_out_mat_fac_dac1_xx2_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_fac_dac1_xx1 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_fac_dac1_xx1 instance to operate on.
* @param	Data is value to be written to gateway out_mat_fac_dac1_xx1.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_fac_dac1_xx1_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from out_mat_fac_dac1_xx1 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_fac_dac1_xx1 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_out_mat_fac_dac1_xx1_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_fac_dac1_xx0 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_fac_dac1_xx0 instance to operate on.
* @param	Data is value to be written to gateway out_mat_fac_dac1_xx0.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_fac_dac1_xx0_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from out_mat_fac_dac1_xx0 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_fac_dac1_xx0 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_out_mat_fac_dac1_xx0_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_fac_dac0_xx2 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_fac_dac0_xx2 instance to operate on.
* @param	Data is value to be written to gateway out_mat_fac_dac0_xx2.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_fac_dac0_xx2_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from out_mat_fac_dac0_xx2 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_fac_dac0_xx2 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_out_mat_fac_dac0_xx2_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_fac_dac0_xx1 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_fac_dac0_xx1 instance to operate on.
* @param	Data is value to be written to gateway out_mat_fac_dac0_xx1.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_fac_dac0_xx1_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from out_mat_fac_dac0_xx1 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_fac_dac0_xx1 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_out_mat_fac_dac0_xx1_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_fac_dac0_xx0 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_fac_dac0_xx0 instance to operate on.
* @param	Data is value to be written to gateway out_mat_fac_dac0_xx0.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_fac_dac0_xx0_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from out_mat_fac_dac0_xx0 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_fac_dac0_xx0 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_out_mat_fac_dac0_xx0_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_dac1_selx2 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_dac1_selx2 instance to operate on.
* @param	Data is value to be written to gateway out_mat_dac1_selx2.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_dac1_selx2_write(hilsim_ipcore *InstancePtr, u8 Data);
/**
* Read from out_mat_dac1_selx2 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_dac1_selx2 instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 hilsim_ipcore_out_mat_dac1_selx2_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_dac1_selx1 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_dac1_selx1 instance to operate on.
* @param	Data is value to be written to gateway out_mat_dac1_selx1.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_dac1_selx1_write(hilsim_ipcore *InstancePtr, u8 Data);
/**
* Read from out_mat_dac1_selx1 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_dac1_selx1 instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 hilsim_ipcore_out_mat_dac1_selx1_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_dac1_selx0 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_dac1_selx0 instance to operate on.
* @param	Data is value to be written to gateway out_mat_dac1_selx0.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_dac1_selx0_write(hilsim_ipcore *InstancePtr, u8 Data);
/**
* Read from out_mat_dac1_selx0 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_dac1_selx0 instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 hilsim_ipcore_out_mat_dac1_selx0_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_dac0_selx2 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_dac0_selx2 instance to operate on.
* @param	Data is value to be written to gateway out_mat_dac0_selx2.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_dac0_selx2_write(hilsim_ipcore *InstancePtr, u8 Data);
/**
* Read from out_mat_dac0_selx2 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_dac0_selx2 instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 hilsim_ipcore_out_mat_dac0_selx2_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_dac0_selx1 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_dac0_selx1 instance to operate on.
* @param	Data is value to be written to gateway out_mat_dac0_selx1.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_dac0_selx1_write(hilsim_ipcore *InstancePtr, u8 Data);
/**
* Read from out_mat_dac0_selx1 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_dac0_selx1 instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 hilsim_ipcore_out_mat_dac0_selx1_read(hilsim_ipcore *InstancePtr);
/**
* Write to out_mat_dac0_selx0 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_dac0_selx0 instance to operate on.
* @param	Data is value to be written to gateway out_mat_dac0_selx0.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_out_mat_dac0_selx0_write(hilsim_ipcore *InstancePtr, u8 Data);
/**
* Read from out_mat_dac0_selx0 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_mat_dac0_selx0 instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 hilsim_ipcore_out_mat_dac0_selx0_read(hilsim_ipcore *InstancePtr);
/**
* Write to led_value gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the led_value instance to operate on.
* @param	Data is value to be written to gateway led_value.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_led_value_write(hilsim_ipcore *InstancePtr, u8 Data);
/**
* Read from led_value gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the led_value instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 hilsim_ipcore_led_value_read(hilsim_ipcore *InstancePtr);
/**
* Write to inp_mat_fac_u2_noise gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the inp_mat_fac_u2_noise instance to operate on.
* @param	Data is value to be written to gateway inp_mat_fac_u2_noise.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_inp_mat_fac_u2_noise_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from inp_mat_fac_u2_noise gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the inp_mat_fac_u2_noise instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_inp_mat_fac_u2_noise_read(hilsim_ipcore *InstancePtr);
/**
* Write to inp_mat_fac_u2_adc1 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the inp_mat_fac_u2_adc1 instance to operate on.
* @param	Data is value to be written to gateway inp_mat_fac_u2_adc1.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_inp_mat_fac_u2_adc1_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from inp_mat_fac_u2_adc1 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the inp_mat_fac_u2_adc1 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_inp_mat_fac_u2_adc1_read(hilsim_ipcore *InstancePtr);
/**
* Write to inp_mat_fac_u2_adc0 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the inp_mat_fac_u2_adc0 instance to operate on.
* @param	Data is value to be written to gateway inp_mat_fac_u2_adc0.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_inp_mat_fac_u2_adc0_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from inp_mat_fac_u2_adc0 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the inp_mat_fac_u2_adc0 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_inp_mat_fac_u2_adc0_read(hilsim_ipcore *InstancePtr);
/**
* Write to inp_mat_fac_u1_noise gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the inp_mat_fac_u1_noise instance to operate on.
* @param	Data is value to be written to gateway inp_mat_fac_u1_noise.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_inp_mat_fac_u1_noise_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from inp_mat_fac_u1_noise gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the inp_mat_fac_u1_noise instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_inp_mat_fac_u1_noise_read(hilsim_ipcore *InstancePtr);
/**
* Write to inp_mat_fac_u1_adc1 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the inp_mat_fac_u1_adc1 instance to operate on.
* @param	Data is value to be written to gateway inp_mat_fac_u1_adc1.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_inp_mat_fac_u1_adc1_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from inp_mat_fac_u1_adc1 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the inp_mat_fac_u1_adc1 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_inp_mat_fac_u1_adc1_read(hilsim_ipcore *InstancePtr);
/**
* Write to inp_mat_fac_u1_adc0 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the inp_mat_fac_u1_adc0 instance to operate on.
* @param	Data is value to be written to gateway inp_mat_fac_u1_adc0.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_inp_mat_fac_u1_adc0_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from inp_mat_fac_u1_adc0 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the inp_mat_fac_u1_adc0 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_inp_mat_fac_u1_adc0_read(hilsim_ipcore *InstancePtr);
/**
* Write to inp_mat_fac_u0_noise gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the inp_mat_fac_u0_noise instance to operate on.
* @param	Data is value to be written to gateway inp_mat_fac_u0_noise.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_inp_mat_fac_u0_noise_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from inp_mat_fac_u0_noise gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the inp_mat_fac_u0_noise instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_inp_mat_fac_u0_noise_read(hilsim_ipcore *InstancePtr);
/**
* Write to inp_mat_fac_u0_adc1 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the inp_mat_fac_u0_adc1 instance to operate on.
* @param	Data is value to be written to gateway inp_mat_fac_u0_adc1.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_inp_mat_fac_u0_adc1_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from inp_mat_fac_u0_adc1 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the inp_mat_fac_u0_adc1 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_inp_mat_fac_u0_adc1_read(hilsim_ipcore *InstancePtr);
/**
* Write to inp_mat_fac_u0_adc0 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the inp_mat_fac_u0_adc0 instance to operate on.
* @param	Data is value to be written to gateway inp_mat_fac_u0_adc0.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_inp_mat_fac_u0_adc0_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from inp_mat_fac_u0_adc0 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the inp_mat_fac_u0_adc0 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_inp_mat_fac_u0_adc0_read(hilsim_ipcore *InstancePtr);
/**
* Write to cfg_system_reset gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the cfg_system_reset instance to operate on.
* @param	Data is value to be written to gateway cfg_system_reset.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_cfg_system_reset_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from cfg_system_reset gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the cfg_system_reset instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_cfg_system_reset_read(hilsim_ipcore *InstancePtr);
/**
* Write to cfg_noise_presc2 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the cfg_noise_presc2 instance to operate on.
* @param	Data is value to be written to gateway cfg_noise_presc2.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_cfg_noise_presc2_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from cfg_noise_presc2 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the cfg_noise_presc2 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_cfg_noise_presc2_read(hilsim_ipcore *InstancePtr);
/**
* Write to cfg_noise_presc1 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the cfg_noise_presc1 instance to operate on.
* @param	Data is value to be written to gateway cfg_noise_presc1.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_cfg_noise_presc1_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from cfg_noise_presc1 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the cfg_noise_presc1 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_cfg_noise_presc1_read(hilsim_ipcore *InstancePtr);
/**
* Write to cfg_noise_presc0 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the cfg_noise_presc0 instance to operate on.
* @param	Data is value to be written to gateway cfg_noise_presc0.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_cfg_noise_presc0_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from cfg_noise_presc0 gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the cfg_noise_presc0 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_cfg_noise_presc0_read(hilsim_ipcore *InstancePtr);
/**
* Write to cfg_nlf_we gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the cfg_nlf_we instance to operate on.
* @param	Data is value to be written to gateway cfg_nlf_we.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_cfg_nlf_we_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from cfg_nlf_we gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the cfg_nlf_we instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_cfg_nlf_we_read(hilsim_ipcore *InstancePtr);
/**
* Write to cfg_nlf_start gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the cfg_nlf_start instance to operate on.
* @param	Data is value to be written to gateway cfg_nlf_start.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_cfg_nlf_start_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from cfg_nlf_start gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the cfg_nlf_start instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_cfg_nlf_start_read(hilsim_ipcore *InstancePtr);
/**
* Write to cfg_nlf_select gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the cfg_nlf_select instance to operate on.
* @param	Data is value to be written to gateway cfg_nlf_select.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_cfg_nlf_select_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from cfg_nlf_select gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the cfg_nlf_select instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_cfg_nlf_select_read(hilsim_ipcore *InstancePtr);
/**
* Write to cfg_nlf_data gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the cfg_nlf_data instance to operate on.
* @param	Data is value to be written to gateway cfg_nlf_data.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_cfg_nlf_data_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from cfg_nlf_data gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the cfg_nlf_data instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_cfg_nlf_data_read(hilsim_ipcore *InstancePtr);
/**
* Write to cfg_nlf_addr gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the cfg_nlf_addr instance to operate on.
* @param	Data is value to be written to gateway cfg_nlf_addr.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_cfg_nlf_addr_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from cfg_nlf_addr gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the cfg_nlf_addr instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_cfg_nlf_addr_read(hilsim_ipcore *InstancePtr);
/**
* Write to adc1_nlf_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc1_nlf_presc instance to operate on.
* @param	Data is value to be written to gateway adc1_nlf_presc.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_adc1_nlf_presc_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from adc1_nlf_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc1_nlf_presc instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_adc1_nlf_presc_read(hilsim_ipcore *InstancePtr);
/**
* Write to adc1_nlf_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc1_nlf_gain instance to operate on.
* @param	Data is value to be written to gateway adc1_nlf_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_adc1_nlf_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from adc1_nlf_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc1_nlf_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_adc1_nlf_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to adc1_nlf_enable gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc1_nlf_enable instance to operate on.
* @param	Data is value to be written to gateway adc1_nlf_enable.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_adc1_nlf_enable_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from adc1_nlf_enable gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc1_nlf_enable instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_adc1_nlf_enable_read(hilsim_ipcore *InstancePtr);
/**
* Write to adc0_nlf_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc0_nlf_presc instance to operate on.
* @param	Data is value to be written to gateway adc0_nlf_presc.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_adc0_nlf_presc_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from adc0_nlf_presc gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc0_nlf_presc instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_adc0_nlf_presc_read(hilsim_ipcore *InstancePtr);
/**
* Write to adc0_nlf_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc0_nlf_gain instance to operate on.
* @param	Data is value to be written to gateway adc0_nlf_gain.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_adc0_nlf_gain_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from adc0_nlf_gain gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc0_nlf_gain instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_adc0_nlf_gain_read(hilsim_ipcore *InstancePtr);
/**
* Write to adc0_nlf_enable gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc0_nlf_enable instance to operate on.
* @param	Data is value to be written to gateway adc0_nlf_enable.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_adc0_nlf_enable_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from adc0_nlf_enable gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc0_nlf_enable instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_adc0_nlf_enable_read(hilsim_ipcore *InstancePtr);
/**
* Read from cfg_nlf_done gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the cfg_nlf_done instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_cfg_nlf_done_read(hilsim_ipcore *InstancePtr);
/**
* Write to nlf_switch_sw_switch gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the nlf_switch_sw_switch instance to operate on.
* @param	Data is value to be written to gateway nlf_switch_sw_switch.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_nlf_switch_sw_switch_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from nlf_switch_sw_switch gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the nlf_switch_sw_switch instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_nlf_switch_sw_switch_read(hilsim_ipcore *InstancePtr);
/**
* Write to nlf_switch_io_mask gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the nlf_switch_io_mask instance to operate on.
* @param	Data is value to be written to gateway nlf_switch_io_mask.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_nlf_switch_io_mask_write(hilsim_ipcore *InstancePtr, u32 Data);
/**
* Read from nlf_switch_io_mask gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the nlf_switch_io_mask instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_nlf_switch_io_mask_read(hilsim_ipcore *InstancePtr);
/**
* Write to dac1_calib_offset gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the dac1_calib_offset instance to operate on.
* @param	Data is value to be written to gateway dac1_calib_offset.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_dac1_calib_offset_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from dac1_calib_offset gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the dac1_calib_offset instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_dac1_calib_offset_read(hilsim_ipcore *InstancePtr);
/**
* Write to dac1_calib_factor gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the dac1_calib_factor instance to operate on.
* @param	Data is value to be written to gateway dac1_calib_factor.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_dac1_calib_factor_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from dac1_calib_factor gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the dac1_calib_factor instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_dac1_calib_factor_read(hilsim_ipcore *InstancePtr);
/**
* Write to dac0_calib_offset gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the dac0_calib_offset instance to operate on.
* @param	Data is value to be written to gateway dac0_calib_offset.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_dac0_calib_offset_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from dac0_calib_offset gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the dac0_calib_offset instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_dac0_calib_offset_read(hilsim_ipcore *InstancePtr);
/**
* Write to dac0_calib_factor gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the dac0_calib_factor instance to operate on.
* @param	Data is value to be written to gateway dac0_calib_factor.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_dac0_calib_factor_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from dac0_calib_factor gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the dac0_calib_factor instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_dac0_calib_factor_read(hilsim_ipcore *InstancePtr);
/**
* Write to adc1_calib_offset gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc1_calib_offset instance to operate on.
* @param	Data is value to be written to gateway adc1_calib_offset.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_adc1_calib_offset_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from adc1_calib_offset gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc1_calib_offset instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_adc1_calib_offset_read(hilsim_ipcore *InstancePtr);
/**
* Write to adc1_calib_factor gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc1_calib_factor instance to operate on.
* @param	Data is value to be written to gateway adc1_calib_factor.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_adc1_calib_factor_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from adc1_calib_factor gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc1_calib_factor instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_adc1_calib_factor_read(hilsim_ipcore *InstancePtr);
/**
* Write to adc0_calib_offset gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc0_calib_offset instance to operate on.
* @param	Data is value to be written to gateway adc0_calib_offset.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_adc0_calib_offset_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from adc0_calib_offset gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc0_calib_offset instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_adc0_calib_offset_read(hilsim_ipcore *InstancePtr);
/**
* Write to adc0_calib_factor gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc0_calib_factor instance to operate on.
* @param	Data is value to be written to gateway adc0_calib_factor.
*
* @return	None.
*
* @note    .
*
*/
void hilsim_ipcore_adc0_calib_factor_write(hilsim_ipcore *InstancePtr, int Data);
/**
* Read from adc0_calib_factor gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc0_calib_factor instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_adc0_calib_factor_read(hilsim_ipcore *InstancePtr);
/**
* Read from adc0_value gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc0_value instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_adc0_value_read(hilsim_ipcore *InstancePtr);
/**
* Read from adc1_value gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc1_value instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int hilsim_ipcore_adc1_value_read(hilsim_ipcore *InstancePtr);
/**
* Read from nlf_switch gateway of hilsim_ipcore. Assignments are LSB-justified.
*
* @param	InstancePtr is the nlf_switch instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 hilsim_ipcore_nlf_switch_read(hilsim_ipcore *InstancePtr);
#ifdef __cplusplus
}
#endif
#endif
