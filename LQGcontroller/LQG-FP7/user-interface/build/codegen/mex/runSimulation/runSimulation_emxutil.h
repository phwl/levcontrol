/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * runSimulation_emxutil.h
 *
 * Code generation for function 'runSimulation_emxutil'
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
void emxEnsureCapacity_int32_T(const emlrtStack *sp, emxArray_int32_T *emxArray,
                               int32_T oldNumel,
                               const emlrtRTEInfo *srcLocation);

void emxEnsureCapacity_real_T(const emlrtStack *sp, emxArray_real_T *emxArray,
                              int32_T oldNumel,
                              const emlrtRTEInfo *srcLocation);

void emxEnsureCapacity_uint32_T(const emlrtStack *sp,
                                emxArray_uint32_T *emxArray, int32_T oldNumel,
                                const emlrtRTEInfo *srcLocation);

void emxFree_int32_T(const emlrtStack *sp, emxArray_int32_T **pEmxArray);

void emxFree_real_T(const emlrtStack *sp, emxArray_real_T **pEmxArray);

void emxFree_uint32_T(const emlrtStack *sp, emxArray_uint32_T **pEmxArray);

void emxInit_int32_T(const emlrtStack *sp, emxArray_int32_T **pEmxArray,
                     const emlrtRTEInfo *srcLocation);

void emxInit_real_T(const emlrtStack *sp, emxArray_real_T **pEmxArray,
                    int32_T numDimensions, const emlrtRTEInfo *srcLocation);

void emxInit_uint32_T(const emlrtStack *sp, emxArray_uint32_T **pEmxArray,
                      const emlrtRTEInfo *srcLocation);

/* End of code generation (runSimulation_emxutil.h) */
