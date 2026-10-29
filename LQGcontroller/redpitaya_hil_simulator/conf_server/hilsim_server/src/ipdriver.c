/*******************************************************************************
*
*   ipdriver.c
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

#define _GNU_SOURCE

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <time.h>
#include <math.h>

#include <cJSON.h>

#include <hilsim/ipdriver.h>

#define IPDRVR_ERRSTR_LEN 2048

int g_mem_fd = -1;
volatile void *g_ipcore_mapped = NULL;
char g_ipdriver_err_str[IPDRVR_ERRSTR_LEN + 1] = {0};

volatile struct ipcore_cfg_led *g_ipcore_led = NULL;
volatile struct ipcore_cfg_system *g_ipcore_sys = NULL;
volatile struct ipcore_cfg_input_mat *g_ipcore_input_mat = NULL;
volatile struct ipcore_cfg_output_mat *g_ipcore_output_mat = NULL;
volatile struct ipcore_cfg_input_nlf *g_ipcore_input_nlf = NULL;
volatile struct ipcore_cfg_slice *g_ipcore_slices[IPDRVR_NUM_SLICES] = {0};
volatile struct ipcore_cfg_calib *g_ipcore_calib = NULL;
volatile struct ipcore_cfg_nlf_switch *g_ipcore_nlf_switch = NULL;

static void _ipdriver_err_str_form_errno()
{
    strncpy(g_ipdriver_err_str, strerror(errno), IPDRVR_ERRSTR_LEN);
}

double fix2dbl(uint32_t value, unsigned int total_bits, unsigned int fractional_bits)
{
    // Check if sign bit is set.
    const int sign_bit = (value >> (total_bits)-1) & 1;
    long val_signed;

    if (sign_bit)
        val_signed = -((long)(value ^ ((1 << total_bits)-1)) + 1);
    else
        val_signed = (long)value;

    return (double)val_signed / (double)(1 << fractional_bits);
}

uint32_t dbl2fix(double value, unsigned int total_bits, unsigned int fractional_bits)
{
    const int negative = value < 0.0;

    uint32_t pos_val = (uint32_t) fabs(round(value * (1 << fractional_bits)));

    if (negative)
        return (pos_val ^ ((1 << total_bits)-1)) + 1;
    else
        return pos_val;
}

int ipdriver_load_bitstream(const char *bs_file)
{
    int bsf_fd = -1;
    int xdevcfg_fd = -1;
    char buf[1024];
    ssize_t rdlen;

    bsf_fd = open(bs_file, O_RDONLY);
    if (bsf_fd <= 0)
        goto error;

    xdevcfg_fd = open(FILE_XDEVCFG, O_WRONLY);
    if (xdevcfg_fd <= 0)
        goto error;

    // Copy over bitstream into xdevcfg.
    while ((rdlen = read(bsf_fd, buf, sizeof(buf))) > 0)
    {
        if (write(xdevcfg_fd, buf, rdlen) != rdlen)
            goto error;
    }

    close(bsf_fd);
    close(xdevcfg_fd);
    return 0;

error:
    if (bsf_fd > 0) close(bsf_fd);
    if (xdevcfg_fd > 0) close(xdevcfg_fd);
    return -1;
}

int ipdriver_sim_config_from_file(const char *fname, struct ipdriver_sim_config *cfg_out)
{
    FILE *fp;
    char *buf;
    size_t fsize;
    int rc;

    fp = fopen(fname, "r");
    if (!fp)
    {
        _ipdriver_err_str_form_errno();
        return 1;
    }

    fseek(fp, 0, SEEK_END);
    fsize = ftell(fp);
    rewind(fp);

    buf = (char *) malloc(fsize + 1);
    if (!buf)
    {
        _ipdriver_err_str_form_errno();
        fclose(fp);
        return 1;
    }

    fread(buf, fsize, 1, fp);
    buf[fsize] = '\0';
    fclose(fp);

    rc = ipdriver_sim_config_from_str(buf, cfg_out);

    free(buf);
    return rc;
}

int ipdriver_sim_config_from_str(const char *json_str, struct ipdriver_sim_config *cfg_out)
{
    cJSON *j_root;
    int rc = 0;

    // Parse the JSON string.
    j_root = cJSON_Parse(json_str);
    if (!j_root)
    {
        const char *err_ptr = cJSON_GetErrorPtr();
        if (err_ptr)
            snprintf(g_ipdriver_err_str, IPDRVR_ERRSTR_LEN, "JSON parsing error: %s", err_ptr);
        else
            snprintf(g_ipdriver_err_str, IPDRVR_ERRSTR_LEN, "Unknown JSON parsing error.");
        
        rc = 1;
        goto cleanup;
    }

    rc = ipdriver_sim_config_from_json(j_root, cfg_out);

cleanup:
    if (j_root) cJSON_Delete(j_root);
    return rc;
}

int ipdriver_sim_config_from_json(const cJSON *j_root, struct ipdriver_sim_config *cfg_out)
{
    int func_rc = 0;
    int slice_num = 0;

    const cJSON *j_name = cJSON_GetObjectItemCaseSensitive(j_root, "name");
    const cJSON *j_slices = cJSON_GetObjectItemCaseSensitive(j_root, "slices");
    const cJSON *j_noise0_presc = cJSON_GetObjectItemCaseSensitive(j_root, "noise0_presc");
    const cJSON *j_noise1_presc = cJSON_GetObjectItemCaseSensitive(j_root, "noise1_presc");
    const cJSON *j_noise2_presc = cJSON_GetObjectItemCaseSensitive(j_root, "noise2_presc");
    const cJSON *j_adc0_nlf = cJSON_GetObjectItemCaseSensitive(j_root, "adc0_nlf");
    const cJSON *j_adc1_nlf = cJSON_GetObjectItemCaseSensitive(j_root, "adc1_nlf");
    const cJSON *j_input_matrix = cJSON_GetObjectItemCaseSensitive(j_root, "input_matrix");
    const cJSON *j_output_matrix = cJSON_GetObjectItemCaseSensitive(j_root, "output_matrix");

    if (!cJSON_IsString(j_name) || !j_name->valuestring)
    {
        snprintf(g_ipdriver_err_str, IPDRVR_ERRSTR_LEN, "Invalid JSON member \"name\"");
        goto error;
    }

    // Check noise prescaler values.
    if (!cJSON_IsNumber(j_noise0_presc) || !cJSON_IsNumber(j_noise1_presc) || !cJSON_IsNumber(j_noise2_presc))
    {
        snprintf(g_ipdriver_err_str, IPDRVR_ERRSTR_LEN, "Invalid JSON: Noise prescaler value missing or badly formatted.");
        goto error;
    }

    // Set noise prescaler values.
    cfg_out->noise0_presc = j_noise0_presc->valueint;
    cfg_out->noise1_presc = j_noise1_presc->valueint;
    cfg_out->noise2_presc = j_noise2_presc->valueint;

    // Copy name string to out struct.
    const cJSON *j_slice = NULL;
    strncpy(cfg_out->name, j_name->valuestring, IPDRVR_CFGNAME_MAX_LEN - 1);

    // Parse every slice in the given list.
    cJSON_ArrayForEach(j_slice, j_slices)
    {
        if (slice_num >= IPDRVR_NUM_SLICES)
        {
            snprintf(g_ipdriver_err_str, IPDRVR_ERRSTR_LEN, "More slices specified than maximum of %d slices.", IPDRVR_NUM_SLICES);
            goto error;
        }

        const cJSON *j_x_enable_nlf = cJSON_GetObjectItemCaseSensitive(j_slice, "x_enable_nlf");
        const cJSON *j_x_gain = cJSON_GetObjectItemCaseSensitive(j_slice, "x_gain");
        const cJSON *j_x_nlf_presc = cJSON_GetObjectItemCaseSensitive(j_slice, "x_nlf_presc");
        const cJSON *j_x_nlf_gain = cJSON_GetObjectItemCaseSensitive(j_slice, "x_nlf_gain");
        const cJSON *j_xd_enable_nlf = cJSON_GetObjectItemCaseSensitive(j_slice, "xd_enable_nlf");
        const cJSON *j_xd_gain = cJSON_GetObjectItemCaseSensitive(j_slice, "xd_gain");
        const cJSON *j_xd_nlf_presc = cJSON_GetObjectItemCaseSensitive(j_slice, "xd_nlf_presc");
        const cJSON *j_xd_nlf_gain = cJSON_GetObjectItemCaseSensitive(j_slice, "xd_nlf_gain");
        const cJSON *j_u_enable_nlf = cJSON_GetObjectItemCaseSensitive(j_slice, "u_enable_nlf");
        const cJSON *j_u_gain = cJSON_GetObjectItemCaseSensitive(j_slice, "u_gain");
        const cJSON *j_u_nlf_presc = cJSON_GetObjectItemCaseSensitive(j_slice, "u_nlf_presc");
        const cJSON *j_u_nlf_gain = cJSON_GetObjectItemCaseSensitive(j_slice, "u_nlf_gain");
        const cJSON *j_xd_presc_shift = cJSON_GetObjectItemCaseSensitive(j_slice, "xd_presc_shift");
        const cJSON *j_xd_presc_mul = cJSON_GetObjectItemCaseSensitive(j_slice, "xd_presc_mul");
        const cJSON *j_x_presc_shift = cJSON_GetObjectItemCaseSensitive(j_slice, "x_presc_shift");
        const cJSON *j_x_presc_mul = cJSON_GetObjectItemCaseSensitive(j_slice, "x_presc_mul");

        if ((!cJSON_IsNumber(j_x_enable_nlf)) ||
            (!cJSON_IsNumber(j_x_gain)) ||
            (!cJSON_IsNumber(j_x_nlf_presc)) ||
            (!cJSON_IsNumber(j_x_nlf_gain)) ||
            (!cJSON_IsNumber(j_xd_enable_nlf)) ||
            (!cJSON_IsNumber(j_xd_gain)) ||
            (!cJSON_IsNumber(j_xd_nlf_presc)) ||
            (!cJSON_IsNumber(j_xd_nlf_gain)) ||
            (!cJSON_IsNumber(j_u_enable_nlf)) ||
            (!cJSON_IsNumber(j_u_gain)) ||
            (!cJSON_IsNumber(j_u_nlf_presc)) ||
            (!cJSON_IsNumber(j_u_nlf_gain)) ||
            (!cJSON_IsNumber(j_xd_presc_shift)) ||
            (!cJSON_IsNumber(j_xd_presc_mul)) ||
            (!cJSON_IsNumber(j_x_presc_shift)) ||
            (!cJSON_IsNumber(j_x_presc_mul)))
        {
            snprintf(g_ipdriver_err_str, IPDRVR_ERRSTR_LEN, "Invalid JSON format: Failed to parse slice %d correctly.", slice_num);
            goto error;
        }

        struct ipdriver_slice_config *sc = &cfg_out->slices[slice_num];

        sc->x_enable_nlf = j_x_enable_nlf->valueint;
        sc->x_gain = j_x_gain->valueint;
        sc->x_nlf_presc = j_x_nlf_presc->valueint;
        sc->x_nlf_gain = j_x_nlf_gain->valueint;
        sc->xd_enable_nlf = j_xd_enable_nlf->valueint;
        sc->xd_gain = j_xd_gain->valueint;
        sc->xd_nlf_presc = j_xd_nlf_presc->valueint;
        sc->xd_nlf_gain = j_xd_nlf_gain->valueint;
        sc->u_enable_nlf = j_u_enable_nlf->valueint;
        sc->u_gain = j_u_gain->valueint;
        sc->u_nlf_presc = j_u_nlf_presc->valueint;
        sc->u_nlf_gain = j_u_nlf_gain->valueint;
        sc->xd_presc_shift = j_xd_presc_shift->valueint;
        sc->xd_presc_mul = j_xd_presc_mul->valueint;
        sc->x_presc_shift = j_x_presc_shift->valueint;
        sc->x_presc_mul = j_x_presc_mul->valueint;

        // Read LUTs.
        const cJSON *j_x_nlf_lut_0 = cJSON_GetObjectItemCaseSensitive(j_slice, "x_nlf_lut_0");
        const cJSON *j_x_nlf_lut_1 = cJSON_GetObjectItemCaseSensitive(j_slice, "x_nlf_lut_1");
        const cJSON *j_xd_nlf_lut_0 = cJSON_GetObjectItemCaseSensitive(j_slice, "xd_nlf_lut_0");
        const cJSON *j_xd_nlf_lut_1 = cJSON_GetObjectItemCaseSensitive(j_slice, "xd_nlf_lut_1");
        const cJSON *j_u_nlf_lut_0 = cJSON_GetObjectItemCaseSensitive(j_slice, "u_nlf_lut_0");
        const cJSON *j_u_nlf_lut_1 = cJSON_GetObjectItemCaseSensitive(j_slice, "u_nlf_lut_1");

        if (!cJSON_IsArray(j_x_nlf_lut_0) || cJSON_GetArraySize(j_x_nlf_lut_0) != IPCORE_NLF_LUT_SIZE)
        {
            snprintf(g_ipdriver_err_str, IPDRVR_ERRSTR_LEN, "Invalid JSON format: Invalid x0-LUT table specified for slice %d.", slice_num);
            goto error;
        }

        if (!cJSON_IsArray(j_x_nlf_lut_1) || cJSON_GetArraySize(j_x_nlf_lut_1) != IPCORE_NLF_LUT_SIZE)
        {
            snprintf(g_ipdriver_err_str, IPDRVR_ERRSTR_LEN, "Invalid JSON format: Invalid x1-LUT table specified for slice %d.", slice_num);
            goto error;
        }

        if (!cJSON_IsArray(j_xd_nlf_lut_0) || cJSON_GetArraySize(j_xd_nlf_lut_0) != IPCORE_NLF_LUT_SIZE)
        {
            snprintf(g_ipdriver_err_str, IPDRVR_ERRSTR_LEN, "Invalid JSON format: Invalid xd0-LUT table specified for slice %d.", slice_num);
            goto error;
        }

        if (!cJSON_IsArray(j_xd_nlf_lut_1) || cJSON_GetArraySize(j_xd_nlf_lut_1) != IPCORE_NLF_LUT_SIZE)
        {
            snprintf(g_ipdriver_err_str, IPDRVR_ERRSTR_LEN, "Invalid JSON format: Invalid xd1-LUT table specified for slice %d.", slice_num);
            goto error;
        }

        if (!cJSON_IsArray(j_u_nlf_lut_0) || cJSON_GetArraySize(j_u_nlf_lut_0) != IPCORE_NLF_LUT_SIZE)
        {
            snprintf(g_ipdriver_err_str, IPDRVR_ERRSTR_LEN, "Invalid JSON format: Invalid u0-LUT table specified for slice %d.", slice_num);
            goto error;
        }

        if (!cJSON_IsArray(j_u_nlf_lut_1) || cJSON_GetArraySize(j_u_nlf_lut_1) != IPCORE_NLF_LUT_SIZE)
        {
            snprintf(g_ipdriver_err_str, IPDRVR_ERRSTR_LEN, "Invalid JSON format: Invalid u1-LUT table specified for slice %d.", slice_num);
            goto error;
        }

        // Copy LUT values to the slice struct arrays.
        for (size_t i = 0; i < IPCORE_NLF_LUT_SIZE; i++)
        {
            sc->x_nlf_lut_0[i] = cJSON_GetArrayItem(j_x_nlf_lut_0, i)->valueint;
            sc->x_nlf_lut_1[i] = cJSON_GetArrayItem(j_x_nlf_lut_1, i)->valueint;
            sc->xd_nlf_lut_0[i] = cJSON_GetArrayItem(j_xd_nlf_lut_0, i)->valueint;
            sc->xd_nlf_lut_1[i] = cJSON_GetArrayItem(j_xd_nlf_lut_1, i)->valueint;
            sc->u_nlf_lut_0[i] = cJSON_GetArrayItem(j_u_nlf_lut_0, i)->valueint;
            sc->u_nlf_lut_1[i] = cJSON_GetArrayItem(j_u_nlf_lut_1, i)->valueint;
        }

        slice_num++;
    }

    // Parse input/output nonlinear function configuration.
    if (!j_adc0_nlf)
    {
        snprintf(g_ipdriver_err_str, IPDRVR_ERRSTR_LEN, "Invalid JSON: Missing \"adc0_nlf\" configuration.");
        goto error;
    }

    if (!j_adc1_nlf)
    {
        snprintf(g_ipdriver_err_str, IPDRVR_ERRSTR_LEN, "Invalid JSON: Missing \"adc1_nlf\" configuration.");
        goto error;
    }

    const cJSON *j_adc0_nlf_enabled = cJSON_GetObjectItemCaseSensitive(j_adc0_nlf, "enabled");
    const cJSON *j_adc0_nlf_presc = cJSON_GetObjectItemCaseSensitive(j_adc0_nlf, "presc");
    const cJSON *j_adc0_nlf_gain = cJSON_GetObjectItemCaseSensitive(j_adc0_nlf, "gain");
    const cJSON *j_adc0_nlf_lut = cJSON_GetObjectItemCaseSensitive(j_adc0_nlf, "lut");
    const cJSON *j_adc1_nlf_enabled = cJSON_GetObjectItemCaseSensitive(j_adc1_nlf, "enabled");
    const cJSON *j_adc1_nlf_presc = cJSON_GetObjectItemCaseSensitive(j_adc1_nlf, "presc");
    const cJSON *j_adc1_nlf_gain = cJSON_GetObjectItemCaseSensitive(j_adc1_nlf, "gain");
    const cJSON *j_adc1_nlf_lut = cJSON_GetObjectItemCaseSensitive(j_adc1_nlf, "lut");

    if ((!cJSON_IsNumber(j_adc0_nlf_enabled)) ||
        (!cJSON_IsNumber(j_adc0_nlf_presc)) ||
        (!cJSON_IsNumber(j_adc0_nlf_gain)) ||
        (!cJSON_IsArray(j_adc0_nlf_lut) || cJSON_GetArraySize(j_adc0_nlf_lut) != IPCORE_NLF_LUT_SIZE) ||
        (!cJSON_IsNumber(j_adc1_nlf_enabled)) ||
        (!cJSON_IsNumber(j_adc1_nlf_presc)) ||
        (!cJSON_IsNumber(j_adc1_nlf_gain)) ||
        (!cJSON_IsArray(j_adc1_nlf_lut) || cJSON_GetArraySize(j_adc1_nlf_lut) != IPCORE_NLF_LUT_SIZE))
    {
        snprintf(g_ipdriver_err_str, IPDRVR_ERRSTR_LEN, "Invalid JSON: Input non-linear function configuration is badly formatted.");
        goto error;
    }

    cfg_out->input_nlf.adc0_nlf_enabled = j_adc0_nlf_enabled->valueint;
    cfg_out->input_nlf.adc0_nlf_presc = j_adc0_nlf_presc->valueint;
    cfg_out->input_nlf.adc0_nlf_gain = j_adc0_nlf_gain->valueint;
    cfg_out->input_nlf.adc1_nlf_enabled = j_adc1_nlf_enabled->valueint;
    cfg_out->input_nlf.adc1_nlf_presc = j_adc1_nlf_presc->valueint;
    cfg_out->input_nlf.adc1_nlf_gain = j_adc1_nlf_gain->valueint;

    // Copy LUTs for input/output non-linear functions.
    for (size_t i = 0; i < IPCORE_NLF_LUT_SIZE; ++i)
    {
        cfg_out->input_nlf.adc0_nlf_lut[i] = cJSON_GetArrayItem(j_adc0_nlf_lut, i)->valueint;
        cfg_out->input_nlf.adc1_nlf_lut[i] = cJSON_GetArrayItem(j_adc1_nlf_lut, i)->valueint;
    }

    // Parse input matrix configuration.
    if (!j_input_matrix)
    {
        snprintf(g_ipdriver_err_str, IPDRVR_ERRSTR_LEN, "Invalid JSON: Missing input matrix configuration object.");
        goto error;
    }

    const cJSON *j_fac_u0_adc0 = cJSON_GetObjectItemCaseSensitive(j_input_matrix, "fac_u0_adc0");
    const cJSON *j_fac_u0_adc1 = cJSON_GetObjectItemCaseSensitive(j_input_matrix, "fac_u0_adc1");
    const cJSON *j_fac_u0_noise = cJSON_GetObjectItemCaseSensitive(j_input_matrix, "fac_u0_noise");
    const cJSON *j_fac_u1_adc0 = cJSON_GetObjectItemCaseSensitive(j_input_matrix, "fac_u1_adc0");
    const cJSON *j_fac_u1_adc1 = cJSON_GetObjectItemCaseSensitive(j_input_matrix, "fac_u1_adc1");
    const cJSON *j_fac_u1_noise = cJSON_GetObjectItemCaseSensitive(j_input_matrix, "fac_u1_noise");
    const cJSON *j_fac_u2_adc0 = cJSON_GetObjectItemCaseSensitive(j_input_matrix, "fac_u2_adc0");
    const cJSON *j_fac_u2_adc1 = cJSON_GetObjectItemCaseSensitive(j_input_matrix, "fac_u2_adc1");
    const cJSON *j_fac_u2_noise = cJSON_GetObjectItemCaseSensitive(j_input_matrix, "fac_u2_noise");

    if ((!cJSON_IsNumber(j_fac_u0_adc0)) ||
        (!cJSON_IsNumber(j_fac_u0_adc1)) ||
        (!cJSON_IsNumber(j_fac_u0_noise)) ||
        (!cJSON_IsNumber(j_fac_u1_adc0)) ||
        (!cJSON_IsNumber(j_fac_u1_adc1)) ||
        (!cJSON_IsNumber(j_fac_u1_noise)) ||
        (!cJSON_IsNumber(j_fac_u2_adc0)) ||
        (!cJSON_IsNumber(j_fac_u2_adc1)) ||
        (!cJSON_IsNumber(j_fac_u2_noise)))
    {
        snprintf(g_ipdriver_err_str, IPDRVR_ERRSTR_LEN, "Invalid JSON: Input matrix configuration has a bad format.");
        goto error;
    }

    cfg_out->input_matrix.fac_u0_adc0 = j_fac_u0_adc0->valueint;
    cfg_out->input_matrix.fac_u0_adc1 = j_fac_u0_adc1->valueint;
    cfg_out->input_matrix.fac_u0_noise = j_fac_u0_noise->valueint;
    cfg_out->input_matrix.fac_u1_adc0 = j_fac_u1_adc0->valueint;
    cfg_out->input_matrix.fac_u1_adc1 = j_fac_u1_adc1->valueint;
    cfg_out->input_matrix.fac_u1_noise = j_fac_u1_noise->valueint;
    cfg_out->input_matrix.fac_u2_adc0 = j_fac_u2_adc0->valueint;
    cfg_out->input_matrix.fac_u2_adc1 = j_fac_u2_adc1->valueint;
    cfg_out->input_matrix.fac_u2_noise = j_fac_u2_noise->valueint;

    // Parse output matrix configuration.
    if (!j_output_matrix)
    {
        snprintf(g_ipdriver_err_str, IPDRVR_ERRSTR_LEN, "Invalid JSON: Missing output matrix configuration object.");
        goto error;
    }

    const cJSON *j_dac0_selx0 = cJSON_GetObjectItemCaseSensitive(j_output_matrix, "dac0_selx0");
    const cJSON *j_dac0_selx1 = cJSON_GetObjectItemCaseSensitive(j_output_matrix, "dac0_selx1");
    const cJSON *j_dac0_selx2 = cJSON_GetObjectItemCaseSensitive(j_output_matrix, "dac0_selx2");
    const cJSON *j_fac_dac0_xx0 = cJSON_GetObjectItemCaseSensitive(j_output_matrix, "fac_dac0_xx0");
    const cJSON *j_fac_dac0_xx1 = cJSON_GetObjectItemCaseSensitive(j_output_matrix, "fac_dac0_xx1");
    const cJSON *j_fac_dac0_xx2 = cJSON_GetObjectItemCaseSensitive(j_output_matrix, "fac_dac0_xx2");
    const cJSON *j_dac1_selx0 = cJSON_GetObjectItemCaseSensitive(j_output_matrix, "dac1_selx0");
    const cJSON *j_dac1_selx1 = cJSON_GetObjectItemCaseSensitive(j_output_matrix, "dac1_selx1");
    const cJSON *j_dac1_selx2 = cJSON_GetObjectItemCaseSensitive(j_output_matrix, "dac1_selx2");
    const cJSON *j_fac_dac1_xx0 = cJSON_GetObjectItemCaseSensitive(j_output_matrix, "fac_dac1_xx0");
    const cJSON *j_fac_dac1_xx1 = cJSON_GetObjectItemCaseSensitive(j_output_matrix, "fac_dac1_xx1");
    const cJSON *j_fac_dac1_xx2 = cJSON_GetObjectItemCaseSensitive(j_output_matrix, "fac_dac1_xx2");

    if ((!cJSON_IsNumber(j_dac0_selx0)) ||
        (!cJSON_IsNumber(j_dac0_selx1)) ||
        (!cJSON_IsNumber(j_dac0_selx2)) ||
        (!cJSON_IsNumber(j_fac_dac0_xx0)) ||
        (!cJSON_IsNumber(j_fac_dac0_xx1)) ||
        (!cJSON_IsNumber(j_fac_dac0_xx2)) ||
        (!cJSON_IsNumber(j_dac1_selx0)) ||
        (!cJSON_IsNumber(j_dac1_selx1)) ||
        (!cJSON_IsNumber(j_dac1_selx2)) ||
        (!cJSON_IsNumber(j_fac_dac1_xx0)) ||
        (!cJSON_IsNumber(j_fac_dac1_xx1)) ||
        (!cJSON_IsNumber(j_fac_dac1_xx2)))
    {
        snprintf(g_ipdriver_err_str, IPDRVR_ERRSTR_LEN, "Invalid JSON: Output matrix configuration has a bad format.");
        goto error;
    }

    cfg_out->output_matrix.dac0_selx0 = (enum ipdriver_outmat_srcsel) j_dac0_selx0->valueint;
    cfg_out->output_matrix.dac0_selx1 = (enum ipdriver_outmat_srcsel) j_dac0_selx1->valueint;
    cfg_out->output_matrix.dac0_selx2 = (enum ipdriver_outmat_srcsel) j_dac0_selx2->valueint;
    cfg_out->output_matrix.fac_dac0_xx0 = j_fac_dac0_xx0->valueint;
    cfg_out->output_matrix.fac_dac0_xx1 = j_fac_dac0_xx1->valueint;
    cfg_out->output_matrix.fac_dac0_xx2 = j_fac_dac0_xx2->valueint;
    cfg_out->output_matrix.dac1_selx0 = (enum ipdriver_outmat_srcsel) j_dac1_selx0->valueint;
    cfg_out->output_matrix.dac1_selx1 = (enum ipdriver_outmat_srcsel) j_dac1_selx1->valueint;
    cfg_out->output_matrix.dac1_selx2 = (enum ipdriver_outmat_srcsel) j_dac1_selx2->valueint;
    cfg_out->output_matrix.fac_dac1_xx0 = j_fac_dac1_xx0->valueint;
    cfg_out->output_matrix.fac_dac1_xx1 = j_fac_dac1_xx1->valueint;
    cfg_out->output_matrix.fac_dac1_xx2 = j_fac_dac1_xx2->valueint;

    const char *OMAT_NLF_NAME_TBL[6] = {
        "nlf_dac0_xx0", "nlf_dac0_xx1", "nlf_dac0_xx2", "nlf_dac1_xx0", "nlf_dac1_xx1", "nlf_dac1_xx2"
    };
    struct ipdriver_nlf *OMAT_NLF_PTRS[6] = {
        &cfg_out->output_matrix.nlf_dac0_xx0,
        &cfg_out->output_matrix.nlf_dac0_xx1,
        &cfg_out->output_matrix.nlf_dac0_xx2,
        &cfg_out->output_matrix.nlf_dac1_xx0,
        &cfg_out->output_matrix.nlf_dac1_xx1,
        &cfg_out->output_matrix.nlf_dac1_xx2
    };

    for (int i = 0; i < 6; ++i)
    {
        const cJSON *j_omat_nlf = cJSON_GetObjectItemCaseSensitive(j_output_matrix, OMAT_NLF_NAME_TBL[i]);

        if (!j_omat_nlf || !cJSON_IsObject(j_omat_nlf))
        {
            snprintf(g_ipdriver_err_str, IPDRVR_ERRSTR_LEN, "Invalid JSON: Output matrix config has invalid setting for nlf config %s.", OMAT_NLF_NAME_TBL[i]);
            goto error;
        }

        const cJSON *j_nlf_enabled = cJSON_GetObjectItemCaseSensitive(j_omat_nlf, "enabled");
        const cJSON *j_nlf_presc = cJSON_GetObjectItemCaseSensitive(j_omat_nlf, "presc");
        const cJSON *j_nlf_gain = cJSON_GetObjectItemCaseSensitive(j_omat_nlf, "gain");
        const cJSON *j_nlf_lut = cJSON_GetObjectItemCaseSensitive(j_omat_nlf, "lut");

        if (!cJSON_IsNumber(j_nlf_enabled) || !cJSON_IsNumber(j_nlf_presc)
            || !cJSON_IsNumber(j_nlf_gain) || !cJSON_IsArray(j_nlf_lut) || cJSON_GetArraySize(j_nlf_lut) != IPCORE_NLF_LUT_SIZE)
        {
            snprintf(g_ipdriver_err_str, IPDRVR_ERRSTR_LEN, "Invalid JSON: Invalid format for output matrix nlf config of %s.", OMAT_NLF_NAME_TBL[i]);
            goto error;
        }

        OMAT_NLF_PTRS[i]->enabled = j_nlf_enabled->valueint;
        OMAT_NLF_PTRS[i]->presc = j_nlf_presc->valueint;
        OMAT_NLF_PTRS[i]->gain = j_nlf_gain->valueint;

        for (size_t j = 0; j < IPCORE_NLF_LUT_SIZE; ++j)
        {
            OMAT_NLF_PTRS[i]->lut[j] = cJSON_GetArrayItem(j_nlf_lut, j)->valueint;
        }
    }

    goto exit;
error:
    func_rc = 1;
exit:
    return func_rc;
}

int ipdriver_init()
{
    if (g_mem_fd > 0) return 1;

    g_mem_fd = open(FILE_MEM, O_RDWR | O_SYNC);
    if (g_mem_fd <= 0)
    {
        return 1;
    }

    g_ipcore_mapped = mmap(NULL, IPCORE_ADDR_SPACE_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, g_mem_fd, IPCORE_BASE_ADDR);
    if (!g_ipcore_mapped)
    {
        close (g_mem_fd);
        return 1;
    }

    // Init the struct pointers with the correct offsets of the individual
    // configuration blocks.

    g_ipcore_led = (struct ipcore_cfg_led *volatile) ((uint8_t *) g_ipcore_mapped + IPCORE_ADDR_OFFSET_LED);
    g_ipcore_sys = (struct ipcore_cfg_system *volatile) ((uint8_t *) g_ipcore_mapped + IPCORE_ADDR_OFFSET_CFG_SYSTEM);
    g_ipcore_input_mat = (struct ipcore_cfg_input_mat *volatile) ((uint8_t *) g_ipcore_mapped + IPCORE_ADDR_OFFSET_CFG_INPMAT);
    g_ipcore_output_mat = (struct ipcore_cfg_output_mat *volatile) ((uint8_t *) g_ipcore_mapped + IPCORE_ADDR_OFFSET_CFG_OUTMAT);
    g_ipcore_input_nlf = (struct ipcore_cfg_input_nlf *volatile) ((uint8_t *) g_ipcore_mapped + IPCORE_ADDR_OFFSET_CFG_INPUTNLF);
    g_ipcore_slices[0] = (struct ipcore_cfg_slice *volatile) ((uint8_t *) g_ipcore_mapped + IPCORE_ADDR_OFFSET_CFG_SLICE0);
    g_ipcore_slices[1] = (struct ipcore_cfg_slice *volatile) ((uint8_t *) g_ipcore_mapped + IPCORE_ADDR_OFFSET_CFG_SLICE1);
    g_ipcore_slices[2] = (struct ipcore_cfg_slice *volatile) ((uint8_t *) g_ipcore_mapped + IPCORE_ADDR_OFFSET_CFG_SLICE2);
    g_ipcore_calib = (struct ipcore_cfg_calib *volatile) ((uint8_t *) g_ipcore_mapped + IPCORE_ADDR_OFFSET_CFG_CALIB);
    g_ipcore_nlf_switch = (struct ipcore_cfg_nlf_switch *volatile) ((uint8_t *) g_ipcore_mapped + IPCORE_ADDR_OFFSET_CFG_NLFSW);

    printf(
        "IP-core driver initialized, mapped adress space: 0x%08x - 0x%08x -> 0x%08x - 0x%08x\n",
        IPCORE_BASE_ADDR, IPCORE_BASE_ADDR + IPCORE_ADDR_SPACE_SIZE,
        (uint32_t) g_ipcore_mapped, (uint32_t) g_ipcore_mapped + IPCORE_ADDR_SPACE_SIZE
    );

    // Reset calib values to defaults.
    ipdriver_reset_adc_calib();
    ipdriver_reset_dac_calib();

    return 0;
}

void ipdriver_deinit()
{
    if (g_ipcore_mapped)
    {
        // Stop sim if running.
        (void) ipdriver_sim_stop();

        (void) munmap((void *) g_ipcore_mapped, IPCORE_ADDR_SPACE_SIZE);
        g_ipcore_led = NULL;
        g_ipcore_sys = NULL;
        g_ipcore_input_mat = NULL;
        g_ipcore_output_mat = NULL;
        g_ipcore_input_nlf = NULL;
        g_ipcore_slices[0] = NULL;
        g_ipcore_slices[1] = NULL;
        g_ipcore_slices[2] = NULL;
        g_ipcore_calib = NULL;
    }

    if (g_mem_fd > 0)
    {
        close(g_mem_fd);
        g_mem_fd = -1;
    }
}

char *ipdriver_err_str()
{
    return g_ipdriver_err_str;
}

static void _ipdriver_setup_nlf_lut(unsigned int lut_id, const fixpt_nlf_t *lut)
{
    printf("[LUT] Writing to NLF LUT with id 0x%02x.\n", lut_id);

    g_ipcore_sys->cfg_nlf_start = 0;
    g_ipcore_sys->cfg_nlf_we = 0;
    g_ipcore_sys->cfg_nlf_select = 0xff;

    // Write LUT data to temp buffer in the IP core.
    for (size_t i = 0; i < IPCORE_NLF_LUT_SIZE; i++)
    {
        g_ipcore_sys->cfg_nlf_addr = i;
        g_ipcore_sys->cfg_nlf_data = lut[i];
        g_ipcore_sys->cfg_nlf_we = 1;
        usleep(1);
        g_ipcore_sys->cfg_nlf_we = 0;
        usleep(1);
    }

    // Select the specific LUT we want to write to.
    g_ipcore_sys->cfg_nlf_select = lut_id;
    // Start the writing process from the temp. LUT -> slice LUT.
    usleep(10);
    g_ipcore_sys->cfg_nlf_start = 1;
    usleep(10);
    g_ipcore_sys->cfg_nlf_start = 0;

    struct timespec ts_start, ts_cur;
    clock_gettime(CLOCK_MONOTONIC, &ts_start);
    const uint64_t ts_start_ms = ((ts_start.tv_nsec / 1000000) + ts_start.tv_sec);

    // Wait for the IP core to assert the nlf-done flag.
    while (g_ipcore_sys->cfg_nlf_done == 0)
    {
        clock_gettime(CLOCK_MONOTONIC, &ts_cur);
        const uint64_t diff_time = ((ts_cur.tv_nsec / 1000000) + ts_cur.tv_sec) - ts_start_ms;
        if (diff_time > 1000)
        {
            fprintf(stderr, "Timeout occurred during wait for cfg_nlf_done.\n");
            return;
        }
        usleep(1000);
    }

    // Reset selection.
    g_ipcore_sys->cfg_nlf_select = 0xff;
}

int ipdriver_sim_config_update(const struct ipdriver_sim_config *cfg)
{
    if (!g_ipcore_mapped) return 1;

    g_ipcore_led->led_output |= IPCORE_LED_CONFIG_IN_PROGRESS;

    g_ipcore_sys->noise0_presc = cfg->noise0_presc;
    g_ipcore_sys->noise1_presc = cfg->noise1_presc;
    g_ipcore_sys->noise2_presc = cfg->noise2_presc;

    // Output matrix
    for (size_t i = 0; i < IPDRVR_NUM_SLICES; i++)
    {
        const struct ipdriver_slice_config *sc = &cfg->slices[i];

        g_ipcore_slices[i]->x_enable_nlf = sc->x_enable_nlf;
        g_ipcore_slices[i]->x_gain = sc->x_gain;
        g_ipcore_slices[i]->x_nlf_presc = sc->x_nlf_presc;
        g_ipcore_slices[i]->x_nlf_gain = sc->x_nlf_gain;
        g_ipcore_slices[i]->xd_enable_nlf = sc->xd_enable_nlf;
        g_ipcore_slices[i]->xd_gain = sc->xd_gain;
        g_ipcore_slices[i]->xd_nlf_presc = sc->xd_nlf_presc;
        g_ipcore_slices[i]->xd_nlf_gain = sc->xd_nlf_gain;
        g_ipcore_slices[i]->u_enable_nlf = sc->u_enable_nlf;
        g_ipcore_slices[i]->u_gain = sc->u_gain;
        g_ipcore_slices[i]->u_nlf_presc = sc->u_nlf_presc;
        g_ipcore_slices[i]->u_nlf_gain = sc->u_nlf_gain;
        g_ipcore_slices[i]->xd_presc_shift = sc->xd_presc_shift;
        g_ipcore_slices[i]->xd_presc_mul = sc->xd_presc_mul;
        g_ipcore_slices[i]->x_presc_shift = sc->x_presc_shift;
        g_ipcore_slices[i]->x_presc_mul = sc->x_presc_mul;

        // Base address of the NLFs associated with this slice.
        const uint8_t nlf_base_addr = 0x10 * i;

        // NLF u0 & u1
        _ipdriver_setup_nlf_lut(nlf_base_addr + 0, sc->u_nlf_lut_0);
        _ipdriver_setup_nlf_lut(nlf_base_addr + 1, sc->u_nlf_lut_1);
        // NLF x0 & x1
        _ipdriver_setup_nlf_lut(nlf_base_addr + 2, sc->x_nlf_lut_0);
        _ipdriver_setup_nlf_lut(nlf_base_addr + 3, sc->x_nlf_lut_1);
        // NLF xd0 & xd1
        _ipdriver_setup_nlf_lut(nlf_base_addr + 4, sc->xd_nlf_lut_0);
        _ipdriver_setup_nlf_lut(nlf_base_addr + 5, sc->xd_nlf_lut_1);
    }

    // Input/output NLF
    g_ipcore_input_nlf->adc0_nlf_enabled = cfg->input_nlf.adc0_nlf_enabled;
    g_ipcore_input_nlf->adc0_nlf_presc = cfg->input_nlf.adc0_nlf_presc;
    g_ipcore_input_nlf->adc0_nlf_gain = cfg->input_nlf.adc0_nlf_gain;
    g_ipcore_input_nlf->adc1_nlf_enabled = cfg->input_nlf.adc1_nlf_enabled;
    g_ipcore_input_nlf->adc1_nlf_presc = cfg->input_nlf.adc1_nlf_presc;
    g_ipcore_input_nlf->adc1_nlf_gain = cfg->input_nlf.adc1_nlf_gain;

    _ipdriver_setup_nlf_lut(IPCORE_NLF_LUTID_ADC0, cfg->input_nlf.adc0_nlf_lut);
    _ipdriver_setup_nlf_lut(IPCORE_NLF_LUTID_ADC1, cfg->input_nlf.adc1_nlf_lut);

    // Input matrix
    g_ipcore_input_mat->fac_u0_adc0 = cfg->input_matrix.fac_u0_adc0;
    g_ipcore_input_mat->fac_u0_adc1 = cfg->input_matrix.fac_u0_adc1;
    g_ipcore_input_mat->fac_u0_noise = cfg->input_matrix.fac_u0_noise;
    g_ipcore_input_mat->fac_u1_adc0 = cfg->input_matrix.fac_u1_adc0;
    g_ipcore_input_mat->fac_u1_adc1 = cfg->input_matrix.fac_u1_adc1;
    g_ipcore_input_mat->fac_u1_noise = cfg->input_matrix.fac_u1_noise;
    g_ipcore_input_mat->fac_u2_adc0 = cfg->input_matrix.fac_u2_adc0;
    g_ipcore_input_mat->fac_u2_adc1 = cfg->input_matrix.fac_u2_adc1;
    g_ipcore_input_mat->fac_u2_noise = cfg->input_matrix.fac_u2_noise;

    // Output matrix
    g_ipcore_output_mat->dac0_selx0 = cfg->output_matrix.dac0_selx0;
    g_ipcore_output_mat->dac0_selx1 = cfg->output_matrix.dac0_selx1;
    g_ipcore_output_mat->dac0_selx2 = cfg->output_matrix.dac0_selx2;
    g_ipcore_output_mat->fac_dac0_xx0 = cfg->output_matrix.fac_dac0_xx0;
    g_ipcore_output_mat->fac_dac0_xx1 = cfg->output_matrix.fac_dac0_xx1;
    g_ipcore_output_mat->fac_dac0_xx2 = cfg->output_matrix.fac_dac0_xx2;
    g_ipcore_output_mat->dac1_selx0 = cfg->output_matrix.dac1_selx0;
    g_ipcore_output_mat->dac1_selx1 = cfg->output_matrix.dac1_selx1;
    g_ipcore_output_mat->dac1_selx2 = cfg->output_matrix.dac1_selx2;
    g_ipcore_output_mat->fac_dac1_xx0 = cfg->output_matrix.fac_dac1_xx0;
    g_ipcore_output_mat->fac_dac1_xx1 = cfg->output_matrix.fac_dac1_xx1;
    g_ipcore_output_mat->fac_dac1_xx2 = cfg->output_matrix.fac_dac1_xx2;

    g_ipcore_output_mat->nlf_dac0_xx0_enabled = cfg->output_matrix.nlf_dac0_xx0.enabled;
    g_ipcore_output_mat->nlf_dac0_xx0_presc = cfg->output_matrix.nlf_dac0_xx0.presc;
    g_ipcore_output_mat->nlf_dac0_xx0_gain = cfg->output_matrix.nlf_dac0_xx0.gain;
    g_ipcore_output_mat->nlf_dac0_xx1_enabled = cfg->output_matrix.nlf_dac0_xx1.enabled;
    g_ipcore_output_mat->nlf_dac0_xx1_presc = cfg->output_matrix.nlf_dac0_xx1.presc;
    g_ipcore_output_mat->nlf_dac0_xx1_gain = cfg->output_matrix.nlf_dac0_xx1.gain;
    g_ipcore_output_mat->nlf_dac0_xx2_enabled = cfg->output_matrix.nlf_dac0_xx2.enabled;
    g_ipcore_output_mat->nlf_dac0_xx2_presc = cfg->output_matrix.nlf_dac0_xx2.presc;
    g_ipcore_output_mat->nlf_dac0_xx2_gain = cfg->output_matrix.nlf_dac0_xx2.gain;

    g_ipcore_output_mat->nlf_dac1_xx0_enabled = cfg->output_matrix.nlf_dac1_xx0.enabled;
    g_ipcore_output_mat->nlf_dac1_xx0_presc = cfg->output_matrix.nlf_dac1_xx0.presc;
    g_ipcore_output_mat->nlf_dac1_xx0_gain = cfg->output_matrix.nlf_dac1_xx0.gain;
    g_ipcore_output_mat->nlf_dac1_xx1_enabled = cfg->output_matrix.nlf_dac1_xx1.enabled;
    g_ipcore_output_mat->nlf_dac1_xx1_presc = cfg->output_matrix.nlf_dac1_xx1.presc;
    g_ipcore_output_mat->nlf_dac1_xx1_gain = cfg->output_matrix.nlf_dac1_xx1.gain;
    g_ipcore_output_mat->nlf_dac1_xx2_enabled = cfg->output_matrix.nlf_dac1_xx2.enabled;
    g_ipcore_output_mat->nlf_dac1_xx2_presc = cfg->output_matrix.nlf_dac1_xx2.presc;
    g_ipcore_output_mat->nlf_dac1_xx2_gain = cfg->output_matrix.nlf_dac1_xx2.gain;

    _ipdriver_setup_nlf_lut(IPCORE_NLF_LUTID_DAC0_XX0, cfg->output_matrix.nlf_dac0_xx0.lut);
    _ipdriver_setup_nlf_lut(IPCORE_NLF_LUTID_DAC0_XX1, cfg->output_matrix.nlf_dac0_xx1.lut);
    _ipdriver_setup_nlf_lut(IPCORE_NLF_LUTID_DAC0_XX2, cfg->output_matrix.nlf_dac0_xx2.lut);
    _ipdriver_setup_nlf_lut(IPCORE_NLF_LUTID_DAC1_XX0, cfg->output_matrix.nlf_dac1_xx0.lut);
    _ipdriver_setup_nlf_lut(IPCORE_NLF_LUTID_DAC1_XX1, cfg->output_matrix.nlf_dac1_xx1.lut);
    _ipdriver_setup_nlf_lut(IPCORE_NLF_LUTID_DAC1_XX2, cfg->output_matrix.nlf_dac1_xx2.lut);

    g_ipcore_led->led_output &= ~IPCORE_LED_CONFIG_IN_PROGRESS;

    return 0;
}

int ipdriver_sim_start()
{
    if (!g_ipcore_mapped) return 1;
    g_ipcore_sys->system_run = 1;
    g_ipcore_led->led_output |= IPCORE_LED_SIM_RUNNING;
    return 0;
}

int ipdriver_sim_stop()
{
    if (!g_ipcore_mapped) return 1;
    g_ipcore_sys->system_run = 0;
    g_ipcore_led->led_output &= ~IPCORE_LED_SIM_RUNNING;
    return 0;
}

int ipdriver_sim_running()
{
    if (!g_ipcore_mapped) return 0;
    return g_ipcore_sys->system_run != 0;
}

int ipdriver_do_reset()
{
    if (!g_ipcore_mapped) return 1;

    g_ipcore_sys->system_run = 0;
    g_ipcore_led->led_output = 0;

    g_ipcore_sys->system_reset = 1;
    usleep(100);
    g_ipcore_sys->system_reset = 0;
    return 0;
}

/* === ADC CALIBRATION ROUTINES ============================================= */

