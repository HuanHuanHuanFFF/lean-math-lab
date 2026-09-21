import sympy as S, json
from pathlib import Path
m,c,t=S.symbols('m eta t')
h=m*m+c
# The high-root normalized cubic is f(y)=h/Q^3, with 0<h/Q^3<1.
def f(y):return 2*y**3-(h-1)*y**2-2*h*y+h*h
el=(c+1)/(2*m)+S.Rational(7,8)/m**2
eu=(c+1)/(2*m)+S.Rational(9,8)/m**2
B=lambda e:(h-4*m)*e-2*e*e
B0=(c+1)*m/2-2*c-1
exprs={
 'f_lower_gt_1':f(m+el)-1,
 'f_upper_lt_0':-f(m+eu),
 'B_lower':B(el)-B0+S.Rational(1,4),
 'B_upper_with_2_over_h':B0+S.Rational(1,4)-B(eu)-2/h,
 'e_upper_lt_quarter':S.Rational(1,4)-eu,
 'B_increasing':h-4*m-4*eu,
 'root_left_derivative':-(6*(m+eu)**2-2*(h-1)*(m+eu)-2*h),
 'root_right_negative': -f((h-4)/2),
 'root_window_nonempty':(h-4)/2-(m+eu)
}
summary={}; cert={}
for name,ex in exprs.items():
 num,den=S.fraction(S.cancel(ex))
 pp=S.Poly(S.expand(num.subs(m,16*(c+1)**2+129+t)),c,t)
 coeff=pp.coeffs();neg=[(a,str(b)) for a,b in pp.terms() if b<0]
 summary[name]={'terms':len(coeff),'negative_terms':len(neg),'min_coefficient':str(min(coeff)), 'constant':str(pp.coeff_monomial(1)), 'denominator':str(den)}
 if neg:summary[name]['examples']=neg[:3]
 cert[name]={'original_numerator':str(num),'denominator':str(den),'substitution':'m=16*(eta+1)^2+129+t','variables':['eta','t'],'terms':[[list(mon),str(co)] for mon,co in pp.terms()]}
root=Path(__file__).resolve().parents[1]
(root/'outputs/strip-symbolic-summary.json').write_text(json.dumps(summary,indent=2))
(root/'certificates/strip-positive-polynomials.json').write_text(json.dumps(cert,indent=2))
print(json.dumps(summary,indent=2))
