/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * runSimulation.h
 *
 * Code generation for function 'runSimulation'
 *
 */

#pragma once

/* Include files */
#include "rtwtypes.h"
#include "runSimulation_types.h"
#include "emlrt.h"
#include "mex.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* Function Declarations */
void runSimulation(
    const emlrtStack *sp, const emxArray_real_T *idxsDACs,
    const emxArray_real_T *idxsADCs, const emxArray_real_T *idxsStates,
    const emxArray_real_T *P_W_mat, const emxArray_real_T *P_V_mat,
    const emxArray_real_T *B_mat, const emxArray_real_T *ssys_d_A,
    const emxArray_real_T *ssys_d_B, const emxArray_real_T *ssys_d_C,
    const emxArray_real_T *kest_d_A, const emxArray_real_T *kest_d_B,
    const emxArray_real_T *L_d_mat, const emxArray_real_T *K_LQR,
    real_T numOfFrames, real_T TsDMA, real_T TsSim, const real_T Xest_0[7],
    const real_T Xtrue_0[7], boolean_T FbEnable, emxArray_real_T *ADC_mat,
    emxArray_real_T *DAC_mat, emxArray_real_T *Xest_mat,
    emxArray_real_T *t_vec_dma);

/* End of code generation (runSimulation.h) */
