from __future__ import annotations
import json,math,time
from pathlib import Path
import sympy as s
p=Path(__file__).resolve().parents[1]/'verification';p.mkdir(exist_ok=True)
t0=time.monotonic()
def ps3(n):
 d={}
 for z in (n,n-1,n-2):
  for q,e in s.factorint(z).items():d[int(q)]=d.get(int(q),0)+int(e)
 d[2]=d.get(2,0)-1;d[3]=d.get(3,0)-1
 return [q for q,e in sorted(d.items()) if q>=3 and e>0]
def val(n,j,q):
 d=q;v=0
 while d<=n:
  v+=n//d-j//d-(n-j)//d;d*=q
 return v
rows=set(); pairs=0;exact=0
for T in (3,5,7,9,11,13,25,27,49):
 for shift,emin in ((1,3),(2,2)):
  for E in range(emin,7):
   for A in range(1,T):
    n=A*T**E+shift
    if n<8:continue
    rows.add((n,shift));factors=ps3(n)
    if n<=2000:js=range(4,n//2+1)
    else:
     js={u*T**E+v for u in range(A+1) for v in range(shift+1)}
     js.update([4,5,n//2,n//3])
     js=sorted(j for j in js if 4<=j<=n//2)
    for j in js:
     q=next((q for q in factors if val(n,j,q)>0),None)
     assert q is not None,(T,A,E,shift,n,j)
     if n<=2000:
      assert math.comb(n,j)%q==0 and math.comb(n,3)%q==0;exact+=1
     pairs+=1
# Check the all-i bridge by the ORIGINAL two binomials, not via transfer identity.
bridge=0
for n in range(20,701):
 if math.gcd(math.comb(n,3),105)!=1:continue
 for i in range(3,10):
  for j in range(i+1,n//2+1):
   common=math.gcd(math.comb(n,i),math.comb(n,j))
   assert any(q>=i for q in s.factorint(common)),(n,i,j)
   bridge+=1
r={'status':'PASS','shifted_families':{'bases':[3,5,7,9,11,13,25,27,49], 'A':'all 1..T-1','E':'3..6 for +1; 2..6 for +2','distinct_n_shift':len(rows),'tested_pairs':pairs,'direct_comb_pairs':exact,'max_n':max(n for n,_ in rows),'scope':'All legal j for n<=2000; digit-box j and deterministic samples otherwise.'},'bridge_regression':{'n':'20..700','i':'3..9','condition':'gcd(C(n,3),105)=1','tested_pairs':bridge},'elapsed_seconds':round(time.monotonic()-t0,3)}
(p/'shifted-results.json').write_text(json.dumps(r,indent=2)+'\n');print(json.dumps(r,indent=2))
