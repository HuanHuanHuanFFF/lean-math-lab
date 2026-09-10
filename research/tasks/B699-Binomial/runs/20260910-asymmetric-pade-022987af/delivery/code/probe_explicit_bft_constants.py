"""Non-certifying high-precision design probe for BFT Theorem 2.4."""
import mpmath as mp, math, json
from fractions import Fraction as F
from pathlib import Path
mp.mp.dps=70

def beta(a,b):return F(math.factorial(a-1)*math.factorial(b-1),math.factorial(a+b-1))
def mpq(x):return mp.mpf(x.numerator)/x.denominator

def calc(p,q,k,l,a,b,c,d,target,D=24):
 P,Q=p**k,q**l;D0=a*P-b*Q;z=F(D0,a*P);s=mp.mpf(c)/d;zz=mpq(z)
 root=mp.sqrt(s*s*zz*zz+4-4*zz)
 u1=(s*(2-zz)-root)/(2*(1-zz)*(s+1));u2=(s*zz+2-root)/(2*zz*(s+1))
 alpha=(s+1)**(s+1)/(s-1)**(s-1)
 V=alpha*u1**(s-1)*(1-u1)*(1-u1+zz*u1)
 W=alpha*u2*(1-u2)*(1-zz*u2)**(s-1)
 o3=P**(s-1)/(a*b**s*V);o4=min(P,Q)**s/((a*P)**(s-1)*D0**2*W)
 lam=mp.log(o4)/mp.log(max(P,Q)**s*o4)
 cs1=[];cs2=[]
 for delta in [0,1]:
  h=d-delta;t=c-d-1+delta
  I1=sum((F(math.comb(h,j))*z**j*beta(t+j+1,2*h-j+1) for j in range(h+1)),F(0))
  I2=sum((F(math.comb(t,j))*(1-z)**j*beta(h+j+1,h+t-j+1) for j in range(t+1)),F(0))
  pref=alpha**d*(s*s-1)**(F(1,2) if delta==0 else F(-1,2))/(2*mp.pi)
  cs1.append(pref/V**d*mpq(I1));cs2.append(pref/W**d*mpq(I2))
 kap1=max(2*D*cs1[j]/(a*P)**j for j in [0,1]);kap2=min((a*P)**(1-j)/(2*D0**(1-2*j)*cs2[j]) for j in [0,1])
 eps=lam-mpq(target)
 if o3<=1 or o4<=1 or eps<=0:return None
 M=max(mp.log(kap1)/(d*mp.log(o3)),(1+lam)*mp.log(max(P,Q)**c/kap2)/(eps*d*mp.log(max(P,Q)**s*o4)),(1+lam)*mp.log(kap2)/(eps*d*mp.log(max(P,Q)**s*o4)),0)
 log2x0=c*(M+1)*mp.log(max(P,Q))/((1-lam)*mp.log(2))
 # A streamlined re-derivation from the approximants (not certified here).
 sig=mpq(target);lm=mp.log(max(P,Q));
 tail1=(mp.log(kap1)/(d*mp.log(o3))+1)*c*lm/(1-sig)
 eta=(1-sig)*mp.log(o4)/(s*lm)-sig
 tail2=(c*lm-mp.log(kap2)+d*mp.log(o4))/eta
 direct_bits=max(tail1,tail2)/mp.log(2)
 return {'s':f'{c}/{d}','target':str(target),'lambda':str(lam),'logOmega3':str(mp.log(o3)),'logOmega4':str(mp.log(o4)),'C1':[str(x) for x in cs1],'C2':[str(x) for x in cs2],'kappa1':str(kap1),'kappa2':str(kap2),'x0_bits':str(log2x0),'hypothetical_direct_bits':str(direct_bits)}

def main():
 out=[]
 for c,d in [(3,2),(11,7),(14,9),(17,11),(20,13),(23,15),(26,17),(29,19),(32,21),(35,23),(38,25),(61,40),(8,5)]:
  for target in [F(11,100),F(3,25),F(13,100),F(7,50)]:
   v=calc(11,19,2,2,3,1,c,d,target)
   if v:
    out.append(v)
    print(v['s'],v['target'],'lambda',float(v['lambda']),'old',float(v['x0_bits']),'direct',float(v['hypothetical_direct_bits']),flush=True)
 Path(__file__).resolve().parents[1].joinpath('results/explicit_bft_constant_probe.json').write_text(json.dumps(out,indent=2)+'\n')
if __name__=='__main__':main()
