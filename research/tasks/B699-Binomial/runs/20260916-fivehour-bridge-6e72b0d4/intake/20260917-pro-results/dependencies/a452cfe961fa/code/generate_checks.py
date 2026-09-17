#!/usr/bin/env python3
"""Discovery-free deterministic regression suite. No finite range proves the theorem."""
from pathlib import Path
from math import gcd,comb,isqrt
import json,sys

def prime(p):return p>=2 and all(p%d for d in range(2,isqrt(p)+1))
def oddpart(n):
    while n%2==0:n//=2
    return n
def val(n,p):
    if n==0:raise ValueError('valuation of zero')
    e=0
    while n%p==0:n//=p;e+=1
    return e
def leg(n,j,p):
    ans=0;q=p
    while q<=n:ans+=n//q-j//q-(n-j)//q;q*=p
    return ans

def kernel_cases():
    hits=[]; tested=0;cleared=0
    for T in range(3,34,2):
      for A in range(1,T):
       for B in range(1,T):
        for u in range(A):
         r=u*(A-u)
         qs=[q for q in range(1,3*A) if (q-3*r)%T==0]
         for v in range(B+1):
          de=A*v-B*u
          if de<=0:continue
          y=T*de+u;Z=3*y*(y-A)
          for q in qs:
           tested+=1
           if Z%q:continue
           n=Z//q+1
           # q need not be invertible modulo T. This is a necessary separate test.
           if n%T:continue
           nn=n//T-B
           if nn%A:continue
           X=nn//A
           if X<T**3:continue
           z=T*(u*X+v);j=min(z,n-z)
           if j<4:continue
           cleared+=1
           # Clearing A^2 is only one-way when it shares factors with n-1.
           if 3*j*(j-1)%(n-1):continue
           R=6*r*(2*A-u-3*y)+2*q*(y+3*u-2*A)
           assert R and R%T==0 and abs(R)<T*(n-2)
           assert 6*j*(j-1)*(j-2)%(n-2)
           hits.append([T,A,B,u,v,X,q,R])
    return {'range':{'odd_T_max':33},'q_trials':tested,'cleared_W1_candidates':cleared,'original_W1_count':len(hits),'cases':hits,
            'scope':'Complete bounded discovery probe in T only. No claim of exhaustive unbounded candidate recovery; infinite theorem is symbolic.'}

def small_rows():
    rows=set()
    for p in range(3,32,2):
     if not prime(p):continue
     for E in range(2,9):
      if p**E>3000:break
      for f in range(1,E):
       for A in range(1,p):
        for B in range(1,p):
         n=A*p**E+B*p**f
         if 8<=n<=3000:rows.add(n)
    pairs=0;direct_sum=0
    for n in sorted(rows):
      c3=comb(n,3);b=1
      for j in range(1,n//2+1):
        b=b*(n-j+1)//j
        if j<4:continue
        z=oddpart(gcd(c3,b));assert z>1
        pairs+=1;direct_sum+=z
    samples=[]
    for n,j,p in [(56,11,3),(12,4,3),(36,9,3),(143836,53966,71917)]:
      assert prime(p)
      a=leg(n,3,p);b=leg(n,j,p)
      if n<=100:
       assert a==val(comb(n,3),p) and b==val(comb(n,j),p)
      samples.append({'n':n,'j':j,'p':p,'choose3_valuation':a,'choosej_valuation':b})
    return {'row_count':len(rows),'rows':sorted(rows),'actual_binomial_pairs':pairs,'odd_gcd_checksum':direct_sum,'valuation_samples':samples,'scope':'Regression, not proof by scanning.'}

def block_check():
    stats=[]
    for p,f in [(3,2),(5,1),(5,2),(7,2)]:
      T=p**f;A=B=T-1;X=T**3;n=T*(A*X+B);cnt=0
      for u in range(A+1):
       for v in range(B+1):
        j=T*(u*X+v)
        if not 4<=j<=n//2:continue
        assert not (3*j*(j-1)%(n-1)==0 and 6*j*(j-1)*(j-2)%(n-2)==0)
        assert leg(n,j,p)==0
        cnt+=1
      stats.append({'p':p,'f':f,'n':n,'nonzero_digits':2*f,'legal_no_carry_pairs':cnt})
    return {'records':stats,'scope':'Finite implementation regressions of the all-f block theorem.'}

def bad_checks():
    records=[]
    # Named counterexamples to unsafe reversals or dropped side conditions.
    n,j=56,11
    assert 3*j*(j-1)%(n-1)==0 and 6*j*(j-1)*(j-2)%(n-2)==0
    assert oddpart(gcd(comb(n,3),comb(n,j)))>1
    records.append({'name':'two_projections_not_NC','n':n,'j':j,'gcd':gcd(comb(n,3),comb(n,j))})
    assert j%9==n%9 and j%27>n%27
    records.append({'name':'keep_full_27','n':n,'j':j,'mod9':j%9,'mod27':j%27})
    assert leg(12,3,3)==0 and leg(12,4,3)>0
    records.append({'name':'isolated_three_not_digit_dominance','n':12,'j':4})
    assert 3*4620*4619%27621 !=0
    records.append({'name':'cleared_A2_not_original_W1','n':27622,'j':4620,'A':6})
    assert 3*15*14%35==0 and gcd(36,15)**4<3*36 and not 36>3*oddpart(36)**4
    records.append({'name':'ROW3_needs_NC_not_W1_G4','n':36,'j':15})
    return {'counterexample_count':len(records),'records':records}

def main(out):
    out=Path(out);out.mkdir(parents=True,exist_ok=True)
    for name,data in [('kernel_cases',kernel_cases()),('small_rows',small_rows()),('blocks',block_check()),('boundaries',bad_checks())]:
      (out/(name+'.json')).write_text(json.dumps(data,sort_keys=True,indent=2)+'\n')
      print('PASS',name, {k:v for k,v in data.items() if isinstance(v,int)})
if __name__=='__main__':main(sys.argv[1])
