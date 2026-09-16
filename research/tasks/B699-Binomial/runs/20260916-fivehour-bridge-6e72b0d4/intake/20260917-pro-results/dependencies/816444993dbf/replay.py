#!/usr/bin/env python3
"""Regenerate and verify this round only, into a user-selected directory."""
from __future__ import annotations
import argparse,hashlib,json,subprocess,sys,time
from pathlib import Path


def main()->None:
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--out',type=Path,required=True)
    args=ap.parse_args();root=Path(__file__).resolve().parent;out=args.out.resolve()
    out.mkdir(parents=True,exist_ok=True)
    start=time.perf_counter()
    for script in ('generate.py','verify.py','regression.py','mutations.py'):
        subprocess.run([sys.executable,str(root/'code'/script),'--out',str(out)],check=True,
                       stdout=subprocess.PIPE,stderr=subprocess.PIPE,text=True)
    names=['kernel.json','classes.json','domain.json','family.json','verification.json','regression.json','mutations.json']
    hashes={name:hashlib.sha256((out/name).read_bytes()).hexdigest() for name in names}
    receipt=dict(status='PASS',elapsed_seconds=time.perf_counter()-start,
                 python=sys.version,mathematical_files=hashes,
                 historical_acceptors_executed=False,lean_executed=False)
    (out/'replay_receipt.json').write_text(json.dumps(receipt,sort_keys=True,indent=2)+'\n')
    print(json.dumps(receipt,ensure_ascii=False))

if __name__=='__main__':main()
