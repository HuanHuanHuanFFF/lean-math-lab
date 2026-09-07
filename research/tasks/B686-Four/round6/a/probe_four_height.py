from pathlib import Path
from fractions import Fraction as Q
from math import comb,floor,ceil
import json,hashlib
HERE=Path(__file__).resolve().parent
source=HERE.parent/'main/weighted-contact-probe.json'
data=json.loads(source.read_text());entry=next(r for r in data['results'] if r['slots']==[1,2,3,5] and r['D']==15)
row=entry['rows'][2];p=row['terms'];L,U,M,N=83894387,83894390,10000000,50000
bounds=[]
for k in range(16):
 cs=[sum(c*comb(a,j)*L**(a-j)*M**(4-a) for a,b,c in p if a+b==k and a>=j) for j in range(min(k,4)+1)]
 lo=Q(cs[0]+sum(min(c,0)*3**j for j,c in enumerate(cs) if j),M**4)
 hi=Q(cs[0]+sum(max(c,0)*3**j for j,c in enumerate(cs) if j),M**4)
 bounds.append((floor(lo),ceil(hi)))
 print(k,float(lo),float(hi))
lo,hi=map(Q,bounds[15])
for k,(x,y) in enumerate(bounds[:15]):lo+=min(x,0)/Q(N**(15-k));hi+=max(y,0)/Q(N**(15-k))
print('TOTAL',float(lo),float(hi))
(HERE/'four1235-input.json').write_text(json.dumps({'source':str(source),'source_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),'D':15,'R':16,'slots':[1,2,3,5],'choice_index':2,'row':row,'integer_part_bounds':bounds,'shifted_interval':[str(lo),str(hi)]},indent=2)+'\n')
