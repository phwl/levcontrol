/*******************************************************************************
*
*   ipdriver.h
*   ==========
*
*   Userspace driver for the HILSIM IP-core.
*
*   Date        Rev.No. Author      Description
*   ----------------------------------------------------------------------------
*   20.05.2024  v1.0    jbd         Created.
*   06.01.2025  v1.0    jbd         Added NLF switch ipcore mapping.
*   ----------------------------------------------------------------------------
*
*   Author Glossary:
*    - jbd : Johannes Berndorfer, ACIN, Technische Universität Wien
*
*   Copyright (c) 2024 Johannes Berndorfer
*
*******************************************************************************/

#pragma once

#include <stdint.h>
#include <cJSON.h>

#define FILE_XDEVCFG    "/dev/xdevcfg"
#define FILE_MEM        "/dev/mem"

#define IPDRVR_CFGNAME_MAX_LEN          256
#define IPDRVR_NUM_SLICES               3
#define IPDRVR_ADCCALIB_NUMSAMPLES      1024

#define IPCORE_PACKED                   __attribute__((__packed__))

#define IPCORE_BASE_ADDR                0x80000000
#define IPCORE_ADDR_SPACE_SIZE          0x0fff
#define IPCORE_ADDR_OFFSET_LED          0x0000  // 0x0000 - 0x0003 (0x04 bytes) AXI_A
#define IPCORE_ADDR_OFFSET_CFG_SYSTEM   0x0010  // 0x0010 - 0x003b (0x1c bytes) AXI_A
#define IPCORE_ADDR_OFFSET_CFG_INPMAT   0x0040  // 0x0040 - 0x0063 (0x24 bytes) AXI_A
#define IPCORE_ADDR_OFFSET_CFG_OUTMAT   0x0080  // 0x0080 - 0x00f7 (0x78 bytes) AXI_A
#define IPCORE_ADDR_OFFSET_CFG_SLICE0   0x0100  // 0x0100 - 0x013f (0x40 bytes) AXI_A
#define IPCORE_ADDR_OFFSET_CFG_SLICE1   0x0140  // 0x0140 - 0x017f (0x40 bytes) AXI_A
#define IPCORE_ADDR_OFFSET_CFG_SLICE2   0x0180  // 0x0180 - 0x01bf (0x40 bytes) AXI_A
#define IPCORE_ADDR_OFFSET_CFG_INPUTNLF 0x01c0  // 0x01c0 - 0x01d7 (0x18 bytes) AXI_A
#define IPCORE_ADDR_OFFSET_CFG_CALIB    0x0200  // 0x0200 - 0x0227 (0x28 bytes) AXI_B
#define IPCORE_ADDR_OFFSET_CFG_NLFSW    0x0240  // 0x0240 - 0x024b (0x0c bytes) AXI_B

#define IPCORE_NLF_ADDR_BITS            10
#define IPCORE_NLF_DATA_BITS            16
#define IPCORE_NLF_LUT_SIZE             (1 << IPCORE_NLF_ADDR_BITS)

#define IPCORE_NLF_LUTID_SLICE0_U0      0x00
#define IPCORE_NLF_LUTID_SLICE0_U1      0x01
#define IPCORE_NLF_LUTID_SLICE0_X0      0x02
#define IPCORE_NLF_LUTID_SLICE0_X1      0x03
#define IPCORE_NLF_LUTID_SLICE0_XD0     0x04
#define IPCORE_NLF_LUTID_SLICE0_XD1     0x05
#define IPCORE_NLF_LUTID_SLICE1_U0      0x10
#define IPCORE_NLF_LUTID_SLICE1_U1      0x11
#define IPCORE_NLF_LUTID_SLICE1_X0      0x12
#define IPCORE_NLF_LUTID_SLICE1_X1      0x13
#define IPCORE_NLF_LUTID_SLICE1_XD0     0x14
#define IPCORE_NLF_LUTID_SLICE1_XD1     0x15
#define IPCORE_NLF_LUTID_SLICE2_U0      0x20
#define IPCORE_NLF_LUTID_SLICE2_U1      0x21
#define IPCORE_NLF_LUTID_SLICE2_X0      0x22
#define IPCORE_NLF_LUTID_SLICE2_X1      0x23
#define IPCORE_NLF_LUTID_SLICE2_XD0     0x24
#define IPCORE_NLF_LUTID_SLICE2_XD1     0x25

