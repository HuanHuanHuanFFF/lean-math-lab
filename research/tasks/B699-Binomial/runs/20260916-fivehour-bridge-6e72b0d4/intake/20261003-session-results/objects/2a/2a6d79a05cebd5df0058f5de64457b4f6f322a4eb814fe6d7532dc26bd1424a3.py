#!/usr/bin/env python3
"""R08 exact finite certificates. The all-parameter claims are proved in PROOFS.md.
Only standard-library arithmetic is used. No network, repository, or parent execution.
"""
from __future__ import annotations
import argparse, hashlib, json, math
from pathlib import Path


def need(ok: bool, message: str) -> None:
    if not ok: raise ValueError(message)


def canonical(obj: object) -> bytes:
    return (json.dumps(obj, ensure_ascii=False, sort_keys=True, indent=2)+'\n').encode()


def vp(n: int, p: int) -> int:
    need(n>0, 'valuation is used only on positive integers')
    e=0
    while n%p==0:n//=p;e+=1
    return e


def vbin(n: int, k: int, p: int) -> int:
    need(0<=k<=n, 'illegal binomial')
    ans=0; power=p
    while power<=n:
        ans+=n//power-k//power-(n-k)//power
        power*=p
    return ans


def trial_prime(n: int) -> bool:
    return n>=2 and all(n%d for d in range(2,math.isqrt(n)+1))


def inverse(a: int, m: int) -> int:
    return pow(a,-1,m)


def blocks(p: int, exponent: int, n: int, k: int) -> dict:
    P=p**exponent
    need(0<=k<=n<P*P,'two-block hypotheses')
    n1,n0=divmod(n,P); k1,k0=divmod(k,P)
    delta=int(k0>n0)
    low=vbin(n0+delta*P,k0,p)
    high=vbin(n1-delta,k1,p)
    incoming=vp(n1,p) if delta else 0
    total=low+high+incoming
    need(total==vbin(n,k,p),'two-block formula failed')
    return dict(p=p,exponent=exponent,P=P,N=n,Y=k,N0=n0,Y0=k0,
                N1=n1,Y1=k1,delta=delta,lower_valuation=low,
                upper_valuation=high,incoming_valuation=incoming,total=total)


def generic_certificate() -> dict:
    boxes=[(3,1,9),(3,2,81),(3,3,180),(5,1,25),(5,2,180),
           (7,1,49),(7,2,180),(11,1,121),(17,1,180)]
    digest=hashlib.sha256(); rows=0; delta_counts=[0,0]; direct=0; maximum=0
    for p,e,cap in boxes:
        for n in range(cap):
            for k in range(n+1):
                r=blocks(p,e,n,k); delta_counts[r['delta']]+=1; rows+=1
                values=[p,e,n,k,r['delta'],r['lower_valuation'],
                        r['upper_valuation'],r['incoming_valuation'],r['total']]
                digest.update((','.join(map(str,values))+'\n').encode())
                if n<=48:
                    need(r['total']==vp(math.comb(n,k),p),'direct binomial check')
                    direct+=1
                maximum=max(maximum,r['total'])
    return dict(boxes=boxes,rows=rows,delta_counts=delta_counts,
                direct_original_binomials=direct,maximum_valuation=maximum,
                stream_sha256=digest.hexdigest(),meaning='finite arithmetic regression, not NC counts')


def inverse_certificate() -> dict:
    specs=[(17,1),(41,1),(73,1),(89,1),(97,1),(113,1),(17,3)]
    digest=hashlib.sha256(); rows=0; physical=0; negative=0
    for p,e in specs:
        P=p**e
        for Q in range(1,P):
            if math.gcd(Q,P)>1:continue
            H=inverse(Q*Q,P); u=inverse(Q,P); r=Q*Q%P
            n0=2*u%P; y0=(r+P*(r%2))//2
            need(n0==2*Q*H%P and y0==Q*Q*inverse(2,P)%P,'inverse recovery')
            delta=int(n0<y0)
            if P>4*H+2*Q:physical+=1;negative+=delta
            digest.update((','.join(map(str,[p,e,Q,H,u,r,n0,y0,delta]))+'\n').encode());rows+=1
    return dict(prime_powers=specs,rows=rows,with_size_bound=physical,
                with_size_bound_and_boundary_carry=negative,stream_sha256=digest.hexdigest(),
                meaning='complete residue recovery at listed P only; not original core tuples')

