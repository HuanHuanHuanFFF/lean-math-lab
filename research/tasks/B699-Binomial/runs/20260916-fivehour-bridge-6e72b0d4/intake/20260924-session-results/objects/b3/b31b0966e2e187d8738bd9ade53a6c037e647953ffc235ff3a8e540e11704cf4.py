"""Exact symbolic identities; this script is not a proof assistant."""
import argparse,json
from pathlib import Path
import sympy as s

x,k,K,C,A,B,d,v,h,H=s.symbols('x k K C A B d v h H')
r=s.sqrt(3);checks=[]
def same(name,expr):
    if s.simplify(s.expand(expr))!=0:raise AssertionError(name)
    checks.append(name)

a0=s.Rational(15,16);sigma=5*r/2
b0=lambda t:r*(9*t/32-s.Rational(15,4)-60/t)
b1=lambda t:-45*t/128+s.Rational(45,16)-144/t**2
k1=r*K/8;k2=-21*K/320+s.Rational(3,2)+24/K
k3=3*r*(21*K**3-160*K**2+16384)/(2560*K**2)
same('k1_inverse',sigma*k1-a0*K)
same('k2_inverse',sigma*k2-a0*k1+b0(K))
same('k3_inverse',sigma*k3-a0*k2+s.diff(b0(k),k).subs(k,K)*k1+b1(K))

# Recover the formal coefficients directly from the full r formula; all error
# control is separately established in PROOFS, not inferred from this series.
u=3*x*x/k;dd=1+1/u
sy=s.series(s.sqrt(1+1/dd+1/dd**2)/r,x,0,6).removeO()
ell=s.series(x/sy,x,0,6).removeO()
Et=5*ell/8-5*ell**2/64+3*ell**3/128-5*ell**4/512
Cs=s.series(4*k/x*Et-120*sy-16/x/dd**2,x,0,4).removeO()
same('C_third_order_coefficients',Cs-(sigma*(k-16)-a0*k*x+b0(k)*x*x+b1(k)*x**3))
g=(1+x)**s.Rational(5,2)
same('seventh_derivative',s.diff(g,x,7)-s.Rational(1575,128)*(1+x)**s.Rational(-9,2))
same('eighth_derivative',s.diff(g,x,8)+s.Rational(14175,256)*(1+x)**s.Rational(-11,2))

Cc=sigma*(K-16)
Z0=8*Cc/r/x+40*r
Z=Z0+20*k2*x+20*k3*x*x
Fexp=s.expand(3*(Z*Z-Z0*Z0))
poly=21*K**4-608*K**3+5120*K*K+57344*K-262144
J=45*r*poly/(16*K*K)
same('F_constant',Fexp.coeff(x,0)-320*r*Cc*k2)
same('F_first_signed_coefficient',Fexp.coeff(x,1)-J)
u0=s.symbols('u0')
same('positive_coefficient_polynomial',s.expand((poly-5*K**4).subs(K,u0+16))-(16*u0**4+416*u0**3+512*u0*u0+16384*u0+524288))
same('H_leading_in_C',J.subs(K,16+2*C/(5*r))-s.Rational(63,20)*r*C*C-72*C-2160*r-(45*r/16)*(57344/K-262144/K**2).subs(K,16+2*C/(5*r)))

cs,fs=s.symbols('cs fs')
L=(-42*C**4+489600*C*C+r*(720*C**3-14976000*C))/(5*(C*C-4800))
wL=(180*r*cs*(cs*cs-1300)+5400000)/(cs*cs-300)
same('wL_identity',(5*L/16+42*(C/4)**2-18000).subs(C,4*cs)-wL)
same('VL_identity',wL*wL-97200*cs*cs+194400000-10800000*(wL+3600)/(cs*cs-300))
pi=25*(cs*cs-300)*fs*fs+(420*cs**4-306000*cs*cs)*fs+1764*cs**6-2138400*cs**4+547560000*cs*cs
w=5*fs+42*cs*cs-18000;V=w*w-97200*cs*cs+194400000
same('Pi_shift',pi-((cs*cs-300)*V-10800000*(w+3600)))
same('leading_V_constant',s.Rational(5,8)*45*r*s.Rational(63,20)*r-s.Rational(8505,32))
same('leading_Pell_constant',s.Rational(8,45)*s.Rational(8505,32)**2-s.Rational(1607445,128))
D0=2**14*3**10*5**6
same('eta_leading_constant',s.Rational(1607445,128)/(90*r)**7-49*r/D0)
eta=w+45*r*(4*cs)
same('eta_norm',eta*(w-45*r*(4*cs))-(V-194400000))

Q=d+v
R=Q**10-12*Q**7+15*d*Q**6-4*d*d*Q**5-4*d*Q**3+12*d*d*Q*Q-12*d**3*Q+4*d**4
FH=4*d*v*H*H-4*v*Q*Q*H-(Q**4-d)
MM=H*Q**3*(d+4*v)+Q**5-d*v
LL=(3*d+4*v)*Q**5-2*d*d*v
same('POWER_norm_polynomial',d*d*R-4*v*MM*(d*MM-LL)+Q**6*(d+4*v)**2*FH)

ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True);args=ap.parse_args()
args.output.parent.mkdir(parents=True,exist_ok=True)
args.output.write_text(json.dumps({'status':'PASS','checks':checks,'check_count':len(checks),'sympy_version':s.__version__},indent=2)+'\n')
print('SYMBOLIC_IDENTITIES=PASS; CHECKS='+str(len(checks)))
