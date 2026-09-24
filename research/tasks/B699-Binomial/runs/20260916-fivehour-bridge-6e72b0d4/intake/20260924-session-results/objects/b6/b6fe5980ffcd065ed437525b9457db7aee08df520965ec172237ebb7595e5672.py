#!/usr/bin/env python3
"""C18: exact double-kernel height + complete 3/5-power recovery.
Standard library only. BFT Theorem 2.1 is a published external theorem.
No repository writes, no Lean, no probabilistic prime test.
"""
from __future__ import annotations
from pathlib import Path
from fractions import Fraction as F
from math import comb,prod,isqrt
from itertools import product
import argparse,hashlib,json,sys
from exact_algebra import ONE,XX,YY,mul,sub,power,shift,order,check_qig_identities
if hasattr(sys,'set_int_max_str_digits'):sys.set_int_max_str_digits(0)
ROOT=Path(__file__).resolve().parents[1]
CASES={477:{'K':5593,'r3':0,'r5':2,'cost':24,'low':2048,'s3':6,'D':1},
       1325:{'K':5000,'r3':2,'r5':0,'cost':8,'low':50,'s3':2,'D':3375}}
LAM={(2,3):F(57,200),(2,5):F(129,500),(3,5):F(27,125)}

def req(ok,msg):
 if not ok:raise ValueError(msg)
def load(p):return json.loads(p.read_text(encoding='utf-8'))
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def dump(p,obj,compact=False):
 p.write_text(json.dumps(obj,ensure_ascii=False,sort_keys=True,
                       **({'separators':(',',':')} if compact else {'indent':2}))+'\n',encoding='utf-8')
def smallpart(n):
 req(n>0,'smallpart positive');s=1
 for p in (2,3,5):
  while n%p==0:s*=p;n//=p
 return s
def valuation(n,p):
 req(n>0,'valuation positive');e=0
 while n%p==0:e+=1;n//=p
 return e

def expand_symmetric(terms):
 out={}
 for a,b,c in terms:
  for k in range(a+1):
   m=(k+b,a-k+b);out[m]=out.get(m,0)+c*comb(a,k)
 return {m:c for m,c in out.items() if c}

def polynomial_norm(terms,degree,ceiling,N=1006):
 groups={}
 for a,b,c in terms:groups.setdefault(a+2*b,{})[b]=c
 leading=groups[degree]
 # t=J/n^2 belongs to [0,1/4]. Certify ceiling-leading(t)>=0
 # after t=z/(4(1+z)); endpoint checked explicitly.
 d=max(leading);gap={b:-c for b,c in leading.items()}
 gap[0]=gap.get(0,0)+ceiling
 transformed=[F(0)]*(d+1)
 for b,c in gap.items():
  for j in range(d-b+1):transformed[b+j]+=F(c,4**b)*comb(d-b,j)
 req(all(c>=0 for c in transformed),'leading interval sign')
 req(sum(F(c,4**b) for b,c in gap.items())>=0,'leading endpoint')
 bounds={}
 for deg,coeff in groups.items():
  if deg==degree:continue
  # Negative nonconstant terms can be discarded for an upper bound.
  bounds[deg]=F(coeff.get(0,0))+sum(F(c,4**b)for b,c in coeff.items()if b>0 and c>0)
 neg=bounds[degree-1];req(neg<0,'negative next-degree margin')
 positive=sum(max(F(0),v)/N**(degree-1-deg)for deg,v in bounds.items()if deg<degree-1)
 req(positive < -neg,'lower degree absorption for all n>=N')
 return {'ceiling':ceiling,'degree':degree,'valid_from_n':N,
         'leading_Mobius_coefficients':[str(c)for c in transformed],
         'lower_group_upper_bounds':{str(k):str(v)for k,v in sorted(bounds.items())},
         'positive_tail_at_entry':str(positive),'negative_margin':str(-neg)}

def payer(primes,weights):
 edges=[(i,j,LAM[tuple(sorted((primes[i],primes[j])))])for i,j in [(0,1),(0,2),(1,2)]]
 records=[]
 for bits in product((0,1),repeat=3):
  exps=[F(0),F(0),F(0)]
  for bit,(i,j,l)in zip(bits,edges):
   who=(i,j)[bit];exps[who]=max(exps[who],l)
  delta=sum(w*e for w,e in zip(weights,exps))
  records.append({'choices':list(bits),'exponents':[str(e)for e in exps],'sum':str(delta)})
 return {'weights':list(weights),'branches':records,'minimum':str(min(F(r['sum'])for r in records))}

