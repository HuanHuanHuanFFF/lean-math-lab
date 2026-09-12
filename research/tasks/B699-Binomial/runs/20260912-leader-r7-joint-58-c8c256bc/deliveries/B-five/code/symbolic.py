"""Sparse integer-polynomial identity verification, no CAS."""
import argparse,json
from pathlib import Path
NVAR=4
class P:
 def __init__(self,d=0):self.d={k:v for k,v in (d if isinstance(d,dict) else {(0,)*NVAR:d}).items() if v}
 def __add__(self,b):
  b=b if isinstance(b,P) else P(b);d=self.d.copy()
  for k,v in b.d.items():d[k]=d.get(k,0)+v
  return P(d)
 __radd__=__add__
 def __neg__(self):return P({k:-v for k,v in self.d.items()})
 def __sub__(self,b):return self+(-b if isinstance(b,P) else -P(b))
 def __rsub__(self,b):return P(b)-self
 def __mul__(self,b):
  b=b if isinstance(b,P) else P(b);d={}
  for k,v in self.d.items():
   for l,w in b.d.items():
    a=tuple(x+y for x,y in zip(k,l));d[a]=d.get(a,0)+v*w
  return P(d)
 __rmul__=__mul__
 def __pow__(self,n):
  a=P(1)
  for _ in range(n):a=a*self
  return a
 def __eq__(self,b):return self.d==(b.d if isinstance(b,P) else P(b).d)
def var(i):a=[0]*4;a[i]=1;return P({tuple(a):1})
def main():
 ap=argparse.ArgumentParser();ap.add_argument('output');a=ap.parse_args()
 n,j,h,w=map(var,range(4));x,y=n,j
 identities={
 'middle-square':w*(n-2*j)**2-((w-2*h)*n**2+6*h*n-4*h)-2*(h*(n-1)*(n-2)-2*w*j*(n-j)),
 'outer-square':w*(2*j-1)**2-(4*h*(n-1)*(n-2)+w)-4*(w*j*(j-1)-h*(n-1)*(n-2)),
 'pell-transform':(13*n+3)**2-195*j**2-61+13*(15*j**2-13*n**2-6*n+4),
 'unit-norm':(14*x+195*y)**2-195*(x+14*y)**2-x*x+195*y*y,
 'reverse-unit-norm':(14*x-195*y)**2-195*(-x+14*y)**2-x*x+195*y*y,
 }
 for name,value in identities.items():assert value==0,name
 # Fixed elementary height inequalities used in the infinite proof.
 assert 8**8>1560*3**8 and 8**4>28*3**4
 assert 384*96**11<2**82 and 96*2**82<2**96
 result={'integer_polynomial_identities':list(identities),'status':'PASS'}
 Path(a.output).write_text(json.dumps(result,indent=2)+'\n');print('PASS 5 exact polynomial identities')
if __name__=='__main__':main()
