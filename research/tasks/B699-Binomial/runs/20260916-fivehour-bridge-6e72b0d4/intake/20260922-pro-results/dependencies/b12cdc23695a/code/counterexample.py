"""Finite exact certificate for an auxiliary irreducible B22, never a B699 counterexample."""
from exact import *
from pathlib import Path
import json

def remainder(a,b,p):
    a=[x%p for x in a];b=[x%p for x in b]
    while a and a[-1]==0:a.pop()
    while len(a)>=len(b):
        c=a[-1]*pow(b[-1],-1,p)%p;k=len(a)-len(b)
        for i,x in enumerate(b):a[k+i]=(a[k+i]-c*x)%p
        while a and a[-1]==0:a.pop()
    return a

def run(out):
    H=add(product(ell(t) for t in (0,1,2,4)),mul(W,{(2,0):Q(3),(1,0):Q(-23),(0,1):Q(-1),(0,0):Q(44)}))
    V=to_vec(H);sig=generic_signature((V,));assert sig['mu']==22 and sig['z']==19
    assert sig['delta']==[1,0,0,1,0,0]
    p=17;coef=[int(H.get((0,b),0))%p for b in range(5)]
    assert coef==[14,15,16,4,1]
    linear=[];quadratic=[]
    for a in range(p):
        rem=remainder(coef,[a,1],p);assert rem;linear.append(rem)
    for a in range(p):
        for b in range(p):
            rem=remainder(coef,[a,b,1],p);assert rem;quadratic.append(rem)
    # A reducible degree-four polynomial has a factor of degree one or two.
    # Monic constant X-leading coefficient transports this certificate to Q[N,X].
    result=dict(status='PASS_AUXILIARY_IRREDUCIBLE_COUNTEREXAMPLE',definition='ell0*ell1*ell2*ell4 + W*(3*N^2-23*N-X+44)',primitive=primitive(V)[0],signature=sig,N_specialization=0,prime=p,coefficients_mod_p=coef,linear_remainders=linear,quadratic_remainders=quadratic,B699_counterexample=False,divides_actual_G_proved=False)
    Path(out).write_text(json.dumps(result,indent=2)+'\n');print(result['status'],flush=True)
    return result
if __name__=='__main__':
    import sys
    run(sys.argv[1])
