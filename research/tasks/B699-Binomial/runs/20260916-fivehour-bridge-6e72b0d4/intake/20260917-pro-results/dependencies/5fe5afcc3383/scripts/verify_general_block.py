from __future__ import annotations
import json,time
from fractions import Fraction
from pathlib import Path
import sympy as s
p=Path(__file__).resolve().parents[1]/'verification';p.mkdir(exist_ok=True)
t0=time.monotonic()
scalars=0
for T in range(5,52,2):
 for ss in range(1,13):
  a=T-1
  c=6*((Fraction(3*a*a,4)+a)*T*(T**ss-1)+2*(Fraction(a*a,4)+a))
  assert c<T**(2*ss+3)
  scalars+=1

def factors(n):
 d={}
 for z in (n,n-1,n-2):
  for q,e in s.factorint(z).items():d[int(q)]=d.get(int(q),0)+int(e)
 d[2]=d.get(2,0)-1;d[3]=d.get(3,0)-1
 return [q for q,e in sorted(d.items()) if q>=3 and e>0]
def val(n,j,q):
 pp=q;v=0
 while pp<=n:
  v+=n//pp-j//pp-(n-j)//pp;pp*=q
 return v
rows=0;pairs=0;maxn=0
for T in (5,7,9,11):
 for ss in (2,3):
  for E in (2*ss+2,2*ss+3):
   for A in (1,2,T-1):
    for B in sorted({1,2,T**ss//2,T**ss-1}):
     n=A*T**E+B*T
     ps=factors(n)
     for u in range(A+1):
      for v in range(B+1):
       j=T*(u*T**(E-1)+v)
       if not 4<=j<=n//2:continue
       assert any(val(n,j,q)>0 for q in ps),(T,ss,E,A,B,n,j)
       pairs+=1
     rows+=1;maxn=max(maxn,n)
r={'status':'PASS','scalar_inequality':{'odd_T':'5..51','s':'1..12','cases':scalars},'original_binomial_valuation_regression':{'T':[5,7,9,11],'s':[2,3],'E':'2s+2 and 2s+3','A':'1,2,T-1','B':'1,2,floor(T^s/2),T^s-1','rows':rows,'all_legal_digit_box_pairs':pairs,'max_n':maxn,'scope':'Finite regression of every legal digit-box pair for selected rows, not an unrestricted proof.'},'elapsed_seconds':round(time.monotonic()-t0,3)}
(p/'general-block-results.json').write_text(json.dumps(r,indent=2)+'\n');print(json.dumps(r,indent=2))
