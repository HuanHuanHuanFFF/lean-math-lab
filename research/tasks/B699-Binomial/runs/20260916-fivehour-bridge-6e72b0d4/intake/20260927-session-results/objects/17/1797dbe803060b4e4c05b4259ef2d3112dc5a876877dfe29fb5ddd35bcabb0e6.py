#!/usr/bin/env python3
"""Receiving verifier, separate formulas from generate.py.
Source rows use quadratic-ring multiplication, F/N tables use original
h,P,nu,n recovery in finite rings; counts use grouped CRT fibers.
No internet, no parent proof replay. Python standard library only.
"""
from __future__ import annotations
import argparse, collections, hashlib, io, json, math, zipfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
PARENT_SHA='db4d8b00648fbaca82f87fe56aef853504d940c49541f395aa0ed839ddaa7b99'
PREFIX='B699-D-i3-20260926-A144/'

def check(b,msg):
    if not b:raise ValueError(msg)
def canon(x):return (json.dumps(x,sort_keys=True,ensure_ascii=False,indent=2)+'\n').encode()
def digest(x):return hashlib.sha256(x).hexdigest()
def ring_mul(x,y,m=None):
    u=x[0]*y[0]+3*x[1]*y[1];v=x[0]*y[1]+x[1]*y[0]
    return (u,v) if m is None else (u%m,v%m)
def alpha_power(n,m=None):
    out=(1,0);b=(2,1)
    while n:
        if n&1:out=ring_mul(out,b,m)
        b=ring_mul(b,b,m);n//=2
    return out
def row(q,m=None):
    u,x=alpha_power(8*q+1,None if m is None else 2*m)
    check(u%2==0 and x%2==1,'source parity')
    d,y=(3*x-1)//2,u//2
    return [d,y] if m is None else [d%m,y%m]
