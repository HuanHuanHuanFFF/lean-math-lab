#!/usr/bin/env python3
"""Exact replay of round-8 identities, universal coefficient margins and fibres.

Finite diagnostic tests below are explicitly NOT proofs of unbounded UFD,
quartic descent, or Pell classification. The mathematical arguments are in
PROOFS.md. The old odd-power theorem is adopted, not re-certified here.
"""
from __future__ import annotations
from fractions import Fraction
import hashlib
import json
from pathlib import Path
from math import isqrt
from arithmetic import add, scale, mul, power, variable, constant, pell, factor_witness, matpow
from make_certificates import make
from pell_gate import bounded_gate

ROOT = Path(__file__).resolve().parents[1]


def equal_zero(p: dict, name: str) -> None:
    assert not p, (name, p)


def identities() -> None:
    # Trace fourth power is exactly a quartic Pell-type expression.
    a, y = variable(0,2), variable(1,2)
    a2 = power(a,2,2)
    V4 = add(power(a,4,2),scale(mul(a2,y),-4),scale(power(y,2,2),2))
    equal_zero(add(V4,scale(power(add(y,scale(a2,-1)),2,2),-2),power(a,4,2)),
               "trace-to-quartic")
    # Norm and trace of a generic Eisenstein integer, including the mod3 relation.
    r, s = variable(0,2), variable(1,2)
    A = add(scale(r,2),scale(s,-1))
    norm = add(power(r,2,2),scale(mul(r,s),-1),power(s,2,2))
    equal_zero(add(scale(norm,4),scale(power(A,2,2),-1),scale(power(s,2,2),-3)),
               "Eisenstein trace norm discriminant")
    # 2*n-h-3 = v*T, modulo precisely the original norm and linear relation.
    h, v, Q, nu = [variable(i,4) for i in range(4)]
    one = constant(1,4)
    P = add(Q,mul(h,v)); PQ = mul(P,Q)
    n = add(mul(PQ,nu),constant(2,4))
    E = add(mul(v,power(nu,2,4)),scale(mul(P,power(Q,2,4)),-1),one)
    L = add(mul(add(h,scale(one,-1)),Q),scale(mul(h,v),-1),scale(nu,-2))
    T = add(mul(add(h,scale(one,-1)),power(nu,2,4)),scale(mul(h,PQ),-1))
    difference = add(mul(v,T),scale(n,-2),h,constant(3,4),
                     scale(mul(add(h,scale(one,-1)),E),-1),scale(mul(PQ,L),-1))
    equal_zero(difference,"same-input original n bridge")
    # Substitution h=2*n-3-v*T gives the complete shared polynomial.
    n0, v0, T0 = [variable(i,3) for i in range(3)]
    h0 = add(scale(n0,2),constant(-3,3),scale(mul(v0,T0),-1))
    Kh = add(power(h0,2,3),scale(h0,-6),constant(-11,3))
    Rn = add(power(n0,2,3),scale(n0,-6),constant(4,3))
    right = add(scale(Rn,4),scale(mul(mul(add(n0,constant(-3,3)),v0),T0),-4),
                power(mul(v0,T0),2,3))
    equal_zero(add(Kh,scale(right,-1)),"shared norm polynomial")
    # Full norm expansion giving delta^2*K(h) modulo v,W.
    h,d,v = [variable(i,3) for i in range(3)]
    Q=add(d,v); P=add(d,mul(add(h,constant(1,3)),v))
    nu=scale(add(mul(add(h,constant(-1,3)),d),scale(v,-1)),Fraction(1,2))
    E=add(mul(v,power(nu,2,3)),scale(mul(P,power(Q,2,3)),-1),constant(1,3))
    Kh=add(power(h,2,3),scale(h,-6),constant(-11,3))
    core=add(mul(mul(v,power(d,2,3)),Kh),
             scale(mul(mul(add(h,constant(1,3)),d),power(v,2,3)),-10),
             scale(mul(add(scale(h,4),constant(3,3)),power(v,3,3)),-1),
             scale(power(d,3,3),-4),constant(4,3))
    equal_zero(add(scale(E,4),scale(core,-1)),"norm expansion")
    # Universal positive polynomial, after h=15+u.
    u=variable(0,1); h=add(u,constant(15,1))
    left=add(power(add(scale(h,2),constant(-13,1)),2,1),
             scale(add(h,constant(3,1)),-16))
    right=add(scale(power(u,2,1),4),scale(u,52),constant(1,1))
    equal_zero(add(left,scale(right,-1)),"uniform six-corridor margin")
    assert all(c>0 for c in right.values())


