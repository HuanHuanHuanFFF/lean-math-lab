from probe import *
import time
from pathlib import Path
rs=json.load(open('/mnt/data/c_r10_work/unsigned.json'));out=[]
start=time.time()
for ix,r in enumerate(rs):
 fs=[sum(c*N**a*X**b for a,b,c in k['terms']) for k in r['kernels']]
 gg=reduce(s.gcd,fs)
 rr={'index':ix,'slots':r['slots'],'gcd':str(s.factor(gg)),'factors':[[str(v),e] for v,e in s.factor_list(gg)[1]],'kernels':r['kernels']}
 gs=[s.cancel(f/gg).expand() for f in fs]
 # pair first with differing doubled h, use if resultant nonzero; other choices if needed
 for i in range(len(gs)):
  for j in range(i+1,len(gs)):
   res=s.resultant(gs[i],gs[j],X)
   if res!=0:
    rr.update(pair=[i,j],resultant=s.factor(res).__str__(),res_factors=[str(f) for f,e in s.factor_list(res)[1]])
    break
  if 'pair' in rr:break
 out.append(rr)
 if ix%30==0:print(ix,'time',time.time()-start,flush=True)
Path('/mnt/data/c_r10_work/unsigned_analysis.json').write_text(json.dumps(out,indent=2))
from collections import Counter
print(Counter(r['gcd'] for r in out)); print('no pair',sum('pair' not in r for r in out))
for r in out[:20]:print(r['slots'], 'GCD',r['gcd'],'RES',r.get('resultant'))
print('time',time.time()-start)
