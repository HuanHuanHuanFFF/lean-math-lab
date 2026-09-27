#!/usr/bin/env python3
"""New exact certificates. Standard library; all finite periods are complete."""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import argparse,json,math
from collections import defaultdict,Counter
from pathlib import Path
from core import ROOT,canon,sha,need,parent,labels31,weight,C5,PARENT_SHA

def step(d,y,m=None):
    d,y=18817*d+32592*y+9408,10864*d+18817*y+5432
    return (d,y) if m is None else (d%m,y%m)
def orbit(m):
    d=y=1;states=[]
    while True:
        states.append([d,y]);d,y=step(d,y,m)
        if (d,y)==(1,1):return states
        need(len(states)<1000000,'unbounded diagnostic orbit')
def exact(q):
    d=y=1
    for _ in range(q):d,y=step(d,y)
    return d,y
def S(d,y,a,b,m):
    v=a*y
    vS=v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*b*y
    return vS if m is None else vS%m
def FN(d,y,a,H,m):
    v=a*y%m;Q=(d+v)%m
    return (4*d*v*H*H-4*v*Q*Q*H-Q**4+d)%m,(4*v*H**3+H+Q)%m,Q
def powers(base,m):
    out=[];x=1
    while True:
        x=x*base%m
        need(x not in out,'unexpected power repeat');out.append(x)
        if x==1:return out

def crt(a,m,b,n):
    need(math.gcd(m,n)==1)
    return (a+m*((b-a)*pow(m,-1,n)%n))%(m*n)

def true73():
    data={'schema':'A292-actual-73-quotient-v1','A':292,'actual_B':'3(d-1)/292','entry_q_mod36':9,'entry_q_positive':True,'same_c':3,'same_s_mod5':3,'precisions':[]}
    for m in (73,5329):
        os=orbit(292*m);T=math.lcm(36,len(os));square=defaultdict(list)
        for z in range(m):square[z*z%m].append(z)
        pp=powers(2,m);ns={3*z%m:(i+1)%len(pp) for i,z in enumerate(pp)}
        counts={k:0 for k in ('entry','nonintegral','nonsquare','unit_square','nonzero_nonunit_square','zero_square','same_SFN_c3_rows','same_SFN_c3_roots')}
        low=[];kept=[];sq=[];zeros=[]
        for q in range(9,T,36):
            D,Y=os[q%len(os)];counts['entry']+=1
            if 3*(D-1)%292:counts['nonintegral']+=1;continue
            b=3*(D-1)//292%m;d,y=D%m,Y%m;v=292*y%m;Q=(d+v)%m;s=S(d,y,292,b,m)
            need(math.gcd(2*d*Q,m)==1)
            zs=square[s]
            if not zs:counts['nonsquare']+=1
            else:
                sq.append(q)
                kind='zero_square' if not s else ('unit_square' if s%73 else 'nonzero_nonunit_square');counts[kind]+=1
                if not s:zeros.append(q)
            rec=[]
            for z in zs:
                H=(z+Q*Q)*pow(2*d,-1,m)%m;f,N,_=FN(d,y,292,H,m);n=2*N*pow(Q,-1,m)%m
                if f or n not in ns:continue
                sm=ns[n];sc=crt(sm,len(pp),3,5)
                h=(4*H+Q)*pow(d,-1,m)%m;P=(Q+h*v)%m
                need((4*v*H*H-P*Q*Q+1)%m==0 and (2*P*Q*H+2-n)%m==0)
                rec.append(dict(z=z,H=H,N=N,n=n,h=h,P=P,s_mod_order=sm,s_mod_joint=sc))
            if rec:
                counts['same_SFN_c3_rows']+=1;counts['same_SFN_c3_roots']+=len(rec)
                kept.append(dict(q=q,d=d,y=y,B=b,S=s,Q=Q,v=v,roots=rec))
            if m==73:low.append(dict(q=q,D=D,Y=Y,d=d,y=y,B=b,S=s,all_square_roots=zs,restored=rec))
        data['precisions'].append(dict(modulus=m,source_modulus=292*m,source_period=len(os),joint_q_period=T,source_states_sha256=sha(canon(os)),power2_order=len(pp),same_s_joint_modulus=5*len(pp),counts=counts,square_q=sq,zero_q=zeros,same_input_rows=kept,all_low_rows=low if m==73 else None))
    return data

