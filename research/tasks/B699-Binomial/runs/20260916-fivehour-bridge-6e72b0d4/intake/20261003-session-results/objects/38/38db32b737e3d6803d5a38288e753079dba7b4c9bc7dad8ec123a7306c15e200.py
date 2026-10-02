#!/usr/bin/env python3
"""Exact evaluator of the new general REG4 model, not an NC3 solver.
An auxiliary survivor is NEVER certified as an original counterexample.
"""
from fractions import Fraction as F
from pathlib import Path
from math import isqrt
import argparse,json
ROOT=Path(__file__).resolve().parents[1]
def load(p):return json.loads(p.read_text())
def ev(ts,values):
 return sum((F(c)*__import__('functools').reduce(lambda a,b:a*b,(v**e for v,e in zip(values,m)),F(1)) for m,c in ts),F(0))
def square_root(x):
 x=F(x)
 if x<0:return None
 a,b=isqrt(x.numerator),isqrt(x.denominator)
 return F(a,b) if a*a==x.numerator and b*b==x.denominator else None

def trim(p):
 p=list(map(F,p))
 while p and not p[-1]:p.pop()
 return p
def padd(a,b):return trim([(a[i] if i<len(a) else 0)+(b[i] if i<len(b) else 0) for i in range(max(len(a),len(b)))])
def pscale(a,c):return trim([v*c for v in a])
def pmul(a,b):
 if not a or not b:return []
 out=[F(0)]*(len(a)+len(b)-1)
 for i,c in enumerate(a):
  for j,d in enumerate(b):out[i+j]+=c*d
 return trim(out)
def ppow(p,n):
 out=[F(1)]
 for _ in range(n):out=pmul(out,p)
 return out
def pdiv(a,b):
 a=trim(a);b=trim(b)
 if not b:raise ZeroDivisionError('zero polynomial')
 q=[F(0)]*max(0,len(a)-len(b)+1)
 while a and len(a)>=len(b):
  k=len(a)-len(b);co=a[-1]/b[-1];q[k]+=co
  for i,c in enumerate(b):a[i+k]-=co*c
  a=trim(a)
 if a:raise ValueError('polynomial divisibility/recovery failed')
 return trim(q)
def fmt(p):return [str(c) for c in p]

