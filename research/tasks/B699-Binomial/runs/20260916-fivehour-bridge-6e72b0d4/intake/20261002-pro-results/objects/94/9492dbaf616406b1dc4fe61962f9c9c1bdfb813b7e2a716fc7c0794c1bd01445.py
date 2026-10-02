#!/usr/bin/env python3
"""Exact finite certificates for the native i=6 midpoint route (R11).
This generator does not declare a source-window survivor to be NC6.
No floating point, external CAS, network, repository write, or Lean.
"""
from __future__ import annotations
import argparse, hashlib, json, math
from pathlib import Path

FRONTIER = [27,100,128,153,176,225,252,280,325,352,378,425,552,576,625,704,729,776,801,850,875,928,954,976,1000,1026,1100,1225,1251,1305,1377,1425,1450,1476,1504,1552,1576,1625,1650,1675,1701,1776]
QUADRATIC = [252,704,850,954,1100,1552]
GAP_BOUND = 4096

def rough(v: int) -> int:
    v = abs(v)
    if v == 0: raise ValueError('rough(0) is not defined')
    for p in (2,3,5):
        while v % p == 0: v //= p
    return v

def small(v: int) -> int:
    if v <= 0: raise ValueError('small requires a positive integer')
    return v // rough(v)

def factors(v: int) -> dict[int,int]:
    if v < 1: raise ValueError('factor input must be positive')
    ans: dict[int,int] = {}
    p = 2
    while p*p <= v:
        while v % p == 0:
            ans[p] = ans.get(p,0)+1; v //= p
        p += 1
    if v > 1: ans[v] = ans.get(v,0)+1
    return ans

def all_divisors(f: dict[int,int]) -> list[int]:
    ds = [1]
    for p,e in sorted(f.items()):
        ds = [d*p**k for d in ds for k in range(e+1)]
    return ds

def fpoly(roots: list[int], d: int) -> int:
    return math.prod(d-h for h in roots)

def frontier_certificate() -> dict:
    rows=[]
    for a in FRONTIER:
        n=a+1800
        high=[next(r for r in range(6) if (n-r)%mod==0) for mod in (8,9,25)]
        cold=[r for r in range(6) if r not in high]
        sr=[small(n-r) for r in cold]
        kappa=math.prod(sr)
        roots=sorted({h for r in cold for h in range(-r,r+1,2)})
        eps=a%2; degree=len(roots)
        values=[fpoly(roots,2*k+eps) for k in range(degree+1)]
        diffs=[]; tmp=values[:]
        while tmp:
            diffs.append(tmp[0]); tmp=[b-a for a,b in zip(tmp,tmp[1:])]
        fixed=math.gcd(*values); delta=small(abs(fixed))
        assert delta%kappa==0
        rows.append(dict(residue=a,high_slots_2_3_5=high,cold_slots=cold,
            cold_small_parts=sr,kappa=kappa,roots=roots,delta_parity=eps,
            degree=degree,polynomial_values=values,newton_coefficients=diffs,
            fixed_divisor_gcd=fixed,smooth_fixed_divisor=delta,
            height_multiplier=delta//kappa,power_n=len(cold)))
    groups=[]
    for m,d in sorted({(r['power_n'],r['degree']) for r in rows}):
        rr=[r for r in rows if (r['power_n'],r['degree'])==(m,d)]
        groups.append(dict(power_n=m,power_gap=d,min_multiplier=min(r['height_multiplier'] for r in rr),residues=[r['residue'] for r in rr]))
    return dict(name='MIDPOINT-COLD-42',quantifier='all n,j in the stated residue classes, 7<=j<=floor(n/2), d=n-2j>=6, under NC6',rows=rows,groups=groups)

def gap_candidates(d: int) -> tuple[list[int],int]:
    # Opposite parity prevents zero factors even when d<=5.
    roots=range(-5,6,2) if d%2==0 else range(-4,5,2)
    ff:dict[int,int]={}
    for h in roots:
        for p,e in factors(rough(d-h)).items():
            ff[p]=max(ff.get(p,0),e)
    L=math.prod(p**e for p,e in ff.items())
    shifts=(1,3,5) if d%2==0 else (0,2,4)
    ns=sorted({v+r for v in all_divisors(ff) for r in shifts if v+r>=d+14})
    return ns,L

def first_failure(n:int,j:int) -> tuple[int,int,int] | None:
    for r in range(6):
        q=rough(n-r)
        f=1
        for b in range(r+1): f=f*((j-b)%q)%q
        if f:
            return r,q,q//math.gcd(q,f)
    return None

def terminal_certificate() -> dict:
    rows=[]; aggregate=hashlib.sha256(); total=0; histogram=[0]*6; maximum=0; survivors=[]
    for d in range(GAP_BOUND+1):
        ns,L=gap_candidates(d); hh=hashlib.sha256(); counts=[0]*6; local=[]
        for n in ns:
            j=(n-d)//2; bad=first_failure(n,j)
            if bad is None:
                local.append([n,j]); survivors.append([n,j,d]); line=f'{d}|{n}|PASS\n'
            else:
                r,q,missing=bad; counts[r]+=1
                line=f'{d}|{n}|{r}|{q}|{missing}\n'
            raw=line.encode('ascii'); hh.update(raw); aggregate.update(raw)
        total+=len(ns); maximum=max(maximum,max(ns,default=0))
        histogram=[x+y for x,y in zip(histogram,counts)]
        rows.append(dict(gap=d,L=L,candidate_count=len(ns),max_n=max(ns,default=0),failure_counts=counts,survivors=local,stream_sha256=hh.hexdigest()))
        if d%512==0: print(f'generator gap={d}: cumulative_candidates={total}, survivors={len(survivors)}',flush=True)
    return dict(name='STRIP4096',gap_min=0,gap_max=GAP_BOUND,
        contract='ordinary original pairs n,j; 7<=j<=floor(n/2); d=n-2j',
        candidate_count=total,max_n=maximum,failure_counts=histogram,
        survivors=survivors,stream_sha256=aggregate.hexdigest(),per_gap=rows)

def vp(n:int,p:int)->int:
    if n<=0: raise ValueError('positive valuation input required')
    e=0
    while n%p==0:n//=p;e+=1
    return e

def choose_v(n:int,j:int,p:int)->int:
    ans=0; q=p
    while q<=n:
        ans+=n//q-j//q-(n-j)//q; q*=p
    return ans

def isprime(p:int)->bool:
    return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))

