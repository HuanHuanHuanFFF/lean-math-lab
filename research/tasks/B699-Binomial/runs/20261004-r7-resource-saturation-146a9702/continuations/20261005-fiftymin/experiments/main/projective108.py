from pathlib import Path
import json,hashlib,time,warnings
import sympy as sp
from sympy.utilities.exceptions import SymPyDeprecationWarning
warnings.filterwarnings('ignore',category=SymPyDeprecationWarning)
B=Path.cwd()/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-fiftymin/experiments/main/kernel108'
polys=[[tuple(map(int,l.split())) for l in (B/f'basis.{k}.poly.tsv').read_text().splitlines()[1:]] for k in range(2)]
cs=(2,17,0,1,9,10,13,19,23,29,31,37)
values={}
for c in cs:
 values[c]=[]
 for terms in polys:
  a=[0]*109
  for i,j,k in terms:a[j]=(a[j]+k*pow(c,i,257))%257
  values[c].append(a)
x=sp.Symbol('x');out=[];start=time.time();unresolved=[];tested=0
for t in list(range(257))+['infinity']:
 attempts=[];chosen=None
 for c in cs:
  a=values[c][1].copy() if t=='infinity' else [(z+t*w)%257 for z,w in zip(*values[c])]
  while a and not a[-1]:a.pop()
  if not a:attempts.append({'c':c,'zero':True});continue
  poly=sp.Poly.from_list(a[::-1],x,modulus=257);unit,factors=sp.factor_list(poly);tested+=1
  count=sum(m for _,m in factors);bound=int(count+108-poly.degree())
  attempts.append({'c':c,'degree':poly.degree(),'omega':int(count),'bound':bound})
  if bound<=6:
   product=sp.Poly(int(unit),x,modulus=257)
   for f,m in factors:product*=f**m
   assert product==poly
   chosen={'c':c,'degree':poly.degree(),'omega':int(count),'bound':bound,'unit':int(unit)%257,'factors':[{'degree':f.degree(),'multiplicity':int(m),'coeffs_high':[int(z)%257 for z in f.all_coeffs()]} for f,m in factors]};break
 out.append({'direction':t,'attempts':attempts,'certificate':chosen})
 if chosen is None:unresolved.append(t)
 if len(out)%20==0:print('done',len(out),'attempts',tested,'unresolved',unresolved,'seconds',round(time.time()-start,1),flush=True)
 if len(out)%20==0:(B/'projective-progress.json').write_bytes((json.dumps({'completed':len(out),'attempts':tested,'unresolved':unresolved,'seconds':time.time()-start},indent=2)+'\n').encode())
(B/'projective-certificates.json').write_bytes((json.dumps({'prime':257,'h':108,'directions':258,'sources':[{'path':f'basis.{k}.poly.tsv','sha256':hashlib.sha256((B/f'basis.{k}.poly.tsv').read_bytes()).hexdigest()} for k in range(2)],'results':out,'unresolved':unresolved,'attempts':tested,'seconds':time.time()-start},indent=2)+'\n').encode())
print('FINAL',len(out),'attempts',tested,'unresolved',unresolved,'seconds',round(time.time()-start,2),flush=True)
