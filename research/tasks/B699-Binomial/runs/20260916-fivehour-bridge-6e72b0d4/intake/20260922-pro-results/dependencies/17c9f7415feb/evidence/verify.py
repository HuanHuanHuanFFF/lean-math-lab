#!/usr/bin/env python3
"""Exact replay of DUAL-CYC1 and the overlap identities; standard library only.
This checks coefficient identities and the theorem-bounded finite terminal.
It does not constitute Lean verification, external review, or global B699 closure.
"""
from __future__ import annotations
import json
from pathlib import Path
from fractions import Fraction as F
from math import gcd,isqrt
from collections import Counter
from poly_exact import Poly,base_numerators
ROOT=Path(__file__).resolve().parents[1]

def need(condition,message):
    if not condition:raise ArithmeticError(message)

def load(name):return json.loads((ROOT/'certificates'/name).read_text(encoding='utf-8'))

def read_poly(rows,dim):return Poly({tuple(ex):F(n,de) for ex,n,de in rows},dim)

def algebra_and_uniform():
    d,W,S,U=base_numerators();A=d**3+W*d-1
    Hnum=16*d**4+40*W*d**2-32*d+27*W**2+16
    need(U==Hnum*d**2-8*A**2-4*A*W*d,'Y_star / H_star identity failed.')
    # (Q-d)Y^2=Q^5-d^2, with Q=A/W, v=(d^3-1)/W.
    need((d**3-1)*S==A**5-d**2*W**5,'Expanded norm quotient failed.')
    cert=load('uniform_coefficients.json')
    specifications=[('linear_upper',1,4,1,'upper',2,128),
        ('linear_lower',1,4,1,'lower',2,128),
        ('extra3_sharp_upper',3,12,1,'upper',10,1024),
        ('extra3_sharp_lower',3,12,1,'lower',10,1024),
        ('extra3_broad_upper',3,12,20,'upper',2,1024),
        ('extra3_broad_lower',3,12,2,'lower',2,1024)]
    need(len(cert['rounding'])==6,'Wrong coefficient certificate count.')
    t,Z=Poly.var(0),Poly.var(1)
    for rec,spec in zip(cert['rounding'],specifications):
        name,q,c,span,side,t0,w0=spec
        need(tuple(rec[x] for x in ['name','denominator','scale','span','side','t_min','W_min'])==spec,
             'Certificate specification mismatch.')
        raw=((c*U+4*span*d**2*W)**2-64*c*c*S if side=='upper'
             else 64*c*c*S-(c*U-4*span*d**2*W)**2)
        # Exactly divide out d^2 before substitution and W^2 afterward.
        base=raw.divide_monomial((2,0)).substitute([1+t*Z*F(1,q),Z]).divide_monomial((0,2))
        shifted=base.substitute([t0+t,w0+Z])
        need(shifted.rows()==rec['shifted_coefficients'],name+': coefficient identity failed.')
        need(len(shifted.terms)==42 and all(c>0 for c in shifted.terms.values()),name+': positivity failed.')
        need(shifted.terms.get((0,0),0)>0,name+': missing positive constant.')
        print(f'{name.upper()}=PASS (42 positive coefficients; universal half-plane)')
    # Exact residual on the only surviving linear-tail arithmetic possibility.
    raw0=U**2-64*S
    rhs_t=Poly.var(0,1)
    Wt=32*rhs_t+40;dt=32*rhs_t**2+40*rhs_t+1
    lhs=raw0.substitute([dt,Wt])
    R=16384*rhs_t**8-176128*rhs_t**6-318720*rhs_t**5-178656*rhs_t**4-27120*rhs_t**3-10143*rhs_t**2-528*rhs_t-164
    need(R.rows()==cert['linear_tail_R'],'Tail R mismatch.')
    need(lhs==16*Wt**4*dt**2*R,'Tail norm residual identity failed.')
    shiftedR=R.substitute([rhs_t+6])
    need(shiftedR.rows()==cert['linear_tail_shift_6'],'Tail shifted identity failed.')
    need(len(shiftedR.terms)==9 and all(c>0 for c in shiftedR.terms.values()),'Tail positivity failed.')
    # Integer-centre numerators, independently reconstructed from d-substitution.
    # Hnum/(4W^2): use Hnum itself to clear all denominators.
    dlin=1+t*Z
    J4=16*Z**3*t**4+(64*t**3+40*t**2)*Z**2+(96*t**2+80*t+27)*Z+32*t+40
    need(Hnum.substitute([dlin,Z])==J4*Z,'J4 identity failed.')
    d3=1+t*Z*F(1,3)
    J12=F(16,27)*Z**3*t**4+(F(64,9)*t**3+F(40,3)*t**2)*Z**2+(32*t**2+80*t+81)*Z+32*t+120
    need(3*Hnum.substitute([d3,Z])==J12*Z,'J12 identity failed.')
    # Symbolic 3-variable identity implies gcd(v,W)|(h^2-6h-11).
    dd,vv,hh=Poly.var(0,3),Poly.var(1,3),Poly.var(2,3)
    nn2=(hh-1)*dd-vv;pp=dd+(hh+1)*vv;qq=dd+vv
    lhs4=vv*nn2**2-4*pp*qq**2+4
    Hpoly=hh**2-6*hh-11
    rhs4=vv*(dd**2*Hpoly-10*(hh+1)*dd*vv-(4*hh+3)*vv**2)-4*(dd**3-1)
    need(lhs4==rhs4,'Overlap identity failed.')
    aa=Poly.var(0,1)
    need((4*aa+1)**2-6*(4*aa+1)-11==16*(aa**2-aa-1),'Odd h 2-adic identity 1 failed.')
    need((4*aa+3)**2-6*(4*aa+3)-11==4*(4*aa**2-5),'Odd h 2-adic identity 3 failed.')
    need((5*aa+3)**2-6*(5*aa+3)-11==5*(5*aa**2-4),'5-adic identity failed.')
    print('SAME_INPUT_AND_OVERLAP_IDENTITIES=PASS')
    print('LINEAR_TAIL_ALL_W_GE_192=PASS (identities + universal coefficient certificate)')
    print('EXTRA3_TAIL_ALL_W_GE_1024=PASS (sharp and broad intervals)')

