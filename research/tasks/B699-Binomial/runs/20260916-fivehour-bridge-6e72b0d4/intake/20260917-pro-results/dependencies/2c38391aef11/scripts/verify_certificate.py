#!/usr/bin/env python3
"""Second checker; does NOT import the builder or exploratory probes.
Endpoints: enumerate polynomial images Ay(y-1), not square-residue discriminants.
Cubics: rebuild by polynomial arithmetic and scan a proved Cauchy bound.
First allocations: scan bounded rows, not the builder's divisor reconstruction.
"""
from __future__ import annotations
import argparse
import copy
import hashlib
import json
from math import gcd, isqrt, comb
from pathlib import Path


def require(c: bool, msg: str) -> None:
    if not c:
        raise ValueError(msg)


def sm(n: int) -> tuple[int, int]:
    v = n % 9
    return (3 if v == 4 or v == 7 else 1, 3 if v == 5 or v == 8 else 1)


def prime(p: int) -> bool:
    return p >= 2 and all(p % d for d in range(2, isqrt(p) + 1))


def expected_endpoint_rows() -> tuple[int, dict]:
    raw_count = 0
    result = {}
    for D in [5, 7, 9]:
        pairs = [(1, 1)] if D == 9 else [(1, 1), (1, 3), (3, 1)]
        for la, mu in pairs:
            A = la * mu * D
            for r in range(1, A):
                if gcd(r, D) != 1:
                    continue
                Mset = set()
                # Reconstruct odd parts directly from g | 2r rather than using divisors(r).
                for g in range(1, 2 * r + 1):
                    if (2 * r) % g or gcd(g, A) != 1:
                        continue
                    m = g
                    while m % 2 == 0:
                        m //= 2
                    for c in [1, 3]:
                        if c == 3 and (m % 3 == 0 or la * mu != 1 or D == 9):
                            continue
                        Mset.add(c * m)
                side = 'L' if r * 4 > A else 'R'
                for M in sorted(Mset):
                    raw_count += 1
                    period = 22680 if D == 9 else 2520
                    require(pow(2, period, 9) == 1 and pow(2, period, D * D) == 1, 'filter period invalid')
                    vs = []
                    n9, ns = M % 9, M % (D * D)
                    for v in range(period):
                        # Test the original lifted congruence r*(n-2)/D = 2lam*mu mod D.
                        lifted = (ns - 2) % D == 0 and (r * ((ns - 2) // D) - 2 * la * mu) % D == 0
                        if sm(n9) == (la, mu) and lifted:
                            vs.append(v)
                        n9 = 2 * n9 % 9
                        ns = 2 * ns % (D * D)
                    if vs:
                        result[(D, side, la, mu, r, M)] = (period, vs)
    return raw_count, result


def check_endpoints(section: dict) -> dict:
    raw, expected = expected_endpoint_rows()
    rows = section['rows']
    actual_keys = [tuple(row['parameters']) for row in rows]
    require(len(set(actual_keys)) == len(actual_keys), 'duplicate endpoint rows')
    require(set(actual_keys) == set(expected), 'incomplete endpoint parameter set')
    require(section['parameters_before_exponent_filters'] == raw, 'raw row count')
    total = 0
    blocked = 0
    remaining = 0
    used = set()
    for row in rows:
        D, side, la, mu, r, M = tuple(row['parameters'])
        period, vs = expected[tuple(row['parameters'])]
        require(row['period'] == period, 'changed endpoint period')
        require(row['initial_count'] == len(vs), 'changed allowed exponent set')
        total += len(vs)
        A = la * mu * D
        for step in row['steps']:
            p = step['prime']
            require(prime(p) and p >= 5 and A % p != 0, 'invalid modulus')
            require(pow(2, period, p) == 1, 'modulus not periodic')
            require(step['before'] == len(vs), 'wrong step input count')
            # Different formulation: original quadratic polynomial image, enumerate every y.
            image = {A * y * (y - 1) % p for y in range(p)}
            after = []
            for v in vs:
                n = M * pow(2, v, p) % p
                if r * (n - 1) * (n - 2) % p in image:
                    after.append(v)
            require(len(after) == step['after'] and len(after) < len(vs), 'wrong elimination')
            blocked += len(vs) - len(after)
            vs = after
            used.add(p)
        special = (D, side, la, mu, r, M) == (7, 'R', 3, 1, 3, 1)
        wanted = [4] if special else []
        require(vs == row['residual'] == wanted, 'endpoint not fully accounted for')
        remaining += len(vs)
    require(section['nonempty_parameter_classes'] == len(rows), 'row summary mismatch')
    require(section['initial_exponent_cells'] == total, 'exponent summary mismatch')
    require(section['fully_excluded_classes'] == len(rows)-1, 'excluded class count')
    require(section['remaining_exponent_cells'] == remaining == 1, 'residual count')
    require(section['largest_used_modulus'] == max(used), 'largest prime count')
    return {'raw_parameter_rows': raw, 'nonempty_classes': len(rows),
            'all_exponent_cells': total, 'eliminated_cells': blocked,
            'residual': {'D':7,'side':'R','lambda':3,'mu':1,'r':3,'oddpart_n':1,'v_mod_2520':4},
            'used_moduli': sorted(used)}


# Tiny integer polynomial package; increasing degree.
def add(a: list[int], b: list[int]) -> list[int]:
    c = [0] * max(len(a), len(b))
    for i,v in enumerate(a): c[i] += v
    for i,v in enumerate(b): c[i] += v
    while len(c) > 1 and c[-1] == 0: c.pop()
    return c

def scale(a: list[int], k: int) -> list[int]: return [k*x for x in a]

def mul(a: list[int], b: list[int]) -> list[int]:
    c=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b): c[i+j] += x*y
    while len(c)>1 and c[-1]==0:c.pop()
    return c

def sub(a: list[int], b: list[int]) -> list[int]:return add(a,scale(b,-1))

def at(a: list[int], x: int) -> int:return sum(v*x**i for i,v in enumerate(a))


def reconstruct_poly(target: str, e: int, d: int, q: int) -> list[int]:
    xp=[e,1];xm=[-e,1];x2=[0,0,1]
    if target=='j':
        V=sub(scale(xp,q),[2*e*d*d])
        left=mul(V,sub(mul(xp,V),[7*d*d]))
    else:
        V=sub(scale(xp,q),[16*e*d*d])
        left=mul(sub(scale(x2,7*d*d),mul(xp,V)),sub(scale(xm,7*d*d),V))
    return sub(left,scale(mul(xm,[-2,0,1]),7*d**4))


def check_cubics(section: dict) -> dict:
    wanted={(t,e,q) for t in ['j','k'] for e in [1,-1] for q in range(1,64)}
    rows=section['rows']
    require(len(rows)==252 and section['cubic_count']==252,'cubic count')
    keys=[(r['target'],r['eps'],r['q']) for r in rows]
    require(len(set(keys))==len(keys) and set(keys)==wanted,'missing cubic')
    reconstruction=[];scanned=0;max_bound=0;roots_count=0
    for row in rows:
        t,e,q=row['target'],row['eps'],row['q']
        d=1 if e==1 else 3
        require(row['d']==d,'scale mismatch')
        coeff=reconstruct_poly(t,e,d,q)
        require(coeff==row['coefficients'] and len(coeff)==4,'polynomial mismatch')
        require(coeff[0]!=0 and coeff[3]!=0,'degenerate polynomial')
        # Cauchy root bound, a different exhaustive search from the builder's divisors.
        bound=1+max(abs(c) for c in coeff[:-1])//abs(coeff[-1])
        max_bound=max(max_bound,bound)
        roots=[x for x in range(4,bound+1) if at(coeff,x)==0]
        scanned+=max(0,bound-3);roots_count+=len(roots)
        require(roots==row['integer_roots_x_ge4'],'integer root list incomplete')
        points=[]
        for x in roots:
            if (x+e)%d:continue
            D=(x+e)//d
            shift=2 if t=='j' else 16
            a=q*D-shift*e*d
            if a%7:continue
            h=a//7
            y=D*h;n=x*x
            j=y if t=='j' else n-y
            if h<=0 or j<4 or 2*j>=n:continue
            require(7*j*(j-1)==(n-1)*(n-2),'reconstruction equation')
            require(q*D==7*h+shift*e*d,'quotient recovery')
            require(j==D*h if t=='j' else n-j==D*h,'factor reconstruction')
            pt=[x,n,j,D,h]
            points.append(pt);reconstruction.append([t,e,q,*pt])
        require(points==row['legal_points'],'legal reconstruction mismatch')
    require(reconstruction==section['legal_reconstructions'],'global points mismatch')
    require({(r[4],r[5]) for r in reconstruction}=={(16,6)},'unexpected legal point')
    la,mu=sm(16);K=(16-2)//(2*mu)
    require(gcd(K,6-2)==1,'terminal point has not been excluded')
    require(gcd(comb(16,3),comb(16,6))%7==0,'terminal direct common-prime check')
    return {'cubic_count':252,'Cauchy_integer_trials':scanned,'max_Cauchy_bound':max_bound,
            'positive_integer_roots_x_ge4':roots_count,
            'legal_reconstructions':reconstruction,'terminal_original_witness_prime':7}


def check_first_allocations(section: dict) -> dict:
    rows=section['entries']
    require({(r['side'],r['factor']) for r in rows}=={(s,f) for s in ['a','b'] for f in [5,7,9]},'first allocation set')
    results=[];tests=0
    for row in rows:
        side,f=row['side'],row['factor']
        # Independently derive the row bound from the largest resultant value.
        bounds=[]
        for la,mu in [(1,1),(1,3),(3,1)]:
            A=la*f
            for q in range(1,(A+1)//2):
                z=(q*(A-q)*(A+q) if side=='a' else q*(A-q)*(2*A-q))//2
                bounds.append(2*mu*z+2)
        bound=max(bounds)
        require(bound==row['raw_max_n'],'first allocation row bound')
        survivors=[]
        for n in range(8,bound+1,8):
            la,mu=sm(n)
            if (n-1)%(la*f):continue
            other=(n-1)//(la*f)
            N=(n-1)//la;K=(n-2)//(2*mu)
            # Enumerate all possible j directly from its known first allocation.
            stride=other
            j0=1 if side=='a' else 0
            for q in range(1,(la*f+1)//2):
                j=stride*q+j0;tests+=1
                if not 4<=j<n//2:continue
                a,b=gcd(N,j),gcd(N,j-1)
                if (a if side=='a' else b)!=f or a*b!=N:continue
                if (j*(j-1))%N==0 and j*(j-1)*(j-2)%K==0:
                    survivors.append((n,j))
        require(not survivors and not row['survivors'],'first allocation not eliminated')
        results.append({'side':side,'factor':f,'max_n':bound,'survivors':[]})
    return {'bounded_row_reconstructions':tests,'entries':results}


def check_algebra_and_regression() -> dict:
    # Exact coefficient identities for the two resultant magnitude bounds.
    # Choose independent integer evaluations up to the maximal total degree.
    count=0
    for A in range(1,10):
        for q in range(0,10):
            require(3*A**3-8*q*(A*A-q*q)==(A-2*q)*(3*A*A-2*A*q-4*q*q),'first cubic identity')
            F=q*(A-q)*(2*A-q)
            require(4*A**6-27*F*F==(A*A-3*(A-q)**2)**2*(4*A*A-3*(A-q)**2),'second cubic identity')
            count+=2
    # Direct binomial regression of the new condition, no source-window assumptions.
    checked=0;all_pairs=0
    for n in range(8,513):
        source=comb(n,3)
        while source%2==0:source//=2
        for j in range(4,n//2+1):
            all_pairs+=1
            g=gcd(n,j)
            beta,gamma=j//g,(n-j)//g
            if not (thin(beta) or thin(gamma)):
                continue
            require(gcd(source,comb(n,j))>1,'thin consumer original counterexample')
            checked+=1
    return {'identity_grid_values':count,'regression_n_max':512,
            'all_legal_pairs_seen':all_pairs,'thin_condition_pairs_checked':checked}


def thin(x:int)->bool:
    if x==1:return False  # Strict THIN9 uses a prime-power exponent >= 1.
    remaining=x
    p=2
    while p*p<=remaining:
        if remaining%p==0:
            power=1
            while remaining%p==0:
                remaining//=p;power*=p
            if x//power<=9:return True
        p+=1
    return remaining>1 and x//remaining<=9


def verify(data:dict, regression:bool=True)->dict:
    require(data['schema']=='B699-ProE-thin-cofactor-9-v1','wrong schema')
    ans={'first_allocations':check_first_allocations(data['first_allocations']),
         'endpoints':check_endpoints(data['endpoint_periods']),
         'R7_cubics':check_cubics(data['R7_square_factor_cubics'])}
    if regression:ans['algebra_and_regression']=check_algebra_and_regression()
    return ans


def mutation_tests(data:dict)->list[str]:
    mutations=[]
    d=copy.deepcopy(data);d['endpoint_periods']['rows'].pop();mutations.append(('missing endpoint class',d))
    d=copy.deepcopy(data);d['endpoint_periods']['rows'][0]['period']=1;mutations.append(('invalid exponent period',d))
    d=copy.deepcopy(data);d['endpoint_periods']['rows'][0]['initial_count']-=1;mutations.append(('omitted allowed exponent',d))
    d=copy.deepcopy(data)
    rr=next(r for r in d['endpoint_periods']['rows'] if r['steps'])
    rr['steps'][0]['prime']=9;mutations.append(('composite modulus',d))
    d=copy.deepcopy(data)
    rr=next(r for r in d['endpoint_periods']['rows'] if r['residual'])
    rr['residual']=[];mutations.append(('unproved R7 closure',d))
    d=copy.deepcopy(data);d['R7_square_factor_cubics']['rows'][0]['coefficients'][0]+=1;mutations.append(('incorrect cubic coefficient',d))
    d=copy.deepcopy(data);d['R7_square_factor_cubics']['rows'].pop();mutations.append(('missing quotient cubic',d))
    d=copy.deepcopy(data);d['first_allocations']['entries'][0]['raw_max_n']-=8;mutations.append(('unjustified finite cutoff',d))
    passed=[]
    for name,damaged in mutations:
        try:verify(damaged,False)
        except (ValueError,KeyError,IndexError,AssertionError):passed.append(name)
        else:raise ValueError('bad certificate was accepted: '+name)
    return passed


def main()->None:
    ap=argparse.ArgumentParser()
    ap.add_argument('--certificate',type=Path,required=True)
    ap.add_argument('--output',type=Path,required=True)
    ap.add_argument('--skip-mutations',action='store_true')
    args=ap.parse_args()
    raw=args.certificate.read_bytes();data=json.loads(raw)
    result=verify(data)
    result['certificate_sha256']=hashlib.sha256(raw).hexdigest()
    result['mutation_tests_rejected']=[] if args.skip_mutations else mutation_tests(data)
    result['status']='PASS_NEW_THIN9_CERTIFICATES'
    result['scope']='New finite/periodic steps only. Inherited THREE is not independently replayed.'
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':result['status'],'output':str(args.output),
                      'endpoint_classes':result['endpoints']['nonempty_classes'],
                      'exponent_cells':result['endpoints']['all_exponent_cells'],
                      'cubic_trials':result['R7_cubics']['Cauchy_integer_trials'],
                      'regression':result['algebra_and_regression'],
                      'damaged_rejections':len(result['mutation_tests_rejected'])},ensure_ascii=False))

if __name__=='__main__':main()
