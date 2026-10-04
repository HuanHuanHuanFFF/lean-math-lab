from pathlib import Path
import hashlib,json,itertools,collections,time
root=Path.cwd();cont=root/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-fiftymin';exp=cont/'experiments/main/kernel109p11';out=cont/'reviews/specialization109';tmp=Path('D:/Temp/b699-r7-fiftymin-20261005/review109');p=11;start=time.monotonic()
sha={'input.txt':'60e9ece46f7ceb6d8461d01c6925af22e136cab614049fc5c9b371ba153cd26b','basis.0.poly.tsv':'8efd6bbed26472118268a1939187ccbd0c240f49a86503c9c03269277dbd413b','basis.1.poly.tsv':'788ef9595de62cd4232df5cc3b356d3fcbcbfb23ac22f21dd1743c20bc15d966','basis.2.poly.tsv':'412de01d5525c737b3468fd299d80c0fd423058297948911241c0f1028dc3b26','basis.3.poly.tsv':'e8683ca25dbc3bf09a9b4aad39467d8a220ba3cdb588e04bafcbcd30556c9666','basis.trace.tsv':'475df33a14cb00b8f47b51966f5df5868ea540f91886df540cfb74976504fde8','projective-certificates.json':'f4b335a1e411df6605191fc20a7de01bce7acfb5833980809f3f13784a943385','joint-degree-certificates.json':'3164bd19968507726aae5aed7ca2fa09a0a8770f25bda611cbd6bd633fa8f2ea'}
for name,h in sha.items():assert hashlib.sha256((exp/name).read_bytes()).hexdigest()==h
cand=cont/'notes/main/04-h109-projective-joint-candidate.md';assert hashlib.sha256(cand.read_bytes()).hexdigest()=='f93eab9e2b75e1458a96ab3d4dfc6427598273597d81f462f20e80ab8ac92297'
lines=[list(map(int,s.split())) for s in (exp/'input.txt').read_text().splitlines()];old=[list(map(int,s.split())) for s in (cont/'experiments/main/kernel108/input.txt').read_text().splitlines()];assert lines[0]==[109,305,11,0,21] and lines[1:]==old[1:]
assert all(11%q for q in [2,3])
for r in range(3,9):
 xs=[s*(r-s)%p for rr,s,w,m in lines[1:] if rr==r];assert len(xs)==len(set(xs))
received=json.loads((out/'receive-e109.json').read_text(encoding='utf-8-sig'));author=json.loads((exp/'basis.json').read_text())
for name in ['conditions','nonredundant','dimension','min_weight','weights']:assert received[name]==author[name]
assert received['p']==11 and received['e']==109 and received['dimension']==4 and received['verified']
bases=[]
for i in range(4):
 ds=json.loads((out/f'basis-{i}-direct-source-result.json').read_text(encoding='utf-8-sig'));assert ds['prime']==11 and ds['q']==109 and ds['D']==305 and ds['all_source_jets_zero'] and ds['conditions_checked']==23476
 ls=(exp/f'basis.{i}.poly.tsv').read_text().splitlines();assert ls.pop(0)=='a\tb\tcoefficient';ts=[tuple(map(int,s.split())) for s in ls];assert len({(a,b) for a,b,v in ts})==len(ts) and all(a>=0 and b>=0 and a+2*b<=305 and 0<v<p for a,b,v in ts);bases.append({(a,b):v for a,b,v in ts})
# Rank4 proved by an explicit4x4 minor of coefficient rows.
pivots={};chosen=[];mons=[]
for mon in sorted(set().union(*(set(b) for b in bases))):
 raw=[b.get(mon,0) for b in bases];v=list(raw)
 for j in range(4):
  if not v[j]:continue
  if j in pivots:v=[(x-v[j]*y)%p for x,y in zip(v,pivots[j])]
  else:iv=pow(v[j],p-2,p);pivots[j]=[x*iv%p for x in v];chosen.append(raw);mons.append(mon);break
 if len(pivots)==4:break
assert len(pivots)==4
m=[r[:] for r in chosen];det=1
for i in range(4):
 j=next(j for j in range(i,4) if m[j][i])
 if i!=j:m[i],m[j]=m[j],m[i];det=-det
 v=m[i][i];det=det*v%p;m[i]=[x*pow(v,p-2,p)%p for x in m[i]]
 for j in range(i+1,4):z=m[j][i];m[j]=[(a-z*b)%p for a,b in zip(m[j],m[i])]
