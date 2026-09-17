#!/usr/bin/env python3
"""Replay ONLY this run's new obligations, not discovery or historical proofs.
Use an external --out directory to keep release members byte-identical.
"""
from __future__ import annotations
import argparse,json,sys,subprocess,time,platform
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);args=ap.parse_args();out=args.out.resolve();out.mkdir(parents=True,exist_ok=True)
    start=time.perf_counter();stages=[]
    for script,label in [('verify_certificate.py','core'),('test_mutations.py','mutations'),('diagnostics.py','diagnostics'),('verify_sources.py','source_bytes')]:
        p=subprocess.run([sys.executable,'-B',str(ROOT/'code'/script),'--out',str(out/(label+'.json'))],text=True,capture_output=True)
        (out/(label+'.stdout.txt')).write_text(p.stdout);(out/(label+'.stderr.txt')).write_text(p.stderr)
        if p.returncode:
            print(p.stdout);print(p.stderr,file=sys.stderr);raise SystemExit(f'FAIL: {script}')
        data=json.loads((out/(label+'.json')).read_text());stages.append({'script':script,'status':data['status'],'seconds':data['seconds']})
    result={'status':'PASS_COMPLETE_NEW_H013_CLOSURE_REPLAY','seconds':time.perf_counter()-start,'python':platform.python_version(),'stages':stages,'new_conclusions':['NC9 and H013 implies n < 2^6400000','H013 all legal j closed using frozen finite and local-cubic contracts','alpha=3*2^a*5^b closed using frozen position classification'],'registered_families':57,'R7':[3,4,5,6,7,8,9],'discovery_replayed':False,'historical_mathematical_replays':0,'lean':False,'external_independent_mathematical_review':False}
    (out/'full_replay.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result,indent=2))
if __name__=='__main__':main()
