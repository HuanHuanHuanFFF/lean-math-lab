"""New exact finite certificates. All arithmetic uses Python integers."""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import argparse,math,json
from collections import Counter,defaultdict
from functools import lru_cache
from pathlib import Path
from intake import ROOT,PARENT_SHA,C5,need,canon,sha,load_parent

@lru_cache(None)
def orbit(m):
 d=y=1;o=[]
 while True:
  o.append((d,y));d,y=(18817*d+32592*y+9408)%m,(10864*d+18817*y+5432)%m
  if (d,y)==(1,1):return o
  need(len(o)<1000000,'source period safety cap')
def exact(q):
 d=y=1
 for _ in range(q):d,y=18817*d+32592*y+9408,10864*d+18817*y+5432
 return d,y
def cycle(a,m):
 need(math.gcd(a,m)==1,'unit power cycle');x=1;out=[]
 while True:
  out.append(x);x=x*a%m
  if x==1:return out
  need(len(out)<m,'power period cap')
def core(d,y,A,H,m):
 v=A*y%m;Q=(d+v)%m;h=(4*H+Q)*pow(d,-1,m)%m;P=(Q+h*v)%m
 F=(4*d*v*H*H-4*v*Q*Q*H-Q**4+d)%m
 N=(4*v*H**3+H+Q)%m;n=2*P*Q*H+2
 return dict(H=H,v=v,Q=Q,h=h,P=P,F=F,N=N,n=n%m,z=(2*d*H-Q*Q)%m)
@lru_cache(None)
def roots(m,a,q):
 d,y=orbit(m)[q%len(orbit(m))];out=[]
 for H in range(m):
  r=core(d,y,a,H,m)
  if r['F']==0:out.append((H,r['P'],r['n']))
 return out
def square(d,y,A,B,m=None):
 v=A*y;S=v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*B*y
 return S if m is None else S%m
