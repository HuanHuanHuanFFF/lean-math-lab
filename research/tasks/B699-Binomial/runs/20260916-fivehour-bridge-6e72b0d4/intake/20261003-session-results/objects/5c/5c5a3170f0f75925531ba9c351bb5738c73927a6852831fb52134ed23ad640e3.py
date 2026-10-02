import json,time
from pathlib import Path
from sympy import QQ
from sympy.polys.rings import ring
w=Path('/mnt/data/r6_work');reg=json.load(open(w/'r1/B699-ProB-REG4-SCALE-20261002/certificates/regular.json'));sca=json.load(open(w/'previous/B699-ProB-REG3-ISOLATED-G0-20261002-R5/inputs/R1_scale.json'));gen=json.load(open(w/'previous/B699-ProB-REG3-ISOLATED-G0-20261002-R5/inputs/generic.json'))
R,u,y,r,L=ring('u,y,r,L',QQ)
def unpack(ts):return R.from_dict({tuple(e):QQ(c)for e,c in ts})
D=unpack(sca['D']);F=unpack(sca['F']);C=unpack(sca['C']);NN=L*F+C;DD=L*D
seq=[unpack(gen['K'])*L-unpack(gen['N'])]
records=[]
for i in range(6,-1,-1):
 st=time.monotonic();ts=reg['R'][str(i)]['terms'];dw=max(e[0]for e,c in ts);np=[R.one];dp=[R.one]
 for j in range(dw):np.append(np[-1]*NN);dp.append(dp[-1]*DD)
 z=R.zero
 for (ww,uu,yy,ll,aa),co in ts:z+=QQ(co)*np[ww]*dp[dw-ww]*u**uu*y**yy*L**(ll+aa)*r**aa
 facts=[]
 for div in [u,y,r,L,u-1,y-1,D]:
  e=0
  while z and not z.rem(div):z=z.exquo(div);e+=1
  facts.append((str(div),e))
 den=1
 from math import lcm,gcd
 for c in z.values():den=lcm(den,int(c.denominator))
 cont=0
 for c in z.values():cont=gcd(cont,int(c*den))
 z*=QQ(den,cont);seq.append(z)
 print('R',i,'terms',len(z),'degree',max(sum(e)for e in z),'time',time.monotonic()-st, facts,flush=True)
 records.append({'i':i,'wdegree':dw,'gates':facts,'scalar':str(QQ(cont,den)),'poly':[[list(e),str(c)]for e,c in sorted(z.items())]})
(w/'lift.json').write_text(json.dumps(records))
for inds in [[0,1,3,4,5,6,7],[0,1,2,3,4,5,6,7],[1,2,3,4,5,6,7]]:
 out=[str(len(inds))]
 for i in inds:
  z=seq[i];out.append(str(len(z)));out.extend(' '.join(map(str,[e[3],e[2],e[0],e[1],int(c)]))for e,c in z.items())
 (w/('lift'+str(len(inds))+'_'+str(inds[0])+'.txt')).write_text('\n'.join(out)+'\n')
