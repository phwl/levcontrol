/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * mtimes.c
 *
 * Code generation for function 'mtimes'
 *
 */

/* Include files */
#include "mtimes.h"
#include "rt_nonfinite.h"
#include "runSimulation_emxutil.h"
#include "runSimulation_types.h"
#include "blas.h"
#include <stddef.h>

/* Variable Definitions */
static emlrtRSInfo x_emlrtRSI = {
    142,      /* lineNo */
    "mtimes", /* fcnName */
    "D:\\Utilities\\MatlabR2024a\\toolbox\\eml\\eml\\+coder\\+internal\\+"
    "blas\\mtimes.m" /* pathName */
};

static emlrtRSInfo y_emlrtRSI = {
    178,           /* lineNo */
    "mtimes_blas", /* fcnName */
    "D:\\Utilities\\MatlabR2024a\\toolbox\\eml\\eml\\+coder\\+internal\\+"
    "blas\\mtimes.m" /* pathName */
};

static emlrtRTEInfo sb_emlrtRTEI = {
    140,      /* lineNo */
    5,        /* colNo */
    "mtimes", /* fName */
    "D:\\Utilities\\MatlabR2024a\\toolbox\\eml\\eml\\+coder\\+internal\\+"
    "blas\\mtimes.m" /* pName */
};

static emlrtRTEInfo tb_emlrtRTEI = {
    218,      /* lineNo */
    20,       /* colNo */
    "mtimes", /* fName */
    "D:\\Utilities\\MatlabR2024a\\toolbox\\eml\\eml\\+coder\\+internal\\+"
    "blas\\mtimes.m" /* pName */
};

/* Function Definitions */
void b_mtimes(const emlrtStack *sp, const emxArray_real_T *A,
              const emxArray_real_T *B, emxArray_real_T *C)
{
  ptrdiff_t k_t;
  ptrdiff_t lda_t;
  ptrdiff_t ldb_t;
  ptrdiff_t ldc_t;
  ptrdiff_t m_t;
  ptrdiff_t n_t;
  emlrtStack b_st;
  emlrtStack st;
  const real_T *A_data;
  const real_T *B_data;
  real_T alpha1;
  real_T beta1;
  real_T *C_data;
  int32_T i;
  char_T TRANSA1;
  char_T TRANSB1;
  st.prev = sp;
  st.tls = sp->tls;
  b_st.prev = &st;
  b_st.tls = st.tls;
  B_data = B->data;
  A_data = A->data;
  if ((A->size[0] == 0) || (A->size[1] == 0) || (B->size[0] == 0)) {
    int32_T loop_ub;
    loop_ub = A->size[0];
    i = C->size[0];
    C->size[0] = A->size[0];
    emxEnsureCapacity_real_T(sp, C, i, &sb_emlrtRTEI);
    C_data = C->data;
    for (i = 0; i < loop_ub; i++) {
      C_data[i] = 0.0;
    }
  } else {
    st.site = &x_emlrtRSI;
    b_st.site = &y_emlrtRSI;
    TRANSB1 = 'N';
    TRANSA1 = 'N';
    alpha1 = 1.0;
    beta1 = 0.0;
    m_t = (ptrdiff_t)A->size[0];
    n_t = (ptrdiff_t)1;
    k_t = (ptrdiff_t)A->size[1];
    lda_t = (ptrdiff_t)A->size[0];
    ldb_t = (ptrdiff_t)B->size[0];
    ldc_t = (ptrdiff_t)A->size[0];
    i = C->size[0];
    C->size[0] = A->size[0];
    emxEnsureCapacity_real_T(&b_st, C, i, &tb_emlrtRTEI);
    C_data = C->data;
    dgemm(&TRANSA1, &TRANSB1, &m_t, &n_t, &k_t, &alpha1, (real_T *)&A_data[0],
          &lda_t, (real_T *)&B_data[0], &ldb_t, &beta1, &C_data[0], &ldc_t);
  }
}

void mtimes(const emlrtStack *sp, const emxArray_real_T *A,
            const emxArray_real_T *B, emxArray_real_T *C)
{
  ptrdiff_t k_t;
  ptrdiff_t lda_t;
  ptrdiff_t ldb_t;
  ptrdiff_t ldc_t;
  ptrdiff_t m_t;
  ptrdiff_t n_t;
  emlrtStack b_st;
  emlrtStack st;
  const real_T *A_data;
  const real_T *B_data;
  real_T alpha1;
  real_T beta1;
  real_T *C_data;
  int32_T i;
  char_T TRANSA1;
  char_T TRANSB1;
  st.prev = sp;
  st.tls = sp->tls;
  b_st.prev = &st;
  b_st.tls = st.tls;
  B_data = B->data;
  A_data = A->data;
  if ((A->size[0] == 0) || (A->size[1] == 0) || (B->size[0] == 0) ||
      (B->size[1] == 0)) {
    int32_T loop_ub;
    i = C->size[0] * C->size[1];
    C->size[0] = A->size[0];
    C->size[1] = B->size[1];
    emxEnsureCapacity_real_T(sp, C, i, &sb_emlrtRTEI);
    C_data = C->data;
    loop_ub = A->size[0] * B->size[1];
    for (i = 0; i < loop_ub; i++) {
      C_data[i] = 0.0;
    }
  } else {
    st.site = &x_emlrtRSI;
    b_st.site = &y_emlrtRSI;
    TRANSB1 = 'N';
    TRANSA1 = 'N';
    alpha1 = 1.0;
    beta1 = 0.0;
    m_t = (ptrdiff_t)A->size[0];
    n_t = (ptrdiff_t)B->size[1];
    k_t = (ptrdiff_t)A->size[1];
    lda_t = (ptrdiff_t)A->size[0];
    ldb_t = (ptrdiff_t)B->size[0];
    ldc_t = (ptrdiff_t)A->size[0];
    i = C->size[0] * C->size[1];
    C->size[0] = A->size[0];
    C->size[1] = B->size[1];
    emxEnsureCapacity_real_T(&b_st, C, i, &tb_emlrtRTEI);
    C_data = C->data;
    dgemm(&TRANSA1, &TRANSB1, &m_t, &n_t, &k_t, &alpha1, (real_T *)&A_data[0],
          &lda_t, (real_T *)&B_data[0], &ldb_t, &beta1, &C_data[0], &ldc_t);
  }
}

/* End of code generation (mtimes.c) */