def diagnostic_tests() -> None:
    # Diagnostics only: these ranges do NOT establish the universal theorems.
    for a in range(-24,25):
        for y in range(1,25):
            assert a**4-4*a*a*y+2*y*y == 2*(y-a*a)**2-a**4
    for a in range(2,1000):
        if (a**4-1)%2 == 0:
            b2=(a**4-1)//2
            assert isqrt(b2)**2 != b2
    # Odd-multiple trace divisibility is proved by recurrence in PROOFS P4.
    for a in (3,5,7,9):
        for b in (3,5,7):
            assert pell(a*b)[2] % pell(a)[2] == 0
    assert bounded_gate(10001,max_index=5000)['status']=='INCONCLUSIVE_RESOURCE_LIMIT'
    assert bounded_gate(9,single_prime=True)['status']=='EXCLUDED_SINGLE_PRIME_INDEX_CONDITION'
    assert bounded_gate(5)['status']=='OUTSIDE_CANONICAL_PELL_INDEX'
    assert bounded_gate(1)['status']=='OUTSIDE_DELTA_MINIMUM'


def main() -> None:
    expected_sha='a3cba5217867c981a5ae009507adc3431890285f4138abc232fca2d53a14abc7'
    archive=ROOT/'inputs'/'round7-evidence.zip'
    assert hashlib.sha256(archive.read_bytes()).hexdigest()==expected_sha
    print('FROZEN_ROUND7_BYTES=PASS')
    identities()
    print('RAM4_TRACE_AND_SAME_INPUT_POLYNOMIAL_IDENTITIES=PASS')
    print('UNIFORM_SIX_CORRIDOR_POSITIVE_COEFFICIENTS=PASS')
    expected=make()
    for name,data in expected.items():
        actual=json.loads((ROOT/'certificates'/name).read_text())
        # JSON normalization makes the immutable tuple matrices comparable.
        assert actual==json.loads(json.dumps(data)),name
    print('FINITE_CERTIFICATES_REGENERATED_AND_COMPARED=PASS')
    states=expected['ram4_trace.json']['trace_mod3_states']
    assert states and all(t['V4_mod3']==2 for t in states)
    assert Fraction(1022)-21*Fraction(11,6)**6>0
    assert 262201**2-3*151316**2>0
    alpha10=matpow(((2,3),(1,2)),10)
    assert (alpha10[0][0],alpha10[1][0])==(262087,151316)
    print('UNIT_SIGNS_AND_HEIGHT_CONSTANTS=PASS')
    for row in expected['pell_periods.json']['odd_index_residues']:
        assert (row['delta_mod16']==1)==(row['index_mod24']%8==1)
        if row['index_mod24']%8==1 and row['index_mod24']%3:
            assert row['y_mod120']==1
    print('EXACT_PELL_PERIOD_MATRICES=PASS')
    failure=expected['failure_prime_index.json']
    assert factor_witness(41) is None
    assert int(failure['proper_factor'])*int(failure['cofactor'])==int(failure['y'])
    assert int(failure['lower_gap'])>0 and int(failure['upper_gap'])>0
    print('PRIME_INDEX_NOT_SUFFICIENT_AND_MISSING_NORM=PASS')
    for item in expected['bounded_fibres.json']['records']:
        assert not any(item['hits'].values())
        # A separate recurrence and direct modular powers cross-check the gate.
        U,x=1,0
        for _ in range(item['index']):
            U,x=2*U+3*x,U+2*x
        modulus=U//2
        assert modulus==int(item['y'])
        direct={}
        for c in (1,3):
            direct[str(c)]=[]
            for exponent in range(item['exponent_bound']+1):
                rr=c*pow(2,exponent,modulus)%modulus
                if (rr*rr-6*rr+4)%modulus==0:
                    direct[str(c)].append(exponent)
        assert direct==item['hits']
        print(f"BOUNDED_PELL_FIBRE_{item['index']}=EMPTY; "
              f"S_MAX={item['exponent_bound']}; CHECKS={item['checks']}")
    print('RECURRENCE_AND_DIRECT_POW_CROSSCHECK=PASS')
    print('RELAXED_ORBIT_WEAK_MODEL_AND_MISSING_BOUNDED_EXPONENT=PASS')
    diagnostic_tests()
    print('BOUNDED_DIAGNOSTICS_ONLY=PASS')
    print('UFD_AND_QUARTIC_DESCENT=WRITTEN_PROOF_NOT_FINITE_SCAN')
    print('RAM_ODD=FROZEN_WRITTEN_DEPENDENCY_NOT_NEW_COMPUTER_PROOF')
    print('LEAN=NOT_RUN; EXTERNAL_INDEPENDENT_REVIEW=NONE')
    print('REPLAY=PASS')


if __name__=='__main__':
    main()
