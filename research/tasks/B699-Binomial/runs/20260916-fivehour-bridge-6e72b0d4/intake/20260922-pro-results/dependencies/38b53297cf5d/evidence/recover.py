#!/usr/bin/env python3
"""Complete finite recovery for one positive W_delta in the frozen minimal branch.

The cofactor is W_delta=(Delta^3-1)/v, NOT the old w=P/D_p=1.
CANDIDATE is only an integer necessary-core candidate; it does not assert NC3.
The number of Delta slots is O(W_delta^2), not polynomial in its bit length.
"""
from __future__ import annotations
import argparse,json
from math import isqrt,gcd

def require(ok: bool, message: str) -> None:
    if not ok: raise ArithmeticError(message)

def cofactor_gate(delta: int, W_delta: int) -> str:
    if any(not isinstance(x,int) or isinstance(x,bool) for x in (delta,W_delta)):
        raise TypeError('Integer inputs required.')
    if delta<17 or delta%16!=1 or W_delta<1:
        raise ValueError('Requires Delta>=17, Delta=1 mod16, W_delta>=1.')
    if W_delta==1: return 'EXCLUDED_COMP1'
    if 16*delta>=W_delta*W_delta+640*W_delta: return 'EXCLUDED_COF40'
    return 'NOT_EXCLUDED_BY_THIS_GATE'

def recover(W_delta: int) -> dict:
    if not isinstance(W_delta,int) or isinstance(W_delta,bool) or W_delta<1:
        raise ValueError('W_delta must be a positive integer.')
    limit=(W_delta*W_delta+640*W_delta-1)//16
    base={'W_delta':W_delta,'delta_max':limit,
          'logic':'Complete superset recovery for the frozen canonical branch; no NC3 inference.',
          'delta_slots':0,'divisibility_slots':0,'size_parity_slots':0,
          'square_slots':0,'integer_nu_slots':0,'integer_h_slots':0,'candidates':[]}
    if W_delta==1:
        base.update(result='EMPTY_BY_COMP1',complete=True)
        return base
    for delta in range(17,limit+1,16):
        base['delta_slots']+=1
        if (delta**3-1)%W_delta: continue
        base['divisibility_slots']+=1
        v=(delta**3-1)//W_delta; Q=v+delta
        if v<=0 or v%2 or Q%2!=1 or 3*v<=Q: continue
        base['size_parity_slots']+=1
        num=Q**5-delta**2
        require(num%v==0,'Norm quotient division failed.')
        Y2=num//v; Y=isqrt(Y2)
        if Y*Y!=Y2: continue
        base['square_slots']+=1
        if (Y+Q*Q)%delta: continue
        nu=(Y+Q*Q)//delta
        if nu<=0 or nu%4!=2: continue
        base['integer_nu_slots']+=1
        if (2*nu+Q)%delta: continue
        h=(2*nu+Q)//delta
        if h<15 or h%2!=1: continue
        base['integer_h_slots']+=1
        P=Q+h*v; n=P*Q*nu+2
        j=(P+nu)*Q*Q; k=(Q*Q+v*nu)*P
        require(2*nu==h*delta-Q,'Linear recovery failed.')
        require(v*nu*nu==P*Q*Q-1,'Norm recovery failed.')
        require(j+k==n and j-2==P*Y,'Original coordinate identities failed.')
        c=n
        while c%2==0: c//=2
        base['candidates'].append({'Delta':delta,'v':v,'Q':Q,'Y':Y,'nu':nu,
           'h':h,'P':P,'n':n,'j':j,'k':k,'gcd_n_j':gcd(n,j),
           'n_shape_c_times_power_two':c in (1,3),'n_odd_part':c,
           'remaining_checks':'Complete prime-power supports, all original sources/no-carries, actual NC3.'})
    base.update(result='CANDIDATE' if base['candidates'] else 'EMPTY',complete=True)
    return base

def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--cofactor',type=int,required=True)
    ap.add_argument('--delta',type=int)
    args=ap.parse_args()
    try:
        out=({'Delta':args.delta,'W_delta':args.cofactor,
             'result':cofactor_gate(args.delta,args.cofactor),
             'logic':'Conditional necessary-core gate, not a claim of an existing NC3 input.'}
             if args.delta is not None else recover(args.cofactor))
    except (ValueError,TypeError,ArithmeticError) as exc: ap.error(str(exc))
    print(json.dumps(out,indent=2))
if __name__=='__main__': main()
