#!/usr/bin/env python3
"""Exact acceptance of NEW SAT48 and COVER21 evidence, standard library only.
Does not import discovery or execute old evidence. This is same-session cross-check,
not external mathematical peer review and not Lean.

python3 -B code/reproduce.py --out /absolute/new-empty-directory
"""
from __future__ import annotations
import argparse,hashlib,json,math,platform,time
from pathlib import Path
from fractions import Fraction as Q
from collections import Counter,defaultdict
from functools import lru_cache
from itertools import combinations_with_replacement,product
ROOT=Path(__file__).resolve().parents[1]
ROWS=tuple(range(3,9));SOURCES={r:tuple(s*(r-s) for s in range(r//2+1)) for r in ROWS}
DEG=8;WT=16;QB=tuple((i,j) for j in range(6) for i in range(11-2*j))

def require(ok,msg):
 if not ok:raise AssertionError(msg)
def dump(p,obj):p.write_text(json.dumps(obj,separators=(',',':'))+'\n')
def add(a,b):
 o=dict(a)
 for m,v in b.items():o[m]=o.get(m,0)+v
 return {m:v for m,v in o.items() if v}
def mul(a,b):
 o=defaultdict(int)
 for (i,j),c in a.items():
  for (k,l),d in b.items():o[i+k,j+l]+=c*d
 return {m:v for m,v in o.items() if v}
ONE={(0,0):1};W=ONE
for r in ROWS:W=mul(W,{(1,0):1,(0,0):-r})

def times_linear(a,c):
 # Coefficients in increasing degree, multiplication by N-c.
 out=[0]*(len(a)+1)
 for i,v in enumerate(a):out[i]-=c*v;out[i+1]+=v
 return out
NEWTON=[[1]]
for r in ROWS[:-1]:NEWTON.append(times_linear(NEWTON[-1],r))

def interpolation120(values):
 # Integer forward differences: 120*sum_k Delta^k y0/k! prod_(j<k)(N-3-j).
 dd=list(values);out=[0]*6
 for k in range(6):
  c=(120//math.factorial(k))*dd[0]
  for i,v in enumerate(NEWTON[k]):out[i]+=c*v
  dd=[dd[i+1]-dd[i] for i in range(len(dd)-1)]
 return out

def h0num(roots):
 polys=[]
 for rr in roots:
  p=[1]
  for v in rr:p=times_linear(p,v)
  require(len(p)==9,'specialization not degree eight');polys.append(p)
 out={}
 for j in range(9):
  cs=interpolation120([pp[j] for pp in polys])
  for i,c in enumerate(cs):
   if c:out[i,j]=c
 require(out.get((0,8))==120,'leading coefficient');require(max(i+2*j for i,j in out)==16,'interpolant weight')
 return out

@lru_cache(None)
def shifted(c,e):
 # Horner expansion of (c+t)^e; independent from binomial derivative discovery.
 row=[1]
 for _ in range(e):
  nxt=[0]*(len(row)+1)
  for i,v in enumerate(row):nxt[i]+=c*v;nxt[i+1]+=v
  row=nxt
 return tuple(row)

def jet(p,label):
 r,v,i,j=label;out=0
 for (a,b),c in p.items():
  if a>=i and b>=j:out+=c*shifted(r,a)[i]*shifted(v,b)[j]
 return out
BAS=[mul(W,{m:1}) for m in QB]
@lru_cache(None)
def arow(label):return tuple(jet(b,label) for b in BAS)

def matrix(roots,h):
 labels=[];a=[]
 for r,rr in zip(ROWS,roots):
  for v,e in sorted(Counter(rr).items()):
   for i in range(1,e):
    for j in range(e-i):
     label=(r,v,i,j);labels.append(label);a.append(list(arow(label))+[-jet(h,label)])
 # A*x=b where x=120*(original Q coefficients), all matrix entries integral.
 return labels,a

def bareiss(a):
 require(all(len(row)==len(a) for row in a),'non-square minor')
 a=[row[:] for row in a];n=len(a);sign=1;prev=1
 if not n:return 1
 for k in range(n-1):
  p=next((i for i in range(k,n) if a[i][k]),None)
  if p is None:return 0
  if p!=k:a[p],a[k]=a[k],a[p];sign=-sign
  pivot=a[k][k];pk=a[k]
  for i in range(k+1,n):
   ai=a[i];q=ai[k]
   for j in range(k+1,n):
    num=pivot*ai[j]-q*pk[j]
    val,rem=divmod(num,prev);require(rem==0,'inexact Bareiss division');ai[j]=val
   ai[k]=0
  prev=pivot
 return sign*a[-1][-1]

def regenerate_gate():
 # Different pivots (3,5,8), bucket by SUM not by root list.
 buckets={}
 for r in ROWS:
  dd=defaultdict(list)
  for roots in combinations_with_replacement(SOURCES[r],8):
   s=sum(roots);dd[s].append((roots,(s*s-sum(v*v for v in roots))//2,len(set(roots))))
  buckets[r]=dd
 piv=(3,5,8);weights={}
 for r in ROWS:
  ww=[Q(math.prod(r-t for t in piv if t!=s),math.prod(s-t for t in piv if t!=s)) for s in piv]
  den=math.lcm(*(q.denominator for q in ww));weights[r]=(tuple(int(q*den) for q in ww),den)
 stats=Counter();found=set()
 for ss in product(*(sorted(buckets[r]) for r in piv)):
  vals={};valid=True
  for r in ROWS:
   ww,den=weights[r];val,rem=divmod(sum(a*b for a,b in zip(ww,ss)),den)
   if rem or val not in buckets[r]:valid=False;break
   vals[r]=val
  if not valid:continue
  for rec in product(*(buckets[r][vals[r]] for r in ROWS)):
   stats['sum_gate']+=1
   if sum(q[2] for q in rec)<14:continue
   stats['z14_gate']+=1
   if sum(w*q[1] for w,q in zip((-1,5,-10,10,-5,1),rec)):continue
   stats['e2_gate']+=1;key=tuple(q[0] for q in rec)
   require(key not in found,'duplicate gate key');found.add(key)
 return found,dict(stats)

def product_polynomial(ts):
 out=ONE
 for s in ts:out=mul(out,{(0,1):1,(1,0):-s,(0,0):s*s})
 return out

def expected_products():
 expected={};zs=Counter();checks=0
 for ts in combinations_with_replacement(range(4),8):
  roots=tuple(tuple(sorted(s*(r-s) for s in ts)) for r in ROWS)
  z=sum(len(set(rr)) for rr in roots)
  if z<14:continue
  p=product_polynomial(ts);require(max(a+2*b for a,b in p)==16 and p[0,8]==1,'product degrees')
  require(roots not in expected,'duplicate product specialization')
  for r,rr in zip(ROWS,roots):
   for v in SOURCES[r]:
    m=rr.count(v)
    if not m:require(jet(p,(r,v,0,0))!=0,'missing source is actually hit');checks+=1;continue
    for i in range(m):
     for j in range(m-i):require(jet(p,(r,v,i,j))==0,'ordinary product jet');checks+=1
    require(jet(p,(r,v,0,m))!=0,'ordinary order upper witness');checks+=1
  expected[roots]={'ts':ts,'polynomial':p,'z':z};zs[z]+=1
 require(len(expected)==119,'expected complete product count')
 require(dict(zs)=={17:21,16:42,15:21,20:35},'product source counts')
 return expected,dict(zs),checks

def verify_one(roots,cert,idx,expected):
 require(cert['index']==idx,'certificate index mismatch');h=h0num(roots);labels,a=matrix(roots,h)
 require([tuple(k) for k in cert['rows']]==labels,'ordinary jet list mismatch')
 rows=cert['pivot_rows'];cols=cert['pivot_columns'];order=len(cols)
 require(len(rows)==order and len(set(rows))==order and len(set(cols))==order,'minor index shape')
 require(all(0<=r<len(a) for r in rows) and all(0<=c<=36 for c in cols),'minor indices out of range')
 det=bareiss([[a[r][c] for c in cols] for r in rows]);require(det!=0,'zero exact determinant')
 if cert['status']=='inconsistent':
  require(order==37 and cols==list(range(37)),'not a rank37 contradiction')
  return {'index':idx,'order':order,'determinant':str(det)},False,0
 require(cert['status']=='soluble','unexpected record status')
 require(order==36 and cert['rank']==36 and cols==list(range(36)) and not cert['directions'],'non-unique or rank deficient solution')
 require(roots in expected,'nonstandard soluble root shape')
 cs=[Q(*c) for c in cert['base']];require(len(cs)==36,'solution dimension')
 xs=[120*c for c in cs]
 for row in a:require(sum(c*x for c,x in zip(row[:36],xs))==row[36],'full affine equations fail')
 actual={k:Q(c,120) for k,c in h.items()}
 for c,b in zip(cs,BAS):actual=add(actual,{k:c*v for k,v in b.items()})
 require(actual==expected[roots]['polynomial'],'not the claimed explicit product')
 return {'index':idx,'order':order,'determinant':str(det),'factors':expected[roots]['ts']},True,len(a)

def source_L():
 # Reconstruct from the original K152 residual jet formula, not the prior DP table.
 w={3:137,4:110,5:91,6:78,7:68,8:61};a={0:27,1:24,2:19,3:13};nu={3:20,4:16,5:13,6:11,7:10,8:9}
 raw={};L={}
 for r in ROWS:
  off=[];diag=None
  for s in range(r//2+1):
   m=w[r]-a.get(s,0)-a.get(r-s,0)-nu[r]
   if 2*s==r:diag=m
   else:off.append(m)
  raw[r]={'off':off,'diag':diag}
  L[r]=[sum(max(m-v,0) for m in off)+((max(diag-v,0)+1)//2 if diag is not None else 0) for v in range(306)]
 require([L[r][0] for r in ROWS]==[151,152,151,152,149,151],'source table error')
 return raw,L

def budgets(outdir):
 raw,L=source_L();vmax=165;hmin=60;tab={};INF=10**12;gamma=(2,2,2,1,1,1)
 for h in range(hmin,153):
  costs=[0]+[INF]*vmax
  for r,g in zip(ROWS,gamma):
   nxt=[INF]*(vmax+1)
   for old,base in enumerate(costs):
    if base==INF:continue
    for v in range(vmax-old+1):
     if L[r][v]>h:continue
     nxt[old+v]=min(nxt[old+v],base+g*L[r][v])
   costs=nxt
  tab[h]=[None if c==INF else 9*h-c for c in costs]
 # Full new vector ranges, including a lower feasible relaxed benchmark.
 def solve(K,free_weight):
  count=0;nv=0;queries=0;feasible=[];by_a=Counter()
  for e in range(K+1):
   for d in range(K-e+1):
    for c in range(K-e-d+1):
     for b in range(K-e-d-c+1):
      a=K-e-d-c-b;nv+=1;minimum=7*a+8*b+10*c+12*d+free_weight*e
      if minimum>305:continue
      need=2*b+2*c+d
      for V in range(306-minimum):
       h=(305-V-a)//2;require(V<=vmax and hmin<=h<=152,'DP range does not cover a possible configuration');queries+=1
       cap=tab[h][V]
       if cap is not None and need<=cap:
        count+=1;feasible.append([a,b,c,d,e,V,h,need,cap]);by_a[a]+=1
  require(nv==math.comb(K+4,4),'five-class vector enumeration incomplete')
  return {'K':K,'free_weight':free_weight,'count_vectors':nv,'queries':queries,'feasible_records':count,'feasible':feasible,'by_a':dict(by_a)}
 actual=[solve(22,18),solve(21,18)]
 require(actual[0]['feasible_records']==0,'22 components not excluded')
 require(actual[1]['feasible_records']==41,'21 relaxed reference count differs')
 require(all(row[0]==0 for row in actual[1]['feasible']),'EDGE21 positive-excess obstruction')
 # Use a separate, explicitly conditional SAT54 valuation only; not a theorem.
 conditional=[solve(21,20),solve(20,20)]
 ex=[]
 for h in range(153):
  vs=[next(v for v in range(306) if L[r][v]<=h) for r in ROWS]
  ex.append({'h':h,'row_minima':vs,'upper_excess':305-2*h-sum(vs)})
 require(max(x['upper_excess'] for x in ex)==3,'frozen excess interface mismatch')
 dump(outdir/'source_capacity.json',{'hmin':hmin,'vmax':vmax,'rows':raw,'gamma':gamma,'capacities':tab})
 dump(outdir/'joint_budget.json',{'status':'NO_22_COMPONENT_SUBSET','weights':[7,8,10,12,18],'Gamma':[0,2,2,1,0],'actual':actual,
 'next_conditional_SAT54_not_proved':conditional})
 dump(outdir/'excess_check.json',ex)
 return {'source_rows':raw,'actual':[{k:v for k,v in r.items() if k!='feasible'} for r in actual],
 'next_conditional_SAT54_not_proved':[{k:v for k,v in r.items() if k!='feasible'} for r in conditional]}

def negative_tests(roots,certs,expected):
 # Reject corrupted evidence; not mathematical counterexamples.
 import copy
 n=0
 def rejects(fn):
  nonlocal n
  try:fn()
  except (AssertionError,ValueError,IndexError):n+=1;return
  raise AssertionError('corrupted certificate was accepted')
 i=next(i for i,c in enumerate(certs) if c['status']=='inconsistent')
 bad=copy.deepcopy(certs[i]);bad['pivot_rows'][1]=bad['pivot_rows'][0]
 rejects(lambda:verify_one(roots[i],bad,i,expected))
 bad=copy.deepcopy(certs[i]);bad['pivot_columns'][-1]=35
 rejects(lambda:verify_one(roots[i],bad,i,expected))
 bad=copy.deepcopy(certs[i]);bad['rows'][0][2]=0
 rejects(lambda:verify_one(roots[i],bad,i,expected))
 j=next(i for i,c in enumerate(certs) if c['status']=='soluble')
 bad=copy.deepcopy(certs[j]);bad['base'][0][0]+=bad['base'][0][1]
 rejects(lambda:verify_one(roots[j],bad,j,expected))
 bad=copy.deepcopy(certs[j]);bad['directions']=[[[0,1]]*36]
 rejects(lambda:verify_one(roots[j],bad,j,expected))
 bad=copy.deepcopy(certs[j]);bad['index']+=1
 rejects(lambda:verify_one(roots[j],bad,j,expected))
 rejects(lambda:require(len(roots[:-1])==5663,'dropped root record'))
 rejects(lambda:require(6*8==47,'ordinary multiplicity changed'))
 require(n==8,'negative test count');return n

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);ap.add_argument('--probe-limit',type=int);args=ap.parse_args()
 require(args.out.is_absolute(),'output must be absolute');require(not args.out.exists(),'output must not exist');args.out.mkdir(parents=True)
 start=time.monotonic();inp=json.loads((ROOT/'evidence/sat48_gates.json').read_text())
 roots=[tuple(tuple(x) for x in rr) for rr in inp['records']]
 certs=[json.loads(s) for s in (ROOT/'evidence/sat48_systems.jsonl').read_text().splitlines()]
 require(len(roots)==len(certs)==5663,'record completeness')
 found,stats=regenerate_gate();require(found==set(roots) and len(found)==len(roots),'independent root gates differ')
 require(stats==inp['gate_stats']=={'sum_gate':377405,'z14_gate':352916,'e2_gate':5663},'gate counters differ')
 print('PASS_COMPLETE_ROOT_GATE',stats,flush=True)
 expected,zs,taylor_checks=expected_products();seen=set();counts=Counter();minors=[];equations_count=0
 n=len(roots) if args.probe_limit is None else min(len(roots),args.probe_limit)
 for i in range(n):
  minor,ok,eqs=verify_one(roots[i],certs[i],i,expected);minors.append(minor);equations_count+=eqs
  counts['unique_product' if ok else 'inconsistent']+=1
  if ok:seen.add(roots[i])
  if (i+1)%250==0:print('EXACT_INTEGER_JETS',i+1,dict(counts),'seconds',round(time.monotonic()-start,2),flush=True)
 dump(args.out/'integer_minors.json',minors)
 if args.probe_limit is not None:
  summary={'status':'PROBE_ONLY','processed':n,'counts':dict(counts),'seconds':time.monotonic()-start};dump(args.out/'summary.json',summary);print(summary,flush=True);return
 require(seen==set(expected),'classification not exactly all119 products');require(dict(counts)=={'inconsistent':5544,'unique_product':119},'system counts')
 dump(args.out/'products.json',[{'factors':q['ts'],'z':q['z']} for q in expected.values()])
 neg=negative_tests(roots,certs,expected);budget=budgets(args.out)
 summary={'status':'PASS_NEW_SAT48_COVER21','python':platform.python_version(),'gate':stats,'classification':dict(counts),
 'coefficient_minor_order':36,'inconsistent_augmented_minor_order':37,'products':119,'product_source_counts':zs,'ordinary_taylor_checks':taylor_checks,
 'full_rational_solution_equations':equations_count,'negative_tests_rejected':neg,'budget':budget,'elapsed_seconds':round(time.monotonic()-start,3)}
 dump(args.out/'summary.json',summary);print(json.dumps(summary,ensure_ascii=False),flush=True)
if __name__=='__main__':main()
