"""DISCOVERY ONLY: finite position/seed feasibility, no exponent scan."""
import itertools,json,time
from pathlib import Path
import numpy as np
from scipy.optimize import linprog
R=Path(__file__).resolve().parents[1]
pts=[(r,b,r-b) for r in range(9) for b in range(r+1)]
A=np.array([[int(t[dim]==b) for t in pts] for dim in (1,2) for b in range(9)],float)
rows=np.array([[int(t[0]==r) for t in pts] for r in range(9)],float)
patterns={};out=[];started=time.monotonic()
for extra in itertools.combinations(range(1,9),3):
 H=(0,)+extra
 U=[r for r in range(9) if r not in H]
 res=linprog(np.zeros(45),A_eq=rows[U],b_eq=np.ones(5),A_ub=A,b_ub=np.ones(18),bounds=(0,None),method='highs')
 patterns[str(H)]={'feasible':bool(res.success),'occupied':H,'rough':U}
 if not res.success:out.append(H)
print('impossible H:',out)
print('with 5,7:',[(h,v['feasible']) for h,v in patterns.items() if 5 in v['occupied'] and 7 in v['occupied']])
(R/'evidence/single_high_position_discovery.json').write_text(json.dumps({'status':'DISCOVERY_ONLY','patterns':patterns,'seconds':time.monotonic()-started},indent=2)+'\n')
