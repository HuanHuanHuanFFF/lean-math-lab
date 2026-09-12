"""Exact polynomial coefficient checks, without a CAS dependency."""
import argparse
from exact import require,write_json

class P:
    nv=6
    def __init__(self,d=0):
        self.d=({(0,)*self.nv:d} if isinstance(d,int) and d else ({} if isinstance(d,int) else {k:v for k,v in d.items() if v}))
    def __add__(self,other):
        other=other if isinstance(other,P) else P(other);d=self.d.copy()
        for k,v in other.d.items():d[k]=d.get(k,0)+v
        return P(d)
    __radd__=__add__
    def __neg__(self):return P({k:-v for k,v in self.d.items()})
    def __sub__(self,other):return self+-other if isinstance(other,P) else self+P(-other)
    def __rsub__(self,other):return P(other)+-self
    def __mul__(self,other):
        other=other if isinstance(other,P) else P(other);d={}
        for a,x in self.d.items():
            for b,y in other.d.items():
                k=tuple(s+t for s,t in zip(a,b));d[k]=d.get(k,0)+x*y
        return P(d)
    __rmul__=__mul__
    def __pow__(self,k):
        require(k>=0,'polynomial exponent');a=P(1)
        for _ in range(k):a=a*self
        return a
    def __eq__(self,other):return self.d==(other if isinstance(other,P) else P(other)).d

def var(i):
    a=[0]*P.nv;a[i]=1;return P({tuple(a):1})

def run():
    names=[]
    def identity(name,L,R):require(L==R,'identity failed: '+name);names.append(name)
    j,k=var(0),var(1);n=j+k
    p0=k*(k-1);p1=2*j*k;p2=j*(j-1)
    identity('linear three-quotient numerator',p0+p1+p2,n*(n-1))
    identity('quadratic three-quotient numerator',p1*p1-4*p0*p2,2*(n-1)*p1)
    identity('difference/reconstruction',p0-p2,(k-j)*(n-1))
    C,z,y,ell=var(0),var(1),var(2),var(3)
    n=2+C*z;x=2+C*y
    identity('outer C-square congruence',ell*C*x*(x-1)-2*ell*C,ell*C*C*(3*y+C*y*y))
    j=1+C*y;k=1+C*(z-y)
    identity('middle C-cube congruence',2*ell*C*j*k-2*ell*C*(n-1),2*ell*C**3*y*(z-y))
    w,h,n=var(0),var(1),var(2)
    j=var(3)
    identity('middle discriminant',w*(n-2*j)**2-(w*n*n-2*h*(n-1)*(n-2)),2*(h*(n-1)*(n-2)-2*w*j*(n-j)))
    x=var(3)
    identity('outer discriminant',w*(2*x-1)**2-(4*h*(n-1)*(n-2)+w),4*(w*x*(x-1)-h*(n-1)*(n-2)))
    A,h,w=var(0),var(1),var(2)
    a=4*h*w*A*A;b=-12*h*w*A;c=w*(8*h+w)
    disc=16*a*c*(b*b-4*a*c)**2
    identity('outer quartic discriminant',disc,16384*A**6*h**3*w**6*(w-h)**2*(8*h+w))
    a=w*(w-2*h)*A*A;b=6*w*h*A;c=-4*w*h
    disc=16*a*c*(b*b-4*a*c)**2
    identity('middle quartic discriminant',disc,-1024*A**6*h**3*w**6*(w-2*h)*(h+4*w)**2)
    # Instantiation of the published theorem, not verification of its proof.
    require(2**12*4**4==1048576,'BEG main exponent')
    require(4*1048576==4194304,'power of two conversion')
    require(50*4**4==12800,'coefficient-height exponent')
    require(4*3*3*36*36==46656,'uniform coefficient bound')
    # The few remaining coefficient constants are bounded by the leading one for B>=1.
    require(max(12*9*36,81,9*36*36,6*9*36,36)<46656,'all quartic coefficients bounded')
    return dict(status='PASS',identities=names,published_instantiation={'degree':4,'field_degree':1,'S_size':1,'discriminant':1,'Q_S':1,'coefficient_bound':'46656 B^4','R(B)':'2^4194304 * (46656 B^4)^12800','integer_n_bound':'n < 2^(6 R(B))'},warning='Polynomial identities and arithmetic only; the BEG theorem is an external paper input, not re-proved here.')

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',required=True);a=p.parse_args()
    r=run();write_json(a.out,r);print('verified',len(r['identities']),'polynomial identities and explicit constants')
