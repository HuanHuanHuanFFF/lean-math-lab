#!/usr/bin/env python3
"""Verify all static bytes, including retained original ZIP. No proof claims."""
from pathlib import Path
import argparse,hashlib,json
ROOT=Path(__file__).resolve().parent

def static_paths():
 return sorted(p for p in ROOT.rglob('*') if p.is_file() and p.name!='MANIFEST.json' and '__pycache__' not in p.parts and not p.relative_to(ROOT).parts[0]=='replay')
def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def verify():
 obj=json.loads((ROOT/'MANIFEST.json').read_text());got={str(p.relative_to(ROOT)) for p in static_paths()}
 assert got==set(obj['files']),('path coverage',got^set(obj['files']))
 for name,rec in obj['files'].items():
  p=ROOT/name;assert p.stat().st_size==rec['bytes'] and digest(p)==rec['sha256'],name
 return len(got)
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--write',action='store_true');args=ap.parse_args()
 if args.write:
  obj={'algorithm':'sha256','excludes':['MANIFEST.json','replay/**','**/__pycache__/**'],'files':{str(p.relative_to(ROOT)):{'bytes':p.stat().st_size,'sha256':digest(p)} for p in static_paths()}}
  (ROOT/'MANIFEST.json').write_text(json.dumps(obj,ensure_ascii=False,indent=2)+'\n')
 print('PASS static manifest:',verify(),'files')
