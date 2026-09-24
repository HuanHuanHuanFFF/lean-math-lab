"""Small exact bivariate polynomial arithmetic. No symbolic-library dependency."""
from fractions import Fraction
from math import comb

def clean(p): return {a:b for a,b in p.items() if b}
def add(*polys):
 out={}
 for p in polys:
  for ij,c in p.items():out[ij]=out.get(ij,0)+c
 return clean(out)
def scale(p,c): return clean({ij:v*c for ij,v in p.items()})
def sub(p,q): return add(p,scale(q,-1))
def mul(p,q):
 out={}
 for (a,b),c in p.items():
  for (d,e),f in q.items():
   ij=(a+d,b+e);out[ij]=out.get(ij,0)+c*f
 return clean(out)
def power(p,k):
 out={(0,0):1}
 for _ in range(k):out=mul(out,p)
 return out
def shift(p,a,b):
 out={}
 for (i,j),c in p.items():
  for u in range(i+1):
   for v in range(j+1):
    ij=(u,v);out[ij]=out.get(ij,0)+c*comb(i,u)*a**(i-u)*comb(j,v)*b**(j-v)
 return clean(out)
def order(p,a,b):return min(i+j for i,j in shift(p,a,b))
ONE={(0,0):1};XX={(1,0):1};YY={(0,1):1}
def const(c):return {(0,0):c} if c else {}
def cbpoly(x,k):
 out=ONE
 for i in range(k):out=scale(mul(out,sub(x,const(i))),Fraction(1,i+1))
 return out

def check_qig_identities():
 n=add(XX,YY);J=mul(XX,YY);A=mul(sub(XX,ONE),sub(YY,ONE))
 a=[mul(cbpoly(XX,t),cbpoly(YY,4-t)) for t in range(5)]
 I=add(scale(mul(a[4],a[0]),12),scale(mul(a[3],a[1]),-3),power(a[2],2))
 B=add(scale(mul(mul(a[4],a[2]),a[0]),72),scale(mul(mul(a[3],a[2]),a[1]),9),
       scale(mul(a[4],power(a[1],2)),-27),scale(mul(power(a[3],2),a[0]),-27),scale(power(a[2],3),-2))
 fI=mul(mul(mul(J,A),sub(n,const(3))),sub(n,const(2)))
 fB=mul(mul(mul(power(J,2),A),power(sub(n,const(3)),2)),sub(n,const(2)))
 if scale(I,8)!=fI:raise ValueError('I identity failure')
 if scale(B,-16)!=fB:raise ValueError('B identity failure')
 gap=sub(power(B,2),scale(power(I,3),2))
 rhs=mul(mul(mul(mul(power(J,3),power(A,2)),power(sub(n,const(3)),3)),power(sub(n,const(2)),2)),
         sub(mul(sub(n,ONE),sub(n,const(2))),J))
 if scale(gap,256)!=rhs:raise ValueError('gap identity failure')
 return {'I_identity':True,'B_identity':True,'positive_gap_identity':True,
         'I_monomials':len(I),'B_monomials':len(B),'gap_monomials':len(gap)}
if __name__=='__main__':
 import time
 t=time.time();print(check_qig_identities());print('seconds',time.time()-t)
