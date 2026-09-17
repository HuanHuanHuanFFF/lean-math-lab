#!/usr/bin/env python3
"""Exact finite ingredients for the B699 Pro D dominant-power consumers.

Standard library only. The QIG implication is a frozen mathematical input.
This program proves no unrestricted mathematical theorem by finite sampling.
It verifies the stated polynomials, reconstructs the entire proved finite
row domain, and checks all terminal original-input witnesses.
"""
from __future__ import annotations
import argparse
import copy
import hashlib
import itertools
import json
import platform
import time
from collections import defaultdict
from fractions import Fraction
from math import comb, gcd, prod
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CAP_BITS = 397
CAP = 1 << CAP_BITS
TAIL_START_BITS = 126


def require(test: bool, message: str) -> None:
    if not test:
        raise ValueError(message)


def small(n: int, i: int) -> int:
    require(n > 0 and i in (5, 6), 'invalid small-part input')
    x = n
    for p in ((2, 3) if i == 5 else (2, 3, 5)):
        while x % p == 0:
            x //= p
    if i == 5 and x % 5 == 0 and x % 25 != 0:
        x //= 5
    return n // x


def taylor_coefficient(terms, x, y, u, v):
    return sum(c * comb(a, u) * comb(b, v) * x**(a-u) * y**(b-v)
               for a, b, c in terms if a >= u and b >= v)


def vanishing_order(terms, x, y):
    for d in range(26):
        for u in range(d + 1):
            if taylor_coefficient(terms, x, y, u, d-u):
                return d
    raise ValueError('unexpected zero polynomial')


def validate_kernel(data, tag: str):
    k = data[tag]
    t = k['terms']
    require(all(len(v) == 3 and all(type(a) is int for a in v)
                and v[0] >= 0 and v[1] >= 0 and v[2] != 0 for v in t), 'term format')
    require(len({(a,b) for a,b,c in t}) == len(t), 'duplicate monomial')
    require(max(a+b for a,b,c in t) == 25, 'degree must equal 25')
    require(min(a+b for a,b,c in t) == 1, 'origin order must equal 1')
    require(k['q4_slots'] == list(map(int, tag)), 'wrong retained source slots')
    count = 0
    for r, w, slots in ((1, 12, range(2)), (3, 6, range(4)), (4, 8, list(map(int,tag)))):
        for x in slots:
            for d in range(w):
                for u in range(d+1):
                    require(taylor_coefficient(t,x,r-x,u,d-u) == 0, 'source Taylor precision')
                    count += 1
    shifted = defaultdict(int)
    for a,b,c in t:
        for u in range(a+1):
            for v in range(b+1):
                shifted[u,v] += c * comb(a,u)*comb(b,v)*6**(a+b-u-v)
    require(shifted[0,0] > 0 and all(v >= 0 for v in shifted.values()), 'legal positivity')
    A = sum(abs(c) for a,b,c in t)
    require(A == k['l1'] and A < (1 << TAIL_START_BITS), 'full coefficient norm')
    bern = [Fraction(0)] * 26
    for a,b,c in t:
        if a+b == 25:
            bern[a] = Fraction(c, comb(25,a))
    maximum = max(bern)
    upper = (maximum.numerator + maximum.denominator-1)//maximum.denominator + 1
    expected_upper = 2497861 if tag == '124' else 6786352165420626799040001
    require(upper == expected_upper, 'Bernstein upper bound')
    require(count == 348, 'Taylor condition count')
    orders = {str(r): [vanishing_order(t,b,r-b) for b in range(r+1)] for r in (0,2,4)}
    require(orders['2'] == ([0,2,1] if tag=='124' else [0,1,1]), 'complete q2 precision')
    return dict(taylor_conditions=count,
                positive_shift_coefficients=sum(v>0 for v in shifted.values()),
                origin_order=1, source_orders=orders, l1=A,
                leading_bernstein_max=[maximum.numerator, maximum.denominator],
                polynomial_bound=upper,
                leading_bernstein_coefficients=[[v.numerator,v.denominator] for v in bern])


