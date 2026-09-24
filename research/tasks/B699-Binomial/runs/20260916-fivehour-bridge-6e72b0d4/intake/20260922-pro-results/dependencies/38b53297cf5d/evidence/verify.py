#!/usr/bin/env python3
"""Portable exact verification of COF40/COMP1. No external packages or network."""
from __future__ import annotations
from pathlib import Path
from fractions import Fraction as F
from math import isqrt
import json
from polynomial import Poly
from recover import recover,cofactor_gate
ROOT=Path(__file__).resolve().parents[1]

def check(ok,message):
    if not ok: raise ArithmeticError(message)

def main():
    cert=json.loads((ROOT/'certificates/cofactor_identity.json').read_text())
    d=Poly.variable(2,0);w=Poly.variable(2,1)
    B=d**3+d*w-1
    a=8*d**6+20*d**4*w-16*d**3+15*d*d*w*w+20*d*w-8
    S=B**4+d*w*B**3+d*d*w*w*B*B+d**3*w**3*B+d**4*w**4+d*d*w**5
    b=16*d**4+40*w*d*d-32*d+27*w*w
    U=640*d**5*w-40*d**4*w**3-256*d**4+1600*d**3*w*w-95*d*d*w**4-1920*d*d*w+1240*d*w**3+512*d-64*w**5-480*w*w
    L=16*d**6-640*d**5*w+40*d**4*w**3+40*d**4*w+256*d**4-1600*d**3*w*w-32*d**3+95*d*d*w**4+30*d*d*w*w+1920*d*d*w-d*d-1240*d*w**3+40*d*w-512*d+64*w**5+480*w*w-16
    check(a*a-64*S==d*d*U,'Upper square identity')
    check(64*S-(a-d*d)**2==d*d*L,'Lower square identity')
    check(a+8*B*B+4*B*d*w==d*d*b,'Rational h reconstruction')
    check(U==Poly.from_records(2,cert['U']),'U certificate mismatch')
    check(L==Poly.from_records(2,cert['L']),'L certificate mismatch')
    # Independent regroupings used in the short paper positivity proof.
    Ug=(40*d**4*w*(16*d-w*w)-256*d**4-480*w*w)+(d*d*w*w*(1600*d-95*w*w)-1920*d*d*w)+(w**3*(1240*d-64*w*w)+512*d)
    Lg=(16*d**5*(d-40*w)-1600*d**3*w*w)+40*d*w**3*(d**3-31)+(256*d**4-32*d**3-d*d-512*d-16)+(40*d**4*w+95*d*d*w**4+30*d*d*w*w+1920*d*d*w+40*d*w+64*w**5+480*w*w)
    check(Ug==U and Lg==L,'Positive regroupings')
    uu=Poly.variable(2,0);zz=Poly.variable(2,1)
    ww=zz+1;dd=ww*ww/16+40*ww+uu
    for name,p in (('U',U),('L',L)):
        shifted=p.substitute([dd,ww])
        check(shifted==Poly.from_records(2,cert['shift_'+name]),name+' shift identity')
        check(all(c>0 for c in shifted.terms.values()),name+' has a nonpositive coefficient')
        check(shifted.terms.get((0,0),F(0))>0,name+' positive constant')
    print('COF40_TWO_VARIABLE_UNIFORM_POSITIVITY=PASS')
    # COMP1: interval from H0-3/4 to H0, not the coarser 1/4 grid.
    x=Poly.variable(1,0);one=Poly.constant(1,1)
    a1=a.substitute([x,one]);S1=S.substitute([x,one])
    U1=640*x**5-296*x**4+1600*x**3-2015*x*x+1752*x-544
    L1=16*(3*x**6-40*x**5+26*x**4-106*x**3+131*x*x-102*x+31)
    check(a1*a1-64*S1==x*x*U1,'COMP1 upper square identity')
    check(64*S1-(a1-3*x*x)**2==x*x*L1,'COMP1 lower square identity')
    check(U1==x**4*(640*x-296)+x*x*(1600*x-2015)+1752*x-544,'U1 grouping')
    check(L1==16*(x**5*(3*x-40)+x**3*(26*x-106)+x*(131*x-102)+31),'L1 grouping')
    for name,p in (('U1',U1),('L1',L1)):
        check(p==Poly.from_records(1,cert[name]),name+' coefficient mismatch')
        sh=p.substitute([x+14])
        check(sh==Poly.from_records(1,cert['shift_'+name]),name+' shift mismatch')
        check(all(c>0 for c in sh.terms.values()) and sh.terms.get((0,),F(0))>0,name+' positivity')
    print('COMP1_ALL_DELTA_GE_14=PASS')
    # Rebuild same-input identities using a third-variable polynomial ring.
    hh=Poly.variable(3,0);qq=Poly.variable(3,1);vv=Poly.variable(3,2)
    pp=qq+hh*vv;de=qq-vv;twonu=hh*de-qq
    R4=vv*twonu**2-4*pp*qq*qq+4
    check(4*de**2+vv*(de*twonu-2*qq*qq)**2-4*qq**5==de**2*R4,'Fifth norm identity')
    check((2*pp+twonu)*qq*qq-4-pp*(de*twonu-2*qq*qq)==-R4,'j-2=P*Y identity')
    # W_delta integrality: Q^3-1 = v(nu^2-hQ^2), then Q=v+Delta.
    check(vv*(twonu**2-4*hh*qq*qq)-4*(qq**3-1)==R4,'Cubic quotient identity')
    print('SAME_INPUT_ALGEBRAIC_IDENTITIES=PASS')
    # The short proof's strict numerical constants.
    check(25600-256-480==24864 and 1600-95*16==80 and 1240-64*16==216,'U constants')
    check(32+1+512+16==561 and 256*40>561,'L constants')
    check(F(321,16)<21 and 321<18**2,'Cofactor height constants')
    check(F(81,2)*5**6+2<2**20,'Delta-height constant')
    check(F(81,2)*21**3*442**6+2<2**72,'Cofactor-height constant')
    check(9*442**2<2**21,'h cofactor-height constant')
    print('RELATIVE_HEIGHT_CONSTANTS=PASS')
    # Verify both real-core countermodels, with no floating point computation.
    phase=json.loads((ROOT/'certificates/other_source_failure.json').read_text())
    results=[]
    for model in phase['models']:
        h,Q=model['h'],model['Q'];lo,hi=map(F,model['z_interval'])
        f=lambda z:(z*z-h)*(h-2*z-1)-h
        df=lambda z:2*h*(z+1)-6*z*z-2*z
        check(h==16639 and Q in (10007,10037),'Failure model identification')
        check(F(128)<lo<hi<F(130),'Failure root domain')
        check(min(df(F(128)),df(F(130)))>0,'Failure whole-interval monotonicity')
        check(f(lo)<-F(h,Q**3)<f(hi),'Failure root isolation')
        check(h-2*hi>0,'Positive P analogue')
        # Both displayed rational phase functions are strictly increasing here.
        jp=lambda z:F(Q)*(h-z)/(h-2*z)**2
        np=lambda z:F(Q)*z/(h-2*z)+F(2,Q*Q)/(h-2*z)**2
        ji=(jp(lo),jp(hi));ni=(np(lo),np(hi))
        floor=lambda x:x.numerator//x.denominator
        def frac(pair):
            a,b=pair;check(floor(a)==floor(b),'Phase crossing')
            return [a-floor(a),b-floor(b)]
        jf,nf=frac(ji),frac(ni)
        check(list(map(F,model['j_over_P2']))==list(ji),'Failure j phase')
        check(list(map(F,model['n_over_P2']))==list(ni),'Failure n phase')
        check(list(map(F,model['j_fraction']))==jf and list(map(F,model['n_fraction']))==nf,'Failure fractional intervals')
        r='P2_POSITIVE_COMPARISON' if jf[0]>nf[1] else 'P2_NEGATIVE_COMPARISON'
        if r=='P2_NEGATIVE_COMPARISON': check(jf[1]<nf[0],'Failure strict negative sign')
        check(model['result']==r,'Failure label mismatch');results.append(r)
        nflo=model['nu_floor']
        check(nflo<Q*lo<Q*hi<nflo+1,'Noninteger nu')
        check(list(map(F,model['nu_interval']))==[Q*lo,Q*hi],'Nu interval mismatch')
        # The wider real corridor, NOT integer congruences.
        vfrac=lambda z:1-(2*z+1)/h
        check(F(1,3)<vfrac(hi)<vfrac(lo)<1,'Real v/Q corridor')
        check(Q*(2*lo+1)/h>17,'Real Delta corridor')
        check(all(Q%p for p in range(2,isqrt(Q)+1)),'Trial primality for chosen Q')
    check(set(results)=={'P2_POSITIVE_COMPARISON','P2_NEGATIVE_COMPARISON'},'Both signs required')
    print('OTHER_SOURCE_FAILURE_AND_NONINTEGER_RECOVERY=PASS')
    # An unbounded scalar cofactor shell: this intentionally omits the norm recovery.
    tt=Poly.variable(1,0);dfam=16*tt+1
    vfam=4096*tt**2+768*tt+48
    check(tt*vfam==dfam**3-1,'Unbounded scalar family exact quotient')
    slack=tt**2+640*tt-16*dfam
    check(slack==tt**2+384*tt-16,'Unbounded scalar family bound')
    check(all(c>0 for c in slack.substitute([tt+2]).terms.values()),'Family survives COF40')
    check(all(c>0 for c in (2*vfam-dfam).substitute([tt+2]).terms.values()),'Family size corridor')
    print('UNBOUNDED_SCALAR_FAILURE_FAMILY=PASS (not NC3)')
    # Exact complete recovery runs; finite diagnostics, not proof of unbounded claims.
    recovered=[recover(W) for W in (1,2,3,7,16,31,64)]
    expected=json.loads((ROOT/'certificates/recovery_diagnostics.json').read_text())
    check(recovered==expected,'Recovery diagnostics changed')
    check(cofactor_gate(1601,16)=='EXCLUDED_COF40','Uniform gate test')
    check(cofactor_gate(17,1)=='EXCLUDED_COMP1','Unit gate test')
    check(cofactor_gate(33,2)=='NOT_EXCLUDED_BY_THIS_GATE','Gate boundary')
    for W in (0,-1,True):
        try: recover(W)
        except ValueError: pass
        else: raise ArithmeticError('Invalid cofactor accepted')
    for r in recovered:
        print('RECOVERY_DIAGNOSTIC '+json.dumps({k:r[k] for k in ('W_delta','delta_slots','divisibility_slots','square_slots','result')},sort_keys=True))
    print('FINITE_RECOVERY_DIAGNOSTICS=PASS (not the universal proof)')
    print('REPLAY=PASS')
if __name__=='__main__':main()
