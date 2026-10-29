/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_runSimulation_api.c
 *
 * Code generation for function '_coder_runSimulation_api'
 *
 */

/* Include files */
#include "_coder_runSimulation_api.h"
#include "rt_nonfinite.h"
#include "runSimulation.h"
#include "runSimulation_data.h"
#include "runSimulation_emxutil.h"
#include "runSimulation_types.h"

/* Variable Definitions */
static emlrtRTEInfo ub_emlrtRTEI = {
    1,                          /* lineNo */
    1,                          /* colNo */
    "_coder_runSimulation_api", /* fName */
    ""                          /* pName */
};

/* Function Declarations */
static void b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                               const emlrtMsgIdentifier *parentId,
                               emxArray_real_T *y);

static void c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *nullptr,
                               const char_T *identifier, emxArray_real_T *y);

static void d_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                               const emlrtMsgIdentifier *parentId,
                               emxArray_real_T *y);

static real_T e_emlrt_marshallIn(const emlrtStack *sp, const mxArray *nullptr,
                                 const char_T *identifier);

static void emlrt_marshallIn(const emlrtStack *sp, const mxArray *nullptr,
                             const char_T *identifier, emxArray_real_T *y);

static const mxArray *emlrt_marshallOut(const emxArray_real_T *u);

static real_T f_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                                 const emlrtMsgIdentifier *parentId);

static real_T (*g_emlrt_marshallIn(const emlrtStack *sp, const mxArray *nullptr,
                                   const char_T *identifier))[7];

static real_T (*h_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                                   const emlrtMsgIdentifier *parentId))[7];

static boolean_T i_emlrt_marshallIn(const emlrtStack *sp,
                                    const mxArray *nullptr,
                                    const char_T *identifier);

static boolean_T j_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                                    const emlrtMsgIdentifier *parentId);

static void k_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                               const emlrtMsgIdentifier *msgId,
                               emxArray_real_T *ret);

static void l_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                               const emlrtMsgIdentifier *msgId,
                               emxArray_real_T *ret);

static real_T m_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                                 const emlrtMsgIdentifier *msgId);

static real_T (*n_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                                   const emlrtMsgIdentifier *msgId))[7];

static boolean_T o_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                                    const emlrtMsgIdentifier *msgId);

/* Function Definitions */
static void b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                               const emlrtMsgIdentifier *parentId,
                               emxArray_real_T *y)
{
  k_emlrt_marshallIn(sp, emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static void c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *nullptr,
                               const char_T *identifier, emxArray_real_T *y)
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char_T *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  d_emlrt_marshallIn(sp, emlrtAlias(nullptr), &thisId, y);
  emlrtDestroyArray(&nullptr);
}

static void d_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                               const emlrtMsgIdentifier *parentId,
                               emxArray_real_T *y)
{
  l_emlrt_marshallIn(sp, emlrtAlias(u), parentId, y);
  emlrtDestroyArray(&u);
}

