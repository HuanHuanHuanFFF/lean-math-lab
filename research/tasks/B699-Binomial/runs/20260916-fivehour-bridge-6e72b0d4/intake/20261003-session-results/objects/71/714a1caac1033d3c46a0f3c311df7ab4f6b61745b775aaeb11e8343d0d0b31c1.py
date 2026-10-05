#!/usr/bin/env python3
"""Exact finite algebra evidence for the author Q-source near-square proof.
No real NC input is generated. No network, Lean, or repository operations.
"""
from __future__ import annotations
import argparse, hashlib, json
from fractions import Fraction as F
from math import isqrt
from pathlib import Path

def clean(p): return {k:v for k,v in p.items() if v}
def add(*ps):
    out={}
    for p in ps:
        for k,v in p.items(): out[k]=out.get(k,F(0))+v
    return clean(out)
def scale(p,c): return clean({k:v*F(c) for k,v in p.items()})
def mul(p,q):
    out={}
    for (a,b),v in p.items():
        for (c,d),w in q.items():
            k=(a+c,b+d);out[k]=out.get(k,F(0))+v*w
    return clean(out)
def powp(p,n):
    out={(0,0):F(1)}
    for _ in range(n):out=mul(out,p)
    return out
def mon(a=0,b=0,c=1):return {(a,b):F(c)}
def encode(p):return [[a,b,str(c)] for (a,b),c in sorted(p.items())]
def canon(x):return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def coeff_bound(p,shift):
    a=b=F(0)
    for (ti,di),c in p.items():
        power=ti+shift+di//2
        assert power<=0
        val=abs(c)*F(256)**power
        if di%2:a+=val
        else:b+=val
    return [str(a),str(b)]
def G(h,w): return (w*w-h)*(h-2*w-1)-h
def isolate(h,Q,steps=100):
    tau=isqrt(h+1);lo=F(tau);hi=F(tau+1)
    f=lambda w:G(h,w)+F(h,Q**3)
    assert f(lo)<0<f(hi)
    for _ in range(steps):
        md=(lo+hi)/2
        if f(md)<0:lo=md
        else:hi=md
    return lo,hi

def root_record(h,Q,kind):
    tau=isqrt(h+1);dd=h+1-tau*tau
    lo,hi=isolate(h,Q)
    theta0,theta1=lo-tau,hi-tau
    delta=lambda th:(h-4*tau)*th-2*th*th+F(2,Q**3)
    dl,du=delta(theta0),delta(theta1)
    base=dl.numerator//dl.denominator
    assert base==du.numerator//du.denominator
    carry = du-base < 1-theta1
    nocarry = dl-base > 1-theta0
    assert carry or nocarry
    return {'kind':kind,'h':h,'Q':Q,'tau':tau,'Delta':dd,
            'root_interval':[str(lo),str(hi)],'delta_integer_part':base,
            'continuous_carry_side':carry,'continuous_no_carry_side':nocarry,
            'scope':'real algebraic root only; H/P/d generally nonintegral; not NC3'}

