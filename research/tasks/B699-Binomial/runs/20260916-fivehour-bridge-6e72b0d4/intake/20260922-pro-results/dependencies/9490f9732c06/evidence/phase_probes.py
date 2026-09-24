#!/usr/bin/env python3
"""Rational-interval analytic probes; NOT integer NC3 candidates.

The uniform proof does not depend on these samples. Also records exact weak
models for the two failed stronger inferences discussed in FAILURES.md.
"""
from fractions import Fraction as F
from math import gcd,isqrt
from pathlib import Path
import json
ROOT=Path(__file__).resolve().parents[1]

def interval(h,Q,left,right,steps=140):
    eps=F(1,Q**3)
    f=lambda z:(z*z-h)*(h-2*z-1)-h+h*eps
    l,r=F(left),F(right)
    assert f(l)<0<f(r)
    for _ in range(steps):
        mid=(l+r)/2
        if f(mid)<0:l=mid
        else:r=mid
    N=lambda z:h*z-2*z*z+2*eps
    # All probes use a range where N is increasing.
    assert h-4*r>0
    nl,nr=N(l),N(r);jl,jr=h-r,h-l
    nf=nl.numerator//nl.denominator;jf=jl.numerator//jl.denominator
    assert nr.numerator//nr.denominator==nf
    assert jr.numerator//jr.denominator==jf
    return dict(h=h,Q=Q,z_interval=[str(l),str(r)],
       normalized_n_interval=[str(nl),str(nr)],normalized_j_interval=[str(jl),str(jr)],
       n_floor=nf,j_floor=jf,
       fractional_n_interval=[str(nl-nf),str(nr-nf)],
       fractional_j_interval=[str(jl-jf),str(jr-jf)],
       force_carry=nr-nf<jl-jf,
       force_no_carry_at_this_level=nl-nf>jr-jf,
       epistemic_status='REAL_ALGEBRAIC_PROBE_NOT_INTEGER_NC3')

def build():
    samples=[]
    for a in [1,2,3,4,5,6,8,11,20,101]:
        m=64*a*a
        if m%2!=a%2:m+=1
        h=m*m+a-1;Q=1000*m+1
        d=interval(h,Q,m,m+1)
        assert d['force_carry']; d.update(m=m,A=a)
        samples.append(d)
    # This refutes only an unconditional real-phase strengthening.
    failure=interval(21,101,4,5)
    assert failure['force_no_carry_at_this_level']
    delta=17;v=delta**3-1;Q=v+delta;D=delta*delta+delta+1;h=4*D*D+9
    P=Q+h*v;nu=(h*delta-Q)//2;n=P*Q*nu+2
    assert D==307 and all(D%d for d in range(2,isqrt(D)+1))
    assert v//gcd(v,3*(delta-1))==D and gcd(D,v//D)==1
    assert (delta**3-1)%v==0 and pow(delta,3,D)==1 and delta%D!=1
    assert h<36*D*D+30*D+9 and nu%4==2
    assert v*nu*nu-P*Q*Q+1==5373370439580560
    assert n%D==6 and (n*(n-1)*(n-2)//6)%D==20
    weak=dict(Delta=delta,v=v,Q=Q,D_cyc=D,h=h,P=P,nu=nu,H=nu//2,n=n,
      defect_prime=307,n_mod_defect=6,binomial_n3_mod_defect=20,
      norm_residual=v*nu*nu-P*Q*Q+1,
      epistemic_status='EXACT_INTEGER_SPLITTING_SHELL_NOT_NC3')
    return {'analytic_sanity_probes':samples,'outside_band_real_failure':failure,
            'non_source_defect_weak_model':weak}

def main():
    import argparse
    p=argparse.ArgumentParser();p.add_argument('--write',action='store_true');a=p.parse_args()
    result=build();path=ROOT/'certificates/phase_probes_and_failures.json'
    if a.write:path.write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
    else:assert json.loads(path.read_text())==result
    print('EXACT_INTERVAL_SANITY_PROBES=PASS; count=10; not original integer inputs')
    print('OUTSIDE_BAND_REAL_STRENGTHENING=REFUTED')
    print('DEFECT_TO_SOURCE_AUTOMATIC_TRANSPORT=REFUTED_ON_EXACT_WEAK_SHELL')
if __name__=='__main__':main()
