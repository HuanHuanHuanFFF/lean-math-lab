#!/usr/bin/env python3
"""Verify every delivered file against the top-level SHA-256 manifest."""
import hashlib,sys
from pathlib import Path
sys.dont_write_bytecode=True
root=Path(__file__).resolve().parents[1]
def main():
 expected={}
 for l in(root/'MANIFEST.sha256').read_text().splitlines():
  digest,name=l.split('  ',1);p=Path(name)
  assert len(digest)==64 and not p.is_absolute() and '..'not in p.parts and name not in expected
  expected[name]=digest
 actual={str(p.relative_to(root))for p in root.rglob('*')if p.is_file()and p!=root/'MANIFEST.sha256'and '__pycache__'not in p.parts}
 assert actual==set(expected),('file set mismatch',sorted(actual-set(expected)),sorted(set(expected)-actual))
 for name,digest in expected.items():assert hashlib.sha256((root/name).read_bytes()).hexdigest()==digest,('changed file',name)
 print('PASS_SHA256_MANIFEST',len(expected),'files')
if __name__=='__main__':main()
