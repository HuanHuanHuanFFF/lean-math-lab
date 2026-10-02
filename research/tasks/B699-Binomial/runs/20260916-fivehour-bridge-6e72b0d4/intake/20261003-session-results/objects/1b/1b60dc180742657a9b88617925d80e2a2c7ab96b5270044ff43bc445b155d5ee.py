from pathlib import Path
import json,sympy as s
p=Path(__file__).resolve().parents[1];d=json.loads((p/'certificates/core.json').read_text());a=json.loads((p/'certificates/a_zero.json').read_text());u,y,L=s.symbols('u y L')
def cv(terms,syms):return s.Poly.from_dict({tuple(m):s.Rational(c) for m,c in terms},syms).as_expr()
C=cv(d['polys3']['Ccurve'],[u,y,L]);A=cv(d['polys3']['Acal'],[u,y,L]);P78=cv(a['P78'],[y]);res=cv(a['resultant'],[y])
for yy in [2,3,-2]:
 cp=s.Poly(C.subs(y,yy),u);ap=s.Poly(A.subs(y,yy),u)
 m,n=cp.degree(),ap.degree();rows=[]
 for j in range(n):rows.append([0]*j+cp.all_coeffs()+[0]*(n-1-j))
 for j in range(m):rows.append([0]*j+ap.all_coeffs()+[0]*(m-1-j))
 det=s.det(s.Matrix(rows));exp=a['factor_scalar']*yy**48*(yy-1)**70*(2*yy*yy-2*yy+1)**8*(yy*yy-3*yy+1)**16*P78.subs(y,yy)
 print('y',yy,'m,n',m,n,'det/cert',s.cancel(det/exp),'Sympy resultant/cert',s.cancel(s.resultant(cp.as_expr(),ap.as_expr(),u)/exp),'storedresultant/cert',s.cancel(res.subs(y,yy)/exp),flush=True)
