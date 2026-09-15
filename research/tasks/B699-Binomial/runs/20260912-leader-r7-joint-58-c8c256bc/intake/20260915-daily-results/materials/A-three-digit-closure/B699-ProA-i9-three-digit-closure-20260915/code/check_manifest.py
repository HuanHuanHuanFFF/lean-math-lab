"""Verify archived bytes BEFORE running scripts that refresh logs."""
from pathlib import Path
import json,hashlib
R=Path(__file__).resolve().parents[1]
def main():
 m=json.loads((R/'SHA256SUMS.json').read_text())
 for name,want in m['files'].items():
  p=R/name
  if not p.is_file():raise ValueError('Missing member: '+name)
  h=hashlib.sha256()
  with p.open('rb') as f:
   for b in iter(lambda:f.read(1024*1024),b''):h.update(b)
  if h.hexdigest()!=want:raise ValueError('Hash mismatch: '+name)
 print(json.dumps({'status':'PASS_MANIFEST','data_members':len(m['files'])}))
if __name__=='__main__':main()
