"""New exact arithmetic. Standard library; no historical research code imports."""
from __future__ import annotations
import sys,math,hashlib,struct,argparse
from collections import Counter
from functools import lru_cache
from pathlib import Path
sys.dont_write_bytecode=True
from intake import ROOT,PARENT_SHA,load,parent_member,canon,sha,need
@lru_cache(None)
def orbit(m):
 d=y=1;out=[]
 while True:
  out.append((d,y));d,y=(18817*d+32592*y+9408)%m,(10864*d+18817*y+5432)%m
  if (d,y)==(1,1):return out
  need(len(out)<1000000,'orbit guard')
def state_hash(o):
 h=hashlib.sha256()
 for d,y in o:h.update(struct.pack('>QQ',d,y))
 return h.hexdigest()
def mul(a,b,m):return ((a[0]*b[0]+3*a[1]*b[1])%m,(a[0]*b[1]+a[1]*b[0])%m)
def source(q,m):
 z=(1,0);g=(18817%(2*m),10864%(2*m));k=q
 while k:
  if k&1:z=mul(z,g,2*m)
  g=mul(g,g,2*m);k//=2
 u,x=mul((2,1),z,2*m)
 return ((3*x-1)//2%m,u//2%m)
@lru_cache(None)
def powers(m):
 x=1;out=[]
 while True:
  out.append(x);x=x*2%m
  if x==1:return out
  need(len(out)<m,'power guard')
def data(a,d,y,H,h,m):
 v=a*y%m;Q=(d+v)%m;P=(Q+h*v)%m;n=(2*P*Q*H+2)%m
 return dict(H=H,h=h,P=P,Q=Q,v=v,E=(4*v*H*H-P*Q*Q+1)%m,F=(4*d*v*H*H-4*v*Q*Q*H-Q**4+d)%m,N=(4*v*H**3+H+Q)%m,n=n,z=(2*d*H-Q*Q)%m)
def square(a,d,y,B,m):
 v=a*y
 return (v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*B*y)%m
def crt(a,m,b,n):
 g=math.gcd(m,n);need((a-b)%g==0,'CRT compatibility')
 return (a+m*((b-a)//g*pow(m//g,-1,n//g)%(n//g)))%math.lcm(m,n)
@lru_cache(None)
def roots41(a):
 out=[]
 for H in range(41):
  Q=(1+a)%41;h=(4*H+Q)%41;r=data(a,1,1,H,h,41)
  if r['E']==0:out.append(r)
 return out
@lru_cache(None)
def tag41(a,c,s):
 allowed={c*pow(2,e,41)%41 for e in range(20) if e%10==s%10}
 return any(r['n'] in allowed for r in roots41(a))
class Gate:
 def __init__(self,p):
  self.p=p;self.n11={a:set() for a in range(11)}
  for row in p['fn11']['rows']:
   for r in row['roots']:
    for c in (1,3):
     for s in range(30):
      if r['n']==c*pow(2,s,11)%11:self.n11[row['a']].add((c,s))
 @lru_cache(None)
 def masks743(self,k):
  out=[]
  for a41 in range(41):
   mask=0
   for a11 in range(11):
    if any((c,s) in self.n11[a11] and tag41(a41,c,s) for c,s in self.p['labels'][k]):mask|=1<<a11
   out.append(mask)
  return out
 def factor743(self,k):
  row=self.p['currmap'][k]
  return 7*sum(m.bit_count() for m in self.masks743(k)) if row['not_divisible7'] else sum(m.bit_count() for m in row['masks_by_u_a41'][0])
 def member(self,A):
  if not parent_member(A,self.p):return False
  if A%743==0:
   if A%7==0:
    if (A//7)%7:return False
   elif not(self.masks743(A%10416)[A%41]>>(A%11)&1):return False
  if A%769==0 and A%16 not in(0,14):return False
  if A%17==0 and A%3==0 and A%81!=0:return False
  return True

def sources():
 small={str(m):orbit(m) for m in (11,17,41,743,769)}
 big=orbit(1104098)
 return dict(initial=[1,1],affine=[18817,32592,9408,10864,18817,5432],determinant=1,
 small_states=small,periods={**{m:len(o) for m,o in small.items()},'1104098':len(big)},big_state_sha256=state_hash(big),big_hash_encoding='concatenated big endian uint64 d,y',
 unique_d1={str(m):[j for j,(d,y) in enumerate(orbit(m)) if d==1] for m in (17,743,769)},powers={str(m):powers(m) for m in (41,743)},prime_checks={str(m):[k for k in range(2,math.isqrt(m)+1) if m%k==0] for m in (17,41,743,769)})
def quotient():
 A=1486;m=743;oo=orbit(A*m);T=math.lcm(len(oo),7420);lookup={x:e for e,x in enumerate(powers(m))};ct=Counter();rs=[]
 squares={x:[] for x in range(m)}
 for z in range(m):squares[z*z%m].append(z)
 for q in range(1484,T,7420):
  D,Y=oo[q%len(oo)];need((D-1)%A==0,'actual integer division');B=3*((D-1)//A)%m;d,y=D%m,Y%m;S=square(A,d,y,B,m)
  roots=[]
  for z in squares[S]:
   H=(z+(d+A*y)**2)*pow(2*d,-1,m)%m;h=(4*H+d+A*y)*pow(d,-1,m)%m;r=data(A,d,y,H,h,m)
   need(r['E']==0 and r['z']==z and r['F']==0,'original recovery')
   ss=crt(lookup[r['n']],371,9,30) if r['n'] in lookup else None
   roots.append(dict(**r,s_mod11130=ss))
  ct['entry_rows']+=1;ct['zero_square' if S==0 else 'unit_square' if roots else 'nonsquare']+=1
  ct['kept_rows']+=any(r['s_mod11130'] is not None for r in roots);ct['kept_roots']+=sum(r['s_mod11130'] is not None for r in roots)
  rs.append(dict(q=q,r=(q-1484)//7420,D=D,Y=Y,B=B,S=S,roots=roots))
 return dict(A=A,divisor=A,source_modulus=A*m,source_period=len(oo),entry_modulus=7420,entry_residue=1484,joint_period=T,same_c=1,parent_s_mod30=9,
 B_formula=[218,347],S_formula=[223,347],counts=dict(ct),rows=rs,kept_q=[r['q'] for r in rs if any(t['s_mod11130'] is not None for t in r['roots'])],zero_q=[r['q'] for r in rs if r['S']==0])
def closure():
 roots=roots41(10);allowed=sorted({pow(2,s,41) for s in range(60) if s%30==9})
 need(roots and all(r['n'] not in allowed for r in roots),'uniform A1486 contradiction')
 return dict(A=1486,A_mod41=10,source_prime=743,source_period=371,forced_q_divisor=7,forced_source41=[1,1],B_mod41=0,S_mod41=33,actual_z_roots=[19,22],roots=roots,allowed_n41=allowed,
 polynomial_F_mod41=[38,39,40],uniform_condition=dict(A_multiple=743,A_mod41=10,c=1,s_mod10=9),parent11=dict(d=0,y=2,H=5,h=9,P=9,Q=2,n=6),scope='all positive Pell q and all original positive prime-power exponents in the adopted core; no finite bottom')
def q0gate():
 return dict(prime=41,source=[1,1],trials=41*41,roots=[dict(a=a,roots=roots41(a)) for a in range(41)],
 allowed_A41=[dict(c=c,s_mod10=s,allowed=[a for a in range(41) if tag41(a,c,s)]) for c in (1,3) for s in range(10)],
 nonunit_policy='d=1. Never divide Q; use original n for Q=0 or P=0. For A=0 the actual B/S is not freely chosen: this gate is only a necessary E/n projection.')
def more_sources():
 tri=[[-a*(a+2)//8%4,a] for a in range(0,16,2)]
 return dict(source769=dict(period=24,d1=[0],implies_q_multiple=24,allowed_even_A_mod16=[0,14]),TRI4_table_q_A=tri,
 source17=dict(period=9,d1=[0],implies_q_multiple=9,FULL3_consequence='3 does not divide A, or 81 divides A'),
 closed_A1538=dict(A=1538,factors=[[2,1],[769,1]],TRI4=3,required_q_mod4=0),closed_A1836=dict(A=1836,factors=[[2,2],[3,3],[17,1]],FULL3_v3q=1,source_v3q_at_least=2),
 fixed_A_closed=[1486,1538,1836],author_dependencies=['TRI4','FULL3','TRUE7: if 7|A then 7 does not divide B'])
def projection(p,g):
 weights=Counter()
 for row in p['rows']:
  k,z,r5,w=row[:4];gm,hm=row[-2:];weights[k,z]+=w*(190*gm.bit_count()+hm.bit_count())
 rows=[];tot=[0,0,0,0]
 for (k,z),w in sorted(weights.items()):
  old=p['currmap'][k]['shared_factor'];new=g.factor743(k);f769=769 if k%16 in(0,14) else 768;f17=51 if k%3 else 49 if z==0 else 48
  vals=[w*old,w*(742*old+new),w*(742*old+new)*f769,w*(742*old+new)*f769*f17]
  tot=[x+y for x,y in zip(tot,vals)];rows.append([k,z,w,old,new,f769,f17])
 need(tot[0]==p['current']['after_shared_FN11_FN41'],'direct parent count')
 M=p['current']['M6'];periods=[M,M*743,M*743*769,M*743*769*51]
 minimum=next(A for A in range(2,20000,2) if g.member(A))
 masks=[dict(k=k,masks41_to11=g.masks743(k)) for k,row in sorted(p['currmap'].items()) if row['not_divisible7']]
 return dict(columns=['k_mod10416','z_mod27','weight','parent_factor','743_zero_factor','769_factor','17_and_81_factor'],rows=rows,periods=periods,counts=tot,
 stage_multipliers=[743,769,51],stage_deleted=[743*tot[0]-tot[1],769*tot[1]-tot[2],51*tot[2]-tot[3]],lifted_parent=tot[0]*743*769*51,net_deleted=tot[0]*743*769*51-tot[3],groups=len(rows),source743_masks=masks,
 minimum=minimum,parent_below_minimum=[A for A in range(2,minimum,2) if parent_member(A,p)],necessary_projection_only=True,not_actual_NC3_count=True,joint_period_enumerated=False,
 relaxation='Only frozen coarse labels shared with parent FN11 and source41. Historical P/Q/full-root gates stay as Boolean parent projection, not jointly re-solved. Additional qmod53 and other root CRT links are not consumed.')
def boundary():
 A=1486;q=53424;step=5513060;M=3*7*11*31*743;s=7899
 D,Y=source(q,A*M);need((D-1)%A==0,'actual boundary quotient');B=3*((D-1)//A)%M;d,y=D%M,Y%M
 Hs={3:0,7:3,11:5,31:1,743:278};hs={3:2,7:1,11:9,31:3,743:(4*278+1)%743};H=h=0;mod=1
 for p in Hs:H=crt(H,mod,Hs[p],p);h=crt(h,mod,hs[p],p);mod*=p
 r=data(A,d,y,H,h,M);S=square(A,d,y,B,M)
 need((d*h-4*H-r['Q'])%M==0 and r['E']==0 and r['F']==0 and S==r['z']**2%M and r['n']==pow(2,s,M),'same original finite congruences')
 need(source(step,A*M)==(1,1),'family period returns')
 return dict(A=A,q_offset=q,q_step=step,parameter_nonnegative=True,M=M,source_modulus=A*M,source_period_multiple=step,c=1,s_mod11130=s,H_residues=Hs,h_residues=hs,D=D,Y=Y,local=dict(d=d,y=y,B=B,S=S,**r),
 status='Entire family already rejected by A1486 mod41. Not an open family or an NC3 candidate.',missing=['exact integer square','positive original H,h','P and Q complete positive powers of different original odd primes','exact integer n=2^s','original j and noCommon'])
def nextentry(p,g):
 A=3866;tags=[list(t) for t in p['labels'][A%10416] if tuple(t) in g.n11[A%11]]
 return dict(A=A,parent_member=parent_member(A,p),new_member=g.member(A),actual_B='3(d-1)/3866',coarse_c_s_mod30=tags,TRI4_q_mod4=-A*(A+2)//8%4,
 status='Lowest surviving necessary projection only. Full source quotient, shared root refinements and prime bases for A3866 have not been recovered.',next_check='Use modulus 3866*1933 with exact integer quotient after checking 3866 divides d-1. Treat this as a new test, not a proven row parametrization.')
def allcerts(p):
 g=Gate(p)
 return {'01_source_cycles.json':sources(),'02_true743_quotient.json':quotient(),'03_A1486_closure.json':closure(),'04_same_source41_gate.json':q0gate(),'05_source769_source17.json':more_sources(),'06_projection_delta.json':projection(p,g),'07_finite_boundary.json':boundary(),'08_next_entry.json':nextentry(p,g),'09_source_adoption.json':dict(parent_sha256=PARENT_SHA,parent_manifest_members=p['manifest_members'],R_sha256=p['R_sha'],overview_sha256=sha((ROOT/'inputs/OVERVIEW-2026-09-22.md.txt').read_bytes()),historical_research_code_executed=False,repository_actions='none')}
def main():
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,default=ROOT/'certificates');arg=ap.parse_args();arg.out.mkdir(parents=True,exist_ok=True)
 for name,obj in allcerts(load()).items():
  b=canon(obj);(arg.out/name).write_bytes(b);print(name,sha(b),len(b))
 print('GENERATE PASS: 9 new certificates')
if __name__=='__main__':main()
