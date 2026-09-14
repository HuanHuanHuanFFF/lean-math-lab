#!/usr/bin/env python3
"""Exact algebra, counting-pattern regressions, infinite-family constants, and failure diagnostics.
The sample loops are regressions. Infinite arguments are written in notes/PROOFS.md.
"""
from __future__ import annotations
import argparse,json
from fractions import Fraction
from math import comb,gcd,lcm,prod
from pathlib import Path
from core import SMALL, smooth, row_data, vp, factor, eta

def add(a,b):
    c=dict(a)
    for k,v in b.items():c[k]=c.get(k,0)+v
    return {k:v for k,v in c.items() if v}
def scale(a,k):return {e:v*k for e,v in a.items() if v*k}
def mul(a,b):
    c={}
    for (i,j),x in a.items():
        for (k,l),y in b.items():c[i+k,j+l]=c.get((i+k,j+l),0)+x*y
    return {k:v for k,v in c.items() if v}
def power(a,n):
    c={(0,0):1}
    for _ in range(n):c=mul(c,a)
    return c

def algebra():
    n={(1,0):1};x={(0,1):1};one={(0,0):1}
    nm2=add(n,scale(one,-2));n2=power(n,2)
    left=add(mul(power(n,4),power(nm2,2)),scale(mul(power(x,2),add(add(x,scale(n,-1)),one)),-64))
    right=mul(add(n2,scale(x,-4)),add(scale(power(x,2),16),mul(power(nm2,2),add(n2,scale(x,4)))))
    assert left==right
    # Exact comparison used in the counting dichotomy and the explicit row family.
    assert 81<128
    assert 64*Fraction(1331,2)**2>21**3*10**2
    assert 22<2**8
    assert pow(22,20,25)==1 and 420%20==420%3==420%7==0
    cuts=[]
    for exponent,constant,alpha_exp in [(4963,300000,6000),(54167,3000000,60000)]:
        gap=4*exponent-3*alpha_exp;cost=9*exponent+3*constant
        assert gap>0 and 1960001*gap>cost
        cuts.append({'n_power':exponent,'bound_two_exponent':constant,'alpha_power':alpha_exp,
                     'gap':gap,'cost':cost,'minimum_a':1960001,
                     'proves':'512*n^3 < alpha^4 under the frozen A cut and alpha>=2^1960001'})
    return {'polynomial_identity':'n^4(n-2)^2-64X^2(X-n+1)=(n^2-4X)(16X^2+(n-2)^2(n^2+4X))',
            'coefficients_match':True,'A_double_high_noncoverage_certificates':cuts}

def root4ceil(x):
    lo,hi=0,1
    while hi**4<x:hi*=2
    while hi-lo>1:
        m=(lo+hi)//2
        if m**4>=x:hi=m
        else:lo=m
    return hi

def count_regression(limit=100000):
    fails=0;patterns=set();samples=[];marks={100,1000,10000,limit}
    for n in range(8,limit+1):
        s=[smooth(n-r) for r in (0,1,2)];L=lcm(*s);W=s[0]**4*s[1]**3*s[2]**2
        parity_factor=4 if n%4==0 else 1
        assert W<=parity_factor*L**4
        profile=tuple(tuple(vp(n-r,p) for r in (0,1,2)) for p in SMALL)
        for es in profile[1:]:assert sum(e>0 for e in es)<=1
        a,b,c=profile[0]
        assert ((a==c==0 and b>=1) or (a>=2 and b==0 and c==1) or (a==1 and b==0 and c>=2))
        patterns.add(profile)
        if W>=64*eta(n)*(n-1)**3:
            fails+=1;assert L**4>=128*(n-1)**3
        if n in marks:
            logs=[]
            for p in SMALL:
                e=0;q=1
                while q*p<=n:q*=p;e+=1
                logs.append(e)
            T=prod(1+3*e for e in logs)
            assert len(patterns)<=T
            integer_numerator=(root4ceil(n)+6)*T
            assert 3*fails<=integer_numerator
            samples.append({'X':n,'failed_test_rows':fails,'distinct_exact_profiles_seen':len(patterns),
                            'pattern_upper_bound':T,'count_bound_relaxed_rational':[integer_numerator,3]})
    return {'n_range':[8,limit],'window_profiles_checked':limit-7,
            'failed_rows_checked_for_L_lower_bound':fails,'checkpoints':samples,
            'scope':'all finite rows in range; not a finite proof of the asymptotic theorem'}

