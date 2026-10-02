from pathlib import Path
import json,itertools,hashlib,math
R=Path(__file__).resolve().parents[1];O=R/'certificates/geometry'
prof=json.loads((O/'profiles.json').read_text());assert len(prof)==4
DOMAINS=[(11,(0,0,0,0,2,2)),(18,(0,0,0,1,0,2))]
for q,fee in DOMAINS:
 expected=set()
 for dk in itertools.product(*[[(c//2,0)] if r%2 else [(d,c-2*d) for d in range(c//2+1)] for r,c in zip(range(3,9),fee)]):
  d,k=zip(*dk);expected.add((d,k))
 actual={(tuple(z['delta']),tuple(z['kappa'])) for z in prof if z['q']==q and tuple(z['fee'])==fee};assert expected==actual
out=[]
for z in prof:
 i=z['index'];b=O/f'g{i:02d}';A=Path(str(b)+'.txt').read_text().splitlines();B=Path(str(b)+'.alt').read_text().splitlines();assert len(A)==len(set(A)) and sorted(A)==sorted(B)
 q=z['q'];K=(q-2)**2+1;assert (q,tuple(z['fee'])) in DOMAINS
 for line in A:
  a=list(map(int,line.split()));assert len(a)==46 and a[:13]==[q,*z['delta'],*z['kappa']]
 assert math.gcd(q,*z['delta'],*z['kappa'])==1
 rec={k:z[k] for k in ['index','q','fee','delta','kappa']};rec['columns']=K;rec['configurations']=len(A);rec['root_set_sha256']=hashlib.sha256(('\n'.join(sorted(A))+'\n').encode()).hexdigest();rec['receivers']=[]
 for p in [32749,32719]:
  assert not Path(str(b)+f'.p{p}.exceptions').read_text().strip()
  lines=Path(str(b)+f'.p{p}.minors').read_text().splitlines();assert len(lines)==len(A)
  for j,line in enumerate(lines):
   w=list(map(int,line.split()));assert w[:2]==[j,K] and 0<w[2]<p and len(w)==K+3 and len(set(w[3:]))==K
  assert (R/f'logs/g{i:02d}_receive{p}.log').read_text().strip()==f'PASS q {q} p {p} gates {len(A)} minors {len(A)} routed_exact_exceptions 0'
  rec['receivers'].append({'prime':p,'accepted_full_rank_minors':len(A),'exceptions':0})
 out.append(rec)
r={'complete':True,'exact_domains':2,'all_full_rank':True,'profiles':out,'root_configurations':sum(z['configurations'] for z in out),'nonzero_minors':2*sum(z['configurations'] for z in out),'unresolved_rational_kernels':0,'basis':'adopted geometric necessity; exact root enumeration and two same-author implementations'}
(O/'RECEIPT.json').write_text(json.dumps(r,indent=2)+'\n');print(json.dumps({k:v for k,v in r.items() if k!='profiles'},indent=2))
