"""Discovery only. Integer kernels will later be checked independently."""
import sys,time,math,json,itertools
from fractions import Fraction as Q
from pathlib import Path
import sympy as s
from sympy.polys.matrices import DomainMatrix
D=6
MON=[(a,t-a) for t in range(D+1) for a in range(t,-1,-1)]
IDS={m:i for i,m in enumerate(MON)}
ROWCACHE={}
def row(n,x,da=0,db=0):
 k=(n,x,da,db)
 if k not in ROWCACHE:ROWCACHE[k]=[math.prod(range(a-da+1,a+1))*math.prod(range(b-db+1,b+1))*n**(a-da)*x**(b-db) if a>=da and b>=db else 0 for a,b in MON]
 return ROWCACHE[k]
def primitive(v):
 v=[s.Rational(x) for x in v];den=s.ilcm(*[x.q for x in v]);z=[int(x*den) for x in v];g=math.gcd(*z)
 z=[x//g for x in z]
 if next(x for x in z if x)<0:z=[-x for x in z]
 return tuple(z)
def transmono(a,b):
 out={}
 for i in range(a+1):
  for j in range(a-i+1):
   c=math.comb(a,i)*math.comb(a-i,j)*21**(a-i-j)*2**i
   for k in range(b+1):
    e=(i+k,j);out[e]=out.get(e,0)+c*math.comb(b,k)*7**(b-k)
 return out
TRANS=[transmono(a,b) for a,b in MON]
def trans(v):
 out={}
 for c,p in zip(v,TRANS):
  if c:
   for e,x in p.items():out[e]=out.get(e,0)+c*x
 return {e:c for e,c in out.items() if c}
def signed(v):
 z=trans(v); vals=list(z.values()); return len({x>0 for x in vals})==1 and z.get((0,0),0)!=0
# Bernstein coefficient map of sum v_b t^b on eight rational intervals in [0,1/2]
BM=[]
for i in range(8):
 L=Q(i,16);H=Q(1,16)
 for k in range(7):
  BM.append([sum(Q(math.comb(b,z))*L**(b-z)*H**z*Q(math.comb(k,z),math.comb(6,z)) for z in range(min(b,k)+1)) for b in range(7)])
LO=[Q(1,2**b*352**(6-a-b)) if a+b<6 else Q(0) for a,b in MON]
def cost(v):
 T=min(a+b for (a,b),c in zip(MON,v) if c)
 lead=[v[IDS[6-b,b]] for b in range(7)]
 high=max(abs(sum(c*x for c,x in zip(lead,line))) for line in BM)
 low=sum(abs(c)*x for c,x in zip(v,LO));return high+low,T
META={352:(12,53874),425:(120,6762389),776:(12,33812),1026:(6,5636),1377:(24,90166),1450:(30,140884)}
def thresholds(C,T):
 return [a for a,(sig,ga) in META.items() if Q(44,41)*C*sig**2<=ga*7**(T-1)]
def old(lay):
 for i,j in itertools.combinations(range(3),2):
  if len(lay[i])!=2 or len(lay[j])!=2:continue
  hi,hj=i+3,j+3
  if lay[i]==(0,hi) and lay[j]==(0,hj):return 'old_end'
  if lay[i]==(0,1) and lay[j]==(0,1):return 'old_low'
  if lay[i]==(hi-1,hi) and lay[j]==(hj-1,hj):return 'old_high'
 return None
def matrix(lay):
 rows=[row(0,0),row(1,0),row(1,1)]
 for h,slots in zip((3,4,5),lay):
  for b in slots:rows +=[row(h,b),row(h,b,1,0),row(h,b,0,1)]
 return rows
sizes=sorted(set(itertools.permutations((4,2,2)))|set(itertools.permutations((3,3,2))))
layouts=[]
for sz in sizes:
 if any(k>h+1 for h,k in zip((3,4,5),sz)):continue
 for lay in itertools.product(*[list(itertools.combinations(range(h+1),k)) for h,k in zip((3,4,5),sz)]):layouts.append(lay)
print('nlayouts',len(layouts),flush=True)
ans=[];stats={};start=time.time()
for idx,lay in enumerate(layouts):
 rec={'layout':lay,'id':idx,'shape':[len(x) for x in lay]};o=old(lay)
 if o:
  rec['old']=o;ans.append(rec);continue
 mat=DomainMatrix.from_Matrix(s.Matrix(matrix(lay))).to_field();ns=mat.nullspace().to_Matrix()
 bases=[primitive(v) for v in ns.tolist()];rec['dim']=len(bases)
 cand=set(bases)
 if len(bases)>1:
  try:lb=[primitive(v) for v in s.Matrix(bases).lll().tolist()]
  except Exception:lb=bases
  cand.update(lb)
  for i in range(len(lb)):
   for j in range(i):
    for a,b in [(1,1),(1,-1),(2,1),(1,2),(2,-1),(1,-2)]:cand.add(primitive([a*x+b*y for x,y in zip(lb[i],lb[j])]))
 good=[]
 for v in sorted(cand):
  if signed(v):
   C,T=cost(v); good.append({'v':v,'C':[C.numerator,C.denominator],'T':T,'covers':thresholds(C,T)})
 good.sort(key=lambda r:(-len(r['covers']),Q(*r['C'])/7**(r['T']-1),r['v']))
 rec['good']=good[:3];rec['basis']=bases
 rec['covers']=sorted(set(a for r in good for a in r['covers']))
 # save required cheapest kernel for each class, may not be same across classes
 rec['chosen']={str(a):next((r for r in good if a in r['covers']),None) for a in META}
 ans.append(rec)
 if idx%100==0:
  no=sum(not r.get('old') and not r.get('good') for r in ans)
  allc=sum(len(r.get('covers',[]))==6 for r in ans)
  print(idx, 'no sign',no,'all classes',allc,'sec',round(time.time()-start,1),flush=True)
  Path('/mnt/data/c11_work/discover8_partial.json').write_text(json.dumps(ans))
Path('/mnt/data/c11_work/discover8.json').write_text(json.dumps(ans))
print('FINISHED',len(ans),round(time.time()-start,1),flush=True)
from collections import Counter
print('dims',Counter(r.get('dim','old') for r in ans))
print('coverage',Counter(len(r.get('covers',[])) for r in ans))
print('nosign',sum(not r.get('old') and not r.get('good') for r in ans))
