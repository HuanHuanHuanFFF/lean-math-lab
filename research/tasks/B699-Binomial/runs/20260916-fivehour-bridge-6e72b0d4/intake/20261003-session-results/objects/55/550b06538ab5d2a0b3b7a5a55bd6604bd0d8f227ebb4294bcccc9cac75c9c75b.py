#!/usr/bin/env python3
"""Verify new R3 identities and scope prerequisites with exact stdlib arithmetic.
Frozen R1/R2 theorems are adopted, not rerun or promoted to independent review.
"""
from pathlib import Path
from fractions import Fraction
from math import gcd,isqrt,factorial
from functools import reduce
import json,hashlib,zipfile,time,sys
sys.path.insert(0,str(Path(__file__).resolve().parent))
from ipoly import *
ROOT=Path(__file__).resolve().parents[1];t0=time.monotonic();checks=[]
def rd(p):return json.loads(p.read_text())
def ck(n,t):
 if not t:raise AssertionError(n)
 checks.append(n)
def say(s):print(s,flush=True)
lock=rd(ROOT/'inputs/SOURCE_LOCK.json')
ck('fixed R2 archive identity',lock['previous_zip_sha256']=='3ab89f9db939ef451a9866b73c008dfef49b4654bcee649ff6dd47c3d630baf9')
for n,h in lock['frozen_inputs'].items():ck('frozen bytes '+n,hashlib.sha256((ROOT/'inputs'/n).read_bytes()).hexdigest()==h)
ck('frozen R14 raw SHA256',hashlib.sha256((ROOT/'inputs/R14_HANDOFF.md').read_bytes()).hexdigest()=='400b3af9713f0c528be83ff1fae2935879a987b91bf3873068d93e68049f0461')
with zipfile.ZipFile(ROOT/'inputs/PREVIOUS_EVIDENCE.zip') as z:
 base='B699-ProB-REG4-EXCEPTION-20261002-R2/'
 for local,inside in [('R1_scale.json','inputs/prior/certificates/scale.json'),('R1_regular.json','inputs/prior/certificates/regular.json'),('R2_core.json','certificates/core.json'),('PREVIOUS_HANDOFF.md','HANDOFF.md'),('R14_HANDOFF.md','inputs/R14_HANDOFF.md')]:
  ck('source coefficient bound to previous archive '+local,z.read(base+inside)==(ROOT/'inputs'/local).read_bytes())
say('PASS frozen source bytes; no old theorem recomputation')
o=rd(ROOT/'inputs/R1_scale.json');oldlow=rd(ROOT/'inputs/R2_core.json')['low'];new=rd(ROOT/'certificates/generic.json')
V=rd(ROOT/'certificates/recovery.json')['polynomials'];C=const(3,1);u,y,r=[var(3,i) for i in range(3)];um=sub(u,C);ym=sub(y,C)
def p(n):return drop_last(o[n])
def np(n):return drop_last(new[n])
def vp(n):return drop_last(V[n])
D,F,C0,a,b,c,S,K,CS,q,ep=map(p,['D','F','C','a','b','c','S','K','Cstar','q','eprime']);D2=divscalar(D,2)
T,N,P5=map(np,['T','N','B5'])
H=add(sub(add(mul(u,u),scale(mul(u,y),3)),add(mul(u,mul(y,y)),scale(u,2))),power(ym,2))
J=add(sub(add(mul(u,u),mul(u,mul(y,y))),scale(mul(u,y),3)),y)
TT=sub(scale(product(u,power(y,2),H,r),4),scale(product(um,power(ym,2),J),3))
ck('new T exact definition',T==TT);ck('new N exact definition',N==mul(um,T))
ck('P5 complete coefficient identity',add(mul(c,power(K,2)),product(power(um,2),S,T))==product(power(um,2),power(D2,2),P5))
ck('S/T division-free identity used for new equivalence',sub(mul(um,S),mul(b,K))==product(a,um,T))
ck('short-scale Q2 identity',heval(o['Q2'],N,K,2)==product(power(um,2),power(D2,2),P5))
J5=np('Q3_multiplier')
ck('short-scale full Q3 identity',heval(o['Q3'],N,K,3)==product(power(um,2),power(D2,3),P5,J5))
# These are used in the new equivalence proof on a=0; not a repeat of the R2 exception proof.
ck('a=0 safeguard denominator-free coefficient identity',sub(mul(a,coeff_last(o['Q3'],0)),mul(ep,c))==product(u,um,power(D2,2),CS,K))
ck('new P5 exact r degree and coefficient count',degree(P5,2)==5 and len(P5)==342)
say('PASS new quintic/short scale identities, including the a=0 safeguard')
GG={}
for i in range(4,-1,-1):
 dd=new['low'][str(i)];G=drop_last(dd['stripped']);GG[i]=G
 factors=product(power(um,1 if i==1 else 2),power(D2,4),u if i==2 else C)
 ck('complete new low transport R'+str(i),dd['power']==4 and heval(oldlow[str(i)]['Q'],N,K,4)==mul(factors,G))
 say('PASS exact new full low residual R'+str(i))
