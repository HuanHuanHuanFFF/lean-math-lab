"""Sparse exact integer-polynomial regression, not a formal proof assistant."""
from collections import defaultdict
class Poly:
    N=7
    def __init__(self,value=0):
        self.c = {k:v for k,v in value.items() if v} if isinstance(value,dict) else ({(0,)*self.N:int(value)} if value else {})
    @classmethod
    def var(cls,i):
        key=[0]*cls.N;key[i]=1;return cls({tuple(key):1})
    def __add__(self,other):
        other=other if isinstance(other,Poly) else Poly(other)
        d=defaultdict(int,self.c)
        for k,v in other.c.items():d[k]+=v
        return Poly(d)
    __radd__=__add__
    def __neg__(self):return Poly({k:-v for k,v in self.c.items()})
    def __sub__(self,other):return self+-Poly(other) if not isinstance(other,Poly) else self+-other
    def __rsub__(self,other):return Poly(other)+-self
    def __mul__(self,other):
        other=other if isinstance(other,Poly) else Poly(other)
        d=defaultdict(int)
        for a,av in self.c.items():
            for b,bv in other.c.items():d[tuple(x+y for x,y in zip(a,b))]+=av*bv
        return Poly(d)
    __rmul__=__mul__
    def __pow__(self,e):
        if not isinstance(e,int) or e<0:raise ValueError('nonnegative integer exponent required')
        p=Poly(1)
        for _ in range(e):p=p*self
        return p

def verify_polynomials():
    n,j,a,b,h,w,g=(Poly.var(i) for i in range(7))
    k=n-j;delta=n-2*j;D=(n-1)*(n-2);E=delta**2-3*n+2;A=a*a-b*b
    identities={
     'discriminant':delta**2-n*n+4*j*k,
     'central_defect':D-4*j*k-E,
     'shifted_product':4*(j-1)*(k-1)-((n-2)**2-delta**2),
     'negative_defect':E-((delta**2-1)-3*(n-1)),
     'second_projection_product':k*(n+k-2)-k*(k-1)-(n-1)*k,
     'edge_product_gap':2*(n-2)**2-(n-4)*(2*n-6)-(6*n-16),
     'outer_square_norm':(a*(2*j-1))**2-(b*(2*n-3))**2-(a*a-b*b)-4*(a*a*j*(j-1)-b*b*D),
     'central_square_norm':(2*b*b*n+3*A)**2-(2*a*b*delta)**2-A*(9*a*a-b*b)+4*b*b*(a*a*delta**2-b*b*n*n-3*A*n+2*A),
     'central_gap_expansion':A*(9*a*a-b*b)-48*A+64-(9*a**4-10*a*a*b*b+b**4-48*A+64),
     'central_bound_numerator':4*a*b*b*(j-1)*(k-1)*E**2-a*b*b*((n-2)**2-delta**2)*E**2,
     'dyadic_residue':2*w*j*(n-j)-h*(g*n-1)*(g*n-2)+2*(w*j*j+h)-n*(2*w*j-h*g*g*n+3*h*g),
     'outer_nine_discriminant':(3*(2*j-1))**2-9-4*h*D-4*(9*j*(j-1)-h*D),
     'square_gap':(a*a-b*b)*(9*a*a-b*b)-(9*a**4-10*a*a*b*b+b**4),
     'norm_minimum_gap':(w*w-(w-8)**2)-(16*w-64),
    }
    for name,diff in identities.items():
        if diff.c:raise ValueError(f'nonzero polynomial: {name}: {diff.c}')
    return {'identities_verified':len(identities),'method':'sparse integer coefficient expansion','names':list(identities)}
if __name__=='__main__':
    import json
    print(json.dumps(verify_polynomials()))