int ipdriver_reset_adc_calib()
{
    if (!g_ipcore_mapped) return 1;

    g_ipcore_calib->adc0_calib_offset = dbl2fix(0.0, IPCORE_DTYPE_SLICE);
    g_ipcore_calib->adc0_calib_factor = dbl2fix(1.0, IPCORE_DTYPE_CONST);
    g_ipcore_calib->adc1_calib_offset = dbl2fix(0.0, IPCORE_DTYPE_SLICE);
    g_ipcore_calib->adc1_calib_factor = dbl2fix(1.0, IPCORE_DTYPE_CONST);

    return 0;
}

int ipdriver_set_adc_calib(const double *adc0_offset, const double *adc0_factor, const double *adc1_offset, const double *adc1_factor)
{
    if (!g_ipcore_mapped) return 1;

    if (adc0_offset) g_ipcore_calib->adc0_calib_offset = dbl2fix(*adc0_offset, IPCORE_DTYPE_SLICE);
    if (adc0_factor) g_ipcore_calib->adc0_calib_factor = dbl2fix(*adc0_factor, IPCORE_DTYPE_CONST);
    if (adc1_offset) g_ipcore_calib->adc1_calib_offset = dbl2fix(*adc1_offset, IPCORE_DTYPE_SLICE);
    if (adc1_factor) g_ipcore_calib->adc1_calib_factor = dbl2fix(*adc1_factor, IPCORE_DTYPE_CONST);

    return 0;
}

