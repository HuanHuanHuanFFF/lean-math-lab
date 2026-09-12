"""Cost probe: consume local cubic inequalities directly, not a height-wide M bound."""
from pathlib import Path
from math import isqrt
from itertools import combinations
import json,time
R=Path(__file__).resolve().parents[1]
PS=(2,3,5,7,11,13);H=1<<169;D=13;C=216;start=182

def cd(a,b):return -((-a)//b)
def main():
 t0=time.monotonic();fam={}
 for p in PS:
  Q=1;h=0;arr=[]
  while Q<H:
   if Q*p>14:
    low=max(1,cd(start-D,Q));high=min(isqrt(C*Q),(H-1)//Q)
    if low<=high:arr.append((Q,low,high,h))
   Q*=p;h+=1
  fam[p]=arr
 count=pairs=branches=0;best=181;max_span=0
 for p,q in combinations(PS,2):
  for Q,al,ah,hp in fam[p]:
   for T,bl,bh,hq in fam[q]:
    pairs+=1;v=pow(Q,-1,T)
    for d in range(-D,D+1):
     a0=(d*v)%T;b0=(Q*a0-d)//T
     lo=max(cd(al-a0,T),cd(bl-b0,Q));hi=min((ah-a0)//T,(bh-b0)//Q)
     if lo<=hi:
      count+=hi-lo+1;branches+=1;max_span=max(max_span,hi-lo+1)
      n1=Q*(a0+T*hi);n2=T*(b0+Q*hi);best=max(best,min(n1+D,n2+D,H-1))
 out={'status':'DISCOVERY_DIRECT_LOCAL_CUBIC_CRT','input_height_bits':169,'families':sum(map(len,fam.values())),'pairs':pairs,'signed_branches':27*pairs,'nonempty_branches':branches,'progression_terms':count,'max_progression_length':max_span,'max_n':str(best),'seconds':round(time.monotonic()-t0,3)}
 (R/'evidence/direct_local_crt_probe.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out),flush=True)
if __name__=='__main__':main()
