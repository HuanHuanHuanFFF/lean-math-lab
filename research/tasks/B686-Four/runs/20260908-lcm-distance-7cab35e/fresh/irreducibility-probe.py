from pathlib import Path
import json
import sympy as s
out=Path(r'D:\CodingProject\Math\research\tasks\B686-Four\runs\20260908-lcm-distance-7cab35e\fresh')
x=s.Symbol('x')
rows=[]
counts=[]
for k in range(2,13):
    p=s.Poly(s.prod(x+i for i in range(1,k+1)),x)
    num=0
    for d in range(k,301):
        f=p.shift(d)-4*p
        cont,facts=s.factor_list(f.as_expr(),x)
        if len(facts)>1 or facts[0][1]>1:
            num+=1
            row={'k':k,'d':d,'k_squared_lt_64d':k*k<64*d,'factorization':str(s.factor(f.as_expr())),'linear_factors':[str(a) for a,b in facts if s.degree(a,x)==1]}
            rows.append(row)
            print(json.dumps(row),flush=True)
    counts.append({'k':k,'range_d':[k,300],'reducible_count':num})
    (out/'irreducibility-probe.json').write_text(json.dumps({'counts':counts,'reducible':rows},indent=2),encoding='utf8')
print(json.dumps({'counts':counts,'reducible_total':len(rows)}),flush=True)