int ipdriver_get_adc_calib(double *adc0_offset, double *adc0_factor, double *adc1_offset, double *adc1_factor)
{
    if (!g_ipcore_mapped) return 1;

    *adc0_offset = fix2dbl(g_ipcore_calib->adc0_calib_offset, IPCORE_DTYPE_SLICE);
    *adc0_factor = fix2dbl(g_ipcore_calib->adc0_calib_factor, IPCORE_DTYPE_CONST);
    *adc1_offset = fix2dbl(g_ipcore_calib->adc1_calib_offset, IPCORE_DTYPE_SLICE);
    *adc1_factor = fix2dbl(g_ipcore_calib->adc1_calib_factor, IPCORE_DTYPE_CONST);

    return 0;
}

int ipdriver_do_adc_zero_calib()
{
    if (!g_ipcore_mapped) return 1;
    
    double adc0_accum = 0.0;
    double adc1_accum = 0.0;

    // Save calibration factor values.
    uint32_t adc0_factor = g_ipcore_calib->adc0_calib_factor;
    uint32_t adc1_factor = g_ipcore_calib->adc1_calib_factor;

    // First, set the calibration value to 0.
    ipdriver_reset_adc_calib();

    // Let things settle.
    //usleep(1000);

    for (int i = 0; i < IPDRVR_ADCCALIB_NUMSAMPLES; ++i)
    {
        const double adc0_val = fix2dbl(g_ipcore_calib->adc0_value, IPCORE_DTYPE_SLICE);
        const double adc1_val = fix2dbl(g_ipcore_calib->adc1_value, IPCORE_DTYPE_SLICE);

        adc0_accum = adc0_accum + adc0_val;
        adc1_accum = adc1_accum + adc1_val;
        usleep(100);
    }

    double adc0_offset = -(adc0_accum / (double)IPDRVR_ADCCALIB_NUMSAMPLES);
    double adc1_offset = -(adc1_accum / (double)IPDRVR_ADCCALIB_NUMSAMPLES);

    // Set the calibration values of the ADC, using the saved values for the
    // factor constants.
    ipdriver_set_adc_calib(&adc0_offset, NULL, &adc1_offset, NULL);
    g_ipcore_calib->adc0_calib_factor = adc0_factor;
    g_ipcore_calib->adc1_calib_factor = adc1_factor;

    printf("[!] Calibration finished. adc0_offset=%.4lf adc1_offset=%.4lf\n", adc0_offset, adc1_offset);

    return 0;
}

