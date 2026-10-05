#!/usr/bin/env python3
"""Exact adjacency-signature half optimization on Clebsch root orbits.
Only stdlib. Fractions throughout optimization; each undirected edge counted once.
The general oracle is justified in proofs/LOCAL_ORACLE.md (generated in this run).
"""
from __future__ import annotations
from fractions import Fraction as F
from itertools import combinations, permutations
from collections import Counter
import json, time, argparse
from pathlib import Path


def clebsch():
    labels = [x for x in range(32) if x.bit_count()%2 == 0]
    edges = [(i,j) for i in range(16) for j in range(i+1,16)
             if (labels[i]^labels[j]).bit_count()==4]
    adj = [0]*16
    for a,b in edges:
        adj[a] |= 1<<b; adj[b] |= 1<<a
    return labels,edges,adj


def partition(adj, roots):
    blocks = {}
    for v in range(len(adj)):
        sig = sum(1<<j for j,r in enumerate(roots) if adj[r]>>v&1)
        blocks.setdefault(sig, []).append(v)
    # Zero cell first if it is nonempty. Nonzero cells all independent.
    return [(s,blocks[s]) for s in sorted(blocks)]


def exact_oracle(edges, blocks, target=None):
    """Return globally minimal cell-constant quadratic cost and one rational half.
    Nonzero signature cells must be independent. Only the zero cell may have edges.
    Handles no zero cell, singleton cell, and all exact interval endpoints.
    """
    n=sum(len(v) for s,v in blocks)
    if target is None: target=F(n,2)
    else: target=F(target)
    if not 0 <= target <= n: raise ValueError('bad target')
    s=[len(v) for _,v in blocks]; k=len(s)
    idx={v:i for i,(_,vs) in enumerate(blocks) for v in vs}
    E=[[0]*k for _ in range(k)]
    for u,v in edges:
        i,j=sorted((idx[u],idx[v])); E[i][j]+=1
    for i,(sig,_) in enumerate(blocks):
        if sig and E[i][i]: raise ValueError('nonzero cell is not independent')
    z=0 if k and blocks[0][0]==0 else None
    inds=[i for i in range(k) if i!=z]
    best=None; best_x=None; cases=0
    def value(x):
        return sum(E[i][j]*x[i]*x[j] for i in range(k) for j in range(i,k))
    def record(x):
        nonlocal best,best_x,cases
        cases+=1
        assert all(0<=a<=1 for a in x)
        assert sum(a*b for a,b in zip(s,x))==target
        v=value(x)
        if best is None or v<best:
            best,best_x=v,x[:]
    if not inds:
        x=[target/s[0]]; record(x)
    else:
        for j in inds:
            others=[i for i in inds if i!=j]
            for mask in range(1<<len(others)):
                U=[i for p,i in enumerate(others) if mask>>p&1]
                mass=sum(s[i] for i in U); r=target-mass
                if r<0 or r > s[j]+(s[z] if z is not None else 0): continue
                x=[F(0)]*k
                for i in U: x[i]=F(1)
                if z is None:
                    x[j]=r/s[j]; record(x); continue
                lo=max(F(0),(r-s[j])/s[z]); hi=min(F(1),r/s[z])
                if lo>hi: continue
                def ec(a,b): return E[min(a,b)][max(a,b)]
                Lz=sum(ec(z,i) for i in U)
                Lj=sum(ec(j,i) for i in U)
                a=F(E[z][z])-F(ec(z,j)*s[z],s[j])
                b=F(Lz)-F(Lj*s[z],s[j])+F(ec(z,j),s[j])*r
                ts={lo,hi}
                if a>0:
                    v=-b/(2*a)
                    if lo<=v<=hi: ts.add(v)
                for t in ts:
                    x[z]=t; x[j]=(r-s[z]*t)/s[j]; record(x)
    assert best is not None
    return {'value':str(best),'normalized':str(best/F(n*n)),
            'weights':[str(v) for v in best_x], 'candidate_evaluations':cases,
            'sizes':s,'upper_edge_matrix':E}


def automorphisms(labels):
    lookup={v:i for i,v in enumerate(labels)}
    out=[]
    for p in permutations(range(5)):
        permuted=[sum(((v>>i)&1)<<p[i] for i in range(5)) for v in labels]
        for t in labels:
            out.append(tuple(lookup[v^t] for v in permuted))
    assert len(set(out))==1920
    return out


def root_orbits(max_roots=4):
    labels,edges,adj=clebsch(); autos=automorphisms(labels)
    output=[]
    for k in range(1,max_roots+1):
        pending=set(combinations(range(16),k)); total=len(pending)
        while pending:
            R=min(pending)
            orbit={tuple(sorted(a[v] for v in R)) for a in autos}
            assert orbit<=pending
            pending-=orbit
            blocks=partition(adj,R)
            t0=time.perf_counter(); result=exact_oracle(edges,blocks)
            induced=[(a,b) for a,b in combinations(range(k),2) if adj[R[a]]>>R[b]&1]
            row={'root_count':k,'roots':R,'root_even_masks':[labels[v] for v in R],
                 'orbit_size':len(orbit),'root_induced_edges':induced,
                 'blocks':[{'signature':sig,'vertices':vs} for sig,vs in blocks],
                 **result,'optimization_seconds':time.perf_counter()-t0}
            output.append(row)
            print(json.dumps({key:row[key] for key in ['root_count','roots','orbit_size','root_induced_edges','value','normalized','sizes','weights','optimization_seconds']}),flush=True)
        assert sum(r['orbit_size'] for r in output if r['root_count']==k)==total
    return output


def main():
    ap=argparse.ArgumentParser(); ap.add_argument('--max-roots',type=int,default=4)
    ap.add_argument('--out',type=Path,default=Path('clebsch-root-orbits.json')); args=ap.parse_args()
    t0=time.perf_counter(); rows=root_orbits(args.max_roots)
    data={'graph':'even subsets of [5], adjacency xor weight 4',
          'group':'even translations semidirect coordinate permutations, 1920 exact maps',
          'root_orbits':rows,'seconds':time.perf_counter()-t0}
    args.out.write_text(json.dumps(data,indent=2)+'\n')
    print('TOTAL_SECONDS',data['seconds'])

if __name__=='__main__': main()