def families():
    out=[]
    for t in range(1,9):
        v=420*t+1;n=22**v;s=[smooth(n-r) for r in (0,1,2)]
        assert s==[2**v,21,10] and vp(n,2)==v
        assert row_data(n)['accepted']
        assert not(s[0]<=9) and not(n>=2**22*s[0]**8)
        assert [vp(comb(n,3),p) for p in (3,5,7)]==[0,1,1]
        out.append({'t':t,'v':v,'n_bit_length':n.bit_length(),'S0':'2^v','S1':21,'S2':10,
                    'new_test':True,'old_ROW9':False,'old_ROW_H':False,'source_v3_v5_v7':[0,1,1]})
    modular=[]
    for t in [1,2,17,10**6,10**30]:
        v=420*t+1
        assert pow(22,v,9)==4 and pow(22,v,49)==22 and pow(22,v,25)==22
        modular.append({'t':str(t),'v_mod420':1,'n_mod9':4,'n_mod49':22,'n_mod25':22})
    return {'exact_integer_rows':out,'large_exponent_modular_regressions':modular,
            'infinite_scope':'v=420t+1,t>=1; proof, not this finite list, covers all t and all legal j'}

def boundaries():
    out=[]
    for n,j,m in [(244,122,9),(22,11,7),(46,23,5),(52,10,5)]:
        d=row_data(n,m);A=comb(n,3);B=comb(n,j);G=gcd(A,B)
        common=[p for p in factor(G) if p>=3]
        good=[p for p in common if p>=m and comb(n,m)%p==0]
        out.append({'n':n,'j':j,'target':m,'source_binomial':A,'source_common_gcd':G,
                    'source_common_odd_primes':common,'transferable_source_primes':good,
                    'source_and_gcd_exponents':{str(p):[vp(A,p),vp(G,p)] for p in common},'criterion':d})
    n=244;d=row_data(n,9);bad=d['parts'].copy();bad[1]=3
    assert not d['accepted'] and d['lhs']>bad[0]**4*bad[1]**3*bad[2]**2
    for n,j,m,r,new_s in [(22,11,7,1,3),(46,23,5,1,9)]:
        d=row_data(n,m);s=d['parts'].copy();s[r]=new_s
        assert not d['accepted'] and d['lhs']>s[0]**4*s[1]**3*s[2]**2
        assert comb(n,m)%m!=0 and gcd(comb(n,3),comb(n,j))%m==0
    d=row_data(46,5);assert not d['accepted'] and 64*8*45**3>d['rhs']
    power_examples=[]
    for v in [9,37,64,127,421,2048]:
        n=2**v;d=row_data(n);assert not d['accepted']
        power_examples.append({'v':v,'uniform_test':False})
    return {'specific_inputs':out,'false_generalizations_actually_falsified':[
            'radical replaces full 3^5 at n244','keep single endpoint 7 at n22',
            'keep single endpoint 5 at n46','eta8 for all even n at n46'],
            'power_of_two_regressions':power_examples,
            'not_counterexamples_to_B699':True}

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',required=True);p.add_argument('--limit',type=int,default=100000)
    a=p.parse_args();d={'status':'PASS_EXACT_OBLIGATIONS_AND_BOUNDARIES','algebra':algebra(),
                     'counting':count_regression(a.limit),'families':families(),'boundaries':boundaries()}
    Path(a.out).write_text(json.dumps(d,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'status':d['status'],'counting_rows':d['counting']['window_profiles_checked'],
                      'family_exact_rows':len(d['families']['exact_integer_rows']),
                      'A_noncoverage_branches':len(d['algebra']['A_double_high_noncoverage_certificates'])}))
