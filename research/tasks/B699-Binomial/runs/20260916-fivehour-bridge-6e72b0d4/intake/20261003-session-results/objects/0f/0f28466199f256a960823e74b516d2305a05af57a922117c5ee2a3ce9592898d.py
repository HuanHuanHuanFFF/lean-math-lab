import json,math,itertools
from fractions import Fraction as Q
from pathlib import Path
from collections import Counter
MON=[(a,t-a) for t in range(7) for a in range(t,-1,-1)];IDX={e:i for i,e in enumerate(MON)}
META={352:(12,53874,(1,12,1),72),425:(120,6762389,(2,1,60),200),776:(12,33812,(1,4,3),200),1026:(6,5636,(3,2,1),450),1377:(24,90166,(6,1,4),72),1450:(30,140884,(1,6,5),450)}
NA={a:math.isqrt(g*m)+1 for a,(sig,g,ss,m) in META.items()}
EV={a:[[(a+1800*u)**i*j**b for i,b in MON] for u in range(7) for j in range(7)] for a in META}
def fd(v,a):
 d=math.gcd(*(sum(c*x for c,x in zip(v,line)) for line in EV[a]));D=1
 for p in (2,3,5):
  while d%p==0:d//=p;D*=p
 return D
BM={}
for deg in (5,6):
 BM[deg]=[]
 for i in range(8):
  L=Q(i,16);H=Q(1,16)
  for k in range(deg+1):BM[deg].append([sum(Q(math.comb(b,z))*L**(b-z)*H**z*Q(math.comb(k,z),math.comb(deg,z)) for z in range(min(b,k)+1)) for b in range(deg+1)])
def norm(v,a):
 deg=max(sum(e) for e,c in zip(MON,v) if c);T=min(sum(e) for e,c in zip(MON,v) if c)
 lead=[v[IDX[deg-b,b]] for b in range(deg+1)]
 if deg not in BM:
  high=sum(abs(c)/Q(2)**b for b,c in enumerate(lead))
 else: high=max(abs(sum(c*x for c,x in zip(lead,line))) for line in BM[deg])
 low=sum(abs(c)*Q(1,2**b*NA[a]**(deg-i-b)) for (i,b),c in zip(MON,v) if i+b<deg)
 return high+low,T,deg

def divrow(v,h):
 p={e:c for e,c in zip(MON,v) if c};out={}
 for b in range(7):
  mx=max([a for a,bb in p if bb==b],default=-1)
  carry=0
  for a in range(mx,0,-1):
   q=p.get((a,b),0)+h*carry
   if q:out[(a-1,b)]=q
   carry=q
  assert p.get((0,b),0)+h*carry==0
 z=[out.get(e,0) for e in MON];g=math.gcd(*z);z=[x//g for x in z]
 return z

def bounds(v,weights):
 ret={}
 for a,(sig,ga,ss,m) in META.items():
  C,T,deg=norm(v,a);D=fd(v,a);kappa=math.prod(s**w for s,w in zip(ss,weights));loss=sum(h*w for h,w in zip((3,4,5),weights))
  # degree exactly matches total tail mass; other degrees not used
  assert deg==sum(weights)
  B=Q(NA[a],NA[a]-loss)*C*kappa/(D*7**(T-1))
  ret[a]={'C':[C.numerator,C.denominator],'T':T,'degree':deg,'D':D,'bound':[B.numerator,B.denominator],'covers':B<=ga}
 return ret

a=json.loads(Path('/mnt/data/c11_work/classcontent8.json').read_text()); fac={r['id']:r for r in json.loads(Path('/mnt/data/c11_work/factors_unsigned.json').read_text())}
ans=[]
for r in a:
 if r.get('old'):ans.append({'id':r['id'],'layout':r['layout'],'shape':r['shape'],'old':r['old']});continue
 candidates=[{'v':g['v'],'nz':{'type':'sign'}} for g in r['good']]
 if r['id'] in fac:
  for g in fac[r['id']]['candidates']:
   if g['nonzero']:candidates.append({'v':g['v'],'nz':{'type':'factor','constant':g['constant'],'factors':g['factors']}})
 new=[]
 for c in candidates:
  entry={'v':c['v'],'weights':[2]*3,'nz':c['nz']};entry['bounds']=bounds(c['v'],[2]*3);new.append(entry)
  if 4 in r['shape']:
   h=r['shape'].index(4)+3
   z=divrow(c['v'],h);weights=[2]*3;weights[h-3]=1
   en={'v':z,'weights':weights,'nz':{'type':'vertical_quotient','h':h,'parent':c}};en['bounds']=bounds(z,weights);new.append(en)
 picks={a:min((c for c in new if c['bounds'][a]['covers']),key=lambda z:Q(*z['bounds'][a]['bound']),default=None) for a in META}
 ans.append({'id':r['id'],'layout':r['layout'],'shape':r['shape'],'candidates':new,'chosen':picks,'covers':sorted(a for a in META if picks[a])})
print('NA',NA)
print('coverage',Counter(len(r.get('covers',[])) for r in ans));print('old',sum('old'in r for r in ans))
for shape in [(2,2,4),(2,4,2),(4,2,2),(2,3,3),(3,2,3),(3,3,2)]:
 rr=[r for r in ans if r['shape']==list(shape)];print(shape,'total',len(rr),'old',sum('old'in r for r in rr),'all',sum(len(r.get('covers',[]))==6 for r in rr),'no kernel',sum(not r.get('old') and not r.get('candidates') for r in rr))
for r in ans:
 if 4 in r['shape'] and not r.get('old') and len(r['covers'])!=6:print('FAILED4',r['id'],r['layout'],r['covers'])
Path('/mnt/data/c11_work/advanced8.json').write_text(json.dumps(ans))