def check_constants(kernels):
    # Mod 1800 is complete for these small parts: all free 2/3 valuations
    # are fixed by the two H02+ classes; isolated 5 is determined mod 25.
    masks = [r for r in range(1800) if r % 72 in (18,56)]
    s5 = max(prod(small(r+1800-j,5)**w for j,w in ((1,12),(3,6),(4,8))) for r in masks)
    s6 = max(prod(small(r+1800-j,6)**w for j,w in ((1,12),(3,6),(4,8))) for r in (1280,1530))
    require(s5 == 2**8*3**6*5**12, 'i5 small-part maximum')
    require(s6 == 2**8*3**6, 'i6 tail small-part maximum')
    result = []
    for tag, i, bits, exponent in [('124',5,68,10),('234',5,129,12),
                                    ('124',6,40,9),('234',6,101,11)]:
        constant = 2*(s5 if i==5 else s6)*kernels[tag]['polynomial_bound']
        require(constant < 2**bits, 'constant binary envelope')
        require(bits*exponent < CAP_BITS*(exponent-8), 'finite-domain bridge inequality')
        result.append(dict(kernel=tag,target=i,small_part_max=s5 if i==5 else s6,
                           exact_constant=constant,constant_bits=bits,
                           slot_product_power=exponent,
                           height_numerator=bits*exponent,height_denominator=exponent-8))
    require(Fraction(1,2)+Fraction(1,4)+Fraction(1,5)==Fraction(19,20), 'rigidity harmonic identity')
    return result


def qig_gap(n: int) -> int:
    T = prod(small(n-r,5) for r in range(4))
    return (1<<20)*(n-1)**6*(n-3)**3 - T**6*(3*n*n-12*n+8)


def powers(p: int, first: int):
    out=[]; q=p**first
    while q<CAP:
        out.append(q); q*=p
    return out


def recover_rows():
    # Completeness proof is in PROOFS, not inferred from this enumeration.
    ps=powers(2,3); qs=powers(3,2)
    low={n for n in range(12,8192) if n%72 in (18,56)}
    high=set(); raw=0
    for P in ps:
        for Q in qs:
            z=(2*pow(P,-1,Q))%Q
            n0=P*z
            for n,r,s in ((n0,0,2),(P*Q+2-n0,2,0)):
                raw+=1
                if not (8192<=n<CAP):
                    continue
                require(n%P==r and n%Q==s, 'CRT reconstruction')
                if (n-r)%(2*P)==0 or (n-s)%(3*Q)==0:
                    continue
                require(n%72 in (18,56), 'H02 class reconstructed incorrectly')
                high.add(n)
    all_rows=sorted(low|high)
    residual=[n for n in all_rows if qig_gap(n)<=0]
    digest=hashlib.sha256((''.join(str(n)+'\n' for n in all_rows)).encode()).hexdigest()
    return all_rows,residual,dict(bound_bits=CAP_BITS,power_pairs=len(ps)*len(qs),
                                  raw_orientations=raw,low_rows=len(low),high_rows=len(high),
                                  all_rows=len(all_rows),qig_closed=len(all_rows)-len(residual),
                                  terminal_rows=len(residual),all_rows_sha256=digest)


