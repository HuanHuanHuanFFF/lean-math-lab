"""Bounded method-boundary diagnostic for fourteen source hits.
A full rank modular matrix proves only the absence of this weight-21 kernel.
It says nothing about existence of an NC9 point or a factor of the fixed G.
"""
from pathlib import Path
import itertools,json,math,random,sys
sys.path.insert(0,str(Path(__file__).resolve().parent))
from reproduce import monomials,rank_mod,PTS
ROOT=Path(__file__).resolve().parents[1]
mons=monomials(21);p=1000033

def ordinary(n,x):
 return [[math.comb(a,i)*math.comb(b,j)*n**(a-i)*x**(b-j) if i<=a and j<=b else 0 for a,b in mons]
         for i in range(4) for j in range(4-i)]

def diagonal(n,s):
 rows=[]
 for h in range(2):
  for i in range(4-2*h):
   row=[]
   for a,b in mons:
    row.append(sum(math.comb(a,k)*n**(a-k)*math.comb(b,h)*math.comb(b-h,i-k)*(s*s)**(b-h-(i-k))*s**(i-k)
                   for k in range(i+1) if k<=a and h<=b and i-k<=b-h))
   rows.append(row)
 return rows
rng=random.Random(1400699)
rows={n:[i for i,q in enumerate(PTS) if q[0]==n] for n in range(3,9)}
cache={i:(diagonal(n,n//2) if n%2==0 and x==n*n//4 else ordinary(n,x)) for i,(n,x) in enumerate(PTS)}
record={'warning':'Not a B699 counterexample, not an actual G factor; one auxiliary-space diagnostic only.',
 'degree':21,'prime':p,'trials':[]}
for attempt in range(30):
 ids=[]
 for n,m in zip(range(3,9),(2,2,2,2,3,3)):
  eligible=[i for i in rows[n] if not (n%2==0 and PTS[i][1]==n*n//4)]
  ids.extend(rng.sample(eligible,m))
 ids.sort()
 matrix5=[[n**a*x**b for a,b in monomials(5)] for n,x in (PTS[i] for i in ids)]
 rank5=rank_mod(matrix5,p)
 matrix=[r for i in ids for r in cache[i]]
 rank=rank_mod(matrix,p)
 item={'indices':ids,'points':[PTS[i] for i in ids],'rank_B5':rank5,'rows':len(matrix),'columns':len(mons),'rank':rank}
 record['trials'].append(item)
 if rank5==12 and rank==len(mons):
  record['status']='FULL_COLUMN_RANK_BOUNDARY';record['witness']=item;break
else:record['status']='NO_FULL_RANK_WITNESS_IN_BOUNDED_PROBE'
(ROOT/'evidence'/'frontier14_probe.json').write_text(json.dumps(record,indent=2)+'\n')
print(record['status'], 'trials',len(record['trials']))
if 'witness' in record:print(record['witness'])
