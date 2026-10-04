from pathlib import Path
import json,hashlib,time
root=Path.cwd();cont=root/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-onehour-h110';exp=cont/'experiments/main';kern=exp/'kernel110p11';out=cont/'reviews/projective110';tmp=Path('D:/Temp/b699-r7-onehour-h110-20261005/review-omega');start=time.monotonic();p=11
expected={'selected-directions.tsv':'9bc2972fb62970585e05d1446eea31f810a5cf3c342f873b42c77cf71565a227','residual-packets.jsonl':'0df57583149512963da9b77fe89801708426a38964a5cf7c418b424ecc89dd5c','full177156.json':'d54ee2a74eb23125b224e6f75facada1ce37fcec1545eed622dabc99a6550ebc'}
for n,h in expected.items():assert hashlib.sha256((exp/n).read_bytes()).hexdigest()==h
source=json.loads((cont/'reviews/source110/independent-source-result.json').read_text());coefs={};hashes=[]
for i in range(6):
 file=kern/f'basis.{i}.poly.tsv';raw=file.read_bytes();assert hashlib.sha256(raw).hexdigest()==source['fixed_sources'][i]['sha256'];hashes.append(source['fixed_sources'][i]);lines=raw.decode().splitlines();assert lines.pop(0)=='a\tb\tcoefficient';ts=[tuple(map(int,s.split())) for s in lines]
 for c in range(p):
  powers=[pow(c,a,p) for a in range(306)];poly=[0]*111
  for a,b,z in ts:poly[b]=(poly[b]+z*powers[a])%p
  coefs[i,c]=poly
 def_unused=None
# Canonical ID from normalized projective vector, independently of author's enumeration loop.
def pid(v):
 assert len(v)==6 and all(0<=a<p for a in v);j=next((j for j in range(6) if v[j]),None);assert j is not None and v[j]==1
 code=0
 for a in v[j+1:]:code=code*p+a
 return sum(p**(5-r) for r in range(j))+code
def specialize(v,c):
 assert 0<=c<p
 f=[sum(v[i]*coefs[i,c][b] for i in range(6))%p for b in range(111)]
 while f and not f[-1]:f.pop()
 return f
seen=bytearray(177156);res={};passing=0;omega_path=tmp/'full176628-selected.txt'
with omega_path.open('w',encoding='ascii',newline='\n') as output,(exp/'selected-directions.tsv').open() as table:
 assert table.readline().strip()=='id\ta0\ta1\ta2\ta3\ta4\ta5\tc\tdegree\tomega\tbound';output.write('176628\n')
 for line in table:
  values=list(map(int,line.split()));assert len(values)==11;idx,*other=values;v=other[:6];c,d,o,bound=other[6:];assert 0<=idx<len(seen) and pid(v)==idx and not seen[idx];seen[idx]=1
  if c==-1:res[idx]=v;continue
  f=specialize(v,c);assert f and len(f)-1==d and o+110-d==bound and bound<=6
  output.write(f'11 {d} {o}\n'+' '.join(map(str,f))+'\n');passing+=1
assert all(seen) and passing==176628 and len(res)==528
low_path=tmp/'residual528-low.txt';factor_path=tmp/'residual528-factors.txt';metadata=[];found=set()
with low_path.open('w',encoding='ascii',newline='\n') as low,factor_path.open('w',encoding='ascii',newline='\n') as fact,(exp/'residual-packets.jsonl').open() as packets:
 low.write('528\n');fact.write('11 110 528\n')
 for line in packets:
  assert len(line)<50000;z=json.loads(line);idx=z['id'];v=z['vector'];assert idx in res and v==res[idx] and idx not in found;found.add(idx);selected=z['accepted_certificate'];assert type(selected) is int and 0<=selected<len(z['certificates']);cert=z['certificates'][selected]
  c=cert['c'];f=specialize(v,c);d=len(f)-1;assert f and d==cert['degree'] and f[-1]==cert['unit'];fs=cert['factors'];omega=sum(a['multiplicity'] for a in fs);n1=sum(a['multiplicity'] for a in fs if a['degree']==1);n2=sum(a['multiplicity'] for a in fs if a['degree']==2);hi=omega-n1-n2;delta=110-d;bound=hi+min((n1+delta+2*n2)//3,(n1+delta+n2)//2)
  assert (omega,n1,n2,hi,delta,bound)==(cert['omega'],cert['n1'],cert['n2'],cert['n_hi'],cert['loss'],cert['q3_packet_bound']) and bound<=6
  low.write(f'11 {d} {omega} {n1} {n2}\n'+' '.join(map(str,f))+'\n');local=len(metadata);fact.write(f'{local} {c} {d} {cert["unit"]} {len(fs)} {omega+110-d} {omega}\n'+' '.join(map(str,f))+'\n')
  for a in fs:
   degree,m=a['degree'],a['multiplicity'];coeff=a['coeffs_high'];assert degree>=1 and m>=1 and len(coeff)==degree+1 and coeff[0]==1 and all(0<=x<p for x in coeff);fact.write(f'{degree} {m}\n'+' '.join(map(str,reversed(coeff)))+'\n')
  metadata.append({'index':local,'global_direction_id':idx,'vector':v,'N':c,'degree':d,'omega':omega,'n1':n1,'n2':n2,'n_hi':hi,'loss':delta,'q3_bound':bound})
assert found==set(res)
def info(p):return {'path':str(p),'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()}
result={'full_projective_coverage':177156,'single_Omega_cases':passing,'residual_q3_atom_cases':len(metadata),'canonical_ID_and_no_duplicates_checked':True,'all_specializations_rebuilt_from_six_original_TSV':True,'all_nonzero_and_degree_checked':True,'basis_sources':hashes,'selected_source_hashes':expected,'omega_input':info(omega_path),'low_input':info(low_path),'factor_input':info(factor_path),'residual_cases':metadata,'seconds':time.monotonic()-start}
(out/'prepare-receipt.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8');print(json.dumps({k:result[k] for k in ['full_projective_coverage','single_Omega_cases','residual_q3_atom_cases','omega_input','low_input','factor_input','seconds']}))
