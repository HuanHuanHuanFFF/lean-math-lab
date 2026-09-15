from pathlib import Path
import json,sys
from spec import CERTIFICATE,PERIOD,polynomial,expected_states
out=Path(sys.argv[1]);out.mkdir(parents=True,exist_ok=True)
rows=[]
for e,m,h,q,x in CERTIFICATE:
    image=[polynomial(e,m,h,x,u)%q for u in range(q)]
    assert all(image)
    rows.append(dict(epsilon=e,m=m,h=h,modulus=q,x_residue=x,image=image))
states=expected_states();mapping=[]
for e,m,h,s in states:
    hits=[i for i,r in enumerate(rows) if (r['epsilon'],r['m'],r['h'])==(e,m,h)
          and m*pow(2,s,r['modulus'])%r['modulus']==r['x_residue']]
    assert hits
    mapping.append([e,m,h,s,hits[0]])
obj={'period':PERIOD,'rows':rows,'mapping':mapping,
     'counts':{'rows':len(rows),'root_checks':sum(r['modulus'] for r in rows),'states':len(states)}}
(out/'certificate.json').write_text(json.dumps(obj,sort_keys=True,indent=2)+'\n')
print(json.dumps(obj['counts'],sort_keys=True))
