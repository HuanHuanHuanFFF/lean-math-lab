"""Exact new Padé-content lower bounds via BFT (5.14),(5.15), Lemma 5.4.
No asymptotic/digamma or floating-point value participates in acceptance.
The published analytic inputs are explicit external proof dependencies.
"""
from __future__ import annotations
from fractions import Fraction as F
from pathlib import Path
from array import array
from bisect import bisect_right
import math,json,time,sys,hashlib
if not __debug__:raise RuntimeError('Run without -O/-OO.')
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'code/vendor'))
from rational_intervals import logq
SPECS=[dict(c=3,d=2,L='8103/5000',tail_M=30000000,tail_W=128),
       dict(c=15,d=8,L='4541/2500',tail_M=6000000,tail_W=64),
       dict(c=15,d=11,L='361/250',tail_M=3000000,tail_W=64)]
LEGACY_SELECTOR=F(213,10000000) # Historical rational witness selection ONLY; not a theta bound.
WEIGHT_POWER=32

def cells(c:int,d:int,W:int):
 assert c>d>=1 and math.gcd(c,d)==1 and W>=0
 N=c+d; inv=pow(d,-1,N)
 out=[]
 for w in range(W+1):
  for j in range(N//2+1,N):
   r=j*inv%N;g=d if j>=c else c-d
   den=g*w+1+g*r//N
   # j=c yields g/den=1/(w+1), the same for both delta branches.
   out.append((N*w+r,g,den,w,j))
 return out

def rational_sqrt_upper(x:F,scale:int=10**12)->F:
 assert x>=0
 n=x.numerator*scale*scale;den=x.denominator
 k=math.isqrt(n//den)
 if k*k*den<n:k+=1
 assert k*k*den>=n
 return F(k,scale)

def tail_certificate(spec:dict)->dict:
 c,d=spec['c'],spec['d'];N=c+d;M=spec['tail_M'];W=spec['tail_W'];L=F(spec['L'])
 assert M>=2*N*(W+1)
 rows=[];total=F(0)
 for t,g,den,w,j in cells(c,d,W):
  a,b,y=F(N,t),F(2,t),F(g,den)
  assert a*M-b>=1
  err=max(rational_sqrt_upper(F(2072,1000)**2*a/M),LEGACY_SELECTOR*a)
  C=a-(1+LEGACY_SELECTOR)*y-err
  lower=C-b/M
  if lower<=0:continue
  assert err*err>=F(2072,1000)**2*a/M and err>=LEGACY_SELECTOR*a
  total+=lower
  rows.append(dict(w=w,j=j,t=t,g=g,den=den,error_coefficient=str(err),rate_lower=str(lower)))
 target=d*logq(L).hi
 assert total>target, (c,d,float(total-target))
 certificate=dict(**spec,retained=len(rows),rows=rows,logG_over_m_lower=str(total),target_upper=str(target),margin_lower=str(total-target),status='PASS_EXACT_TAIL')
 # These unchanged rational rows are valid bridge witnesses. Full infinity
 # is accepted only after the corrected 213/10^6, T=10^9 hybrid argument.
 from check_content_bounds import verify_tail
 verify_tail(certificate)
 return certificate

def create_prime_cache(limit:int,where:Path):
 """Eratosthenes with exact integer floor(log_2 p**32) weights."""
 where.mkdir(parents=True,exist_ok=True)
 start=time.monotonic();s=bytearray(b'\x01')*(limit+1);s[:2]=b'\0\0'
 for p in range(2,math.isqrt(limit)+1):
  if s[p]:s[p*p::p]=b'\0'*((limit-p*p)//p+1)
 primes=array('I');prefix=array('Q',[0]);total=0
 for p,yes in enumerate(s):
  if yes:
   ell=pow(p,WEIGHT_POWER).bit_length()-1
   primes.append(p);total+=ell;prefix.append(total)
 del s
 for name,data in [('primes.u32',primes),('weights.u64',prefix)]:
  with (where/name).open('wb') as f:data.tofile(f)
 meta=dict(limit=limit,prime_count=len(primes),last_prime=primes[-1],power=WEIGHT_POWER,
           total_weight=total,byteorder=sys.byteorder,seconds=time.monotonic()-start,
           data_sha256={name:hashlib.sha256((where/name).read_bytes()).hexdigest() for name in ['primes.u32','weights.u64']})
 (where/'metadata.json').write_text(json.dumps(meta,indent=2)+'\n')
 return meta

def load_cache(where:Path):
 meta=json.loads((where/'metadata.json').read_text());assert meta['byteorder']==sys.byteorder
 assert meta['power']==WEIGHT_POWER
 p=array('I');w=array('Q')
 with (where/'primes.u32').open('rb') as f:p.fromfile(f,meta['prime_count'])
 with (where/'weights.u64').open('rb') as f:w.fromfile(f,meta['prime_count']+1)
 return p,w,meta

def finite_weight(a:int,b:int,c:int,d:int,cc,primes,prefix,limit:int)->int:
 assert 1<=a<=b
 upper_num=(c+d)*a-2;total=0
 for t,g,den,w,j in cc:
  assert a>=2*t
  X=upper_num//t;Y=g*b//den
  assert X<=limit
  if X>Y:
   lo=bisect_right(primes,Y);hi=bisect_right(primes,X)
   total+=prefix[hi]-prefix[lo]
 return total

def finite_certificate(spec:dict,cache:Path,start_m:int=1000,Wcap:int=256)->dict:
 primes,prefix,meta=load_cache(cache);c,d=spec['c'],spec['d'];M=spec['tail_M'];L=F(spec['L'])
 log2L_upper=logq(L).hi/logq(F(2)).lo
 # Round UP to a simple rational. Accepted against an exact series enclosure.
 SCALE=10**10
 upper_num=(log2L_upper.numerator*SCALE+log2L_upper.denominator-1)//log2L_upper.denominator
 upper=F(upper_num,SCALE);assert upper>=log2L_upper
 a=start_m;blocks=[];failures=[];calls=0;start=time.monotonic()
 checkpoint_path=ROOT/'outputs'/f'content_{c}_{d}_checkpoint.json'
 if checkpoint_path.exists():
  ck=json.loads(checkpoint_path.read_text())
  if ck.get('spec')==spec and ck.get('initial_start')==start_m and ck.get('Wcap')==Wcap:
   blocks=ck['blocks'];failures=ck['failures'];calls=ck['calls'];a=ck['next_a']
   print('RESUME',c,d,'from',a,'retained blocks',len(blocks),flush=True)
 while a<M:
  W=min(Wcap,a//(2*(c+d))-1);cc=cells(c,d,W)
  def weight(b):
   nonlocal calls
   calls+=1
   return finite_weight(a,b,c,d,cc,primes,prefix,meta['limit'])
  z=weight(a)
  if z*SCALE<=WEIGHT_POWER*d*a*upper_num:
   failures.append(a);blocks=[];a+=1
   continue
  # Monotone in b: lower drops while required target grows.
  lo=a;step=max(1,a//200);hi=min(M-1,a+step)
  while hi<M-1 and weight(hi)*SCALE>WEIGHT_POWER*d*hi*upper_num:
   lo=hi;step*=2;hi=min(M-1,a+step)
  if weight(hi)*SCALE>WEIGHT_POWER*d*hi*upper_num:lo=hi
  else:
   while lo+1<hi:
    mid=(lo+hi)//2
    if weight(mid)*SCALE>WEIGHT_POWER*d*mid*upper_num:lo=mid
    else:hi=mid
  b=lo;z=weight(b)
  assert z*SCALE>WEIGHT_POWER*d*b*upper_num
  blocks.append(dict(a=a,b=b,W=W,weight_lower=z))
  if len(blocks)%1000==0:
   partial=dict(spec=spec,through=b,blocks=len(blocks),last_failed=max(failures,default=None),calls=calls,seconds=time.monotonic()-start)
   print('CHECKPOINT',partial,flush=True)
   (ROOT/'outputs'/f'content_{c}_{d}_progress.json').write_text(json.dumps(partial,indent=2)+'\n')
   checkpoint_path.write_text(json.dumps(dict(status='RUNNING_NOT_FINAL_COVER',spec=spec,initial_start=start_m,Wcap=Wcap,blocks=blocks,failures=failures,calls=calls,next_a=b+1),separators=(',',':'))+'\n')
  a=b+1
 first=blocks[0]['a'];assert blocks[-1]['b']==M-1
 return dict(**spec,start_m=first,m0=first-1,blocks=blocks,block_count=len(blocks),failures_before_retained_start=failures,
             log2L_upper=str(upper),prime_limit=meta['limit'],prime_count=meta['prime_count'],weight_power=WEIGHT_POWER,
             interval_evaluations=calls,seconds=time.monotonic()-start,status='PASS_EXACT_FINITE_INTERVAL_COVER')

if __name__=='__main__':
 import argparse
 ap=argparse.ArgumentParser();ap.add_argument('mode',choices=['tail','cache','finite']);ap.add_argument('--index',type=int,default=0)
 ap.add_argument('--cache-dir',type=Path,default=ROOT/'cache/content');ap.add_argument('--start-m',type=int,default=1000)
 args=ap.parse_args()
 if args.mode=='tail':
  rows=[tail_certificate(s) for s in SPECS];(ROOT/'outputs/content_tail_certificates.json').write_text(json.dumps({'rows':rows,'status':'PASS_EXACT_TAIL'},indent=2)+'\n')
  print([(r['c'],r['d'],r['retained'],float(F(r['margin_lower']))) for r in rows])
 elif args.mode=='cache':print(json.dumps(create_prime_cache(75000000,args.cache_dir),indent=2))
 else:
  s=SPECS[args.index];r=finite_certificate(s,args.cache_dir,args.start_m)
  path=ROOT/'outputs'/f"content_finite_{s['c']}_{s['d']}.json";path.write_text(json.dumps(r,indent=2)+'\n')
  print('DONE',path,'m0',r['m0'],'blocks',r['block_count'],'seconds',r['seconds'])
