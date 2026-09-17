from pathlib import Path
import json
w=[0,55,55,137,110,91,78,68,61];mu=[27,24,19,13]+[0]*5
ms={r:[w[r]-mu[s]-mu[r-s] for s in range(r//2+1)] for r in range(1,9)}
def cost(r,t):return sum(max(m-t,0) if s*2!=r else (max(m-t,0)+1)//2 for s,m in enumerate(ms[r]))
def profile(B):
 f={}
 for r in range(1,9):
  f[r]=next(t for t in range(max(ms[r])+1) if cost(r,t)<=B)
 D=384-sum(f.values())
 C=sum(max(D-2*b+1,0) for b in range(B+1));R=K=0
 for r in range(1,9):
  cnt=0
  for s,m0 in enumerate(ms[r]):
   m=max(m0-f[r],0)
   cnt+=m*(m+1)//2 if 2*s!=r else (m+1)**2//4
  R+=cnt;K+=cnt*((r+1)**max(D,0)).bit_length()+17*cnt
 return dict(cap=B,f=f,D=D,C=C,R=R,surplus=C-R,K=K,bound=K//(C-R)+1 if C>R else None)
a=[profile(B) for B in range(193)]
for p in a:
 if p['bound'] and 1000*(p['bound']+6072)<93*14000001:
  print(p)
Path('/mnt/data/B699-ProA-common-locus-20260916/evidence/strip_caps.json').write_text(json.dumps(a,indent=2))
