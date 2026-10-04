from pathlib import Path
import json,hashlib
root=Path.cwd();run=root/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702';cont=run/'continuations/20261005-onehour-h110';exp=cont/'experiments/main/kernel110p11';out=cont/'reviews/source110';p=11
input_bytes=(exp/'input.txt').read_bytes();assert hashlib.sha256(input_bytes).hexdigest()=='60d466eb121b2d1844095926c8ad2840a86403a9324849b2391e42bda5ca9d4f';lines=[list(map(int,s.split())) for s in input_bytes.decode().splitlines()];old=[list(map(int,s.split())) for s in (run/'continuations/20261005-fiftymin/experiments/main/kernel109p11/input.txt').read_text().splitlines()];assert lines[0]==[110,305,11,0,21] and lines[1:]==old[1:]
for r in range(3,9):
 xs=[s*(r-s)%p for rr,s,w,m in lines[1:] if rr==r];assert len(xs)==len(set(xs))
received=json.loads((out/'receive-e110.json').read_text());author=json.loads((exp/'basis.json').read_text());assert received['verified'] and received['dimension']==6
for name in ['conditions','nonredundant','dimension','min_weight','weights']:assert received[name]==author[name]
bases=[];fixed=[]
for i in range(6):
 r=json.loads((out/f'basis-{i}-direct-source-result.json').read_text());assert r['prime']==11 and r['q']==110 and r['D']==305 and r['all_source_jets_zero'] and r['conditions_checked']==23476
 file=exp/f'basis.{i}.poly.tsv';raw=file.read_bytes();ls=raw.decode().splitlines();assert ls.pop(0)=='a\tb\tcoefficient';ts=[tuple(map(int,s.split())) for s in ls];assert len({(a,b) for a,b,v in ts})==len(ts) and all(a>=0 and b>=0 and a+2*b<=305 and 0<v<p for a,b,v in ts);bases.append({(a,b):v for a,b,v in ts});fixed.append({'path':str(file.relative_to(root)).replace('\\','/'),'bytes':len(raw),'sha256':hashlib.sha256(raw).hexdigest()})
pivots={};chosen=[];mons=[]
for mon in sorted(set().union(*(set(b) for b in bases))):
 raw=[b.get(mon,0) for b in bases];v=list(raw)
 for j in range(6):
  if not v[j]:continue
  if j in pivots:v=[(x-v[j]*y)%p for x,y in zip(v,pivots[j])]
  else:iv=pow(v[j],p-2,p);pivots[j]=[x*iv%p for x in v];chosen.append(raw);mons.append(mon);break
 if len(pivots)==6:break
assert len(pivots)==6
mat=[r[:] for r in chosen];det=1
for i in range(6):
 j=next(j for j in range(i,6) if mat[j][i])
 if i!=j:mat[i],mat[j]=mat[j],mat[i];det=-det
 v=mat[i][i];det=det*v%p;mat[i]=[x*pow(v,p-2,p)%p for x in mat[i]]
 for j in range(i+1,6):v=mat[j][i];mat[j]=[(x-v*y)%p for x,y in zip(mat[j],mat[i])]
assert det%p
for name in ['input.txt','basis.trace.tsv','basis.json']:
 file=exp/name;raw=file.read_bytes();fixed.append({'path':str(file.relative_to(root)).replace('\\','/'),'bytes':len(raw),'sha256':hashlib.sha256(raw).hexdigest()})
result={'verifier':'/root/verify_reg3_module','field':11,'complete_kernel_dimension':6,'full_module_reception':received,'all_six_basis_direct_source_jets':23476,'basis_coefficient_rank':6,'rank6_minor':{'monomials':mons,'coefficient_matrix':chosen,'determinant_mod11':det%p},'source_constraints_exactly_same_integer21':True,'source_points_distinct_mod11':True,'fixed_sources':fixed,'does_not_assert_rational_source_existence':True,'projective_direction_count':(11**6-1)//10,'all_projective_directions_not_yet_verified':True}
(out/'independent-source-result.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8');print(json.dumps({'complete_dimension':6,'minor_det_mod11':det%p,'jets_per_basis':23476,'directions':result['projective_direction_count'],'source_files_fixed':len(fixed)}))
