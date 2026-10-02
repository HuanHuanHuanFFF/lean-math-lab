#!/usr/bin/env python3
"""Small regression tests only; global proof is in verify.py and PROOFS.md."""
from pathlib import Path
from fractions import Fraction as F
import json
import sys
sys.path.insert(0,str(Path(__file__).resolve().parent))
from recover import recover,rational_sqrt
from sparse import unpack
root=Path(__file__).resolve().parents[1]
data=json.loads((root/'certificates/scale.json').read_text())
q2,q3=[unpack(data[n],4) for n in ['Q2','Q3']]
# A genuine allowed R7/R6 diagnostic which FAILS R5, not an NC3 candidate.
assert q2.evaluate([-3,F(1,2),3,F(1,316)])==0
assert q3.evaluate([-3,F(1,2),3,F(1,316)])==F(536625,24964)
assert recover('-3','1/2','3')['survivors']==[]
assert recover('-3','1/2','3')['trials'][0]['Lambda']=='3141/1295239'
assert recover('-3','1/2','3/4')['survivors']==[]
assert recover('0','1/2','3')['branch']=='outside-adopted-REG4'
assert rational_sqrt(F(9,16))==F(3,4)
assert rational_sqrt(F(-1)) is None and rational_sqrt(F(2)) is None
assert rational_sqrt(F(0))==0
print(json.dumps({'status':'PASS','test_assertions':9,'purpose':'diagnostics only; no finite scan is used as an exclusion proof'}))