def recover(u,y,r):
 u,y,r=map(F,(u,y,r));vals=[u,y,r,F(0)]
 out={'base':{'u':str(u),'y':str(y),'r':str(r)},'model':'R4 finite normalized rational model; not an original-input enumeration','NC3_certified':False,'original_nj_recovered':False,'complete_source_powers_verified':False,'p_equals_i_retained':True}
 if not r*u*(u-1)*y*(y-1):out['status']='REJECT_ORIGINAL_NONZERO_GATE';return out
 old=load(ROOT/'inputs/R1_scale.json');new=load(ROOT/'inputs/generic.json');rec=load(ROOT/'inputs/recovery.json')['polynomials']
 D,K=ev(old['D'],vals),ev(old['K'],vals)
 S=ev(old['S'],vals)
 if not D*K*S:out['status']='REJECT_ORIGINAL_D_K_OR_S_GATE';return out
 N=ev(new['N'],vals);WG=ev(rec['Wgate'],vals);T4=ev(rec['T4'],vals)
 if not N*WG*T4:out['status']='REJECT_DERIVED_OR_ORIGINAL_NONZERO_GATE';return out
 P5=ev(new['B5'],vals);lows={str(i):ev(new['low'][str(i)]['stripped'],vals) for i in range(4,-1,-1)}
 out['polynomial_residuals']={'P5':str(P5),**{'G'+i:str(v) for i,v in lows.items()}}
 L=N/K;WB=ev(rec['Wbar'],vals);t=3*u**4*(u-1)**4*T4/K**2
 out['lambda']=str(L);out['w']=str(WB/N);out['t']=str(t);out['three_T4']=str(3*T4)
 if P5 or any(lows.values()):out['status']='REJECT_COMPLETE_SIX_POLYNOMIAL_SYSTEM';return out
 out['status']='AUXILIARY_POLYNOMIAL_SURVIVOR_NOT_NC3'
 tau=square_root(t)
 if not tau or r<=0:
  out['original_leading_filter']='REJECT_t_not_positive_square_OR_r_not_positive';return out
 mu=T4/(3*r*N*N)
 out['mu']=str(mu)
 out['positive_mu_barrier']=str(27*mu*mu+560*mu-2304)
 if 27*mu*mu+560*mu-2304<=0:
  out['original_leading_filter']='REJECT_REAL_CUBIC_BARRIER';return out
 # Recover normalized polynomials only. No unknown affine map or original T is invented.
 Gamma=6*u*u*(u-1)**2;h=ev(rec['Hbar'],vals)/K;c0=ev(rec['Cbar'],vals)/K;k0=ev(rec['kbar'],vals)/K
 ell=Gamma*L;eta=ell*(h+u);nu=ev(rec['nubar'],vals)/K**2;a0=ev(rec['a0bar'],vals)/K**2
 H3=[k0,c0,h,F(1)];D7=padd(pmul([0,1],ppow(H3,2)),[-a0,nu,eta,ell]);V=padd(pmul([-1,1],D7),[-a0]);C7=pdiv(V,[0,1])
 PP=pdiv(padd(padd(pmul(ppow(C7,2),D7),pscale(C7,-5*a0*t/4)),[-a0*t*t/4,a0*t*t/4]),[0,1])
 BB=[F(0)]*10+[F(1)]
 for e in range(19,9,-1):
  current=padd(PP,pscale(ppow(BB,2),-1));co=current[e] if e<len(current) else F(0);BB[e-10]+=co/2
 if padd(PP,pscale(ppow(BB,2),-1)):raise AssertionError('six-polynomial to full-square reconstruction mismatch')
 lam=4/a0;mu=t*lam;LL=pscale(V,lam);MM=[0,-mu,mu]
 K0=padd(pdiv(pmul(LL,padd(LL,[4])),MM),[-1]);ff=padd([2],pdiv(pmul(padd(LL,[4]),padd(padd(ppow(LL,2),pscale(LL,4)),pscale(MM,-4))),ppow(MM,2)))
 arms=[]
 for sign in [1,-1]:
  QQ=pscale(pmul([0,1],BB),sign*lam/tau);ZZ=pdiv(pmul(QQ,padd(LL,[4])),MM);JJ=pscale(padd(ff,ZZ),F(1,2))
  assert pmul(MM,ppow(QQ,2))==padd(padd(ppow(LL,3),pscale(ppow(LL,2),4)),padd(pscale(pmul(MM,LL),-5),ppow(MM,2)))
  assert pmul(QQ,padd(ff,[-2]))==pmul(ZZ,padd(K0,[-3]))
  assert padd(ppow(ZZ,2),[-1])==pmul(K0,padd(ff,[-1]))
  arms.append({'sign':sign,'Q':fmt(QQ),'Z':fmt(ZZ),'J_normalized':fmt(JJ)})
 out['normalized_recovery']={'M':fmt(MM),'L':fmt(LL),'K0':fmt(K0),'f':fmt(ff),'two_sign_arms':arms,'original_integer_nonnegative_affine_and_prime_power_tests':'NOT_PERFORMED_NO_ORIGINAL_INPUT_SUPPLIED'}
 return out
if __name__=='__main__':
 p=argparse.ArgumentParser(description=__doc__);p.add_argument('--u',required=True);p.add_argument('--y',required=True);p.add_argument('--r',required=True);args=p.parse_args()
 try:ans=recover(args.u,args.y,args.r)
 except (ValueError,ZeroDivisionError) as e:p.error(str(e))
 print(json.dumps(ans,ensure_ascii=False,indent=2))
