#!/usr/bin/env python3
"""Construct the NEW finite affine certificates.  No historical chain is run.
All arithmetic is integer arithmetic.  The mathematical use of U_i is explicit
in PROOFS.md; this program does not prove or re-verify that inherited theorem.
"""
from __future__ import annotations
import hashlib,itertools,json,math,time,sys
from functools import lru_cache
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def primes_below(m:int)->list[int]:
 return [p for p in range(2,m) if all(p%d for d in range(2,math.isqrt(p)+1))]
@lru_cache(maxsize=65536)
def factor(n:int)->tuple[tuple[int,int],...]:
 if n<1:raise ValueError('positive integer required')
 out=[];p=2
 while p*p<=n:
  e=0
  while n%p==0:n//=p;e+=1
  if e:out.append((p,e))
  p=3 if p==2 else p+2
 if n>1:out.append((n,1))
 return tuple(out)
def rough(n:int,m:int)->int:
 if n<1:raise ValueError('nonzero window required')
 for p in primes_below(m):
  while n%p==0:n//=p
 if m in (5,7) and n%m==0 and n%(m*m)!=0:n//=m
 return n

def bounds(m:int,c:int,r:int,a:int,b:int)->dict[int,int]:
 if math.gcd(a,c)!=1:raise ValueError('primitive slope expected')
 ans={}
 for t in range(m):
  if t==r:continue
  terms=[c*(b-u)+a*(t-r) for u in range(t+1)]
  if 0 in terms:continue
  # Independent of Q. Retain ALL exponents in this exact product.
  v=rough(abs(math.prod(terms)),m)
  for p,e in factor(c):
   while v%p==0:v//=p
  ans[t]=v
 return ans

def deficit(B:dict[int,int])->list[int]|None:
 rows=list(B);G={t:{p for p,e in factor(B[t])} for t in rows}
 # Direct subset witness, not a trusted matching algorithm.
 for size in range(2,len(rows)+1):
  for J in itertools.combinations(rows,size):
   if len(set().union(*(G[t] for t in J)))<len(J):return list(J)
 return None
@lru_cache(maxsize=2048)
def divisors(n:int)->tuple[int,...]:
 out=[1]
 for p,e in factor(n):
  old=out[:];pw=1
  for _ in range(e):
   pw*=p;out.extend(d*pw for d in old)
 return tuple(out)
def nd(n:int)->int:return math.prod(e+1 for p,e in factor(n))
def digest(rows)->str:
 h=hashlib.sha256()
 for row in rows:h.update((','.join(map(str,row))+'\n').encode())
 return h.hexdigest()

def main()->None:
 at=time.monotonic();cfg=json.loads((ROOT/'evidence/config.json').read_text())
 records=[];totals=[]
 for m in cfg['targets']:
  K=cfg['K'][str(m)];cs=cfg['cofactors'][str(m)];small=primes_below(m)
  st={'target':m,'K':K,'cofactor_count':len(cs),'primitive_templates':0,'unit_cases':0,'support_deficits':0,'finite_cases':0,'divisor_instances':0,'legal_candidate_instances':0,'unit_rejections':0,'norm_rejections':0,'unresolved':0,'largest_candidate_n':0}
  for c in cs:
   for a in range(1,c//2+1):
    if math.gcd(a,c)!=1:continue
    for r in range(m):
     for b in range(r+1):
      if 2*a==c and 2*b>r:continue
      st['primitive_templates']+=1;key=[m,c,r,a,b];B=bounds(*key)
      units=[t for t,v in B.items() if v==1]
      if units:
       records.append({'key':key,'mode':'unit','row':min(units)});st['unit_cases']+=1;continue
      J=deficit(B)
      if J is not None:
       records.append({'key':key,'mode':'deficit','rows':J});st['support_deficits']+=1;continue
      if len(B)<=len(small):raise RuntimeError(('unhandled exceptional template',key,B))
      st['finite_cases']+=1
      anchors=sorted(B,key=lambda t:(nd(K*B[t]),t))[:len(small)+1]
      pool=set();dc=0
      for t in anchors:
       ds=divisors(K*B[t]);dc+=len(ds)
       for d in ds:
        n=t+d
        if n<2*(m+1) or (n-r)%c:continue
        Q=(n-r)//c;j=a*Q+b
        if Q<=r or not m<j<=n//2:continue
        pool.add((n,j))
      pairs=sorted(pool);reject=[];uc=nc=0
      for n,j in pairs:
       st['largest_candidate_n']=max(st['largest_candidate_n'],n)
       for t,v in sorted(B.items()):
        q=rough(n-t,m)
        if q==1:reject.append((n,j,t,'U'));uc+=1;break
        if v%q:reject.append((n,j,t,'N'));nc+=1;break
       else:raise RuntimeError(('finite candidate NOT excluded',key,n,j,B))
      st['divisor_instances']+=dc;st['legal_candidate_instances']+=len(pairs);st['unit_rejections']+=uc;st['norm_rejections']+=nc
      records.append({'key':key,'mode':'finite','anchors':anchors,'divisors':dc,'candidates':len(pairs),'units':uc,'norms':nc,'candidate_sha256':digest(pairs),'rejection_sha256':digest(reject)})
  totals.append(st);print(json.dumps(st),flush=True)
 out={'schema':cfg['schema'],'records':records,'totals':totals}
 (ROOT/'evidence/affine-certificates.json').write_text(json.dumps(out,separators=(',',':'),ensure_ascii=False)+'\n')
 summary={'status':'PASS_GENERATION','totals':totals,'total_templates':len(records),'elapsed_seconds':time.monotonic()-at,'python':sys.version.split()[0]}
 (ROOT/'outputs/generation.json').write_text(json.dumps(summary,indent=2)+'\n')
 print('PASS_GENERATION',len(records),summary['elapsed_seconds'],flush=True)
if __name__=='__main__':main()
