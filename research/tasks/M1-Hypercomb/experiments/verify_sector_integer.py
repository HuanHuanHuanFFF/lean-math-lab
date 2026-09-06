"""Independent sector certificate: pure integer polynomial arithmetic, no CAS.

Construct the 7x7 Sylvester determinant by its permutation definition, specialize
the quartic coefficients, divide the known positive factor, and verify an
explicit coefficientwise lower bound on 0<=s<=4, q>=0, e>=0.
"""
from itertools import permutations
from collections import defaultdict
import json
from pathlib import Path
from math import comb


def add(a,b):
    out=defaultdict(int,a)
    for m,c in b.items(): out[m]+=c
    return {m:c for m,c in out.items() if c}


def mul(a,b):
    out=defaultdict(int)
    for m,c in a.items():
        for n,d in b.items(): out[tuple(i+j for i,j in zip(m,n))]+=c*d
    return {m:c for m,c in out.items() if c}


def scale(a,k): return {m:c*k for m,c in a.items() if c*k}


def power(a,n):
    out={(0,)*len(next(iter(a))):1}
    for _ in range(n): out=mul(out,a)
    return out


def run():
    one4={(0,0,0,0):1}
    cc=[{tuple(int(i==j) for i in range(4)):1} for j in range(4)]
    c1,c2,c3,c4=cc
    ip=[scale(c4,8),{},scale(c2,-2),c1]
    rp=[scale(c4,-8),scale(c3,8),scale(c2,-2),scale(c1,-1),one4]
    mat=[[{} for _ in range(7)] for _ in range(7)]
    for row in range(4):
        for j,p in enumerate(ip): mat[row][row+j]=p
    for row in range(3):
        for j,p in enumerate(rp): mat[row+4][row+j]=p
    determinant={}
    for perm in permutations(range(7)):
        if any(not mat[i][perm[i]] for i in range(7)): continue
        inversions=sum(perm[i]>perm[j] for i in range(7) for j in range(i+1,7))
        term=one4
        for i in range(7): term=mul(term,mat[i][perm[i]])
        determinant=add(determinant,scale(term,(-1)**inversions))

    one={(0,0,0):1}; q={(1,0,0):1}; e={(0,1,0):1}; s={(0,0,1):1}
    aa=add(one,q); bb=add(scale(one,2),q)
    c=add(add(scale(one,3),scale(q,2)),e)
    k=mul(aa,bb)
    concrete=[add(scale(c,2),s),add(add(power(c,2),scale(k,2)),mul(s,bb)),scale(mul(k,c),2),power(k,2)]
    res={}
    for mon,coeff in determinant.items():
        term=scale(one,coeff)
        for p,n in zip(concrete,mon): term=mul(term,power(p,n))
        res=add(res,term)

    # Divide the univariate q factor separately in each (e,s) coefficient.
    denom=scale(mul(power(aa,4),power(bb,4)),4096)
    denomq={m[0]:c for m,c in denom.items()}
    grouped=defaultdict(dict)
    for (iq,ie,iss),coeff in res.items(): grouped[ie,iss][iq]=coeff
    f={}
    for (ie,iss),part in grouped.items():
        part=part.copy()
        while part and max(part)>=8:
            shift=max(part)-8
            assert part[max(part)]%denomq[8]==0
            coeff=part[max(part)]//denomq[8]
            f[shift,ie,iss]=coeff
            for iq,dc in denomq.items():
                part[iq+shift]=part.get(iq+shift,0)-coeff*dc
                if not part[iq+shift]: part.pop(iq+shift)
        assert not part, (ie,iss,part)
    assert mul(denom,f)==res

    # For each negative s^k coefficient use s^k <= 4^(k-2)s^2.
    lower=defaultdict(int)
    negative=[]
    for (iq,ie,iss),coeff in f.items():
        if coeff<0:
            assert iss>=2
            negative.append(([iq,ie,iss],coeff))
            lower[iq,ie,2]+=coeff*4**(iss-2)
        else:
            lower[iq,ie,iss]+=coeff
    lower={m:c for m,c in lower.items() if c}
    assert all(c>0 for c in lower.values())
    assert lower[(0,0,0)]>0
    # Retain all terms, not just a pass/fail count.
    report={"method":"pure integer Sylvester determinant via all permutations; no SymPy",
            "boundary":"z=(-1+i*sqrt(3))*u; I=Im(P)/(sqrt(3)*u)",
            "identity":"resultant_u(I,Re(P))=4096*(q+1)^4*(q+2)^4*F(q,e,s)",
            "domain":"q>=0,e>=0,0<=s<=4",
            "generic_determinant_terms":[[list(m),c] for m,c in sorted(determinant.items())],
            "F_terms":[[list(m),c] for m,c in sorted(f.items())],
            "negative_replacements":negative,
            "lower_bound_terms":[[list(m),c] for m,c in sorted(lower.items())],
            "F_term_count":len(f),"lower_bound_term_count":len(lower),
            "positive_constant":lower[(0,0,0)],"status":"all exact assertions passed"}
    Path(__file__).with_name("sector-integer-certificate.json").write_text(json.dumps(report,indent=2)+"\n",encoding="utf-8")
    print(json.dumps({k:v for k,v in report.items() if not isinstance(v,list)},indent=2))


if __name__=="__main__": run()
