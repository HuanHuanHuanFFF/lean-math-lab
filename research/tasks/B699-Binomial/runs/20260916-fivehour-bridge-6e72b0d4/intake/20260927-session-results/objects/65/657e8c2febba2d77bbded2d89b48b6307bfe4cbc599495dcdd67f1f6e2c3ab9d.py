#!/usr/bin/env python3
"""Exact receiving implementation. Uses Pell powering, not the generator's orbit.
No external mathematical verification is claimed. Standard library only.
"""
from __future__ import annotations
import argparse, collections, hashlib, io, json, math, zipfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
PREFIX='B699-D-i3-20260926-A100-QUOTIENT5-PERIOD29/'
PARENT_SHA='1e075f0a27c2e0d9709f3dcbbc35b5a670b9ea129a57a74429e49986cfca1a08'

def require(test,why):
    if not test:raise ValueError(why)
def sha(data):return hashlib.sha256(data).hexdigest()
def canon(x):return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def pair_mul(a,b,m=None):
    ans=(a[0]*b[0]+3*a[1]*b[1],a[0]*b[1]+a[1]*b[0])
    return (ans[0]%m,ans[1]%m) if m else ans
def pell(q,m=None):
    e=8*q+1;x=(1,0);z=(2,1);mm=2*m if m else None
    while e:
        if e&1:x=pair_mul(x,z,mm)
        z=pair_mul(z,z,mm);e//=2
    U,X=x;require(U%2==0 and X%2==1,'Pell parity')
    d,y=(3*X-1)//2,U//2
    return (d%m,y%m) if m else (d,y)
def cycle(m,T):
    require(0<T<=100000,'period safety bound')
    xs=[pell(q,m) for q in range(T)]
    require(len(set(xs))==T and xs[0]==(1,1) and pell(T,m)==(1,1),'not full first-return cycle')
    return xs
def s_mod(d,y,A,B,m):
    v=A*y%m
    # Horner expression, independently organized.
    return (((((v+5*d)*v+10*d*d)*v+10*d**3)*v+5*d**4)+d*d*B*y)%m

