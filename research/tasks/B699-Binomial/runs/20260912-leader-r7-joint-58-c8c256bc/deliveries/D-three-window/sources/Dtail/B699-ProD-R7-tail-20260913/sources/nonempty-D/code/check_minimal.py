#!/usr/bin/env python3
"""Minimal B699 consumer acceptance: one fixed logarithm and small modular tables.

The general two-conic theorem in check_log_certificate.py is stronger than this
B699 consumer needs. Here the full noCommon consequence lambda*mu=3 is retained.
"""
from __future__ import annotations
import argparse
import copy
import json
from math import gcd
from pathlib import Path
from check_log_certificate import B0, log_intervals, require

ROOT=Path(__file__).resolve().parents[1]


def possible(a,v,modulus):
    n=pow(2,v,modulus)
    rhs=(4*a*(n-1)*(n-2)+3)%modulus
    return rhs in {(3*u*u)%modulus for u in range(modulus)}


def check(data):
    require(set(data)=={'schema','B','analytic_v_upper_exclusive',
                        'reduced_v_upper_exclusive','approximation'},'minimal fields')
    require(data['schema']=='B699-ProD-three-bin-minimal-1','minimal schema')
    require(data['B']==str(B0) and data['analytic_v_upper_exclusive']==str(10**22),
            'fixed analytic bounds')
    require(data['reduced_v_upper_exclusive']==96,'fixed reduced bound')
    row=data['approximation']
    require(set(row)=={'D','r','s'} and row['D']==3,'only the sqrt3 logarithm is needed')
    require(isinstance(row['r'],str) and isinstance(row['s'],str)
            and len(row['r'])<=64 and len(row['s'])<=64,'certificate integer size/type')
    r,s=int(row['r']),int(row['s'])
    require(r>0 and s>B0 and gcd(r,s)==1 and 20*s<2**96,'approximation integers')
    iv=log_intervals((3,))
    for num,den in ((iv[3][0],iv[2][1]),(iv[3][1],iv[2][0])):
        require(2*B0*abs(s*num-r*den)<den,'independent log enclosure')
    require(96**9<10**18 and 10**22//2>2+69*10**18 and 2*10**22+5<B0,
            'analytic specialization constants')
    # n=2^v with v>=3: lambda*mu=3 iff v mod6 is in {2,3,4,5}.
    ell_classes=[]
    for v in range(6,12):
        n=2**v; M=(n-2)//2
        lam3=(n-1)%3==0 and (n-1)%9!=0
        mu3=M%3==0 and M%9!=0
        if lam3 or mu3: ell_classes.append(v%6)
    require(ell_classes==[2,3,4,5],'ell=3 residue classes')
    periods={7:3,9:6,13:12,27:18,37:36}
    for modulus,period in periods.items():
        require(pow(2,period,modulus)==1,'claimed power period')
    a2_survivors=[v for v in range(12) if v%6 in ell_classes
                  and all(possible(2,v,m) for m in (9,7,13))]
    require(a2_survivors==[],'a=2 must be eliminated without a height bound')
    a1_classes=[v for v in range(36) if v%6 in ell_classes
                and all(possible(1,v,m) for m in (27,13,37))]
    require(a1_classes==[2],'a=1 class reduction')
    terminal=[v for v in range(3,96) if v%36 in a1_classes]
    require(terminal==[38,74],'terminal completeness')
    rejection=[]
    for v,modulus in ((38,17),(74,11)):
        require(not possible(1,v,modulus),'terminal modular exclusion')
        n=pow(2,v,modulus)
        rejection.append({'v':v,'modulus':modulus,
                          'rhs_residue':(4*(n-1)*(n-2)+3)%modulus,
                          'three_times_squares':sorted({3*u*u%modulus for u in range(modulus)})})
    return {'status':'PASS','adopted_algebraic_logarithms':['log(2+sqrt(3))','log(2)'],
            'ell3_classes_mod6':ell_classes,'a2_moduli':[9,7,13],
            'a2_exponent_residues_examined':12,'a2_survivors':[],
            'a1_moduli':[27,13,37],'a1_classes_mod36':a1_classes,
            'a1_height_upper_exclusive':96,'terminal_modular_rejections':rejection,
            'no_D6_logarithm_needed_for_B699_consumer':True}


def mutations(data):
    out=[]
    def add(f):
        x=copy.deepcopy(data);f(x);out.append(x)
    for field in ('r','s'):
        for delta in (-1,1):
            add(lambda x,f=field,d=delta:x['approximation'].__setitem__(f,str(int(x['approximation'][f])+d)))
    add(lambda x:x['approximation'].__setitem__('D',6))
    add(lambda x:x.__setitem__('B',str(B0//10)))
    add(lambda x:x.__setitem__('reduced_v_upper_exclusive',75))
    add(lambda x:x.pop('approximation'))
    for x in out:
        try:check(x)
        except (ValueError,TypeError,KeyError):continue
        raise ValueError('a mutated minimal certificate was accepted')
    return len(out)


def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('certificate',nargs='?',type=Path,default=ROOT/'evidence/minimal-log-certificate.json')
    parser.add_argument('--mutations',action='store_true')
    args=parser.parse_args()
    require(args.certificate.stat().st_size<=16384,'certificate file too large')
    data=json.loads(args.certificate.read_text(encoding='utf-8'))
    out=check(data)
    if args.mutations:out['bad_minimal_certificates_rejected']=mutations(data)
    print(json.dumps(out,sort_keys=True))


if __name__=='__main__':main()
