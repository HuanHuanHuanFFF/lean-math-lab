#!/usr/bin/env python3
"""Exact new certificates: A208 true 13-quotient, FN31 and original Q31.
Standard library only. Parent mathematics is adopted, never rerun.
"""
from __future__ import annotations
import argparse, hashlib, io, json, math, zipfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
PARENT_PREFIX='B699-D-i3-20260926-A144/'
PARENT_SHA='db4d8b00648fbaca82f87fe56aef853504d940c49541f395aa0ed839ddaa7b99'
C5={5,25,125,289,101,169,173,193,293,121,269,1}

def need(ok,msg='exact check failed'):
    if not ok: raise ValueError(msg)
def canon(x): return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def sha(x): return hashlib.sha256(x).hexdigest()
def nxt(d,y,m=None):
    d,y=18817*d+32592*y+9408,10864*d+18817*y+5432
    return (d,y) if m is None else (d%m,y%m)
def orbit(m):
    states=[];d=y=1
    while True:
        states.append([d,y]);d,y=nxt(d,y,m)
        if (d,y)==(1,1): return states
        need(len(states)<2_000_000,'unexpected source period')
def exact_row(q):
    d=y=1
    for _ in range(q):d,y=nxt(d,y)
    return d,y

def S(d,y,a,b,m=None):
    v=a*y
    z=v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*b*y
    return z if m is None else z%m

def F(d,v,Q,H,m):return (4*d*v*H*H-4*v*Q*Q*H-Q**4+d)%m
def N(v,Q,H,m):return (4*v*H**3+H+Q)%m

def powers(base,m):
    vals=[];x=base%m
    while x not in vals: vals.append(x);x=x*base%m
    need(x==vals[0],'positive-power cycle not pure')
    return vals

def roots13_same_input(d,y,b,ss):
    out=[];d%=13;y%=13;v=208*y%13;Q=(d+v)%13
    for z in range(13):
        if z*z%13!=ss:continue
        H=(z+Q*Q)*pow(2*d,-1,13)%13
        nn=N(v,Q,H,13);n=2*nn*pow(Q,-1,13)%13
        pairs=[[c0,k] for c0 in (1,3) for k in range(1,13) if c0*pow(2,k,13)%13==n]
        out.append({'Y_residue':z,'H':H,'N':nn,'n_mod13':n,'c_and_positive_s_residue_mod12':pairs})
    return out

def quotient():
    out={'schema':'A208-real-integer-quotient-13-v1','A':208,'actual_B':'3(d-1)/208','entry_q_mod12':[0,8],'positive_q':True,'precision':[]}
    for m in (13,169,2197):
        os=orbit(208*m);T=math.lcm(12,len(os));qr={x*x%m for x in range(m)}
        keep=[];zeros=[];counts={'input':0,'nonintegral':0,'nonsquare':0,'unit_square':0,'zero_square':0,'nonzero_nonunit_square':0};small=[]
        for q in range(T):
            if q%12 not in (0,8):continue
            d,y=os[q%len(os)];counts['input']+=1
            if 3*(d-1)%208:counts['nonintegral']+=1;continue
            b=3*(d-1)//208%m;s=S(d,y,208,b,m)
            if s in qr:
                keep.append(q)
                if s==0:zeros.append(q);counts['zero_square']+=1
                else:counts['unit_square' if s%13 else 'nonzero_nonunit_square']+=1
            else:counts['nonsquare']+=1
            if m==13:
                small.append({'q':q,'d_at_lift':d,'y_at_lift':y,'d_mod13':d%13,'y_mod13':y%13,'B':b,'S':s,'roots':[x for x in range(13) if x*x%13==s],'v_mod13':0,'Q_mod13':d%13,'same_input_root_lifts':roots13_same_input(d,y,b,s)})
        out['precision'].append({'modulus':m,'source_modulus':208*m,'source_first_return':len(os),'joint_period':T,'source_states_sha256':sha(canon(os)),'source_states':os if m==13 else None,'counts':counts,'square_surviving_q':keep,'zero_square_q':zeros,'complete_mod13_rows':small if m==13 else None})
    out['finite_precision_only']=True
    return out

