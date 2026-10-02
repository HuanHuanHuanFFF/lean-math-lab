#!/usr/bin/env python3
"""Verify all payload bytes and exact membership; MANIFEST excludes itself."""
from pathlib import Path
import hashlib,json,sys
sys.dont_write_bytecode=True

def verify(root):
 records={}
 for l in(root/'MANIFEST.sha256').read_text().splitlines():
  h,n=l.split('  ',1)
  assert n not in records and not Path(n).is_absolute()and '..'not in Path(n).parts
  assert hashlib.sha256((root/n).read_bytes()).hexdigest()==h,('digest mismatch',n)
  records[n]=h
 actual={str(p.relative_to(root))for p in root.rglob('*')if p.is_file()and p.name!='MANIFEST.sha256'and '__pycache__'not in p.parts}
 assert actual==set(records),('membership mismatch',sorted(actual-set(records)),sorted(set(records)-actual))
 return {'status':'PASS','verified_entries':len(records),'manifest_sha256':hashlib.sha256((root/'MANIFEST.sha256').read_bytes()).hexdigest()}
if __name__=='__main__':print(json.dumps(verify(Path(sys.argv[1]).resolve()),indent=2))
