"""Bounded falsification/diagnostic only; not an infinite-domain proof."""
import json, math, sys
from pathlib import Path
from sympy import divisors, factorint
limit=int(sys.argv[1]) if len(sys.argv)>1 else 1001
out=[]; pairs=0
for Q in range(3,limit,2):
    for v in divisors(Q**3-1):
        if v>=Q: break
        if v%2: continue
        pairs+=1
        D=v*(Q**5-(Q-v)**2)
        z=math.isqrt(D)
        if z*z!=D: continue
        den=v*(Q-v)
        for sign in [1,-1]:
            num=v*Q*Q+sign*z
            if num<=0 or num%den: continue
            nu=num//den
            if (v*nu*nu+1)%(Q*Q): continue
            P=(v*nu*nu+1)//(Q*Q)
            if (P+2*nu)%Q: continue
            h=(P+2*nu)//Q
            if P !=Q+h*v: continue
            n=P*Q*nu+2
            E=P+nu; F=Q*Q+v*nu
            sig=E*Q*Q; tau=P*F
            assert n==sig+tau and E*F==n-1
            out.append(dict(Q=Q,v=v,nu=nu,P=P,h=h,n=n,sigma=sig,tau=tau,P_factors={str(k):x for k,x in factorint(P).items()},Q_factors={str(k):x for k,x in factorint(Q).items()},n_factors={str(k):x for k,x in factorint(n).items()}))
result={'purpose':'diagnostic bounded weak integer shell; no inference of infinite nonexistence','Q_exclusive_limit':limit,'divisor_pairs':pairs,'solutions':out}
path=Path(__file__).resolve().parents[1]/'outputs'/f'weak-shell-{limit}.json'
path.write_text(json.dumps(result,indent=2))
print(json.dumps(result,indent=2)[:10000])
