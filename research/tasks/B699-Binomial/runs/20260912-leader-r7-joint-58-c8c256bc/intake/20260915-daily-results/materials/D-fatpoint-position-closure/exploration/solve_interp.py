import json,math,time
from pathlib import Path
import sympy as s
from sympy.polys.matrices import DomainMatrix
from sympy.polys.domains import QQ,ZZ
root=Path(__file__).parent
rec=json.loads((root/'peel_interpolation.json').read_text())[0]
D=rec['resdegree'];exps=[(a,b)for a in range(D+1)for b in range(D+1-a)]; rows=[]
for node in rec['respoints']:
 x,y=node['point'];w=node['weight']
 for i in range(w):
  for l in range(w-i):
   row=[math.comb(a,i)*math.comb(b,l)*x**(a-i)*y**(b-l)if a>=i and b>=l else 0 for a,b in exps];rows.append(row)
print('START',len(rows),len(exps),flush=True);t0=time.time()
M=DomainMatrix.from_list(rows,ZZ)
ns=M.nullspace();print('NULL',ns.shape,'sec',time.time()-t0,flush=True)
vs=[]
for rr in ns.to_list():
 g=math.gcd(*(int(v)for v in rr));v=[int(z)//g for z in rr];vs.append(v)
print('coeffbits',max(abs(v).bit_length()for row in vs for v in row),flush=True)
(root/'interp_basis026.json').write_text(json.dumps(dict(H=rec['H'],degree=D,exps=exps,basis=vs),indent=2))
j,k=s.symbols('j k');polys=[sum(c*j**a*k**b for c,(a,b)in zip(rr,exps))for rr in vs]
gg=polys[0]
for f in polys[1:]:gg=s.gcd(gg,f)
print('GCD degree',s.total_degree(gg), 'factors',s.factor(gg),flush=True)
for ind,f in enumerate(polys):
 print('FACTOR',ind,s.factor_list(f)[0],[(str(ff),pw)for ff,pw in s.factor_list(f)[1]][:8],flush=True)
(root/'interp_factors026.txt').write_text('\n\n'.join(str(s.factor(f))for f in polys))
