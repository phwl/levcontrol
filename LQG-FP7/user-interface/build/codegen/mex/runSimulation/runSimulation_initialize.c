/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * runSimulation_initialize.c
 *
 * Code generation for function 'runSimulation_initialize'
 *
 */

/* Include files */
#include "runSimulation_initialize.h"
#include "_coder_runSimulation_mex.h"
#include "rt_nonfinite.h"
#include "runSimulation_data.h"

/* Function Declarations */
static void runSimulation_once(void);

/* Function Definitions */
static void runSimulation_once(void)
{
  mex_InitInfAndNan();
}

void runSimulation_initialize(void)
{
  emlrtStack st = {
      NULL, /* site */
      NULL, /* tls */
      NULL  /* prev */
  };
  mexFunctionCreateRootTLS();
  st.tls = emlrtRootTLSGlobal;
  emlrtBreakCheckR2012bFlagVar = emlrtGetBreakCheckFlagAddressR2022b(&st);
  emlrtClearAllocCountR2012b(&st, false, 0U, NULL);
  emlrtEnterRtStackR2012b(&st);
  if (emlrtFirstTimeR2012b(emlrtRootTLSGlobal)) {
    runSimulation_once();
  }
}

/* End of code generation (runSimulation_initialize.c) */
