"""Independent formula checker. Does not import the generator or historical code."""
from __future__ import annotations
import argparse,hashlib,json,math,sys,tempfile,subprocess
from pathlib import Path
from functools import lru_cache
from collections import defaultdict
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
def require(ok,msg):
 if not ok:raise ValueError(msg)
def read(path):return json.loads(path.read_bytes())
def digest(b):return hashlib.sha256(b).hexdigest()
def canon(x):return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def mm(A,B,m):return tuple(tuple(sum(A[i][k]*B[k][j] for k in range(3))%m for j in range(3)) for i in range(3))
def affine(q,m):
 A=((18817%m,32592%m,9408%m),(10864%m,18817%m,5432%m),(0,0,1));R=((1,0,0),(0,1,0),(0,0,1))
 while q:
  if q&1:R=mm(R,A,m)
  A=mm(A,A,m);q//=2
 return sum(R[0])%m,sum(R[1])%m

def multiply(a,b,m):return ((a[0]*b[0]+3*a[1]*b[1])%m,(a[0]*b[1]+a[1]*b[0])%m)
def exponent(e,m):
 r=(1,0);a=(2,1)
 while e:
  if e%2:r=multiply(a,r,m)
  a=multiply(a,a,m);e//=2
 return r

def factors(n):
 f=[];d=2
 while d*d<=n:
  if n%d==0:
   f.append(d)
   while n%d==0:n//=d
  d+=1
 if n>1:f.append(n)
 return f

def valuation(n,p):
 require(n!=0,'finite valuation required');k=0
 while n%p==0:k+=1;n//=p
 return k

def prime(p):return p>=2 and not any(p%d==0 for d in range(2,math.isqrt(p)+1))

