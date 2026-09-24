#!/usr/bin/env python3
"""Exact certificate for C19. No network, symbolic package, or Lean is used."""
from __future__ import annotations
import argparse,hashlib,json,math,time
from pathlib import Path
from collections import Counter
from itertools import product
from exact_algebra import check_qig_identities
ROOT=Path(__file__).resolve().parents[1]
PS=(2,3,5); CAPS=(8,9,25); SIX={50,477,752,1280,1325,1530}
def req(ok,msg):
 if not ok: raise ValueError(msg)
def load(path): return json.loads(path.read_text(encoding='utf-8'))
def dump(path,obj): path.write_text(json.dumps(obj,ensure_ascii=False,indent=2,sort_keys=True)+'\n',encoding='utf-8')
def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
def vp(n,p):
 req(n>0,'vp positive input');e=0
 while n%p==0:n//=p;e+=1
 return e
def smallpart(n):
 ans=1
 for p in PS:
  while n%p==0:n//=p;ans*=p
 return ans
def crt2(a,M,b,Q):return (a+M*((b-a)*pow(M,-1,Q)%Q))%(M*Q),M*Q
def eea_inverse(a,m):
 t,nt,r,nr=0,1,m,a%m
 while nr:
  q=r//nr;t,nt=nt,t-q*nt;r,nr=nr,r-q*nr
 req(r==1,'coprime inverse');return t%m
def crt_alt(a,M,b,Q):return (b+Q*((a-b)*eea_inverse(Q,M)%M))%(M*Q),M*Q
def nthroot_ceiling_ratio(num,den,e):
 lo=0;hi=1
 while den*hi**e<num:hi*=2
 while lo+1<hi:
  m=(lo+hi)//2
  if den*m**e>=num:hi=m
  else:lo=m
 return hi
def all_masks():
 # Literal finite gate; universality is established in PROOFS sections 1 and 3.
 old=[];h025=[]
 for a in range(1800):
  def gate(S):return all(max(math.gcd(a-r,c) for r in range(6))==max(math.gcd(a-r,c) for r in S) for c in CAPS)
  if gate((0,2)):old.append(a)
  if gate((0,2,5)):h025.append(a)
 return old,h025

def classify_first():
 out=[]
 for a in range(1800):
  positions=[next((r for r in range(4) if (a-r)%c==0),None) for c in CAPS]
  hits=sorted({r for r in positions if r is not None})
  if len(hits)>1:continue
  C=1
  for p,c,r in zip(PS,CAPS,positions):
   for h in range(4):
    if h==r:continue
    C*=p**vp(abs(r-h),p) if r is not None else math.gcd(a-h,c)
  exponent=1 if hits else 7
  req(C <= (120 if hits else 360),'cost bound')
  natural=nthroot_ceiling_ratio(3*C**6,2**19,exponent)
  B=max(32,natural)
  n0=a if a>=14 else a+1800
  out.append(dict(residue=a,prime_positions=positions,distinct_positions=hits,
    C=C,height_exponent=exponent,natural_bound=natural,bound=B,
    first_n=n0,candidate_count=len(range(n0,B,1800))))
 req(len(out)==1380,'1380 gate classes')
 req(sum(not r['distinct_positions'] for r in out)==420,'420 inactive classes')
 req(max(r['bound'] for r in out)==17085938,'uniform height')
 req(3*120**6 < 2**44,'height below 2^25')
 req(3*360**6 < 2**19*32**7,'constant case height')
 return out

def classify_second():
 # Independent Cartesian residue generation, full CRT, capped product calculation.
 out={}
 for a2,a3,a5 in product(range(8),range(9),range(25)):
  a23,m=crt_alt(a2,8,a3,9);a,_=crt_alt(a23,m,a5,25)
  residues=(a2,a3,a5)
  spots=[v if 0<=v<=3 else None for v in residues]
  hits={v for v in spots if v is not None}
  if len(hits)>1:continue
  C=1
  for c,b,r in zip(CAPS,residues,spots):
   factor=math.prod(math.gcd(b-h,c) for h in range(4))
   if r is not None:
    req(factor%c==0,'capped product');factor//=c
   C*=factor
  num=3*C**6;e=1 if hits else 7
  if e==1:natural=(num+2**19-1)//2**19
  else:
   natural=1
   while 2**19*natural**7<num:natural+=1
  out[a]=(C,e,max(32,natural))
 return out

def qig_values(n):
 T=math.prod(smallpart(n-r) for r in range(4))
 left=T**6*(3*n*n-12*n+8)
 right=2**20*(n-1)**6*(n-3)**3
 return T,left,right

