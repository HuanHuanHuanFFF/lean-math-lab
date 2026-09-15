"""Exact finite-obligation checker. It does not prove the adopted analytic theorem."""
from __future__ import annotations
import json, time
from pathlib import Path
from fractions import Fraction as F
from math import factorial, prod, gcd, isqrt
from common import *

ROOT=Path(__file__).resolve().parents[1]

class Rejected(ValueError): pass

def accept(cert:dict) -> dict:
    count=0
    def check(c, why):
        nonlocal count
        if not c: raise Rejected(why)
        count+=1
    check(cert['schema']=='B699_UNIFORM_COFACTOR_V1','schema')
    s=cert['source']
    check(s['lower_bound_sign']==-1,'published missing-minus correction is essential')
    check(s['height_normalization']=='H*logstar(Nv*h(xi)/H)','normalized height quotient is essential')
    check(s['finite_norm']=='q^(-v_q)','finite absolute value normalization')
    check(s['rank1_lambda']==12,'rank-one constant')
    check(cert['rough_kind']=='full_prime_powers','radical cannot replace full cofactor')
    check(cert['prime_set']==list(P0),'small prime set')
    check(cert['low_caps']=={str(p):M[p] for p in P0},'complete low powers including 2^3')
    # Independent reconstruction of the scalar coefficient and all Kummer weights.
    R0=F((2*factorial(8))**10, 2**42*prod(factorial(h)**3 for h in range(1,7)))
    check(R0.denominator==1 and R0==cert['scalar_R']==R,'scalar exact factorial identity')
    check(R<2**48 and 400**7>R and 400<11**3,'small-n and >=3-high exits')
    check(prod(M.values())==840 and 840<11**3,'zero-high exit')
    for a in range(9):
        for b in range(a+1):
            c=a-b
            # Count factor appearances directly, rather than trusting the compact formula.
            direct=sum(int(h>=9-a)+int(h>b)+int(h>c) for h in range(1,7))
            check(direct==max(a-2,0)+max(6-b,0)+max(6-c,0) and direct>=10,'45 Kummer slots')
    lo={p:dec(cert['log_bounds'][str(p)]['lower']) for p in P0}
    hi={p:dec(cert['log_bounds'][str(p)]['upper']) for p in P0}
    for p in P0:
        l,u=log_interval(p,32)
        l2,u2=scaled_log_interval(p,20)
        check(lo[p]<l<=u<hi[p],f'direct strict log bounds {p}')
        check(lo[p]<l2<=u2<hi[p],f'scaled strict log bounds {p}')
    check(e_upper(8)<F(11,4),'16e < 44')
    check(lo[7]>1 and hi[7]<=2 and hi[2]<=F(7,10),'monotone inversion log bounds')
    pp={tuple(x['high']):x for x in cert['profiles']}
    check(len(pp)==len(cert['profiles']) and set(pp)==set(profiles()),'all ten high profiles')
    expected_slots=set()
    profile_results=[]
    for H,row in pp.items():
        h=len(H); z=row['height_multiplier']; k=row['k']
        check(h in (1,2) and z>=1 and isinstance(k,int) and k>=3,'profile domain')
        for q in P0:
            if q in H:continue
            cap=prod(M[p] for p in P0 if p not in H and p!=q)
            # h(alpha_coefficient) <= log(cap W) < z log W, W >= 11.
            check(cap<11**(z-1),'coefficient height includes every low prime')
            for r in range(1,9): expected_slots.add((H,q,r))
        c,theta,D,A=profile_constants(H,lo,hi,z)
        check(dec(row['c_upper'])==c,'rank dependent analytic constant')
        check(dec(row['theta_upper'])==theta,'generator height product')
        check(dec(row['D_upper'])==D and dec(row['A_upper'])==A,'aggregated q-adic capacities')
        L=hi[7]+hi[2]*k
        check(dec(row['log_7K_upper'])>=L,'log(7 K) rigorous upper bound')
        used_L=dec(row['log_7K_upper'])
        margin=2**k-A*used_L
        check(margin>0 and dec(row['inverse_margin'])==margin,'strict monotone inversion')
        ck=cert['claims']['general_k']
        check(ck>=k,'uniform exponent covers this profile')
        if h==1: check(cert['claims']['single_high_k']>=k,'single-high consumer coverage')
        if H==(2,5):check(cert['claims']['high_2_5_k']>=k,'double-high consumer coverage')
        profile_results.append({'high':list(H),'k':k,'margin':enc(margin)})
    observed=set()
    for row in cert['slots']:
        H=tuple(row['high']);q=row['q'];r=row['r'];key=(H,q,r)
        check(key not in observed and key in expected_slots,'unique valid coefficient slot')
        observed.add(key)
        t=valuation(r,q);rp=r//q**t
        cap=prod(M[p] for p in P0 if p not in H and p!=q)
        check(row['t']==t and row['r_prime']==rp and gcd(rp,q)==1,'full q-adic cancellation')
        check(q**t<=8 and 1<=rp<=8 and row['numerator_factor_cap']==cap,'bounded numerator and denominator')
    check(observed==expected_slots,'all 192 coefficient slots covered')
    fam=cert['family']
    check(fam['m']==3 and fam['fixed_rough_prime']==439 and fam['congruence_modulus']==147,'remaining-position family')
    check(all(439%p for p in range(2,isqrt(439)+1)),'439 prime')
    check(439%147==145 and pow(10,42,147)==1 and fam['t_divisor']==42,'unbounded t congruence')
    check((1200*145)%49==1 and (1200*145)%9==3,'unique remaining (3,1) position')
    check(gcd(439,2*3*5*7)==1,'complete rough fixed factor')
    # Outside-band counting at alpha >= 2^48, W <= alpha.
    # 2 alpha^(-5/24) + alpha^(-1/2) + 2 alpha^(-1/3) + 2/alpha.
    c0=F(2,2**10)+F(1,2**24)+F(2,2**16)+F(2,2**48)
    check(fam['alpha_large_power']==48 and c0<F(1,100),'old-band union upper count')
    check(F(2,15)-F(1,100)>dec(fam['outside_old_bands_fraction'])==F(1,10),'many primitive beta remain outside old bands')
    return {'status':'PASS_NEW_UNIFORM_COFACTOR_OBLIGATIONS','exact_checks':count,
            'scalar_slots':45,'high_profiles':len(pp),'coefficient_slots':len(observed),
            'log_implementations':2,'profile_margins':profile_results,
            'analytic_theorem':'external corrected Proposition 5; not proved by this receiver',
            'historical_replays':0,'lean':False}

def main():
    start=time.perf_counter()
    cert=json.loads((ROOT/'evidence/certificate.json').read_text())
    out=accept(cert);out['seconds']=time.perf_counter()-start
    (ROOT/'logs').mkdir(exist_ok=True)
    (ROOT/'logs/acceptance.json').write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({k:v for k,v in out.items() if k!='profile_margins'},ensure_ascii=False))

if __name__=='__main__':main()
