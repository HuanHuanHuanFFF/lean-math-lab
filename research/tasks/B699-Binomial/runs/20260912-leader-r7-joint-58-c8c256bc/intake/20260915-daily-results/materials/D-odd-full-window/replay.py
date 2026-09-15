#!/usr/bin/env python3
"""Rebuild/check this round only. No network, Lean, repository, or historical replay."""
from pathlib import Path
import argparse, hashlib, json, os, platform, subprocess, sys, tempfile, time
ROOT=Path(__file__).resolve().parent

def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def verify_manifest():
    manifest=json.loads((ROOT/'MANIFEST.json').read_text())
    listed={x['path'] for x in manifest['files']}
    actual={str(p.relative_to(ROOT)) for p in ROOT.rglob('*') if p.is_file() and p.name!='MANIFEST.json' and '__pycache__' not in p.parts}
    if actual!=listed:
        raise ValueError({'manifest_missing':sorted(actual-listed),'manifest_extra':sorted(listed-actual)})
    for entry in manifest['files']:
        p=ROOT/entry['path']
        if p.stat().st_size!=entry['bytes'] or digest(p)!=entry['sha256']:
            raise ValueError('manifest mismatch: '+entry['path'])
    return len(listed)

def main(args):
    started=time.monotonic();count=verify_manifest()
    out=Path(args.out).resolve() if args.out else Path(tempfile.mkdtemp(prefix='B699-odd-replay-'))
    if out==ROOT or ROOT in out.parents:
        raise ValueError('Use an output directory outside the immutable package.')
    out.mkdir(parents=True,exist_ok=True)
    env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1',PYTHONHASHSEED='0')
    phases=[];compared=[]
    def run(script,subdir,files):
        dest=out/subdir;dest.mkdir(exist_ok=True)
        start=time.monotonic()
        with (out/(subdir+'.log')).open('wb') as log:
            proc=subprocess.run([sys.executable,str(ROOT/'code'/script),'--out',str(dest)],cwd=ROOT,env=env,stdout=log,stderr=subprocess.STDOUT)
        phase={'script':script,'returncode':proc.returncode,'seconds':time.monotonic()-start}
        phases.append(phase)
        if proc.returncode:
            raise RuntimeError('Phase failed; see '+str(out/(subdir+'.log')))
        for filename in files:
            canonical=ROOT/'evidence'/filename;new=dest/filename
            if canonical.read_bytes()!=new.read_bytes():
                raise ValueError('Nonidentical mathematical output: '+filename)
            compared.append({'file':filename,'sha256':digest(new),'byte_identical':True})
        print('PASS',script,'exact files',len(files),flush=True)
    if args.regenerate:
        run('generate.py','generation',['domains.json','rows.json','generation_counts.json'])
    run('verify.py','verification',['checked_heights.json','verification.json'])
    run('regression.py','regression',['regression.json'])
    run('check_failure_models.py','failure-models',['failure_model_verification.json'])
    receipt={'status':'PASS_NEW_ODD_FULL_WINDOW_REPLAY','manifest_entries_checked':count,'regenerated':args.regenerate,'mathematical_outputs':compared,'phase_receipts':phases,'total_seconds':time.monotonic()-started,'python':sys.version,'platform':platform.platform(),'historic_chains_replayed':False,'lean':False,'external_review':False,'repository_writes':False}
    (out/'REPLAY_RECEIPT.json').write_text(json.dumps(receipt,ensure_ascii=False,indent=2)+'\n')
    print('PASS',len(compared),'byte-identical mathematical outputs;',receipt['total_seconds'],'seconds')
    print('Receipt:',out/'REPLAY_RECEIPT.json')
if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--regenerate',action='store_true',help='also rebuild complete finite domains and carry evidence')
    parser.add_argument('--out',help='output directory outside the package; defaults to a new temporary directory')
    main(parser.parse_args())
