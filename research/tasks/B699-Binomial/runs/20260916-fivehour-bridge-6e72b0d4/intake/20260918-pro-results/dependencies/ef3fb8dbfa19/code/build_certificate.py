#!/usr/bin/env python3
"""Construct the complete Q0|39 coefficient certificate (exact integers).
Uses prime-power subset enumeration. The verifier uses trial divisors and
an unscaled quadratic independently. No arbitrary search cutoff is used.
"""
from __future__ import annotations
import argparse, json
from math import gcd, isqrt
from pathlib import Path

Q_VALUES=(1,3,13,39)

def factor(n:int)->list[tuple[int,int]]:
    out=[];p=2
    while p*p<=n:
        e=0
        while n%p==0:n//=p;e+=1
        if e:out.append((p,e))
        p=3 if p==2 else p+2
    if n>1:out.append((n,1))
    return out

def unitary(n:int)->list[int]:
    ds=[1]
    for p,e in factor(n):
        ds += [a*p**e for a in ds[:]]
    return sorted(ds)

def build()->dict:
    cases=[];records=[]
    for k in (1,3):
        for q in Q_VALUES:
            bound=(1+27*q*q//512) if k==1 else (6+2187*q*q//512)
            case={'kappa':k,'Q0':q,'bound_d_inclusive':bound,
                  'd_values':[],'states':0,'square_states':0,
                  'valid_primitive_roots':0}
            if k==3 and q%3==0:
                case['reason']='3 does not divide B in family II'
                cases.append(case);continue
            for d in range(3 if k==1 else 5,bound+1,2):
                if k==3 and d%3==0:continue
                M=d*d+2*k*d-2*k*k
                B=d*d+k*d-3*k*k
                cs=[c for c in ((1,3) if k==1 else (1,)) if c*B%q==0]
                if not cs:continue
                for a in unitary(d):
                    if 27*k**4*q*q*d*M<=512*B*B*a**6:continue
                    if d not in case['d_values']:case['d_values'].append(d)
                    for m in unitary(M):
                        v=M//m;E=a*m
                        D=4*q*M*m-a*a*(3*d*d+4*k*d-12*k*k)
                        rr=isqrt(D) if D>=0 else None
                        roots=[]
                        if rr is not None and rr*rr==D:
                            case['square_states']+=1
                            for sign in (-1,1):
                                num=(d+2*k)*a+sign*rr;den=2*v
                                integral=num%den==0
                                V=num//den if integral else None
                                W=k*V if integral else None
                                valid=bool(integral and W is not None and W>E
                                           and W%2==1 and gcd(V,E)==1)
                                case['valid_primitive_roots']+=int(valid)
                                roots.append({'sign':sign,'numerator':num,
                                              'denominator':den,'integral':integral,
                                              'valid_primitive':valid})
                        records.append({'kappa':k,'Q0':q,'d':d,'M':M,'B':B,
                                        'a':a,'m':m,'v':v,'E':E,'allowed_c':cs,
                                        'reduced_discriminant':D,'floor_sqrt':rr,
                                        'rational_root_tests':roots})
                        case['states']+=1
            cases.append(case)
    assert all(c['valid_primitive_roots']==0 for c in cases)
    return {'schema':'B699-ODD13-Q0-v1','Q_values':list(Q_VALUES),
            'theorem_bounds':{'family_I':'512 B^2 a^6 < 27 d M Q0^2',
                              'family_II':'512 B^2 a^6 < 2187 d M Q0^2'},
            'cases':cases,'records':records,
            'conclusion':'no valid primitive (W,E) in the complete Q0|39 domain'}

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True)
    args=ap.parse_args();args.output.parent.mkdir(parents=True,exist_ok=True)
    data=build();args.output.write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'states':len(data['records']),
                      'squares':sum(c['square_states'] for c in data['cases']),
                      'valid_roots':0}))
