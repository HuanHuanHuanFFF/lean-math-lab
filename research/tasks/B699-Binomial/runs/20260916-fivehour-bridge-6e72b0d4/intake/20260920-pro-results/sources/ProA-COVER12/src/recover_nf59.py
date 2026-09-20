"""Exact rational recovery for the three residual NF59 signatures."""
from pathlib import Path
from math import comb
import csv,json,time
import sympy as S
from sympy.polys.matrices import DomainMatrix
D=Path(__file__).resolve().parents[1]
N,X=S.symbols('N X');q=10
pts=[(r,s*(r-s)) for r in range(3,9) for s in range(r//2+1)]
mons=[(a,b) for b in range(q-2) for a in range(2*q-6-2*b+1)]
W=S.prod(N-r for r in range(3,9))
lag=[S.Poly(S.prod(N-r for r in range(3,9) if r!=i)/S.prod(i-r for r in range(3,9) if r!=i),N) for i in range(3,9)]
rows=list(csv.reader(open(D/'certificates/nf59_d0.csv')))
res=[]
for idx in [338,339,717]:
    dat=list(map(int,rows[idx])); m=dat[5:];extra=dat[4]
    fr=[];p=0
    for r in range(3,9):
        f=S.Integer(1)
        for s in range(r//2+1):
            f*=(X-s*(r-s))**m[p];p+=1
        if r==3:f*=X-extra
        fr.append(S.Poly(f,X))
    H0=S.Poly(sum(lag[i].as_expr()*fr[i].as_expr() for i in range(6)),N,X)
    A=[];B=[]
    hdict=H0.as_dict();wdict=S.Poly(W,N).as_dict()
    for p,(r,x) in enumerate(pts):
        for total in range(1,m[p]):
            for da in range(1,total+1):
                db=total-da
                coeff=[]
                for a,b in mons:
                    c=0
                    if b>=db:
                        c=sum(wc*comb(a+k,da)*r**(a+k-da) for (k,),wc in wdict.items() if a+k>=da)*comb(b,db)*x**(b-db)
                    coeff.append(c)
                target=-sum(v*comb(a,da)*comb(b,db)*r**(a-da)*x**(b-db) for (a,b),v in hdict.items() if a>=da and b>=db)
                A.append(coeff);B.append(target)
    t=time.monotonic()
    dm=DomainMatrix.from_Matrix(S.Matrix([a+[b] for a,b in zip(A,B)])).convert_to(S.QQ)
    rr,piv=dm.rref(); rr=rr.to_Matrix(); assert 64 not in piv
    free=[c for c in range(64) if c not in piv];pars=S.symbols('t0:'+str(len(free)))
    sol=[S.Integer(0)]*64
    for c,tpar in zip(free,pars):sol[c]=tpar
    for row,c in enumerate(piv):sol[c]=rr[row,64]-sum(rr[row,k]*sol[k] for k in free)
    H=S.Poly(H0.as_expr()+W*sum(sol[i]*N**a*X**b for i,(a,b) in enumerate(mons)),N,X)
    assert H.coeff_monomial(X**10)==1
    basis=[S.Poly(H.as_expr().subs({p:0 for p in pars}),N,X)]
    basis += [S.Poly(S.diff(H.as_expr(),p),N,X) for p in pars]
    common=basis[0]
    for h in basis[1:]:common=S.gcd(common,h)
    facts=S.factor_list(H.as_expr())
    result={'case':idx,'source_multiplicities':m,'extra_root':extra,'affine_dimension':len(free),'parameters':list(map(str,pars)), 'free_columns':free,
            'basis':[[(int(a),int(b),str(c)) for (a,b),c in h.terms()] for h in basis],
            'common_factor':str(common.as_expr()),'symbolic_factorization':str(facts), 'seconds':time.monotonic()-t}
    res.append(result)
    print('CASE',idx,'dimension',len(free),'gcd',common.as_expr(),'time',result['seconds'],flush=True)
    print('factorization',facts,flush=True)
    (D/f'outputs/nf59_case{idx}_polynomial.txt').write_text(str(H.as_expr())+'\n')
(D/'certificates/nf59_exact_families.json').write_text(json.dumps(res,indent=2))
