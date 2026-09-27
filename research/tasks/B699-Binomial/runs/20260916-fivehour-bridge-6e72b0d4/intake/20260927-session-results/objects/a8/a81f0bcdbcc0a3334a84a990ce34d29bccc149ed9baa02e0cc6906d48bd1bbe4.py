#!/usr/bin/env python3
"""New finite certificates only. Complete periods, exact quotient, shared exponent."""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import json,math,argparse
from collections import defaultdict,Counter
from pathlib import Path
from common import ROOT,PARENT_SHA,C5,need,canon,sha,parent

def step(d,y,m=None):
 d,y=18817*d+32592*y+9408,10864*d+18817*y+5432
 return [d,y] if m is None else [d%m,y%m]
def orbit(m):
 d=y=1;out=[]
 while True:
  out.append([d,y]);d,y=step(d,y,m)
  if [d,y]==[1,1]:return out
  need(len(out)<1000000,'period safety cap reached')
def powers(m):
 out=[];x=1
 while True:
  out.append(x);x=x*2%m
  if x==1:return out
  need(len(out)<m,'power cycle not returned')
def square(d,y,A,B,m=None):
 v=A*y;s=v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*B*y
 return s if m is None else s%m
def FN(d,y,a,H,m):
 v=a*y%m;Q=(d+v)%m
 F=(4*d*v*H*H-4*v*Q*Q*H-Q**4+d)%m;N=(4*v*H**3+H+Q)%m
 h=(4*H+Q)*pow(d,-1,m)%m;P=(Q+h*v)%m;n=(2*P*Q*H+2)%m
 return dict(H=H,v=v,Q=Q,F=F,N=N,h=h,P=P,n=n)
