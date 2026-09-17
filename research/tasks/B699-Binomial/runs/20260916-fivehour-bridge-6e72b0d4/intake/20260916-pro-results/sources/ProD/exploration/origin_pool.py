import math,itertools,json,time
from pathlib import Path
import sympy as s
import numpy as np
from scipy.optimize import linprog
root=Path(__file__).parent
pts=[(b,r-b) for r in [1,4,5,6] for b in range(r+1)]
orbits=[(r,b*(r-b)) for r in [1,4,5,6] for b in range(r//2+1)]
x,y=s.symbols('x y')
pool={}
def translate(co,x0,y0):
 d={}
 for (a,b),c in co.items():
  for u in range(a+1):
   for v in range(b+1):
    val=c*math.comb(a,u)*math.comb(b,v)*x0**(a-u)*y0**(b-v)
    if val:d[u,v]=d.get((u,v),0)+val
 return {e:c for e,c in d.items()if c}
def add(co,kind,detail):
 co={k:int(v)for k,v in co.items()if v}
 if not co:return
 d=max(a+b for a,b in co);g=math.gcd(*co.values());co={e:c//g for e,c in co.items()}
 if co[max(co)]<0:co={e:-c for e,c in co.items()}
 key=tuple(sorted((a,b,c)for (a,b),c in co.items()))
 if key in pool:return
 orders=[]
 for p in pts:
  tr=translate(co,*p);orders.append(min(a+b for a,b in tr))
 if not any(orders):return
 pool[key]={'terms':key,'degree':d,'origin':min(a+b for a,b in co),'orders':orders,'kind':kind,'detail':detail}
# All lines that miss a full free row; zeros then have elementary constant height.
lines=set()
for (a,b),(c,d) in itertools.combinations(pts,2):
 A,B,C=b-d,c-a,a*d-c*b;g=math.gcd(A,B,C);A,B,C=A//g,B//g,C//g
 if A<0 or(A==0 and B<0):A,B,C=-A,-B,-C
 lines.add((A,B,C))
for A,B,C in sorted(lines):
 miss=[r for r in [1,4,5,6]if all(A*b+B*(r-b)+C for b in range(r+1))]
 if miss:add({(1,0):A,(0,1):B,(0,0):C},'miss-row',miss)
 else:
  # boundaries are nonzero for x,y>=8, unless x=y; center is inherited closed.
  if A==0 or B==0 or C==0:add({(1,0):A,(0,1):B,(0,0):C},'boundary-or-ratio',[A,B,C])
# Symmetric origin-compatible curves. Their anti-diagonal restriction is c*(xy)^h.
configs=[]
for D in range(2,8):
 for h in range(1,D//2+1):
  T=max(1,2*h-2)
  mons=[(a,b)for a in range(D+1)for b in range(D//2+1)if T<=a+2*b<=D and (a>=1 or b==h)]
  if len(mons)>len(orbits)+1:continue
  configs.append((D,h,T,mons))
start=time.time();trials=0
for D,h,T,mons in configs:
 vals=[[r**a*X**b for a,b in mons]for r,X in orbits]
 for ids in itertools.combinations(range(len(orbits)),len(mons)-1):
  trials+=1;ns=s.Matrix([vals[i]for i in ids]).nullspace()
  if len(ns)!=1:continue
  v=ns[0];i0=mons.index((0,h))
  if not v[i0]:continue
  L=s.ilcm(*[z.q for z in v]);cv=[int(z*L)for z in v]
  co={}
  for (a,b),c in zip(mons,cv):
   if not c:continue
   for k in range(a+1):
    e=(b+k,b+a-k);co[e]=co.get(e,0)+c*math.comb(a,k)
  add(co,'origin-antidiagonal',{'D':D,'h':h,'T':T,'c':cv[i0],'nX_terms':[[a,b,c]for (a,b),c in zip(mons,cv)if c]})
 print('config',D,h,'trials',trials,'pool',len(pool),'sec',round(time.time()-start,3),flush=True)
rows=list(pool.values());N=len(rows)
A=np.zeros((len(pts),N+4))
for z,r in enumerate(rows):A[:,z]=-np.array(r['orders'])
for z,r in enumerate([1,4,5,6]):
 for a,(b,c)in enumerate(pts):
  if b+c==r:A[a,N+z]=1
sol=linprog([0]*N+[-1]*4,A_ub=A,b_ub=np.zeros(len(pts)),A_eq=[[r['degree']for r in rows]+[0]*4],b_eq=[1],bounds=(0,None),method='highs')
from fractions import Fraction
ans={'trials':trials,'candidates':len(rows),'objective':-sol.fun,'selected':[],'weights':[str(Fraction(float(z)).limit_denominator(10**6))for z in sol.x[N:]],'seconds':time.time()-start}
for r,v in zip(rows,sol.x[:N]):
 if v>1e-8:ans['selected'].append(dict(r,weight=str(Fraction(float(v)).limit_denominator(10**6))))
(root/'origin_pool.json').write_text(json.dumps(rows,indent=2));(root/'origin_pool_result.json').write_text(json.dumps(ans,indent=2))
print('RESULT',json.dumps(ans)[:11000])
