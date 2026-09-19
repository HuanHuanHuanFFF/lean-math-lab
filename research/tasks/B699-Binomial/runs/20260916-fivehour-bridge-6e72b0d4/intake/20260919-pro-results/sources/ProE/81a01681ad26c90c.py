#!/usr/bin/env python3
"""Replay new certificates only. No previous run or numeric search is invoked."""
from pathlib import Path
import json,subprocess,sys
ROOT=Path(__file__).resolve().parents[1]
def main():
    records=[]
    for script,label in [('generate.py','primary'),('verify.py','secondary'),('test_corruption.py','corruption')]:
        r=subprocess.run([sys.executable,str(ROOT/'src'/script)],capture_output=True,text=True,timeout=45)
        (ROOT/'outputs'/(label+'.stdout.txt')).write_text(r.stdout)
        (ROOT/'outputs'/(label+'.stderr.txt')).write_text(r.stderr)
        if script=='verify.py' and r.returncode==0:
            (ROOT/'outputs/secondary.json').write_text(r.stdout)
        records.append({'script':script,'exit_code':r.returncode,'output':r.stdout.strip()})
        if r.returncode:
            print(r.stderr or r.stdout);return r.returncode
    (ROOT/'outputs/replay.json').write_text(json.dumps({'status':'PASS','runs':records},ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'status':'PASS','replayed':[r['script'] for r in records], 'numeric_input_search':False},ensure_ascii=False));return 0
if __name__=='__main__':sys.exit(main())
