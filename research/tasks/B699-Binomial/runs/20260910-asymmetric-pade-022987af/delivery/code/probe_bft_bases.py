"""Heuristic parameter probe for BFT Thm 2.4 with L1=1,m0=0.
No numeric result from this file is accepted as a theorem without exact verification.
"""
import math,json,itertools
import numpy as np
from pathlib import Path
PRIMES=[2,3,5,7,11,13,17,19,23]
S=np.arange(1.025,3.001,.025)
AL=(S+1)*np.log(S+1)-(S-1)*np.log(S-1)

def vals(P,Q,a,b,delta):
 z=delta/(a*P); ss=S[S<1/z]; al=AL[:len(ss)]
 if not len(ss):return None
 root=np.sqrt(ss*ss*z*z+4-4*z)
 u1=(ss*(2-z)-root)/(2*(1-z)*(ss+1))
 u2=(ss*z+2-root)/(2*z*(ss+1))
 lq=al+(ss-1)*np.log(u1)+np.log1p(-u1)+np.log1p(-(1-z)*u1)
 le=al+np.log(u2)+np.log1p(-u2)+(ss-1)*np.log1p(-z*u2)
 o3=(ss-1)*math.log(P)-math.log(a)-ss*math.log(b)-lq
 o4=ss*math.log(min(P,Q))-(ss-1)*math.log(a*P)-2*math.log(delta)-le
 good=(o3>.005)&(o4>.005)
 if not any(good):return None
 lam=np.where(good,o4/(ss*math.log(max(P,Q))+o4),-100.)
 idx=int(np.argmax(lam))
 return {'lambda_float':float(lam[idx]),'s_float':float(ss[idx]),'logOmega3':float(o3[idx]),'logOmega4':float(o4[idx])}

def main():
 out=[]
 for p,q in itertools.combinations(PRIMES,2):
  if q<=13:continue
  best=None
  for k in range(1,15):
   P=p**k
   if P>10000000:break
   for ell in range(1,15):
    Q=q**ell
    if Q>10000000:break
    for a in range(1,7):
     for b in range(1,7):
      D=a*P-b*Q
      if not D or abs(D)>.3*min(a*P,b*Q):continue
      if D>0:r=vals(P,Q,a,b,D); pp,qq,kk,ll,aa,bb=p,q,k,ell,a,b
      else:r=vals(Q,P,b,a,-D);pp,qq,kk,ll,aa,bb=q,p,ell,k,b,a
      if r and (best is None or r['lambda_float']>best['lambda_float']):
       best=dict(r,p=pp,q=qq,k0=kk,l0=ll,a=aa,b=bb,D0=abs(D))
  out.append({'edge':[p,q],'best':best})
  print(p,q,best,flush=True)
 Path(__file__).resolve().parents[1].joinpath('results/bft_L1_one_probe.json').write_text(json.dumps(out,indent=2)+'\n')
if __name__=='__main__':main()
