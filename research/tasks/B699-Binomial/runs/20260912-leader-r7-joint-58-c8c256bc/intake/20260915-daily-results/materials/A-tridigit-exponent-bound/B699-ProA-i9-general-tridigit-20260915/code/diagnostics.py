"""Finite diagnostics. They do not replace the quantified proofs."""
from pathlib import Path
from fractions import Fraction
from math import comb,gcd,factorial
import argparse,json,time,random
from math_core import *
ROOT=Path(__file__).resolve().parents[1]

def check(a,message):
    if not a: raise AssertionError(message)

def pmul(a,b):
    c=[Fraction(0)]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):c[i+j]+=x*y
    return c

def binom_poly(s,k):
    r=[Fraction(1)]
    for t in range(k):r=pmul(r,[Fraction(-t),Fraction(s)])
    return [v/factorial(k) for v in r]

def low_coeff_poly(b,C,B,S):
    out=[Fraction(0)]*10
    for k in range(10):
        c=pmul(binom_poly(S,k),binom_poly(C-S,9-k))
        w=(-1)**k*(b-B)**k*B**(9-k)
        for i,v in enumerate(c):out[i]+=w*v
    return out

def run():
    counts={};start=time.perf_counter();rng=random.Random(699915)
    # Independent polynomial-in-Q expansion, not the logarithmic formula.
    cases=[(6,513,2,1),(6,513,4,512),(9,1026,3,2),(2,2,1,1)]
    for _ in range(40):
        b=rng.randrange(2,12);C=rng.randrange(2,20);B=rng.randrange(1,b);S=rng.randrange(1,C)
        cases.append((b,C,B,S))
    for b,C,B,S in cases:
        poly=low_coeff_poly(b,C,B,S)
        check(poly[0]==0,'Q constant')
        check(poly[1]==Fraction(phi(b,C,B,S),9),'first coefficient identity')
        check(poly[2]==Fraction(second_numerator(b,C,B,S),2520),'second coefficient identity')
    counts['independent_Q_polynomial_cases']=len(cases)

    count=0; unit=0; nonunit=0
    for p in [11,13,17,19,23,31,73]:
        for _ in range(35):
            e=rng.randrange(1,5);K=rng.randrange(1,5);h=rng.randrange(1,5)
            b=rng.randrange(1,p);C=rng.randrange(1,p);B=rng.randrange(1,b+1);S=rng.randrange(C+1)
            n=make_n(p,e,K,h,b,C);j=p**e*(B*p**K+S);d=p**h+b
            x=coefficient(n,j,B,d);y=coefficient_recurrence(n,j,B,d)
            check(x==y,'two coefficient algorithms')
            f=phi(b,C,B,S);r=min(e,h,K)
            check((9*x-p**e*f)%p**(e+r)==0,'full first congruence')
            if f:
                t=vp(f,p)
                if t<r:
                    check(vp(x,p)==e+t,'first valuation exact')
                    if t:nonunit+=1
                    else:unit+=1
            count+=1
    counts.update(first_congruence_cases=count,first_exact_unit=unit,first_exact_nonunit=nonunit)

    # Full high-layer valuation, both equal and unequal H versus 9h.
    count=0;ties=0
    for p in [11,13,17,31,73,101]:
        for b,C in [(1,2),(2,1),(3,2),(2,3),(4,1)]:
            if b>=p or C>=p:continue
            for offset in [-1,0,1]:
                e=10;h=10;K=8*h+offset;H=K+h
                n=make_n(p,e,K,h,b,C);j=p**e*(b*p**K+C);d=p**h+b
                x=coefficient_recurrence(n,j,b,d)
                expected=e+min(H,9*h) if H!=9*h else e+H+vp(b**9-C,p)
                check(x!=0 and vp(x,p)==expected,'all-tail full valuation')
                check(x==coefficient(n,j,b,d),'tail coefficient independent')
                count+=1;ties+=int(offset==0)
    counts.update(full_tail_cases=count,full_tail_equal_exponents=ties)

    # Every balanced target is enumerated by coprime ninth-power pairs.
    count=0;found=0
    cases=[(b,C) for b in range(1,13) for C in range(1,50) if (b+C)%2]
    cases += [(6,513),(12,513),(18,513),(9,1026),(15,1026),(10,262145)]
    for b,C in cases:
        if C>2000:
            # The one larger case checks constructive masks, not a hidden giant scan.
            for x in balanced_masks(b,C):
                check(phi(b,C,x['B'],x['S'])==0,'constructed balanced mask')
            continue
        direct={(B,S) for B in range(1,b) for S in range(1,C) if phi(b,C,B,S)==0}
        param={(x['B'],x['S']) for x in balanced_masks(b,C)}
        check(direct==param,'complete balanced parameterization')
        count+=1;found+=len(direct)
    counts.update(balance_domain_pairs=count,balance_targets_found=found)

    # Second-order valuation, explicitly including a zero first-order coefficient.
    count=0
    for p,b,C,B,S in [(521,6,513,2,1),(521,6,513,4,512),(1031,9,1026,3,2),(1031,9,1026,6,1024)]:
        check(prime(p) and max(b,C)<p and phi(b,C,B,S)==0,'balanced source setup')
        for e in [14,15]:
            for dh,dK in [(0,0),(1,2),(5,3)]:
                h=e+14+dh;K=e+14+dK;n=make_n(p,e,K,h,b,C);j=p**e*(B*p**K+S);d=p**h+b
                x=coefficient(n,j,B,d);check(x==coefficient_recurrence(n,j,B,d),'balanced independent coefficient')
                T=second_numerator(b,C,B,S)
                modulus=p**min(3*e,e+h,e+K)
                check((2520*x-p**(2*e)*T)%modulus==0,'second-order complete congruence')
                check(vp(x,p)==2*e+vp(T,p),'second-order exact valuation')
                count+=1
    counts['balanced_second_order_cases']=count

    count=0;prime_roots=0
    for u in range(1,8):
        for v in range(1,8):
            if u==v or gcd(u,v)>1:continue
            for delta in [1,2,3]:
                for t in [1,2]:
                    b=delta*(u+v);C=t*(u**9+v**9);B=delta*u;S=t*u**9
                    T=second_numerator(b,C,B,S)
                    check(T!=0 and (T>0)==(B>b-B),'strict second sign')
                    count+=1
    for ell in [z for z in range(5,200) if prime(z)]:
        for x in range(1,ell):
            if (x**6-x**3+1)%ell==0:
                check((ell-1)%18==0 and pow(x,18,ell)==1 and all(pow(x,k,ell)!=1 for k in [1,2,3,6,9]),'order18 root')
                prime_roots+=1
    counts.update(second_sign_cases=count,cyclotomic_finite_roots=prime_roots)


    # Complete three-variable degree-two congruence, not just its specialization.
    mixed=0;near=0;early=0;late=0
    for B,S in [(2,1),(4,512)]:
        p=521;b=6;C=513;V=b-B;e=27
        for h in [10,20,26]+list(range(27,41))+[41,42,60]:
            K=max(3*e,3*e+6*h-72)
            n=make_n(p,e,K,h,b,C);Q=p**e;D=p**h;Y=p**K;j=Q*(B*Y+S)
            x=coefficient(n,j,B,D+b)
            check(x==coefficient_recurrence(n,j,B,D+b),'three-variable coefficient algorithms')
            T=second_numerator(b,C,B,S)
            remainder=2520*x-Q**2*T+2520*Q*D*S*V**8-280*Q*Y*B*V*(B**8-V**8)
            check(remainder%p**(e+2*min(e,h,K))==0,'whole degree-two congruence')
            mixed+=1
            if h<e:
                check(vp(x,p)==e+h,'smaller gap unique valuation');early+=1
            elif h<=e+13:
                delta=h-e;Td=T-2520*p**delta*S*V**8
                check(Td!=0 and abs(Td)<p**27,'near-resonance nonzero and degree')
                check((2520*x-Q**2*Td)%p**(3*e)==0,'near-resonance entire modulus')
                check(vp(x,p)==2*e+vp(Td,p),'near-resonance exact valuation');near+=1
            else:
                check(vp(x,p)==2*e+vp(T,p),'large gap second-order valuation');late+=1
    counts.update(three_variable_cases=mixed,near_resonance_cases=near,smaller_gap_cases=early,larger_gap_cases=late)

    # 2/5-adic denominator rigidity; no NC9 assumptions are used here.
    count=0;skipped=0
    for n in [400,800,1200,1600,3200]:
        for _ in range(80):
            j=rng.randrange(10,n//2+1);d=rng.randrange(2,50);units=[c for c in range(1,d) if gcd(c,d)==1]
            c=rng.choice(units);x=coefficient(n,j,c,d)
            for q in [2,5]:
                if d%q:continue
                A=vp(n,q);t=vp(j*d,q)
                if A==t:skipped+=1;continue
                check(x!=0 and vp(x,q)==min(A,t),'q denominator rigidity')
                count+=1
    counts.update(q_rigidity_cases=count,q_rigidity_equal_valuation_not_claimed=skipped)

    count=0
    for n in [16,32,400,800,1600]:
        for j in range(1,n//2):
            x=coefficient(n,j,1,2)
            check(x!=0 and vp(x,2)==vp(n-2*j,2),'symmetric root obstruction')
            count+=1
        check(coefficient(n,n//2,1,2)==0,'central zero retained')
    counts['symmetric_noncentral_cases']=count

    # Two exact exceptions justify keeping the hypotheses.
    check(phi(6,513,2,1)==0 and second_numerator(6,513,2,1)!=0,'first order really can vanish')
    check(phi(2,2,1,1)==0 and second_numerator(2,2,1,1)==0,'u=v really invalidates second sign')
    check(make_n(11,14,28,28,2,2)%2==1,'u=v source is excluded by n even')
    counts['negative_mathematical_controls']=3
    counts['seconds']=time.perf_counter()-start;counts['status']='PASS_NEW_DIAGNOSTICS_NOT_INFINITE_PROOF'
    return counts

def main():
    p=argparse.ArgumentParser();p.add_argument('--output',default=str(ROOT/'logs/diagnostics.json'));a=p.parse_args()
    result=run();path=Path(a.output);path.parent.mkdir(parents=True,exist_ok=True);path.write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result))
if __name__=='__main__':main()
