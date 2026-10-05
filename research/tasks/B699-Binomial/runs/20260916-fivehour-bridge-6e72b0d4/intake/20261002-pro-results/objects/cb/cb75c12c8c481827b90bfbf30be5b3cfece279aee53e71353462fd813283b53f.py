"""New TRUE5/SAME-q certificates; standard library, exact integers only."""
from __future__ import annotations
import argparse, hashlib, json, math, sys, zipfile
from collections import defaultdict
from functools import lru_cache
from pathlib import Path
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
PARENT_SHA='d5b1ca55c27b10b21bf3032821a822b2ee9d561c86f901438a5cb70ac9522cf1'

def need(x,msg):
 if not x:raise ValueError(msg)
def canon(o):return (json.dumps(o,sort_keys=True,ensure_ascii=False,indent=2)+'\n').encode()
def sha(b):return hashlib.sha256(b).hexdigest()
def frozen():
 b=(ROOT/'inputs/parent_evidence.zip').read_bytes();need(sha(b)==PARENT_SHA,'parent archive digest')
 with zipfile.ZipFile(ROOT/'inputs/parent_evidence.zip') as z:
  def get(suffix):
   names=[n for n in z.namelist() if n.endswith('/'+suffix)];need(len(names)==1,'unique frozen member')
   return z.read(names[0])
  p=json.loads(get('inputs/parent_snapshot.json'));delta=json.loads(get('certificates/03_projection_delta.json'))
  return p,delta,dict(parent_sha256=PARENT_SHA,snapshot_sha256=sha(get('inputs/parent_snapshot.json')),parent_delta_sha256=sha(get('certificates/03_projection_delta.json')),overview_sha256=sha((ROOT/'inputs/OVERVIEW-2026-10-02.md.txt').read_bytes()),historical_math_replayed=False)

def mm(a,b,m):return tuple(tuple(sum(a[i][k]*b[k][j] for k in range(3))%m for j in range(3)) for i in range(3))
def source(q,m):
 t=((18817,32592,9408),(10864,18817,5432),(0,0,1));r=((1,0,0),(0,1,0),(0,0,1))
 while q:
  if q&1:r=mm(r,t,m)
  t=mm(t,t,m);q//=2
 return (sum(r[0])%m,sum(r[1])%m)
def orbit(m):
 d=y=1;out=[]
 while True:
  out.append([d,y]);d,y=(18817*d+32592*y+9408)%m,(10864*d+18817*y+5432)%m
  if (d,y)==(1,1):return out
  need(len(out)<2000000,'finite period diagnostic cap exceeded')
def square(A,d,y,B,m):
 v=A*y
 return (v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*B*y)%m
@lru_cache(None)
def roots(m,a,j):
 d,y=source(j,m);v=a*y%m;Q=(d+v)%m;out=[]
 for h in range(m):
  H=(h*d-Q)*pow(4,-1,m)%m;P=(Q+h*v)%m
  if (4*v*H*H-P*Q*Q+1)%m==0:out.append([H,h,P,Q,(2*P*Q*H+2)%m])
 return sorted(out)

@lru_cache(None)
def ordinary_mask11(b,c,s0):
 out=0
 for e in range(s0,90,30):
  for j in range(5):
   if not any(t[-1]==c*pow(2,e,19)%19 for t in roots(19,b,j)):continue
   for a in range(11):
    if any(t[-1]==c*pow(2,e,11)%11 for t in roots(11,a,j)):out|=1<<a
 return out
@lru_cache(None)
def true5_mask11(b,u,c,s0):
 out=0
 for e in range(s0,180,30):
  B5=(c*pow(2,e,5)-3)**2%5;j=3*u*B5%5
  if not any(t[-1]==c*pow(2,e,19)%19 for t in roots(19,b,j)):continue
  for a in range(11):
   if any(t[-1]==c*pow(2,e,11)%11 for t in roots(11,a,j)):out|=1<<a
 return out

