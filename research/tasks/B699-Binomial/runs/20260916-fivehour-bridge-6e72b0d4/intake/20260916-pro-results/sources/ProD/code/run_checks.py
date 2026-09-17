#!/usr/bin/env python3
"""Reproduce only this round's checks. No historical full chain is replayed.
Examples:
 python3 code/run_checks.py
 python3 code/run_checks.py --stage high --first 0 --last 3
Chunks are execution partitions, not mathematical exponent truncations.
"""
from pathlib import Path
import argparse,json,time
import check_finite,check_h023_domain,assemble_checks,regression,negative_tests
ROOT=Path(__file__).resolve().parents[1]
SPECS=[(2,q,a,min(a+200,884))for q in(3,5)for a in range(0,884,200)]+[(3,5,a,min(a+200,559))for a in range(0,559,200)]

def dump(p,z):p.parent.mkdir(parents=True,exist_ok=True);p.write_text(json.dumps(z,indent=2)+'\n')
def main():
 ap=argparse.ArgumentParser();ap.add_argument('--stage',choices=('all','finite','high','assemble','regression','negative'),default='all');ap.add_argument('--first',type=int,default=0);ap.add_argument('--last',type=int,default=13);a=ap.parse_args();st=time.perf_counter()
 if a.stage in('all','finite'):
  z=check_finite.verify(json.loads((ROOT/'evidence/finite_certificate.json').read_text()));dump(ROOT/'evidence/finite_check.json',z);print('PASS_FINITE_TAILS',flush=True)
 if a.stage in('all','high'):
  assert 0<=a.first<=a.last<=13
  for idx,(p,q,lo,hi)in enumerate(SPECS[a.first:a.last],a.first):
   z=check_h023_domain.check(p,q,lo,hi);dump(ROOT/f'evidence/high_check/{p}-{q}-{lo}-{hi}.json',z);print('PASS_HIGH_CHUNK',idx,flush=True)
 if a.stage in('all','assemble'):
  z=assemble_checks.assemble(ROOT/'evidence/high_check');dump(ROOT/'evidence/high_complete.json',z);print('PASS_COMPLETE_HIGH_DOMAIN',flush=True)
 if a.stage in('all','regression'):regression.main()
 if a.stage in('all','negative'):negative_tests.main()
 print('COMPLETED_STAGE',a.stage,'seconds',round(time.perf_counter()-st,6),flush=True)
if __name__=='__main__':main()
