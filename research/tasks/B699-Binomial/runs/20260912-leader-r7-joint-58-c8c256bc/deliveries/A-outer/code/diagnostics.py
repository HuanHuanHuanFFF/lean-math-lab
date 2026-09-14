"""Independent finite diagnostics, not substitutes for infinite proofs.
Exact Python integers only. Deliberately no discovery search or old replay.
"""
from __future__ import annotations
from math import comb,gcd
from pathlib import Path
import argparse,json,time
R=Path(__file__).resolve().parents[1]

def val(x:int,p:int)->int:
    if x==0:raise ValueError('valuation at zero is not finite')
    x=abs(x);e=0
    while x%p==0:x//=p;e+=1
    return e

def evalp(F:dict[tuple[int,int],int],n:int,j:int)->int:
    return sum(c*n**a*j**b for (a,b),c in F.items())

def order(F:dict[tuple[int,int],int],n:int,j:int)->int:
    d=max(a+b for a,b in F)
    for t in range(d+1):
        for u in range(t+1):
            v=t-u
            z=sum(c*comb(a,u)*comb(b,v)*n**(a-u)*j**(b-v)
                  for (a,b),c in F.items() if a>=u and b>=v)
            if z:return t
    raise ValueError('zero polynomial not in test set')

def main()->None:
    ap=argparse.ArgumentParser();ap.add_argument('--max-n',type=int,default=320);args=ap.parse_args()
    if not 20<=args.max_n<=2048:raise ValueError('diagnostic max-n must be between20 and2048')
    start=time.monotonic();N=args.max_n
    spf=list(range(N+1))
    for p in range(2,N+1):
        if spf[p]==p:
            for k in range(p*p,N+1,p):
                if spf[k]==k:spf[k]=p
    def factor(x):
        out=[]
        while x>1:
            p=spf[x];q=1
            while x%p==0:x//=p;q*=p
            out.append((p,q))
        return out
    polys=[
      {(1,0):1},{(0,1):1},{(0,2):1,(1,0):-1},
      {(2,0):1,(1,1):-3,(0,2):2,(1,0):-1},
      {(1,1):1,(0,2):-1},
      {(1,1):1,(0,2):-1,(1,0):-2,(0,0):4},
      {(0,3):1,(1,0):1},{(2,1):1,(0,4):1}]
    orders=[{(r,b):order(F,r,b) for r in range(1,9) for b in range(r+1)} for F in polys]
    origins=[order(F,0,0) for F in polys]
    pairs=complete_q=checks=zero_values=0;nontrivial_g_pairs=0
    for n in range(20,N+1):
        fs={r:[(p,q) for p,q in factor(n-r) if p>=11] for r in range(1,9)}
        for j in range(10,n//2+1):
            pairs+=1;C=comb(n,j);g=gcd(n,j);U=[]
            nontrivial_g_pairs+=g>1
            for r in range(1,9):
                for p,q in fs[r]:
                    if C%p:
                        b=j%q
                        assert b<=r and gcd(g,q)==1,(n,j,r,p,q,'invalid full-power node')
                        U.append((r,b,q));complete_q+=1
            for F,oo,t in zip(polys,orders,origins):
                v=evalp(F,n,j);z=g**t
                assert v%z==0
                divisor=1
                for r,b,q in U:divisor*=q**oo[r,b]
                assert (v//z)%divisor==0,(n,j,F,divisor,v//z)
                checks+=1;zero_values+=v==0
    # Full prime-power lifting, all exponents in this finite diagnostic range.
    lte_cases=complete_power_cases=0
    for M in range(2,97):
        for h in range(2,97):
            z=pow(M,h)-1
            for p in (3,7):
                q=p**val(z,p)
                if M%p:
                    d=next(k for k in range(1,p) if pow(M,k,p)==1)
                    expected=val(M**d-1,p)+val(h,p) if h%d==0 else 0
                else:expected=0
                assert val(z,p)==expected
                lte_cases+=1
                # Cubed form avoids real exponent evaluation.
                assert q**3 <= (6*h)**3*(M**h)**2
                complete_power_cases+=1
            # Extra full3 factor for n=3 M^h.
            q3=3**val(3*z,3)
            assert q3**3 <= (6*h)**3*(3*M**h)**2
            complete_power_cases+=1
    sum_trials=sum_qualified=0
    for x in range(1,49):
        for y in range(1,49):
            if gcd(x,y)!=1:continue
            for h in range(2,32):
                sum_trials+=1;z=x**h+y**h
                if z%80:continue
                sum_qualified+=1
                assert h%2==1 and x%2==1 and y%2==1 and (x+y)%5==0
                assert val(z,2)==val(x+y,2)
                assert val(z,5)==val(x+y,5)+val(h,5)
                S=2**val(z,2)*5**val(z,5)
                assert S<=h*(x+y)
    # Exact counterexamples to tempting but invalid strengthening.
    edge=[]
    assert comb(22,11)%11 and (22//gcd(22,11))%11
    edge.append({'invalid_rule':'include normalized row0','n':22,'j':11,'q':11,'F_over_g':2})
    assert comb(23,10)%11==0 and 10*9%11!=0
    edge.append({'invalid_rule':'use full T without avoiding C(n,j)','n':23,'j':10,'row':1,'q':11,'F_J_Jminus1':90})
    assert 3**val(3*(2**2-1),3)>2*(2+1)
    edge.append({'invalid_rule':'omit factor3 at n-3','n':12,'h':2,'Q3':9,'wrong_bound':6})
    z=10**3+10**3;S=2**val(z,2)*5**val(z,5)
    assert S>3*(10+10)
    edge.append({'invalid_rule':'drop coprimality from sum LTE bound','x':10,'y':10,'h':3,'S25':S,'wrong_bound':60})
    assert 2**3*5**2*2==20**2 and gcd(gcd(3,2),1)==1
    edge.append({'invalid_rule':'truncate g from primitive exponents','a':3,'b':2,'g':2,'N':400})
    assert 2**2-4==0 and 2%2==0 and 1%2!=0
    edge.append({'invalid_rule':'drop g^(h-1) in zero fibre','n':4,'j':2,'alpha':2,'g':2,'F':'J^2-N'})
    out={'status':'PASS_FINITE_DIAGNOSTICS_NOT_AN_INFINITE_PROOF','range_n':[20,N],
       'legal_pairs':pairs,'nontrivial_g_pairs':nontrivial_g_pairs,'complete_avoided_prime_powers':complete_q,
       'polynomials':len(polys),'normalized_divisibility_checks':checks,'zero_values_retained_without_size_claim':zero_values,
       'lte_cases':lte_cases,'complete_power_bound_checks':complete_power_cases,
       'primitive_sum_trials':sum_trials,'primitive_sum_qualified_cases':sum_qualified,
       'invalid_generalizations_counterexamples':edge,'seconds':time.monotonic()-start}
    (R/'logs/FINITE_DIAGNOSTICS.json').write_text(json.dumps(out,indent=2)+'\n')
    print(out['status']);print(json.dumps({k:v for k,v in out.items() if k!='invalid_generalizations_counterexamples'}))
if __name__=='__main__':main()
