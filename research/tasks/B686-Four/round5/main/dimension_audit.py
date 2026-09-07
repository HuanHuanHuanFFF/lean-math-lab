"""Reproduce the finite contact-space dimensions, not a general impossibility theorem."""
from pathlib import Path
import json
from contact_search import search
rows=[search((1,2,4),D,D+1) for D in (2,3,4,5)]
rows += [search(slots,10,11) for slots in ((1,2,3,4),(1,2,4,5))]
result=dict(evidence='finite exact rational linear algebra; no claimed complete parameter exclusion',rows=rows,noncentral_four=[search((1,2,4,5),D,D+1) for D in range(4,10)])
Path(__file__).with_name('dimension-audit.json').write_text(json.dumps(result,indent=2)+'\n')
