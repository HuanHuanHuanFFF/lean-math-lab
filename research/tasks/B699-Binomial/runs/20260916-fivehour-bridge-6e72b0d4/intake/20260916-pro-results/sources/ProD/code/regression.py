#!/usr/bin/env python3
"""Finite regression only; infinite conclusions are proved in PROOFS.md."""
from pathlib import Path
from math import gcd,comb
import json,time,sys
ROOT=Path(__file__).resolve().parents[1]
from check_finite import position,binval

def main():
 st=time.time();identities=0;direct={5:0,7:0};maxalpha={5:0,7:0};scopes={5:0,7:0};example={};bounds=[]
 for n in range(12,601):
  for j in range(1,n//2+1):
   g=gcd(n,j);al=n//g;prev=al
   for r in range(1,9):
    d=n//gcd(n,pow(j,r,n));assert d==al//gcd(al,g**(r-1));assert prev%d==0 and n//d<=g**r
    prev=d;identities+=1
   for m,r,B in((5,6,60),(7,3,420)):
    if j<=m or not position(n,m):continue
    scopes[m]+=1;d=n//gcd(n,pow(j,r,n))
    if d>B:continue
    z=gcd(comb(n,m),comb(n,j))
    for p in range(2,m):
     while z%p==0:z//=p
    assert z>1;direct[m]+=1
    if al>maxalpha[m]:maxalpha[m]=al;example[m]=[n,j,g,al,d]
 for p,c,e in((2,1,6),(2,5,4),(3,1,4),(3,2,4),(3,5,3),(3,10,2)):
  assert c*p**(e-1)<=60<c*p**e;bounds.append([p,c,e])
 endpoint=[]
 for m,n,j,Q,Qbad in((5,129,25,125,25),(7,349,49,343,49)):
  assert binval(n,m,m)>0 and binval(n,j,m)>0
  assert j%Q>n%Q and j%Qbad<=n%Qbad
  endpoint.append({'m':m,'n':n,'j':j,'full_power':Q,'wrong_lower_power':Qbad,'valuations':[binval(n,m,m),binval(n,j,m)]})
 # A fixed zero curve: N^2-N-5X. This tests the zero lemma, not novelty.
 x0,x1=2,3;y0,y1=0,1;zero=[]
 for t in range(1,151):
  n=x1-2;j=(n-y1)//2
  if j>=8:
   assert n*n-n-5*j*(n-j)==0
   d2=n//gcd(n,j*j);assert 5%d2==0
   zero.append({'t':t,'n_bits':n.bit_length(),'d2':d2,'H023':position(n,7)})
  x0,x1=x1,3*x1-x0;y0,y1=y1,3*y1-y0
 out={'status':'PASS_REGRESSION','range':'12<=n<=600, 1<=j<=n/2, r=1..8','denominator_identity_checks':identities,
 'legal_H_scope':scopes,'consumer_direct_binomial_checks':direct,'max_alpha_examples':example,'H02_exponent_thresholds':bounds,'endpoint_tests':endpoint,
 'zero_curve_checks':len(zero),'zero_curve_H023_examples':sum(z['H023']for z in zero),
 'limits':'Zero-curve examples and small consumers are regression, not claimed disjoint from old coverage. No NC counterexample is asserted.'}
 (ROOT/'evidence/regression.json').write_text(json.dumps(out,indent=2)+'\n');print(out,'seconds',time.time()-st)
if __name__=='__main__':main()
