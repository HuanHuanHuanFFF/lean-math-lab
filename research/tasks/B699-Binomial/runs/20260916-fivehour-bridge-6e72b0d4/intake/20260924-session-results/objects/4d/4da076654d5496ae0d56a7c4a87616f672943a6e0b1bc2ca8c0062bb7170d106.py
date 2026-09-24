#!/usr/bin/env python3
"""Round26: retain (V,n) in every local image; one original exponent s.
Generation algorithm: solve a quadratic in h over F_p, never divide by v.
All q/e/s classes in the fixed complete periods are covered using integer bitsets.
This program performs no repository, network, or proof-assistant operation.
"""
from __future__ import annotations
import argparse
import json
from math import isqrt
from pathlib import Path

PRIMES=(7,5,11,13,17,19,37,61)
STAGES=PRIMES[1:]
QP,EP,SP=45,720,360
N0=194400000


def prime(p:int)->bool:
    return p>=2 and all(p%d for d in range(2,isqrt(p)+1))


def mul(a:tuple[int,int],b:tuple[int,int],p:int)->tuple[int,int]:
    return ((a[0]*b[0]+3*a[1]*b[1])%p,(a[0]*b[1]+a[1]*b[0])%p)


def power(a:tuple[int,int],e:int,p:int)->tuple[int,int]:
    z=(1,0)
    while e:
        if e&1:z=mul(z,a,p)
        a=mul(a,a,p);e//=2
    return z


def pell_period(p:int)->int:
    g=power((2,1),8,p);z=(1,0)
    for t in range(1,p*p+1):
        z=mul(z,g,p)
        if z==(1,0):return t
    raise ArithmeticError('No first-return period')


def order(a:int,p:int)->int:
    if a%p==0:raise ValueError('unit required')
    z=1
    for t in range(1,p):
        z=z*a%p
        if z==1:return t
    raise ArithmeticError('No unit order')


def phase_image(p:int,q:int)->list[list[int]]:
    if p<=3 or not prime(p):raise ValueError('prime >3 required')
    U,X=power((2,1),8*q+1,p)
    inv=[0]+[pow(a,-1,p) for a in range(1,p)]
    d=(3*X-1)*inv[2]%p;y=U*inv[2]%p
    sqrt={z*z%p:z for z in range(p)}
    target=3*(d-1)%p;out=set()
    for A in range(p):
        bs=[target*inv[A]%p] if A else (range(p) if target==0 else [])
        for B in bs:
            aa=d*d%p
            bb=-(6*d*d+10*A*d*y+4*A*A*y*y)%p
            cc=-(11*d*d+10*A*d*y+3*A*A*y*y+4*B*y)%p
            if aa:
                disc=(bb*bb-4*aa*cc)%p
                if disc not in sqrt:continue
                rt=sqrt[disc]
                hs={(-bb+rt)*inv[2*aa%p]%p,(-bb-rt)*inv[2*aa%p]%p}
            elif bb:hs=[-cc*inv[bb]%p]
            elif cc==0:hs=range(p)
            else:hs=[]
            for h in hs:
                v=A*y%p;Q=(d+v)%p;P=(Q+h*v)%p
                nu=(h*d-Q)*inv[2]%p;n=(P*Q*nu+2)%p
                C=(4*B*h-16*A*d-120*y-27*B)%p
                Z=(20*B-320*A-C)%p
                F=(3*Z*Z-64*(C*A+15)**2)%p
                cs=C*inv[4]%p;fs=F*inv[16%p]%p
                w=(5*fs+42*cs*cs-18000)%p
                V=(w*w-97200*cs*cs+N0)%p
                out.add((V,n))
    return [list(z) for z in sorted(out)]


def multipliers()->list[int]:
    return sorted(2**a*3**b*5**c for a in (0,4,6) for b in (0,2,4,5) for c in (0,2,4,5))


def tables()->dict:
    out={}
    for p in PRIMES:
        T=pell_period(p);O=order(2,p);E=order(7,p) if p!=7 else None
        if QP%T or SP%O or (E is not None and EP%E):
            raise ArithmeticError('Incorrect common period')
        out[str(p)]={'p':p,'q_period':T,'two_order':O,'seven_order':E,
                     'V_n_images':[phase_image(p,q) for q in range(T)]}
    return out


