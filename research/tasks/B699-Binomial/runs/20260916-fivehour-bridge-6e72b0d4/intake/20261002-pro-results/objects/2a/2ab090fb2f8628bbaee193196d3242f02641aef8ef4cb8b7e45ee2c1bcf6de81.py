"""T0 dyadic recovery of original inputs. Integer candidates are NOT NC3.

Theorems and completeness proof are in PROOFS.md. No prime-power or full
Lucas assertion is made without separate certificates. Standard library only.
"""
from __future__ import annotations
import argparse,json
from math import gcd
from arith import restore,domain,valuation,source0,source2,capacity

def coefficient_data(k:int,d:int)->dict:
    if not isinstance(k,int) or not isinstance(d,int) or k<7 or d<7:
        raise ValueError('Expected integers k>=7,d>=7.')
    if k>=2*d or gcd(k,d)!=1:
        raise ValueError('Outside the original coefficient domain.')
    u=(-pow(d,-1,k))%k
    z=(d*u+1)//k
    if not (u>=1 and 2*u<k and z>=3 and d>2*z):
        raise ValueError('No original u,z in the current frontier.')
    if (k%2==0 and d%2==0) or (k%2==1 and d%2==1):
        raise ValueError('Wrong parity for odd P,Q.')
    H=max(k,d);r=(d*H*H//12).bit_length();M=1<<r
    return dict(k=k,d=d,u=u,z=z,H=H,r=r,M=M,
                P_min=d*H//2+1,P_max=d*H-1)

def in_interval(residue:int,modulus:int,lo:int,hi:int)->list[int]:
    return list(range(lo+(residue-lo)%modulus,hi+1,modulus))

def root_data(k:int,d:int)->dict:
    c=coefficient_data(k,d);M,r=c['M'],c['r']
    classes=[];extra={}
    if k%2==0:
        # f'(P)=2kP+d is odd. One root, one bit at a time.
        p=1
        for e in range(1,r):
            if ((k*p*p+d*p+1)>>e)&1:p+=1<<e
        classes=[(p,M)];reason='UNIQUE_ODD_DERIVATIVE_ROOT'
    else:
        D=d//2;E=D*D-k
        assert 0<E<d*d//4
        v=valuation(E,2);extra=dict(D=D,E=E,E_v2=v)
        if v%2:
            reason='NO_ROOT_ODD_DISCRIMINANT_VALUATION'
        else:
            t=v//2;q=E>>v;s=r-v
            assert s>=3
            extra.update(t=t,odd_E=q,reduced_precision=s)
            if q%8!=1:
                reason='NO_ROOT_ODD_PART_NOT_1_MOD8'
            else:
                # Canonical w=1 mod4 with w^2=q mod2^s, read modulo2^(s-1).
                w=1
                for h in range(3,s):
                    if ((w*w-q)>>h)&1:w+=1<<(h-1)
                period=1<<(r-t-1)
                residues=sorted({((sgn*(w<<t)-D)*pow(k,-1,period))%period
                                 for sgn in (-1,1)})
                classes=[(x,period) for x in residues]
                extra.update(square_root=w,period=period)
                reason='TWO_SQUARE_ROOT_CLASSES'
    roots=sorted({P for rho,m in classes
                  for P in in_interval(rho,m,c['P_min'],c['P_max'])})
    assert all((k*P*P+d*P+1)%M==0 for P in roots)
    assert len(roots)<=(1 if k%2==0 else 12)
    return {**c,**extra,'reason':reason,'classes':[list(x) for x in classes],
            'P_roots':roots,'status':'NECESSARY_DYADIC_CANDIDATES_NOT_NC3'}

def original_from_P(c:dict,P:int)->list[dict]:
    out=[];k,d,u,z=(c[n] for n in ('k','d','u','z'))
    for epsilon in (-1,1):
        if (P-epsilon*k)%d:continue
        a=(P-epsilon*k)//d
        r=restore(k,u,z,a,epsilon)
        if not domain(r):continue
        H0=k*a+epsilon*(k-u)*z+(1-epsilon)//2
        T0=source0(r['n']);T2=source2(r['n']);alpha=valuation(r['n'],2)
        assert 0<H0<k*d
        r.update(H0=H0,T0=T0,T2=T2,alpha=alpha,
                 T0_original_j_pass=r['j']%T0==0,
                 T0_H0_pass=H0%T0==0,
                 precise_low2_pass=3*d*(1<<alpha)>P*P,
                 all_T2_slots_pass=(r['j']*(r['j']-1)*(r['j']-2))%T2==0,
                 zero_C=0 in r['C'])
        r['Lambda']=None if r['zero_C'] else capacity(r['C'])
        r['T2_Lambda_pass']=None if r['zero_C'] else r['Lambda']%T2==0
        r['status']='INTEGER_ORIGINAL_RECOVERY; PRIME_POWERS_AND_LUCAS_NOT_ASSERTED'
        out.append(r)
    assert len(out)<=1  # d>=7 and gcd(k,d)=1 rule out d|2k.
    return out

def recover(k:int,d:int)->dict:
    c=root_data(k,d)
    rows=[row for P in c['P_roots'] for row in original_from_P(c,P)]
    return {**c,'original_rows':rows,
            'all_original_source0_pass_count':sum(row['T0_original_j_pass'] for row in rows),
            'not_a_global_closure':True}

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--kd',nargs=2,type=int,required=True,metavar=('K','D'))
    args=p.parse_args()
    try: answer=recover(*args.kd)
    except ValueError as exc: answer={'status':'OUTSIDE_DOMAIN','reason':str(exc)}
    print(json.dumps(answer,ensure_ascii=False,indent=2))
