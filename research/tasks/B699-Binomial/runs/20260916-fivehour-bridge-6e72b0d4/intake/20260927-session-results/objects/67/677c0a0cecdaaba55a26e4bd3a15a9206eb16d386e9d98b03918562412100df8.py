"""New exact certificates; all arithmetic uses the Python standard library."""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import math,json,argparse
from pathlib import Path
from collections import Counter
from functools import lru_cache
from intake import ROOT,PARENT_SHA,load,member,need,canon,sha
@lru_cache(None)
def orbit(m):
 d=y=1;out=[]
 while True:
  out.append((d,y));d,y=(18817*d+32592*y+9408)%m,(10864*d+18817*y+5432)%m
  if (d,y)==(1,1):return out
  need(len(out)<2000000,'source cycle guard')
def exact(q):
 d=y=1
 for _ in range(q):d,y=18817*d+32592*y+9408,10864*d+18817*y+5432
 return d,y
@lru_cache(None)
def powers(m):
 x=1;out=[]
 while True:
  out.append(x);x=x*2%m
  if x==1:return out
  need(len(out)<=m,'power cycle guard')
def data(A,d,y,H,h,m):
 v=A*y%m;Q=(d+v)%m;P=(Q+h*v)%m;n=(2*P*Q*H+2)%m
 return dict(H=H,h=h,v=v,Q=Q,P=P,E=(4*v*H*H-P*Q*Q+1)%m,
 F=(4*d*v*H*H-4*v*Q*Q*H-Q**4+d)%m,N=(4*v*H**3+H+Q)%m,n=n,z=(2*d*H-Q*Q)%m)
def core(A,d,y,H,m):
 need(math.gcd(d,m)==1,'only invert unit d');Q=(d+A*y)%m
 return data(A,d,y,H,(4*H+Q)*pow(d,-1,m)%m,m)
def square(A,d,y,B,m=None):
 v=A*y;S=v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*B*y
 return S if m is None else S%m