def arithmetic_cases():
    digest=hashlib.sha256();count=car=0
    for Q in range(3,42,2):
        for h in range(3,48,2):
            for H in range(1,2*Q+1):
                P=h*Q-4*H
                if P<=0:continue
                n=2*P*Q*H+2;j=Q*Q*(P+2*H)
                if not 0<j<=n:continue
                tau=(2*H)//Q;z=2*H-tau*Q
                if z==0:continue
                I=(h-2*tau)*tau
                delta=F((h-4*tau)*z,Q)-F(2*z*z,Q*Q)+F(2,Q**3)
                assert F(n,Q**3)==I+delta
                xdigit=(P+2*H)%Q
                digit=(n//(Q*Q))%Q
                term=n//(Q**3)-j//(Q**3)-(n-j)//(Q**3)
                assert term==int(digit<xdigit)
                assert xdigit==Q-z
                row=[Q,h,H,P,n,j,tau,z,digit,xdigit,term]
                digest.update(canon(row));count+=1;car+=term
    return {'count':count,'carry_count':car,'sha256':digest.hexdigest(),
            'scope':'generic integer digit identities; E/Pell/n-shape not imposed'}

def make():
    one=mon();tt=mon(1);dd=mon(0,1)
    h=add(mon(2),dd,mon(c=-1))
    theta=add(mon(-1,1,F(1,2)),mon(-2),mon(-3,0,F(5,2)),mon(-3,2,F(-1,8)))
    w=add(tt,theta)
    gh=add(mul(add(mul(w,w),scale(h,-1)),add(h,scale(w,-2),mon(c=-1))),scale(h,-1))
    delta=add(mul(add(h,mon(1,0,-4)),theta),scale(mul(theta,theta),-2))
    J=add(mon(1,1,F(1,2)),one,mon(0,1,-2),mon(-1,2,F(3,8)),mon(-1,1,F(-1,2)),mon(-1,0,F(-3,2)))
    residual=add(delta,scale(J,-1))
    # Special Delta=2, one additional Laurent coefficient.
    h2=add(mon(2),one)
    th2=add(mon(-1),mon(-2),mon(-3,0,2),mon(-4,0,5));w2=add(tt,th2)
    g2=add(mul(add(mul(w2,w2),scale(h2,-1)),add(h2,scale(w2,-2),mon(c=-1))),scale(h2,-1))
    f2=add(mul(add(h2,mon(1,0,-4)),th2),scale(mul(th2,th2),-2),th2,mon(1,0,-1),mon(c=3))
    special=sum(abs(v)*F(256)**(a+2) for (a,b),v in g2.items())
    margins={
      'derivative_at_8':str(F(8**3-4*8**2-14*8-6)),
      'Q_correction':str(F(9)-(F(2)+F(3,256))**3),
      'scaled_error':str(F(1)-F(5,16)-F(37,256)-F(18,256**2)),
      'odd_fraction_margin':str(F(1)-F(17,512)-(F(7,8)+F(1,256))),
      'even_fraction_margin':str(F(1)-F(17,512)-(F(3,8)+F(1,256))),
      'special_D2_margin':str(F(3)-F(24,256)),
      'D0_polynomial_at_6':str(F(3*6**2-6+2))}
    roots=[]
    for tau in [256,257,512,513,1024,1025]:
        ds=[x for x in range(isqrt(tau)+1) if x%2==tau%2]
        for delta0 in sorted(set([ds[0],ds[min(1,len(ds)-1)],ds[-1]])):
            hh=tau*tau+delta0-1
            # Q is an integer scale, not asserted to be a prime or a true source.
            roots.append(root_record(hh,hh+2,'within_proved_band'))
    boundary=root_record(31546857,1000003,'outside_band_continuous_obstruction')
    family=[]
    for k in range(9):
        tau=837+2730*k;hh=tau*tau+18
        family.append({'k':k,'tau':tau,'Delta':19,'h':hh,
                       'residues':{'2':hh%2,'3':hh%3,'5':hh%5,'7':hh%7,'13':hh%13},
                       'scope':'h-label compatibility only; no original input recovered'})
    return {'schema':'B699-D-R09-near-square-v1','cutoff_tau':256,
        'original_source_layer_multiple':3,'n_correction_numerator':2,
        'polynomials':{'G_w0':encode(gh),'delta_w0_minus_J':encode(residual),
                       'G_D2_w1':encode(g2),'D2_delta_plus_theta_minus_R':encode(f2)},
        'coefficient_bounds':{'G':[str(x) for x in coeff_bound(gh,1)],
                              'delta':[str(x) for x in coeff_bound(residual,2)],
                              'D2_G_absolute':str(special)},
        'rational_margins':margins,'root_regressions':roots,
        'boundary':boundary,'phase_family':family,
        'quadratic_residues_mod13':sorted({x*x%13 for x in range(13)}),
        'arithmetic_regression':arithmetic_cases(),
        'not_original_NC_count':True}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',required=True);a=ap.parse_args()
    obj=make();p=Path(a.output);p.parent.mkdir(parents=True,exist_ok=True);p.write_bytes(canon(obj))
    print(json.dumps({'status':'PASS','certificate_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),
      'integer_digit_cases':obj['arithmetic_regression']['count'],'root_intervals':len(obj['root_regressions'])+1}))
if __name__=='__main__': main()
