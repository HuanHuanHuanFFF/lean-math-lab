#!/usr/bin/env python3
"""Independent checker B: exact rational interpolation plus convolution.
No SymPy, no imports from checker A/generator. Semantic equality is certified
by a degree-bounded rational grid, NOT inferred from numerical sampling:
N*M - denominator*(M*barrier) has degree <=28 in d and <=6 in A.
The explicit M below clears denominators; 29 by 7 exact values prove identity.
Positive shifted coefficients are then reconstructed by convolution.
"""
from __future__ import annotations
import argparse,json
from fractions import Fraction as F
from pathlib import Path

NAMES=(
'eta_minus_positive','eta_plus_below_quarter','f_minus_below_minus_one','f_plus_positive',
 'tau_lower_margin_odd_d','tau_upper_margin_odd_d','tau_derivative_margin','x_minus_four_margin',
 'even_d_A_ge4_tau_above_eta','even_d_A_ge4_tau_below_one',
 'A2_eta_minus_positive','A2_eta_plus_below_quarter','A2_f_minus_below_minus_one',
 'A2_f_plus_positive','A2_tau_above_minus_quarter','A2_tau_plus_eps_negative','A2_x_minus_four_margin')

def semantic(d,A):
    d=F(d);A=F(A);h=d*d+A-1
    b=A/(2*d)+1/d**2+(20-A*A)/(8*d**3)
    L=b-1/d**3;U=b+1/d**3
    def f(e):
        y=d+e
        return (h-2*y)*y*y-(h-y)*(h-y) # independent algebraic spelling
    def E(e):
        y=d+e
        tau=(h-2*y)*y-h+y
        base=d**3-3*d*d+3*A*d/2+2-3*A
        return tau-base
    value=[L,F(1,4)-U,-f(L)-1,f(U),F(1,4)+E(L),
      F(1,4)-E(U)-F(2,27),d*d-4*d+A-1,h-2*(d+U)-4,
      E(L)-U,1-E(U)-F(2,27)]
    mult=[8*d**3,8*d**3,512*d**9,512*d**9,32*d**6,864*d**6,
          F(1),8*d**3,32*d**6,864*d**6]
    # Special A=2; do not inherit the interpolation A value.
    h=d*d+1
    sL=(d*d+d+1)/d**3
    sU=(d**3+d*d+2*d+6)/d**4
    def sf(e):
        y=d+e
        return (h-2*y)*y*y-(h-y)**2
    def sE(e):
        y=d+e
        return (h-2*y)*y-h+y-(d**3-3*d*d+3*d-4)
    value += [sL,F(1,4)-sU,-sf(sL)-1,sf(sU),F(1,4)+sE(sL),
              -sE(sU)-2/(d*d+1),h-2*(d+sU)-4]
    mult += [d**3,4*d**4,d**9,d**12,4*d**6,d**8*(d*d+1),d**4]
    return value,mult

def readpoly(rows):
    p={}
    for i,j,c in rows:
        assert type(i) is int and type(j) is int and i>=0 and j>=0
        assert (i,j) not in p and isinstance(c,str)
        v=int(c);assert v and str(v)==c
        p[i,j]=v
    return p

def evalpoly(p,x,y):return sum(c*x**i*y**j for (i,j),c in p.items())
def plus(a,b):
    r=dict(a)
    for k,v in b.items():r[k]=r.get(k,0)+v
    return {k:v for k,v in r.items() if v}
def times(a,b):
    r={}
    for (i,j),u in a.items():
        for (k,l),v in b.items():r[i+k,j+l]=r.get((i+k,j+l),0)+u*v
    return {k:v for k,v in r.items() if v}
def powers(p,e):
    out=[{(0,0):1}]
    for _ in range(e):out.append(times(out[-1],p))
    return out

def verify(data):
    assert data['schema']=='B699-NEAR-SQUARE-CARRY-v1'
    assert data['variables']==['d','A'] and data['shift_variables']==['U','V']
    assert tuple(it['id'] for it in data['items'])==NAMES
    checked=0
    for index,it in enumerate(data['items']):
        n=readpoly(it['numerator']);den=readpoly(it['denominator']);shift=readpoly(it['shifted_numerator'])
        assert n and den
        assert max(i for i,j in n)<=16 and max(j for i,j in n)<=6
        assert max(i for i,j in den)<=12 and all(j==0 and c>0 for (i,j),c in den.items())
        special=index>=10;amin=4 if index in (8,9) else 1
        domain={'kind':'A2','d_min':256} if special else {'kind':'general','A_min':amin,'scale':64}
        assert it['domain']==domain
        if special:assert all(j==0 for i,j in n)
        for d in range(1,30):
            for A in ([2] if special else range(1,8)):
                vals,ms=semantic(d,A);E,M=vals[index],ms[index]
                assert (M*E).denominator==1,'denominator clearing'
                left=evalpoly(n,d,A)*M-evalpoly(den,d,A)*(M*E)
                assert left==0,it['id']+' semantic identity'
                checked+=1
        # Reconstruct shift by repeated multiplication, not binomial expansion.
        Ap={(0,0):(2 if special else amin),(1,0):1} if not special else {(0,0):2}
        if special:Dp={(0,0):256,(0,1):1}
        else:Dp=plus({k:64*v for k,v in times(Ap,Ap).items()},{(0,1):1})
        dp=powers(Dp,max(i for i,j in n));ap=powers(Ap,max(j for i,j in n))
        actual={}
        for (i,j),c in n.items():actual=plus(actual,{k:c*v for k,v in times(dp[i],ap[j]).items()})
        assert actual==shift,it['id']+' convolution shift'
        assert actual.get((0,0),0)>0 and all(c>0 for c in actual.values())
    return {'status':'PASS','checker':'B/exact interpolation and convolution',
            'uniform_inequalities':len(NAMES),'exact_identity_evaluations':checked,
            'identity_degree_bound':[28,6]}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('certificate',type=Path);args=ap.parse_args()
    try:out=verify(json.loads(args.certificate.read_text()))
    except (AssertionError,KeyError,TypeError,ValueError) as exc:raise SystemExit('REJECT B: '+str(exc))
    print(json.dumps(out,sort_keys=True))
if __name__=='__main__':main()
