#!/usr/bin/env python3
"""Run standard-library verification; optionally regenerate from the original equations."""
import argparse, subprocess, sys, json, hashlib
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def main():
 pa=argparse.ArgumentParser();pa.add_argument('--output-dir',type=Path,required=True);pa.add_argument('--regenerate',action='store_true');a=pa.parse_args()
 a.output_dir.mkdir(parents=True,exist_ok=False)
 subprocess.run([sys.executable,'-B',str(ROOT/'src/check_auxiliary.py')],check=True)
 subprocess.run([sys.executable,'-B',str(ROOT/'src/check_standard.py'),'--output-dir',str(a.output_dir/'standard')],check=True)
 frozen=ROOT/'outputs/standard_check.json'
 if frozen.exists():
  assert frozen.read_bytes()==(a.output_dir/'standard/standard_check.json').read_bytes(),'Verifier output differs from frozen output'
 if a.regenerate:subprocess.run([sys.executable,'-B',str(ROOT/'src/derive.py'),'--output-dir',str(a.output_dir/'regenerated')],check=True)
 receipt={'standard_library_check':'PASS','verifier_output_byte_identical':frozen.exists(),'regenerated':a.regenerate,'certificate_sha256':hashlib.sha256((ROOT/'certificates/four20.json').read_bytes()).hexdigest(),'mathematical_scope':'new whole-four genuine quadratic remainder excluded; mixed recovery remains OPEN'}
 (a.output_dir/'receipt.json').write_text(json.dumps(receipt,sort_keys=True,indent=2)+'\n')
 print('M2_D20_NOFOUR_CLEAN_REPLAY=PASS')
if __name__=='__main__':main()
