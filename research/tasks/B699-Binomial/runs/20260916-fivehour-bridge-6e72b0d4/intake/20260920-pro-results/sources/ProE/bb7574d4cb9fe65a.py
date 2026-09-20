#!/usr/bin/env python3
"""Reconstruct the exact certificate at an explicit NEW destination."""
import argparse,json,sys
from pathlib import Path
sys.dont_write_bytecode=True
from primary import expected
p=argparse.ArgumentParser();p.add_argument('output',type=Path);a=p.parse_args()
if a.output.exists():p.error('output exists; choose a new destination')
a.output.parent.mkdir(parents=True,exist_ok=True)
a.output.write_text(json.dumps(expected(),ensure_ascii=False,indent=2)+'\n')
print('GENERATED '+str(a.output))
