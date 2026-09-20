import pathlib,json,sys
from fractions import Fraction as F
from math import comb
p=pathlib.Path(sys.argv[1])
for q in [11,12]:
 x=json.loads((p/f'evidence/nf{q}_candidate_families.json').read_text())
 for s in x['solutions']:
  ps=s['polynomials'];print('q',q,'index',s['index'],'dim',len(ps)-1)
  for i,P in enumerate(ps):
   D=max(a+2*b for a,b,n,d in P if n);lead=[F(0)]*(q+1)
   for a,b,n,d in P:
    if a+2*b==2*q:lead[b]=F(n,d)/4**b
   bez=[sum(lead[j]*F(comb(k,j),comb(q,j)) for j in range(k+1)) for k in range(q+1)]
   print(i,'D',D,'lead',[str(a) for a in lead],'BernSigns',''.join('+' if a>0 else '-' if a<0 else '0' for a in bez))
