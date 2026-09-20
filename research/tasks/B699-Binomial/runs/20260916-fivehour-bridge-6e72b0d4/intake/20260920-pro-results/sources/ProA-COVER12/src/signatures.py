"""All-parameter diagonal weighted orders; no generic-parameter shortcut."""
from pathlib import Path
from math import comb
from itertools import product
import json,sympy as S
D=Path(__file__).resolve().parents[1];N,X=S.symbols('N X')
records=json.load(open(D/'certificates/nf59_exact_families.json'))
answers=[]
def subspace(eqs,params):
    if not params:
        return [] if all(v==0 for v in eqs) else None
    if not eqs: return []
    A,b=S.linear_eq_to_matrix(eqs,params); aug=A.row_join(b)
    rr,piv=aug.rref()
    if len(params) in piv:return None
    return [sum(rr[i,j]*params[j] for j in range(len(params)))-rr[i,len(params)] for i in range(len(piv))]
for rec in records:
    pars=tuple(S.Symbol(t) for t in rec['parameters'])
    bases=[{(a,b):S.Rational(c) for a,b,c in h} for h in rec['basis']]
    H={key:bases[0].get(key,0)+sum(pars[i]*bases[i+1].get(key,0) for i in range(len(pars))) for key in set().union(*[set(b) for b in bases])}
    diag=[]
    for s,pidx in [(2,4),(3,11),(4,20)]:
        r=2*s;m=rec['source_multiplicities'][pidx]
        assert [(a,b) for a in range(3,9) for b in range(a//2+1)][pidx]==(r,s)
        locals={}
        # N=r+u, X=s^2+s*u+t.
        for (a,b),coeff in H.items():
            for db in range(min(b,2*m)+1):
                for v in range(min(b-db,2*m-2*db)+1):
                    cc=comb(b,db)*comb(b-db,v)*s**v*(s*s)**(b-db-v)
                    for h in range(min(a,2*m-2*db-v)+1):
                        du=h+v
                        key=(du,db)
                        locals[key]=locals.get(key,0)+coeff*cc*comb(a,h)*r**(a-h)
        locals={k:S.expand(v) for k,v in locals.items() if S.expand(v)!=0}
        levels=[]
        for w in range(m,2*m+1):
            eqs=[v for (a,b),v in locals.items() if a+2*b<w]
            sp=subspace(eqs,pars)
            if sp is not None:
                levels.append({'w_at_least':w,'equations':[str(e) for e in sp]})
        diag.append({'r':r,'s':s,'ordinary_m':m,'levels':levels,'local_coefficients':[[a,b,str(v)] for (a,b),v in sorted(locals.items())]})
    feasible=[]
    for levs in product(*[a['levels'] for a in diag]):
        eqs=[S.sympify(e,locals={str(p):p for p in pars}) for l in levs for e in l['equations']]
        sp=subspace(eqs,pars)
        if sp is not None:
            kval=2*sum(a['ordinary_m'] for a in diag)-sum(l['w_at_least'] for l in levs)
            feasible.append((kval,[l['w_at_least'] for l in levs],sp))
    best=min(a[0] for a in feasible)
    minima=[{'kappa_sum':v,'w_lower_bounds':w,'equations':[str(e) for e in sp]} for v,w,sp in feasible if v==best]
    answer={'case':rec['case'],'diagonals':diag,'minimum_total_kappa':best,'minimizing_strata':minima}
    answers.append(answer)
    print('CASE',rec['case'],'minimum kappa',best)
    for a in diag: print('DIAGONAL',a['r'],'m',a['ordinary_m'],'levels',a['levels'])
    print('MINIMA',minima)
(D/'certificates/nf59_signatures.json').write_text(json.dumps(answers,indent=2))
