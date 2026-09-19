import sympy as s,json
from fractions import Fraction as F
from pathlib import Path
from discover_nf import Model
from discover_front import assemble
R=Path(__file__).resolve().parents[1];q=9;cs=json.loads((R/'evidence/nf53_front_certificate.json').read_text());rec=cs[3715];m=Model(q);_,_,p0=m.matrix(rec);pp=assemble(m,p0,[F(*c) for c in rec['base']]);dd=assemble(m,{},[F(*c) for c in rec['directions'][0]]);N,X,t=s.symbols('N X t');conv=lambda p:sum(s.Rational(c)*N**a*X**b for (a,b),c in p.items())/120
B,D=conv(pp),conv(dd);print('BASE',s.factor(B),flush=True);print('DIRECTION',s.factor(D),flush=True);print('GCD',s.factor(s.gcd(B,D)),flush=True);print('GENERIC',s.factor(B+t*D),flush=True)
(R/'evidence/q9_affine_diagnostic.json').write_text(json.dumps({'base':[[a,b,F(c).numerator,F(c).denominator*120] for (a,b),c in pp.items()],'direction':[[a,b,F(c).numerator,F(c).denominator*120] for (a,b),c in dd.items()],'gcd':str(s.factor(s.gcd(B,D)))},separators=(',',':'))+'\n')