def crt(a,m,b,n):
 g=math.gcd(m,n);need((b-a)%g==0,'CRT incompatible')
 return (a+m*((b-a)//g*pow(m//g,-1,n//g)%(n//g)))%math.lcm(m,n)
def exact(q):
 d=y=1
 for _ in range(q):d,y=step(d,y)
 return d,y

def source_cert():
 return dict(schema='complete-source-and-power-cycles-v1',affine_determinant=18817**2-32592*10864,source19=orbit(19),source191=orbit(191),source191_d1=[i for i,(d,y) in enumerate(orbit(191)) if d==1],power2_mod19=powers(19),power2_mod191=powers(191),period19=5,period191=95,division_policy='All source coordinates are integer before reduction; q=0 is a periodic residue, original q>=1.')

def quotient():
 m=191;A=382;os=orbit(A*m);T=math.lcm(len(os),1140);roots=defaultdict(list)
 for z in range(m):roots[z*z%m].append(z)
 pp=powers(m);logs={n:s for s,n in enumerate(pp)};rows=[];cnt=Counter()
 for q in range(0,T,380):
  if q%1140 not in (0,760):continue
  D,Y=os[q%len(os)];need(3*(D-1)%A==0,'actual integer quotient')
  B=3*(D-1)//A%m;d,y=D%m,Y%m;v=A*y%m;Q=(d+v)%m;s=square(d,y,A,B,m)
  need(B==49*(q//380)%m and (d,y,v,Q)==(1,1,0,1),'full quotient identity')
  cnt['entry']+=1
  if roots[s]:cnt['zero_square' if s==0 else 'unit_square']+=1
  else:cnt['nonsquare']+=1
  restored=[];tested=[]
  for z in roots[s]:
   H=(z+Q*Q)*pow(2*d,-1,m)%m;r=FN(d,y,A,H,m);need(r['F']==0,'square must link F')
   n=r['n'];log=logs.get(n)
   reason='not_a_power_of_2' if log is None else ('shared_exponent_conflict' if (log-3)%5 else 'kept')
   rec=dict(z=z,**r,power2_exponent_mod95=log,status=reason)
   if reason=='kept':
    sm=crt(log,95,3,15);rec['same_s_mod285']=sm;restored.append(rec)
   tested.append(rec)
  if restored:cnt['kept_rows']+=1;cnt['kept_roots']+=len(restored)
  rows.append(dict(q=q,D=D,Y=Y,d=d,y=y,B=B,S=s,all_square_roots=roots[s],tested_roots=tested))
 return dict(schema='A382-true-integer191-quotient-v1',A=A,source_modulus=A*m,source_period=len(os),source_states_sha256=sha(canon(os)),joint_q_period=T,entry_q_mod1140=[0,760],q_positive=True,modulus=m,formula_B='49*(q/380) mod191',same_c=1,s_mod15=3,same_s_modulus=285,counts=dict(cnt),zero_square_q=[r['q'] for r in rows if r['S']==0],B_zero_q=[r['q'] for r in rows if r['B']==0],kept_q=[r['q'] for r in rows if any(t['status']=='kept' for t in r['tested_roots'])],rows=rows,no_Q_or_d_nonunit_in_this_source=True,precision_claim='Only the complete mod191 ring; no arbitrary-precision lifting claimed.')

def closure():
 rs=[FN(1,1,382,H,19) for H in range(19) if FN(1,1,382,H,19)['F']==0]
 return dict(schema='A382-all-positive-rows-closed-v1',A=382,A_mod19=2,source191_requires_q_mod95=0,hence_q_mod5=0,source_mod19=[1,1],v_mod19=2,Q_mod19=3,F_coefficients_low_to_high=[15,4,8],F_factor='8*(H-10)*(H-18) mod19',roots=rs,required_c=1,required_s_mod3=0,allowed_n_from_s=sorted({pow(2,3*k,19) for k in range(6)}),recovered_n=[r['n'] for r in rs],recovered_s_mod18=[powers(19).index(r['n']) for r in rs],contradiction_intersection=[],scope='All original NC3 inputs entering the adopted balanced core with A382. No bound on q or any original prime-power exponent. No claim of full i3 closure.')

def table19():
 os=orbit(19);pp=powers(19);rows=[]
 for a in range(19):
  rr=[]
  for q,(d,y) in enumerate(os):
   rs=[]
   for H in range(19):
    rec=FN(d,y,a,H,19)
    if rec['F']:continue
    rec['labels_c_s_mod18']=[[c,s] for c in (1,3) for s,x in enumerate(pp) if c*x%19==rec['n']]
    rs.append(rec)
   rr.append(dict(q_mod5=q,d=d,y=y,roots=rs))
  alltags=sorted({(c,s%6) for r in rr for x in r['roots'] for c,s in x['labels_c_s_mod18']})
  q0tags=sorted({(c,s%6) for x in rr[0]['roots'] for c,s in x['labels_c_s_mod18']})
  rows.append(dict(A_mod19=a,source_rows=rr,all_q_tags_mod6=alltags,q0_tags_mod6=q0tags))
 return dict(schema='FN19-same-c-and-overlapping-s-v1',A_modulus=19,q_modulus=5,H_modulus=19,positive_power_period=18,old_s_period=30,joint_s_period=90,overlap_modulus=6,rows=rows,conditional_source='191|A implies q=0(mod95), so use q0 tags instead of existential qmod5.',nonunit_Q_policy='Use original h,P,E and n=2PQH+2. Do not divide Q. P=0 residues are not rejected solely for nonunit status.',B_policy='No B is invented. This is a weaker necessary original F/n gate; actual B and original prime-power recovery remain mandatory.')

def weight(a):return 1692 if (a+1)%336 not in C5 else (1837 if a%9==0 else 2127)
def table_allowed(table,lab,q0=False):
 lab={(c,s%6) for c,s in lab}
 key='q0_tags_mod6' if q0 else 'all_q_tags_mod6'
 return [r['A_mod19'] for r in table['rows'] if lab&{tuple(x) for x in r[key]}]
def projection(p,tab):
 groups={}
 for a in p['R']:
  lab=sorted({(c,s%6) for c,s in p['labels'][a%10416]});key=tuple(lab)
  if key not in groups:groups[key]=dict(parent_c_s_mod6=lab,M0_rows=0,parent_M2_weight=0,generic_A_mod19=table_allowed(tab,lab),conditional_A_mod19=table_allowed(tab,lab,True))
  groups[key]['M0_rows']+=1;groups[key]['parent_M2_weight']+=weight(a)
 G=[groups[k] for k in sorted(groups)];base=sum(weight(a) for a in p['R']);after=sum(g['parent_M2_weight']*len(g['generic_A_mod19']) for g in G)
 final=sum(g['parent_M2_weight']*(190*len(g['generic_A_mod19'])+len(g['conditional_A_mod19'])) for g in G)
 M2=p['M2'];R=set(p['R'])
 def old(a):return a%p['M0'] in R and a%725 not in p['bad725'] and (a%5!=4 or ((a+1)%336 in C5 and a%27 not in (9,18)))
 def new(a):return old(a) and a%19 in table_allowed(tab,p['labels'][a%10416],a%191==0)
 mini=next(a for a in range(2,10000,2) if new(a))
 return dict(schema='explicit-period-lifts-no-joint-enumeration-v1',M0=p['M0'],parent_M2=M2,generic_M3=19*M2,final_M4=19*191*M2,coprime_checks=[math.gcd(M2,19),math.gcd(M2*19,191)],parent_M2_count=base,parent_lift_to_M3=base*19,after_generic_M3=after,generic_delta_M3=base*19-after,parent_lift_to_M4=base*19*191,after_generic_lift_to_M4=after*191,conditional_delta_M4=after*191-final,final_M4_count=final,total_delta_M4=base*19*191-final,groups=G,least_positive_projection=mini,parent_below_new_min=[a for a in range(2,mini,2) if old(a)],remaining_examples=[a for a in range(mini,4000,2) if new(a)][:20],diagnostic_removed_below4000=[a for a in range(2,4000,2) if old(a) and not new(a)],joint_period_enumerated=False,not_actual_NC3_count=True,historical_all_consumers_rerun=False,not_counted=['actual B/q/complete P,Q or exact n,j restoration','further source-period or Q19-prime-power refinements','full historical net difference'])

def boundary(qcert):
 q=3040;stepq=qcert['joint_q_period'];ms=[3,5,7,31,191];M=math.prod(ms);s=228
 # Preserve one and the same H and exponent over every declared factor.
 Hr={3:1,5:3,7:3,31:12,191:119};H=0;mh=1
 for m in ms:H=crt(H,mh,Hr[m],m);mh*=m
 d,y=exact(q);need(3*(d-1)%382==0);B=3*(d-1)//382
 rec=FN(d,y,382,H,M);z=(2*d*H-(d+382*y)**2)%M;ss=square(d,y,382,B,M)
 need(rec['F']==0 and z*z%M==ss and rec['n']==pow(2,s,M),'same-exponent finite witness')
 full=square(d,y,382,B);lo=math.isqrt(full);need(lo*lo<full<(lo+1)**2,'diagnostic nonsquare')
 return dict(schema='actual-quotient-finite-family-already-deleted-v1',A=382,q_offset=q,q_step=stepq,k_nonnegative=True,modulus=M,prime_factors=ms,s_positive=s,s_modulus=1140,c=1,local=dict(d=d%M,y=y%M,B=B%M,S=ss,z=z,**rec),H_residues=Hr,original_QP_integer_prime_powers_restored=False,integer_recovery=False,deleted_by='A382 original n mod19 contradicts shared 3|s',missing=['integer square and positive integer h,H','original complete P,Q prime powers with distinct odd bases','exact n=2^s','original j and noCommon restoration'],sample=dict(q=q,encoding='hexadecimal',d=hex(d),y=hex(y),B=hex(B),S=hex(full),floor_sqrt=hex(lo),gap_above=hex(full-lo*lo),gap_below=hex((lo+1)**2-full)))

def nextentry(p,tab):
 a=532;os=orbit(a);T=math.lcm(len(os),12)
 qr=[q for q in range(T) if q%4==1 and q%3 in (0,1) and 3*(os[q%len(os)][0]-1)%a==0]
 labs=[]
 for c,s in p['labels'][a%10416]:
  for r in tab['rows'][a%19]['source_rows'][0]['roots']:
   for cc,e in r['labels_c_s_mod18']:
    if c==cc and (s-e)%6==0:labs.append([c,crt(s,30,e,18)])
 return dict(schema='next-A532-necessary-entry-only-v1',A=a,factorization=[[2,2],[7,1],[19,1]],actual_B='3(d-1)/532',source_modulus_for_B_mod19=10108,adopted_TRI4_q_mod4=1,adopted_FN5_q_mod3=[0,1],source_period_modA=len(os),joint_q_period=T,necessary_q_residues=qr,q_positive=True,same_c=1,F_only_s_mod90=sorted({s for c,s in labs}),same_s_mod90=sorted({s for c,s in labs if s%2}),same_s_mod10=1,original_H_mod31=19,original_Q_mod31=7,original_P_mod31=0,original_n_mod31=2,forced_original_P='31^a',original_P_exponent_multiple=6,original_H_mod3=0,not_original_input=True,next_falsifiable_check='Restore B mod19 from d mod10108 for q=25 or45(mod60); 19|A, retain zero roots, couple same s and original F/n, and do not replace actual quotient by a free residue.')

def allcert():
 p=parent();sc=source_cert();qt=quotient();tb=table19()
 prov=dict(schema='frozen-source-adoption-v1',parent_sha256=PARENT_SHA,parent_manifest_members=p['manifest_members'],parent_M0_count=len(p['R']),parent_M0_sha256=sha(canon(p['R'])),overview_sha256=sha((ROOT/'inputs/OVERVIEW-2026-09-22.md.txt').read_bytes()),historical_math_rerun=False,external_theorem_dependency=False,repository_actions='none',caveat='NC3 to this balanced core remains an adopted author-level prerequisite.')
 return {'01_source_periods.json':sc,'02_true191_quotient.json':qt,'03_A382_closed.json':closure(),'04_FN19_shared_exponent.json':tb,'05_projection_delta.json':projection(p,tb),'06_finite_family_boundary.json':boundary(qt),'07_source_adoption.json':prov,'08_next_A532.json':nextentry(p,tb)}
def main():
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,default=ROOT/'certificates');a=ap.parse_args();a.out.mkdir(parents=True,exist_ok=True)
 for name,obj in allcert().items():
  blob=canon(obj);(a.out/name).write_bytes(blob);print(name,sha(blob),len(blob))
 print('GENERATE PASS: 8 exact certificates')
if __name__=='__main__':main()
