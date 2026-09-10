"""Small exact regression audits. These finite tests do not replace the
universal algebraic proofs in REPORT.md or prove the external BFT estimates.
"""
from __future__ import annotations
from fractions import Fraction as F
from math import comb, factorial, gcd, isqrt
from pathlib import Path
import json,time
from rational_intervals import sqrtq,logq,I
ROOT=Path(__file__).resolve().parents[1]
def trim(a):
    while len(a)>1 and a[-1]==0:a.pop()
    return a

def add(a,b,sgn=1):
    out=[0]*max(len(a),len(b))
    for k,x in enumerate(a):out[k]+=x
    for k,x in enumerate(b):out[k]+=sgn*x
    return trim(out)

def mul(a,b):
    out=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):out[i+j]+=x*y
    return trim(out)

def pade(A,B,C):
    M=A+B+C+1
    P=[(-1)**(C+r)*comb(M,r)*comb(A+C-r,A) for r in range(C+1)]
    Q=[(-1)**C*comb(A+C-r,C)*comb(B+r,r) for r in range(A+1)]
    E=[(-1)**r*comb(A+r,r)*comb(M,A+C+r+1) for r in range(B+1)]
    # Independently obtain P by expanding the defining integral and beta integral.
    scale=F(factorial(M),factorial(A)*factorial(B)*factorial(C))
    Pi=[scale*comb(C,r)*(-1)**(C-r)*F(factorial(A+C-r)*factorial(B),factorial(M-r))
        for r in range(C+1)]
    assert all(x.denominator==1 for x in Pi) and Pi==P
    f=[(-1)**r*comb(B+C+1,r) for r in range(B+C+2)]
    assert add(P,mul(f,Q),-1)==trim([0]*(A+C+1)+E)
    return P,Q,E

def primes(n):return [p for p in range(2,n+1) if all(p%d for d in range(2,isqrt(p)+1))]
def vp(n,p):
    assert n>0
    e=0
    while n%p==0:e+=1;n//=p
    return e

def falling(n,h):
    z=1
    for a in range(h):z*=n-a
    return z

def main():
    start=time.monotonic();poly=0;det=0
    for A in range(5):
      for B in range(6):
       for C in range(5):pade(A,B,C);poly+=1
    for A in range(8):
      for B in range(1,9):
        P,Q,E=pade(A,B,A);P2,Q2,_=pade(A+1,B-1,A+1)
        expr=add(mul(P,Q2),mul(Q,P2),-1)
        assert expr==[0]*(2*A+1)+[E[0]*Q2[0]] and E[0]*Q2[0]!=0
        det+=1
    # Reproduce the source sign discrepancy, not just a numerical rounding issue.
    P,Q,E=pade(1,1,1)
    assert P==[-2,4] and Q==[-2,-2] and E==[4,-2]
    # Directed interval regression checks at rational arguments.
    intervals=0
    for a in range(1,60):
      for b in [1,2,3,7,101]:
        x=F(a,b);z=sqrtq(x);assert z.lo*z.lo<=x<=z.hi*z.hi
        lx=logq(x);lr=logq(1/x)
        assert lx.lo+lr.lo<=0<=lx.hi+lr.hi
        intervals+=1
    assert logq(F(1))==I.point(0)
    rows=json.loads((ROOT/'results/refined_profiles.json').read_text())['profiles']
    small=0;power=0;endpoint=0;zero=0
    for row in rows:
      i=row['i'];r=row['r'];s=row['s'];L=i-r-1;lam=2*s-r
      for n in range(2*i+2,121):
        ci=comb(n,i)
        U=1
        for p in primes(i-1):
          hp=max(vp(n-a,p) for a in range(i))
          e=vp(ci,p)
          assert e<=hp
          U*=p**e
        assert ci%U==0
        for j in range(i+1,n//2+1):
          cj=comb(n,j);k=n-j;D=1
          for p in primes(n):
            if p<i or ci%p or cj%p==0:continue
            e=vp(ci,p);q=p**(e+(1 if p==i else 0))
            a=n%q;b=j%q;c=k%q
            assert q>i and a<i and b+c==a
            multiplicity=max(a-r,0)+max(s-b,0)+max(s-c,0)
            assert multiplicity>=lam
            D*=p**e;power+=1
            if p==i:endpoint+=1
          W=1
          for h in range(1,s+1):W*=falling(j,h)*falling(k,h)
          for h in range(1,L+1):W*=falling(n-i+h,h)
          assert W>0 and W%(D**lam)==0
          if D==1:zero+=1
          small+=1
    dedicated_endpoint=0
    for p in [3,5,7,11,13,19,23]:
      i=p;r=p//3;s=2*p//3;L=i-r-1;lam=2*s-r
      for a in range(p):
        n=2*p*p+a;j=p*p;k=n-j;ci=comb(n,i);cj=comb(n,j)
        e=vp(ci,p);q=p**(e+1)
        assert e>0 and cj%p!=0 and q>i and n%q==a and j%q+k%q==a
        W=1
        for h in range(1,s+1):W*=falling(j,h)*falling(k,h)
        for h in range(1,L+1):W*=falling(n-i+h,h)
        assert W%(p**(e*lam))==0
        dedicated_endpoint+=1
    out={'status':'PASS_EXACT_REGRESSION','polynomial_identity_cases':poly,
      'neighbor_determinant_cases':det,'rational_interval_cases':intervals,
      'three_window_triples':small,'avoided_full_power_occurrences':power,
      'endpoint_p_equals_i_occurrences_in_main_box':endpoint,
      'dedicated_endpoint_p_equals_i_cases':dedicated_endpoint,'D_equals_one_cases':zero,
      'ranges':'A,C=0..4,B=0..5; determinant A=0..7,B=1..8; target i in seven profiles,2i+2<=n<=120, i<j<=n//2',
      'source_sign_check':{'integral_P_111':[-2,4],'printed_P_111':[2,-4]},
      'seconds':time.monotonic()-start,
      'caution':'Finite regression only; universal proofs and published inputs remain distinct.'}
    (ROOT/'results/elementary_audit.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps(out,indent=2))
if __name__=='__main__':main()
