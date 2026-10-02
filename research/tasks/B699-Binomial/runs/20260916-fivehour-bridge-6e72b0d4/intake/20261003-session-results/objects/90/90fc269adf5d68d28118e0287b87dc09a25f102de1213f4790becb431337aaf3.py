from pathlib import Path
import json
import sympy as s
root=Path('/mnt/data/reg4_r1_input/B699-ProB-REG4-SCALE-20261002');out=Path(__file__).resolve().parents[1]
data=json.loads((root/'certificates/scale.json').read_text());ed=json.loads((out/'certificates/exception_linear.json').read_text())
u,y,r,L=s.symbols('u y r L')
def cv(terms,syms):return s.Poly.from_dict({tuple(m):s.Rational(c) for m,c in terms},syms).as_expr()
C=next(cv(terms,(r,u,y,L)) for terms,e in ed['K_substitution_factors'] if len(terms)==88)
A=cv(ed['A'],(r,u,y,L));B=cv(ed['B'],(r,u,y,L));hf=s.lambdify((u,y,r),cv(data['H'],(u,y,r,L)),'math')
for uu in [-3,-1,s.Rational(1,4),s.Rational(1,2),s.Rational(3,4),2,3]:
 roots=s.Poly(C.subs(u,uu),y).nroots(maxsteps=300)
 print('u',uu,flush=True)
 for yy in roots:
  if abs(s.im(yy))<1e-10:
   yy=float(s.re(yy));rr=float((B/A).subs({u:uu,y:yy}));print('y',yy,'r',rr,'Hdisc',hf(float(uu),yy,rr),flush=True)
