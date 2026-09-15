from pathlib import Path
import json,itertools,math
from fractions import Fraction
import numpy as np
from scipy.optimize import linprog
root=Path(__file__).resolve().parents[1]
dat=json.loads((root/'exploration/original_pool.json').read_text())
def sign(m,degree,f):
 h=m+1
 if degree==1:
  a,b,c=f;v=(a+b,b,h*(a+b)+c)
 else:
  a,b,c,D,E,F=f;v=(a+b+c,b+2*c,c,2*h*(a+b+c)+D+E,h*(b+2*c)+E,h*h*(a+b+c)+h*(D+E)+F)
 return all(x>=0 for x in v) and v[-1]>0 or all(x<=0 for x in v) and v[-1]<0

def value(deg,f,x,y):
 if deg==1:return f[0]*x+f[1]*y+f[2]
 return f[0]*x*x+f[1]*x*y+f[2]*y*y+f[3]*x+f[4]*y+f[5]

def pool(m,d):
 pts=[(b,r-b) for r in range(d) for b in range(r+1)]
 fs=[]
 for deg,f,_ in dat['pools'][str(d if d==8 else d+1)]:
  reason='sign' if sign(m,deg,f) else 'central' if ((deg==1 and f in ([1,-1,0],[-1,1,0])) or (deg==2 and f in ([1,-1,0,0,0,0],[0,1,-1,0,0,0]))) else None
  if reason:
   inds=[i for i,(x,y) in enumerate(pts) if value(deg,f,x,y)==0]
   if inds:fs.append((deg,f,inds,reason))
 return pts,fs

def solve(m,d,H,pooldata):
 pts,fs=pooldata;rows=[r for r in range(d) if r not in H]
 A=np.zeros((len(pts)+1,len(fs)+len(rows)))
 for z,(deg,f,inds,reason) in enumerate(fs):A[inds,z]=-1;A[-1,z]=deg
 for z,r in enumerate(rows):
  for t,(b,c) in enumerate(pts):
   if b+c==r:A[t,len(fs)+z]=1
 res=linprog([f[0] for f in fs]+[-1]*len(rows),A_ub=A,b_ub=[0]*len(pts)+[1],bounds=(0,None),method='highs')
 if not res.success or res.fun>=-1e-9:return None
 rat=[Fraction(float(x)).limit_denominator(1000000) for x in res.x];L=math.lcm(*(x.denominator for x in rat));v=[int(x*L) for x in rat]
 pp=[{'degree':f[0],'coeffs':f[1],'weight':v[z],'nonzero':f[3]} for z,f in enumerate(fs) if v[z]]
 w={r:v[len(fs)+z] for z,r in enumerate(rows) if v[len(fs)+z]};W=sum(w.values());D=sum(p['degree']*p['weight'] for p in pp);delta=W-D
 assert delta>0
 for b,c in pts:assert sum(p['weight'] for p in pp if value(p['degree'],p['coeffs'],b,c)==0)>=w.get(b+c,0)
 return {'target':m,'d':d,'H':list(H),'row_weights':w,'polynomials':pp,'W':W,'degree_weight':D,'gap':delta}

def vp(n,p):
 k=0
 while n%p==0:n//=p;k+=1
 return k

def getK(c,omit=None):
 ps=[p for p in [2,3,5,7] if p<c['target']];w=c['row_weights'];H=c['H']
 E={p:max(sum(z*vp(abs(r-h),p) for r,z in w.items()) for h in H) for p in ps if p!=omit}
 if c['target'] in (5,7):E[c['target']]=max(w.values())
 K=c['W']+sum(e*(p-1).bit_length() for p,e in E.items())+sum(p['weight']*(sum(abs(x) for x in p['coeffs'])-1).bit_length() for p in c['polynomials'])
 return K,E
out=[];relative={}
for m,d,hc in [(5,5,1),(5,5,2),(7,7,2),(7,7,3),(8,8,4)]:
 pdata=pool(m,d)
 Hs=list(itertools.combinations(range(d),hc))
 if (m,hc)==(5,2):Hs=[(0,4)]
 if (m,hc)==(7,3):Hs=[(0,3,5),(0,3,6),(0,4,5),(0,4,6),(0,5,6)]
 if (m,hc)==(8,4):Hs=[(0,3,5,7)]
 for H in Hs:
  c=solve(m,d,H,pdata);assert c,(m,H)
  c['id']=f'm{m}_H'+''.join(map(str,H));K,E=getK(c);c.update(K=K,small_exponents=E,height_exponent=K//c['gap']+1,N=str(1<<(K//c['gap']+1)),T={5:11125,7:262144,8:32768}[m])
  out.append(c)
  print(c['id'],'E',c['height_exponent'],'delta',c['gap'],'W',c['W'],flush=True)
  if (m,hc) in [(5,1),(7,2)]:
   for p in [q for q in [2,3,5] if q<m]:
    Kp,Ep=getK(c,p)
    relative.setdefault(str(m),[]).append({'id':c['id'],'p':p,'K':Kp,'cost':Ep,'W':c['W'],'delta':c['gap']})
for m,cases in relative.items():
 Kmax=max((c['K']+c['delta']-1)//c['delta'] for c in cases)
 Lmax=max((c['W']+c['delta']-1)//c['delta'] for c in cases)
 relative[m]={'Kmax':Kmax,'Lmax':Lmax,'cases':cases}
 print('RELATIVE',m,Kmax,Lmax)
(root/'exploration/full_certificates.json').write_text(json.dumps({'cases':out,'relative':relative},indent=2))
