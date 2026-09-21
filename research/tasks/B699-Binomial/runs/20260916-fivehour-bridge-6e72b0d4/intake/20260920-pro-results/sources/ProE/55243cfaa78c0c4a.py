"""Rebuild the submitted finite certificate; not part of read-only replay."""
import json
import sys
from pathlib import Path
ROOT=Path(__file__).resolve().parent
sys.path.insert(0,str(ROOT/'checks'))
from primary import expected
if __name__=='__main__':
    path=ROOT/'certificates/certificate.json'
    path.write_text(json.dumps(expected(),ensure_ascii=False,indent=2)+'\n')
    print('GENERATED',path.name)
