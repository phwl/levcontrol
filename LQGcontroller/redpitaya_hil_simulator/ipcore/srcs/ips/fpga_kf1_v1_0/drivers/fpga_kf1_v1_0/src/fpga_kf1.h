#ifndef FPGA_KF1__H
#define FPGA_KF1__H
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
#include "fpga_kf1_hw.h"
/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 fpga_kf1_cfg_in_BaseAddress;
} fpga_kf1_Config;
#endif
/**
* The fpga_kf1 driver instance data. The user is required to
* allocate a variable of this type for every fpga_kf1 device in the system.
* A pointer to a variable of this type is then passed to the driver
* API functions.
*/
typedef struct {
    u32 fpga_kf1_cfg_in_BaseAddress;
    u32 IsReady;
} fpga_kf1;
/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define fpga_kf1_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define fpga_kf1_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define fpga_kf1_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define fpga_kf1_ReadReg(BaseAddress, RegOffset) \
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
int fpga_kf1_Initialize(fpga_kf1 *InstancePtr, u16 DeviceId);
fpga_kf1_Config* fpga_kf1_LookupConfig(u16 DeviceId);
int fpga_kf1_CfgInitialize(fpga_kf1 *InstancePtr, fpga_kf1_Config *ConfigPtr);
#else
int fpga_kf1_Initialize(fpga_kf1 *InstancePtr, const char* InstanceName);
int fpga_kf1_Release(fpga_kf1 *InstancePtr);
#endif
/**
* Write to gateway_in_b2 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_b2 instance to operate on.
* @param	Data is value to be written to gateway gateway_in_b2.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_gateway_in_b2_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from gateway_in_b2 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_b2 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_gateway_in_b2_read(fpga_kf1 *InstancePtr);
/**
* Write to gateway_in_b1 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_b1 instance to operate on.
* @param	Data is value to be written to gateway gateway_in_b1.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_gateway_in_b1_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from gateway_in_b1 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_b1 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_gateway_in_b1_read(fpga_kf1 *InstancePtr);
/**
* Write to gateway_in_b2_ip gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_b2_ip instance to operate on.
* @param	Data is value to be written to gateway gateway_in_b2_ip.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_gateway_in_b2_ip_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from gateway_in_b2_ip gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_b2_ip instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_gateway_in_b2_ip_read(fpga_kf1 *InstancePtr);
/**
* Write to gateway_in_b1_ip gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_b1_ip instance to operate on.
* @param	Data is value to be written to gateway gateway_in_b1_ip.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_gateway_in_b1_ip_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from gateway_in_b1_ip gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_b1_ip instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_gateway_in_b1_ip_read(fpga_kf1 *InstancePtr);
/**
* Write to gateway_in_k2_ip gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_k2_ip instance to operate on.
* @param	Data is value to be written to gateway gateway_in_k2_ip.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_gateway_in_k2_ip_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from gateway_in_k2_ip gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_k2_ip instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_gateway_in_k2_ip_read(fpga_kf1 *InstancePtr);
/**
* Write to gateway_in_k1_ip gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_k1_ip instance to operate on.
* @param	Data is value to be written to gateway gateway_in_k1_ip.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_gateway_in_k1_ip_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from gateway_in_k1_ip gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_k1_ip instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_gateway_in_k1_ip_read(fpga_kf1 *InstancePtr);
/**
* Write to gateway_in_l2_ip gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_l2_ip instance to operate on.
* @param	Data is value to be written to gateway gateway_in_l2_ip.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_gateway_in_l2_ip_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from gateway_in_l2_ip gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_l2_ip instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_gateway_in_l2_ip_read(fpga_kf1 *InstancePtr);
/**
* Write to gateway_in_l1_ip gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_l1_ip instance to operate on.
* @param	Data is value to be written to gateway gateway_in_l1_ip.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_gateway_in_l1_ip_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from gateway_in_l1_ip gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_l1_ip instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_gateway_in_l1_ip_read(fpga_kf1 *InstancePtr);
/**
* Write to gateway_in_k2 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_k2 instance to operate on.
* @param	Data is value to be written to gateway gateway_in_k2.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_gateway_in_k2_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from gateway_in_k2 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_k2 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_gateway_in_k2_read(fpga_kf1 *InstancePtr);
/**
* Write to gateway_in_k1 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_k1 instance to operate on.
* @param	Data is value to be written to gateway gateway_in_k1.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_gateway_in_k1_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from gateway_in_k1 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_k1 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_gateway_in_k1_read(fpga_kf1 *InstancePtr);
/**
* Write to gateway_in_l2 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_l2 instance to operate on.
* @param	Data is value to be written to gateway gateway_in_l2.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_gateway_in_l2_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from gateway_in_l2 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_l2 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_gateway_in_l2_read(fpga_kf1 *InstancePtr);
/**
* Write to gateway_in_l1 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_l1 instance to operate on.
* @param	Data is value to be written to gateway gateway_in_l1.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_gateway_in_l1_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from gateway_in_l1 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_l1 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_gateway_in_l1_read(fpga_kf1 *InstancePtr);
/**
* Write to gateway_in_f22_ip gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_f22_ip instance to operate on.
* @param	Data is value to be written to gateway gateway_in_f22_ip.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_gateway_in_f22_ip_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from gateway_in_f22_ip gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_f22_ip instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_gateway_in_f22_ip_read(fpga_kf1 *InstancePtr);
/**
* Write to gateway_in_f21_ip gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_f21_ip instance to operate on.
* @param	Data is value to be written to gateway gateway_in_f21_ip.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_gateway_in_f21_ip_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from gateway_in_f21_ip gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_f21_ip instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_gateway_in_f21_ip_read(fpga_kf1 *InstancePtr);
/**
* Write to gateway_in_f12_ip gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_f12_ip instance to operate on.
* @param	Data is value to be written to gateway gateway_in_f12_ip.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_gateway_in_f12_ip_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from gateway_in_f12_ip gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_f12_ip instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_gateway_in_f12_ip_read(fpga_kf1 *InstancePtr);
/**
* Write to gateway_in_f11_ip gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_f11_ip instance to operate on.
* @param	Data is value to be written to gateway gateway_in_f11_ip.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_gateway_in_f11_ip_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from gateway_in_f11_ip gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_f11_ip instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_gateway_in_f11_ip_read(fpga_kf1 *InstancePtr);
/**
* Write to gateway_in_f22 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_f22 instance to operate on.
* @param	Data is value to be written to gateway gateway_in_f22.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_gateway_in_f22_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from gateway_in_f22 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_f22 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_gateway_in_f22_read(fpga_kf1 *InstancePtr);
/**
* Write to gateway_in_f21 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_f21 instance to operate on.
* @param	Data is value to be written to gateway gateway_in_f21.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_gateway_in_f21_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from gateway_in_f21 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_f21 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_gateway_in_f21_read(fpga_kf1 *InstancePtr);
/**
* Write to gateway_in_f12 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_f12 instance to operate on.
* @param	Data is value to be written to gateway gateway_in_f12.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_gateway_in_f12_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from gateway_in_f12 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_f12 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_gateway_in_f12_read(fpga_kf1 *InstancePtr);
/**
* Write to gateway_in_f11 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_f11 instance to operate on.
* @param	Data is value to be written to gateway gateway_in_f11.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_gateway_in_f11_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from gateway_in_f11 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the gateway_in_f11 instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_gateway_in_f11_read(fpga_kf1 *InstancePtr);
/**
* Write to x_ref_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the x_ref_in instance to operate on.
* @param	Data is value to be written to gateway x_ref_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_x_ref_in_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from x_ref_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the x_ref_in instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_x_ref_in_read(fpga_kf1 *InstancePtr);
/**
* Write to sw_override_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the sw_override_in instance to operate on.
* @param	Data is value to be written to gateway sw_override_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_sw_override_in_write(fpga_kf1 *InstancePtr, u8 Data);
/**
* Read from sw_override_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the sw_override_in instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 fpga_kf1_sw_override_in_read(fpga_kf1 *InstancePtr);
/**
* Write to reg_timer_period gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_timer_period instance to operate on.
* @param	Data is value to be written to gateway reg_timer_period.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_reg_timer_period_write(fpga_kf1 *InstancePtr, u32 Data);
/**
* Read from reg_timer_period gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_timer_period instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf1_reg_timer_period_read(fpga_kf1 *InstancePtr);
/**
* Write to reg_rp_switch_tf gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_rp_switch_tf instance to operate on.
* @param	Data is value to be written to gateway reg_rp_switch_tf.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_reg_rp_switch_tf_write(fpga_kf1 *InstancePtr, u32 Data);
/**
* Read from reg_rp_switch_tf gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_rp_switch_tf instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf1_reg_rp_switch_tf_read(fpga_kf1 *InstancePtr);
/**
* Write to reg_rp_switch_t0 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_rp_switch_t0 instance to operate on.
* @param	Data is value to be written to gateway reg_rp_switch_t0.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_reg_rp_switch_t0_write(fpga_kf1 *InstancePtr, u32 Data);
/**
* Read from reg_rp_switch_t0 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_rp_switch_t0 instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf1_reg_rp_switch_t0_read(fpga_kf1 *InstancePtr);
/**
* Write to reg_out_switch_tf gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_out_switch_tf instance to operate on.
* @param	Data is value to be written to gateway reg_out_switch_tf.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_reg_out_switch_tf_write(fpga_kf1 *InstancePtr, u32 Data);
/**
* Read from reg_out_switch_tf gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_out_switch_tf instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf1_reg_out_switch_tf_read(fpga_kf1 *InstancePtr);
/**
* Write to reg_out_switch_t0 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_out_switch_t0 instance to operate on.
* @param	Data is value to be written to gateway reg_out_switch_t0.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_reg_out_switch_t0_write(fpga_kf1 *InstancePtr, u32 Data);
/**
* Read from reg_out_switch_t0 gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_out_switch_t0 instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf1_reg_out_switch_t0_read(fpga_kf1 *InstancePtr);
/**
* Write to out_switch_on gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_switch_on instance to operate on.
* @param	Data is value to be written to gateway out_switch_on.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_out_switch_on_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from out_switch_on gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_switch_on instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_out_switch_on_read(fpga_kf1 *InstancePtr);
/**
* Write to out_switch_off gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_switch_off instance to operate on.
* @param	Data is value to be written to gateway out_switch_off.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_out_switch_off_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from out_switch_off gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_switch_off instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_out_switch_off_read(fpga_kf1 *InstancePtr);
/**
* Write to fb_src_switch_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the fb_src_switch_in instance to operate on.
* @param	Data is value to be written to gateway fb_src_switch_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_fb_src_switch_in_write(fpga_kf1 *InstancePtr, u8 Data);
/**
* Read from fb_src_switch_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the fb_src_switch_in instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 fpga_kf1_fb_src_switch_in_read(fpga_kf1 *InstancePtr);
/**
* Write to ema_const_slow_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the ema_const_slow_in instance to operate on.
* @param	Data is value to be written to gateway ema_const_slow_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_ema_const_slow_in_write(fpga_kf1 *InstancePtr, u32 Data);
/**
* Read from ema_const_slow_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the ema_const_slow_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf1_ema_const_slow_in_read(fpga_kf1 *InstancePtr);
/**
* Write to ema_const_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the ema_const_in instance to operate on.
* @param	Data is value to be written to gateway ema_const_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_ema_const_in_write(fpga_kf1 *InstancePtr, u32 Data);
/**
* Read from ema_const_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the ema_const_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf1_ema_const_in_read(fpga_kf1 *InstancePtr);
/**
* Write to dma_trigger_time gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the dma_trigger_time instance to operate on.
* @param	Data is value to be written to gateway dma_trigger_time.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_dma_trigger_time_write(fpga_kf1 *InstancePtr, u32 Data);
/**
* Read from dma_trigger_time gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the dma_trigger_time instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf1_dma_trigger_time_read(fpga_kf1 *InstancePtr);
/**
* Write to div_scale_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the div_scale_in instance to operate on.
* @param	Data is value to be written to gateway div_scale_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_div_scale_in_write(fpga_kf1 *InstancePtr, u32 Data);
/**
* Read from div_scale_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the div_scale_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf1_div_scale_in_read(fpga_kf1 *InstancePtr);
/**
* Write to div_mux_selector gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the div_mux_selector instance to operate on.
* @param	Data is value to be written to gateway div_mux_selector.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_div_mux_selector_write(fpga_kf1 *InstancePtr, u8 Data);
/**
* Read from div_mux_selector gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the div_mux_selector instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 fpga_kf1_div_mux_selector_read(fpga_kf1 *InstancePtr);
/**
* Write to barrier_ub_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_ub_in instance to operate on.
* @param	Data is value to be written to gateway barrier_ub_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_barrier_ub_in_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from barrier_ub_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_ub_in instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_barrier_ub_in_read(fpga_kf1 *InstancePtr);
/**
* Write to barrier_lb_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_lb_in instance to operate on.
* @param	Data is value to be written to gateway barrier_lb_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_barrier_lb_in_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from barrier_lb_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_lb_in instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_barrier_lb_in_read(fpga_kf1 *InstancePtr);
/**
* Write to barrier_ram_we_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_ram_we_in instance to operate on.
* @param	Data is value to be written to gateway barrier_ram_we_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_barrier_ram_we_in_write(fpga_kf1 *InstancePtr, u32 Data);
/**
* Read from barrier_ram_we_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_ram_we_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf1_barrier_ram_we_in_read(fpga_kf1 *InstancePtr);
/**
* Write to barrier_ram_addr_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_ram_addr_in instance to operate on.
* @param	Data is value to be written to gateway barrier_ram_addr_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_barrier_ram_addr_in_write(fpga_kf1 *InstancePtr, u32 Data);
/**
* Read from barrier_ram_addr_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_ram_addr_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf1_barrier_ram_addr_in_read(fpga_kf1 *InstancePtr);
/**
* Write to barrier_c_ofst_idx_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c_ofst_idx_in instance to operate on.
* @param	Data is value to be written to gateway barrier_c_ofst_idx_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_barrier_c_ofst_idx_in_write(fpga_kf1 *InstancePtr, u32 Data);
/**
* Read from barrier_c_ofst_idx_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c_ofst_idx_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf1_barrier_c_ofst_idx_in_read(fpga_kf1 *InstancePtr);
/**
* Write to barrier_c_idx_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c_idx_in instance to operate on.
* @param	Data is value to be written to gateway barrier_c_idx_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_barrier_c_idx_in_write(fpga_kf1 *InstancePtr, u32 Data);
/**
* Read from barrier_c_idx_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c_idx_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf1_barrier_c_idx_in_read(fpga_kf1 *InstancePtr);
/**
* Write to barrier_c1_data_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c1_data_in instance to operate on.
* @param	Data is value to be written to gateway barrier_c1_data_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_barrier_c1_data_in_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from barrier_c1_data_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c1_data_in instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_barrier_c1_data_in_read(fpga_kf1 *InstancePtr);
/**
* Write to barrier_c0_data_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c0_data_in instance to operate on.
* @param	Data is value to be written to gateway barrier_c0_data_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_barrier_c0_data_in_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from barrier_c0_data_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c0_data_in instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_barrier_c0_data_in_read(fpga_kf1 *InstancePtr);
/**
* Write to fixed_led_pattern_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the fixed_led_pattern_in instance to operate on.
* @param	Data is value to be written to gateway fixed_led_pattern_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_fixed_led_pattern_in_write(fpga_kf1 *InstancePtr, u32 Data);
/**
* Read from fixed_led_pattern_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the fixed_led_pattern_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf1_fixed_led_pattern_in_read(fpga_kf1 *InstancePtr);
/**
* Write to disco_mode_enable gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the disco_mode_enable instance to operate on.
* @param	Data is value to be written to gateway disco_mode_enable.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_disco_mode_enable_write(fpga_kf1 *InstancePtr, u32 Data);
/**
* Read from disco_mode_enable gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the disco_mode_enable instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf1_disco_mode_enable_read(fpga_kf1 *InstancePtr);
/**
* Write to ap_ip_switch_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the ap_ip_switch_in instance to operate on.
* @param	Data is value to be written to gateway ap_ip_switch_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_ap_ip_switch_in_write(fpga_kf1 *InstancePtr, u8 Data);
/**
* Read from ap_ip_switch_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the ap_ip_switch_in instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 fpga_kf1_ap_ip_switch_in_read(fpga_kf1 *InstancePtr);
/**
* Write to adc_ch2_offst gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc_ch2_offst instance to operate on.
* @param	Data is value to be written to gateway adc_ch2_offst.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_adc_ch2_offst_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from adc_ch2_offst gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc_ch2_offst instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_adc_ch2_offst_read(fpga_kf1 *InstancePtr);
/**
* Write to adc_ch1_offst gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc_ch1_offst instance to operate on.
* @param	Data is value to be written to gateway adc_ch1_offst.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_adc_ch1_offst_write(fpga_kf1 *InstancePtr, int Data);
/**
* Read from adc_ch1_offst gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc_ch1_offst instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf1_adc_ch1_offst_read(fpga_kf1 *InstancePtr);
/**
* Write to registers_wren_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the registers_wren_in instance to operate on.
* @param	Data is value to be written to gateway registers_wren_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf1_registers_wren_in_write(fpga_kf1 *InstancePtr, u32 Data);
/**
* Read from registers_wren_in gateway of fpga_kf1. Assignments are LSB-justified.
*
* @param	InstancePtr is the registers_wren_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf1_registers_wren_in_read(fpga_kf1 *InstancePtr);
#ifdef __cplusplus
}
#endif
#endif
