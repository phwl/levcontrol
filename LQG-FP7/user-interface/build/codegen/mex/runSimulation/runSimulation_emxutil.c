/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * runSimulation_emxutil.c
 *
 * Code generation for function 'runSimulation_emxutil'
 *
 */

/* Include files */
#include "runSimulation_emxutil.h"
#include "rt_nonfinite.h"
#include "runSimulation_types.h"
#include <string.h>

/* Function Definitions */
void emxEnsureCapacity_int32_T(const emlrtStack *sp, emxArray_int32_T *emxArray,
                               int32_T oldNumel,
                               const emlrtRTEInfo *srcLocation)
{
  int32_T i;
  int32_T newNumel;
  void *newData;
  if (oldNumel < 0) {
    oldNumel = 0;
  }
  newNumel = 1;
  for (i = 0; i < emxArray->numDimensions; i++) {
    newNumel = (int32_T)emlrtSizeMulR2012b((size_t)(uint32_T)newNumel,
                                           (size_t)(uint32_T)emxArray->size[i],
                                           srcLocation, (emlrtCTX)sp);
  }
  if (newNumel > emxArray->allocatedSize) {
    i = emxArray->allocatedSize;
    if (i < 16) {
      i = 16;
    }
    while (i < newNumel) {
      if (i > 1073741823) {
        i = MAX_int32_T;
      } else {
        i *= 2;
      }
    }
    newData = emlrtMallocMex((uint32_T)i * sizeof(int32_T));
    if (newData == NULL) {
      emlrtHeapAllocationErrorR2012b(srcLocation, (emlrtCTX)sp);
    }
    if (emxArray->data != NULL) {
      memcpy(newData, emxArray->data, sizeof(int32_T) * (uint32_T)oldNumel);
      if (emxArray->canFreeData) {
        emlrtFreeMex(emxArray->data);
      }
    }
    emxArray->data = (int32_T *)newData;
    emxArray->allocatedSize = i;
    emxArray->canFreeData = true;
  }
}

void emxEnsureCapacity_real_T(const emlrtStack *sp, emxArray_real_T *emxArray,
                              int32_T oldNumel, const emlrtRTEInfo *srcLocation)
{
  int32_T i;
  int32_T newNumel;
  void *newData;
  if (oldNumel < 0) {
    oldNumel = 0;
  }
  newNumel = 1;
  for (i = 0; i < emxArray->numDimensions; i++) {
    newNumel = (int32_T)emlrtSizeMulR2012b((size_t)(uint32_T)newNumel,
                                           (size_t)(uint32_T)emxArray->size[i],
                                           srcLocation, (emlrtCTX)sp);
  }
  if (newNumel > emxArray->allocatedSize) {
    i = emxArray->allocatedSize;
    if (i < 16) {
      i = 16;
    }
    while (i < newNumel) {
      if (i > 1073741823) {
        i = MAX_int32_T;
      } else {
        i *= 2;
      }
    }
    newData = emlrtMallocMex((uint32_T)i * sizeof(real_T));
    if (newData == NULL) {
      emlrtHeapAllocationErrorR2012b(srcLocation, (emlrtCTX)sp);
    }
    if (emxArray->data != NULL) {
      memcpy(newData, emxArray->data, sizeof(real_T) * (uint32_T)oldNumel);
      if (emxArray->canFreeData) {
        emlrtFreeMex(emxArray->data);
      }
    }
    emxArray->data = (real_T *)newData;
    emxArray->allocatedSize = i;
    emxArray->canFreeData = true;
  }
}

void emxEnsureCapacity_uint32_T(const emlrtStack *sp,
                                emxArray_uint32_T *emxArray, int32_T oldNumel,
                                const emlrtRTEInfo *srcLocation)
{
  int32_T i;
  int32_T newNumel;
  void *newData;
  if (oldNumel < 0) {
    oldNumel = 0;
  }
  newNumel = 1;
  for (i = 0; i < emxArray->numDimensions; i++) {
    newNumel = (int32_T)emlrtSizeMulR2012b((size_t)(uint32_T)newNumel,
                                           (size_t)(uint32_T)emxArray->size[i],
                                           srcLocation, (emlrtCTX)sp);
  }
  if (newNumel > emxArray->allocatedSize) {
    i = emxArray->allocatedSize;
    if (i < 16) {
      i = 16;
    }
    while (i < newNumel) {
      if (i > 1073741823) {
        i = MAX_int32_T;
      } else {
        i *= 2;
      }
    }
    newData = emlrtMallocMex((uint32_T)i * sizeof(uint32_T));
    if (newData == NULL) {
      emlrtHeapAllocationErrorR2012b(srcLocation, (emlrtCTX)sp);
    }
    if (emxArray->data != NULL) {
      memcpy(newData, emxArray->data, sizeof(uint32_T) * (uint32_T)oldNumel);
      if (emxArray->canFreeData) {
        emlrtFreeMex(emxArray->data);
      }
    }
    emxArray->data = (uint32_T *)newData;
    emxArray->allocatedSize = i;
    emxArray->canFreeData = true;
  }
}

