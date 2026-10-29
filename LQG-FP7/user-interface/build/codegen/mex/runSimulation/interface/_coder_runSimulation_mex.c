/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * _coder_runSimulation_mex.c
 *
 * Code generation for function '_coder_runSimulation_mex'
 *
 */

/* Include files */
#include "_coder_runSimulation_mex.h"
#include "_coder_runSimulation_api.h"
#include "rt_nonfinite.h"
#include "runSimulation_data.h"
#include "runSimulation_initialize.h"
#include "runSimulation_terminate.h"

/* Function Definitions */
void mexFunction(int32_T nlhs, mxArray *plhs[], int32_T nrhs,
                 const mxArray *prhs[])
{
  mexAtExit(&runSimulation_atexit);
  /* Module initialization. */
  runSimulation_initialize();
  /* Dispatch the entry-point. */
  runSimulation_mexFunction(nlhs, plhs, nrhs, prhs);
  /* Module termination. */
  runSimulation_terminate();
}

emlrtCTX mexFunctionCreateRootTLS(void)
{
  emlrtCreateRootTLSR2022a(&emlrtRootTLSGlobal, &emlrtContextGlobal, NULL, 1,
                           NULL, "windows-1252", true);
  return emlrtRootTLSGlobal;
}

void runSimulation_mexFunction(int32_T nlhs, mxArray *plhs[4], int32_T nrhs,
                               const mxArray *prhs[19])
{
  emlrtStack st = {
      NULL, /* site */
      NULL, /* tls */
      NULL  /* prev */
  };
  const mxArray *outputs[4];
  int32_T i;
  st.tls = emlrtRootTLSGlobal;
  /* Check for proper number of arguments. */
  if (nrhs != 19) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:WrongNumberOfInputs", 5, 12, 19, 4,
                        13, "runSimulation");
  }
  if (nlhs > 4) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:TooManyOutputArguments", 3, 4, 13,
                        "runSimulation");
  }
  /* Call the function. */
  runSimulation_api(prhs, nlhs, outputs);
  /* Copy over outputs to the caller. */
  if (nlhs < 1) {
    i = 1;
  } else {
    i = nlhs;
  }
  emlrtReturnArrays(i, &plhs[0], &outputs[0]);
}

/* End of code generation (_coder_runSimulation_mex.c) */