static real_T e_emlrt_marshallIn(const emlrtStack *sp, const mxArray *nullptr,
                                 const char_T *identifier)
{
  emlrtMsgIdentifier thisId;
  real_T y;
  thisId.fIdentifier = (const char_T *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = f_emlrt_marshallIn(sp, emlrtAlias(nullptr), &thisId);
  emlrtDestroyArray(&nullptr);
  return y;
}

static void emlrt_marshallIn(const emlrtStack *sp, const mxArray *nullptr,
                             const char_T *identifier, emxArray_real_T *y)
{
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = (const char_T *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  b_emlrt_marshallIn(sp, emlrtAlias(nullptr), &thisId, y);
  emlrtDestroyArray(&nullptr);
}

static const mxArray *emlrt_marshallOut(const emxArray_real_T *u)
{
  static const int32_T iv[2] = {0, 0};
  const mxArray *m;
  const mxArray *y;
  const real_T *u_data;
  u_data = u->data;
  y = NULL;
  m = emlrtCreateNumericArray(2, (const void *)&iv[0], mxDOUBLE_CLASS, mxREAL);
  emlrtMxSetData((mxArray *)m, (void *)&u_data[0]);
  emlrtSetDimensions((mxArray *)m, &u->size[0], 2);
  emlrtAssign(&y, m);
  return y;
}

static real_T f_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                                 const emlrtMsgIdentifier *parentId)
{
  real_T y;
  y = m_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static real_T (*g_emlrt_marshallIn(const emlrtStack *sp, const mxArray *nullptr,
                                   const char_T *identifier))[7]
{
  emlrtMsgIdentifier thisId;
  real_T(*y)[7];
  thisId.fIdentifier = (const char_T *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = h_emlrt_marshallIn(sp, emlrtAlias(nullptr), &thisId);
  emlrtDestroyArray(&nullptr);
  return y;
}

static real_T (*h_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                                   const emlrtMsgIdentifier *parentId))[7]
{
  real_T(*y)[7];
  y = n_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static boolean_T i_emlrt_marshallIn(const emlrtStack *sp,
                                    const mxArray *nullptr,
                                    const char_T *identifier)
{
  emlrtMsgIdentifier thisId;
  boolean_T y;
  thisId.fIdentifier = (const char_T *)identifier;
  thisId.fParent = NULL;
  thisId.bParentIsCell = false;
  y = j_emlrt_marshallIn(sp, emlrtAlias(nullptr), &thisId);
  emlrtDestroyArray(&nullptr);
  return y;
}

static boolean_T j_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u,
                                    const emlrtMsgIdentifier *parentId)
{
  boolean_T y;
  y = o_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static void k_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                               const emlrtMsgIdentifier *msgId,
                               emxArray_real_T *ret)
{
  static const int32_T dims[2] = {1, -1};
  int32_T iv[2];
  int32_T i;
  boolean_T bv[2] = {false, true};
  emlrtCheckVsBuiltInR2012b((emlrtConstCTX)sp, msgId, src, "double", false, 2U,
                            (const void *)&dims[0], &bv[0], &iv[0]);
  ret->allocatedSize = iv[0] * iv[1];
  i = ret->size[0] * ret->size[1];
  ret->size[0] = iv[0];
  ret->size[1] = iv[1];
  emxEnsureCapacity_real_T(sp, ret, i, (emlrtRTEInfo *)NULL);
  ret->data = (real_T *)emlrtMxGetData(src);
  ret->canFreeData = false;
  emlrtDestroyArray(&src);
}

static void l_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                               const emlrtMsgIdentifier *msgId,
                               emxArray_real_T *ret)
{
  static const int32_T dims[2] = {-1, -1};
  int32_T iv[2];
  int32_T i;
  boolean_T bv[2] = {true, true};
  emlrtCheckVsBuiltInR2012b((emlrtConstCTX)sp, msgId, src, "double", false, 2U,
                            (const void *)&dims[0], &bv[0], &iv[0]);
  ret->allocatedSize = iv[0] * iv[1];
  i = ret->size[0] * ret->size[1];
  ret->size[0] = iv[0];
  ret->size[1] = iv[1];
  emxEnsureCapacity_real_T(sp, ret, i, (emlrtRTEInfo *)NULL);
  ret->data = (real_T *)emlrtMxGetData(src);
  ret->canFreeData = false;
  emlrtDestroyArray(&src);
}

static real_T m_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                                 const emlrtMsgIdentifier *msgId)
{
  static const int32_T dims = 0;
  real_T ret;
  emlrtCheckBuiltInR2012b((emlrtConstCTX)sp, msgId, src, "double", false, 0U,
                          (const void *)&dims);
  ret = *(real_T *)emlrtMxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static real_T (*n_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                                   const emlrtMsgIdentifier *msgId))[7]
{
  static const int32_T dims = 7;
  real_T(*ret)[7];
  int32_T i;
  boolean_T b = false;
  emlrtCheckVsBuiltInR2012b((emlrtConstCTX)sp, msgId, src, "double", false, 1U,
                            (const void *)&dims, &b, &i);
  ret = (real_T(*)[7])emlrtMxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static boolean_T o_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src,
                                    const emlrtMsgIdentifier *msgId)
{
  static const int32_T dims = 0;
  boolean_T ret;
  emlrtCheckBuiltInR2012b((emlrtConstCTX)sp, msgId, src, "logical", false, 0U,
                          (const void *)&dims);
  ret = *emlrtMxGetLogicals(src);
  emlrtDestroyArray(&src);
  return ret;
}