void emxFree_int32_T(const emlrtStack *sp, emxArray_int32_T **pEmxArray)
{
  if (*pEmxArray != (emxArray_int32_T *)NULL) {
    if (((*pEmxArray)->data != (int32_T *)NULL) && (*pEmxArray)->canFreeData) {
      emlrtFreeMex((*pEmxArray)->data);
    }
    emlrtFreeMex((*pEmxArray)->size);
    emlrtRemoveHeapReference((emlrtCTX)sp, (void *)pEmxArray);
    emlrtFreeEmxArray(*pEmxArray);
    *pEmxArray = (emxArray_int32_T *)NULL;
  }
}

void emxFree_real_T(const emlrtStack *sp, emxArray_real_T **pEmxArray)
{
  if (*pEmxArray != (emxArray_real_T *)NULL) {
    if (((*pEmxArray)->data != (real_T *)NULL) && (*pEmxArray)->canFreeData) {
      emlrtFreeMex((*pEmxArray)->data);
    }
    emlrtFreeMex((*pEmxArray)->size);
    emlrtRemoveHeapReference((emlrtCTX)sp, (void *)pEmxArray);
    emlrtFreeEmxArray(*pEmxArray);
    *pEmxArray = (emxArray_real_T *)NULL;
  }
}

void emxFree_uint32_T(const emlrtStack *sp, emxArray_uint32_T **pEmxArray)
{
  if (*pEmxArray != (emxArray_uint32_T *)NULL) {
    if (((*pEmxArray)->data != (uint32_T *)NULL) && (*pEmxArray)->canFreeData) {
      emlrtFreeMex((*pEmxArray)->data);
    }
    emlrtFreeMex((*pEmxArray)->size);
    emlrtRemoveHeapReference((emlrtCTX)sp, (void *)pEmxArray);
    emlrtFreeEmxArray(*pEmxArray);
    *pEmxArray = (emxArray_uint32_T *)NULL;
  }
}

void emxInit_int32_T(const emlrtStack *sp, emxArray_int32_T **pEmxArray,
                     const emlrtRTEInfo *srcLocation)
{
  emxArray_int32_T *emxArray;
  *pEmxArray =
      (emxArray_int32_T *)emlrtMallocEmxArray(sizeof(emxArray_int32_T));
  if ((void *)*pEmxArray == NULL) {
    emlrtHeapAllocationErrorR2012b(srcLocation, (emlrtCTX)sp);
  }
  emlrtPushHeapReferenceStackEmxArray((emlrtCTX)sp, true, (void *)pEmxArray,
                                      (void *)&emxFree_int32_T, NULL, NULL,
                                      NULL);
  emxArray = *pEmxArray;
  emxArray->data = (int32_T *)NULL;
  emxArray->numDimensions = 1;
  emxArray->size = (int32_T *)emlrtMallocMex(sizeof(int32_T));
  if ((void *)emxArray->size == NULL) {
    emlrtHeapAllocationErrorR2012b(srcLocation, (emlrtCTX)sp);
  }
  emxArray->allocatedSize = 0;
  emxArray->canFreeData = true;
  emxArray->size[0] = 0;
}

void emxInit_real_T(const emlrtStack *sp, emxArray_real_T **pEmxArray,
                    int32_T numDimensions, const emlrtRTEInfo *srcLocation)
{
  emxArray_real_T *emxArray;
  int32_T i;
  *pEmxArray = (emxArray_real_T *)emlrtMallocEmxArray(sizeof(emxArray_real_T));
  if ((void *)*pEmxArray == NULL) {
    emlrtHeapAllocationErrorR2012b(srcLocation, (emlrtCTX)sp);
  }
  emlrtPushHeapReferenceStackEmxArray((emlrtCTX)sp, true, (void *)pEmxArray,
                                      (void *)&emxFree_real_T, NULL, NULL,
                                      NULL);
  emxArray = *pEmxArray;
  emxArray->data = (real_T *)NULL;
  emxArray->numDimensions = numDimensions;
  emxArray->size =
      (int32_T *)emlrtMallocMex(sizeof(int32_T) * (uint32_T)numDimensions);
  if ((void *)emxArray->size == NULL) {
    emlrtHeapAllocationErrorR2012b(srcLocation, (emlrtCTX)sp);
  }
  emxArray->allocatedSize = 0;
  emxArray->canFreeData = true;
  for (i = 0; i < numDimensions; i++) {
    emxArray->size[i] = 0;
  }
}

void emxInit_uint32_T(const emlrtStack *sp, emxArray_uint32_T **pEmxArray,
                      const emlrtRTEInfo *srcLocation)
{
  emxArray_uint32_T *emxArray;
  *pEmxArray =
      (emxArray_uint32_T *)emlrtMallocEmxArray(sizeof(emxArray_uint32_T));
  if ((void *)*pEmxArray == NULL) {
    emlrtHeapAllocationErrorR2012b(srcLocation, (emlrtCTX)sp);
  }
  emlrtPushHeapReferenceStackEmxArray((emlrtCTX)sp, true, (void *)pEmxArray,
                                      (void *)&emxFree_uint32_T, NULL, NULL,
                                      NULL);
  emxArray = *pEmxArray;
  emxArray->data = (uint32_T *)NULL;
  emxArray->numDimensions = 1;
  emxArray->size = (int32_T *)emlrtMallocMex(sizeof(int32_T));
  if ((void *)emxArray->size == NULL) {
    emlrtHeapAllocationErrorR2012b(srcLocation, (emlrtCTX)sp);
  }
  emxArray->allocatedSize = 0;
  emxArray->canFreeData = true;
  emxArray->size[0] = 0;
}

/* End of code generation (runSimulation_emxutil.c) */
