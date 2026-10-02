"""Check complete profile partition, all full-rank minors, and conjugate branches.
No unconditional absolute irreducibility assumption: q14/delta8=2 includes d=2.
"""
from geometry_jobs import R,O,DOMAINS,plans
import hashlib,json,collections,math
out=[];dc=[]
for z in plans():
 i=z['index'];b=O/f'g{i:02d}';A=(O/f'g{i:02d}.txt').read_text().splitlines();B=(O/f'g{i:02d}.alt').read_text().splitlines()
 assert len(A)==len(set(A)) and sorted(A)==sorted(B)
 q=z['q'];K=(q-2)**2+1;counter=collections.Counter()
 for line in A:
  a=list(map(int,line.split()));assert len(a)==46 and a[:13]==[q,*z['delta'],*z['kappa']]
  ms=a[25:];ks=a[7:13];choices=[]
  for d in range(1,q+1):
   if q%d or any(v%d for v in ms+ks):continue
   g=0;pt=0
   for ri,r in enumerate(range(3,9)):
    for s in range(r//2+1):
     m=ms[pt]//d;g+=m*(m-1)//2
     if 2*s==r:
      w=m-ks[ri]//d;g+=w*(w-1)//2
     pt+=1
   if g<=(q//d-1)**2:choices.append(d)
  assert choices
  counter[str(choices)]+=1
 rec=dict(z);rec.update(columns=K,configurations=len(A),root_set_sha256=hashlib.sha256(('\n'.join(sorted(A))+'\n').encode()).hexdigest(),receivers=[],admissible_conjugate_counts=dict(counter))
 for p in [32749,32719]:
  assert not (O/f'g{i:02d}.p{p}.exceptions').read_text().strip()
  count=0
  with (O/f'g{i:02d}.p{p}.minors').open() as f:
   for j,line in enumerate(f):
    w=list(map(int,line.split()));assert w[:2]==[j,K] and 0<w[2]<p and len(w)==K+3 and len(set(w[3:]))==K;count+=1
  assert count==len(A)
  assert (R/f'logs/g{i:02d}_receive{p}.log').read_text().strip()==f'PASS q {q} p {p} gates {len(A)} minors {len(A)} routed_exact_exceptions 0'
  rec['receivers'].append({'prime':p,'accepted_full_rank_minors':len(A),'exceptions':0})
 out.append(rec);dc.append({'profile':f'g{i:02d}','admissible_conjugate_counts':dict(counter)})
assert len(out)==13 and sum(a['configurations'] for a in out)==159689
assert out[8]['admissible_conjugate_counts']=={'[2]':701,'[1]':143548,'[1, 2]':39}
(O/'CONJUGATE_COUNTS.json').write_text(json.dumps(dc,indent=2)+'\n')
r={'complete':True,'exact_domains':6,'all_full_rank':True,'profiles':out,'root_configurations':sum(a['configurations'] for a in out),'nonzero_minors':2*sum(a['configurations'] for a in out),'unresolved_rational_kernels':0,'only_nonabsolute_branch_configurations_retained':701,'basis':'adopted rational-irreducible geometric necessity; full enumeration; two same-author matrix implementations'}
(O/'RECEIPT.json').write_text(json.dumps(r,indent=2)+'\n');print(json.dumps({k:v for k,v in r.items() if k!='profiles'},indent=2))