def split13():
    # In Z[sqrt(3)], alpha=2+sqrt(3), beta=-alpha^6.
    u,x=1,0;cycle=[]
    for k in range(12):
        cycle.append({'index':k,'U_mod13':u%13,'X_mod13':x%13})
        u,x=2*u+3*x,u+2*x
    uv=1;xx=0
    for _ in range(6):uv,xx=2*uv+3*xx,uv+2*xx
    need((uv,xx)==(1351,780))
    source=orbit(13)
    return {'schema':'nonsplit13-full-valuation-interface-v1','prime':13,'complete_squares_mod13':sorted({z*z%13 for z in range(13)}),'forbidden_shared_prime':13,'nonresidue_value':5,'source_period_mod13':source,'alpha_period_mod13':cycle,'beta_minus_one_coefficients':[-1352,-780],'beta_minus_one_div13_coefficients':[-104,-60],'norm_alpha':1,'Pell_product_identity':'d-1=3*U_(4q+1)*X_(4q)','conditional_general_prime_statement':'If ell is an odd prime different from 3 and 5 is a non-square modulo ell, then ell cannot divide both A and B.','full_valuation_for_e_v13_A_positive':{'B':'v13(B)=0','q_mod3_allowed':[0,2],'q0':'v13(q)=e-1','q2':'v13(4q+1)=e-1'},'proof_of_all_exponents':'Binomial LTE in Z[sqrt(3)] for beta=-alpha^6: ord13(beta^m-1)=1+v13(m). This is proved in PROOFS.md, not inferred from samples.','not_in_A_only_projection_count':True}

