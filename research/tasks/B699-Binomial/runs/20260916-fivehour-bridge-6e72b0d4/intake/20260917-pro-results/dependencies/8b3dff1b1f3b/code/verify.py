#!/usr/bin/env python3
"""Independent standard-library acceptance of all NEW affine obligations.
Does not import generate.py. It proves the listed finite implication under the
explicit U_i theorem contract. It is not a Lean/kernel or historical-chain run.
"""
from __future__ import annotations
import hashlib,itertools,json,math,sys,time
from pathlib import Path
from functools import lru_cache
ROOT=Path(__file__).resolve().parents[1]

def need(ok,msg):
 if not ok:raise ValueError(msg)
def prime(p):return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))
P={i:tuple(p for p in range(2,i) if prime(p)) for i in range(4,9)}
def valuation(x,p):
 e=0
 while x%p==0:x//=p;e+=1
 return e

def qpart(x,i):
 need(x>0,'positive window')
 s=1
 for p in P[i]:s*=p**valuation(x,p)
 if prime(i) and valuation(x,i)==1:s*=i
 return x//s
@lru_cache(maxsize=65536)
def decomposition(n):
 need(n>=1,'positive factorization')
 result=[]
 for p in itertools.chain([2],itertools.count(3,2)):
  if p*p>n:break
  if n%p:continue
  e=0
  while n%p==0:n//=p;e+=1
  result.append((p,e))
 if n>1:result.append((n,1))
 return tuple(result)
def norm_data(key):
 i,c,r,a,b=key;delta=c*b-a*r
 ans={}
 for t in range(i):
  value=1
  for u in range(t+1):value*=a*t+delta-c*u
  if value==0:continue
  v=qpart(abs(value),i)
  while math.gcd(v,c)>1:v//=math.gcd(v,c)
  ans[t]=v
 return ans
@lru_cache(maxsize=2048)
def divisor_tree(n):
 ff=decomposition(n)[::-1]
 def visit(k,partial):
  if k==len(ff):yield partial;return
  p,e=ff[k];x=partial
  for j in range(e+1):
   yield from visit(k+1,x);x*=p
 return tuple(visit(0,1))
def sha(rows):
 h=hashlib.sha256()
 for row in rows:
  h.update(','.join(str(x) for x in row).encode('ascii'));h.update(b'\n')
 return h.hexdigest()

def expected_config(cfg):
 need(cfg['schema']=='B699-AFFINE-SPLIT-v1','schema')
 need(cfg['targets']==[4,5,6,7,8],'target domain')
 Ks={}
 for i in range(4,9):
  K=1
  for p in P[i]:
   q=1
   while q*p<=i-1:q*=p
   K*=q
  if prime(i):K*=i
  Ks[str(i)]=K
 need(cfg['K']==Ks,'K must be recomputed, not guessed')
 for i in range(4,9):
  K=Ks[str(i)];need(cfg['cofactors'][str(i)]==sorted(divisor_tree(K)),'complete divisor domain')
 return Ks

