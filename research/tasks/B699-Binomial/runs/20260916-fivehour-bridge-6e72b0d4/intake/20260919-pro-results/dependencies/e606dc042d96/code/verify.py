#!/usr/bin/env python3
"""Exact replay for the two-tail q5 support-{17,23} closure.

The published Yu theorem and the paper arguments in PROOFS.md are explicit inputs,
not formalized by this program. This verifier never imports discovery/LLL code.
"""
from __future__ import annotations
import argparse, hashlib, json, sys, time
from pathlib import Path
from math import isqrt
from fractions import Fraction as F
sys.dont_write_bytecode=True
from poly_exact import const as c, add, scale, sub, mul, power, falling_binom, assert_equal
from consumer import vp, small6, qig_sides, theorem_domain, witness_divisor, vpbin
ROOT=Path(__file__).resolve().parents[1]
CAP=10**32

def require(ok,msg):
    if not ok: raise AssertionError(msg)

def load(name):return json.loads((ROOT/'evidence'/name).read_text())

def hashes():
    rows=(ROOT/'SHA256SUMS').read_text().splitlines()
    for row in rows:
        digest,rel=row.split('  ',1)
        require(hashlib.sha256((ROOT/rel).read_bytes()).hexdigest()==digest, 'hash '+rel)
    expected={row.split('  ',1)[1] for row in rows}|{'SHA256SUMS'}
    actual={str(x.relative_to(ROOT)) for x in ROOT.rglob('*') if x.is_file()}
    require(expected==actual,'manifest has missing or unexpected files')
    return len(rows)

def modpow(a,e,m):
    require(e>=0 and m>0,'modpow parameters');v=1
    while e:
        if e&1:v=v*a%m
        a=a*a%m;e//=2
    return v

def polynomial_checks() -> dict:
    j = {(1, 0): F(1)}
    k = {(0, 1): F(1)}
    n = add(j, k)
    X = mul(j, k)
    coeff = [mul(falling_binom(j, t), falling_binom(k, 4-t)) for t in range(5)]
    c0,c1,c2,c3,c4 = coeff
    I = add(scale(mul(c4,c0),12), scale(mul(c3,c1),-3), power(c2,2))
    J = add(scale(mul(c4,c2,c0),72),scale(mul(c3,c2,c1),9),
            scale(mul(c4,power(c1,2)),-27),scale(mul(power(c3,2),c0),-27),
            scale(power(c2,3),-2))
    Xm = add(X,scale(n,-1),c(1))
    Iright = mul(X,Xm,sub(n,c(3)),sub(n,c(2)))
    Jright = scale(mul(power(X,2),Xm,power(sub(n,c(3)),2),sub(n,c(2))),-1)
    counts = {}
    counts['quartic_I'] = assert_equal(scale(I,8),Iright,'quartic I')
    counts['quartic_J'] = assert_equal(scale(J,16),Jright,'quartic J')
    A = sub(mul(sub(n,c(1)),sub(n,c(2))),X)
    gap = mul(power(X,3),power(Xm,2),power(sub(n,c(3)),3),power(sub(n,c(2)),2),A)
    counts['positive_gap'] = assert_equal(scale(sub(power(J,2),scale(power(I,3),2)),256),gap,'positive gap')
    # Check the X=n^2/4 evaluation by cross multiplication in a separate univariate ring.
    N = {(1,0):F(1)}
    XX = scale(power(N,2), F(1,4))
    gg = mul(power(XX,3),power(add(XX,scale(N,-1),c(1)),2),
             power(sub(N,c(3)),3),power(sub(N,c(2)),2),
             sub(mul(sub(N,c(1)),sub(N,c(2))),XX))
    FF = mul(N,sub(N,c(1)),sub(N,c(2)),sub(N,c(3)))
    lhs = scale(mul(gg,power(sub(N,c(1)),6),power(sub(N,c(3)),3)),2**20)
    rhs = scale(mul(power(FF,6),add(scale(power(N,2),3),scale(N,-12),c(8))),256)
    counts['QIG_upper_evaluation'] = assert_equal(lhs,rhs,'QIG upper evaluation')
    # Positivity of the two relevant univariate polynomials for n=14+x>=14.
    Z = add(N,c(14))
    deriv = add(scale(power(Z,2),2),scale(Z,-9),c(6))
    endpos = add(scale(power(Z,2),3),scale(Z,-12),c(8))
    require(all(v>0 for v in deriv.values()), 'derivative positivity')
    require(all(v>0 for v in endpos.values()), 'gap endpoint positivity')
    return {"exact_polynomial_identities": counts,
            "all_arithmetic": "fractions.Fraction; coefficient equality, no floating point"}


