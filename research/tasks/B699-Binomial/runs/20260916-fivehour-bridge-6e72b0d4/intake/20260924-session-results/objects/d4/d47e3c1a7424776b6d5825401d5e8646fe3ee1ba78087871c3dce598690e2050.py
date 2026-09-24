#!/usr/bin/env python3
"""Replay only this round. Defaults to Python standard library, no Lean/network/repo."""
import argparse, hashlib, json, os, subprocess, sys
from pathlib import Path
if not __debug__:
    raise RuntimeError('Run without -O.')
ROOT=Path(__file__).resolve().parents[1]

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output-dir',type=Path,required=True)
    ap.add_argument('--regenerate',action='store_true',help='Optional: requires SymPy 1.14.0')
    a=ap.parse_args();a.output_dir.mkdir(parents=True,exist_ok=False)
    env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1','PYTHONHASHSEED':'0'}
    cmd=[sys.executable,'-B',str(ROOT/'src/check_standard.py'),'--output-dir',str(a.output_dir/'standard')]
    proc=subprocess.run(cmd,capture_output=True,text=True,env=env)
    (a.output_dir/'standard.log').write_text(proc.stdout+proc.stderr)
    print(proc.stdout,end='')
    if proc.returncode:raise RuntimeError('Standard-library replay failed; see log')
    actual=(a.output_dir/'standard/standard_check.json').read_bytes()
    frozen=ROOT/'outputs/standard_check.json'
    if frozen.exists() and actual!=frozen.read_bytes():raise RuntimeError('Frozen output differs')
    receipt={'standard_library':'PASS','frozen_output_identical':frozen.exists(),
        'certificate_sha256':hashlib.sha256((ROOT/'certificates/zero20.json').read_bytes()).hexdigest(),
        'regeneration':'not requested','scope':'zero slot and four-slot remainder<=1 only; general d20 OPEN'}
    if a.regenerate:
        p=a.output_dir/'zero20_regenerated.json'
        proc=subprocess.run([sys.executable,'-B',str(ROOT/'src/derive.py'),'--out',str(p)],capture_output=True,text=True,env=env)
        (a.output_dir/'regenerate.log').write_text(proc.stdout+proc.stderr);print(proc.stdout,end='')
        if proc.returncode:raise RuntimeError('Regeneration failed; see log')
        if p.read_bytes()!=(ROOT/'certificates/zero20.json').read_bytes():raise RuntimeError('Regenerated certificate differs')
        receipt['regeneration']='PASS; bytes identical'
        print('CERTIFICATE_REGENERATION_BYTE_IDENTICAL=PASS')
    (a.output_dir/'replay_receipt.json').write_text(json.dumps(receipt,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print('M2_D20_PARTIAL_CLEAN_REPLAY=PASS')
if __name__=='__main__':main()
