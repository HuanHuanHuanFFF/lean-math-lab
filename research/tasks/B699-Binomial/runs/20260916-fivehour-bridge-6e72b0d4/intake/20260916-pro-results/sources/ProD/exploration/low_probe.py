import sys,math,json,time
from pathlib import Path
root=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(root/'sources/frozen/two-power/code'));import generate as old

def small(x,m):
 s=1
 for p in ([2,3]if m==5 else[2,3,5]):
  while x%p==0:s*=p;x//=p
 if x%m==0 and x%(m*m):s*=m
 return s

def qig(n,m):
 t=math.prod(small(n-r,m)for r in range(4))
 return t**6*(3*n*n-12*n+8)<(1<<20)*(n-1)**6*(n-3)**3

def sixg(n):
 t=math.prod(small(n-r,7)for r in range(6))
 return t**4*(3*n*n-20*n+24)<(1<<18)*27*(n-1)**4*(n-3)**3*(n-5)**2

st=time.time();out={}
for m,top in [(5,11125),(7,1<<18)]:
 counts={'position_rows':0,'qig':0,'sixg':0,'carry_rows':0};rows=[];mask=old.residues(6,[0,2,3])if m==7 else None
 for n in range(2*(m+1),top):
  if m==5:
   if n%72 not in (18,56):continue
  else:
   if not mask[n%1800]:continue
   if any(max(old.power(n-r,p)for r in range(7))!=max(old.power(n-r,p)for r in [0,2,3])for p in [2,3,5]):continue
  counts['position_rows']+=1
  if qig(n,m):counts['qig']+=1;continue
  if m==7 and sixg(n):counts['sixg']+=1;continue
  rows.append(n)
 counts['carry_rows']=len(rows);spf=old.spf_table(max(rows,default=2));covers=[old.row_certificate(m,n,spf)for n in rows]
 counts.update({'intervals':sum(len(x[2])for x in covers),'max_n':max(rows,default=0),'covered':sum(n//2-m for n in rows)})
 out[str(m)]={'counts':counts,'rows':covers};print(m,counts,rows,flush=True)
(root/'exploration/low_probe.json').write_text(json.dumps(out,indent=2));print('seconds',time.time()-st)
