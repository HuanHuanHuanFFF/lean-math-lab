#!/usr/bin/env python3
"""Exact finite endpoint and coefficient checker. Not a formal proof of NC3."""
from __future__ import annotations
import argparse, hashlib, itertools, json
from pathlib import Path

NVAR = 6  # P,Q,A,B,T,h
ZERO = (0,)*NVAR
class Poly:
    def __init__(self, terms=None):
        self.d = {k:v for k,v in (terms or {}).items() if v}
    @staticmethod
    def const(x): return Poly({ZERO:x})
    @staticmethod
    def var(i):
        e=list(ZERO);e[i]=1;return Poly({tuple(e):1})
    def __add__(self, other):
        if not isinstance(other,Poly):other=Poly.const(other)
        d=self.d.copy()
        for k,v in other.d.items():d[k]=d.get(k,0)+v
        return Poly(d)
    __radd__=__add__
    def __neg__(self):return Poly({k:-v for k,v in self.d.items()})
    def __sub__(self, other):return self+-other if isinstance(other,Poly) else self+(-other)
    def __rsub__(self,other):return -self+other
    def __mul__(self,other):
        if not isinstance(other,Poly):other=Poly.const(other)
        d={}
        for k,v in self.d.items():
            for l,w in other.d.items():
                e=tuple(a+b for a,b in zip(k,l));d[e]=d.get(e,0)+v*w
        return Poly(d)
    __rmul__=__mul__
    def __pow__(self,e):
        out=Poly.const(1)
        for _ in range(e):out=out*self
        return out

def coefficient_checks():
    P,Q,A,B,T,h=(Poly.var(i) for i in range(NVAR))
    for g in (1,2):
        c=4//(g*g)
        e1=P-A*Q-h*B
        e2=h*Q-P-c*A*T
        e3=c*A*B*T*T-g*g*P*Q*Q+1
        R=A*Q*Q*T-1-P*((Q-B)*T-g*g*Q*Q)
        assert not (R+Q*T*e1+B*T*e2+e3).d
    z=Poly.var(0);X=z+6
    assert not (11*(X-1)**2-4*(X+1)**2-(7*z*z+54*z+79)).d
    for eps in (-1,1):
        assert not ((z-eps)**2-4-(z+eps)*(z-3*eps)).d

def make_family(g):
    v_max=16*g**4-1;p_max=4*v_max-1
    rows=[]
    for V in range(1,v_max+1,2):
        for U in range(1,V+1,2):
            for P in range(11,4*V,2):
                if (P+V)%(4*U):continue
                A=(P+V)//(4*U)
                if g==2 and A%2==0:continue
                for eps in (-1,1):
                    if (P*U-2*eps)%V:continue
                    Q=(P*U-2*eps)//V
                    if Q<11 or Q%2==0 or P<=A*Q or U>=Q or V>=P:continue
                    numerator=g*g*P*Q*Q-1
                    denominator=(4//(g*g))*A*U*U*V*V
                    rows.append(dict(g=g,U=U,V=V,P=P,Q=Q,A=A,epsilon=eps,
                                     X=P*U-eps,numerator=numerator,denominator=denominator,
                                     remainder=numerator%denominator))
    rows.sort(key=lambda r:(r['U'],r['V'],r['P'],r['Q'],r['A'],r['epsilon']))
    assert all(r['remainder']!=0 for r in rows)
    return {'g':g,'core_c':4//(g*g),'V_max':v_max,'P_max':p_max,
            'A_odd_required':g==2,'directions':[-1,1],
            'row_count':len(rows),'rows':rows}

def canonical(obj):return json.dumps(obj,sort_keys=True,separators=(',',':')).encode()

def expected_certificate():
    return {'schema':'B699-UXS-v1','scope_g':[1,2],
            'tail_shift_X':6,'tail_coefficients_ascending':[79,54,7],
            'small_X_M':[[2,3],[4,15]],
            'families':[make_family(g) for g in (1,2)]}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('certificate',nargs='?',default=str(Path(__file__).parent/'certificates/endpoint.json'))
    ap.add_argument('--generate',action='store_true');args=ap.parse_args()
    coefficient_checks();expected=expected_certificate()
    if args.generate:
        Path(args.certificate).write_text(json.dumps(expected,indent=2)+'\n')
    else:
        actual=json.loads(Path(args.certificate).read_text())
        if actual!=expected:raise ValueError('Certificate differs from complete exact reconstruction')
    print(json.dumps({'status':'PASS_PRIMARY_EXACT_ENDPOINT','counts':[x['row_count'] for x in expected['families']],
                      'integer_B_solutions':0,'endpoint_sha256':hashlib.sha256(canonical(expected['families'])).hexdigest()},sort_keys=True))
if __name__=='__main__':main()
