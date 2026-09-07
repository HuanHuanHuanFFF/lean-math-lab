from pathlib import Path
import json
here=Path(__file__).resolve().parent
p=here.parent/'main/weighted-contact-probe.json'
x=json.loads(p.read_text());print(type(x),x.keys())
for r in x['results'][-2:]:
 print({k:v for k,v in r.items() if k!='rows'})
 for i,row in enumerate(r.get('rows',[])):
  print('row',i,{k:v for k,v in row.items() if k not in ('terms','basis')})
