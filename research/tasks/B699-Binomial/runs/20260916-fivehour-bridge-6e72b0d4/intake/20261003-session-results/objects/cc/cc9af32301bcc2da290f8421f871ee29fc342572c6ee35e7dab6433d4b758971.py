#!/usr/bin/env python3
"""Exact R5 parameter exclusions, not a classifier for original NC3 inputs."""
from __future__ import annotations
import sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parent))
from fractions import Fraction
from typing import Union
import argparse,json
from recover import recover
Exact=Union[int,str,Fraction]

def rational(x:Exact)->Fraction:
    if isinstance(x,bool) or not isinstance(x,(int,str,Fraction)):
        raise TypeError('Exact int, rational string or Fraction required; no binary floats.')
    return Fraction(x)

def filter_base(u:Exact,y:Exact,r:Exact)->dict:
    u,y,r=map(rational,(u,y,r))
    out={'base':{'u':str(u),'y':str(y),'r':str(r)},'NC3_certified':False,
         'original_nj_recovered':False,'complete_source_powers_verified':False,
         'p_equals_i_retained':True,'scope':'necessary normalized polynomial system only'}
    if not u*(u-1)*y*(y-1)*r:
        out['status']='INVALID_BASIC_NONZERO_DOMAIN';return out
    J=u*u+u*y*y-3*u*y+y
    A5=8*u**3*y-5*(u-1)**2*(y-1)**3
    if not J:
        out['status']='EXCLUDED_J_REAL_BASE';return out
    if not A5:
        out['status']='EXCLUDED_A5_RATIONAL_BASE';return out
    out['status']='UNRESOLVED_BY_R5_BRANCH_FILTERS'
    return out

def audit_base(u:Exact,y:Exact,r:Exact)->dict:
    ans=filter_base(u,y,r)
    if ans['status']!='UNRESOLVED_BY_R5_BRANCH_FILTERS':return ans
    # Preserve every inherited gate, all six residuals and BOTH unsquared-Q signs.
    ans['inherited_full_recovery_audit']=recover(*map(rational,(u,y,r)))
    return ans

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    for x in ['u','y','r']:p.add_argument('--'+x,required=True)
    p.add_argument('--full',action='store_true',help='Run the inherited full six-equation/recovery audit after the new branch filters.')
    a=p.parse_args()
    try:out=(audit_base if a.full else filter_base)(a.u,a.y,a.r)
    except (ValueError,TypeError,ZeroDivisionError)as e:p.error(str(e))
    print(json.dumps(out,ensure_ascii=False,indent=2))