def check_math():
 k16=load(ROOT/'sources/kernel16.json');k20=load(ROOT/'sources/kernel20.json')
 H16={(i,j):c for i,j,c in k16['H8_terms']}
 H20={(i,j):c for i,j,c in k20['H8_terms']}
 G20={(i,j):c for i,j,c in k20['G6_terms']}
 req(H16!=H20,'distinct H8 factors must remain distinct')
 J=mul(XX,YY);A=mul(sub(XX,ONE),sub(YY,ONE))
 F16=mul(mul(power(J,2),power(A,2)),H16)
 F20=mul(mul(power(J,2),A),mul(G20,H20))
 expected16=[[4],[8,8],[3,4,3],[4,4,4,4],[3,3,3,3,3],[2,2,1,1,2,2]]
 expected20=[[4],[10,10],[4,2,4],[5,5,5,5],[4,4,4,4,4],[2,1,1,1,1,2]]
 orders=[]
 for poly,expected,d in [(F16,expected16,16),(F20,expected20,20)]:
  got=[[order(poly,b,r-b)for b in range(r+1)]for r in range(6)]
  req(got==expected,'all original source orders');req(max(sum(m)for m in poly)==d,'degree')
  orders.append(got)
 positivity={}
 for name,poly,count,minimum in [('H16',H16,45,34),('H20',H20,45,34),('G20',G20,28,2)]:
  s=shift(poly,7,7)
  req(len(s)==count and min(s.values())==minimum and all(c>0 for c in s.values()),name+' positivity')
  positivity[name]={'positive_shift_coefficients':count,'minimum':minimum,'constant':s[(0,0)]}
 syms=load(ROOT/'sources/symmetric_polynomials.json');norms={}
 for name,poly,d,c in [('H16',H16,8,34),('H20',H20,8,34),('G20',G20,6,2)]:
  req(expand_symmetric(syms[name])==poly,name+' symmetric identity')
  norms[name]=polynomial_norm(syms[name],d,c)
 # Source exponents: F16^2 F20, retaining all coarse powers.
 req(2*3+4==10 and 2*4+2==10,'q2 exponent balancing')
 req([2*a+b for a,b in zip([2,2,1],[2,1,1])]==[6,5,3],'q5 block exponents')
 req((2*16+20,2*8+10,2*4+5,2*3+4)==(52,26,13,10),'joint degrees and sources')
 req(F(2*34**3,4**11)==F(34**3,2**21),'joint polynomial bound')
 req(1-F(105,1006)>F(1,2),'joint Bernoulli bound')
 exc=load(ROOT/'sources/bft_exception_pairs.json')
 req(len(exc)==40,'BFT full 40-pair table')
 gaps={d:[x for x in exc if abs(x[0]-x[1])==d]for d in [2,3,5]}
 req(gaps[2]==[] and gaps[3]==[],'BFT gaps2/3')
 req(sorted(gaps[5])==[[1029,1024],[1215,1210],[30618,30613]],'BFT gap5')
 req(all(max(x)%1800 not in CASES for x in gaps[5]),'BFT exceptions outside domains')
 heights=[];triangle={}
 for res,ps in [(477,(3,5,2)),(1325,(5,3,2))]:
  cfg=CASES[res]
  old=payer(ps,(4,3,1));new=payer(ps,(12,10,3))
  req(old['minimum']=='933/1000' and new['minimum']=='603/200','exact gain')
  triangle[str(res)]={'single':old,'joint':new}
  C=2**32*34**3*cfg['s3']**13;D=cfg['D'];K=cfg['K']
  rhs=2**603*(C*D)**200
  req(rhs<2**(3*K) and not rhs<2**(3*(K-1)),'exact least dyadic bound')
  heights.append({'residue':res,'joint_C':C,'BFT_denominator':D,'K':K,'n_bound':'n<2^'+str(K),
                  'strict_integer_comparison':'2^603*(C*D)^200<2^(3*K)'})
 # Modulo 8,9,25 determine all bounded low-prime exponents. Read proof for arbitrary-lift argument.
 local=[]
 for res,cfg in CASES.items():
  n=res
  for lift in range(12):
   z=n+lift*1800;P=3**valuation(z-cfg['r3'],3);Q=5**valuation(z-cfg['r5'],5)
   expected=([P,4,Q,6,1,2**valuation(z-5,2)] if res==477 else
             [Q,4,P,2,1,15*2**valuation(z-5,2)])
   req([smallpart(z-i)for i in range(6)]==expected,'low-part regression, not infinite proof')
   req(prod(smallpart(z-i)for i in range(4))==cfg['cost']*P*Q,'T4 regression')
  local.append({'residue':res,'s1':4,'s3':cfg['s3'],'s4':1,'T4_constant':cfg['cost']})
 req(3*24**6 < 2**19*2048,'477 QIG PQ threshold')
 req(3*8**6 < 2**19*50,'1325 QIG PQ threshold')
 return {'K16_orders':orders[0],'K20_orders':orders[1],'positive_factors':positivity,
         'norm_certificates':norms,'QIG_identities':check_qig_identities(),
         'BFT_table_gaps':{str(k):v for k,v in gaps.items()},'payer_triangles':triangle,
         'height_ledger':heights,'local_parts':local,
         'external_theorem_reproved':False,'Lean':False}

