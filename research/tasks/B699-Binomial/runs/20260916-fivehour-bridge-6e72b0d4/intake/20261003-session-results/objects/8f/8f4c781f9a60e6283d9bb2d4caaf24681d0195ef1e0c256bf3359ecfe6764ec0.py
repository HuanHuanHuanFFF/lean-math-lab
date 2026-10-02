import sympy as s, itertools,json,math,time
from pathlib import Path
n,j,X,D=s.symbols('n j X D')
base=[n*(n-1),j*(j-1),j*(n-1),n**2*(n-1),n*j*(j-1),j**2*(j-1),n*j*(n-1)]
# precompute coefficients expansions
mons=[(a,b) for a in range(4) for b in range(4-a)]
orig=[s.Poly(f,n,j) for f in base]
trans=[s.Poly(f.subs({n:14+2*X+D,j:7+X}),X,D) for f in base]
rows={(h,b):[f.subs({n:h,j:b}) for f in base] for h in (2,3,4,5) for b in range(h+1)}
summary={};results=[]
for pairs in itertools.product(*[list(itertools.combinations(range(h+1),2)) for h in (3,4,5)]):
 delta=sum(pairs[0])-2*sum(pairs[1])+sum(pairs[2])
 ep=sum(pair==(0,h) for h,pair in zip((3,4,5),pairs))
 if delta==0 or ep>=2: continue
 mat=s.Matrix([rows[h,b] for h,p in zip((3,4,5),pairs) for b in p])
 ker=mat.nullspace()
 out=[]
 for v in ker:
  l=s.ilcm(*[e.q for e in v]);v=[int(e*l) for e in v];g=math.gcd(*v);v=[e//g for e in v]
  if next(e for e in v if e)!=abs(next(e for e in v if e)):v=[-e for e in v]
  f=sum(c*p.as_expr() for c,p in zip(v,orig));tr=s.Poly(sum(c*p.as_expr() for c,p in zip(v,trans)),X,D)
  cs=tr.coeffs();sgn=all(a>=0 for a in cs) or all(a<=0 for a in cs)
  zero2=[b for b in range(3) if f.subs({n:2,j:b})==0]
  # origin linear coeffs
  op=s.Poly(f,n,j);lin=[int(op.coeff_monomial(n)),int(op.coeff_monomial(j))]
  out.append(dict(v=v,coeffs={f'{a},{b}':int(c) for (a,b),c in op.terms()},sign=bool(sgn),constant=int(tr.coeff_monomial(1)),source2=[int(f.subs({n:2,j:b})) for b in range(3)],lin=lin))
 key=(len(ker),any(t['sign'] for t in out))
 summary[str(key)]=summary.get(str(key),0)+1
 results.append(dict(pairs=pairs,cubics=out))
Path('/mnt/data/c_r8_work/cubic_probe.json').write_text(json.dumps(results,indent=2))
print(summary)
print('non-sign',[(r['pairs'],r['cubics'][0]['source2'],r['cubics'][0]['lin']) for r in results if not any(t['sign'] for t in r['cubics'])][:30])
