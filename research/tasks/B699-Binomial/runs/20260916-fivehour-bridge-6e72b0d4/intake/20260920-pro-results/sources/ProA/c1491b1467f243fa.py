import sys,json,time
from pathlib import Path
from fractions import Fraction as F
import sympy as S
from accept_core import loadpoly,packpoly,affine_space,enc
from check_families import combine
p=Path(__file__).resolve().parents[1];ev=p/'evidence'
x=json.loads((ev/'nf13_candidate_families.json').read_text())['solutions'];peel=json.loads((ev/'nf77_stratum_peeling.json').read_text())['families'];N,X=S.symbols('N X');out=[]
for fam,pp in zip(x,peel):
 for z in pp['strata']:
  if z['all_equality_locus_line_factors'] or z['kappa'][1]!=0:continue
  b=list(map(lambda x:F(*x),z['parameter_base']));dirs=[[F(*x) for x in v] for v in z['parameter_directions']];Ps=list(map(loadpoly,fam['polynomials']));P0=combine(Ps,b)
  polys=[P0]
  for v in dirs:
   P={}
   for c,H in zip(v,Ps[1:]):
    for k,a in H.items():P[k]=P.get(k,F(0))+c*a
   polys.append({k:a for k,a in P.items() if a})
  sy=[S.Poly.from_dict({k:S.Rational(a.numerator,a.denominator) for k,a in P.items()},(N,X)) for P in polys]
  begin=time.monotonic();print('BEGIN',fam['index'],z['weighted_orders'],len(sy),flush=True)
  if len(sy)>1:
   g=sy[0]
   for T in sy[1:]:g=S.gcd(g,T)
   print('GCD',g.as_expr(),'seconds',time.monotonic()-begin,flush=True)
   out.append({'index':fam['index'],'orders':z['weighted_orders'],'gcd':packpoly({tuple(k):F(v) for k,v in g.terms()}),'base':packpoly(P0),'directions':[packpoly(P) for P in polys[1:]]})
  else:
   fact=S.factor_list(sy[0]);print('FIXED FACTOR DEGREES',[(T.degree(X),T.total_degree(),e) for T,e in fact[1]],'seconds',time.monotonic()-begin,flush=True)
   out.append({'index':fam['index'],'orders':z['weighted_orders'],'fixed_factor_degrees':[(int(T.degree(X)),int(T.total_degree()),int(e)) for T,e in fact[1]],'base':packpoly(P0)})
  (ev/'nf77_low6_gcd_probe.json').write_text(json.dumps(out,sort_keys=True,separators=(',',':'))+'\n')