def terminal():
    cert=load('complete_terminal.json');expected=[];counts=Counter()
    for case,stop in [('linear',192),('extra3',1024)]:
        for W in range(2,stop):
            if case=='extra3' and W%9:continue
            dmax=(W*W+640*W-1)//16
            tmax=(dmax-1)//W if case=='linear' else 3*(dmax-1)//W
            for t in range(2,tmax+1,2):
                if case=='extra3' and t%3==0:continue
                counts[case+'_parameter_pairs']+=1
                if case=='extra3':need(t*W%3==0,'Extra3 integrality missing.')
                d=1+t*W if case=='linear' else 1+t*W//3
                if d<17 or d%16!=1:continue
                need(16*d<W*W+640*W,'Finite bound mismatch.')
                need((d**3-1)%W==0,'Cofactor does not divide.')
                v=(d**3-1)//W;Q=v+d
                need(v%2==0 and 3*v>Q,'Parity/size mismatch.')
                need((3*(d-1))%W==0,'Missing branch condition.')
                need(((d-1)%W==0)==(case=='linear'),'Cases are not disjoint.')
                counts[case+'_admissible_pairs']+=1
                need((Q**5-d*d)%v==0,'Norm quotient is not integral.')
                Y2=(Q**5-d*d)//v
                fl=isqrt(Y2);lo=Y2-fl*fl;hi=(fl+1)**2-Y2
                need(lo>0 and hi>0,'Terminal norm square found; theorem not certified.')
                expected.append(dict(case=case,W=W,t=t,Delta=d,v=v,Q=Q,
                                     floor_Y=fl,lower_gap=lo,upper_gap=hi))
    need(cert['rows']==expected,'Incomplete or incorrect terminal certificate.')
    need(cert['total']==len(expected)==3802,'Wrong terminal total.')
    need(cert['counts']==dict(counts),'Terminal counts mismatch.')
    print('FINITE_TERMINAL=PASS (1255 linear + 2547 extra3 = 3802 nonsquares)')
    print('DUAL_CYC1_CONDITIONAL_CORE_REPLAY=PASS')

def failures_and_examples():
    for row in load('failure_models.json')['examples']:
        d,W,v,Q=row['Delta'],row['W'],row['v'],row['Q']
        need(v*W==d**3-1 and Q==d+v,'Failure-shell identity mismatch.')
        need(d>=17 and d%16==1 and v%2==0 and 3*v>Q,'Failure-shell corridor mismatch.')
        D=v//gcd(v,3*(d-1));B=W//gcd(W,3*(d-1))
        need(D==row['D_v'] and B==row['D_W'],'Failure-shell decomposition mismatch.')
        sigma=3 if d%3==1 else 1
        need(sigma*D*B==d*d+d+1,'Bilateral factorization mismatch.')
        need(gcd(v,W)==row['shared_full'] and gcd(D,B)==row['shared_cyclotomic'],'Shared gcd mismatch.')
        Y2=(Q**5-d*d)//v;fl=isqrt(Y2)
        need(row['Y2']==Y2 and row['floor_Y']==fl,'Failure norm data mismatch.')
        need(row['lower_gap']==Y2-fl*fl>0 and row['upper_gap']==(fl+1)**2-Y2>0,
             'Weak model unexpectedly has an integer square recovery.')
        if 'h' in row:
            h,nu,P=row['h'],row['nu'],row['P']
            need(2*nu==h*d-Q and P==Q+h*v and nu%4==2,'Weak-model linear recovery mismatch.')
            need(v*nu*nu-P*Q*Q+1==row['norm_residual']!=0,'Weak model norm missingness not verified.')
            need((h*h-6*h-11)%gcd(v,W)==0,'Weak model does not pass claimed overlap divisibility.')
            need(gcd(D,B)==19 and pow(9,2,19)==5,'Shared split-prime illustration failed.')
    # Modulo 3, h^2-6h-11 never vanishes; no primality oracle is used.
    need(all((h*h-6*h-11)%3 for h in range(3)),'3-adic exclusion failed.')
    print('PRECISE_FAILURE_MODELS=PASS (norm failures explicit; no NC3 assertion)')
    dd=Poly.var(0,1)
    shell_norm=19*(dd-1)*(dd+19)**2-4*(419*dd-418)*(20*dd-19)**2+4
    residual_quad=670381*dd**2-1272882*dd+596737
    need(shell_norm==-(dd-1)*residual_quad,'Unbounded weak-shell residual identity failed.')
    shifted=residual_quad.substitute([dd+2])
    need(all(c>0 for c in shifted.terms.values()),'Weak-shell negative norm not proved.')
    print('UNBOUNDED_WEAK_SHELL_NORM_FAILURE=PASS')
    print('SMALL_PRIME_OVERLAP_CERTIFICATES=PASS')

def main():
    algebra_and_uniform();terminal();failures_and_examples()
    print('REPLAY=PASS')
if __name__=='__main__':main()
