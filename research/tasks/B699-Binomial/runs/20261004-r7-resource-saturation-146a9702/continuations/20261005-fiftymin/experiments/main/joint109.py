from pathlib import Path
import json,hashlib,functools,warnings
import sympy as sp
from sympy.utilities.exceptions import SymPyDeprecationWarning
warnings.filterwarnings('ignore',category=SymPyDeprecationWarning)
B=Path.cwd()/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-fiftymin/experiments/main/kernel109p11'
d=json.loads((B/'projective-certificates.json').read_text());terms=[[tuple(map(int,l.split())) for l in (B/f'basis.{k}.poly.tsv').read_text().splitlines()[1:]] for k in range(4)];x=sp.Symbol('x');out=[]
for v in d['unresolved']:
 specs=[];common=set(range(110))
 for c in [0,1,2,9,10]:
  a=[0]*110
  for w,ts in zip(v,terms):
   for i,j,k in ts:a[j]=(a[j]+w*k*pow(c,i,11))%11
  if a[-1]==0:continue
  poly=sp.Poly.from_list(a[::-1],x,modulus=11);unit,factors=sp.factor_list(poly);prod=sp.Poly(int(unit),x,modulus=11)
  for f,m in factors:prod*=f**m
  assert prod==poly
  ds=[f.degree() for f,m in factors for _ in range(m)];subset={0}
  for q in ds:subset|={z+q for z in subset}
  common&=subset
  specs.append({'c':c,'degree':109,'unit':int(unit)%11,'omega':len(ds),'factors':[{'degree':f.degree(),'multiplicity':int(m),'coeffs_high':[int(z)%11 for z in f.all_coeffs()]} for f,m in factors]})
 assert specs
 selected=min(specs,key=lambda z:z['omega']);ds=[f['degree'] for f in selected['factors'] for _ in range(f['multiplicity'])];k=len(ds);sums=[0]*(1<<k)
 for mask in range(1,1<<k):bit=mask&-mask;sums[mask]=sums[mask^bit]+ds[bit.bit_length()-1]
 @functools.lru_cache(None)
 def best(mask):
  if not mask:return 0
  least=mask&-mask;ans=-999;sub=mask
  while sub:
   if sub&least and sums[sub] in common:ans=max(ans,1+best(mask^sub))
   sub=(sub-1)&mask
  return ans
 bound=best((1<<k)-1);out.append({'direction':v,'full_degree_certificates':specs,'common_subset_sums':sorted(common),'partition_base_c':selected['c'],'base_degrees':ds,'maximum_compatible_parts':bound});print(v,'base',selected['c'],ds,'common',sorted(common),'max_parts',bound,flush=True)
(B/'joint-degree-certificates.json').write_bytes((json.dumps({'prime':11,'h':109,'first_stage_sha256':hashlib.sha256((B/'projective-certificates.json').read_bytes()).hexdigest(),'results':out,'all_excluded':all(z['maximum_compatible_parts']<=6 for z in out)},indent=2)+'\n').encode())
