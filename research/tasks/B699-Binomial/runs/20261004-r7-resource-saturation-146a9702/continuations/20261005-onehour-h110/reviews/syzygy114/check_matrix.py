from pathlib import Path
import json,hashlib
root=Path.cwd();cont=root/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-onehour-h110';exp=cont/'experiments/main/kernel114p11';out=cont/'reviews/syzygy114';p=11
cand=cont/'notes/main/04-syzygy-rigidity114-candidate.md';assert hashlib.sha256(cand.read_bytes()).hexdigest()=='0941b872ff50ea87a056a86b2c299c2581754a3ad45fadccf92fe4604fd09124';coefs=[];fixed=[]
for i in range(14):
 raw=(exp/f'basis.{i}.poly.tsv').read_bytes();lines=raw.decode().splitlines();assert lines.pop(0)=='a\tb\tcoefficient';poly=[0]*115;seen=set()
 for s in lines:
  a,b,c=map(int,s.split());assert a>=0 and b>=0 and b<=114 and a+2*b<=305 and 0<c<p and (a,b) not in seen;seen.add((a,b))
  if a==0:poly[b]=(poly[b]+c)%p
 coefs.append(poly);fixed.append({'path':str((exp/f'basis.{i}.poly.tsv').relative_to(root)).replace('\\','/'),'bytes':len(raw),'sha256':hashlib.sha256(raw).hexdigest()});direct=json.loads((out/f'basis-{i}-direct-source-result.json').read_text());assert direct['prime']==11 and direct['all_source_jets_zero'] and direct['conditions_checked']==23476
raw=(exp/'eval0.json').read_bytes();assert hashlib.sha256(raw).hexdigest()=='02efc7a2dc6700d13f6164e3e13915ef462a6ea53dd104fe54fe2f2f1a4f7483';a=json.loads(raw);assert a['p']==11 and a['c']==0 and a['basis_high_to_low']==False
assert [v+[0]*(115-len(v)) for v in a['basis']]==coefs
cols=[]
for poly in coefs:
 for k in range(8):cols.append([0]*k+poly+[0]*(7-k))
assert len(cols)==112 and all(len(c)==122 for c in cols);basis={}
for col in cols:
 v=col[:]
 for j in range(122):
  if not v[j]:continue
  if j in basis:v=[(x-v[j]*y)%p for x,y in zip(v,basis[j])]
  else:iv=pow(v[j],p-2,p);basis[j]=[x*iv%p for x in v];break
assert len(basis)==112
rows=sorted(basis);minor=[[c[r] for c in cols] for r in rows];m=[r[:] for r in minor];det=1
for k in range(112):
 j=next(j for j in range(k,112) if m[j][k])
 if j!=k:m[j],m[k]=m[k],m[j];det=-det
 pivot=m[k][k];det=det*pivot%p;inv=pow(pivot,p-2,p);m[k]=[v*inv%p for v in m[k]]
 for j in range(k+1,112):v=m[j][k];m[j]=[(x-v*y)%p for x,y in zip(m[j],m[k])]
assert det%p
result={'verifier':'/root/verify_reg3_module','evaluation_N':0,'all14_evaluations_from_original_TSV':True,'matches_fixed_eval0':True,'matrix_shape':[122,112],'rank_mod11':112,'independent_rank_method':'direct coefficient column Gaussian plus selected square minor determinant','minor_rows':rows,'minor_determinant_mod11':det%p,'basis_independence_follows':True,'fixed_basis_files':fixed,'candidate_sha256':hashlib.sha256(cand.read_bytes()).hexdigest()}
(out/'matrix-result.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8');print(json.dumps({'matrix':[122,112],'rank':112,'minor_det_mod11':det%p,'all14_direct_source':True}))
