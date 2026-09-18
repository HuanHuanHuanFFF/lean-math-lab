#!/usr/bin/env python3
"""Usage: python code/consumer.py N J [--witness-p 11]

Outputs exact algebraic tests and complete-power window defects. This does not
attempt large integer factorization. A supplied small prime can be checked as a
fully explicit common-divisor/carry certificate.
"""
import argparse
import json
from core import analyze, witness

p=argparse.ArgumentParser(description=__doc__)
p.add_argument('n',type=int)
p.add_argument('j',type=int)
p.add_argument('--witness-p',type=int)
a=p.parse_args()
try:
    out=analyze(a.n,a.j)
    if a.witness_p is not None:
        out['verified_witness']=witness(a.n,a.j,a.witness_p)
except ValueError as e:
    p.error(str(e))
print(json.dumps(out,ensure_ascii=False,indent=2))
