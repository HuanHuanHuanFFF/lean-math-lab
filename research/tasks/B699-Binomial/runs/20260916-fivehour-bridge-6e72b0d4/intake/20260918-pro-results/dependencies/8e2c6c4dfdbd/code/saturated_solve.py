#!/usr/bin/env python3
"""Discovery: solve the 21 exact ordinary-jet interpolation systems."""
import sympy as s
import json,time
from pathlib import Path
from collections import Counter
ROOT=Path(__file__).resolve().parents[1]
shapes=json.loads((ROOT/'evidence/saturated_gate_discovery.json').read_text())['kept_root_shapes']
N,X=s.symbols('N X');u=s.symbols('u0:4');W=s.prod(N-r for r in range(3,9));free=[W,W*N,W*N**2,W*X]
results=[];start=time.time()
for sid,rows in enumerate(shapes):
    rowpolys=[s.Poly(s.prod(X-v for v in roots),X) for roots in rows]
    base=sum(s.interpolate([(r,p.nth(b)) for r,p in zip(range(3,9),rowpolys)],N)*X**b for b in range(5))
    base=s.expand(base)
    assert s.degree(s.Poly(base,X).nth(3),N)<=2
    assert s.degree(s.Poly(base,X).nth(2),N)<=4
    H=base+sum(a*f for a,f in zip(u,free))
    eqs=[]
    for r,roots in zip(range(3,9),rows):
        for v,e in Counter(roots).items():
            for i in range(1,e):
                for j in range(e-i):
                    eqs.append(s.diff(H,N,i,X,j).subs({N:r,X:v}))
    A,b=s.linear_eq_to_matrix(eqs,u);sol=s.linsolve((A,b),u)
    entry={'shape_id':sid,'roots':rows,'equations':len(eqs),'rank':int(A.rank()),'augmented_rank':int(A.row_join(b).rank())}
    if not sol:entry['status']='inconsistent'
    else:
        sole=next(iter(sol));hh=s.expand(H.subs(dict(zip(u,sole))))
        fs=s.factor_list(hh)
        entry.update(status='solution',parameters=[str(t) for t in hh.free_symbols-{N,X}],solution=[str(t) for t in sole],factor=str(s.factor(hh)))
        if not (hh.free_symbols-{N,X}):
            lden=s.ilcm(*[t.q for t in s.Poly(hh,N,X).coeffs()]);hhi=s.Poly(hh*lden,N,X)
            entry['integer_terms']=[[int(a),int(b),int(c)] for (a,b),c in hhi.terms()]
            coeff,factors=s.factor_list(hhi.as_expr())
            entry['factor_scalar']=int(coeff)
            entry['factors']=[{'terms':[[int(a),int(b),int(c)] for (a,b),c in s.Poly(f,N,X).terms()],'exponent':int(e)} for f,e in factors]
    results.append(entry)
(ROOT/'evidence/saturated_solutions_discovery.json').write_text(json.dumps({'results':results,'seconds':time.time()-start},indent=2))
print('shapes',len(results),'status',Counter(x['status'] for x in results),'ranks',Counter(x['rank'] for x in results),'secs',time.time()-start)
for e in results:
 if e['status']=='solution':print(e['shape_id'],e['parameters'],e['factor'])
