"""Replay only NEW acceptance checks; leave frozen inputs/outputs untouched.
No Lean, network, third-party dependency, or original B699 certificate rerun.
"""
from __future__ import annotations
from pathlib import Path
from datetime import datetime, timezone
import hashlib, json, subprocess, sys, time
ROOT=Path(__file__).resolve().parents[1]

def main():
    manifest=ROOT/'MANIFEST.sha256'
    checked=0
    if manifest.exists():
        for line in manifest.read_text().splitlines():
            expected,rel=line.split('  ',1)
            p=ROOT/rel
            actual=hashlib.sha256(p.read_bytes()).hexdigest()
            if actual!=expected:raise RuntimeError('hash mismatch: '+rel)
            checked+=1
    replay=ROOT/'replay';replay.mkdir(exist_ok=True)
    steps=[]
    for name in ['count_bridge.py','stronger_bridge.py','constant_checks.py']:
        cmd=[sys.executable,'-B',str(ROOT/'code'/name)]
        start=time.perf_counter()
        proc=subprocess.run(cmd,cwd=ROOT,capture_output=True,text=True,timeout=30)
        elapsed=time.perf_counter()-start
        (replay/(name+'.stdout.json')).write_text(proc.stdout)
        (replay/(name+'.stderr.txt')).write_text(proc.stderr)
        step={'command':cmd,'returncode':proc.returncode,'seconds':elapsed,'stdout':proc.stdout,'stderr':proc.stderr}
        steps.append(step)
        if proc.returncode:raise RuntimeError(name+' failed\n'+proc.stderr)
        if json.loads(proc.stdout).get('status')!='PASS':raise RuntimeError(name+' did not PASS')
    result={'status':'PASS','utc':datetime.now(timezone.utc).isoformat(),
            'scope':'NEW integer certificates and fixed rational checks; no Lean and no old evidence rerun',
            'immutable_hashes_verified':checked,'python':sys.version,'steps':steps}
    (replay/'reproduction.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result,indent=2))
if __name__=='__main__':main()
