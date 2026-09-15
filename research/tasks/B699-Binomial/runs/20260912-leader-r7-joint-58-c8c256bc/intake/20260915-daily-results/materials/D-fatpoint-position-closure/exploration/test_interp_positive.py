import json,math
from pathlib import Path
root=Path(__file__).parent;d=json.loads((root/'interp_basis026.json').read_text());exps=d['exps']
def shift(v,base=8):
 out={}
 for c,(a,b)in zip(v,exps):
  if not c:continue
  for i in range(a+1):
   for z in range(b+1):out[i,z]=out.get((i,z),0)+c*math.comb(a,i)*math.comb(b,z)*base**(a+b-i-z)
 return {p:c for p,c in out.items()if c}
for ind,v in enumerate(d['basis']):
 z=shift(v);print(ind,'degree',max(sum(p)for p in z),'coeffs',len(z),'positive',sum(c>0 for c in z.values()),'negative',sum(c<0 for c in z.values()),'const',z.get((0,0)),flush=True)
 if all(c>0 for c in z.values()):
  print('POSITIVE BASIS',ind,flush=True)
  (root/'positive026.json').write_text(json.dumps(dict(index=ind,base=8,poly=[[a,b,c]for c,(a,b)in zip(v,exps)if c],shift=[[a,b,c]for(a,b),c in sorted(z.items())]),indent=2))
