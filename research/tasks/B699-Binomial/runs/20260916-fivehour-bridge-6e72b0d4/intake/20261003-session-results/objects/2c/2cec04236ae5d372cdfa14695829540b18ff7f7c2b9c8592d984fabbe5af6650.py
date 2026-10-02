"""New R6 endpoint, small-part, residue and source-pin verification only.
The general implications and all-real concavity/monotonicity are proved in PROOFS.md.
Old author's theorems are adopted, not independently re-proved by this script.
"""
from __future__ import annotations
from fractions import Fraction as F
from pathlib import Path
import hashlib,json,math,sys
from exact import (log_atanh,log_riemann,root_certificate,read_root,decimal_interval,
                   linear_logs,vp_choose)
ROOT=Path(__file__).resolve().parents[1]
I=4883; C=F(10769,10000); E=8


def constants(I0:int=I):
    amin=F(4,5)-F(1,I0);bmin=F(2,3)-F(1,I0)
    v=F(19,15)-F(2,I0);D=F(194,225)+F(17,15*I0)
    alpha=1-D/v
    beta_const=1-F(1,I0)+(-F(24,25)-F(1,3))/v
    beta_logs=[(amin*amin/v,2*amin),(F(2,9)/v,bmin),
               (-F(1,I0)-F(17,15*I0)/v,F(I0))]
    return amin,bmin,v,alpha,beta_const,beta_logs


def endpoint(T:int,method:str,I0:int=I)->dict:
    log_fn=log_atanh if method=='atanh' else log_riemann
    root_scale=2**40 if method=='atanh' else 10**6
    amin,bmin,v,alpha,beta_const,beta_logs=constants(I0)
    assert F(1,2)<amin<F(4,5) and 0<bmin<F(2,3) and v>0 and alpha>0
    # Paper denominator step needs its universal numerator lower bound negative.
    dl,du=linear_logs(-F(24,25)-F(1,3),[(amin*amin,2*amin),(F(2,9),bmin)],log_fn)
    assert du<0
    assert log_fn(I0)[0]>1
    assert log_fn(I0*T)[0]>F(9,8) # high-power tail monotonicity in i
    benefit=linear_logs(beta_const,beta_logs+[(alpha,F(T)),(F(1),F(T-1,T))],log_fn)
    roots=[root_certificate(I0*T,e,root_scale) for e in range(2,E+2)]
    values=[read_root(q) for q in roots]
    ly,uy=log_fn(I0*T);l2,u2=log_fn(2)
    qlo,qhi=ly/u2,uy/l2
    lo_cost=C*(1+(sum((a for a,b in values[:-1]),F(0))+qlo*values[-1][0])/I0)
    hi_cost=C*(1+(sum((b for a,b in values[:-1]),F(0))+qhi*values[-1][1])/I0)
    low=benefit[0]-hi_cost;high=benefit[1]-lo_cost
    return {'I':I0,'T':T,'method':method,'root_certificates':roots,
            'structural_lower_mass':decimal_interval(*benefit),
            'small_prime_upper_mass':decimal_interval(lo_cost,hi_cost),
            'margin':decimal_interval(low,high),
            'positive':low>0,
            'strict_claim': 'margin > 1/100' if T==32 else 'margin > 3/5',
            'claimed_threshold_passed':low>(F(1,100) if T==32 else F(3,5))}


def local_window_tests()->dict:
    # Regression for the finite residue formula, not a search for B699 inputs.
    total=0;least=None;digest=hashlib.sha256()
    for i in range(3,97):
        s=4*i//5;ell=2*i//3;r=i-ell-1;lam=2*s-r
        assert 0<s<i and 0<ell<i and lam>0
        for a in range(i):
            for b in range(a+1):
                formula=max(s-b,0)+max(s-(a-b),0)+max(a-r,0)
                literal=sum(h>b for h in range(1,s+1))+sum(h>a-b for h in range(1,s+1))+sum(h>=i-a for h in range(1,ell+1))
                assert formula==literal and formula>=lam
                slack=formula-lam;least=slack if least is None else min(least,slack)
                digest.update(f'{i},{a},{b},{formula}\n'.encode());total+=1
    return {'type':'local source-residue identity regression; not original NC enumeration',
            'i_range':[3,96],'cases':total,'minimum_slack':least,'sha256':digest.hexdigest()}


def factor_trial(n:int)->dict[int,int]:
    factors={};p=2
    while p*p<=n:
        while n%p==0:factors[p]=factors.get(p,0)+1;n//=p
        p=3 if p==2 else p+2
    if n>1:factors[n]=factors.get(n,0)+1
    return factors


