#!/usr/bin/env python3
"""Replay Q17 evidence. Standard library only. No unbounded search or old-chain replay.

Published Bugeaud Theorem 3 is an explicit paper dependency, not proved by this script.
Analytic monotonicity and source-window arguments are in PROOFS.md.
"""
from __future__ import annotations
import argparse
from fractions import Fraction as F
from hashlib import sha256
import json
from pathlib import Path
import sys
import time

sys.dont_write_bytecode = True
from poly_exact import const as c, add, scale, sub, mul, power, falling_binom, assert_equal
from consumer import small6, qig_sides, vp_positive, window_witness_divisor

ROOT = Path(__file__).resolve().parents[1]
CAP = 10**12


def require(ok: bool, message: str) -> None:
    if not ok:
        raise AssertionError(message)


def modpow_binary(a: int, e: int, m: int) -> int:
    out = 1
    a %= m
    while e:
        if e & 1:
            out = out*a % m
        a = a*a % m
        e >>= 1
    return out


def check_hashes() -> dict:
    manifest = ROOT/'SHA256SUMS'
    if not manifest.exists():
        raise FileNotFoundError("SHA256SUMS is required for a sealed evidence replay")
    count = 0
    for line in manifest.read_text().splitlines():
        expected, rel = line.split('  ', 1)
        p = ROOT/rel
        require(p.is_file(), f"missing manifest member {rel}")
        require(sha256(p.read_bytes()).hexdigest() == expected, f"hash mismatch {rel}")
        count += 1
    return {"present": True, "verified": count}


def polynomial_checks() -> dict:
    j = {(1, 0): F(1)}
    k = {(0, 1): F(1)}
    n = add(j, k)
    X = mul(j, k)
    coeff = [mul(falling_binom(j, t), falling_binom(k, 4-t)) for t in range(5)]
    c0,c1,c2,c3,c4 = coeff
    I = add(scale(mul(c4,c0),12), scale(mul(c3,c1),-3), power(c2,2))
    J = add(scale(mul(c4,c2,c0),72),scale(mul(c3,c2,c1),9),
            scale(mul(c4,power(c1,2)),-27),scale(mul(power(c3,2),c0),-27),
            scale(power(c2,3),-2))
    Xm = add(X,scale(n,-1),c(1))
    Iright = mul(X,Xm,sub(n,c(3)),sub(n,c(2)))
    Jright = scale(mul(power(X,2),Xm,power(sub(n,c(3)),2),sub(n,c(2))),-1)
    counts = {}
    counts['quartic_I'] = assert_equal(scale(I,8),Iright,'quartic I')
    counts['quartic_J'] = assert_equal(scale(J,16),Jright,'quartic J')
    A = sub(mul(sub(n,c(1)),sub(n,c(2))),X)
    gap = mul(power(X,3),power(Xm,2),power(sub(n,c(3)),3),power(sub(n,c(2)),2),A)
    counts['positive_gap'] = assert_equal(scale(sub(power(J,2),scale(power(I,3),2)),256),gap,'positive gap')
    # Check the X=n^2/4 evaluation by cross multiplication in a separate univariate ring.
    N = {(1,0):F(1)}
    XX = scale(power(N,2), F(1,4))
    gg = mul(power(XX,3),power(add(XX,scale(N,-1),c(1)),2),
             power(sub(N,c(3)),3),power(sub(N,c(2)),2),
             sub(mul(sub(N,c(1)),sub(N,c(2))),XX))
    FF = mul(N,sub(N,c(1)),sub(N,c(2)),sub(N,c(3)))
    lhs = scale(mul(gg,power(sub(N,c(1)),6),power(sub(N,c(3)),3)),2**20)
    rhs = scale(mul(power(FF,6),add(scale(power(N,2),3),scale(N,-12),c(8))),256)
    counts['QIG_upper_evaluation'] = assert_equal(lhs,rhs,'QIG upper evaluation')
    # Positivity of the two relevant univariate polynomials for n=14+x>=14.
    Z = add(N,c(14))
    deriv = add(scale(power(Z,2),2),scale(Z,-9),c(6))
    endpos = add(scale(power(Z,2),3),scale(Z,-12),c(8))
    require(all(v>0 for v in deriv.values()), 'derivative positivity')
    require(all(v>0 for v in endpos.values()), 'gap endpoint positivity')
    return {"exact_polynomial_identities": counts,
            "all_arithmetic": "fractions.Fraction; coefficient equality, no floating point"}


def parameter_checks() -> dict:
    def vq(x: F,p: int) -> int:
        return vp_positive(abs(x.numerator),p)-vp_positive(x.denominator,p)
    require(vq(F(5)-1,2)==2, 'H1/H2 base5')
    require(vq(F(-3,17)-1,2)==2, 'H1/H2 -3/17')
    require(vq(F(25)-1,3)==1, 'H1 base25')
    require(vq(F(-1,17)-1,3)==2, 'H1 -1/17')
    require(F(8,3)**2>5 and F(8,3)**3>17, 'lower exponential comparisons')
    require(3**2<17 and 3<4, 'upper exponential comparisons')
    require(67*16*2*3==6432 and 67*4*3==804, 'p-adic constants')
    require(6*6432+12*804==48240, 'sum constants')
    require(13+48240<49000, 'absolute exponent coefficient')
    require(3*30**6<2**32, 'mass coefficient')
    require(CAP>7000*44**2, 'analytic cap endpoint')
    return {"published_dependency": "Bugeaud 2002 Theorem 3, mu=4, c3=67",
            "hypotheses_valuations": {"p2":[2,2],"p3":[1,2]},
            "u_bound_coefficient":6432,"v_bound_coefficient":804,
            "absolute_E_cap_strict":CAP}


