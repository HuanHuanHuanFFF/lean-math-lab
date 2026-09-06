"""Coefficientwise LC probe in q = ell - 3. Exact SymPy, no floating point."""
import sympy as s
from pathlib import Path
import json
q=s.symbols('q')

def add(a,b):
 c=[s.S.Zero]*max(len(a),len(b))
 for i,v in enumerate(a): c[i]+=v
 for i,v in enumerate(b): c[i]+=v
 return [s.expand(v) for v in c]

def mul(a,b):
 c=[s.S.Zero]*(len(a)+len(b)-1)
 for i,u in enumerate(a):
  for j,v in enumerate(b): c[i+j]+=u*v
 return [s.expand(v) for v in c]

a=[s.S.One,q+3]
b=[s.S.One,3*q+7,3*(q+2)**2,(q+2)**2*(q+1)]
records=[]
for n in range(1,17):
 if n>1: a,b=b,mul([1,q+2],add(mul([1,q+1],b),[0]+a))
 neg=[]
 for k in range(1,len(b)-1):
  p=s.Poly(s.expand(b[k]**2-b[k-1]*b[k+1]),q)
  if any(c<0 for c in p.all_coeffs()): neg.append({'k':k,'negative_terms':[(int(m[0]),str(c)) for m,c in p.terms() if c<0]})
 row={'n':n,'degree':len(b)-1,'negative_difference_polynomials':neg}
 records.append(row)
 print(json.dumps(row),flush=True)
Path(__file__).with_name('coefficientwise-lc.json').write_text(json.dumps(records,indent=2)+'\n',encoding='utf-8')
