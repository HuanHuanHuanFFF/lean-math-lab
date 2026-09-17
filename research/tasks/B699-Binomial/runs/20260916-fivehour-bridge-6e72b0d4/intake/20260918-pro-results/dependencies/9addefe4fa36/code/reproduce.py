#!/usr/bin/env python3
"""Replay all exact checks into a new directory, without modifying sources."""
from __future__ import annotations
import argparse,hashlib,json,subprocess,sys
from pathlib import Path

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output-dir',type=Path,required=True)
    a=ap.parse_args();root=Path(__file__).resolve().parents[1];out=a.output_dir.resolve()
    if out==root/'outputs':raise ValueError('Use a fresh output directory, not frozen outputs.')
    out.mkdir(parents=True,exist_ok=True)
    jobs=[('build_certificate.py',['--output',str(out/'certificate.json')]),
          ('verify_certificate.py',['--certificate',str(out/'certificate.json'),'--output',str(out/'acceptance.json'),'--negative-tests']),
          ('check_algebra.py',['--output',str(out/'algebra.json')]),
          ('check_weak_family.py',['--certificate',str(root/'outputs'/'weak_family_certificate.json'),'--output',str(out/'weak_family_acceptance.json')]),
          ('check_consumer.py',['--output',str(out/'consumer_regression.json')])]
    receipt=[]
    for name,argv in jobs:
        proc=subprocess.run([sys.executable,'-S','-B',str(root/'code'/name),*argv],capture_output=True,text=True)
        (out/(name+'.log')).write_text(proc.stdout+proc.stderr)
        if proc.returncode:raise RuntimeError(name+' failed; inspect '+str(out/(name+'.log')))
        receipt.append({'script':name,'exit_code':proc.returncode})
    compared=[]
    for name in ['certificate.json','acceptance.json','algebra.json','weak_family_acceptance.json','consumer_regression.json']:
        frozen=root/'outputs'/name
        if frozen.exists():
            if frozen.read_bytes()!=(out/name).read_bytes():raise ValueError('Frozen output mismatch: '+name)
            compared.append(name)
    d={'status':'PASS','steps':receipt,'frozen_outputs_identical':compared,
       'source_hash_manifest_sha256':hashlib.sha256((root/'sources'/'SOURCE_HASHES.json').read_bytes()).hexdigest(),
       'lean':False,'independent_researcher_review':False}
    (out/'reproduction.json').write_text(json.dumps(d,sort_keys=True,indent=2)+'\n')
    print(json.dumps(d,sort_keys=True))
if __name__=='__main__':main()
