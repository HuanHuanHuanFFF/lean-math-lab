"""New certificates: exact affine source, integer quotients, F/N and CRT envelopes."""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import argparse,math,json
from collections import Counter
from functools import lru_cache
from pathlib import Path
from intake import ROOT,PARENT_SHA,canon,sha,need,load_parent,parent_member

@lru_cache(None)
def orbit(m):
 d=y=1;out=[]
 while True:
  out.append((d,y));d,y=(18817*d+32592*y+9408)%m,(10864*d+18817*y+5432)%m
  if (d,y)==(1,1):return out
  need(len(out)<2000000,'source cycle safety limit')
def exact(q):
 d=y=1
 for _ in range(q):d,y=18817*d+32592*y+9408,10864*d+18817*y+5432
 return d,y
def cycle(a,m):
 need(math.gcd(a,m)==1,'power cycle must be a unit');x=1;out=[]
 while True:
  out.append(x);x=x*a%m
  if x==1:return out
  need(len(out)<=m,'power cycle safety limit')
def core(A,d,y,H,m):
 v=A*y%m;Q=(d+v)%m;h=(4*H+Q)*pow(d,-1,m)%m;P=(Q+h*v)%m
 F=(4*d*v*H*H-4*v*Q*Q*H-Q**4+d)%m
 E=(4*v*H*H-P*Q*Q+1)%m
 N=(4*v*H**3+H+Q)%m;n=(2*P*Q*H+2)%m;z=(2*d*H-Q*Q)%m
 return dict(H=H,v=v,Q=Q,h=h,P=P,F=F,E=E,N=N,n=n,z=z)
def square(A,d,y,B,m=None):
 v=A*y;S=v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*B*y
 return S if m is None else S%m
