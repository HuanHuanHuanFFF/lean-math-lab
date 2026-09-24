from states import states
import json
from pathlib import Path
TMAX=40;HMAX=152

def table(types):
 A=[[(0,()) for h in range(HMAX+1)] for t in range(TMAX+1)]
 for t in range(TMAX+1):
  for h in range(HMAX+1):
   best=(0,())
   if t:best=max(best,A[t-1][h],key=lambda z:z[0])
   if h:best=max(best,A[t][h-1],key=lambda z:z[0])
   for name,c,d in types:
    if t>=d and h>=c:
     n,w=A[t-d][h-c]
     if n+1>best[0]:best=(n+1,w+(name,))
   A[t][h]=best
 return A
BASE=table([('B',4,2),('C',16,1),('F',25,0)])
NEW=table([('B3',4,3),('B5',5,2),('C',16,1),('F',25,0)])
def run(new=False):
 records=[];maximum=0
 for st in states():
  if st['E']!=0:continue
  h=st['h'];d=st['d'];p=st['p']
  for x3 in range(min(d[0],h//4)+1):
   for x4 in range(min(d[1],(h-4*x3)//4)+1):
    for x5 in range(min(d[2],(h-4*(x3+x4))//4)+1):
     x=x3+x4+x5
     ds=[d[0]-x3,(2*d[1]+p[1]-x3-x4)//2-x4,d[2]-x5,(2*d[3]+p[3]-x)//2,d[4],d[5]]
     if min(ds)<0:continue
     for m in range(min(ds[0],(h-4*x)//13)+1):
      dt=ds.copy();dt[0]-=m;hh=h-4*x-13*m;T=sum(dt)
      for b in range(min(sum(dt[:3])//2,hh//4)+1 if new else 1):
       n,w=(NEW if new else BASE)[T-2*b][hh-4*b]
       total=x+m+b+n
       if total>maximum:maximum=total;records=[]
       if total==maximum:records.append(dict(**st,x=[x3,x4,x5],m=m,b22=b,rest=w,total=total))
 return dict(mode='conditional_B22_localized' if new else 'baseline_LOC89_free25',max=maximum,records=records)
if __name__=='__main__':
 out=Path(__file__).parent/'ledger';out.mkdir(exist_ok=True)
 for new in (False,True):
  r=run(new);(out/('new.json' if new else 'old.json')).write_text(json.dumps(r,indent=2))
  print(r['mode'],'max',r['max'],'records',len(r['records']),'states',len({(x['h'],tuple(x['v'])) for x in r['records']}),'minh',min(x['h'] for x in r['records']))
  print('example',r['records'][0])
