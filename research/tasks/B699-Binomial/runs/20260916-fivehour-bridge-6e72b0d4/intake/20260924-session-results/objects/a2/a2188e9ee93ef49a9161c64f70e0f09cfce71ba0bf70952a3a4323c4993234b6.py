import sympy as s,itertools,json,math
import numpy as np
from fractions import Fraction as F
from scipy.optimize import linprog
x,y,X,Y=s.symbols('x y X Y');n=x+y;J=x*y
points=sorted({(r,b*(r-b)) for r in range(6) for b in range(r+1)})
factors={}
def put(poly):
 poly=s.Poly(s.expand(poly),x,y)
 _,poly=poly.clear_denoms();co=[int(c) for c in poly.coeffs()];g=math.gcd(*co);poly=s.Poly(poly.as_expr()/g,x,y)
 if poly.total_degree()<1:return
 for sig in [1,-1]:
  P=poly.as_expr()*sig
  sh=s.Poly(s.expand(P.subs({x:7+X,y:7+X+Y})),X,Y)
  if all(c>=0 for c in sh.coeffs()) and sh.TC()>0:break
 else:return
 if not(P.has(x) and P.has(y)):return
 terms=tuple((i,j,int(c)) for (i,j),c in s.Poly(P,x,y).terms())
 if terms in factors:return
 deg=s.Poly(P,x,y).total_degree()
 orders=[]
 for r in range(6):
  orders.append([])
  for b in range(r+1):
   sh=s.Poly(s.expand(P.subs({x:b+X,y:r-b+Y})),X,Y)
   orders[r].append(min(i+j for (i,j),c in sh.terms() if c))
 if max(v for row in orders for v in row)==0:return
 factors[terms]={'str':str(P),'terms':list(terms),'degree':deg,'orders':orders}
for t in range(6):put((x-t)*(y-t))
for pts in itertools.combinations(points,3):
 mat=s.Matrix([[a*a,b,a,1] for a,b in pts])
 ns=mat.nullspace()
 if len(ns)!=1:continue
 a,b,c,d=ns[0];put(a*n*n+b*J+c*n+d)
# include frozen high factors when extracted
import zipfile
for ver in ('C18-high2-position5-closure','C21-separated-two-prime-72-closure'):
 path='/mnt/data/B699-'+ver+'-20260924-evidence.zip'
 z=zipfile.ZipFile(path)
 for fn in z.namelist():
  if fn.endswith('/sources/kernel16.json'):
   dat=json.loads(z.read(fn));ts=dat.get('H8_terms')
   if ts:put(sum(c*x**i*y**j for i,j,c in ts))
  if fn.endswith('/sources/kernel20.json'):
   dat=json.loads(z.read(fn))
   for key in ['G6_terms','H8_terms']:
    if key in dat:put(sum(c*x**i*y**j for i,j,c in dat[key]))
 break
fs=list(factors.values());json.dump(fs,open('/mnt/data/c23_work/factors.json','w'),indent=2)
print('factors',len(fs),flush=True)
for i,f in enumerate(fs):print(i,f['str'],f['orders'],flush=True)
lam={(2,3):F(57,200),(2,5):F(129,500),(3,5):F(27,125)}
R=json.load(open('/mnt/data/B699-C22-positive-k12-48-closure-20260924/outputs/FRONTIER.json'))['remaining_residue_upper_envelope']
cap={2:8,3:9,5:25}
def activity(a):return {p:next((h for h in range(6) if (a-h)%c==0),None) for p,c in cap.items()}
# Variables factor exponents, row1..5 minorders, objective margin
N=len(fs);marg=N+5;dims=N+6
baseub=[];basebv=[]
for r in range(1,6):
 for b in range(r+1):
  row=np.zeros(dims);row[N+r-1]=1
  for i,f in enumerate(fs):row[i]=-f['orders'][r][b]
  baseub.append(row);basebv.append(0)
eq=np.zeros(dims)
for i,f in enumerate(fs):eq[i]=f['degree']
res_all=[]
for a in R:
 ac=activity(a)
 active={h for h in ac.values() if h is not None};orig=[p for p in ac if ac[p]==0]
 if len(orig)!=1 or len(active)!=sum(v is not None for v in ac.values()):continue
 bases=[p for p in ac if ac[p]!=None];bases.sort(key=lambda p:ac[p]);places=[ac[p] for p in bases]
 edges=[(i,j,lam[tuple(sorted((bases[i],bases[j])))]) for i in range(len(bases)) for j in range(i+1,len(bases))]
 ub=baseub.copy();bv=basebv.copy()
 assignments=[]
 for bits in itertools.product((0,1),repeat=len(edges)):
  v=[F(0)]*len(bases)
  for (i,j,l),bit in zip(edges,bits):ind=j if bit else i;v[ind]=max(v[ind],l)
  assignments.append(v)
  row=np.zeros(dims);row[marg]=1
  for i,f in enumerate(fs):row[i]=f['degree']-float(v[0])*f['orders'][0][0]
  for h in range(1,6):
   row[N+h-1]= -float(v[places.index(h)]) if h in active else -1
  ub.append(row);bv.append(0)
 c=np.zeros(dims);c[marg]=-1
 res=linprog(c,A_ub=np.array(ub),b_ub=bv,A_eq=eq.reshape(1,-1),b_eq=[1],bounds=[(0,None)]*(N+5)+[(None,None)],method='highs')
 if not res.success:continue
 coeff=[F(float(v)).limit_denominator(10000) for v in res.x[:N]]
 scale=math.lcm(*(v.denominator for v in coeff));ks=[int(v*scale) for v in coeff]
 deg=sum(k*f['degree'] for k,f in zip(ks,fs));T=sum(k*f['orders'][0][0] for k,f in zip(ks,fs))
 ws=[min(sum(k*f['orders'][r][b] for k,f in zip(ks,fs)) for b in range(r+1)) for r in range(1,6)]
 delta=deg-sum(ws[h-1] for h in range(1,6) if h not in active)
 gap=min(v[0]*T+sum(v[i]*ws[places[i]-1] for i in range(1,len(v))) for v in assignments)-delta
 record={'a':a,'activity':ac,'degree':deg,'T':T,'ws':ws,'delta':delta,'gap':str(gap),'factors':[[i,k] for i,k in enumerate(ks) if k]}
 res_all.append(record)
 print(record,flush=True)
json.dump(res_all,open('/mnt/data/c23_work/lp_results.json','w'),indent=2)
