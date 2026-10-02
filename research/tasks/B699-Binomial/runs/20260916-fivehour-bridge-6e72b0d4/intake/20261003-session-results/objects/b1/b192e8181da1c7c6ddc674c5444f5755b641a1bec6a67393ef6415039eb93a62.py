import json,math
from fractions import Fraction as Q
from collections import Counter
from pathlib import Path
MON=[(a,t-a) for t in range(7) for a in range(t,-1,-1)]
META={352:(12,53874),425:(120,6762389),776:(12,33812),1026:(6,5636),1377:(24,90166),1450:(30,140884)}
EVAL=[[n**a*j**b for a,b in MON] for n in range(7) for j in range(7)]
def fd(v):
 d=math.gcd(*(sum(c*x for c,x in zip(v,row)) for row in EVAL));D=1
 for p in (2,3,5):
  while d%p==0:d//=p;D*=p
 return D
ans=json.loads(Path('/mnt/data/c11_work/discover8.json').read_text())
for r in ans:
 if r.get('old'):continue
 for g in r['good']:
  D=fd(g['v']);g['fixed_divisor235']=D; C=Q(*g['C']); T=g['T']
  g['covers_fd']=[a for a,(sg,ga) in META.items() if Q(44,41)*C*sg**2<=ga*D*7**(T-1)]
 r['covers_fd']=sorted({a for g in r['good'] for a in g['covers_fd']})
 if r['good']:
  r['best_fd']=min(r['good'],key=lambda x:Q(*x['C'])/x['fixed_divisor235']/7**(x['T']-1))
print('overall',Counter(len(r.get('covers_fd',[])) for r in ans))
print('fixed divs',Counter(r['best_fd']['fixed_divisor235'] for r in ans if r.get('good')))
print('no sign',sum(not r.get('old') and not r.get('good') for r in ans))
print('cost fail',sum(bool(r.get('good')) and len(r.get('covers_fd',[]))!=6 for r in ans))
for shape in [(2,2,4),(2,4,2),(4,2,2),(2,3,3),(3,2,3),(3,3,2)]:
 rr=[r for r in ans if r['shape']==list(shape)]
 print(shape,'total',len(rr),'old',sum('old' in r for r in rr),'all',sum(len(r.get('covers_fd',[]))==6 for r in rr),'nosign',sum(not r.get('old') and not r.get('good') for r in rr))
Path('/mnt/data/c11_work/content8.json').write_text(json.dumps(ans))
