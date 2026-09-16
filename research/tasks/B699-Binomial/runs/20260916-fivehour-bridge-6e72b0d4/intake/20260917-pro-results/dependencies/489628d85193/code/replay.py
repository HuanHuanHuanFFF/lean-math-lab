#!/usr/bin/env python3
"""Replay only this round's new finite chain; no network, old runs or repository writes."""
from pathlib import Path
import subprocess,sys,time,json,hashlib
ROOT=Path(__file__).resolve().parents[1]

def main():
    begin=time.monotonic()
    mp=json.loads((ROOT/'sources/SOURCE_MAP.json').read_text())
    for e in mp['files']:
        p=ROOT/e['path'];raw=p.read_bytes()
        assert len(raw)==e['bytes'] and hashlib.sha256(raw).hexdigest()==e['sha256']
    phases=[]
    for s in ('generate.py','check.py','regression.py','mutations.py'):
        b=time.monotonic()
        p=subprocess.run([sys.executable,str(ROOT/'code'/s)],cwd=ROOT,text=True,capture_output=True)
        if p.returncode:raise RuntimeError(s+'\n'+p.stdout[-4000:]+'\n'+p.stderr[-4000:])
        phases.append({'script':s,'returncode':p.returncode,'seconds':time.monotonic()-b})
    out={'status':'PASS','source_files':len(mp['files']),'phases':phases,'seconds':time.monotonic()-begin,'python':sys.version.split()[0]}
    (ROOT/'outputs/replay.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out))
if __name__=='__main__':main()
