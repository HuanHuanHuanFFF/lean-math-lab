"""Finite diagnostic, never a proof of an infinite family or of NC."""
import sympy as S, math, json, time
from pathlib import Path
BASE=Path(__file__).resolve().parents[1]
def small5(x):
 s=1
 for p in [2,3]:
  while x%p==0:x//=p;s*=p
 if x%5==0 and x%25:s*=5
 return s

def qig(n):
 T=math.prod(small5(n-r) for r in range(4))
 return T**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3
start=time.monotonic();stats={'rows':0,'first_row_models':0,'new_t_models':0};found=[]
for p in [2,3]:
 for c in ([1,5] if p==2 else [1,2,5,10]):
  for a in range(3 if p==2 else 2,31 if p==2 else 21):
   alpha=c*p**a
   for g in list(S.primerange(37,600)):
    n=g*alpha
    if n%72 not in (18,56) or qig(n):continue
    stats['rows']+=1;s=small5(n-1);q1=(n-1)//s
    fs=S.factorint(q1);res=[0];mod=1
    for pp,ee in fs.items():
     Q=int(pp**ee);res=[b+mod*((z-b)*pow(mod,-1,Q)%Q) for b in res for z in (0,alpha%Q)];mod*=Q
    for beta in res:
     if not 0<beta<=alpha//2 or math.gcd(beta,alpha)!=1:continue
     j=g*beta
     if j<=5:continue
     stats['first_row_models']+=1;t=beta*(alpha-beta)//q1
     ft=S.factorint(t);omega=sum(pp>5 for pp in ft)+int(ft.get(5,0)>=2)
     if omega>1:continue
     stats['new_t_models']+=1
     qs=[(n-r)//small5(n-r) for r in range(5)];facts=[S.factorint(q) for q in qs]
     if any(q<=31 for q in qs):continue
     if any(len(facts[r])<=1 for r in (1,3,4)):continue
     if sum(map(len,facts))<8:continue
     collapsed=[]
     for r in (1,3,4):
      if any((j-b)%qs[r]==0 for b in range(r+1)):collapsed.append(r)
     if collapsed:continue
     actual=[]
     for r,f in enumerate(facts):
      for pp,e in f.items():
       P=int(pp);Q=P;v1=v2=0
       while Q<=n:
        v1+=int(5%Q>n%Q);v2+=int(j%Q>n%Q);Q*=P
       if v1>0 and v2>0:actual.append([P,v1,v2])
     rec={'n':int(n),'j':int(j),'g':int(g),'alpha':int(alpha),'beta':int(beta),'s':s,'t':int(t),
      't_factors':{str(k):int(v) for k,v in ft.items()},'q':qs,'q_factors':[{str(k):int(v) for k,v in f.items()} for f in facts],
      'witnesses':actual,'source_support':sum(map(len,facts))}
     found.append(rec);print('FOUND',json.dumps(rec),flush=True)
     if len(found)>=3:break
    if len(found)>=3:break
   if len(found)>=3:break
  if len(found)>=3:break
 if len(found)>=3:break
out={'search':{'g_primes':[37,600],'2_exponents':[3,30],'3_exponents':[2,20]},'stats':stats,'found':found,'seconds':time.monotonic()-start}
(BASE/'outputs/strict-example-probe.json').write_text(json.dumps(out,indent=2))
print('DONE',stats,'found',len(found),'seconds',time.monotonic()-start)
