#!/usr/bin/env python3
"""C21 exact certificate. Standard library only; no Lean or repository operations.
BFT Theorem 2.1 is an external published input, not proved by this program.
The finite source/primality certificates are verified rather than trusted.
"""
from __future__ import annotations
from pathlib import Path
from fractions import Fraction as F
from math import comb,prod,gcd
from itertools import product
from collections import Counter,defaultdict
import argparse,hashlib,json,sys,time
from exact_algebra import ONE,XX,YY,mul,sub,power,shift,order,check_qig_identities
ROOT=Path(__file__).resolve().parents[1]
if hasattr(sys,'set_int_max_str_digits'):sys.set_int_max_str_digits(0)
CAPS={2:8,3:9,5:25}
W={1:8,2:3,3:4,4:3,5:1}
LAM={(2,3):F(57,200),(2,5):F(129,500),(3,5):F(27,125)}
STATUS='PASS_C21_72_SEPARATED_TWO_PRIME_CLASSES_CLOSED'

def req(c,m):
 if not c:raise ValueError(m)
def load(p):return json.loads(p.read_text(encoding='utf-8'))
def dump(p,x):p.write_text(json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n',encoding='utf-8')
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def valuation(n,p):
 req(n>0,'valuation input positive');e=0
 while n%p==0:n//=p;e+=1
 return e

def smallpart(n):
 ans=1
 for p in CAPS:
  while n%p==0:ans*=p;n//=p
 return ans

def activity(a):
 return {p:next((r for r in range(6) if (a-r)%cap==0),None) for p,cap in CAPS.items()}

def frontier_baseline():
 G={a for a in range(1800) if len({r for r in range(4) if any((a-r)%c==0 for c in CAPS.values())})<=1}
 H={a for a in range(1800) if a%8 in {0,2,6} and a%9 in {0,2,6,8} and a%25 in {0,2,7,10,12,15,17,20,22}}
 six={50,477,752,1280,1325,1530}
 old=G|H|six
 inactive0={a for a in range(1800) if a not in old and all(a%c!=0 for c in CAPS.values())}
 closed=old|inactive0
 remain=sorted(set(range(1800))-closed)
 src=load(ROOT/'sources/C20_FRONTIER.json')
 req(len(G)==1380 and len(H)==108 and len(old)==1412,'baseline group cardinalities')
 req(len(inactive0)==204 and len(remain)==184,'C20 baseline counts')
 req(remain==src['remaining_residue_upper_envelope'],'C20 remaining list reconstructed exactly')
 req(sorted(closed)==src['adopted_union'],'C20 closed list reconstructed')
 return closed,remain

def fixed_parts(a,pa):
 parts=[1]*6
 for p in CAPS:
  r=pa[p]
  for h in range(6):
   if r==h:continue
   v=abs(r-h) if r is not None else a+1800-h
   parts[h]*=p**valuation(v,p)
 return parts

def fixed_parts_second(a,pa):
 z=a+3600;parts=[]
 for h in range(6):
  m=smallpart(z-h)
  for p in CAPS:
   if pa[p]==h:m//=p**valuation(z-h,p)
  parts.append(m)
 return parts

def least_dyadic(C,D,theta,delta):
 req(theta>delta,'positive height exponent required')
 num,den=theta.numerator,theta.denominator
 rhs=(C*D)**den*2**num
 gap=num-delta*den
 K=0
 while not rhs<2**(K*gap):K+=1
 req(K==0 or not rhs<2**((K-1)*gap),'least dyadic arithmetic bound')
 return max(10,K)

def classify():
 closed,remain=frontier_baseline();positive=[];failed=[];outside=[]
 for a in remain:
  pa=activity(a);act=[p for p in CAPS if pa[p] is not None]
  at0=[p for p in act if pa[p]==0]
  if len(act)!=2 or len(at0)!=1:outside.append(a);continue
  p=at0[0];q=next(t for t in act if t!=p);r=pa[q]
  if r not in (2,3):outside.append(a);continue
  s=fixed_parts(a,pa);req(s==fixed_parts_second(a,pa),'independent fixed costs')
  w=W[r];delta=w-3;l=LAM[tuple(sorted((p,q)))];theta=min(4,w)*l
  C=F(17,64)*prod(s[h]**wh for h,wh in W.items() if h!=r)
  D=max(s[0]**4,s[r]**w)
  cost=prod(s[:4]);low=max(32,(3*cost**6+(1<<19)-1)//(1<<19))
  rec={'residue':a,'p':p,'q':q,'r':r,'activities':{str(k):v for k,v in pa.items()},
       'fixed_parts':s,'w':w,'delta':delta,'lambda':str(l),'theta':str(theta),
       'C':str(C),'D':D,'T4_cost':cost,'PQ_threshold':low}
  if theta>delta:
   rec['K']=least_dyadic(C,D,theta,delta);positive.append(rec)
  else:
   rec['failure']='theta<=delta: this K16/BFT inequality gives no absolute height'
   failed.append(rec)
 req(len(positive)==72 and len(failed)==4 and len(outside)==108,'diagnostic coverage of all 184')
 req([r['residue'] for r in failed]==[750,975,1278,1503],'four precise failed classes')
 newset={r['residue'] for r in positive};remaining=sorted(set(remain)-newset)
 req(len(remaining)==112 and not newset&closed,'new set disjoint from adopted closed domain')
 groups=defaultdict(list)
 for c in positive:groups[(c['p'],c['q'],c['r'])].append(c)
 group_meta=[]
 for (p,q,r),cs in sorted(groups.items()):
  group_meta.append({'id':f'p{p}_q{q}_r{r}','p':p,'q':q,'r':r,'K_max':max(c['K'] for c in cs),'residues':[c['residue'] for c in cs]})
 result={'input_remaining':remain,'positive':positive,'failed':failed,'outside_this_diagnostic':outside,
         'groups':group_meta,'newly_closed':sorted(newset),'remaining':remaining}
 return result

def expand_symmetric(terms):
 out={}
 for a,b,c in terms:
  for k in range(a+1):
   key=(k+b,a-k+b);out[key]=out.get(key,0)+c*comb(a,k)
 return {k:v for k,v in out.items() if v}

def norm_check(terms):
 groups={}
 for a,b,c in terms:groups.setdefault(a+2*b,{})[b]=c
 lead=groups[8];gap={b:-c for b,c in lead.items()};gap[0]=gap.get(0,0)+34
 d=max(lead);t=[F(0)]*(d+1)
 for b,c in gap.items():
  for j in range(d-b+1):t[b+j]+=F(c,4**b)*comb(d-b,j)
 req(all(c>=0 for c in t),'H16 leading interval bound')
 req(sum(F(c,4**b) for b,c in gap.items())>=0,'H16 endpoint t=1/4')
 bounds={deg:F(co.get(0,0))+sum(F(c,4**b) for b,c in co.items() if b>0 and c>0) for deg,co in groups.items() if deg<8}
 neg=bounds[7];pos=sum(max(F(0),v)/1006**(7-deg) for deg,v in bounds.items() if deg<7)
 req(neg<0 and pos<-neg,'uniform lower-degree absorption n>=1006')
 return {'n_min':1006,'upper':'H16<34*n^8','Mobius_nonnegative_coefficients':[str(c) for c in t],
         'next_degree_bound':str(neg),'positive_tail_at_entry':str(pos),
         'lower_degree_bounds':{str(k):str(v) for k,v in bounds.items()}}

def check_math():
 k=load(ROOT/'sources/kernel16.json');H={(i,j):c for i,j,c in k['H8_terms']}
 J=mul(XX,YY);A=mul(sub(XX,ONE),sub(YY,ONE));poly=mul(mul(power(J,2),power(A,2)),H)
 expected=[[4],[8,8],[3,4,3],[4,4,4,4],[3,3,3,3,3],[2,2,1,1,2,2]]
 actual=[[order(poly,b,r-b) for b in range(r+1)] for r in range(6)]
 req(actual==expected and max(sum(m) for m in poly)==16,'K16 all integer Taylor orders and degree')
 hs=shift(H,7,7);req(len(hs)==45 and min(hs.values())==34 and all(c>0 for c in hs.values()),'strict positivity')
 syms=load(ROOT/'sources/symmetric_polynomials.json')['H16']
 req(expand_symmetric(syms)==H,'H16 symmetric expansion identity')
 norms=norm_check(syms)
 req(F(2*34,256)==F(17,64),'single-kernel normalized constant')
 req(1-F(37,1006)>F(1,2) and 1-F(31,1006)>F(1,2),'two Bernoulli factors')
 ex=load(ROOT/'sources/bft_exception_pairs.json')
 req(len(ex)==40 and max(max(a,b) for a,b in ex)==1771561,'fixed BFT exception table')
 req(all(abs(a-b) not in (2,3) for a,b in ex),'no BFT exceptions for gaps2/3')
 cls=classify()
 for c in cls['positive']:
  s=c['fixed_parts'];w=c['w'];r=c['r']
  req(sum(W.values())==19 and 16-(19-w)==c['delta'],'source/degree arithmetic')
  req(c['PQ_threshold']*(1<<19)>=3*c['T4_cost']**6,'PQ threshold integer bound')
  # Finite regression is redundant; the arbitrary-index argument is in PROOFS.
  for lift in (1,2,11):
   n=c['residue']+1800*lift;P=c['p']**valuation(n,c['p']);Q=c['q']**valuation(n-r,c['q'])
   parts=[smallpart(n-h) for h in range(6)];want=s.copy();want[0]*=P;want[r]*=Q
   req(parts==want,'exact fixed-smallpart regression')
   req(prod(parts[:4])==c['T4_cost']*P*Q,'exact T4 regression')
 ans={'status':'PASS_C21_EXACT_MATH','K16_Taylor_orders':actual,'positive_shift_count':45,'norm':norms,
      'QIG_identities':check_qig_identities(),'BFT_gaps_2_3_exceptions':[],
      'external_BFT_reproved':False,'Lean':False,'positive_classes':72,'failed_diagnostic_classes':4,
      'max_height_K':max(c['K'] for c in cls['positive'])}
 dump(ROOT/'outputs/classification.json',cls);dump(ROOT/'outputs/math_certificate.json',ans)
 return ans

def powers(p,K):
 out=[];v=1;e=0
 while v<(1<<K):
  if v>=CAPS[p]:out.append((e,v))
  e+=1;v*=p
 return out

def qig(n,T):
 left=T**6*(3*n*n-12*n+8);right=(1<<20)*(n-1)**6*(n-3)**3
 return left<right,left,right

def row_digest(records):
 h=hashlib.sha256()
 for u,v,a,n,T,L,R in records:
  h.update(f'{u},{v},{a}|{n}|{T}|{L}|{R}\n'.encode())
 return h.hexdigest()

def first_recovery(cls):
 cfg={c['residue']:c for c in cls['positive']};results=[];all_terms=[]
 for g in cls['groups']:
  p,q,r,K=g['p'],g['q'],g['r'],g['K_max'];cd={a:cfg[a] for a in g['residues']}
  ps=powers(p,K);qs=powers(q,K);records=[];indices=[];terms=[];pairs=0
  for v,Q in qs:
   t=(r*pow(ps[0][1],-1,Q))%Q;qi=pow(Q,-1,p)
   for u,P in ps:
    pairs+=1;n=P*t;c=cd.get(n%1800)
    if c is not None and c['PQ_threshold']<=n<(1<<c['K']) and t%p:
     if ((n-r)//Q)%q:
      req(n<P*Q and n%P==0 and (n-r)%Q==0,'first exact complete-power recovery')
      T=c['T4_cost']*P*Q;ok,L,R=qig(n,T)
      records.append((u,v,c['residue'],n,T,L,R));indices.append([u,v,c['residue'],int(ok)])
      if not ok:terms.append(n)
    t=(t+((-t*qi)%p)*Q)//p
  indices.sort();records.sort();low=[]
  for a,c in sorted(cd.items()):
   n=a
   while n<14:n+=1800
   for n in range(n,c['PQ_threshold'],1800):
    T=prod(smallpart(n-h) for h in range(4));ok,L,R=qig(n,T)
    low.append({'n':n,'residue':a,'T4':T,'L':L,'R':R,'QIG_excludes':ok})
    if not ok:terms.append(n)
  low.sort(key=lambda c:c['n'])
  stat={**g,'all_exponent_pairs':pairs,'p_exponents':[ps[0][0],ps[-1][0]],'q_exponents':[qs[0][0],qs[-1][0]],
        'high_rows':len(indices),'low_rows':len(low),'terminal_count':len(terms),'QIG_terminals':sorted(terms),
        'complete_integer_stream_sha256':row_digest(records)}
  dump(ROOT/f"outputs/rows_{g['id']}.json",{'representation':'Each [u,v,a,ok] recovers n=P*(r/P mod Q). ok is exact QIG; full integers are rebuilt by replay.',
      'stats':stat,'high_row_indices':indices,'low_rows':low})
  results.append(stat);all_terms+=terms
 req(sum(x['all_exponent_pairs'] for x in results)==669919,'first complete exponent-pair count')
 req(sum(x['high_rows'] for x in results)==27023 and sum(x['low_rows'] for x in results)==89,'first original row counts')
 req(len(all_terms)==90 and len(set(all_terms))==90,'first exactly90 terminal rows')
 out={'groups':results,'high_rows':27023,'low_rows':89,'unique_rows':27112,'QIG_excluded':27022,
      'QIG_terminals':sorted(all_terms),'all_exponent_pairs':669919,'status':'PASS_C21_FIRST_RECOVERY'}
 dump(ROOT/'outputs/first_recovery.json',out);return out

def inverse_euclid(a,m):
 old_r,r,old_x,x=a,m,1,0
 while r:
  z=old_r//r;old_r,r=r,old_r-z*r;old_x,x=x,old_x-z*x
 req(old_r==1,'second inverse coprime');return old_x%m

def second_recovery(cls):
 cfg={c['residue']:c for c in cls['positive']};results=[];terms_all=[]
 for g in reversed(cls['groups']):
  p,q,r,K=g['p'],g['q'],g['r'],g['K_max']
  cd={(a%8,a%9,a%25):cfg[a] for a in g['residues']}
  ps=[];qs=[]
  for base,target in ((p,ps),(q,qs)):
   e=0;value=1
   while value<(1<<K):
    if value>=CAPS[base]:target.append((e,value))
    e+=1;value*=base
  records=[];indices=[];terms=[];pairs=0
  for u,P in reversed(ps):
   z=(-r*inverse_euclid(qs[-1][1],P))%P
   for v,Q in reversed(qs):
    pairs+=1;n=r+Q*z;c=cd.get((n%8,n%9,n%25))
    if c is not None and c['PQ_threshold']<=n<(1<<c['K']):
     # Full valuations checked by a different arithmetic route.
     if valuation(n,p)==u and valuation(n-r,q)==v:
      req(n<P*Q,'second unique original representative')
      T=1
      for prime in (5,3,2):
       E=0
       for h in range(4):
        value=n-h
        while value%prime==0:E+=1;value//=prime
       T*=prime**E
      L=T**6*(3*(n-2)**2-4);R=((n-1)**2)**3*(n-3)**3*(1<<20);ok=R-L>0
      records.append((u,v,c['residue'],n,T,L,R));indices.append([u,v,c['residue'],int(ok)])
      if not ok:terms.append(n)
    z=q*z%P
  records.sort();indices.sort();low=[]
  for c in sorted(cd.values(),key=lambda x:x['residue'],reverse=True):
   a=c['residue'];last=c['PQ_threshold']-1
   for n in range(last-((last-a)%1800),13,-1800):
    T=1
    for h in range(4):
     value=n-h
     while True:
      d=gcd(value,30)
      if d==1:break
      T*=d;value//=d
    L=T**6*(3*(n-2)**2-4);R=(1<<20)*(n-1)**6*(n-3)**3;ok=L<R
    low.append({'n':n,'residue':a,'T4':T,'L':L,'R':R,'QIG_excludes':ok})
    if not ok:terms.append(n)
  low.sort(key=lambda x:x['n'])
  first=load(ROOT/f"outputs/rows_{g['id']}.json")
  req(indices==first['high_row_indices'],'independent complete high-row set')
  req(low==first['low_rows'],'independent low-row exact integers')
  digest=row_digest(records);req(digest==first['stats']['complete_integer_stream_sha256'],'independent full-integer stream equality')
  req(sorted(terms)==first['stats']['QIG_terminals'],'independent terminal set equality')
  results.append({'id':g['id'],'pairs':pairs,'high_rows':len(indices),'low_rows':len(low),
                  'full_integer_stream_sha256':digest,'QIG_terminals':sorted(terms)})
  terms_all+=terms
 req(sum(x['pairs'] for x in results)==669919,'second full exponent count')
 firstall=load(ROOT/'outputs/first_recovery.json')
 req(sorted(terms_all)==firstall['QIG_terminals'],'second allterminal equality')
 out={'status':'PASS_C21_SECOND_RECOVERY','groups':results,'all_exponent_pairs':669919,'QIG_terminals':sorted(terms_all)}
 dump(ROOT/'outputs/second_recovery.json',out);return out

# Lucas full-order criterion: factor N-1 completely, certify each factor recursively.
# The proof in PROOFS.md shows every prime divisor of N is >=N; this is not a PRP test.
def verify_prime_nodes(nodes):
 known=set()
 for cert in sorted(nodes,key=lambda z:z['n']):
  n=cert['n'];req(n not in known,'unique primality node')
  if n==2:
   req(cert.get('base_case') is True,'prime2 base');known.add(n);continue
  req(n>2 and n%2==1,'positive odd prime candidate')
  fac=cert['factors'];qs=[q for q,e in fac]
  req(len(qs)==len(set(qs)) and all(q in known and e>=1 for q,e in fac),'recursive prime factor antecedents')
  req(prod(q**e for q,e in fac)==n-1,'complete N-1 factorization')
  a=cert['a'];req(1<a<n and pow(a,n-1,n)==1,'full-order Fermat identity')
  req(all(gcd(pow(a,(n-1)//q,n)-1,n)==1 for q in qs),'full-order gcd conditions')
  known.add(n)
 return known

def crt_merge(a,M,b,m):
 req(gcd(M,m)==1,'CRT independent prime bases')
 return (a+M*((b-a)*pow(M,-1,m)%m))%(M*m),M*m

def touches(a,M,n):
 first=a+((7-a+M-1)//M)*M
 return first<=n//2

def verify_terminal(t,known):
 n=t['n'];cs=t['sources'];req(len(cs)>0,'nonempty terminal witnesses')
 req(len({c['p'] for c in cs})==len(cs),'different source prime bases')
 for c in cs:
  p,e,r=c['p'],c['e'],c['r']
  req(p in known and p>=7 and 0<=r<=5,'prime-source admissibility')
  req(valuation(n-r,p)==e,'original complete source exponent retained')
 states=[(0,1)]
 for c in cs:
  new=[];m=c['p']**c['e']
  for a,M in states:
   for b in range(c['r']+1):new.append(crt_merge(a,M,b,m))
  states=new
 req(not any(touches(a,M,n) for a,M in states),'all legal j excluded by original prime layers')
 # Second CRT uses the full product and a direct CRT basis, no sequential merge.
 moduli=[c['p']**c['e'] for c in cs];M=prod(moduli);bases=[]
 for m in moduli:
  N=M//m;bases.append(N*inverse_euclid(N,m))
 second=sorted({sum(b*x for b,x in zip(bs,bases))%M for bs in product(*(range(c['r']+1) for c in cs))})
 req(second==sorted({a for a,M0 in states}),'direct versus sequential terminal CRT')
 req(all(M0==M for a,M0 in states),'terminal total modulus')
 return {'n':n,'sources':cs,'modulus':M,'all_CRT_representatives':second,'representatives_tested':len(states),
         'legal_j_candidates':0}

def terminals():
 pdata=load(ROOT/'sources/primality_certificates.json');known=verify_prime_nodes(pdata['nodes'])
 terms=load(ROOT/'sources/terminal_sources.json');expected=load(ROOT/'outputs/first_recovery.json')['QIG_terminals']
 req([t['n'] for t in terms]==expected,'all and only residual rows supplied with witnesses')
 records=[verify_terminal(t,known) for t in terms]
 sizes=Counter(len(t['sources']) for t in terms)
 req(len(records)==90 and sizes=={1:39,2:51},'terminal row counts')
 req(sum(t['representatives_tested'] for t in records)==1059,'full unpruned terminal CRT count')
 req(len(known)==312,'recursive Lucas certificate nodes')
 # Negative controls check genuine obligations, rather than checking a prefilled PASS.
 tests=[]
 def reject(label,fn):
  try:fn()
  except (ValueError,AssertionError,KeyError,ZeroDivisionError):tests.append(label);return
  raise ValueError('mutation was not rejected: '+label)
 from copy import deepcopy
 bad=deepcopy(pdata['nodes']);b=next(x for x in bad if x['n']>3);b['a']=1
 reject('corrupted full-order base',lambda:verify_prime_nodes(bad))
 bad=deepcopy(pdata['nodes']);b=next(x for x in bad if x['n']>3);b['factors'][0][1]+=1
 reject('corrupted N-1 exponent',lambda:verify_prime_nodes(bad))
 bad=deepcopy(next(t for t in terms if t['n']==250));next(c for c in bad['sources'] if c['p']==7)['e']=1
 reject('replace original 7^2 by radical7',lambda:verify_terminal(bad,known))
 bad=deepcopy(next(t for t in terms if len(t['sources'])==2));bad['sources']=bad['sources'][:1]
 reject('drop an essential terminal source',lambda:verify_terminal(bad,known))
 bad=deepcopy(terms[0]);bad['sources'][0]['r']=(bad['sources'][0]['r']+1)%6
 reject('change original source position',lambda:verify_terminal(bad,known))
 out={'status':'PASS_C21_90_ORIGINAL_TERMINALS_CLOSED','records':records,'single_source_rows':39,'two_source_rows':51,
      'full_CRT_representatives':1059,'certified_prime_nodes':312,
      'selected_distinct_prime_bases':len({c['p'] for t in terms for c in t['sources']}),
      'max_selected_prime':max(c['p'] for t in terms for c in t['sources']),
      'method':'recursive full-order Lucas certificates, entirely exact verification',
      'probabilistic_primality_in_replay':False,'negative_controls_rejected':tests,'residual_rows':0}
 dump(ROOT/'outputs/terminals.json',out);return {k:v for k,v in out.items() if k!='records'}

def finalize(cls):
 first=load(ROOT/'outputs/first_recovery.json');second=load(ROOT/'outputs/second_recovery.json');ts=load(ROOT/'outputs/terminals.json')
 req(first['QIG_terminals']==second['QIG_terminals']==[r['n'] for r in ts['records']],'complete connection of both finite recoveries to original terminals')
 closed,oldremain=frontier_baseline();newset=set(cls['newly_closed']);union=closed|newset
 groups=defaultdict(list)
 for a in cls['remaining']:
  positions=sorted({r for r in range(4) if any((a-r)%c==0 for c in CAPS.values())})
  groups[','.join(map(str,positions))].append(a)
 req(len(union)==1688 and len(cls['remaining'])==112,'new total finite residue ledger')
 frontier={'old_remaining':oldremain,'newly_closed':sorted(newset),'adopted_union':sorted(union),
           'remaining_residue_upper_envelope':cls['remaining'],'remaining_activity_groups':dict(groups),
           'remaining_not_counterexamples':True,'remaining_not_uniformly_finite':True,'remaining_indices':[3,4,5,6,7,8,9],
           'new_main_theorem_relies_on_old_closed_sets':False,
           'total_union_uses_prior_author_level_closures':True}
 dump(ROOT/'outputs/FRONTIER.json',frontier)
 out={'status':STATUS,'new_classes':72,'old_remaining':184,'remaining_classes':112,'adopted_closed_classes':1688,
      'complete_exponent_pairs_per_implementation':669919,'high_original_rows':27023,'low_original_rows':89,
      'all_original_rows':27112,'strict_QIG_excluded':27022,'original_terminal_rows_closed':90,'finite_terminals_remaining':0,
      'height_max_dyadic_exponent':872,'primality_certificate_nodes':312,'terminal_full_CRT_representatives':1059,
      'external_infinite_input':'Bennett-Filaseta-Trifonov Theorem 2.1',
      'evidence':'author paper + exact algebra and finite certificates + published BFT; no Lean or external independent review',
      'repository_actions':'none','Lean_run':False,'new_complete_index':False,'NC_preserving_descent':False}
 dump(ROOT/'outputs/certificate.json',out);return out

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--phase',choices=['all','math','first','second','terminal','finalize'],default='all');args=ap.parse_args()
 start=time.monotonic();phase=args.phase
 if phase in ('all','math'):out=check_math()
 cls=classify()
 if phase in ('all','first'):out=first_recovery(cls)
 if phase in ('all','second'):out=second_recovery(cls)
 if phase in ('all','terminal'):out=terminals()
 if phase in ('all','finalize'):out=finalize(cls)
 if phase in ('first','second'):out={k:v for k,v in out.items() if k not in ('groups','QIG_terminals')}
 print(json.dumps(out,ensure_ascii=False,indent=2,sort_keys=True))
 print('phase_seconds='+format(time.monotonic()-start,'.3f'))
if __name__=='__main__':main()
