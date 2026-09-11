"""Exact finite regression only; does not substitute for the unbounded proofs."""
from pathlib import Path
from fractions import Fraction as F
from itertools import permutations,product
import json,math,time,sys
R=Path(__file__).resolve().parents[1];S=R/'adopted/pro-a';sys.path.insert(0,str(S/'code'))
from regression_separate_degree import poly,ev,intervals

def prime(n):return n>=2 and all(n%d for d in range(2,math.isqrt(n)+1))
def main():
 st=time.monotonic();families=json.loads((R/'evidence/content_tail.json').read_text())['rows'];triples=sorted({t for r in families for t in permutations(tuple(r[k] for k in ['e','d','f']))});content=identity=clearing=determinants=carry=transfer=highpower=0
 for p in [2,3,5,7,11,13]:
  for a,b,c in product(range(p),repeat=3):
   if a+b+c<2*p-1:continue
   for rho in range(p):assert (a+c-rho)//p-(a-rho)//p+(b+rho)//p>=1;carry+=1
 for e,d,f in triples:
  N=e+d+f;cat=intervals(e,d,f)
  for m in [1,2,3,5,10]:
   ps=[p for p in range(2,N*m+1) if prime(p)];forced=set()
   for w in range(N*m+1):
    for l,u,J in cat:
     lo=F(m)/(w+u);hi=F(N*m-2,N*w+J+2)
     for p in ps:
      if lo<p<=hi:assert p not in forced;forced.add(p)
    if F(m,w+1)<2:break
   Pprod=math.prod(forced)
   for delta in [0,1]:
    A=e*m-delta;B=f*m-1+delta;C=d*m-delta;P,Q,E=poly(A,B,C);G=math.gcd(*Q)
    assert G>0 and G%Pprod==0 and all(v%G==0 for v in P);content+=1
    for z in [F(1,9),F(2,245)]:
     assert ev(P,z)-(1-z)**((d+f)*m)*ev(Q,z)==z**(A+C+1)*ev(E,z);identity+=1
 for row in json.loads((R/'input/cuts.json').read_text())['cuts']:
  p,q,k,l,a,b,e,d,f=[row[x] for x in ['p','q','k0','l0','a','b','e','d','f']]
  P0,Q0=p**k,q**l;L=a*P0;D=L-b*Q0;z=F(D,L);c=d+f
  for m in [1,2]:
   pp=[];qq=[]
   for delta in [1,0]:
    AA=e*m-delta;BB=f*m-1+delta;CC=d*m-delta;P,Q,E=poly(AA,BB,CC);pp.append(ev(P,z));qq.append(ev(Q,z))
   assert pp[0]*qq[1]-pp[1]*qq[0]!=0;determinants+=1
   for r,s,Ao,Bo in [(0,0,1,1),(1,0,7,11),(k*c*m,l*c*m,1,1),(k*(e+f)*m,l*c*m,1,1)]:
    vals=[];X=F(p)**(r-k*c*m)*Ao;Z=F(q)**(s-l*c*m)*Bo;dd=p**r*Ao-q**s*Bo
    mult=a**(max(e-d,0)*m)*p**max(k*(e+f)*m-r,0)*q**max(l*c*m-s,0)
    for delta in [0,1]:
     AA=e*m-delta;BB=f*m-1+delta;CC=d*m-delta;P,Q,E=poly(AA,BB,CC);G=math.gcd(*Q)
     pbar=F(L)**CC*ev(P,z)/G;qbar=F(L)**CC*ev(Q,z)/G;I=a**(c*m)*pbar*Z-b**(c*m)*qbar*X
     tail=F(L)**(c*m-AA-1)*D**(AA+CC+1)*ev(E,z)/G
     assert (mult*I).denominator==1 and P0**(c*m)*I==tail*Z-b**(c*m)*qbar*dd;vals.append(I);clearing+=1
    assert any(v for v in vals)
 # Every first-binomial full prime power >=11 in this bounded regression range.
 for n in range(22,401):
  facts=[]
  for a in range(10):
   z=n-a
   for p in range(2,math.isqrt(z)+1):
    if z%p:continue
    e=0
    while z%p==0:z//=p;e+=1
    if p>=10:facts.append((p,e,a))
   if z>=10:facts.append((z,1,a))
  for j in range(11,n//2+1):
   v=math.comb(n,j)
   for p,e,a in facts:
    if v%p==0:continue
    pe=p**e;assert math.comb(n,10)%pe==0
    assert j%pe+(n-j)%pe==a;transfer+=1;highpower+=e>1
 out=dict(status='PASS_FINITE_REGRESSIONS_NOT_UNIVERSAL_PROOF',permutation_triples=len(triples),carry_residue_cases=carry,content_instances=content,polynomial_identities=identity,adjacent_determinants=determinants,clearing_instances=clearing,full_power_transfer_cases=transfer,exponent_above_one_cases=highpower,n_transfer_range=[22,400],seconds=time.monotonic()-st)
 (R/'evidence/math_regression.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2),flush=True)
if __name__=='__main__':
 if not __debug__:raise RuntimeError('Do not use -O')
 main()
