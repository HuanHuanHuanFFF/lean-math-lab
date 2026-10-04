from pathlib import Path
import json,hashlib,itertools,time,warnings,sys
import sympy as sp
from sympy.utilities.exceptions import SymPyDeprecationWarning
warnings.filterwarnings('ignore',category=SymPyDeprecationWarning)
C=Path.cwd()/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-onehour-h110';B=C/'experiments/main';T=Path('D:/Temp/b699-r7-onehour-h110-20261005/ddf');source=T/'full177156.tsv'
raw=source.read_bytes();lines=raw.decode().splitlines();lines=lines if raw.endswith(b'\n') else lines[:-1];rows=[list(map(int,l.split())) for l in lines[1:]];todo=[z[0] for z in rows if z[1]==-1]
outfile=B/'residual-packets.jsonl';existing={}
if outfile.exists():
 for line in outfile.read_text().splitlines():
  z=json.loads(line);existing[z['id']]=z
new=[i for i in todo if i not in existing];tokens=list(map(int,(B/'kernel110p11/evaluations.txt').read_text().split()));p,h,dim,nc=tokens[:4];assert (p,h,dim,nc)==(11,110,6,5);pos=4;values={}
for _ in range(nc):
 c=tokens[pos];pos+=1;values[c]=[tokens[pos+j*111:pos+(j+1)*111] for j in range(6)];pos+=666
assert pos==len(tokens)
def coords(index):
 for pivot in range(6):
  size=11**(5-pivot)
  if index<size:
   a=[0]*6;a[pivot]=1
   for j in range(5,pivot,-1):a[j]=index%11;index//=11
   return a
  index-=size
 raise AssertionError(index)
x=sp.Symbol('x');start=time.time();count=0
with outfile.open('a',encoding='utf-8',newline='\n') as stream:
 for index in new:
  a=coords(index);specs=[];accepted=None
  for c,polys in values.items():
   f=[sum(a[k]*polys[k][j] for k in range(6))%11 for j in range(111)]
   while f and not f[-1]:f.pop()
   if not f:continue
   poly=sp.Poly.from_list(f[::-1],x,modulus=11);unit,factors=sp.factor_list(poly);omega=sum(int(m) for _,m in factors);n1=sum(int(m) for g,m in factors if g.degree()==1);n2=sum(int(m) for g,m in factors if g.degree()==2);hi=omega-n1-n2;loss=110-poly.degree();bound=hi+min((n1+loss+2*n2)//3,(n1+loss+n2)//2)
   product=sp.Poly(int(unit),x,modulus=11)
   for g,m in factors:product*=g**m
   assert product==poly
   item={'c':c,'degree':poly.degree(),'unit':int(unit)%11,'omega':omega,'n1':n1,'n2':n2,'n_hi':hi,'loss':loss,'q3_packet_bound':int(bound),'factors':[{'degree':g.degree(),'multiplicity':int(m),'coeffs_high':[int(z)%11 for z in g.all_coeffs()]} for g,m in factors]};specs.append(item)
   assert omega+loss>=7,('DDF inconsistent',index,c)
   if bound<=6:accepted=len(specs)-1;break
  item={'id':index,'vector':a,'certificates':specs,'accepted_certificate':accepted};stream.write(json.dumps(item,separators=(',',':'))+'\n');stream.flush();existing[index]=item;count+=1
  if count%50==0:print('PACKETS new',count,'unresolved',sum(v['accepted_certificate'] is None for v in existing.values()),'seconds',round(time.time()-start,2),flush=True)
result={'source_is_partial':not (T/'full177156.json').exists(),'source_rows_seen':len(rows),'residual_ids_seen':len(todo),'new_checked':len(new),'total_checked':len(existing),'packet_successes':sum(v['accepted_certificate'] is not None for v in existing.values()),'unresolved_ids':[k for k,v in existing.items() if v['accepted_certificate'] is None],'seconds':time.time()-start,'scope':'author finite factorization and q>=3 packet consumer, no whole-layer acceptance until complete scan/independent verification'};(B/'residual-packet-progress.json').write_bytes((json.dumps(result,indent=2)+'\n').encode());print(json.dumps(result),flush=True)