def fn31():
    os=orbit(31);pp=powers(2,31);nset=sorted({c*z%31 for c in (1,3) for z in pp});rows=[]
    for a in range(0,496,2):
        q=(-a*(a+2)//8)%4;d,y=os[q];v=a*y%31;Q=(d+v)%31;allroots=[];keep=[]
        for H in range(31):
            if F(d,v,Q,H,31):continue
            nn=N(v,Q,H,31)
            # Q=0 is never inverted. Original n=PQ*2H+2 directly gives n=2.
            n=2 if Q==0 else 2*nn*pow(Q,-1,31)%31
            raw_h=(4*H+Q)*pow(d,-1,31)%31;P=(Q+raw_h*v)%31
            need((2*P*Q*H+2)%31==n,'F/N and original n differ')
            pairs=[[c,k] for c in (1,3) for k in range(1,6) if c*pow(2,k,31)%31==n]
            r={'H':H,'N':nn,'n_mod31':n,'h_mod31':raw_h,'P_mod31':P,'c_and_positive_s_residue_mod5':pairs}
            allroots.append(r)
            if pairs and (2*nn-n*Q)%31==0:keep.append(H)
        rows.append({'A_mod496':a,'q_mod4':q,'d':d,'y':y,'v':v,'Q':Q,'F_coeff_ascending':[(d-Q**4)%31,(-4*v*Q*Q)%31,(4*d*v)%31],'F_roots':allroots,'allowed_H':keep})
    return {'schema':'same-original-input-FN31-period496-v1','source_cycle':os,'positive_2_power_cycle_mod31':pp,'allowed_original_n_mod31':nset,'table_modulus_A':496,'rows':rows,'allowed_even_A_mod496':[r['A_mod496'] for r in rows if r['allowed_H']],'forbidden_even_A_mod496':[r['A_mod496'] for r in rows if not r['allowed_H']],'zero_Q_survivor_A_mod496':[r['A_mod496'] for r in rows if r['Q']==0 and r['allowed_H']],'same_H_in_F_and_N':True,'zero_Q_policy':'Do not divide Q. Use N=0 and original n=2.'}

def closure(fc):
    r=next(x for x in fc['rows'] if x['A_mod496']==208)
    need(not r['allowed_H'])
    return {'schema':'A208-all-positive-Pell-rows-closed-v1','A':208,'adopted_TRI4_implies_q_mod4':0,'adopted_FN5_entry_q_mod12':[0,8],'core_source_mod31':[1,1],'v_mod31':22,'Q_mod31':23,'actual_S_mod31':14,'S_roots_mod31':[13,18],'F_coeff_ascending':r['F_coeff_ascending'],'F_roots':r['F_roots'],'allowed_original_n_mod31':fc['allowed_original_n_mod31'],'remaining_H':[],'coverage':'All positive q with 4|q; hence both declared entry classes, all r and all original prime-power exponents and s. No finite bottom.','new_sufficient_contradiction_does_not_need_factorization':True}

def q31cons(fc):
    cyc=powers(31,336)
    return {'schema':'original-Q31-full-positive-power-consumer-v1','condition_A_mod496':fc['zero_Q_survivor_A_mod496'],'original_Q':'Q=31^b, b>=1','original_P':'P is a power of an odd prime different from 31','adopted_Q336':'Q=A+1 mod336','positive_power_cycle_mod336':cyc,'allowed_A_mod336':sorted((v-1)%336 for v in cyc),'original_n_mod31':2,'forced_c':1,'forced_s_mod5':1,'zero_Q_never_inverted':True,'cycle_does_not_restore_original_Q':True}

def frontier(fc,qc):
    p0=json.loads((ROOT/'inputs/parent_frontier_M0.json').read_text());p1=json.loads((ROOT/'inputs/parent_frontier_M1.json').read_text());p2=json.loads((ROOT/'inputs/parent_frontier_M2.json').read_text())
    R=p0['surviving_A_residues'];M0=p0['new_A_modulus'];J=set(p1['bad_new_residues']);M2=p2['FULL3_lifted_M2']['modulus']
    allowed=set(fc['allowed_even_A_mod496']);zero=set(qc['condition_A_mod496']);C31=set(qc['positive_power_cycle_mod336'])
    def group(a):return 'Q5_bad' if (a+1)%336 not in C5 else ('Q5_good_div9' if a%9==0 else 'Q5_good_not_div9')
    weights={'Q5_bad':1692,'Q5_good_div9':1837,'Q5_good_not_div9':2127}
    sets=[R,[a for a in R if a%496 in allowed],[a for a in R if a%496 in allowed and (a%496 not in zero or (a+1)%336 in C31)]]
    stages=[]
    for name,rs in zip(['direct_parent','after_FN31','after_Q31_full_power'],sets):
        groups={k:sum(group(a)==k for a in rs) for k in weights}
        stages.append({'name':name,'M0_row_count':len(rs),'groups':groups,'weighted_M2_count':sum(groups[k]*weights[k] for k in weights)})
    need(stages[0]['weighted_M2_count']==p2['FULL3_lifted_M2']['remaining'])
    Rset=set(R)
    def parent(a):return a%M0 in Rset and a%725 not in J and (a%5!=4 or ((a+1)%336 in C5 and a%27 not in (9,18)))
    def new(a):return a%496 in allowed and (a%496 not in zero or (a+1)%336 in C31)
    least=next(a for a in range(2,10000,2) if parent(a) and new(a))
    return {'schema':'same-M2-exact-direct-parent-projection-difference-v1','M0':M0,'M1':p1['new_modulus'],'M2_unchanged':M2,'representation':'adopted (a0 mod M0, z mod725, k mod3), existing Q5/FULL3 predicates; new FN31 and Q31 predicates depend only on a0','allowed_z_counts_mod5':[sum(z not in J and z%5==r for z in range(725)) for r in range(5)],'weight_by_parent_group':weights,'stages':stages,'newly_excluded_by_FN31':stages[0]['weighted_M2_count']-stages[1]['weighted_M2_count'],'additional_excluded_by_Q31':stages[1]['weighted_M2_count']-stages[2]['weighted_M2_count'],'total_newly_excluded':stages[0]['weighted_M2_count']-stages[2]['weighted_M2_count'],'remaining':stages[2]['weighted_M2_count'],'least_positive_surviving_projection':least,'parent_positive_A_below_new_min':[a for a in range(2,least,2) if parent(a)],'new_positive_projection_examples':[a for a in range(least,2000,2) if parent(a) and new(a)][:20],'not_counted':['actual NC3 inputs','net difference against every historical consumer','13-source valuation/B/q restrictions','cross-prime shared c and s restrictions beyond stated projections','full original P/Q/n/j recovery'],'joint_period_enumerated':False,'new_A_moduli_divide_M0':all(M0%m==0 for m in (496,336))}

def boundary():
    m=2197;os=orbit(208*m);T=math.lcm(12,len(os));q=8;D,Y=os[q%len(os)];need(3*(D-1)%208==0);b=3*(D-1)//208%m;d,y=D%m,Y%m;v=208*y%m;Q=(d+v)%m;s=S(d,y,208,b,m)
    root=714;need(root*root%m==s)
    H=(root+Q*Q)*pow(2*d,-1,m)%m;h=(4*H+Q)*pow(d,-1,m)%m;P=(Q+h*v)%m;n=(2*P*Q*H+2)%m;nn=N(v,Q,H,m)
    sexp=1753;need(pow(2,sexp,m)==n)
    need(F(d,v,Q,H,m)==0 and (4*v*H*H-P*Q*Q+1)%m==0 and (2*nn-n*Q)%m==0)
    de,ye=exact_row(q);be=3*(de-1)//208;ve=208*ye;Qe=de+ve;Se=S(de,ye,208,be);z=math.isqrt(Se);need(z*z<Se<(z+1)**2)
    return {'schema':'accurate-finite-13-adic-family-already-excluded-by-FN31-v1','A':208,'family_q_offset':q,'family_q_step':T,'k_domain':'all integers k>=0','source_modulus':208*m,'source_first_return':len(os),'source_states_sha256':sha(canon(os)),'actual_lifted_d':D,'actual_lifted_y':Y,'modulus':m,'local_exact_data':{'d':d,'y':y,'B':b,'v':v,'Q':Q,'Y':root,'H':H,'h':h,'P':P,'N':nn,'n':n,'c':1,'s_positive_representative':sexp},'finite_original_core_congruences_pass':True,'status':'Entire family already excluded by new FN31; NOT a remaining candidate or NC3.','not_restored':['integer square','integer h and nu solving full core','original P and Q as distinct complete prime powers','actual n=c*2^s','original j'],'sample_q8':{k:str(x) for k,x in {'d':de,'y':ye,'B':be,'v':ve,'Q':Qe,'S':Se,'floor_sqrt_S':z,'gap_above':Se-z*z,'gap_below':(z+1)**2-Se}.items()},'zero_Q_mod31_boundary':{'meaning':'one finite-field state, a is A modulo31, not actual A=30','a':30,'q_mod4':0,'d':1,'y':1,'v':30,'Q':0,'H':16,'h':2,'P':29,'n':2,'N':0,'c':1,'s_mod5':1,'claim':'N=0 with Q=0 is compatible; never infer n=0.'}}

# Sparse polynomial generator over Z. Receiver uses a separate polynomial class.
DIM=5;ZE=(0,)*DIM
def c(a):return {ZE:a} if a else {}
def var(i):e=[0]*DIM;e[i]=1;return {tuple(e):1}
def add(*ps):
    o={}
    for p in ps:
        for ex,v in p.items():o[ex]=o.get(ex,0)+v
    return {ex:v for ex,v in o.items() if v}
def scale(p,a):return {ex:v*a for ex,v in p.items() if v*a}
def mul(p,q):
    o={}
    for ex,a in p.items():
        for ey,b in q.items():
            ez=tuple(x+y for x,y in zip(ex,ey));o[ez]=o.get(ez,0)+a*b
    return {ex:v for ex,v in o.items() if v}
def pw(p,n):
    o=c(1)
    for _ in range(n):o=mul(o,p)
    return o
def sub(p,q):return add(p,scale(q,-1))
def identities():
    d,v,H,h,W=[var(i) for i in range(5)];Q=add(d,v);P=add(Q,mul(h,v));E=add(scale(mul(v,pw(H,2)),4),scale(mul(P,pw(Q,2)),-1),c(1));L=add(mul(h,d),scale(Q,-1),scale(H,-4))
    f=add(scale(mul(mul(d,v),pw(H,2)),4),scale(mul(mul(v,pw(Q,2)),H),-4),scale(pw(Q,4),-1),d);n=add(scale(mul(v,pw(H,3)),4),H,Q)
    s=add(pw(v,4),scale(mul(d,pw(v,3)),5),scale(mul(pw(d,2),pw(v,2)),10),scale(mul(pw(d,3),v),10),scale(pw(d,4),5),mul(pw(d,2),W))
    residuals=[sub(f,add(mul(d,E),mul(mul(v,pw(Q,2)),L))),sub(sub(n,add(mul(mul(P,pw(Q,2)),H),Q)),mul(H,E)),sub(add(mul(v,pw(sub(scale(mul(d,H),2),pw(Q,2)),2)),scale(pw(Q,5),-1),pw(d,2)),add(mul(pw(d,2),E),mul(mul(mul(d,v),pw(Q,2)),L))),sub(add(mul(v,s),scale(pw(Q,5),-1),pw(d,2)),mul(pw(d,2),add(mul(v,W),scale(pw(d,3),-1),c(1))))]
    need(all(not z for z in residuals),'polynomial residual')
    return {'schema':'new-use-same-original-input-identities-v1','variables':['d','v','H','h','W'],'Q':'d+v','P':'Q+h*v','E':'4vH^2-PQ^2+1','L':'hd-Q-4H','identities':['F=dE+vQ^2L','N-(PQ^2H+Q)=HE','v(2dH-Q^2)^2-Q^5+d^2=d^2E+dvQ^2L','vS-Q^5+d^2=d^2(vW-d^3+1)'],'all_expanded_residuals':[[],[],[],[]],'original_Y':'abs(d*nu-Q^2)','original_n':'2P Q H+2=c*2^s','symbolic_not_sampling':True}

def sources():
    data=(ROOT/'inputs/parent_A144_evidence.zip').read_bytes();need(sha(data)==PARENT_SHA)
    with zipfile.ZipFile(io.BytesIO(data)) as z:
        need(z.testzip() is None);count=0
        for line in z.read(PARENT_PREFIX+'SHA256SUMS.txt').decode().splitlines():
            h,name=line.split(maxsplit=1);need(sha(z.read(PARENT_PREFIX+name.removeprefix('./')))==h);count+=1
        mapping={'parent_HANDOFF.md':'HANDOFF.md','parent_PROOFS.md':'PROOFS.md','parent_FAILURE_BOUNDARIES.md':'FAILURE_BOUNDARIES.md','parent_SESSION_STATE.json':'SESSION_STATE.json','parent_frontier_M0.json':'inputs/parent_frontier_M0.json','parent_frontier_M1.json':'inputs/parent_frontier_M1.json','parent_frontier_M2.json':'certificates/05_nested_CRT_frontier.json'}
        matched={}
        for local,member in mapping.items():
            b=(ROOT/'inputs'/local).read_bytes();need(b==z.read(PARENT_PREFIX+member));matched[local]={'member':member,'sha256':sha(b)}
    return {'schema':'direct-parent-byte-adoption-no-old-branch-replay-v1','parent_zip_sha256':PARENT_SHA,'parent_manifest_members':count,'matched':matched,'overview_sha256':sha((ROOT/'inputs/OVERVIEW-2026-09-22.md.txt').read_bytes()),'adopted_author_level_prerequisites':['NC3 to canonical balanced same-original-input core','TRI4 and FULL3','Q336','HEIGHT26/CUBIC3','parent M0 list, mod725 gate and parent Q5/mod27 predicates'],'historical_mathematics_rerun':False,'repository_access':False,'external_theorem_dependency':False}

def next_entry(fc):
    os=orbit(73)
    d1=[q for q,(d,y) in enumerate(os) if d==1]
    pre=[q for q in range(12) if q%4==(-292*294//8)%4 and q%3 in (0,1)]
    T=math.lcm(12,len(os));keep=[q for q in range(T) if q%12 in pre and q%len(os) in d1]
    f=next(r for r in fc['rows'] if r['A_mod496']==292)
    return {'schema':'next-A292-necessary-entry-not-a-solution-v1','A':292,'actual_B':'3(d-1)/292','source_modulus_for_B_mod73':21316,'adopted_FN5_q_mod3':[0,1],'adopted_TRI4_q_mod4':1,'q_mod12_before_divisor':pre,'source_cycle_mod73':os,'d1_q_mod9':d1,'necessary_q_mod36':keep,'local_FN31':f,'not_restored':['integer square','full original P/Q powers','n=c*2^s over integers','original j'],'next_falsifiable_check':'Restore true B mod73 from d mod21316 on q=9+36r, retaining c=3 and s=3 mod5; test S and same-origin F/N, keeping zero and nonunit sources.'}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,default=ROOT/'certificates');args=ap.parse_args();args.out.mkdir(parents=True,exist_ok=True)
    qc=quotient();fc=fn31();cc=q31cons(fc)
    objs={'01_actual_13_quotient.json':qc,'02_SPLIT13_full_exponents.json':split13(),'03_same_input_FN31.json':fc,'04_A208_all_rows_closed.json':closure(fc),'05_original_Q31_consumer.json':cc,'06_same_M2_frontier.json':frontier(fc,cc),'07_finite_13adic_failure_boundary.json':boundary(),'08_same_input_identities.json':identities(),'09_source_adoption.json':sources(),'10_next_A292_entry.json':next_entry(fc)}
    for name,obj in objs.items():
        blob=canon(obj);(args.out/name).write_bytes(blob);print(name,sha(blob))
    print('GENERATE PASS:',len(objs),'new certificates')
if __name__=='__main__':main()
