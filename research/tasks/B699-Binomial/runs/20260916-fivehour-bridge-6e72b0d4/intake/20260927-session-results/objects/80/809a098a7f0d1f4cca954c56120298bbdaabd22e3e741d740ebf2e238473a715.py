#!/usr/bin/env python3
"""Receiver: quadratic-ring source multiplication, root lifting, original E/n.
No import of the generator. No old branch proofs rerun.
"""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import json,math,argparse
from collections import Counter
from pathlib import Path
from core import ROOT,canon,sha,need,parent,labels31,C5,PARENT_SHA

def source(m):
    # alpha^(8q+1) with alpha=2+sqrt(3); compute before dividing by two.
    u,x=2,1;rows=[];mod=2*m
    while True:
        need(u%2==0 and x%2==1,'source parity')
        r=[((3*x-1)//2)%m,(u//2)%m]
        if rows and r==[1,1]:return rows
        rows.append(r)
        u,x=(18817*u+32592*x)%mod,(10864*u+18817*x)%mod
        need(len(rows)<1000000,'no certified source return')

def org(d,y,a,H,m):
    v=a*y%m;Q=(d+v)%m;need(math.gcd(d,m)==1)
    h=(4*H+Q)*pow(d,-1,m)%m;P=(Q+h*v)%m
    E=(4*v*H*H-P*Q*Q+1)%m;n=(2*P*Q*H+2)%m
    return v,Q,h,P,E,n

def score(d,y,a,b,m):
    # Horner form, not generator's expanded summation.
    v=a*y%m
    return ((((v+5*d)*v+10*d*d)*v+10*d**3)*v+5*d**4+d*d*b*y)%m

def po(m):
    a=1;out=[]
    while True:
        a=2*a%m;out.append(a)
        if a==1:return out
        need(len(out)<=m)

def roots_lift(ss,m):
    rr=[x for x in range(73) if x*x%73==ss%73]
    if m==73:return rr
    need(m==5329)
    out=[]
    for x in rr:
        if x:
            t=((ss-x*x)//73)*pow(2*x,-1,73)%73;out.append(x+73*t)
        elif ss==0:out.extend(73*k for k in range(73))
    return sorted(out)

def verify73(c):
    need(c['A']==292 and c['same_c']==3 and c['same_s_mod5']==3)
    need(len(c['precisions'])==2)
    for level,m in zip(c['precisions'],(73,5329)):
        states=source(292*m);T=math.lcm(36,len(states));pp=po(m);order=len(pp)
        need(level['modulus']==m and level['source_modulus']==292*m)
        need(level['source_period']==len(states) and level['joint_q_period']==T)
        need(level['source_states_sha256']==sha(canon(states)))
        need(level['power2_order']==order and level['same_s_joint_modulus']==5*order)
        nmap={3*x%m:(i+1)%order for i,x in enumerate(pp)}
        counts={k:0 for k in ('entry','nonintegral','nonsquare','unit_square','nonzero_nonunit_square','zero_square','same_SFN_c3_rows','same_SFN_c3_roots')}
        keep=[];squareq=[];zeroq=[];low=[]
        for q in range(9,T,36):
            D,Y=states[q%len(states)];counts['entry']+=1
            if (3*D-3)%292:counts['nonintegral']+=1;continue
            b=((3*D-3)//292)%m;d,y=D%m,Y%m
            ss=score(d,y,292,b,m);zs=roots_lift(ss,m)
            if zs:
                squareq.append(q);counts['zero_square' if not ss else ('unit_square' if math.gcd(ss,m)==1 else 'nonzero_nonunit_square')]+=1
                if not ss:zeroq.append(q)
            else:counts['nonsquare']+=1
            v,Q=292*y%m,(d+292*y)%m
            need(math.gcd(d*Q*2,m)==1)
            restored=[]
            for z in zs:
                need(z*z%m==ss)
                H=(z+Q*Q)*pow(2*d,-1,m)%m
                vv,qq,h,P,E,n=org(d,y,292,H,m)
                if E or n not in nmap:continue
                N=(4*vv*H**3+H+qq)%m;need((2*N-n*qq)%m==0)
                sm=nmap[n];sc=(sm+order*((3-sm)*pow(order,-1,5)%5))%(5*order)
                need(sc%5==3 and 3*pow(2,sc,m)%m==n)
                restored.append(dict(z=z,H=H,N=N,n=n,h=h,P=P,s_mod_order=sm,s_mod_joint=sc))
            if restored:
                counts['same_SFN_c3_rows']+=1;counts['same_SFN_c3_roots']+=len(restored)
                keep.append(dict(q=q,d=d,y=y,B=b,S=ss,Q=Q,v=v,roots=restored))
            if m==73:
                need(b==(61+25*((q-9)//36))%73,'complete real quotient linear formula')
                low.append(dict(q=q,D=D,Y=Y,d=d,y=y,B=b,S=ss,all_square_roots=zs,restored=restored))
        need(level['counts']==counts,'true quotient counts')
        need(level['square_q']==squareq and level['zero_q']==zeroq)
        need(level['same_input_rows']==keep,'complete restored roots')
        need(level['all_low_rows']==(low if m==73 else None))

def verify_small(c,p):
    need(source(p)==[[1,1]] and c['source']==[1,1] and c['source_period']==1)
    order=len(po(p));need(c['p']==p and c['power2_order']==order)
    rows=[]
    for a in range(p):
        roots=[]
        for H in range(p):
            v,Q,h,P,E,n=org(1,1,a,H,p)
            if E:continue
            # N can be recovered without division by Q, even Q=0.
            N=(4*v*H**3+H+Q)%p;need((2*N-n*Q)%p==0)
            labels=[[c0,s] for c0 in (1,3) for s in range(order) if c0*pow(2,s,p)%p==n]
            roots.append(dict(H=H,N=N,Q=Q,h=h,P=P,n=n,c_s=labels))
        rows.append(dict(A_mod_p=a,roots=roots,allowed_c=sorted({c0 for r in roots for c0,s in r['c_s']})))
    need(rows==c['rows'],'small-prime complete original-core table')
    need(c['c3_allowed_A']==[r['A_mod_p'] for r in rows if 3 in r['allowed_c']])

def labels21():
    """Independently combine small primes by the original equations modulo 21."""
    tab={}
    for a in range(21):
        labels=set()
        for H in range(21):
            v,Q,h,P,E,n=org(1,1,a,H,21)
            if E:continue
            labels.update((c,s) for c in (1,3) for s in range(6) if c*pow(2,s,21)%21==n)
        tab[a]=labels
    return tab

def verify_gate(c,p,t3):
    need(c['A_modulus']==10416 and c['s_modulus']==30 and c['c_domain']==[1,3])
    t21=labels21();out3=[];out=[];byc={'1':[],'3':[]};lrows=[]
    for a in range(0,10416,2):
        r31=labels31(p['rows'][a%496]);c3=set(t3['rows'][a%3]['allowed_c'])
        if c3&{cc for cc,s in r31}:out3.append(a)
        ll=[[cc,s] for cc in (1,3) for s in range(30) if (cc,s%6) in t21[a%21] and (cc,s%5) in r31]
        if ll:
            out.append(a);lrows.append(dict(a=a,c_s_mod30=ll))
            for cc in (1,3):
                if any(x==cc for x,s in ll):byc[str(cc)].append(a)
    need(c['stage_FN3_allowed_A']==out3 and c['final_allowed_A']==out,'complete shared-c gate')
    need(c['final_allowed_by_c']==byc and c['labelled_s_rows']==lrows)
    need(c['counts']=={'stage_FN3_allowed_A':len(out3),'final_allowed_A':len(out)})

def verify_ledger(c,p,g):
    need(c['M0']==p['M0'] and c['M2']==p['M2'] and p['M0']%10416==0)
    R=p['R'];a3=set(g['stage_FN3_allowed_A']);a7=set(g['final_allowed_A'])
    sets=[R,[a for a in R if a%10416 in a3],[a for a in R if a%10416 in a7]]
    zcounts=[sum(z not in p['bad725'] and z%5==r for z in range(725)) for r in range(5)]
    M0=p['M0'];M1=M0*725;M2=3*M1
    need(M2==p['M2'])
    # Counts are independently obtained from actual CRT fibre predicates.
    def fibre(a):
        n=0
        for r in range(5):
            A0=a+M0*((r-a)*pow(M0,-1,725)%725)
            lifts=[(A0+M1*k)%M2 for k in range(3)]
            n+=zcounts[r]*sum(x%5!=4 or ((x+1)%336 in C5 and x%27 not in (9,18)) for x in lifts)
        return n
    totals=[]
    for label,rs,cert in zip(('direct_parent','after_shared_FN3','after_shared_FN7'),sets,c['stages']):
        groups=Counter('Q5_bad' if (a+1)%336 not in C5 else ('Q5_good_div9' if a%9==0 else 'Q5_good_not_div9') for a in rs)
        total=sum(fibre(a) for a in rs);totals.append(total)
        need(cert==dict(name=label,M0_rows=len(rs),groups=dict(groups),M2_count=total,M0_list_sha256=sha(canon(rs))),'nested CRT count')
    need(totals[0]==125334240)
    need(c['delta_FN3']==totals[0]-totals[1] and c['delta_FN7']==totals[1]-totals[2])
    need(c['total_newly_excluded']==totals[0]-totals[2] and c['remaining']==totals[2])
    rset=set(sets[-1]);pSet=set(R)
    def extra(a):return a%725 not in p['bad725'] and (a%5!=4 or ((a+1)%336 in C5 and a%27 not in (9,18)))
    minimum=next(a for a in range(2,10000,2) if a%M0 in rset and extra(a))
    need(c['least_positive_projection']==minimum)
    need(c['parent_below_new_min']==[a for a in range(2,minimum,2) if a%M0 in pSet and extra(a)])
    need(c['remaining_examples']==[a for a in range(minimum,3000,2) if a%M0 in rset and extra(a)][:20])
    need(c['joint_period_enumerated'] is False)

def exact_power(q):
    # Binary multiplication of alpha^(8q+1), not affine q-step iteration.
    n=8*q+1;u,x=1,0;b,t=2,1
    while n:
        if n&1:u,x=u*b+3*x*t,u*t+x*b
        b,t=b*b+3*t*t,2*b*t;n//=2
    return (3*x-1)//2,u//2

def verify_boundary(c,qt):
    need(c['A']==292 and c['q_offset']==369 and c['q_step']==191844)
    need(c['q_step']%qt['precisions'][1]['source_period']==0 and c['q_step']%36==0)
    d,y=exact_power(369);need(3*(d-1)%292==0);b=3*(d-1)//292
    m=c['modulus'];need(m==165199);loc=c['local'];H=loc['H']
    v,Q,h,P,E,n=org(d,y,292,H,m);N=(4*v*H**3+H+Q)%m;z=(2*d*H-Q*Q)%m
    need(E==0 and (2*N-n*Q)%m==0)
    need(loc['c']==3 and loc['s_positive']==2238 and loc['s_modulus']==3285)
    need(3*pow(2,2238,m)%m==n and 2238%5==3 and H%31==22)
    exp=dict(d=d%m,y=y%m,B=b%m,v=v,Q=Q,H=H,h=h,P=P,N=N,n=n,z=z,S=score(d,y,292,b,m),c=3,s_positive=2238,s_modulus=3285)
    need(loc==exp and z*z%m==loc['S'],'same-original-core finite witness')
    vv=292*y;ss=((((vv+5*d)*vv+10*d*d)*vv+10*d**3)*vv+5*d**4+d*d*b*y)
    lo=math.isqrt(ss);need(lo*lo<ss<(lo+1)**2)
    sample=c['exact_sample']
    for k,vv in dict(d=d,y=y,B=b,S=ss,floor_sqrt=lo,gap_up=ss-lo*lo,gap_down=(lo+1)**2-ss).items():need(int(sample[k],16)==vv,'exact integer boundary')
    need(c['integer_recovery'] is False)

def verify_all(objs,verbose=True):
    p=parent();q=objs['01_true73_quotient.json'];t3=objs['02_FN3_same_c.json'];t7=objs['03_FN7_same_c.json']
    verify73(q);verify_small(t3,3);verify_small(t7,7)
    close=objs['04_A292_closed.json']
    need(close['adopted_FN31_row']==p['rows'][292] and labels31(p['rows'][292])=={(3,3)})
    need(close['A']==292 and close['adopted_c']==3 and close['adopted_s_mod5']==3)
    need(close['all_F_roots']==t3['rows'][1]['roots'] and close['required_n_mod3']==0 and close['allowed_n_mod3']==[1,2] and close['intersection']==[])
    g=objs['05_shared_c_gate.json'];verify_gate(g,p,t3);verify_ledger(objs['06_projection_delta.json'],p,g)
    verify_boundary(objs['07_finite_family_boundary.json'],q)
    s=objs['08_source_adoption.json']
    need(s['parent_zip_sha256']==PARENT_SHA and s['parent_manifest_members']==p['parent_hash_members'])
    need(s['current_M0_list_sha256']==sha(canon(p['R'])) and s['overview_sha256']==sha((ROOT/'inputs/OVERVIEW-2026-09-22.md.txt').read_bytes()))
    n=objs['09_next_A382.json'];st=source(191);T=math.lcm(12,len(st))
    need(n['source191_states']==st and n['source191_period']==len(st) and n['joint_q_modulus']==T)
    need(n['necessary_q_residues']==[r for r in range(T) if r%4==0 and r%3 in (0,1) and st[r%len(st)][0]==1])
    need(n['source191_d1_indices']==[i for i,(d,y) in enumerate(st) if d==1])
    need(n['parent_FN31_row']==p['rows'][382] and n['s_mod30_allowed']==next(r['c_s_mod30'] for r in g['labelled_s_rows'] if r['a']==382))
    need(n['same_c']==1 and n['s_mod15']==3 and n['original_H_mod31']==12 and n['original_H_mod7']==3)
    if verbose:print('VERIFY PASS: 9 certificates; quadratic-ring cycles, root lifts, original E/n, shared labels, CRT fibres, exact witness.')

def load(path=ROOT/'certificates'):return {p.name:json.loads(p.read_text()) for p in sorted(path.glob('*.json'))}
def main():
    ap=argparse.ArgumentParser();ap.add_argument('--cert-dir',type=Path,default=ROOT/'certificates');a=ap.parse_args();verify_all(load(a.cert_dir))
if __name__=='__main__':main()
