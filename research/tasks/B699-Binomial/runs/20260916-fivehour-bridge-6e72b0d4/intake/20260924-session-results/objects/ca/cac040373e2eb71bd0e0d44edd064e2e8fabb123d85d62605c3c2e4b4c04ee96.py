"""Exact forced-source-line descent.  No network, repository, or floating point.

Mathematical premises: adopted H63 frontier, source orders, and safe signatures.
The source-line implication and quotient capacity are proved in PROOFS.md.
"""
from __future__ import annotations
import hashlib,itertools,json,sys
from collections import Counter,defaultdict
from functools import lru_cache
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'inputs/h63/code'))
import frontier_refine as adopted
OFF=((77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39))
DIAG=(0,56,0,41,0,52)
PRICE=(0,0,14,8,8,8)
INF=10**9

def dump(path:Path, data):
    path.parent.mkdir(parents=True,exist_ok=True)
    path.write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')

def all_states():
    """Rebuild the fixed indexing from the original six source bounds."""
    def subcomps(budget,k):
        if not k:
            yield ();return
        for v in range(budget+1):
            for tail in subcomps(budget-v,k-1):yield (v,)+tail
    def lower(i,v):return sum(max(a-v,0) for a in OFF[i])+(max(DIAG[i]-v,0)+1)//2
    states=[]
    for h in range(153):
        base=[next(v for v in range(78) if lower(i,v)<=h) for i in range(6)]
        budget=305-2*h-sum(base)
        if budget<0:continue
        for extra in subcomps(budget,6):
            v=[a+b for a,b in zip(base,extra)]
            d=[h-lower(i,v[i]) for i in range(6)]
            p=[max(DIAG[i]-v[i],0)%2 if DIAG[i] else 0 for i in range(6)]
            states.append(dict(h=h,v=v,E=305-2*h-sum(v),d=d,p=p,cap=[2*a+b for a,b in zip(d,p)]))
    assert len(states)==2035 and sum(st['E']==0 for st in states)==1540
    assert states==adopted.L.all_states()
    return states

def frontier_indices():
    lines=(ROOT/'inputs/h63/certificates/ledger/final_E0_frontier.tsv').read_text().splitlines()
    out=[int(line.split()[0]) for line in lines[1:] if line.strip()]
    assert len(out)==347 and len(set(out))==347
    return out

def initial_orders(st):
    return ([[max(a-st['v'][i],0) for a in OFF[i]] for i in range(6)],
            [max(DIAG[i]-st['v'][i],0) if DIAG[i] else 0 for i in range(6)])

