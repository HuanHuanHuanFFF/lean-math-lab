"""Exact receiver for the finite i9 block experiment and its fixed-profile arithmetic."""
from pathlib import Path
from itertools import permutations,combinations
from math import factorial,prod
import json,time
R=Path(__file__).resolve().parents[1]
PROFILES={'asymmetric':(4,1,2,30,13,2**53),'symmetric':(20,7,2**35,20,7,2**35)}
def main():
 t0=time.monotonic();doc=json.loads((R/'evidence/i9/block_probe.json').read_text());assert doc['input_height_bits']==4096 and doc['gap']==8
 K=2**42*prod(factorial(h)**3 for h in range(1,7));C0=80640
 assert str(K)==doc['K9'] and doc['C0']==C0 and C0**10<K*32**10
 assert 9**13<2**42 and 9**21<2**68
 weight_cases=0
 for a in range(9):
  for b in range(a+1):assert max(0,a-2)+max(0,6-b)+max(0,6-a+b)>=10;weight_cases+=1
 expected={('asymmetric',p,q) for p,q in permutations((2,3,5,7),2)}|{('symmetric',p,q) for p,q in combinations((2,3,5,7),2)}
 seen=set();blocks=0;max_h=7
 for row in doc['rows']:
  key=(row['profile'],row['p'],row['q']);assert key in expected and key not in seen;seen.add(key)
  profile,p,q=key;u,v,C,w,z,D=PROFILES[profile];r=u-v;s=w-z
  assert r*s>v*w
  assert doc['profiles'][profile]==list(PROFILES[profile])
  top=row['top'];assert p**top<2**4096<=p**(top+1)
  first=row['first'];h=row['prefix_height_bits'];assert 2**h>8 and (2**h-8)**r>C*p**(u*(first-1));max_h=max(max_h,h)
  current=first
  for k,l,b in row['blocks']:
   assert k==current and l>=0 and b>=1 and k+l<=top
   P=p**k;Q=q**b;assert P>8 and D*Q**w<=(P-8)**s
   inv=pow(P,-1,Q);residues=[]
   for gap in range(-8,9):
    rr=(inv*gap)%Q;residues.append(Q if rr==0 else rr)
   assert min(residues)**r>C*p**(v*k+u*l)
   current=k+l+1;blocks+=1
  assert current==top+1
 assert seen==expected and len(seen)==18 and blocks==doc['block_count']
 assert max_h==doc['output_height_bits']
 out={'status':'PASS_I9_FIXED_PROFILES_AND_FINITE_BLOCK_RECEIVER','stream_count':18,'blocks':blocks,'signed_residue_checks':17*blocks,'weight_cases':weight_cases,'input_height_bits':4096,'output_height_bits':max_h,'statement':'i9 noCommon and n<2^4096 implies n<2^185','global_i9_height_proved':False,'i9_closed':False,'seconds':round(time.monotonic()-t0,3)}
 (R/'evidence/i9/block_probe_check.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out),flush=True)
if __name__=='__main__':main()
