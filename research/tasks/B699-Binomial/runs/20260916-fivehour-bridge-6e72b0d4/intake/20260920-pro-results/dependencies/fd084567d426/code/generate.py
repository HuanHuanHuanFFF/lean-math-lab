"""Discovery/certificate writer. mpmath is used only here; replay is exact."""
from pathlib import Path
import json
import mpmath as mp
mp.mp.dps=200
ROOT=Path(__file__).resolve().parents[1]
T=sorted(mp.polyroots([1,0,-10,10]))
alpha=[-18+11*t+5*t*t for t in T]
u=[[1-t for t in T],[1+2*t-t*t for t in T]]
scale=10**160; M=10**120
cert={'schema':'B699-E-h13-Thue-v1','root_scale':str(scale),
      'root_lowers':[str(int(mp.floor(t*scale))) for t in T],
      'unit_box':[11,4,2],
      'box_units':[[-1,0,0],[-1,1,0],[1,-1,0],[1,0,0]],
      'log_scale':str(M),'distance_power':55,'initial_exponent_bound':str(10**24),
      'final_exponent_bound':120,'cases':[],
      'final_hits':[[0,0,1,0]]}
dot=lambda a,b:sum(x*y for x,y in zip(a,b))
for near,i,j in [(0,1,2),(1,0,2),(2,0,1)]:
    d1=alpha[near]-alpha[i];d2=alpha[near]-alpha[j]
    logs=[mp.log(abs(u[0][i]/u[0][j])),mp.log(abs(u[1][i]/u[1][j])),mp.log(abs(d2/d1))]
    bars=[int(mp.floor(M*t+mp.mpf('.5'))) for t in logs]
    v=[1,bars[0]];w=[0,bars[1]];tv=[1,0];tw=[0,1]
    for _ in range(1000):
        if dot(v,v)>dot(w,w):v,w=w,v;tv,tw=tw,tv
        q=(2*dot(v,w)+dot(v,v))//(2*dot(v,v))
        if q==0:break
        w=[b-q*a for a,b in zip(v,w)];tw=[b-q*a for a,b in zip(tv,tw)]
    else:raise RuntimeError('Gauss reduction did not terminate')
    cert['cases'].append({'near':near,'other':[i,j],
      'rounded_logs':list(map(str,bars)),
      'basis_columns':[[str(a) for a in v],[str(a) for a in w]],
      'unimodular_columns':[[str(a) for a in tv],[str(a) for a in tw]]})
(ROOT/'certificates/h13.json').write_text(json.dumps(cert,indent=2)+'\n')
print('WROTE_H13_CERTIFICATE')
