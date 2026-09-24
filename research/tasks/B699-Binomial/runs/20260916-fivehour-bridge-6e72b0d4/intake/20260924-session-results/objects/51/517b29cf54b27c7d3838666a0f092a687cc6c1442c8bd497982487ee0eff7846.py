#!/usr/bin/env python3
from __future__ import annotations
import json
from pathlib import Path
import sympy as s
x,q,A,B=s.symbols('x q A B')
# generic q != 0,1,10/9. A=w1, B=w2.
u3= A*(4-2*q)/(9*q**3-10*q**2)+B*(12-10*q)/(9*q**2-10*q)+(-273*q**2+326*q-40)/(243*q-270)
u2= A*(-3*q**2+5*q+2)/(9*q**3-10*q**2)+B*(12*q**2-17*q+6)/(9*q**2-10*q)+(-26*q**2+144*q-160)/(243*q-270)
u1= A*(9*q**3-13*q**2-8*q-4)/(9*q**3-10*q**2)+B*(3*q**2-12)/(9*q**2-10*q)+(-104*q**2-48*q+320)/(243*q-270)
u0= A*(6*q+4)/(9*q**2-10*q)+B*(12-6*q)/(9*q-10)+(208*q**2-320*q)/(243*q-270)
w3= A*(2-q)/(9*q**3-10*q**2)+B*(6-5*q)/(9*q**2-10*q)+(-65*q**2+70*q)/(81*q-90)
U=s.factor(x**4+u3*x**3+u2*x**2+u1*x+u0)
W=s.factor(s.Rational(5,9)*x**4+w3*x**3+B*x**2+A*x)
R=x*(x-1)*(x-q); t=s.Rational(5,9); Z=s.expand(W-t*U)
Q=s.interpolate([(0,s.Rational(-200,729)*U.subs(x,0)),(1,s.Rational(16,729)*U.subs(x,1)),(q,s.Rational(1690,729)*U.subs(x,q))],x)
H=s.together(Z**3+(3*t-2)*U*Z**2-U**2*Q)
num,den=H.as_numer_denom(); quo,rem=s.div(s.Poly(num,x),s.Poly(R,x)); assert s.factor(rem.as_expr())==0
qe=s.expand(quo.as_expr())
C0=s.factor(qe.coeff(x,0)); C1=s.factor(qe.coeff(x,1)); C7=s.factor(qe.coeff(x,7))
L=81*A*q+54*A-81*B*q**2+162*B*q+104*q**3-160*q**2
M=-177147*A*q**2+34398*A*q+9936*A-103572*B*q**2+29808*B*q+50700*q**4+17680*q**3-29600*q**2
assert s.factor(u0/L)==s.Rational(2,1)/(27*q*(9*q-10))
assert s.factor(C0/(-4*q**2*L**2*M)) != 0
Dq=6561*q**2-1274*q-368
Asol=s.factor(4*q*(-25893*B*q+7452*B+12675*q**3+4420*q**2-7400*q)/(27*Dq))
Nnum=s.factor(s.together(C1.subs(A,Asol)).as_numer_denom()[0])
Enum=s.factor(s.together(C7.subs(A,Asol)).as_numer_denom()[0])
res=s.factor(s.resultant(Nnum,Enum,B))
P8=1874243735045157411*q**8-7588066639400463060*q**7+5976533651595972543*q**6-6182115393344250334*q**5+6112773480199388080*q**4-2506338132652428256*q**3+347123565112271360*q**2-258046700361728*q+45804108713984
assert s.rem(s.Poly(P8,q,modulus=17),s.Poly(1,q,modulus=17)) is not None
# special q=10/9
qs=s.Rational(10,9); AA,BB=s.symbols('AA BB')
Usp=x**4+(2*BB+s.Rational(166,243))*x**3+(-s.Rational(27,5)*AA+s.Rational(13,3)*BB+s.Rational(14186,2187))*x**2+(s.Rational(68,5)*AA-s.Rational(56,3)*BB-s.Rational(53032,2187))*x+(-9*AA+s.Rational(40,3)*BB+s.Rational(37880,2187))
Wsp=s.Rational(5,9)*x**4+BB*x**3+(s.Rational(500,729)-s.Rational(9,5)*AA)*x**2+AA*x
Rsp=x*(x-1)*(x-qs); Zsp=s.expand(Wsp-t*Usp)
Qsp=s.interpolate([(0,s.Rational(-200,729)*Usp.subs(x,0)),(1,s.Rational(16,729)*Usp.subs(x,1)),(qs,s.Rational(1690,729)*Usp.subs(x,qs))],x)
Hsp=s.expand(Zsp**3+(3*t-2)*Usp*Zsp**2-Usp**2*Qsp)
qsp,rr=s.div(s.Poly(Hsp,x),s.Poly(Rsp,x)); assert rr.as_expr()==0
E0=s.factor(qsp.as_expr().coeff(x,0)); E7s=s.factor(qsp.as_expr().coeff(x,7))
Lsp=19683*AA-29160*BB-37880
Msp=3188646*AA-4316895*BB-5281900
assert s.factor(Usp.subs(x,0)/Lsp)==-s.Rational(1,2187)
assert s.factor(E0/(-2*Lsp**2*Msp)) != 0
AAs=s.solve(Msp,AA)[0]
Psp=s.factor(s.together(E7s.subs(AA,AAs)).as_numer_denom()[0])
out={
 'generic_denominator':str(s.factor(den)),
 'generic_C0':str(C0),'generic_C1':str(C1),'generic_C7':str(C7),
 'N_after_M':str(Nnum),'E_after_M':str(Enum),'resultant':str(res),
 'special_C0':str(E0),'special_C7':str(E7s),'special_after_M':str(Psp),
 'status':'DERIVE_111=PASS'
}
path=Path(__file__).resolve().parents[1]/'outputs'/'derive_111.json'
path.write_text(json.dumps(out,indent=2,sort_keys=True)+"\n")
print(out['status'])