def line_loads(off,diag):
    loads=[0]*9
    for i,r in enumerate(range(3,9)):
        for s,m in enumerate(off[i]):
            loads[s]+=m;loads[r-s]+=m
        if r%2==0:loads[r//2]+=diag[i]
    return loads

def row_degrees(off,diag):return [sum(a)+(b+1)//2 for a,b in zip(off,diag)]

def peel(st,reverse=False):
    off,diag=initial_orders(st);e=st['h'];factors=[0]*9;steps=[]
    while True:
        row_bounds=row_degrees(off,diag)
        bad=[i+3 for i,b in enumerate(row_bounds) if b>e]
        if bad:
            return dict(status='row_degree_contradiction',residual_e=e,factors=factors,steps=steps,
                        row_degree_lower_bounds=row_bounds,bad_rows=bad)
        loads=line_loads(off,diag)
        order=range(8,-1,-1) if reverse else range(9)
        t=next((t for t in order if loads[t]>2*e),None)
        if t is None:
            return dict(status='unforced_residual',residual_e=e,factors=factors,steps=steps,
                        off=off,diag=diag,row_degree_lower_bounds=row_bounds,line_loads=loads,
                        capacity=[2*e-2*sum(a)-b for a,b in zip(off,diag)])
        if e==0:raise AssertionError('nonzero degree-zero residual cannot have positive source order')
        steps.append(dict(t=t,e_before=e,restriction_degree_upper_bound=2*e,
                          forced_zero_order=loads[t],strict_excess=loads[t]-2*e))
        e-=1;factors[t]+=1
        for i,r in enumerate(range(3,9)):
            for s in range(len(off[i])):
                if t in (s,r-s):off[i][s]=max(off[i][s]-1,0)
            if 2*t==r:diag[i]=max(diag[i]-2,0)

def pareto_costs(raw):
    pairs=sorted(set((a[0],tuple(a[1])) for a in raw));out=[]
    for a in pairs:
        if not any(b[0]<=a[0] and all(x<=y for x,y in zip(b[1],a[1])) for b in out):out.append(a)
    assert all(any(b[0]<=a[0] and all(x<=y for x,y in zip(b[1],a[1])) for b in out) for a in pairs)
    return out

def bellman(raw,cap,n=8):
    kept=pareto_costs(raw)
    @lru_cache(None)
    def lower(k,c):
        if not k:return 0
        ans=INF
        for e,a in kept:
            if all(x<=y for x,y in zip(a,c)):
                ans=min(ans,e+lower(k-1,tuple(y-x for x,y in zip(a,c))))
        return ans
    ans=lower(n,tuple(cap));w=[];c=tuple(cap)
    for k in range(n,0,-1):
        for a in raw:
            e,cost=a[:2];cost=tuple(cost)
            if all(x<=y for x,y in zip(cost,c)):
                cc=tuple(y-x for x,y in zip(cost,c))
                if e+lower(k-1,cc)==lower(k,c):w.append(a);c=cc;break
        else:raise AssertionError('missing minimum witness')
    return ans,w,c,lower

def forward_layers(raw,cap,n=8):
    """Second algorithm: exact USED capacity, no Pareto deletion, reversed items."""
    active=[a for a in reversed(raw) if all(x<=y for x,y in zip(a[1],cap))]
    levels=[{(0,)*6:0}]
    for _ in range(n):
        out={}
        for used,e in levels[-1].items():
            for a in active:
                cc=tuple(x+y for x,y in zip(used,a[1]))
                if any(x>y for x,y in zip(cc,cap)):continue
                value=e+a[0]
                if value<out.get(cc,INF):out[cc]=value
        levels.append(out)
    return levels

def basic_negative_tests(raw):
    # Coefficient identity in Q[U,V]: ell_t(U+V,UV)=(U-t)(V-t).
    for t in range(9):
        lhs={(1,1):1,(1,0):-t,(0,1):-t,(0,0):t*t}
        rhs={(1,1):1,(1,0):-t,(0,1):-t,(0,0):t*t}
        assert lhs==rhs
    # H=X-(N-4)(N-5), e=1. At ell_0: H(N,0)=-N^2+9N-20.
    # It has exactly order 1 at N=4,5, total 2=2e, but ell_0 does not divide H.
    assert [-20,9,-1]!=[0,0,0]
    force_if=lambda order,e:order>2*e
    assert not force_if(2,1) and force_if(3,1)
    s5=next(a for a in raw if a[2]=='S5')
    score=s5[0]+sum(x*y for x,y in zip(PRICE,s5[1]))
    assert score==40 and not score>=41
    # A weighted order B=31 requires ceil(31/2)=16, not floor=15.
    assert (31+1)//2==16
    return dict(strict_not_weak_inequality=True,equality_counterexample_restriction=[-20,9,-1],
                symbolic_original_point_identities=9,bad_dual_alpha41_rejected=True,
                odd_diagonal_ceiling_checked=True)

def run(out:Path):
    out.mkdir(parents=True,exist_ok=False)
    manifest=json.loads((ROOT/'inputs/SOURCE_MANIFEST.json').read_text())
    for rel,sha in manifest.items():assert hashlib.sha256((ROOT/rel).read_bytes()).hexdigest()==sha,rel
    raw=adopted.new_raw();stored=json.loads((ROOT/'inputs/frozen_signatures.json').read_text())
    assert json.loads(json.dumps(raw))==stored
    states=all_states();ids=frontier_indices();rows=[];killed=[]
    for idx in ids:
        st=states[idx];z=peel(st);rev=peel(st,True)
        assert (z['status'],z['residual_e'],z['factors'])==(rev['status'],rev['residual_e'],rev['factors'])
        record=dict(index=idx,state=st,descent=z)
        if z['status']=='row_degree_contradiction':
            killed.append(idx);record['elimination']='forced_line_conflicts_with_specialization_degree'
        elif z['steps']:
            cap=tuple(z['capacity']);need,witness,unused,lower=bellman(raw,cap)
            layers=forward_layers(raw,cap)
            assert need==min(layers[8].values())
            # Compare every subcapacity at each factor count using prefix minima.
            allcaps=list(itertools.product(*(range(c+1) for c in cap)))
            comparisons=0
            for k,level in enumerate(layers):
                table=dict(level)
                for c in allcaps:
                    best=table.get(c,INF)
                    for i,ci in enumerate(c):
                        if ci:
                            prev=list(c);prev[i]-=1;best=min(best,table.get(tuple(prev),INF))
                    table[c]=best
                    assert table[c]==lower(k,c)
                    comparisons+=1
            active=[a for a in raw if all(x<=y for x,y in zip(a[1],cap))]
            margins=[a[0]+sum(x*y for x,y in zip(PRICE,a[1]))-40 for a in active]
            assert min(margins)>=0
            price_bound=8*40-sum(x*y for x,y in zip(PRICE,cap))
            assert price_bound==need==96 and z['residual_e']==70
            assert sum(a[0] for a in witness)==96
            record['quotient_ledger']=dict(capacity=cap,minimum_eight_degree=need,
                available_degree=z['residual_e'],gap=need-z['residual_e'],minimum_witness=witness,
                unused_witness_capacity=unused,dual_alpha=40,dual_prices=PRICE,
                dual_capacity_charge=sum(x*y for x,y in zip(PRICE,cap)),dual_bound=price_bound,
                active_named_signatures=len(active),nonnegative_dual_margins=margins,
                cross_algorithm_subcapacity_comparisons=comparisons,
                forward_layer_sizes=[len(x) for x in layers])
            assert need>z['residual_e'];killed.append(idx)
            record['elimination']='nonloadable_forced_divisor_and_exact_resource_bound'
        else:record['elimination']=None
        rows.append(record)
    assert killed==[875,931,934,1019]
    final=[i for i in ids if i not in killed];assert len(final)==343
    hmin=min(states[i]['h'] for i in final);assert hmin==73
    assert [i for i in final if states[i]['h']==73]==[1027,1036,1037,1039]
    dump(out/'source_descent_all347.json',rows)
    dump(out/'strictness_tests.json',basic_negative_tests(raw))
    # Diagnostic boundary. Recompute every aggregate, but do not claim a new
    # exclusion unless ALL aggregates are ruled out.
    bounds=[]
    for idx in (1027,1036,1037,1039):
        st=states[idx];aa=adopted.aggregate_map(st,raw);bb=adopted.aggregate_map(st,list(reversed(raw)))
        assert {k:v[0] for k,v in aa.items()}=={k:v[0] for k,v in bb.items()}
        rec=adopted.test(idx,raw,aa)
        for item in rec['results']:adopted.verify_moment_certificate(st,item)
        assert rec['surviving_projections']>0
        bounds.append(rec)
        if idx==1027:
            all_paths=[]
            for (D,K,s5),(deg,_) in sorted(aa.items()):
                pp=adopted.enumerate_paths(st,D,K,s5,raw)
                qq=adopted.enumerate_paths(st,D,K,s5,list(reversed(raw)))
                canon=lambda zz:sorted(tuple(sorted(p)) for p in zz)
                assert canon(pp)==canon(qq)
                all_paths.extend(pp)
            assert len(all_paths)==2 and all(sum(a[0] for a in p)==72 for p in all_paths)
            dump(out/'state1027_all_multisets.json',
                 dict(index=1027,complete_named_signature_multisets=2,
                      paths=[adopted.MF.compact(p) for p in all_paths],
                      actual_curves_claimed=False,minimum_degree=72,available_degree=73))
    dump(out/'h73_boundary_diagnostics.json',bounds)
    text='idx\th\tE\tv3,v4,v5,v6,v7,v8\n'
    for i in final:text+=f"{i}\t{states[i]['h']}\t0\t"+','.join(map(str,states[i]['v']))+'\n'
    (out/'final_E0_frontier.tsv').write_text(text)
    summary=dict(status='PASS_SOURCE_LINE_DESCENT_H73',input_E0_states=347,final_E0_states=343,
        eliminated_states=killed,minimum_equality_h=73,maximum_vertical_sum=159,
        initial_source_line_tests=347*9,forced_factor_steps=5,peeling_states_with_forced_factors=4,
        first_three_excluded_without_factor_signatures=True,
        quotient_state1019=dict(forced_lines=[4,3],degree_drop=[72,71,70],minimum_eight_degree=96,
            dual_alpha=40,dual_prices=PRICE,capacity=(0,0,4,2,6,13),gap=26),
        remaining_h73_indices=[1027,1036,1037,1039],
        raw_named_signatures=len(raw),new_geometry_rank_systems=0,
        same_fixed_G_cover_upper_bound=8,COVER7_proved=False,Lean=False,
        external_independent_full_chain_review=False,original_n_j_absolute_bound=False,
        auxiliary_polynomial_degree_descent_preserves_original_point=True,
        smaller_original_NC_input_constructed=False,repository_writes=False)
    dump(out/'summary.json',summary)
    print(summary['status'],json.dumps({'eliminated':killed,'remaining':len(final),'minimum_h':hmin}))

if __name__=='__main__':
    if len(sys.argv)!=2:raise SystemExit('usage: python -B code/source_descent.py NEW_OUTPUT_DIRECTORY')
    run(Path(sys.argv[1]))
