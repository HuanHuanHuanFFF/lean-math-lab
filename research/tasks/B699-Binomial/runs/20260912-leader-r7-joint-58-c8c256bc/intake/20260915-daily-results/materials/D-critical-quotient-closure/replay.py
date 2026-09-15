#!/usr/bin/env python3
"""Replay only the new critical-quotient evidence. No legacy archive execution."""
from pathlib import Path
import argparse,subprocess,sys,json,time,tempfile,hashlib
ROOT=Path(__file__).resolve().parent

def run(script,*args):
    t=time.monotonic()
    p=subprocess.run([sys.executable,str(ROOT/'code'/script),*map(str,args)],cwd=ROOT,text=True,capture_output=True)
    (ROOT/'logs'/f'{Path(script).stem}-new.log').write_text(p.stdout+p.stderr)
    if p.returncode:
        print(p.stdout);print(p.stderr,file=sys.stderr);raise RuntimeError(f'{script} failed with status {p.returncode}')
    print(p.stdout.strip())
    return time.monotonic()-t

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--regenerate',action='store_true');args=ap.parse_args()
    start=time.monotonic();timings={};compared=[]
    if args.regenerate:
        with tempfile.TemporaryDirectory(prefix='b699-critical-') as tmp:
            timings['generate']=run('generate.py','--out',tmp)
            for f in ('domains.json','rows.json','families.json'):
                a=(ROOT/'evidence'/f).read_bytes();b=(Path(tmp)/f).read_bytes()
                if a!=b:raise ValueError(f'Fresh mathematical certificate differs: {f}')
                compared.append(f)
    for f in ('verify.py','regression.py','mutation_tests.py'):timings[f]=run(f)
    out={'status':'PASS_NEW_REPLAY','regenerated_identical':compared,'times_seconds':timings,'total_seconds':time.monotonic()-start,'python':sys.version,'old_chain_replayed':False}
    (ROOT/'logs/last_replay.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps(out,ensure_ascii=False))
if __name__=='__main__':main()
