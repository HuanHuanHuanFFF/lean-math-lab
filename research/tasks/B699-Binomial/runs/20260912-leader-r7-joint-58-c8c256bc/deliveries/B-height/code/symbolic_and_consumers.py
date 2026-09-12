"""Polynomial identities and nonempty exact consumer examples, standard library only."""
import argparse,json
from pathlib import Path
from math import gcd,isqrt,comb,prod

class Poly:
    dim=7
    def __init__(self,terms):self.t={k:v for k,v in terms.items() if v}
    @classmethod
    def con(cls,a):return cls({(0,)*cls.dim:a})
    @classmethod
    def var(cls,i):k=[0]*cls.dim;k[i]=1;return cls({tuple(k):1})
    def __add__(self,o):
        if isinstance(o,int):o=Poly.con(o)
        z=self.t.copy()
        for k,v in o.t.items():z[k]=z.get(k,0)+v
        return Poly(z)
    __radd__=__add__
    def __neg__(self):return Poly({k:-v for k,v in self.t.items()})
    def __sub__(self,o):return self+(-o if isinstance(o,Poly) else -o)
    def __rsub__(self,o):return -self+o
    def __mul__(self,o):
        if isinstance(o,int):o=Poly.con(o)
        z={}
        for k,a in self.t.items():
            for l,b in o.t.items():
                m=tuple(x+y for x,y in zip(k,l));z[m]=z.get(m,0)+a*b
        return Poly(z)
    __rmul__=__mul__
    def __pow__(self,e):
        z=Poly.con(1)
        for _ in range(e):z=z*self
        return z
    def zero(self):return not self.t

def identities():
    n,w,h,y,D,x,z=[Poly.var(i) for i in range(7)]
    outer=(h*(2*n-3))**2-h*w*y**2-h*(h-w)-h*(4*h*(n-1)*(n-2)+w-w*y**2)
    middle=((w-2*h)*n+3*h)**2-w*(w-2*h)*y**2-h*(h+4*w)-(w-2*h)*((w-2*h)*n**2+6*h*n-4*h-w*y**2)
    # x,y and n,w are two pairs of coefficients here.
    normprod=(x*n-D*y*w)**2-D*(y*n-x*w)**2-(x*x-D*y*y)*(n*n-D*w*w)
    seven=(5*n+3)**2-35*y*y-29-5*(5*n*n+6*n-4-7*y*y)
    signature=6*x*x-(x+1)*(2*x+1)-(x-1)*(4*x+1)
    fs=[outer,middle,normprod,seven,signature]
    assert all(p.zero() for p in fs)
    return len(fs)

def vp(a,p):
    assert a>0;k=0
    while a%p==0:a//=p;k+=1
    return k

def choose_val(n,k,p):
    out=0;q=p
    while q<=n:out+=n//q-k//q-(n-k)//q;q*=p
    return out

def prime(p):return p>=2 and all(p%d for d in range(2,isqrt(p)+1))

def fvalue(fs):
    assert all(prime(p) and e>0 for p,e in fs)
    return prod(p**e for p,e in fs)

def main():
    ap=argparse.ArgumentParser();ap.add_argument('output');a=ap.parse_args()
    n=5634997092352;j=1992272327959;g=gcd(n,j)
    MF=[(5,2),(42689,1),(2640023,1)]
    NF=[(3,3),(11,1),(18973054183,1)]
    BF=[(31,1),(239,1),(6558511,1)]
    GF=[(3,1),(11,1),(13,1),(207102437,1)]
    assert n==41*2**37 and n==50*42689*2640023+2 and g==41
    M=(n-2)//2;N=n-1
    assert fvalue(MF)==M and fvalue(NF)==N
    assert fvalue(BF)==j//g and fvalue(GF)==(n-j)//g
    bc=(j//g)//max(p**e for p,e in BF);gc=((n-j)//g)//max(p**e for p,e in GF)
    assert bc==7409 and gc==429 and isqrt(n)**2!=n
    assert vp(N,3)!=1 and vp(M,3)!=1
    assert len(MF)==3 and len(NF)==3
    assert max(p**e for p,e in MF)**2*(n-1)<2*(n-2)**2
    vals=[choose_val(n,3,3),choose_val(n,j,3)];assert vals==[2,13]
    example={'n':n,'j':j,'g':g,'alpha':n//g,'M_factors':MF,'N_factors':NF,'beta_factors':BF,'gamma_factors':GF,
             'canonical_cofactors':[bc,gc],'ell':1,'witness':3,'witness_valuations':vals,
             'scope':'one illustration; the whole row family is proved without this example'}
    # p=i=3 and complete numerator power, not merely the power left in C(n,3).
    assert choose_val(56,3,3)==2 and choose_val(56,11,3)==1
    assert 11%9<=56%9 and 11%27>56%27
    endpoint={'n':56,'i':3,'j':11,'prime':3,'valuations':[2,1],'full_numerator_power':27,'smaller_power_9_misses_carry':True}
    # Nonempty weak double projection, known not to be a B699 counterexample.
    nn=18610024;jj=7865522;MM=(nn-2)//2;lam=3;mu=1;NN=(nn-1)//lam;KK=MM
    assert jj*(jj-1)%NN==0 and jj*(jj-1)*(jj-2)%KK==0
    Cs=[gcd(KK,jj-s) for s in range(3)];assert Cs==[1,3691,2521]
    assert choose_val(nn,3,1453)==choose_val(nn,jj,1453)==1
    weak={'n':nn,'j':jj,'C':Cs,'g':gcd(nn,jj),'alpha':nn//gcd(nn,jj),'actual_common_prime':1453,'not_noCommon':True}
    result={'status':'PASS','polynomial_identities':identities(),'mixed_row':example,'p_equals_i':endpoint,'weak_projection':weak}
    Path(a.output).write_text(json.dumps(result,indent=2)+'\n');print('PASS 5 exact polynomial identities, mixed row, complete p=3 layer, nonempty weak projection')
if __name__=='__main__':main()
