#!/usr/bin/env python3
"""Finite real-binomial checks and counterguards; not proof by scanning."""
from pathlib import Path
from math import comb,gcd,isqrt,prod
from fractions import Fraction
import json,time
ROOT=Path(__file__).resolve().parents[1]

def need(x,msg):
    if not x:raise ValueError(msg)
def vp(x,p):
    x=abs(x);need(x!=0,'valuation zero');e=0
    while x%p==0:x//=p;e+=1
    return e

def rough(x,m):
    for p in (2,3,5,7):
        if p<m:
            while x%p==0:x//=p
    return x

def condition(n,m):
    ps=(2,3) if m==5 else (2,3,5);H=(0,3) if m==5 else (0,3,4)
    return all(max(vp(n-r,p) for r in range(m))==max(vp(n-h,p) for h in H) for p in ps)

def value(n,j,p):
    e=0;q=p
    while q<=n:e+=n//q-j//q-(n-j)//q;q*=p
    return e

def ps_upto(N):
    return [p for p in range(2,N+1) if all(p%q for q in range(2,isqrt(p)+1))]
PRIMES=ps_upto(20000)
def witness(n,j,m):
    for p in PRIMES:
        if p>=m and value(n,m,p)>0 and value(n,j,p)>0:return {'p':p,'source_v':value(n,m,p),'target_v':value(n,j,p)}
    raise ValueError(('no small witness found; not a counterexample',n,j,m))

def crt(rs):
    n=0;M=1
    for a,q in rs:n+=M*((a-n)*pow(M,-1,q)%q);M*=q
    return n%M,M