def bitset_cover(tbs:dict)->dict:
    mvals=multipliers();qs=[q for q in range(QP) if q%3 in (0,2)]
    initial=sum(1<<s for s in range(1,SP,3));maps={};powers={}
    for p in STAGES:
        tb=tbs[str(p)];local=[]
        for image in tb['V_n_images']:
            by={}
            for v,n in image:by.setdefault(v,set()).add(n)
            local.append([sum(1<<s for s in range(1,SP,3)
                               if pow(2,s,p) in by.get(v,set())) for v in range(p)])
        maps[p]=local;powers[p]=[pow(7,e,p) for e in range(EP)]
    records=[];aggregate=[0]*(1+len(STAGES));pairs=0
    for m in mvals:
        row=[0]*(1+len(STAGES));first_zero={str(p):0 for p in STAGES}
        pending_projected=0
        for q in qs:
            for e in range(EP):
                # e=0 here represents positive multiples of EP, NOT exponent zero.
                if (m*pow(7,e,16))%16 not in (0,9):continue
                pending_projected+=1;mask=initial;row[0]+=mask.bit_count()
                for i,p in enumerate(STAGES):
                    mask &= maps[p][q%len(maps[p])][m*powers[p][e]%p]
                    row[i+1]+=mask.bit_count()
                    if not mask:
                        first_zero[str(p)]+=1
                        break
                if mask:raise ArithmeticError(('Uncovered phase state',m,q,e,mask))
        pairs+=pending_projected
        aggregate=[x+y for x,y in zip(aggregate,row)]
        records.append({'multiplier':m,'after_V16_and_primes':row,
                        'projected_pairs_after_V16':pending_projected,
                        'first_empty_prime_counts':first_zero})
    return {'stages':['V16']+list(STAGES),'rows':records,'aggregate':aggregate,
            'raw_after_7_phase_gate':len(mvals)*len(qs)*EP*(SP//3),
            'projected_q_e_pairs_before_V16':len(mvals)*len(qs)*EP,
            'projected_q_e_pairs_after_V16':pairs,
            'uncovered':0}


def build()->dict:
    tb=tables()
    pairs7=tb['7']['V_n_images'][0]
    if sorted(n for v,n in pairs7 if v==0)!=[2]:raise ArithmeticError('7 phase gate failed')
    gate=[]
    for c in (1,3):
        for s in range(3):
            n=c*pow(2,s,7)%7
            gate.append({'c0':c,'s_mod3':s,'n_mod7':n,
                         'V_mod7':sorted(v for v,nn in pairs7 if nn==n)})
    return {'schema':'B699-D-Round26-same-exponent-seven-v1',
            'scope':'Same original n=c0*2^s in the frozen balanced NC3 necessary core',
            'exponent_scope':'e>=1. e_mod720=0 includes 720,1440,...; does not replace 7^e by 1 at p=7.',
            'q_period':QP,'seven_exponent_period':EP,'two_exponent_period':SP,
            'q_mod3':[0,2],'c0_after_7_gate':1,'s_mod3_after_7_gate':1,
            'V_mod16':[0,9],
            'small_part_exponents':{'2':[0,4,6],'3':[0,2,4,5],'5':[0,2,4,5]},
            'multipliers':multipliers(),'tables':tb,'phase_gate7':gate,
            'cover':bitset_cover(tb)}


def main()->None:
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);a=ap.parse_args()
    cert=build();a.out.parent.mkdir(parents=True,exist_ok=True)
    a.out.write_text(json.dumps(cert,ensure_ascii=False,sort_keys=True,indent=2)+'\n',encoding='utf-8')
    print('PHASE_CERTIFICATE_GENERATED=PASS')
    print(json.dumps({'aggregate':cert['cover']['aggregate'],
                      'multipliers':len(cert['multipliers']),
                      'uncovered':cert['cover']['uncovered']},sort_keys=True))
if __name__=='__main__':main()
