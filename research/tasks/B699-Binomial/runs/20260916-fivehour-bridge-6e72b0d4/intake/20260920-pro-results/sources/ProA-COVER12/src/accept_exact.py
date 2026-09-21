"""Final exact rational checks. Python standard library only; not discovery code."""
from fractions import Fraction as F
from math import comb, gcd, lcm
from functools import reduce
from itertools import product
from pathlib import Path
import ast, csv, json

POINTS=[(r,s*(r-s)) for r in range(3,9) for s in range(r//2+1)]
def readpoly(rows):
    p={(int(a),int(b)):F(c) for a,b,c in rows}
    assert len(p)==len(rows) and all(p.values())
    return p

def jet(p,r,x,a,b):
    return sum((v*comb(i,a)*comb(j,b)*r**(i-a)*x**(j-b)
                for (i,j),v in p.items() if i>=a and j>=b),F(0))

def diagonal(p,s,a,b):
    return sum((jet(p,2*s,s*s,a-k,b+k)*comb(b+k,b)*s**k for k in range(a+1)),F(0))

def pmul(a,b):
    c=[F(0)]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):c[i+j]+=x*y
    return c

def divW(p):
    W=[F(1)]
    for r in range(3,9):W=pmul(W,[-r,1])
    out={}
    for b in range(11):
        amax=max((a for a,j in p if j==b),default=-1)
        a=[p.get((i,b),F(0)) for i in range(amax+1)]
        for i in range(amax,5,-1):
            v=a[i]
            if v:out[i-6,b]=v
            for j,w in enumerate(W):a[i-6+j]-=v*w
        assert all(v==0 for v in a)
    return out

def addpoly(basis,params):
    out={}
    for w,p in zip([F(1),*map(F,params)],basis):
        for k,c in p.items():out[k]=out.get(k,F(0))+w*c
    return {k:c for k,c in out.items() if c}

def affine(expr,d):
    def rec(n):
        if isinstance(n,ast.Constant):return [F(n.value)]+[F(0)]*d
        if isinstance(n,ast.Name):
            assert n.id in [f't{i}' for i in range(d)]
            return [F(0)]+[F(int(n.id[1:])==i) for i in range(d)]
        if isinstance(n,ast.UnaryOp):
            x=rec(n.operand);assert isinstance(n.op,(ast.USub,ast.UAdd))
            return [-v for v in x] if isinstance(n.op,ast.USub) else x
        assert isinstance(n,ast.BinOp)
        x,y=rec(n.left),rec(n.right)
        if isinstance(n.op,ast.Add):return [a+b for a,b in zip(x,y)]
        if isinstance(n.op,ast.Sub):return [a-b for a,b in zip(x,y)]
        if isinstance(n.op,ast.Mult):
            assert not any(x[1:]) or not any(y[1:])
            return [x[0]*v for v in y] if not any(x[1:]) else [y[0]*v for v in x]
        assert isinstance(n.op,ast.Div) and not any(y[1:]) and y[0]
        return [v/y[0] for v in x]
    return rec(ast.parse(expr,mode='eval').body)

def rref_equations(eqs,d):
    """Canonical [variable coefficients | constant] rows for affine equations=0."""
    A=[list(map(F,v[1:]))+[F(v[0])] for v in eqs if any(v)]
    rank=0
    for c in range(d+1):
        row=next((i for i in range(rank,len(A)) if A[i][c]),None)
        if row is None:continue
        A[rank],A[row]=A[row],A[rank];pivot=A[rank][c];A[rank]=[v/pivot for v in A[rank]]
        for i in range(len(A)):
            if i!=rank and A[i][c]:
                v=A[i][c];A[i]=[a-v*b for a,b in zip(A[i],A[rank])]
        if c==d:return None
        rank+=1
    return A[:rank]

def primitive(p):
    den=reduce(lcm,(c.denominator for c in p.values()),1)
    ints={k:int(v*den) for k,v in p.items()};g=reduce(gcd,(abs(v) for v in ints.values()))
    return {k:v//g for k,v in ints.items()}

def verify(root:Path,out:Path):
    families=json.loads((root/'certificates/nf59_exact_families.json').read_text())
    signatures={x['case']:x for x in json.loads((root/'certificates/nf59_signatures.json').read_text())}
    ranks={x['case']:x for x in map(json.loads,(root/'certificates/nf59_d0_jets.jsonl').read_text().splitlines()) if x['status']=='MODULAR_CONSISTENT'}
    source=list(csv.reader((root/'certificates/nf59_d0.csv').open()))
    assert {x['case'] for x in families}==set(ranks)=={338,339,717}
    allbasis={};reports=[];negative=0
    mons=[(a,b) for b in range(8) for a in range(15-2*b)]
    for rec in families:
        idx=rec['case'];d=rec['affine_dimension'];basis=list(map(readpoly,rec['basis']));allbasis[idx]=basis
        assert d+1==len(basis) and d==64-ranks[idx]['rankA_mod']
        assert rec['source_multiplicities']==list(map(int,source[idx][5:]))
        assert rec['extra_root']==int(source[idx][4]) and rec['extra_root'] not in [0,2]
        assert all(a+2*b<=20 for p in basis for a,b in p)
        assert [p.get((0,10),F(0)) for p in basis]==[F(1)]+[F(0)]*d
        assert len(rec['free_columns'])==d
        for j,p in enumerate(basis[1:]):
            Q=divW(p)
            assert all(a+2*b<=14 for a,b in Q)
            assert [Q.get(mons[k],F(0)) for k in rec['free_columns']]==[F(i==j) for i in range(d)]
        # Fiber identities, every source jet, and exact ordinary order for ALL parameters.
        k=0;rowmu=[];jets=0
        for r in range(3,9):
            fiber=[F(1)];row_sum=0
            for s in range(r//2+1):
                m=rec['source_multiplicities'][k];x=s*(r-s);k+=1;row_sum+=m
                for _ in range(m):fiber=pmul(fiber,[-x,1])
                for total in range(m):
                    for a in range(total+1):
                        b=total-a
                        assert all(jet(p,r,x,a,b)==0 for p in basis);jets+=len(basis)
                assert jet(basis[0],r,x,0,m)!=0
                assert all(jet(p,r,x,0,m)==0 for p in basis[1:])
            if r==3:fiber=pmul(fiber,[-rec['extra_root'],1])
            for b in range(11):
                assert jet(basis[0],r,0,0,b)==fiber[b]
                assert all(jet(p,r,0,0,b)==0 for p in basis[1:])
            rowmu.append(row_sum)
        assert rowmu==[9,10,10,10,10,10]
        bad=dict(basis[0]);bad[0,0]=bad.get((0,0),F(0))+1
        assert jet(bad,3,0,0,0)!=0;negative+=1
        ss=signatures[idx];levelsets=[];center_m=[];cancel_eqs=[]
        for diag in ss['diagonals']:
            s=diag['s'];r=2*s;m=diag['ordinary_m'];center_m.append(m)
            assert rec['source_multiplicities'][POINTS.index((r,s*s))]==m
            lc={}
            for b in range(m+1):
                for a in range(2*m-2*b+1):
                    v=[diagonal(p,s,a,b) for p in basis]
                    if any(v):lc[a,b]=v
            expected={(a,b):affine(expr,d) for a,b,expr in diag['local_coefficients']}
            assert lc==expected
            reallevels={}
            for w in range(m,2*m+1):
                eq=[v for (a,b),v in lc.items() if a+2*b<w]
                rr=rref_equations(eq,d)
                if rr is not None:reallevels[w]=rr
            supplied={z['w_at_least']:rref_equations([affine(v,d) for v in z['equations']],d) for z in diag['levels']}
            assert reallevels==supplied
            levelsets.append([(w,[v for (a,b),v in lc.items() if a+2*b<w]) for w in reallevels])
            if len(diag['levels'])>1:cancel_eqs.append(diag['levels'][1]['equations'])
        # Every joint cancellation locus; a consistent affine subspace over Q has rational points.
        best=100;strata=[]
        for combination in product(*levelsets):
            ws=[x[0] for x in combination];eq=[v for _,ls in combination for v in ls]
            rr=rref_equations(eq,d)
            if rr is None:continue
            cost=sum(2*m-w for m,w in zip(center_m,ws))
            if cost<best:best=cost;strata=[]
            if cost==best:strata.append((ws,rr))
        assert best==ss['minimum_total_kappa']==5
        supplied=[(x['w_lower_bounds'],rref_equations([affine(e,d) for e in x['equations']],d)) for x in ss['minimizing_strata']]
        assert sorted(strata)==sorted(supplied)
        if idx==338:assert [max(w for w,_ in lev) for lev in levelsets]==[4,3,3]
        if idx==339:
            params=[F(-21,25)]
            def actual_w(diag):
                return min(a+2*b for a,b,e in diag['local_coefficients']
                           if (lambda v:v[0]+sum(c*t for c,t in zip(v[1:],params)))(affine(e,1)))
            assert [2*x['ordinary_m']-actual_w(x) for x in ss['diagonals']]==[3,0,2]
            negative+=1 # rejects the tempting false all-parameter kappa_6>=1.
        reports.append({'case':idx,'affine_dimension':d,'ordinary_mu_rows':rowmu,'z':21,'ordinary_jets_verified':jets,'minimum_total_kappa':best,'complete_strata':len(strata)})
    fixed=json.loads((root/'certificates/fixed_nonvanishing.json').read_text());fixedout=[]
    for rec in fixed:
        rat=addpoly(allbasis[rec['case']],rec['parameters']);ip=primitive(rat)
        assert ip=={(a,b):int(c) for a,b,c in rec['integer_polynomial']}
        f=[F(ip.get((20-2*b,b),0),4**b) for b in range(11)]
        bern=[sum((f[k]*F(comb(j,k),comb(10,k)) for k in range(j+1)),F(0)) for j in range(11)]
        assert bern==list(map(F,rec['bernstein']))
        # Reverse Bernstein expansion, not merely computing the same conversion twice.
        reverse=[sum((bern[j]*comb(10,j)*comb(10-j,k-j)*(-1)**(k-j) for j in range(k+1)),F(0)) for k in range(11)]
        assert reverse==f and all(b<0 for b in bern)
        c=min(abs(b) for b in bern);T=sum(abs(v) for v in ip.values())
        assert c==F(rec['c']) and T==int(rec['l1']) and 2**rec['threshold_exponent']*c>T
        assert rec['threshold_exponent']==52
        fixedout.append({'case':rec['case'],'parameters':rec['parameters'],'n_at_least_power2':52,'l1':str(T),'bernstein_min_abs':str(c)})
    result={'families':reports,'fixed_nonvanishing':fixedout,'negative_tests':negative}
    (out/'exact_rational_receipt.json').write_text(json.dumps(result,indent=2))
    print('PASS_EXACT_FAMILIES',[(r['case'],r['affine_dimension']) for r in reports],'ALL_PARAMETER_STRATA','NONVANISHING_2^52','negative_tests',negative,flush=True)
    return result

if __name__=='__main__':
    import sys
    verify(Path(__file__).resolve().parents[1],Path(sys.argv[1]))