def exact_small_part_examples()->list:
    # Exact binomial factorization and full Legendre checks; no generated prime omissions.
    out=[]
    for n,i in [(42,3),(80,6),(100,10),(150,12),(256,17),(400,23)]:
        factors={}
        for x in range(n-i+1,n+1):
            for p,e in factor_trial(x).items():factors[p]=factors.get(p,0)+e
        for x in range(1,i+1):
            for p,e in factor_trial(x).items():factors[p]=factors.get(p,0)-e
        factors={p:e for p,e in factors.items() if e}
        assert all(e>0 for e in factors.values())
        assert math.prod(p**e for p,e in factors.items())==math.comb(n,i)
        small=1;cap=1;events=[]
        for p,e in factors.items():
            assert vp_choose(n,i,p)==e
            if p<i:
                small*=p**e;q=p;k=0
                while q<=n:k+=1;q*=p
                assert e<=k;cap*=p**k
                events.append([p,e,k])
        # Complete cap over *all* primes p<i, including zero binomial valuations.
        cap=1
        for p in range(2,i):
            if factor_trial(p)=={p:1}:
                q=p;k=0
                while q<=n:k+=1;q*=p
                cap*=p**k
        assert cap%small==0
        out.append({'n':n,'i':i,'small_prime_events':[{'p':p,'actual_v':e,'full_cap':k} for p,e,k in events],
                    'complete_factorization':[[p,e] for p,e in sorted(factors.items())],
                    'small_part':str(small),'complete_cap':str(cap),
                    'has_high_power':any(e>1 for p,e,k in events)})
    return out


def audit_pins()->dict:
    pins=json.loads((ROOT/'sources/INPUT_PINS.json').read_text())
    for q in pins:
        p=ROOT/q['path'];assert p.is_file(),q['path']
        assert hashlib.sha256(p.read_bytes()).hexdigest()==q['sha256'],q['path']
    overview=ROOT/'sources/OVERVIEW.md'
    assert hashlib.sha256(overview.read_bytes()).hexdigest()=='96f92ba7061e8facb774bdf2d42c5d445f3f1a63564ca0e2b71ceaca08d44066'
    preview=(ROOT/'sources/UPLOADED_HANDOFF_R4.md').read_bytes()
    r4=(ROOT/'sources/R4_HANDOFF.md').read_bytes()
    r5=(ROOT/'sources/R5_HANDOFF.md').read_bytes()
    state=json.loads((ROOT/'sources/R5_SESSION_STATE.json').read_text())
    assert preview==r4 and preview!=r5
    assert state['route_remainder']['i_exclusive_upper']=='2^151'
    assert state['route_remainder']['n_exclusive_upper']=='2^157'
    assert 'I151 / FH157' in r5.decode()
    return {'member_pins_checked':len(pins),'preview_equals_R4':True,'preview_equals_R5':False,
            'R5_handoff_and_state_agree':True,'adopted_baseline':'I151 / FH157',
            'old_mathematical_replay_executed':False}


def main()->None:
    endpoints=[endpoint(T,m) for m in ('atanh','riemann') for T in (32,4096)]
    assert all(q['positive'] and q['claimed_threshold_passed'] for q in endpoints)
    # A deliberately insufficient projection: using n<=4096i in all positive powers
    # even at T=32 erases the concavity gain. It is recorded as a negative control.
    bad_lo=F(endpoints[0]['structural_lower_mass']['lower_floor']-endpoints[1]['small_prime_upper_mass']['upper_ceil'],10**15)
    assert bad_lo<0
    output={'certificate_version':1,'I':I,'ratio_interval':[32,4096],'theta_coefficient':'10769/10000',
            'full_high_power_finite_head_last_exponent':E,'full_high_power_tail_exponent':E+1,
            'endpoints':endpoints,'source_audit':audit_pins(),'local_window_tests':local_window_tests(),
            'small_part_factorization_examples':exact_small_part_examples(),
            'negative_control':{'description':'collapsing all t-dependent high-power costs to t=4096 before checking t=32 is too weak','sign':'negative'},
            'new_conclusion':'all legal i>=4883 and 32*i<=n<=4096*i are excluded from NC under the adopted theta bound',
            'coverage_after_adopted_SOURCE32_and_Overview9':'all legal i>=4883',
            'new_Lean_acceptance':0,'external_independent_mathematical_review':False}
    expected=ROOT/'certificates/EXPECTED_RESULTS.json'
    if '--write-expected' in sys.argv:expected.write_text(json.dumps(output,ensure_ascii=False,indent=2)+'\n')
    else:assert json.loads(expected.read_text())==output,'expected certificate mismatch'
    print(json.dumps(output,ensure_ascii=False,indent=2))

if __name__=='__main__':main()