def analytic_parameters():
    # Universal h_i=4 satisfies both height and complex-log conditions in PROOFS.
    require(F(8,3)**4>23 and F(8,3)**6>160,'elementary log envelopes')
    require(F(95,2)**2*2<100**2,'9.5*(4+1)/sqrt(log p) <100')
    phi=22000*100**10*2*4**4*6
    require(phi<10**28,'Yu coefficient')
    require(3*30**6<2**32,'mass coefficient')
    require(CAP>3*10**28*96,'absolute exponent cap')
    # Complete period, not sampled exponent generalization: bases have these periods modulo72.
    require(pow(5,6,72)==pow(17,2,72)==pow(23,6,72)==1,'periods')
    for E in range(6):
      for b in range(2):
       for d in range(6):
        p=pow(5,E,72)*pow(17,b,72)*pow(23,d,72)
        A=(3*p+5)%72==56
        B=(p+5)%72==18
        require(A==(E%2==0 and b%2==1 and d%2==0),'case A congruence classification')
        require(B==(E%2==1 and b%2==1 and d%2==0 and (E+d)%6==1),'case B classification')
    return {'Yu_Phi_upper_integer':str(phi),'adopted_Phi_bound':str(10**28),
            'absolute_H_cap_strict':str(CAP),'complete_mod72_period_cells':72}

