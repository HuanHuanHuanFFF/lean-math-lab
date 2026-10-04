from pathlib import Path
import json,hashlib
root=Path.cwd();old=root/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-fiftymin/reviews';cont=root/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-onehour-h110';out=cont/'reviews/loadable-atom';tmp=Path('D:/Temp/b699-r7-onehour-h110-20261005/review-omega');cases=[]
for review in ['specialization108','specialization109']:
 prep=json.loads((old/review/'prepare-receipt.json').read_text());b=Path(prep['cpp_input']['path']).read_bytes();assert hashlib.sha256(b).hexdigest()==prep['cpp_input']['sha256'];it=iter(map(int,b.split()));p,h,n=[next(it) for _ in range(3)]
 for index in range(n):
  idx,c,d,unit,nf,bound,omega=[next(it) for _ in range(7)];f=[next(it) for _ in range(d+1)];n1=n2=0
  for j in range(nf):
   degree,m=next(it),next(it)
   if degree==1:n1+=m
   if degree==2:n2+=m
   for k in range(degree+1):next(it)
  cases.append((p,f,omega,n1,n2))
 try:next(it);assert False
 except StopIteration:pass
# Read expanded control case input and infer degrees from its fixed description metadata.
base=cont/'reviews/omega-berlekamp';receipt=json.loads((base/'corpus-receipt.json').read_text());raw=Path(receipt['output_path']).read_bytes();assert hashlib.sha256(raw).hexdigest()==receipt['sha256'];it=iter(map(int,raw.split()));n=next(it);expanded=[]
for i in range(n):p,d,o=[next(it) for _ in range(3)];expanded.append((p,[next(it) for _ in range(d+1)],o))
for (p,f,o),meta in zip(expanded[1740:],receipt['controls']):
 desc=meta['description']
 if desc=='irreducible quadratic raised to p':n1,n2=0,p
 elif desc=='irreducible quadratic p-thpower mixed with linear multiplicity5':n1,n2=5,p
 else:n1,n2=o,0
 cases.append((p,f,o,n1,n2))
path=tmp/'low-degree-corpus.txt'
with path.open('w',encoding='ascii',newline='\n') as s:
 s.write(str(len(cases))+'\n')
 for p,f,o,n1,n2 in cases:s.write(f'{p} {len(f)-1} {o} {n1} {n2}\n'+' '.join(map(str,f))+'\n')
result={'case_count':len(cases),'input':{'path':str(path),'bytes':path.stat().st_size,'sha256':hashlib.sha256(path.read_bytes()).hexdigest()},'expected_low_counts_from_complete_old_Rabin_factorizations':True,'controls':18}
(out/'corpus-receipt.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8');print(json.dumps(result))
