from fractions import Fraction as F

from math import gcd, isqrt
from functools import lru_cache

def iv(x):return(F(x),F(x))

def add(a,b):return(a[0]+b[0],a[1]+b[1])

def neg(a):return(-a[1],-a[0])

def sub(a,b):return add(a,neg(b))

def mul(a,b):
 vals=[x*y for x in a for y in b];return(min(vals),max(vals))

def div(a,b):
 assert b[0]>0;return mul(a,(1/b[1],1/b[0]))

def pw(a,n):
 assert a[0]>=0;return(a[0]**n,a[1]**n)

def miniv(a,b):return(min(a[0],b[0]),min(a[1],b[1]))

def maxiv(a,b):return(max(a[0],b[0]),max(a[1],b[1]))

def rnd(a,bits=112):
 d=1<<bits;return(F(a[0].numerator*d//a[0].denominator,d),F(-((-a[1].numerator*d)//a[1].denominator),d))

def series(u,n=80):
 assert 0<=u<1
 term=u;s=F()
 for k in range(n):s+=2*term/(2*k+1);term*=u*u
 return(s,s+2*term/((2*n+1)*(1-u*u)))

@lru_cache(maxsize=8192)
def lnf(q):
 q=F(q);assert q>0
 k=q.numerator.bit_length()-q.denominator.bit_length()
 twok=F(2**k) if k>=0 else F(1,2**(-k))
 if q<twok:k-=1;twok/=2
 m=q/twok;assert 1<=m<2
 u=(m-1)/(m+1);den=1<<160
 ul=F(u.numerator*den//u.denominator,den);uu=F(-((-u.numerator*den)//u.denominator),den)
 a=series(ul);b=series(uu)
 return rnd(add(mul(iv(k),LN2),(a[0],b[1])))

def lniv(a):return(lnf(a[0])[0],lnf(a[1])[1])

def sqrtiv(q,bits=160):
 q=F(q);den=1<<bits;n=isqrt((q.numerator*den*den)//q.denominator)
 lo=F(n,den);hi=F(n+1,den);assert lo*lo<=q<hi*hi;return(lo,hi)

def dec(q,digits,upper=False):
 scale=10**digits
 x=-((-q.numerator*scale)//q.denominator) if upper else q.numerator*scale//q.denominator
 sign='-' if x<0 else '';x=abs(x)
 return f'{sign}{x//scale}.{x%scale:0{digits}d}'

def show(a):
 b=rnd(a);lo=dec(b[0],15);hi=dec(b[1],15,True)
 assert F(lo)<=a[0]<=a[1]<=F(hi)
 return {'lower':lo,'upper':hi,'exact_lower':str(b[0]),'exact_upper':str(b[1])}

def sign(a):
 assert a[0]>0 or a[1]<0
 return 'positive' if a[0]>0 else 'negative'

def beta(c,d):return F((c+d)**(c+d),d**(2*d)*(c-d)**(c-d))

def cores(row):
 c,d=row['c'],row['d'];P=row['p']**row['k0'];Q=row['q']**row['l0'];a,b,Ds=row['a'],row['b'],row['D0']
 assert a*P-b*Q==Ds and gcd(c,d)==1
 z=F(Ds,a*P);t=F(d,c);assert 0<z<t<1
 S=sqrtiv(z*z+4*t*t*(1-z))
 xq=div(iv(2*(1-t)),add(iv(2-z),S));xe=div(iv(2*t),add(iv(2*t+z),S))
 assert 0<xq[0]<=xq[1]<1 and 0<xe[0]<=xe[1]<1
 qder=add(sub(mul(iv((c+d)*(1-z)),pw(xq,2)),mul(iv(c*(2-z)),xq)),iv(c-d))
 eder=add(sub(mul(iv((c+d)*z),pw(xe,2)),mul(iv(2*d+c*z),xe)),iv(d))
 assert qder[0]<=0<=qder[1] and eder[0]<=0<=eder[1]
 lq=mul(mul(pw(xq,c-d),pw(sub(iv(1),xq),d)),pw(sub(iv(1),mul(iv(1-z),xq)),d))
 le=mul(mul(pw(xe,d),pw(sub(iv(1),xe),d)),pw(sub(iv(1),mul(iv(z),xe)),c-d))
 return P,Q,z,xq,xe,lq,le

def compute(row,gamma=None,lambdas=None):
 c,d=row['c'],row['d'];a,b,Ds=row['a'],row['b'],row['D0'];P,Q,z,xq,xe,lq,le=cores(row)
 R2=beta(c,d)/4**c;directGamma=mul(iv(F(1,2)),lnf(R2))
 if gamma is None:gamma=directGamma
 if lambdas is not None:
  assert lq[1]<=lambdas[0] and le[1]<=lambdas[1]
  lq,le=map(iv,lambdas)
 lqb=lniv(mul(iv(beta(c,d)),lq));leb=lniv(mul(iv(beta(c,d)),le))
 LP,LQ,La,Lb,LD=map(lnf,[P,Q,a,b,Ds])
 eq0=sub(sub(add(mul(iv(d),LP),mul(iv(c),LQ)),mul(iv(c-d),La)),add(mul(iv(2*d),LD),leb))
 qq0=sub(sub(mul(iv(c-d),LP),add(mul(iv(d),La),mul(iv(c),Lb))),lqb)
 T=add(eq0,gamma);AQ=add(qq0,gamma)
 kp=div(iv(F(1000-row['wp'],1000)),mul(iv(c),LP));kq=div(iv(F(1000-row['wq'],1000)),mul(iv(c),LQ));kappa=miniv(kp,kq)
 slack=sub(mul(kappa,T),iv(1));requiredE=sub(div(iv(1),kappa),eq0);requiredQ=neg(qq0);required=maxiv(requiredE,requiredQ)
 gain=sub(required,gamma)
 # The two logarithmic expressions agree with their multiplicative scale definitions.
 testT=add(sub(add(mul(iv(c),LP),mul(iv(c),LQ)),add(mul(iv(c-d),lnf(a*P)),mul(iv(2*d),LD))),sub(gamma,leb))
 assert T[0]<=testT[1] and testT[0]<=T[1]
 # Same-row monotonicity against G=1, in logG/m units, no change of parameters.
 baselineSlack=sub(mul(kappa,eq0),iv(1))
 if gamma[0]>0:assert baselineSlack[1]<slack[0] and qq0[1]<AQ[0]
 elif gamma[1]<0:assert slack[1]<baselineSlack[0] and AQ[1]<qq0[0]
 else:assert gamma==(F(0),F(0))
 bound='p' if kp[1]<kq[0] else 'q' if kq[1]<kp[0] else 'both/unresolved'
 out={'parameters':row,'P':P,'Q':Q,'z':str(z),'beta':str(beta(c,d)),'R_squared_per_two_m_steps':str(R2),'gamma_logG_per_m':show(gamma),'direct_D_gamma':show(directGamma),'xQ':show(xq),'xE':show(xe),'lambdaQ':show(lq),'lambdaE':show(le),'logQBase':show(lqb),'logEBase':show(leb),'logAQ':show(AQ),'logAE':show(T),'kappa':show(kappa),'capacity_limiter':bound,'capacity_times_E_rate_minus_one':show(slack),'Q_sign':sign(AQ),'E_capacity_sign':sign(slack),'minimum_gamma_Q':show(requiredQ),'minimum_gamma_E':show(requiredE),'minimum_gamma_both':show(required),'additional_gamma_needed':show(gain),'G1_logAQ':show(qq0),'G1_capacity_slack':show(baselineSlack),'same_configuration_monotonic':True}
 return out

LN2=series(F(1,3))
