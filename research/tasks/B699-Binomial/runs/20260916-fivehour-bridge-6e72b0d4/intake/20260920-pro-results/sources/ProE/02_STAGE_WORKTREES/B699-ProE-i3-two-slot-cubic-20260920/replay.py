#!/usr/bin/env python3
"""Read-only, standard-library replay. Hashes preserve bytes, not proof truth."""
from __future__ import annotations
import hashlib,json,os,sys
from pathlib import Path
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parent
sys.path.insert(0,str(ROOT/'code'))

def hashes():
 return {p.relative_to(ROOT).as_posix():hashlib.sha256(p.read_bytes()).hexdigest()
         for p in ROOT.rglob('*') if p.is_file() and '__pycache__' not in p.parts}

def main():
 before=hashes()
 for line in (ROOT/'SHA256SUMS').read_text().splitlines():
  digest,rel=line.split('  ',1)
  if rel not in before or before[rel]!=digest:raise AssertionError('member SHA mismatch: '+rel)
 listed={line.split('  ',1)[1] for line in (ROOT/'SHA256SUMS').read_text().splitlines()}
 if set(before)-{'SHA256SUMS'}!=listed:raise AssertionError('unlisted or missing member')
 print('PASS_MEMBER_SHA256')
 import primary,independent,mutations
 c=json.loads((ROOT/'certificates/certificate.json').read_text())
 primary.validate(c);print('PASS_PRIMARY_COMPLETE_SLOTS_AND_LUCAS_PRIMES')
 independent.validate(c);print('PASS_INDEPENDENT_COMPLETE_GRIDS_TRIAL_PRIMES_AND_CARRIES')
 results=mutations.run();print('PASS_BAD_CERTIFICATE_REJECTION',len(results),'cases, 2 checkers')
 import consumer
 r=consumer.example();assert r['status']=='PROVED_WHOLE_ROW_COMMON3' and r['n']==2**83
 for X,j,P in [(66,67,67),(66,470,67),(68,805,67)]:assert consumer.pair(X,j,P)['status']=='PROVED_COMMON3'
 assert consumer.pair(66,4,67)['status']=='NOT_COVERED_BY_THIS_CONSUMER'
 for bad in [(65,4,67),(66,3,67),(66,4,2)]:
  try:consumer.pair(*bad)
  except ValueError:pass
  else:raise AssertionError('invalid original input accepted')
 print('PASS_CONSUMER_ORIGINAL_INPUT_BOUNDARIES')
 assert hashes()==before,'replay changed delivered bytes'
 print('PASS_READ_ONLY_TWO_SLOT_CUBIC_REPLAY')
if __name__=='__main__':main()
