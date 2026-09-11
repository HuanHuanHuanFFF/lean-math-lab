# Exploratory floating-point asymptotics only, not a certificate.
import numpy as np
from scipy.optimize import differential_evolution
from scipy.integrate import quad
from math import log

def H(x):return 0 if x in (0,1) else -x*log(x)-(1-x)*log(1-x)
def gap(C,u):
 def calc(z):
  r,s=z;lam=2*s-r
  if lam<=0:return -1000
  f=C*H(1/C)
  E=2*quad(lambda x:C/2*H(2*x/C),0,s)[0]+quad(lambda x:(C-1+x)*H(x/(C-1+x)),0,1-r)[0]
  return lam*(f-u)-E
 res=differential_evolution(lambda z:-calc(z),[(0,1),(0,1)],seed=0,tol=1e-9)
 return -res.fun,res.x.tolist()
if __name__=='__main__':
 for u in [log(4),1.11,1.0]:
  for C in [3,4,6,8,12,16,24,32,64,128,256,512,1024]:
   g,rs=gap(C,u);print(u,C,round(g,6),rs)