int ipdriver_read_adc(double *adc0, double *adc1)
{
    if (!g_ipcore_mapped) return 1;

    *adc0 = fix2dbl(g_ipcore_calib->adc0_value, IPCORE_DTYPE_SLICE);
    *adc1 = fix2dbl(g_ipcore_calib->adc1_value, IPCORE_DTYPE_SLICE);

    return 0;
}

/* === DAC CALIBRATION ROUTINES ============================================= */

int ipdriver_reset_dac_calib()
{
    if (!g_ipcore_mapped) return 1;

    g_ipcore_calib->dac0_calib_offset = dbl2fix(0.0, IPCORE_DTYPE_SLICE);
    g_ipcore_calib->dac0_calib_factor = dbl2fix(1.0, IPCORE_DTYPE_CONST);
    g_ipcore_calib->dac1_calib_offset = dbl2fix(0.0, IPCORE_DTYPE_SLICE);
    g_ipcore_calib->dac1_calib_factor = dbl2fix(1.0, IPCORE_DTYPE_CONST);

    return 0;
}

int ipdriver_set_dac_calib(const double *dac0_offset, const double *dac0_factor, const double *dac1_offset, const double *dac1_factor)
{
    if (!g_ipcore_mapped) return 1;

    if (dac0_offset) g_ipcore_calib->dac0_calib_offset = dbl2fix(*dac0_offset, IPCORE_DTYPE_SLICE);
    if (dac0_factor) g_ipcore_calib->dac0_calib_factor = dbl2fix(*dac0_factor, IPCORE_DTYPE_CONST);
    if (dac1_offset) g_ipcore_calib->dac1_calib_offset = dbl2fix(*dac1_offset, IPCORE_DTYPE_SLICE);
    if (dac1_factor) g_ipcore_calib->dac1_calib_factor = dbl2fix(*dac1_factor, IPCORE_DTYPE_CONST);

    return 0;
}