void runSimulation_api(const mxArray *const prhs[19], int32_T nlhs,
                       const mxArray *plhs[4])
{
  emlrtStack st = {
      NULL, /* site */
      NULL, /* tls */
      NULL  /* prev */
  };
  emxArray_real_T *ADC_mat;
  emxArray_real_T *B_mat;
  emxArray_real_T *DAC_mat;
  emxArray_real_T *K_LQR;
  emxArray_real_T *L_d_mat;
  emxArray_real_T *P_V_mat;
  emxArray_real_T *P_W_mat;
  emxArray_real_T *Xest_mat;
  emxArray_real_T *idxsADCs;
  emxArray_real_T *idxsDACs;
  emxArray_real_T *idxsStates;
  emxArray_real_T *kest_d_A;
  emxArray_real_T *kest_d_B;
  emxArray_real_T *ssys_d_A;
  emxArray_real_T *ssys_d_B;
  emxArray_real_T *ssys_d_C;
  emxArray_real_T *t_vec_dma;
  real_T(*Xest_0)[7];
  real_T(*Xtrue_0)[7];
  real_T TsDMA;
  real_T TsSim;
  real_T numOfFrames;
  boolean_T FbEnable;
  st.tls = emlrtRootTLSGlobal;
  emlrtHeapReferenceStackEnterFcnR2012b(&st);
  /* Marshall function inputs */
  emxInit_real_T(&st, &idxsDACs, 2, &ub_emlrtRTEI);
  idxsDACs->canFreeData = false;
  emlrt_marshallIn(&st, emlrtAlias(prhs[0]), "idxsDACs", idxsDACs);
  emxInit_real_T(&st, &idxsADCs, 2, &ub_emlrtRTEI);
  idxsADCs->canFreeData = false;
  emlrt_marshallIn(&st, emlrtAlias(prhs[1]), "idxsADCs", idxsADCs);
  emxInit_real_T(&st, &idxsStates, 2, &ub_emlrtRTEI);
  idxsStates->canFreeData = false;
  emlrt_marshallIn(&st, emlrtAlias(prhs[2]), "idxsStates", idxsStates);
  emxInit_real_T(&st, &P_W_mat, 2, &ub_emlrtRTEI);
  P_W_mat->canFreeData = false;
  c_emlrt_marshallIn(&st, emlrtAlias(prhs[3]), "P_W_mat", P_W_mat);
  emxInit_real_T(&st, &P_V_mat, 2, &ub_emlrtRTEI);
  P_V_mat->canFreeData = false;
  c_emlrt_marshallIn(&st, emlrtAlias(prhs[4]), "P_V_mat", P_V_mat);
  emxInit_real_T(&st, &B_mat, 2, &ub_emlrtRTEI);
  B_mat->canFreeData = false;
  c_emlrt_marshallIn(&st, emlrtAlias(prhs[5]), "B_mat", B_mat);
  emxInit_real_T(&st, &ssys_d_A, 2, &ub_emlrtRTEI);
  ssys_d_A->canFreeData = false;
  c_emlrt_marshallIn(&st, emlrtAlias(prhs[6]), "ssys_d_A", ssys_d_A);
  emxInit_real_T(&st, &ssys_d_B, 2, &ub_emlrtRTEI);
  ssys_d_B->canFreeData = false;
  c_emlrt_marshallIn(&st, emlrtAlias(prhs[7]), "ssys_d_B", ssys_d_B);
  emxInit_real_T(&st, &ssys_d_C, 2, &ub_emlrtRTEI);
  ssys_d_C->canFreeData = false;
  c_emlrt_marshallIn(&st, emlrtAlias(prhs[8]), "ssys_d_C", ssys_d_C);
  emxInit_real_T(&st, &kest_d_A, 2, &ub_emlrtRTEI);
  kest_d_A->canFreeData = false;
  c_emlrt_marshallIn(&st, emlrtAlias(prhs[9]), "kest_d_A", kest_d_A);
  emxInit_real_T(&st, &kest_d_B, 2, &ub_emlrtRTEI);
  kest_d_B->canFreeData = false;
  c_emlrt_marshallIn(&st, emlrtAlias(prhs[10]), "kest_d_B", kest_d_B);
  emxInit_real_T(&st, &L_d_mat, 2, &ub_emlrtRTEI);
  L_d_mat->canFreeData = false;
  c_emlrt_marshallIn(&st, emlrtAlias(prhs[11]), "L_d_mat", L_d_mat);
  emxInit_real_T(&st, &K_LQR, 2, &ub_emlrtRTEI);
  K_LQR->canFreeData = false;
  c_emlrt_marshallIn(&st, emlrtAlias(prhs[12]), "K_LQR", K_LQR);
  numOfFrames = e_emlrt_marshallIn(&st, emlrtAliasP(prhs[13]), "numOfFrames");
  TsDMA = e_emlrt_marshallIn(&st, emlrtAliasP(prhs[14]), "TsDMA");
  TsSim = e_emlrt_marshallIn(&st, emlrtAliasP(prhs[15]), "TsSim");
  Xest_0 = g_emlrt_marshallIn(&st, emlrtAlias(prhs[16]), "Xest_0");
  Xtrue_0 = g_emlrt_marshallIn(&st, emlrtAlias(prhs[17]), "Xtrue_0");
  FbEnable = i_emlrt_marshallIn(&st, emlrtAliasP(prhs[18]), "FbEnable");
  /* Invoke the target function */
  emxInit_real_T(&st, &ADC_mat, 2, &ub_emlrtRTEI);
  emxInit_real_T(&st, &DAC_mat, 2, &ub_emlrtRTEI);
  emxInit_real_T(&st, &Xest_mat, 2, &ub_emlrtRTEI);
  emxInit_real_T(&st, &t_vec_dma, 2, &ub_emlrtRTEI);
  runSimulation(&st, idxsDACs, idxsADCs, idxsStates, P_W_mat, P_V_mat, B_mat,
                ssys_d_A, ssys_d_B, ssys_d_C, kest_d_A, kest_d_B, L_d_mat,
                K_LQR, numOfFrames, TsDMA, TsSim, *Xest_0, *Xtrue_0, FbEnable,
                ADC_mat, DAC_mat, Xest_mat, t_vec_dma);
  emxFree_real_T(&st, &K_LQR);
  emxFree_real_T(&st, &L_d_mat);
  emxFree_real_T(&st, &kest_d_B);
  emxFree_real_T(&st, &kest_d_A);
  emxFree_real_T(&st, &ssys_d_C);
  emxFree_real_T(&st, &ssys_d_B);
  emxFree_real_T(&st, &ssys_d_A);
  emxFree_real_T(&st, &B_mat);
  emxFree_real_T(&st, &P_V_mat);
  emxFree_real_T(&st, &P_W_mat);
  emxFree_real_T(&st, &idxsStates);
  emxFree_real_T(&st, &idxsADCs);
  emxFree_real_T(&st, &idxsDACs);
  /* Marshall function outputs */
  ADC_mat->canFreeData = false;
  plhs[0] = emlrt_marshallOut(ADC_mat);
  emxFree_real_T(&st, &ADC_mat);
  if (nlhs > 1) {
    DAC_mat->canFreeData = false;
    plhs[1] = emlrt_marshallOut(DAC_mat);
  }
  emxFree_real_T(&st, &DAC_mat);
  if (nlhs > 2) {
    Xest_mat->canFreeData = false;
    plhs[2] = emlrt_marshallOut(Xest_mat);
  }
  emxFree_real_T(&st, &Xest_mat);
  if (nlhs > 3) {
    t_vec_dma->canFreeData = false;
    plhs[3] = emlrt_marshallOut(t_vec_dma);
  }
  emxFree_real_T(&st, &t_vec_dma);
  emlrtHeapReferenceStackLeaveFcnR2012b(&st);
}

/* End of code generation (_coder_runSimulation_api.c) */
