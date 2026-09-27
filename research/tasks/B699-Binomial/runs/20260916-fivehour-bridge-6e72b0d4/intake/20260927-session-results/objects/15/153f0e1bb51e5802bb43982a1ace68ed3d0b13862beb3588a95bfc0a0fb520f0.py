"""Tiny exact multivariate polynomial checker; no computer algebra dependency."""
from __future__ import annotations
N=4 # z,a,D,b
class Poly:
    def __init__(self,x=0):
        if isinstance(x,dict):self.c={k:int(v) for k,v in x.items() if v}
        elif isinstance(x,Poly):self.c=x.c.copy()
        else:self.c={(0,)*N:int(x)} if x else {}
    def __add__(self,x):
        x=Poly(x);d=self.c.copy()
        for k,v in x.c.items():d[k]=d.get(k,0)+v
        return Poly(d)
    __radd__=__add__
    def __neg__(self):return Poly({k:-v for k,v in self.c.items()})
    def __sub__(self,x):return self+-Poly(x)
    def __rsub__(self,x):return Poly(x)+-self
    def __mul__(self,x):
        x=Poly(x);d={}
        for k,v in self.c.items():
            for h,w in x.c.items():
                t=tuple(i+j for i,j in zip(k,h));d[t]=d.get(t,0)+v*w
        return Poly(d)
    __rmul__=__mul__
    def __pow__(self,n):
        r=Poly(1)
        for _ in range(n):r=r*self
        return r
    def encoded(self):return [[list(k),v] for k,v in sorted(self.c.items())]

def var(i):
    x=[0]*N;x[i]=1;return Poly({tuple(x):1})

def verify_algebra():
    z,a,D,b=(var(i) for i in range(N));ident=[]
    def check(name,L,R):
        L=Poly(L);R=Poly(R);assert not (L-R).c,name
        ident.append({'id':name,'equal':True,'coefficients':L.encoded()})
    d=3*z-1;G=(z+1)*(2*z-3)
    check('G_IN_D',9*G,2*d*d+d-28)
    check('G_GAP',9*(d*d-4*G),d*d-4*d+112)
    for e in [1,-1]:
        P=d*a+3*e;Q=3*P+d;n=P*Q+1;j=P*(P+a+z)+(1-e)//2
        check(f'ORIGINAL_J_{e}',j,Q*(z*a+e)+(e+1)//2)
        U=P+a+z if e==1 else 2*P+d-a-z
        check(f'ORIGINAL_U_{e}',j if e==1 else n-j,P*U)
        if e==1:
            check('T0_G_PLUS',z*z*n+G,d*(3*a*z*z-a*z+3*z+1)*U)
            check('T0_D_PLUS',n-3*(P-a)*U,(a+1)*(3*a-2))
        else:
            check('T0_G_MINUS',(2*z-1)**2*n+G,d*(6*a*z*z-5*a*z+a-6*z+4)*U)
            check('T0_D_MINUS',4*n-(6*P+3*a)*U,(a+1)*(3*a-2))
        p=4*D*a+3*e;nD=p*(3*p+4*D)+1
        twicef=12*D*D*a*a+2*D*(2*D+9*e)*a+7+3*e*D
        check(f'TWO_ADIC_RECOVERY_{e}',nD,4*twicef)
        aa=2*z-1-b;pp=d*aa+3*e
        U=pp+aa+z if e==1 else 2*pp+d-aa-z
        t=1-3*b if e==1 else -6*b-4;c=12 if e==1 else 3*b+14
        check(f'DEFICIT_LINEAR_{e}',U-(3 if e==1 else 6)*G,t*z+c)
        C=-9*(b-3)*(3*b+11) if e==1 else -36*(b+2)*(3*b-4)
        check(f'DEFICIT_CONSTANT_{e}',t*t*G-(t*z+c)*(2*t*z-t-2*c),C)
    x=-3*a-1
    check('PLUS_MINUS_ROOT_PAIR',12*D*D*x*x+6*D*(2*D-9)*x+9*(7-3*D),
          9*(12*D*D*a*a+2*D*(2*D+9)*a+7+3*D))
    pp=d*(2*z-4)+3;qq=3*pp+d
    check('RESONANCE_Q_FACTORIZATION',qq,(3*z-4)*(6*z-5))
    C=54*z**3-162*z*z+153*z-47
    check('RESONANCE_N_FACTORIZATION',pp*qq+1,(2*z-3)*C)
    check('RESONANCE_U',pp+(2*z-4)+z,d*(2*z-3))
    check('RESONANCE_GCD_REMAINDER',C,d*(18*z*z-48*z+35)-12)
    check('RESONANCE_CUBE_IN_W',C,54*(z-1)**3-9*(z-1)-2)
    # Here a is an independent variable t, not a top block.
    check('CUBE_GAP', (6*a)**3-9*a-1-(6*a-1)**3,27*a*(4*a-1))
    pp=d*(2*z-2)+3
    check('WEAK_QUARTIC',pp*(3*pp+d)+1,108*z**4-270*z**3+342*z*z-217*z+71)
    check('WEAK_BAND_LOW',2*pp-d*d,3*z*z-10*z+9)
    check('WEAK_BAND_HIGH',d*d-pp,3*z*z+2*z-4)
    pp=d*(2*z-1)-3
    check('NEGATIVE_EDGE_N',pp*(3*pp+d)+1,108*z**4-162*z**3-18*z*z+59*z+15)
    return {'ring':'Z[z,a,D,b]','count':len(ident),'identities':ident}
