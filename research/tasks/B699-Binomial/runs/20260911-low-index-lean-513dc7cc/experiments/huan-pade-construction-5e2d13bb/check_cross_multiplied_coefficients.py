from pathlib import Path
from math import comb
from hashlib import sha256
from datetime import datetime,timezone
import json

def choose(n,k):return comb(n,k) if k<=n else 0
def sub(n,k):return max(n-k,0)
def q(a,b,c,r):return choose(sub(a+c,r),c)*choose(b+r,r)
def p(u,v,r):return choose(2*u+v+1,r)*choose(sub(2*u,r),u)
counts={k:0 for k in ['q_same','q_shift1','q_shift2','p_same','p_shift1','p_shift2']}
for u in range(2,21):
  for v in range(21):
    for r in range(u+1):
      L=2*u-r;N=2*u+v+1
      assert q(u-1,v+1,u-1,r)*L*(L-1)*(v+1)==q(u,v,u,r)*u*(u-r)*(v+r+1)
      counts['q_same']+=1
      assert p(u-1,v+1,r)*N*L*(L-1)==p(u,v,r)*u*(u-r)*(N-r)
      counts['p_same']+=1
      if r>=1:
        assert q(u-1,v+1,u-1,r-1)*L*(v+1)==q(u,v,u,r)*u*r
        counts['q_shift1']+=1
        assert p(u-1,v+1,r-1)*N*L==p(u,v,r)*u*r
        counts['p_shift1']+=1
      if r>=2:
        assert q(u-2,v+2,u-2,r-2)*L*(L-1)*(v+1)*(v+2)==q(u,v,u,r)*u*(u-1)*r*(r-1)
        counts['q_shift2']+=1
        assert p(u-2,v+2,r-2)*N*(N-1)*L*(L-1)==p(u,v,r)*u*(u-1)*r*(r-1)
        counts['p_shift2']+=1
bad=[]
for kind,r in [('q_shift1',0),('q_shift2',1),('p_shift1',0),('p_shift2',1)]:
  u=2;v=0;L=2*u-r;N=2*u+v+1
  if kind=='q_shift1':left=q(u-1,v+1,u-1,sub(r,1))*L*(v+1);right=q(u,v,u,r)*u*r
  elif kind=='q_shift2':left=q(u-2,v+2,u-2,sub(r,2))*L*(L-1)*(v+1)*(v+2);right=q(u,v,u,r)*u*(u-1)*r*sub(r,1)
  elif kind=='p_shift1':left=p(u-1,v+1,sub(r,1))*N*L;right=p(u,v,r)*u*r
  else:left=p(u-2,v+2,sub(r,2))*N*(N-1)*L*(L-1);right=p(u,v,r)*u*(u-1)*r*sub(r,1)
  assert left!=right
  bad.append({'claim_without_guard':kind,'u':u,'v':v,'r':r,'left':left,'right':right})
rec={'status':'PASS','utc':datetime.now(timezone.utc).isoformat(),'range':'u=2..20; v=0..20; all allowed r<=u, with shift1 r>=1 and shift2 r>=2','counts':counts,'total':sum(counts.values()),'natural_subtraction_guard_counterexamples':bad,'scope':'finite checks against raw qMagnitude and pCoefficient magnitude formulas, using actual Nat truncated subtraction; no Lean acceptance','script_sha256':sha256(Path(__file__).read_bytes()).hexdigest()}
Path(__file__).with_name('cross-multiplied-coefficient-check.json').write_text(json.dumps(rec,indent=2)+'\n',encoding='utf-8')
print(json.dumps(rec))
