"""Independent sequential root scan against original binomial products.

Does not import the worker generator or its cutoff formula. Conditional
monotonicity is supplied by Lean; this audits all new table transcriptions.
"""
from pathlib import Path
from math import comb
from datetime import datetime,timezone
import json,re,hashlib
BASE=Path(__file__).resolve().parent
worker=BASE.parent/'worker'
rows=json.loads((worker/'contact-finite-data.json').read_text())['rows']
assert len(rows)==17000 and [r['d'] for r in rows]==list(range(3000,20000))
def diff(n,d):return 120*(comb(n+d+5,5)-4*comb(n+5,5))
a=0;checked=0
for d in range(5,20000):
 while diff(a+1,d)>0:a+=1
 assert diff(a,d)>0 and diff(a+1,d)<0
 if d>=3000:
  row=rows[d-3000]
  assert row['cutoff']==a
  assert row['lower_sign']==diff(a,d) and row['upper_sign']==diff(a+1,d)
  checked+=1
result=dict(utc=datetime.now(timezone.utc).isoformat(),success=True,new_rows_checked=checked,all_displacements_scanned=[5,19999],method='single sequential sign-change scan using 120*binomial; no worker cutoff formula',input_sha256=hashlib.sha256((worker/'contact-finite-data.json').read_bytes()).hexdigest(),scope='finite arithmetic audit; not unrestricted k5 exclusion')
(BASE/'finite-independent.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result))
