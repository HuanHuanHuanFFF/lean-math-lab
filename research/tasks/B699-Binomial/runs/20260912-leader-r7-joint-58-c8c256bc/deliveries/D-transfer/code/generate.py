from pathlib import Path
import json, sys
from core import make_templates, candidate_domain, witness
out=Path(sys.argv[1]) if len(sys.argv)>1 else Path(__file__).resolve().parents[1]/'evidence'
out.mkdir(parents=True,exist_ok=True)
ts=make_templates(); triples,instances=candidate_domain(ts)
records=[witness(*t) for t in triples]
obj={'scope':{'indices':list(range(3,10)),'alpha_min':2,'alpha_max':9},
     'templates':ts,'witnesses':records,
     'statistics':{'templates':len(ts),'divisor_instances':instances,'distinct_candidates':len(records),
                   'max_n':max(t[1] for t in triples),'max_witness':max(z['p'] for z in records)}}
(out/'certificate.json').write_text(json.dumps(obj,ensure_ascii=False,indent=2,sort_keys=True)+'\n')
print(json.dumps(obj['statistics'],sort_keys=True))
