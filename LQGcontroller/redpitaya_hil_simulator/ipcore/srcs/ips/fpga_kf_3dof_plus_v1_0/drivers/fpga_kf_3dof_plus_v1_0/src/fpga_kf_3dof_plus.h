#ifndef FPGA_KF_3DOF_PLUS__H
#define FPGA_KF_3DOF_PLUS__H
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
#include "fpga_kf_3dof_plus_hw.h"
/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 fpga_kf_3dof_plus_cfg_in_BaseAddress;
} fpga_kf_3dof_plus_Config;
#endif
/**
* The fpga_kf_3dof_plus driver instance data. The user is required to
* allocate a variable of this type for every fpga_kf_3dof_plus device in the system.
* A pointer to a variable of this type is then passed to the driver
* API functions.
*/
typedef struct {
    u32 fpga_kf_3dof_plus_cfg_in_BaseAddress;
    u32 IsReady;
} fpga_kf_3dof_plus;
/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define fpga_kf_3dof_plus_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define fpga_kf_3dof_plus_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define fpga_kf_3dof_plus_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define fpga_kf_3dof_plus_ReadReg(BaseAddress, RegOffset) \
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
int fpga_kf_3dof_plus_Initialize(fpga_kf_3dof_plus *InstancePtr, u16 DeviceId);
fpga_kf_3dof_plus_Config* fpga_kf_3dof_plus_LookupConfig(u16 DeviceId);
int fpga_kf_3dof_plus_CfgInitialize(fpga_kf_3dof_plus *InstancePtr, fpga_kf_3dof_plus_Config *ConfigPtr);
#else
int fpga_kf_3dof_plus_Initialize(fpga_kf_3dof_plus *InstancePtr, const char* InstanceName);
int fpga_kf_3dof_plus_Release(fpga_kf_3dof_plus *InstancePtr);
#endif
/**
* Write to dac_1_bias gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the dac_1_bias instance to operate on.
* @param	Data is value to be written to gateway dac_1_bias.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_dac_1_bias_write(fpga_kf_3dof_plus *InstancePtr, int Data);
/**
* Read from dac_1_bias gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the dac_1_bias instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_3dof_plus_dac_1_bias_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to dac_2_bias gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the dac_2_bias instance to operate on.
* @param	Data is value to be written to gateway dac_2_bias.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_dac_2_bias_write(fpga_kf_3dof_plus *InstancePtr, int Data);
/**
* Read from dac_2_bias gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the dac_2_bias instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_3dof_plus_dac_2_bias_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to x_ref_ub gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the x_ref_ub instance to operate on.
* @param	Data is value to be written to gateway x_ref_ub.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_x_ref_ub_write(fpga_kf_3dof_plus *InstancePtr, int Data);
/**
* Read from x_ref_ub gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the x_ref_ub instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_3dof_plus_x_ref_ub_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to x_ref_lb gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the x_ref_lb instance to operate on.
* @param	Data is value to be written to gateway x_ref_lb.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_x_ref_lb_write(fpga_kf_3dof_plus *InstancePtr, int Data);
/**
* Read from x_ref_lb gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the x_ref_lb instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_3dof_plus_x_ref_lb_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to x_ref_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the x_ref_in instance to operate on.
* @param	Data is value to be written to gateway x_ref_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_x_ref_in_write(fpga_kf_3dof_plus *InstancePtr, int Data);
/**
* Read from x_ref_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the x_ref_in instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_3dof_plus_x_ref_in_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to x_ref_enb gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the x_ref_enb instance to operate on.
* @param	Data is value to be written to gateway x_ref_enb.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_x_ref_enb_write(fpga_kf_3dof_plus *InstancePtr, u32 Data);
/**
* Read from x_ref_enb gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the x_ref_enb instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_3dof_plus_x_ref_enb_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to sw_override_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the sw_override_in instance to operate on.
* @param	Data is value to be written to gateway sw_override_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_sw_override_in_write(fpga_kf_3dof_plus *InstancePtr, u8 Data);
/**
* Read from sw_override_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the sw_override_in instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 fpga_kf_3dof_plus_sw_override_in_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to reg_timer_period gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_timer_period instance to operate on.
* @param	Data is value to be written to gateway reg_timer_period.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_reg_timer_period_write(fpga_kf_3dof_plus *InstancePtr, u32 Data);
/**
* Read from reg_timer_period gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_timer_period instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_3dof_plus_reg_timer_period_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to reg_rp_switch_tf gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_rp_switch_tf instance to operate on.
* @param	Data is value to be written to gateway reg_rp_switch_tf.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_reg_rp_switch_tf_write(fpga_kf_3dof_plus *InstancePtr, u32 Data);
/**
* Read from reg_rp_switch_tf gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_rp_switch_tf instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_3dof_plus_reg_rp_switch_tf_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to reg_rp_switch_t0 gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_rp_switch_t0 instance to operate on.
* @param	Data is value to be written to gateway reg_rp_switch_t0.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_reg_rp_switch_t0_write(fpga_kf_3dof_plus *InstancePtr, u32 Data);
/**
* Read from reg_rp_switch_t0 gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_rp_switch_t0 instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_3dof_plus_reg_rp_switch_t0_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to reg_out_switch_tf gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_out_switch_tf instance to operate on.
* @param	Data is value to be written to gateway reg_out_switch_tf.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_reg_out_switch_tf_write(fpga_kf_3dof_plus *InstancePtr, u32 Data);
/**
* Read from reg_out_switch_tf gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_out_switch_tf instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_3dof_plus_reg_out_switch_tf_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to reg_out_switch_t0 gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_out_switch_t0 instance to operate on.
* @param	Data is value to be written to gateway reg_out_switch_t0.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_reg_out_switch_t0_write(fpga_kf_3dof_plus *InstancePtr, u32 Data);
/**
* Read from reg_out_switch_t0 gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the reg_out_switch_t0 instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_3dof_plus_reg_out_switch_t0_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to out_switch_on gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_switch_on instance to operate on.
* @param	Data is value to be written to gateway out_switch_on.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_out_switch_on_write(fpga_kf_3dof_plus *InstancePtr, int Data);
/**
* Read from out_switch_on gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_switch_on instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_3dof_plus_out_switch_on_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to out_switch_off gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_switch_off instance to operate on.
* @param	Data is value to be written to gateway out_switch_off.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_out_switch_off_write(fpga_kf_3dof_plus *InstancePtr, int Data);
/**
* Read from out_switch_off gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the out_switch_off instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_3dof_plus_out_switch_off_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to noise_gain_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the noise_gain_in instance to operate on.
* @param	Data is value to be written to gateway noise_gain_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_noise_gain_in_write(fpga_kf_3dof_plus *InstancePtr, int Data);
/**
* Read from noise_gain_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the noise_gain_in instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_3dof_plus_noise_gain_in_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to iu_ub gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the iu_ub instance to operate on.
* @param	Data is value to be written to gateway iu_ub.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_iu_ub_write(fpga_kf_3dof_plus *InstancePtr, int Data);
/**
* Read from iu_ub gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the iu_ub instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_3dof_plus_iu_ub_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to iu_lb gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the iu_lb instance to operate on.
* @param	Data is value to be written to gateway iu_lb.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_iu_lb_write(fpga_kf_3dof_plus *InstancePtr, int Data);
/**
* Read from iu_lb gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the iu_lb instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_3dof_plus_iu_lb_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to iu_enb gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the iu_enb instance to operate on.
* @param	Data is value to be written to gateway iu_enb.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_iu_enb_write(fpga_kf_3dof_plus *InstancePtr, u32 Data);
/**
* Read from iu_enb gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the iu_enb instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_3dof_plus_iu_enb_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to fb_src_switch_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the fb_src_switch_in instance to operate on.
* @param	Data is value to be written to gateway fb_src_switch_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_fb_src_switch_in_write(fpga_kf_3dof_plus *InstancePtr, u8 Data);
/**
* Read from fb_src_switch_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the fb_src_switch_in instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 fpga_kf_3dof_plus_fb_src_switch_in_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to dma_trigger_time gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the dma_trigger_time instance to operate on.
* @param	Data is value to be written to gateway dma_trigger_time.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_dma_trigger_time_write(fpga_kf_3dof_plus *InstancePtr, u32 Data);
/**
* Read from dma_trigger_time gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the dma_trigger_time instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_3dof_plus_dma_trigger_time_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to barrier_ub_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_ub_in instance to operate on.
* @param	Data is value to be written to gateway barrier_ub_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_barrier_ub_in_write(fpga_kf_3dof_plus *InstancePtr, int Data);
/**
* Read from barrier_ub_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_ub_in instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_3dof_plus_barrier_ub_in_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to barrier_lb_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_lb_in instance to operate on.
* @param	Data is value to be written to gateway barrier_lb_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_barrier_lb_in_write(fpga_kf_3dof_plus *InstancePtr, int Data);
/**
* Read from barrier_lb_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_lb_in instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_3dof_plus_barrier_lb_in_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to barrier_ram_we_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_ram_we_in instance to operate on.
* @param	Data is value to be written to gateway barrier_ram_we_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_barrier_ram_we_in_write(fpga_kf_3dof_plus *InstancePtr, u32 Data);
/**
* Read from barrier_ram_we_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_ram_we_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_3dof_plus_barrier_ram_we_in_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to barrier_ram_addr_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_ram_addr_in instance to operate on.
* @param	Data is value to be written to gateway barrier_ram_addr_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_barrier_ram_addr_in_write(fpga_kf_3dof_plus *InstancePtr, u32 Data);
/**
* Read from barrier_ram_addr_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_ram_addr_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_3dof_plus_barrier_ram_addr_in_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to barrier_c_ofst_idx_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c_ofst_idx_in instance to operate on.
* @param	Data is value to be written to gateway barrier_c_ofst_idx_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_barrier_c_ofst_idx_in_write(fpga_kf_3dof_plus *InstancePtr, u32 Data);
/**
* Read from barrier_c_ofst_idx_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c_ofst_idx_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_3dof_plus_barrier_c_ofst_idx_in_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to barrier_c_idx_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c_idx_in instance to operate on.
* @param	Data is value to be written to gateway barrier_c_idx_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_barrier_c_idx_in_write(fpga_kf_3dof_plus *InstancePtr, u32 Data);
/**
* Read from barrier_c_idx_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c_idx_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_3dof_plus_barrier_c_idx_in_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to barrier_c1_data_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c1_data_in instance to operate on.
* @param	Data is value to be written to gateway barrier_c1_data_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_barrier_c1_data_in_write(fpga_kf_3dof_plus *InstancePtr, int Data);
/**
* Read from barrier_c1_data_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c1_data_in instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_3dof_plus_barrier_c1_data_in_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to barrier_c0_data_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c0_data_in instance to operate on.
* @param	Data is value to be written to gateway barrier_c0_data_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_barrier_c0_data_in_write(fpga_kf_3dof_plus *InstancePtr, int Data);
/**
* Read from barrier_c0_data_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the barrier_c0_data_in instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_3dof_plus_barrier_c0_data_in_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to k_iu gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the k_iu instance to operate on.
* @param	Data is value to be written to gateway k_iu.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_k_iu_write(fpga_kf_3dof_plus *InstancePtr, int Data);
/**
* Read from k_iu gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the k_iu instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_3dof_plus_k_iu_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to fixed_led_pattern_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the fixed_led_pattern_in instance to operate on.
* @param	Data is value to be written to gateway fixed_led_pattern_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_fixed_led_pattern_in_write(fpga_kf_3dof_plus *InstancePtr, u32 Data);
/**
* Read from fixed_led_pattern_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the fixed_led_pattern_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_3dof_plus_fixed_led_pattern_in_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to disco_mode_enable gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the disco_mode_enable instance to operate on.
* @param	Data is value to be written to gateway disco_mode_enable.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_disco_mode_enable_write(fpga_kf_3dof_plus *InstancePtr, u32 Data);
/**
* Read from disco_mode_enable gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the disco_mode_enable instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_3dof_plus_disco_mode_enable_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to c_iu gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the c_iu instance to operate on.
* @param	Data is value to be written to gateway c_iu.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_c_iu_write(fpga_kf_3dof_plus *InstancePtr, int Data);
/**
* Read from c_iu gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the c_iu instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_3dof_plus_c_iu_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to ap_ip_switch_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the ap_ip_switch_in instance to operate on.
* @param	Data is value to be written to gateway ap_ip_switch_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_ap_ip_switch_in_write(fpga_kf_3dof_plus *InstancePtr, u8 Data);
/**
* Read from ap_ip_switch_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the ap_ip_switch_in instance to operate on.
*
* @return	u8
*
* @note    .
*
*/
u8 fpga_kf_3dof_plus_ap_ip_switch_in_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to adc_ch2_offst gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc_ch2_offst instance to operate on.
* @param	Data is value to be written to gateway adc_ch2_offst.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_adc_ch2_offst_write(fpga_kf_3dof_plus *InstancePtr, int Data);
/**
* Read from adc_ch2_offst gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc_ch2_offst instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_3dof_plus_adc_ch2_offst_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to adc_ch1_offst gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc_ch1_offst instance to operate on.
* @param	Data is value to be written to gateway adc_ch1_offst.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_adc_ch1_offst_write(fpga_kf_3dof_plus *InstancePtr, int Data);
/**
* Read from adc_ch1_offst gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the adc_ch1_offst instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_3dof_plus_adc_ch1_offst_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to registers_wren_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the registers_wren_in instance to operate on.
* @param	Data is value to be written to gateway registers_wren_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_registers_wren_in_write(fpga_kf_3dof_plus *InstancePtr, u32 Data);
/**
* Read from registers_wren_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the registers_wren_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_3dof_plus_registers_wren_in_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to registers_update_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the registers_update_in instance to operate on.
* @param	Data is value to be written to gateway registers_update_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_registers_update_in_write(fpga_kf_3dof_plus *InstancePtr, u32 Data);
/**
* Read from registers_update_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the registers_update_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_3dof_plus_registers_update_in_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to registers_subaddr_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the registers_subaddr_in instance to operate on.
* @param	Data is value to be written to gateway registers_subaddr_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_registers_subaddr_in_write(fpga_kf_3dof_plus *InstancePtr, u32 Data);
/**
* Read from registers_subaddr_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the registers_subaddr_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_3dof_plus_registers_subaddr_in_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to registers_data_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the registers_data_in instance to operate on.
* @param	Data is value to be written to gateway registers_data_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_registers_data_in_write(fpga_kf_3dof_plus *InstancePtr, int Data);
/**
* Read from registers_data_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the registers_data_in instance to operate on.
*
* @return	int
*
* @note    .
*
*/
int fpga_kf_3dof_plus_registers_data_in_read(fpga_kf_3dof_plus *InstancePtr);
/**
* Write to registers_addr_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the registers_addr_in instance to operate on.
* @param	Data is value to be written to gateway registers_addr_in.
*
* @return	None.
*
* @note    .
*
*/
void fpga_kf_3dof_plus_registers_addr_in_write(fpga_kf_3dof_plus *InstancePtr, u32 Data);
/**
* Read from registers_addr_in gateway of fpga_kf_3dof_plus. Assignments are LSB-justified.
*
* @param	InstancePtr is the registers_addr_in instance to operate on.
*
* @return	u32
*
* @note    .
*
*/
u32 fpga_kf_3dof_plus_registers_addr_in_read(fpga_kf_3dof_plus *InstancePtr);
#ifdef __cplusplus
}
#endif
#endif
