#!/usr/bin/env python3
"""Exact miniature exhaustion, original-object regressions, and rejection tests.
This is a test suite, not a substitute for the complete main certificate checks.
"""
from __future__ import annotations
import contextlib,copy,io,itertools,json,math
from pathlib import Path
from check_certificate import (require,make_parameters,check_height,reconstruct_stage,
    check_large_row,check_top_interval,two_colour_union,union,trial_prime)
from check_all_certificate import check_symbolic_stage,check as check_all
from crt_fast import bound
from extra_terminal_probe import explicit_cover
ROOT=Path(__file__).resolve().parents[1]


def val(n,p):
    if n<=0:raise ValueError('valuation domain')
    e=0
    while n%p==0:n//=p;e+=1
    return e


def factors(n):
    ans={};p=2
    while p*p<=n:
        if n%p==0:
            e=0
            while n%p==0:n//=p;e+=1
            ans[p]=e
        p+=1
    if n>1:ans[n]=ans.get(n,0)+1
    return ans


def binomial_factors(n,i):
    es={}
    for x in range(n-i+1,n+1):
        for p,e in factors(x).items():es[p]=es.get(p,0)+e
    for x in range(2,i+1):
        for p,e in factors(x).items():es[p]-=e
    assert all(e>=0 for e in es.values())
    es={p:e for p,e in es.items() if e}
    assert math.prod(p**e for p,e in es.items())==math.comb(n,i)
    return es