def crt(a,m,b,n):
 g=math.gcd(m,n);need((b-a)%g==0,'incompatible CRT')
 return (a+m*((b-a)//g*pow(m//g,-1,n//g)%(n//g)))%math.lcm(m,n)
def f(a):return a**4+5*a**3+10*a*a+10*a+5
@lru_cache(None)
def roots41(a,q):
 d,y=orbit(41)[q];return [r for H in range(41) if (r:=core(a,d,y,H,41))['F']==0]

def source_cert():
 ms=[3,5,7,31,19,41,49,343,2058,9,109,1090]
 return dict(schema='A882-source-cycles-v1',initial=[1,1],affine=[18817,32592,9408,10864,18817,5432],determinant=1,periods={str(m):len(orbit(m)) for m in ms},states={str(m):orbit(m) for m in ms},positive_exponent_cycles={str(m):cycle(2,m) for m in [3,5,7,19,31,41]},zero_exponent_policy='cycle index 0 represents positive multiples of the order, not an original exponent 0')

def quotient_cert():
 A=882;D0=294;m=7;oo=orbit(D0*m);T=math.lcm(len(oo),84);rows=[];ct=Counter()
 for q in range(7,T,84):
  D,Y=oo[q%len(oo)];need((D-1)%D0==0,'actual B integrality');B=(D-1)//D0%m;d,y=D%m,Y%m;S=square(A,d,y,B,m)
  zs=[z for z in range(m) if z*z%m==S];ts=[]
  ct['entry_rows']+=1;ct['zero_square' if S==0 else ('unit_square' if zs else 'nonsquare')]+=1
  for z in zs:
   H=(z+(d+A*y)**2)*pow(2*d,-1,m)%m;r=core(A,d,y,H,m);need(r['F']==0 and r['z']==z,'actual root recovery')
   ee=[e for e in range(3) if pow(2,e,m)==r['n']]
   ss=[crt(e,3,0,5) for e in ee]
   ts.append(dict(**r,s_mod15=ss,kept=bool(ss)))
  ct['kept_rows']+=any(t['kept'] for t in ts);ct['kept_roots']+=sum(t['kept'] for t in ts)
  rows.append(dict(q=q,D=D,Y=Y,B=B,S=S,roots=ts))
 return dict(schema='A882-actual7-quotient-v1',A=A,actual_divisor=D0,source_modulus=D0*m,source_period=len(oo),joint_period=T,parent_q_mod84=7,counts=dict(ct),rows=rows,kept_q=[r['q'] for r in rows if any(t['kept'] for t in r['roots'])],formula_on_q_7_plus84r=dict(B_mod7='6+2r',S_mod7='4+2r'),zero_q=[r['q'] for r in rows if r['S']==0],same_c=1,parent_s_mod5=0,nonunit_policy='A,v are zero; d,y,P,Q are 1 in F7. Never invert A or v; no nonzero nonunit square exists in this field. Zero square is tested against the original n, not discarded by type.')

def closure_cert():
 sq=sorted({z*z%41 for z in range(41)})
 table=[dict(a=a,S=f(a)%41,roots=[z for z in range(41) if z*z%41==f(a)%41]) for a in range(1,41)]
 K=[r['a'] for r in table if not r['roots']]
 return dict(schema='A882-and-PERIOD7-41-closure-v1',A=882,A_mod41=882%41,f_A_mod41=f(882)%41,quadratic_residues_mod41=sq,nonresidue_power=pow(f(882)%41,20,41),source49_d1=[q for q,(d,y) in enumerate(orbit(49)) if d==1],source41_period=len(orbit(41)),source41_q0=[1,1],actual_B_mod41=0,closed=True,closed_scope='All adopted core inputs with A=882, all positive Pell q and all original prime-power exponents. No bounded q scan.',uniform_scope='49 divides A, A mod41 in forbidden_nonzero_A_mod41',forbidden_nonzero_A_mod41=K,zero_square_A_mod41=[r['a'] for r in table if r['S']==0],uniform_table=table,noninvertible_A_mod41=0,noninvertible_policy='When 41 divides A, AB=3(d-1) does not determine Bmod41; this square-only uniform gate does not reject it.',integer_square_return='v Z^2-(Q^5-d^2)=d F; v S-(Q^5-d^2)=d^2(vBy-d^3+1); vBy=d^3-1 over the original integers, v>0.')

def lift_cert():
 table=[]
 for c in (1,3):
  for s in range(3):
   n=c*pow(2,s,7)%7;B=((n-3)**2-5)%7
   table.append(dict(c=c,s_mod3=s,n_mod7=n,B_mod7=B))
 diagnostics=[]
 for q in [1,2,6,7,14,49,98,343]:
  d,y=exact(q);r=0;t=q
  while t%7==0:r+=1;t//=7
  M=7**(r+2);need((d-1)%M==(60816*q)%M,'valuation unit identity diagnostic')
  diagnostics.append(dict(q=q,v7_q=r,modulus=M,d_minus1_modulus=(d-1)%M,unit=((d-1)//7**(r+1))%7,q_unit=t%7))
 return dict(schema='TRUE7-all-exponents-v1',gamma=[18817,10864],gamma_minus1_div7=[2688,1552],linear_functional='Lambda(a+b*sqrt(3))=3*(a+2b)/2',Lambda_gamma_minus1=60816,unit_60816_over7_mod7=1,source49_quotient=[((d-1)//7)%7 for d,y in orbit(49)],all_exponent_statement='If r=v7(q), (d-1)/7^(r+1) = q/7^r mod7; hence v7(d-1)=1+v7(q).',binomial_identity='k*binom(q,k)=q*binom(q-1,k-1)',tail_valuation='For k>=2, r-v7(k)+k >= r+2. Gamma-1 has both coordinates divisible by7; the congruence holds in Z_(7)[sqrt(3)].',conditional='7 divides A; A=7^e*u, e>=1, 7 does not divide u',necessary_valuation='v7(B)=0 and v7(q)=e-1',necessary_unit='B=3*u^(-1)*(q/7^(e-1)) mod7',B_by_shared_c_s=table,shared_source_formula='q = (A/7)*3^(-1)*((c*2^s-3)^2-5) mod7',scope_notes='All exponents covered by the paper binomial proof. Diagnostics are not the coverage proof. No bound on e,q or n is inferred.',diagnostics=diagnostics)

def local_cert():
 rows=[dict(a=a,q_mod7=q,d=orbit(41)[q][0],y=orbit(41)[q][1],roots=roots41(a,q)) for a in range(41) for q in range(7)]
 n4=sorted({pow(2,5*t,41) for t in range(4)})
 small=[dict(a=a,roots=[r for r in roots41(a,0) if r['n'] in n4]) for a in range(41)]
 return dict(schema='original-FN41-roots-v1',modulus=41,source_period=7,order2=20,all_A_q_H_trials=41*7*41,rows=rows,extra_c1_s5=dict(allowed_n=n4,rows=small,allowed_A_mod41=[r['a'] for r in small if r['roots']],necessary='49|A, c=1, 5|s => 41|A'),Q_nonunit_policy='Restore n=2PQH+2; never divide by Q. Any Q=0 or P=0 root remains eligible if the original n matches. No prime-power base is assigned by this gate.')

class Gate:
 def __init__(self,p):self.p=p
 @lru_cache(None)
 def allowed(self,k,u,a):
  for c,s in self.p['labels'][k]:
   b=((c*pow(2,s,7)-3)**2-5)%7;q=u*pow(3,-1,7)*b%7
   targets={c*pow(2,e,41)%41 for e in range(20) if (e-s)%10==0}
   if any(r['n'] in targets for r in roots41(a,q)):return True
  return False
 def member(self,A):
  return parent_member(A,self.p) and (A%7!=0 or self.allowed(A%10416,(A//7)%7,A%41))

def projection_cert(p,g):
 K={r for r in range(1,41) if pow(f(r)%41,20,41)==40};need(len(K)==20,'complete forbidden list')
 byk={};old=affected=full=0
 for row in p['rows']:
  k,zz,r5,w=row[:4];gm,hm=row[-2:];cc=w*(190*gm.bit_count()+hm.bit_count());old+=cc
  if k%7:t=287
  else:
   affected+=cc
   if k not in byk:byk[k]=[sum(1<<a for a in range(41) if g.allowed(k,u,a)) for u in range(7)]
   masks=byk[k];need(all(not ((masks[0]>>a)&1) for a in K),'uniform square obstruction contained in FN41')
   t=sum(m.bit_count() for m in masks)
  full+=cc*t
 need(old==p['count'],'exact direct parent baseline')
 lift=287*old;basic=lift-20*affected
 minimum=next(A for A in range(2,20000,2) if g.member(A))
 return dict(schema='TRUE7-FN41-compressed-projection-v1',M0=p['M0'],parent_M4=p['M4'],new_period=p['M4']*287,period_multiplier=287,added_factor_explanation='one extra factor7 lifts A mod7 to A mod49; 41 is coprime to M4',parent_count=old,parent_A_divisible7_count=affected,lifted_parent_count=lift,after_uniform_square_gate=basic,final_count=full,stage_deleted=[lift-basic,basic-full],net_deleted=lift-full,old_parent_rows_sha256=sha(canon(p['rows'])),mask_rows=[dict(k=k,coarse_parent_c_s_mod30=p['labels'][k],allowed_A41_masks_by_Aover7_mod7=ms,lift_factor=sum(m.bit_count() for m in ms)) for k,ms in sorted(byk.items())],minimum_positive_projection=minimum,parent_below_minimum=[A for A in range(2,minimum,2) if parent_member(A,p)],remaining_examples=[A for A in range(minimum,8000,2) if g.member(A)][:20],joint_period_enumerated=False,not_actual_NC3_count=True,coarse_label_boundary='The new gate uses the frozen necessary parent (c,s mod30) envelope per k. It is not a re-solved joint parent P/Q root system. Surviving new tags may not extend to the full parent. Every actual parent input has its own tag in this envelope, so every rejection is valid.',count_rule='For each existing parent class with 7 not dividing A:287 lifts. For 7|A: sum over its 7 A/7 mod7 lifts and 41 A mod41 residues. New tests do not change the parent 19/191 fiber masks.',all_historical_consumers_replayed=False)

def boundary_cert():
 A=882;div=294;q=763;step=2940;M=3*5*7*19*31
 d,y=exact(q);need((d-1)%div==0,'weak family actual integer B');B=(d-1)//div
 hrs={3:1,5:3,7:0,19:13,31:22};H=0;mm=1
 for m,h in hrs.items():H=crt(H,mm,h,m);mm*=m
 r=core(A,d,y,H,M);S=square(A,d,y,B,M)
 need(r['F']==0 and r['E']==0 and r['z']**2%M==S and r['n']==pow(2,40,M),'same-input finite model')
 need(step%len(orbit(div*M))==0 and step%84==0,'complete family quotient/source periodicity')
 full=square(A,d,y,B);lo=math.isqrt(full);need(lo*lo<full<(lo+1)**2,'exact sample nonsquare')
 return dict(schema='A882-already-deleted-exact-quotient-finite-family-v1',A=A,actual_B='(d-1)/294',q_offset=q,q_step=step,k_nonnegative=True,source_modulus=div*M,source_period=len(orbit(div*M)),M=M,same_c=1,s_mod180=40,H_residues=hrs,local=dict(d=d%M,y=y%M,B=B%M,S=S,**r),original_prime_power_status='P,Q residues nonzero at3,5,7,19,31; no prime base is assigned or proved. In particular this is NOT the A532 P=31^a branch.',deleted_by='The entire family has 7|q, so S=26mod41 and is nonsquare there.',missing=['integer square Y^2=S','positive integer H,h obeying the exact original equations','P,Q complete powers of two distinct original odd primes','exact integer n=2^s','original j and noCommon recovery'],sample_hex=dict(q=q,d=hex(d),y=hex(y),B=hex(B),S=hex(full),floor_sqrt=hex(lo),lower_gap=hex(full-lo*lo),upper_gap=hex((lo+1)**2-full)))

def next_cert(p,g):
 A=1090;need(g.member(A),'next minimum belongs to new projection')
 source=orbit(1090);T=math.lcm(4,len(source));qs=[q for q in range(T) if q%4==(-A*(A+2)//8)%4 and (3*(source[q%len(source)][0]-1))%A==0]
 return dict(schema='next-A1090-necessary-only-v1',A=A,factorization=[[2,1],[5,1],[109,1]],actual_B='3(d-1)/1090',frozen_coarse_labels=p['labels'][A%10416],source1090_period=len(source),source1090_d1=[q for q,(d,y) in enumerate(source) if d==1],TRI4_q_mod4=(-A*(A+2)//8)%4,joint_period=T,necessary_q_classes=qs,q_positive=True,same_c=1,coarse_s_mod15=1,source_modulus_for_Bmod109=1090*109,next_falsifiable_check='Restore actual Bmod109 by first checking1090|3(D-1) with D=d mod118810. Preserve current parent root tags; do not assign a P or Q prime base from A882.',status='lowest necessary projection only; exact P,Q,n,j remain unconstructed')

def allcerts(p):
 g=Gate(p)
 return {'01_source_cycles.json':source_cert(),'02_true7_quotient.json':quotient_cert(),'03_A882_PERIOD41.json':closure_cert(),'04_TRUE7_all_exponents.json':lift_cert(),'05_original_FN41.json':local_cert(),'06_projection_delta.json':projection_cert(p,g),'07_finite_boundary.json':boundary_cert(),'08_next_A1090.json':next_cert(p,g),'09_source_adoption.json':dict(schema='adopted-inputs-v1',parent_sha256=PARENT_SHA,parent_manifest_members=p['manifest_members'],parent_count=p['count'],overview_sha256=sha((ROOT/'inputs/OVERVIEW-2026-09-22.md.txt').read_bytes()),R_sha256=p['R_sha256'],historical_mathematics_rerun=False,repository_actions='none',evidence='Conditional author-level historical NC3-to-core adoption; new complete periods, paper proof and exact arithmetic. No external independent review or Lean.')}

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,default=ROOT/'certificates');args=ap.parse_args();args.out.mkdir(parents=True,exist_ok=True)
 p=load_parent();cs=allcerts(p)
 for name,obj in cs.items():
  data=canon(obj);(args.out/name).write_bytes(data);print(name,sha(data),len(data))
 print(json.dumps({k:v for k,v in cs['06_projection_delta.json'].items() if k in ['parent_count','lifted_parent_count','after_uniform_square_gate','final_count','net_deleted','minimum_positive_projection','parent_below_minimum']},sort_keys=True))
 print('GENERATE PASS: 9 new certificates')
if __name__=='__main__':main()
