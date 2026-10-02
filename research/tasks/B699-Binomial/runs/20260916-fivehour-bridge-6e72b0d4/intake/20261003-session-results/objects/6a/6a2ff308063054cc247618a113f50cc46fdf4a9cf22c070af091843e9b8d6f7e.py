#!/usr/bin/env python3
"""Exact necessary recovery for B699 D-R11. No primality or NC3 claim.
All arithmetic uses the single supplied (n,Q), or the single supplied (h,Q,C).
No factoring, network, Lean, repository access, or ancestor execution.
"""
from __future__ import annotations
import argparse, json
from math import gcd, isqrt
from pathlib import Path


def linear_data(h: int, Q: int, C: int) -> dict:
    L = 4*C + 3*h*Q*Q
    K = h*h*Q**3 - C*Q - h
    phi = (16*C**3 + (28*h+4)*Q*Q*C*C
           + (-4*h**3*Q**4+4*h*h*Q**4+4*h*h*Q+8*h*Q)*C
           + h*h*(h*Q**3-1)*(h*Q**3-4))
    return {'L':L, 'K':K, 'Phi':phi}


def recover_hqc(h: int, Q: int, C: int) -> dict:
    out = {'input':{'h':h,'Q':Q,'C':C}, 'claims_NC3':False,
           'primality_certified':False}
    def fail(reason: str) -> dict:
        out.update(status='NO_SATURATED_RECOVERY', reason=reason)
        return out
    if h<=0 or Q<3 or C<=0 or h%2==0 or Q%2==0:
        return fail('positive odd h,Q and positive C required')
    if gcd(C,h*Q)!=1:
        return fail('original coprimality gcd(C,hQ)=1 fails')
    dat=linear_data(h,Q,C);out.update(dat)
    L,K=dat['L'],dat['K']
    if dat['Phi']!=0:
        return fail('joint quadratic/cubic obstruction; NOT a claim that D is nonsquare')
    if K<=0 or 8*K >= (h-2)*Q*L:
        return fail('original positive small-root order fails')
    # The proof makes these exact divisibilities automatic; keep runtime checks.
    if K%L:
        raise AssertionError('rational-common-root integrality theorem failed')
    H=K//L;P=h*Q-4*H
    if (4*H+Q)%h:
        raise AssertionError('d integrality theorem failed')
    d=(4*H+Q)//h;v=Q-d
    assert C==P*H and 4*v*H*H==P*Q*Q-1 and v>d>0
    assert P>4*H+2*Q and H%2==C%2
    D=(h*Q)**2-16*C
    assert D==(P-4*H)**2
    out.update(status='SATURATED_ALGEBRAIC_TUPLE',H=H,P=P,d=d,v=v,
               D=D,root_D=P-4*H,
               unchecked=['positive integral Pell/y/A/B and actual q',
                          'original n=3*2^s and frozen phases',
                          'different certified original prime bases and full exponents',
                          'all other original NC3 source and digit conditions'])
    return out


def kernel(C: int, Q: int, x: int) -> int:
    return (-4*Q*Q*x**4+4*(Q*C+1)*x**3-4*C*Q*Q*x*x+C*x-C*C*Q*Q)


def monotone_integer_root(C: int, Q: int) -> dict:
    """At most one H in 4H^2+2QH<C, by monotonicity of the rational f,
    NOT by assumed monotonicity of the cleared polynomial kernel.
    """
    if C<=0 or Q<=0: raise ValueError('positive C,Q required')
    # A complete exact upper bound, corrected for the strict boundary.
    B=(isqrt(Q*Q+4*C)-Q)//4
    while B>0 and 4*B*B+2*Q*B>=C:B-=1
    while 4*(B+1)**2+2*Q*(B+1)<C:B+=1
    assert B>=0 and 4*(B+1)**2+2*Q*(B+1)>=C
    evaluations=[]
    if B==0:return {'H':None,'bound':B,'trace':evaluations,'reason':'empty positive integer interval'}
    value=kernel(C,Q,B);evaluations.append([B,value])
    if value<0:return {'H':None,'bound':B,'trace':evaluations,'reason':'rational function still negative at last integer'}
    lo,hi=1,B
    while lo<hi:
        mid=(lo+hi)//2;value=kernel(C,Q,mid);evaluations.append([mid,value])
        if value<0:lo=mid+1
        else:hi=mid
    value=kernel(C,Q,lo);evaluations.append([lo,value])
    return {'H':lo if value==0 else None,'bound':B,'trace':evaluations,
            'reason':'exact integer root' if value==0 else 'unique real crossing is between integers'}


def original_n_exponent(n: int) -> int | None:
    if n<=0 or n%3:return None
    m=n//3
    if m&(m-1):return None
    return m.bit_length()-1


