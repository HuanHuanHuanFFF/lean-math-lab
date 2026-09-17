#!/usr/bin/env python3
"""Replay into a separate output directory without rewriting frozen evidence."""
from __future__ import annotations
import argparse,hashlib,json,subprocess,sys
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def digest(path):return hashlib.sha256(path.read_bytes()).hexdigest()
def main():
    p=argparse.ArgumentParser();p.add_argument('--output-dir',type=Path,required=True);args=p.parse_args()
    out=args.output_dir.resolve()
    if out==ROOT or ROOT in out.parents:raise ValueError('use an output directory outside the frozen evidence tree')
    out.mkdir(parents=True,exist_ok=True)
    sources=json.loads((ROOT/'SOURCE_HASHES.json').read_text())
    for item in sources:
        f=ROOT/item['stored_path']
        if digest(f)!=item['sha256']:raise ValueError('changed source: '+item['stored_path'])
    manifest_count=None
    if (ROOT/'MANIFEST.json').exists():
        entries=json.loads((ROOT/'MANIFEST.json').read_text())
        for item in entries:
            if digest(ROOT/item['path'])!=item['sha256']:raise ValueError('manifest mismatch: '+item['path'])
        manifest_count=len(entries)
    stages=[('verify_certificate.py','acceptance.json',['--negative-tests']),
            ('check_arithmetic.py','arithmetic.json',[]),('check_consumer.py','consumer.json',[])]
    receipts=[]
    for script,name,extra in stages:
        command=[sys.executable,'-S','-B',str(ROOT/'code'/script),'--output',str(out/name)]+extra
        run=subprocess.run(command,text=True,capture_output=True)
        (out/(script+'.log')).write_text(run.stdout+run.stderr)
        if run.returncode:raise RuntimeError(script+' failed; see replay log')
        frozen=ROOT/'outputs'/name
        equal=(digest(out/name)==digest(frozen)) if frozen.exists() else None
        if equal is False:raise ValueError('frozen output mismatch: '+name)
        receipts.append({'stage':script,'exit_code':0,'output':name,'sha256':digest(out/name),'frozen_bytes_equal':equal})
    result={'sources_checked':len(sources),'manifest_members_checked':manifest_count,'stages':receipts,
            'scope':'author exact replay; not Lean or external independent review'}
    (out/'REPRODUCTION.json').write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'sources_checked':len(sources),'manifest_members_checked':manifest_count,'stages':len(stages),'all_passed':True}))
if __name__=='__main__':main()
