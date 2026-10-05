#!/usr/bin/env python3
"""Guard regressions only; these finite examples are not the family proofs."""
from fractions import Fraction as F
import json,time,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parent))
from recover import recover,square_root,pdiv,pmul
from original_pair_audit import audit
checks=[]
def ck(n,t):
 if not t:raise AssertionError(n)
 checks.append(n)
for u in [2,-3,F(1,269),F(4,7)]:
 a=recover(u,F(1,2),F(1,269));ck('entire rational half-slice '+str(u),a['status']=='REJECT_PROVED_ENTIRE_RATIONAL_HALF_SLICE' and not a['NC3_certified'])
for u,y,r in [(2,135,1),(271,404,F(1,269)),(-267,-134,F(269,11)),(F(2,270),F(404,270),7)]:
 a=recover(u,y,r);ck('269 cylinder '+str((u,y,r)),a['status']=='REJECT_PROVED_269_ADIC_CYLINDER' and not a['original_nj_recovered'])
a=recover(2,2,1);ck('general base complete residual refusal',a['status'].startswith('REJECT') and not a['complete_source_powers_verified'])
for u,y,r in [(0,2,1),(1,2,1),(2,0,1),(2,1,1),(2,2,0)]:ck('original nonzero gate '+str((u,y,r)),recover(u,y,r)['status']=='REJECT_ORIGINAL_NONZERO_GATE')
ck('rational-square precision',square_root(F(4,9))==F(2,3) and square_root(F(2,9)) is None and square_root(-1) is None)
ck('full polynomial division',pdiv(pmul([1,2],[3,4]),[1,2])==[F(3),F(4)])
a=audit(36,4,[[0,3,2]]);ck('original p=i=3 and full 3^2 retained',a['sources'][0]['actual_full_exponent']==2 and a['sources'][0]['status']=='FULL_SOURCE_POWER_VERIFIED' and not a['NC3_certified'])
a=audit(36,4,[[0,3,1]]);ck('incomplete power rejected',a['sources'][0]['status']=='REJECT_NOT_ACTUAL_COMPLETE_SOURCE_POWER')
a=audit(36,4,[[0,9,1]]);ck('composite source rejected',a['sources'][0]['status']=='REJECT_NONPRIME')
a=audit(36,4,[[0,1000003,1]]);ck('unverified large prime not accepted',a['sources'][0]['status']=='UNVERIFIED_PRIME_LIMIT' and not a['NC3_certified'])
try:audit(7,4,[]);bad=False
except ValueError:bad=True
ck('illegal original pair rejected',bad)
print(json.dumps({'status':'PASS','checks':len(checks),'checked':checks,'examples_are_not_theorem_proofs':True},ensure_ascii=False,indent=2))