#define IPCORE_NLF_LUTID_DAC0_XX0       0x30
#define IPCORE_NLF_LUTID_DAC0_XX1       0x31
#define IPCORE_NLF_LUTID_DAC0_XX2       0x32
#define IPCORE_NLF_LUTID_DAC1_XX0       0x33
#define IPCORE_NLF_LUTID_DAC1_XX1       0x34
#define IPCORE_NLF_LUTID_DAC1_XX2       0x35

#define IPCORE_NLF_LUTID_ADC0           0x40
#define IPCORE_NLF_LUTID_ADC1           0x41


#define IPCORE_DTYPE_SLICE              25, 17
#define IPCORE_DTYPE_CONST              18, 10
#define IPCORE_DTYPE_NLF                16, 14

#define IPCORE_LED_SIM_RUNNING          (1U << 0)
#define IPCORE_LED_CONFIG_IN_PROGRESS   (1U << 1)

typedef uint32_t fixpt_const_t;
typedef uint32_t fixpt_nlf_t;

/**
 * \brief IP-Core Address Space: Extenral LED I/O configuration.
 */
struct IPCORE_PACKED ipcore_cfg_led
{
    volatile uint32_t led_output;
};

/**
 * \brief IP-Core Address Space: General system configuration.
 */
struct IPCORE_PACKED ipcore_cfg_system
{
    volatile uint32_t system_run;
    volatile uint32_t cfg_nlf_start;
    volatile uint32_t cfg_nlf_done;
    volatile uint32_t cfg_nlf_we;
    volatile uint32_t cfg_nlf_select;
    volatile uint32_t cfg_nlf_addr;
    volatile uint32_t cfg_nlf_data;

    // Note: May be removed in the future to save 3 more DSP slices (for fitting
    // the IP core on ZYNQ 7010 devices with only 80 DSPs)
    volatile uint32_t noise0_presc;
    volatile uint32_t noise1_presc;
    volatile uint32_t noise2_presc;

    volatile uint32_t system_reset;
};

/**
 * \brief IP-Core Address Space: Input non-linear functions.
 */
struct IPCORE_PACKED ipcore_cfg_input_nlf
{
    volatile uint32_t adc0_nlf_presc;
    volatile uint32_t adc0_nlf_gain;
    volatile uint32_t adc0_nlf_enabled;
    
    volatile uint32_t adc1_nlf_presc;
    volatile uint32_t adc1_nlf_gain;
    volatile uint32_t adc1_nlf_enabled;
};

/**
 * \brief IP-Core Address Space: Input matrix configuration.
 */
struct IPCORE_PACKED ipcore_cfg_input_mat
{
    volatile uint32_t fac_u0_adc0;
    volatile uint32_t fac_u0_adc1;
    volatile uint32_t fac_u0_noise;

    volatile uint32_t fac_u1_adc0;
    volatile uint32_t fac_u1_adc1;
    volatile uint32_t fac_u1_noise;

    volatile uint32_t fac_u2_adc0;
    volatile uint32_t fac_u2_adc1;
    volatile uint32_t fac_u2_noise;
};

/**
 * \brief IP-Core Address Space: Output matrix configuration.
 */
struct IPCORE_PACKED ipcore_cfg_output_mat
{
    volatile uint32_t dac0_selx0;
    volatile uint32_t dac0_selx1;
    volatile uint32_t dac0_selx2;
    volatile uint32_t fac_dac0_xx0;
    volatile uint32_t fac_dac0_xx1;
    volatile uint32_t fac_dac0_xx2;

    volatile uint32_t dac1_selx0;
    volatile uint32_t dac1_selx1;
    volatile uint32_t dac1_selx2;
    volatile uint32_t fac_dac1_xx0;
    volatile uint32_t fac_dac1_xx1;
    volatile uint32_t fac_dac1_xx2;

    volatile uint32_t nlf_dac0_xx0_enabled;
    volatile uint32_t nlf_dac0_xx0_presc;
    volatile uint32_t nlf_dac0_xx0_gain;
    volatile uint32_t nlf_dac0_xx1_enabled;
    volatile uint32_t nlf_dac0_xx1_presc;
    volatile uint32_t nlf_dac0_xx1_gain;
    volatile uint32_t nlf_dac0_xx2_enabled;
    volatile uint32_t nlf_dac0_xx2_presc;
    volatile uint32_t nlf_dac0_xx2_gain;

