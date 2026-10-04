from reg3_source import *
import sympy as sp
fs,gates,provenance=sources(); x=sp.Symbol('x')
U,Y,Z=sp.symbols('u y r')
e=U*Y-Y+1
weights={4:1,3:2,2:Y,1:2*U*Y**2,0:U**2*(U-1)**2*Y**3*(Y-1)**2}
C={i:sp.Poly(fs[f'V{i}'].as_expr(),Z).nth(9) for i in range(5)}
T=sum(weights[i]*C[i]*x**i for i in range(5))
res={'r9_factorization':str(sp.factor(T)),'T_at_e':str(sp.factor(T.subs(x,e))),'T_at_minus_e':str(sp.factor(T.subs(x,-e)))}
(OUT/'03-residual-shift.json').write_text(json.dumps(res,indent=2)+'\n',encoding='utf-8')
print(json.dumps(res))
