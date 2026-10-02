from pathlib import Path
import os
ROOT=Path(__file__).resolve().parents[2]
WORK=Path(os.environ['REG3_REGEN_DIR']).resolve()
WORK.mkdir(parents=True,exist_ok=True)
from pathlib import Path
import json
from sympy.polys.rings import ring
from sympy.polys.domains import QQ
R,x=ring('x',QQ)
q=8*x**4+16*x**3+4*x**2-4*x+3
rr=-(16*x**3+24*x**2+8*x+3)/18
yy=(4*x**3+4*x**2-2*x+1)/3
root=ROOT
j=json.loads((root/'inputs/generic.json').read_text());old=json.loads((root/'inputs/R1_scale.json').read_text())
def rd(ts):
 mx=[max(e[i]for e,c in ts)for i in range(3)]
 bs=[x,yy,rr];pw=[]
 for z,n in zip(bs,mx):
  a=[R.one]
  for _ in range(n):a.append((a[-1]*z)%q)
  pw.append(a)
 out=R.zero
 for(e0,e1,e2,unused),c in ts:out+=(QQ(c)*pw[0][e0]*pw[1][e1]*pw[2][e2])%q
 return out%q
sources={'P5':j['B5'],**{f'G{i}':j['low'][str(i)]['stripped']for i in range(4,-1,-1)},'N':j['N'],'K':j['K'],'D':old['D']}
remainders={name:rd(t)for name,t in sources.items()}
# inverse via univariate gcdex in the ring
sN,tN,g=remainders['N'].gcdex(q);assert g==1 and (sN*remainders['N']+tN*q)==1
_,_,gq=q.gcdex(q.diff(x));assert gq==1
D={ 'q':[[list(e),str(c)]for e,c in sorted(q.items())], 'r':[[list(e),str(c)]for e,c in sorted(rr.items())], 'y':[[list(e),str(c)]for e,c in sorted(yy.items())], 'remainders':{name:[[list(e),str(c)]for e,c in sorted(p.items())]for name,p in remainders.items()},'N_inverse':[[list(e),str(c)]for e,c in sorted((sN%q).items())], 'r_minimal':[[0,'3'],[1,'4'],[2,'12']], 'assertion':'These are four excluded K=0 boundary points. No exhaustiveness claim for the original saturated ideal.'}
(WORK/'boundary_RUR.json').write_text(json.dumps(D,indent=2)+'\n')
print('N',remainders['N']);print('D',remainders['D']);print('invN',sN%q)
