#!/usr/bin/env python3
"""Regenerate only into an explicitly supplied path; never overwrite by default."""
import argparse,json,sys
from pathlib import Path
sys.dont_write_bytecode=True
from verify_exact import make_certificate
p=argparse.ArgumentParser();p.add_argument('output',type=Path);a=p.parse_args()
if a.output.exists():raise SystemExit('Refusing to overwrite an existing certificate.')
a.output.write_text(json.dumps(make_certificate(),ensure_ascii=False,sort_keys=True,indent=2)+'\n',encoding='utf-8')
print(a.output)
