"""Independent stdlib polynomial arithmetic and rational-root enumeration.
Does not import the builder or SymPy. Finite checks are not an NC proof.
"""
from __future__ import annotations
import argparse,copy,json,math
from fractions import Fraction as F
from pathlib import Path

class Poly:
    def __init__(self,n,terms=None):
        self.n=n;self.d={m:F(c) for m,c in (terms or {}).items() if c}
    @classmethod
    def const(cls,n,c):return cls(n,{(0,)*n:F(c)})
    @classmethod
    def var(cls,n,i):
        m=[0]*n;m[i]=1;return cls(n,{tuple(m):F(1)})
    def co(self,o):return o if isinstance(o,Poly) else Poly.const(self.n,o)
    def __add__(self,o):
        o=self.co(o);d=self.d.copy()
        for m,c in o.d.items():d[m]=d.get(m,F(0))+c
        return Poly(self.n,d)
    __radd__=__add__
    def __neg__(self):return Poly(self.n,{m:-c for m,c in self.d.items()})
    def __sub__(self,o):return self+-self.co(o)
    def __rsub__(self,o):return self.co(o)+-self
    def __mul__(self,o):
        o=self.co(o);d={}
        for m,c in self.d.items():
            for n,b in o.d.items():
                k=tuple(a+b for a,b in zip(m,n));d[k]=d.get(k,F(0))+c*b
        return Poly(self.n,d)
    __rmul__=__mul__
    def __pow__(self,n):
        assert isinstance(n,int) and n>=0
        p=Poly.const(self.n,1)
        for _ in range(n):p=p*self
        return p
    def enc(self):return [[list(m),str(c)] for m,c in sorted(self.d.items(),reverse=True)]

def divisors(n):
    out=[]
    for d in range(1,math.isqrt(n)+1):
        if n%d==0:
            out.append(d)
            if d*d!=n:out.append(n//d)
    return sorted(out)

def rational_roots(A,rho):
    roots=set()
    # Standard rational-root candidate superset, not the new cubic classification.
    for a in divisors(A):
        for b in divisors(rho):
            if math.gcd(a,b)!=1:continue
            for aa in (a,-a):
                if rho*aa**3-2*A*aa*aa*b-2*A*aa*b*b+A*b**3==0:roots.add(F(aa,b))
    return [[q.numerator,q.denominator] for q in sorted(roots)]

def verify(cert):
    assert cert['schema']=='B699-STRIP-EXP-RAT-v1'
    x,e,z,t=[Poly.var(4,i) for i in range(4)];A=x*t-z*e**2;w=2*x+e;rho=e*t
    expected=[('shift',e*(4*z*x+4*z*e+t)-4*x*(z*e+t),rho-4*A),
              ('recovery_cubic',e**2*(4*x*(4*z*x+6*z*e+3*t)+2*(rho-3*A)),
               2*(t*w**3-A*(2*w*w+2*w*e-e*e)))]
    assert len(cert['identities'])==len(expected)
    for row,(name,L,R) in zip(cert['identities'],expected):
        assert row==dict(name=name,left=L.enc(),right=R.enc());assert not (L-R).d
    a,v=[Poly.var(2,i) for i in range(2)];A=1+a;expected=[]
    for name,g,ep,mult in [('strip_k1',F(3,2)*A+v,2*A+F(2,3)*v,36),
                           ('strip_k2',3*A+v,5*A+F(4,3)*v,9)]:
        p=mult*(3*g*g-ep*ep-A)
        assert all(c>=0 for c in p.d.values()) and p.d.get((0,0),0)>0
        expected.append(dict(name=name,coefficients=p.enc()))
    assert cert['positive_polynomials']==expected
    y,d,a=[Poly.var(3,i) for i in range(3)];expected=[]
    data=[('negative_one',a,a*d*(d*d+2*d-2),a*(d*y+1),(d*d+2*d-2)*y*y-(d+2)*y+1),
          ('negative_three',27,d*(d*d+6*d-18),d*y+3,(d*d+6*d-18)*y*y-(3*d+18)*y+9),
          ('zero',a,3*a,a*(y-1),3*y*y+y-1),
          ('positive_23',27,23,y-3,23*y*y+15*y-9),
          ('positive_77',27,77,7*y-3,11*y*y-3*y-9),
          ('positive_115',27,115,5*y-3,23*y*y+3*y-9)]
    for name,A,R,L,Q in data:
        left=R*y**3-2*A*y*y-2*A*y+A;right=L*Q
        assert not (left-right).d
        expected.append(dict(name=name,left=left.enc(),right=right.enc()))
    assert cert['factor_identities']==expected
    reg=cert['root_regression'];assert reg['limit']==2001
    roots=[];tested=0
    for A in (1,9,27):
        for rho in range(1,reg['limit']+1,2):
            rr=rational_roots(A,rho);tested+=1
            if rr:roots.append(dict(A=A,rho=rho,roots=rr))
    assert reg['tested']==tested and reg['rows']==roots
    expected=dict(cutoff=164,small_comparison=81*82**3,
                  squared_height_coefficient=4*81**3,power_of_two=2**22)
    assert cert['constants']==expected
    assert 164**2<81*82**3 and 4*81**3<2**22
    for B in (1,3,9,27):assert (6*B+2)**2-6*B*(6*B+2)-2*B>0
    return dict(status='PASS_VERIFY',polynomial_identities=8,positive_polynomials=2,
                root_regression_inputs=tested,root_classes=len(roots))

def negative_tests(cert):
    def broken(i):
        c=copy.deepcopy(cert)
        if i==0:c['identities'][0]['left'][0][1]='999'
        if i==1:c['positive_polynomials'][0]['coefficients'][0][1]='-1'
        if i==2:c['factor_identities'][1]['right'][0][1]='999'
        if i==3:c['root_regression']['rows'].pop()
        if i==4:c['root_regression']['rows'][0]['roots'][0][0]=999
        if i==5:c['constants']['power_of_two']=2**20
        return c
    for i in range(6):
        try:verify(broken(i))
        except (AssertionError,KeyError,ValueError):continue
        raise AssertionError(f'corruption {i} accepted')
    return 6

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',type=Path,required=True)
    ap.add_argument('--output',type=Path,required=True);ap.add_argument('--negative-tests',action='store_true')
    args=ap.parse_args();cert=json.loads(args.certificate.read_text());r=verify(cert)
    if args.negative_tests:r['corruptions_rejected']=negative_tests(cert)
    args.output.parent.mkdir(parents=True,exist_ok=True);args.output.write_text(json.dumps(r,indent=2)+'\n')
    print(json.dumps(r))
