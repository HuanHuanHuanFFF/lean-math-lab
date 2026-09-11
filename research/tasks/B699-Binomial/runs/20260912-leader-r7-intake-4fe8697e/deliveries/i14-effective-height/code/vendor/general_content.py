"""Exact prime-interval certificates for a three-parameter Padé content lemma.
The floor/carry lemma is proved in notes. Only the theta estimates in BFT
Lemma 5.4 are assumed publication inputs; no asymptotic rate is accepted.
"""
from fractions import Fraction as F
from pathlib import Path
from array import array
from bisect import bisect_right
import math,json,time,sys,hashlib,argparse
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'code/vendor'))
from rational_intervals import logq
from regression_separate_degree import intervals
ETA=F(213,10000000)
SPECS=[dict(e=2,d=2,f=1,g='19/20'),dict(e=8,d=8,f=7,g='19/4'),dict(e=11,d=11,f=4,g='4'),dict(e=5,d=14,f=4,g='9/5'),dict(e=12,d=20,f=7,g='13/5')]

def ceil_sqrt(x,scale=10**12):
 n=x.numerator*scale**2;q=x.denominator;k=math.isqrt(n//q)
 if k*k*q<n:k+=1
 assert k*k*q>=n
 return F(k,scale)

def cell_catalog(e,d,f,W):
 N=e+d+f;out=[]
 for w in range(W+1):
  for l,u,J in intervals(e,d,f):
   out.append((F(1)/(w+l),F(2,N)/(w+l),F(1)/(w+u),w,l,u,J))
 return out

def tail(spec,M,W=128):
 e,d,f=spec['e'],spec['d'],spec['f'];total=F(0);rows=[]
 for A,B,C,w,l,u,J in cell_catalog(e,d,f,W):
  if A*M-B<1:continue
  err=max(ceil_sqrt(F(259,125)**2*A/M),ETA*A)
  rate=A-(1+ETA)*C-err-B/M
  if rate<=0:continue
  total+=rate;rows.append(dict(w=w,l=str(l),u=str(u),J=J,A=str(A),B=str(B),C=str(C),error=str(err),rate=str(rate)))
 return dict(**spec,M=M,W=W,lower=str(total),target=spec['g'],margin=str(total-F(spec['g'])),rows=rows,passed=total>F(spec['g']))

def save_tail():
 out=[]
 for spec in SPECS:
  for M in [10000,30000,100000,300000,1000000,3000000,10000000,30000000]:
   r=tail(spec,M)
   if r['passed']:break
  assert r['passed']
  out.append(r);print('TAIL',(spec['e'],spec['d'],spec['f']),'M',M,'terms',len(r['rows']),'margin',float(F(r['margin'])),flush=True)
 (ROOT/'outputs/general_content_tail.json').write_text(json.dumps(dict(status='PASS_EXACT_INFINITE_TAIL',rows=out),indent=2)+'\n')

def make_cache(limit,where):
 where.mkdir(parents=True,exist_ok=True);st=time.monotonic()
 sieve=bytearray(b'\1')*(limit+1);sieve[:2]=b'\0\0'
 for p in range(2,math.isqrt(limit)+1):
  if sieve[p]:sieve[p*p::p]=b'\0'*((limit-p*p)//p+1)
 ps=array('I');sums=array('Q',[0]);v=0
 for p,b in enumerate(sieve):
  if b:ps.append(p);v+=pow(p,32).bit_length()-1;sums.append(v)
 del sieve
 for name,ar in [('primes.u32',ps),('weights.u64',sums)]:
  with (where/name).open('wb') as h:ar.tofile(h)
 meta=dict(limit=limit,count=len(ps),last=ps[-1],weight_power=32,total=v,byteorder=sys.byteorder,seconds=time.monotonic()-st)
 (where/'metadata.json').write_text(json.dumps(meta,indent=2)+'\n');return meta

def load_cache(where):
 meta=json.loads((where/'metadata.json').read_text());assert meta['byteorder']==sys.byteorder and meta['weight_power']==32
 ps=array('I');sm=array('Q')
 with (where/'primes.u32').open('rb') as h:ps.fromfile(h,meta['count'])
 with (where/'weights.u64').open('rb') as h:sm.fromfile(h,meta['count']+1)
 assert len(ps)==meta['count'] and len(sm)==len(ps)+1
 return ps,sm,meta

def finite(spec,start=500,W=128,cache_name="general_content"):
 tailrows=json.loads((ROOT/'outputs/general_content_tail.json').read_text())['rows']
 T=next(r for r in tailrows if all(r[k]==spec[k] for k in ['e','d','f']));M=T['M'];e,d,f=spec['e'],spec['d'],spec['f'];N=e+d+f
 cm=json.loads((ROOT/'cache'/cache_name/'metadata.json').read_text());assert 12*cm['count']+8<2**31, 'array memory gate'
 ps,sm,meta=load_cache(ROOT/'cache'/cache_name);ln2lo=logq(F(2)).lo;g=F(spec['g'])
 # Integer interval bounds; no prime occurs in two cells.
 cc=[]
 for A,B,C,w,l,u,J in cell_catalog(e,d,f,W):
  cc.append((N*w+J+2,C.numerator,C.denominator))
 calls=0
 def weight(a,b):
  nonlocal calls
  calls+=1;v=0
  for t,cn,cd in cc:
   hi=(N*a-2)//t;lo=cn*b//cd
   if hi<=lo:continue
   assert hi<=meta['limit']
   v+=sm[bisect_right(ps,hi)]-sm[bisect_right(ps,lo)]
  return v
 # Use a simple certified rational lower log2, not a floating summation.
 L2=F(69314718055,10**11);assert L2<ln2lo
 num,den=(g*32/L2).numerator,(g*32/L2).denominator
 a=start;blocks=[];failed=[];st=time.monotonic()
 checkpoint=ROOT/f'outputs/general_content_{e}_{d}_{f}_checkpoint.json'
 if checkpoint.exists():
  old=json.loads(checkpoint.read_text())
  assert old['spec']==spec
  blocks=old['blocks'];failed=old['failed'];a=old['next_a'];calls=old['calls']
  assert blocks[-1]['b']+1==a and all(x['b']+1==y['a'] for x,y in zip(blocks,blocks[1:]))
  # Resumed rows are rechecked, not blindly trusted.
  for row in blocks:
   v=weight(row['a'],row['b']);assert v==row['weight'] and v*den>num*row['b']
  print('RESUMED_RECHECKED',len(blocks),a,flush=True)
 while a<M:
  if weight(a,a)*den<=num*a:
   failed.append(a);blocks=[];a+=1;continue
  lo=a;step=max(1,a//256);hi=min(M-1,a+step)
  while hi<M-1 and weight(a,hi)*den>num*hi:
   lo=hi;step*=2;hi=min(M-1,a+step)
  if weight(a,hi)*den>num*hi:lo=hi
  else:
   while lo+1<hi:
    mid=(lo+hi)//2
    if weight(a,mid)*den>num*mid:lo=mid
    else:hi=mid
  b=lo;v=weight(a,b);assert v*den>num*b
  blocks.append(dict(a=a,b=b,weight=v));a=b+1
  if len(blocks)%1000==0:
   ck=dict(spec=spec,next_a=a,blocks=blocks,failed=failed,calls=calls)
   (ROOT/f'outputs/general_content_{e}_{d}_{f}_checkpoint.json').write_text(json.dumps(ck,separators=(',',':'))+'\n')
   print('CHECKPOINT',e,d,f,len(blocks),a,flush=True)
 assert blocks and blocks[-1]['b']==M-1
 out=dict(status='PASS_EXACT_FINITE_COVER',**spec,M=M,W=W,first_m=blocks[0]['a'],m0=blocks[0]['a']-1,blocks=blocks,failed_before_retained=failed,log2_lower=str(L2),target_ratio=str(g*32/L2),calls=calls,prime_limit=meta['limit'],seconds=time.monotonic()-st)
 (ROOT/f'outputs/general_content_finite_{e}_{d}_{f}.json').write_text(json.dumps(out,indent=2)+'\n');print('FINITE',e,d,f,'m0',out['m0'],'blocks',len(blocks),'calls',calls,'seconds',out['seconds'],flush=True)

if __name__=='__main__':
 if not __debug__:raise RuntimeError('Do not use -O')
 ap=argparse.ArgumentParser();ap.add_argument('mode',choices=['tail','cache','finite']);ap.add_argument('--index',type=int,default=0);ap.add_argument('--start',type=int,default=500);args=ap.parse_args()
 if args.mode=='tail':save_tail()
 elif args.mode=='cache':
  rs=json.loads((ROOT/'outputs/general_content_tail.json').read_text())['rows'];limit=max(int(F(r['M'])/min(a for a,b,J in intervals(r['e'],r['d'],r['f']))) for r in rs);print(make_cache(limit,ROOT/'cache/general_content'))
 else:finite(SPECS[args.index],args.start)
