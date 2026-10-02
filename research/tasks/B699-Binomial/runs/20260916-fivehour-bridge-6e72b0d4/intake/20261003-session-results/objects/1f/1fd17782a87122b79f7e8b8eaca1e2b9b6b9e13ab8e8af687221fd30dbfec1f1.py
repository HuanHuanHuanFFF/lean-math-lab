#!/usr/bin/env python3
"""Exact one-candidate algebraic recovery. Not an NC3 or primality checker.
Inputs h and the complete value Q remain unbounded. No network or repository use.
"""
from __future__ import annotations
import argparse, json
from math import gcd, isqrt
from pathlib import Path

def phase(h: int) -> dict:
    if h < 1:
        raise ValueError('h must be a positive integer')
    U=h+1; tau=isqrt(U); jm=isqrt(h*h*U); jp=isqrt(U**3)
    gm=h*h*U-jm*jm; gp=U**3-jp*jp
    guarded=tau>=256 and gm>=4*h and gp>=4*U
    return {'h':h,'tau':tau,'Delta':U-tau*tau,'J_minus':jm,'J_plus':jp,
            'gap_minus':gm,'gap_plus':gp,'guarded':guarded,
            'Q3_carry_if_original_tuple':guarded and jp-jm==tau,
            'Q3_zero_if_original_tuple':guarded and jp-jm==tau+1,
            'quotient_J':jm-2*h-1}

def one_power(low: int, high: int) -> tuple[int,int] | None:
    """Return the unique n=3*2^(6+12k) in [low,high), under high<=2*low."""
    if not 0 < low < high <= 2*low:
        raise ValueError('expected a positive interval with ratio at most two')
    # 192*4096^k has bit length 8+12k. Corrections below are exact.
    k=max(0,(low.bit_length()-8)//12)
    n=192 << (12*k)
    while n<low:
        k+=1;n<<=12
    if n>=high:
        return None
    return n,6+12*k

def v_p(x: int,p: int) -> int:
    if x<=0 or p<2: raise ValueError('positive valuation arguments required')
    e=0
    while x%p==0:x//=p;e+=1
    return e

def pell_index(d: int,y: int) -> int | None:
    if (2*d+1)%3:return None
    U=2*y;X=(2*d+1)//3
    if U*U-3*X*X!=1:return None
    t=0
    while (U,X)!=(1,0):
        U1,X1=2*U-3*X,2*X-U
        if not 0<U1<U or X1<0:return None
        U,X=U1,X1;t+=1
    return t

def recover(h: int,Q: int) -> dict:
    f=phase(h)
    out={'schema':'D-R10-necessary-algebraic-recovery-v1','input_h':h,'input_Q':Q,
         'phase':f,'is_NC3':False,'primality_tested':False,
         'source_exponent_bounds_proved':False}
    def stop(stage):
        out['status']='REJECTED_NECESSARY_CONDITION';out['stage']=stage;return out
    if h%2==0:return stop('h_not_odd')
    if Q<3 or Q%2==0:return stop('Q_not_positive_odd')
    if not f['guarded']:out['status']='OUTSIDE_GUARDED_DOMAIN';return out
    if f['Q3_carry_if_original_tuple']:
        return stop('original_Q3_carry_theorem')
    J=f['quotient_J'];low=J*Q**3;high=(J+1)*Q**3
    chosen=one_power(low,high)
    out['n_window']=[low,high]
    if chosen is None:return stop('no_allowed_original_n')
    n,s=chosen;out.update(n=n,s=s)
    if (n-2)%(2*Q):return stop('complete_Q_does_not_divide_T')
    C=(n-2)//(2*Q);D=(h*Q)**2-16*C;out['discriminant']=D
    if D<0:return stop('negative_recovery_discriminant')
    root=isqrt(D)
    if root*root!=D:return stop('nonsquare_recovery_discriminant')
    if (h*Q-root)%8:return stop('H_not_integer')
    H=(h*Q-root)//8;P=h*Q-4*H
    out.update(P=P,H=H)
    if H<=0 or H%2==0 or P<=4*H+2*Q:return stop('positive_odd_H_or_small_root_order')
    if (4*H+Q)%h:return stop('d_not_integer')
    d=(4*H+Q)//h;v=Q-d;out.update(d=d,v=v)
    if not (d>0 and d%2 and v>d):return stop('positive_balanced_ratio')
    if 4*v*H*H!=P*Q*Q-1:return stop('original_E_nonzero')
    dy=d*d+d+1
    if dy%3:return stop('Pell_divisibility')
    y=isqrt(dy//3)
    if 3*y*y!=dy:return stop('Pell_y_not_integer')
    if v%y:return stop('A_not_integer')
    A=v//y
    if A<=0 or A%2 or (3*(d-1))%A:return stop('AB_integrality')
    B=3*(d-1)//A;out.update(y=y,A=A,B=B)
    if B<=0 or B%4:return stop('positive_complete_B')
    t=pell_index(d,y)
    if t is None or t%8!=1:return stop('wrong_Pell_source')
    q=(t-1)//8;out.update(t=t,q=q)
    if q<6 or q%3 or A%24570!=5616:return stop('frozen_entry')
    a=v_p(A,13);A0=A//13**a
    if a<1 or a!=1+v_p(q,13) or (q//13**(a-1)+A0)%13:return stop('true_13_q_quotient')
    if min(P,Q)<=1 or v_p(P-1,13)!=a or v_p(Q-1,13)!=a:return stop('true_13_valuations')
    if ((P-1)//13**a-11*A0)%13 or ((Q-1)//13**a-7*A0)%13:return stop('true_13_units')
    if gcd(P,Q)!=1:return stop('distinct_source_coprimality')
    Hinv=pow(Q*Q,-1,P)
    if Hinv!=H:return stop('unique_H_inverse')
    iota=(2*pow(Q,-1,P))%P;r=(Q*Q)%P;kappa=(r+P*(r%2))//2
    out.update(iota=iota,kappa=kappa)
    if iota<kappa:return stop('original_P_squared_layer_carry')
    j=Q*Q*(P+2*H);k=n-j
    if not 4<=j<=n//2:return stop('original_j_interval')
    if k!=P*(Q*Q+2*v*H):return stop('original_k_recovery')
    MA=A
    for p in (2,3,13):
        while MA%p==0:MA//=p
    if MA<=q**6:return stop('inherited_MA_consumer')
    out.update(j=j,k=k,MA=MA,status='NECESSARY_ALGEBRAIC_CANDIDATE',
       unchecked=['P must be certified prime for eP=1',
                  'Q must be a complete power of a different certified odd prime',
                  'all inherited RH and source gates',
                  'all other actual prime-source binomial valuations'])
    return out

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--h',type=int,required=True)
    ap.add_argument('--Q',type=int,required=True);ap.add_argument('--output',required=True)
    a=ap.parse_args();res=recover(a.h,a.Q)
    Path(a.output).write_text(json.dumps(res,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':res['status'],'is_NC3':False,'primality_tested':False}))
if __name__=='__main__':main()
