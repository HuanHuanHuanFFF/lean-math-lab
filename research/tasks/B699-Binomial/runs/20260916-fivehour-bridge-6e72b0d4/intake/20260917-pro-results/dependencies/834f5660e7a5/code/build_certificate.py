"""Discovery/serialization only. SymPy is not used by receiving code."""
from exact_poly import *
from classification import *
from pathlib import Path
import json,sympy as s
ROOT=Path(__file__).resolve().parents[1]
bs,found,stats=classify();N,X=s.symbols('N X');records=[]
for b,c,hits in found:
    f=X**2+sum(s.Rational(x.numerator,x.denominator)*N**i for i,x in enumerate(b))*X+sum(s.Rational(x.numerator,x.denominator)*N**i for i,x in enumerate(c))
    factors=s.factor_list(f)[1];roots=[]
    for poly,power in factors:
        pp=s.Poly(poly,X)
        if pp.degree()!=1:continue
        root=s.cancel(-pp.nth(0)/pp.nth(1))
        if not root.is_polynomial(N):continue
        rr=s.Poly(root,N)
        if rr.degree()>2:continue
        vv=[Q(str(rr.nth(i))) for i in range(max(0,rr.degree())+1)]
        roots.extend([enc(vv)]*power)
    rec={'b':enc(b),'c':enc(c),'hits':hits}
    if len(roots)==2:rec.update(method='two_graphs',roots=roots)
    else:
        a,bi,ci=primitive_quadratic(b,c)
        vv=[int(a*v*v+val(bi,r)*v+val(ci,r)) for r,v in [(1,0),(2,0),(2,1)]]
        assert all(vv)
        rec.update(method='first_two_windows',primitive_a=a,primitive_b=list(bi),primitive_c=list(ci),window_values=vv)
    records.append(rec)
cert={'schema':'B699-i9-mixed-quartic-v1','constants':{'entry':14000001,'factor_log_height':1290000,'weighted_degree':305,'coefficient_eval_bits':915,'cost_bound':1680,'interpolation_denominator':120,'linear_norm_bits':20,'bad_value_exponent':10,'triple_height_bits':12909203,'pc_power':5000,'pc_n_power':463,'pc_two_power':5463,'small_product_bits':32,'finite_curve_height_bits':358,'minimum_weighted_degree':5,'component_bound':61},'B_table':[enc(b) for b in bs],'quadratics':records,'small_graphs':[enc(x) for x in graph_table()],'statistics':stats}
(ROOT/'evidence/new_certificate.json').write_text(json.dumps(cert,ensure_ascii=False,indent=2)+'\n')
print(json.dumps(stats));print('two_graphs',sum(r['method']=='two_graphs' for r in records),'first_two',sum(r['method']=='first_two_windows' for r in records))
