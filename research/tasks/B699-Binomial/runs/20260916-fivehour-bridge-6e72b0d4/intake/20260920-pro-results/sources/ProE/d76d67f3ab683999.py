#!/usr/bin/env python3
"""Exact integer coefficient checker. No CAS or network; no writes unless --emit."""
from __future__ import annotations
import argparse, hashlib, json, math
from pathlib import Path

class Poly:
    def __init__(self, n: int, terms: dict[tuple[int,...], int] | None = None):
        self.n = n
        self.t = {e:c for e,c in (terms or {}).items() if c}
    @classmethod
    def const(cls,n,c): return cls(n,{(0,)*n:c})
    @classmethod
    def var(cls,n,i):
        e=[0]*n;e[i]=1
        return cls(n,{tuple(e):1})
    def coerce(self,o): return o if isinstance(o,Poly) else Poly.const(self.n,o)
    def __add__(self,o):
        o=self.coerce(o);r=self.t.copy()
        for e,c in o.t.items():r[e]=r.get(e,0)+c
        return Poly(self.n,r)
    __radd__=__add__
    def __neg__(self):return Poly(self.n,{e:-c for e,c in self.t.items()})
    def __sub__(self,o):return self+-self.coerce(o)
    def __rsub__(self,o):return self.coerce(o)+-self
    def __mul__(self,o):
        o=self.coerce(o);r={}
        for e,c in self.t.items():
            for f,d in o.t.items():
                g=tuple(x+y for x,y in zip(e,f));r[g]=r.get(g,0)+c*d
        return Poly(self.n,r)
    __rmul__=__mul__
    def __pow__(self,k):
        r=Poly.const(self.n,1)
        for _ in range(k):r=r*self
        return r
    def data(self):return [[list(e),c] for e,c in sorted(self.t.items())]
    def shift(self,s):
        assert self.n==1
        y=Poly.var(1,0)
        r=Poly.const(1,0)
        for (e,),c in self.t.items():r=r+c*(y+s)**e
        return r

def expected():
    a,b,p,q,h,z=[Poly.var(6,i) for i in range(6)]
    e1=p-a*q-h*b; e2=h*q-p-2*a*z; e3=a*b*z*z-p*q*q+1
    K=p*(q-b)-a*q*q-2*a*b*z
    R=a*q*q*z-2-p*((q-b)*z-2*q*q)
    N=(p*(q-b)-a*q*q)**2-4*a*b*(p*q*q-1)
    size=a*b*z*z*(p*q)**2-p**3*q**4+p*p*q*q
    assert not (K-q*e1-b*e2).t
    assert not (R+q*z*e1+b*z*e2+2*e3).t
    assert not (N-K*K-4*a*b*z*K-4*a*b*e3).t
    assert not (size-p*p*q*q*e3).t
    x=Poly.var(1,0)
    cap=(x*x-1)**2-(x+1)**3
    wb=(x-1)**3-(x*x-1)
    barrier=9*x*x-40*x+16
    assert not (cap-x*(x-3)*(x+1)**2).t
    assert not (wb-x*(x-1)*(x-3)).t
    assert not (barrier-(x-4)*(9*x-4)).t
    specs={
        'e1':e1,'e2':e2,'e3':e3,'K':K,'R':R,'N':N,'size':size,
        'capacity_gap':cap,'quotient_gap':wb,'barrier':barrier,
        'block_minus':(x+1)**2-4,'block_plus':(x-1)**2-4,
    }
    for eps,name in [(-1,'block_minus'),(1,'block_plus')]:
        assert not (specs[name]-(x+eps)*(x-3*eps)).t
    positive={
        'capacity_gap_at4':cap.shift(4).data(),
        'quotient_gap_at4':wb.shift(4).data(),
        'barrier_at4':barrier.shift(4).data(),
    }
    for rows in positive.values():assert all(c>=0 for _,c in rows)
    n=2**23;M=(n-2)//2;p0=683;q0=89;T=M//(p0*q0)
    diag={'s':23,'X':2048,'M':M,'factorization':[[3,1],[23,1],[89,1],[683,1]],
          'P':p0,'Q':q0,'T':T,'U':3,'V':23,
          'M_squared':M*M,'PQ_cubed':(p0*q0)**3,
          'source_remainder':(q0*q0*T-1)%p0,
          'nu_square_remainder':(p0*q0*q0-1)%(4*T*T)}
    toy={'Axi':19,'Bzeta':36,'P':28657,'Q':55,'h0':767,'nu0':356,
         'wrong_unscaled_remainder':16589,'correct_remainder':0}
    return {
      'schema':'B699-SQUARE-SOURCE-v1',
      'contract':{'same_original_input':True,'scope':'omega(t3)=2;g=lambda=w=1;b=2r',
                  'source_minimum':11,'root_even':True,'ratio_scale':4,'orders':[-1,1]},
      'polynomials':{k:v.data() for k,v in specs.items()},
      'positive_translates':positive,
      'parity_states':[[0,1,1,1],[1,1,1,1]],
      'endpoint':{'X':2,'M':3,'qualifying_prime_powers':[]},
      'diagnostic':diag,'generalization_guard':toy,
    }

def isprime(n):
    if n<2:return False
    return all(n%d for d in range(2,math.isqrt(n)+1))

def verify(cert):
    target=expected()
    if cert!=target:raise ValueError('certificate differs from fixed mathematical target')
    d=cert['diagnostic'];prod=1
    for p,e in d['factorization']:
        if not isprime(p):raise ValueError('non-prime source')
        prod*=p**e
    assert prod==d['M']==d['X']**2-1
    assert d['M_squared']<d['PQ_cubed'] and d['P']>4*d['Q']
    assert d['source_remainder']==148 and 0<4*d['U']<d['P'] and 0<d['V']<d['P']
    t=cert['generalization_guard'];a,b,p,q,h,z=[t[k] for k in ('Axi','Bzeta','P','Q','h0','nu0')]
    assert p==a*q+h*b and h*q==p+2*a*z and a*b*z*z==p*q*q-1
    assert (q*q*z-2)%p==t['wrong_unscaled_remainder']!=0
    assert (a*q*q*z-2)%p==t['correct_remainder']==0
    for a,u,v,r in cert['parity_states']:assert (4*a*u-v)%2==r==1
    assert cert['endpoint']['M']<11*11
    return hashlib.sha256(json.dumps(cert['diagnostic'],sort_keys=True).encode()).hexdigest()

def main():
    ap=argparse.ArgumentParser();ap.add_argument('certificate',nargs='?',default=str(Path(__file__).with_name('certificate.json')))
    ap.add_argument('--emit',action='store_true');args=ap.parse_args()
    p=Path(args.certificate)
    if args.emit:p.write_text(json.dumps(expected(),indent=2,ensure_ascii=False)+'\n')
    cert=json.loads(p.read_text());dig=verify(cert)
    print('PASS_EXACT_COEFFICIENT_CHECKS');print('DIAGNOSTIC_SHA256='+dig)
if __name__=='__main__':main()
