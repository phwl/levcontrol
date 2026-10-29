/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * randn.c
 *
 * Code generation for function 'randn'
 *
 */

/* Include files */
#include "randn.h"
#include "rt_nonfinite.h"
#include "runSimulation_emxutil.h"
#include "runSimulation_types.h"
#include "mwmathutil.h"

/* Variable Definitions */
static emlrtRSInfo
    s_emlrtRSI =
        {
            114,     /* lineNo */
            "randn", /* fcnName */
            "D:"
            "\\Utilities\\MatlabR2024a\\toolbox\\eml\\lib\\matlab\\randfun\\ran"
            "dn.m" /* pathName */
};

static emlrtRSInfo
    t_emlrtRSI =
        {
            139,                 /* lineNo */
            "extrinsicRandnGen", /* fcnName */
            "D:"
            "\\Utilities\\MatlabR2024a\\toolbox\\eml\\lib\\matlab\\randfun\\ran"
            "dn.m" /* pathName */
};

static emlrtRSInfo u_emlrtRSI = {
    20,                /* lineNo */
    "zerosWithChecks", /* fcnName */
    "D:\\Utilities\\MatlabR2024a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\zerosWithChecks.m" /* pathName */
};

static emlrtRTEInfo d_emlrtRTEI = {
    13,              /* lineNo */
    27,              /* colNo */
    "mustBeInteger", /* fName */
    "D:"
    "\\Utilities\\MatlabR2024a\\toolbox\\eml\\lib\\matlab\\validators\\mustBeIn"
    "teger.m" /* pName */
};

static emlrtRTEInfo
    rb_emlrtRTEI =
        {
            139,     /* lineNo */
            20,      /* colNo */
            "randn", /* fName */
            "D:"
            "\\Utilities\\MatlabR2024a\\toolbox\\eml\\lib\\matlab\\randfun\\ran"
            "dn.m" /* pName */
};

/* Function Definitions */
void randn(const emlrtStack *sp, real_T varargin_1, real_T varargin_2,
           emxArray_real_T *r)
{
  emlrtStack b_st;
  emlrtStack c_st;
  emlrtStack st;
  real_T *r_data;
  int32_T i;
  st.prev = sp;
  st.tls = sp->tls;
  st.site = &s_emlrtRSI;
  b_st.prev = &st;
  b_st.tls = st.tls;
  c_st.prev = &b_st;
  c_st.tls = b_st.tls;
  b_st.site = &t_emlrtRSI;
  c_st.site = &u_emlrtRSI;
  if (muDoubleScalarIsInf(varargin_1) || muDoubleScalarIsNaN(varargin_1) ||
      (!(varargin_1 == muDoubleScalarFloor(varargin_1)))) {
    emlrtErrorWithMessageIdR2018a(&c_st, &d_emlrtRTEI,
                                  "MATLAB:validators:mustBeInteger",
                                  "MATLAB:validators:mustBeInteger", 0);
  }
  c_st.site = &u_emlrtRSI;
  if (muDoubleScalarIsInf(varargin_2) || muDoubleScalarIsNaN(varargin_2) ||
      (!(varargin_2 == muDoubleScalarFloor(varargin_2)))) {
    emlrtErrorWithMessageIdR2018a(&c_st, &d_emlrtRTEI,
                                  "MATLAB:validators:mustBeInteger",
                                  "MATLAB:validators:mustBeInteger", 0);
  }
  i = r->size[0] * r->size[1];
  r->size[0] = (int32_T)varargin_1;
  r->size[1] = (int32_T)varargin_2;
  emxEnsureCapacity_real_T(&b_st, r, i, &rb_emlrtRTEI);
  r_data = r->data;
  if (((int32_T)varargin_1 != 0) && ((int32_T)varargin_2 != 0)) {
    emlrtRandn(&r_data[0], (int32_T)varargin_1 * (int32_T)varargin_2);
  }
}

/* End of code generation (randn.c) */
