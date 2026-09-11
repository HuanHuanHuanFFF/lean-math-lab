"""Finite algebra/valuation regressions, not substitutes for the paper proofs.
Covers all selected permutations, both deltas, zero exponents, full powers,
and the exhaustive occupied-position partition classification.
"""
from pathlib import Path
from fractions import Fraction as F
from itertools import product,combinations
import json,math,sys,time
R=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(R/'code/vendor'))
from regression_separate_degree import poly,ev,intervals

def primes(n):
    return [p for p in range(2,n+1) if all(p%d for d in range(2,math.isqrt(p)+1))]

def main():
    start=time.monotonic();summary=json.loads((R/'evidence/content_check.json').read_text());triples=sorted({tuple(p) for r in summary['rows'] for p in r['permutations']})
    count=dict(carry_residue_cases=0,content_instances=0,polynomial_identities=0,adjacent_determinants=0,clearing_instances=0,full_power_transfer_cases=0,exponent_above_one_cases=0,small_prime_deletion_cases=0,triangular_transfer_cases=0)
    for p in [2,3,5,7,11,13]:
        for a,b,c in product(range(p),repeat=3):
            if a+b+c<2*p-1:continue
            for rho in range(p):
                assert (a+c-rho)//p-(a-rho)//p+(b+rho)//p>=1;count['carry_residue_cases']+=1
    for e,d,f in triples:
        N=e+d+f;cat=intervals(e,d,f)
        for m in [1,2,3]:
            forced=[]
            for p in primes(N*m):
                w=m//p;hits=0
                for l,u,J in cat:
                    if F(m,w+u)<p<=F(N*m-2,N*w+J+2):hits+=1
                assert hits<=1
                if hits:forced.append(p)
            divisor=math.prod(forced)
            for delta in [0,1]:
                A=e*m-delta;B=f*m-1+delta;C=d*m-delta;P,Q,E=poly(A,B,C);G=math.gcd(*Q)
                assert G>0 and G%divisor==0 and all(v%G==0 for v in P);count['content_instances']+=1
                for z in [F(1,9),F(2,245)]:
                    assert ev(P,z)-(1-z)**((d+f)*m)*ev(Q,z)==z**(A+C+1)*ev(E,z);count['polynomial_identities']+=1
    for row in json.loads((R/'input/cuts.json').read_text())['cuts']:
        p,q,k,l,a,b,e,d,f=[row[x] for x in ['p','q','k0','l0','a','b','e','d','f']]
        P0=p**k;Q0=q**l;L=a*P0;D=L-b*Q0;z=F(D,L);c=d+f
        for m in [1,2]:
            data=[]
            for delta in [0,1]:
                A=e*m-delta;B=f*m-1+delta;C=d*m-delta;P,Q,E=poly(A,B,C);G=math.gcd(*Q)
                data.append((delta,A,C,ev(P,z),ev(Q,z),ev(E,z),G))
            assert data[0][3]*data[1][4]-data[1][3]*data[0][4]!=0;count['adjacent_determinants']+=1
            for r,s,Ap,Aq in [(0,0,1,1),(1,0,7,11),(k*c*m,l*c*m,1,1),(k*(e+f)*m,l*c*m,1,1)]:
                X=F(p)**(r-k*c*m)*Ap;Z=F(q)**(s-l*c*m)*Aq;difference=p**r*Ap-q**s*Aq
                multiplier=a**(max(e-d,0)*m)*p**max(k*(e+f)*m-r,0)*q**max(l*c*m-s,0)
                values=[]
                for delta,A,C,P,Q,E,G in data:
                    pp=F(L)**C*P/G;qq=F(L)**C*Q/G;I=a**(c*m)*pp*Z-b**(c*m)*qq*X
                    tail=F(L)**(c*m-A-1)*D**(A+C+1)*E/G
                    assert (multiplier*I).denominator==1
                    assert P0**(c*m)*I==tail*Z-b**(c*m)*qq*difference
                    values.append(I);count['clearing_instances']+=1
                assert any(values)
    for a in range(14):
        for b in range(a+1):
            c=a-b;assert max(0,9-b)+max(0,9-c)>=18-a;count['triangular_transfer_cases']+=1
    ps=primes(600)
    def vp(x,p):
        ans=0
        while x%p==0:x//=p;ans+=1
        return ans
    for n in range(30,601):
        for p in [2,3,5,7,11,13]:
            vals=[vp(n-a,p) for a in range(14)];where=max(range(14),key=lambda a:vals[a])
            assert sum(vals)-vals[where]<=vp(math.factorial(13),p)
            assert sum((18-a)*v for a,v in enumerate(vals) if a!=where)<=18*vp(math.factorial(14),p)
            count['small_prime_deletion_cases']+=1
        facts=[]
        for a in range(14):
            t=n-a
            for p in ps:
                if p*p>t:break
                if t%p:continue
                e=0
                while t%p==0:t//=p;e+=1
                if p>=14:facts.append((p,e,a))
            if t>=14:facts.append((t,1,a))
        cn=math.comb(n,14);v=math.comb(n,15)
        for j in range(15,n//2+1):
            if j>15:v=v*(n-j+1)//j
            for p,e,a in facts:
                pe=p**e;assert cn%pe==0
                if v%p==0:continue
                assert j%pe+(n-j)%pe==a
                count['full_power_transfer_cases']+=1;count['exponent_above_one_cases']+=int(e>1)
    # Restricted-growth strings enumerate all set partitions of six primes.
    classes={}
    def partitions(z):
        if len(z)==6:
            m=max(z)+1;classes[m]=classes.get(m,0)+1
            if m==5:assert sorted(z.count(k) for k in range(m))==[1,1,1,1,2]
            return
        for v in range(max(z)+2):partitions(z+[v])
    partitions([0]);assert sum(classes.values())==203 and classes[6]==1 and classes[5]==15 and sum(v for k,v in classes.items() if k<=4)==187
    result=dict(status='PASS_FINITE_REGRESSIONS_NOT_UNIVERSAL_PROOF',permutation_triples=len(triples),m_samples=[1,2,3],transfer_n_range=[30,600],partition_class_counts=classes,**count,seconds=time.monotonic()-start)
    (R/'evidence/math_regression.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result,indent=2),flush=True)
if __name__=='__main__':
    if not __debug__:raise RuntimeError('No -O')
    main()
