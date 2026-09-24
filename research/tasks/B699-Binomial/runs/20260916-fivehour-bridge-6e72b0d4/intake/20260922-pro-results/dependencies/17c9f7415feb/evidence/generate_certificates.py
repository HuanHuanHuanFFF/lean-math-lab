#!/usr/bin/env python3
"""Regenerate finite coefficient/terminal certificates. Generation needs SymPy.
The default verifier uses only the Python standard library.
"""
from __future__ import annotations
import json,sys
from pathlib import Path
from math import isqrt,gcd
from collections import Counter
import sympy as s
ROOT=Path(__file__).resolve().parents[1]

def rows(expr,variables):
    p=s.Poly(s.expand(expr),*variables,domain=s.QQ)
    return [[list(ex),int(c.p),int(c.q)] for ex,c in sorted(p.terms())]

def dump(name,obj):
    (ROOT/'certificates'/name).write_text(json.dumps(obj,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')

def main():
    d,W,t,u,z=s.symbols('d W t u z')
    A=d**3+W*d-1
    S=A**4+d*W*A**3+d**2*W**2*A**2+d**3*W**3*A+d**4*W**4+d**2*W**5
    U=8*d**6+20*W*d**4-16*d**3+(15*W**2+16)*d**2+20*W*d-8
    specs=[
      ('linear_upper',1,4,1,'upper',2,128),
      ('linear_lower',1,4,1,'lower',2,128),
      ('extra3_sharp_upper',3,12,1,'upper',10,1024),
      ('extra3_sharp_lower',3,12,1,'lower',10,1024),
      ('extra3_broad_upper',3,12,20,'upper',2,1024),
      ('extra3_broad_lower',3,12,2,'lower',2,1024)]
    cert=[]
    for name,q,c,span,side,t0,w0 in specs:
        raw=((c*U+4*span*d*d*W)**2-64*c*c*S if side=='upper'
             else 64*c*c*S-(c*U-4*span*d*d*W)**2)
        p=s.cancel(raw/(d*d))
        # Exact positive factors d^2 and W^2 are discarded, never signs.
        p=s.cancel(p.subs(d,1+t*W/q)/(W*W))
        rr=rows(p.subs({t:t0+u,W:w0+z}),(u,z))
        assert len(rr)==42 and all(n>0 and de>0 for ex,n,de in rr)
        assert any(ex==[0,0] and n>0 for ex,n,de in rr)
        cert.append(dict(name=name,denominator=q,scale=c,span=span,side=side,
                         t_min=t0,W_min=w0,shifted_coefficients=rr))
    R=16384*t**8-176128*t**6-318720*t**5-178656*t**4-27120*t**3-10143*t**2-528*t-164
    shift=rows(R.subs(t,6+u),(u,))
    assert all(n>0 for ex,n,de in shift)
    dump('uniform_coefficients.json',dict(schema=1,rounding=cert,
      linear_tail_R=rows(R,(t,)),linear_tail_shift_6=shift,
      statement='These are coefficient certificates for all nonnegative shifted real parameters, not sampled parameter values.'))
    counts=Counter();terminal=[]
    for case,stop in [('linear',192),('extra3',1024)]:
        for w in range(2,stop):
            if case=='extra3' and w%9:continue
            dmax=(w*w+640*w-1)//16
            tmax=(dmax-1)//w if case=='linear' else 3*(dmax-1)//w
            for tt in range(2,tmax+1,2):
                if case=='extra3' and tt%3==0:continue
                counts[case+'_parameter_pairs']+=1
                dd=1+tt*w if case=='linear' else 1+tt*w//3
                if dd<17 or dd%16!=1:continue
                assert (dd**3-1)%w==0
                vv=(dd**3-1)//w;qq=vv+dd
                assert vv%2==0 and 3*vv>qq
                counts[case+'_admissible_pairs']+=1
                # Generator uses the expanded quotient, verifier uses the original norm quotient.
                square=qq**4+dd*qq**3+dd**2*qq**2+dd**3*qq+dd**4+dd**2*w
                fl=isqrt(square)
                lo=square-fl*fl;hi=(fl+1)**2-square
                assert lo>0 and hi>0
                terminal.append(dict(case=case,W=w,t=tt,Delta=dd,v=vv,Q=qq,
                                     floor_Y=fl,lower_gap=lo,upper_gap=hi))
    assert len(terminal)==3802
    dump('complete_terminal.json',dict(schema=1,scope='Disjoint finite terminal after the two proved infinite tails and adopted COF40/COMP1.',
      counts=dict(counts),total=3802,rows=terminal))
    examples=[]
    for dd,w,h in [(49,72,None),(65,2,None),(7649,3079693,21)]:
        if h is not None:
            vv=19*(dd-1);w=(dd*dd+dd+1)//19
        else: vv=(dd**3-1)//w
        qq=dd+vv;dv=vv//gcd(vv,3*(dd-1));dw=w//gcd(w,3*(dd-1))
        square=(qq**5-dd*dd)//vv;fl=isqrt(square)
        item=dict(Delta=dd,W=w,v=vv,Q=qq,D_v=dv,D_W=dw,
                  shared_cyclotomic=gcd(dv,dw),shared_full=gcd(vv,w),
                  Y2=square,floor_Y=fl,lower_gap=square-fl*fl,upper_gap=(fl+1)**2-square,
                  old_COF40_not_triggered=16*dd<w*w+640*w,
                  warning='Weak integer shell; the positive square recovery fails. Not NC3 or a counterexample.')
        if h is not None:
            nn=(h*dd-qq)//2;pp=qq+h*vv
            item.update(h=h,nu=nn,P=pp,norm_residual=vv*nn*nn-pp*qq*qq+1,
                        overlap_polynomial=h*h-6*h-11,square_root_of_5_mod_19=9)
        examples.append(item)
    dump('failure_models.json',dict(schema=1,examples=examples))
    print('COEFFICIENT_CERTIFICATES_GENERATED=6')
    print('COMPLETE_TERMINAL_STATES=3802')
    print('GENERATION=PASS')
if __name__=='__main__':main()
