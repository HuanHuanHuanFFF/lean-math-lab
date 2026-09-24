#!/usr/bin/env python3
"""C20: exact finite-source certificate; standard library only. No Lean/repository writes."""
from __future__ import annotations
from pathlib import Path
from math import gcd, isqrt
from collections import Counter
from copy import deepcopy
import argparse
import hashlib
import json

ROOT = Path(__file__).resolve().parents[1]
THRESHOLDS = (8, 9, 25)
PRIMES = (2, 3, 5)

def smallpart(x: int) -> int:
    if x <= 0:
        raise ValueError("smallpart requires a positive integer")
    s = 1
    for p in PRIMES:
        while x % p == 0:
            x //= p
            s *= p
    return s

def roughpart(x: int) -> int:
    if x <= 0:
        raise ValueError("roughpart requires a positive integer")
    return x // smallpart(x)

def inactive(a: int, r: int) -> bool:
    return all((a-r) % c != 0 for c in THRESHOLDS)

def direct_positions(a: int) -> tuple[int, ...]:
    return tuple(r for r in range(4)
                 if any((a-r) % c == 0 for c in THRESHOLDS))

def classes():
    G = {a for a in range(1800) if len(direct_positions(a)) <= 1}
    H02 = {a for a in range(1800)
           if a % 8 in (0,2,6)
           and a % 9 in (0,2,6,8)
           and a % 25 in (0,2,7,10,12,15,17,20,22)}
    six = {50,477,752,1280,1325,1530}
    covered = G | H02 | six
    frontier = sorted(set(range(1800)) - covered)
    target = [a for a in frontier if inactive(a,0)]

    # Independent CRT classification from mod 8/9/25.
    other_target = []
    other_frontier = []
    for a8 in range(8):
        for a9 in range(9):
            for a25 in range(25):
                a = (225*a8 + 1000*a9 + 576*a25) % 1800
                assert (a % 8,a % 9,a % 25) == (a8,a9,a25)
                occ = {r for r in range(4) if r in (a8,a9,a25)}
                old = (len(occ)<=1
                       or (a8 in (0,2,6) and a9 in (0,2,6,8)
                           and a25 in (0,2,7,10,12,15,17,20,22))
                       or a in six)
                if not old:
                    other_frontier.append(a)
                    if a8 != 0 and a9 != 0 and a25 != 0:
                        other_target.append(a)
    assert sorted(other_frontier) == frontier
    assert sorted(other_target) == target
    frozen = json.loads((ROOT/'sources/C19_FRONTIER.json').read_text())
    assert frontier == frozen['remaining_residue_upper_envelope']
    assert sorted(covered) == frozen['adopted_union_residues']
    assert len(G)==1380 and len(H02)==108 and len(covered)==1412
    assert len(frontier)==388 and len(target)==204
    return covered,frontier,target

