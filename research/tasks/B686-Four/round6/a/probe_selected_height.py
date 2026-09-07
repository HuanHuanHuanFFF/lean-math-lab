from pathlib import Path
from fractions import Fraction as Q
from math import comb,floor,ceil
import json,hashlib
HERE=Path(__file__).resolve().parent
source=HERE.parent/'main/selected-four.json'
data=json.loads(source.read_text());print(data.keys());output=[]
for row in data['rows']:
 print('fields',row.keys());p=row['terms'];D=row['D'];L,U,M,N=83894387,83894390,10000000,50000;bounds=[]
 for k in range(D+1):
  cs=[sum(c*comb(a,j)*L**(a-j)*M**(4-a) for a,b,c in p if a+b==k and a>=j) for j in range(min(k,4)+1)]
  lo=Q(cs[0]+sum(min(c,0)*3**j for j,c in enumerate(cs) if j),M**4)
  hi=Q(cs[0]+sum(max(c,0)*3**j for j,c in enumerate(cs) if j),M**4)
  bounds.append((floor(lo),ceil(hi)))
 lo,hi=map(Q,bounds[D])
 for k,(x,y) in enumerate(bounds[:D]):lo+=min(x,0)/Q(N**(D-k));hi+=max(y,0)/Q(N**(D-k))
 print(row.get('slots'),D,'TOTAL',float(lo),float(hi))
 output.append({'row':row,'integer_part_bounds':bounds,'shifted_interval':[str(lo),str(hi)]})
(HERE/'selected-four-input.json').write_text(json.dumps({'source':str(source),'source_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),'rows':output},indent=2)+'\n')