def row_line(n,T,L,R):return f'{n},{T},{L},{R}\n'.encode('ascii')
def scan_first(classes):
 summaries=[];terminals=[];total=0;strict=0
 for rec in classes:
  a=rec['residue'];h=hashlib.sha256();local=[];exact_count=0
  for n in range(rec['first_n'],rec['bound'],1800):
   T,L,R=qig_values(n)
   P=math.prod(p**vp(n-r,p) for p,r in zip(PS,rec['prime_positions']) if r is not None)
   req(T==rec['C']*P,'actual T4 cost identity')
   req(P<=n,'coalesced product divides one original value')
   h.update(row_line(n,T,L,R));total+=1;exact_count+=1
   if L<R:strict+=1
   else:local.append(n);terminals.append(n)
  req(exact_count==rec['candidate_count'],'all progression rows')
  summaries.append(dict(residue=a,count=exact_count,strict_qig=exact_count-len(local),
      terminals=local,integer_stream_sha256=h.hexdigest()))
 return dict(total_rows=total,strict_qig=strict,terminal_rows=sorted(terminals),per_class=summaries)

def scan_second(spec):
 # Reverse residue/row order; valuation sums rather than stripping each window.
 summaries={};left=[];total=0
 for a,(C,e,B) in sorted(spec.items(),reverse=True):
  n=a+((B-1-a)//1800)*1800
  rows=[];local=[]
  while n>=14:
   T=1
   for p in (5,3,2):
    E=0
    for shift in (3,2,1,0):
     z=n-shift
     while z%p==0:E+=1;z//=p
    T*=p**E
   # Independent evaluation order, still the exact same integer inequality.
   lhs=(T*T*T)**2*((3*n-12)*n+8)
   rhs=(1024*(n-1)**3)**2*(n-3)**3
   rows.append((n,T,lhs,rhs));total+=1
   if not rhs>lhs:local.append(n);left.append(n)
   n-=1800
  h=hashlib.sha256()
  for vals in reversed(rows):h.update(row_line(*vals))
  summaries[a]=dict(residue=a,count=len(rows),strict_qig=len(rows)-len(local),
    terminals=sorted(local),integer_stream_sha256=h.hexdigest())
 return dict(total_rows=total,strict_qig=total-len(left),terminal_rows=sorted(left),
     per_class=[summaries[a] for a in sorted(summaries)])

def prime_trial(p):
 if p<2:return False
 if p%2==0:return p==2
 for d in range(3,math.isqrt(p)+1,2):
  if p%d==0:return False
 return True

def vbinom(n,k,p):
 q=p;v=0
 while q<=n:v+=n//q-k//q-(n-k)//q;q*=p
 return v

def check_terminal(entry):
 n=entry['n'];sources=entry['sources'];mods=[];used=set()
 req(len(sources) in (1,2),'one or two source terminal')
 for s in sources:
  p,e,r=s['p'],s['e'],s['r']
  req(prime_trial(p),'terminal primality')
  req(p>=7 and 0<=r<=5 and p not in used,'native source')
  req(vp(n-r,p)==e,'complete source exponent')
  req(vbinom(n,6,p)>0,'source binomial divisor')
  used.add(p);mods.append((p**e,r))
 states=[(0,1)]
 for q,r in mods:
  states=[crt2(a,M,b,q) for a,M in states for b in range(r+1)]
 req(entry['modulus']==states[0][1],'terminal modulus')
 req((2*entry['modulus']>n if len(sources)==1 else entry['modulus']>n), 'terminal source modulus size')
 req(entry['representatives']==[a for a,M in states],'terminal CRT records')
 for a,M in states:
  first=a+((7-a+M-1)//M)*M
  req(first>n//2,'terminal interval empty')
 # Independent opposite CRT construction, preserving all source exponents.
 other=[(0,1)]
 for q,r in reversed(mods):
  nxt=[]
  for a,M in other:
   for b in range(r,-1,-1):
    if M==1:z=b;D=q
    else:z,D=crt_alt(a,M,b,q)
    nxt.append((z,D))
  other=nxt
 req(sorted(states)==sorted(other),'opposite CRT terminal check')
 return dict(n=n,source_count=len(sources),representatives=len(states),
    modulus=entry['modulus'],status='CLOSED')

def mutations(classes,terms):
 import copy
 tests={}
 def rejects(label,entry):
  try:check_terminal(entry)
  except ValueError:tests[label]=True
  else:raise ValueError('mutation unexpectedly accepted: '+label)
 bad=copy.deepcopy(next(t for t in terms if t['n']==125));bad['sources'][0]['e']=1
 rejects('drop_complete_11_squared_layer',bad)
 bad=copy.deepcopy(terms[0]);bad['sources'][0]['p']=15
 rejects('composite_terminal_base',bad)
 bad=copy.deepcopy(terms[-1]);bad['representatives'][0]=7
 rejects('false_terminal_representative',bad)
 bad=copy.deepcopy(terms[0]);bad['sources'][0]['r']=3
 rejects('wrong_source_position',bad)
 good={r['residue'] for r in classes}
 req(1280 not in good and 1530 not in good,'separated high powers excluded')
 tests['cannot_absorb_six_separated_patterns']=not bool(good&SIX)
 req(all(tests.values()),'mutation flags');return tests

def source_bytes():
 return {p.relative_to(ROOT).as_posix():sha(p) for p in sorted((ROOT/'sources').iterdir()) if p.is_file()}

def run():
 algebra=check_qig_identities()
 classes=classify_first();ind=classify_second()
 req({r['residue']:(r['C'],r['height_exponent'],r['bound']) for r in classes}==ind,
     'independent 1800-class/cost/height classification')
 old,h025=all_masks();G={r['residue'] for r in classes}
 req(len(old)==108 and len(h025)==200,'frozen/global masks')
 req(set(SIX).isdisjoint(old),'six distinct from frozen mask')
 baseline=set(old)|SIX
 req(set(h025)<=G|baseline,'full H025 corollary mask')
 h025_new=sorted(set(h025)-baseline)
 req(len(h025_new)==86 and set(h025_new)<=G,'new H025 complement')
 one=scan_first(classes);two=scan_second(ind)
 req(one==two,'two exact finite scan paths')
 terms=load(ROOT/'outputs'/'terminals.json')
 req([t['n'] for t in terms]==one['terminal_rows'],'entire terminal set')
 tr=[check_terminal(t)for t in terms]
 test=mutations(classes,terms)
 subgroup=[r for r in one['per_class'] if r['residue'] in set(h025_new)]
 subterms=sorted(n for r in subgroup for n in r['terminals'])
 req(subterms==[32,45,125,245,405],'H025 five terminals')
 req(one['total_rows']==1332615 and one['strict_qig']==1332552,'complete row totals')
 req(len(tr)==63,'terminal count')
 union=sorted(G|baseline)
 frontier=dict(native_i6_closed_gate_residues=sorted(G),frozen_H02_residues=old,
    frozen_six_permutation_residues=sorted(SIX),H025_residues=h025,
    newly_closed_H025_complement=h025_new,
    new_relative_to_explicit_114_baseline=sorted(G-baseline),
    adopted_union_residues=union,
    remaining_residue_upper_envelope=sorted(set(range(1800))-set(union)),
    global_full_index_closed=False,remaining_indices=[3,4,5,6,7,8,9])
 summary=dict(status='PASS_C19_QIG_COALESCED_1380_CLASSES_CLOSED',
    new_theorem_classes=len(G),baseline_classes=len(baseline),
    new_relative_to_explicit_baseline=len(G-baseline),adopted_union_classes=len(union),
    full_H025_classes=len(h025),H025_new_complement_classes=len(h025_new),
    H025_new_complement_candidate_rows=sum(r['count']for r in subgroup),
    H025_new_complement_terminals=subterms,
    no_active_class_count=sum(not r['distinct_positions']for r in classes),
    one_distinct_active_position_classes=sum(bool(r['distinct_positions'])for r in classes),
    exact_candidate_rows=one['total_rows'],strict_qig_rows=one['strict_qig'],
    source_terminal_rows=len(tr),single_source_terminals=sum(t['source_count']==1 for t in tr),
    two_source_terminals=sum(t['source_count']==2 for t in tr),
    terminal_CRT_representatives=sum(t['representatives']for t in tr),
    max_terminal_prime=max(s['p']for t in terms for s in t['sources']),
    remaining_terminals=0,max_n_exclusive_bound=max(r['bound']for r in classes),
    full_original_integer_streams_equal=True,
    evidence_level='author proof + exact polynomial/finite computation; full H025 corollary adopts frozen author-level results',
    new_1380_theorem_external_infinite_inputs=[],Lean_run=False,repository_actions='none')
 return dict(summary=summary,algebra=algebra,classification=classes,scans=one,
    terminals=tr,frontier=frontier,mutation_rejections=test,source_hashes=source_bytes())

def verify_hashes():
 p=ROOT/'SHA256SUMS'
 if not p.exists():return None
 count=0
 for line in p.read_text().splitlines():
  digest,name=line.split('  ',1)
  req(sha(ROOT/name)==digest,'hash mismatch: '+name);count+=1
 return count

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--write',action='store_true');args=ap.parse_args()
 start=time.perf_counter();res=run()
 out=ROOT/'outputs'
 parts={'certificate.json':res,'classification.json':res['classification'],
   'scan_receipts.json':res['scans'],'FRONTIER.json':res['frontier']}
 if args.write:
  for name,obj in parts.items():dump(out/name,obj)
 else:
  for name,obj in parts.items():req(load(out/name)==obj,'saved/rebuilt certificate mismatch: '+name)
 hash_count=None if args.write else verify_hashes()
 print(json.dumps(dict(**res['summary'],seconds=round(time.perf_counter()-start,3),
     verified_hash_members=hash_count),ensure_ascii=False,indent=2,sort_keys=True))
if __name__=='__main__':main()
