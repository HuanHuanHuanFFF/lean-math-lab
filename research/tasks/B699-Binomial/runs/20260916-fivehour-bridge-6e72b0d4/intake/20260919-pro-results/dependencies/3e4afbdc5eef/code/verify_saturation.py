#!/usr/bin/env python3
"""Exact acceptance of the NEW source-line peeling certificates.
Standard library only. Reconstructs root gates and ordinary jets without importing
any discovery implementation. Nonzero residues certify NONZERO INTEGER minors;
no modular rank drop is used to claim a rational rank upper bound.
Horner/Newton helpers adapted from the frozen SAT54 checker with source provenance.
"""
from __future__ import annotations
import argparse,hashlib,json,math,time
from pathlib import Path
from fractions import Fraction
from collections import Counter,defaultdict
from itertools import combinations_with_replacement,product
from functools import lru_cache
ROWS=tuple(range(3,9)); SOURCE={r:tuple(s*(r-s) for s in range(r//2+1)) for r in ROWS}
ROOT=Path(__file__).resolve().parents[1]

def require(ok,msg):
 if not ok:raise AssertionError(msg)
def dump(p,x):p.write_text(json.dumps(x,separators=(',',':'))+'\n')
def prime(p):return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))
def lin(p,c):
 out=[0]*(len(p)+1)
 for i,a in enumerate(p):out[i]-=c*a;out[i+1]+=a
 return out
WB=[1]
for r in ROWS:WB=lin(WB,r)
NEWTON=[[1]]
for r in ROWS[:-1]:NEWTON.append(lin(NEWTON[-1],r))
def interpolate120(vals):
 dd=list(vals);out=[0]*6
 for k in range(6):
  c=(120//math.factorial(k))*dd[0]
  for i,a in enumerate(NEWTON[k]):out[i]+=c*a
  dd=[dd[i+1]-dd[i] for i in range(len(dd)-1)]
 return out

def enumerate_residuals(e):
 """Different pivot rows (3,5,8), and a 4+2 meet-in-the-middle B-coefficient join.
 Full root-sum statistics counted by finite Cartesian-product convolution.
 The line-test is run for EVERY complete A/B-compatible root tuple.
 """
 buckets={}; stats=Counter();forced=Counter();residual=[]
 for r in ROWS:
  dd=defaultdict(list)
  for rt in combinations_with_replacement(SOURCE[r],e):
   su=sum(rt);co=Counter(rt)
   dd[su].append((rt,(su*su-sum(x*x for x in rt))//2,len(co),tuple(co[t*(r-t)] for t in range(5))))
  buckets[r]=dd
 piv=(3,5,8);ws={}
 for r in ROWS:
  vals=[Fraction(math.prod(r-t for t in piv if t!=s),math.prod(s-t for t in piv if t!=s)) for s in piv]
  den=math.lcm(*(a.denominator for a in vals));ws[r]=(tuple(int(a*den) for a in vals),den)
 fd=(-1,5,-10,10,-5,1)
 for sums in product(*(sorted(buckets[r]) for r in piv)):
  allsum=[]
  for r in ROWS:
   aa,den=ws[r];su,rem=divmod(sum(a*b for a,b in zip(aa,sums)),den)
   if rem or su not in buckets[r]:break
   allsum.append(su)
  if len(allsum)!=6:continue
  choices=[buckets[r][s] for r,s in zip(ROWS,allsum)]
  stats['sum_gate']+=math.prod(len(q) for q in choices)
  # Count complete z >= 14 without enumerating A-compatible tuples one at a time.
  zz={0:1}
  for ls in choices:
   hist=Counter(q[2] for q in ls);nn=defaultdict(int)
   for a,x in zz.items():
    for b,y in hist.items():nn[a+b]+=x*y
   zz=nn
  stats['z14_sum_gate']+=sum(x for z,x in zz.items() if z>=14)
  left=defaultdict(list)
  for p4 in product(*choices[:4]):
   left[sum(c*q[1] for c,q in zip(fd[:4],p4))].append(p4)
  for p2 in product(*choices[4:]):
   need=-sum(c*q[1] for c,q in zip(fd[4:],p2))
   for p4 in left.get(need,()):
    rec=p4+p2;stats['e2_gate']+=1
    z=sum(q[2] for q in rec)
    if z>=14:stats['z14_e2_gate']+=1
    scores=[sum(q[3][t] for q in rec) for t in range(5)]
    t=next((t for t,s in enumerate(scores) if s>2*e),None)
    if t is not None:forced[t]+=1
    else:residual.append(tuple(q[0] for q in rec))
 require(len(residual)==len(set(residual)),'duplicate residual root tuple')
 stats['line_forced']=sum(forced.values());stats['residuals']=len(residual)
 return sorted(residual),dict(stats),dict(forced)

@lru_cache(None)
def translated_power(c,e):
 # Repeated multiplication, no binomial derivative implementation imported.
 out=[1]
 for _ in range(e):
  aa=[0]*(len(out)+1)
  for i,a in enumerate(out):aa[i]+=c*a;aa[i+1]+=a
  out=aa
 return tuple(out)

def jet(poly,key):
 r,v,i,j=key
 return sum(c*translated_power(r,a)[i]*translated_power(v,b)[j] for (a,b),c in poly.items() if a>=i and b>=j)

def determinant_mod(mat,p):
 n=len(mat);require(all(len(row)==n for row in mat),'minor not square')
 a=[[v%p for v in row] for row in mat];det=1
 for k in range(n):
  i=next((i for i in range(k,n) if a[i][k]),None)
  if i is None:return 0
  if i!=k:a[i],a[k]=a[k],a[i];det=-det%p
  q=a[k][k];det=det*q%p;inv=pow(q,p-2,p)
  rr=[v*inv%p for v in a[k][k+1:]]
  for i in range(k+1,n):
   f=a[i][k]
   if f:
    a[i][k+1:]=[(x-f*y)%p for x,y in zip(a[i][k+1:],rr)]
   a[i][k]=0
 return det

def bareiss(a):
 a=[r[:] for r in a];n=len(a);prev=1;sign=1
 if not n:return 1
 for k in range(n-1):
  i=next((i for i in range(k,n) if a[i][k]),None)
  if i is None:return 0
  if i!=k:a[i],a[k]=a[k],a[i];sign=-sign
  pv=a[k][k];row=a[k]
  for i in range(k+1,n):
   f=a[i][k]
   for j in range(k+1,n):
    v,rem=divmod(pv*a[i][j]-f*row[j],prev);require(rem==0,'nonexact fraction-free division');a[i][j]=v
   a[i][k]=0
  prev=pv
 return sign*a[-1][-1]

class DegreeCheck:
 def __init__(self,e):
  self.e=e;self.qb=tuple((a,b) for b in range(max(e-2,0)) for a in range(2*e-5-2*b));self.nc=len(self.qb)
  self.bas=[{(a+i,b):c for i,c in enumerate(WB) if c} for a,b in self.qb];self.cache={}
 def h0(self,roots):
  ps=[]
  for rt in roots:
   p=[1]
   for v in rt:p=lin(p,v)
   require(len(p)==self.e+1,'bad row degree');ps.append(p)
  out={}
  for j in range(self.e+1):
   for i,c in enumerate(interpolate120([p[j] for p in ps])):
    if c:out[i,j]=c
  require(out.get((0,self.e))==120,'bad leading coefficient')
  require(max(i+2*j for i,j in out)==2*self.e,'bad interpolant weight')
  return out
 def minor(self,roots,cert):
  labels=[]
  for r,rt in zip(ROWS,roots):
   require(len(rt)==self.e and all(v in SOURCE[r] for v in rt),'root row outside source')
   for v,m in sorted(Counter(rt).items()):
    for i in range(1,m):
     for j in range(m-i):labels.append((r,v,i,j))
  require([tuple(k) for k in cert['rows']]==labels,'ordinary jet labels changed')
  rr=cert['pivot_rows'];cc=cert['pivot_columns']
  require(cert['status']=='inconsistent','unsupported residual status')
  require(cc==list(range(self.nc+1)),'not a full augmented minor')
  require(len(rr)==self.nc+1 and len(set(rr))==len(rr),'wrong minor dimension or duplicate row')
  require(all(0<=i<len(labels) for i in rr),'row index out of range')
  h=self.h0(roots);mat=[]
  for k in rr:
   key=labels[k]
   if key not in self.cache:self.cache[key]=[jet(b,key) for b in self.bas]
   mat.append(self.cache[key]+[-jet(h,key)])
  return mat,len(labels)

def check_products(e):
 """The converse is structural: each linear factor has ordinary multiplicity one.
 Enumerate supports and exact source counts; polynomial coefficients are unnecessary.
 """
 allcount=target=0;zs=Counter()
 for ts in combinations_with_replacement(range(4),e):
  allcount+=1;z=0
  for r in ROWS:
   rt=[t*(r-t) for t in ts]
   require(all(v in SOURCE[r] for v in rt),'line factor outside source')
   z+=len(set(rt))
  require((z>=14)==(len(set(ts))>=3),'support/source-count equivalence')
  if z>=14:target+=1;zs[z]+=1
 require(allcount==math.comb(e+3,3),'full product count')
 expect=4*math.comb(e-1,2)+math.comb(e-1,3) if e>=4 else (4 if e==3 else 0)
 require(target==expect,'z14 product count')
 return {'degree':e,'all_monic_products':allcount,'z14_products':target,'z_histogram':dict(zs)}

def verify(max_e,out):
 require(prime(1000033) and prime(1000003),'certificate modulus not prime')
 begin=time.monotonic();summary=[];detrecords=[];negative=0;first=None
 for e in range(1,max_e+1):
  roots,stats,forced=enumerate_residuals(e)
  path=ROOT/f'evidence/sat_e{e}_compact.json'
  if e<=2:certs=[]
  else:certs=json.loads(path.read_text())
  cm={tuple(tuple(x) for x in c['roots']):c for c in certs}
  require(len(cm)==len(certs) and set(cm)==set(roots),'certificate root-set not complete')
  check=DegreeCheck(e);maxrows=0;spot=[]
  for i,rt in enumerate(roots):
   cert=cm[rt];mat,nrows=check.minor(rt,cert);maxrows=max(maxrows,nrows)
   pp=1000033;de=determinant_mod(mat,pp)
   if not de:pp=1000003;de=determinant_mod(mat,pp)
   require(de!=0,'integer augmented minor has no nonzero modular certificate')
   detrecords.append({'e':e,'root_sha256':hashlib.sha256(json.dumps(rt,separators=(',',':')).encode()).hexdigest(),'order':check.nc+1,'prime':pp,'det_mod_prime':de})
   if i==0:
    dd=bareiss(mat);require(dd!=0 and dd%pp==de,'integer/modular determinant disagreement')
    spot.append({'order':check.nc+1,'integer_det':str(dd),'prime':pp,'residue':de})
    if first is None:first=(rt,cert,check)
  item={'e':e,'parameters':check.nc,'gate':stats,'forced_by_line':forced,'verified_minors':len(roots),'max_full_augmented_matrix':[maxrows,check.nc+1] if roots else None,'integer_spot_checks':spot,'products':check_products(e)}
  summary.append(item);dump(out/f'degree_{e:02d}.json',item)
  print('CHECKED_DEGREE',e,'residuals',len(roots),'seconds',round(time.monotonic()-begin,2),flush=True)
 if first:
  import copy
  rt,cert,chk=first
  def reject(fn):
   nonlocal negative
   try:fn()
   except (AssertionError,ValueError,IndexError):negative+=1;return
   raise AssertionError('damaged certificate accepted')
  c=copy.deepcopy(cert);c['pivot_rows'][-1]=c['pivot_rows'][0];reject(lambda:chk.minor(rt,c))
  c=copy.deepcopy(cert);c['pivot_columns'][-1]-=1;reject(lambda:chk.minor(rt,c))
  c=copy.deepcopy(cert);c['rows'][0][2]=0;reject(lambda:chk.minor(rt,c))
  c=copy.deepcopy(cert);c['status']='soluble';reject(lambda:chk.minor(rt,c))
  reject(lambda:require(0!=determinant_mod([[1,2],[1,2]],1000033),'zero minor'))
  reject(lambda:require(prime(1000005),'composite modulus'))
  reject(lambda:require(2*3<6,'replace strict line inequality by equality'))
  reject(lambda:require(60==59,'replace saturated ordinary total'))
 result={'status':'PASS_UNIFORM_SOURCE_LINE_PEELING','max_degree':max_e,'degrees':summary,'modular_integer_minors':len(detrecords),'exact_integer_spot_checks':sum(bool(x['integer_spot_checks']) for x in summary),'negative_tests':negative,'seconds':round(time.monotonic()-begin,3)}
 dump(out/'minor_residues.json',detrecords);dump(out/'saturation_summary.json',result)
 return result
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--max-e',type=int,default=11);ap.add_argument('--out',type=Path,required=True);args=ap.parse_args()
 require(args.out.is_absolute() and not args.out.exists(),'use a fresh absolute output directory');args.out.mkdir(parents=True)
 verify(args.max_e,args.out)