def small(p):
    need(orbit(p)==[[1,1]],'constant small source')
    order=len(powers(2,p));rows=[]
    for a in range(p):
        good=[]
        for H in range(p):
            f,N,Q=FN(1,1,a,H,p)
            if f:continue
            h=(4*H+Q)%p;P=(Q+h*a)%p
            n=(2*P*Q*H+2)%p
            need((2*N-n*Q)%p==0)
            opts=[[c,s] for c in (1,3) for s in range(order) if c*pow(2,s,p)%p==n]
            good.append(dict(H=H,N=N,Q=Q,h=h,P=P,n=n,c_s=opts))
        rows.append(dict(A_mod_p=a,roots=good,allowed_c=sorted({c for r in good for c,s in r['c_s']})))
    return dict(schema='constant-source-same-original-c-v1',p=p,source_period=1,source=[1,1],power2_order=order,rows=rows,Q_zero_policy='Use original n=2PQH+2, never divide Q.',c3_allowed_A=[r['A_mod_p'] for r in rows if 3 in r['allowed_c']])

def options(t,a):
    return {(c,s) for r in t['rows'][a%t['p']]['roots'] for c,s in r['c_s']}

def shared(p,t3,t7):
    out={'schema':'same-c-3-7-31-CRT-v1','A_modulus':10416,'s_modulus':30,'c_domain':[1,3],'stage_FN3_allowed_A':[],'final_allowed_A':[],'final_allowed_by_c':{'1':[],'3':[]},'labelled_s_rows':[]}
    for a in range(0,10416,2):
        l31=labels31(p['rows'][a%496]);l3=options(t3,a);l7=options(t7,a)
        if {c for c,s in l31}&{c for c,s in l3}:out['stage_FN3_allowed_A'].append(a)
        lab=[[c,s] for c in (1,3) for s in range(30) if (c,s%5) in l31 and (c,s%2) in l3 and (c,s%3) in l7]
        if lab:
            out['final_allowed_A'].append(a)
            for c in (1,3):
                if any(cc==c for cc,s in lab):out['final_allowed_by_c'][str(c)].append(a)
            out['labelled_s_rows'].append({'a':a,'c_s_mod30':lab})
    out['counts']={k:len(out[k]) for k in ('stage_FN3_allowed_A','final_allowed_A')}
    return out

def ledger(p,gate):
    g3=set(gate['stage_FN3_allowed_A']);gg=set(gate['final_allowed_A']);R=p['R'];stages=[]
    lists=[R,[a for a in R if a%10416 in g3],[a for a in R if a%10416 in gg]]
    for name,rs in zip(('direct_parent','after_shared_FN3','after_shared_FN7'),lists):
        groups=Counter('Q5_bad' if (a+1)%336 not in C5 else ('Q5_good_div9' if a%9==0 else 'Q5_good_not_div9') for a in rs)
        stages.append(dict(name=name,M0_rows=len(rs),groups=dict(groups),M2_count=sum(weight(a) for a in rs),M0_list_sha256=sha(canon(rs))))
    R0=set(R);Rnew=set(lists[-1])
    def extra(a):return a%725 not in p['bad725'] and (a%5!=4 or ((a+1)%336 in C5 and a%27 not in (9,18)))
    n=next(a for a in range(2,10000,2) if a%p['M0'] in Rnew and extra(a))
    return dict(schema='same-M2-direct-parent-new-difference-v1',M0=p['M0'],M2=p['M2'],new_modulus=10416,new_modulus_divides_M0=p['M0']%10416==0,stages=stages,delta_FN3=stages[0]['M2_count']-stages[1]['M2_count'],delta_FN7=stages[1]['M2_count']-stages[2]['M2_count'],total_newly_excluded=stages[0]['M2_count']-stages[2]['M2_count'],remaining=stages[2]['M2_count'],least_positive_projection=n,parent_below_new_min=[a for a in range(2,n,2) if a%p['M0'] in R0 and extra(a)],remaining_examples=[a for a in range(n,3000,2) if a%p['M0'] in Rnew and extra(a)][:20],joint_period_enumerated=False,not_counted=['actual NC3 inputs','full historical net difference','all other shared c/s/H restrictions','integer recovery of n,j,P,Q','true73 finite row counts'])

def closure(p,t3):
    r=p['rows'][292]
    need(labels31(r)=={(3,3)})
    return dict(schema='A292-full-branch-contradiction-v1',A=292,adopted_FN31_row=r,adopted_c=3,adopted_s_mod5=3,new_source_mod3=[1,1],v_mod3=1,Q_mod3=2,F_mod3='H*(H-1)',all_F_roots=t3['rows'][1]['roots'],required_n_mod3=0,allowed_n_mod3=[1,2],intersection=[],coverage='All positive Pell rows in the adopted core with A=292; no exponent or height cutoff. Does not require the 73-side restrictions for the contradiction.')

