#!/usr/bin/env python3
"""Replay only this round's NEW certificates. Python standard library + C++17.

No Lean, SymPy, network, old archive, G coefficients, or enumeration of n/j.
The output directory must be new or empty; source/evidence files are read-only.
"""
from __future__ import annotations
import argparse, copy, hashlib, itertools, json, math, platform, random, re
import shutil, subprocess, sys, time
from fractions import Fraction
from pathlib import Path
from typing import Iterable

ROOT = Path(__file__).resolve().parents[1]
PTS = [(n, s*(n-s)) for n in range(3, 9) for s in range(n//2+1)]
P1, P2 = 1000003, 1000033

def require(condition: bool, message: str) -> None:
    if not condition:
        raise AssertionError(message)

def monomials(d: int) -> list[tuple[int, int]]:
    return [(a,b) for b in range(d//2+1) for a in range(d-2*b+1)]

def rank_mod(matrix: list[list[int]], p: int) -> int:
    if not matrix: return 0
    a = [[v % p for v in row] for row in matrix]
    r, n = 0, len(a[0])
    for c in range(n):
        k = next((i for i in range(r, len(a)) if a[i][c]), None)
        if k is None: continue
        a[r], a[k] = a[k], a[r]
        inv = pow(a[r][c], -1, p)
        a[r] = [(v*inv) % p for v in a[r]]
        for i in range(r+1, len(a)):
            u = a[i][c]
            if u: a[i] = [(x-u*y) % p for x,y in zip(a[i], a[r])]
        r += 1
        if r == len(a): break
    return r

def jet_rows(d: int, hits: int, singular: int) -> list[list[int]]:
    rows, mons = [], monomials(d)
    for idx, (n,x) in enumerate(PTS):
        if hits >> idx & 1:
            rows.append([n**a*x**b for a,b in mons])
            if singular >> idx & 1:
                rows.append([a*n**(a-1)*x**b if a else 0 for a,b in mons])
                rows.append([b*n**a*x**(b-1) if b else 0 for a,b in mons])
    return rows

def poly_mul(f: dict[tuple[int,int],int], g: dict[tuple[int,int],int]) -> dict[tuple[int,int],int]:
    h: dict[tuple[int,int],int] = {}
    for (a,b),c in f.items():
        for (u,v),e in g.items(): h[a+u,b+v] = h.get((a+u,b+v),0)+c*e
    return {ab:c for ab,c in h.items() if c}

def validate_exception(rec: dict) -> int:
    d, h, s = rec['degree'], rec['hit_mask'], rec['singular_mask']
    require(d in (6,8) and h.bit_count()==13, 'bad degree/hit mask')
    require(s & ~h == 0 and s.bit_count()==(4 if d==6 else 9), 'bad singular mask')
    mons, vv = monomials(d), rec['coefficients']
    require(len(vv)==len(mons) and all(type(c) is int for c in vv), 'bad integer vector')
    require(any(vv) and math.gcd(*vv)==1, 'not primitive nonzero')
    matrix = jet_rows(d,h,s)
    require(all(sum(x*y for x,y in zip(row,vv))==0 for row in matrix), 'integer jet residual')
    for p in (P1,P2): require(rank_mod(matrix,p)==len(mons)-1, 'missing full lower rank certificate')
    f = {ab:c for ab,c in zip(mons,vv) if c}
    require(type(rec['factor_scalar']) is int and rec['factor_scalar'] != 0, 'bad scalar')
    prod = {(0,0):rec['factor_scalar']}
    count = 0
    for factor in rec['factors']:
        base = {(a,b):c for c,a,b in factor['coefficients'] if c}
        e = factor['power']
        require(type(e) is int and e>=1 and any(a+b for a,b in base), 'constant or missing factor')
        require(all(type(v) is int for abc in factor['coefficients'] for v in abc), 'noninteger factor')
        for _ in range(e): prod = poly_mul(prod,base); count += 1
    require(count>=2 and prod==f, 'factor product mismatch')
    actual_hits = sum(sum(c*n**a*x**b for (a,b),c in f.items())==0 for n,x in PTS)
    require(actual_hits==13, 'wrong exact source count')
    return len(matrix)

def trial_prime(p: int) -> bool:
    return p>=2 and all(p%d for d in range(2, math.isqrt(p)+1))

def taylor_iterative(a: int,b: int,n: int,x: int,m: int) -> dict[tuple[int,int],int]:
    q = {(0,0):1}
    for direction, amount, value in [(0,a,n),(1,b,x)]:
        for _ in range(amount):
            out: dict[tuple[int,int],int] = {}
            for (u,v),c in q.items():
                out[u,v] = out.get((u,v),0)+value*c
                i,j = u+(direction==0), v+(direction==1)
                if i+j<m: out[i,j] = out.get((i,j),0)+c
            q = {ab:c for ab,c in out.items() if c}
    return q

def nullspace_integer(matrix: list[list[int]]) -> tuple[int,list[list[int]]]:
    a = [[Fraction(x) for x in row] for row in matrix]
    pivots, r = [], 0
    for c in range(len(a[0])):
        k = next((i for i in range(r,len(a)) if a[i][c]),None)
        if k is None: continue
        a[r],a[k] = a[k],a[r]
        pivot = a[r][c]; a[r] = [v/pivot for v in a[r]]
        for i in range(len(a)):
            if i!=r and a[i][c]:
                f=a[i][c];a[i]=[x-f*y for x,y in zip(a[i],a[r])]
        pivots.append(c);r+=1
        if r==len(a): break
    free = [c for c in range(len(a[0])) if c not in pivots]
    basis=[]
    for c in free:
        v=[Fraction(0)]*len(a[0]);v[c]=Fraction(1)
        for i,pc in enumerate(pivots): v[pc]=-a[i][c]
        den=math.lcm(*(x.denominator for x in v)); z=[int(x*den) for x in v]
        g=math.gcd(*z);basis.append([x//g for x in z])
    return r,basis

def exact_checks(out: Path) -> dict:
    require(len(PTS)==21 and len(set(PTS))==21,'grid mismatch')
    require(all(trial_prime(p) for p in (P1,P2)),'auxiliary modulus not prime')
    dimensions={str(d):len(monomials(d)) for d in range(22)}
    require([dimensions[str(d)] for d in (3,4,5,6,8,11,20,21)]==[6,9,12,16,25,42,121,132],'dimension error')
    budgets={
        'factor_norm_exponent':1242694+15+305+152,
        'bootstrap13_nonzero_exponent':9400+24*11+32*(1244000+3*305),
        'bootstrap13_resultant_exponent':math.factorial(162).bit_length()+10*1244000+152*9400,
        'double12_nonzero_exponent':1500+12*11+18*(8400+3*20),
        'double12_resultant_exponent':math.factorial(15).bit_length()+5*8400+10*1500,
        'double13_nonzero_exponent':1500+12*11+16*(9450+3*21),
        'double13_resultant_exponent':math.factorial(15).bit_length()+5*9450+10*1500,
    }
    require(budgets['factor_norm_exponent']<1244000,'factor entry')
    require(budgets['bootstrap13_nonzero_exponent']<3*14000001,'bootstrap nonzero threshold')
    for k,v in budgets.items():
        if k not in ('factor_norm_exponent','bootstrap13_nonzero_exponent'): require(v<14000001,k)
    require(132*9**42 < 2**142 and 132*2**(130*71)<2**9400, 'four-jet Cramer bound')
    require(42*9**22 < 2**76 and 42*2**(39*38)<2**1500, 'double-jet Cramer bound')
    require(9400+21+10<9450 and 1680<2**11,'small factor/small parts')
    # These are integer comparisons, not numerical logarithm estimates.
    jet_counts={}
    for d,m in [(21,4),(11,2)]:
        count=0
        for n,x in PTS:
            for a,b in monomials(d):
                exp=taylor_iterative(a,b,n,x,m)
                for i in range(m):
                    for j in range(m-i):
                        direct=(math.comb(a,i)*math.comb(b,j)*n**(a-i)*x**(b-j)
                                if i<=a and j<=b else 0)
                        require(exp.get((i,j),0)==direct,'Taylor coefficient mismatch');count+=1
        jet_counts[f'weight{d}_order{m}']=count
    # Finite diagnostics for pure row-rank lemmas; not original-problem samples.
    four=0
    for ids in itertools.combinations(range(21),4):
        if max(sum(PTS[i][0]==n for i in ids) for n in range(3,9))>3: continue
        matrix=[[n**a*x**b for a,b in monomials(4)] for n,x in (PTS[i] for i in ids)]
        require(rank_mod(matrix,P2)==4,'four-point rank');four+=1
    profile_rank_checks=0
    for m in itertools.product(range(4),repeat=6):
        if sum(m)!=8:continue
        r=sum(x>=1 for x in m);b=sum(x>=2 for x in m);c=sum(x>=3 for x in m)
        require(min(r,5)+min(b,3)+(c>0)>=7,'eight-point row-rank formula')
        profile_rank_checks+=1
    # An actual rational kernel, only as a check of the small-basis construction.
    rng=random.Random(69913)
    for _ in range(100):
        ids=sorted(rng.sample(range(21),13))
        mat5=[[n**a*x**b for a,b in monomials(5)] for n,x in (PTS[i] for i in ids)]
        if rank_mod(mat5,P1)==12: break
    else: raise AssertionError('no diagnostic full-rank pattern')
    mask=sum(1<<i for i in ids);matrix=jet_rows(11,mask,mask)
    rank,basis=nullspace_integer(matrix)
    require(len(basis)>=3 and rank_mod(matrix,P2)==rank,'kernel rank')
    for v in basis:
        require(all(sum(x*y for x,y in zip(row,v))==0 for row in matrix),'basis residual')
        require(sum(abs(x) for x in v)<2**1500,'basis norm')
    require(rank_mod(basis,P2)==len(basis),'basis independence')
    sample={'warning':'A finite source-jet example, NOT the fixed G or a B699 point.',
            'points':[PTS[i] for i in ids],'hit_mask':mask,'rank':rank,'basis':basis,
            'max_l1_bitlength':max(sum(abs(x) for x in v).bit_length() for v in basis)}
    (out/'jet_kernel_example.json').write_text(json.dumps(sample,indent=2)+'\n')
    records=json.loads((ROOT/'evidence'/'exception_candidates.json').read_text())
    require(len(records)==9,'exception count')
    equations=sum(validate_exception(r) for r in records)
    rejected=0
    for rec in records:
        for kind in ('coefficient','factor'):
            bad=copy.deepcopy(rec)
            if kind=='coefficient': bad['coefficients'][0]+=1
            else: bad['factors'][0]['coefficients'][0][0]+=1
            try: validate_exception(bad)
            except AssertionError: rejected+=1
            else: raise AssertionError('damaged certificate accepted')
    require(rejected==18,'rejection test count')
    boundary=json.loads((ROOT/'evidence'/'frontier14_probe.json').read_text())['witness']
    bpts=[tuple(v) for v in boundary['points']]
    require(len(bpts)==14 and len(set(bpts))==14 and all(v in PTS for v in bpts),'boundary point list')
    require(all(n*n!=4*x for n,x in bpts),'boundary diagonal assumption')
    bmatrix=[[math.comb(a,i)*math.comb(b,j)*n**(a-i)*x**(b-j)
              if i<=a and j<=b else 0 for a,b in monomials(21)]
             for n,x in bpts for i in range(4) for j in range(4-i)]
    require(len(bmatrix)==140 and len(bmatrix[0])==132,'boundary matrix size')
    for modulus in (P1,P2):
        require(rank_mod(bmatrix,modulus)==132,'boundary nonzero rank')
        require(rank_mod([[n**a*x**b for a,b in monomials(5)] for n,x in bpts],modulus)==12,'boundary evaluation rank')
    return {'dimensions':dimensions,'height_budgets':budgets,'taylor_entries':jet_counts,
            'four_point_sets':four,'eight_point_row_profiles':profile_rank_checks,
            'integer_exception_equations':equations,'exceptions':len(records),
            'corruptions_rejected':rejected,'boundary14_rank':132,'kernel_example_rank':rank,
            'kernel_example_dimension':len(basis),'primes_checked_by_trial_division':[P1,P2]}

def run_command(cmd: list[str], log: Path, timeout: int=120) -> str:
    t=time.monotonic();proc=subprocess.run(cmd,text=True,capture_output=True,timeout=timeout)
    log.write_text('$ '+' '.join(cmd)+'\n'+proc.stdout+proc.stderr+f'\nexit={proc.returncode} elapsed_seconds={time.monotonic()-t:.6f}\n')
    require(proc.returncode==0, f'command failed; see {log}')
    return proc.stdout

def parse_original(path: Path) -> set[tuple[int,int,int]]:
    return {tuple(map(int,line.split()[1:])) for line in path.read_text().splitlines()}

def replay(out: Path) -> dict:
    compiler=shutil.which('g++')
    require(compiler is not None,'g++ with C++17 is required')
    checks=exact_checks(out)
    for filename in ('profile_probe','profile_verify','rank8_probe'):
        run_command([compiler,'-O2','-std=c++17',str(ROOT/'code'/f'{filename}.cpp'),'-o',str(out/filename)],out/f'compile_{filename}.txt')
    rank8=run_command([str(out/'rank8_probe')],out/'rank8_probe.txt')
    require('tested=189081 skipped=14409 low_modular_rank=0 prime=1000003' in rank8,'eight-point finite diagnostic incomplete')
    summary=[];case_set=set()
    for mode,count,bad in [('A',395040,3),('B',777600,5),('C',97200,1)]:
        path=out/f'profile_{mode}_deficient.txt'
        text=run_command([str(out/'profile_probe'),mode,str(path),'0','20000'],out/f'profile_{mode}.txt')
        require(f'total={count} ' in text and f'deficient={bad} ' in text and 'stopped=0 ' in text,'incomplete first enumeration')
        cases=parse_original(path);require(len(cases)==bad,'duplicate deficient case')
        require(cases==parse_original(ROOT/'evidence'/f'profile_{mode}_deficient.txt'),'first exception list mismatch')
        summary.append({'mode':mode,'patterns':count,'deficient':bad});case_set|=cases
    for kind,count,bad in [('cubic',1172640,8),('quartic',97200,1)]:
        path=out/f'verify_{kind}_deficient.txt'
        text=run_command([str(out/'profile_verify'),kind,str(path)],out/f'verify_{kind}.txt')
        require(f'total={count} ' in text and f'deficient={bad} ' in text,'incomplete second enumeration')
        cases={tuple(map(int,line.split())) for line in path.read_text().splitlines()}
        expected={c for c in case_set if c[2]==(15 if kind=='cubic' else 24)}
        require(cases==expected,'second implementation disagrees')
    records=json.loads((ROOT/'evidence'/'exception_candidates.json').read_text())
    require(case_set=={(r['hit_mask'],r['singular_mask'],r['modular_rank']) for r in records},'missing coefficient certificate')
    checks.update({'status':'PASS_NEW_SOURCE14_CLOSURE_REPLAY','enumerations':summary,
                   'distinct_profiles_per_implementation':1269840,
                   'full_rank_profiles':1269831,'deficient_profiles':9,
                   'second_prime_same_exact_exception_set':True})
    return checks

def main() -> None:
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--out',type=Path,required=True,help='new or empty output directory')
    args=parser.parse_args();out=args.out.resolve()
    require(out!=ROOT and not (out.exists() and any(out.iterdir())),'output must be new/empty')
    out.mkdir(parents=True,exist_ok=True)
    start=time.monotonic()
    try:
        result=replay(out)
        result['runtime_seconds']=time.monotonic()-start
        result['python']=sys.version;result['platform']=platform.platform()
        result['source_sha256']={p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in (ROOT/'code').glob('*') if p.is_file()}
        (out/'CHECKS.json').write_text(json.dumps(result,indent=2)+'\n')
        print(result['status']);print(f'profiles={result["distinct_profiles_per_implementation"]} exceptions=9 seconds={result["runtime_seconds"]:.3f}')
    except Exception as exc:
        (out/'FAILURE.txt').write_text(type(exc).__name__+': '+str(exc)+'\n')
        raise
if __name__=='__main__':main()
