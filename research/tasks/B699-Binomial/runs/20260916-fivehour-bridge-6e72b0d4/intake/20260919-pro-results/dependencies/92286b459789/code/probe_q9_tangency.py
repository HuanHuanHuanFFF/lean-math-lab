from pathlib import Path
import json,math
from fractions import Fraction as F
from collections import defaultdict
from verify_geometry import Model,profile,add,primitive,bernstein
R=Path(__file__).resolve().parents[1]
a=json.loads((R/'verification/geometry-new/nf53_front_accepted.json').read_text());fam=next(x for x in a['exception_details'] if x['kind']=='one_rational_parameter_boundary')
B={(a,b):F(c,d) for a,b,c,d in fam['base_terms']};D={(a,b):F(c,d) for a,b,c,d in fam['direction_terms']}
def diag(P,r):
 s=r//2;o=defaultdict(F)
 # ordinary shift followed by X-v=t+s*u
 for i in range(19):
  for j in range(10):
   z=Model.jet(P,(r,s*s,i,j))
   if not z:continue
   for h in range(j+1):o[i+j-h,h]+=z*math.comb(j,h)*s**(j-h)
 return {k:v for k,v in o.items() if v}
ans=[];pars=set()
for r in (4,6,8):
 b=diag(B,r);d=diag(D,r);keys=set(b)|set(d);w=min(i+2*j for i,j in keys)
 co=[(k,b.get(k,0),d.get(k,0)) for k in sorted(keys) if k[0]+2*k[1]==w]
 ts={-F(x,y) for _,x,y in co if y};exc=next(iter(ts)) if len(ts)==1 else None
 if exc is not None and not all(x+exc*y==0 for _,x,y in co):exc=None
 if exc is not None:pars.add(exc)
 item={'r':r,'generic_weighted_order':w,'coefficients':[[list(k),str(x),str(y)] for k,x,y in co],'exception_parameter':str(exc)}
 print('DIAG',item);ans.append(item)
for t in sorted(pars):
 p=add(B,{k:t*v for k,v in D.items()});pp=primitive(p)
 print('SPECIAL',str(t),'profile',profile(pp,9))
 try:print('BERN',bernstein(pp,9))
 except AssertionError:print('NO_SIGN_CERTIFICATE')
(R/'evidence/q9_tangent_diagnostic.json').write_text(json.dumps(ans,indent=2)+'\n')
for t in sorted(pars):
 p=add(B,{k:t*v for k,v in D.items()})
 print('SPECIAL_WEIGHTED',str(t),[(r,min(i+2*j for i,j in diag(p,r))) for r in (4,6,8)])
