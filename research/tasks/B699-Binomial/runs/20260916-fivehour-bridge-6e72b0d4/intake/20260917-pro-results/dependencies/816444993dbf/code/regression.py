"""Finite diagnostics only; the all-integer theorem is in PROOFS.md."""
from __future__ import annotations
import argparse,json,math
from pathlib import Path
from common import in_H02, small6, source_v, prime


def factors(n):
    result=[];p=2
    while p*p<=n:
        if n%p==0:
            q=1
            while n%p==0:n//=p;q*=p
            result.append((p,q))
        p+=1
    if n>1:result.append((n,n))
    return result


def stripped(n):
    for p in (2,3,5):
        while n%p==0:n//=p
    return n


def evaluate(poly,x,y):
    return sum(c*x**a*y**b for a,b,c in poly)


def run(out:Path)->dict:
    kernel=json.loads((out/'kernel.json').read_text());poly=kernel['poly']
    rows=accepted=all_configs=0;least_gcd=None
    for n in range(14,601):
        all_configs+=n//2-6
        if not in_H02(n):continue
        rows+=1;c6=math.comb(n,6)
        for j in range(7,n//2+1):
            w=stripped(math.gcd(c6,math.comb(n,j)))
            assert w>1
            least_gcd=w if least_gcd is None else min(least_gcd,w)
            accepted+=1
    # Genuinely nonempty partial avoiding parts: do not call these NC inputs.
    partial=checks=0
    for n in range(14,181):
        fs={r:[(p,q)for p,q in factors(n-r)if p>=7]for r in (1,3,4,5)}
        for j in range(7,n//2+1):
            k=n-j;g=math.gcd(n,j);prod=1;used=0
            for r,w in ((1,8),(3,4),(4,3),(5,2)):
                mod=1
                for p,q in fs[r]:
                    if source_v(n,j,p)==0:
                        assert j%q<=r
                        mod*=q;used+=1
                prod*=mod**w
            if not used:continue
            F=evaluate(poly,j,k)
            assert F>0 and F%(g*g*prod)==0
            partial+=1;checks+=used
    # Within the new row domain: a complete 49 layer is necessary for p=7.
    n,j,p,Q=150,7,7,49
    assert in_H02(n)
    assert source_v(n,6,p)==2 and source_v(n,j,p)==1
    assert j%Q>n%Q and j%p<=n%p
    assert small6(125)==125  # 5 is below target6; do not keep an endpoint5.
    # New predicate does not claim to solve the native-D6 leftover classes.
    unresolved=[]
    for n,j,p in [(1280,640,1277),(1530,765,509)]:
        assert n%72 in(18,56) and n%5 in(0,2) and not in_H02(n)
        assert prime(p) and p>=7 and source_v(n,6,p)>0 and source_v(n,j,p)>0
        unresolved.append(dict(n=n,j=j,witness=p,source_valuation=source_v(n,6,p),target_valuation=source_v(n,j,p)))
    return dict(direct_domain_n_max=600,all_legal_configurations_in_diagnostic_box=all_configs,
                new_condition_rows=rows,new_condition_configurations_directly_verified=accepted,
                least_qualified_gcd=least_gcd,partial_avoidance_n_max=180,
                nonempty_partial_avoidance_inputs=partial,avoided_full_source_powers=checks,
                precision_control=dict(n=150,j=7,p=7,Q=49,source_valuation=2,target_valuation=1),
                unresolved_by_new_condition_but_not_counterexamples=unresolved,
                finite_regression_not_infinite_proof=True)

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True)
    out=ap.parse_args().out;r=run(out)
    (out/'regression.json').write_text(json.dumps(r,sort_keys=True,indent=2)+'\n')
    print(json.dumps(r,ensure_ascii=False))
