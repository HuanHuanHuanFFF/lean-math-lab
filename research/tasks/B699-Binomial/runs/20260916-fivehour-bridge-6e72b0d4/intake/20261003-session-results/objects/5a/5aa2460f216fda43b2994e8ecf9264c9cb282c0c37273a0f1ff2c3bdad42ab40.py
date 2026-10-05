from pathlib import Path
import json,time
import sympy as s
from sympy.polys.rings import ring
from sympy.polys.domains import ZZ
W=Path('/mnt/data/r7_work');A=W/'input_r6/B699-ProB-REG3-N3-MEMBERS-20261002-R6'
D=json.loads((A/'inputs/generic.json').read_text());R,t,r=ring('t,r',ZZ)
fs=[('P5',[(e[:3],int(c))for e,c in D['B5']])]+[(f'V{i}',[(e,int(c))for e,c in json.loads((A/f'certificates/colon_{i}.json').read_text())['V']])for i in [4,3,2,1,0]]
fs += [(n,[(e[:3],int(c))for e,c in D[n]])for n in ['N','K']]
units=[t-1,t+1,t*t+3]
outs=[]
for n,p in fs:
 start=time.time();du=max(e[0]for e,c in p);dy=max(e[1]for e,c in p)
 pp={}
 def powers(v,d):
  a=[R.one]
  for i in range(d):a.append(a[-1]*v)
  return a
 a=powers(t*t+3,du);b=powers(t-1,2*du+dy);c=powers(t+1,dy)
 f=R.zero
 for (i,j,k),v in p:f+=v*((-4)**j)*a[i]*b[2*(du-i)+dy-j]*c[dy-j]*r**k
 stripped=[]
 for g in units:
  z=0
  while f:
   q,rem=f.div(g)
   if rem:break
   f=q;z+=1
  stripped.append(z)
 ct,f=f.primitive()
 if f.LC<0:ct=-ct;f=-f
 out={'name':n,'bounds':[du,dy],'units':stripped,'content':str(ct),'poly':[[list(e),str(c)]for e,c in sorted(f.items())]}
 (W/f'H_{n}.json').write_text(json.dumps(out))
 print(n,'terms',len(f),'degs',f.degrees(),'total',max(map(sum,f)),'strip',stripped,'secs',time.time()-start,flush=True)
 outs.append(f'poly {n}='+str(f.as_expr()).replace('**','^')+';')
(W/'H_polys.inc').write_text('\n'.join(outs)+'\nideal I=P5,V4,V3,V2,V1,V0;\npoly hh=r*(t-1)*(t+1)*(t^2+3)*N*K;\n')
