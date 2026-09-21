from fractions import Fraction as F
from math import comb,lcm,gcd
from functools import reduce
from pathlib import Path
import json
import search_b22 as e
D=Path(__file__).parent
J=json.loads((D/'families.json').read_text())
def tangent_jet(r,v,s,i,j):
 return tuple(comb(b,j)*sum(comb(b-j,k)*v**(b-j-k)*s**k*comb(a,i-k)*r**(a-i+k) for k in range(b-j+1) if 0<=i-k<=a) if b>=j else 0 for a,b in e.FULL)
def primitive(V):
 L=reduce(lcm,(x.denominator for x in V),1);vv=[int(x*L) for x in V];g=reduce(gcd,vv,0);vv=[x//g for x in vv]
 return vv,sum(abs(x) for x in vv)
result=[];fixed=[]
for f in J['families']:
 base=[F(x) for x in f['base']]+[F(1)];directions=[[F(x) for x in v]+[F(0)] for v in f['directions']]
 if f['dimension']==0:
  pp,norm=primitive(base);fixed.append(dict(ids=f['ids'],polynomial=pp,norm=norm,bits=norm.bit_length()));continue
 if f['dimension']!=1 or f['common_factor']!='1':continue
 vecs=[base]+directions;rec={'ids':f['ids'],'delta':f['delta'],'m':f['m'],'diagonal':[],'exceptional':[]}
 exceptions=set()
 for r in (4,6,8):
  s=r//2;v=s*s;m=f['m'][r-3][-1]
  for wt in range(9):
   terms=[]
   for jj in range(wt//2+1):
    ii=wt-2*jj;row=tangent_jet(r,v,s,ii,jj);ff=[sum(a*b for a,b in zip(row,vec)) for vec in vecs]
    if any(ff):terms.append((ii,jj,ff))
   if terms:break
  roots=set(-c[2][0]/c[2][1] for c in terms if c[2][1])
  cancels=[t for t in roots if all(c[2][0]+t*c[2][1]==0 for c in terms)]
  exceptions.update(cancels)
  rec['diagonal'].append(dict(r=r,m=m,generic_w=wt,generic_kappa=2*m-wt,terms=[[a,b,[str(x) for x in ff]] for a,b,ff in terms],cancel=[str(t) for t in cancels]))
 for t in sorted(exceptions):
  pp,norm=primitive([a+t*b for a,b in zip(base,directions[0])]);rec['exceptional'].append(dict(t=str(t),polynomial=pp,norm=norm,bits=norm.bit_length()))
 result.append(rec)
 print('PENCIL',f['ids'],'delta',f['delta'],'k',[x['generic_kappa'] for x in rec['diagonal']],'exceptions',[(x['t'],x['bits']) for x in rec['exceptional']])
print('FIXED',len(fixed),'maxnorm',max(x['norm'] for x in fixed),'maxbits',max(x['bits'] for x in fixed))
(D/'tangency.json').write_text(json.dumps(dict(pencils=result,fixed=fixed),indent=2))
