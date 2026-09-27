#!/usr/bin/env python3
"""Regenerate only this round's bounded certificates, in a disposable copy if desired."""
from pathlib import Path
import json,time
from core import canonical,digest
from experiments import *
R=Path(__file__).resolve().parents[1]
jobs=[('algebra',check_all),('terminal',terminal_cases),('boundaries',boundaries),
      ('direct_full_rows',direct_full_rows),('pair_grid',pair_grid),
      ('target_rows',target_rows),('zero_rows_P2000',zero_rows),('split_lemma_grid',split_lemma_grid),
      ('old_ledger_audit',lambda:old_ledger_audit(json.loads((R/'sources/PREVIOUS_EXTERIOR_P1000.json').read_text())))]
logs=[]
for name,fn in jobs:
    t=time.monotonic();obj=fn();(R/'certificates'/f'{name}.json').write_bytes(canonical(obj))
    info=dict(name=name,seconds=round(time.monotonic()-t,6),sha256=digest(obj),status='PASS')
    logs.append(info);print(json.dumps(info),flush=True)
(R/'logs/discovery.json').write_bytes(canonical({'status':'PASS','runs':logs}))
