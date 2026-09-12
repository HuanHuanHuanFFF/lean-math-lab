"""Direct local-power CRT consumer. A^u<=C*N^v is kept local to each prime power.
The discovery path solves A modulo the other prime power; a separate receiver reverses it.
"""
from pathlib import Path
from math import isqrt
from itertools import combinations,permutations
import json,time,sys,hashlib
R=Path(__file__).resolve().parents[1]
def cd(a,b):return -((-a)//b)
def iroot(n,k):
 if k==2:return isqrt(n)
 if n<2:return n
 x=1<<cd(n.bit_length(),k)
 while True:
  y=((k-1)*x+n//x**(k-1))//k
  if y>=x:break
  x=y
 while (x+1)**k<=n:x+=1
 while x**k>n:x-=1
 return x

def specification(i):
 if i==14:
  return {'i':14,'height_bits':169,'start':182,'primes':[2,3,5,7,11,13],'profiles':{'cubic':[3,1,216,3,1,216]},'ordered':{'cubic':False}}
 if i==9:
  return {'i':9,'height_bits':185,'start':72,'primes':[2,3,5,7],'profiles':{'asymmetric':[4,1,2,30,13,2**53],'symmetric':[20,7,2**35,20,7,2**35]},'ordered':{'asymmetric':True,'symmetric':False}}
 raise ValueError('unsupported index')

def compact(arr):
 arr.sort();out=[]
 for a,b in arr:
  if out and a<=out[-1][1]+1:out[-1][1]=max(out[-1][1],b)
  else:out.append([a,b])
 return out

def main(i):
 t0=time.monotonic();cfg=specification(i);H=1<<cfg['height_bits'];start=cfg['start'];gap=i-1;cache={};streams=[];all_intervals=[(2*i+2,start-1)]
 def fam(p,u,v,C):
  key=p,u,v,C
  if key in cache:return cache[key]
  Q=1;a=0;rows=[]
  while Q<H:
   if Q*p>i:
    low=max(1,cd(start-gap,Q));high=min(iroot(C*Q**v,u-v),(H-1)//Q)
    if low<=high:rows.append((Q,low,high,a))
   Q*=p;a+=1
  cache[key]=rows;return rows
 for profile,params in cfg['profiles'].items():
  u,v,C,w,z,D=params
  pairs=permutations(cfg['primes'],2) if cfg['ordered'][profile] else combinations(cfg['primes'],2)
  for p,q in pairs:
   left=fam(p,u,v,C);right=fam(q,w,z,D);total=branches=nonempty=terms=0;maxlen=0
   for Q,al,ah,hp in left:
    for T,bl,bh,hq in right:
     total+=1;inv=pow(Q,-1,T)
     for d in range(-gap,gap+1):
      branches+=1;a0=(d*inv)%T;b0=(Q*a0-d)//T
      lo=max(cd(al-a0,T),cd(bl-b0,Q));hi=min((ah-a0)//T,(bh-b0)//Q)
      if lo>hi:continue
      nonempty+=1;count=hi-lo+1;terms+=count;maxlen=max(maxlen,count)
      if count>10**6:raise RuntimeError('expansion resource gate hit; no accepted certificate emitted')
      for t in range(lo,hi+1):
       nn=Q*(a0+T*t);mm=T*(b0+Q*t);low=max(start,nn,mm);high=min(H-1,nn+gap,mm+gap);assert low<=high;all_intervals.append((low,high))
   streams.append({'profile':profile,'p':p,'q':q,'left_families':len(left),'right_families':len(right),'power_pairs':total,'signed_branches':branches,'nonempty_branches':nonempty,'progression_terms':terms,'max_progression_length':maxlen})
 ivs=compact(all_intervals);dest=R/('evidence/direct' if i==14 else 'evidence/i9/direct');dest.mkdir(parents=True,exist_ok=True)
 path=dest/'candidates.tsv';path.write_text(''.join(f'{l}\t{h}\n' for l,h in ivs))
 out={'status':'GENERATED_DIRECT_LOCAL_CRT_COMPLETE_FINITE_UNION','specification':cfg,'stream_count':len(streams),'power_pairs':sum(s['power_pairs'] for s in streams),'signed_branches':sum(s['signed_branches'] for s in streams),'progression_terms':sum(s['progression_terms'] for s in streams),'intervals':len(ivs),'candidates':sum(h-l+1 for l,h in ivs),'max_n':str(ivs[-1][1]),'streams':streams,'candidate_sha256':hashlib.sha256(path.read_bytes()).hexdigest(),'seconds':round(time.monotonic()-t0,3)}
 (dest/'crt_certificate.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps({k:v for k,v in out.items() if k not in ['streams','specification']}),flush=True)
if __name__=='__main__':main(int(sys.argv[1]))
