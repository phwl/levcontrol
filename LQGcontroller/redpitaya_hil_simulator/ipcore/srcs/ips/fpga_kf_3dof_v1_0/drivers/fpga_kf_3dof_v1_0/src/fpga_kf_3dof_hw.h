/**
*
* @file fpga_kf_3dof_hw.h
*
* This header file contains identifiers and driver functions (or
* macros) that can be used to access the device.  The user should refer to the
* hardware device specification for more details of the device operation.
*/ 
#define FPGA_KF_3DOF_X_REF_IN 0xc/**< x_ref_in */
#define FPGA_KF_3DOF_SW_OVERRIDE_IN 0x8/**< sw_override_in */
#define FPGA_KF_3DOF_REG_TIMER_PERIOD 0x50/**< reg_timer_period */
#define FPGA_KF_3DOF_REG_RP_SWITCH_TF 0x58/**< reg_rp_switch_tf */
#define FPGA_KF_3DOF_REG_RP_SWITCH_T0 0x54/**< reg_rp_switch_t0 */
#define FPGA_KF_3DOF_REG_OUT_SWITCH_TF 0x60/**< reg_out_switch_tf */
#define FPGA_KF_3DOF_REG_OUT_SWITCH_T0 0x5c/**< reg_out_switch_t0 */
#define FPGA_KF_3DOF_OUT_SWITCH_ON 0x6c/**< out_switch_on */
#define FPGA_KF_3DOF_OUT_SWITCH_OFF 0x68/**< out_switch_off */
#define FPGA_KF_3DOF_NOISE_GAIN_IN 0x20/**< noise_gain_in */
#define FPGA_KF_3DOF_FB_SRC_SWITCH_IN 0x4/**< fb_src_switch_in */
#define FPGA_KF_3DOF_DMA_TRIGGER_TIME 0x64/**< dma_trigger_time */
#define FPGA_KF_3DOF_BARRIER_UB_IN 0x400/**< barrier_ub_in */
#define FPGA_KF_3DOF_BARRIER_LB_IN 0x404/**< barrier_lb_in */
#define FPGA_KF_3DOF_BARRIER_RAM_WE_IN 0x41c/**< barrier_ram_we_in */
#define FPGA_KF_3DOF_BARRIER_RAM_ADDR_IN 0x410/**< barrier_ram_addr_in */
#define FPGA_KF_3DOF_BARRIER_C_OFST_IDX_IN 0x40c/**< barrier_c_ofst_idx_in */
#define FPGA_KF_3DOF_BARRIER_C_IDX_IN 0x408/**< barrier_c_idx_in */
#define FPGA_KF_3DOF_BARRIER_C1_DATA_IN 0x418/**< barrier_c1_data_in */
#define FPGA_KF_3DOF_BARRIER_C0_DATA_IN 0x414/**< barrier_c0_data_in */
#define FPGA_KF_3DOF_FIXED_LED_PATTERN_IN 0x1c/**< fixed_led_pattern_in */
#define FPGA_KF_3DOF_DISCO_MODE_ENABLE 0x18/**< disco_mode_enable */
#define FPGA_KF_3DOF_AP_IP_SWITCH_IN 0x0/**< ap_ip_switch_in */
#define FPGA_KF_3DOF_ADC_CH2_OFFST 0x14/**< adc_ch2_offst */
#define FPGA_KF_3DOF_ADC_CH1_OFFST 0x10/**< adc_ch1_offst */
#define FPGA_KF_3DOF_REGISTERS_WREN_IN 0x10c/**< registers_wren_in */
#define FPGA_KF_3DOF_REGISTERS_UPDATE_IN 0x110/**< registers_update_in */
#define FPGA_KF_3DOF_REGISTERS_SUBADDR_IN 0x108/**< registers_subaddr_in */
#define FPGA_KF_3DOF_REGISTERS_DATA_IN 0x100/**< registers_data_in */
#define FPGA_KF_3DOF_REGISTERS_ADDR_IN 0x104/**< registers_addr_in */
