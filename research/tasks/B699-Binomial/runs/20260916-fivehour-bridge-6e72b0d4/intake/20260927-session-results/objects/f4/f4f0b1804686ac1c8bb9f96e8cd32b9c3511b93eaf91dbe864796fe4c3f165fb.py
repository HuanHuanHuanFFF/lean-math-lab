#!/usr/bin/env python3
"""Verify exactly the delivered payload set; manifest excludes itself."""
import hashlib,json,sys
from pathlib import Path
sys.dont_write_bytecode=True
root=Path(sys.argv[1]).resolve();manifest=root/'MANIFEST.sha256';records={}
for l in manifest.read_text().splitlines():
 h,n=l.split(None,1);n=n.strip();p=Path(n)
 assert not p.is_absolute() and '..'not in p.parts and n not in records
 records[n]=h
actual={str(p.relative_to(root))for p in root.rglob('*')if p.is_file() and p!=manifest}
assert actual==set(records),('file_set_mismatch',sorted(actual-set(records)),sorted(set(records)-actual))
for n,h in records.items():assert hashlib.sha256((root/n).read_bytes()).hexdigest()==h,n
print(json.dumps({'status':'PASS','files':len(records),'manifest_sha256':hashlib.sha256(manifest.read_bytes()).hexdigest()}))
