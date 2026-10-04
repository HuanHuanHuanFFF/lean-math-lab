from pathlib import Path
import json,hashlib
root=Path.cwd();cont=root/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-onehour-h110';exp=cont/'experiments/main/kernel110p11';out=cont/'reviews/omega-berlekamp';tmp=Path('D:/Temp/b699-r7-onehour-h110-20261005/review-omega');p=11;bases=[];hashes=[]
for i in range(6):
 file=exp/f'basis.{i}.poly.tsv';raw=file.read_bytes();lines=raw.decode().splitlines();assert lines.pop(0)=='a\tb\tcoefficient';ts=[tuple(map(int,s.split())) for s in lines];assert len({(a,b) for a,b,v in ts})==len(ts) and all(a>=0 and 0<=b<=110 and a+2*b<=305 and 0<v<p for a,b,v in ts);bases.append(ts);hashes.append({'name':file.name,'sha256':hashlib.sha256(raw).hexdigest(),'bytes':len(raw)})
Cs=[0,1,2,9,10];coefs={}
for i,ts in enumerate(bases):
 for c in Cs:
  powers=[pow(c,a,p) for a in range(306)];poly=[0]*111
  for a,b,z in ts:poly[b]=(poly[b]+z*powers[a])%p
  coefs[i,c]=poly
cases=[];items=[]
for index in range(1000):
 code=index;digits=[]
 for j in range(5):digits.append(code%11);code//=11
 v=[1]+digits[::-1]
 for c in Cs:
  poly=[sum(v[i]*coefs[i,c][b] for i in range(6))%p for b in range(111)]
  while poly and not poly[-1]:poly.pop()
  if poly:break
 else:raise AssertionError(('no nonzero permitted specialization',index))
 cases.append(poly);items.append({'index':index,'direction':v,'N':c,'degree':len(poly)-1})
path=tmp/'h110-independent-probe1000.txt'
with path.open('w',encoding='ascii',newline='\n') as f:
 f.write('1000\n')
 for poly in cases:f.write(f'11 {len(poly)-1} -1\n'+' '.join(map(str,poly))+'\n')
(out/'h110-probe-receipt.json').write_text(json.dumps({'status':'Cost probe only; basis snapshots not yet mathematical acceptance','basis_hashes':hashes,'case_count':1000,'cases':items,'input':{'path':str(path),'sha256':hashlib.sha256(path.read_bytes()).hexdigest(),'bytes':path.stat().st_size}},indent=2)+'\n',encoding='utf-8');print(json.dumps({'cases':1000,'input_bytes':path.stat().st_size,'basis_hashes':hashes}))