Gamma=scale(product(power(u,2),power(um,2)),6);v=add(u,product(u,um,y))
WB2=drop_last([[m,str(2*Fraction(co))] for m,co in V['Wbar']])
WG,HB,CB,kb,nub,a0b,T4=map(vp,['Wgate','Hbar','Cbar','kbar','nubar','a0bar','T4'])
ck('w denominator cancels D safely as identity',mul(D,WB2)==scale(add(mul(N,F),mul(C0,K)),2))
ck('w!=3/2 transported without lost branch',WG==sub(WB2,scale(N,3)))
he=add(add(mul(sub(sub(power(y,2),scale(mul(u,y),2)),C),K),mul(sub(scale(power(um,2),3),scale(product(r,power(u,2)),4)),WB2)),mul(N,add(scale(C,-1),mul(r,add(sub(scale(power(u,2),12),scale(u,12)),scale(C,4))))))
ck('h complete rational reconstruction',HB==he)
ce=add(add(divscalar(sub(scale(product(Gamma,r,WB2),2),scale(product(Gamma,r,N),6)),3),mul(HB,sub(power(u,2),scale(u,2)))),add(scale(mul(divscalar(Gamma,2),WB2),-1),mul(K,add(scale(power(u,2),-1),scale(mul(um,v),2)))))
ck('c0 complete rational reconstruction',CB==ce)
ck('kbar',kb==mul(divscalar(Gamma,2),WB2));ck('nubar',nub==product(Gamma,N,add(add(CB,mul(HB,u)),mul(v,K))))
ck('a0bar',a0b==product(power(Gamma,2),r,power(N,2)))
ck('full t square-class identity',add(add(a0b,power(kb,2)),nub)==scale(product(power(u,4),power(um,4),T4),3))
ck('T4 genuine quartic',degree(T4,2)==4 and len(T4)==241)
say('PASS original t/nonzero gate and unsquared-Q square-class transport')
# Pure symbolic identity returning from CUBIC to the unsquared Z/K relation.
x,z=var(2,0),var(2,1);one=const(2,1)
cubic=add(sub(add(power(x,3,2),scale(power(x,2,2),4)),scale(mul(z,x),5)),power(z,2,2))
fm=add(power(z,2,2),mul(add(x,scale(one,4)),sub(add(power(x,2,2),scale(x,4)),scale(z,4))))
ko=sub(add(power(x,2,2),scale(x,4)),z)
ck('full unsquared reconstruction Z^2-1=K0(f-1)',sub(sub(mul(cubic,power(add(x,scale(one,4)),2,2)),power(z,3,2)),mul(fm,ko))=={})
# P5 cannot be identically zero in r at ANY admissible rational (u,y).
e=rd(ROOT/'certificates/endpoints.json');AA=unpack(e['A5'],2);JJ=unpack(e['J'],2);FF=unpack(e['F'],2)
A3={m+(0,):v for m,v in AA.items()};J3={m+(0,):v for m,v in JJ.items()};F3={m+(0,):v for m,v in FF.items()}
lc={m[:2]+(0,):v for m,v in P5.items() if m[2]==5};cc={m[:2]+(0,):v for m,v in P5.items() if m[2]==0}
ck('quintic leading coefficient factorization',lc==scale(product(power(u,4),power(um,2),power(y,4),ym,A3),144))
ck('quintic constant coefficient factorization',cc==scale(product(power(um,4),power(ym,3),J3,F3),-9))
for name,other in [('J',JJ),('F',FF)]:
 ee=e['resultants'][name];target=unpack(ee['resultant'],1)
 ck('endpoint Sylvester uniform degree bound '+name,degree(AA,0)==3 and degree(other,0)==2 and 3*degree(other,1)+2*degree(AA,1)<=12)
 for yy in range(-6,7):
  lhs=det_int(sylvester(coeff_specialize(AA,0,[0,yy]),coeff_specialize(other,0,[0,yy])))
  ck('full endpoint resultant '+name+' at y='+str(yy),lhs==evaluate(target,[yy]))
 prime=ee['prime'];vals=[eval_mod(target,[i],prime) for i in range(prime)]
 ck('endpoint rational-root obstruction '+name,all(prime%d for d in range(2,isqrt(prime)+1)) and target[(degree(target,0),)]%prime==ee['lc_mod_prime'] and ee['lc_mod_prime']!=0 and vals==ee['values'] and 0 not in vals)
