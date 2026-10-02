"""Small exact two-variable polynomial utilities. Python standard library only."""
from fractions import Fraction as Q
from math import comb

def need(x,message):
    if not x: raise AssertionError(message)
def clean(p): return {ab:c for ab,c in p.items() if c}
def add(*ps):
    o={}
    for p in ps:
        for ab,c in p.items(): o[ab]=o.get(ab,0)+c
    return clean(o)
def scale(p,c): return clean({ab:c*v for ab,v in p.items()})
def mul(p,q):
    o={}
    for (a,b),c in p.items():
        for (d,e),v in q.items():o[a+d,b+e]=o.get((a+d,b+e),0)+c*v
    return clean(o)
def power(p,e):
    o={(0,0):1}
    for _ in range(e):o=mul(o,p)
    return o
def val(p,x,y): return sum(c*x**a*y**b for (a,b),c in p.items())
def sub(p,x,y):
    o={}
    for (a,b),c in p.items():o=add(o,scale(mul(power(x,a),power(y,b)),c))
    return o
def rows(p):
    return [[a,b,int(c)] for (a,b),c in sorted(p.items())]
def poly(rs):return clean({(a,b):int(c) for a,b,c in rs})
def frac(x):
    x=Q(x);return [x.numerator,x.denominator]
def translated(p):
    # Same original j=7+X, d=7+D, n=21+2X+D.
    return sub(p,{(0,0):21,(1,0):2,(0,1):1},{(0,0):7,(1,0):1})
def sign_certificate(p,sign):
    t=translated(p)
    need(t and t.get((0,0),0)*sign>0,'strict translated constant missing')
    need(all(c*sign>=0 for c in t.values()),'translated sign certificate failed')
    return {'sign':sign,'substitution':'j=7+X,d=7+D,n=21+2X+D; X,D>=0','coefficients':rows(t)}
def affine_rect(p,lx,hx,ly,hy):
    return sub(p,{(0,0):lx,(1,0):hx-lx},{(0,0):ly,(0,1):hy-ly})
def bernstein_coefficients(p,dx,dy):
    return [[i,k,frac(sum(c*Q(comb(i,a),comb(dx,a))*Q(comb(k,b),comb(dy,b))
             for (a,b),c in p.items() if a<=i and b<=k))]
            for i in range(dx+1) for k in range(dy+1)]
def bernstein_certificate(p,sign,steps,nmin=352):
    deg=max(a+b for a,b in p)
    # F(n,j)/n^deg, u=j/n, v=1/n.
    uv={(b,deg-a-b):sign*c for (a,b),c in p.items()}
    dx=max(a for a,b in uv);dy=max(b for a,b in uv)
    boxes=[]
    for i in range(steps):
        l=Q(i,2*steps);h=Q(i+1,2*steps)
        co=bernstein_coefficients(affine_rect(uv,l,h,Q(0),Q(1,nmin)),dx,dy)
        need(all(v[0]>0 and v[1]>0 for _,_,v in co),'Bernstein positivity failed')
        boxes.append({'u':[frac(l),frac(h)],'v':[[0,1],[1,nmin]],'coefficients':co})
    return {'degree':deg,'sign':sign,'boxes':boxes,'box_count':steps,'strict_positive':True}
N={(1,0):1};J={(0,1):1};ONE={(0,0):1}
NM1=add(N,scale(ONE,-1));JM1=add(J,scale(ONE,-1))
BASIS=[mul(N,NM1),mul(J,JM1),mul(J,NM1),mul(power(N,2),NM1),
       mul(mul(N,J),JM1),mul(power(J,2),JM1),mul(mul(N,J),NM1)]
def from_vector(v):
    need(len(v)==7 and all(type(c) is int for c in v),'invalid basis vector')
    return add(*(scale(p,c) for p,c in zip(BASIS,v)))
