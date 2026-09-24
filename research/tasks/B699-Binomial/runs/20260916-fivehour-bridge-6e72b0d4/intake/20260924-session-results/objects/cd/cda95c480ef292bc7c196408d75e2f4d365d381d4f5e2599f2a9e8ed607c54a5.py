"""Exact rational interval regression of the asymptotic inequalities.

Test objects use the real positive norm root, not integer h/C or NC3 points.
This is regression evidence in addition to the uniform paper proof.
"""
from dataclasses import dataclass
from fractions import Fraction as F
from math import isqrt
from pathlib import Path
import argparse,json
SCALE=10**70
@dataclass(frozen=True)
class I:
    lo:F
    hi:F
    @staticmethod
    def point(x):
        if isinstance(x,I):return x
        return I(F(x),F(x))
    def __add__(self,b):
        b=I.point(b);return I(self.lo+b.lo,self.hi+b.hi)
    __radd__=__add__
    def __neg__(self):return I(-self.hi,-self.lo)
    def __sub__(self,b):return self+-I.point(b)
    def __rsub__(self,b):return I.point(b)+-self
    def __mul__(self,b):
        b=I.point(b);v=[self.lo*b.lo,self.lo*b.hi,self.hi*b.lo,self.hi*b.hi]
        return I(min(v),max(v))
    __rmul__=__mul__
    def __truediv__(self,b):
        b=I.point(b)
        if b.lo<=0<=b.hi:raise ArithmeticError('division interval contains zero')
        return self*I(1/b.hi,1/b.lo)
    def __rtruediv__(self,b):return I.point(b)/self
    def __pow__(self,n):
        if n<0:return I.point(1)/(self**(-n))
        out=I.point(1)
        for _ in range(n):out=out*self
        return out
    def sqrt(self):
        if self.lo<0:raise ArithmeticError('negative square root interval')
        a=isqrt((self.lo.numerator*SCALE*SCALE)//self.lo.denominator)
        b=isqrt((self.hi.numerator*SCALE*SCALE)//self.hi.denominator)+1
        return I(F(a,SCALE),F(b,SCALE))
    def magnitude(self):return max(abs(self.lo),abs(self.hi))

def ceil_scaled(q,den=10**9):
    z=q*den
    return F(-(-z.numerator//z.denominator),den)

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True);args=ap.parse_args()
    root=I.point(3).sqrt();records=[];maxes=[F(0)]*3
    for A in [32,34,64,256,4096,2**20,2**30]:
        for k in [20,64,1000,10**6]:
            B=k*A;d=I.point(F(A*B,3)+1);y=((d*d+d+1)/3).sqrt()
            r=A*y/d
            omega=(((1+r)**5)/r-1/(r*d**3)).sqrt()
            h=3+5*r+2*r*r+2*omega
            C=4*B*h-16*A*d-120*y-27*B
            M=C+80
            assert C.lo>0 and M.lo>k
            beta=root*(F(9*k,32)-F(15,4)-F(60,k))
            mainC=5*root*F(k-16,2)-F(15*k,16*A)+beta/A**2
            ratios=[(C-mainC).magnitude()/F(8*k,A**3)]
            k0=16+2*C/(5*root)
            k1=root*k0/8
            k2=-F(21,320)*k0+F(3,2)+24/k0
            ratios.append((B-k0*A-k1-k2/A).magnitude()/(3*M.lo/A**2))
            Z=20*B-320*A-C
            FF=3*Z*Z-64*(C*A+15)**2
            LL=320*root*C*k2
            ratios.append((FF-LL).magnitude()/(2**11*M.lo*M.lo/A))
            assert all(x<1 for x in ratios),(A,k,ratios)
            maxes=[max(x,z) for x,z in zip(maxes,ratios)]
            records.append({'A':A,'k':k,'upper_error_ratios':[str(ceil_scaled(x)) for x in ratios]})
    out={'status':'PASS','scale':str(SCALE),'test_objects':28,
         'scope':'exact real-root interval regression, not NC3 examples; universal argument in PROOFS P2-P4',
         'ratio_labels':['C2','B2','UPPER_GAP'],
         'max_upper_ratios':[str(ceil_scaled(x)) for x in maxes],'records':records}
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(out,sort_keys=True,indent=2)+'\n')
    print('EXACT_REAL_ROOT_INTERVAL_REGRESSION=PASS; OBJECTS=28; MAX_RATIOS=',out['max_upper_ratios'])
if __name__=='__main__':main()
