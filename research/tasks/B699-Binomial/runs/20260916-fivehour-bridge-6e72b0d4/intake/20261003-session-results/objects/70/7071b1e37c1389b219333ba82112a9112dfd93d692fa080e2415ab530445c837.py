from probe import *
import time,sys
from fractions import Fraction as Q
from pathlib import Path
MONS3=MONS
shift=[(21,2,1),(7,1,0)]
def shifted(poly):
 # substitute N=21+2u+v, X=7+u, standard integer expansion
 p=dict(s.Poly(poly,N,X).terms());out={}
 for (a,b),coef in p.items():
  for i in range(a+1):
   for j in range(a-i+1):
    cc=int(coef)*math.comb(a,i)*math.comb(a-i,j)*2**i*21**(a-i-j)
    for k in range(b+1):
     e=(i+k,j);out[e]=out.get(e,0)+cc*math.comb(b,k)*7**(b-k)
 return {e:c for e,c in out.items() if c}
def rec(poly,h):
 rows=[[a,b,int(c)] for (a,b),c in s.Poly(poly,N,X).terms()]
 z=shifted(poly);nz=list(z.values());sg= (1 if all(v>0 for v in nz) else -1 if all(v<0 for v in nz) else 0)
 norm=sum(Q(abs(c),2**b*352**(4-a-b)) for a,b,c in rows)
 return dict(h=h,terms=rows,norm=[norm.numerator,norm.denominator],shift_sign=sg,shift_constant=z.get((0,0),0))
def old(lay):
 pairs=[(h,tuple(v)) for h,v in zip((3,4,5),lay) if len(v)==2]
 return any(all(v==target(h) for h,v in pairs) for target in (lambda h:(0,h),lambda h:(0,1),lambda h:(h-1,h)))
targ=int(sys.argv[1]) if len(sys.argv)>1 else 3
out=[];tt=time.time();countold=0
for lay in product(*(list(combinations(range(h+1),3 if h==targ else 2)) for h in (3,4,5))):
 if old(lay):countold+=1;continue
 r={'slots':lay,'triple_source':targ,'kernels':[]}
 for h,v in zip((3,4,5),lay):
  if len(v)!=2:continue
  fs=kernel(lay,h)
  for f in fs:r['kernels'].append(rec(f,h))
 out.append(r)
 if len(out)%100==0:print(targ,len(out),'secs',round(time.time()-tt,1),flush=True)
p=Path('/mnt/data/c_r10_work/quartics_%d.json'%targ);p.write_text(json.dumps({'triple':targ,'old':countold,'records':out},sort_keys=True))
print('DONE',targ,len(out),'old',countold,'sign',sum(any(k['shift_sign'] and k['shift_constant'] for k in r['kernels']) for r in out),'seconds',time.time()-tt)
