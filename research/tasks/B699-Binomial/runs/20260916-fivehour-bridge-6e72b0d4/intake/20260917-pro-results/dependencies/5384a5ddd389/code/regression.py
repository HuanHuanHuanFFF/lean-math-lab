#!/usr/bin/env python3
"""Deterministic finite diagnostics. No test domain is extrapolated to infinity."""
from pathlib import Path
from math import comb,gcd,isqrt
from functools import lru_cache
import json
from consumer import assess,data,small_lt,source_small
ROOT=Path(__file__).resolve().parents[1]

@lru_cache(None)
def factor(n):
    ans=[];p=2
    while p*p<=n:
        if n%p==0:
            e=0
            while n%p==0:n//=p;e+=1
            ans.append((p,e))
        p=3 if p==2 else p+2
    if n>1:ans.append((n,1))
    return tuple(ans)

def source_blocks(n,i,r):
    return [(p,p**e,e) for p,e in factor(n-r) if p>i or (p==i and e>=2)]

def full_large_gcd(n,i,j):
    G=gcd(comb(n,i),comb(n,j))
    for p in (2,3,5,7):
        if p<i:
            while G%p==0:G//=p
    return G

def valuation(n,j,p):
    q=p;v=0;layers=[]
    while q<=n:
        b=n//q-j//q-(n-j)//q
        if b:layers.append(q)
        v+=b;q*=p
    return v,layers