def boundary(p,qt):
    m=5329;q=369;M=31*m;rec=next(r for r in qt['precisions'][1]['same_input_rows'] if r['q']==q);rr=rec['roots'][0]
    d,y=exact(q);need(3*(d-1)%292==0);B=3*(d-1)//292
    H=crt(rr['H'],m,22,31);h=(4*H+(d+292*y))*pow(d,-1,M)%M;Q=(d+292*y)%M;v=292*y%M;P=(Q+h*v)%M;N=(4*v*H**3+H+Q)%M;n=(2*P*Q*H+2)%M;s=rr['s_mod_joint']
    need(s==2238 and n==3*pow(2,s,M)%M)
    bb=B%M;actualS=S(d,y,292,B,None);lo=math.isqrt(actualS);need(lo*lo<actualS<(lo+1)**2)
    z=(2*d*H-Q*Q)%M
    return dict(schema='finite-73square-times31-family-already-excluded-v1',A=292,q_offset=q,q_step=qt['precisions'][1]['joint_q_period'],k_domain='all k>=0',source_period_for_true73square=qt['precisions'][1]['source_period'],modulus=M,local=dict(d=d%M,y=y%M,B=bb,v=v,Q=Q,H=H,h=h,P=P,N=N,n=n,z=z,S=S(d,y,292,B,M),c=3,s_positive=s,s_modulus=3285),all_original_core_congruences_pass=True,integer_recovery=False,deleted_by='same c=3, new FN3; never a remaining NC3 candidate',missing=['integer square','integer h,H solving exact equations','original complete prime powers P,Q with distinct odd prime bases','exact n=3*2^s','original j and noCommon restoration'],exact_sample=dict(q=q,encoding='hexadecimal integers',d=hex(d),y=hex(y),B=hex(B),S=hex(actualS),floor_sqrt=hex(lo),gap_up=hex(actualS-lo*lo),gap_down=hex((lo+1)**2-actualS)))

def nextentry(p,gate):
    a=382;os=orbit(191);T=math.lcm(len(os),12);q=[k for k in range(T) if k%4==0 and k%3 in (0,1) and os[k%len(os)][0]==1]
    lab=next(r['c_s_mod30'] for r in gate['labelled_s_rows'] if r['a']==382)
    return dict(schema='next-A382-necessary-entry-not-restoration-v1',A=a,actual_B='3(d-1)/382',source_modulus_for_B_mod191=72962,adopted_FN5_q_mod3=[0,1],TRI4_q_mod4=0,source191_period=len(os),source191_states=os,source191_d1_indices=[i for i,(d,y) in enumerate(os) if d==1],joint_q_modulus=T,necessary_q_residues=q,q_positive=True,same_c=1,s_mod15=3,s_mod30_allowed=lab,original_H_mod7=3,original_H_mod31=12,n_mod31=8,parent_FN31_row=p['rows'][382],no_original_input_constructed=True,next_check='Restore actual B mod191 from d mod72962 on q=0 or760(mod1140), positive q, keeping c=1 and s=3(mod15); connect S,F/N and original full powers.')

def sources(p):
    return dict(schema='source-adoption-v1',parent_zip_sha256=PARENT_SHA,parent_manifest_members=p['parent_hash_members'],parent_math_rerun=False,adopted_current_M0_rows=71805,current_M0_list_sha256=sha(canon(p['R'])),overview_sha256=sha((ROOT/'inputs/OVERVIEW-2026-09-22.md.txt').read_bytes()),scope='historical NC3 to balanced core remains an author-level prerequisite',frozen_parent_labels='FN31 labels and Q31/M0/725/Q5/mod27 predicates adopted from direct parent, not silently generalized',external_theorem_dependency=False,repository_access=False)

def allcert():
    p=parent();qt=true73();t3=small(3);t7=small(7);g=shared(p,t3,t7)
    return {'01_true73_quotient.json':qt,'02_FN3_same_c.json':t3,'03_FN7_same_c.json':t7,'04_A292_closed.json':closure(p,t3),'05_shared_c_gate.json':g,'06_projection_delta.json':ledger(p,g),'07_finite_family_boundary.json':boundary(p,qt),'08_source_adoption.json':sources(p),'09_next_A382.json':nextentry(p,g)}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,default=ROOT/'certificates');args=ap.parse_args();args.out.mkdir(parents=True,exist_ok=True)
    for n,o in allcert().items():
        b=canon(o);(args.out/n).write_bytes(b);print(n,sha(b))
    print('GENERATE PASS: 9 certificates')
if __name__=='__main__':main()
