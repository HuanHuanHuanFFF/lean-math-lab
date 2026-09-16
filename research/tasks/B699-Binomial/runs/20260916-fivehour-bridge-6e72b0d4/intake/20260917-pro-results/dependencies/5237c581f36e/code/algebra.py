"""Sparse rational multivariate identities, checked by coefficient equality."""
from fractions import Fraction as Q
import json,sys
from pathlib import Path
class P:
    def __init__(self,terms=None):
        if isinstance(terms,P):self.d=terms.d.copy()
        elif isinstance(terms,dict):self.d={m:Q(c) for m,c in terms.items() if c}
        else:self.d={} if not terms else {():Q(terms)}
    def __add__(self,x):
        d=self.d.copy()
        for m,c in P(x).d.items():d[m]=d.get(m,0)+c
        return P(d)
    __radd__=__add__
    def __neg__(self):return P({m:-c for m,c in self.d.items()})
    def __sub__(self,x):return self+-P(x)
    def __rsub__(self,x):return P(x)+-self
    def __mul__(self,x):
        d={}
        for m,c in self.d.items():
            for z,b in P(x).d.items():
                ex=dict(m)
                for v,e in z:ex[v]=ex.get(v,0)+e
                key=tuple(sorted(ex.items()));d[key]=d.get(key,0)+c*b
        return P(d)
    __rmul__=__mul__
    def __pow__(self,n):
        a=P(1);x=self
        while n:
            if n&1:a=a*x
            x=x*x;n//=2
        return a
    def sub(self,**kw):
        ans=P(0)
        for mon,c in self.d.items():
            term=P(c)
            for name,e in mon:term=term*P(kw.get(name,V(name)))**e
            ans=ans+term
        return ans
    def degree(self):return {v:max(dict(m).get(v,0) for m in self.d) for v in set(v for m in self.d for v,_ in m)}
def V(v):return P({((v,1),):1})
def require_zero(name,p):
    if p.d:raise AssertionError((name,p.d))
    return name

def run():
    A,u,y,q,T,D,h,n,z,k,t,p=[V(v) for v in ['A','u','y','q','T','D','h','n','z','k','t','p']]
    r=u*(A-u);R=6*r*(2*A-u-3*y)+2*q*(y+3*u-2*A)
    names=[]
    names.append(require_zero('quadratic_to_linear',6*(y+u)*(y+u-A)*(y+u-2*A)-(2*y+6*u-4*A)*(3*y*(y-A)-q)-R))
    LL=12*r*D+2*h*(T*D+4*u-2*A)
    names.append(require_zero('signed_lift',R.sub(y=u+T*D,q=3*r-T*h)+T*LL))
    yy=A*z-u*(n-1);qn=3*yy*(yy-A)
    RN=6*r*(2*A-u-3*yy)*(n-1)+2*qn*(yy+3*u-2*A)
    raw=n*(n-1)*(n-2)*u**3-3*z*(n-1)*(n-2)*u**2*A+3*z*(z-1)*(n-2)*u*A**2-z*(z-1)*(z-2)*A**3
    deg=RN.degree()
    names.append(require_zero('actual_content_resultant',RN+6*raw))
    names.append(require_zero('first_window_transport',A**2*z*(z-1)-(yy*(yy-A))-u*(n-1)*(u*(n+1)+2*(yy-u)-A)))
    # phi=t^3 F(1-1/t), with f scaled by 6.
    f6=[k*(k-1)*(k-2),3*z*k*(k-1),3*z*(z-1)*k,z*(z-1)*(z-2)]
    transformed=sum((f6[i]*t**(3-i)*(t-1)**i for i in range(4)),P(0))
    nn=z+k
    expected=nn*(nn-1)*(nn-2)*t**3-3*z*(nn-1)*(nn-2)*t**2+3*z*(z-1)*(nn-2)*t-z*(z-1)*(z-2)
    names.append(require_zero('phi_coefficient_transform',transformed-expected))
    d,c,b,a=f6
    disc=b*b*c*c-4*a*c**3-4*b**3*d-27*a*a*d*d+18*a*b*c*d
    target=108*z*z*k*k*(z-1)*(k-1)*(nn-2)**2*(nn-1)
    names.append(require_zero('cubic_discriminant',disc-target))
    names.append(require_zero('three_slot_margin',p**4-3-(p-1)**4-2*p*p-4*(p*(p-1)**2-1)))
    names.append(require_zero('quotient_ratio_margin',t**4-(t-3)*(t+1)**3-(6*t*t+8*t+3)))
    assert Q(864,343)<3 and Q(108,343)<Q(1,3)
    return {'status':'PASS','identities':names,'count':len(names),'content_identity_partial_degrees':deg,
            'rational_margins':{'3_minus_g4_coefficient':str(3-Q(864,343)),'row3':str(Q(1,3)-Q(108,343))}}
if __name__=='__main__':
    result=run();Path(sys.argv[1]).write_text(json.dumps(result,indent=2,sort_keys=True)+'\n');print('PASS algebra',result['count'])