def crt(a,m,b,n):
 g=math.gcd(m,n);need((b-a)%g==0,'CRT incompatibility')
 return (a+m*(((b-a)//g*pow(m//g,-1,n//g))%(n//g)))%math.lcm(m,n)
def tri(a):return (-a*(a+2)//8)%4

class Gates:
 def __init__(self,p):self.p=p
 @lru_cache(None)
 def smallmask(self,m,a,q,c,s):
  return sum(1<<pp for pp in {pp for h,pp,n in roots(m,a,q) if n==c*pow(2,s,m)%m})
 @lru_cache(None)
 def mask5(self,a5,c,parity,q3):
  out=0
  for q in (range(3) if q3<0 else [q3]):
   for e in range(parity,4,2):out|=self.smallmask(5,a5,q,c,e)
  return out
 @lru_cache(None)
 def mask19(self,a19,q0,c,s6):
  out=0
  for q in ([0] if q0 else range(5)):
   for e in range(s6,18,6):out|=self.smallmask(19,a19,q,c,e)
  return out
 @lru_cache(None)
 def possible(self,k,a5,c,s,stage,z27):
  if stage==0:return (1<<19)-1
  q3=((z27//9)*(2 if c==1 else 1))%3 if stage>=2 and z27 in (9,18) else -1
  m5=self.mask5(a5,c,s%2,q3)
  if q3>=0 and not m5:return 0
  m31=self.smallmask(31,k%31,tri(k),c,s%5)
  if m31&~1 and (stage<3 or m5&~1):return (1<<19)-1
  m3=self.smallmask(3,k%3,0,c,s%2);m7=self.smallmask(7,k%7,0,c,s%3)
  out=0
  if (m31&1) and (m5&2):
   for u in range(6):
    if (m3>>1)&1 and (m7>>pow(31,u,7))&1:out|=1<<pow(31,u,19)
  if stage>=3 and (m5&1):
   for b in range(18):
    if (m31>>pow(5,b,31))&1 and (m3>>pow(5,b,3))&1 and (m7>>pow(5,b,7))&1:out|=1<<pow(5,b,19)
  return out
 def allow(self,k,a5,a19,q0,stage,z27=-1):
  return self._allow(k,-1 if stage==0 else a5,a19,q0,stage,z27 if stage>=2 and z27 in (9,18) else -1)
 @lru_cache(None)
 def _allow(self,k,a5,a19,q0,stage,z27):
  return any(self.mask19(a19,q0,c,s%6)&self.possible(k,a5,c,s,stage,z27) for c,s in self.p['labels'][k])
 def amember(self,A,stage):
  p=self.p
  if A%p['M0'] not in setR or A%725 in p['bad725'] or (A%5==4 and ((A+1)%336 not in C5 or A%27 in (9,18))):return False
  return self.allow(A%10416,A%5,A%19,A%191==0,stage,A%27)

def sources_cert():
 ms=[3,5,7,9,19,31,532,10108]
 return dict(schema='source-cycles-v1',affine=[18817,32592,9408,10864,18817,5432],determinant=1,periods={str(m):len(orbit(m)) for m in ms},states={str(m):orbit(m) for m in ms},power_cycles={f'{a}_mod{m}':cycle(a,m) for a,mlist in [(2,[3,5,7,19,31]),(31,[3,5,7,19]),(5,[3,7,19,31])] for m in mlist},cycle_zero_index='Exponent residue 0 includes positive multiples of the period; it is not exponent zero in an original prime power.')

def quotient_cert():
 A=532;m=19;os=orbit(A*m);T=math.lcm(60,len(os));sq=defaultdict(list)
 for z in range(m):sq[z*z%m].append(z)
 rows=[];cnt=Counter()
 for q in range(T):
  if q%60 not in (25,45):continue
  D,Y=os[q%len(os)];need(3*(D-1)%A==0,'true B integrality')
  B=3*(D-1)//A%m;d,y=D%m,Y%m;S=square(d,y,A,B,m)
  need((d,y)==(1,1),'actual source at 19')
  cnt['entry_rows']+=1;cnt['zero_square' if S==0 else ('unit_square' if sq[S] else 'nonsquare')]+=1
  ts=[]
  for z in sq[S]:
   H=(z+(d+A*y)**2)*pow(2*d,-1,m)%m;r=core(d,y,A,H,m)
   need(r['F']==0,'root-to-F identity')
   ex=[s for s in range(18) if pow(2,s,m)==r['n'] and s%2==1]
   need(r['P']==1==pow(31,6,m),'actual full P modulo19')
   ts.append(dict(**r,compatible_s_mod90=[crt(s,18,1,10) for s in ex],kept=bool(ex)))
  if any(t['kept'] for t in ts):cnt['kept_rows']+=1
  cnt['kept_roots']+=sum(t['kept'] for t in ts)
  rows.append(dict(q=q,D=D,Y=Y,B=B,S=S,roots=ts))
 return dict(schema='A532-true19-quotient-v1',A=A,modulus=m,source_modulus=A*m,source_period=len(os),joint_period=T,q_residues_mod60=[25,45],q_positive=True,counts=dict(cnt),rows=rows,kept_q=[r['q'] for r in rows if any(t['kept'] for t in r['roots'])],zero_q=[r['q'] for r in rows if r['S']==0],nonunit_policy='A and v are zero, d,Q,P are units; zero-square roots retained when shared s allows. There are no nonzero nonunits in F19.',not_an_integer_NC3_model=True)

def A532_cert():
 rows=[]
 for q,(d,y) in enumerate(orbit(5)):
  rs=[core(d,y,532,H,5) for H in range(5)]
  rows.append(dict(q_mod3=q,d=d,y=y,all_H=rs,P1_H=[r['H'] for r in rs if r['P']==1],P1_and_F_roots=[r for r in rs if r['P']==1 and r['F']==0]))
 return dict(schema='A532-and-P1-uniform-closure-v1',rows=rows,forced_P_mod5=1,full_P='31^a with a>=1 (the adopted a divisible by 6 is stronger than needed here)',original_c=1,original_s_parity=1,allowed_n_mod5=[2,3],surviving_F_P_case=dict(q_mod3=0,H=4,P=1,n=1),closed=True,uniform_scope='A=2 mod5, P=1 mod5, c=1, s odd; all q and all positive complete-power exponents',corrected_transcription='The adopted equation is P=Q+h*v, not P=Q+h*nu.')

def local_cert():
 out=[]
 for m in (3,5,7,19,31):
  for a in range(m):
   for q,(d,y) in enumerate(orbit(m)):
    rr=[core(d,y,a,H,m) for H in range(m) if core(d,y,a,H,m)['F']==0]
    out.append(dict(m=m,a=a,q=q,d=d,y=y,roots=rr))
 return dict(schema='exact-original-local-roots-v1',rows=out,prime_moduli=[3,5,7,19,31],B_policy='No B is selected in these weaker original E/F/n gates. TRUE3 below derives q from the exact original quotient instead.',P31_power_exponent_period=6,P5_power_exponent_period=18,same_n_exponent_period=180)

def true3_cert():
 o9=orbit(9);need(len(o9)==3)
 os558=orbit(558)
 return dict(schema='TRUE3-same-c-v1',source_mod9=o9,quotient_formula='(d-1)/3 = q mod3',conditional='3|A',B_by_c={'1':2,'3':1},valuation_two_gate='If A=9u with 3 not dividing u: q = 2u mod3 for c=1, q=u mod3 for c=3.',A558=dict(c=1,A_mod27=18,A_mod5=3,forced_q_mod3=1,actual_B='(d-1)/186',B_mod3_q4=2,B_mod3_q8=1,source_mod558_period=len(os558),source_q4=os558[4],source_q8=os558[8],F_mod5_coefficients=[1,4,2],completion='2*(H+1)^2-1 mod5',required_square=3,closed=True),A576=dict(c=1,A_mod27=9,A_mod5=1,forced_q_mod3=2,s_mod15=0,source_mod5=orbit(5)[2],original_roots_mod5=[core(3,1,576,H,5) for H in range(5) if core(3,1,576,H,5)['F']==0],forced_original_P='5^b, b>=1',original_q_mod4=0,source_mod31=orbit(31)[0],original_roots_mod31=[core(1,1,576,H,31) for H in range(31) if core(1,1,576,H,31)['F']==0 and core(1,1,576,H,31)['n']==1],positive_P5_cycle_mod31=[5,25,1],closed=True),additional_uniform_subdomain='c=1, A=18 mod27, A=3 mod5 is empty; no bound on q or any exponent.')

def projection(p,g):
 # Split the existing three mod27 fibers explicitly; do not enumerate M4.
 G=defaultdict(lambda:[0]*5)
 for a in p['R']:
  for z in (a%9,a%9+9,a%9+18):
   for r in range(5):
    if r==4 and ((a+1)%336 not in C5 or z in (9,18)):continue
    G[a%10416,z][r]+=129 if r==0 else 145
 rows=[];counts=[0]*4;lists=[[] for _ in range(4)]
 for (k,z),ww in sorted(G.items()):
  for r,w in enumerate(ww):
   if not w:continue
   masks=[]
   for stage in range(4):
    gg=sum(1<<b for b in range(19) if g.allow(k,r,b,False,stage,z))
    hh=sum(1<<b for b in range(19) if g.allow(k,r,b,True,stage,z))
    need(hh&~gg==0,'conditional source is not a relaxation')
    if masks:need(gg&~masks[-2]==0 and hh&~masks[-1]==0,'stages nested')
    masks.extend([gg,hh]);counts[stage]+=w*(190*gg.bit_count()+hh.bit_count())
   rows.append([k,z,r,w]+masks)
 need(counts[0]==p['parent_count'],'exact current parent baseline')
 minimum=next(a for a in range(2,20000,2) if g.amember(a,3))
 return dict(schema='SAMEP-and-TRUE3-compressed-projection-v1',M0=p['M0'],M4=p['M4'],joint_period_changed=False,joint_period_enumerated=False,stage_names=['direct parent','P31 shared complete exponent','TRUE3 actual quotient with same c','P5 shared complete exponent'],counts=counts,deltas=[counts[i-1]-counts[i] for i in range(1,4)],net_deleted=counts[0]-counts[-1],group_columns=['A_mod10416','A_mod27','A_mod5','old_fiber_weight','parent_general_mask19','parent_q0_mask19','P31_general_mask19','P31_q0_mask19','TRUE3_general_mask19','TRUE3_q0_mask19','P5_general_mask19','P5_q0_mask19'],rows=rows,minimum_positive_projection=minimum,parent_below_minimum=[a for a in range(2,minimum,2) if g.amember(a,0)],remaining_examples=[a for a in range(minimum,8000,2) if g.amember(a,3)][:20],weight_rule='Each old residue A modM0 has 3 compatible mod27 values; each allowed mod725 residue is counted once. 191|A uses q0 at19, other190 classes use generic sources. Count each A class once, not roots.',not_actual_NC3_count=True,all_historical_consumers_replayed=False)

def boundary_cert():
 q=285;T=7980;M=3*7*19*31;A=532;s=51;aa=6
 d,y=exact(q);need(3*(d-1)%A==0);B=3*(d-1)//A
 hrs={3:0,7:3,19:5,31:19};H=0;mm=1
 for m,h in hrs.items():H=crt(H,mm,h,m);mm*=m
 r=core(d,y,A,H,M);S=square(d,y,A,B,M)
 need(r['F']==0 and r['P']==pow(31,aa,M) and r['n']==pow(2,s,M) and r['z']**2%M==S,'finite boundary simultaneous conditions')
 need(T%len(orbit(A*M))==0 and T%60==0,'all progression source/quotient coverage')
 full=square(d,y,A,B);lo=math.isqrt(full);need(lo*lo<full<(lo+1)**2,'sample gap')
 return dict(schema='A532-exact-quotient-finite-family-already-deleted-v1',A=A,q_offset=q,q_step=T,k_nonnegative=True,source_period_mod_A_times_M=len(orbit(A*M)),M=M,prime_factors=[3,7,19,31],same_c=1,s_mod90=s,original_P_mod_M=f'31^{aa}',original_P_exponent_mod6=0,H_residues=hrs,local=dict(d=d%M,y=y%M,B=B%M,S=S,**r),deleted_by='A=2mod5, P=1mod5, c1 and odd s; the entire family is deleted, not current frontier.',missing=['integer square S=Y^2','positive integer h,H','original complete prime powers P,Q with different odd prime bases','exact integer n=2^s','original j/noCommon recovery'],sample_hex=dict(q=q,d=hex(d),y=hex(y),B=hex(B),S=hex(full),floor_sqrt=hex(lo),gap_above=hex(full-lo*lo),gap_below=hex((lo+1)**2-full)))

def nextentry(p,g):
 A=882;labs=p['labels'][A%10416];need(g.amember(A,3),'next projection member')
 return dict(schema='next-A882-necessary-projection-only-v1',A=A,factorization=[[2,1],[3,2],[7,2]],actual_B='(d-1)/294',parent_labels_c_s_mod30=labs,same_c=1,s_mod5=0,source49=orbit(49),source49_d1=[q for q,(d,y) in enumerate(orbit(49)) if d==1],q_mod12=7,q_mod84=7,TRI4_q_mod4=tri(A),TRUE3='u=A/9=98=2mod3, so c1 forces q1mod3; c3 forces q2mod3; retain only c admitted by all parent and new labels.',source_modulus_for_actual_B_mod7=2058,unreduced_safe_modulus=6174,complete_P_and_Q='Not restored. Do not assume the A532 P=31^a interface transfers to A882.',status='lowest surviving necessary projection, not a recovered original input',next_falsifiable_check='Determine shared c/s roots for this fixed A; restore B mod7 from integer (d-1)/294 and dmod2058 (or 3(d-1)/882 and dmod6174), then couple actual S and full P/Q. No free B in F7.')

def main():
 global setR
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,default=ROOT/'certificates');args=ap.parse_args();args.out.mkdir(parents=True,exist_ok=True)
 p=load_parent();setR=set(p['R']);g=Gates(p)
 certs={'01_source_cycles.json':sources_cert(),'02_true19_quotient.json':quotient_cert(),'03_A532_closure.json':A532_cert(),'04_original_local_tables.json':local_cert(),'05_TRUE3_A558_A576.json':true3_cert(),'06_projection_delta.json':projection(p,g),'07_finite_boundary.json':boundary_cert(),'08_next_A882.json':nextentry(p,g),'09_source_adoption.json':dict(parent_sha256=PARENT_SHA,parent_manifest_members=p['parent_manifest_members'],parent_M4_count=p['parent_count'],parent_R_sha256=p['R_sha256'],overview_sha256=sha((ROOT/'inputs/OVERVIEW-2026-09-22.md.txt').read_bytes()),historical_math_rerun=False,repository_actions='none',evidence='adopted author-level historical NC3-to-core prerequisite; new paper proof and exact finite-ring certificates')}
 for name,obj in certs.items():
  data=canon(obj);(args.out/name).write_bytes(data);print(name,sha(data),len(data))
 print('GENERATE PASS: 9 certificates')
 print(json.dumps({k:v for k,v in certs['06_projection_delta.json'].items() if k in ('counts','deltas','net_deleted','minimum_positive_projection','parent_below_minimum')},sort_keys=True))
if __name__=='__main__':main()
