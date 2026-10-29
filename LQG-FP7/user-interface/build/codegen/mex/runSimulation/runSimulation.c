/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * runSimulation.c
 *
 * Code generation for function 'runSimulation'
 *
 */

/* Include files */
#include "runSimulation.h"
#include "chol.h"
#include "colon.h"
#include "eml_int_forloop_overflow_check.h"
#include "eml_mtimes_helper.h"
#include "mtimes.h"
#include "randn.h"
#include "rt_nonfinite.h"
#include "runSimulation_data.h"
#include "runSimulation_emxutil.h"
#include "runSimulation_types.h"
#include "mwmathutil.h"
#include <emmintrin.h>

/* Variable Definitions */
static emlrtRSInfo emlrtRSI = {
    14,              /* lineNo */
    "runSimulation", /* fcnName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pathName
                                                                           */
};

static emlrtRSInfo b_emlrtRSI = {
    17,              /* lineNo */
    "runSimulation", /* fcnName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pathName
                                                                           */
};

static emlrtRSInfo c_emlrtRSI = {
    21,              /* lineNo */
    "runSimulation", /* fcnName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pathName
                                                                           */
};

static emlrtRSInfo d_emlrtRSI = {
    22,              /* lineNo */
    "runSimulation", /* fcnName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pathName
                                                                           */
};

static emlrtRSInfo e_emlrtRSI = {
    24,              /* lineNo */
    "runSimulation", /* fcnName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pathName
                                                                           */
};

static emlrtRSInfo f_emlrtRSI = {
    25,              /* lineNo */
    "runSimulation", /* fcnName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pathName
                                                                           */
};

static emlrtRSInfo g_emlrtRSI = {
    49,              /* lineNo */
    "runSimulation", /* fcnName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pathName
                                                                           */
};

static emlrtRSInfo h_emlrtRSI = {
    67,              /* lineNo */
    "runSimulation", /* fcnName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pathName
                                                                           */
};

static emlrtRSInfo i_emlrtRSI = {
    125,     /* lineNo */
    "colon", /* fcnName */
    "D:\\Utilities\\MatlabR2024a\\toolbox\\eml\\lib\\matlab\\ops\\colon.m" /* pathName
                                                                            */
};

static emlrtRSInfo
    m_emlrtRSI =
        {
            12,     /* lineNo */
            "chol", /* fcnName */
            "D:"
            "\\Utilities\\MatlabR2024a\\toolbox\\eml\\lib\\matlab\\matfun\\chol"
            ".m" /* pathName */
};

static emlrtRSInfo v_emlrtRSI = {
    94,                  /* lineNo */
    "eml_mtimes_helper", /* fcnName */
    "D:\\Utilities\\MatlabR2024a\\toolbox\\eml\\lib\\matlab\\ops\\eml_mtimes_"
    "helper.m" /* pathName */
};

static emlrtRSInfo w_emlrtRSI = {
    69,                  /* lineNo */
    "eml_mtimes_helper", /* fcnName */
    "D:\\Utilities\\MatlabR2024a\\toolbox\\eml\\lib\\matlab\\ops\\eml_mtimes_"
    "helper.m" /* pathName */
};

static emlrtRSInfo ab_emlrtRSI = {
    95,               /* lineNo */
    "simulationStep", /* fcnName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pathName
                                                                           */
};

static emlrtRSInfo bb_emlrtRSI = {
    96,               /* lineNo */
    "simulationStep", /* fcnName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pathName
                                                                           */
};

static emlrtRSInfo cb_emlrtRSI = {
    99,               /* lineNo */
    "simulationStep", /* fcnName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pathName
                                                                           */
};

static emlrtRSInfo db_emlrtRSI = {
    101,              /* lineNo */
    "simulationStep", /* fcnName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pathName
                                                                           */
};

static emlrtRSInfo
    eb_emlrtRSI =
        {
            16,      /* lineNo */
            "floor", /* fcnName */
            "D:"
            "\\Utilities\\MatlabR2024a\\toolbox\\eml\\lib\\matlab\\elfun\\floor"
            ".m" /* pathName */
};

static emlrtRSInfo fb_emlrtRSI = {
    33,                           /* lineNo */
    "applyScalarFunctionInPlace", /* fcnName */
    "D:\\Utilities\\MatlabR2024a\\toolbox\\eml\\eml\\+coder\\+"
    "internal\\applyScalarFunctionInPlace.m" /* pathName */
};

