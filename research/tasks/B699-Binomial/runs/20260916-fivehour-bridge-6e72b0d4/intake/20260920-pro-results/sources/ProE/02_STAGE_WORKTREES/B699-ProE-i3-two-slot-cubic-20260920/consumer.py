#!/usr/bin/env python3
"""Sufficient consumers. NOT_COVERED never means NC3 or a counterexample."""
from __future__ import annotations
import argparse,json,math,sys
from pathlib import Path
ROOT=Path(__file__).resolve().parent
sys.path.insert(0,str(ROOT/'code'))
from primary import prime_check

def iso3(v:int)->int:
    if v<=0 or not v&1:raise ValueError('positive odd integer required')
    return 3 if v%3==0 and v%9!=0 else 1

def pair(X:int,j:int,P:int)->dict:
    if X<2 or X%2 or not (4<=j<=X*X) or P<3 or P%2==0:
        raise ValueError('require even X>=2, 4<=j<=X^2, and odd P>=3')
    for eps in (-1,1):
        if (X-eps)%P:continue
        m=(X-eps)//P
        if m<1 or m%2==0:continue
        R=X+eps;d3=iso3(R);S=R//d3;c=j%P
        if c==1 and P>=8*d3*m and j*(j-2)%S==0:
            return {'status':'PROVED_COMMON3','theorem':'CENTRAL-BOTH','n':2*X*X,'j':j,'P':P,'m':m,'epsilon':eps,'d3':d3}
        if eps==-1 and c in (0,1,2) and P>=64*d3*m**3:
            for r,s in ((0,1),(0,2),(1,2)):
                if (j-r)*(j-s)%S==0:
                    return {'status':'PROVED_COMMON3','theorem':'TS-CUBIC','n':2*X*X,'j':j,'P':P,'m':m,'c':c,'opposite_slots':[r,s],'d3':d3}
    return {'status':'NOT_COVERED_BY_THIS_CONSUMER','n':2*X*X,'j':j}

def row(X:int,p:int,h:int,opposite_factors:list,prime_certificates:dict)->dict:
    if X<2 or X%2 or p<3 or h<1:raise ValueError('invalid row parameters')
    prime_check(p,prime_certificates)
    P=p**h
    if (X+1)%P:raise ValueError('P must divide X+1')
    m=(X+1)//P
    if math.gcd(m,p)!=1:raise ValueError('P is not the complete original p power')
    d3=iso3(X-1);S=(X-1)//d3
    if len({q for q,e in opposite_factors})!=len(opposite_factors):raise ValueError('duplicate source')
    for q,e in opposite_factors:
        if q<3 or e<1:raise ValueError('invalid source')
        prime_check(q,prime_certificates)
    if math.prod(q**e for q,e in opposite_factors)!=S:raise ValueError('incomplete opposite factorization')
    if P<64*d3*m**3 or len(opposite_factors)>2:
        return {'status':'NOT_COVERED_BY_TS_ROW'}
    return {'status':'PROVED_WHOLE_ROW_COMMON3','theorem':'TS-ROW','n':2*X*X,
            'j_min':4,'j_max':X*X,'P':P,'m':m,'d3':d3,'threshold':64*d3*m**3}

def example():
    c=json.loads((ROOT/'certificates/certificate.json').read_text())
    r=c['row']
    return row(r['X'],r['p'],r['h'],r['factor_Xminus'],c['prime_certificates'])

if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    group=parser.add_mutually_exclusive_group(required=True)
    group.add_argument('--example',action='store_true',help='certified whole row n=2^83')
    group.add_argument('--pair',nargs=3,type=int,metavar=('X','j','P'))
    args=parser.parse_args()
    try:answer=example() if args.example else pair(*args.pair)
    except (ValueError,KeyError,AssertionError) as exc:parser.error(str(exc))
    print(json.dumps(answer,indent=2))
