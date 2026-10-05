"""New source-order, same-q and exact projection certificates; standard library."""
from __future__ import annotations
import argparse,hashlib,json,math,sys
from collections import Counter
from functools import lru_cache
from pathlib import Path
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
def canon(x):return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def sha(b):return hashlib.sha256(b).hexdigest()
def need(x,msg):
 if not x:raise ValueError(msg)
def mul(a,b,m=None):
 v=(a[0]*b[0]+3*a[1]*b[1],a[0]*b[1]+a[1]*b[0])
 return v if m is None else (v[0]%m,v[1]%m)
def power(a,e,m=None):
 out=(1,0)
 while e:
  if e&1:out=mul(out,a,m)
  a=mul(a,a,m);e//=2
 return out
def source(q,m=None):
 u,x=power((2,1),8*q+1,None if m is None else 2*m)
 return ((3*x-1)//2,u//2) if m is None else (((3*x-1)//2)%m,(u//2)%m)
def vp(a,p):
 if not a:return None
 e=0
 while a%p==0:e+=1;a//=p
 return e
def isprime(p):return p>=2 and all(p%j for j in range(2,math.isqrt(p)+1))
def primefactors(n):
 out=[];p=2
 while p*p<=n:
  if n%p==0:
   out.append(p)
   while n%p==0:n//=p
  p+=1
 if n>1:out.append(n)
 return out
def order_alpha(p):
 eps=1 if pow(3,(p-1)//2,p)==1 else -1
 n=p-eps
 for ell in primefactors(n):
  while n%ell==0 and power((2,1),n//ell,p)==(1,0):n//=ell
 return n
def lift_record(p):
 need(isprime(p) and p>=5,'prime source')
 r=order_alpha(p);k=1
 while power((2,1),r,p**(k+1))==(1,0):k+=1
 T=r//math.gcd(r,8);has_second=vp(r,2)==2
 second=(-pow(4,-1,T))%T if has_second else None
 # Exact finite certificate for all exponents comes from the paper lemma,
 # not from enumerating these four instances.
 return dict(p=p,r=r,T=T,kappa=k,legendre3=1 if pow(3,(p-1)//2,p)==1 else -1,
 legendre5=0 if p==5 else 1 if pow(5,(p-1)//2,p)==1 else -1,
 alpha_to_r_mod_p_kappa_plus_1=power((2,1),r,p**(k+1)),
 proper_order_witnesses=[[ell,list(power((2,1),r//ell,p))] for ell in primefactors(r)],
 second_branch=has_second,base_roots=[0,second] if has_second else [0],
 sample_orders=[[e,r*p**max(0,e-k)] for e in range(1,5)])

def ranks():
 ps=[p for p in range(5,200) if isprime(p)]+[409,1933]
 rows=[lift_record(p) for p in ps]
 tests=[]
 for p in (5,7,13,103,1933):
  rr=next(r for r in rows if r['p']==p);T=rr['T'];k=rr['kappa']
  qs={1,T,2*T,T*p,T*p*p}
  if rr['second_branch']:
   for e in (1,2,3):
    t=T*p**max(0,e-k);qs.add((-pow(4,-1,t))%t or t)
  for q in sorted(qs):
   expected= k+vp(q,p) if q%T==0 else k+vp(4*q+1,p) if rr['second_branch'] and (4*q+1)%T==0 else 0
   m=p**(expected+1);d,_=source(q,m)
   actual=vp((d-1)%m,p)
   need(actual==expected,'full-exponent diagnostic')
   tests.append([p,q,expected,d,m])
 return dict(theorem='All p>=5; r=ord_p(2+sqrt3), kappa=v_p(alpha^r-1), T_e=(r/gcd(r,8))*p^max(e-kappa,0). d_q=1 mod p^e iff T_e|q or (v2(r)=2 and T_e|(4q+1)).',
 rows=rows,finite_diagnostics_only=tests,proof_scope='Universal proof is PROOFS P2-P3, not a extrapolation of this prime table.',
 exceptional103=next(r for r in rows if r['p']==103))

@lru_cache(None)
def roots(p,a,j):
 d,y=source(j,p);v=a*y%p;Q=(d+v)%p;out=[]
 for h in range(p):
  H=(h*d-Q)*pow(4,-1,p)%p;P=(Q+h*v)%p
  if (4*v*H*H-P*Q*Q+1)%p==0:
   out.append([H,h,P,Q,(2*P*Q*H+2)%p])
 return sorted(out)
@lru_cache(None)
def phase_mask(p,a,c,s):
 allowed={c*pow(2,e,p)%p for e in range(10 if p==11 else 18) if (e-s)%math.gcd(30,10 if p==11 else 18)==0}
 return sum(1<<j for j in range(5) if any(r[-1] in allowed for r in roots(p,a,j)))
def phase_tables():
 tables={str(p):dict(states=[source(j,p) for j in range(5)],rows=[[a,j,roots(p,a,j)] for a in range(p) for j in range(5)],
 order2=10 if p==11 else 18) for p in (11,19)}
 joint=[]
 for a in range(11):
  for b in range(19):
   joint.append([a,b,[phase_mask(11,a,c,s)&phase_mask(19,b,c,s) for c in (1,3) for s in range(30)]])
 A=3866
 cl=dict(A=A,c=1,s_mod30=3,A_mod11=A%11,A_mod19=A%19,
 FN11_q_classes=[j for j in range(5) if phase_mask(11,A%11,1,3)>>j&1],
 FN19_q_classes=[j for j in range(5) if phase_mask(19,A%19,1,3)>>j&1],
 roots11=[[j,roots(11,A%11,j)] for j in range(5)],roots19=[[j,roots(19,A%19,j)] for j in range(5)],
 global_history_novelty='Not claimed: Overview 3E already records c=1 => 6|s. This is a new independent original-core proof / projection consumer, not a full historical net deletion.')
 need(cl['FN11_q_classes']==[0] and cl['FN19_q_classes']==[2],'A3866 closure')
 return dict(tables=tables,joint_columns=['Amod11','Amod19','phase_mask_for_c1_s0to29_then_c3_s0to29'],joint_rows=joint,A3866=cl,
 nonunit_policy='Recover H from h using 4^-1; never divide d or Q. E and original n used. Zero P/Q and zero square never rejected solely as zero.')

class Projection:
 def __init__(self):
  self.p=json.loads((ROOT/'inputs/parent_snapshot.json').read_bytes())
  self.labels={int(k):v for k,v in self.p['labels'].items()}
  self.cm={r['k']:r for r in self.p['base11_projection']['rows']}
  self.xm={r['k']:r['masks41_to11'] for r in self.p['parent_projection']['source743_masks']}
  self.R=set(self.p['R']);self.bad725=set(self.p['bad725'])
  self.rowmap={(r[0],r[1],r[2]):r for r in self.p['ancestor_fibers']}
 @lru_cache(None)
 def mask(self,k,b,reconcile=False):
  labs=[(c,s) for c,s in self.labels[k] if not reconcile or c!=1 or s%6==0]
  return sum(1<<a for a in range(11) if any(phase_mask(11,a,c,s)&phase_mask(19,b,c,s) for c,s in labs))
 @lru_cache(None)
 def factors(self,k,b,reconcile=False):
  row=self.cm[k];mask=self.mask(k,b,reconcile)
  if row['not_divisible7']:
   f=7*41*(row['mask11']&mask).bit_count();g=7*sum((m&mask).bit_count() for m in self.xm[k])
  else:
   f=sum((m&mask).bit_count() for rr in row['masks_by_u_a41'] for m in rr)
   g=sum((m&mask).bit_count() for m in row['masks_by_u_a41'][0])
  return f,g
 def parent_member(self,A):
  if A%3031056 not in self.R or A%725 in self.bad725:return False
  C5={5,25,125,289,101,169,173,193,293,121,269,1}
  if A%5==4 and ((A+1)%336 not in C5 or A%27 in (9,18)):return False
  r=self.rowmap.get((A%10416,A%27,A%5))
  if not r or not((r[-1] if A%191==0 else r[-2])>>(A%19)&1):return False
  row=self.cm.get(A%10416)
  if not row:return False
  m=row['mask11'] if row['not_divisible7'] else row['masks_by_u_a41'][(A//7)%7][A%41]
  if not(m>>(A%11)&1):return False
  if A%743==0:
   if A%7==0:
    if (A//7)%7:return False
   elif not(self.xm[A%10416][A%41]>>(A%11)&1):return False
  if A%769==0 and A%16 not in(0,14):return False
  if A%17==0 and A%3==0 and A%81!=0:return False
  return True
 def member(self,A,reconcile):
  return self.parent_member(A) and bool(self.mask(A%10416,A%19,reconcile)>>(A%11)&1) and not(A%103==0 and A%10609!=0)
 def certificate(self):
  weights=Counter()
  for rr in self.p['ancestor_fibers']:
   k,z,r5,w=rr[:4];gm,hm=rr[-2:]
   for b in range(19):
    t=190*((gm>>b)&1)+((hm>>b)&1)
    if t:weights[k,z,b]+=w*t
  parentrows={(k,z):(of,og) for k,z,w,of,og,*_ in self.p['parent_projection']['rows']}
  totals=[0,0,0,0];out=[]
  for (k,z,b),w in sorted(weights.items()):
   of,og=parentrows[k,z];f,g=self.factors(k,b,False);rf,rg=self.factors(k,b,True)
   a=769 if k%16 in(0,14) else 768;d=51 if k%3 else 49 if z==0 else 48
   old=w*(742*of+og)*a*d;new=w*(742*f+g)*a*d;rec=w*(742*rf+rg)*a*d
   historical=old if any(c!=1 or s%6==0 for c,s in self.labels[k]) else 0
   need(0<=rec<=new<=old and rec<=historical,'subset')
   totals=[u+v for u,v in zip(totals,(old,new,historical,rec))]
   out.append([k,z,b,w,of,og,f,g,rf,rg,a,d])
  old,new,hist,rec=totals;M=self.p['parent_projection']['periods'][-1]
  need(old==self.p['parent_projection']['counts'][-1],'exact direct parent baseline')
  need(math.gcd(M,10609)==1,'103 independent CRT')
  rawmin=next(A for A in range(2,20000,2) if self.member(A,False))
  recmin=next(A for A in range(2,20000,2) if self.member(A,True))
  return dict(columns=['k_mod10416','z_mod27','a_mod19','weight','parent_f','parent_g','phase_f','phase_g','reconciled_f','reconciled_g','source769_factor','source17_factor'],rows=out,groups=len(out),
    M_parent=M,M_with_103_squared=M*10609,parent_count=old,
    new_only=dict(after_same_q=new,phase_deleted=old-new,lifted_parent=old*10609,lifted_after_phase=new*10609,after_103=new*10507,source103_deleted=new*102,total_deleted_from_lifted_parent=old*10609-new*10507,minimum=rawmin),
    overview_R27_adoption=dict(scope='author-level Overview 3E, same lambda=mu=1 balanced core; original R27 proof not retrieved/replayed',coarse_old_phase_count=hist,old_reconciliation_deleted=old-hist,after_same_q_with_old_phase=rec,new_shared_phase_deleted=hist-rec,lifted_reconciled_baseline=hist*10609,after_103=rec*10507,new_source103_deleted=rec*102,new_derived_deleted_from_reconciled_baseline=hist*10609-rec*10507,minimum=recmin),
    parent_below_reconciled_minimum=[A for A in range(2,recmin,2) if self.parent_member(A)],
    source103_bad_residues=[103*k for k in range(1,103)],
    not_actual_NC3_count=True,full_history_net_difference_audited=False,joint_period_enumerated=False,
    relaxation='Parent fine roots stay Boolean. New same-q consumer shares frozen necessary c/s labels and qmod5 between FN11/FN19, not all roots at all historical moduli. R27 source adopted from provided Overview only; no independent reproof.')

def crt(a,m,b,n):
 g=math.gcd(m,n);need((b-a)%g==0,'CRT')
 return (a+m*((b-a)//g*pow(m//g,-1,n//g)%(n//g)))%math.lcm(m,n)
def square(A,d,y,B,m):
 v=A*y
 return (v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*B*y)%m

def boundary():
 A=4090;q=765;step=1020;m=209;D,Y=source(q,A*m)
 need((D-1)%A==0,'true quotient')
 B=3*((D-1)//A)%m;d,y=D%m,Y%m
 chosen=None
 for s in (24,54,84):
  r11=[r for r in roots(11,A%11,q%5) if r[-1]==pow(2,s,11)]
  r19=[r for r in roots(19,A%19,q%5) if r[-1]==pow(2,s,19)]
  if r11 and r19:chosen=(s,r11[0],r19[0]);break
 need(chosen is not None,'boundary finite roots')
 s,a,b=chosen;H=crt(a[0],11,b[0],19);h=crt(a[1],11,b[1],19)
 v=A*y%m;Q=(d+v)%m;P=(Q+h*v)%m;n=(2*P*Q*H+2)%m;S=square(A,d,y,B,m);Z=(2*d*H-Q*Q)%m
 need((h*d-4*H-Q)%m==0 and (4*v*H*H-P*Q*Q+1)%m==0 and n==pow(2,s,m) and S==Z*Z%m,'original finite recovery')
 need(source(step,A*m)==(1,1),'whole family period')
 # Contrasting false shortcut: order lifts need not multiply by p immediately.
 return dict(A=A,q_offset=q,q_step=step,r_nonnegative=True,true_B='3(d-1)/4090',modulus=m,source_modulus=A*m,D=D,Y=Y,
 c=1,s_mod90=s,H=H,h=h,P=P,Q=Q,n=n,B=B,S=S,Z=Z,source_period_multiple=step,
 passes='Exact Pell/distribution family; adopted A projection; precisely the new FN11/FN19 finite system with one c/s/q; not all historical modulus systems jointly.',
 missing=['exact integer square','positive original H,h','P/Q as full powers of different original odd primes','exact integer n=2^s','actual j and full noCommon recovery'],
 not_NC3_candidate=True,
 source_only103=dict(A=206,q_offset=13,q_step=1339,true_B='3(d-1)/206',vp103_d_minus_1=2,vp103_A=1,vp103_B=1,S_mod103=5,status='Entire source-only family excluded by new 103 gate; not current residual or original counterexample.'))

def nextentry(proj):
 A=4090
 return dict(A=A,factors=[[2,1],[5,1],[409,1]],parent_member=proj.parent_member(A),new_reconciled_member=proj.member(A,True),
 c=1,s_mod30=24,true_B='3(d-1)/4090',TRI4_q_mod4=1,
 prime409=lift_record(409),prime5=lift_record(5),
 q_mod51=0,shared_q_mod5=0,q_offset=765,q_step=1020,
 next_check='Use the exact B and old SPLIT5 condition v5(B)<=1; here q is a multiple of 5, so v5(B)=1 and B=20 mod25 is necessary. Recover B mod25 by integer division from d mod(4090*25), keep the same c=1,s=24 mod30 and the original P/Q, not prescribed bases.',
 status='Necessary entry only; not integer recovery. Prior old c=1=>6|s is explicitly adopted. A4018/A4030 are not proposed as new open work.')

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,default=ROOT/'certificates');args=ap.parse_args();args.out.mkdir(parents=True,exist_ok=True)
 proj=Projection()
 cs={'01_prime_power_source.json':ranks(),'02_shared_source_phase.json':phase_tables(),'03_projection_delta.json':proj.certificate(),'04_failure_boundaries.json':boundary(),'05_next_entry.json':nextentry(proj),
 '06_source_adoption.json':dict(overview_sha256=sha((ROOT/'inputs/OVERVIEW-2026-10-02.md.txt').read_bytes()),parent_sha256=sha((ROOT/'inputs/parent_A1486_evidence.zip').read_bytes()),snapshot_sha256=sha((ROOT/'inputs/parent_snapshot.json').read_bytes()),historical_research_code_executed=False,repository_actions='none',Lean_executed=False)}
 for fn,obj in cs.items():
  b=canon(obj);(args.out/fn).write_bytes(b);print(fn,len(b),sha(b))
 print('GENERATE PASS: 6 deterministic certificates')
if __name__=='__main__':main()
