/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * chol.c
 *
 * Code generation for function 'chol'
 *
 */

/* Include files */
#include "chol.h"
#include "eml_int_forloop_overflow_check.h"
#include "rt_nonfinite.h"
#include "runSimulation_data.h"
#include "runSimulation_types.h"
#include "lapacke.h"
#include "mwmathutil.h"
#include <stddef.h>

/* Variable Definitions */
static emlrtRSInfo n_emlrtRSI =
    {
        84,     /* lineNo */
        "chol", /* fcnName */
        "D:\\Utilities\\MatlabR2024a\\toolbox\\eml\\eml\\+coder\\+"
        "internal\\chol.m" /* pathName */
};

static emlrtRSInfo o_emlrtRSI =
    {
        100,    /* lineNo */
        "chol", /* fcnName */
        "D:\\Utilities\\MatlabR2024a\\toolbox\\eml\\eml\\+coder\\+"
        "internal\\chol.m" /* pathName */
};

static emlrtRSInfo p_emlrtRSI =
    {
        101,    /* lineNo */
        "chol", /* fcnName */
        "D:\\Utilities\\MatlabR2024a\\toolbox\\eml\\eml\\+coder\\+"
        "internal\\chol.m" /* pathName */
};

static emlrtRSInfo q_emlrtRSI = {
    79,             /* lineNo */
    "ceval_xpotrf", /* fcnName */
    "D:\\Utilities\\MatlabR2024a\\toolbox\\eml\\eml\\+coder\\+internal\\+"
    "lapack\\xpotrf.m" /* pathName */
};

static emlrtRSInfo r_emlrtRSI = {
    13,       /* lineNo */
    "xpotrf", /* fcnName */
    "D:\\Utilities\\MatlabR2024a\\toolbox\\eml\\eml\\+coder\\+internal\\+"
    "lapack\\xpotrf.m" /* pathName */
};

static emlrtRTEInfo f_emlrtRTEI = {
    48,          /* lineNo */
    13,          /* colNo */
    "infocheck", /* fName */
    "D:\\Utilities\\MatlabR2024a\\toolbox\\eml\\eml\\+coder\\+internal\\+"
    "lapack\\infocheck.m" /* pName */
};

static emlrtRTEInfo g_emlrtRTEI = {
    45,          /* lineNo */
    13,          /* colNo */
    "infocheck", /* fName */
    "D:\\Utilities\\MatlabR2024a\\toolbox\\eml\\eml\\+coder\\+internal\\+"
    "lapack\\infocheck.m" /* pName */
};

static emlrtRTEInfo h_emlrtRTEI =
    {
        109,    /* lineNo */
        27,     /* colNo */
        "chol", /* fName */
        "D:\\Utilities\\MatlabR2024a\\toolbox\\eml\\eml\\+coder\\+"
        "internal\\chol.m" /* pName */
};

static emlrtRTEInfo i_emlrtRTEI =
    {
        56,     /* lineNo */
        23,     /* colNo */
        "chol", /* fName */
        "D:\\Utilities\\MatlabR2024a\\toolbox\\eml\\eml\\+coder\\+"
        "internal\\chol.m" /* pName */
};

/* Function Definitions */
void chol(const emlrtStack *sp, emxArray_real_T *A)
{
  static const char_T fname[19] = {'L', 'A', 'P', 'A', 'C', 'K', 'E',
                                   '_', 'd', 'p', 'o', 't', 'r', 'f',
                                   '_', 'w', 'o', 'r', 'k'};
  emlrtStack b_st;
  emlrtStack c_st;
  emlrtStack st;
  real_T *A_data;
  int32_T i;
  int32_T j;
  int32_T mrows;
  int32_T ncols;
  st.prev = sp;
  st.tls = sp->tls;
  b_st.prev = &st;
  b_st.tls = st.tls;
  c_st.prev = &b_st;
  c_st.tls = b_st.tls;
  A_data = A->data;
  mrows = A->size[0];
  ncols = A->size[1];
  if (A->size[0] != A->size[1]) {
    emlrtErrorWithMessageIdR2018a(sp, &i_emlrtRTEI, "MATLAB:square",
                                  "MATLAB:square", 0);
  }
  mrows = muIntScalarMin_sint32(mrows, ncols);
  if (mrows != 0) {
    ptrdiff_t info_t;
    st.site = &n_emlrtRSI;
    b_st.site = &r_emlrtRSI;
    info_t = LAPACKE_dpotrf_work(102, 'U', (ptrdiff_t)mrows, &A_data[0],
                                 (ptrdiff_t)A->size[0]);
    c_st.site = &q_emlrtRSI;
    if ((int32_T)info_t < 0) {
      if ((int32_T)info_t == -1010) {
        emlrtErrorWithMessageIdR2018a(&c_st, &g_emlrtRTEI, "MATLAB:nomem",
                                      "MATLAB:nomem", 0);
      } else {
        emlrtErrorWithMessageIdR2018a(&c_st, &f_emlrtRTEI,
                                      "Coder:toolbox:LAPACKCallErrorInfo",
                                      "Coder:toolbox:LAPACKCallErrorInfo", 5, 4,
                                      19, &fname[0], 12, (int32_T)info_t);
      }
    }
    if ((int32_T)info_t != 0) {
      mrows = (int32_T)info_t - 1;
    }
    st.site = &o_emlrtRSI;
    for (j = 0; j <= mrows - 2; j++) {
      ncols = j + 2;
      st.site = &p_emlrtRSI;
      if ((j + 2 <= mrows) && (mrows > 2147483646)) {
        b_st.site = &l_emlrtRSI;
        check_forloop_overflow_error(&b_st);
      }
      for (i = ncols; i <= mrows; i++) {
        A_data[(i + A->size[0] * j) - 1] = 0.0;
      }
    }
    if ((int32_T)info_t != 0) {
      emlrtErrorWithMessageIdR2018a(sp, &h_emlrtRTEI, "MATLAB:posdef",
                                    "MATLAB:posdef", 0);
    }
  }
}

/* End of code generation (chol.c) */
