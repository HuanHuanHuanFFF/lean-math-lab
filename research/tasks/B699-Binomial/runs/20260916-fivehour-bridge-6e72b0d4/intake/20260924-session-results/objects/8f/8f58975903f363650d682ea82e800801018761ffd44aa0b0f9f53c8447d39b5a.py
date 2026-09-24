"""Rational interval checks of the analytic formulas, not NC examples.
Every sample uses the exact positive real root of the complete norm, enclosed
by integer-square-root rational intervals. No floating point is used.
"""
from __future__ import annotations
from dataclasses import dataclass
from fractions import Fraction as Q
from math import isqrt
from pathlib import Path
import argparse,json
from verify import pell,require

SCALE=10**300
@dataclass(frozen=True)
class I:
    lo:Q
    hi:Q
    def __post_init__(self):
        require(self.lo<=self.hi)
    @staticmethod
    def of(x):return x if isinstance(x,I) else I(Q(x),Q(x))
    def __add__(self,z):
        z=I.of(z);return I(self.lo+z.lo,self.hi+z.hi)
    __radd__=__add__
    def __neg__(self):return I(-self.hi,-self.lo)
    def __sub__(self,z):return self+-I.of(z)
    def __rsub__(self,z):return I.of(z)+-self
    def __mul__(self,z):
        z=I.of(z);v=[self.lo*z.lo,self.lo*z.hi,self.hi*z.lo,self.hi*z.hi]
        return I(min(v),max(v))
    __rmul__=__mul__
    def __truediv__(self,z):
        z=I.of(z);require(z.lo>0 or z.hi<0,'interval denominator contains zero')
        return self*I(1/z.hi,1/z.lo)
    def __rtruediv__(self,z):return I.of(z)/self
    def __pow__(self,n):
        require(isinstance(n,int) and n>=0)
        if n==0:return I.of(1)
        if n%2:return I(self.lo**n,self.hi**n)
        if self.lo<=0<=self.hi:return I(Q(0),max(self.lo**n,self.hi**n))
        return I(min(self.lo**n,self.hi**n),max(self.lo**n,self.hi**n))
    def sqrt(self):
        require(self.lo>=0)
        def bound(v,upper):
            a=isqrt(v.numerator*SCALE*SCALE//v.denominator)
            return Q(a+(1 if upper else 0),SCALE)
        return I(bound(self.lo,False),bound(self.hi,True))
    def absmax(self):return max(abs(self.lo),abs(self.hi))

def upper_summary(v):
    scale=10**12
    return str(Q((v.numerator*scale+v.denominator-1)//v.denominator,scale))

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True);args=ap.parse_args()
    rt=I.of(3).sqrt();rows=[]
    for q in (6,8,9,11,12,15,20):
        d,y=pell(q);nb=d.bit_length()
        for e in sorted({16,max(16,nb//5),max(16,2*nb//5),max(16,(nb-12)//2)}):
            a=2**e;b=Q(3*(d-1),a);k=b/a
            if k<=16:continue
            r=Q(a*y,d)
            hh=3+5*r+2*r*r+2*(I.of((1+r)**5/r-Q(1,r*d**3))).sqrt()
            C=4*b*hh-16*a*d-120*y-27*b
            require(C.lo>220)
            M=C+80;K=16+2*C/(5*rt)
            k1=rt*K/8;k2=-21*K/320+Q(3,2)+24/K
            k3=3*rt*(21*K**3-160*K*K+16384)/(2560*K*K)
            b0=rt*(Q(9,32)*k-Q(15,4)-60/k)
            b1=-Q(45,128)*k+Q(45,16)-144/(k*k)
            approx=(5*rt/2)*(k-16)-Q(15,16)*k/a+b0/(a*a)+b1/a**3
            errC=C-approx
            require(errC.absmax()<4*k/a**4,('C3',q,e))
            errK=I.of(k)-K-k1/a-k2/a**2-k3/a**3
            require(errK.absmax()<4*M.lo/a**4,('inverse',q,e))
            Z=20*b-320*a-C
            F=3*Z*Z-64*(C*a+15)**2
            L=(-42*C**4+489600*C*C+rt*(720*C**3-14976000*C))/(5*(C*C-4800))
            delta=F-L
            HK=45*rt*(21*K**4-608*K**3+5120*K*K+57344*K-262144)/(16*K*K)
            errF=delta-HK/a
            require(errF.absmax()<2**12*M.lo*M.lo/a**2,('F3',q,e))
            require(delta.lo>M.hi*M.hi/(4*a),('positive lower',q,e))
            require(delta.hi<32*M.lo*M.lo/a,('positive upper',q,e))
            cs=C/4;fs=F/16;w=5*fs+42*cs*cs-18000
            V=w*w-97200*cs*cs+194400000
            require(V.lo>4*M.hi**3/a,('V lower',q,e))
            lead=Q(8505,32)*C**3/a
            verr=V-lead
            vbound=2**24*C.lo*C.lo/a+2**21*C.lo**4/a**2+Q(2**35,C.hi)
            require(verr.absmax()<vbound,('V leading',q,e))
            rows.append({'q':q,'A_power_of_two':e,'B_denominator':b.denominator,
                         'C_positive':True,'signed_gap':True,'V_positive':True,
                         'relative_C3_budget':upper_summary(errC.absmax()/(4*k/a**4)),
                         'relative_F3_budget':upper_summary(errF.absmax()/(2**12*M.lo*M.lo/a**2))})
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps({'status':'PASS','samples':len(rows),'scale_digits':300,
        'scope':'Analytic exact-real-root samples. B may be rational; h,C,V are not required to be integers. These are not NC3 inputs.',
        'rows':rows},sort_keys=True,indent=2)+'\n')
    print('RATIONAL_INTERVAL_REGRESSION=PASS; SAMPLES='+str(len(rows)))
if __name__=='__main__':main()