def miniature_pair(Q,R,ca,cb,w,L,H):
    """Literal cofactor pairs versus a CRT progression, including difference zero."""
    brute=[]
    for a in range(1,ca+1):
        for b in range(1,cb+1):
            lo=max(L,a*Q,b*R);hi=min(H-1,a*Q+w,b*R+w)
            if lo<=hi:brute.append([lo,hi])
    by_crt=[];inv=pow(Q,-1,R);P=Q*R
    for d in range(-w,w+1):
        a0=d*inv%R;b0=(Q*a0-d)//R
        l0=max(Q*a0,R*b0);u0=min(Q*a0+w,R*b0+w)
        lo=max(-((a0-1)//R),-((b0-1)//Q),-((u0-L)//P))
        hi=min((ca-a0)//R,(cb-b0)//Q,(H-1-l0)//P)
        for t in range(lo,hi+1):
            by_crt.append([max(L,l0+t*P),min(H-1,u0+t*P)])
    assert union(brute)==union(by_crt)


def main():
    certificate=json.loads((ROOT/'outputs/seven_index_certificate.json').read_text())
    source=json.loads((ROOT/'inputs/all_adopted_heights.json').read_text())
    result={'scope':'Finite regression tests; not a scan of the original unbounded conjecture'}
    mini_count=0
    for Q,R in [(2,3),(4,9),(8,5),(3,25),(16,27)]:
        for ca,cb,w in itertools.product(range(1,6),range(1,6),range(5)):
            for L,H in [(0,10),(3,18),(11,40),(32,70)]:
                miniature_pair(Q,R,ca,cb,w,L,H);mini_count+=1
    result['CRT_pair_domains_exhausted']=mini_count
    full_tests=[]
    for i in (17,27,30,33):
        row=next(r for r in source if r['i']==i)
        for H in [i*(i-1)+1,2048,4096]:
            st=bound(row,H);par=make_parameters(i,row['r'],row['s'])
            assert check_symbolic_stage(par,st)==int(st['next_H'])
            explicit=explicit_cover(row,H);M=explicit['M'];start=explicit['start']
            literal=[]
            ps=[p for p in range(2,i) if trial_prime(p)]
            for n in range(start,H):
                colours=0
                for p in ps:
                    v=val(i,p);cap=M//p**v;Q=p**(v+1);hit=False
                    while Q<=n:
                        amin=max(1,(n-i+Q)//Q);amax=min(cap,n//Q)
                        if amin<=amax:hit=True;break
                        Q*=p
                    colours+=hit
                if colours>=2:literal.append([n,n])
            assert union(literal)==explicit['segments']
            expected=max(start,explicit['segments'][-1][1]+1 if explicit['segments'] else start)
            assert expected==int(st['next_H'])
            full_tests.append({'i':i,'H':H,'M':M,'start':start,'union_rows':len(literal)})
    result['complete_small_relaxation_tests']=full_tests
    assert two_colour_union({2:[[10,30],[20,40]]})==[]
    assert two_colour_union({2:[[10,30],[20,40]],3:[[25,35]]})==[[25,35]]
    result['same_colour_overlap_tests']='PASS'
    # A non-vacuous actual avoiding part, with p=i and binomial exponent two.
    n,i,j=14739,17,4913;k=n-j
    fs=binomial_factors(n,i);other=math.comb(n,j)
    D=math.prod(p**e for p,e in fs.items() if p>=i and other%p)
    assert fs[17]==2 and other%17 and D%(17**2)==0
    Q=17**3
    assert n%Q==j%Q==k%Q==0
    coeff=[math.comb(j,r)*math.comb(k,i-r) for r in range(i+1)]
    assert all(c%D==0 for c in coeff) and coeff[-1]>0
    row=next(r for r in source if r['i']==i);p=make_parameters(i,row['r'],row['s'])
    Z=math.prod(math.comb(j,h)*math.comb(k,h) for h in range(1,row['s']+1))
    Z*=math.prod(math.comb(n-i+h,h) for h in range(1,p['L']+1))
    assert Z%(D**p['lam'])==0 and p['K']*Z<=n**p['E']
    result['prime_equals_index']={'n':n,'i':i,'j':j,'e':2,'localization_modulus':Q,'actual_avoiding_part':str(D),'PASS':True}
    localisation=[]
    for n,i in [(32000,27),(62208,27),(65536,30),(59049,33),(14739,17)]:
        C=math.comb(n,i);checks=[]
        for p in range(2,i):
            if not trial_prime(p):continue
            e=val(C,p);v=val(i,p);a=max(val(n-r,p) for r in range(i))
            assert e+v<=a
            Q=p**(e+v)
            assert any((n-r)%Q==0 for r in range(i))
            checks.append([p,e,v,a])
        localisation.append({'n':n,'i':i,'valuations_p_e_v_max':checks})
    assert max(val(32000-r,2) for r in range(27))==val(32000,2)
    assert max(val(32000-r,5) for r in range(27))==val(32000,5)
    result['full_small_prime_localization']=localisation
    rejected=[]
    def reject(name,f):
        try:f()
        except (ValueError,AssertionError) as e:rejected.append({'name':name,'reason':str(e)})
        else:raise AssertionError('Bad input accepted: '+name)
    row17=next(r for r in certificate['profiles'] if r['i']==17)
    par17=make_parameters(17,row17['r'],row17['s'])
    row27=next(r for r in certificate['profiles'] if r['i']==27)
    par27=make_parameters(27,row27['r'],row27['s'])
    reject('height one bit too low',lambda:check_height(par17,row17['height_bits']-1))
    bad=copy.deepcopy(row27['bound_stages'][0]);bad['M']=str(int(bad['M'])-1)
    reject('M certificate weakened',lambda:check_symbolic_stage(par27,bad))
    bad=copy.deepcopy(row17['bound_stages'][0]);bad['start']=str(17*16)
    reject('large-M exponent-zero branch dropped',lambda:check_symbolic_stage(par17,bad))
    bad=copy.deepcopy(row27['bound_stages'][-1]);bad['next_H']=str(int(bad['next_H'])-1)
    reject('CRT maximum endpoint removed',lambda:check_symbolic_stage(par27,bad))
    bad=copy.deepcopy(row27['terminal_cover']);bad['families'].pop()
    reject('prime-power family deleted',lambda:reconstruct_stage(par27,bad))
    bad=copy.deepcopy(row27['terminal_cover']);bad['segments'][-1][1]-=1
    reject('explicit coloured union endpoint removed',lambda:reconstruct_stage(par27,bad))
    n,D=row27['large_divisor_rows'][0];D=int(D)
    reject('small-prime-contaminated divisor',lambda:check_large_row(par27,n,2*D))
    reject('unit divisor cannot meet size bound',lambda:check_large_row(par27,n,1))
    a,b,p=row27['top_prime_intervals'][0]
    reject('top-prime endpoint changed to equality',lambda:check_top_interval(27,a,p+27,p,{p}))
    bad=copy.deepcopy(certificate);bad['profiles'].pop()
    reject('missing target index',lambda:check_all(bad))
    bad=copy.deepcopy(certificate);bad['prime_witnesses']=sorted(set(bad['prime_witnesses']+[4]))
    reject('composite prime inserted',lambda:check_all(bad))
    witnesses=[[a,b] for a,b,p in row27['top_prime_intervals']]+[[n,n] for n,D in row27['large_divisor_rows']]
    witnesses.pop()
    reject('terminal witness omitted',lambda:require(union(witnesses)==row27['candidate_intervals'],'uncovered final candidate'))
    result['rejected_bad_inputs']=rejected
    result['status']='PASS'
    (ROOT/'outputs/edge_tests.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({'status':'PASS','CRT_pair_domains':mini_count,'small_full_union_tests':len(full_tests),
        'actual_p_equals_i_exponent':2,'bad_inputs_rejected':len(rejected)},indent=2))
if __name__=='__main__':main()