def primes_verified(cert):
    require(len({v['p'] for v in cert})==len(cert), 'duplicate prime certificate')
    accepted=set()
    for v in sorted(cert,key=lambda x:x['p']):
        p=v['p']
        require(type(p) is int and p>=2, 'bad prime')
        if p==2:
            accepted.add(p);continue
        fs=v['factorization_p_minus_1']; a=v['a']
        require(len({q for q,e in fs})==len(fs), 'duplicate predecessor factor')
        require(all(q in accepted and type(e) is int and e>0 for q,e in fs), 'uncertified predecessor')
        require(prod(q**e for q,e in fs)==p-1, 'incomplete p-1 factorization')
        require(1<a<p and pow(a,p-1,p)==1, 'Fermat part of Lucas certificate')
        require(all(gcd(pow(a,(p-1)//q,p)-1,p)==1 for q,e in fs), 'full order part of Lucas certificate')
        accepted.add(p)
    return accepted


def vp_binomial(n, j, p):
    ans=0; power=p
    while power<=n:
        ans += n//power-j//power-(n-j)//power
        power *= p
    return ans


def verify_terminals(data, expected):
    primes=primes_verified(data['prime_certificates'])
    require([r['n'] for r in data['rows']]==expected, 'terminal row completeness')
    count=0; witnesses=[]
    for rec in data['rows']:
        n=rec['n']; fs=rec['row_factorizations']
        require(len(fs)==5, 'five native source rows')
        for r,fac in enumerate(fs):
            require(len({p for p,e in fac})==len(fac), 'duplicate source prime')
            require(all(p in primes and type(e) is int and e>0 for p,e in fac), 'uncertified source factor')
            require(prod(p**e for p,e in fac)==n-r, 'complete source prime powers')
        f0=dict(fs[0]); alphas=sorted(2**a*3**b*5**c
            for a in range(f0.get(2,0)+1) for b in range(f0.get(3,0)+1)
            for c in range(2 if f0.get(5,0)==1 else 1))
        require(alphas==rec['alphas'], 'all admissible alpha values')
        first=[p**e for p,e in fs[1] if p not in (2,3) and not (p==5 and e==1)]
        q1=prod(first)
        require(q1==rec['q1']==(n-1)//small(n-1,5), 'native q1')
        expected_candidates=set()
        for alpha in alphas:
            g=n//alpha
            require(gcd(g,q1)==1, 'first-row invertibility')
            residues=[0]; modulus=1
            for Q in first:
                new=[]; inv=pow(modulus,-1,Q)
                for r in residues:
                    for wanted in (0,pow(g,-1,Q)):
                        new.append(r+modulus*((wanted-r)*inv%Q))
                residues=new;modulus*=Q
            lower=5//g+1; upper=alpha//2
            for r in residues:
                first_beta=r+((lower-r+modulus-1)//modulus)*modulus
                for beta in range(first_beta,upper+1,modulus):
                    if gcd(alpha,beta)==1:
                        expected_candidates.add((alpha,beta))
        supplied={(v['alpha'],v['beta']) for v in rec['candidates']}
        require(len(supplied)==len(rec['candidates']) and supplied==expected_candidates, 'full original-target recovery')
        for v in rec['candidates']:
            alpha,beta,p=v['alpha'],v['beta'],v['p']; g=n//alpha;j=g*beta
            require(6<=j<=n//2 and gcd(n,j)==g, 'original legality and true gcd')
            require(p>=5 and p in primes, 'qualified certified witness')
            src=vp_binomial(n,5,p); dst=vp_binomial(n,j,p)
            require(src>=1 and dst>=1, 'same prime divides both original binomials')
            require(src==v['source_v'] and dst==v['target_v'], 'witness valuation record')
            witnesses.append(dict(n=n,j=j,p=p,source_v=src,target_v=dst));count+=1
    return dict(prime_certificate_nodes=len(primes),terminal_rows=len(expected),
                actual_original_pairs=count,witnesses=witnesses)


def crt_pairs(congruences):
    x=0; M=1
    for r,Q in congruences:
        require(gcd(M,Q)==1, 'CRT coprimality')
        x += M*((r-x)*pow(M,-1,Q)%Q);M*=Q
    return x,M


def example():
    base=11*13*17*19
    require(base==46189 and base<7**6, 'infinite-family exact base inequality')
    require(pow(7,3240,450)==1 and pow(base,60,450)==1, 'infinite-family period proof')
    require(pow(7,164,450)*pow(base,3,450)%450==319, 'infinite-family residue')
    e=164;s=3;Q=7**e;R=base**s;q4=Q*R;n=4+4*q4
    require(n%1800==1280 and (n-4)//small(n-4,5)==q4 and (n-4)//small(n-4,6)==q4, 'same native q4')
    require(R**10<n and n>=CAP, 'unbounded-cofactor example above frozen finite domain')
    expected=[11**s,13**s,Q,17**s,19**s]
    a,M=crt_pairs([(b,q) for b,q in enumerate(expected)])
    require(M==q4,'full example source product')
    j=a+q4
    require(7<=j<=n//2, 'example legal j')
    blocks=[gcd(q4,j-b) for b in range(5)]
    require(blocks==expected and all(x>1 for x in blocks),'all five slots occupied')
    known=[]
    for p in (7,11,13,17,19):
        if vp_binomial(n,5,p)>0 and vp_binomial(n,6,p)>0 and vp_binomial(n,j,p)>0:
            known.append(dict(p=p,source5=vp_binomial(n,5,p),source6=vp_binomial(n,6,p),target=vp_binomial(n,j,p)))
    return dict(t=0,n=n,j=j,n_bits=n.bit_length(),q4=q4,Q=Q,R=R,blocks=blocks,
                verified_source_witnesses=known,old_QIG_already_accepts=qig_gap(n)>0,
                role='nonvacuity of full-slot/unbounded-cofactor predicates, not historical set-difference evidence')


def mutation_tests(kdata,tdata,expected,ks):
    rejected=[]
    def must_reject(name,fn):
        try: fn()
        except (ValueError,KeyError,TypeError,AssertionError):
            rejected.append(name)
        else: raise ValueError('bad certificate accepted: '+name)
    bad=copy.deepcopy(kdata);bad['124']['terms'][0][2]+=1
    must_reject('alter_polynomial_coefficient',lambda:validate_kernel(bad,'124'))
    bad2=copy.deepcopy(kdata);bad2['124']['q4_slots']=[0,1,2]
    must_reject('mix_retained_slots',lambda:validate_kernel(bad2,'124'))
    neg=copy.deepcopy(kdata);neg['124']['terms']=[[a,b,-c] for a,b,c in neg['124']['terms']]
    neg['124']['l1']=kdata['124']['l1']
    must_reject('wrong_legal_sign',lambda:validate_kernel(neg,'124'))
    must_reject('unjustified_i5_power9',lambda:require(68*9<397*(9-8),'not absorbed'))
    must_reject('unjustified_i6_power8',lambda:require(40*8<397*(8-8),'not absorbed'))
    for target,bits in ((5,68),(6,40)):
        b=ks['124']['polynomial_bound'];S=2**8*3**6*(5**12 if target==5 else 1)
        must_reject('lower_constant_target'+str(target),lambda S=S,b=b,bits=bits:require(2*S*b<2**(bits-1),'constant reduced'))
    omit=copy.deepcopy(tdata);omit['rows']=omit['rows'][1:]
    must_reject('omit_terminal_row',lambda:verify_terminals(omit,expected))
    pbad=copy.deepcopy(tdata);pbad['prime_certificates'][1]['a']=1
    must_reject('bad_Lucas_witness',lambda:verify_terminals(pbad,expected))
    fsbad=copy.deepcopy(tdata);fsbad['rows'][0]['row_factorizations'][2][0][1]-=1
    must_reject('truncate_complete_prime_power',lambda:verify_terminals(fsbad,expected))
    vbad=copy.deepcopy(tdata)
    next(r for r in vbad['rows'] if r['candidates'])['candidates'][0]['p']=2
    must_reject('low_prime_target_witness',lambda:verify_terminals(vbad,expected))
    missing=copy.deepcopy(tdata)
    next(r for r in missing['rows'] if r['candidates'])['candidates'].pop()
    must_reject('omit_original_target_candidate',lambda:verify_terminals(missing,expected))
    return rejected


def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path);ap.add_argument('--rows-output',type=Path)
    args=ap.parse_args();start=time.monotonic()
    kd=json.loads((ROOT/'sources/frozen_i5_kernels.json').read_text())
    td=json.loads((ROOT/'sources/frozen_i5_terminals.json').read_text())
    kernels={k:validate_kernel(kd,k) for k in ('124','234')}
    constants=check_constants(kernels)
    rows,ends,recovery=recover_rows()
    terminals=verify_terminals(td,ends)
    ex=example()
    mut=mutation_tests(kd,td,ends,kernels)
    if args.rows_output:
        args.rows_output.parent.mkdir(parents=True,exist_ok=True)
        args.rows_output.write_text(''.join(str(n)+'\n' for n in rows))
    result=dict(status='PASS_NEW_DOMINANT_POWER_CONSUMERS_FINITE_INGREDIENTS',
                evidence_grade='author mathematical proof + exact computation; QIG adopted; not Lean or external independent review',
                kernels=kernels,constants=constants,finite_base=recovery,leading_bound_start_bits=TAIL_START_BITS,terminal_verification=terminals,
                example=ex,rejected_mutations=mut,python=platform.python_version(),elapsed_seconds=round(time.monotonic()-start,3))
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
    small_result=copy.deepcopy(result)
    for k in small_result['kernels'].values():k.pop('leading_bernstein_coefficients')
    small_result['example']={k:v for k,v in ex.items() if k in ('t','n_bits','old_QIG_already_accepts','role','verified_source_witnesses')}
    small_result['terminal_verification'].pop('witnesses')
    print(json.dumps(small_result,ensure_ascii=False,indent=2))

if __name__=='__main__':
    main()
