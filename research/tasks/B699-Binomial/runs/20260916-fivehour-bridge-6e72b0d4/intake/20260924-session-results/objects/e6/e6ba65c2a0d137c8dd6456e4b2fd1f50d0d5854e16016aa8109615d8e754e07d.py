#!/usr/bin/env python3
"""Exact rational gate checks; these complement, not replace, full regeneration."""
from fractions import Fraction as F
from math import comb, isqrt
from pathlib import Path
import json,sys
ROOT=Path(__file__).resolve().parents[1]
BATCHES=[('f58',q,n) for q,n in [(6,321),(7,1302),(8,4264),(9,12536)]]+ [('r3',q,n) for q,n in [(13,147),(14,232),(15,354)]]

def parse(line):
    x=list(map(int,line.split()));assert len(x)==25
    q,z,l1,l2=x[:4];ms=[];j=4
    for r in range(3,9):ms.append(x[j:j+r//2+1]);j+=r//2+1
    return q,z,l1,l2,ms

def value(rows,xx):
    return sum(y*prod(F(xx-b,a-b) for b,_ in rows if b!=a) for a,y in rows)
def prod(xs):
    z=F(1)
    for x in xs:z*=x
    return z

def check_gate(kind,line):
    q,z,l1,l2,ms=parse(line);S=[];E2=[];load=[0]*9;genus=0
    assert z==sum(m>0 for row in ms for m in row) and z>=14
    for r,row in zip(range(3,9),ms):
        deficit=int(r in (5,8)) if kind=='f58' else int(r==3)
        assert min(row)>=0 and sum(row)==q-deficit
        vals=[]
        for s,m in enumerate(row):
            v=s*(r-s);vals += [F(v)]*m;load[s]+=m;load[r-s]+=m;genus+=comb(m,2)
        if r%2==0:genus+=comb(row[-1],2)
        lam=None
        if kind=='f58' and r in (5,8):lam=F(l1 if r==5 else l2,3)
        if kind=='r3' and r==3:lam=F(l1)
        if lam is not None:
            # A zero-multiplicity source hit would raise its actual ordinary order.
            assert all(m>0 or lam!=s*(r-s) for s,m in enumerate(row))
            vals.append(lam)
        a=b=F(0)
        for v in vals:b+=a*v;a+=v
        assert len(vals)==q;S.append(a);E2.append(b)
    assert max(load)<=2*q
    pts=list(zip(range(3,6),S[:3]))
    assert all(value(pts,r)==s for r,s in zip(range(3,9),S))
    assert sum(c*t for c,t in zip([-1,5,-10,10,-5,1],E2))==0
    if kind=='r3':assert genus==l2 and genus<=(q-1)**2
    return q,z,l1,l2,ms

def check_rank(line,index,q,ms,p):
    x=list(map(int,line.split()));K=(q-2)**2+1
    assert x[:2]==[index,K] and 0<x[2]<p and len(x)==K+3
    assert len(set(x[3:]))==K
    for rid in x[3:]:
        r=rid//100000;s=(rid%100000)//10000;i=(rid%10000)//100;j=rid%100
        assert 3<=r<=8 and 0<=s<=r//2 and i>=1
        w=2 if 2*s==r else 1
        assert i+w*j<w*ms[r-3][s]

def verify(dst):
    dst=Path(dst);out=[];repair=[]
    for p in (32749,32719):assert p>120 and all(p%d for d in range(2,isqrt(p)+1))
    for kind,q,count in BATCHES:
        prefix=f'{kind}_q{q}';gf=dst/'certificates/geometry'/f'{prefix}_gates.txt'
        lines=gf.read_text().splitlines();assert len(lines)==count and len(set(lines))==count
        ranks={p:(dst/'certificates/geometry'/f'{prefix}_p{p}.txt').read_text().splitlines() for p in (32749,32719)}
        assert all(len(v)==count for v in ranks.values())
        for i,line in enumerate(lines):
            qq,_,_,_,ms=check_gate(kind,line);assert qq==q
            for p,rr in ranks.items():check_rank(rr[i],i,q,ms,p)
        out.append(dict(kind=kind,q=q,gates=count,columns=(q-2)**2+1,primes=[32749,32719],all_full_rank=True))
        if kind=='f58' and q in (6,7):
            old=(ROOT/f'inputs/mid/certificates/geometry/F_delta5_delta8_q{q}/gates.txt').read_text().splitlines()
            converted=set()
            for l in old:
                a=list(map(int,l.split()));a[2]*=3;a[3]*=3;converted.add(tuple(a))
            new={tuple(map(int,l.split())) for l in lines}
            integral={a for a in new if a[2]%3==a[3]%3==0}
            assert converted==integral
            repair.append(dict(q=q,old_integer_count=len(old),complete_count=count,additional_fractional=count-len(old),
                fractional_example=list(next(a for a in sorted(new) if a not in integral))))
    assert sum(x['gates'] for x in out)==19156
    # Negative tests use local copies only.
    rejected=[]
    kind,q,_=BATCHES[0];sample=(dst/'certificates/geometry/f58_q6_gates.txt').read_text().splitlines()[0]
    bad=list(map(int,sample.split()));bad[2]+=1
    try:check_gate(kind,' '.join(map(str,bad)))
    except AssertionError:rejected.append('altered_remainder_root')
    rr=(dst/'certificates/geometry/f58_q6_p32749.txt').read_text().splitlines()[0].split();rr[2]='0'
    try:check_rank(' '.join(rr),0,6,parse(sample)[4],32749)
    except AssertionError:rejected.append('zero_minor_header')
    assert len(rejected)==2
    # Counterexample to the *old interpolation inference*, not to B699.
    counter={r:str(F((r-3)*(r-4),3)) for r in range(3,9)}
    assert all(F(counter[r]).denominator==1 for r in (3,4,6,7)) and F(counter[5]).denominator==3
    result=dict(status='PASS_EXACT_RATIONAL_GATE_AND_CERTIFICATE_CHECKS',batches=out,total_systems=19156,
        two_prime_full_rank_checks=38312,repaired_predecessor_batches=repair,
        interpolation_inference_counterexample=counter,negative_tests_rejected=rejected,
        qualifier='Gate membership and rank record audit; exhaustion supplied by the C++ generators and proof. Actual minors rebuilt by verify_minors.cpp.')
    (dst/'certificates/geometry/verification.json').write_text(json.dumps(result,indent=2)+'\n')
    print(result['status'], 'systems',19156,'two_prime_checks',38312,flush=True)
    return result
if __name__=='__main__':
    if len(sys.argv)!=2:raise SystemExit('usage verify_geometry.py OUTPUT_ROOT')
    verify(sys.argv[1])
