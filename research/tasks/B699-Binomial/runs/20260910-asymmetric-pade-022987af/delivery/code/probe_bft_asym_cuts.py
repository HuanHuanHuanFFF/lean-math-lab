"""Floating cut generation on a fixed finite parameter box; NOT a proof."""
import numpy as np,itertools,math,json
from pathlib import Path
from probe_asymmetric_graph import ROWS,optimize
GRIDS=[(9,8,1.1742,25),(8,7,1.1951,28),(7,6,1.2219,53),(6,5,1.2581,35),(5,4,1.3098,50),(9,7,1.3317,15),(7,5,1.4135,74),(4,3,1.4170,153),(3,2,1.5395,138),(8,5,1.5407,53),(5,3,1.5454,86),(3,1,1.5498,260),(25,17,1.5540,582),(7,4,1.6219,60),(8,3,1.6560,149),(9,5,1.6636,79),(5,2,1.7017,231),(7,3,1.7282,161),(9,4,1.7666,87),(2,1,1.9377,150)]
S=np.array([c/d for c,d,_,_ in GRIDS]);LL=np.log([L for _,_,L,_ in GRIDS]);AL=(S+1)*np.log(S+1)-(S-1)*np.log(S-1)
PS=[2,3,5,7,11,13]
Z={2:.059,3:.329,5:.261627,7:.306584,11:0,13:.037}

def vals(p,q,k,l,a,b,delta,Z):
 P,Q=p**k,q**l;z=delta/(a*P);ss=S
 root=np.sqrt(ss*ss*z*z+4-4*z)
 u1=(ss*(2-z)-root)/(2*(1-z)*(ss+1));u2=(ss*z+2-root)/(2*z*(ss+1))
 lq=AL+(ss-1)*np.log(u1)+np.log1p(-u1)+np.log1p(-(1-z)*u1)
 le=AL+np.log(u2)+np.log1p(-u2)+(ss-1)*np.log1p(-z*u2)
 o3=(ss-1)*math.log(P)+LL-math.log(a)-ss*math.log(b)-lq
 o4=ss*math.log(min(P,Q))+LL-(ss-1)*math.log(a*P)-2*math.log(delta)-le
 good=(o3>0)&(o4>0)&(ss<1/z)
 denom=ss*math.log(max(P,Q))+o4
 ap=1-ss*math.log(P)/denom;aq=1-ss*math.log(Q)/denom
 score=np.where(good,np.minimum(ap-Z[p],aq-Z[q]),-100.)
 idx=int(np.argmax(score))
 if score[idx]<=0:return None
 c,d,L,m0=GRIDS[idx]
 return dict(p=p,q=q,k0=k,l0=l,a=a,b=b,D0=delta,c=c,d=d,L1=L,m0=m0,ap=float(ap[idx]),aq=float(aq[idx]),score=float(score[idx]),logOmega3=float(o3[idx]),logOmega4=float(o4[idx]))

def main():
 found=[]
 for pp,qq in itertools.combinations(PS,2):
  best=None
  for k in range(1,15):
   if pp**k>10000000:break
   for l in range(1,15):
    if qq**l>10000000:break
    for a in range(1,7):
     for b in range(1,7):
      D=a*pp**k-b*qq**l
      if not D or abs(D)>.3*min(a*pp**k,b*qq**l):continue
      if D>0:v=vals(pp,qq,k,l,a,b,D,Z)
      else:v=vals(qq,pp,l,k,b,a,-D,Z)
      if v and (best is None or v['score']>best['score']):best=v
  print(pp,qq,best,flush=True)
  if best:found.append(best)
 Path(__file__).resolve().parents[1].joinpath('results/asymmetric_cut_probe.json').write_text(json.dumps(found,indent=2)+'\n')
if __name__=='__main__':main()