def power_regressions()->dict:
    rows=[]
    for n,j,r,p in [(53,14,4,7),(56,14,0,7),(151,16,4,7)]:
        e=vp(n-r,p); Q=p**e
        rows.append(dict(n=n,j=j,r=r,p=p,e=e,Q=Q,
          passes_mod_p=j%p<=r,passes_complete_source=j%Q<=r,
          choose6_valuation=choose_v(n,6,p),choosej_valuation=choose_v(n,j,p),
          direct_choosej_valuation=vp(math.comb(n,j),p)))
    return dict(name='COMPLETE-POWER-REGRESSIONS',scope='regressions only; not new coverage',rows=rows)

def family_certificate()->dict:
    primes=[p for p in range(7,10001) if isprime(p)]
    rows=[]
    for a in QUADRATIC:
        lam=15 if a in (252,704,954,1552) else 3
        for m in (3,37,2049,1000000,1000000000):
            n=a+1800*m*m; d=2*m; j=(n-d)//2
            F=(d*d-1)*(d*d-9)*(d*d-25)
            left=lam*(n-1)*(n-3)*(n-5)
            assert left>F and 7<=j<=n//2
            witness=None
            for p in primes:
                if n%p<=5 and choose_v(n,j,p)>0:
                    r=n%p; witness=dict(p=p,r=r,e=vp(n-r,p),choose6_valuation=choose_v(n,6,p),choosej_valuation=choose_v(n,j,p)); break
            assert witness is not None
            rows.append(dict(residue=a,m=m,n=n,j=j,gap=d,multiplier=lam,F=F,left=left,witness=witness))
    return dict(name='UNBOUNDED-GAP-FAMILY',formula='a in {252,704,850,954,1100,1552}; m>=3; n=a+1800*m^2; j=n/2-m',
        quantifier='all integer m>=3; proof, not sample extrapolation',
        scope='native i6 ordinary inputs, not old B-RES10 norm inputs',rows=rows)

def claims()->dict:
    return dict(round='C-R11',date='2026-10-02',R7=[3,4,5,6,7,8,9],
        original_index=6,witness_prime_lower_bound=7,
        historical_net_removed=0,new_complete_indices=[],
        global_i6_closed=False,all42_residues_closed=False,
        full_B699_closed=False,global_finite_reduction=False,strict_NC_descent=False,
        external_independent_review=False,Lean_run=False,repository_modified=False,
        stripe=dict(gap_min=0,gap_max=4096,all_legal_n=True),
        distinction='The 42-row theorems are independent of the old 1758-row adoption chain; calling the 42 rows the exhaustive global remainder depends on that chain.',
        scope='proved original-input consumers and parameter-dependent height bounds; proof plus deterministic finite terminal, not certified historical union difference')

def write_json(path:Path,data:dict)->None:
    path.write_text(json.dumps(data,ensure_ascii=False,indent=2,sort_keys=True)+'\n',encoding='utf-8')

def main()->None:
    pa=argparse.ArgumentParser();pa.add_argument('--out',type=Path,required=True);args=pa.parse_args();args.out.mkdir(parents=True,exist_ok=True)
    certs={'frontier42.json':frontier_certificate(),'terminal4096.json':terminal_certificate(),
           'full_power_regressions.json':power_regressions(),'infinite_family.json':family_certificate(),'claims.json':claims()}
    for name,data in certs.items():write_json(args.out/name,data)
    t=certs['terminal4096.json'];print(json.dumps({k:t[k] for k in ('candidate_count','max_n','failure_counts','stream_sha256')},sort_keys=True),flush=True)
    print('DISCOVERY_PASS (certificate generation; not external review)',flush=True)
if __name__=='__main__':main()
