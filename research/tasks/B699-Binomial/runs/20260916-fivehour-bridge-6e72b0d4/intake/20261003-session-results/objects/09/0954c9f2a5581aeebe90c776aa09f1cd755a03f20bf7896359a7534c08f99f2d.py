#!/usr/bin/env python3
"""Generate R3 only from hash-bound R1/R2 coefficients. Requires SymPy.
No old theorem replay, repository command, network, or Lean is used.
"""
from pathlib import Path
from math import gcd
from functools import reduce
import json,time
from sympy import QQ, primerange
from sympy.polys.rings import ring
ROOT=Path(__file__).resolve().parents[1]; OUT=ROOT/'certificates'; t0=time.monotonic()
def rd(n):return json.loads((ROOT/'inputs'/n).read_text())
def pack(p):return [[list(m),str(c)] for m,c in sorted(p.items())]
def save(n,d):(OUT/n).write_text(json.dumps(d,ensure_ascii=False,separators=(',',':'))+'\n')
d=rd('R1_scale.json');low=rd('R2_core.json')['low'];R,u,y,r,L=ring('u,y,r,L',QQ)
def po(ts):return R.from_dict({tuple(m):QQ(c) for m,c in ts})
def old(n):return po(d[n])
a,b,c,S,K,CS,D,F,C=map(old,['a','b','c','S','K','Cstar','D','F','C'])
H=u*u-u*y*y+3*u*y-2*u+(y-1)**2;J=u*u+u*y*y-3*u*y+y
T=4*u*y*y*H*r-3*(u-1)*(y-1)**2*J;N=(u-1)*T
P5=(c*K*K+(u-1)**2*S*T).exquo((u-1)**2*(D/2)**2)
assert a*N*N+b*N*K+c*K*K==(u-1)**2*(D/2)**2*P5
ans={'vars':['u','y','r','L'],'N':pack(N),'K':pack(K),'T':pack(T),'B5':pack(P5),'low':{}}
for i in [5,4,3,2,1,0]:
 p=old('Q3') if i==5 else po(low[str(i)]['Q']); power=p.degree(L)
 raw=sum((p.coeff_wrt(L,j)*N**j*K**(power-j) for j in range(power+1)),R.zero)
 factors={'um1':1 if i==1 else 2,'D2':3 if i==5 else 4}
 if i==2:factors['u']=1
 safe=(u-1)**factors['um1']*(D/2)**factors['D2']*(u if i==2 else 1)
 stripped=raw.exquo(safe)
 ans['low'][str(i)]={'power':power,'stripped':pack(stripped),'factors':factors}
 if i==5:ans['Q3_multiplier']=pack(stripped.exquo(P5))
 print('built complete new transport R'+str(i),len(stripped),flush=True)
save('generic.json',ans)
G=6*u*u*(u-1)**2;v=u+u*(u-1)*y
Wbar=(N*F+C*K).exquo(D);Wgate=2*Wbar-3*N
Hbar=(y*y-2*u*y-1)*K+(6*(u-1)**2-8*r*u*u)*Wbar+N*(-1+r*(12*u*u-12*u+4))
Cbar=(4*G*r*Wbar-6*G*r*N)/3+Hbar*(u*u-2*u)-G*Wbar+K*(-u*u+2*(u-1)*v)
kb=G*Wbar;nub=G*N*(Cbar+Hbar*u+v*K);a0b=G*G*r*N*N
T4=(a0b+kb**2+nub).exquo(3*u**4*(u-1)**4)
save('recovery.json',{'variables':['u','y','r','L'],'polynomials':{name:pack(p) for name,p in [('Wbar',Wbar),('Wgate',Wgate),('Hbar',Hbar),('Cbar',Cbar),('kbar',kb),('nubar',nub),('a0bar',a0b),('T4',T4)]}})
R2,U,Y=ring('u,y',QQ);A5=8*U**3*Y-5*(U-1)**2*(Y-1)**3
JJ=U*U+U*Y*Y-3*U*Y+Y;FF=2*U*U*Y*Y-6*U*U*Y+5*U*U+2*U*Y-4*U+1
end={}
for name,p,prime in [('J',JJ,3),('F',FF,7)]:
 rr=A5.resultant(p); yy=rr.ring.gens[0];vals=[int(rr.evaluate(yy,k))%prime for k in range(prime)]
 assert int(rr.LC)%prime and 0 not in vals
 end[name]={'resultant':pack(rr),'prime':prime,'lc_mod_prime':int(rr.LC)%prime,'values':vals,'degree_bound':12}
