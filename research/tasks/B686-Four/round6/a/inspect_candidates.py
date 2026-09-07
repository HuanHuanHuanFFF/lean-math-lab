from pathlib import Path
import json
from decimal import Decimal, getcontext
from fractions import Fraction as Q
from math import comb
HERE=Path(__file__).resolve().parent
DATA=json.loads((HERE/'combination-search-shifted.json').read_text())
getcontext().prec=60
gamma=3/(Decimal(4)**(Decimal(1)/5)-1)-1
for r in DATA['rows']:
    print('SLOTS',r['slots'],'gamma',gamma)
    for c in r['candidates'][:2]:
        p=c['terms'];vals=[]
        for k in range(6):
            vals.append(sum(Decimal(v)*gamma**a for a,b,v in p if a+b==k))
        print(c['combination'],[str(x) for x in vals])
        print('pieces',[(float(Q(a)),float(Q(b))) for a,b in c['pieces']])
