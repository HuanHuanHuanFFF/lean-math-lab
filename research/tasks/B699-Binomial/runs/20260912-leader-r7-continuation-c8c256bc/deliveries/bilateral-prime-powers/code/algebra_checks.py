#!/usr/bin/env python3
"""Exact rational-polynomial identities, constants, and non-vacuous regressions.
Finite regressions are diagnostics; infinite inequalities are proved in notes/PROOFS.md.
"""
from fractions import Fraction as Q
from math import gcd,comb
from functools import reduce
from pathlib import Path
import argparse,json

class Poly:
    nv=6
    def __init__(self,v=0):
        self.c = dict(v) if isinstance(v,dict) else {tuple([0]*self.nv):Q(v)}
        self.c={m:Q(c) for m,c in self.c.items() if c}
    @classmethod
    def var(cls,k):
        m=[0]*cls.nv;m[k]=1;return cls({tuple(m):Q(1)})
    def __add__(self,o):
        o=o if isinstance(o,Poly) else Poly(o);d=dict(self.c)
        for m,c in o.c.items():d[m]=d.get(m,Q(0))+c
        return Poly(d)
    __radd__=__add__
    def __neg__(self):return Poly({m:-c for m,c in self.c.items()})
    def __sub__(self,o):return self+-o if isinstance(o,Poly) else self+(-Q(o))
    def __rsub__(self,o):return Poly(o)+-self
    def __mul__(self,o):
        o=o if isinstance(o,Poly) else Poly(o);d={}
        for m,c in self.c.items():
            for n,a in o.c.items():
                e=tuple(x+y for x,y in zip(m,n));d[e]=d.get(e,Q(0))+c*a
        return Poly(d)
    __rmul__=__mul__
    def __truediv__(self,o):return self*Q(1,o)
    def __pow__(self,k):
        assert k>=0;r=Poly(1)
        for _ in range(k):r=r*self
        return r

def ch(x,k):
    r=Poly(1)
    for t in range(k):r=r*(x-t)/(t+1)
    return r

def vp(n,p):
    assert n>0 and p>=2;a=0
    while n%p==0:n//=p;a+=1
    return a

def val_choose(n,j,p):
    result=0;q=p
    while q<=n:
        result+=n//q-j//q-(n-j)//q;q*=p
    return result

