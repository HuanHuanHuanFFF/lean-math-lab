"""Bounded implementation regressions and an exact failure witness; not new coverage."""
from __future__ import annotations
import argparse,json,math
from fractions import Fraction
from pathlib import Path
from consumers import PrefixFailure,analyze_input,recovery_roots,two_window_parameters,valuation


def factors(n):
    ds={};p=2
    while p*p<=n:
        while n%p==0:ds[p]=ds.get(p,0)+1;n//=p
        p+=1
    if n>1:ds[n]=ds.get(n,0)+1
    return ds


def factorial_v(n,p):
    s=0
    while n:n//=p;s+=n
    return s


def choose_v(n,j,p):return factorial_v(n,p)-factorial_v(j,p)-factorial_v(n-j,p)


def run(base):
    terminal=json.loads((base/'sources/small-C-terminals.json').read_text())
    actual=set();checked=0
    for n,j,p in terminal['witnesses']:
        assert p>=3 and all(p%d for d in range(2,math.isqrt(p)+1))
        assert 4<=j<=n//2 and 8<=n<=81
        assert choose_v(n,3,p)>0 and choose_v(n,j,p)>0
        assert math.comb(n,3)%p==0 and math.comb(n,j)%p==0
        actual.add((n,j));checked+=1
    expected={(n,j) for n in range(8,82) for j in range(4,n//2+1)}
    assert len(actual)==checked==1406 and actual==expected
    # The strip's integer necessary box, not an enumeration of all original n.
    strip_trials=0
    for A in (1,9,27):
        for g in range(1,301):
            for ep in range(g+1,2*g-A+1):
                if ep%2==0:continue
                for T in (1,3):
                    strip_trials+=1;eta=ep*T-3*A
                    assert not (eta and eta%(2*g)==0 and T*g*g-ep*ep<=A)
    weak=[];two_support=0
    for n in range(8,4097,8):
        for j in range(4,n//2):
            try:p=two_window_parameters(n,j,require_alpha=False)
            except PrefixFailure:continue
            g,ep,u,z,C,A,T,rho,H=(p[k] for k in ('g','eps','u','z','C','A','T','rho','H'))
            assert math.gcd(u,H)==1
            assert math.gcd(u,ep)==math.gcd(u,p['la']*p['mu'])
            assert A%math.gcd(ep,T)==0
            assert 9*C>16*u
            if p['eta']:
                assert not (z<=u and g<ep<=2*g-A)
            tf=factors(p['t3'])
            if len(tf)==2 and p['L']>1 and p['R']>1:
                two_support+=1
                assert math.gcd(ep,T)==math.gcd(u,rho)==1
                assert math.gcd(u,rho-4*A)==math.gcd(u,C)
            weak.append([n,j,p['alpha'],rho])
    # Synthetic exact norm/C2 models: algebra regression, NOT original NC3 inputs.
    norm_models=0;unequal_v_cases=0
    for prime in (5,7,11,13,17):
        for exponent in range(1,4):
            uu=prime**exponent
            choices=[4+prime**b for b in range(1,5)]
            k=next(k for k in range(1,2*prime+1,2) if (k+12)%prime==0)
            choices.append(4+uu*k)
            for TT in choices:
                zz=uu*TT-1;CC=4*zz*uu+4*zz+TT;HH=2*uu+1
                assert uu*CC-zz*HH*HH==1
                assert math.gcd(uu,TT)==1
                assert math.gcd(uu,TT-4)==math.gcd(uu,CC)
                vpC=valuation(CC,prime);vpR=valuation(TT-4,prime)
                if vpC!=exponent:
                    assert vpR==min(vpC,exponent);unequal_v_cases+=1
                norm_models+=1
    # This arithmetic example refutes extension of the unequal-v formula to p=3
    # using only the norm identities. It is not an NC3 input.
    assert 3*621-38*7**2==1
    assert (valuation(3,3),valuation(621,3),valuation(13-4,3))==(1,3,2)
    p=two_window_parameters(76672,26775,require_alpha=False)
    assert tuple(p[k] for k in ('g','u','z','H','C','eps','T','rho','delta'))==(1,5,144,11,3485,1,29,29,1051)
    assert p['alpha']==128*599 and recovery_roots(1,29)==[]
    n2=2*p['T']*p['eps']+2;ds=p['T']**2-p['z']*(n2-1)
    assert n2==60 and ds==-7655
    assert choose_v(76672,3,599)==choose_v(76672,26775,599)==1
    assert analyze_input(76672,26775)['status']=='common_by_frozen_prefix'
    api=0
    for n in range(8,97):
        for j in range(4,n//2+1):
            r=analyze_input(n,j);assert r['status']!='unresolved';api+=1
    cert=json.loads((base/'outputs/certificate.json').read_text())
    root_map={(r['A'],r['rho']):r['roots'] for r in cert['root_regression']['rows']}
    for A in (1,9,27):
        for rho in range(1,2002,2):
            found=[[r.numerator,r.denominator] for r in recovery_roots(A,rho)]
            assert found==root_map.get((A,rho),[])
    # Unbounded-family formulas tested at large exact values, not extrapolated from them.
    for d in (1,3,1000001,10**30+1):
        for A in (1,9,27):
            rho=A*d*(d*d+2*d-2)
            assert Fraction(-1,d) in recovery_roots(A,rho)
    return dict(status='PASS_REGRESSIONS',old_small_C_witnesses=checked,strip_box_trials=strip_trials,
                weak_window_bound=4096,weak_window_states=weak,two_support_weak_states=two_support,
                api_legal_inputs=api,root_api_inputs=3003,synthetic_norm_models=norm_models,
                unequal_valuation_cases=unequal_v_cases,three_exception=dict(u=3,C=621,H=7,z=38,eps=1,T=13,rho=13,valuations=[1,3,2]),
                failure_model=dict(n=76672,j=26775,parameters=p,n_prime=n2,delta_prime_squared=ds,
                                   common_prime=599,common_prime_valuations=[1,1]),
                scope='Finite regressions only; the infinite conclusions use proofs/PROOFS.md')

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True);a=ap.parse_args()
    base=Path(__file__).resolve().parents[1];r=run(base)
    a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(r,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({k:v for k,v in r.items() if k not in ('weak_window_states','failure_model','scope')}))
    print('weak_window_states',len(r['weak_window_states']))