def divisors_trial(x: int) -> list[int]:
    if x <= 0:
        raise ValueError("positive x required")
    ds=[]
    for d in range(1,isqrt(x)+1):
        if x % d == 0:
            ds.append(d)
            if d*d != x:
                ds.append(x//d)
    return sorted(ds)

def small_bounded(a: int, r: int) -> int:
    # Independent of smallpart(): valid only with all three thresholds absent.
    assert inactive(a,r)
    v = a-r
    s2=4 if v % 4 == 0 else (2 if v % 2 == 0 else 1)
    return s2 * (3 if v % 3 == 0 else 1) * (5 if v % 5 == 0 else 1)

def rough_by_gcd(x: int) -> int:
    assert x > 0
    while True:
        d=gcd(x,30)
        if d == 1:
            return x
        x //= d

def source_options(a: int, alpha: int, beta: int) -> list[dict]:
    opts=[]
    for r in range(1,6):
        if not inactive(a,r) or r % alpha == 0:
            continue
        factors=[r*beta-alpha*b for b in range(r+1)]
        assert all(f != 0 for f in factors)
        prod=1
        for f in factors:
            prod *= f
        prod=abs(prod)
        D=roughpart(prod)
        s=smallpart(a+1800-r)
        assert s==small_bounded(a,r)
        opts.append({'r':r,'s_r':s,'linear_factors':factors,
                     'product_abs':prod,'D':D,'n_bound':r+s*D})
    return sorted(opts,key=lambda z:(z['n_bound'],z['r']))

def configuration_table(target: list[int]):
    table=[]
    class_table=[]
    for a in target:
        s0=smallpart(a+1800)
        assert s0==small_bounded(a,0) and 60 % s0==0
        before=len(table)
        for alpha in divisors_trial(s0):
            if alpha < 2:
                continue
            for beta in range(1,alpha//2+1):
                if gcd(alpha,beta) != 1:
                    continue
                options=source_options(a,alpha,beta)
                assert options
                table.append({'a':a,'s0':s0,'alpha':alpha,'beta':beta,
                              'options':options,'selected':options[0]})
        class_table.append({'a':a,'s0':s0,'ratio_configurations':len(table)-before})

    # Independent reconstruction: all divisors of 60, residues instead of valuations.
    independently=[]
    for a in reversed(target):
        s0=small_bounded(a,0)
        for alpha in range(60,1,-1):
            if 60 % alpha or s0 % alpha:
                continue
            for beta in range(alpha//2,0,-1):
                if gcd(alpha,beta) != 1:
                    continue
                choices=[]
                for r in range(5,0,-1):
                    if not inactive(a,r) or r % alpha == 0:
                        continue
                    P=1
                    for b in reversed(range(r+1)):
                        P *= abs(alpha*b-beta*r)
                    D=rough_by_gcd(P)
                    sr=small_bounded(a,r)
                    choices.append((r+sr*D,r,D,sr,P))
                assert choices
                B,r,D,sr,P=min(choices)
                independently.append((a,alpha,beta,r,D,sr,P,B))
    first=[(c['a'],c['alpha'],c['beta'],c['selected']['r'],
            c['selected']['D'],c['selected']['s_r'],
            c['selected']['product_abs'],c['selected']['n_bound']) for c in table]
    assert sorted(first)==sorted(independently)
    assert len(table)==288
    assert sum(c['s0']==1 for c in class_table)==86
    assert max(c['selected']['n_bound'] for c in table)==222
    assert max(c['selected']['D'] for c in table)==221
    return table,class_table

def recover_divisors(table):
    receipts=[]; candidates=[]
    for c in table:
        a,alpha,beta=c['a'],c['alpha'],c['beta']
        z=c['selected']
        ds=divisors_trial(z['D'])
        keep=[]
        for q in ds:
            n=z['r']+z['s_r']*q
            if n<14 or n % 1800 != a or n % alpha:
                continue
            j=n//alpha*beta
            if not (7<=j<=n//2):
                continue
            rec={'a':a,'alpha':alpha,'beta':beta,
                 'r':z['r'],'s_r':z['s_r'],'q_r':q,'n':n,'j':j}
            assert gcd(n,j)==n//alpha
            assert roughpart(n-z['r'])==q
            keep.append(rec); candidates.append(rec)
        receipts.append({'a':a,'alpha':alpha,'beta':beta,
                         'source_r':z['r'],'D':z['D'],
                         'divisors':ds,'retained':keep})
    assert sum(len(c['divisors']) for c in receipts)==409
    assert candidates==[{'a':210,'alpha':30,'beta':11,'r':1,
                         's_r':1,'q_r':209,'n':210,'j':77}]
    return receipts,candidates

def recover_bounded_rows(target,table):
    # Uses the proved n<=222 only. Does not infer any infinite statement from scanning.
    index={(c['a'],c['alpha'],c['beta']):c for c in table}
    rows=[]; pairs=0; ratio_pass=0; terminal=[]
    for n in range(14,223):
        if n % 1800 not in target:
            continue
        rows.append(n)
        for j in range(7,n//2+1):
            pairs+=1
            gg=gcd(n,j); al=n//gg; be=j//gg
            if small_bounded(n,0) % al:
                continue
            ratio_pass+=1
            c=index[(n % 1800,al,be)]
            r=c['selected']['r']
            q=rough_by_gcd(n-r)
            prod=1
            for h in range(r+1):
                prod *= j-h
            if prod % q==0:
                terminal.append([n,j])
    assert len(rows)==24 and pairs==1223 and ratio_pass==39
    assert terminal==[[210,77]]
    return {'bound_inclusive':222,'rows':rows,'legal_pairs_checked':pairs,
            'ratio_pass_pairs':ratio_pass,'selected_window_pass_pairs':terminal}

def vp_fact(n: int,p: int) -> int:
    total=0
    while n:
        n//=p
        total+=n
    return total

def terminal_check(rec):
    n,j,p,r,e=rec['n'],rec['j'],rec['p'],rec['r'],rec['source_exponent']
    assert 7<=j<=n//2 and p>=7
    assert p>=2 and all(p%d for d in range(2,isqrt(p)+1))
    m=n-r; actual=0
    while m % p==0:
        m//=p; actual+=1
    assert actual==e and e>=1
    source=vp_fact(n,p)-vp_fact(6,p)-vp_fact(n-6,p)
    target=vp_fact(n,p)-vp_fact(j,p)-vp_fact(n-j,p)
    assert source>0 and target>0
    assert j % (p**e)>n % (p**e)
    assert (source,target)==(rec['source_valuation'],rec['target_valuation'])

def terminal_certificate():
    t={'n':210,'j':77,'p':13,'r':2,'source_exponent':1,
       'source_valuation':1,'target_valuation':2,
       'source_remainder':6,'n_remainder':2,'j_remainder':12}
    terminal_check(t)
    # Verify the original identities on the surviving small pair.
    from math import comb
    assert comb(210,6) % 13==0 and comb(210,77) % 13==0
    assert 77*comb(210,77)==210*comb(209,76)
    return t

def check_saved_configuration(c):
    assert c['s0']==small_bounded(c['a'],0)
    assert c['alpha']>=2 and c['s0'] % c['alpha']==0
    assert 1<=c['beta']<=c['alpha']//2 and gcd(c['alpha'],c['beta'])==1
    assert c['options']==source_options(c['a'],c['alpha'],c['beta'])
    assert c['selected']==c['options'][0]

def mutation_checks(table,target,terminal):
    def rejects(fn):
        try:
            fn()
        except (AssertionError,ValueError,KeyError):
            return True
        return False
    cs=next(c for c in table if (c['a'],c['alpha'],c['beta'])==(210,30,11))
    mutations=[]
    for key,val in [('D',19),('n_bound',209),('r',2),('s_r',3),('product_abs',19)]:
        bad=deepcopy(cs); bad['selected'][key]=val
        assert rejects(lambda:check_saved_configuration(bad))
        mutations.append('modified_selected_'+key)
    bad=deepcopy(cs);bad['alpha']=7
    assert rejects(lambda:check_saved_configuration(bad))
    mutations.append('nonsmooth_alpha')
    bad=deepcopy(cs);bad['beta']=15
    assert rejects(lambda:check_saved_configuration(bad))
    mutations.append('nonprimitive_beta')
    for key,val in [('p',11),('source_exponent',2),('j',13)]:
        bad=deepcopy(terminal);bad[key]=val
        assert rejects(lambda:terminal_check(bad))
        mutations.append('modified_terminal_'+key)
    covered,F,T=classes()
    assert T!=[a for a in target if a!=210]
    mutations.append('deleted_residue_210')
    return mutations

def derive():
    covered,frontier,target=classes()
    table,class_table=configuration_table(target)
    for c in table:
        check_saved_configuration(c)
    receipts,candidates=recover_divisors(table)
    secondary=recover_bounded_rows(target,table)
    terminal=terminal_certificate()
    mutations=mutation_checks(table,target,terminal)
    newcovered=sorted(covered|set(target))
    remaining=sorted(set(frontier)-set(target))
    groups={}
    for a in remaining:
        pp=','.join(map(str,direct_positions(a)))
        groups.setdefault(pp,[]).append(a)
        assert 0 in direct_positions(a)
    assert len(newcovered)==1616 and len(remaining)==184
    assert {k:len(v) for k,v in groups.items()}=={
        '0,1':66,'0,2':34,'0,3':66,'0,1,2':6,'0,1,3':6,'0,2,3':6}
    no_origin={a for a in range(1800) if inactive(a,0)}
    assert len(no_origin)==1344 and no_origin.issubset(set(newcovered))
    aggregate=[]
    for s0 in sorted({c['s0'] for c in class_table}):
        cc=[c for c in class_table if c['s0']==s0]
        tt=[t for t in table if t['s0']==s0]
        aggregate.append({
            's0':s0,'residue_count':len(cc),'ratio_configuration_count':len(tt),
            'max_n_bound':max((t['selected']['n_bound'] for t in tt),default=0),
            'smallest_legal_class_representative':min(
                c['a'] if c['a']>=14 else c['a']+1800 for c in cc)
        })
    by_bound=[]
    for c in table:
        n=c['a'] if c['a']>=14 else c['a']+1800
        while n<=c['selected']['n_bound']:
            if n % c['alpha']==0:
                j=n//c['alpha']*c['beta']
                if 7<=j<=n//2:
                    by_bound.append([n,j,c['alpha'],c['beta'],c['selected']['D']])
            n+=1800
    assert by_bound==[[210,77,30,11,209],[210,91,30,13,221]]
    assert 209 % 221 != 0 and 221 % 209 != 0
    certificate={
        'scope':'new 204 residue classes in C19 remaining envelope with no origin activity',
        'per_s0_aggregate':aggregate,
        'bound_only_candidates_n_j_alpha_beta_D':by_bound,
        'evidence':'author paper + exact deterministic arithmetic; no external theorem, no Lean',
        'old_remaining_count':388,'newly_closed_count':204,
        'zero_ratio_classes':86,'nonzero_ratio_classes':118,
        'ratio_configurations':288,
        'selected_source_order_histogram':dict(sorted(Counter(str(c['selected']['r']) for c in table).items())),
        'largest_selected_D':221,'uniform_n_bound_inclusive':222,
        'complete_divisor_representatives':409,
        'surviving_original_pairs':[[c['n'],c['j']] for c in candidates],
        'secondary':secondary,
        'terminal':terminal,'mutation_rejections':mutations,
        'remaining_count':184,'new_union_count':1616,
        'repository_actions':'none','Lean_executed':False
    }
    output={
        'classification.json':{'new_residues':target,'per_class':class_table},
        'configurations.json':table,
        'divisor_recovery.json':receipts,
        'certificate.json':certificate,
        'FRONTIER.json':{
            'accepted_C19_union':sorted(covered),'newly_closed':target,
            'adopted_union':newcovered,'remaining_residue_upper_envelope':remaining,
            'remaining_activity_groups':groups,
            'new_necessary_condition':'NC6 => (8|n or 9|n or 25|n); uses adopted C19 baseline',
            'remaining_indices':[3,4,5,6,7,8,9],
            'remaining_residues_are_not_counterexamples':True,
            'no_general_height_for_remaining_184':True
        }
    }
    return output

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--write',action='store_true')
    args=ap.parse_args()
    data=derive()
    for name,value in data.items():
        path=ROOT/'outputs'/name
        if args.write:
            path.write_text(json.dumps(value,ensure_ascii=False,indent=2,sort_keys=True)+'\n',encoding='utf-8')
        else:
            assert json.loads(path.read_text(encoding='utf-8'))==value, name
    c=data['certificate.json']
    print(json.dumps({
        'status':'PASS_C20_204_ORIGIN_INACTIVE_CLASSES_CLOSED',
        'new_classes':c['newly_closed_count'],
        'ratio_configurations':c['ratio_configurations'],
        'n_bound':c['uniform_n_bound_inclusive'],
        'divisor_representatives':c['complete_divisor_representatives'],
        'secondary_pairs':c['secondary']['legal_pairs_checked'],
        'original_terminal_pairs':c['surviving_original_pairs'],
        'closed_by_prime':c['terminal']['p'],
        'remaining_classes':c['remaining_count'],
        'mutation_checks':len(c['mutation_rejections']),
        'no_Lean':True,'repository_modified':False
    },ensure_ascii=False,indent=2,sort_keys=True))

if __name__=='__main__':
    main()
