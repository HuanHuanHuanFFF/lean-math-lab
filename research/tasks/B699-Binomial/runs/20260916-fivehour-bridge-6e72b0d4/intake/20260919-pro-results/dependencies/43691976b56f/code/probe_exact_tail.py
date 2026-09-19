"""Discovery-only exact ordinary multiplicity diagnostics for soluble tail shapes."""
from discover_nf35 import *
from collections import Counter
G=json.loads((ROOT/'evidence/nf35_tail_gates.json').read_text())['records']
C=json.loads((ROOT/'evidence/nf35_tail_certificate.json').read_text())['systems']
counts=Counter();examples=[];unique=set()
for cert in C:
 if cert['status']!='soluble':continue
 rec=G[cert['index']];H=add(h0of(rec),pof([F(*x) for x in cert['base']]))
 mus=[];z=0;matches=[]
 for r in RS:
  msum=0
  for v in V[r]:
   e=next(e for e in range(13) if any(jet(H,r,v,i,e-i) for i in range(e+1)))
   if e:z+=1
   msum+=e;matches.append([r,v,e])
  mus.append(msum)
 counts[rec['h'],sum(mus)]+=1
 sig=tuple(sorted(H.items()));unique.add(sig)
 if sum(mus)==35:examples.append({'index':cert['index'],'h':rec['h'],'z':z,'mu':mus,'factors':cert['factors_t'],'H':[[a,b,c.numerator,c.denominator] for (a,b),c in sorted(H.items())]})
dump(ROOT/'evidence/tail_actual_multiplicity_probe.json',{'counts':[[list(k),v] for k,v in sorted(counts.items())],'distinct_soluble_polynomials':len(unique),'actual_mu35':examples})
print('COUNTS',counts,'UNIQUE',len(unique),'ACTUAL35',len(examples),flush=True)
