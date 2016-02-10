@echo off

conda build test_msvc-11.0

set FEAT_COMPILER=- vc11
set  REQ_COMPILER=- test_msvc 11.0

conda build test_python-2.7
conda build test_python-3.5
conda build test_mkl-11.3
conda build test_openblas-0.2

REM build numpy for Python 2.7
set FEAT_PYTHON=- py27
set  REQ_PYTHON=- test_python 2.7

REM build three versions of numpy without BLAS
set FEAT_BLAS= 
set  REQ_BLAS= 

conda build test_numpy-1.10
conda build test_numpy-1.11
conda build test_numpy-1.12
conda build test_numpy_exact-1.10
conda build test_numpy_exact-1.11
conda build test_numpy_exact-1.12

REM build numpy 1.10 and 1.11 with openblas
set FEAT_BLAS=- openblas0_2
set  REQ_BLAS=- test_openblas 0.2

conda build test_numpy-1.10
conda build test_numpy-1.11
conda build test_numpy_exact-1.10
conda build test_numpy_exact-1.11

REM build only numpy 1.10 with mkl
set FEAT_BLAS=- mkl11_3
set  REQ_BLAS=- test_mkl 11.3

conda build test_numpy-1.10
conda build test_numpy_exact-1.10

REM build numpy for Python 3.5
set FEAT_PYTHON=- py35
set  REQ_PYTHON=- test_python 3.5

REM build three versions of numpy without BLAS
set FEAT_BLAS= 
set  REQ_BLAS= 

conda build test_numpy-1.10
conda build test_numpy-1.11
conda build test_numpy-1.12
conda build test_numpy_exact-1.10
conda build test_numpy_exact-1.11
conda build test_numpy_exact-1.12

REM build numpy 1.10 and 1.11 with openblas
set FEAT_BLAS=- openblas0_2
set  REQ_BLAS=- test_openblas 0.2

conda build test_numpy-1.10
conda build test_numpy-1.11
conda build test_numpy_exact-1.10
conda build test_numpy_exact-1.11

REM build only numpy 1.10 with mkl
set FEAT_BLAS=- mkl11_3
set  REQ_BLAS=- test_mkl 11.3

conda build test_numpy-1.10
conda build test_numpy_exact-1.10
