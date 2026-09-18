#!/usr/bin/env python3
"""Acceptance of NEW evidence only; Python standard library, no discovery imports.

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

def gate_records(degree):
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
    for missing in ROWS:
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

Q5 = {(4,0):1,(3,0):-10,(2,0):35,(1,0):-50,(0,0):24,
      (2,1):-3,(1,1):20,(0,1):-35,(0,2):1}
Q4_BY_H = {3:{(2,0):-1,(1,0):6,(0,1):1,(0,0):-11},
           4:{(2,0):1,(1,0):-8,(0,0):15},
           5:{(2,0):1,(1,0):-7,(0,0):12}}

def audit_systems(degree, records, systems, factor_lookup, outdir):
    nq = 2*degree-6
    qb = [(i,j) for j in range(nq//2+1) for i in range(nq-2*j+1)]
    basis = [mul(W,{m:F(1)}) for m in qb]; n=len(basis)
    cache = {}; counts = Counter(); minors=[]; exceptions=[]; isolated_polynomials=set()
    for idx,(rec, cert) in enumerate(zip(records,systems)):
        require(cert['index']==idx, 'record order')
        h0=interpolant(rec,degree); labels=[]; eq=[]
        if degree>=6 and idx and idx%400==0:print('CHECK_JETS',degree,idx,flush=True)
        for r in ROWS:
            for v,e in Counter(rec['ordinary_roots'][str(r)]).items():
                if e<2: continue
                # Scalar jets use cached univariate Horner translations.
                for i in range(1,e):
                    for j in range(e-i):
                        key=(r,v,i,j)
                        if key not in cache:
                            cache[key]=[scalar_jet_horner(b,r,v,i,j) for b in basis]
                        labels.append(list(key)); eq.append(cache[key]+[-scalar_jet_horner(h0,r,v,i,j)])
        require(labels==cert['rows'], 'ordinary jet labels differ')
        rows=cert['pivot_rows']; cols=cert['modular_pivot_columns']
        require(len(rows)==len(cols) and len(set(rows))==len(rows), 'pivot shape')
        minor=bareiss(int_rows([[eq[r][c] for c in cols] for r in rows]))
        require(minor!=0, 'zero exact rank witness')
        minors.append({'index':idx,'order':len(cols),'integer_determinant':str(minor)})
        if cert['status'].startswith('inconsistent'):
            require(len(cols)==n+1 and cols==list(range(n+1)), 'inconsistency proof')
            counts['inconsistent']+=1; continue
        require(cert['status']=='soluble', 'unsupported record')
        rank=cert['rank']; base=list(F(*c) for c in cert['base'])
        dirs=[list(F(*c) for c in d) for d in cert['directions']]
        require(len(cols)==rank and all(c<n for c in cols), 'coefficient rank proof')
        require(len(dirs)==n-rank and len(dirs)<=1, 'nullspace dimension')
        for row in eq:
            require(sum(a*b for a,b in zip(row[:n],base))==row[n], 'affine solution')
            for d in dirs: require(sum(a*b for a,b in zip(row[:n],d))==0, 'nullspace vector')
        if dirs: require(any(dirs[0]), 'zero kernel direction')
        actual=h0
        for c,b in zip(base,basis): actual=add(actual,scale(b,c))
        directions=[]
        for d in dirs:
            pp={}
            for c,b in zip(d,basis): pp=add(pp,scale(b,c))
            directions.append(pp)
        factors=factor_lookup.get(idx,cert.get('factors_t',[]))
        if factors:
            s=factors[0]
            require(not source_line_remainder(actual,s), 'claimed common divisor')
            require(all(not source_line_remainder(q,s) for q in directions), 'pencil divisor')
            counts['factor_line' if dirs else 'factor_isolated']+=1
            if not dirs: isolated_polynomials.add(tuple(sorted(actual.items())))
        else:
            require(len(directions)==1, 'unexpected nonfactored dimension')
            h=rec['h']; require(h==3 if degree==5 else h in (3,4,5), 'bad exceptional row')
            standard=product_lines(degree)
            direction=mul(W,clean(Q5 if degree==5 else Q4_BY_H[h]))
            a=prop(add(actual,scale(standard,-1)),direction)
            b=prop(directions[0],direction); require(b!=0, 'zero canonical pencil parameter')
            exceptions.append({'index':idx,'missing_row':h,'shift':[a.numerator,a.denominator],
                               'scale':[b.numerator,b.denominator]})
            counts['exceptional_pencil']+=1
    if degree in (6,7):
        expected=set(); multisets=[]
        for ts in combinations_with_replacement(range(4),degree):
            pp=ONE
            for t in ts: pp=mul(pp,{(0,1):F(1),(1,0):F(-t),(0,0):F(t*t)})
            z=sum(not translated(pp,r,v,1).get((0,0),0) for r in ROWS for v in SOURCES[r])
            if z>=14: expected.add(tuple(sorted(pp.items()))); multisets.append(ts)
        require(expected==isolated_polynomials,'saturated product classification')
        require(len(expected)==(50 if degree==6 else 80),'saturated product count')
        (outdir/f'degree{degree}_products.json').write_text(json.dumps(multisets))
    (outdir/f'degree{degree}_integer_minors.json').write_text(json.dumps(minors,separators=(',',':')))
    return {'counts':dict(counts),'exceptions':exceptions,'max_matrix_columns':n+1}

def audit_pencils():
    ans=[]
    for degree,h in [(5,3),(4,3),(4,4),(4,5)]:
        base=product_lines(degree); direction=mul(W,clean(Q5 if degree==5 else Q4_BY_H[h]))
        mu=[];z=0; low_nonzero=[]
        for r in ROWS:
            total=0
            for v in SOURCES[r]:
                # At a source, two Taylor polynomials give an affine jet.
                a=translated(base,r,v,degree+1); b=translated(direction,r,v,degree+1)
                if a.get((0,0),0):
                    require(not b.get((0,0),0), 'W not zero on source row'); continue
                z+=1
                amin=min(i+j for (i,j),c in a.items() if c)
                bmin=min((i+j for (i,j),c in b.items() if c),default=degree+1)
                e=min(amin,bmin)
                # If the first order comes from base only, a pure-X coefficient
                # witnesses it for every parameter. Otherwise it is t times a
                # nonzero coefficient, so t != 0 is sufficient.
                pure=a.get((0,e),0)
                if pure:
                    require(b.get((0,e),0)==0, 'pure-X order witness')
                else:
                    require(amin>e and bmin==e, 'possible exceptional cancellation')
                    low_nonzero.append([r,v,e])
                total+=e
            mu.append(total)
        require(z>=14 and sum(mu)==6*degree-1, 'pencil source multiplicity')
        require([degree-q for q in mu]==[int(r==h) for r in ROWS], 'wrong defect location')
        ans.append({'degree':degree,'h':h,'z':z,'mu_by_row':mu,'parameter_nonzero_witnesses':low_nonzero})
    return ans

# Independent scalar min-plus recursion (arrays, no discovery imports).
def source_data():
    row_weight={3:137,4:110,5:91,6:78,7:68,8:61}
    prefactor={0:27,1:24,2:19,3:13}
    vertical={3:20,4:16,5:13,6:11,7:10,8:9}
    table={}
    for r in ROWS:
        off=[];middle=None
        for s in range(r//2+1):
            m=row_weight[r]-prefactor.get(s,0)-prefactor.get(r-s,0)-vertical[r]
            if 2*s==r: middle=m
            else: off.append(m)
        table[r]=(off,middle)
    def ell(r,v):
        off,mid=table[r]
        return sum(max(m-v,0) for m in off)+(max(mid-v+1,0)//2 if mid is not None else 0)
    return table,ell

def budget(vmax=88):
    table,ell=source_data(); results=[];weights=(2,2,2,1,1,1)
    for V in range(vmax+1):
        d=(305-V)//2; inf=10**9; dp=[inf]*(V+1); dp[0]=0
        for r,w in zip(ROWS,weights):
            nxt=[inf]*(V+1)
            for used in range(V+1):
                for v in range(used+1):
                    L=ell(r,v)
                    if L<=d: nxt[used]=min(nxt[used],dp[used-v]+w*L)
            dp=nxt
        cap=None if dp[V]>=inf else 9*d-dp[V]
        results.append({'V':V,'dmax':d,'capacity':cap})
    original=load('weighted_source_budget.json')
    require([(q['V'],q['dmax'],q['capacity']) for q in results] ==
            [(q['V'],q['dmax'],q['capacity']) for q in original['bounds']], 'scalar DP disagreement')
    opt=[]
    # A second combinatorial order: first the expensive-degree>=12 count,
    # then the two cheap types. Verify all K=32 count tuples exactly.
    for K in (32,31):
        best=10**12; arg=None; tuples=0; feasible=0
        for high in range(K+1):
            for cheap5 in range(K-high+1):
                for cheap4 in range(K-high-cheap5+1):
                    a=K-high-cheap5-cheap4; b=cheap4;c=cheap5
                    tuples+=1; weight=7*a+8*b+10*c+12*high
                    if weight>305: continue
                    cost=84990*a+49988*b+24985*c
                    for V in range(min(vmax,305-weight)+1):
                        cap=results[V]['capacity']
                        if cap is None or 2*(b+c)>cap: continue
                        feasible+=1
                        if cost<best:
                            best=cost;arg={'a':a,'b':b,'c':c,'d':high,'weight':weight,'V':V,'capacity':cap}
        require(tuples==math.comb(K+3,3), 'count tuple completeness')
        expected=1259803 if K==32 else 1029836
        require(best==expected, 'budget optimum differs')
        opt.append({'K':K,'tuples':tuples,'feasible_relaxed_records':feasible,'minimum_cost':best,'one_minimizer':arg})
    require(opt[0]['minimum_cost']>1242709, 'not enough for31')
    return {'ordinary_source_lower_at_v0':[ell(r,0) for r in ROWS],
            'source_table':{str(r):{'offdiag':x[0],'middle_weighted':x[1]} for r,x in table.items()},
            'bounds':results,'optimization':opt}

# Finite-field certificate for an auxiliary irreducible near-saturated quintic.
def trim(p):
    p=list(p)
    while p and p[-1]==0:p.pop()
    return p

def rem(a,b,p):
    a=trim([x%p for x in a]);b=trim([x%p for x in b]);require(b,'zero finite-field divisor')
    inv=pow(b[-1],-1,p)
    while len(a)>=len(b):
        shift=len(a)-len(b);c=a[-1]*inv%p
        for j,x in enumerate(b):a[shift+j]=(a[shift+j]-c*x)%p
        a=trim(a)
    return a

def ffmul(a,b,f,p):
    c=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):c[i+j]=(c[i+j]+x*y)%p
    return rem(c,f,p)

def power(a,n,f,p):
    out=[1]
    while n:
        if n&1:out=ffmul(out,a,f,p)
        a=ffmul(a,a,f,p);n//=2
    return out

def irreducible_example():
    cert=load('irreducible_example.json');p=cert['p'];require(p==11 and cert['N_specialization']==0,'example metadata')
    H=add(scale(product_lines(5),1000),scale(mul(W,clean(Q5)),-1))
    coeff=[int(H.get((0,j),0))%p for j in range(6)]
    require(list(reversed(coeff))==cert['poly_coefficients_desc'],'example polynomial')
    f=[c*pow(coeff[-1],-1,p)%p for c in coeff]
    x=[0,1]; xp=power(x,p,f,p);a=trim([(xp[i] if i<len(xp) else 0)-(x[i] if i<len(x) else 0) for i in range(max(len(x),len(xp)))])
    b=f
    while a:a,b=rem(b,a,p),a
    require(len(b)==1,'linear factor over F11')
    last=power(x,p**5,f,p);require(last==x,'Frobenius degree5 test')
    return {'p':p,'monic_f_ascending':f,'x_to_p_mod_f':xp,'x_to_p5_mod_f':last,'gcd_degree':0,
            'scope':'auxiliary polynomial counterexample only; NOT a B699 counterexample'}


def saturation_gate(degree):
    buckets={}
    for r in ROWS:
        dd=defaultdict(list)
        for roots in combinations_with_replacement(SOURCES[r],degree):
            dd[sum(roots)].append((roots,(sum(roots)**2-sum(t*t for t in roots))//2,len(set(roots))))
        buckets[r]=dd
    piv=(3,5,8); ws={}
    for y in ROWS:
        terms=[F(math.prod(y-t for t in piv if t!=x),math.prod(x-t for t in piv if t!=x)) for x in piv]
        den=math.lcm(*(x.denominator for x in terms)); ws[y]=([int(den*x) for x in terms],den)
    ans=set(); counts=Counter()
    for sums in product(*(sorted(buckets[r]) for r in piv)):
        vals={r:F(sum(a*b for a,b in zip(ws[r][0],sums)),ws[r][1]) for r in ROWS}
        if any(v.denominator!=1 or v not in buckets[r] for r,v in vals.items()):continue
        for records in product(*(buckets[r][vals[r]] for r in ROWS)):
            counts['sum_gate']+=1
            if sum(q[2] for q in records)<14:continue
            counts['z14_gate']+=1
            if sum(a*q[1] for a,q in zip((-1,5,-10,10,-5,1),records)):continue
            counts['e2_gate']+=1
            key=tuple(tuple(q[0]) for q in records)
            require(key not in ans,'duplicate saturation record');ans.add(key)
    return ans,dict(counts)

def height_checks():
    def b(n):return 0 if n<0 else (n//2+1)*(n-n//2+1)
    out=[]
    for q in load('height_consumers.json'):
        D=q['D'];x=q['Xdegree'];mu=q['mu_max'];m=q['m'];h=q['h'];c=q['c'];a=q['a']
        d=6*m-1;f=b(d);k=b(d-D);tau=m*(m+1)//2;C=(m-1)*mu+21;s=f-k-C
        R=21*tau;Lmax=21*m*(m-1)//2;U=f+Lmax
        lr=R.bit_length();ch=((tau*9**(2*D)).bit_length()+1)//2
        Sd=sum(w*(w//2+1) for w in range(d+1))
        A=(2*lr*f+13*Sd+3)//4+ch*Lmax+(U+1)//2
        v=(f*f.bit_length()+1)//2;eta=D+x;l1=(f.bit_length()+1)//2
        require(c*s>A+v+eta*k,'escape length')
        require(21*tau+(a-1)*C<=a*(f-k)+k,'uniform exponent escape')
        B=c+l1+a*h
        value=B+66*m+7*m*(h+3*D)
        res=(d//2)*h+x*B+math.factorial(d//2+x).bit_length()
        require((value,res)==(q['value_exponent'],q['resultant_exponent']),'height branch discrepancy')
        require(max(value,res)<14000001,'entrance not contradicted')
        require(R<2**lr and tau*9**(2*D)<2**(2*ch),'strict norm-column bound')
        out.append({'D':D,'mu_max':mu,'h':h,'s_min':s,'value_exponent':value,'resultant_exponent':res})
    return out

def global_excess_check():
    table,ell=source_data();rows=[]
    for dx in range(153):
        powers=[]
        for r in ROWS:
            maxjet=max(table[r][0]+([table[r][1]] if table[r][1] is not None else []))
            powers.append(next(v for v in range(maxjet+1) if ell(r,v)<=dx))
        V=sum(powers);rows.append({'dx':dx,'minimal_vertical':V,'excess_upper':305-2*dx-V,'row_minima':powers})
    require(max(r['excess_upper'] for r in rows)==3,'global weighted-X excess bound')
    return rows

def final_budget22():
    # Recompute all column budgets for fixed dx, then all vertical sums at once.
    # Independent implementation from discover_excess_budget/all_bounds.
    reference=load('septic_budget.json');vmax=reference['vmax'];dmin=reference['dmin']
    _,ell=source_data();tab={};inf=10**8
    for dx in range(dmin,153):
        costs=[0]+[inf]*vmax
        for r,w in zip(ROWS,(2,2,2,1,1,1)):
            allowed=[(v,w*ell(r,v)) for v in range(vmax+1) if ell(r,v)<=dx]
            nxt=[]
            for total in range(vmax+1):
                val=inf
                for v,pay in allowed:
                    if v>total:break
                    val=min(val,costs[total-v]+pay)
                nxt.append(val)
            costs=nxt
        tab[dx]=[None if z>=inf else 9*dx-z for z in costs]
        require(tab[dx]==reference['capacities'][str(dx)],'final dx/vertical DP differs')
    out=[]
    for K in (23,22):
        feasible=0;tuples=0;one=None
        # Order free high degree first, unlike the discovery loop.
        for e in range(K+1):
            for d in range(K-e+1):
                for c in range(K-e-d+1):
                    for b in range(K-e-d-c+1):
                        a=K-e-d-c-b;tuples+=1
                        minimum_weight=7*a+8*b+10*c+12*d+16*e
                        if minimum_weight>305:continue
                        need=2*b+2*c+d
                        for V in range(306-minimum_weight):
                            dx=(305-V-a)//2
                            require(V<=vmax and dx>=dmin,'final budget range incomplete')
                            cap=tab[dx][V]
                            if cap is None or need>cap:continue
                            feasible+=1
                            if one is None:one={'a':a,'b':b,'c':c,'d':d,'e':e,'V':V,'dx_upper':dx,'Gamma_need':need,'Gamma_upper':cap}
        require(tuples==math.comb(K+4,4),'five-type count completeness')
        require(feasible==(0 if K==23 else 117),'final factor count certificate')
        out.append({'K':K,'count_vectors':tuples,'feasible_relaxed_records':feasible,'one':one})
    conditional=[]
    for K in (22,21):
        feasible=0
        for a in range(K+1):
            for b in range(K-a+1):
                for c in range(K-a-b+1):
                    for d in range(K-a-b-c+1):
                        e=K-a-b-c-d;weight=7*a+8*b+10*c+12*d+18*e
                        if weight>305:continue
                        for V in range(306-weight):
                            dx=(305-V-a)//2
                            require(V<=vmax and dx>=dmin,'conditional budget range')
                            cap=tab[dx][V]
                            if cap is not None and 2*b+2*c+d<=cap:feasible+=1
        require(feasible==(0 if K==22 else 41),'conditional SAT48 ledger')
        conditional.append({'K':K,'feasible_relaxed_records':feasible})
    return {'status':'NO_23_COMPONENT_SUBSET','weights':[7,8,10,12,16],'Gamma_lower':[0,2,2,1,0],
            'positive_X_excess_type':'A','optimization':out,
            'SAT48_conditional_only_not_proved':conditional}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',required=True,type=Path);args=ap.parse_args()
    out=args.out.resolve();require(not out.exists(),'output directory must not exist');out.mkdir(parents=True)
    start=time.monotonic();summary={'status':'RUNNING','python':platform.python_version(),'checks':{}}
    q5=load('mu29_gates.json');j5=load('mu29_jets.json');f5=load('mu29_factors.json');q4=load('quartic23.json')
    for degree,rec in [(5,q5['records']),(4,q4['records'])]:
        keys,counts=gate_records(degree)
        require(len(keys)==len(rec) and keys==set(map(canonical,rec)), 'exhaustive gate mismatch')
        summary['checks'][f'degree{degree}_gates']={'total':len(keys),'by_missing_row':counts}
        print('PASS_ROOT_GATE',degree,len(keys),flush=True)
    summary['checks']['quintic_jets']=audit_systems(5,q5['records'],j5['systems'],{r['index']:r['factors_t'] for r in f5['records']},out)
    print('PASS_EXACT_QUINTIC_MINORS_AND_PENCILS',flush=True)
    summary['checks']['quartic_jets']=audit_systems(4,q4['records'],q4['systems'],{},out)
    print('PASS_EXACT_QUARTIC_MINORS_AND_PENCILS',flush=True)
    summary['checks']['pencils']=audit_pencils()
    for degree in (6,7):
        sat=load('saturation'+str(6*degree)+'.json')
        keys,counts=saturation_gate(degree)
        stored=set(tuple(tuple(rec['ordinary_roots'][str(r)]) for r in ROWS) for rec in sat['records'])
        require(len(keys)==len(sat['records']) and keys==stored,'saturation exhaustive gate')
        require(counts==sat['gate_stats'],'saturation gate counters')
        summary['checks']['saturation'+str(6*degree)]={'gates':counts,'jets':audit_systems(degree,sat['records'],sat['systems'],{},out)}
        print('PASS_SATURATION',6*degree,len(keys),flush=True)
    summary['checks']['irreducible_example']=irreducible_example()
    summary['checks']['budget']=budget()
    print('PASS_WEIGHTED_SOURCE_BUDGET_31',flush=True)
    summary['checks']['low_mu_height_consumers']=height_checks()
    excess=global_excess_check()
    (out/'global_x_excess.json').write_text(json.dumps(excess,indent=2))
    summary['checks']['global_x_excess_upper']=3
    summary['checks']['final_budget22']=final_budget22()
    print('PASS_DEGREE_EXCESS_AND_FINAL_BUDGET_22',flush=True)
    summary['status']='PASS_NEW_SOURCE_BUDGET22_AND_CONSUMERS'
    summary['elapsed_seconds']=round(time.monotonic()-start,3)
    summary['evidence_sha256']={p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted((ROOT/'evidence').glob('*.json'))}
    (out/'summary.json').write_text(json.dumps(summary,indent=2))
    print(summary['status'],summary['elapsed_seconds'],flush=True)

if __name__=='__main__':main()