static emlrtECInfo emlrtECI = {
    1,                /* nDims */
    99,               /* lineNo */
    16,               /* colNo */
    "simulationStep", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtECInfo b_emlrtECI = {
    1,                /* nDims */
    96,               /* lineNo */
    17,               /* colNo */
    "simulationStep", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtECInfo c_emlrtECI = {
    1,                /* nDims */
    95,               /* lineNo */
    17,               /* colNo */
    "simulationStep", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtBCInfo emlrtBCI = {
    -1,               /* iFirst */
    -1,               /* iLast */
    85,               /* lineNo */
    42,               /* colNo */
    "ssys_d_B",       /* aName */
    "simulationStep", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    0 /* checkKind */
};

static emlrtBCInfo b_emlrtBCI = {
    -1,               /* iFirst */
    -1,               /* iLast */
    85,               /* lineNo */
    23,               /* colNo */
    "ssys_d_B",       /* aName */
    "simulationStep", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    0 /* checkKind */
};

static emlrtECInfo d_emlrtECI = {
    -1,              /* nDims */
    49,              /* lineNo */
    86,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtBCInfo c_emlrtBCI = {
    -1,              /* iFirst */
    -1,              /* iLast */
    49,              /* lineNo */
    103,             /* colNo */
    "ADC_sim",       /* aName */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    0 /* checkKind */
};

static emlrtECInfo e_emlrtECI = {
    -1,              /* nDims */
    49,              /* lineNo */
    63,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtBCInfo d_emlrtBCI = {
    -1,              /* iFirst */
    -1,              /* iLast */
    49,              /* lineNo */
    80,              /* colNo */
    "DAC_sim",       /* aName */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    0 /* checkKind */
};

static emlrtECInfo f_emlrtECI = {
    -1,              /* nDims */
    49,              /* lineNo */
    37,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtBCInfo e_emlrtBCI = {
    -1,              /* iFirst */
    -1,              /* iLast */
    49,              /* lineNo */
    57,              /* colNo */
    "Xest_sim",      /* aName */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    0 /* checkKind */
};

static emlrtECInfo g_emlrtECI = {
    -1,              /* nDims */
    49,              /* lineNo */
    10,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtBCInfo f_emlrtBCI = {
    -1,              /* iFirst */
    -1,              /* iLast */
    49,              /* lineNo */
    31,              /* colNo */
    "Xtrue_sim",     /* aName */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    0 /* checkKind */
};

static emlrtBCInfo g_emlrtBCI = {
    -1,              /* iFirst */
    -1,              /* iLast */
    51,              /* lineNo */
    103,             /* colNo */
    "DAC_sim",       /* aName */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    0 /* checkKind */
};

static emlrtBCInfo h_emlrtBCI = {
    -1,              /* iFirst */
    -1,              /* iLast */
    51,              /* lineNo */
    82,              /* colNo */
    "V_sim",         /* aName */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    0 /* checkKind */
};

static emlrtBCInfo i_emlrtBCI = {
    -1,              /* iFirst */
    -1,              /* iLast */
    51,              /* lineNo */
    70,              /* colNo */
    "W_sim",         /* aName */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    0 /* checkKind */
};

static emlrtBCInfo j_emlrtBCI = {
    -1,              /* iFirst */
    -1,              /* iLast */
    51,              /* lineNo */
    58,              /* colNo */
    "Xest_sim",      /* aName */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    0 /* checkKind */
};

static emlrtBCInfo k_emlrtBCI = {
    -1,              /* iFirst */
    -1,              /* iLast */
    51,              /* lineNo */
    34,              /* colNo */
    "Xtrue_sim",     /* aName */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    0 /* checkKind */
};

static emlrtBCInfo l_emlrtBCI = {
    -1,              /* iFirst */
    -1,              /* iLast */
    41,              /* lineNo */
    21,              /* colNo */
    "Xtrue_sim",     /* aName */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    0 /* checkKind */
};

static emlrtDCInfo emlrtDCI = {
    33,              /* lineNo */
    27,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    1 /* checkKind */
};

static emlrtDCInfo b_emlrtDCI = {
    33,              /* lineNo */
    27,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    4 /* checkKind */
};

static emlrtBCInfo m_emlrtBCI = {
    1,               /* iFirst */
    7,               /* iLast */
    51,              /* lineNo */
    23,              /* colNo */
    "Xtrue_sim",     /* aName */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    0 /* checkKind */
};

static emlrtDCInfo c_emlrtDCI = {
    51,              /* lineNo */
    23,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    1 /* checkKind */
};

static emlrtBCInfo n_emlrtBCI = {
    1,               /* iFirst */
    2,               /* iLast */
    51,              /* lineNo */
    94,              /* colNo */
    "DAC_sim",       /* aName */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    0 /* checkKind */
};

static emlrtDCInfo d_emlrtDCI = {
    51,              /* lineNo */
    94,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    1 /* checkKind */
};

static emlrtBCInfo o_emlrtBCI = {
    -1,               /* iFirst */
    -1,               /* iLast */
    84,               /* lineNo */
    22,               /* colNo */
    "ssys_d_B",       /* aName */
    "simulationStep", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    0 /* checkKind */
};

static emlrtBCInfo p_emlrtBCI = {
    -1,               /* iFirst */
    -1,               /* iLast */
    90,               /* lineNo */
    22,               /* colNo */
    "kest_d_B",       /* aName */
    "simulationStep", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    0 /* checkKind */
};

static emlrtBCInfo q_emlrtBCI = {
    -1,              /* iFirst */
    -1,              /* iLast */
    75,              /* lineNo */
    28,              /* colNo */
    "Xest_sim",      /* aName */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    0 /* checkKind */
};

static emlrtDCInfo e_emlrtDCI = {
    49,              /* lineNo */
    94,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    1 /* checkKind */
};

static emlrtBCInfo r_emlrtBCI = {
    1,               /* iFirst */
    2,               /* iLast */
    49,              /* lineNo */
    94,              /* colNo */
    "ADC_sim",       /* aName */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    3 /* checkKind */
};

static emlrtBCInfo s_emlrtBCI = {
    -1,              /* iFirst */
    -1,              /* iLast */
    74,              /* lineNo */
    27,              /* colNo */
    "DAC_sim",       /* aName */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    0 /* checkKind */
};

static emlrtBCInfo t_emlrtBCI = {
    -1,              /* iFirst */
    -1,              /* iLast */
    73,              /* lineNo */
    27,              /* colNo */
    "ADC_sim",       /* aName */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    0 /* checkKind */
};

static emlrtDCInfo f_emlrtDCI = {
    73,              /* lineNo */
    27,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m", /* pName
                                                                            */
    1 /* checkKind */
};

static emlrtRTEInfo j_emlrtRTEI = {
    17,              /* lineNo */
    5,               /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo
    k_emlrtRTEI =
        {
            12,     /* lineNo */
            5,      /* colNo */
            "chol", /* fName */
            "D:"
            "\\Utilities\\MatlabR2024a\\toolbox\\eml\\lib\\matlab\\matfun\\chol"
            ".m" /* pName */
};

static emlrtRTEInfo l_emlrtRTEI = {
    27,              /* lineNo */
    5,               /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo m_emlrtRTEI = {
    28,              /* lineNo */
    5,               /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo n_emlrtRTEI = {
    29,              /* lineNo */
    5,               /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo o_emlrtRTEI = {
    30,              /* lineNo */
    5,               /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo p_emlrtRTEI = {
    51,              /* lineNo */
    23,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo q_emlrtRTEI = {
    81,              /* lineNo */
    5,               /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo r_emlrtRTEI = {
    51,              /* lineNo */
    13,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo s_emlrtRTEI = {
    51,              /* lineNo */
    38,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo t_emlrtRTEI = {
    67,              /* lineNo */
    17,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo u_emlrtRTEI = {
    51,              /* lineNo */
    62,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo v_emlrtRTEI = {
    51,              /* lineNo */
    94,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo w_emlrtRTEI = {
    51,              /* lineNo */
    86,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo x_emlrtRTEI = {
    73,              /* lineNo */
    27,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo y_emlrtRTEI = {
    84,              /* lineNo */
    22,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo ab_emlrtRTEI = {
    73,              /* lineNo */
    5,               /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo bb_emlrtRTEI = {
    84,              /* lineNo */
    5,               /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo cb_emlrtRTEI = {
    74,              /* lineNo */
    5,               /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo db_emlrtRTEI = {
    85,              /* lineNo */
    5,               /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo eb_emlrtRTEI = {
    75,              /* lineNo */
    5,               /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo fb_emlrtRTEI = {
    90,              /* lineNo */
    5,               /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo gb_emlrtRTEI = {
    103,             /* lineNo */
    9,               /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo hb_emlrtRTEI = {
    101,             /* lineNo */
    17,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo ib_emlrtRTEI = {
    49,              /* lineNo */
    20,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo jb_emlrtRTEI = {
    49,              /* lineNo */
    71,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo kb_emlrtRTEI = {
    49,              /* lineNo */
    94,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo lb_emlrtRTEI = {
    21,              /* lineNo */
    5,               /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo mb_emlrtRTEI = {
    22,              /* lineNo */
    5,               /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo nb_emlrtRTEI = {
    24,              /* lineNo */
    5,               /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo ob_emlrtRTEI = {
    25,              /* lineNo */
    5,               /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo pb_emlrtRTEI = {
    95,              /* lineNo */
    17,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo vb_emlrtRTEI = {
    99,              /* lineNo */
    16,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

static emlrtRTEInfo wb_emlrtRTEI = {
    96,              /* lineNo */
    17,              /* colNo */
    "runSimulation", /* fName */
    "D:\\02_ACIN_GitLab\\LQG-FP7\\user-interface\\build\\runSimulation.m" /* pName
                                                                           */
};

/* Function Declarations */
static void binary_expand_op(const emlrtStack *sp, emxArray_real_T *in1,
                             const emxArray_real_T *in2, int32_T in3);

static void plus(const emlrtStack *sp, emxArray_real_T *in1,
                 const emxArray_real_T *in2);

/* Function Definitions */
static void binary_expand_op(const emlrtStack *sp, emxArray_real_T *in1,
                             const emxArray_real_T *in2, int32_T in3)
{
  emxArray_real_T *b_in1;
  const real_T *in2_data;
  real_T *b_in1_data;
  real_T *in1_data;
  int32_T i;
  int32_T loop_ub;
  int32_T stride_0_0;
  int32_T stride_1_0;
  in2_data = in2->data;
  in1_data = in1->data;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtConstCTX)sp);
  emxInit_real_T(sp, &b_in1, 1, &wb_emlrtRTEI);
  if (in2->size[0] == 1) {
    loop_ub = in1->size[0];
  } else {
    loop_ub = in2->size[0];
  }
  i = b_in1->size[0];
  b_in1->size[0] = loop_ub;
  emxEnsureCapacity_real_T(sp, b_in1, i, &wb_emlrtRTEI);
  b_in1_data = b_in1->data;
  stride_0_0 = (in1->size[0] != 1);
  stride_1_0 = (in2->size[0] != 1);
  for (i = 0; i < loop_ub; i++) {
    b_in1_data[i] = in1_data[i * stride_0_0] +
                    in2_data[i * stride_1_0 + in2->size[0] * in3];
  }
  i = in1->size[0];
  in1->size[0] = loop_ub;
  emxEnsureCapacity_real_T(sp, in1, i, &wb_emlrtRTEI);
  in1_data = in1->data;
  for (i = 0; i < loop_ub; i++) {
    in1_data[i] = b_in1_data[i];
  }
  emxFree_real_T(sp, &b_in1);
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtConstCTX)sp);
}

static void plus(const emlrtStack *sp, emxArray_real_T *in1,
                 const emxArray_real_T *in2)
{
  emxArray_real_T *b_in1;
  const real_T *in2_data;
  real_T *b_in1_data;
  real_T *in1_data;
  int32_T i;
  int32_T loop_ub;
  int32_T stride_0_0;
  int32_T stride_1_0;
  in2_data = in2->data;
  in1_data = in1->data;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtConstCTX)sp);
  emxInit_real_T(sp, &b_in1, 1, &vb_emlrtRTEI);
  if (in2->size[0] == 1) {
    loop_ub = in1->size[0];
  } else {
    loop_ub = in2->size[0];
  }
  i = b_in1->size[0];
  b_in1->size[0] = loop_ub;
  emxEnsureCapacity_real_T(sp, b_in1, i, &vb_emlrtRTEI);
  b_in1_data = b_in1->data;
  stride_0_0 = (in1->size[0] != 1);
  stride_1_0 = (in2->size[0] != 1);
  for (i = 0; i < loop_ub; i++) {
    b_in1_data[i] = in1_data[i * stride_0_0] + in2_data[i * stride_1_0];
  }
  i = in1->size[0];
  in1->size[0] = loop_ub;
  emxEnsureCapacity_real_T(sp, in1, i, &vb_emlrtRTEI);
  in1_data = in1->data;
  for (i = 0; i < loop_ub; i++) {
    in1_data[i] = b_in1_data[i];
  }
  emxFree_real_T(sp, &b_in1);
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtConstCTX)sp);
}

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
    emxArray_real_T *t_vec_dma)
{
  __m128d r3;
  emlrtStack b_st;
  emlrtStack c_st;
  emlrtStack d_st;
  emlrtStack st;
  emxArray_int32_T *r;
  emxArray_real_T *ADC_sim;
  emxArray_real_T *B_e;
  emxArray_real_T *DAC_sim;
  emxArray_real_T *U_k;
  emxArray_real_T *U_k_tmp;
  emxArray_real_T *V_sim;
  emxArray_real_T *W_k;
  emxArray_real_T *W_sim;
  emxArray_real_T *Xest_k;
  emxArray_real_T *Xest_sim;
  emxArray_real_T *Xtrue_k;
  emxArray_real_T *Xtrue_k_tmp;
  emxArray_real_T *Xtrue_sim;
  emxArray_real_T *knownIns;
  emxArray_real_T *r1;
  emxArray_real_T *r2;
  emxArray_real_T *stdV;
  emxArray_real_T *stdW;
  emxArray_uint32_T *B_p_tmp;
  const real_T *K_LQR_data;
  const real_T *P_V_mat_data;
  const real_T *P_W_mat_data;
  const real_T *idxsADCs_data;
  const real_T *idxsDACs_data;
  const real_T *idxsStates_data;
  const real_T *kest_d_B_data;
  const real_T *ssys_d_B_data;
  real_T t_max;
  real_T *ADC_sim_data;
  real_T *DAC_sim_data;
  real_T *U_k_tmp_data;
  real_T *V_sim_data;
  real_T *W_sim_data;
  real_T *Xest_sim_data;
  real_T *Xtrue_k_tmp_data;
  real_T *Xtrue_sim_data;
  real_T *knownIns_data;
  real_T *r4;
  real_T *stdV_data;
  real_T *stdW_data;
  real_T *t_vec_dma_data;
  int32_T b_i;
  int32_T b_kest_d_B;
  int32_T b_loop_ub;
  int32_T b_ssys_d_B;
  int32_T c_loop_ub;
  int32_T d_loop_ub;
  int32_T e_loop_ub;
  int32_T f_loop_ub;
  int32_T g_loop_ub;
  int32_T h_loop_ub;
  int32_T i;
  int32_T i1;
  int32_T i2;
  int32_T i3;
  int32_T j_loop_ub;
  int32_T loop_ub;
  int32_T loop_ub_tmp;
  int32_T t_vec_sim_size_idx_1;
  int32_T *r6;
  uint32_T *B_p_tmp_data;
  st.prev = sp;
  st.tls = sp->tls;
  b_st.prev = &st;
  b_st.tls = st.tls;
  c_st.prev = &b_st;
  c_st.tls = b_st.tls;
  d_st.prev = &c_st;
  d_st.tls = c_st.tls;
  t_vec_dma_data = t_vec_dma->data;
  K_LQR_data = K_LQR->data;
  kest_d_B_data = kest_d_B->data;
  ssys_d_B_data = ssys_d_B->data;
  P_V_mat_data = P_V_mat->data;
  P_W_mat_data = P_W_mat->data;
  idxsStates_data = idxsStates->data;
  idxsADCs_data = idxsADCs->data;
  idxsDACs_data = idxsDACs->data;
  emlrtHeapReferenceStackEnterFcnR2012b((emlrtConstCTX)sp);
  /* RUNSIMULATION This function runs simulation of an LTI system */
  /*    This function runs simulation of an LTI system */
  t_max = TsDMA * (numOfFrames - 1.0);
  st.site = &emlrtRSI;
  emxInit_real_T(&st, &knownIns, 2, &q_emlrtRTEI);
  knownIns_data = knownIns->data;
  if (muDoubleScalarIsNaN(TsSim) || muDoubleScalarIsNaN(t_max)) {
    t_vec_sim_size_idx_1 = 1;
  } else if ((TsSim == 0.0) || ((t_max > 0.0) && (TsSim < 0.0)) ||
             ((t_max < 0.0) && (TsSim > 0.0))) {
    t_vec_sim_size_idx_1 = 0;
  } else if (muDoubleScalarIsInf(t_max) && muDoubleScalarIsInf(TsSim)) {
    t_vec_sim_size_idx_1 = 1;
  } else if (muDoubleScalarIsInf(TsSim)) {
    t_vec_sim_size_idx_1 = 1;
  } else if (muDoubleScalarFloor(TsSim) == TsSim) {
    t_vec_sim_size_idx_1 = (int32_T)(t_max / TsSim) + 1;
  } else {
    b_st.site = &i_emlrtRSI;
    eml_float_colon(&b_st, TsSim, t_max, knownIns);
    knownIns_data = knownIns->data;
    t_vec_sim_size_idx_1 = knownIns->size[1];
  }
  st.site = &b_emlrtRSI;
  if (muDoubleScalarIsNaN(TsDMA) || muDoubleScalarIsNaN(t_max)) {
    i = t_vec_dma->size[0] * t_vec_dma->size[1];
    t_vec_dma->size[0] = 1;
    t_vec_dma->size[1] = 1;
    emxEnsureCapacity_real_T(&st, t_vec_dma, i, &j_emlrtRTEI);
    t_vec_dma_data = t_vec_dma->data;
    t_vec_dma_data[0] = rtNaN;
  } else if ((TsDMA == 0.0) || ((t_max > 0.0) && (TsDMA < 0.0)) ||
             ((t_max < 0.0) && (TsDMA > 0.0))) {
    t_vec_dma->size[0] = 1;
    t_vec_dma->size[1] = 0;
  } else if (muDoubleScalarIsInf(t_max) && muDoubleScalarIsInf(TsDMA)) {
    i = t_vec_dma->size[0] * t_vec_dma->size[1];
    t_vec_dma->size[0] = 1;
    t_vec_dma->size[1] = 1;
    emxEnsureCapacity_real_T(&st, t_vec_dma, i, &j_emlrtRTEI);
    t_vec_dma_data = t_vec_dma->data;
    t_vec_dma_data[0] = rtNaN;
  } else if (muDoubleScalarIsInf(TsDMA)) {
    i = t_vec_dma->size[0] * t_vec_dma->size[1];
    t_vec_dma->size[0] = 1;
    t_vec_dma->size[1] = 1;
    emxEnsureCapacity_real_T(&st, t_vec_dma, i, &j_emlrtRTEI);
    t_vec_dma_data = t_vec_dma->data;
    t_vec_dma_data[0] = 0.0;
  } else if (muDoubleScalarFloor(TsDMA) == TsDMA) {
    i = t_vec_dma->size[0] * t_vec_dma->size[1];
    t_vec_dma->size[0] = 1;
    loop_ub = (int32_T)(t_max / TsDMA);
    t_vec_dma->size[1] = loop_ub + 1;
    emxEnsureCapacity_real_T(&st, t_vec_dma, i, &j_emlrtRTEI);
    t_vec_dma_data = t_vec_dma->data;
    for (i = 0; i <= loop_ub; i++) {
      t_vec_dma_data[i] = TsDMA * (real_T)i;
    }
  } else {
    b_st.site = &i_emlrtRSI;
    eml_float_colon(&b_st, TsDMA, t_max, t_vec_dma);
    t_vec_dma_data = t_vec_dma->data;
  }
  st.site = &c_emlrtRSI;
  emxInit_real_T(&st, &stdW, 2, &lb_emlrtRTEI);
  i = stdW->size[0] * stdW->size[1];
  stdW->size[0] = P_W_mat->size[0];
  stdW->size[1] = P_W_mat->size[1];
  emxEnsureCapacity_real_T(&st, stdW, i, &k_emlrtRTEI);
  stdW_data = stdW->data;
  loop_ub = P_W_mat->size[0] * P_W_mat->size[1];
  for (i = 0; i < loop_ub; i++) {
    stdW_data[i] = P_W_mat_data[i];
  }
  b_st.site = &m_emlrtRSI;
  chol(&b_st, stdW);
  st.site = &d_emlrtRSI;
  emxInit_real_T(&st, &stdV, 2, &mb_emlrtRTEI);
  i = stdV->size[0] * stdV->size[1];
  stdV->size[0] = P_V_mat->size[0];
  stdV->size[1] = P_V_mat->size[1];
  emxEnsureCapacity_real_T(&st, stdV, i, &k_emlrtRTEI);
  stdV_data = stdV->data;
  loop_ub = P_V_mat->size[0] * P_V_mat->size[1];
  for (i = 0; i < loop_ub; i++) {
    stdV_data[i] = P_V_mat_data[i];
  }
  b_st.site = &m_emlrtRSI;
  chol(&b_st, stdV);
  st.site = &e_emlrtRSI;
  emxInit_real_T(&st, &B_e, 2, &fb_emlrtRTEI);
  b_st.site = &e_emlrtRSI;
  randn(&b_st, stdW->size[0], t_vec_sim_size_idx_1, B_e);
  b_st.site = &w_emlrtRSI;
  if (B_e->size[0] != stdW->size[1]) {
    if (((stdW->size[0] == 1) && (stdW->size[1] == 1)) ||
        ((B_e->size[0] == 1) && (B_e->size[1] == 1))) {
      emlrtErrorWithMessageIdR2018a(
          &b_st, &b_emlrtRTEI, "Coder:toolbox:mtimes_noDynamicScalarExpansion",
          "Coder:toolbox:mtimes_noDynamicScalarExpansion", 0);
    } else {
      emlrtErrorWithMessageIdR2018a(&b_st, &emlrtRTEI, "MATLAB:innerdim",
                                    "MATLAB:innerdim", 0);
    }
  }
  emxInit_real_T(&st, &W_sim, 2, &nb_emlrtRTEI);
  b_st.site = &v_emlrtRSI;
  mtimes(&b_st, stdW, B_e, W_sim);
  W_sim_data = W_sim->data;
  st.site = &f_emlrtRSI;
  b_st.site = &f_emlrtRSI;
  randn(&b_st, stdV->size[0], t_vec_sim_size_idx_1, B_e);
  b_st.site = &w_emlrtRSI;
  if (B_e->size[0] != stdV->size[1]) {
    if (((stdV->size[0] == 1) && (stdV->size[1] == 1)) ||
        ((B_e->size[0] == 1) && (B_e->size[1] == 1))) {
      emlrtErrorWithMessageIdR2018a(
          &b_st, &b_emlrtRTEI, "Coder:toolbox:mtimes_noDynamicScalarExpansion",
          "Coder:toolbox:mtimes_noDynamicScalarExpansion", 0);
    } else {
      emlrtErrorWithMessageIdR2018a(&b_st, &emlrtRTEI, "MATLAB:innerdim",
                                    "MATLAB:innerdim", 0);
    }
  }
  emxInit_real_T(&st, &V_sim, 2, &ob_emlrtRTEI);
  b_st.site = &v_emlrtRSI;
  mtimes(&b_st, stdV, B_e, V_sim);
  V_sim_data = V_sim->data;
  /* X_sim = zeros(NStates,numOfSimSteps); */
  emxInit_real_T(sp, &ADC_sim, 2, &l_emlrtRTEI);
  i = ADC_sim->size[0] * ADC_sim->size[1];
  ADC_sim->size[0] = 2;
  ADC_sim->size[1] = t_vec_sim_size_idx_1;
  emxEnsureCapacity_real_T(sp, ADC_sim, i, &l_emlrtRTEI);
  ADC_sim_data = ADC_sim->data;
  loop_ub_tmp = t_vec_sim_size_idx_1 << 1;
  for (i = 0; i < loop_ub_tmp; i++) {
    ADC_sim_data[i] = 0.0;
  }
  emxInit_real_T(sp, &DAC_sim, 2, &m_emlrtRTEI);
  i = DAC_sim->size[0] * DAC_sim->size[1];
  DAC_sim->size[0] = 2;
  DAC_sim->size[1] = t_vec_sim_size_idx_1;
  emxEnsureCapacity_real_T(sp, DAC_sim, i, &m_emlrtRTEI);
  DAC_sim_data = DAC_sim->data;
  for (i = 0; i < loop_ub_tmp; i++) {
    DAC_sim_data[i] = 0.0;
  }
  emxInit_real_T(sp, &Xtrue_sim, 2, &n_emlrtRTEI);
  i = Xtrue_sim->size[0] * Xtrue_sim->size[1];
  Xtrue_sim->size[0] = 7;
  Xtrue_sim->size[1] = t_vec_sim_size_idx_1;
  emxEnsureCapacity_real_T(sp, Xtrue_sim, i, &n_emlrtRTEI);
  Xtrue_sim_data = Xtrue_sim->data;
  loop_ub_tmp = 7 * t_vec_sim_size_idx_1;
  for (i = 0; i < loop_ub_tmp; i++) {
    Xtrue_sim_data[i] = 0.0;
  }
  emxInit_real_T(sp, &Xest_sim, 2, &o_emlrtRTEI);
  i = Xest_sim->size[0] * Xest_sim->size[1];
  Xest_sim->size[0] = 7;
  Xest_sim->size[1] = t_vec_sim_size_idx_1;
  emxEnsureCapacity_real_T(sp, Xest_sim, i, &o_emlrtRTEI);
  Xest_sim_data = Xest_sim->data;
  for (i = 0; i < loop_ub_tmp; i++) {
    Xest_sim_data[i] = 0.0;
  }
  if (!(numOfFrames >= 0.0)) {
    emlrtNonNegativeCheckR2012b(numOfFrames, &b_emlrtDCI, (emlrtConstCTX)sp);
  }
  i = (int32_T)muDoubleScalarFloor(numOfFrames);
  if (numOfFrames != i) {
    emlrtIntegerCheckR2012b(numOfFrames, &emlrtDCI, (emlrtConstCTX)sp);
  }
  if (t_vec_sim_size_idx_1 < 1) {
    emlrtDynamicBoundsCheckR2012b(1, 1, t_vec_sim_size_idx_1, &l_emlrtBCI,
                                  (emlrtConstCTX)sp);
  }
  for (i = 0; i < 7; i++) {
    Xtrue_sim_data[i] = Xtrue_0[i];
  }
  for (i = 0; i < 7; i++) {
    Xest_sim_data[i] = Xest_0[i];
  }
  if (t_vec_sim_size_idx_1 - 2 >= 0) {
    b_loop_ub = idxsStates->size[1];
    c_loop_ub = W_sim->size[0];
    d_loop_ub = idxsDACs->size[1];
    if (B_mat->size[1] < 1) {
      knownIns->size[0] = 1;
      knownIns->size[1] = 0;
    } else {
      i = knownIns->size[0] * knownIns->size[1];
      knownIns->size[0] = 1;
      knownIns->size[1] = B_mat->size[1];
      emxEnsureCapacity_real_T(sp, knownIns, i, &q_emlrtRTEI);
      knownIns_data = knownIns->data;
      loop_ub = B_mat->size[1] - 1;
      for (i = 0; i <= loop_ub; i++) {
        knownIns_data[i] = (real_T)i + 1.0;
      }
    }
    e_loop_ub = knownIns->size[1];
    b_ssys_d_B = ssys_d_B->size[1];
    if ((uint32_T)knownIns->size[1] + 1U > (uint32_T)ssys_d_B->size[1]) {
      i1 = 0;
      i2 = 0;
    } else {
      if (((int32_T)((uint32_T)knownIns->size[1] + 1U) < 1) ||
          ((int32_T)((uint32_T)knownIns->size[1] + 1U) > ssys_d_B->size[1])) {
        emlrtDynamicBoundsCheckR2012b(
            (int32_T)((uint32_T)knownIns->size[1] + 1U), 1, ssys_d_B->size[1],
            &b_emlrtBCI, (emlrtConstCTX)sp);
      }
      i1 = knownIns->size[1];
      if (ssys_d_B->size[1] < 1) {
        emlrtDynamicBoundsCheckR2012b(ssys_d_B->size[1], 1, ssys_d_B->size[1],
                                      &emlrtBCI, (emlrtConstCTX)sp);
      }
      i2 = ssys_d_B->size[1];
    }
    f_loop_ub = i2 - i1;
    b_kest_d_B = kest_d_B->size[1];
    g_loop_ub = idxsStates->size[1];
    h_loop_ub = idxsADCs->size[1];
  }
  emxInit_int32_T(sp, &r, &ib_emlrtRTEI);
  emxInit_real_T(sp, &Xtrue_k, 1, &r_emlrtRTEI);
  emxInit_real_T(sp, &Xest_k, 1, &s_emlrtRTEI);
  emxInit_real_T(sp, &W_k, 1, &u_emlrtRTEI);
  emxInit_real_T(sp, &U_k, 1, &w_emlrtRTEI);
  emxInit_real_T(sp, &r1, 1, &pb_emlrtRTEI);
  emxInit_real_T(sp, &r2, 1, &pb_emlrtRTEI);
  emxInit_real_T(sp, &Xtrue_k_tmp, 1, &p_emlrtRTEI);
  emxInit_uint32_T(sp, &B_p_tmp, &y_emlrtRTEI);
  emxInit_real_T(sp, &U_k_tmp, 1, &v_emlrtRTEI);
  for (b_i = 0; b_i <= t_vec_sim_size_idx_1 - 2; b_i++) {
    __m128d r5;
    int32_T i_loop_ub;
    int32_T k_loop_ub;
    st.site = &g_emlrtRSI;
    loop_ub = idxsStates->size[1];
    i = Xtrue_k_tmp->size[0];
    Xtrue_k_tmp->size[0] = idxsStates->size[1];
    emxEnsureCapacity_real_T(&st, Xtrue_k_tmp, i, &p_emlrtRTEI);
    Xtrue_k_tmp_data = Xtrue_k_tmp->data;
    for (i = 0; i < b_loop_ub; i++) {
      Xtrue_k_tmp_data[i] = idxsStates_data[i];
    }
    if (b_i + 1 > Xtrue_sim->size[1]) {
      emlrtDynamicBoundsCheckR2012b(b_i + 1, 1, Xtrue_sim->size[1], &k_emlrtBCI,
                                    &st);
    }
    i = Xtrue_k->size[0];
    Xtrue_k->size[0] = idxsStates->size[1];
    emxEnsureCapacity_real_T(&st, Xtrue_k, i, &r_emlrtRTEI);
    stdW_data = Xtrue_k->data;
    for (i = 0; i < loop_ub; i++) {
      if (Xtrue_k_tmp_data[i] !=
          (int32_T)muDoubleScalarFloor(Xtrue_k_tmp_data[i])) {
        emlrtIntegerCheckR2012b(Xtrue_k_tmp_data[i], &c_emlrtDCI, &st);
      }
      i3 = (int32_T)Xtrue_k_tmp_data[i];
      if ((i3 < 1) || (i3 > 7)) {
        emlrtDynamicBoundsCheckR2012b(i3, 1, 7, &m_emlrtBCI, &st);
      }
      stdW_data[i] = Xtrue_sim_data[(i3 + 7 * b_i) - 1];
    }
    if (b_i + 1 > Xtrue_sim->size[1]) {
      emlrtDynamicBoundsCheckR2012b(b_i + 1, 1, Xtrue_sim->size[1], &j_emlrtBCI,
                                    &st);
    }
    i = Xest_k->size[0];
    Xest_k->size[0] = idxsStates->size[1];
    emxEnsureCapacity_real_T(&st, Xest_k, i, &s_emlrtRTEI);
    stdV_data = Xest_k->data;
    for (i = 0; i < loop_ub; i++) {
      stdV_data[i] =
          Xest_sim_data[((int32_T)Xtrue_k_tmp_data[i] + 7 * b_i) - 1];
    }
    if (b_i + 1 > W_sim->size[1]) {
      emlrtDynamicBoundsCheckR2012b(b_i + 1, 1, W_sim->size[1], &i_emlrtBCI,
                                    &st);
    }
    i = W_k->size[0];
    W_k->size[0] = W_sim->size[0];
    emxEnsureCapacity_real_T(&st, W_k, i, &u_emlrtRTEI);
    stdV_data = W_k->data;
    for (i = 0; i < c_loop_ub; i++) {
      stdV_data[i] = W_sim_data[i + W_sim->size[0] * b_i];
    }
    if (b_i + 1 > V_sim->size[1]) {
      emlrtDynamicBoundsCheckR2012b(b_i + 1, 1, V_sim->size[1], &h_emlrtBCI,
                                    &st);
    }
    i_loop_ub = idxsDACs->size[1];
    i = U_k_tmp->size[0];
    U_k_tmp->size[0] = idxsDACs->size[1];
    emxEnsureCapacity_real_T(&st, U_k_tmp, i, &v_emlrtRTEI);
    U_k_tmp_data = U_k_tmp->data;
    for (i = 0; i < d_loop_ub; i++) {
      U_k_tmp_data[i] = idxsDACs_data[i];
    }
    if (b_i + 1 > Xtrue_sim->size[1]) {
      emlrtDynamicBoundsCheckR2012b(b_i + 1, 1, Xtrue_sim->size[1], &g_emlrtBCI,
                                    &st);
    }
    i = U_k->size[0];
    U_k->size[0] = idxsDACs->size[1];
    emxEnsureCapacity_real_T(&st, U_k, i, &w_emlrtRTEI);
    stdV_data = U_k->data;
    for (i = 0; i < i_loop_ub; i++) {
      if (U_k_tmp_data[i] != (int32_T)muDoubleScalarFloor(U_k_tmp_data[i])) {
        emlrtIntegerCheckR2012b(U_k_tmp_data[i], &d_emlrtDCI, &st);
      }
      i3 = (int32_T)U_k_tmp_data[i];
      if ((i3 < 1) || (i3 > 2)) {
        emlrtDynamicBoundsCheckR2012b(i3, 1, 2, &n_emlrtBCI, &st);
      }
      stdV_data[i] = DAC_sim_data[(i3 + 2 * b_i) - 1];
    }
    k_loop_ub = knownIns->size[1];
    i = B_p_tmp->size[0];
    B_p_tmp->size[0] = knownIns->size[1];
    emxEnsureCapacity_uint32_T(&st, B_p_tmp, i, &y_emlrtRTEI);
    B_p_tmp_data = B_p_tmp->data;
    for (i = 0; i < e_loop_ub; i++) {
      B_p_tmp_data[i] = (uint32_T)knownIns_data[i];
    }
    j_loop_ub = ssys_d_B->size[0];
    i = stdW->size[0] * stdW->size[1];
    stdW->size[0] = ssys_d_B->size[0];
    stdW->size[1] = knownIns->size[1];
    emxEnsureCapacity_real_T(&st, stdW, i, &bb_emlrtRTEI);
    stdW_data = stdW->data;
    for (i = 0; i < k_loop_ub; i++) {
      for (i3 = 0; i3 < j_loop_ub; i3++) {
        if (((int32_T)B_p_tmp_data[i] < 1) ||
            ((int32_T)B_p_tmp_data[i] > b_ssys_d_B)) {
          emlrtDynamicBoundsCheckR2012b((int32_T)B_p_tmp_data[i], 1, b_ssys_d_B,
                                        &o_emlrtBCI, &st);
        }
        stdW_data[i3 + stdW->size[0] * i] =
            ssys_d_B_data[i3 +
                          ssys_d_B->size[0] * ((int32_T)B_p_tmp_data[i] - 1)];
      }
    }
    i = stdV->size[0] * stdV->size[1];
    stdV->size[0] = ssys_d_B->size[0];
    i3 = i2 - i1;
    stdV->size[1] = i3;
    emxEnsureCapacity_real_T(&st, stdV, i, &db_emlrtRTEI);
    stdV_data = stdV->data;
    for (i = 0; i < f_loop_ub; i++) {
      for (loop_ub_tmp = 0; loop_ub_tmp < j_loop_ub; loop_ub_tmp++) {
        stdV_data[loop_ub_tmp + stdV->size[0] * i] =
            ssys_d_B_data[loop_ub_tmp + ssys_d_B->size[0] * (i1 + i)];
      }
    }
    j_loop_ub = kest_d_B->size[0];
    i = B_e->size[0] * B_e->size[1];
    B_e->size[0] = kest_d_B->size[0];
    B_e->size[1] = knownIns->size[1];
    emxEnsureCapacity_real_T(&st, B_e, i, &fb_emlrtRTEI);
    stdV_data = B_e->data;
    for (i = 0; i < k_loop_ub; i++) {
      for (loop_ub_tmp = 0; loop_ub_tmp < j_loop_ub; loop_ub_tmp++) {
        if (((int32_T)B_p_tmp_data[i] < 1) ||
            ((int32_T)B_p_tmp_data[i] > b_kest_d_B)) {
          emlrtDynamicBoundsCheckR2012b((int32_T)B_p_tmp_data[i], 1, b_kest_d_B,
                                        &p_emlrtBCI, &st);
        }
        stdV_data[loop_ub_tmp + B_e->size[0] * i] =
            kest_d_B_data[loop_ub_tmp +
                          kest_d_B->size[0] * ((int32_T)B_p_tmp_data[i] - 1)];
      }
    }
    /*  Advance plant one timestep */
    b_st.site = &ab_emlrtRSI;
    c_st.site = &w_emlrtRSI;
    dynamic_size_checks(&c_st, ssys_d_A, Xtrue_k, ssys_d_A->size[1],
                        Xtrue_k_tmp->size[0]);
    c_st.site = &v_emlrtRSI;
    b_mtimes(&c_st, ssys_d_A, Xtrue_k, r1);
    stdV_data = r1->data;
    b_st.site = &ab_emlrtRSI;
    c_st.site = &w_emlrtRSI;
    dynamic_size_checks(&c_st, stdW, U_k, B_p_tmp->size[0], U_k_tmp->size[0]);
    c_st.site = &v_emlrtRSI;
    b_mtimes(&c_st, stdW, U_k, r2);
    r4 = r2->data;
    k_loop_ub = r1->size[0];
    if ((r1->size[0] != r2->size[0]) &&
        ((r1->size[0] != 1) && (r2->size[0] != 1))) {
      emlrtDimSizeImpxCheckR2021b(r1->size[0], r2->size[0], &c_emlrtECI, &st);
    }
    if (r1->size[0] == r2->size[0]) {
      loop_ub_tmp = (r1->size[0] / 2) << 1;
      j_loop_ub = loop_ub_tmp - 2;
      for (i = 0; i <= j_loop_ub; i += 2) {
        r3 = _mm_loadu_pd(&stdV_data[i]);
        r5 = _mm_loadu_pd(&r4[i]);
        _mm_storeu_pd(&stdV_data[i], _mm_add_pd(r3, r5));
      }
      for (i = loop_ub_tmp; i < k_loop_ub; i++) {
        stdV_data[i] += r4[i];
      }
    } else {
      b_st.site = &ab_emlrtRSI;
      plus(&b_st, r1, r2);
      stdV_data = r1->data;
    }
    b_st.site = &ab_emlrtRSI;
    c_st.site = &w_emlrtRSI;
    dynamic_size_checks(&c_st, stdV, W_k, i3, W_sim->size[0]);
    c_st.site = &v_emlrtRSI;
    b_mtimes(&c_st, stdV, W_k, r2);
    r4 = r2->data;
    k_loop_ub = r1->size[0];
    if ((r1->size[0] != r2->size[0]) &&
        ((r1->size[0] != 1) && (r2->size[0] != 1))) {
      emlrtDimSizeImpxCheckR2021b(r1->size[0], r2->size[0], &c_emlrtECI, &st);
    }
    if (r1->size[0] == r2->size[0]) {
      loop_ub_tmp = (r1->size[0] / 2) << 1;
      j_loop_ub = loop_ub_tmp - 2;
      for (i = 0; i <= j_loop_ub; i += 2) {
        r3 = _mm_loadu_pd(&stdV_data[i]);
        r5 = _mm_loadu_pd(&r4[i]);
        _mm_storeu_pd(&stdV_data[i], _mm_add_pd(r3, r5));
      }
      for (i = loop_ub_tmp; i < k_loop_ub; i++) {
        stdV_data[i] += r4[i];
      }
    } else {
      b_st.site = &ab_emlrtRSI;
      plus(&b_st, r1, r2);
      stdV_data = r1->data;
    }
    b_st.site = &bb_emlrtRSI;
    c_st.site = &w_emlrtRSI;
    dynamic_size_checks(&c_st, ssys_d_C, r1, ssys_d_C->size[1], r1->size[0]);
    c_st.site = &v_emlrtRSI;
    b_mtimes(&c_st, ssys_d_C, r1, r2);
    r4 = r2->data;
    k_loop_ub = r2->size[0];
    if ((r2->size[0] != V_sim->size[0]) &&
        ((r2->size[0] != 1) && (V_sim->size[0] != 1))) {
      emlrtDimSizeImpxCheckR2021b(r2->size[0], V_sim->size[0], &b_emlrtECI,
                                  &st);
    }
    if (r2->size[0] == V_sim->size[0]) {
      loop_ub_tmp = (r2->size[0] / 2) << 1;
      j_loop_ub = loop_ub_tmp - 2;
      for (i = 0; i <= j_loop_ub; i += 2) {
        r3 = _mm_loadu_pd(&r4[i]);
        r5 = _mm_loadu_pd(&V_sim_data[i + V_sim->size[0] * b_i]);
        _mm_storeu_pd(&r4[i], _mm_add_pd(r3, r5));
      }
      for (i = loop_ub_tmp; i < k_loop_ub; i++) {
        r4[i] += V_sim_data[i + V_sim->size[0] * b_i];
      }
    } else {
      b_st.site = &bb_emlrtRSI;
      binary_expand_op(&b_st, r2, V_sim, b_i);
      r4 = r2->data;
    }
    /*  Get new state estimate and feedback action */
    b_st.site = &cb_emlrtRSI;
    c_st.site = &w_emlrtRSI;
    dynamic_size_checks(&c_st, kest_d_A, Xest_k, kest_d_A->size[1],
                        Xtrue_k_tmp->size[0]);
    c_st.site = &v_emlrtRSI;
    b_mtimes(&c_st, kest_d_A, Xest_k, Xtrue_k_tmp);
    Xtrue_k_tmp_data = Xtrue_k_tmp->data;
    b_st.site = &cb_emlrtRSI;
    c_st.site = &w_emlrtRSI;
    dynamic_size_checks(&c_st, B_e, U_k, B_p_tmp->size[0], U_k_tmp->size[0]);
    c_st.site = &v_emlrtRSI;
    b_mtimes(&c_st, B_e, U_k, Xtrue_k);
    stdW_data = Xtrue_k->data;
    k_loop_ub = Xtrue_k_tmp->size[0];
    if ((Xtrue_k_tmp->size[0] != Xtrue_k->size[0]) &&
        ((Xtrue_k_tmp->size[0] != 1) && (Xtrue_k->size[0] != 1))) {
      emlrtDimSizeImpxCheckR2021b(Xtrue_k_tmp->size[0], Xtrue_k->size[0],
                                  &emlrtECI, &st);
    }
    if (Xtrue_k_tmp->size[0] == Xtrue_k->size[0]) {
      loop_ub_tmp = (Xtrue_k_tmp->size[0] / 2) << 1;
      j_loop_ub = loop_ub_tmp - 2;
      for (i = 0; i <= j_loop_ub; i += 2) {
        r3 = _mm_loadu_pd(&Xtrue_k_tmp_data[i]);
        r5 = _mm_loadu_pd(&stdW_data[i]);
        _mm_storeu_pd(&Xtrue_k_tmp_data[i], _mm_add_pd(r3, r5));
      }
      for (i = loop_ub_tmp; i < k_loop_ub; i++) {
        Xtrue_k_tmp_data[i] += stdW_data[i];
      }
    } else {
      b_st.site = &cb_emlrtRSI;
      plus(&b_st, Xtrue_k_tmp, Xtrue_k);
      Xtrue_k_tmp_data = Xtrue_k_tmp->data;
    }
    b_st.site = &cb_emlrtRSI;
    c_st.site = &w_emlrtRSI;
    dynamic_size_checks(&c_st, L_d_mat, r2, L_d_mat->size[1], r2->size[0]);
    c_st.site = &v_emlrtRSI;
    b_mtimes(&c_st, L_d_mat, r2, Xtrue_k);
    stdW_data = Xtrue_k->data;
    k_loop_ub = Xtrue_k_tmp->size[0];
    if ((Xtrue_k_tmp->size[0] != Xtrue_k->size[0]) &&
        ((Xtrue_k_tmp->size[0] != 1) && (Xtrue_k->size[0] != 1))) {
      emlrtDimSizeImpxCheckR2021b(Xtrue_k_tmp->size[0], Xtrue_k->size[0],
                                  &emlrtECI, &st);
    }
    if (Xtrue_k_tmp->size[0] == Xtrue_k->size[0]) {
      loop_ub_tmp = (Xtrue_k_tmp->size[0] / 2) << 1;
      j_loop_ub = loop_ub_tmp - 2;
      for (i = 0; i <= j_loop_ub; i += 2) {
        r3 = _mm_loadu_pd(&Xtrue_k_tmp_data[i]);
        r5 = _mm_loadu_pd(&stdW_data[i]);
        _mm_storeu_pd(&Xtrue_k_tmp_data[i], _mm_add_pd(r3, r5));
      }
      for (i = loop_ub_tmp; i < k_loop_ub; i++) {
        Xtrue_k_tmp_data[i] += stdW_data[i];
      }
    } else {
      b_st.site = &cb_emlrtRSI;
      plus(&b_st, Xtrue_k_tmp, Xtrue_k);
      Xtrue_k_tmp_data = Xtrue_k_tmp->data;
    }
    if (FbEnable) {
      b_st.site = &db_emlrtRSI;
      i = stdW->size[0] * stdW->size[1];
      stdW->size[0] = K_LQR->size[0];
      stdW->size[1] = K_LQR->size[1];
      emxEnsureCapacity_real_T(&b_st, stdW, i, &hb_emlrtRTEI);
      stdW_data = stdW->data;
      k_loop_ub = K_LQR->size[0] * K_LQR->size[1];
      loop_ub_tmp = (k_loop_ub / 2) << 1;
      j_loop_ub = loop_ub_tmp - 2;
      for (i = 0; i <= j_loop_ub; i += 2) {
        _mm_storeu_pd(&stdW_data[i], _mm_mul_pd(_mm_loadu_pd(&K_LQR_data[i]),
                                                _mm_set1_pd(-1.0)));
      }
      for (i = loop_ub_tmp; i < k_loop_ub; i++) {
        stdW_data[i] = -K_LQR_data[i];
      }
      c_st.site = &w_emlrtRSI;
      dynamic_size_checks(&c_st, stdW, Xtrue_k_tmp, stdW->size[1],
                          Xtrue_k_tmp->size[0]);
      c_st.site = &v_emlrtRSI;
      b_mtimes(&c_st, stdW, Xtrue_k_tmp, Xtrue_k);
      stdW_data = Xtrue_k->data;
    } else {
      loop_ub_tmp = K_LQR->size[0];
      i = Xtrue_k->size[0];
      Xtrue_k->size[0] = K_LQR->size[0];
      emxEnsureCapacity_real_T(&st, Xtrue_k, i, &gb_emlrtRTEI);
      stdW_data = Xtrue_k->data;
      for (i = 0; i < loop_ub_tmp; i++) {
        stdW_data[i] = 0.0;
      }
    }
    i = r->size[0];
    r->size[0] = idxsStates->size[1];
    emxEnsureCapacity_int32_T(sp, r, i, &ib_emlrtRTEI);
    r6 = r->data;
    for (i = 0; i < g_loop_ub; i++) {
      r6[i] = (int32_T)idxsStates_data[i] - 1;
    }
    if (b_i + 2 > Xtrue_sim->size[1]) {
      emlrtDynamicBoundsCheckR2012b(b_i + 2, 1, Xtrue_sim->size[1], &f_emlrtBCI,
                                    (emlrtConstCTX)sp);
    }
    emlrtSubAssignSizeCheckR2012b(&idxsStates->size[1], 1, &r1->size[0], 1,
                                  &g_emlrtECI, (emlrtCTX)sp);
    for (i = 0; i < loop_ub; i++) {
      Xtrue_sim_data[r6[i] + 7 * (b_i + 1)] = stdV_data[i];
    }
    if (b_i + 2 > Xtrue_sim->size[1]) {
      emlrtDynamicBoundsCheckR2012b(b_i + 2, 1, Xtrue_sim->size[1], &e_emlrtBCI,
                                    (emlrtConstCTX)sp);
    }
    emlrtSubAssignSizeCheckR2012b(&idxsStates->size[1], 1,
                                  &Xtrue_k_tmp->size[0], 1, &f_emlrtECI,
                                  (emlrtCTX)sp);
    for (i = 0; i < loop_ub; i++) {
      Xest_sim_data[r6[i] + 7 * (b_i + 1)] = Xtrue_k_tmp_data[i];
    }
    i = r->size[0];
    r->size[0] = idxsDACs->size[1];
    emxEnsureCapacity_int32_T(sp, r, i, &jb_emlrtRTEI);
    r6 = r->data;
    for (i = 0; i < i_loop_ub; i++) {
      r6[i] = (int32_T)U_k_tmp_data[i] - 1;
    }
    if (b_i + 2 > Xtrue_sim->size[1]) {
      emlrtDynamicBoundsCheckR2012b(b_i + 2, 1, Xtrue_sim->size[1], &d_emlrtBCI,
                                    (emlrtConstCTX)sp);
    }
    emlrtSubAssignSizeCheckR2012b(&idxsDACs->size[1], 1, &Xtrue_k->size[0], 1,
                                  &e_emlrtECI, (emlrtCTX)sp);
    for (i = 0; i < i_loop_ub; i++) {
      DAC_sim_data[r6[i] + 2 * (b_i + 1)] = stdW_data[i];
    }
    i = r->size[0];
    r->size[0] = idxsADCs->size[1];
    emxEnsureCapacity_int32_T(sp, r, i, &kb_emlrtRTEI);
    r6 = r->data;
    for (i = 0; i < h_loop_ub; i++) {
      if (idxsADCs_data[i] != (int32_T)muDoubleScalarFloor(idxsADCs_data[i])) {
        emlrtIntegerCheckR2012b(idxsADCs_data[i], &e_emlrtDCI,
                                (emlrtConstCTX)sp);
      }
      i3 = (int32_T)idxsADCs_data[i];
      if ((i3 < 1) || (i3 > 2)) {
        emlrtDynamicBoundsCheckR2012b(i3, 1, 2, &r_emlrtBCI, (emlrtConstCTX)sp);
      }
      r6[i] = i3 - 1;
    }
    if (b_i + 1 > Xtrue_sim->size[1]) {
      emlrtDynamicBoundsCheckR2012b(b_i + 1, 1, Xtrue_sim->size[1], &c_emlrtBCI,
                                    (emlrtConstCTX)sp);
    }
    loop_ub = r->size[0];
    emlrtSubAssignSizeCheckR2012b(&r->size[0], 1, &r2->size[0], 1, &d_emlrtECI,
                                  (emlrtCTX)sp);
    for (i = 0; i < loop_ub; i++) {
      ADC_sim_data[r6[i] + 2 * b_i] = r4[i];
    }
    if (*emlrtBreakCheckR2012bFlagVar != 0) {
      emlrtBreakCheckR2012b((emlrtConstCTX)sp);
    }
  }
  emxFree_real_T(sp, &U_k_tmp);
  emxFree_uint32_T(sp, &B_p_tmp);
  emxFree_real_T(sp, &Xtrue_k_tmp);
  emxFree_real_T(sp, &r2);
  emxFree_real_T(sp, &r1);
  emxFree_real_T(sp, &B_e);
  emxFree_real_T(sp, &U_k);
  emxFree_real_T(sp, &W_k);
  emxFree_real_T(sp, &Xest_k);
  emxFree_int32_T(sp, &r);
  emxFree_real_T(sp, &Xtrue_sim);
  emxFree_real_T(sp, &V_sim);
  emxFree_real_T(sp, &W_sim);
  emxFree_real_T(sp, &stdV);
  emxFree_real_T(sp, &stdW);
  /*  OPTION A: Zero-Order Hold (simplest) */
  /*  for j = 1:numOfFrames */
  /*      % Find which sim step contains this DMA time */
  /*      idx = find(t_vec_dma(j) >= t_vec_sim,1,"first"); */
  /*   */
  /*      %[~, idx] = min(abs(sim_times - dma_times(j))); */
  /*      ADC_mat(:, j) = ADC_sim(:, idx); */
  /*      DAC_mat(:, j) = DAC_sim(:, idx); */
  /*      Xest_mat(:, j) = Xest_sim(:, idx); */
  /*  end */
  /*  1. Calculate all indices at once (Deterministic & Vectorized) */
  /*  Use floor if you want the "last available" sample, or round for "nearest"
   */
  st.site = &h_emlrtRSI;
  i = knownIns->size[0] * knownIns->size[1];
  knownIns->size[0] = 1;
  loop_ub = t_vec_dma->size[1];
  knownIns->size[1] = t_vec_dma->size[1];
  emxEnsureCapacity_real_T(&st, knownIns, i, &t_emlrtRTEI);
  knownIns_data = knownIns->data;
  loop_ub_tmp = (t_vec_dma->size[1] / 2) << 1;
  j_loop_ub = loop_ub_tmp - 2;
  for (i = 0; i <= j_loop_ub; i += 2) {
    r3 = _mm_loadu_pd(&t_vec_dma_data[i]);
    _mm_storeu_pd(&knownIns_data[i], _mm_div_pd(r3, _mm_set1_pd(TsSim)));
  }
  for (i = loop_ub_tmp; i < loop_ub; i++) {
    knownIns_data[i] = t_vec_dma_data[i] / TsSim;
  }
  b_st.site = &eb_emlrtRSI;
  j_loop_ub = knownIns->size[1];
  c_st.site = &fb_emlrtRSI;
  if (knownIns->size[1] > 2147483646) {
    d_st.site = &l_emlrtRSI;
    check_forloop_overflow_error(&d_st);
  }
  for (loop_ub_tmp = 0; loop_ub_tmp < j_loop_ub; loop_ub_tmp++) {
    knownIns_data[loop_ub_tmp] =
        muDoubleScalarFloor(knownIns_data[loop_ub_tmp]);
  }
  /*  2. Safety: Clamp indices to be within the bounds of the simulation array
   */
  /*  3. Vectorized Assignment (No loop needed) */
  i = Xtrue_k->size[0];
  Xtrue_k->size[0] = knownIns->size[1];
  emxEnsureCapacity_real_T(sp, Xtrue_k, i, &x_emlrtRTEI);
  stdW_data = Xtrue_k->data;
  for (i = 0; i < j_loop_ub; i++) {
    t_max = knownIns_data[i] + 1.0;
    loop_ub_tmp = ADC_sim->size[1];
    stdW_data[i] =
        muDoubleScalarMax(1.0, muDoubleScalarMin(t_max, loop_ub_tmp));
  }
  i = ADC_mat->size[0] * ADC_mat->size[1];
  ADC_mat->size[0] = 2;
  ADC_mat->size[1] = knownIns->size[1];
  emxEnsureCapacity_real_T(sp, ADC_mat, i, &ab_emlrtRTEI);
  stdV_data = ADC_mat->data;
  for (i = 0; i < j_loop_ub; i++) {
    i1 = (int32_T)muDoubleScalarFloor(stdW_data[i]);
    if (stdW_data[i] != i1) {
      emlrtIntegerCheckR2012b(stdW_data[i], &f_emlrtDCI, (emlrtConstCTX)sp);
    }
    i2 = (int32_T)stdW_data[i];
    if ((i2 < 1) || (i2 > ADC_sim->size[1])) {
      emlrtDynamicBoundsCheckR2012b(i2, 1, ADC_sim->size[1], &t_emlrtBCI,
                                    (emlrtConstCTX)sp);
    }
    i3 = 2 * (i2 - 1);
    stdV_data[2 * i] = ADC_sim_data[i3];
    if (stdW_data[i] != i1) {
      emlrtIntegerCheckR2012b(stdW_data[i], &f_emlrtDCI, (emlrtConstCTX)sp);
    }
    if (i2 > ADC_sim->size[1]) {
      emlrtDynamicBoundsCheckR2012b(i2, 1, ADC_sim->size[1], &t_emlrtBCI,
                                    (emlrtConstCTX)sp);
    }
    stdV_data[2 * i + 1] = ADC_sim_data[i3 + 1];
  }
  emxFree_real_T(sp, &ADC_sim);
  i = DAC_mat->size[0] * DAC_mat->size[1];
  DAC_mat->size[0] = 2;
  DAC_mat->size[1] = knownIns->size[1];
  emxEnsureCapacity_real_T(sp, DAC_mat, i, &cb_emlrtRTEI);
  stdV_data = DAC_mat->data;
  for (i = 0; i < j_loop_ub; i++) {
    boolean_T b;
    i1 = (int32_T)stdW_data[i];
    b = ((i1 < 1) || (i1 > DAC_sim->size[1]));
    if (b) {
      emlrtDynamicBoundsCheckR2012b(i1, 1, DAC_sim->size[1], &s_emlrtBCI,
                                    (emlrtConstCTX)sp);
    }
    i1 = 2 * (i1 - 1);
    stdV_data[2 * i] = DAC_sim_data[i1];
    stdV_data[2 * i + 1] = DAC_sim_data[i1 + 1];
  }
  emxFree_real_T(sp, &DAC_sim);
  i = Xest_mat->size[0] * Xest_mat->size[1];
  Xest_mat->size[0] = 7;
  Xest_mat->size[1] = knownIns->size[1];
  emxFree_real_T(sp, &knownIns);
  emxEnsureCapacity_real_T(sp, Xest_mat, i, &eb_emlrtRTEI);
  stdV_data = Xest_mat->data;
  for (i = 0; i < j_loop_ub; i++) {
    for (i1 = 0; i1 < 7; i1++) {
      i2 = (int32_T)stdW_data[i];
      if ((i2 < 1) || (i2 > Xest_sim->size[1])) {
        emlrtDynamicBoundsCheckR2012b(i2, 1, Xest_sim->size[1], &q_emlrtBCI,
                                      (emlrtConstCTX)sp);
      }
      stdV_data[i1 + 7 * i] = Xest_sim_data[i1 + 7 * (i2 - 1)];
    }
  }
  emxFree_real_T(sp, &Xtrue_k);
  emxFree_real_T(sp, &Xest_sim);
  emlrtHeapReferenceStackLeaveFcnR2012b((emlrtConstCTX)sp);
}

/* End of code generation (runSimulation.c) */