    volatile uint32_t nlf_dac1_xx0_enabled;
    volatile uint32_t nlf_dac1_xx0_presc;
    volatile uint32_t nlf_dac1_xx0_gain;
    volatile uint32_t nlf_dac1_xx1_enabled;
    volatile uint32_t nlf_dac1_xx1_presc;
    volatile uint32_t nlf_dac1_xx1_gain;
    volatile uint32_t nlf_dac1_xx2_enabled;
    volatile uint32_t nlf_dac1_xx2_presc;
    volatile uint32_t nlf_dac1_xx2_gain;
};

/**
 * \brief IP-Core Address Space: Slice configuration.
 */
struct IPCORE_PACKED ipcore_cfg_slice
{
    volatile uint32_t x_enable_nlf;
    volatile uint32_t x_gain;
    volatile uint32_t x_nlf_presc;
    volatile uint32_t x_nlf_gain;

    volatile uint32_t xd_enable_nlf;
    volatile uint32_t xd_gain;
    volatile uint32_t xd_nlf_presc;
    volatile uint32_t xd_nlf_gain;

    volatile uint32_t u_enable_nlf;
    volatile uint32_t u_gain;
    volatile uint32_t u_nlf_presc;
    volatile uint32_t u_nlf_gain;

    volatile uint32_t xd_presc_shift;
    volatile uint32_t xd_presc_mul;

    volatile uint32_t x_presc_shift;
    volatile uint32_t x_presc_mul;
};

struct IPCORE_PACKED ipcore_cfg_calib
{
    volatile uint32_t adc0_calib_offset;
    volatile uint32_t adc1_calib_offset;
    volatile uint32_t adc0_calib_factor;
    volatile uint32_t adc1_calib_factor;

    volatile uint32_t adc0_value;
    volatile uint32_t adc1_value;

    volatile uint32_t dac0_calib_offset;
    volatile uint32_t dac1_calib_offset;
    volatile uint32_t dac0_calib_factor;
    volatile uint32_t dac1_calib_factor;
};

struct IPCORE_PACKED ipcore_cfg_nlf_switch
{
    volatile uint32_t nlf_switch;
    volatile uint32_t io_mask;
    volatile uint32_t software_switch;
};

/* ========================================================================== */

enum ipdriver_outmat_srcsel
{
    OUTMAT_SRC_SLICE_X = 0,
    OUTMAT_SRC_SLICE_XDOT = 1,
    OUTMAT_SRC_SLICE_XDOTDOT = 2
};

struct ipdriver_nlf
{
    uint32_t enabled;
    fixpt_const_t presc;
    fixpt_const_t gain;
    fixpt_nlf_t lut[IPCORE_NLF_LUT_SIZE];
};

struct ipdriver_slice_config
{
    uint32_t x_enable_nlf;
    fixpt_const_t x_gain;
    fixpt_const_t x_nlf_presc;
    fixpt_const_t x_nlf_gain;
    fixpt_nlf_t x_nlf_lut_0[IPCORE_NLF_LUT_SIZE];
    fixpt_nlf_t x_nlf_lut_1[IPCORE_NLF_LUT_SIZE];

    uint32_t xd_enable_nlf;
    fixpt_const_t xd_gain;
    fixpt_const_t xd_nlf_presc;
    fixpt_const_t xd_nlf_gain;
    fixpt_nlf_t xd_nlf_lut_0[IPCORE_NLF_LUT_SIZE];
    fixpt_nlf_t xd_nlf_lut_1[IPCORE_NLF_LUT_SIZE];

    uint32_t u_enable_nlf;
    fixpt_const_t u_gain;
    fixpt_const_t u_nlf_presc;
    fixpt_const_t u_nlf_gain;
    fixpt_nlf_t u_nlf_lut_0[IPCORE_NLF_LUT_SIZE];
    fixpt_nlf_t u_nlf_lut_1[IPCORE_NLF_LUT_SIZE];

    uint32_t xd_presc_shift;
    fixpt_const_t xd_presc_mul;

    uint32_t x_presc_shift;
    fixpt_const_t x_presc_mul;
};

struct ipdriver_sim_config
{
    char name[IPDRVR_CFGNAME_MAX_LEN];

    fixpt_const_t noise0_presc;
    fixpt_const_t noise1_presc;
    fixpt_const_t noise2_presc;