def verify_quot(c):
    require(c['A']==144 and c['adopted_q_mod12']==[4,8] and c['B']=='(d-1)/48','A144 input')
    require([b['modulus'] for b in c['precision']]==[5,25,125],'quotient precisions')
    fixed={5:(6,12,[4]),25:(30,60,[40]),125:(150,300,[40,160,220])}
    for block in c['precision']:
        m=block['modulus'];T=block['source_period'];joint=block['joint_period']
        require((T,joint,block['surviving_q'])==fixed[m],'incorrect full-period summary')
        require(block['source_modulus']==48*m,'wrong quotient modulus')
        xs=cycle(48*m,T);require([list(x) for x in xs]==block['source_orbit'],'source orbit values')
        require(joint==math.lcm(12,T),'joint period')
        rows=[]
        for q in range(joint):
            if q%12 not in (4,8):continue
            d,y=pell(q,48*m);b,rem=divmod(d-1,48);require(rem==0,'nonintegral actual quotient')
            require((d-1+48*m)//48-b==m,'quotient representative dependence')
            s=s_mod(d,y,144,b,m);roots=[x for x in range(m) if x*x%m==s]
            rows.append({'q':q,'d_at_lift':d,'y_at_lift':y,'B_mod':b%m,'S_mod':s,'square_roots':roots})
        require(block['rows']==rows,'quotient row/zero-square classification')
        require(block['surviving_q']==[r['q'] for r in rows if r['square_roots']],'surviving row list')
    print('01 PASS: complete actual B mod5/25/125; zero squares retained')

def verify_fn(c):
    xs=cycle(5,3);require(c['source_orbit']==[list(x) for x in xs],'FN5 source')
    require(len(c['rows'])==15,'FN5 coverage')
    expected=[];qmap={}
    for a in range(5):
        qmap[str(a)]=[]
        for q,(d,y) in enumerate(xs):
            v=a*y%5;Q=(d+v)%5;vals=[];allowed=[]
            for H in range(5):
                h=(4*H+Q)*pow(d,-1,5)%5;P=(Q+h*v)%5
                norm=(4*v*H*H-P*Q*Q+1)%5
                fv=d*norm%5;nv=(4*v*H**3+H+Q)%5
                n0=(2*P*Q*H+2)%5
                if norm==0:
                    require(nv==n0*Q*3%5,'same-input N=nQ/2 check')
                    if n0!=0:allowed.append(H)
                vals.append({'H':H,'F':fv,'N':nv})
            if allowed:qmap[str(a)].append(q)
            expected.append({'A_mod5':a,'q_mod3':q,'d':d,'y':y,'v':v,'Q':Q,'F_coeff_ascending':[(d-Q**4)%5,(-4*v*Q*Q)%5,(4*d*v)%5],'H_values':vals,'allowed_H':allowed})
    require(c['rows']==expected,'FN5 row/actual modular recovery mismatch')
    require(c['allowed_q_by_A_mod5']==qmap=={'0':[0],'1':[0,2],'2':[0,1],'3':[0,2],'4':[0]},'FN5 q summary')
    require(c['not_sufficient_for_original_recovery'] is True,'FN5 evidence scope')
    print('02 PASS: all 75 local H cases cross-checked against original norm, h, P, n')

def verify_closure(c,qc,fc):
    require(c['A']==144 and c['adopted_v3_A']==2,'closure A')
    x=144;e=0
    while x%3==0:x//=3;e+=1
    require(e==2 and c['adopted_FULL3_implies_q_mod3']==[1,2],'FULL3 specialization')
    require(c['adopted_TRI4_q_mod4']==0 and (-144*146//8)%4==0,'TRI4 specialization')
    require(c['exhaustive_q_mod12']==[q for q in range(12) if q%3 and q%4==0]==[4,8],'original row coverage')
    expected=[]
    for r in qc['precision'][0]['rows']:
        q=r['q'];f=next(z for z in fc['rows'] if z['A_mod5']==4 and z['q_mod3']==q%3)
        roots=[z['H'] for z in f['H_values'] if z['F']==0];nv=[z['N'] for z in f['H_values'] if z['F']==0]
        require(not f['allowed_H'],'surviving original input at A144')
        expected.append({'q_mod12':q,'source_q_mod3':q%3,'actual_B_mod5':r['B_mod'],'actual_S_mod5':r['S_mod'],'F_roots':roots,'N_at_F_roots':nv,'Q_mod5':f['Q'],'exclusion':'non-square S' if not r['square_roots'] else 'F forces N=0 while 5 does not divide nQ'})
    require(c['rows']==expected,'closure contradiction details')
    require(c['closed_all_q_and_original_prime_exponents'] and c['uses_original_n'] and c['no_finite_bottom'],'closure scope')
    print('03 PASS: A144 entire adopted branch, no bounded-q scan')

def verify_consumers(c,fc):
    require(c['condition']=='A=4 mod5' and c['necessary_q_mod3']==[0],'general FN5 premise')
    powcycle=[pow(5,e,336) for e in range(1,13)]
    require(len(set(powcycle))==12 and powcycle[-1]==1 and pow(5,13,336)==5,'all positive exponents cycle')
    require(c['positive_power_period_mod336']==powcycle and c['period_length']==12,'Q5 power cycle')
    require(c['allowed_A_mod336']==sorted((x-1)%336 for x in powcycle),'Q5 A residues')
    require(c['noninvertible_source_F_roots']==[2,3],'zero-Q branch')
    require(c['FULL3_extra_forbidden_A_mod27']==[9,18],'FULL3 exact exponent, not all 3|A')
    roots=[x for x in fc['rows'] if x['A_mod5']==4 and x['q_mod3']==0][0]
    require(roots['Q']==0 and roots['allowed_H']==[2,3],'do not divide by zero Q')
    for H in [2,3]:
        d=y=1;v=4;Q=0;h=(4*H+Q)%5;P=(Q+h*v)%5
        require((2*P*Q*H+2)%5==2 and P!=0,'original n and distinct-base local compatibility')
    require(c['n_mod5']==2,'n source residue')
    target=[{'c':k,'s_mod4':[e for e in range(4) if k*pow(2,e,5)%5==2]} for k in (1,3)]
    require(c['n_congruences']==target,'c 2^s residues')
    require(c['sufficient_recovery_claim'] is False,'scope consumer')
    print('04 PASS: full original 5-powers, zero-Q branch, FULL3/n consumers')

def verify_frontier(c,cc):
    raw=(ROOT/'inputs/parent_frontier_M0.json').read_bytes();p=json.loads(raw);old=json.loads((ROOT/'inputs/parent_frontier_M1.json').read_text())
    R=p['surviving_A_residues'];m0=p['new_A_modulus'];m1=old['new_modulus'];J=set(old['bad_new_residues']);C=set(cc['positive_power_period_mod336'])
    require(len(R)==118548 and R==sorted(set(R)) and all(x%2==0 and 0<=x<m0 for x in R),'adopted parent list structure')
    require(sha(raw)==c['parent_M0_sha256']==old['parent_frontier_sha256'],'adopted parent digest')
    require(m0==3031056 and m1==m0*725==2197515600 and math.gcd(m0,725)==1,'old CRT moduli')
    histogram=collections.Counter((a%336,a%9) for a in R)
    bad=sum(n for (r,s),n in histogram.items() if (r+1)%336 not in C)
    div9=sum(n for (r,s),n in histogram.items() if (r+1)%336 in C and s==0)
    good=len(R)-bad-div9
    groups={'Q5_incompatible':bad,'Q5_compatible_and_div9':div9,'Q5_compatible_not_div9':good}
    require(groups==c['parent_groups']=={'Q5_incompatible':103935,'Q5_compatible_and_div9':1653,'Q5_compatible_not_div9':12960},'parent grouped projection')
    bc=[sum(x not in J and x%5==r for x in range(725)) for r in range(5)]
    require(bc==c['allowed_b_counts_mod5']==[129,145,145,145,145],'allowed 725-class partition')
    require(c['old_J_mod725']==sorted(J),'parent gate retained')
    oldcount=len(R)*len([x for x in range(725) if x not in J]);drop=bad*bc[4]
    require(c['parent_M0']==m0 and c['parent_M0_count']==len(R) and c['old_M1']==m1 and c['old_M1_count']==oldcount==84050532,'old compressed representation')
    require(c['Q5_same_M1']=={'newly_excluded':drop,'remaining':oldcount-drop} and drop==15070575,'same M1 net delta')
    require(m1%9==0 and m1%27!=0,'exact factor-three extension')
    for r in [0,9,18]:require(sorted((r+k*m1)%27 for k in range(3))==[0,9,18],'three lifts of divisible-by-9 class')
    extra=2*div9*bc[4]
    expected={'modulus':3*m1,'parent_lift':3*oldcount,'Q5_excluded':3*drop,'Q5_remaining_lift':3*(oldcount-drop),'additional_FULL3_excluded':extra,'total_newly_excluded_relative_to_parent_lift':3*drop+extra,'remaining':3*(oldcount-drop)-extra}
    require(c['FULL3_lifted_M2']==expected,'lifted M2 counts')
    require(expected['remaining']==206460501 and extra==479370,'lifted final tally')
    Rset=set(R)
    ok=lambda a:a%m0 in Rset and a%725 not in J
    new=lambda a:a%5!=4 or ((a+1)%336 in C and a%27 not in (9,18))
    least=next(a for a in range(2,10000,2) if ok(a) and new(a))
    require(c['least_positive_surviving_A']==least==208 and c['old_positive_A_below_new_min']==[a for a in range(2,least,2) if ok(a)]==[144],'minimum projected A')
    require(c['no_joint_period_scan'] and c['new_tested_min_is_only_a_projection'],'count interpretation')
    print('05 PASS: M1 84050532 -> 68979957; M2 parent lift 252151596 -> 206460501')

def verify_boundary(c):
    require(c['A']==144 and c['family_q_offset']==40 and c['family_q_step']==7500,'boundary family')
    m=c['source_modulus'];T=c['source_period'];require((m,T)==(150000,3750),'boundary period')
    xs=cycle(m,T);require(sha(canon([list(x) for x in xs]))==c['source_states_sha256'],'boundary full orbit digest')
    require(math.lcm(T,12)==7500,'boundary preserves same q classes')
    d0,y0=pell(40,m);b0,rem=divmod(d0-1,48);require(rem==0,'boundary quotient')
    require((c['d_at_lift'],c['y_at_lift'],c['actual_B_mod3125'])==(d0,y0,b0%3125),'boundary actual residues')
    ss=s_mod(d0,y0,144,b0,3125);require(c['actual_S_mod3125']==ss==625 and c['one_square_root_mod3125']==25,'boundary finite square')
    d,y=pell(40);B,rem=divmod(d-1,48);require(rem==0 and 144*B==3*(d-1),'sample exact source')
    require(d*d+d+1==3*y*y,'sample exact Pell')
    v=144*y;Q=d+v;S,rem=divmod(Q**5-d*d,v);require(rem==0,'sample exact square target quotient')
    z=math.isqrt(S);vals={'d':d,'y':y,'B':B,'v':v,'Q':Q,'S':S,'floor_sqrt_S':z,'gap_above':S-z*z,'gap_below':(z+1)**2-S}
    require(c['sample_q40']=={k:str(x) for k,x in vals.items()} and z*z<S<(z+1)**2,'sample isqrt gaps')
    require(c['Q_mod5']==4 and c['F_roots_mod5']==[4] and c['N_at_F_roots_mod5']==[0],'boundary already killed by FN5')
    print('06 PASS: exact unbounded finite-precision family already excluded; sample not a square')

# Independent operator-based polynomial receiver. Monomial dictionary in five variables.
class Poly:
    def __init__(self,value=0):self.t=dict(value) if isinstance(value,dict) else ({(0,0,0,0,0):value} if value else {})
    @staticmethod
    def v(i):
        a=[0]*5;a[i]=1;return Poly({tuple(a):1})
    @staticmethod
    def wrap(x):return x if isinstance(x,Poly) else Poly(x)
    def __add__(self,other):
        r=dict(self.t)
        for m,x in self.wrap(other).t.items():r[m]=r.get(m,0)+x
        return Poly({m:x for m,x in r.items() if x})
    __radd__=__add__
    def __neg__(self):return Poly({m:-x for m,x in self.t.items()})
    def __sub__(self,x):return self+-self.wrap(x)
    def __rsub__(self,x):return self.wrap(x)+-self
    def __mul__(self,other):
        r={}
        for m,a in self.t.items():
            for n,b in self.wrap(other).t.items():
                z=tuple(m[i]+n[i] for i in range(5));r[z]=r.get(z,0)+a*b
        return Poly({m:x for m,x in r.items() if x})
    __rmul__=__mul__
    def __pow__(self,n):
        r=Poly(1)
        while n:
            if n&1:r=r*self
            self=self*self;n//=2
        return r

def verify_identities(c):
    d,v,H,h,W=[Poly.v(i) for i in range(5)];Q=d+v;P=Q+h*v
    norm=4*v*H**2-P*Q**2+1;lin=h*d-Q-4*H
    F=4*d*v*H**2-4*v*Q**2*H-Q**4+d;N=4*v*H**3+H+Q
    S=((((v+5*d)*v+10*d**2)*v+10*d**3)*v+5*d**4)+d**2*W
    identities={
      'F=d*norm+v*Q^2*lin':F-d*norm-v*Q**2*lin,
      'N-(P*Q^2*H+Q)=H*norm':N-(P*Q**2*H+Q)-H*norm,
      'v*(2*d*H-Q^2)^2-Q^5+d^2=d^2*norm+d*v*Q^2*lin':v*(2*d*H-Q**2)**2-Q**5+d**2-d**2*norm-d*v*Q**2*lin,
      'v*S-Q^5+d^2=d^2*(v*W-d^3+1)':v*S-Q**5+d**2-d**2*(v*W-d**3+1)}
    require(all(not p.t for p in identities.values()),'integer polynomial identity failed')
    require(c['identities']==[{'identity':n,'expanded_residual':[]} for n in identities],'identity certificate')
    require(c['variables']==['d','v','H','h','W'] and c['no_integer_sampling_used'],'identity basis')
    print('07 PASS: four identities over the integer polynomial ring, same H/P/Q/n')

def verify_sources(c):
    data=(ROOT/'inputs/parent_A100_evidence.zip').read_bytes();require(sha(data)==c['parent_zip_sha256']==PARENT_SHA,'exact direct parent ZIP hash')
    z=zipfile.ZipFile(io.BytesIO(data));require(z.testzip() is None,'parent CRC')
    lines=z.read(PREFIX+'SHA256SUMS.txt').decode().splitlines()
    for line in lines:
        h,n=line.split('  ',1);require(sha(z.read(PREFIX+n.removeprefix('./')))==h,'parent member hash')
    require(c['parent_manifest_entries_checked']==len(lines)==38,'parent manifest coverage')
    for name,obj in c['matched_members'].items():
        b=(ROOT/'inputs'/name).read_bytes();require(b==z.read(PREFIX+obj['member']) and sha(b)==obj['sha256'],'adopted member match '+name)
    require(c['overview_sha256']==sha((ROOT/'inputs/OVERVIEW-2026-09-22.md.txt').read_bytes()),'overview bytes')
    require(c['historical_mathematics_rerun'] is False and c['new_results_do_not_claim_full_i3'],'source scope')
    print('08 PASS: direct parent bytes and 38 hashes; no parent mathematical replay')

def main():
    p=argparse.ArgumentParser();p.add_argument('--certs',type=Path,default=ROOT/'certificates');a=p.parse_args()
    files=['01_actual_B_5_25_125.json','02_same_input_FN5.json','03_A144_all_rows_closed.json','04_Q5_FULL3_n_consumers.json','05_nested_CRT_frontier.json','06_finite_5adic_boundary.json','07_same_input_identities.json','08_source_adoption.json']
    require(sorted(x.name for x in a.certs.glob('*.json'))==files,'certificate file set')
    c=[json.loads((a.certs/n).read_text()) for n in files]
    verify_quot(c[0]);verify_fn(c[1]);verify_closure(c[2],c[0],c[1]);verify_consumers(c[3],c[1]);verify_frontier(c[4],c[3]);verify_boundary(c[5]);verify_identities(c[6]);verify_sources(c[7])
    print('ALL 8 CERTIFICATES PASS. Author-level exact receiving; not Lean/external review.')
if __name__=='__main__':main()