save('endpoints.json',{'variables':['u','y'],'A5':pack(A5),'J':pack(JJ),'F':pack(FF),'resultants':end})
R3,rr,uu=ring('r,u',QQ)
def half(p):
 v={};dy=p.degree(y)
 for (a0,b0,c0,l0),co in p.items():
  assert l0==0
  m=(c0,a0);v[m]=v.get(m,0)+co*2**(dy-b0)
 ints={m:int(co) for m,co in v.items() if co};content=reduce(gcd,(abs(co) for co in ints.values()))
 return R3.from_dict({m:QQ(co//content) for m,co in ints.items()}),{'two_exponent':dy,'integer_content':content}
f,fun=half(P5);g,gun=half(po(ans['low']['4']['stripped']))
# Fix the explicit determinant convention: 11 shifted descending f rows, then 5 g rows.
# For this fixed pair the installed ring.resultant has the opposite orientation.
res=-f.resultant(g);scalar,facs=res.factor_list();factors=[]
for p,e in facs:
 uv=p.ring.gens[0];rec={'terms':pack(p),'exponent':e,'degree':p.degree()}
 if p.degree()>1:
  prime=next(q for q in primerange(2,1000) if int(p.LC)%q and all(int(p.evaluate(uv,k))%q for k in range(q)))
  rec.update(prime=prime,lc_mod_prime=int(p.LC)%prime,values=[int(p.evaluate(uv,k))%prime for k in range(prime)])
  q=269;rec['values_mod269']=[int(p.evaluate(uv,k))%q for k in range(q)]
  assert int(p.LC)%q and 0 not in rec['values_mod269']
 factors.append(rec)
assert int(scalar)%269 and fun['integer_content']%269 and gun['integer_content']%269
save('half_terminal.json',{'variables':['r','u'],'f':pack(f),'g':pack(g),'f_unit':fun,'g_unit':gun,'determinant_convention':'11 descending f rows followed by 5 descending g rows','degree_bound_u':220,'points':list(range(-110,111)),'resultant':pack(res),'scalar':str(scalar),'factors':factors,'cylinder_prime':269,'cylinder_y_residue':135,'excluded_u_residues':[0,1]})
import math
p4=po(ans['low']['4']['stripped']);norm5=sum(abs(int(co)) for co in P5.values());norm4=sum(abs(int(co)) for co in p4.values());height=math.factorial(16)*norm5**11*norm4**5
save('projection.json',{'definition':'E(u,y)=det of the fixed 16x16 Sylvester matrix of P5 and G4 in r','degree_u_bound':220,'degree_y_bound':158,'nonzero_witness':'half_terminal.json: E(u,1/2) is a nonzero rational scalar times the 208-degree certified determinant','P5_l1':norm5,'G4_l1':norm4,'l1_bound_formula':'16!*P5_l1^11*G4_l1^5','l1_bound_strict_power2':height.bit_length(),'complex_zero_coefficient_base_bound':66,'normalized_complex_dimension_upper_bound':1,'global_finiteness_proved':False})
print(json.dumps({'status':'PASS','elapsed_seconds':round(time.monotonic()-t0,3),'new_complete_low_residuals':5,'P5_terms':len(P5),'P5_degrees':P5.degrees(),'T4_terms':len(T4),'half_resultant_degree':res.degree()},ensure_ascii=False),flush=True)