def check_roots(p: int) -> dict:
    rows = json.loads((ROOT/f'evidence/root_p{p}.json').read_text())
    offset = 3 if p==2 else 5
    h = 2 if p==2 else 1
    period = 1 if p==2 else 2
    a = 0 if p==2 else 1
    for idx,row in enumerate(rows):
        expected = dict(h=h,modulus=p**h,period=period,root=a)
        require(row==expected, f'p{p} trace record {idx}')
        require(0<=a<period, 'canonical exponent residue')
        require((17*modpow_binary(5,a,p**h)+offset)%(p**h)==0,'root congruence')
        if idx+1<len(rows):
            require(a<CAP, 'trace continued after the absolute stopping bound')
            candidates = [a+t*period for t in range(p)
                          if (17*pow(5,a+t*period,p**(h+1))+offset)%(p**(h+1))==0]
            require(len(candidates)==1,'unique lift at current certified level')
            a = candidates[0]
            h += 1
            period *= p
    require(a>CAP,'terminal residue must exceed absolute cap')
    if p==2:
        require((h,period,a)==(43,2199023255552,1772029068551),'p2 terminal contract')
    else:
        require((h,period,a)==(28,15251194969974,5623533059497),'p3 terminal contract')
    # Independent final order arithmetic: full order and failed order / p.
    modulus=p**h
    require(modpow_binary(5,period,modulus)==1,'final full order test')
    require(modpow_binary(5,period//p,modulus)!=1,'final p-factor order test')
    if p==3:
        require(modpow_binary(5,period//2,modulus)!=1,'final 2-factor order test')
    return {"prime":p,"levels":len(rows),"terminal":rows[-1],
            "conclusion_under_CAP":f'v{p} <= {h-1}'}


def check_tail() -> dict:
    rows = json.loads((ROOT/'evidence/finite_tail.json').read_text())
    require(13+6*42+12*27==589,'final bit exponent')
    require(14*42<589 and 14*43>=589,'deduced finite E endpoint')
    exponents = [E for E in range(7,43) if E%6==1]
    require([r['E'] for r in rows]==exponents,'complete finite exponent domain')
    for row in rows:
        E=row['E']; n=17*5**E+5
        u=vp_positive(n-2,2);v=vp_positive(n,3)
        T,lhs,rhs=qig_sides(n)
        expected=dict(E=E,k=(E-1)//6,n=n,u=u,v=v,T4=T,lhs=lhs,rhs=rhs,strict_QIG=lhs<rhs)
        require(row==expected,f'finite row E={E}')
        require(n%9000==5130 and vp_positive(n-5,5)==E,'exact row class and full5 exponent')
        require(T==30*2**u*3**v,'actual native i6 small parts')
        require(rhs>lhs,'strict original-row QIG consumer')
    return {"complete_candidate_exponents":exponents,"strict_QIG_rows":len(rows),
            "unresolved_terminal_rows":0,"enumerated_target_j":0}


def check_witness_api() -> dict:
    # One exact finite diagnostic, not part of the infinite coverage proof.
    n=17*5**7+5;j=7;p=4919
    ans=window_witness_divisor(n,j)
    require(ans is not None and ans['divisor']%p==0,'witness divisor check')
    require(p>=7 and p!=17,'threshold and non17')
    d=2
    while d*d<=p:
        require(p%d!=0,'deterministic primality')
        d+=1
    def vpbin(n,j,p):
        q=p;val=0
        while q<=n:
            val+=n//q-j//q-(n-j)//q
            q*=p
        return val
    src=vpbin(n,6,p);tgt=vpbin(n,j,p)
    require(src>0 and tgt>0,'actual common-prime diagnostic')
    return {"n":n,"j":j,"p":p,"source_vp":src,"target_vp":tgt,
            "diagnostic_only":True}


def run() -> dict:
    started=time.perf_counter()
    before=check_hashes()
    poly=polynomial_checks()
    pars=parameter_checks()
    roots=[check_roots(2),check_roots(3)]
    tail=check_tail()
    wit=check_witness_api()
    after=check_hashes()
    require(before==after,'manifest unchanged after replay')
    return {"status":"PASS_Q5_17_FULL_ROW_CLOSURE","hashes_before":before,
            "hashes_after":after,"polynomials":poly,"parameters":pars,
            "roots":roots,"finite_tail":tail,"witness_diagnostic":wit,
            "paper_dependency_not_formalized":True,"Lean":False,
            "external_independent_review":False,
            "elapsed_seconds":round(time.perf_counter()-started,6)}

if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--json',action='store_true',help='emit detailed exact replay summary')
    args=parser.parse_args()
    try:
        result=run()
    except Exception as exc:
        print(f'FAIL_Q5_17_CLOSURE: {type(exc).__name__}: {exc}',file=sys.stderr)
        raise SystemExit(1)
    print(json.dumps(result,ensure_ascii=False,indent=2) if args.json else result['status'])