# Small sparse polynomial arithmetic, variables ordered (h,Q,v,H).
def add(a,b):
    c=dict(a)
    for m,z in b.items():c[m]=c.get(m,0)+z
    return {m:z for m,z in c.items() if z}
def neg(a):return {m:-z for m,z in a.items()}
def sub(a,b):return add(a,neg(b))
def mul(a,b):
    c={}
    for m,x in a.items():
        for n,y in b.items():
            t=tuple(i+j for i,j in zip(m,n));c[t]=c.get(t,0)+x*y
    return {m:z for m,z in c.items() if z}
def scale(a,k):return {m:z*k for m,z in a.items() if z*k}
def power(a,k):
    b={(0,0,0,0):1}
    for _ in range(k):b=mul(b,a)
    return b
def packed(a):return [[*m,z] for m,z in sorted(a.items())]


def symbolic_certificate() -> list:
    one={(0,0,0,0):1}
    h,Q,v,H=[{tuple(int(i==j) for i in range(4)):1} for j in range(4)]
    P=add(Q,mul(h,v)); d=sub(Q,v)
    E=sub(sub(mul(P,power(Q,2)),one),scale(mul(v,power(H,2)),4))
    L=sub(sub(mul(h,d),scale(H,4)),Q)
    N=scale(mul(Q,H),2);Y=add(power(Q,2),scale(mul(v,H),2))
    Z=sub(scale(mul(d,H),2),power(Q,2));j=mul(power(Q,2),add(P,scale(H,2)))
    tests=[
      ('size_linear',sub(sub(sub(P,scale(H,4)),scale(Q,2)),mul(h,sub(v,d))),L),
      ('inverse_exact',sub(mul(P,sub(mul(d,H),power(Q,2))),sub(mul(power(Q,2),H),one)),add(neg(E),mul(mul(v,H),L))),
      ('half_square',sub(sub(scale(Y,2),mul(d,P)),power(Q,2)),neg(mul(v,L))),
      ('pair_restore_d',sub(mul(add(P,scale(H,4)),d),mul(Q,add(Q,scale(H,4)))),mul(v,L)),
      ('j_complement',sub(sub(j,mul(P,Z)),scale(one,2)),sub(scale(E,2),scale(mul(mul(v,H),L),2))),
      ('two_block_bound',sub(power(P,2),scale(N,16)),add(mul(sub(sub(P,scale(Q,2)),scale(H,4)),add(add(P,scale(Q,2)),scale(H,4))),scale(power(sub(Q,scale(H,2)),2),4))),
      ('h_restore',sub(sub(mul(h,Q),P),scale(H,4)),L),
      ('complement_sum',sub(sub(N,Y),Z),{})]
    out=[]
    for name,left,right in tests:
        need(left==right,'polynomial identity '+name)
        need(all(all(k<=4 for k in m) for m in left),'degree box')
        out.append(dict(name=name,left=packed(left),right=packed(right),degree_box=[4]*4))
    return out


def raw_boundary() -> dict:
    P,Q,H,v,d,h,y,A,B,q=89,3,10,2,1,43,1,2,0,0
    X=P+2*H; Y=Q*Q+2*v*H;n=2*P*Q*H+2;j=X*Q*Q;k=P*Y
    checks={
        'P_and_Q_distinct_odd_primes':trial_prime(P) and trial_prime(Q) and P!=Q,
        'Q_equals_d_plus_v':Q==d+v,'P_equals_Q_plus_hv':P==Q+h*v,
        'hd_equals_4H_plus_Q':h*d==4*H+Q,'original_norm':P*Q*Q-1==4*v*H*H,
        'paired_norm':P*P*Q-1==v*X*X,'Pell_equation':d*d+d+1==3*y*y,
        'balanced_multiplication':v==A*y and A*B==3*(d-1),
        'original_index_sum':j+k==n,'first_source':X*Y==n-1,
        'j_minus_1':j-1==2*H*Y,'k_minus_1':k-1==2*v*H*X,
        'legal_original_pair':4<=j<=n//2,'original_gcd_one':math.gcd(n,j)==1,
        'strict_P_size':P>4*H+2*Q,'P_source_qualifies':vbin(n,3,P)==1}
    need(all(checks.values()),'boundary audit')
    m=blocks(P,1,2*Q*H,Y)
    need(m['total']==0 and vbin(n,j,P)==0,'nonforcing boundary')
    return dict(P=P,Q=Q,H=H,v=v,d=d,h=h,y=y,A=A,B=B,q=q,
        X=X,Y=Y,Z=2*d*H-Q*Q,n=n,j=j,k=k,checks=checks,
        binomial_terminal=math.comb(2*Q*H,2*d*H-Q*Q),terminal=m,
        original_P_valuation=vbin(n,j,P),other_witness_5_valuation=vbin(n,j,5),
        scope_failures=['H is even','B=0 not positive','q=0 not >=6',
                        'n is not 3*2^s','Q=3 is outside the retained entry',
                        'A=2 is not 5616 mod 24570','13-adic entry not satisfied'],
        minimality='smallest possible odd Q>=3 in the relaxed system 0<d<v,Q=d+v,v even; not minimal in the original core')