def crt(a,m,b,n):
 g=math.gcd(m,n);need((a-b)%g==0,'incompatible CRT')
 return (a+m*((b-a)//g*pow(m//g,-1,n//g)%(n//g)))%math.lcm(m,n)
@lru_cache(None)
def roots11(a,j):
 d,y=orbit(11)[j];Q=(d+a*y)%11;out=[]
 for H in range(11):
  for h in range(11):
   if (d*h-4*H-Q)%11:continue
   r=data(a,d,y,H,h,11)
   if r['E']==0:out.append(r)
 return out
@lru_cache(None)
def tag11(a,c,s):return any(r['n']==c*pow(2,s,11)%11 for j in range(5) for r in roots11(a,j))
class Gate:
 def __init__(self,p):self.p=p
 @lru_cache(None)
 def tag41(self,a,u,c,s):
  B=((c*pow(2,s,7)-3)**2-5)%7;j=u*pow(3,-1,7)*B%7
  targets={c*pow(2,e,41)%41 for e in range(20) if (e-s)%10==0}
  return any(r['n'] in targets for r in self.p['roots41'][a,j])
 @lru_cache(None)
 def mask(self,k,u=None,a41=None):
  tags=[(c,s) for c,s in self.p['labels'][k] if u is None or self.tag41(a41,u,c,s)]
  return sum(1<<a for a in range(11) if any(tag11(a,c,s) for c,s in tags))
 def member(self,A):
  if not member(A,self.p):return False
  mask=self.mask(A%10416,(A//7)%7 if A%7==0 else None,A%41 if A%7==0 else None)
  return bool(mask>>(A%11)&1)
def sources():
 ms=[11,109,1090,118810,1486]
 return dict(initial=[1,1],affine=[18817,32592,9408,10864,18817,5432],determinant=1,
 periods={str(m):len(orbit(m)) for m in ms},states={str(m):orbit(m) for m in ms},
 power_cycles={str(m):powers(m) for m in (11,109)},positive_exponents=True)
def quotient():
 A=1090;m=109;oo=orbit(A*m);T=math.lcm(len(oo),108);rs=[];ct=Counter()
 for q in range(27,T,108):
  D,Y=oo[q%len(oo)];need((D-1)%A==0,'real integer divisor');B=3*((D-1)//A)%m;d,y=D%m,Y%m;S=square(A,d,y,B,m)
  roots=[]
  for z in range(m):
   if z*z%m!=S:continue
   H=(z+(d+A*y)**2)*pow(2*d,-1,m)%m;r=core(A,d,y,H,m);need(r['E']==0 and r['z']==z,'actual square root')
   ee=[e for e,v in enumerate(powers(m)) if v==r['n'] and (e-1)%3==0]
   roots.append(dict(**r,s_mod180=[crt(e,36,1,15) for e in ee]))
  ct['entry_rows']+=1;ct['zero_square' if S==0 else 'unit_square' if roots else 'nonsquare']+=1
  ct['kept_rows']+=any(r['s_mod180'] for r in roots);ct['kept_roots']+=sum(bool(r['s_mod180']) for r in roots)
  rs.append(dict(q=q,r=(q-27)//108,D=D,Y=Y,d=d,y=y,B=B,S=S,roots=roots))
 return dict(A=A,actual_divisor=A,source_modulus=A*m,source_period=len(oo),joint_period=T,same_c=1,parent_s_mod15=1,
 counts=dict(ct),B_formula=[64,38],S_formula=[69,38],rows=rs,
 kept_q=[r['q'] for r in rs if any(t['s_mod180'] for t in r['roots'])],zero_q=[r['q'] for r in rs if r['S']==0])
def closure():
 blocks=[]
 for A,c in [(1090,1),(1458,3)]:
  aa=A%11;table=[dict(q_mod5=j,d=d,y=y,roots=roots11(aa,j)) for j,(d,y) in enumerate(orbit(11))]
  allowed=sorted({c*pow(2,e,11)%11 for e in range(10) if e%5==1})
  need(all(r['n'] not in allowed for x in table for r in x['roots']),'uniform contradiction')
  blocks.append(dict(A=A,A_mod11=aa,c=c,s_mod5=1,allowed_n=allowed,table=table))
 return dict(blocks=blocks,uniform_conditions=[[1,1,1],[6,3,1]],
 scope='Every adopted original core input with A_mod11,c,s_mod5 as listed, for all positive Pell indices and all original prime-power exponents.')
def local():
 return dict(modulus=11,source_period=5,order2=10,H_h_trials=11*5*11*11,
 rows=[dict(a=a,q_mod5=j,d=orbit(11)[j][0],y=orbit(11)[j][1],roots=roots11(a,j)) for a in range(11) for j in range(5)],
 allowed_A_by_c_s10=[dict(c=c,s_mod10=s,A_allowed=[a for a in range(11) if tag11(a,c,s)]) for c in (1,3) for s in range(10)],
 policy='d=0 is handled with hd=4H+Q and E, not division or F alone. Q/P zero never implies n zero; use n=2PQH+2.')
def projection(p,g):
 weights=Counter()
 for row in p['rows']:
  k,zz,r5,w=row[:4];gm,hm=row[-2:];weights[k]+=w*(190*gm.bit_count()+hm.bit_count())
 old=ind=shared=0;rows=[]
 for k,w in sorted(weights.items()):
  mask=g.mask(k)
  if k%7:
   oldfactor=287;indfactor=sharedfactor=287*mask.bit_count()
   row=dict(k=k,weight=w,mask11=mask,not_divisible7=True,old_factor=oldfactor,independent_factor=indfactor,shared_factor=sharedfactor)
  else:
   oldfactor=sum(x.bit_count() for x in p['masks41'][k]);indfactor=oldfactor*mask.bit_count()
   mm=[[g.mask(k,u,a) for a in range(41)] for u in range(7)]
   need(all(not mm[u][a] or (p['masks41'][k][u]>>a&1) for u in range(7) for a in range(41)),'shared tag retains parent gate')
   sharedfactor=sum(m.bit_count() for ms in mm for m in ms)
   row=dict(k=k,weight=w,mask11=mask,not_divisible7=False,old_factor=oldfactor,independent_factor=indfactor,shared_factor=sharedfactor,masks_by_u_a41=mm)
  old+=w*oldfactor;ind+=w*indfactor;shared+=w*sharedfactor;rows.append(row)
 need(old==p['old']['final_count'],'direct parent baseline');minimum=next(A for A in range(2,20000,2) if g.member(A))
 return dict(M5=p['old']['new_period'],M6=11*p['old']['new_period'],period_multiplier=11,parent_count=old,lifted_parent=11*old,
 after_FN11_independent=ind,after_shared_FN11_FN41=shared,deleted=[11*old-ind,ind-shared],net_deleted=11*old-shared,
 groups=len(rows),rows=rows,minimum=minimum,parent_below_minimum=[A for A in range(2,minimum,2) if member(A,p)],
 envelope_boundary='Frozen coarse (c,s mod30) labels only. Parent P/Q/TRUE3/FN19 Boolean gates all retained, but their root witnesses are not jointly re-solved; qmod5 in FN11 is existential over every source state. Exact actual labels always pass, so rejections are necessary. This is not sufficient recovery.',joint_period_enumerated=False,not_actual_NC3_count=True)
def boundary():
 A=1090;q=351;step=11772;M=109*31*7;div=A
 d,y=exact(q);need((d-1)%div==0,'actual family quotient');B=3*((d-1)//div)
 H=crt(crt(75,109,0,31),109*31,0,7);r=core(A,d,y,H,M);S=square(A,d,y,B,M)
 need(r['E']==0 and r['F']==0 and r['z']**2%M==S and r['n']==pow(2,46,M),'finite shared model')
 oo=orbit(div*M);need(step%len(oo)==0,'complete family periodicity')
 full=square(A,d,y,B);lo=math.isqrt(full);need(lo*lo<full<(lo+1)**2,'sample square gap')
 return dict(A=A,q_offset=q,q_step=step,q_parameter_nonnegative=True,M=M,source_modulus=div*M,source_period=len(oo),
 source_states_sha256=sha(canon(oo)),c=1,s_mod180=46,H_residues={'109':75,'31':0,'7':0},local=dict(d=d%M,y=y%M,B=B%M,S=S,**r),
 sample_hex=dict(d=hex(d),y=hex(y),B=hex(B),S=hex(full),floor_sqrt=hex(lo),lower_gap=hex(full-lo*lo),upper_gap=hex((lo+1)**2-full)),
 status='Entire family already rejected by this round mod11; not an open family, NC3 or counterexample.',
 missing=['exact integer square','positive original H,h satisfying all equations','P,Q complete powers of distinct original odd primes','exact integer n=2^s','original j and noCommon recovery'])
def nextentry(p,g):
 A=1486;oo=orbit(A);T=math.lcm(len(oo),4,5);tri=(-A*(A+2)//8)%4
 tags=[(c,s) for c,s in p['labels'][A%10416] if tag11(A%11,c,s)]
 need(tags==[(1,9)],'new same original tag');qs=[q for q in range(T) if q%4==tri and q%5==4 and (oo[q%len(oo)][0]-1)%A==0]
 return dict(A=A,factors=[[2,1],[743,1]],source_A_period=len(oo),source_d1=[q for q,(d,y) in enumerate(oo) if d==1],
 actual_B='3(d-1)/1486',same_c=1,s_mod30=9,TRI4_q_mod4=tri,FN11_q_mod5=4,joint_period=T,necessary_q_classes=qs,q_positive=True,
 local11=dict(d=0,y=2,H=5,h=9,P=9,Q=2,n=6),next_source_modulus=A*743,
 status='Minimum necessary projection only. No P/Q prime base assigned; d=0mod11 cannot be inverted.',member=g.member(A))
def allcerts(p):
 g=Gate(p)
 return {'01_source_cycles.json':sources(),'02_true109_quotient.json':quotient(),'03_A1090_A1458_closure.json':closure(),
 '04_original_FN11.json':local(),'05_projection_delta.json':projection(p,g),'06_finite_boundary.json':boundary(),'07_next_A1486.json':nextentry(p,g),
 '08_source_adoption.json':dict(parent_sha256=PARENT_SHA,parent_manifest_members=p['manifest_members'],R_sha256=p['R_sha'],overview_sha256=sha((ROOT/'inputs/OVERVIEW-2026-09-22.md.txt').read_bytes()),historical_mathematics_executed=False,repository_actions='none')}
def main():
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,default=ROOT/'certificates');a=ap.parse_args();a.out.mkdir(parents=True,exist_ok=True)
 for name,obj in allcerts(load()).items():
  b=canon(obj);(a.out/name).write_bytes(b);print(name,sha(b),len(b))
 print('GENERATE PASS: 8 new certificates')
if __name__=='__main__':main()