def check_certificate(cert,cfg):
 Ks=expected_config(cfg);need(cert.get('schema')==cfg['schema'],'certificate schema');expected=set()
 for i in range(4,9):
  for c in cfg['cofactors'][str(i)]:
   for r in range(i):
    for b in range(r+1):
     for a in range(1,c//2+1):
      if math.gcd(a,c)==1 and (2*a<c or 2*b<=r):expected.add((i,c,r,a,b))
 rows=cert['records'];keys=[tuple(x['key']) for x in rows]
 need(len(keys)==len(set(keys)),'duplicate template')
 need(set(keys)==expected,'missing or extra primitive template')
 aggregate={i:{'target':i,'K':Ks[str(i)],'cofactor_count':len(cfg['cofactors'][str(i)]),'primitive_templates':0,'unit_cases':0,'support_deficits':0,'finite_cases':0,'divisor_instances':0,'legal_candidate_instances':0,'unit_rejections':0,'norm_rejections':0,'unresolved':0,'largest_candidate_n':0} for i in range(4,9)}
 for row in rows:
  key=tuple(row['key']);i,c,r,a,b=key;st=aggregate[i];st['primitive_templates']+=1
  B=norm_data(key);mode=row['mode']
  if mode=='unit':
   t=row['row'];need(t in B and B[t]==1,('invalid unit row',key));st['unit_cases']+=1
  elif mode=='deficit':
   J=row['rows'];need(len(J)==len(set(J)) and set(J)<=set(B),'invalid support subset')
   union={p for t in J for p,e in decomposition(B[t])}
   need(len(union)<len(J),('no support deficit',key));st['support_deficits']+=1
  elif mode=='finite':
   anchors=row['anchors'];need(len(anchors)==len(P[i])+1 and len(set(anchors))==len(anchors),'insufficient anchor coverage')
   need(set(anchors)<=set(B),'anchor on zero row')
   st['finite_cases']+=1;pool=set();dc=0
   for t in anchors:
    ds=divisor_tree(Ks[str(i)]*B[t]);dc+=len(ds)
    for d in ds:
     n=d+t
     if n<2*i+2:continue
     z,rem=divmod(n-r,c)
     if rem or z<=r:continue
     j=a*z+b
     if j<=i or 2*j>n:continue
     pool.add((n,j))
   pairs=sorted(pool);reject=[];units=norms=0
   for n,j in pairs:
    st['largest_candidate_n']=max(st['largest_candidate_n'],n)
    for t in sorted(B):
     q=qpart(n-t,i)
     if q==1:reject.append((n,j,t,'U'));units+=1;break
     if B[t]%q:reject.append((n,j,t,'N'));norms+=1;break
    else:raise ValueError(('unexcluded integer candidate',key,n,j))
   need(row['divisors']==dc and row['candidates']==len(pairs),'finite domain count')
   need(row['units']==units and row['norms']==norms,'rejection count')
   need(row['candidate_sha256']==sha(pairs) and row['rejection_sha256']==sha(reject),'finite digest')
   st['divisor_instances']+=dc;st['legal_candidate_instances']+=len(pairs);st['unit_rejections']+=units;st['norm_rejections']+=norms
  else:raise ValueError('unknown certificate mode')
 totals=[aggregate[i] for i in range(4,9)]
 need(totals==cert['totals'],'totals mismatch')
 return totals

def main():
 at=time.monotonic()
 cfg=json.loads((ROOT/'evidence/config.json').read_text());cert=json.loads((ROOT/'evidence/affine-certificates.json').read_text())
 totals=check_certificate(cert,cfg)
 # Exact reconstruction of authenticated GitHub source blobs (not a claim
 # that the mathematical proofs behind these acceptance reports were replayed).
 sources={'05-unit-window-acceptance.md':'187bf8c33319aa0284a29fcf00a5fddad5d2d504','10-complete-i8-i9-unit-window-acceptance.md':'b6c9dd341922d83244ba5e935f164bcbd4aabb66'}
 source_out={}
 for f,want in sources.items():
  b=(ROOT/'sources'/f).read_bytes();got=hashlib.sha1(b'blob '+str(len(b)).encode()+b'\0'+b).hexdigest()
  need(got==want,'adopted source blob changed');source_out[f]={'bytes':len(b),'git_blob':got,'sha256':hashlib.sha256(b).hexdigest()}
 out={'status':'PASS_NEW_AFFINE_CERTIFICATES','templates':len(cert['records']),'totals':totals,'source_blobs':source_out,'elapsed_seconds':time.monotonic()-at,'python':sys.version.split()[0],'historical_U_replayed':False,'Lean':False}
 (ROOT/'outputs/verification.json').write_text(json.dumps(out,indent=2)+'\n')
 print(json.dumps(out,indent=2),flush=True)
if __name__=='__main__':main()
