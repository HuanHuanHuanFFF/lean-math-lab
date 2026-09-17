"""Exact models and proven bases from the parent's official Magma receipt."""
from fractions import Fraction as F

BASES={
    7:[(F(40),F(660)),(F(110),F(-320))],
    11:[(F(-2,9),F(53504,27)),(F(142),F(-768))],
    16:[(F(538,9),F(-60544,27)),(F(202),F(1152))],
    20:[(F(458),F(7520)),(F(1354),F(-48288)),(F(-304),F(5180)),(F(2762),F(-144032))],
    25:[(F(2014,9),F(-20800,27)),(F(302),F(-1472)),(F(6334,25),F(32448,125))],
}

def coefficients(k):return -36*(8*k*k+243),32*k**4+31104*k*k-314928

def double_point(point,A,B):
    x,y=point
    assert y*y==x**3+A*x+B and y
    m=(3*x*x+A)/(2*y)
    xx=m*m-2*x;yy=-y+m*(x-xx)
    assert yy*yy==xx**3+A*xx+B
    return xx,yy

def field_ops(k):
    def co(a):return tuple(map(F,a)) if isinstance(a,(list,tuple)) else (F(a),F(0),F(0))
    def add(a,b):return tuple(x+y for x,y in zip(co(a),co(b)))
    def neg(a):return tuple(-x for x in co(a))
    def mul(a,b):
        a,b=co(a),co(b);out=[F(0)]*5
        for i in range(3):
            for j in range(3):out[i+j]+=a[i]*b[j]
        for n in (4,3):out[n-2]+=27*out[n];out[n-3]-=2*k*out[n]
        return tuple(out[:3])
    def inv(a):
        a=co(a)
        cols=[mul(a,tuple(F(i==j) for i in range(3))) for j in range(3)]
        rows=[[cols[j][i] for j in range(3)]+[F(i==0)] for i in range(3)]
        for j in range(3):
            p=next(p for p in range(j,3) if rows[p][j])
            rows[j],rows[p]=rows[p],rows[j]
            pivot=rows[j][j];rows[j]=[v/pivot for v in rows[j]]
            for p in range(3):
                if p!=j:
                    q=rows[p][j];rows[p]=[x-q*y for x,y in zip(rows[p],rows[j])]
        result=tuple(rows[i][3] for i in range(3))
        assert mul(a,result)==co(1)
        return result
    return co,add,neg,mul,inv

def doubled_infinity(k):
    A,B=coefficients(k)
    co,add,neg,mul,inv=field_ops(k)
    x=co((189,2*k,-9));y=co((4*k*k-2187,-18*k,81))
    assert mul(y,y)==add(add(mul(mul(x,x),x),mul(A,x)),B)
    slope=mul(add(mul(3,mul(x,x)),A),inv(mul(2,y)))
    xx=add(mul(slope,slope),mul(-2,x))
    yy=add(neg(y),mul(slope,add(x,neg(xx))))
    assert mul(yy,yy)==add(add(mul(mul(xx,xx),xx),mul(A,xx)),B)
    assert xx[1] or xx[2], '2Q must be non-rational for nonzero logarithm.'
    # Cubic has no rational root, checked by the rational-root theorem.
    assert all(d**3-27*d+2*k for d in range(-2*k,2*k+1) if d and (2*k)%d==0)
    return xx,yy