def run():
    identities=[]
    def check(name,p):
        assert not p.c,name;identities.append(name)
    tau,x,y,g,u,v=[Poly.var(i) for i in range(6)]
    check('bilateral factor identity',
          (tau*x-g*v)*(tau*y-g*u)-(g*g*u*v-tau)-tau*(tau*x*y-g*(x*u+y*v)+1))
    a,b,t=[Poly.var(i) for i in range(3)]
    for shift in [0,1]:
        j=a*t+shift;n=b*t+1;k=n-j
        f=sum((ch(j,r)*ch(k,3-r)*(b-a)**r*(-a)**(3-r) for r in range(4)),Poly(0))
        rhs=(n-1)*a*(b-a)*(2*b-a) if shift==0 else -(n-1)*a*(b*b-a*a)
        check('cubic evaluation r=1,s='+str(shift),6*f-rhs)
    check('sharp minus cubic',3*b**3-8*a*(b*b-a*a)-(b-2*a)*(3*b*b-2*a*b-4*a*a))
    check('sharp plus squared cubic',4*b**6-27*(t*(b*b-t*t))**2-(b*b-3*t*t)**2*(4*b*b-3*t*t))
    d,u,g,m=[Poly.var(i) for i in range(4)]
    for eps in [-1,1]:
        check('square small-quotient '+str(eps),u*u*(g*m*d*d-1)-(4*g*m-u*u)-g*m*(d*u+2*eps)*(d*u-2*eps))
        check('square large-quotient '+str(eps),u*u*(g*d*d-m)-(4*g-m*u*u)-g*(d*u+2*eps)*(d*u-2*eps))
    const={
      'beta square lower margin':363**2-100*(2*363+1),
      'gamma square lower margin':165**2-80*(2*165+1),
      'beta gu=31 rejected margin':792*31-24300,
      'gamma gu=96 rejected margin':79*96-7560,
      'large gamma g=147 rejected margin':147**2-21600,
      'beta old base margin':1048576-442368,
      'gamma old base margin':1048576-800*146,
      'both-cofactor-21 base margin':2097153-9*21**4,
      'small-d-plus base margin':2097153-((21*32**3+1)//2+1),
      'small-d-minus base margin':2097153-((81*32**3+7)//8+1),
    }
    assert all(v>0 for v in const.values())
    # Exhaust the ONLY finite integer choices used in prime-power dominance.
    options=[]
    for eta in [1,2]:
      for gg in range(1,10):
       if eta!=(2 if gg%2 else 1):continue
       for tt,ss in [(1,1),(3,1),(1,3)]:
        if 4*eta*gg**2<=ss*tt**2:options.append(['beta',gg,eta,tt,ss])
        if 2*eta*gg**2<ss*tt**2:options.append(['gamma',gg,eta,tt,ss])
    assert options==[['beta',1,2,3,1],['gamma',1,2,3,1],['gamma',2,1,3,1]] or sorted(options)==sorted([['beta',1,2,3,1],['gamma',1,2,3,1],['gamma',2,1,3,1]])
    # Symbolic g>=4 is ruled out since 2*eta*g^2>=32>9; g=3 likewise.
    assert 2*4**2>9 and 2*2*3**2>9
    assert 4*2*3>9 and 2*2*3>9
    weak=[];first_count=0;all_count=0;content_count=0
    for n in range(8,2001,4):
      for j in range(4,n//2+1):
        all_count+=1
        if n<=160:
            k=n-j;cs=[comb(j,r)*comb(k,3-r) for r in range(4)];H=reduce(gcd,cs);L=comb(n,3)//H
            assert comb(n,j)%L==0
            assert vp(H,2)==vp(gcd(n,j),2)
            content_count+=1
        if 3*j*(j-1)%(n-1):continue
        first_count+=1;k=n-j;gg=gcd(n,j);beta=j//gg;gamma=k//gg
        dm=gcd(beta,n-1);dp=gcd(gamma,n-1)
        assert (n-1)%(dm*dp)==0
        tt=(n-1)//(dm*dp);em=beta//dm;ep=gamma//dp
        aa=(j-1)//dp;bb=(k-1)//dm
        assert tt in [1,3] and gcd(dm,dp)==1
        assert aa==tt*dm-gg*ep and bb==tt*dp-gg*em
        assert aa*bb==gg*gg*em*ep-tt
        if 6*j*(j-1)*(j-2)%(n-2):continue
        assert 2*j<n
        M=(n-2)//2;F=gcd(beta*gamma,M);z=gcd(j-1,M);ss=M//(F*z);eta=2 if j%2 else 1
        assert M==ss*F*z and ss in [1,3] and tt*ss!=9
        assert aa%(eta*z)==bb%(eta*z)==0
        assert eta**2*(n-1)<tt*ss**2*F**2<=9*F**2
        weak.append(dict(n=n,j=j,g=gg,F=F,tau=tt,sigma=ss,eta=eta))
    assert [(r['n'],r['j']) for r in weak]==[(56,11),(496,210)]
    boundary=[]
    for n,j,p in [(56,11,3),(496,210,3),(27,5,3),(32,7,31)]:
        a=val_choose(n,3,p);b=val_choose(n,j,p)
        assert a==vp(comb(n,3),p) and b==vp(comb(n,j),p)
        boundary.append({'n':n,'j':j,'p':p,'valuations':[a,b]})
    assert boundary[0]['valuations']==[2,1]
    # A same-layer content quotient is NOT the actual gcd.
    n,j=30,10;k=n-j;H=reduce(gcd,[comb(j,r)*comb(k,3-r) for r in range(4)])
    assert (comb(n,3)//H,gcd(comb(n,3),comb(n,j)))==(203,1015)
    # Upstream typo: for EVEN X, gcd(X-1,X+1) is 1, not 2.
    assert all(gcd(X-1,X+1)==1 for X in range(2,102,2))
    return {'status':'PASS','polynomial_identities':identities,'strict_integer_margins':const,
            'half-exponent-options':sorted(options),'finite_regression':{'n_max':2000,'legal_pairs':all_count,'first_divisibility_pairs':first_count,'both_divisibility_pairs':weak,'content_pairs':content_count},
            'endpoint_examples':boundary,'same-layer-counterexample':{'n':30,'j':10,'L':203,'gcd':1015},
            'limitations':'Regressions do not prove the infinite conclusions; see complete paper proof.'}

def main():
    p=argparse.ArgumentParser();p.add_argument('--output',required=True);a=p.parse_args();out=run()
    Path(a.output).write_text(json.dumps(out,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':out['status'],'identities':len(out['polynomial_identities']),'regression_pairs':out['finite_regression']['legal_pairs']},sort_keys=True))
if __name__=='__main__':
    if not __debug__:raise SystemExit('Do not run this checker with Python -O.')
    main()
