from pathlib import Path
import json,hashlib,sys,datetime,importlib.util,os,shutil
import sympy as sp
root=Path.cwd();run=root/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702';cont=run/'continuations/20261004-onehour';out=cont/'reviews/deformation';exp=cont/'experiments/main/rigidity107';cand=cont/'notes/main/04-source-deformation-candidate.md'
assert hashlib.sha256(cand.read_bytes()).hexdigest()=='0d8939152130c43aa36026260174622deda7900243d99ce57ff8e3f6c1a5eecc'
receiver=root/'research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20261003-session-results/objects/48/487596ab5c3ed683aef60cc5e0a930d0002e54a40e90edea471407827fa8e196.cpp'
assert hashlib.sha256(receiver.read_bytes()).hexdigest()=='487596ab5c3ed683aef60cc5e0a930d0002e54a40e90edea471407827fa8e196'
trace=exp/'full-source-e107-d305.trace.tsv';assert hashlib.sha256(trace.read_bytes()).hexdigest()=='9ab8c9817c8325054aaa39aeb0f963cd44bbdf3025c3d9192bbbd35fa73bf0e7'
original=json.loads((exp/'full-source-e107-d305.json').read_text(encoding='utf-8'));received=json.loads((out/'receive-e107.json').read_text(encoding='utf-8-sig'))
for key in ['conditions','nonredundant','dimension','min_weight','weights']:assert received[key]==original[key]
assert received['dimension']==1 and len(received['weights'])==108 and received['verified']
rows=[list(map(int,s.split())) for s in (exp/'full-source-e107-d305.input.txt').read_text().splitlines()];assert rows[0]==[107,305,257,0,21]
expected=[(3,0,1,77),(3,1,1,74),(4,0,1,67),(4,1,1,57),(4,2,2,56),(5,0,1,51),(5,1,1,54),(5,2,1,46),(6,0,1,40),(6,1,1,43),(6,2,1,48),(6,3,2,41),(7,0,1,31),(7,1,1,34),(7,2,1,39),(7,3,1,45),(8,0,1,25),(8,1,1,28),(8,2,1,33),(8,3,1,39),(8,4,2,52)]
assert [tuple(v) for v in rows[1:]]==expected
conditions=sum(sum(1 for a in range(m) for b in range(m) if a+w*b<m) for r,s,w,m in expected);assert conditions==23476
assert sp.isprime(257)
monomials=[(a,b) for a in range(12) for b in range(6) if a+2*b<=11];assert len(monomials)==42
maxl1=0;ordinarymax=0
for r,s,w,m in expected:
 x=s*(r-s);shear=s if w==2 else 0
 for a,b in monomials:
  value=(r+1)**a*(x+shear+1)**b
  assert value<=9**a*21**b<=9**(a+2*b)<=9**11
  maxl1=max(maxl1,value)
assert 9**11<2**35 and 41<8**2 and 38*41==1558 and 42<2**6
# Exact source-preserving spaces for the nine source lines; monomials 1,N,N^2,X.
ell=[]
for aa in range(9):
 mat=[];active=[]
 for r,s,w,m in expected:
  x=s*(r-s)
  if x!=aa*(r-aa):continue
  mat.append([1,r,r*r,x]);active.append((r,s,w))
  if w==2:assert aa==s;mat.append([0,1,2*r,s])
 rank=sp.Matrix(mat).rank();dim=4-rank;ell.append({'a':aa,'active_sources':active,'rank':rank,'dimension':dim})
assert [v['dimension'] for v in ell]==[1]*7+[2,3]
spec=importlib.util.spec_from_file_location('rs',run/'experiments/b/reg3_source.py');rs=importlib.util.module_from_spec(spec);spec.loader.exec_module(rs)
resource=rs.memory();resource.update(cpu_visible=os.cpu_count(),disk_C_free=shutil.disk_usage('C:/').free,disk_D_free=shutil.disk_usage('D:/').free)
def rec(p):return {'path':str(p.relative_to(root)).replace('\\','/'),'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()}
result={'verifier':'/root/verify_reg3_module','candidate_sha256':hashlib.sha256(cand.read_bytes()).hexdigest(),'trace_verified_full':received,'source_conditions_exact':True,'prime':257,'condition_count':conditions,'height_bound':{'monomial_count_max':42,'largest_source_expansion_l1_observed':maxl1,'global_entry_bound':9**11,'entry_bits_bound':35,'cofactor_bits_bound':1558,'primitive_l1_bits_bound':1564,'proof':'sqrt(41)<8; entry<2^35; each cofactor<2^(38*41); at most42 coefficients<2^6'},'ell_dimensions':ell,'resource':resource,'python':sys.version,'sympy':sp.__version__,'fixed_files':[rec(p) for p in [cand,receiver,trace,exp/'full-source-e107-d305.input.txt',exp/'full-source-e107-d305.json']], 'dp_scope':'Not independently rerun/accepted; author cost diagnostic only'}
(out/'independent-checks.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8');print(json.dumps({'conditions':conditions,'dimension':received['dimension'],'monomial_max':len(monomials),'ell_dims':[v['dimension'] for v in ell],'all_exact_checks':True}))
