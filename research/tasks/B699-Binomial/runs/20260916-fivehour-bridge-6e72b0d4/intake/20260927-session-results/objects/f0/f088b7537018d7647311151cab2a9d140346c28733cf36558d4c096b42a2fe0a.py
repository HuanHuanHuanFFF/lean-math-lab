#!/usr/bin/env python3
"""Deterministic exact certificates for A144 / same-input FN5 / Q5.
Python standard library only. No parent mathematics is rerun.
"""
from __future__ import annotations
import argparse, hashlib, json, math, zipfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
PREFIX='B699-D-i3-20260926-A100-QUOTIENT5-PERIOD29/'
PARENT_SHA='1e075f0a27c2e0d9709f3dcbbc35b5a670b9ea129a57a74429e49986cfca1a08'

def sha(data:bytes)->str:return hashlib.sha256(data).hexdigest()
def canon(obj)->bytes:return (json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def nxt(d:int,y:int,mod:int|None=None):
    a,b=18817*d+32592*y+9408,10864*d+18817*y+5432
    return (a%mod,b%mod) if mod else (a,b)
def orbit(mod:int):
    states=[];d=y=1
    while True:
        states.append([d,y]);d,y=nxt(d,y,mod)
        if (d,y)==(1,1):return states
        if len(states)>1_000_000:raise RuntimeError('unexpected period')
def S(d:int,y:int,a:int,b:int,m:int|None=None):
    v=a*y
    ans=v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*b*y
    return ans%m if m else ans
def F(d,v,Q,H,m):return (4*d*v*H*H-4*v*Q*Q*H-Q**4+d)%m
def N(v,Q,H,m):return (4*v*H**3+H+Q)%m

def quotient_cert():
    ans={'schema':'A144-actual-quotient-complete-period-v1','A':144,'B':'(d-1)/48','adopted_q_mod12':[4,8],'precision':[]}
    for m in [5,25,125]:
        states=orbit(48*m);T=math.lcm(12,len(states));rows=[]
        for q in range(T):
            if q%12 not in (4,8):continue
            d,y=states[q%len(states)]
            assert (d-1)%48==0
            b=(d-1)//48%m;s=S(d,y,144,b,m)
            roots=[x for x in range(m) if x*x%m==s]
            rows.append({'q':q,'d_at_lift':d,'y_at_lift':y,'B_mod':b,'S_mod':s,'square_roots':roots})
        ans['precision'].append({'modulus':m,'source_modulus':48*m,'source_period':len(states),'joint_period':T,'source_orbit':states,'rows':rows,'surviving_q':[r['q'] for r in rows if r['square_roots']]})
    return ans

def fn5_cert():
    states=orbit(5);rows=[]
    for a in range(5):
        for q,(d,y) in enumerate(states):
            v=a*y%5;Q=(d+v)%5
            vals=[{'H':h,'F':F(d,v,Q,h,5),'N':N(v,Q,h,5)} for h in range(5)]
            allowed=[x['H'] for x in vals if x['F']==0 and ((x['N']==0)==(Q==0))]
            rows.append({'A_mod5':a,'q_mod3':q,'d':d,'y':y,'v':v,'Q':Q,'F_coeff_ascending':[(d-Q**4)%5,(-4*v*Q*Q)%5,(4*d*v)%5], 'H_values':vals,'allowed_H':allowed})
    return {'schema':'same-input-FN5-complete-necessary-table-v1','source_orbit':states,'rows':rows,
            'allowed_q_by_A_mod5':{str(a):[r['q_mod3'] for r in rows if r['A_mod5']==a and r['allowed_H']] for a in range(5)},
            'zero_Q_policy':'Require N=0; never divide by Q. Nonzero Q requires N nonzero because 5 does not divide c*2^s.',
            'not_sufficient_for_original_recovery':True}

def closure_cert(qc,fc):
    rows=[]
    for qr in qc['precision'][0]['rows']:
        q=qr['q'];fr=next(r for r in fc['rows'] if r['A_mod5']==4 and r['q_mod3']==q%3)
        assert not fr['allowed_H']
        rows.append({'q_mod12':q,'source_q_mod3':q%3,'actual_B_mod5':qr['B_mod'],'actual_S_mod5':qr['S_mod'],'F_roots':[z['H'] for z in fr['H_values'] if z['F']==0],'N_at_F_roots':[z['N'] for z in fr['H_values'] if z['F']==0],'Q_mod5':fr['Q'],'exclusion':'non-square S' if not qr['square_roots'] else 'F forces N=0 while 5 does not divide nQ'})
    return {'schema':'A144-all-q-closure-v1','A':144,'adopted_v3_A':2,'adopted_FULL3_implies_q_mod3':[1,2],'adopted_TRI4_q_mod4':(-144*146//8)%4,'exhaustive_q_mod12':[4,8],'rows':rows,'closed_all_q_and_original_prime_exponents':True,'uses_original_n':True,'no_finite_bottom':True}

def consumers_cert(fc):
    cyc=[];v=1
    while True:
        v=v*5%336;cyc.append(v)
        if v==1:break
    ctable=[]
    for c in (1,3):ctable.append({'c':c,'s_mod4':[s for s in range(4) if c*pow(2,s,5)%5==2]})
    return {'schema':'Q5-power-FULL3-n-consumers-v1','condition':'A=4 mod5','necessary_q_mod3':fc['allowed_q_by_A_mod5']['4'],'noninvertible_source_F_roots':[2,3], 'Q_full_original_power':'Q=5^b, b>=1','Q_mod336':'A+1', 'positive_power_period_mod336':cyc,'period_length':len(cyc),'allowed_A_mod336':sorted((x-1)%336 for x in cyc),'FULL3_extra_forbidden_A_mod27':[9,18], 'FULL3_explanation':'q divisible by 3 forces either v3(A)=0 or v3(A)=2+v3(q)>=3; do not reject 27|A.', 'n_mod5':2,'n_congruences':ctable,'sufficient_recovery_claim':False}

def frontier_cert(cc):
    p0=json.loads((ROOT/'inputs/parent_frontier_M0.json').read_text());p1=json.loads((ROOT/'inputs/parent_frontier_M1.json').read_text())
    R=p0['surviving_A_residues'];m0=p0['new_A_modulus'];m1=p1['new_modulus'];J=p1['bad_new_residues'];C=set(cc['positive_power_period_mod336'])
    groups={'Q5_incompatible':0,'Q5_compatible_and_div9':0,'Q5_compatible_not_div9':0}
    for a in R:
        key='Q5_incompatible' if (a+1)%336 not in C else ('Q5_compatible_and_div9' if a%9==0 else 'Q5_compatible_not_div9')
        groups[key]+=1
    bcounts=[sum(b not in J and b%5==i for b in range(725)) for i in range(5)]
    old=len(R)*(725-len(J));drop=groups['Q5_incompatible']*bcounts[4];q5left=old-drop;extra=groups['Q5_compatible_and_div9']*bcounts[4]*2
    Rset=set(R)
    def adopted(a):return a%m0 in Rset and a%725 not in J
    def new(a):return a%5!=4 or ((a+1)%336 in C and a%27 not in (9,18))
    least=next(a for a in range(2,10000,2) if adopted(a) and new(a))
    return {'schema':'nested-CRT-parent-projection-difference-v1','parent_M0':m0,'parent_M0_count':len(R),'parent_M0_sha256':sha((ROOT/'inputs/parent_frontier_M0.json').read_bytes()),'old_M1':m1,'old_M1_count':old,'old_J_mod725':J,'allowed_b_counts_mod5':bcounts,'parent_groups':groups,'Q5_same_M1':{'newly_excluded':drop,'remaining':q5left},'FULL3_lifted_M2':{'modulus':3*m1,'parent_lift':3*old,'Q5_excluded':3*drop,'Q5_remaining_lift':3*q5left,'additional_FULL3_excluded':extra,'total_newly_excluded_relative_to_parent_lift':3*drop+extra,'remaining':3*q5left-extra},'least_positive_surviving_A':least,'old_positive_A_below_new_min':[a for a in range(2,least,2) if adopted(a)],'new_tested_min_is_only_a_projection':True,'no_joint_period_scan':True,'representation':'(a0 in adopted parent M0, b in allowed mod725, k in {0,1,2}) with Q5 and A mod27 filters','not_counted':['all historical consumers','actual NC3 inputs','full q-specific FN5 table beyond A-only projections','actual original P,Q,n,j recovery']}

def boundary_cert():
    m=3125;states=orbit(48*m);T=math.lcm(len(states),12);q0=40
    d0,y0=states[q0%len(states)];b0=(d0-1)//48%m;ss=S(d0,y0,144,b0,m)
    assert ss==625 and 25*25%m==ss
    d=y=1
    for _ in range(q0):d,y=nxt(d,y)
    b=(d-1)//48;v=144*y;Q=d+v;s=S(d,y,144,b);z=math.isqrt(s)
    assert z*z<s<(z+1)**2
    return {'schema':'A144-finite-5-adic-boundary-already-closed-v1','A':144,'family_q_offset':q0,'family_q_step':T,'k_domain':'all integers k>=0','source_modulus':48*m,'source_period':len(states),'source_states_sha256':sha(canon(states)),'d_at_lift':d0,'y_at_lift':y0,'actual_B_mod3125':b0,'actual_S_mod3125':ss,'one_square_root_mod3125':25,'Q_mod5':Q%5,'F_roots_mod5':[h for h in range(5) if F(d,v,Q,h,5)==0],'N_at_F_roots_mod5':[N(v,Q,h,5) for h in range(5) if F(d,v,Q,h,5)==0],'status':'all k are already excluded by this round FN5; not remaining NC3 models','not_claimed':['integer square','full original P/Q powers','original n or j recovery','all 5-adic precisions'],'sample_q40':{k:str(x) for k,x in {'d':d,'y':y,'B':b,'v':v,'Q':Q,'S':s,'floor_sqrt_S':z,'gap_above':s-z*z,'gap_below':(z+1)**2-s}.items()}}

# Small polynomial ring, generator implementation; receiver uses a separate class.
DIM=5
ZERO=(0,)*DIM
def const(a):return {ZERO:a} if a else {}
def var(i):e=[0]*DIM;e[i]=1;return {tuple(e):1}
def add(*ps):
    r={}
    for p in ps:
        for m,a in p.items():r[m]=r.get(m,0)+a
    return {m:a for m,a in r.items() if a}
def scale(p,a):return {m:x*a for m,x in p.items() if x*a}
def mul(p,q):
    r={}
    for m,a in p.items():
        for n,b in q.items():
            mn=tuple(x+y for x,y in zip(m,n));r[mn]=r.get(mn,0)+a*b
    return {m:a for m,a in r.items() if a}
def power(p,n):
    r=const(1)
    for _ in range(n):r=mul(r,p)
    return r
def sub(p,q):return add(p,scale(q,-1))
def poly_cert():
    d,v,H,h,W=[var(i) for i in range(5)];Q=add(d,v);P=add(Q,mul(h,v))
    norm=add(scale(mul(v,power(H,2)),4),scale(mul(P,power(Q,2)),-1),const(1));lin=add(mul(h,d),scale(Q,-1),scale(H,-4))
    ff=add(scale(mul(mul(d,v),power(H,2)),4),scale(mul(mul(v,power(Q,2)),H),-4),scale(power(Q,4),-1),d)
    nn=add(scale(mul(v,power(H,3)),4),H,Q)
    ss=add(power(v,4),scale(mul(d,power(v,3)),5),scale(mul(power(d,2),power(v,2)),10),scale(mul(power(d,3),v),10),scale(power(d,4),5),mul(power(d,2),W))
    checks={
      'F=d*norm+v*Q^2*lin':sub(ff,add(mul(d,norm),mul(mul(v,power(Q,2)),lin))),
      'N-(P*Q^2*H+Q)=H*norm':sub(sub(nn,add(mul(mul(P,power(Q,2)),H),Q)),mul(H,norm)),
      'v*(2*d*H-Q^2)^2-Q^5+d^2=d^2*norm+d*v*Q^2*lin':sub(add(mul(v,power(sub(scale(mul(d,H),2),power(Q,2)),2)),scale(power(Q,5),-1),power(d,2)),add(mul(power(d,2),norm),mul(mul(mul(d,v),power(Q,2)),lin))),
      'v*S-Q^5+d^2=d^2*(v*W-d^3+1)':sub(add(mul(v,ss),scale(power(Q,5),-1),power(d,2)),mul(power(d,2),add(mul(v,W),scale(power(d,3),-1),const(1))))}
    assert all(not p for p in checks.values())
    return {'schema':'same-input-identities-over-Z-v1','variables':['d','v','H','h','W'],'substitutions':{'Q':'d+v','P':'Q+h*v','nu':'2H','n':'2P Q H+2'},'norm':'4vH^2-PQ^2+1','lin':'hd-Q-4H','identities':[{'identity':name,'expanded_residual':[]} for name in checks],'adopted_exact_AB_and_Pell_imply_vW':'AB*y^2=3(d-1)y^2=d^3-1','no_integer_sampling_used':True}

def source_cert():
    data=(ROOT/'inputs/parent_A100_evidence.zip').read_bytes();assert sha(data)==PARENT_SHA
    import io
    z=zipfile.ZipFile(io.BytesIO(data));assert z.testzip() is None
    count=0
    for line in z.read(PREFIX+'SHA256SUMS.txt').decode().splitlines():
        h,n=line.split('  ',1);assert sha(z.read(PREFIX+n.removeprefix('./')))==h;count+=1
    mapping={'parent_HANDOFF.md':'HANDOFF.md','parent_PROOFS.md':'PROOFS.md','parent_FAILURE_BOUNDARIES.md':'FAILURE_BOUNDARIES.md','parent_frontier_M0.json':'inputs/parent_frontier.json','parent_frontier_M1.json':'certificates/05_frontier_CRT_product.json'}
    matches={}
    for local,member in mapping.items():
        b=(ROOT/'inputs'/local).read_bytes();assert b==z.read(PREFIX+member);matches[local]={'member':member,'sha256':sha(b)}
    return {'schema':'byte-exact-parent-adoption-v1','parent_zip_sha256':PARENT_SHA,'parent_manifest_entries_checked':count,'matched_members':matches,'overview_sha256':sha((ROOT/'inputs/OVERVIEW-2026-09-22.md.txt').read_bytes()),'historical_mathematics_rerun':False,'adopted_not_reproved':['NC3 to canonical balanced same-input core','FULL3','TRI4','Q336 invariant','HEIGHT26 and CUBIC3','old parent A-only residue projection and mod725 gate'],'new_results_do_not_claim_full_i3':True}

def main():
    p=argparse.ArgumentParser();p.add_argument('--out',type=Path,default=ROOT/'certificates');a=p.parse_args();a.out.mkdir(parents=True,exist_ok=True)
    qc=quotient_cert();fc=fn5_cert();cc=consumers_cert(fc)
    certs={'01_actual_B_5_25_125.json':qc,'02_same_input_FN5.json':fc,'03_A144_all_rows_closed.json':closure_cert(qc,fc),'04_Q5_FULL3_n_consumers.json':cc,'05_nested_CRT_frontier.json':frontier_cert(cc),'06_finite_5adic_boundary.json':boundary_cert(),'07_same_input_identities.json':poly_cert(),'08_source_adoption.json':source_cert()}
    for name,obj in certs.items():(a.out/name).write_bytes(canon(obj));print(name,sha(canon(obj)))
    print('GENERATE PASS:',len(certs),'certificates')
if __name__=='__main__':main()
