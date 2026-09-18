#!/usr/bin/env python3
"""Rebuild new finite evidence. Never called by verify.py; no repository access."""
from __future__ import annotations
import hashlib,json,sys
from pathlib import Path
sys.dont_write_bytecode=True
from discovery_tools import make_cert
from consumer import qig_sides,vp
ROOT=Path(__file__).resolve().parents[1]

def dump(name,obj):
    (ROOT/'evidence'/name).write_text(json.dumps(obj,ensure_ascii=False,indent=2)+'\n')

def triples(case,H):
    for E in range(2,H+1):
        for b in range(1,H-E+1,2):
            for c in range(0,H-E-b+1,2):
                if case=='A' and E%2==0:yield E,b,c
                elif case=='B' and E>=3 and E%2==1 and (E+c)%6==1:yield E,b,c

def modular_record(case,H,h2,h3):
    m2=2**h2;m3=3**h3;data=[];coef=3 if case=='A' else 1
    for E,b,c in triples(case,H):
        n2=(coef*pow(5,E,m2)*pow(17,b,m2)*pow(23,c,m2)+5)%m2
        n3=(coef*pow(5,E,m3)*pow(17,b,m3)*pow(23,c,m3)+5)%m3
        r2=(n2-(2 if case=='B' else 0))%m2
        r3=(n3-(2 if case=='A' else 0))%m3
        assert r2 and r3
        data.append([E,b,c,r2,r3])
    dig=hashlib.sha256(json.dumps(sorted(data),separators=(',',':')).encode()).hexdigest()
    new=(12+6*(h2-1)+12*(h3-1))//14
    return {'case':case,'H_max':H,'h2':h2,'h3':h3,'triples':len(data),
            'residue_digest':dig,'all_nonzero':True,'next_H_max':new}

def main():
    certs=[]
    for H,h2,h3 in [(10**32,400,260),(400,45,30)]:
        for case in ('A','B'):certs.append(make_cert(2,h2,H,case))
        certs.append(make_cert(3,h3,H,'shared'))
    dump('dual_certificates.json',certs)
    stages=[modular_record('A',45,18,9),modular_record('A',15,10,8),
            modular_record('B',44,13,8),modular_record('B',12,11,7)]
    dump('modular_caps.json',stages)
    tails=[]
    for case in ('A','B'):
        for E,b,c in triples(case,10):
            n=(3 if case=='A' else 1)*5**E*17**b*23**c+5
            T,L,R=qig_sides(n)
            assert L<R
            tails.append({'case':case,'E':E,'b':b,'c':c,'n':str(n),
                          'u':vp(n-(2 if case=='B' else 0),2),
                          'v':vp(n-(2 if case=='A' else 0),3),
                          'T':str(T),'lhs':str(L),'rhs':str(R)})
    dump('finite_tail.json',tails)
    dump('witnesses.json',[{'n':594662130,'j':297331065,'p':107},
                           {'n':103114412480,'j':51557206240,'p':7}])
    print(json.dumps({'dual_certificates':len(certs),'modular_stages':stages,
                      'terminal_rows':len(tails)},indent=2))

if __name__=='__main__':main()
