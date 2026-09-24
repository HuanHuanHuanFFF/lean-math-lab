#!/usr/bin/env python3
"""Replay only this round's selected exact certificates. No network, repository or Lean."""
from pathlib import Path
import argparse,subprocess,sys,hashlib,json
ROOT=Path(__file__).resolve().parents[1]
def hashes():
 count=0
 for ln in (ROOT/'SHA256SUMS').read_text().splitlines():
  h,name=ln.split('  ',1);p=ROOT/name
  if p.resolve().is_relative_to(ROOT.resolve()) is False:raise ValueError('bad hash path')
  if hashlib.sha256(p.read_bytes()).hexdigest()!=h:raise AssertionError('hash mismatch: '+name)
  count+=1
 return count

def main():
 p=argparse.ArgumentParser();p.add_argument('--output-dir',required=True,type=Path);p.add_argument('--regenerate',action='store_true');p.add_argument('--search-timeout',type=int,default=300);a=p.parse_args();a.output_dir.mkdir(parents=True,exist_ok=False)
 before=hashes();print('INPUT_HASHES=PASS',before,flush=True)
 subprocess.run([sys.executable,'-B',str(ROOT/'src/check.py'),'--output-dir',str(a.output_dir/'check')],check=True)
 if (a.output_dir/'check/standard_check.json').read_bytes()!=(ROOT/'outputs/standard_check.json').read_bytes():raise AssertionError('machine results differ from frozen results')
 print('MACHINE_RESULT_BYTE_IDENTICAL=PASS',flush=True)
 if a.regenerate:subprocess.run([sys.executable,'-B',str(ROOT/'src/derive.py'),'--output-dir',str(a.output_dir/'regenerate'),'--timeout',str(a.search_timeout)],check=True)
 after=hashes();assert before==after
 (a.output_dir/'receipt.json').write_text(json.dumps({'internal_hash_checks_before':before,'internal_hash_checks_after':after,'selected_certificates':5,'standard_replay':'PASS','byte_identical_machine_result':True,'optional_regeneration':a.regenerate,'no_Lean':True,'no_external_independent_review':True},indent=2,sort_keys=True)+'\n')
 print('MIX_REGULAR_CLEAN_REPLAY=PASS',flush=True)
if __name__=='__main__':main()