def main():
    counts={'legal_target_configs':0,'accepted_i5':0,'accepted_i7':0,'bridge_5_to_6':0,'bridge_7_to_8':0,'bridge_7_to_9':0,'endpoint_residue_equivalences':0,'rational_m5_parity_cases':0,'m7_nonlinear_identity_cases':0}
    # Exact (not logarithmic) nonlinear identity at actual integer arguments.
    def R(a,b):
        z=b*b
        return 500000*a**9-47625*a**8+1512*a**7-30000*a**6*z-16*a**6+2730*a**5*z-56*a**4*z+600*a**3*z*z+31*a*a*z*z-4*z**3
    for n in range(12,601):
        ok5=condition(n,5);ok7=n>=16 and condition(n,7)
        cc={m:comb(n,m) for m in (5,6,7,8,9)}
        for m in (5,7):
            if n>=2*(m+1):
                need((value(n,m,m)==0)==(n%(m*m)>=m),'endpoint exclusion not equivalent');counts['endpoint_residue_equivalences']+=1
        q=1
        for j in range(1,n//2+1):
            q=q*(n-j+1)//j
            for m,ok in ((5,ok5),(7,ok7)):
                if j<=m:continue
                counts['legal_target_configs']+=1
                if not ok:continue
                W=rough(gcd(cc[m],q),m);need(W>1,'real gcd has no threshold prime');counts[f'accepted_i{m}']+=1
                if m==5 and n%25>=5 and j>6:
                    need(W%5!=0 and cc[6]%W==0,'full-divisor 5 to 6 bridge');counts['bridge_5_to_6']+=1
                if m==7 and n%49>=7:
                    need(W%7!=0,'unexpected endpoint 7')
                    for t in (8,9):
                        if j>t:need(cc[t]%W==0,'full-divisor 7 to 8/9 bridge');counts[f'bridge_7_to_{t}']+=1
            if ok5 and j>=6 and min(max(2**vp(n-r,2) for r in range(5)),max(3**vp(n-r,3) for r in range(5)))>4:
                g=gcd(n,j);X=j*(n-j);P=X*(X-n+1)*(2*n*n-3*X-6*n+4);D=(n-1)**3*(n-2)**2*(n-4)
                ep=1
                for r,w in ((1,3),(2,2),(4,1)):
                    if vp(n-r,5)==1:ep*=5**w
                Cs=(16 if n%8==0 else 8)*ep;U=Fraction(Cs*P,g*g*D)
                need(U>0 and Fraction(P,D)<Fraction(1,8),'positive critical fraction bound')
                need(U.denominator%2==1,'parity denominator unexpectedly even')
                need(U.numerator%(8 if n%2 or g%2 else 4)==0,'critical quotient parity')
                counts['rational_m5_parity_cases']+=1
            if ok7 and j>=8 and n-2*j>=2 and n<=100:
                X=j*(n-j);Delta=n-2*j;P=X*(X-n+1)*(n*n-2*X-3*n+2)
                a=Fraction(P,(n-1)**3*(n-2)**2*(n-5));b=Fraction(P*Delta*(2*n*n-5*X-6*n+4),(n-1)**4*(n-2)**3*(n-5)*(n-6))
                need(R(a,b)>0,'nonlinear gap sign at legal input');counts['m7_nonlinear_identity_cases']+=1
    examples=[]
    for m,p,cs in [(5,2,(3,15)),(7,5,(12,84))]:
        for c in cs:
            for a,g in [(3,11),(12,101),(40,1009),(80,10007)]:
                alpha=c*p**a;beta=alpha//2-1;n=g*alpha;j=g*beta
                need(gcd(alpha,beta)==1 and gcd(n,j)==g and m<j<=n//2,'family sample normalization')
                examples.append({'m':m,'c':c,'p0':p,'a':a,'g':g,'n':str(n),'j':str(j),**witness(n,j,m)})
    cylinders=[]
    for typ in ('5_to_6','7_to_8_9'):
        primes=(2,3,5) if typ=='5_to_6' else (2,3,5,7)
        places=(0,3,5) if typ=='5_to_6' else (0,3,4,7)
        for level in (0,1,2):
            es=(3+level*9,2+level*7,2+level*5) if len(primes)==3 else (3+level*9,2+level*7,2+level*5,2+level*3)
            rs=[(h+p**e,p**(e+1)) for p,h,e in zip(primes,places,es)]
            n,period=crt(rs)
            need(n>20,'small CRT representative')
            d=6 if len(primes)==3 else 8
            for p,h,e in zip(primes,places,es):
                vals=[vp(n-r,p) for r in range(d)];need(vals[h]==e and vals.count(max(vals))==1 and vals[h]==max(vals),'CRT role not exact')
            source=5 if len(primes)==3 else 7;j=n//3
            need(condition(n,source),'source position condition missing')
            need(n%(source*source)>=source,'endpoint not excluded')
            ww=witness(n,j,source);need(ww['p']>source,'bridge witness below threshold')
            for target in ((6,) if source==5 else (8,9)):
                need(ww['p']>=target and value(n,target,ww['p'])>0,'sample transfer failed')
            cylinders.append({'type':typ,'exponents':list(es),'n':str(n),'period':str(period),'j':str(j),**ww})
    guards=[]
    for m,n,j,p,Q in [(5,129,25,5,125),(7,349,49,7,343)]:
        need(value(n,m,p)>0 and value(n,j,p)>0,'endpoint witness not real')
        need(j%Q>n%Q and j%(Q//p)<=n%(Q//p),'endpoint-power reduction does not miss carry')
        guards.append({'m':m,'n':n,'j':j,'p':p,'Q':Q,'wrong_Q':Q//p,'source_v':value(n,m,p),'target_v':value(n,j,p)})
    need(14%7==0 and (14//gcd(35,14))%7!=0,'zero-row noncancellation witness')
    # Sign certificate cannot include Delta=0 or 1 without a separate argument.
    signed_controls=[]
    for n,j in [(80,40),(81,40),(16,8),(17,8)]:
        X=j*(n-j);P=X*(X-n+1)*(n*n-2*X-3*n+2);a=Fraction(P,(n-1)**3*(n-2)**2*(n-5));b=Fraction(P*(n-2*j)*(2*n*n-5*X-6*n+4),(n-1)**4*(n-2)**3*(n-5)*(n-6));z=R(a,b)
        signed_controls.append({'n':n,'j':j,'Delta':n-2*j,'R_sign':(z>0)-(z<0)})
    out={'counts':counts,'large_family_samples':examples,'CRT_cylinders':cylinders,'endpoint_guards':guards,'zero_row_guard':{'n':35,'j':14,'g':7,'q0':7},'sign_domain_controls':signed_controls,'meaning':'Finite regression only. Abstract quotient projections are not asserted to be NC inputs; universal closure is proved in notes/PROOFS.md.'}
    (ROOT/'evidence/regression.json').write_text(json.dumps(out,separators=(',',':'),ensure_ascii=False)+'\n')
    print(json.dumps(counts));print('large examples',len(examples),'cylinders',len(cylinders),'guards',guards)
if __name__=='__main__':main()
