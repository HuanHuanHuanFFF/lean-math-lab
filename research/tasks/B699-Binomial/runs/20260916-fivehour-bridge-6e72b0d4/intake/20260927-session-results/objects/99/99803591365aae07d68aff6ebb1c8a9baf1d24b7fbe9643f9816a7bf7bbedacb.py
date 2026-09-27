#!/usr/bin/env python3
"""Compare all deterministic regenerated certificate bytes."""
import sys,hashlib,json
from pathlib import Path
sys.dont_write_bytecode=True
root=Path(sys.argv[1]);run=Path(sys.argv[2])
def digests(p):return {str(f.relative_to(p)):hashlib.sha256(f.read_bytes()).hexdigest()for f in sorted(p.rglob('*'))if f.is_file()}
a=digests(root/'certificates');b=digests(run/'certificates');assert a==b,('certificate_mismatch',[k for k in set(a)|set(b)if a.get(k)!=b.get(k)])
r=json.loads((run/'REPLAY_RECEIPT.json').read_text());assert r['status']=='PASS'and r['exit_code']==0 and r['certificate_sha256']==b
print(json.dumps({'status':'PASS','certificate_files':len(a),'all_certificate_bytes_equal':True}))