    struct ipdriver_slice_config slices[IPDRVR_NUM_SLICES];

    struct {
        uint32_t adc0_nlf_enabled;
        fixpt_const_t adc0_nlf_presc;
        fixpt_const_t adc0_nlf_gain;
        fixpt_nlf_t adc0_nlf_lut[IPCORE_NLF_LUT_SIZE];

        uint32_t adc1_nlf_enabled;
        fixpt_const_t adc1_nlf_presc;
        fixpt_const_t adc1_nlf_gain;
        fixpt_nlf_t adc1_nlf_lut[IPCORE_NLF_LUT_SIZE];
    } input_nlf;

    struct {
        fixpt_const_t fac_u0_adc0;
        fixpt_const_t fac_u0_adc1;
        fixpt_const_t fac_u0_noise;

        fixpt_const_t fac_u1_adc0;
        fixpt_const_t fac_u1_adc1;
        fixpt_const_t fac_u1_noise;

        fixpt_const_t fac_u2_adc0;
        fixpt_const_t fac_u2_adc1;
        fixpt_const_t fac_u2_noise;
    } input_matrix;

    struct {
        enum ipdriver_outmat_srcsel dac0_selx0;
        enum ipdriver_outmat_srcsel dac0_selx1;
        enum ipdriver_outmat_srcsel dac0_selx2;
        fixpt_const_t fac_dac0_xx0;
        fixpt_const_t fac_dac0_xx1;
        fixpt_const_t fac_dac0_xx2;

        enum ipdriver_outmat_srcsel dac1_selx0;
        enum ipdriver_outmat_srcsel dac1_selx1;
        enum ipdriver_outmat_srcsel dac1_selx2;
        fixpt_const_t fac_dac1_xx0;
        fixpt_const_t fac_dac1_xx1;
        fixpt_const_t fac_dac1_xx2;

        struct ipdriver_nlf nlf_dac0_xx0;
        struct ipdriver_nlf nlf_dac0_xx1;
        struct ipdriver_nlf nlf_dac0_xx2;

        struct ipdriver_nlf nlf_dac1_xx0;
        struct ipdriver_nlf nlf_dac1_xx1;
        struct ipdriver_nlf nlf_dac1_xx2;
    } output_matrix;
};

double fix2dbl(uint32_t value, unsigned int total_bits, unsigned int fractional_bits);
uint32_t dbl2fix(double value, unsigned int total_bits, unsigned int fractional_bits);

int ipdriver_load_bitstream(const char *bs_file);
int ipdriver_sim_config_from_file(const char *fname, struct ipdriver_sim_config *cfg_out);
int ipdriver_sim_config_from_str(const char *json_str, struct ipdriver_sim_config *cfg_out);
int ipdriver_sim_config_from_json(const cJSON *j_root, struct ipdriver_sim_config *cfg_out);

int ipdriver_init();
void ipdriver_deinit();
char *ipdriver_err_str();
int ipdriver_sim_config_update(const struct ipdriver_sim_config *cfg);
int ipdriver_sim_start();
int ipdriver_sim_stop();
int ipdriver_sim_running();
int ipdriver_do_reset();

int ipdriver_reset_adc_calib();
int ipdriver_set_adc_calib(const double *adc0_offset, const double *adc0_factor, const double *adc1_offset, const double *adc1_factor);
int ipdriver_get_adc_calib(double *adc0_offset, double *adc0_factor, double *adc1_offset, double *adc1_factor);
int ipdriver_do_adc_zero_calib();
int ipdriver_read_adc(double *adc0, double *adc1);

int ipdriver_reset_dac_calib();
int ipdriver_set_dac_calib(const double *dac0_offset, const double *dac0_factor, const double *dac1_offset, const double *dac1_factor);
int ipdriver_get_dac_calib(double *dac0_offset, double *dac0_factor, double *dac1_offset, double *dac1_factor);

int ipdriver_set_led(uint8_t led_value);

int ipdriver_set_nlfsw_iomask(uint32_t io_mask);
int ipdriver_get_nlfsw_iomask(uint32_t *io_mask_out);
int ipdriver_set_nlfsw_software_sel(uint32_t sel_mask);
int ipdriver_get_nlfsw_software_sel(uint32_t *sel_mask_out);
int ipdriver_get_nlfsw_current_sel(uint32_t *current_sel_out);