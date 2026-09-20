"""Exact fixed-prime elimination. No floating arithmetic or approximate rank.
Set B699_FIELDLIB to the library built from the accompanying C++ source.
"""
import ctypes as C
import os
from pathlib import Path
import numpy as np
LIB_PATH=Path(os.environ.get('B699_FIELDLIB',str(Path(__file__).resolve().parents[2]/'libfield65521.so')))
_lib=C.CDLL(str(LIB_PATH));_u=C.POINTER(C.c_uint32);_i=C.POINTER(C.c_int)
for p in (65521,1000033):
 f=getattr(_lib,f'rank{p}');f.argtypes=[_u,C.c_int,C.c_int,_i,_i,_u];f.restype=C.c_int
P=65521

def rank_minor(mat,prime=P):
 if prime not in (65521,1000033):raise ValueError('unsupported fixed prime')
 # Validate before narrowing: uint32 conversion must not wrap a large integer.
 raw=np.asarray(mat)
 if raw.ndim!=2 or not raw.shape[0] or not raw.shape[1]:raise ValueError('nonempty rectangular matrix required')
 if raw.dtype.kind not in 'iu' or np.any(raw<0) or np.any(raw>=prime):raise ValueError('entries must be canonical integer residues')
 A=np.array(raw,dtype=np.uint32,order='C',copy=True);nr,nc=A.shape
 rr=np.empty(min(nr,nc),dtype=np.int32);cc=np.empty(min(nr,nc),dtype=np.int32);det=C.c_uint32()
 rank=getattr(_lib,f'rank{prime}')(A.ctypes.data_as(_u),nr,nc,rr.ctypes.data_as(_i),cc.ctypes.data_as(_i),C.byref(det))
 return rr[:rank].tolist(),cc[:rank].tolist(),rank,int(det.value)

def determinant(mat,prime=P):
 if len(mat)!=len(mat[0]):raise ValueError('determinant needs a square matrix')
 return rank_minor(mat,prime)[3]
