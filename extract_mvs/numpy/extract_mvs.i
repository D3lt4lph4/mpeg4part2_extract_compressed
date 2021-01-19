%module extract_mvs

%{
#include "extract_mvs.h"

#define SWIG_FILE_WITH_INIT
%}

%include "numpy.i"

%init %{
import_array();
%}

%apply (int **ARGOUTVIEWM_ARRAY4, int *DIM1, int *DIM2, int *DIM3, int *DIM4) {(int **out, int *out_dim1, int *out_dim2, int *out_dim3, int *out_dim4)}

%include "extract_mvs.h"