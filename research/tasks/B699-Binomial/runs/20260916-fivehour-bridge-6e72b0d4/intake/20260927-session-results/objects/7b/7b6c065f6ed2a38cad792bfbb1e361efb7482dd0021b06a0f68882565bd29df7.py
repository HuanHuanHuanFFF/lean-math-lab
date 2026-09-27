#!/usr/bin/env python3
"""Receiver: quadratic-ring source, original E/n, explicit CRT lifts.
Never imports the generator. Prior mathematics is adopted, not rerun.
"""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import json,math,argparse
from pathlib import Path
from collections import Counter,defaultdict
from common import ROOT,C5,PARENT_SHA,need,sha,canon,parent

def source(m):
 u,x=2,1;out=[];mod=2*m
 while True:
  need(u%2==0 and x%2==1,'source coordinate parity')
  row=[((3*x-1)//2)%m,(u//2)%m]
  if out and row==[1,1]:return out
  out.append(row)
  u,x=(18817*u+32592*x)%mod,(10864*u+18817*x)%mod
  need(len(out)<1000000,'source period safety cap')
def po(m):
 out=[];x=1
 while True:
  x=2*x%m;out.append(x)
  if x==1:return out
  need(len(out)<m)
def org(d,y,a,H,m):
 v=a*y%m;Q=(d+v)%m;need(math.gcd(d,m)==1,'only invert unit d')
 h=(4*H+Q)*pow(d,-1,m)%m;P=(Q+h*v)%m
 E=(4*v*H*H-P*Q*Q+1)%m;n=(2*P*Q*H+2)%m
 N=(4*v*H**3+H+Q)%m;F=d*E%m
 need((2*N-n*Q-2*H*E)%m==0,'N-original identity')
 return dict(H=H,v=v,Q=Q,F=F,N=N,h=h,P=P,n=n)
def score(d,y,a,b,m):
 v=a*y%m
 return ((((v+5*d)*v+10*d*d)*v+10*d**3)*v+5*d**4+d*d*b*y)%m

def verify_sources(c):
 need(c['affine_determinant']==1 and 18817**2-32592*10864==1)
 need(c['source19']==source(19) and c['source191']==source(191),'all source states')
 need(c['source191_d1']==[i for i,(d,y) in enumerate(source(191)) if d==1]==[0])
 need(c['period19']==len(source(19))==5 and c['period191']==len(source(191))==95)
 for p in (19,191):
  need(all(p%k for k in range(2,math.isqrt(p)+1)),'auxiliary prime check')
  need(c[f'power2_mod{p}']==[1]+po(p)[:-1],'complete positive power period')

def verify_quotient(c):
 need(c['A']==382 and c['modulus']==191 and c['source_modulus']==72962)
 os=source(72962);T=math.lcm(len(os),1140)
 need(len(os)==c['source_period']==18145 and T==c['joint_q_period']==217740)
 need(sha(canon(os))==c['source_states_sha256'])
 need(c['entry_q_mod1140']==[0,760] and c['q_positive'] is True)
 need(c['same_c']==1 and c['s_mod15']==3 and c['same_s_modulus']==285)
 p=191;pp=po(p);logs={n:(i+1)%len(pp) for i,n in enumerate(pp)};cnt=Counter();allrows=[]
 for q in range(T):
  if q%1140 not in (0,760):continue
  D,Y=os[q%len(os)];rem=(3*D-3)%382;need(rem==0,'exact quotient integrality')
  B=((3*D-3)//382)%p;d,y=D%p,Y%p;s=score(d,y,382,B,p)
  need((d,y)==(1,1) and B==49*(q//380)%p)
  roots=[z for z in range(p) if z*z%p==s];cnt['entry']+=1
  cnt['nonsquare' if not roots else ('zero_square' if s==0 else 'unit_square')]+=1
  tested=[];num=0
  for z in roots:
   # Independent route: find original H from z, then original h,P,E,n.
   H=(z+1)*96%p;r=org(d,y,382,H,p);need(r['F']==0,'root must satisfy original E')
   need(r['Q']==1 and r['v']==0,'do not invert A or v')
   log=logs.get(r['n']);valid=[e for e in range(285) if e%15==3 and pow(2,e,p)==r['n']]
   status='not_a_power_of_2' if log is None else ('kept' if valid else 'shared_exponent_conflict')
   rec=dict(z=z,**r,power2_exponent_mod95=log,status=status)
   if valid:need(len(valid)==1);rec['same_s_mod285']=valid[0];num+=1
   tested.append(rec)
  if num:cnt['kept_rows']+=1;cnt['kept_roots']+=num
  allrows.append(dict(q=q,D=D,Y=Y,d=d,y=y,B=B,S=s,all_square_roots=roots,tested_roots=tested))
 need(c['counts']==dict(cnt) and c['rows']==allrows,'complete quotient/root coverage')
 need(c['zero_square_q']==[r['q'] for r in allrows if r['S']==0])
 need(c['B_zero_q']==[r['q'] for r in allrows if r['B']==0])
 need(c['kept_q']==[r['q'] for r in allrows if any(x['status']=='kept' for x in r['tested_roots'])])
 need(cnt['entry']==382 and cnt['kept_rows']==38 and cnt['zero_square']==2)
 need(logs[3]==89 and 89%5!=3,'zero square killed by shared exponent, not by zero itself')

def verify_closure(c,p):
 need(c['A']==382 and c['A_mod19']==382%19==2)
 labs=p['labels'][382]
 need(labs==[[1,3],[1,18]],'same parent c/s; no reset')
 need(c['required_c']==1 and c['required_s_mod3']==0)
 need(source(191)==source(191) and [i for i,(d,y) in enumerate(source(191)) if d==1]==[0])
 need(c['source191_requires_q_mod95']==0 and c['hence_q_mod5']==0 and 95%5==0)
 need(c['source_mod19']==[1,1] and c['v_mod19']==2 and c['Q_mod19']==3)
 need(c['F_coefficients_low_to_high']==[15,4,8])
 rows=[org(1,1,382,H,19) for H in range(19) if org(1,1,382,H,19)['F']==0]
 need(c['roots']==rows and [r['H'] for r in rows]==[10,18])
 ns=sorted({pow(2,s,19) for s in range(18) if s%3==0})
 need(c['allowed_n_from_s']==ns and c['recovered_n']==[3,15])
 logs=[next(s for s in range(18) if pow(2,s,19)==r['n']) for r in rows]
 need(c['recovered_s_mod18']==logs==[13,11])
 need(c['contradiction_intersection']==[] and set(ns).isdisjoint([3,15]))

def verify_table(c):
 need((c['A_modulus'],c['q_modulus'],c['H_modulus'],c['positive_power_period'],c['joint_s_period'],c['overlap_modulus'])==(19,5,19,18,90,6))
 out=[];os=source(19)
 for a in range(19):
  rr=[]
  for qi,(d,y) in enumerate(os):
   roots=[]
   for H in range(19):
    r=org(d,y,a,H,19)
    if r['F']:continue
    r['labels_c_s_mod18']=[[cc,s] for cc in (1,3) for s in range(18) if cc*pow(2,s,19)%19==r['n']]
    roots.append(r)
   rr.append(dict(q_mod5=qi,d=d,y=y,roots=roots))
  gen=sorted({(cc,s%6) for r in rr for x in r['roots'] for cc,s in x['labels_c_s_mod18']})
  q0=sorted({(cc,s%6) for x in rr[0]['roots'] for cc,s in x['labels_c_s_mod18']})
  out.append(dict(A_mod19=a,source_rows=rr,all_q_tags_mod6=[list(x) for x in gen],q0_tags_mod6=[list(x) for x in q0]))
 need(c['rows']==out,'all 1805 original-H checks, including Q=0')
 # Direct exponent/CRT labels: overlap6 is necessary and sufficient for s30/e18.
 for s in range(30):
  for e in range(18):need(((s-e)%6==0)==any(z%30==s and z%18==e for z in range(90)))

def verify_projection(c,p,t):
 M0=p['M0'];M2=p['M2'];need(c['parent_M2']==M2 and c['M0']==M0)
 need(c['generic_M3']==M2*19 and c['final_M4']==M2*19*191)
 need(c['coprime_checks']==[math.gcd(M2,19),math.gcd(M2*19,191)]==[1,1])
 zcounts=[sum(z not in p['bad725'] and z%5==r for z in range(725)) for r in range(5)];M1=M0*725
 def fibre(a):
  val=0
  for r in range(5):
   x=a+M0*((r-a)*pow(M0,-1,725)%725)
   val+=zcounts[r]*sum((x+M1*k)%5!=4 or (((x+M1*k+1)%336 in C5) and (x+M1*k)%27 not in (9,18)) for k in range(3))
  return val
 # Build allowed A19 fibres by original labels and an explicit s in Z/90Z.
 cache={}
 def admissible(lab,q0):
  key=(tuple(map(tuple,lab)),q0)
  if key in cache:return cache[key]
  out=[]
  for a in range(19):
   source_rows=t['rows'][a]['source_rows'][:1] if q0 else t['rows'][a]['source_rows']
   actual={(cc,s) for r in source_rows for h in r['roots'] for cc,s in h['labels_c_s_mod18']}
   if any((cc,z%18) in actual and [cc,z%30] in lab for cc in (1,3) for z in range(90)):out.append(a)
  cache[key]=out;return out
 group={};tot=0;after=0;final=0
 for a in p['R']:
  lab=p['labels'][a%10416];key=tuple(sorted({(cc,s%6) for cc,s in lab}));w=fibre(a)
  ga=admissible(lab,False);co=admissible(lab,True)
  if key not in group:group[key]=dict(parent_c_s_mod6=[list(x) for x in key],M0_rows=0,parent_M2_weight=0,generic_A_mod19=ga,conditional_A_mod19=co)
  group[key]['M0_rows']+=1;group[key]['parent_M2_weight']+=w
  tot+=w;after+=w*len(ga);final+=w*(190*len(ga)+len(co))
 need(c['groups']==[group[k] for k in sorted(group)],'all compressed parent weight groups')
 exp=dict(parent_M2_count=tot,parent_lift_to_M3=tot*19,after_generic_M3=after,generic_delta_M3=tot*19-after,parent_lift_to_M4=tot*19*191,after_generic_lift_to_M4=after*191,conditional_delta_M4=after*191-final,final_M4_count=final,total_delta_M4=tot*19*191-final)
 for k,v in exp.items():need(c[k]==v,'projection arithmetic '+k)
 need(tot==79511325)
 R=set(p['R'])
 def old(a):return a%M0 in R and a%725 not in p['bad725'] and (a%5!=4 or ((a+1)%336 in C5 and a%27 not in (9,18)))
 def new(a):return old(a) and a%19 in admissible(p['labels'][a%10416],a%191==0)
 n=next(a for a in range(2,10000,2) if new(a))
 need(c['least_positive_projection']==n==532)
 need(c['parent_below_new_min']==[a for a in range(2,n,2) if old(a)]==[382])
 need(c['remaining_examples']==[a for a in range(n,4000,2) if new(a)][:20])
 need(c['diagnostic_removed_below4000']==[a for a in range(2,4000,2) if old(a) and not new(a)])
 need(c['joint_period_enumerated'] is False and c['not_actual_NC3_count'] is True)

def exact_power(q):
 u,x=1,0;b,t=2,1;e=8*q+1
 while e:
  if e&1:u,x=u*b+3*x*t,u*t+x*b
  b,t=b*b+3*t*t,2*b*t;e//=2
 return (3*x-1)//2,u//2

def verify_boundary(c):
 need(c['A']==382 and c['q_offset']==3040 and c['q_step']==217740)
 need(c['q_step']%18145==0 and c['q_step']%12==0)
 d,y=exact_power(3040);need(3*(d-1)%382==0);B=3*(d-1)//382
 M=3*5*7*31*191;need(c['modulus']==M and c['prime_factors']==[3,5,7,31,191])
 loc=c['local'];r=org(d,y,382,loc['H'],M);z=(2*d*loc['H']-(d+382*y)**2)%M;ss=score(d,y,382,B,M)
 need(loc==dict(d=d%M,y=y%M,B=B%M,S=ss,z=z,**r))
 need(r['F']==0 and z*z%M==ss and r['n']==pow(2,c['s_positive'],M))
 need(c['c']==1 and c['s_positive']==228 and c['s_modulus']==1140)
 need(all(pow(2,1140,p)==1 for p in c['prime_factors']) and 228%15==3)
 for p,h in c['H_residues'].items():need(loc['H']%int(p)==h)
 need(loc['H']%31==12 and loc['H']%7==3 and loc['n']%31==8 and loc['n']%7==1)
 v=382*y;full=((((v+5*d)*v+10*d*d)*v+10*d**3)*v+5*d**4+d*d*B*y);lo=math.isqrt(full)
 need(lo*lo<full<(lo+1)**2,'exact nonsquare sample')
 exp=dict(d=d,y=y,B=B,S=full,floor_sqrt=lo,gap_above=full-lo*lo,gap_below=(lo+1)**2-full)
 for k,val in exp.items():need(int(c['sample'][k],16)==val,'sample '+k)
 need(c['integer_recovery'] is False and c['original_QP_integer_prime_powers_restored'] is False)

def verify_next(c,p,t):
 a=532;os=source(a);T=math.lcm(len(os),12)
 qrs=[q for q in range(T) if q%4==1 and q%3 in (0,1) and 3*(os[q%len(os)][0]-1)%a==0]
 need(c['A']==a and c['factorization']==[[2,2],[7,1],[19,1]])
 need(c['source_period_modA']==len(os) and c['joint_q_period']==T and c['necessary_q_residues']==qrs)
 need(c['source_modulus_for_B_mod19']==532*19 and c['same_c']==1)
 old=p['labels'][a%10416];rows=t['rows'][a%19]['source_rows'][0]['roots']
 sl=sorted({s for s in range(90) if [1,s%30] in old and any([1,s%18] in r['labels_c_s_mod18'] for r in rows)})
 need(c['F_only_s_mod90']==sl and c['same_s_mod90']==[s for s in sl if s%2])
 need(c['same_s_mod10']==1 and c['not_original_input'] is True and c['q_positive'] is True)
 d,y=source(31)[1];rs=[org(d,y,a,H,31) for H in range(31) if org(d,y,a,H,31)['F']==0 and org(d,y,a,H,31)['n'] in po(31)]
 need(len(rs)==1 and (rs[0]['H'],rs[0]['Q'],rs[0]['P'],rs[0]['n'])==(19,7,0,2))
 for key,val in [('original_H_mod31',19),('original_Q_mod31',7),('original_P_mod31',0),('original_n_mod31',2),('original_P_exponent_multiple',6),('original_H_mod3',0)]:need(c[key]==val)
 need(c['forced_original_P']=='31^a')
 need([s for s in range(1,7) if pow(31,s,7)==1]==[6])
 rs3=[org(1,1,a,H,3) for H in range(3) if org(1,1,a,H,3)['F']==0 and org(1,1,a,H,3)['P']==1]
 need([r['H'] for r in rs3]==[0] and rs3[0]['n']==2)

def verify_all(objs,p=None,verbose=True):
 if p is None:p=parent()
 need(len(objs)==8,'exactly eight certificate files')
 verify_sources(objs['01_source_periods.json']);verify_quotient(objs['02_true191_quotient.json']);verify_closure(objs['03_A382_closed.json'],p)
 tab=objs['04_FN19_shared_exponent.json'];verify_table(tab);verify_projection(objs['05_projection_delta.json'],p,tab);verify_boundary(objs['06_finite_family_boundary.json']);verify_next(objs['08_next_A532.json'],p,tab)
 c=objs['07_source_adoption.json']
 need(c['parent_sha256']==PARENT_SHA and c['parent_manifest_members']==p['manifest_members'])
 need(c['parent_M0_count']==len(p['R']) and c['parent_M0_sha256']==sha(canon(p['R'])))
 need(c['overview_sha256']==sha((ROOT/'inputs/OVERVIEW-2026-09-22.md.txt').read_bytes()))
 need(c['historical_math_rerun'] is False and c['repository_actions']=='none')
 if verbose:print('VERIFY PASS: 8 certificates; complete ring-source periods, actual integer quotients, original E/n, shared exponent CRT, weighted parent fibres, exact finite-family diagnosis.')
def load(d=ROOT/'certificates'):return {p.name:json.loads(p.read_text()) for p in sorted(d.glob('*.json'))}
def main():
 ap=argparse.ArgumentParser();ap.add_argument('--cert-dir',type=Path,default=ROOT/'certificates');a=ap.parse_args();verify_all(load(a.cert_dir))
if __name__=='__main__':main()
