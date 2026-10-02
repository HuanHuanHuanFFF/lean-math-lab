from pathlib import Path
import os
ROOT=Path(__file__).resolve().parents[2]
WORK=Path(os.environ['REG3_REGEN_DIR']).resolve()
WORK.mkdir(parents=True,exist_ok=True)
from pathlib import Path
import json,time,sys
from sympy.polys.rings import ring
from sympy.polys.domains import QQ
R,v,r=ring('v,r',QQ)
root=ROOT
j=json.loads((root/'inputs/generic.json').read_text())
polys={'P5':j['B5']};polys.update({f'G{i}':j['low'][str(i)]['stripped'] for i in range(4,-1,-1)})
branch=sys.argv[1]
if branch=='J':nu=1-v*v;du=R(4);ny=(v+1)**2;dy=2*(v-1);gates=[v-1,v+1,v*v+3]
elif branch=='A5':nu=v**3-30*v+65;du=(2*v-5)**2;ny=-5*(v-4)**2;dy=(2*v-5)*(v*v-10);gates=[v-4,2*v-5,v*v-10,nu]
else:raise ValueError(branch)
data={'branch':branch,'vars':['v','r'],'nu':str(nu),'du':str(du),'ny':str(ny),'dy':str(dy),'gates':[str(x) for x in gates],'polys':{}}
for nm,f in polys.items():
 st=time.time();a=max(e[0] for e,c in f);b=max(e[1] for e,c in f)
 us=[nu**i*du**(a-i) for i in range(a+1)];ys=[ny**i*dy**(b-i) for i in range(b+1)]
 # combine terms with same r exponent to minimize allocations
 out=R.zero
 for (i,j,k,unused),c in f:out+=QQ(c)*us[i]*ys[j]*r**k
 fs=[]
 for g in gates+[r]:
  ct=0
  while out:
   q,rem=divmod(out,g)
   if rem:break
   out=q;ct+=1
  fs.append(ct)
 den,out=out.clear_denoms();con,out=out.primitive()
 print(branch,nm,'terms',len(out),'degrees',out.degrees(),'stripped',fs,'sec',round(time.time()-st,3),flush=True)
 data['polys'][nm]={'input_u_degree':a,'input_y_degree':b,'gate_powers':fs,'clear_denominator':str(den),'content':str(con),'terms':[[list(e),str(c)] for e,c in sorted(out.items())]}
 (WORK/f'param_{branch}.json').write_text(json.dumps(data))
