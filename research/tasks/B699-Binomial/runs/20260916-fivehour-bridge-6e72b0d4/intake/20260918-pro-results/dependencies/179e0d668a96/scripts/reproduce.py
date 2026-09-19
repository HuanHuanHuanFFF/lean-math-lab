#!/usr/bin/env python3
"""Rebuild evidence without overwriting frozen outputs; compare exact bytes.
Core arithmetic needs only Python 3; --symbolic additionally requires SymPy.
"""
from __future__ import annotations
import argparse,hashlib,json,subprocess,sys
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]


def main() -> None:
    ap=argparse.ArgumentParser()
    ap.add_argument('--output-dir',type=Path,required=True)
    ap.add_argument('--symbolic',action='store_true')
    args=ap.parse_args();out=args.output_dir.resolve()
    if out==(ROOT/'outputs').resolve():ap.error('choose a new directory; frozen outputs must not be overwritten')
    out.mkdir(parents=True,exist_ok=True)
    scripts=ROOT/'scripts';cmds=[
      [sys.executable,'-S','-B',str(scripts/'build_certificate.py'),'--output',str(out/'CERTIFICATE.json')],
      [sys.executable,'-S','-B',str(scripts/'verify_certificate.py'),'--certificate',str(out/'CERTIFICATE.json'),'--output',str(out/'ACCEPTANCE.json'),'--negative-tests'],
      [sys.executable,'-S','-B',str(scripts/'check_examples.py'),'--output-dir',str(out)],
    ]
    if args.symbolic:cmds.append([sys.executable,'-B',str(scripts/'check_identities.py'),'--output',str(out/'SYMBOLIC.json')])
    receipts=[]
    for cmd in cmds:
        proc=subprocess.run(cmd,capture_output=True,text=True,check=False)
        receipts.append({'command':cmd,'exit_code':proc.returncode,'stdout':proc.stdout,'stderr':proc.stderr})
        if proc.returncode:
            (out/'REPRODUCTION.json').write_text(json.dumps({'status':'FAIL','commands':receipts},sort_keys=True,indent=2)+'\n')
            raise SystemExit(proc.returncode)
    names=['CERTIFICATE.json','ACCEPTANCE.json','WEAK_WITNESSES.json','CONSUMER_TESTS.json']
    if args.symbolic:names.append('SYMBOLIC.json')
    comparisons=[]
    for name in names:
        new=(out/name).read_bytes();old=(ROOT/'outputs'/name).read_bytes()
        same=new==old
        comparisons.append({'name':name,'byte_equal':same,'sha256':hashlib.sha256(new).hexdigest()})
        if not same:raise RuntimeError(f'byte mismatch: {name}')
    result={'status':'PASS','commands':receipts,'comparisons':comparisons,
            'scope':'finite arithmetic replay only; infinite claims are proved in PROOFS.md'}
    (out/'REPRODUCTION.json').write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':'PASS','exact_output_matches':len(comparisons)},sort_keys=True))

if __name__=='__main__':main()
