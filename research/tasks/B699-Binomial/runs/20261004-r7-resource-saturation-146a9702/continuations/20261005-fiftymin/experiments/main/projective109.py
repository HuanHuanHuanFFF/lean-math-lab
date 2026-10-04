from pathlib import Path
import json,hashlib,time,warnings,itertools
import sympy as sp
from sympy.utilities.exceptions import SymPyDeprecationWarning
warnings.filterwarnings('ignore',category=SymPyDeprecationWarning)
B=Path.cwd()/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-fiftymin/experiments/main/kernel109p11'
polys=[[tuple(map(int,l.split())) for l in (B/f'basis.{k}.poly.tsv').read_text().splitlines()[1:]] for k in range(4)]
cs=(0,1,2,9,10)
values={}
for c in cs:
 values[c]=[]
 for terms in polys:
  a=[0]*110
  for i,j,k in terms:a[j]=(a[j]+k*pow(c,i,11))%11
  values[c].append(a)
x=sp.Symbol('x');out=[];start=time.time();unresolved=[];tested=0
vectors=[]
for pivot in range(4):
 for tail in itertools.product(range(11),repeat=3-pivot):vectors.append([0]*pivot+[1]+list(tail))
assert len(vectors)==1464
for t in vectors:
 attempts=[];chosen=None
 for c in cs:
  a=[sum(t[k]*values[c][k][j] for k in range(4))%11 for j in range(110)]
  while a and not a[-1]:a.pop()
  if not a:attempts.append({'c':c,'zero':True});continue
  poly=sp.Poly.from_list(a[::-1],x,modulus=11);unit,factors=sp.factor_list(poly);tested+=1
  count=sum(m for _,m in factors);bound=int(count+109-poly.degree())
  attempts.append({'c':c,'degree':poly.degree(),'omega':int(count),'bound':bound})
  if bound<=6:
   product=sp.Poly(int(unit),x,modulus=11)
   for f,m in factors:product*=f**m
   assert product==poly
   chosen={'c':c,'degree':poly.degree(),'omega':int(count),'bound':bound,'unit':int(unit)%11,'factors':[{'degree':f.degree(),'multiplicity':int(m),'coeffs_high':[int(z)%11 for z in f.all_coeffs()]} for f,m in factors]};break
 out.append({'direction':t,'attempts':attempts,'certificate':chosen})
 if chosen is None:unresolved.append(t)
 if len(out)%100==0:print('done',len(out),'attempts',tested,'unresolved',unresolved,'seconds',round(time.time()-start,1),flush=True)
 if len(out)%100==0:(B/'projective-progress.json').write_bytes((json.dumps({'completed':len(out),'attempts':tested,'unresolved':unresolved,'seconds':time.time()-start},indent=2)+'\n').encode())
(B/'projective-certificates.json').write_bytes((json.dumps({'prime':11,'h':109,'directions':1464,'sources':[{'path':f'basis.{k}.poly.tsv','sha256':hashlib.sha256((B/f'basis.{k}.poly.tsv').read_bytes()).hexdigest()} for k in range(4)],'results':out,'unresolved':unresolved,'attempts':tested,'seconds':time.time()-start},indent=2)+'\n').encode())
print('FINAL',len(out),'attempts',tested,'unresolved',unresolved,'seconds',round(time.time()-start,2),flush=True)
