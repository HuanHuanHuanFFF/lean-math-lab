import sys,math,json,time,itertools
from pathlib import Path
root=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(root/'sources/frozen/two-power/code'))
import generate as old

def small(x,m):
 z=1
 for p in ([2,3]if m==5 else[2,3,5]):
  while x%p==0:z*=p;x//=p
 if x%m==0 and x%(m*m)!=0:z*=m
 return z

def qig(n,m):
 t=math.prod(small(n-r,m)for r in range(4))
 return t**6*(3*n*n-12*n+8)<(1<<20)*(n-1)**6*(n-3)**3

def sixg(n):
 t=math.prod(small(n-r,7)for r in range(6))
 return t**4*(3*n*n-20*n+24)<(1<<18)*27*(n-1)**4*(n-3)**3*(n-5)**2

def H02hi(N,T=11125):
 ps=[];q=8
 while q<N:ps.append(q);q*=2
 qs=[];q=9
 while q<N:qs.append(q);q*=3
 out=set();counts={'power_pairs':0,'position_cases':0,'in_range':0,'position':0,'exact':0}
 for P in ps:
  for Q in qs:
   counts['power_pairs']+=1;inv=pow(P,-1,Q)
   for r,z in [(0,2),(2,0)]:
    counts['position_cases']+=1;n=r+P*((z-r)*inv%Q)
    if not T<=n<N:continue
    counts['in_range']+=1
    if n%72 not in [18,56]:continue
    counts['position']+=1
    if (n-r)%(2*P)==0 or(n-z)%(3*Q)==0:continue
    counts['exact']+=1
    if not qig(n,5):out.add(n)
 return {'stats':counts,'post_qig':sorted(out)}

t0=time.time()
a=H02hi((1<<132)*60**7)
(root/'exploration/H02_denominator_probe.json').write_text(json.dumps(a,indent=2));print('H02',json.dumps(a),flush=True)
mask=old.residues(6,[0,2,3])
b=old.high_domain({'d':6,'H':[0,2,3],'N':str((1<<825)*420**7),'T':1<<18},mask)
b['post_qig_sixg']=[n for n in b['candidates']if not(qig(n,7)or sixg(n))]
(root/'exploration/H023_denominator_probe.json').write_text(json.dumps(b,indent=2));print('H023 stats',b['stats'],'mass n',len(b['candidates']),'after',len(b['post_qig_sixg']),'maxdigits',len(str(max(b['post_qig_sixg'],default=0))))
print('H023 post',json.dumps(b['post_qig_sixg'])[:15000]);print('seconds',time.time()-t0)
