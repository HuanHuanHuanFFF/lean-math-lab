#!/usr/bin/env python3
"""Exact audit of a SUPPLIED canonical f,J and affine map x=aX+b.
This neither finds canonical points nor invents an original prime-power input.
"""
from fractions import Fraction as F
from math import comb

def transform(poly,a,b):
    a,b=F(a),F(b)
    if not a:raise ValueError('The affine slope must be nonzero.')
    out=[F(0)]*len(poly)
    for k,c in enumerate(map(F,poly)):
        for j in range(k+1):out[j]+=c*comb(k,j)*a**j*b**(k-j)
    while out and not out[-1]:out.pop()
    return out

def audit(f,J,a,b,work_T=None,original_n=None,original_j=None):
    a,b=F(a),F(b);ff=transform(f,a,b);jj=transform(J,a,b)
    res={'NC3_certified':False,'prime_power_T_verified':False,
         'complete_source_powers_verified':False,'unsquared_Q_link_verified':False,
         'status':'NO_ORIGINAL_INPUT_CERTIFIED'}
    res['constant_two']=bool(ff) and ff[0]==2
    res['f_integer_nonnegative']=all(v.denominator==1 and v>=0 for v in ff)
    res['J_integer_digit_bounds']=len(jj)<=len(ff) and all(v.denominator==1 and 0<=v<=ff[k] for k,v in enumerate(jj))
    res['affine_f']=[str(v) for v in ff];res['affine_J']=[str(v) for v in jj]
    # f(b)=2 has at most deg(f) complex choices of b for a fixed nonconstant f.
    res['translation_root_bound']=max(0,len(f)-1)
    if work_T is not None:
        if not isinstance(work_T,int) or isinstance(work_T,bool) or work_T<=1:raise ValueError('Supply an integer T>1.')
        n=sum(c*work_T**k for k,c in enumerate(ff));j=sum(c*work_T**k for k,c in enumerate(jj))
        res['evaluated_n']=str(n);res['evaluated_j']=str(j)
        res['same_supplied_pair']=original_n is not None and original_j is not None and n==original_n and j==original_j
        res['legal_pair']=n.denominator==j.denominator==1 and 4<=j<=n//2
    return res
