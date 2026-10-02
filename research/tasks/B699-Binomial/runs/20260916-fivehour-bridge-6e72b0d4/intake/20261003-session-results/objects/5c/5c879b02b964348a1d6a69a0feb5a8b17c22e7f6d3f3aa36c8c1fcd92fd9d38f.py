#!/usr/bin/env python3
"""Exact exponent block bridge for fixed B699 targets. One checkpoint per pair."""
from pathlib import Path
from math import factorial,isqrt
from itertools import combinations
import json,time,resource,sys
ROOT=Path(__file__).resolve().parents[1]
TARGETS=[dict(i=11,t=4,r=3,s=7,height_bits=4096,cube_bits=98),
 dict(i=16,t=6,r=5,s=11,height_bits=65536,cube_bits=73),
 dict(i=21,t=8,r=6,s=14,height_bits=32768,cube_bits=64)]
def primes(i):return [p for p in range(2,i) if all(p%d for d in range(2,isqrt(p)+1))]
def params(row):
 i,r,s=row['i'],row['r'],row['s'];ell=i-r-1;lam=2*s-r;E=s*(s+1)+ell*(ell+1)//2
 K=2**(s*(s+1))
 for a in range(1,s+1):K*=factorial(a)**2
 for a in range(1,ell+1):K*=factorial(a)
 return lam,E,K

def ilog(n,p):
 if n<1:raise ValueError('positive n required')
 lo=0;hi=n.bit_length()+1
 while hi-lo>1:
  m=(hi+lo)//2
  if p**m<=n:lo=m
  else:hi=m
 return lo

def generate(row,p,q):
 D=row['i']-1;H=row['height_bits'];bound=ilog((1<<H)-1,p)
 K=32;start=K;blocks=[];failures=[];attempts=0;ts=time.monotonic()
 while K<=bound:
  attempts+=1;P=p**K;B=ilog((P-D)**2,q)//3;Q=q**B
  assert B>0 and Q**3<=(P-D)**2<q**(3*(B+1))
  v=pow(P,-1,Q)
  r=min(((dd*v)%Q or Q) for dd in range(-D,D+1))
  maxpow=ilog(r*r-1,p) if r>1 else -1;L=(maxpow-K)//3
  if L<0:
   failures.append(K);K+=1;start=K;blocks=[];continue
  L=min(L,bound-K);assert r*r>p**(K+3*L)
  blocks.append(dict(K=K,L=L,B=B,inverse_hex=hex(v)))
  K+=L+1
 small=p**(3*(start-1));h=(small.bit_length()+1)//2+1
 while ((1<<h)-D)**2<=small:h+=1
 return dict(i=row['i'],p=p,q=q,D=D,source_height_bits=H,max_exponent=bound,
  first_exponent=start,blocks=blocks,small_exponent_height_bits=h,
  construction_attempts=attempts,discarded_failure_exponents=failures,
  elapsed_seconds=time.monotonic()-ts)

def main():
 selected=set(map(int,sys.argv[1:])) if len(sys.argv)>1 else {11,16,21};summary=[]
 for row in TARGETS:
  if row['i'] not in selected:continue
  lam,E,K=params(row);J=4*lam*row['i']-lam*(3*row['t']+1)-4*E
  assert J>0 and K**4*2**(row['cube_bits']*J)>(2*factorial(row['i']))**(4*lam)
  assert 2**row['cube_bits']>=max(16,row['i']*(row['i']-1))
  records=[]
  for p,q in combinations(primes(row['i']),2):
   name=f'block_{row["i"]}_{p}_{q}.json';path=ROOT/'results'/name
   if path.exists():data=json.loads(path.read_text())
   else:
    data=generate(row,p,q);tmp=path.with_suffix('.tmp');tmp.write_text(json.dumps(data,separators=(',',':')));tmp.replace(path)
   records.append(data)
   print(json.dumps(dict(i=row['i'],pair=[p,q],blocks=len(data['blocks']),h=data['small_exponent_height_bits'],seconds=round(data['elapsed_seconds'],3))),flush=True)
  newH=max(row['cube_bits'],max(d['small_exponent_height_bits'] for d in records))
  s=dict(**row,lam=lam,E=E,J=J,destination_height_bits=newH,
   pairs=len(records),blocks=sum(len(x['blocks']) for x in records),
   residue_checks=sum(len(x['blocks'])*(2*row['i']-1) for x in records),
   peak_rss_kib=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
  summary.append(s);(ROOT/'results'/f'block_summary_{row["i"]}.json').write_text(json.dumps(s,indent=2))
  print(json.dumps(dict(summary=s)),flush=True)
 if selected=={11,16,21}:(ROOT/'results'/'block_summary.json').write_text(json.dumps(summary,indent=2))
if __name__=='__main__':main()
