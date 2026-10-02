import json,math,sympy as s,itertools,sys,time
from fractions import Fraction as Q
from pathlib import Path
# load function-only head, avoiding the discovery driver's main execution
ns={};txt=Path('/mnt/data/c11_work/advanced8.py').read_text();exec(txt[:txt.index('\na=json.loads')],ns)
N,X=s.symbols('N X');MON=ns['MON'];norm=ns['norm'];fd=ns['fd'];divrow=ns['divrow'];bounds=ns['bounds'];NA=ns['NA'];META=ns['META']
def pv(f):return [int(s.Poly(f,N,X).coeff_monomial(N**a*X**b)) for a,b in MON]
def prim(v):
 g=math.gcd(*v);v=[int(x//g) for x in v]
 if next(x for x in v if x)<0:v=[-x for x in v]
 return v
def sign(v):
 d={}
 for c,(a,b) in zip(v,MON):
  if not c:continue
  for i in range(a+1):
   for j in range(a-i+1):
    v0=c*math.comb(a,i)*math.comb(a-i,j)*21**(a-i-j)*2**i
    for k in range(b+1):
     e=i+k,j;d[e]=d.get(e,0)+v0*math.comb(b,k)*7**(b-k)
 d={e:c for e,c in d.items() if c}
 return len({c>0 for c in d.values()})==1 and bool(d.get((0,0)))
R=json.loads(Path('/mnt/data/c11_work/classcontent8.json').read_text());out=[]
for ID in (2335,4018,3960,3978):
 r=R[ID];h=r['shape'].index(4)+3;ws=[2,2,2];ws[h-3]=1
 # divide first then reduce lattice to avoid vertical factor weight in reduction
 bb=[divrow(v,h) for v in r['basis']]
 lb=[prim(list(v)) for v in s.Matrix(bb).lll().tolist()]
 print('ID',ID,'h',h,'BASIS',flush=True)
 for v in lb:
  f=sum(c*N**a*X**b for c,(a,b) in zip(v,MON));print(s.factor(f),flush=True)
  info=bounds(v,ws);print('bounds', {a: [float(Q(*d['bound'])), d['D'],d['covers']] for a,d in info.items()},flush=True)
 if ID in (2335,4018):
  fs=[sum(c*N**a*X**b for c,(a,b) in zip(v,MON)) for v in lb]
  gg=s.gcd(*fs);res=s.factor(s.resultant(s.cancel(fs[0]/gg),s.cancel(fs[1]/gg),X))
  print('common',s.factor(gg),'res',res,flush=True)
  out.append({'id':ID,'mode':'pair','weights':ws,'vs':lb,'gcd':str(s.factor(gg)),'resultant':str(res)})
 else:
  a=1450 if ID==3960 else 776
  best=None;checked=0
  # clear candidates with rational coefficients while primitive integral normalization
  for u in range(-16,17):
   for v in range(-16,17):
    if (u==v==0) or math.gcd(u,v)!=1 or (u<0 or(u==0 and v<0)):continue
    z=prim([u*x+v*y for x,y in zip(*lb)])
    if not sign(z):continue
    C,T,D=norm(z,a);fixed=fd(z,a);loss=sum(hh*w for hh,w in zip((3,4,5),ws));kappa=math.prod(ss**w for ss,w in zip(META[a][2],ws));B=Q(NA[a],NA[a]-loss)*C*kappa/(fixed*7**(T-1))
    checked+=1
    if best is None or B<best[0]:best=(B,u,v,z)
  print('BEST',checked, best[:3], 'threshold',META[a][1],flush=True)
  print('poly', s.factor(sum(c*N**i*X**j for c,(i,j) in zip(best[3],MON))),flush=True)
  out.append({'id':ID,'mode':'sign','weights':ws,'v':best[3],'best_bound':[best[0].numerator,best[0].denominator],'coefficients':list(best[1:3])})
Path('/mnt/data/c11_work/special4.json').write_text(json.dumps(out))
