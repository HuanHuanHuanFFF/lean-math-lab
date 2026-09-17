"""Integer outward intervals for Carlson RF, then an exact lattice-distance certificate.

All enclosure endpoints and acceptance comparisons are integers/Fractions.  SymPy
is only used to discover a unimodular lattice basis; its LLL label is not trusted.
"""
from __future__ import annotations

from dataclasses import dataclass
from fractions import Fraction as F
from math import isqrt
from pathlib import Path
from datetime import datetime, timezone
import hashlib
import json
import time

import sympy as sp

BITS = 2048
SCALE = 1 << BITS
ITERATIONS = 1100
C = 10 ** 465
M0 = 10 ** 150


def ceildiv(a, b):
    assert b > 0
    return -((-a) // b)


@dataclass(frozen=True)
class I:
    lo: int
    hi: int

    def __post_init__(self):
        assert self.lo <= self.hi

    @staticmethod
    def rational(n, d=1):
        if d < 0:
            n, d = -n, -d
        assert d > 0
        return I((n*SCALE)//d, ceildiv(n*SCALE, d))

    @staticmethod
    def coerce(v):
        if isinstance(v, I): return v
        if isinstance(v, F): return I.rational(v.numerator, v.denominator)
        return I.rational(int(v))

    def __add__(self, other):
        other = I.coerce(other)
        return I(self.lo+other.lo, self.hi+other.hi)

    __radd__ = __add__

    def __neg__(self): return I(-self.hi, -self.lo)
    def __sub__(self, other): return self + (-I.coerce(other))
    def __rsub__(self, other): return I.coerce(other) - self

    def __mul__(self, other):
        other = I.coerce(other)
        vals = [a*b for a in (self.lo,self.hi) for b in (other.lo,other.hi)]
        return I(min(vals)//SCALE, ceildiv(max(vals),SCALE))

    __rmul__ = __mul__

    def reciprocal(self):
        assert not self.lo <= 0 <= self.hi
        if self.hi < 0: return -((-self).reciprocal())
        return I((SCALE*SCALE)//self.hi, ceildiv(SCALE*SCALE,self.lo))

    def __truediv__(self, other): return self * I.coerce(other).reciprocal()
    def __rtruediv__(self, other): return I.coerce(other) / self

    def __pow__(self, exponent):
        assert exponent >= 0
        out = I.rational(1)
        for _ in range(exponent): out = out*self
        return out

    def sqrt(self):
        assert self.lo >= 0
        lower = isqrt(self.lo*SCALE)
        upper = isqrt(self.hi*SCALE)
        if upper*upper < self.hi*SCALE: upper += 1
        return I(lower,upper)

    def sign(self):
        assert self.lo > 0 or self.hi < 0
        return 1 if self.lo > 0 else -1

    def nearest_scaled_integer(self, factor):
        low = (2*self.lo*factor+SCALE)//(2*SCALE)
        high = (2*self.hi*factor+SCALE)//(2*SCALE)
        assert low == high, 'rounding interval crosses a half integer'
        return low

    def record(self): return {'lo':self.lo,'hi':self.hi}
    def display(self): return float(F(self.lo+self.hi,2*SCALE))


def theta_interval():
    lo = (-53*SCALE)//10
    hi = ceildiv(-21*SCALE,4)
    def f(v): return v**3-27*v*SCALE*SCALE+4*SCALE**3
    assert f(lo) < 0 < f(hi)
    while hi-lo > 1:
        mid = (lo+hi)//2
        if f(mid) < 0: lo = mid
        else: hi = mid
    assert f(lo) < 0 < f(hi)
    return I(lo,hi)


def RF(x,y,z):
    x,y,z = I.coerce(x),I.coerce(y),I.coerce(z)
    assert min(x.lo,y.lo,z.lo) >= 0
    for _ in range(ITERATIONS):
        a,b,c = x.sqrt(),y.sqrt(),z.sqrt()
        lam = a*b+b*c+c*a
        x,y,z = (x+lam)/4,(y+lam)/4,(z+lam)/4
    lowarg = min(x.lo,y.lo,z.lo)
    higharg = max(x.hi,y.hi,z.hi)
    assert lowarg > 0
    # RF is decreasing in each positive argument and RF(t,t,t)=1/sqrt(t).
    lower = I(higharg,higharg).sqrt().reciprocal().lo
    upper = I(lowarg,lowarg).sqrt().reciprocal().hi
    return I(lower,upper)


def double_fraction(point):
    x,y = point
    slope = (3*x*x-120*x-8700)/(2*y)
    nx = slope*slope+60-2*x
    ny = -y+slope*(x-nx)
    assert ny*ny == nx**3-60*nx*nx-8700*nx
    return nx,ny


def double_interval(x,y):
    slope = (3*x*x-120*x-8700)/(2*y)
    nx = slope*slope+60-2*x
    ny = -y+slope*(x-nx)
    return nx,ny


def dot(a,b): return sum((x*y for x,y in zip(a,b)),F(0))


def gram_schmidt(rows):
    stars=[]
    norms=[]
    for row in rows:
        original=[F(x) for x in row]
        v=original[:]
        for star,norm in zip(stars,norms):
            mu=dot(original,star)/norm
            v=[x-mu*y for x,y in zip(v,star)]
        norm=dot(v,v)
        assert norm>0
        stars.append(v);norms.append(norm)
    return stars,norms


def main():
    began=time.perf_counter()
    th=theta_interval()
    root6=I.rational(6).sqrt()
    e1=30+40*root6;e2=I.rational(0);e3=30-40*root6
    omega=2*RF(0,e1-e2,e1-e3)
    assert omega.lo > SCALE//5 and omega.hi < SCALE
    A=(F(-290,9),F(11600,27));B=(F(-60),F(-300))
    a2=tuple(I.coerce(a) for a in double_fraction(A))
    b2=tuple(I.coerce(a) for a in double_fraction(B))
    tau=-9*th*th+4*th+209
    nu=81*th*th-36*th-2171
    q2=double_interval(tau,nu)
    logs={};phis={};point_records={}
    for name,(x,y) in [('A2',a2),('B2',b2),('Q2',q2)]:
        assert (x-e1).lo > 0
        ell=RF(x-e1,x-e2,x-e3)
        if y.sign()>0: ell=-ell
        phi=ell/omega
        assert phi.lo > -SCALE//2 and phi.hi < SCALE//2
        logs[name]=ell;phis[name]=phi
        point_records[name]={'x':x.record(),'y':y.record()}
    r1=phis['A2'].nearest_scaled_integer(C)
    r2=phis['B2'].nearest_scaled_integer(C)
    r0=phis['Q2'].nearest_scaled_integer(C)
    base=sp.Matrix([[1,0,r1],[0,1,r2],[0,0,C]])
    reduced,transform=base.lll_transform(delta=sp.Rational(3,4))
    assert transform.det() in (-1,1)
    assert transform*base == reduced
    rows=[[int(a) for a in row] for row in reduced.tolist()]
    stars,norms=gram_schmidt(rows)
    target=[F(0),F(0),F(r0)]
    coord=dot(target,stars[-1])/norms[-1]
    nearest=(2*coord.numerator+coord.denominator)//(2*coord.denominator)
    frac=coord-nearest
    distance_squared=frac*frac*norms[-1]
    assert distance_squared > 16*M0*M0
    result={
        'status':'PASS','utc':datetime.now(timezone.utc).isoformat(),
        'arithmetic':'integer outward intervals and exact Fraction lattice certificate',
        'bits':BITS,'rf_duplication_iterations':ITERATIONS,
        'theta':th.record(),'omega':omega.record(),
        'doubled_points':point_records,
        'elliptic_logs':{k:v.record() for k,v in logs.items()},
        'normalized_logs':{k:v.record() for k,v in phis.items()},
        'normalized_log_displays':{k:v.display() for k,v in phis.items()},
        'C':C,'M0':M0,'rounded_logs':{'r1':r1,'r2':r2,'r0':r0},
        'input_basis':[[int(a) for a in row] for row in base.tolist()],
        'unimodular_transform':[[int(a) for a in row] for row in transform.tolist()],
        'reduced_basis':rows,
        'projection_distance_squared':[distance_squared.numerator,distance_squared.denominator],
        'distance_squared_over_M0_squared_floor':distance_squared//(M0*M0),
        'distance_squared_gt_16_M0_squared':True,
        'conditional_conclusion':'with the frozen analytic contract: M<50 and s<45080',
        'elapsed_seconds':round(time.perf_counter()-began,6),
        'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
    }
    stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
    out=Path(__file__).with_name(f'stage05-rf-lll-{stamp}.json')
    out.write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'status':'PASS','saved':out.name,
                      'omega_display':omega.display(),
                      'normalized_logs':result['normalized_log_displays'],
                      'distance_ratio_floor':result['distance_squared_over_M0_squared_floor'],
                      'strict_distance_contract':True,
                      'elapsed_seconds':result['elapsed_seconds']},separators=(',',':')))


if __name__=='__main__': main()