def main():
    count=accepted=newaccepted=bridge=oldg_only=new_only=0
    zero=0;positive=negative=0;refined=0
    examples={'new_only_standalone':[],'old_only_standalone':[],'not_covered':[]}
    for n in range(12,401):
        src={i:comb(n,i) for i in (5,6,7,8) if i<=n}
        row=1
        for j in range(1,n//2+1):
            row=row*(n-j+1)//j
            for i in (5,6,7,8):
                if j<=i:continue
                count+=1;ans=assess(n,i,j);z=ans['values']
                common=gcd(src[i],row)
                for p in (2,3,5,7):
                    if p<i:
                        while common%p==0:common//=p
                if ans['status']=='proved_common':
                    assert common>1,(n,i,j,ans)
                    accepted+=1
                if ans['new_reasons']:
                    assert common>1;newaccepted+=1
                    if i==8 and j>=10:
                        assert comb(n,9)%common==0;bridge+=1
                elif len(examples['not_covered'])<3:
                    examples['not_covered'].append({'n':n,'i':i,'j':j,'common':common})
                if not z['W']:
                    zero+=1
                    assert not ans['new_reasons'],'zero case must not be sold as a positive integer gap'
                elif z['W']>0:positive+=1
                else:negative+=1
                if 'paired_midpoint_full_residual_gain' in ans['new_reasons']:refined+=1
                if n>=90 and 2*j<n and z['W']:
                    k=n-j;g=z['g'];oldW=(j//g)*(k//g)*((k-j)//g)*(j-1)*(k-1)
                    if not oldW:continue
                    H0=small_lt(oldW,i);A=z['small'][1]**2*z['small'][3]*z['small'][4]
                    old=50*H0*(g*z['M2'])**3>=A*n
                    new=56*z['H']*(g*z['M2'])**2*z['M4']>=z['Aprime']*n
                    if new and not old:
                        new_only+=1
                        if len(examples['new_only_standalone'])<3:examples['new_only_standalone'].append([n,i,j])
                    if old and not new:
                        oldg_only+=1
                        if len(examples['old_only_standalone'])<3:examples['old_only_standalone'].append([n,i,j])
    # Non-vacuous avoiding-block tests: only keep primes genuinely absent from C(n,j).
    avoid_inputs=avoid_checks=local_lifts=local_failures=0
    for n in range(12,241):
        row=1
        for j in range(1,n//2+1):
            row=row*(n-j+1)//j
            for i in (5,6,7,8):
                if j<=i:continue
                z=data(n,i,j);k=n-j;g=z['g']
                qs=[]
                for r in range(5):
                    a=1
                    for p,Q,e in source_blocks(n,i,r):
                        if row%p:a*=Q
                    qs.append(a)
                if qs[1]*qs[3]*qs[4]>1 and z['W']:
                    m2=gcd(qs[2],j-1);m4=gcd(qs[4],j-2)
                    den=qs[1]**3*m2**2*qs[3]*qs[4]*m4
                    assert z['W']%den==0
                    quotient=abs(z['W'])//den
                    assert quotient>0 and quotient%small_lt(z['W'],i)==0
                    avoid_inputs+=1;avoid_checks+=2
                # For any divisor Q of a midpoint source, test the exact doubled-precision equivalence.
                a1=qs[1]; assert j*k%a1==0
                se=(n-1)//a1;LL=j*k//a1
                for a in (2,3):
                    if 2*a>=i:continue
                    K=(2*a-1)**2*LL-se*a*(a-1)*n-se*a*a
                    for p,Q,e in source_blocks(n,i,2*a):
                        for d in range(1,e+1):
                            q=p**d
                            lhs=K%(q*q)==0;rhs=(j-a)%q==0
                            assert lhs==rhs,(n,i,j,a,q,K)
                            local_lifts+=1;local_failures+=not lhs
    # Boundary powers: target i itself, all its source layers retained.
    n7=5*2**147+1;j7=52
    assert (n7-6)%343==0 and (n7-6)%2401!=0
    assert source_small(n7-1,7)==n7-1
    s7=n7-1;L7=j7*(n7-j7);K6=25*L7-s7*(6*n7+9)
    assert K6%(49**2)==0 and K6%(343**2)!=0
    assert valuation(n7,7,7)[0]==2 and valuation(n7,j7,7)[0]==1
    n5=129;j5=27;ss=source_small(n5-1,5);q1=(n5-1)//ss
    L5=j5*(n5-j5)//q1;K4=9*L5-2*ss*(n5+2)
    assert (n5-4)//source_small(n5-4,5)==125
    assert K4%(25**2)==0 and K4%(125**2)!=0
    assert valuation(n5,5,5)[0]==2 and valuation(n5,j5,5)[0]>=1
    # Explicit comparison witnesses retaining the full first-row equation.
    first=[]
    for n,j in [(2034,856),(11576,926),(25722,1157)]:
        z=data(n,5,j);assert 't' in z
        k=n-j;g=z['g'];oldW=(j//g)*(k//g)*((k-j)//g)*(j-1)*(k-1)
        A=z['small'][1]**2*z['small'][3]*z['small'][4]
        assert 50*small_lt(oldW,5)*(g*z['M2'])**3<A*n
        assert 56*z['H']*(g*z['M2'])**2*z['M4']>=z['Aprime']*n
        common=full_large_gcd(n,5,j);assert common>1
        first.append({'n':n,'j':j,'g':g,'M2':z['M2'],'M4':z['M4'],'t':z['t'],
                      'source1_integral':True,'old_G_rejects':False,'new_paired_rejects':True,
                      'common_gcd':common,'not_a_global_history_difference_witness':True})
    out={
       'status':'PASS_NEW_FINITE_DIAGNOSTICS','regression_n_max':400,'legal_target_configurations':count,
       'accepted_with_inherited_source1':accepted,'accepted_by_new_rules':newaccepted,
       'full_residual_gain_accepts':refined,'i8_to_i9_full_gcd_checks':bridge,
       'zero_cases_correctly_excluded_from_new_gap':zero,'positive_F_cases':positive,'negative_F_cases':negative,
       'partial_avoiding_n_max':240,'nontrivial_partial_avoiding_inputs':avoid_inputs,'partial_divisibility_checks':avoid_checks,
       'exact_midpoint_square_equivalence_tests':local_lifts,'tests_where_both_sides_false':local_failures,
       'comparison_scope':'Only the old G formula and the new paired formula, n<=400. NOT all inherited consumers.',
       'standalone_new_not_old':new_only,'standalone_old_not_new':oldg_only,'examples':examples,
       'first_row_comparison_examples':first,
       'endpoint_examples':[
           {'n':n5,'i':5,'j':j5,'full_Q':125,'wrong_lower_Q':25,'source_valuation':valuation(n5,5,5)[0],'target_valuation':valuation(n5,j5,5)[0]},
           {'n':n7,'i':7,'j':j7,'full_Q':343,'wrong_lower_Q':49,'source_valuation':2,'target_valuation':1}],
       'interpretation':'Regression and local identities only. No finite scan is a proof of unbounded coverage; no original counterexample.'}
    (ROOT/'evidence/regression.json').write_text(json.dumps(out,indent=2,sort_keys=True)+'\n')
    print(json.dumps({k:v for k,v in out.items() if isinstance(v,(str,int))}))
if __name__=='__main__':main()