def orbit(m,period):
    """Complete first-return cycle, using alpha^8 action, not affine R."""
    u,x=2,1;step=alpha_power(8,2*m);out=[]
    for q in range(period):
        dy=[((3*x-1)//2)%m,(u//2)%m]
        check(q==0 or dy!=[1,1],f'premature source return {m} {q}')
        out.append(dy);u,x=ring_mul((u,x),step,2*m)
    check([((3*x-1)//2)%m,(u//2)%m]==[1,1],f'no full source return {m}')
    return out

def sq(d,y,A,B,m):
    # Horner form different from generator.
    v=A*y%m
    return (((((v+5*d)*v+10*d*d)*v+10*d**3)*v+5*d**4)+d*d*B*y)%m

def frec(d,v,Q,H,m):
    h=(4*H+Q)*pow(d,-1,m)%m;P=(Q+h*v)%m
    e=(v*(2*H)**2-P*Q**2+1)%m
    n=(P*Q*(2*H)+2)%m;N=(4*v*H**3+H+Q)%m
    return e,h,P,n,N

def quotient(c):
    check(c['A']==208 and c['entry_q_mod12']==[0,8] and c['positive_q'],'quotient entry')
    periods={13:78,169:1014,2197:13182}
    check(len(c['precision'])==3,'number of precisions')
    for item in c['precision']:
        m=item['modulus'];check(m in periods,'precision modulus');p=periods[m]
        check(item['source_modulus']==208*m and item['source_first_return']==p,'source modulus/period')
        os=orbit(208*m,p);check(digest(canon(os))==item['source_states_sha256'],'orbit fingerprint')
        if m==13:check(item['source_states']==os,'complete mod2704 source table')
        T=math.lcm(p,12);check(item['joint_period']==T,'joint period')
        QR={x*x%m for x in range(m)};keep=[];zeros=[];cnt={k:0 for k in ['input','nonintegral','nonsquare','unit_square','zero_square','nonzero_nonunit_square']};small=[]
        for q in range(T):
            if q%12 not in (0,8):continue
            D,Y=os[q%p];cnt['input']+=1
            # Congruence 208*B=3*(D-1), with D at precision 208*m.
            numerator=3*(D-1);b,rem=divmod(numerator,208)
            if rem:cnt['nonintegral']+=1;continue
            b%=m;s=sq(D,Y,208,b,m)
            if s in QR:
                keep.append(q)
                if s==0:zeros.append(q);cnt['zero_square']+=1
                elif s%13:cnt['unit_square']+=1
                else:cnt['nonzero_nonunit_square']+=1
            else:cnt['nonsquare']+=1
            if m==13:
                links=[]
                for zz in range(13):
                    if zz*zz%13!=s:continue
                    HH=(zz+1)*7%13
                    ee,hh,PP,nn,NN=frec(1,0,1,HH,13)
                    check(ee==0 and (2*HH-1)%13==zz,'13 root to original H')
                    pairs=[[cc,k] for cc in (1,3) for k in range(1,13) if cc*pow(2,k,13)%13==nn]
                    links.append({'Y_residue':zz,'H':HH,'N':NN,'n_mod13':nn,'c_and_positive_s_residue_mod12':pairs})
                small.append({'q':q,'d_at_lift':D,'y_at_lift':Y,'d_mod13':D%13,'y_mod13':Y%13,'B':b,'S':s,'roots':[x for x in range(13) if x*x%13==s],'v_mod13':0,'Q_mod13':D%13,'same_input_root_lifts':links})
        check(cnt==item['counts'] and not cnt['nonintegral'],'complete quotient coverage counts')
        check(keep==item['square_surviving_q'] and zeros==item['zero_square_q'],'all lifted square classes')
        if m==13:check(small==item['complete_mod13_rows'],'actual B and square roots')
    check(c['precision'][0]['zero_square_q']==[32,120],'zero squares must survive')
    print('PASS actual B at mod13/169/2197; all complete periods, zero/nonunit/unit classes')

def split13(c):
    check(c['prime']==13 and c['complete_squares_mod13']==[0,1,3,4,9,10,12],'13 square table')
    check(5 not in c['complete_squares_mod13'],'5 nonresidue')
    check(c['source_period_mod13']==orbit(13,3),'13 source cycle')
    cyc=[{'index':j,'U_mod13':alpha_power(j,13)[0],'X_mod13':alpha_power(j,13)[1]} for j in range(12)]
    check(cyc==c['alpha_period_mod13'],'alpha cycle')
    check(alpha_power(12,13)==(1,0),'alpha return')
    check([a['index'] for a in cyc if a['X_mod13']==0]==[0,6],'X rank pattern')
    check([a['index'] for a in cyc if a['U_mod13']==0]==[3,9],'U rank pattern')
    U,X=alpha_power(6);check((U,X)==(1351,780) and U*U-3*X*X==1,'exact beta base')
    check(c['beta_minus_one_coefficients']==[-U-1,-X] and c['beta_minus_one_div13_coefficients']==[-104,-60],'binomial base')
    check(all(a%13==0 for a in [-U-1,-X]) and any(a%169 for a in [-U-1,-X]),'exact initial 13 valuation')
    check(c['full_valuation_for_e_v13_A_positive']=={'B':'v13(B)=0','q_mod3_allowed':[0,2],'q0':'v13(q)=e-1','q2':'v13(4q+1)=e-1'},'full valuation statement')
    # Product identity via Laurent coefficients: X_(2r+1)-1=2U_(r+1)X_r.
    # alpha - alpha^-1 = 2sqrt3; multiply through 2sqrt3.
    # Coefficients for Laurent formal z=alpha^r, a=alpha: cancellation is exact.
    check(c['Pell_product_identity']=='d-1=3*U_(4q+1)*X_(4q)','product identity statement')
    print('PASS SPLIT13 data and binomial-LTE bases; unbounded exponent proof is in PROOFS.md')

def fn31(c):
    source=orbit(31,4);check(c['source_cycle']==source,'source31')
    pp=[pow(2,e,31) for e in range(1,6)];check(c['positive_2_power_cycle_mod31']==pp and len(set(pp))==5 and pp[-1]==1,'all positive 2 exponents')
    nset=sorted({c0*z%31 for c0 in [1,3] for z in pp});check(c['allowed_original_n_mod31']==nset,'n exponent set')
    check(len(c['rows'])==248,'complete even A residues')
    good=[];bad=[];zq=[]
    for entry,a in zip(c['rows'],range(0,496,2)):
        q=(-a*(a+2)//8)%4;d,y=source[q];v=a*y%31;Q=(d+v)%31
        for key,val in [('A_mod496',a),('q_mod4',q),('d',d),('y',y),('v',v),('Q',Q)]:check(entry[key]==val,'FN31 row '+key)
        roots=[];keep=[]
        for H in range(31):
            E,h,P,n,N=frec(d,v,Q,H,31)
            if E:continue
            # Full raw h,P,n equations, not using division by Q.
            check((h*d-Q-4*H)%31==0 and (2*N-n*Q)%31==0,'same-input recovery')
            pairs=[[c0,k] for c0 in (1,3) for k in range(1,6) if c0*pow(2,k,31)%31==n]
            roots.append({'H':H,'N':N,'n_mod31':n,'h_mod31':h,'P_mod31':P,'c_and_positive_s_residue_mod5':pairs})
            if pairs:keep.append(H)
        check(entry['F_roots']==roots and entry['allowed_H']==keep,'same H / raw n table')
        check(entry['F_coeff_ascending']==[(d-Q**4)%31,-4*v*Q*Q%31,4*d*v%31],'F coefficients')
        (good if keep else bad).append(a)
        if Q==0 and keep:zq.append(a)
    check(good==c['allowed_even_A_mod496'] and bad==c['forbidden_even_A_mod496'],'full FN31 A gate')
    check(zq==c['zero_Q_survivor_A_mod496']==[12,30,322,464],'nonunit Q survivors')
    check(len(good)==78 and len(bad)==170,'FN31 counts')
    print('PASS 248 even A states, 7688 H residues; raw original h/P/n independent receiving')
    return set(good),set(zq)

def closure(c,fc):
    row208=next(r for r in fc['rows'] if r['A_mod496']==208)
    check(c['adopted_TRI4_implies_q_mod4']==0 and (-208*210//8)%4==0,'A208 TRI4')
    check(c['core_source_mod31']==[1,1] and c['v_mod31']==22 and c['Q_mod31']==23,'A208 source')
    check(c['F_coeff_ascending']==[28,10,26],'A208 F polynomial')
    check(c['F_roots']==row208['F_roots'],'A208 roots')
    check([r['H'] for r in c['F_roots']]==[10,23],'root completeness')
    check([r['n_mod31'] for r in c['F_roots']]==[25,15],'impossible n residues')
    check(c['allowed_original_n_mod31']==fc['allowed_original_n_mod31'],'closure nset')
    check(all(r['n_mod31'] not in fc['allowed_original_n_mod31'] for r in c['F_roots']),'all roots excluded')
    check(c['actual_S_mod31']==14 and c['S_roots_mod31']==[13,18],'S alone does not close')
    check(row208['allowed_H']==c['remaining_H']==[],'A208 no branch left')
    print('PASS A208 all q with 4|q excluded by original n; no finite bottom')

def q31(c,zq):
    cyc=[pow(31,e,336) for e in range(1,7)]
    check(cyc==[31,289,223,193,271,1] and len(set(cyc))==6,'positive Q31 cycle')
    check(c['condition_A_mod496']==sorted(zq) and c['positive_power_cycle_mod336']==cyc,'nonunit Q31 power gate')
    check(c['allowed_A_mod336']==sorted((v-1)%336 for v in cyc),'Q31 allowed A')
    pairs=[(a,e%5) for a in (1,3) for e in range(1,6) if a*pow(2,e,31)%31==2]
    check(pairs==[(1,1)] and (c['forced_c'],c['forced_s_mod5'])==pairs[0],'original n=2 nonunit source')
    print('PASS original Q31 full positive exponent cycle and c/s recovery')
    return set(cyc)

def frontier(c,good,zq,C31):
    p0=json.loads((ROOT/'inputs/parent_frontier_M0.json').read_text());p1=json.loads((ROOT/'inputs/parent_frontier_M1.json').read_text());p2=json.loads((ROOT/'inputs/parent_frontier_M2.json').read_text())
    R=p0['surviving_A_residues'];M0=3031056;J=set(p1['bad_new_residues']);C5={pow(5,i,336) for i in range(1,13)}
    check(M0==p0['new_A_modulus'] and len(R)==118548,'adopted M0 scope')
    counts5=[sum(z%5==j and z not in J for z in range(725)) for j in range(5)];check(counts5==c['allowed_z_counts_mod5'],'CRT z counts')
    sets=[R,[a for a in R if a%496 in good],[a for a in R if a%496 in good and (a%496 not in zq or (a+1)%336 in C31)]]
    totals=[]
    for arows,stage in zip(sets,c['stages']):
        total=0;groups=collections.Counter()
        for a in arows:
            cg=(a+1)%336 in C5
            groups['Q5_bad' if not cg else ('Q5_good_div9' if a%9==0 else 'Q5_good_not_div9')]+=1
            # Independent compressed CRT: enumerate just 5 residue types and 3 lifts.
            for rz,cap in enumerate(counts5):
                for a27 in range(a%9,27,9):
                    if rz==4 and (not cg or a27 in (9,18)):continue
                    total+=cap
        check(stage['M0_row_count']==len(arows) and stage['groups']==dict(groups),'group totals')
        check(stage['weighted_M2_count']==total,'CRT fiber count')
        totals.append(total)
    check(totals==[206460501,131718363,125334240],'exact new frontier')
    check(totals[0]==p2['FULL3_lifted_M2']['remaining'],'direct parent count')
    check(c['M2_unchanged']==6592546800 and c['M1']==2197515600,'no silent modulus change')
    check(c['newly_excluded_by_FN31']==totals[0]-totals[1] and c['additional_excluded_by_Q31']==totals[1]-totals[2] and c['total_newly_excluded']==totals[0]-totals[2] and c['remaining']==totals[2],'net difference arithmetic')
    RS=set(R)
    def parent(a):return a%M0 in RS and a%725 not in J and (a%5!=4 or ((a+1)%336 in C5 and a%27 not in (9,18)))
    def new(a):return a%496 in good and (a%496 not in zq or (a+1)%336 in C31)
    least=next(a for a in range(2,10000,2) if parent(a) and new(a))
    check(least==c['least_positive_surviving_projection']==292,'projected minimum')
    check([a for a in range(2,least,2) if parent(a)]==c['parent_positive_A_below_new_min']==[208,270],'newly removed fixed minimal branches')
    check(c['joint_period_enumerated'] is False and all(M0%d==0 for d in (496,336)),'compressed scope')
    print('PASS direct-parent M2 exact delta 81126261, remaining 125334240; no joint enumeration')

def boundary(c):
    m=c['modulus'];check(m==2197 and c['A']==208,'boundary constants')
    os=orbit(c['source_modulus'],c['source_first_return']);check(digest(canon(os))==c['source_states_sha256'],'boundary orbit')
    check(c['family_q_offset']==8 and c['family_q_step']==math.lcm(len(os),12)==26364,'infinite family period')
    D,Y=row(8,208*m);check([D,Y]==os[8] and (D,Y)==(c['actual_lifted_d'],c['actual_lifted_y']),'boundary source')
    b,rem=divmod(3*(D-1),208);check(rem==0,'boundary exact division');b%=m
    w=c['local_exact_data'];d,y=D%m,Y%m;v=208*y%m;Q=(d+v)%m
    for key,value in [('d',d),('y',y),('B',b),('v',v),('Q',Q)]:check(w[key]==value,'boundary '+key)
    H,h,P,n,N=w['H'],w['h'],w['P'],w['n'],w['N']
    check(sq(d,y,208,b,m)==w['Y']**2%m==92,'true S local square')
    check((2*d*H-Q*Q)%m==w['Y'],'same Y from H')
    e,h0,P0,n0,N0=frec(d,v,Q,H,m)
    check(e==0 and [h,P,n,N]==[h0,P0,n0,N0],'full core congruences at declared precision')
    check(n==pow(2,w['s_positive_representative'],m) and w['c']==1,'finite exact 2 power representative')
    de,ye=row(8);be,rem=divmod(3*(de-1),208);check(rem==0,'sample B integral')
    ve=208*ye;Qe=de+ve
    # Exact S via quotient identity: division is now integer and exact.
    Se,rem=divmod(Qe**5-de*de,ve);check(rem==0,'exact actual S quotient')
    z=math.isqrt(Se);check(z*z<Se<(z+1)**2,'sample not integer square')
    vals={'d':de,'y':ye,'B':be,'v':ve,'Q':Qe,'S':Se,'floor_sqrt_S':z,'gap_above':Se-z*z,'gap_below':(z+1)**2-Se}
    check({k:str(v) for k,v in vals.items()}==c['sample_q8'],'sample exact big integers')
    zz=c['zero_Q_mod31_boundary'];check(zz['Q']==0 and zz['n']==2 and zz['N']==0,'nonunit boundary')
    E,h0,P0,n0,N0=frec(1,30,0,16,31);check(E==0 and [h0,P0,n0,N0]==[2,29,2,0],'never divide zero Q')
    print('PASS exact infinite family at finite 13^3 precision, and sample non-square; whole family killed by FN31')

class Poly:
    def __init__(self,v=0):self.d=v if isinstance(v,dict) else ({(0,)*5:v} if v else {})
    def __add__(self,o):
        o=o if isinstance(o,Poly) else Poly(o);d=self.d.copy()
        for k,v in o.d.items():d[k]=d.get(k,0)+v
        return Poly({k:v for k,v in d.items() if v})
    __radd__=__add__
    def __neg__(self):return Poly({k:-v for k,v in self.d.items()})
    def __sub__(self,o):return self+(-o if isinstance(o,Poly) else -Poly(o))
    def __rsub__(self,o):return Poly(o)-self
    def __mul__(self,o):
        o=o if isinstance(o,Poly) else Poly(o);t=collections.defaultdict(int)
        for a,x in self.d.items():
            for b,y in o.d.items():t[tuple(a[i]+b[i] for i in range(5))]+=x*y
        return Poly({k:v for k,v in t.items() if v})
    __rmul__=__mul__
    def __pow__(self,n):
        out=Poly(1);base=self
        while n:
            if n&1:out=out*base
            base=base*base;n//=2
        return out

def identities(c):
    vs=[]
    for i in range(5):e=[0]*5;e[i]=1;vs.append(Poly({tuple(e):1}))
    d,v,H,h,W=vs;Q=d+v;P=Q+h*v;E=4*v*H**2-P*Q**2+1;L=h*d-Q-4*H
    F=4*d*v*H**2-4*v*Q**2*H-Q**4+d;N=4*v*H**3+H+Q
    S=((((v+5*d)*v+10*d**2)*v+10*d**3)*v+5*d**4)+d**2*W
    residuals=[F-d*E-v*Q**2*L,N-(P*Q**2*H+Q)-H*E,v*(2*d*H-Q**2)**2-Q**5+d**2-d**2*E-d*v*Q**2*L,v*S-Q**5+d**2-d**2*(v*W-d**3+1)]
    check(all(not x.d for x in residuals),'expanded identities nonzero')
    check(c['all_expanded_residuals']==[[],[],[],[]],'identity receipt')
    print('PASS four whole polynomial identities over Z, no integer sampling')

def sources(c):
    b=(ROOT/'inputs/parent_A144_evidence.zip').read_bytes();check(digest(b)==c['parent_zip_sha256']==PARENT_SHA,'parent SHA')
    with zipfile.ZipFile(io.BytesIO(b)) as z:
        check(z.testzip() is None,'parent CRC');count=0
        for line in z.read(PREFIX+'SHA256SUMS.txt').decode().splitlines():
            h,n=line.split(maxsplit=1);check(digest(z.read(PREFIX+n.removeprefix('./')))==h,'parent member hash');count+=1
        check(count==c['parent_manifest_members']==39,'parent hash count')
        for name,mapping in c['matched'].items():
            blob=(ROOT/'inputs'/name).read_bytes();check(blob==z.read(PREFIX+mapping['member']) and digest(blob)==mapping['sha256'],'source exact member')
    check(digest((ROOT/'inputs/OVERVIEW-2026-09-22.md.txt').read_bytes())==c['overview_sha256'],'Overview exact bytes')
    check(c['historical_mathematics_rerun'] is False and c['repository_access'] is False,'adoption boundary')
    print('PASS direct-parent SHA/39 members and input copies; not an old mathematics replay')

def next_entry(c,fc):
    os=orbit(73,9);check(os==c['source_cycle_mod73'],'next source73')
    d1=[q for q,(d,y) in enumerate(os) if d==1];check(d1==c['d1_q_mod9']==[0,2],'73 divides d-1')
    pre=[q for q in range(12) if q%4==(-292*294//8)%4 and q%3 in (0,1)]
    keep=[q for q in range(36) if q%12 in pre and q%9 in d1]
    check(c['q_mod12_before_divisor']==pre==[1,9] and c['necessary_q_mod36']==keep==[9],'next true divisor entry')
    check(c['local_FN31']==next(r for r in fc['rows'] if r['A_mod496']==292),'next same c/s constraint')
    rr=c['local_FN31'];check(rr['allowed_H']==[22] and rr['F_roots'][0]['c_and_positive_s_residue_mod5']==[[3,3]],'next c3/s3 mod5')
    check(c['source_modulus_for_B_mod73']==292*73,'next exact quotient modulus')
    print('PASS next A292 necessary entry only: q=9 mod36, c=3, s=3 mod5; no solution claim')

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--cert-dir',type=Path,default=ROOT/'certificates');args=ap.parse_args()
    def load(n):return json.loads((args.cert_dir/n).read_text())
    names=['01_actual_13_quotient.json','02_SPLIT13_full_exponents.json','03_same_input_FN31.json','04_A208_all_rows_closed.json','05_original_Q31_consumer.json','06_same_M2_frontier.json','07_finite_13adic_failure_boundary.json','08_same_input_identities.json','09_source_adoption.json','10_next_A292_entry.json']
    check(sorted(p.name for p in args.cert_dir.glob('*.json'))==names,'complete expected certificate set')
    cs=[load(n) for n in names]
    quotient(cs[0]);split13(cs[1]);good,zq=fn31(cs[2]);closure(cs[3],cs[2]);C31=q31(cs[4],zq);frontier(cs[5],good,zq,C31);boundary(cs[6]);identities(cs[7]);sources(cs[8]);next_entry(cs[9],cs[2])
    print('VERIFY PASS: 10 new certificates; author-level proof boundary retained')
if __name__=='__main__':main()
