#!/usr/bin/env python3
"""Second-formula verifier; deliberately does not import the generator.
Source: quadratic integer ring. Local witnesses: brute B,H,h, no inversion.
Standard library only. Same-session verification, NOT external peer review.
"""
import argparse
import copy
import json
from math import isqrt
from pathlib import Path

PRIMES = (5, 7, 13)
FIELDS = ['B','H','h','P','Q','n','N','Z','S','E','F']


def require(condition, message):
    if not condition:
        raise ValueError(message)


def prime_check(n):
    return n >= 2 and all(n % d for d in range(2, isqrt(n) + 1))


def ring_orbit(m):
    # Work modulo 2m so divisions by 2 recover the correct residue modulo m.
    # U+X sqrt(3) starts at (2+sqrt(3))^1; advance by its eighth power.
    U, X = 2 % (2*m), 1
    rows, seen = [], set()
    while True:
        require(U % 2 == 0 and X % 2 == 1, 'Parity in source-ring recovery')
        pair = (((3*X-1)//2) % m, (U//2) % m)
        if pair in seen:
            require(pair == (1 % m, 1 % m), 'Unexpected source cycle')
            break
        seen.add(pair)
        rows.append(list(pair))
        U, X = ((18817*U+32592*X) % (2*m),
                (10864*U+18817*X) % (2*m))
        require(len(rows) <= m*m, 'Source orbit too long')
    return rows


def power_orbit(p):
    values = [1]
    while True:
        z = (values[-1]*2) % p
        if z == 1:
            return values
        require(z not in values, 'Power orbit not a multiplicative cycle')
        values.append(z)
        require(len(values) < p, 'Power order too long')


def brute_roots(p, a, d, y):
    """Enumerate equations in original variables, without solving by division."""
    out = []
    v, Q = (a*y) % p, (d+a*y) % p
    for B in range(p):
        if (a*B-3*(d-1)) % p:
            continue
        S = (v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*B*y) % p
        for H in range(p):
            Z = (2*d*H-Q*Q) % p
            if (Z*Z-S) % p:
                continue
            for h in range(p):
                if (h*d-4*H-Q) % p:
                    continue
                P = (Q+h*v) % p
                E = (4*v*H*H-P*Q*Q+1) % p
                if E:
                    continue
                F = (4*d*v*H*H-4*v*Q*Q*H-Q**4+d) % p
                n = (2*P*Q*H+2) % p
                N = (4*v*H**3+H+Q) % p
                if F or (2*N-n*Q) % p:
                    continue
                out.append([B,H,h,P,Q,n,N,Z,S,E,F])
    return sorted(out)


# Sparse polynomial arithmetic over Z, independent of either local formula.
# Coordinates: d,v,H,h,B,y. Arithmetic identities are checked coefficientwise.
class Poly:
    dim = 6
    def __init__(self, terms=None):
        self.terms = {m:int(c) for m,c in (terms or {}).items() if c}
    @classmethod
    def constant(cls, n):
        return cls({(0,)*cls.dim:n})
    @classmethod
    def var(cls, i):
        m=[0]*cls.dim; m[i]=1
        return cls({tuple(m):1})
    @staticmethod
    def cast(x):
        return x if isinstance(x,Poly) else Poly.constant(x)
    def __add__(self, other):
        other=self.cast(other); t=dict(self.terms)
        for m,c in other.terms.items(): t[m]=t.get(m,0)+c
        return Poly(t)
    __radd__=__add__
    def __neg__(self): return Poly({m:-c for m,c in self.terms.items()})
    def __sub__(self,other): return self + (-self.cast(other))
    def __rsub__(self,other): return self.cast(other)+(-self)
    def __mul__(self,other):
        other=self.cast(other); t={}
        for m,c in self.terms.items():
            for n,b in other.terms.items():
                z=tuple(x+y for x,y in zip(m,n))
                t[z]=t.get(z,0)+c*b
        return Poly(t)
    __rmul__=__mul__
    def __pow__(self,k):
        require(isinstance(k,int) and k>=0, 'Nonnegative polynomial exponent required')
        z=Poly.constant(1)
        for _ in range(k): z=z*self
        return z


def check_identities():
    d,v,H,h,B,y=[Poly.var(i) for i in range(6)]
    Q=d+v; P=Q+h*v; n=2*P*Q*H+2
    E=4*v*H**2-P*Q**2+1
    F=4*d*v*H**2-4*v*Q**2*H-Q**4+d
    N=4*v*H**3+H+Q
    Z=2*d*H-Q**2
    S=v**4+5*d*v**3+10*d**2*v**2+10*d**3*v+5*d**4+d**2*B*y
    checks={
        'F_minus_dE':F-d*E-v*Q**2*(d*h-4*H-Q),
        'original_n_not_dividing_Q':2*N-n*Q-2*H*E,
        'Z_square':v*Z**2-Q**5+d**2-d*F,
        'S_distribution':v*S-Q**5+d**2-d**2*(v*B*y-d**3+1),
    }
    for name,poly in checks.items():
        require(not poly.terms, f'Polynomial identity failed: {name}')
    # The exact Pell invariant of the affine map, checked separately in Z[d,y].
    dn=18817*d+32592*y+9408
    yn=10864*d+18817*y+5432
    require(not (dn**2+dn+1-3*yn**2-(d**2+d+1-3*y**2)).terms,
            'Pell invariant failure')
    require(18817**2-32592*10864 == 1, 'Source determinant')
    # Independently compute (2+sqrt(3))^8 using eight multiplications.
    u,x=1,0
    for _ in range(8): u,x=2*u+3*x,u+2*x
    require((u,x)==(18817,10864),'Eighth-power source coefficients')
    return {'coefficientwise_identities':list(checks),
            'pell_invariant':True,'source_determinant':1,
            'alpha_eighth_power':[u,x]}


def reference():
    for p in PRIMES:
        require(prime_check(p), f'Composite auxiliary modulus {p}')
    source={str(m):ring_orbit(m) for m in (5,7,9,13,3762,41382,71478)}
    cycles={str(p):power_orbit(p) for p in PRIMES}
    tables=[]
    support={}
    for p in PRIMES:
        for r in range(3):
            d,y=source[str(p)][r % len(source[str(p)])]
            require((d*d+d+1-3*y*y)%p == 0, 'Pell state failure')
            for a in range(p):
                roots=brute_roots(p,a,d,y)
                labels=[]
                for c in (1,3):
                    for s in range(12):
                        # Repeated multiplication was used to compute cycles.
                        wanted=c*cycles[str(p)][s % len(cycles[str(p)])]%p
                        if any(row[5]==wanted for row in roots): labels.append([c,s])
                tables.append({'prime':p,'q_mod_3':r,'A_mod_prime':a,
                               'source':[d,y],'roots':roots,'labels':labels})
                support[p,r,a]=labels
    fibers=[]; bad=[]; good=[]; baseline_bad=[]
    for a in range(455):
        by_q=[]
        for r in range(3):
            labs=[]
            cs=[]
            for c in (1,3):
                if all(any(z[0]==c for z in support[p,r,a%p]) for p in PRIMES):
                    cs.append(c)
                for s in range(12):
                    if all([c,s] in support[p,r,a%p] for p in PRIMES):
                        labs.append([c,s])
            by_q.append({'q_mod_3':r,'labels':labs,
                         'independent_exponents_common_c':cs})
        actual=any(x['labels'] for x in by_q)
        weak=any(x['independent_exponents_common_c'] for x in by_q)
        (good if actual else bad).append(a)
        if not weak: baseline_bad.append(a)
        fibers.append({'A_mod_455':a,'by_q':by_q,'survives':actual,
                       'survives_independent_exponents_baseline':weak})
    sync=[a for a in bad if a not in baseline_bad]
    counts={'A_residues':455,'excluded_A_residues':len(bad),'retained_A_residues':len(good),
        'independent_exponents_baseline_excluded':len(baseline_bad),
        'independent_exponents_baseline_retained':455-len(baseline_bad),
        'additional_synchronized_projection_exclusions':len(sync),
        'excluded_qA_cells':[sum(not f['by_q'][r]['labels'] for f in fibers) for r in range(3)],
        'local_tables':len(tables),'local_root_witnesses':sum(len(t['roots']) for t in tables),
        'root_witnesses_with_P_zero':sum(row[3]==0 for t in tables for row in t['roots']),
        'root_witnesses_with_Q_zero':sum(row[4]==0 for t in tables for row in t['roots']),
        'root_witnesses_with_S_zero':sum(row[8]==0 for t in tables for row in t['roots'])}
    require(366 in sync,'Named class should require synchronization, not single-prime rejection')
    require(11286%455==366 and 11286%910==366,'A11286 mapping')
    require(counts['excluded_A_residues']==290 and counts['retained_A_residues']==165,
            'Expected projection classification changed')
    return {'schema':'B699-D04-SYNC455-v1','primes':list(PRIMES),'witness_fields':FIELDS,
            'source_periods':source,'power_cycles':cycles,'local_tables':tables,'fibers':fibers,
            'excluded_A_residues':bad,'retained_A_residues':good,
            'baseline_excluded_A_residues':baseline_bad,'sync_only_A_residues':sync,'counts':counts}


def validate(candidate, expected):
    require(isinstance(candidate,dict), 'Certificate is not an object')
    require(candidate.keys()==expected.keys(),'Certificate fields mismatch')
    for key in expected:
        require(candidate[key]==expected[key],f'Certificate mismatch: {key}')


def negative_tests(expected):
    cases=[]
    c=copy.deepcopy(expected); c['source_periods']['13'][1][1]=1
    cases.append(('wrong_source_y',c))
    for field,index in [('P',3),('Q',4),('S',8)]:
        c=copy.deepcopy(expected)
        for table in c['local_tables']:
            pos=next((i for i,r in enumerate(table['roots']) if r[index]==0),None)
            if pos is not None:
                table['roots'].pop(pos);break
        else: raise ValueError('No zero witness for negative test')
        cases.append((f'illegally_drop_{field}_zero',c))
    c=copy.deepcopy(expected)
    c['fibers'][366]['by_q'][0]['labels']=[[1,9]]
    c['fibers'][366]['survives']=True
    cases.append(('decouple_s_and_keep_A366',c))
    c=copy.deepcopy(expected)
    target=next(t for t in c['local_tables'] if t['prime']==13 and t['q_mod_3']==1 and t['A_mod_prime']==2)
    require(not target['roots'] and not target['labels'],'Expected empty mod13 S-nonsquare table')
    target['labels']=[[1,0]]
    cases.append(('insert_impossible_c_s_label',c))
    c=copy.deepcopy(expected); c['counts']['excluded_A_residues']+=1
    cases.append(('inflate_projection_count',c))
    c=copy.deepcopy(expected)
    # A=0, B != 0 is necessary; prohibit setting the quotient arbitrarily to zero.
    done=False
    for table in c['local_tables']:
        if table['A_mod_prime']==0:
            j=next((i for i,row in enumerate(table['roots']) if row[0]!=0),None)
            if j is not None:
                table['roots'].pop(j);done=True;break
    require(done,'No nonunit allocation negative-test witness')
    cases.append(('wrong_A0_allocation',c))
    results=[]
    for name,candidate in cases:
        try:
            validate(candidate,expected)
        except ValueError:
            results.append({'test':name,'rejected':True})
        else:
            raise ValueError(f'Invalid certificate accepted: {name}')
    return results


def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--certificate',type=Path,required=True)
    ap.add_argument('--output',type=Path)
    ap.add_argument('--negative-tests',action='store_true')
    args=ap.parse_args()
    identities=check_identities()
    expected=reference()
    validate(json.loads(args.certificate.read_text(encoding='utf-8')),expected)
    result={'status':'PASS','verification_kind':'same-session second formula, not external review',
            'source_method':'quadratic integer ring modulo twice the modulus',
            'local_method':'brute B,H,h; no modular divisions',
            'counts':expected['counts'],'identities':identities,
            'A11286_in_excluded_class':True,
            'negative_tests':negative_tests(expected) if args.negative_tests else []}
    text=json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n'
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_text(text,encoding='utf-8')
    print(text,end='')

if __name__=='__main__': main()
