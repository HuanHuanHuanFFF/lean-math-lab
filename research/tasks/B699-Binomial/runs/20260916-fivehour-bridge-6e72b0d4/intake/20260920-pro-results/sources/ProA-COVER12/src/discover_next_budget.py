"""Conditional fee diagnostics only. None of the hypothetical geometry is asserted."""
from pathlib import Path
import json
from ledger import run
D=Path(__file__).resolve().parents[1];out=[]
for mid,free in [(11,153),(12,18),(12,20),(13,18),(13,20),(14,20),(12,153)]:
    r=run(mid,free);w=r['maximizers'][0];r={k:v for k,v in r.items() if k!='maximizers'}
    r['one_witness']=w;r['status']='CONDITIONAL_LEDGER_ONLY_NOT_GEOMETRY';out.append(r)
    print(mid,free,'max',r['maximum'])
(D/'certificates/next_budget_diagnostics.json').write_text(json.dumps(out,indent=2))
