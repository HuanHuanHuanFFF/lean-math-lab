"""Independent sparse Laurent-polynomial verification; Python standard library only."""
from fractions import Fraction as F
from itertools import permutations
from pathlib import Path
from datetime import datetime,timezone
import hashlib,json

NAMES=('x','a','b','rho','z','k','D','W')
ZERO=(0,)*len(NAMES)

class P:
    def __init__(self,terms):self.terms={m:F(c) for m,c in terms.items() if c}
    @staticmethod
    def co(v):return v if isinstance(v,P) else P({ZERO:F(v)})
    @staticmethod
    def var(name):
        powers=list(ZERO);powers[NAMES.index(name)]=1
        return P({tuple(powers):1})
    def __add__(self,v):
        out=dict(self.terms)
        for m,c in P.co(v).terms.items():out[m]=out.get(m,F(0))+c
        return P(out)
    __radd__=__add__
    def __neg__(self):return P({m:-c for m,c in self.terms.items()})
    def __sub__(self,v):return self+-P.co(v)
    def __rsub__(self,v):return P.co(v)+-self
    def __mul__(self,v):
        out={}
        for a,x in self.terms.items():
            for b,y in P.co(v).terms.items():
                m=tuple(i+j for i,j in zip(a,b));out[m]=out.get(m,F(0))+x*y
        return P(out)
    __rmul__=__mul__
    def __pow__(self,n):
        if n<0:
            assert len(self.terms)==1
            (m,c),=self.terms.items()
            return P({tuple(i*n for i in m):c**n})
        result=P.co(1)
        for _ in range(n):result=result*self
        return result
    def diff(self,name):
        j=NAMES.index(name);out={}
        for m,c in self.terms.items():
            if m[j]:
                mm=list(m);mm[j]-=1;out[tuple(mm)]=c*m[j]
        return P(out)
    def iszero(self):return not self.terms

def determinant(a):
    total=P.co(0)
    for pp in permutations(range(3)):
        sign=-1 if sum(pp[i]>pp[j] for i in range(3) for j in range(i+1,3))%2 else 1
        total+=sign*a[0][pp[0]]*a[1][pp[1]]*a[2][pp[2]]
    return total

x,a,b,rho,z,k,D,W=[P.var(n) for n in NAMES]
def cubic(d,w,zz,kk,ep):
    return w**3-27*w*d**2+2*kk*d**3+ep*(18*d*w+4*kk*d**2)*zz-(9*w+2*kk*d)*zz**2
def raw(d,xx,aa,bb,rr,zz):
    return 12*aa*(aa-bb*d)*(aa-2*bb*d)-(rr*d-3*aa*bb**2)*(xx**2-2*zz**2)

C=8*k*(729-k**2);s0=486-4*k**2;L=9*W+2*k*D
A=-36*(8*k**2+243);B=32*k**4+31104*k**2-314928
T=(C*D-s0*L)*F(1,9);Z=L
assert (-16*(4*A**3+27*B**2)+442368*k**2*(k**2-729)**2*(k**2-54)).iszero()
checks=[]
for ep in (1,-1):
    V=C*(z-ep*D)
    assert (V**2*Z-T**3-A*T*Z**2-B*Z**3+C**2*cubic(D,W,z,k,ep)).iszero()
    matrix=[[coord.diff(v) for v in ('D','W','z')] for coord in (T,V,Z)]
    assert (determinant(matrix)+C**2).iszero()
    d=x-ep*z;w=6*a*b**-1-6*d;kk=27-9*rho*b**-3
    f=raw(d,x,a,b,rho,z)
    assert (cubic(d,w,z,kk,ep)-18*b**-3*f).iszero()
    assert (raw(d,x,a,b,3*b**3,z)-3*(a-b*d)*(4*a*(a-2*b*d)+b**2*(x**2-2*z**2))).iszero()
    assert (raw(d,x,a,b,6*b**3,z)-3*(a-2*b*d)*(4*a*(a-b*d)+b**2*(x**2-2*z**2))).iszero()
    checks.append({'epsilon':ep,'G_transfer':True,'projective_identity':True,'linear_determinant':True,'both_singular_factorizations':True})
here=Path(__file__).resolve().parent
out={'status':'PASS','implementation':'stdlib Fraction sparse Laurent polynomials, formal differentiation, permutation determinant',
     'checks':checks,'discriminant_factorization':True,
     'scope':'Independent all-parameter algebra only. The source theorem and inequality arguments require paper acceptance.',
     'fixed_author_source_sha256':hashlib.sha256((here/'stage11_general_loss.py').read_bytes()).hexdigest(),
     'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
dest=here/f'stage11-general-loss-independent-{stamp}.json'
dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':'PASS','output':dest.name,'all_parameter_algebra':'verified twice with different polynomial implementations'}))
