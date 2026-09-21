"""Additional rational-interval diagnostic; NOT the universal proof in PROOFS."""
from pathlib import Path
from fractions import Fraction
from math import isqrt
import json
from arithmetic import balanced_pell

root=Path(__file__).resolve().parents[1]
rows=json.loads((root/'certificates/smooth_terminal.json').read_text())['rows']
for row in rows:
    d,y=balanced_pell(row['t']);A,B=row['A'],row['B']
    v=A*y;Q=d+v;S=(Q**5-d*d)//v
    M=1 << (d.bit_length()+64)
    a=isqrt(S*M*M);b=isqrt(3*M*M)
    Ylo,Yhi=Fraction(a,M),Fraction(a+1,M)
    rlo,rhi=Fraction(b,M),Fraction(b+1,M)
    hlo=(2*Ylo+2*Q*Q+Q*d)/(d*d)
    hhi=(2*Yhi+2*Q*Q+Q*d)/(d*d)
    R0=Fraction(12*(d*d-d),B*B)+Fraction(30*y,B)+Fraction(27,4)
    elo=hlo-R0+Fraction(10,B)*rlo
    ehi=hhi-R0+Fraction(10,B)*rhi
    assert -Fraction(32*B,d)<elo<=ehi<Fraction(32*B,d)
print(f'RATIONAL_ROOT_INTERVAL_DIAGNOSTIC=PASS; STATES={len(rows)}; UNIVERSAL_PROOF_IS_IN_PROOFS_P2')
