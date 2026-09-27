"""Independent rational Euclidean derivation of the three cubic certificates."""
from fractions import Fraction as F
from math import lcm

def trim(a):
    a=list(a)
    while a and a[-1]==0:a.pop()
    return a

def plus(a,b):
    return trim([(a[i] if i<len(a) else 0)+(b[i] if i<len(b) else 0) for i in range(max(len(a),len(b)))])
def times(a,b):
    out=[F(0)]*max(0,len(a)+len(b)-1)
    for i,c in enumerate(a):
        for j,d in enumerate(b):out[i+j]+=c*d
    return trim(out)
def scaled(a,k):return trim([c*k for c in a])
def divrem(a,b):
    a=trim(a);b=trim(b)
    if not b:raise ZeroDivisionError
    q=[F(0)]*max(0,len(a)-len(b)+1)
    while len(a)>=len(b):
        deg=len(a)-len(b);c=a[-1]/b[-1];q[deg]+=c
        a=plus(a,[F(0)]*deg+scaled(b,-c))
    return trim(q),a

def derive(f,g):
    oldr,r=list(map(F,f)),list(map(F,g));olds,s=[F(1)],[];oldt,t=[],[F(1)]
    while r:
        q,newr=divrem(oldr,r)
        oldr,r=r,newr
        olds,s=s,plus(olds,scaled(times(q,s),-1))
        oldt,t=t,plus(oldt,scaled(times(q,t),-1))
    assert len(oldr)==1
    olds=scaled(olds,1/oldr[0]);oldt=scaled(oldt,1/oldr[0])
    den=lcm(*(v.denominator for v in olds+oldt))
    return [int(v*den) for v in olds],[int(v*den) for v in oldt],den

if __name__=='__main__':
    import json
    c=[-13,-72,-54,108];j=[7,19,-20,-42,36]
    print(json.dumps([derive(c,[j[0]-s]+j[1:]) for s in range(3)],indent=2))