def pell_index(d: int,y: int) -> int | None:
    if (2*d+1)%3:return None
    U,X=2*y,(2*d+1)//3
    if U*U-3*X*X!=1:return None
    t=0
    while (U,X)!=(1,0):
        U1,X1=2*U-3*X,2*X-U
        if not 0<U1<U or X1<0:return None
        U,X=U1,X1;t+=1
    return t


def vp(x: int,p: int) -> int:
    if x<=0 or p<2:raise ValueError('positive valuation argument required')
    e=0
    while x%p==0:x//=p;e+=1
    return e


def recover_nq(n: int,Q: int, enforce_entry: bool=True) -> dict:
    out={'schema':'D-R11-nQ-unique-recovery-v1','n':n,'Q':Q,
         'claims_NC3':False,'primality_certified':False,
         'enforce_frozen_entry':enforce_entry}
    def reject(reason: str) -> dict:
        out.update(status='NO_NECESSARY_RECOVERY',reason=reason);return out
    if n<=2 or n%2 or Q<3 or Q%2==0:return reject('positive even n and odd Q>=3 required')
    if (n-2)%(2*Q):return reject('complete Q divisibility fails')
    C=(n-2)//(2*Q);out['C']=C
    if gcd(C,Q)!=1:return reject('complete P,Q,H pairwise coprimality fails')
    r=monotone_integer_root(C,Q);out['root_search']=r
    H=r['H']
    if H is None:return reject('no integer H for the saturated original norm')
    if C%H:return reject('H does not divide original C')
    P=C//H
    if (P+4*H)%Q:return reject('h is not integral')
    h=(P+4*H)//Q
    if h%2==0:return reject('h is not odd')
    a=recover_hqc(h,Q,C);out['saturated']=a
    if a['status']!='SATURATED_ALGEBRAIC_TUPLE':return reject('joint recovery failed')
    out.update(H=H,P=P,h=h,d=a['d'],v=a['v'])
    if not enforce_entry:
        out.update(status='SATURATED_ALGEBRAIC_TUPLE_NOT_NC3',unchecked=a['unchecked'])
        return out
    s=original_n_exponent(n)
    if s is None or s%12!=6:return reject('actual n exponent/phase fails')
    if H%2==0:return reject('H not odd')
    d,v=a['d'],a['v'];out['s']=s
    dy=d*d+d+1
    if dy%3:return reject('Pell divisibility fails')
    y=isqrt(dy//3)
    if 3*y*y!=dy:return reject('y is not an integer')
    if v%y:return reject('A not integral')
    A=v//y
    if A<=0 or A%2 or 3*(d-1)%A:return reject('A/B divisibility fails')
    B=3*(d-1)//A
    if B<=0 or B%4:return reject('positive B with full 2 part fails')
    t=pell_index(d,y)
    if t is None or t%8!=1:return reject('not the actual Pell source')
    q=(t-1)//8
    if q<6 or q%3 or A%24570!=5616:return reject('frozen original entry fails')
    a13=vp(A,13);A0=A//13**a13
    if a13<1 or a13!=1+vp(q,13) or (q//13**(a13-1)+A0)%13:
        return reject('true 13-adic q quotient fails')
    if min(P,Q)<=1 or vp(P-1,13)!=a13 or vp(Q-1,13)!=a13:
        return reject('true 13-adic P/Q valuations fail')
    if ((P-1)//13**a13-11*A0)%13 or ((Q-1)//13**a13-7*A0)%13:
        return reject('true 13-adic P/Q normalized units fail')
    if pow(Q*Q,-1,P)!=H:return reject('unique original inverse fails')
    j=Q*Q*(P+2*H);k=n-j
    if not 4<=j<=n//2 or k!=P*(Q*Q+2*v*H):return reject('actual j,k interval/recovery fails')
    out.update(status='NECESSARY_ALGEBRAIC_CANDIDATE_NOT_NC3',y=y,A=A,B=B,
               t=t,q=q,a13=a13,A0=A0,j=j,k=k,
               unchecked=['P prime if the eP=1 branch is requested',
                          'Q a full power of a different certified original prime',
                          'full original base/exponent 13-adic decomposition',
                          'all inherited MA/RH and full-source higher-digit gates'])
    return out


def main() -> None:
    ap=argparse.ArgumentParser()
    ap.add_argument('--n',type=int,required=True);ap.add_argument('--Q',type=int,required=True)
    ap.add_argument('--output',required=True);ap.add_argument('--relaxed',action='store_true')
    a=ap.parse_args();r=recover_nq(a.n,a.Q,not a.relaxed)
    Path(a.output).write_text(json.dumps(r,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':r['status'],'claims_NC3':False,'primality_certified':False}))
if __name__=='__main__':main()