def check_rank(C):
 ps=[p for p in range(5,200) if prime(p)]+[409,1933]
 require([r['p'] for r in C['rows']]==ps,'rank prime coverage')
 for row in C['rows']:
  p=row['p'];u,x=1,0;order=None
  for r in range(1,p+2):
   u,x=(2*u+3*x)%p,(u+2*x)%p
   if (u,x)==(1,0):order=r;break
  require(order==row['r'],'complete first return order')
  k=1
  while exponent(order,p**(k+1))==(1,0):k+=1
  T=order//math.gcd(order,8);second=valuation(order,2)==2
  require((T,k,second)==(row['T'],row['kappa'],row['second_branch']),'exact source parameters')
  require(row['legendre3']==(1 if pow(3,(p-1)//2,p)==1 else -1),'legendre3')
  require(row['legendre5']==(0 if p==5 else 1 if pow(5,(p-1)//2,p)==1 else -1),'legendre5')
  require(list(exponent(order,p**(k+1)))==row['alpha_to_r_mod_p_kappa_plus_1'],'lift nonzero coefficient')
  require([[ell,list(exponent(order//ell,p))] for ell in factors(order)]==row['proper_order_witnesses'],'proper order certificate')
  zeros=[q for q in range(T) if affine(q,p)[0]==1]
  require(zeros==row['base_roots'],'both source signs, no missing roots')
  require([[e,order*p**max(0,e-k)] for e in range(1,5)]==row['sample_orders'],'lifted order values')
  # At four precisions verify annihilation and every prime-divisor shortening.
  for e,re in row['sample_orders']:
   require(exponent(re,p**e)==(1,0),'lifted annihilation')
   require(all(exponent(re//ell,p**e)!=(1,0) for ell in factors(re)),'lifted order exact')
 for p,q,e,d,m in C['finite_diagnostics_only']:
  require(affine(q,m)[0]==d and valuation((d-1)%m,p)==e,'direct source diagnostic')
 e=C['exceptional103'];require(e==next(r for r in C['rows'] if r['p']==103),'103 record identity')
 require((e['r'],e['T'],e['kappa'],e['legendre5'])==(104,13,2,-1),'103 universal consumer prerequisites')
 require(exponent(104,103**2)==(1,0) and exponent(104,103**3)==(1,286443),'103 exceptional layer')
 require(286443==27*103**2,'103 exact leading unit')
 print('PASS prime orders, exceptional lift, both roots and exact source diagnostics')

@lru_cache(None)
def root_table(p,a,j):
 d,y=affine(j,p);v=a*y%p;Q=(d+v)%p;rr=[]
 for H in range(p):
  for h in range(p):
   if (h*d-4*H-Q)%p:continue
   P=(Q+h*v)%p
   if (4*v*H*H-P*Q*Q+1)%p==0:rr.append([H,h,P,Q,(2*P*Q*H+2)%p])
 return sorted(rr)

@lru_cache(None)
def shared_phases(a,b,c,s):
 found=0
 for j in range(5):
  ns11={r[-1] for r in root_table(11,a,j)};ns19={r[-1] for r in root_table(19,b,j)}
  if any(c*pow(2,e,11)%11 in ns11 and c*pow(2,e,19)%19 in ns19 for e in range(s,90,30)):
   found|=1<<j
 return found

def check_phase(C):
 for p in (11,19):
  table=C['tables'][str(p)]
  require([list(affine(j,p)) for j in range(5)]==table['states'],'source phase table')
  require(affine(5,p)==(1,1) and all(affine(j,p)!=(1,1) for j in range(1,5)),'source first return five')
  require([[a,j,root_table(p,a,j)] for a in range(p) for j in range(5)]==table['rows'],'full E/n recovery including d=0')
  K=table['order2'];require(pow(2,K,p)==1 and all(pow(2,e,p)!=1 for e in range(1,K)),'ord2')
 expected=[[a,b,[shared_phases(a,b,c,s) for c in (1,3) for s in range(30)]] for a in range(11) for b in range(19)]
 require(C['joint_rows']==expected,'same q phase AND same original exponent')
 cl=C['A3866'];require((cl['A'],cl['c'],cl['s_mod30'])==(3866,1,3),'closure input')
 J=[]
 for p in (11,19):
  qs=[]
  for j in range(5):
   targets={pow(2,s,p) for s in range(3,90,30)}
   if any(r[-1] in targets for r in root_table(p,3866%p,j)):qs.append(j)
  J.append(qs)
 require(J==[[0],[2]],'disjoint original q classes')
 require(cl['FN11_q_classes']==J[0] and cl['FN19_q_classes']==J[1],'claimed closure classes')
 require(cl['roots11']==[[j,root_table(11,3866%11,j)] for j in range(5)] and cl['roots19']==[[j,root_table(19,3866%19,j)] for j in range(5)],'all A3866 roots')
 print('PASS complete FN11/FN19 source-phase system and A3866 conditional contradiction')

def check_projection(C,snapshot):
 labels={int(k):v for k,v in snapshot['labels'].items()}
 cm={r['k']:r for r in snapshot['base11_projection']['rows']}
 xm={r['k']:r['masks41_to11'] for r in snapshot['parent_projection']['source743_masks']}
 @lru_cache(None)
 def mask(k,b,old_adopted):
  allowed=[]
  for a in range(11):
   for c,s in labels[k]:
    if old_adopted and c==1 and s%6:continue
    if shared_phases(a,b,c,s):allowed.append(a);break
  return sum(2**a for a in allowed)
 @lru_cache(None)
 def fg(k,b,old_adopted):
  r=cm[k];m=mask(k,b,old_adopted)
  if r['not_divisible7']:
   f=7*41*sum(bool((r['mask11']&m)&(1<<a)) for a in range(11))
   g=7*sum((x&m).bit_count() for x in xm[k])
  else:
   f=sum((x&m).bit_count() for line in r['masks_by_u_a41'] for x in line)
   g=sum((x&m).bit_count() for x in r['masks_by_u_a41'][0])
  return f,g
 weights=defaultdict(int)
 for rr in snapshot['ancestor_fibers']:
  k,z,r5,w=rr[:4]
  for m,coef in ((rr[-2],190),(rr[-1],1)):
   while m:
    bit=m&-m;b=bit.bit_length()-1;weights[k,z,b]+=coef*w;m-=bit
 old_f={(k,z):(f,g) for k,z,w,f,g,*tail in snapshot['parent_projection']['rows']}
 rows=[];tot=[0,0,0,0]
 for (k,z,b),w in sorted(weights.items()):
  of,og=old_f[k,z];f,g=fg(k,b,False);rf,rg=fg(k,b,True)
  u=768+int(k%16 in(0,14));v=51 if k%3 else 49 if z==0 else 48
  row=[k,z,b,w,of,og,f,g,rf,rg,u,v];rows.append(row)
  old=w*(742*of+og)*u*v;new=w*(742*f+g)*u*v;rec=w*(742*rf+rg)*u*v
  hist=old if any(c==3 or s%6==0 for c,s in labels[k]) else 0
  require(0<=new<=old and 0<=rec<=hist,'projection monotonicity')
  tot=[a+b for a,b in zip(tot,(old,new,hist,rec))]
 require(C['rows']==rows and C['groups']==len(rows),'full correlated fiber coverage')
 old,new,hist,rec=tot;M=snapshot['parent_projection']['periods'][-1]
 require(old==snapshot['parent_projection']['counts'][-1]==C['parent_count'],'adopted parent baseline')
 require(C['M_parent']==M and C['M_with_103_squared']==M*10609 and math.gcd(M,10609)==1,'explicit period')
 require(C['source103_bad_residues']==[a for a in range(10609) if a%103==0 and a!=0],'full exponent one residue class list')
 raw=C['new_only'];oa=C['overview_R27_adoption']
 rnums=dict(after_same_q=new,phase_deleted=old-new,lifted_parent=old*10609,lifted_after_phase=new*10609,after_103=new*10507,source103_deleted=new*102,total_deleted_from_lifted_parent=old*10609-new*10507)
 onums=dict(coarse_old_phase_count=hist,old_reconciliation_deleted=old-hist,after_same_q_with_old_phase=rec,new_shared_phase_deleted=hist-rec,lifted_reconciled_baseline=hist*10609,after_103=rec*10507,new_source103_deleted=rec*102,new_derived_deleted_from_reconciled_baseline=hist*10609-rec*10507)
 require(all(raw[k]==v for k,v in rnums.items()),'new-only exact net difference')
 require(all(oa[k]==v for k,v in onums.items()),'old adoption separated from new gains')
 R=set(snapshot['R']);B725=set(snapshot['bad725']);rm={(r[0],r[1],r[2]):r for r in snapshot['ancestor_fibers']}
 def parent(a):
  if a%3031056 not in R or a%725 in B725:return False
  if a%5==4:
   if (a+1)%336 not in {5,25,125,289,101,169,173,193,293,121,269,1} or a%27 in (9,18):return False
  r=rm.get((a%10416,a%27,a%5))
  if r is None:return False
  if not (r[-1] if a%191==0 else r[-2])&(1<<(a%19)):return False
  r=cm.get(a%10416)
  if r is None:return False
  m=r['mask11'] if r['not_divisible7'] else r['masks_by_u_a41'][(a//7)%7][a%41]
  if not(m&(1<<(a%11))):return False
  if a%743==0:
   if a%7==0:
    if a%49:return False
   elif not(xm[a%10416][a%41]&(1<<(a%11))):return False
  if a%769==0 and a%16 not in(0,14):return False
  if a%17==0 and a%3==0 and a%81!=0:return False
  return True
 minima=[]
 for old_adopted in (False,True):
  found=None
  for a in range(2,20000,2):
   if parent(a) and (mask(a%10416,a%19,old_adopted)&(1<<(a%11))) and not(a%103==0 and a%10609!=0):found=a;break
  minima.append(found)
 require(minima==[raw['minimum'],oa['minimum']]==[4018,4090],'precise necessary minima')
 require(C['parent_below_reconciled_minimum']==[a for a in range(2,4090,2) if parent(a)],'baseline lower segment')
 print('PASS exact parent intersection: raw and reconciled ledgers; no joint-period enumeration')
 return parent

def check_boundary(C):
 A=C['A'];q=C['q_offset'];m=C['modulus']
 require((A,q,C['q_step'],m)==(4090,765,1020,209),'boundary input')
 D,Y=affine(q,A*m);require((D,Y)==(C['D'],C['Y']) and (D-1)%A==0,'actual integer quotient')
 B=3*((D-1)//A)%m;d,y=D%m,Y%m
 require(B==C['B'] and affine(C['q_step'],A*m)==(1,1),'entire exact quotient family')
 H,h=C['H'],C['h'];v=A*y%m;Q=(d+v)%m;P=(Q+h*v)%m;n=(2*P*Q*H+2)%m;Z=(2*d*H-Q*Q)%m
 S=(v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*B*y)%m
 require((h*d-4*H-Q)%m==0 and (4*v*H*H-P*Q*Q+1)%m==0,'original E and linear')
 require([P,Q,n,Z,S]==[C['P'],C['Q'],C['n'],C['Z'],C['S']] and Z*Z%m==S,'actual S and same original variables')
 require(C['c']==1 and C['s_mod90']%30==24 and n==pow(2,C['s_mod90'],m),'one c/s phase')
 w=C['source_only103'];require(w['A']==206 and w['q_offset']==13 and w['q_step']==1339,'103 weak family')
 require(pow(5,51,103)==102,'103 source family fails square')
 print('PASS precisely scoped surviving finite system and excluded source-only family')

def check_next(C,parent):
 A=4090
 require(C['A']==A and C['factors']==[[2,1],[5,1],[409,1]] and parent(A),'next adopted A projection')
 require(C['c']==1 and C['s_mod30']==24 and C['q_offset']==765 and C['q_step']==1020,'next coarse labels')
 # Fixed original source and shared phase, not original integer recovery.
 solutions=[q for q in range(1020) if q%51 in(0,38) and q%3==0 and q%4==1 and q%5==0]
 require(solutions==[765],'complete next necessary source intersection')
 require(C['prime409']['r']==204 and C['prime409']['T']==51 and C['prime409']['base_roots']==[0,38],'409 source')
 require(C['prime5']['r']==3 and C['prime5']['T']==3 and C['prime5']['base_roots']==[0],'5 source')
 print('PASS next entry is a necessary family only')

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--cert-dir',type=Path,default=ROOT/'certificates');ap.add_argument('--skip-provenance',action='store_true');args=ap.parse_args()
 files=['01_prime_power_source.json','02_shared_source_phase.json','03_projection_delta.json','04_failure_boundaries.json','05_next_entry.json','06_source_adoption.json']
 C=[read(args.cert_dir/f) for f in files];S=read(ROOT/'inputs/parent_snapshot.json')
 A=C[-1]
 require(digest((ROOT/'inputs/parent_A1486_evidence.zip').read_bytes())==A['parent_sha256']=='dfca31e8b810aa9014aead5232cecf06b74e8e299d746fdf69e59d2daa1fd09f','parent bytes')
 require(digest((ROOT/'inputs/parent_snapshot.json').read_bytes())==A['snapshot_sha256'],'snapshot bytes')
 require(digest((ROOT/'inputs/OVERVIEW-2026-10-02.md.txt').read_bytes())==A['overview_sha256'],'overview bytes')
 if not args.skip_provenance:
  with tempfile.TemporaryDirectory() as td:
   path=Path(td)/'snapshot.json'
   r=subprocess.run([sys.executable,'-B',str(ROOT/'evidence/extract_parent.py'),str(path)],capture_output=True,text=True)
   require(r.returncode==0,'frozen source extraction: '+r.stderr)
   require(path.read_bytes()==(ROOT/'inputs/parent_snapshot.json').read_bytes(),'raw parent provenance regenerated; no historical math execution')
 check_rank(C[0]);check_phase(C[1]);parent=check_projection(C[2],S);check_boundary(C[3]);check_next(C[4],parent)
 print('VERIFY PASS: 6 certificates; author second implementation, not external review or Lean')
if __name__=='__main__':main()
