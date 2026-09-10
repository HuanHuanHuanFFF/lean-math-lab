#!/usr/bin/env python3
"""Check the delivered snapshot before replaying (runtime logs change on replay)."""
from __future__ import annotations
import hashlib,json
from pathlib import Path
ROOT=Path(__file__).resolve().parent
EXCLUDE={'MANIFEST.json','PACKAGE_CHECK.json'}

def main() -> None:
    data=json.loads((ROOT/'MANIFEST.json').read_text())
    expected=data['sha256']
    actual={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest()
            for p in ROOT.rglob('*') if p.is_file() and str(p.relative_to(ROOT)) not in EXCLUDE
            and '__pycache__' not in p.parts}
    missing=sorted(set(expected)-set(actual));extra=sorted(set(actual)-set(expected))
    changed=sorted(k for k in set(expected)&set(actual) if expected[k]!=actual[k])
    result={'status':'PASS' if not(missing or extra or changed) else 'FAIL',
            'checked_files':len(expected),'missing':missing,'extra':extra,'changed':changed}
    print(json.dumps(result,indent=2))
    if result['status']!='PASS':raise SystemExit(1)
if __name__=='__main__':main()