say('PASS entire rational zero-polynomial fiber excluded, not by a bounded search')
# Complete half-slice resultant, then an unbounded 269-adic cylinder.
h=rd(ROOT/'certificates/half_terminal.json');ff,gg=unpack(h['f'],2),unpack(h['g'],2)
for name,source,expected in [('f',P5,ff),('g',GG[4],gg)]:
 unit=h[name+'_unit'];dy=degree(source,1);tmp={}
 for (uu,yy,rr),co in source.items():
  key=(rr,uu);tmp[key]=tmp.get(key,0)+co*2**(dy-yy)
 tmp={m:co for m,co in tmp.items() if co};content=reduce(gcd,(abs(co) for co in tmp.values()))
 ck('exact half specialization '+name,unit['two_exponent']==dy and content==unit['integer_content'] and divscalar(tmp,content)==expected)
ck('fixed half resultant degree bound 220',degree(ff,0)==5 and degree(gg,0)==11 and 11*degree(ff,1)+5*degree(gg,1)==220 and h['degree_bound_u']==220)
points=h['points'];ck('degree-complete 221-point identity grid',len(points)==len(set(points))==221)
res=unpack(h['resultant'],1);fact=const(1,int(h['scalar']))
for rec in h['factors']:fact=mul(fact,power(unpack(rec['terms'],1),rec['exponent'],1))
ck('full integer factorization stored without omissions',fact==res and degree(res,0)==208)
for i,uu in enumerate(points):
 lhs=det_int(sylvester(coeff_specialize(ff,0,[0,uu]),coeff_specialize(gg,0,[0,uu])))
 ck('full 16x16 half determinant u='+str(uu),lhs==evaluate(res,[uu]))
 if i%50==0:say('half full identity '+str(i+1)+'/221')
for rec in h['factors']:
 pp=unpack(rec['terms'],1);de=degree(pp,0)
 if de==1:
  ck('only allowed excluded linear gates',pp in [{(1,):1},{(1,):1,(0,):-1}]);continue
 prime=rec['prime'];vals=[eval_mod(pp,[i],prime) for i in range(prime)]
 ck('half all rational roots excluded degree '+str(de),all(prime%d for d in range(2,isqrt(prime)+1)) and pp[(de,)]%prime==rec['lc_mod_prime']!=0 and vals==rec['values'] and 0 not in vals)
 vals269=[eval_mod(pp,[i],269) for i in range(269)]
 ck('entire 269 residue obstruction degree '+str(de),pp[(de,)]%269!=0 and vals269==rec['values_mod269'] and 0 not in vals269)
ck('269 is prime',all(269%d for d in range(2,isqrt(269)+1)))
ck('269 units and y residue',h['cylinder_prime']==269 and h['cylinder_y_residue']==135 and 2*135%269==1 and int(h['scalar'])%269 and all(h[n+'_unit']['integer_content']%269 for n in ['f','g']))
say('PASS entire rational y=1/2 plane; PASS full specified 269-adic cylinder')
proj=rd(ROOT/'certificates/projection.json');n5=sum(abs(c) for c in P5.values());n4=sum(abs(c) for c in GG[4].values());hh=factorial(16)*n5**11*n4**5
ck('nonzero general eliminant degree bounds',11*degree(P5,0)+5*degree(GG[4],0)==proj['degree_u_bound']==220 and 11*degree(P5,1)+5*degree(GG[4],1)==proj['degree_y_bound']==158)
ck('general eliminant height bound',proj['P5_l1']==n5 and proj['G4_l1']==n4 and proj['l1_bound_strict_power2']==hh.bit_length())
ck('finite complex zero-coefficient base bound',3*(degree(unpack(e['resultants']['J']['resultant'],1),0)+degree(unpack(e['resultants']['F']['resultant'],1),0))==proj['complex_zero_coefficient_base_bound']==66)
ck('dimension not finiteness',proj['normalized_complex_dimension_upper_bound']==1 and proj['global_finiteness_proved'] is False)
print(json.dumps({'status':'PASS','checks':len(checks),'seconds':round(time.monotonic()-t0,3),'exact_half_determinants':221,'exact_endpoint_determinants':26,'all_new_low_residuals':5,'global_finiteness_proved':False,'full_REG4_closed':False,'complete_i3_closed':False,'historical_original_net_gain':'0 / not audited','checked':checks},ensure_ascii=False,indent=2),flush=True)
