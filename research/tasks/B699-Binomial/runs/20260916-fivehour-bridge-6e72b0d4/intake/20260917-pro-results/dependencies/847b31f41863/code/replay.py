#!/usr/bin/env python3
"""Replay this round only. It never executes scripts in sources/."""
from pathlib import Path
import subprocess,sys,hashlib,json,time
ROOT=Path(__file__).resolve().parents[1]
start=time.monotonic()
p=ROOT/'evidence/new-certificate.json';before=p.read_bytes()
for name in ['generate.py','check.py','regression.py','mutations.py']:
    subprocess.run([sys.executable,str(ROOT/'code'/name)],cwd=ROOT,check=True)
assert before==p.read_bytes(),'New certificate regeneration mismatch'
out={'status':'PASS_NEW_CHAIN_ONLY','certificate_regenerated_identically':True,
     'certificate_sha256':hashlib.sha256(before).hexdigest(),
     'old_mathematical_chains_replayed':False,'seconds':time.monotonic()-start,
     'python_version':sys.version.split()[0]}
(ROOT/'evidence/replay.json').write_text(json.dumps(out,sort_keys=True,indent=2)+'\n')
print(json.dumps(out))
