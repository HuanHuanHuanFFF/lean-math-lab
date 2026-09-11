"""Independent direct-local CRT receiver: root bisection and solving B modulo Q.
Every prescribed power pair and every signed shift is checked; no sampled families.
"""
from pathlib import Path
from itertools import permutations,combinations
import json,time,hashlib,sys
R=Path(__file__).resolve().parents[1]
def ceildiv(x,y):return (x+y-1)//y
def root(n,k):
 lo=0;hi=1<<ceildiv(n.bit_length(),k)
 while lo<hi:
  mid=(lo+hi+1)//2
  if mid**k<=n:lo=mid
  else:hi=mid-1
 assert lo**k<=n<(lo+1)**k
 return lo

def merge(arr):
 ans=[]
 for l,h in sorted(arr):
  if ans and l<=ans[-1][1]+1:ans[-1][1]=max(ans[-1][1],h)
  else:ans.append([l,h])
 return ans

def receive(i):
 t0=time.monotonic()
 if i==14:
  primes=[2,3,5,7,11,13];bits=169;start=182;profiles={'cubic':[3,1,216,3,1,216]};ordered={'cubic':False};dest=R/'evidence/direct'
  parent=json.loads((R/'evidence/blocks_check.json').read_text());assert parent['output_height_bits']==bits and parent['pair_count']==15
 elif i==9:
  primes=[2,3,5,7];bits=185;start=72;profiles={'asymmetric':[4,1,2,30,13,2**53],'symmetric':[20,7,2**35,20,7,2**35]};ordered={'asymmetric':True,'symmetric':False};dest=R/'evidence/i9/direct'
  parent=json.loads((R/'evidence/i9/block_probe_check.json').read_text());assert parent['output_height_bits']==bits and parent['input_height_bits']==4096
 else:raise ValueError('unsupported index')
 gap=i-1;H=1<<bits;cert=json.loads((dest/'crt_certificate.json').read_text())
 assert cert['specification']=={'i':i,'height_bits':bits,'start':start,'primes':primes,'profiles':profiles,'ordered':ordered}
 records={(r['profile'],r['p'],r['q']):r for r in cert['streams']};assert len(records)==len(cert['streams'])
 expected=set();all_intervals=[[2*i+2,start-1]];famcache={};full_pairs=full_terms=0
 def family(p,u,v,C):
  key=(p,u,v,C)
  if key in famcache:return famcache[key]
  Q=1
  while Q*p<=i:Q*=p
  arr=[]
  while Q<H:
   aa=max(1,ceildiv(start-gap,Q));bb=min(root(C*Q**v,u-v),(H-1)//Q)
   if aa<=bb:arr.append((Q,aa,bb))
   Q*=p
  famcache[key]=arr;return arr
 for profile,(u,v,C,w,z,D) in profiles.items():
  enum=permutations(primes,2) if ordered[profile] else combinations(primes,2)
  for p,q in enum:
   key=profile,p,q;expected.add(key);record=records[key]
   left=family(p,u,v,C);right=family(q,w,z,D);pairs=nonempty=terms=maxlen=0
   for Q,al,ah in left:
    for T,bl,bh in right:
     pairs+=1;inverse=pow(T,-1,Q)
     for d in range(-gap,gap+1):
      bb=(-d*inverse)%Q;aa=(T*bb+d)//Q
      assert Q*aa-T*bb==d
      low=max(ceildiv(al-aa,T),ceildiv(bl-bb,Q));high=min((ah-aa)//T,(bh-bb)//Q)
      if low>high:continue
      length=high-low+1;terms+=length;nonempty+=1;maxlen=max(maxlen,length)
      for t in range(low,high+1):
       A=aa+T*t;B=bb+Q*t;N1=Q*A;N2=T*B
       assert al<=A<=ah and bl<=B<=bh and N1-N2==d
       lower=max(start,N1,N2);upper=min(H-1,N1+gap,N2+gap);assert lower<=upper
       all_intervals.append([lower,upper])
   assert record=={'profile':profile,'p':p,'q':q,'left_families':len(left),'right_families':len(right),'power_pairs':pairs,'signed_branches':pairs*(2*gap+1),'nonempty_branches':nonempty,'progression_terms':terms,'max_progression_length':maxlen}
   full_pairs+=pairs;full_terms+=terms
 assert set(records)==expected and len(records)==cert['stream_count']
 merged=merge(all_intervals);path=dest/'candidates.tsv';actual=[list(map(int,l.split())) for l in path.read_text().splitlines()]
 assert merged==actual,'direct candidate coverage mismatch'
 digest=hashlib.sha256(path.read_bytes()).hexdigest();assert digest==cert['candidate_sha256']
 count=sum(h-l+1 for l,h in actual)
 assert len(actual)==cert['intervals'] and count==cert['candidates'] and str(actual[-1][1])==cert['max_n']
 assert full_pairs==cert['power_pairs'] and full_terms==cert['progression_terms']
 out={'status':'PASS_COMPLETE_INDEPENDENT_DIRECT_LOCAL_CRT','i':i,'input_height_bits':bits,'stream_count':len(records),'power_pairs':full_pairs,'signed_shifts':full_pairs*(2*gap+1),'expanded_progression_terms':full_terms,'candidate_intervals':len(actual),'candidates':count,'max_n':str(actual[-1][1]),'candidate_sha256':digest,'seconds':round(time.monotonic()-t0,3)}
 (dest/'crt_check.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out),flush=True)
if __name__=='__main__':receive(int(sys.argv[1]))