def dual_checks():
    rows=load('dual_certificates.json')
    keys={(r['case'],r['p'],r['h'],r['coordinate_bound']) for r in rows}
    expected={(t,2,h,H) for t in ('A','B') for h,H in ((400,CAP),(45,400))}
    expected|={('shared',3,260,CAP),('shared',3,30,400)}
    require(keys==expected and len(rows)==6,'all six dual contracts')
    output=[]
    for r in rows:
        p=r['p'];h=r['h'];box=r['coordinate_bound'];q=int(r['modulus']);M=int(r['period'])
        ell17=int(r['log289']);ell23=int(r['log529']);T=int(r['target'])
        vec=list(map(int,r['dual_vector']))
        require(q==p**h and M==p**(h-(3 if p==2 else 1)),'modulus and full period')
        require(all(0<=x<M for x in (ell17,ell23,T)),'canonical discrete exponents')
        require(modpow(25,M,q)==1 and modpow(25,M//p,q)!=1,'full order at terminal modulus')
        require(modpow(25,ell17,q)==289%q and modpow(25,ell23,q)==529%q,'base logs')
        target=(-1,17) if p==3 else ((-5,51) if r['case']=='A' else (-3,85))
        require((r['target_numerator'],r['target_denominator'])==target,'original target')
        require((target[1]*modpow(25,T,q)-target[0])%q==0,'target logarithm')
        require((vec[1]-vec[0]*ell17)%M==0 and (vec[2]-vec[0]*ell23)%M==0,'dual congruences')
        rem=(vec[0]*T)%M;dist=min(rem,M-rem);cost=box*sum(map(abs,vec))
        require(dist==int(r['target_distance']) and cost==int(r['box_cost']),'exact costs')
        require(dist>cost,'strict affine separation')
        output.append({'case':r['case'],'p':p,'h':h,'box':str(box),
                       'strict_gap_minus_cost':str(dist-cost)})
    require((13+6*399+12*260-1)//14==394,'large A H cap')
    require((13+6*399+12*259-1)//14==393,'large B H cap')
    require((13+6*44+12*30-1)//14==45,'small A H cap')
    require((13+6*44+12*29-1)//14==44,'small B H cap')
    return output

def triples_by_total(case,Hmax):
    """Independent domain recovery, ordered by total exponent, not generator loops."""
    for H in range(3,Hmax+1):
      for E in range(2,H):
       for b in range(1,H-E+1):
        d=H-E-b
        if b%2!=1 or d%2!=0:continue
        if case=='A' and E%2==0:yield E,b,d
        if case=='B' and E>=3 and E%2==1 and (E+d)%6==1:yield E,b,d

def modular_caps():
    rows=load('modular_caps.json')
    exp=[('A',45,18,9,2024,15),('A',15,10,8,84,10),
         ('B',44,13,8,588,12),('B',12,11,7,9,10)]
    require(len(rows)==len(exp),'modular stage count')
    output=[]
    for z,(case,H,h2,h3,count,nextH) in zip(rows,exp):
        require((z['case'],z['H_max'],z['h2'],z['h3'],z['triples'],z['next_H_max'])==
                (case,H,h2,h3,count,nextH),'stage contract')
        data=[];m2=2**h2;m3=3**h3;coef=3 if case=='A' else 1
        for E,b,d in triples_by_total(case,H):
            n2=(coef*modpow(5,E,m2)*modpow(17,b,m2)*modpow(23,d,m2)+5)%m2
            n3=(coef*modpow(5,E,m3)*modpow(17,b,m3)*modpow(23,d,m3)+5)%m3
            r2=(n2-(2 if case=='B' else 0))%m2
            r3=(n3-(2 if case=='A' else 0))%m3
            require(r2!=0 and r3!=0,'modular high-valuation exclusion')
            data.append([E,b,d,r2,r3])
        require(len(data)==count and len({tuple(x[:3]) for x in data})==count,'complete finite domain')
        dig=hashlib.sha256(json.dumps(sorted(data),separators=(',',':')).encode()).hexdigest()
        require(dig==z['residue_digest'] and z['all_nonzero'] is True,'residue digest')
        require((12+6*(h2-1)+12*(h3-1))//14==nextH,'derived next H')
        output.append({'case':case,'H_before':H,'checked_exponent_triples':count,
                       'u_max':h2-1,'v_max':h3-1,'H_after':nextH})
    return output

def tail_checks():
    rows=load('finite_tail.json');bykey={(r['case'],r['E'],r['b'],r['c']):r for r in rows}
    want={(case,*t) for case in ('A','B') for t in triples_by_total(case,10)}
    require(set(bykey)==want and len(rows)==len(want)==26,'complete 26-row endpoint')
    counts={'A':0,'B':0}; maxn=0
    for (case,E,b,d),r in bykey.items():
        n=(3 if case=='A' else 1)*5**E*17**b*23**d+5;T,L,R=qig_sides(n)
        u=vp(n-(2 if case=='B' else 0),2);v=vp(n-(2 if case=='A' else 0),3)
        require(r=={'case':case,'E':E,'b':b,'c':d,'n':str(n),'u':u,'v':v,
                    'T':str(T),'lhs':str(L),'rhs':str(R)},'original terminal integers')
        require(n%1800==(1280 if case=='A' else 1530),'native row class')
        require(vp(n-5,5)==E,'complete 5 valuation')
        require((n-5)//small6(n-5)==17**b*23**d,'actual native q5')
        require(T==(10 if case=='A' else 30)*2**u*3**v,'actual small parts')
        require(L<R,'strict QIG terminal')
        counts[case]+=1;maxn=max(maxn,n)
    require(counts=={'A':20,'B':6},'endpoint case counts')
    return {'strict_original_rows':counts,'maximum_terminal_n':str(maxn),
            'unresolved_finite_rows':0,'target_j_enumeration':0}

def witnesses():
    out=[]
    for r in load('witnesses.json'):
        n,j,p=r['n'],r['j'],r['p']
        require(p>=7 and all(p%d for d in range(2,isqrt(p)+1)),'small diagnostic prime')
        require(n%p<=3,'prime belongs to first four source positions')
        require(vpbin(n,6,p)>0 and vpbin(n,j,p)>0,'genuine common prime')
        w=witness_divisor(n,j)
        require(w['divisor']>1,'witness API result')
        out.append({**r,'source_vp':vpbin(n,6,p),'target_vp':vpbin(n,j,p),'API_source':w['source_row']})
    return out

def q51_diagnostic():
    # Regression of the all-exponent argument in FAILURES, not an unbounded scan.
    require(pow(5,6,72)==1 and pow(41,6,72)==1,'Q51 family periods')
    require(10*10**2%41==16%41,'local ten-square residue is compatible')
    for s,t in ((0,0),(1,2),(4,1)):
        E=6*s+3;b=6*t+1;A=5**E;Q=41**b;n=A*Q+5;j=Q+1
        require(n%9000==5130 and 7<=j<=n//2,'diagnostic original integers')
        require((n-5)//small6(n-5)==Q,'diagnostic native q5')
        require((j-1)%Q==0 and (n-j-1)%41==3,'whole fifth block in slot1')
        require(vpbin(n,6,41)==b and vpbin(n,j,41)==0,'all 41 layers no carry')
        N=n-1
        require(0<4*(A-4)<N and (j*(j-1))%N!=0,'first source definitely fails')
    return {'all_exponent_proof':'FAILURES.md F1', 'regression_cases':3,
            'not_a_RES10_or_NC_model':True}

def main():
    t=time.perf_counter();before=hashes()
    results={'status':'PASS_Q5_17_23_TWO_TAILS_FULL_ROW_CLOSURE',
             'hashes_before':before,'polynomials':polynomial_checks(),
             'analytic_parameters':analytic_parameters(),'dual_certificates':dual_checks(),
             'modular_reductions':modular_caps(),'finite_endpoint':tail_checks(),
             'witnesses':witnesses(),'Q51_diagnostic':q51_diagnostic(),
             'published_theorem_not_reproved':'Yu 1994 section 0.1',
             'Lean':False,'external_independent_review':False}
    after=hashes();require(before==after,'immutable replay')
    results['hashes_after']=after;results['elapsed_seconds']=round(time.perf_counter()-t,6)
    return results

if __name__=='__main__':
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('--json',action='store_true');args=ap.parse_args()
    try:ans=main()
    except Exception as exc:
        print(f'FAIL_Q5_17_23: {type(exc).__name__}: {exc}',file=sys.stderr);sys.exit(1)
    print(json.dumps(ans,ensure_ascii=False,indent=2) if args.json else ans['status'])