class Projector:
 def __init__(self,p,delta):
  self.p=p;self.delta=delta;self.labels={int(k):v for k,v in p['labels'].items()};self.R=set(p['R']);self.bad=set(p['bad725'])
  self.cm={r['k']:r for r in p['base11_projection']['rows']};self.xm={r['k']:r['masks41_to11'] for r in p['parent_projection']['source743_masks']}
  self.rowmap={(r[0],r[1],r[2]):r for r in p['ancestor_fibers']}
 @lru_cache(None)
 def mask(self,k,b,u,old_phase=True):
  result=0
  for c,s in self.labels[k]:
   if old_phase and c==1 and s%6:continue
   result|=ordinary_mask11(b,c,s) if u<0 else true5_mask11(b,u,c,s)
  return result
 @lru_cache(None)
 def factors(self,k,mask):
  r=self.cm[k]
  if r['not_divisible7']:
   return (7*41*(r['mask11']&mask).bit_count(),7*sum((v&mask).bit_count() for v in self.xm[k]))
  return (sum((v&mask).bit_count() for row in r['masks_by_u_a41'] for v in row),sum((v&mask).bit_count() for v in r['masks_by_u_a41'][0]))
 def prior_member(self,A,old_phase=True):
  if A%3031056 not in self.R or A%725 in self.bad:return False
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
  if A%103==0 and A%10609!=0:return False
  return bool(self.mask(A%10416,A%19,-1,old_phase)>>(A%11)&1)
 def member(self,A,old_phase=True):
  return self.prior_member(A,old_phase) and (A%5!=0 or bool(self.mask(A%10416,A%19,(A//5)%5,old_phase)>>(A%11)&1))
 def certificate(self):
  weights=defaultdict(lambda:[0,0])
  for rr in self.p['ancestor_fibers']:
   k,z,r5,w=rr[:4];gm,hm=rr[-2:]
   a=769 if k%16 in(0,14) else 768;d=51 if k%3 else 49 if z==0 else 48
   for b in range(19):
    t=190*((gm>>b)&1)+((hm>>b)&1)
    if not t:continue
    if r5==0:
     need(w%129==0,'mod725 fiber split');weights[k,b][0]+=w//129*t*a*d
    else:weights[k,b][1]+=w*t*a*d
  stages=[];allrows=[]
  for reconcile in (False,True):
   old=new=0;deletes=[0]*5;rows=[]
   for (k,b),(w0,wo) in sorted(weights.items()):
    mask=self.mask(k,b,-1,reconcile);of,og=self.factors(k,mask);ofactor=742*of+og
    old+=(129*w0+wo)*ofactor;new+=wo*ofactor;subs=[]
    for u,num in enumerate((13,29,29,29,29)):
     nm=self.mask(k,b,u,reconcile);need(nm&~mask==0,'new gate subset')
     f,g=self.factors(k,nm);nf=742*f+g
     new+=w0*num*nf;deletes[u]+=w0*num*(ofactor-nf);subs.append([nm,f,g])
    rows.append([k,b,w0,wo,mask,of,og,subs])
   want=self.delta['overview_R27_adoption']['after_same_q_with_old_phase'] if reconcile else self.delta['new_only']['after_same_q']
   need(old==want,'exact frozen current baseline')
   minimum=next(a for a in range(2,20000,2) if self.member(a,reconcile))
   stages.append(dict(adopt_old_R27=reconcile,parent_before_103=old,new_before_103=new,parent_count=old*10507,new_count=new*10507,net_deleted=(old-new)*10507,deleted_by_A_div5_mod5=[x*10507 for x in deletes],minimum=minimum,parent_below_new_minimum=[a for a in range(2,minimum,2) if self.prior_member(a,reconcile)],rows=rows))
  return dict(period=self.delta['M_with_103_squared'],period_changed=False,rows_per_ledger=len(weights),columns=['Amod10416','Amod19','weight_one_unrestricted_mod725_residue_for_5divA','other_r5_weight','parent_mask11','parent_general_factor','parent_743zero_factor','five_new_mask_factor_triples_for_u0to4'],fiber_multiplicities=[13,29,29,29,29],full103_factor=10507,ledgers=stages,projection_only=True,actual_NC3_count=False,full_history_net_audit=False,joint_period_enumerated=False,relaxation='Keep every frozen parent Boolean gate. New TRUE5, FN11 and FN19 share actual qmod5,c and smod180; not all historical P/Q roots or all moduli jointly recovered. Old R27 is adopted separately, not a new discovery.')

def quotient():
 A=4090;mod=A*25;o=orbit(mod);T=math.lcm(len(o),1020);rows=[]
 for r in range(T//1020):
  q=765+1020*r;D,Y=o[q%len(o)];need((D-1)%A==0,'integer quotient')
  B=3*((D-1)//A)%25;d,y=D%25,Y%25;S=square(A,d,y,B,25)
  square_roots=[z for z in range(25) if z*z%25==S]
  rr=[]
  for H,h,P,Q,n in roots(25,A%25,q):
   z=(2*d*H-Q*Q)%25
   rr.append(dict(H=H,h=h,P=P,Q=Q,n=n,Z=z,S_agrees=z*z%25==S,compatible_s_mod60=[e for e in (24,54) if pow(2,e,25)==n]))
  rows.append(dict(r_mod5=r,q_mod5100=q%T,D=D,Y=Y,d_mod25=d,y_mod25=y,B_mod25=B,S_mod25=S,square_roots_mod25=square_roots,original_E_roots=rr))
 need([r['B_mod25'] for r in rows]==[10,15,20,0,5],'true quotient formula')
 return dict(A=A,source_modulus=mod,source_period=len(o),source_period_sha256=sha(canon(o)),joint_period=T,entry='q=765+1020r, r>=0',rows=rows,square_only_surviving_q_mod5100=[2805],original_c=1,s_mod30=24,allowed_n_mod25=[9,16],whole_branch_closed=True,zero_square_policy='S=0mod25 is retained as a square (five roots); rejection uses the same original even exponent n=2^s. Nonzero multiples of5 in the other four rows have odd valuation and are not squares.',nonunit_policy='A,v nonunits; d,Q,P are units here. Recover H via 4 inverse, never divide v. At arbitrary moduli preserve original linear/E/n equations.')

def universal():
 o=orbit(25);thetable=[]
 for c in (1,3):
  for s in range(4):
   n=c*pow(2,s,5)%5;B=(n-3)**2%5
   thetable.append(dict(c=c,s_mod4=s,n_mod5=n,H_mod5=(n-2)*3%5,B_mod5=B,B_valuation_if_frozen_SPLIT5=1 if B==0 else 0))
 # Exact gamma24 independently as an integer recurrence.
 u,x=1,0
 for _ in range(24):u,x=2*u+3*x,u+2*x
 tests=[]
 for r in range(6):
  for w in (1,2,3,4,6,7):
   q=3*5**r*w;m=5**(r+2);d,y=source(q,m);need((d-1)%5**(r+1)==0,'valuation lower')
   leading=((d-1)//5**(r+1))%5;need(leading==4*(q//5**r)%5,'normalized leading residue')
   tests.append([q,r+1,leading,d,m])
 return dict(theorem='If 5|A in the adopted integer core, then 3|q, B=(c*2^s-3)^2 mod5, and q=3*(A/5)*(c*2^s-3)^2 mod5.',source_mod25=o,gamma24=[u,x],gamma24_mod25=[u%25,x%25],normalized_source='For 3|q, r=v5(q): v5(d-1)=r+1 and (d-1)/5^(r+1)=4*q/5^r mod5. Proof by exact binomial valuation, not diagnostics.',shared_table=thetable,all_exponent_normalization_diagnostics_only=tests,new_unsplit_c1_even='If c=1 and s even, 5|A implies 5 does not divide B; consequently v5(A)=1+v5(q).',all_c_source_units='If A=5^e*u and B=5^b*w with units u,w, then e+b=1+v5(q) and u*w=2*q/5^v5(q) mod5.',old_SPLIT5='v5(B)<=1 and v5(B)=1 => B=20 mod25 are frozen dependencies, not counted as new.',universal_proof='PROOFS.md P2-P3')

def local_tables():
 return dict(source_states={str(p):[source(q,p) for q in range(5)] for p in (11,19)},rows={str(p):[[a,j,roots(p,a,j)] for a in range(p) for j in range(5)] for p in (11,19)},full_same_exponent_period=180,c_values=[1,3],note='Complete finite-root tables needed for the new consumer; not a re-claim of previously closed branches. Original E and n retained, including d=0 or Q=0.')

def fixed(proj):
 out=[]
 for A in (4090,4510,5940,9790):
  records=[]
  for c,s0 in proj.labels[A%10416]:
   if c==1 and s0%6:continue
   for s in range(s0,180,30):
    js=[]
    for j in range(5):
     r11=[r for r in roots(11,A%11,j) if r[-1]==c*pow(2,s,11)%11]
     r19=[r for r in roots(19,A%19,j) if r[-1]==c*pow(2,s,19)%19]
     if r11 and r19:js.append(dict(q_mod5=j,FN11=r11,FN19=r19))
    if js:
     B5=(c*pow(2,s,5)-3)**2%5;target=3*(A//5)*B5%5
     need(all(x['q_mod5']!=target for x in js),'fixed branch all-exponent exclusion')
     records.append(dict(c=c,s_mod180=s,required_B_mod5=B5,required_q_mod5=target,old_same_q=js))
  need(proj.prior_member(A) and not proj.member(A),'new fixed branch and true prior projection')
  out.append(dict(A=A,records=records,whole_adopted_core_branch_closed=True))
 return dict(branches=out,counts_not_actual_inputs=True,no_full_historical_novelty_claim=True)

def crt(a,m,b,n):return (a+m*((b-a)*pow(m,-1,n)%n))%(m*n)
def boundary():
 A=4090;q=2805;step=5100;m=5225;D,Y=source(q,A*m);need((D-1)%A==0,'boundary actual B')
 B=3*((D-1)//A)%m;d,y=D%m,Y%m;H=crt(3,25,111,209);h=crt(3,25,146,209);v=A*y%m;Q=(d+v)%m;P=(Q+h*v)%m;n=(2*P*Q*H+2)%m;N=(4*v*H**3+H+Q)%m;Z=(2*d*H-Q*Q)%m;S=square(A,d,y,B,m)
 need(source(step,A*m)==(1,1),'whole boundary family period')
 need((h*d-4*H-Q)%m==0 and (4*v*H*H-P*Q*Q+1)%m==0 and (2*N-n*Q)%m==0 and (Z*Z-S)%m==0,'boundary finite source core')
 need(n%209==pow(2,84,209) and n%5==3 and n%25!=pow(2,84,25),'specific lost original condition')
 return dict(A=A,q_offset=q,q_step=step,r_nonnegative=True,true_B='3(d-1)/4090',modulus=m,source_modulus=A*m,D=D,Y=Y,d=d,y=y,B=B,H=H,h=h,v=v,P=P,Q=Q,n=n,N=N,Z=Z,S=S,c=1,s_mod90=84,power84_modM=pow(2,84,m),status='Entire accurate Pell/distribution family already excluded in this round, not a current residual and not NC3.',passes='Actual S square, linear/E/F/N/n at modulus5225; original power with same c/s only at modulus209.',fails='n=2^s modulo5 for the inherited even s; here recovered n=3mod5.',missing=['exact integer S square','positive integer original H,h','P/Q full powers of different odd primes','exact integer n=2^s','actual j and noCommon recovery'])

def nextentry(proj):
 A=10152;L=4140;ms=A//3;o=orbit(ms)
 rows=[q for q in range(L) if (3*(source(q,A)[0]-1))%A==0 and q%4==2 and q%5==4 and q%3==0 and q%9!=0]
 need(rows==[1794,3174],'next necessary rows')
 need(proj.member(A),'next projection member')
 return dict(A=A,factors=[[2,3],[3,3],[47,1]],true_B='(d-1)/3384',q_classes_mod4140=rows,q_positive=True,c=3,s_mod90=15,H_mod11=6,H_mod19=1,source_modulus_for_true_B_mod47=159048,complete_P_Q='Both unspecified different original odd-prime bases; no preceding branch base is transferred.',next_falsifiable_check='Preserve dmod159048, test3384|(d-1), restore true Bmod47 by integer division; retain c=3,s=15mod90,H11=6,H19=1 and all original S/E/F/N/n/P/Q conditions.',status='Lowest necessary A projection only; no original input restored. No 47-side terminal run in this round.')

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,default=ROOT/'certificates');a=ap.parse_args();a.out.mkdir(parents=True,exist_ok=True)
 p,delta,ad=frozen();proj=Projector(p,delta)
 certs={'01_true25_A4090.json':quotient(),'02_universal_TRUE5.json':universal(),'03_local_same_phase.json':local_tables(),'04_projection_delta.json':proj.certificate(),'05_fixed_branches.json':fixed(proj),'06_failure_family.json':boundary(),'07_next_entry.json':nextentry(proj),'08_source_adoption.json':ad}
 for name,obj in certs.items():
  b=canon(obj);(a.out/name).write_bytes(b);print(name,len(b),sha(b),flush=True)
 print('GENERATE PASS: 8 new certificates',flush=True)
 print(json.dumps([{k:v for k,v in l.items() if k!='rows'} for l in certs['04_projection_delta.json']['ledgers']],ensure_ascii=False),flush=True)
if __name__=='__main__':main()
