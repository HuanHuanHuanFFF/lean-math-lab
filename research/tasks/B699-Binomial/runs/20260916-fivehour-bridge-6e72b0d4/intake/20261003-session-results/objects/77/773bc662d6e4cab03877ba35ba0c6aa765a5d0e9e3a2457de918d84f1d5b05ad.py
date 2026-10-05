from pathlib import Path
import sympy as sp,json
R=Path(__file__).resolve().parents[1];N,X,u,t,a=sp.symbols('N X u t a0');l=sp.symbols('lam')
OFF=[[77,74],[67,57],[51,54,46],[40,43,48],[31,34,39,45],[25,28,33,39]];DIAG=[0,56,0,41,0,52];v=[9,8,7,6,4,5]
W=sp.prod(N-r for r in range(3,9));B=(N-3)*(N-4)*W
for label,name in [('U4','rational_g05_83.json'),('P4','rational_g05_63.json')]:
 d=json.loads((R/'certificates/geometry'/name).read_text());H=sp.sympify(d['H'],locals={'N':N,'X':X,'a0':a})
 if label=='P4':
  assert sp.expand(sp.diff(H,a)*14400-B)==0
  H=sp.expand(H.subs(a,14400*l));print('P4 zero factor',sp.factor(H.subs(l,0)))
  print('P4 = base + lam B; base',sp.factor(H.subs(l,0)))
 pts=[];info=[];exc=set()
 for k,r in enumerate(range(3,9)):
  for s in range(r//2+1):
   centre=2*s==r;wt=2 if centre else 1;sh=s if centre else 0
   loc=sp.Poly(sp.expand(H.subs({N:r+u,X:s*(r-s)+sh*u+t},simultaneous=True)),u,t)
   ws=sorted(set(i+wt*j for i,j in loc.monoms()));generic=ws[0]
   coeff=[sp.Poly(c,l) for (i,j),c in loc.terms() if i+wt*j==generic]
   g=sp.polys.polytools.terms_gcd(sp.gcd_list([c.as_expr() for c in coeff]))
   roots=sp.solve(g,l) if l in g.free_symbols else []
   for x in roots:assert x.is_Rational;exc.add(x)
   details=[];mx=generic
   for val in roots:
    specific=sp.Poly(loc.as_expr().subs(l,val),u,t)
    if specific.is_zero:raise RuntimeError('zero polynomial')
    ww=min(i+wt*j for i,j in specific.monoms());mx=max(mx,ww);details.append({'parameter':str(val),'order':ww})
   lower=max(0,(DIAG[k] if centre else OFF[k][s])-v[k]-mx)
   pts.append([r,s,wt,lower]);info.append({'r':r,'s':s,'wt':wt,'generic_order':generic,'uniform_max_order':mx,'gcd_low_coeff':str(g),'exceptional_orders':details,'Q_order':lower})
 for p in [257,263]:
  for mode in [0,1]:
   nm=f's1874_{label}quot_p{p}_m{mode}';(R/'certificates'/f'{nm}.input').write_text(f'129 258 {p} {mode} 21\n'+''.join(' '.join(map(str,z))+'\n' for z in pts))
 rec={'state':1874,'label':label,'H':str(H),'parameter_domain':'all rational lam' if label=='P4' else 'fixed rational polynomial','points':info,'Q_input':pts,'all_potential_exceptional_values':list(map(str,sorted(exc))),'special_factorizations':{str(z):str(sp.factor(H.subs(l,z))) for z in exc}}
 (R/'certificates'/f'{label}_source_bounds.json').write_text(json.dumps(rec,indent=2)+'\n')
 print(label,'uniform orders',[z['uniform_max_order'] for z in info],'exceptional values',exc)
