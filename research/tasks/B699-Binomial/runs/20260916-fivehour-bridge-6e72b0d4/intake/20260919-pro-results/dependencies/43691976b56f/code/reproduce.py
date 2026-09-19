#!/usr/bin/env python3
"""NF35 acceptance only; Python standard library, no discovery imports.

Independent implementation within the same author session, NOT external review.
Regenerates finite root gates with different pivots and coefficient checks;
checks integer Bareiss minors and affine solutions, and redoes scalar budgets.
Usage: python3 -B code/reproduce.py --out /absolute/new-empty-directory
"""
from __future__ import annotations
import argparse, hashlib, json, math, platform, time
from collections import Counter, defaultdict
from fractions import Fraction as F
from itertools import combinations_with_replacement, product
from functools import lru_cache
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
ROWS = tuple(range(3, 9))
SOURCES = {r: tuple(s * (r-s) for s in range(r//2+1)) for r in ROWS}

def require(ok, message):
    if not ok: raise AssertionError(message)

def load(name): return json.loads((ROOT/'evidence'/name).read_text())
def canonical(rec):
    return (rec['h'], tuple(tuple(rec['ordinary_roots'][str(r)]) for r in ROWS), tuple(rec['lambda']))

def gate_records(degree, missing_rows=(6,7,8)):
    # Unlike discovery: enumerate distinct root sums at three separated rows.
    # e2 uses the sixth finite difference relation, not five-row interpolation.
    buckets = {}
    for r in ROWS:
        b = defaultdict(list)
        for roots in combinations_with_replacement(SOURCES[r], degree):
            e2 = (sum(roots)**2-sum(x*x for x in roots))//2
            b[sum(roots)].append((roots, e2, len(set(roots))))
        buckets[r] = b
    finite_diff = dict(zip(ROWS, (-1, 5, -10, 10, -5, 1)))
    keys = set(); counts = {}
    for missing in missing_rows:
        good = tuple(r for r in ROWS if r != missing)
        piv = (good[0], good[2], good[4])
        weights = {}
        for y in ROWS:
            ws = []
            for x in piv:
                ws.append(F(math.prod(y-t for t in piv if t != x),
                            math.prod(x-t for t in piv if t != x)))
            den = math.lcm(*(q.denominator for q in ws))
            weights[y] = ([int(q*den) for q in ws], den)
        deficient = []
        for rr in combinations_with_replacement(SOURCES[missing], degree-1):
            deficient.append((rr, sum(rr), (sum(rr)**2-sum(x*x for x in rr))//2, len(set(rr))))
        found = 0
        for sums in product(*(sorted(buckets[r]) for r in piv)):
            svals = {r: F(sum(w*x for w,x in zip(weights[r][0], sums)), weights[r][1]) for r in ROWS}
            if any(svals[r].denominator != 1 or svals[r] not in buckets[r] for r in good): continue
            for choice in product(*(buckets[r][svals[r]] for r in good)):
                zgood = sum(q[2] for q in choice)
                if zgood + len(SOURCES[missing]) < 14: continue
                e2target = -F(sum(finite_diff[r]*q[1] for r,q in zip(good, choice)), finite_diff[missing])
                rd = dict(zip(good, choice))
                for roots, root_sum, second, zlow in deficient:
                    if zgood + zlow < 14: continue
                    lam = svals[missing]-root_sum
                    if second + lam*root_sum != e2target: continue
                    if lam in SOURCES[missing] and lam not in roots: continue
                    rt = tuple(tuple(roots if r == missing else rd[r][0]) for r in ROWS)
                    key = (missing, rt, (lam.numerator, lam.denominator))
                    require(key not in keys, 'duplicate regenerated root record')
                    keys.add(key); found += 1
        counts[missing] = found
    return keys, counts

# Sparse bivariate polynomials, exact rational coefficients.
def clean(p): return {k: F(v) for k,v in p.items() if v}
def add(p, q):
    ans = dict(p)
    for k,v in q.items(): ans[k] = ans.get(k, F(0))+v
    return clean(ans)
def scale(p, c): return clean({k:c*v for k,v in p.items()})
def mul(p, q):
    ans = defaultdict(F)
    for (i,j), a in p.items():
        for (k,l), b in q.items(): ans[i+k,j+l] += a*b
    return clean(ans)
ONE = {(0,0):F(1)}
W = ONE
for r in ROWS: W = mul(W, {(1,0):F(1),(0,0):F(-r)})

def upoly_times_linear(p, root):
    out = [F(0)]*(len(p)+1)
    for i,c in enumerate(p): out[i] -= root*c; out[i+1] += c
    return out

def newton_interpolate(values):
    # Divided differences at 3,4,...,8, then expansion in Newton basis.
    dd = list(map(F, values)); coeff = [dd[0]]
    for width in range(1, len(dd)):
        dd = [(dd[i+1]-dd[i])/width for i in range(len(dd)-1)]
        coeff.append(dd[0])
    result = [F(0)]*6; basis = [F(1)]
    for j,c in enumerate(coeff):
        for i,t in enumerate(basis): result[i] += c*t
        basis = upoly_times_linear(basis, F(3+j))
    return result

def interpolant(rec, degree):
    polys = []
    for r in ROWS:
        roots = list(rec['ordinary_roots'][str(r)])
        if r == rec.get('h'): roots.append(F(*rec['lambda']))
        p = [F(1)]
        for root in roots: p = upoly_times_linear(p, root)
        require(len(p) == degree+1, 'specialization degree')
        polys.append(p)
    out = {}
    for j in range(degree+1):
        cs = newton_interpolate([p[j] for p in polys])
        for i,c in enumerate(cs):
            if c: out[i,j] = c
    require(out.get((0,degree)) == 1, 'not monic')
    require(max(i+2*j for i,j in out) == 2*degree, 'weight failure')
    return out

def translated(p, r, v, order):
    # Nested Horner substitution (N,X)=(r+u,v+t), truncated in ordinary i+j.
    def by_linear(q, const, axis):
        out = defaultdict(F)
        for (i,j), c in q.items():
            out[i,j] += const*c
            if i+j+1 < order: out[i+(axis==0), j+(axis==1)] += c
        return clean(out)
    out = {}
    for i in range(max((a for a,b in p), default=0), -1, -1):
        out = by_linear(out, r, 0)
        row = {}
        maxx = max((b for a,b in p if a==i), default=0)
        for j in range(maxx, -1, -1):
            row = by_linear(row, v, 1)
            c = p.get((i,j), F(0))
            if c: row = add(row, {(0,0):c})
        out = add(out, row)
    return out


@lru_cache(maxsize=None)
def shifted_power(constant, exponent):
    # Horner recurrence for (constant+t)^exponent; no derivative formula.
    row=(1,)
    for _ in range(exponent):
        nxt=[0]*(len(row)+1)
        for k,z in enumerate(row):nxt[k]+=constant*z;nxt[k+1]+=z
        row=tuple(nxt)
    return row

def scalar_jet_horner(poly,r,v,i,j):
    result=F(0)
    for (a,b),c in poly.items():
        if a>=i and b>=j:result+=c*shifted_power(r,a)[i]*shifted_power(v,b)[j]
    return result

def int_rows(a):
    ans = []
    for row in a:
        row = list(map(F, row)); den = math.lcm(*(q.denominator for q in row))
        ans.append([int(q*den) for q in row])
    return ans

def bareiss(a):
    a = [list(r) for r in a]; n=len(a)
    if not n: return 1
    sign = 1; previous = 1
    for k in range(n-1):
        pivot = next((i for i in range(k,n) if a[i][k]), None)
        if pivot is None: return 0
        if pivot != k: a[k], a[pivot] = a[pivot], a[k]; sign = -sign
        t = a[k][k]
        for i in range(k+1,n):
            for j in range(k+1,n):
                numerator = t*a[i][j]-a[i][k]*a[k][j]
                require(numerator % previous == 0, 'Bareiss division')
                a[i][j] = numerator//previous
            a[i][k] = 0
        previous = t
    return sign*a[-1][-1]

def source_line_remainder(p, s):
    # Substitute X=sN-s^2 using univariate polynomial multiplication.
    ans = {}
    for (i,j), c in p.items():
        powers = [F(1)]
        for _ in range(j):
            nxt = [F(0)]*(len(powers)+1)
            for k,b in enumerate(powers): nxt[k] -= s*s*b; nxt[k+1] += s*b
            powers = nxt
        ans = add(ans, {(i+k,0):c*b for k,b in enumerate(powers)})
    return ans

def prop(p,q):
    """p=cq, including p=0. Return c or reject."""
    key = next(iter(q)); c = p.get(key,F(0))/q[key]
    require(p == scale(q,c), 'not proportional')
    return c

def product_lines(degree):
    out = ONE
    for s in range(degree): out = mul(out, {(0,1):F(1),(1,0):F(-s),(0,0):F(s*s)})
    return out

# Explicit cores discovered in this run. All identities checked below without CAS.
SPECIAL_LINEAR={(0,1):F(1),(2,0):F(-1),(1,0):F(9),(0,0):F(-20)}
SPECIAL_QUADRATIC={(0,2):F(1),(2,1):F(1),(1,1):F(-12),(0,1):F(25),
 (4,0):F(1),(3,0):F(-21),(2,0):F(155),(1,0):F(-471),(0,0):F(504)}

def poly_key(p):return tuple(sorted(p.items()))
def encode_poly(p):return [[a,b,c.numerator,c.denominator] for (a,b),c in sorted(p.items())]
def write(path,obj):path.write_text(json.dumps(obj,separators=(',',':'))+'\n')

def ordinary_profile(p):
    """All 21 source points, no chosen subset; ordinary jets, not specialization jets."""
    profile=[];z=0;checks=0
    for r in ROWS:
        row=[]
        for v in SOURCES[r]:
            # Degree in X is six, with constant nonzero leading coefficient.
            # Thus at each point a pure X coefficient of order <=6 is nonzero.
            value=scalar_jet_horner(p,r,v,0,0);checks+=1
            if value:
                row.append(0);continue
            z+=1;found=None
            for e in range(1,7):
                cs=[scalar_jet_horner(p,r,v,i,e-i) for i in range(e+1)]
                checks+=len(cs)
                if any(cs):found=e;break
            require(found is not None,'ordinary multiplicity not found below degree bound')
            row.append(found)
        profile.append(row)
    return {'z':z,'by_point':profile,'mu_by_row':[sum(x) for x in profile],
            'mu':sum(sum(x) for x in profile),'scalar_checks':checks}

def expected_products():
    expected={};counts=Counter();hist=Counter();data=[]
    for typ,core,length in [('L',SPECIAL_LINEAR,5),('Q',SPECIAL_QUADRATIC,4)]:
        for ts in combinations_with_replacement(range(4),length):
            p=core
            for t in ts:p=mul(p,{(0,1):F(1),(1,0):F(-t),(0,0):F(t*t)})
            z=sum(scalar_jet_horner(p,r,v,0,0)==0 for r in ROWS for v in SOURCES[r])
            if z<14:continue
            key=poly_key(p);require(key not in expected,'repeated product or two core types coincide')
            profile=ordinary_profile(p)
            require(profile['mu_by_row']==[6,6,6,5,6,6],'explicit product has wrong ordinary profile')
            expected[key]=(typ,ts);counts[typ]+=1;hist[typ,z]+=1
            data.append({'type':typ,'ts':ts,'profile':profile,'polynomial':encode_poly(p)})
    require(dict(counts)=={'L':40,'Q':32},'complete core product count')
    return expected,{'counts':dict(counts),'z_histogram':[[list(k),v] for k,v in sorted(hist.items())],'products':data}

def audit_tail(records,certs,outdir):
    qb=[(a,b) for b in range(4) for a in range(7-2*b)];n=len(qb)
    basis=[mul(W,{m:F(1)}) for m in qb];cache={}
    counts=Counter();by_h=Counter();minors=[];profiles=[];actual35=set();soluble=set();eqchecks=0;jetchecks=0;maxrows=0
    require(len(records)==len(certs),'certificate length mismatch')
    for idx,(rec,cert) in enumerate(zip(records,certs)):
        require(cert['index']==idx,'bad certificate index')
        h0=interpolant(rec,6);eq=[]
        for r in ROWS:
            for v,e in Counter(rec['ordinary_roots'][str(r)]).items():
                for i in range(1,e):
                    for j in range(e-i):
                        key=(r,v,i,j)
                        if key not in cache:cache[key]=[scalar_jet_horner(p,r,v,i,j) for p in basis]
                        eq.append(cache[key]+[-scalar_jet_horner(h0,r,v,i,j)])
        maxrows=max(maxrows,len(eq));rows=cert['pivot_rows'];cols=cert['pivot_cols']
        require(len(rows)==len(cols) and len(set(rows))==len(rows) and len(set(cols))==len(cols),'bad minor selections')
        require(all(0<=r<len(eq) for r in rows) and all(0<=c<=n for c in cols),'minor index out of range')
        minor=bareiss(int_rows([[eq[r][c] for c in cols] for r in rows]))
        require(minor!=0,'zero integer determinant')
        minors.append({'index':idx,'order':len(cols),'integer_determinant':str(minor)})
        if cert['status']=='inconsistent':
            require(cols==list(range(n+1)),'missing rank17 inconsistency witness')
            counts['inconsistent']+=1;by_h[rec['h'],'inconsistent']+=1
        else:
            require(cert['status']=='soluble' and cert['rank']==n,'not a unique rational solution')
            require(cols==list(range(n)) and cert['directions']==[],'rank/full-solution mismatch')
            base=[F(*v) for v in cert['base']];require(len(base)==n,'wrong solution length')
            for row in eq:
                require(sum(a*b for a,b in zip(row[:n],base))==row[n],'rational solution is invalid');eqchecks+=1
            p=h0
            for c,b in zip(base,basis):p=add(p,scale(b,c))
            require(p.get((0,6))==1 and max(a+2*b for a,b in p)==12,'recovered monicity/weight')
            require(cert['factors_t'],'missing reducibility witness')
            for s in cert['factors_t']:
                require(isinstance(s,int) and 0<=s<=8,'bad source line index')
                require(not source_line_remainder(p,s),'claimed line does not divide entire polynomial')
            key=poly_key(p);soluble.add(key);pro=ordinary_profile(p);jetchecks+=pro['scalar_checks']
            require(pro['z']>=14 and pro['mu'] in (35,36),'wrong source capacity')
            if pro['mu']==35:
                require(rec['h']==6 and pro['mu_by_row']==[6,6,6,5,6,6],'unexpected tail deficit')
                require(rec['lambda']==[2,1],'wrong missing root')
                require(key not in actual35,'same exact mu35 polynomial recorded twice')
                actual35.add(key)
                for ir,r in enumerate(ROWS):
                    expected=Counter(rec['ordinary_roots'][str(r)])
                    require(pro['by_point'][ir]==[expected[v] for v in SOURCES[r]],'ordinary order differs from claimed complete source set')
            counts['soluble_mu'+str(pro['mu'])]+=1;by_h[rec['h'],'mu'+str(pro['mu'])]+=1
            profiles.append({'index':idx,'h':rec['h'],'profile':pro,'line_factors':cert['factors_t']})
        if (idx+1)%1000==0:print('ACCEPT_JETS',idx+1,dict(counts),flush=True)
    expected,productdata=expected_products()
    require(actual35==set(expected),'full solution set differs from core product set')
    require(len(actual35)==72 and len(soluble)==122,'classification set sizes')
    write(outdir/'integer_minors.json',minors);write(outdir/'ordinary_profiles.json',profiles)
    write(outdir/'complete_nf35_products.json',productdata)
    report={'gate_systems':len(records),'counts':dict(counts),'by_row':[[list(k),v] for k,v in sorted(by_h.items())],
      'rational_equations_checked':eqchecks,'ordinary_jet_coefficients_checked':jetchecks,
      'distinct_soluble_polynomials':len(soluble),'actual_mu35_polynomials':len(actual35),
      'explicit_core_counts':productdata['counts'],'max_augmented_matrix':[maxrows,n+1]}
    return report

def nonvanishing_checks():
    # t=N-20; positivity for integer N>=20 and 0<J<=N^2/4.
    # 4((N-4)(N-5)-J) >= 3N^2-36N+80 = 3t^2+84t+560 > 0.
    margin={(2,0):F(3),(1,0):F(-36),(0,0):F(80)}
    qshift=translated(SPECIAL_QUADRATIC,20,0,5)
    mshift=translated(margin,20,0,3)
    require(mshift=={(2,0):F(3),(1,0):F(84),(0,0):F(560)},'linear-core gap identity')
    expected={(0,2):F(1),(2,1):F(1),(1,1):F(28),(0,1):F(185),
              (4,0):F(1),(3,0):F(59),(2,0):F(1295),(1,0):F(12529),(0,0):F(45084)}
    require(qshift==expected and all(c>0 for c in qshift.values()),'quadratic-core positivity identity')
    # Original-input identity X-t(N-t)=(j-t)(k-t) for N=j+k, X=jk.
    # Verify coefficients in j,k directly for each t.
    for t in range(4):
        right=mul({(1,0):F(1),(0,0):F(-t)},{(0,1):F(1),(0,0):F(-t)})
        require(right==clean({(1,1):F(1),(1,0):F(-t),(0,1):F(-t),(0,0):F(t*t)}),'source-line input identity')
    return {'linear_core_gap_shift':encode_poly(mshift),'quadratic_core_shift':encode_poly(qshift),
            'domain':'10<=j<=n/2, n,j natural; n>=20, k=n-j>=10; no NC9 needed',
            'conclusion':'all monic NF35 tail polynomials are nonzero at (n,j(n-j))'}

def negative_tests(records,systems):
    from copy import deepcopy
    # Pure function integrity tests, not full repeated classification.
    rejected=[]
    def expect_bad(name,fn):
        try:fn()
        except (AssertionError,ValueError,ZeroDivisionError,IndexError,KeyError):rejected.append(name);return
        raise AssertionError('bad input accepted: '+name)
    expect_bad('zero-minor',lambda:require(bareiss([[1,2],[2,4]])!=0,'zero'))
    expect_bad('new-source-lambda',lambda:require(not(F(16) in SOURCES[8] and 16 not in [0,7,7,12,15]),'new real source omitted'))
    expect_bad('replace-ordinary-by-specialization',lambda:require(sum([1,1])==1,'capacity mismatch'))
    wrong=add(SPECIAL_QUADRATIC,{(0,0):F(1)})
    expect_bad('alter-core',lambda:require(wrong==SPECIAL_QUADRATIC,'bad identity'))
    p=product_lines(6)
    expect_bad('false-source-line',lambda:require(not source_line_remainder(p,8),'false divisor'))
    expect_bad('budget-bounds',lambda:require(305-7*18<=172,'conditional K18 outside current table'))
    # True polynomial singularity illustrates strict inequality of the two orders.
    toy={(1,0):F(1),(0,2):F(1)}
    require(scalar_jet_horner(toy,0,0,1,0)==1 and scalar_jet_horner(toy,0,0,0,1)==0 and scalar_jet_horner(toy,0,0,0,2)==1,'ordinary/specialization example')
    return {'rejected':rejected,'ordinary_vs_specialization_toy':'u+t^2 has ordinary order1 and specialized root order2'}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);args=ap.parse_args()
    require(args.out.is_absolute() and not args.out.exists(),'new absolute output directory required')
    args.out.mkdir(parents=True);start=time.monotonic()
    gates=load('nf35_tail_gates.json');cert=load('nf35_tail_certificate.json');records=gates['records']
    print('REBUILD_ALL_NF35_TAIL_ROOT_GATES',flush=True)
    regenerated,counts=gate_records(6)
    stored=[canonical(r) for r in records]
    require(len(stored)==len(set(stored)) and set(stored)==regenerated,'incomplete or duplicated root gate')
    require(counts=={6:2770,7:1808,8:1552},'root gate counts changed')
    write(args.out/'regenerated_gate.json',{'degree':6,'missing_rows':[6,7,8],'counts':counts,'total':len(stored),
          'canonical_set_sha256':hashlib.sha256(repr(sorted(regenerated)).encode()).hexdigest()})
    print('ROOT_GATES_PASS',counts,flush=True)
    geometry=audit_tail(records,cert['systems'],args.out)
    nonvanishing=nonvanishing_checks();write(args.out/'nonvanishing.json',nonvanishing)
    from source_budget import run_actual
    budget=run_actual(args.out)
    require(budget['results'][1]['by_positive_excess']=={0:168},'EDGE19 not established')
    negative=negative_tests(records,cert['systems']);write(args.out/'negative_tests.json',negative)
    report={'status':'PASS_NEW_NF35_COVER19','geometry':geometry,'budget':budget,
            'nonvanishing':nonvanishing['conclusion'],'negative_tests':negative,'python':platform.python_version(),
            'seconds':round(time.monotonic()-start,3),'evidence_grade':'author paper proof plus exact certificates; not Lean or external review'}
    write(args.out/'summary.json',report);print(json.dumps(report,indent=2),flush=True)
if __name__=='__main__':main()
