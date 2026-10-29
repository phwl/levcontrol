/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * colon.c
 *
 * Code generation for function 'colon'
 *
 */

/* Include files */
#include "colon.h"
#include "rt_nonfinite.h"
#include "runSimulation_emxutil.h"
#include "runSimulation_types.h"
#include "mwmathutil.h"

/* Variable Definitions */
static emlrtRSInfo j_emlrtRSI = {
    319,               /* lineNo */
    "eml_float_colon", /* fcnName */
    "D:\\Utilities\\MatlabR2024a\\toolbox\\eml\\lib\\matlab\\ops\\colon.m" /* pathName
                                                                            */
};

static emlrtRTEInfo c_emlrtRTEI = {
    419,               /* lineNo */
    15,                /* colNo */
    "assert_pmaxsize", /* fName */
    "D:\\Utilities\\MatlabR2024a\\toolbox\\eml\\lib\\matlab\\ops\\colon.m" /* pName
                                                                            */
};

static emlrtRTEInfo qb_emlrtRTEI = {
    320,     /* lineNo */
    20,      /* colNo */
    "colon", /* fName */
    "D:\\Utilities\\MatlabR2024a\\toolbox\\eml\\lib\\matlab\\ops\\colon.m" /* pName
                                                                            */
};

/* Function Definitions */
void eml_float_colon(const emlrtStack *sp, real_T d, real_T b,
                     emxArray_real_T *y)
{
  emlrtStack st;
  real_T apnd;
  real_T cdiff;
  real_T ndbl;
  real_T *y_data;
  int32_T k;
  int32_T n;
  int32_T nm1d2;
  st.prev = sp;
  st.tls = sp->tls;
  ndbl = muDoubleScalarFloor(b / d + 0.5);
  apnd = ndbl * d;
  if (d > 0.0) {
    cdiff = apnd - b;
  } else {
    cdiff = b - apnd;
  }
  if (muDoubleScalarAbs(cdiff) <
      4.4408920985006262E-16 * muDoubleScalarMax(0.0, muDoubleScalarAbs(b))) {
    ndbl++;
    apnd = b;
  } else if (cdiff > 0.0) {
    apnd = (ndbl - 1.0) * d;
  } else {
    ndbl++;
  }
  if (ndbl >= 0.0) {
    n = (int32_T)ndbl;
  } else {
    n = 0;
  }
  st.site = &j_emlrtRSI;
  if (ndbl > 2.147483647E+9) {
    emlrtErrorWithMessageIdR2018a(&st, &c_emlrtRTEI, "Coder:MATLAB:pmaxsize",
                                  "Coder:MATLAB:pmaxsize", 0);
  }
  nm1d2 = y->size[0] * y->size[1];
  y->size[0] = 1;
  y->size[1] = n;
  emxEnsureCapacity_real_T(sp, y, nm1d2, &qb_emlrtRTEI);
  y_data = y->data;
  if (n > 0) {
    y_data[0] = 0.0;
    if (n > 1) {
      y_data[n - 1] = apnd;
      nm1d2 = (n - 1) / 2;
      for (k = 0; k <= nm1d2 - 2; k++) {
        ndbl = ((real_T)k + 1.0) * d;
        y_data[k + 1] = ndbl;
        y_data[(n - k) - 2] = apnd - ndbl;
      }
      if (nm1d2 << 1 == n - 1) {
        y_data[nm1d2] = apnd / 2.0;
      } else {
        ndbl = (real_T)nm1d2 * d;
        y_data[nm1d2] = ndbl;
        y_data[nm1d2 + 1] = apnd - ndbl;
      }
    }
  }
}

/* End of code generation (colon.c) */