def artificial_power_examples() -> list:
    # Exact block/inverse models; these intentionally do NOT solve the original norm.
    out=[]
    for p,e,Q,d in [(17,3,73,19),(17,3,79,19),(17,5,103,19)]:
        P=p**e;H=inverse(Q*Q,P);N=2*Q*H;Y=(d*P+Q*Q)//2
        r=blocks(p,e,N,Y)
        need(r['delta']==0 and P>4*H+2*Q and H%2==1,'power model constraints')
        r.update(Q=Q,H=H,d=d,original_linear_residual=d*P-Q*Q-4*(Q-d)*H,
                 actual_core_instance=False)
        out.append(r)
    return out


def recovery() -> dict:
    """Recover forced H,h,d from the full powers; report rather than discard failures."""
    P,Q=89,3;H=inverse(Q*Q,P)
    h,rh=divmod(P+4*H,Q);d,rd=divmod(Q+4*H,h)
    return dict(P=P,Q=Q,H=H,h=h,d=d,h_remainder=rh,d_remainder=rd,
                H_interval=[1,(P-1)//4],unique_H=True,
                original_norm_zero=(P*Q*Q-1-4*(Q-d)*H*H==0),
                current_entry_pass=False)


def phase_transport() -> dict:
    dig=hashlib.sha256();count=0
    for a in range(1,5):
        t=13**a;m=13*t
        for A0 in range(1,13):
            for u in range(4):
                H=4+13*u;P=1+11*A0*t;Q=1+7*A0*t;d=1+6*A0*t;v=Q-d
                N=2*Q*H;Y=Q*Q+2*v*H;n=2*P*Q*H+2
                n1,n0=divmod(N,P);y1,y0=divmod(Y,P)
                errors=[N-2*H-4*A0*t,Y-1-9*A0*t,n-2*H-2-A0*t,
                        n1+n0-(n-2+A0*t*(3-11*n1)),
                        y1+y0-(1+A0*t*(9-11*y1))]
                need(all(z%m==0 for z in errors),'13-adic transport')
                dig.update((','.join(map(str,[a,A0,u,*[z%m for z in errors]]))+'\n').encode());count+=1
    return dict(rows=count,stream_sha256=dig.hexdigest(),
       scope='finite formal congruence checks only; no global core/prime-power recovery',
       coefficients=dict(N=4,Y=9,n=1,N_block=3,Y_block=9,P_unit=11),
       gives_ordering_of_residues=False)


def make() -> dict:
    return dict(schema='B699-D-R08-finite-certificate-v1',
       contract=dict(block_base='P=piP^eP, not a new prime',strict_size_multiplier=16,
           maximum_unstripped_digit_layers='2*eP-1',prime_source_exact_range=[0,1],
           all_layers_of_H_source_still='e_l+b_l stripped, then all remaining layers',
           no_new_global_min_A=True,all_entry_closed=False,historical_numeric_net_gain=0),
       identities=symbolic_certificate(),phase_transport=phase_transport(),generic=generic_certificate(),
       inverse=inverse_certificate(),relaxed_boundary=raw_boundary(),
       power_examples=artificial_power_examples(),incoming_example=blocks(17,3,17*17**3+1,17**3+2),forced_pair_recovery=recovery())


def main() -> None:
    ap=argparse.ArgumentParser();ap.add_argument('--output',required=True);a=ap.parse_args()
    c=make();p=Path(a.output);p.parent.mkdir(parents=True,exist_ok=True);p.write_bytes(canonical(c))
    print(json.dumps(dict(status='PASS',generic_rows=c['generic']['rows'],
                         inverse_rows=c['inverse']['rows'],identities=len(c['identities']))))
if __name__=='__main__':main()