int ipdriver_get_dac_calib(double *dac0_offset, double *dac0_factor, double *dac1_offset, double *dac1_factor)
{
    if (!g_ipcore_mapped) return 1;

    *dac0_offset = fix2dbl(g_ipcore_calib->dac0_calib_offset, IPCORE_DTYPE_SLICE);
    *dac0_factor = fix2dbl(g_ipcore_calib->dac0_calib_factor, IPCORE_DTYPE_CONST);
    *dac1_offset = fix2dbl(g_ipcore_calib->dac1_calib_offset, IPCORE_DTYPE_SLICE);
    *dac1_factor = fix2dbl(g_ipcore_calib->dac1_calib_factor, IPCORE_DTYPE_CONST);

    return 0;
}

/* === LED SETTING ========================================================== */

int ipdriver_set_led(uint8_t led_value)
{
    if (!g_ipcore_mapped) return 1;

    g_ipcore_led->led_output = led_value;
    return 0;
}

/* === NLF SWITCH SETUP ===================================================== */

int ipdriver_set_nlfsw_iomask(uint32_t io_mask)
{
    if (!g_ipcore_mapped) return 1;

    g_ipcore_nlf_switch->io_mask = io_mask;
    
    return 0;
}

int ipdriver_get_nlfsw_iomask(uint32_t *io_mask_out)
{
    if (!g_ipcore_mapped) return 1;

    *io_mask_out = g_ipcore_nlf_switch->io_mask;

    return 0;
}

int ipdriver_set_nlfsw_software_sel(uint32_t sel_mask)
{
    if (!g_ipcore_mapped) return 1;

    g_ipcore_nlf_switch->software_switch = sel_mask;
    
    return 0;
}

int ipdriver_get_nlfsw_software_sel(uint32_t *sel_mask_out)
{
    if (!g_ipcore_mapped) return 1;

    *sel_mask_out = g_ipcore_nlf_switch->software_switch;

    return 0;
}

int ipdriver_get_nlfsw_current_sel(uint32_t *current_sel_out)
{
    if (!g_ipcore_mapped) return 1;

    *current_sel_out = g_ipcore_nlf_switch->nlf_switch;

    return 0;
}
