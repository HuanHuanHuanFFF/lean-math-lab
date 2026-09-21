"""Regenerate the two fixed Bernstein certificates from the exact family bases."""
from pathlib import Path
from math import comb,gcd,lcm
from functools import reduce
import json
import sympy as S
D=Path(__file__).resolve().parents[1];N,X=S.symbols('N X')
fs={r['case']:r for r in json.loads((D/'certificates/nf59_exact_families.json').read_text())};out=[]
for idx,par in [(717,[]),(339,['-21/25'])]:
    basis=[sum(S.Rational(c)*N**a*X**b for a,b,c in rows) for rows in fs[idx]['basis']]
    h=S.Poly(basis[0]+sum(S.Rational(t)*v for t,v in zip(par,basis[1:])),N,X)
    den=reduce(lcm,(int(c.q) for c in h.coeffs()),1)
    ints={(a,b):int(c*den) for (a,b),c in h.terms()};g=reduce(gcd,(abs(c) for c in ints.values()))
    ints={k:v//g for k,v in ints.items()}
    f=[S.Rational(ints.get((20-2*b,b),0),4**b) for b in range(11)]
    B=[sum(f[k]*S.Rational(comb(j,k),comb(10,k)) for k in range(j+1)) for j in range(11)]
    T=sum(abs(v) for v in ints.values());c=min(map(abs,B));assert all(v<0 for v in B) and 2**52*c>T
    out.append({'case':idx,'parameters':par,'integer_polynomial':[[a,b,v] for (a,b),v in ints.items()],
                'bernstein':list(map(str,B)),'l1':str(T),'c':str(c),'threshold_exponent':52,'all_same_sign':True})
    print('NONVANISHING',idx,'n>=2^52',flush=True)
(D/'certificates/fixed_nonvanishing.json').write_text(json.dumps(out,indent=2))
