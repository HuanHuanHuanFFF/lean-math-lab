"""Independent transport/schema/source/coverage checks and literal specialization of all258 directions."""
from pathlib import Path
import hashlib,json,collections,sys,time
root=Path.cwd();run=root/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702';cont=run/'continuations/20261005-fiftymin';exp=cont/'experiments/main/kernel108';out=cont/'reviews/specialization108';tmp=Path('D:/Temp/b699-r7-fiftymin-20261005/review108');p=257;start=time.monotonic()
expected_hashes={'input.txt':'78bc6b027e412835ca8e810dc19db9b03a8b2ca55c11d6f3c5e438854a5b31e2','basis.0.poly.tsv':'eca754a4695ac7cd9a9bc35f22f62c195b235272c5a872fc2e4dba1ccce5c5fe','basis.1.poly.tsv':'d681ed4679ede80f0a316cdfa897ee82a2435e5e9d2fd993041e62dea77380bf','basis.trace.tsv':'9c09a25030758968ea0c489c6305407c8878781059048016985f5d4edf6f8706','projective-certificates.json':'fd4332af4a7a687f711a7104bc4ff0050b152e30b87eb74dc10672778249c334'}
for name,sha in expected_hashes.items():assert hashlib.sha256((exp/name).read_bytes()).hexdigest()==sha
cand=cont/'notes/main/03-h108-projective-candidate.md';assert hashlib.sha256(cand.read_bytes()).hexdigest()=='d60f04c8382c634823c0f7a857c4376332e85e07f226708f63e57f3ee0123b26'
lines=[list(map(int,line.split())) for line in (exp/'input.txt').read_text().splitlines()];assert lines[0]==[108,305,257,0,21]
oldlines=[list(map(int,line.split())) for line in (cont/'experiments/main/kernel107/input.txt').read_text().splitlines()];assert lines[1:]==oldlines[1:]
assert (exp/'basis.0.poly.tsv').read_bytes()==(cont/'experiments/main/kernel107/basis.poly.tsv').read_bytes()
prior=json.loads((cont/'reviews/specialization107/acceptance.json').read_text());assert prior['status']=='INDEPENDENT_ACCEPTED_PAPER_DIRECT_SOURCE_AND_RABIN_CERTIFICATES'
received=json.loads((out/'receive-e108.json').read_text(encoding='utf-8-sig'));author=json.loads((exp/'basis.json').read_text())
for name in ['e','p','mode','conditions','nonredundant','dimension','min_weight','weights']:
 if name in ['e','p']:assert received[name]==author['e' if name=='e' else 'prime']
 else:assert received[name]==author[name]
assert received['dimension']==2 and len(received['weights'])==109 and received['verified']
source1=json.loads((out/'basis1-direct-source-result.json').read_text(encoding='utf-8-sig'));assert source1['q']==108 and source1['D']==305 and source1['all_source_jets_zero'] and source1['conditions_checked']==23476
bases=[]
for idx in [0,1]:
 ls=(exp/f'basis.{idx}.poly.tsv').read_text().splitlines();assert ls.pop(0)=='a\tb\tcoefficient';ts=[tuple(map(int,line.split())) for line in ls]
 assert len({(a,b) for a,b,v in ts})==len(ts) and all(a>=0 and b>=0 and a+2*b<=305 and 0<v<p for a,b,v in ts)
 assert max(b for a,b,v in ts)==107+idx and max(a+2*b for a,b,v in ts)==305;bases.append(ts)
d=json.loads((exp/'projective-certificates.json').read_text());assert d['prime']==p and d['h']==108 and d['directions']==258 and d['unresolved']==[]
assert d['sources']==[{'path':f'basis.{i}.poly.tsv','sha256':expected_hashes[f'basis.{i}.poly.tsv']} for i in [0,1]]
results=d['results'];directions=[z['direction'] for z in results];assert len(results)==258 and directions==list(range(p))+['infinity']
cs={int(z['certificate']['c']) for z in results};assert all(0<=c<p for c in cs)
specialized={}
for i in [0,1]:
 for c in cs:
  coeff=[0]*109;cp=[pow(c,a,p) for a in range(306)]
  for a,b,v in bases[i]:coeff[b]=(coeff[b]+v*cp[a])%p
  specialized[i,c]=coeff
path=tmp/'all-directions-input.txt';hist=collections.Counter();factor_occ=0;summary=[]
with path.open('w',encoding='ascii',newline='\n') as stream:
 stream.write('257 108 258\n')
 for index,z in enumerate(results):
  cert=z['certificate'];c=cert['c'];d0=specialized[0,c];d1=specialized[1,c]
  ff=list(d1) if z['direction']=='infinity' else [(a+z['direction']*b)%p for a,b in zip(d0,d1)]
  while ff and not ff[-1]:ff.pop()
  assert ff and len(ff)-1==cert['degree'] and 0<cert['unit']<p and cert['unit']==ff[-1]
  omega=sum(f['multiplicity'] for f in cert['factors']);bound=omega+108-(len(ff)-1)
  assert omega==cert['omega'] and bound==cert['bound'] and bound<=6
  fs=cert['factors'];assert sum(f['degree']*f['multiplicity'] for f in fs)==len(ff)-1
  stream.write(' '.join(map(str,[index,c,len(ff)-1,cert['unit'],len(fs),bound,omega]))+'\n');stream.write(' '.join(map(str,ff))+'\n')
  for f in fs:
   degree=f['degree'];mult=f['multiplicity'];assert degree>=1 and mult>=1
   coeff=f['coeffs_high'];assert len(coeff)==degree+1 and coeff[0]==1 and all(0<=v<p for v in coeff)
   stream.write(f'{degree} {mult}\n');stream.write(' '.join(map(str,reversed(coeff)))+'\n')
  hist[bound]+=1;factor_occ+=len(fs);summary.append({'direction':z['direction'],'N':c,'degree':len(ff)-1,'omega':omega,'bound':bound})
assert dict(sorted(hist.items()))=={1:2,2:11,3:43,4:63,5:76,6:63}
receipt={'verifier':'/root/verify_reg3_module','basis0_prior_direct_source_reused':True,'basis0_exactly_same_bytes':True,'basis1_direct_source_all_jets':23476,'basis_q_degrees':[107,108],'independence_reason':'Different X degrees','full_module_reception':received,'source_input_matches_prior_21_sources':True,'all_projective_directions_exactly_once':258,'directions_order':'0..256 then infinity','all_specializations_directly_recomputed':True,'selected_N_values':sorted(cs),'bound_histogram':dict(sorted(hist.items())),'factor_occurrences':factor_occ,'all_selected_degrees':[z['degree'] for z in summary],'directions':summary,'cpp_input':{'path':str(path),'bytes':path.stat().st_size,'sha256':hashlib.sha256(path.read_bytes()).hexdigest()},'fixed_hashes':expected_hashes,'candidate_sha256':hashlib.sha256(cand.read_bytes()).hexdigest(),'seconds':time.monotonic()-start}
(out/'prepare-receipt.json').write_text(json.dumps(receipt,indent=2)+'\n',encoding='utf-8');print(json.dumps({k:receipt[k] for k in ['all_projective_directions_exactly_once','bound_histogram','factor_occurrences','cpp_input','seconds']}))
