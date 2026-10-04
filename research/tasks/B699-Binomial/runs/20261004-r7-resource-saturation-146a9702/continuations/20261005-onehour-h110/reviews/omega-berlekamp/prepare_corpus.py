from pathlib import Path
import json,hashlib
root=Path.cwd();old=root/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-fiftymin/reviews';out=root/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-onehour-h110/reviews/omega-berlekamp';tmp=Path('D:/Temp/b699-r7-onehour-h110-20261005/review-omega');cases=[];provenance=[]
for review in ['specialization108','specialization109']:
 prep=json.loads((old/review/'prepare-receipt.json').read_text());p0=Path(prep['cpp_input']['path']);b=p0.read_bytes();assert hashlib.sha256(b).hexdigest()==prep['cpp_input']['sha256'];tokens=iter(map(int,b.split()));p,h,n=[next(tokens) for _ in range(3)]
 for i in range(n):
  idx,c,d,unit,nf,bound,omega=[next(tokens) for _ in range(7)];assert idx==i;f=[next(tokens) for _ in range(d+1)];assert f[-1]==unit;total=0
  for j in range(nf):
   degree,m=next(tokens),next(tokens);total+=m
   for k in range(degree+1):next(tokens)
  assert total==omega;cases.append((p,f,omega,review,i))
 try:next(tokens);assert False
 except StopIteration:pass
 provenance.append({'review':review,'signature_sha256':hashlib.sha256((old/review/'acceptance.json').read_bytes()).hexdigest(),'input_sha256':hashlib.sha256(b).hexdigest(),'cases':n})
def mul(a,b,p):
 r=[0]*(len(a)+len(b)-1)
 for i,x in enumerate(a):
  for j,y in enumerate(b):r[i+j]=(r[i+j]+x*y)%p
 while r and not r[-1]:r.pop()
 return r
def power(a,n,p):
 r=[1]
 for _ in range(n):r=mul(r,a,p)
 return r
controls=[]
for p in [11,257]:
 X=[0,1];lin=[1,1];a=[1,2,1]
 def add(f,omega,desc):cases.append((p,f,omega,'control',len(controls)));controls.append({'prime':p,'description':desc,'degree':len(f)-1,'omega':omega})
 add([3],0,'nonzero constant')
 add(power(X,p,p),p,'X^p derivative zero')
 add(power(lin,p,p),p,'(X+1)^p inseparable root')
 add(mul(power(X,p,p),power(lin,2,p),p),p+2,'p-divisible multiplicity plus ordinary multiplicity')
 add(power(X,p+1,p),p+1,'multiplicity p+1 peeling loop')
 add(power(a,p,p),2*p,'quadratic square raised to p')
 add(mul(power(X,3,p),power(lin,4,p),p),7,'two distinct repeated linear factors')
 nonsquare=next(a for a in range(2,p) if pow(a,(p-1)//2,p)==p-1);quad=[(-nonsquare)%p,0,1]
 add(power(quad,p,p),p,'irreducible quadratic raised to p')
 add(mul(power(quad,p,p),power(lin,5,p),p),p+5,'irreducible quadratic p-thpower mixed with linear multiplicity5')
path=tmp/'accepted-factor-corpus.txt'
with path.open('w',encoding='ascii',newline='\n') as f:
 f.write(str(len(cases))+'\n')
 for p,poly,o,origin,index in cases:f.write(f'{p} {len(poly)-1} {o}\n'+' '.join(map(str,poly))+'\n')
receipt={'case_count':len(cases),'previous_full_Rabin_cases':1740,'controls':controls,'provenance':provenance,'output_path':str(path),'bytes':path.stat().st_size,'sha256':hashlib.sha256(path.read_bytes()).hexdigest(),'maximum_degree':max(len(c[1])-1 for c in cases)}
(out/'corpus-receipt.json').write_text(json.dumps(receipt,indent=2)+'\n',encoding='utf-8');print(json.dumps({k:receipt[k] for k in ['case_count','bytes','sha256','maximum_degree']}))