assert det%p
A=json.loads((exp/'projective-certificates.json').read_text());J=json.loads((exp/'joint-degree-certificates.json').read_text());assert A['prime']==p and A['h']==109 and A['directions']==1464 and J['prime']==p and J['h']==109 and J['first_stage_sha256']==sha['projective-certificates.json']
expected=set((1,*v) for v in itertools.product(range(p),repeat=3))|set((0,1,*v) for v in itertools.product(range(p),repeat=2))|set((0,0,1,v) for v in range(p))|{(0,0,0,1)}
actual=[tuple(z['direction']) for z in A['results']];assert len(actual)==1464 and len(set(actual))==1464 and set(actual)==expected
single=[z for z in A['results'] if z['certificate'] is not None];bad={tuple(z['direction']) for z in A['results'] if z['certificate'] is None};assert len(single)==1459 and bad==set(map(tuple,A['unresolved']))=={tuple(z['direction']) for z in J['results']} and len(bad)==5
cases=[(tuple(z['direction']),z['certificate'],'single') for z in single]+[(tuple(z['direction']),f,'joint') for z in J['results'] for f in z['full_degree_certificates']]
cs={f['c'] for v,f,kind in cases};specialized={}
for i,b in enumerate(bases):
 for c in cs:
  assert 0<=c<p;cp=[pow(c,a,p) for a in range(306)];coef=[0]*110
  for (a,bb),z in b.items():coef[bb]=(coef[bb]+z*cp[a])%p
  specialized[i,c]=coef
path=tmp/'all-factor-cases.txt';case_receipts=[];hist=collections.Counter()
with path.open('w',encoding='ascii',newline='\n') as stream:
 stream.write(f'11 109 {len(cases)}\n')
 for index,(v,f,kind) in enumerate(cases):
  c=f['c'];coef=[sum(v[i]*specialized[i,c][b] for i in range(4))%p for b in range(110)]
  while coef and not coef[-1]:coef.pop()
  assert coef and len(coef)-1==f['degree'] and coef[-1]==f['unit'];fs=f['factors'];omega=sum(z['multiplicity'] for z in fs);bound=omega+109-f['degree'];assert omega==f['omega'] and sum(z['degree']*z['multiplicity'] for z in fs)==f['degree']
  if kind=='single':assert bound==f['bound'] and bound<=6;hist[bound]+=1
  else:assert f['degree']==109
  stream.write(' '.join(map(str,[index,c,f['degree'],f['unit'],len(fs),bound,omega]))+'\n');stream.write(' '.join(map(str,coef))+'\n')
  for z in fs:assert z['degree']>=1 and z['multiplicity']>=1 and len(z['coeffs_high'])==z['degree']+1 and z['coeffs_high'][0]==1 and all(0<=x<p for x in z['coeffs_high']);stream.write(f"{z['degree']} {z['multiplicity']}\n"+' '.join(map(str,reversed(z['coeffs_high'])))+'\n')
  case_receipts.append({'index':index,'direction':list(v),'kind':kind,'N':c,'degree':f['degree'],'omega':omega,'bound':bound})
# Only the baselineOmega7 / missing singleton-degree certificate is used, not author's partitionDP.
def subset(ds):
 s={0}
 for d in ds:s|={a+d for a in s}
 return s
joint_receipts=[]
for z in J['results']:
 fs=z['full_degree_certificates'];assert fs and all(f['degree']==109 for f in fs)
 lists=[[f['degree'] for f in cert['factors'] for _ in range(f['multiplicity'])] for cert in fs];sets=list(map(subset,lists));intersection=set.intersection(*sets)
 assert sorted(intersection)==z['common_subset_sums'];base=next((i for i,f in enumerate(fs) if f['omega']==7 and any(d not in intersection for d in lists[i])),None);assert base is not None
 missing=next(d for d in lists[base] if d not in intersection);other=next(i for i,s in enumerate(sets) if missing not in s)
 joint_receipts.append({'direction':z['direction'],'baseline_N':fs[base]['c'],'baseline_degree':109,'baseline_omega':7,'baseline_factor_degrees':lists[base],'forbidden_single_factor_degree':missing,'contradicting_full_degree_N':fs[other]['c'],'contradicting_subset_sums':sorted(sets[other]),'short_certificate_verified':True})
assert len(cases)==1482
receipt={'candidate_sha256':hashlib.sha256(cand.read_bytes()).hexdigest(),'fixed_hashes':sha,'source_input_same_integer21_constraints':True,'source_points_distinct_over_F11':True,'field':11,'module_received':received,'all_four_basis_direct_jets':23476,'basis_coefficient_rank':4,'rank4_minor':{'monomials':mons,'matrix':chosen,'determinant_mod11':det%p},'exact_projective_coverage':1464,'single_cases':1459,'joint_directions':5,'full_degree_joint_certificates':len(cases)-1459,'single_bound_histogram':dict(sorted(hist.items())),'joint_short_certificates':joint_receipts,'factor_cases':case_receipts,'cpp_input':{'path':str(path),'bytes':path.stat().st_size,'sha256':hashlib.sha256(path.read_bytes()).hexdigest()},'seconds':time.monotonic()-start,'author_partition_DP_not_used':True}
(out/'prepare-receipt.json').write_text(json.dumps(receipt,indent=2)+'\n',encoding='utf-8');print(json.dumps({'basis_rank':4,'rank4_determinant':det%p,'directions':1464,'single':1459,'joint':5,'factor_cases':len(cases),'short_certificates':joint_receipts,'cpp_input':receipt['cpp_input']}))
