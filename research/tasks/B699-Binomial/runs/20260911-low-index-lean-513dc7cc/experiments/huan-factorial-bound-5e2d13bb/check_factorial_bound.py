from __future__ import annotations
from fractions import Fraction
from math import factorial, gcd
from functools import reduce
from pathlib import Path
import json

OUT = Path(__file__).resolve().parent
PAIRS = [(3,2),(15,8),(15,11)]

def add(a,b):
    z=[0]*max(len(a),len(b))
    for i,v in enumerate(a): z[i]+=v
    for i,v in enumerate(b): z[i]+=v
    while len(z)>1 and z[-1]==0: z.pop()
    return z

def scale(a,c): return [c*v for v in a]

def mul(a,b):
    z=[0]*(len(a)+len(b)-1)
    for i,v in enumerate(a):
        for j,w in enumerate(b): z[i+j]+=v*w
    while len(z)>1 and z[-1]==0: z.pop()
    return z

def prod(factors):
    z=[1]
    for factor in factors: z=mul(z,factor)
    return z

def peval(a,x):
    z=0
    for v in reversed(a): z=z*x+v
    return z

def F(c,d,delta,m):
    return Fraction(factorial((c+d)*m-delta), factorial(d*m-delta)**2 * factorial((c-d)*m+delta-1))

def fstr(v): return str(v.numerator)+"/"+str(v.denominator)

rows=[]
for c,d in PAIRS:
    a,b=c+d,c-d
    beta=Fraction(a**a,d**(2*d)*b**b)
    # Variable x=m-1, so a*m+j becomes [a+j,a].
    U=prod([[a+j,a] for j in range(1,a)])
    W=prod([[d+j,d] for j in range(1,d)]*2+[[b+j,b] for j in range(1,b)])
    # Common ratio R=a*U/(b*d^2*m*(m+1)*W), both delta choices.
    lhs=scale(mul(prod([[2,1]]*3),W),beta.numerator*b*d*d)
    rhs=scale(mul([3,1],U),a*beta.denominator)
    residual=add(lhs,scale(rhs,-1))
    content=reduce(gcd,[abs(v) for v in residual])
    primitive=[v//content for v in residual]
    checks=[]
    for delta in [0,1]:
        # Independently expand the un-cancelled original-ratio residual.
        N=prod([[a+j,a] for j in range(1-delta,a-delta+1)])
        T=prod([[d+j,d] for j in range(1-delta,d-delta+1)]*2+[[b+j,b] for j in range(delta,b+delta)])
        raw=add(scale(mul(prod([[2,1]]*2),T),beta.numerator),
                scale(mul(prod([[1,1],[3,1]]),N),-beta.denominator))
        expected=scale(mul(prod([[1,1],[2,1]]) if delta==0 else prod([[1,1]]*2), residual),1)
        # Raw residual / reduced residual is m*(m+1) for delta=0 and m^2 for delta=1.
        assert raw==expected
        samples=[]
        for m in [1,2,3,5,10,25]:
            ratio=F(c,d,delta,m+1)/F(c,d,delta,m)
            reduced_ratio=Fraction(a*peval(U,m-1), b*d*d*m*(m+1)*peval(W,m-1))
            bound=beta*Fraction((m+1)**2,m*(m+2))
            assert ratio==reduced_ratio
            assert ratio<=bound
            assert F(c,d,1,m)/F(c,d,0,m)==Fraction(d*d,c*c-d*d)
            samples.append({"m":m,"recurrence_identity":True,"ratio_bound":True,"delta_ratio_identity":True})
        K=2*F(c,d,delta,1)/beta
        checks.append({"delta":delta,"F1":fstr(F(c,d,delta,1)),"K":fstr(K),"raw_residual_degree":len(raw)-1,"raw_residual_all_coefficients_nonnegative":all(v>=0 for v in raw),"samples":samples})
    rows.append({"c":c,"d":d,"a":a,"b":b,"beta":fstr(beta),"delta1_over_delta0":fstr(Fraction(d*d,c*c-d*d)),"variable":"x=m-1","residual_definition":"beta.num*b*d^2*(x+2)^3*W(x)-a*beta.den*(x+3)*U(x)","U_factors":[[a+j,a] for j in range(1,a)],"W_factors":[[d+j,d] for j in range(1,d)]*2+[[b+j,b] for j in range(1,b)],"residual_content":str(content),"primitive_coefficients_ascending":[str(v) for v in primitive],"residual_degree":len(residual)-1,"all_coefficients_strictly_positive":all(v>0 for v in primitive),"cases":checks})
result={"schema":1,"evidence":"exact Python integer/rational calculation; not Lean acceptance","pairs":rows}
(OUT/"factorial-certificates.json").write_text(json.dumps(result,indent=2)+"\n",encoding="utf-8")
print(json.dumps([{k:r[k] for k in ["c","d","beta","delta1_over_delta0","residual_degree","all_coefficients_strictly_positive"]}|{"cases":[{k:s[k] for k in ["delta","F1","K","raw_residual_degree","raw_residual_all_coefficients_nonnegative"]} for s in r["cases"]]} for r in rows],indent=2))