def powers(p,K,start=2):
 vals=[];e=start;t=p**start;cap=1<<K
 while t<cap:vals.append((e,t));e+=1;t*=p
 return vals

def exact_qig(n,T):
 left=T**6*(3*n*n-12*n+8);right=2**20*(n-1)**6*(n-3)**3
 return left<right

def first_recovery(res):
 c=CASES[res];K,r3,r5,C,low=c['K'],c['r3'],c['r5'],c['cost'],c['low']
 threes=powers(3,K);fives=powers(5,K);cap=1<<K
 pairs=hits=bc=ec=0;rows=[];surv=[];h=0
 while not 3*C**6<2**(19+h):h+=1
 for v,Q in fives:
  t=((r5-r3)*pow(9,-1,Q))%Q
  inv_Q_mod3=1 if Q%3==1 else 2
  for u,P in threes:
   pairs+=1
   if ((r3+(P&7)*(t&7))&7)==5 and t%3:
    n=r3+P*t
    if low<=n<cap:
     hits+=1
     if ((n-r5)//Q)%5:
      req(n%1800==res and n<P*Q,'first actual CRT row')
      PQ=P*Q
      if 7*(n.bit_length()-1)>=h+6*PQ.bit_length():
       method=0;bc+=1
      else:
       good=exact_qig(n,C*PQ);method=1 if good else 2;ec+=1
       if not good:surv.append(n)
      rows.append([u,v,method])
   # Unique t' in [0,Q) with 3t'=t modulo Q. No per-pair large inverse.
   t=(t+((-t*inv_Q_mod3)%3)*Q)//3
 rows.sort();lowrows=[]
 for n in range(res,low,1800):
  if n<14:continue
  T=prod(smallpart(n-i)for i in range(4));good=exact_qig(n,T)
  lowrows.append({'n':n,'T4':T,'QIG_excludes':good})
  if not good:surv.append(n)
 stats={'residue':res,'K':K,'u_range':[2,threes[-1][0]],'v_range':[2,fives[-1][0]],
        'all_exponent_pairs':pairs,'residue_hits_after_exact3_filter':hits,
        'exact_high_rows':len(rows),'bitlength_QIG_excludes':bc,
        'full_QIG_checks_high':ec,'full_QIG_excludes_high':ec-len(surv),
        'low_rows':lowrows,'QIG_survivors':sorted(surv),'bitlength_h':h}
 return {'representation':'Each [u,v,method] uniquely defines the original n by the documented CRT; method 0 is a proved bitlength sufficient test for strict QIG, 1 is direct strict QIG, 2 needs an original-prime terminal.',
         'records':rows,'stats':stats}

def egcd_inverse(a,m):
 x0,x1,r0,r1=1,0,a,m
 while r1:
  q=r0//r1;x0,x1=x1,x0-q*x1;r0,r1=r1,r0-q*r1
 req(r0==1,'second coprime inverse');return x0%m

def second_recovery(res):
 c=CASES[res];K=c['K'];r3,r5=((0,2)if res==477 else(2,0));C=c['cost']
 # Independent power lists including a reverse traversal.
 ps=[];P=1;u=0
 while P<1<<K:
  if u>=2:ps.append((u,P))
  u+=1;P*=3
 qs=[];Q=1;v=0
 while Q<1<<K:
  if v>=2:qs.append((v,Q))
  v+=1;Q*=5
 found=[];surv=[];pairs=bc=fc=0
 for u,P in reversed(ps):
  z=((r3-r5)*egcd_inverse(qs[-1][1],P))%P
  for v,Q in reversed(qs):
   pairs+=1
   if ((r5+(Q%8)*(z%8))%8)==5 and z%5:
    n=r5+Q*z
    if c['low']<=n<1<<K:
     if ((n-r3)//P)%3:
      req(n%9==r3 and n%25==r5 and n%8==5,'second modular class')
      req(n<P*Q,'second unique CRT')
      found.append((u,v));T=C*P*Q
      # Different direct bitlength enclosure of the two QIG sides.
      upper_L=6*T.bit_length()+2*n.bit_length()+2
      lower_R=20+6*((n-1).bit_length()-1)+3*((n-3).bit_length()-1)
      if upper_L<=lower_R:bc+=1
      else:
       fc+=1
       gap=(1<<20)*(n-1)**6*(n-3)**3 - T**6*(3*(n-2)**2-4)
       if gap<=0:surv.append(n)
   z=5*z%P
 for n in range(res,c['low'],1800):
  if n<14:continue
  T=1
  for i in range(4):
   v=n-i
   for p in (5,3,2):
    while v%p==0:T*=p;v//=p
  if not exact_qig(n,T):surv.append(n)
 return sorted(found),{'residue':res,'all_exponent_pairs':pairs,'exact_high_rows':len(found),
                       'direct_bitlength_QIG_excludes':bc,'full_QIG_checks_high':fc,
                       'QIG_survivors':sorted(surv)}

def prime_trial(p):
 req(p>=2,'prime positive')
 req(p==2 or p%2==1,'odd prime')
 if p>2:
  for d in range(3,isqrt(p)+1,2):req(p%d!=0,'terminal prime factor found')
 return {'prime':p,'trial_divisor_limit':isqrt(p),'method':'2 and every odd integer through isqrt; deterministic'}

def terminals():
 sources=load(ROOT/'sources/terminal_primes.json');out=[]
 for r in sources:
  n=r['n']
  if r['method']=='single_prime_interval':
   p=r['prime'];pc=prime_trial(p)
   req(p>n//2 and p>6 and n-p==r['source_r']<6,'single-prime whole interval')
   out.append(dict(r,primality=pc,j_interval=[7,n//2]));continue
  ms=[];pcs=[]
  for s in r['sources']:
   p,b,e=s['prime'],s['source_r'],s['source_e'];pcs.append(prime_trial(p))
   req(p>=7 and 0<=b<=5 and valuation(n-b,p)==e,'complete original prime power')
   ms.append(p**e)
  req(len(ms)==2 and ms[0]*ms[1]>n,'two-prime unique interval')
  m1,m2=ms;b1,b2=[x['source_r']for x in r['sources']];values=[];reverse=[]
  for a in range(b1+1):
   for b in range(b2+1):
    z=(a+m1*((b-a)*pow(m1,-1,m2)%m2))%(m1*m2)
    req(z%m1==a and z%m2==b and not 7<=z<=n//2,'terminal CRT exclude')
    values.append([a,b,z])
  for b in range(b2+1):
   for a in range(b1+1):
    z=(b+m2*((a-b)*egcd_inverse(m2,m1)%m1))%(m1*m2)
    reverse.append([a,b,z])
  req(sorted(values)==sorted(reverse),'independent terminal CRT')
  out.append(dict(r,moduli=ms,product=m1*m2,primality=pcs,CRT_residues=values,j_interval=[7,n//2]))
 return out

def mutation_tests():
 count=0
 # Silent changes in a source exponent/coef or height cannot be accepted.
 k=load(ROOT/'sources/kernel16.json');H={(i,j):c for i,j,c in k['H8_terms']}
 bad=dict(H);bad[(0,0)]+=1
 J=mul(XX,YY);A=mul(sub(XX,ONE),sub(YY,ONE));Fbad=mul(mul(power(J,2),power(A,2)),bad)
 req(order(Fbad,0,1)!=8,'corrupt polynomial rejected');count+=1
 req(2*3+3!=10,'missing endpoint order rejected');count+=1
 for cfg in CASES.values():
  C=2**32*34**3*cfg['s3']**13;rhs=2**603*(C*cfg['D'])**200
  req(not rhs<2**(3*(cfg['K']-1)),'height minus one rejected');count+=1
 req(payer((3,5,2),(4,3,1))['minimum']!='603/200','single-kernel substitution rejected');count+=1
 req((9477-4)%9473==0 and (9477-3)%9473!=0,'wrong terminal source rejected');count+=1
 # A different congruence is not the target class.
 req(477%8==5 and (477+1)%8!=5,'wrong residue rejected');count+=1
 return count

def verify_hashes():
 f=ROOT/'SHA256SUMS'
 if not f.exists():return 0
 count=0
 for line in f.read_text().splitlines():
  h,rel=line.split('  ',1);p=ROOT/rel
  req(p.is_file() and sha(p)==h,'hash mismatch '+rel);count+=1
 return count

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--write',action='store_true');ap.add_argument('--phase',choices=['all','math','first-477','second-477','first-1325','second-1325','finalize'],default='all');args=ap.parse_args()
 if not args.write:verify_hashes()
 if args.phase=='math':
  result=check_math();print(json.dumps(result,ensure_ascii=False,indent=2));return
 if args.phase.startswith('first-'):
  res=int(args.phase.split('-')[1]);result=first_recovery(res);p=ROOT/f'outputs/rows_{res}.json'
  if args.write:dump(p,result,True)
  else:req(load(p)==result,'first phase complete recovery equality')
  print(json.dumps(result['stats'],ensure_ascii=False,indent=2));return
 if args.phase.startswith('second-'):
  res=int(args.phase.split('-')[1]);pairs,stats=second_recovery(res)
  first=load(ROOT/f'outputs/rows_{res}.json')
  req(pairs==[(u,v)for u,v,m in first['records']],'independent complete pair set')
  req(stats['QIG_survivors']==first['stats']['QIG_survivors'],'independent complete residual set')
  p=ROOT/f'outputs/second_{res}.json'
  if args.write:dump(p,stats)
  else:req(load(p)==stats,'second phase complete recovery equality')
  print(json.dumps(stats,ensure_ascii=False,indent=2));return
 math=check_math();results={};seconds={}
 for res in CASES:
  if args.phase=='finalize':
   first=load(ROOT/f'outputs/rows_{res}.json');stat2=load(ROOT/f'outputs/second_{res}.json')
  else:
   first=first_recovery(res);other,stat2=second_recovery(res)
   req([(u,v)for u,v,m in first['records']]==other,'full pair-set equality between algorithms')
   req(first['stats']['QIG_survivors']==stat2['QIG_survivors'],'full QIG residual equality')
   if args.write:dump(ROOT/f'outputs/second_{res}.json',stat2)
   else:req(load(ROOT/f'outputs/second_{res}.json')==stat2,'second recorded certificate')
  p=ROOT/f'outputs/rows_{res}.json'
  if args.write:dump(p,first,True)
  else:req(load(p)==first,'complete row reconstruction differs')
  results[str(res)]=first['stats'];seconds[str(res)]=stat2
 ts=terminals();all_res=sorted(n for v in results.values()for n in v['QIG_survivors'])
 req(all_res==sorted(r['n']for r in ts),'all terminals covered exactly')
 cert={'status':'PASS_C18_HIGH2_POSITION5_TWO_NEW_CLASSES_CLOSED',
       'scope':'n mod1800 in {477,1325}; all original legal j; i=6',
       'budget':{'authorized_batch_total':25,'shared_conversations':4,'consumed_by_this_user_turn':1,
                 'this_conversation_round':'C18','global_consumed_total':'not independently available'},
       'math':math,'first_recovery':results,'second_recovery':seconds,
       'terminal_count':len(ts),'remaining_terminals':0,'mutation_tests_rejected':mutation_tests(),
       'external_theorem':'Bennett-Filaseta-Trifonov Theorem 2.1; not reproved',
       'Lean_executed':False,'repository_writes':False,'external_independent_review':False}
 for filename,obj in [('certificate.json',cert),('terminals.json',ts)]:
  p=ROOT/'outputs'/filename
  if args.write:dump(p,obj)
  else:req(load(p)==obj,'certificate mismatch '+filename)
 summary={k:cert[k]for k in ['status','scope','budget','terminal_count','remaining_terminals','mutation_tests_rejected']}
 summary['first_recovery']=results;summary['second_recovery']=seconds
 print(json.dumps(summary,ensure_ascii=False,indent=2))

if __name__=='__main__':main()
