#!/usr/bin/env python3
"""C22 exact certificate. Standard library only; no Lean or repository operations.
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
W={1:4,2:4,3:3,4:2,5:2}
LAM={(2,3):F(57,200),(2,5):F(129,500),(3,5):F(27,125)}
STATUS='PASS_C22_K12_48_NEW_CLASSES_CLOSED'

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

def baseline():
 # Source-used identities reconstructed from residue definitions, no old closed domain is re-searched.
 G={a for a in range(1800) if len({h for h in range(4) if any((a-h)%c==0 for c in CAPS.values())})<=1}
 H={a for a in range(1800) if a%8 in {0,2,6} and a%9 in {0,2,6,8} and a%25 in {0,2,7,10,12,15,17,20,22}}
 six={50,477,752,1280,1325,1530};closed=G|H|six
 closed|={a for a in range(1800) if all(a%c!=0 for c in CAPS.values())}
 c21=set()
 for a in set(range(1800))-closed:
  ac=activity(a);act=[p for p in CAPS if ac[p] is not None];orig=[p for p in act if ac[p]==0]
  if len(act)==2 and len(orig)==1:
   p=orig[0];q=next(b for b in act if b!=p);r=ac[q]
   if r==2 or (r==3 and 2 in (p,q)):c21.add(a)
 req(len(closed)==1616 and len(c21)==72,'C20/C21 finite definition ledger')
 closed|=c21;remain=sorted(set(range(1800))-closed)
 src=load(ROOT/'sources/C21_FRONTIER.json')
 req(remain==src['remaining_residue_upper_envelope'] and len(remain)==112,'exact input112 list')
 req(sorted(closed)==src['adopted_union'],'exact input1688 closed list')
 return closed,remain

def classify():
 closed,remain=baseline();positive=[];failed=[];outside=[]
 for a in remain:
  ac=activity(a);act=[p for p in CAPS if ac[p] is not None];orig=[p for p in act if ac[p]==0]
  if len(act)!=2 or len(orig)!=1:outside.append(a);continue
  p=orig[0];q=next(b for b in act if b!=p);r=ac[q]
  if r not in (1,3):outside.append(a);continue
  s=fixed_parts(a,ac);req(s==fixed_parts_second(a,ac),'two fixed-smallpart derivations')
  w=W[r];delta=12-(sum(W.values())-w);lam=LAM[tuple(sorted((p,q)))];theta=min(4,w)*lam
  C=F(1,512)*prod(s[h]**wh for h,wh in W.items() if h!=r)
  D=max(s[0]**4,s[r]**w);kappa=prod(s[:4]);N=max(32,(3*kappa**6+(1<<19)-1)//(1<<19))
  rec={'residue':a,'p':p,'q':q,'r':r,'activities':{str(k):v for k,v in ac.items()},'fixed_parts':s,
       'w':w,'delta':delta,'lambda':str(lam),'theta':str(theta),'C':str(C),'D':D,'T4_cost':kappa,'PQ_threshold':N}
  if theta>delta:rec['K']=least_dyadic(C,D,theta,delta);positive.append(rec)
  else:rec['failure']='theta<=delta; this K12/BFT bound gives no absolute height';failed.append(rec)
 req(len(positive)==48 and len(failed)==4 and len(outside)==60,'complete diagnostic partition of112')
 req([x['residue'] for x in failed]==[126,351,550,775],'four exact K12/BFT failures')
 groups=defaultdict(list)
 for c in positive:groups[(c['p'],c['q'],c['r'])].append(c)
 meta=[{'id':f'p{p}_q{q}_r{r}','p':p,'q':q,'r':r,'K_max':max(c['K'] for c in cs),'residues':[c['residue'] for c in cs]} for (p,q,r),cs in sorted(groups.items())]
 new={c['residue'] for c in positive};req(not new&closed,'no repeated closed class')
 return {'input_remaining':remain,'positive':positive,'failed':failed,'outside_this_diagnostic':outside,'groups':meta,
         'newly_closed':sorted(new),'remaining':sorted(set(remain)-new)}

def check_math():
 n={ (1,0):1,(0,1):1 };J=mul(XX,YY)
 A=mul(sub(XX,ONE),sub(YY,ONE));B=mul(sub(XX,{(0,0):2}),sub(YY,{(0,0):2}))
 H=sub(mul(sub(n,{(0,0):2}),sub(n,{(0,0):3})),J)
 K=mul(mul(power(J,2),power(A,2)),mul(B,H))
 exp=[[4],[4,4],[4,4,4],[3,3,3,3],[2,2,2,2,2],[2,2,2,2,2,2]]
 actual=[[order(K,b,r-b) for b in range(r+1)] for r in range(6)]
 req(actual==exp and max(sum(m) for m in K)==12,'K12 exact degree and all source orders')
 hs=shift(H,7,7)
 req(hs=={(2,0):F(1),(1,1):F(1),(0,2):F(1),(1,0):F(16),(0,1):F(16),(0,0):F(83)},'H shifted positive identity')
 req(all(v>0 for v in hs.values()),'all H shifted coefficients positive')
 # NORM proof: 0<B<A<J<=n^2/4 and H=n^2-5n+6-J<n^2 for n>=14.
 req(F(1,4**5)==F(1,1024) and 2*F(1,1024)==F(1,512),'safe norm constants')
 cls=classify();ex=load(ROOT/'sources/bft_exception_pairs.json')
 req(len(ex)==40 and max(max(a,b) for a,b in ex)==1771561,'BFT input table identity')
 req(all(abs(a-b) not in (1,3) for a,b in ex),'BFT has no exceptions for gaps1 or3')
 for c in cls['positive']:
  r=c['r'];s=c['fixed_parts'];loss=sum(h*wh for h,wh in W.items() if h!=r)
  req(1-F(loss,1006)>F(1,2),'all Bernoulli bounds for n>=1006')
  req(c['PQ_threshold']*(1<<19)>=3*c['T4_cost']**6,'PQ>n threshold')
  for lift in (1,2,13):
   nn=c['residue']+1800*lift;P=c['p']**valuation(nn,c['p']);Q=c['q']**valuation(nn-r,c['q'])
   want=s.copy();want[0]*=P;want[r]*=Q
   req(want==[smallpart(nn-h) for h in range(6)],'fixed smallpart redundant regression')
 ans={'status':'PASS_C22_EXACT_K12_MATH','definition':'J^2*A^2*B*((n-2)*(n-3)-J)',
      'degree':12,'origin_order':4,'all_Taylor_orders':actual,
      'H_shift_7_7':[[i,j,int(v)] for (i,j),v in sorted(hs.items())],
      'norm':'0<K12<n^12/1024 for all j,k>=7','QIG_identities':check_qig_identities(),
      'BFT_gap_1_3_exceptions':[],'positive_classes':48,'failed_classes':4,
      'external_BFT_reproved':False,'Lean_run':False,'max_K':max(c['K'] for c in cls['positive'])}
 dump(ROOT/'outputs/classification.json',cls)
 dump(ROOT/'outputs/math_certificate.json',ans)
 dump(ROOT/'outputs/kernel12.json',{'definition':ans['definition'],'terms':[[i,j,int(v)] for (i,j),v in sorted(K.items())], 'Taylor_orders':actual})
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
 req(len(all_terms)==len(set(all_terms)),'one terminal occurrence per original row')
 hi=sum(x['high_rows'] for x in results);lo=sum(x['low_rows'] for x in results)
 out={'groups':results,'high_rows':hi,'low_rows':lo,'unique_rows':hi+lo,'QIG_excluded':hi+lo-len(all_terms),
      'QIG_terminals':sorted(all_terms),'all_exponent_pairs':sum(x['all_exponent_pairs'] for x in results),'status':'PASS_C22_FIRST_RECOVERY'}
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
 req(sum(x['pairs'] for x in results)==load(ROOT/'outputs/first_recovery.json')['all_exponent_pairs'],'second full exponent count')
 firstall=load(ROOT/'outputs/first_recovery.json')
 req(sorted(terms_all)==firstall['QIG_terminals'],'second allterminal equality')
 out={'status':'PASS_C22_SECOND_RECOVERY','groups':results,'all_exponent_pairs':sum(x['pairs'] for x in results),'QIG_terminals':sorted(terms_all)}
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
 ts=load(ROOT/'sources/terminal_sources.json');expected=load(ROOT/'outputs/first_recovery.json')['QIG_terminals']
 req([t['n'] for t in ts]==expected,'all and only terminal rows supplied')
 recs=[verify_terminal(t,known) for t in ts];sizes=Counter(len(t['sources']) for t in ts)
 tests=[]
 def reject(label,fn):
  try:fn()
  except (ValueError,AssertionError,KeyError,ZeroDivisionError):tests.append(label);return
  raise ValueError('mutation not rejected:'+label)
 from copy import deepcopy
 bad=deepcopy(pdata['nodes']);b=next(c for c in bad if c['n']>3);b['a']=1
 reject('invalid full-order primality base',lambda:verify_prime_nodes(bad))
 bad=deepcopy(pdata['nodes']);b=next(c for c in bad if c['n']>3);b['factors'][0][1]+=1
 reject('incomplete N-1 factorization',lambda:verify_prime_nodes(bad))
 square=next((t for t in ts if any(c['e']>1 for c in t['sources'])),None)
 if square:
  bad=deepcopy(square);next(c for c in bad['sources'] if c['e']>1)['e']=1
  reject('replace complete prime power by radical',lambda:verify_terminal(bad,known))
 double=next((t for t in ts if len(t['sources'])>1),None)
 if double:
  bad=deepcopy(double);bad['sources']=bad['sources'][:1]
  reject('drop required source',lambda:verify_terminal(bad,known))
 bad=deepcopy(ts[0]);bad['sources'][0]['e']+=1
 reject('invent larger original source exponent',lambda:verify_terminal(bad,known))
 bad=deepcopy(ts[0]);bad['sources'][0]['r']=(bad['sources'][0]['r']+1)%6
 reject('wrong original source position',lambda:verify_terminal(bad,known))
 out={'status':'PASS_C22_ALL_ORIGINAL_TERMINALS_CLOSED','records':recs,
      'source_count_histogram':dict(sizes),'full_CRT_representatives':sum(t['representatives_tested'] for t in recs),
      'certified_prime_nodes':len(known),'selected_distinct_prime_bases':len({c['p'] for t in ts for c in t['sources']}),
      'max_selected_prime':max(c['p'] for t in ts for c in t['sources']),
      'negative_controls_rejected':tests,'probabilistic_primality_in_replay':False,'residual_rows':0}
 dump(ROOT/'outputs/terminals.json',out);return {k:v for k,v in out.items() if k!='records'}

def finalize(cls):
 first=load(ROOT/'outputs/first_recovery.json');second=load(ROOT/'outputs/second_recovery.json');ts=load(ROOT/'outputs/terminals.json')
 req(first['QIG_terminals']==second['QIG_terminals']==[r['n'] for r in ts['records']],'both recoveries close all and only actual residual rows')
 oldclosed,oldrem=baseline();new=set(cls['newly_closed']);uni=oldclosed|new
 req(len(uni)==1736 and len(cls['remaining'])==64,'new adopted finite residue ledger')
 gr=defaultdict(list)
 for a in cls['remaining']:
  pos=sorted({r for r in range(4) if any((a-r)%c==0 for c in CAPS.values())})
  gr[','.join(map(str,pos))].append(a)
 fr={'old_remaining':oldrem,'newly_closed':sorted(new),'adopted_union':sorted(uni),
     'remaining_residue_upper_envelope':cls['remaining'],'remaining_activity_groups':dict(gr),
     'remaining_not_counterexamples':True,'remaining_not_uniformly_finite':True,
     'remaining_indices':[3,4,5,6,7,8,9],
     'new_main_theorem_relies_on_old_closed_sets':False,'total_union_uses_prior_author_level_closures':True}
 dump(ROOT/'outputs/FRONTIER.json',fr)
 out={'status':STATUS,'new_classes':48,'old_remaining':112,'remaining_classes':64,'adopted_closed_classes':1736,
     'complete_exponent_pairs_per_implementation':first['all_exponent_pairs'],'high_original_rows':first['high_rows'],
     'low_original_rows':first['low_rows'],'all_original_rows':first['unique_rows'],
     'strict_QIG_excluded':first['QIG_excluded'],'original_terminal_rows_closed':len(first['QIG_terminals']),
     'finite_terminals_remaining':0,'height_max_K':max(c['K'] for c in cls['positive']),
     'primality_certificate_nodes':ts['certified_prime_nodes'],'terminal_CRT_representatives':ts['full_CRT_representatives'],
     'external_infinite_input':'Bennett-Filaseta-Trifonov Theorem2.1; gaps1/3, no listed exceptions',
     'evidence':'author paper + exact algebra and complete finite certificates + published BFT; no Lean or external independent review',
     'repository_actions':'none','Lean_run':False,'NC_preserving_descent':False,'new_complete_index':False}
 dump(ROOT/'outputs/certificate.json',out);return out

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--phase',choices=['all','math','first','second','terminal','finalize'],default='all');args=ap.parse_args();ph=args.phase
 start=time.monotonic()
 if ph in ('all','math'):out=check_math()
 cls=classify()
 if ph in ('all','first'):out=first_recovery(cls)
 if ph in ('all','second'):out=second_recovery(cls)
 if ph in ('all','terminal'):out=terminals()
 if ph in ('all','finalize'):out=finalize(cls)
 if ph in ('first','second'):out={k:v for k,v in out.items() if k not in ('groups','QIG_terminals')}
 print(json.dumps(out,ensure_ascii=False,indent=2,sort_keys=True));print('phase_seconds='+format(time.monotonic()-start,'.3f'))
if __name__=='__main__':main()
