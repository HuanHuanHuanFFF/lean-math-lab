"""Independent fixed-source verifier: identity arithmetic, fiber matrices, and input reconstruction.
Does not execute author's __main__ entry points or replace their outputs.
"""
from pathlib import Path
import json, hashlib, importlib.util, time, sys, os, shutil
from fractions import Fraction
import sympy as sp
from sympy import QQ
from sympy.polys.rings import ring
ROOT=Path.cwd(); RUN=ROOT/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702'
CONT=RUN/'continuations/20261004-onehour'; EXP=CONT/'experiments/b'; OUT=CONT/'reviews/reg3-module'
TMP=Path('D:/Temp/b699-r7-onehour-20261004/review-reg3'); TMP.mkdir(parents=True,exist_ok=True)
spec=importlib.util.spec_from_file_location('fixed_source',RUN/'experiments/b/reg3_source.py'); rs=importlib.util.module_from_spec(spec); spec.loader.exec_module(rs)
start=time.monotonic(); resource=rs.memory(); resource.update(cpu_visible=os.cpu_count(),disk_C_free=shutil.disk_usage('C:/').free,disk_D_free=shutil.disk_usage('D:/').free)
print('RESOURCE',json.dumps(resource),flush=True)
paths=[*sorted((CONT/'notes/b').glob('*')),*sorted(EXP.glob('*')),RUN/'experiments/b/reg3_source.py']
freeze={str(p.relative_to(ROOT)).replace('\\','/'):{'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()} for p in paths if p.is_file()}
(OUT/'fixed-inputs.json').write_text(json.dumps({'utc_start':'2026-10-04 16:26 UTC','baseline':'f08ead6b850d3f88188f1acc7769cce9ee565482','files':freeze},indent=2)+'\n',encoding='utf-8')
fs,gs,prov=rs.sources(); u,y,r=rs.u,rs.y,rs.r
assert all(c.denominator==1 for F in (fs|gs).values() for c in F.values())
assert all(len(e)==3 and all(v>=0 for v in e) for F in (fs|gs).values() for e in F)
D=8*r*u*u*y*y-6*(u-1)**2*(y-1)**2; gs['D']=D
H=u*u-u*y*y+3*u*y-2*u+(y-1)**2; J0=u*u+u*y*y-3*u*y+y
assert gs['N']==(u-1)*(4*u*y*y*H*r-3*(u-1)*(y-1)**2*J0)
L=rs.R.from_dict({(a,b,0):c for (a,b,k),c in fs['V0'].items() if k==9})
assert L==-1105920*u**8*y**7*(u-1)**2*(y-1)**3*(u*y-y+1)**5
assert max(e[2] for e in fs['V0'])==9 and all(max(e[2] for e in F)<=9 for F in fs.values())
s=r*D*gs['N']*gs['K']; assert max(e[2] for e in s)==6
# All identity checks below use a distinct SymPy polynomial ring implementation.
Tr,t=ring('t',QQ)
class Scalars:
 def __init__(self,q):
  self.q=sum((QQ(c)*t**i for i,c in enumerate(q)),Tr.zero);self.zero=Tr.zero;self.one=Tr.one;self.inversions=0
 def val(self,cs):return sum((QQ(c)*t**i for i,c in enumerate(cs)),Tr.zero)%self.q
 def mul(self,a,b):return (a*b)%self.q
 def pow(self,a,n):return a**n%self.q
 def inv(self,a):
  self.inversions+=1; z=Tr.from_expr(sp.invert(a.as_expr(),self.q.as_expr(),t.as_expr()))%self.q
  assert self.mul(a,z)==self.one;return z

def trim(a):
 a=list(a)
 while a and not a[-1]:a.pop()
 return a

def add(a,b):return trim([(a[i] if i<len(a) else K.zero)+(b[i] if i<len(b) else K.zero) for i in range(max(len(a),len(b)))])
def mul(a,b):
 c=[K.zero for _ in range(max(0,len(a)+len(b)-1))]
 for i,x in enumerate(a):
  for j,z in enumerate(b):c[i+j]+=K.mul(x,z)
 return trim(c)
def div(a,b):
 a=trim(a); q=[K.zero for _ in range(max(0,len(a)-len(b)+1))];inv=K.inv(b[-1])
 while a and len(a)>=len(b):
  j=len(a)-len(b);v=K.mul(a[-1],inv);q[j]+=v
  for i,x in enumerate(b):a[j+i]-=K.mul(v,x)
  a=trim(a)
 return trim(q),a
def dec(a):return trim([K.val(c) for c in a])
def evaluate(F,uu,yy):
 v=[K.zero for _ in range(max(e[2] for e in F)+1)]
 up=[K.pow(uu,i) for i in range(max(e[0] for e in F)+1)];yp=[K.pow(yy,i) for i in range(max(e[1] for e in F)+1)]
 for (a,b,c),z in F.items():v[c]+=K.mul(QQ(z)*up[a],yp[b])
 return trim(v)
def pad(a):return list(a)+[K.zero]*(9-len(a))
def scale(x,a):return [K.mul(x,v) for v in a]
def avec(a):return [K.mul(-Q[i],a[8])+(K.mul(Lv,a[i-1]) if i else K.zero) for i in range(9)]
def rank(cols):
 basis={}
 for v in cols:
  a=list(v)
  for i in range(9):
   if not a[i]:continue
   if i in basis:a=[x-K.mul(a[i],z) for x,z in zip(a,basis[i])]
   else:basis[i]=scale(K.inv(a[i]),a);break
 return len(basis)
results=[]
for case in ['rational-generic','four-boundary-base-fibers','F0-complex-fiber']:
 rec=json.loads((EXP/(case+'-certificate.json')).read_text(encoding='utf-8'));K=Scalars(rec['base_modulus']);uu=K.val(rec['u']);yy=K.val(rec['y'])
 qpoly=sp.Poly(K.q.as_expr(),t.as_expr()); assert sp.gcd(qpoly,qpoly.diff()).degree()==0
 for z in [uu,yy,uu-K.one,yy-K.one,K.mul(uu,yy)-yy+K.one]:K.inv(z)
 pp={n:evaluate(F,uu,yy) for n,F in (fs|gs).items()};Q=pp['V0'];assert len(Q)==10;Lv=Q[9];K.inv(Lv)
 g=dec(rec['gcd']); assert g[-1]==K.one
 total=[]
 for n,b in zip(rec['gcd_bezout_names'],rec['gcd_bezout']):total=add(total,mul(dec(b),pp[n]));assert not div(pp[n],g)[1]
 assert total==g
 ss=mul([K.zero,K.one],mul(pp['D'],mul(pp['N'],pp['K'])));assert len(ss)<=7
 sn=[K.one]
 powers={}
 for j in range(1,10):sn=div(mul(sn,ss),Q)[1];powers[j]=sn
 ds=dec(rec['s9_gcd']);aa,bb=map(dec,rec['s9_bezout'])
 assert add(mul(aa,g),mul(bb,powers[9]))==ds
 assert not div(g,ds)[1] and not div(powers[9],ds)[1]
 assert div(g,ds)[0]==dec(rec['allowed_fiber_polynomial'])==[K.one]
 columns=[]
 for n in ['P5','V4','V3','V2','V1']:
  F=pp[n]+[K.zero]*(10-len(pp[n]));a=[K.mul(Lv,F[i])-K.mul(F[9],Q[i]) for i in range(9)]
  for j in range(9):
   assert a==scale(K.pow(Lv,j+1),pad(div([K.zero]*j+pp[n],Q)[1]))
   columns.append(a);a=avec(a)
 def S(v):
  out=[K.zero]*9;a=v
  for j in range(7):
   c=K.mul(ss[j] if j<len(ss) else K.zero,K.pow(Lv,6-j));out=[x+z for x,z in zip(out,scale(c,a))];a=avec(a)
  return out
 v=[K.one]+[K.zero]*8;rr=rank(columns);ra={}
 for j in range(1,10):
  v=S(v);assert v==scale(K.pow(Lv,6*j),pad(powers[j]))
  if j in [5,9]:assert not div(powers[j],g)[1];ra[j]=rank(columns+[v]);assert ra[j]==rr
 assert rr==9-(len(g)-1)
 gate_reason='unit common gcd' if len(g)==1 else ('K=0 on complete fiber' if case.startswith('four') else 'r=0 on complete fiber')
 if case.startswith('four'):assert not div(pp['K'],g)[1]
 if case.startswith('F0'):assert g==[K.zero,K.one]
 result={'case':case,'common_gcd_degree':len(g)-1,'allowed_degree':0,'rank':rr,'augmented_ranks':ra,'columns_checked':45,'gate_iterates_checked':9,'all_certificate_identities_exact':True,'unit_inversions_checked':K.inversions,'gate_exclusion':gate_reason};results.append(result);print('FIBER',json.dumps(result),flush=True)
# P5 nonzero: independently check coefficient formulas and each fixed-size determinant.
p={j:rs.R.from_dict({(a,b,0):c for (a,b,k),c in fs['P5'].items() if k==j}) for j in [0,1,5]}
A5=8*u**3*y-5*(u-1)**2*(y-1)**3;J=u*u+u*y*y-3*u*y+y;F0=2*u*u*y*y-6*u*u*y+5*u*u+2*u*y-4*u+1
assert p[0]==-9*(u-1)**4*(y-1)**3*J*F0 and p[5]==144*u**4*y**4*(u-1)**2*(y-1)*A5
objs={'A5':A5,'J':J,'F0':F0,'p1':p[1]};cert=json.loads((EXP/'p5-nonzero-fiber-certificate.json').read_text(encoding='utf-8'))
def det_fraction(M):
 a=[[Fraction(x) for x in row] for row in M];d=Fraction(1);n=len(a)
 for i in range(n):
  j=next((j for j in range(i,n) if a[j][i]),None)
  if j is None:return 0
  if j!=i:a[i],a[j]=a[j],a[i];d=-d
  pivot=a[i][i];d*=pivot
  for j in range(i+1,n):
   z=a[j][i]/pivot
   for k in range(i+1,n):a[j][k]-=z*a[i][k]
   a[j][i]=0
 assert d.denominator==1;return int(d)
def at_u_coeffs(F,node,m):
 v=[0]*(m+1)
 for (a,b,c),z in F.items():assert c==0;v[a]+=int(z)*node**b
 return v[::-1]
def eval_int(cs,node):return sum(int(c)*node**i for i,c in enumerate(cs))
node_count=0
for check in cert['resultant_checks']:
 f,g=objs[check['left']],objs[check['right']];m=max(e[0] for e in f);n=max(e[0] for e in g)
 bound=n*max(e[1] for e in f)+m*max(e[1] for e in g);cs=cert['resultants'][check['name']]
 assert [m,n]==check['fixed_u_degrees'] and bound==check['y_degree_bound'] and len(cs)-1<=bound
 for node in range(bound+1):
  a=at_u_coeffs(f,node,m);b=at_u_coeffs(g,node,n);M=[]
  for i in range(n):M.append([0]*i+a+[0]*(n-1-i))
  for i in range(m):M.append([0]*i+b+[0]*(m-1-i))
  assert det_fraction(M)==eval_int(cs,node);node_count+=1
 print('RESULTANT',check['name'],m,n,bound,bound+1,flush=True)
X=sp.Symbol('x')
for key,b in cert['bezout'].items():
 def expr(cs):return sum(sp.Rational(c)*X**i for i,c in enumerate(cs))
 z=sp.Poly(expr(b['bezout_left'])*expr(cert['resultants'][b['left']])+expr(b['bezout_right'])*expr(cert['resultants'][b['right']]),X)
 assert z==sp.Poly(1,X)
assert node_count==96
# Reconstruct the complete integer matrix input from the fixed original six polynomials.
h=r*u*(u-1)*y*(y-1)*D*gs['N']*gs['K'];target=h*h;st=rs.stats(target)
assert st['degrees']==[26,20,12] and st['total_degree']==56 and len(target)==3405
source_names=['P5','V4','V3','V2','V1','V0'];input_path=TMP/'membership-input.txt'
with input_path.open('w',encoding='ascii',newline=None) as f:
 f.write('26 20 12 56 6\n')
 for F in [fs[n] for n in source_names]+[target]:
  d=rs.stats(F);f.write(' '.join(map(str,[d['total_degree']]+d['degrees']+[len(F)]))+'\n')
  for e,c in sorted(F.items()):f.write(' '.join(map(str,[*e,int(c)]))+'\n')
shifts={n:sum(1 for a in range(27-rs.stats(fs[n])['degrees'][0]) for b in range(21-rs.stats(fs[n])['degrees'][1]) for c in range(13-rs.stats(fs[n])['degrees'][2]) if a+b+c<=56-rs.stats(fs[n])['total_degree']) for n in source_names}
mons=sum(1 for a in range(27) for b in range(21) for c in range(13) if a+b+c<=56)
assert sum(shifts.values())==2450 and mons==7367
pmod=32003;assert all(pmod%d for d in range(2,sp.integer_nthroot(pmod,2)[0]+1))
receipt=json.loads((EXP/'h2-bounded-receipt.json').read_text(encoding='utf-8'));input_hash=hashlib.sha256(input_path.read_bytes()).hexdigest();assert input_hash==receipt['input_sha256']
assert hashlib.sha256((EXP/'rectangular_membership.cpp').read_bytes()).hexdigest()==receipt['source_sha256']
summary={'verifier':'/root/verify_reg3_module','method':'independent SymPy quotient-ring arithmetic, Fraction Gaussian determinants, exact original-input reconstruction','resource':resource,'python':sys.version,'sympy':sp.__version__,'source_provenance':prov,'fibers':results,'p5_nonzero':{'nodes':node_count,'coefficient_identities':2,'bezout_identities':2,'all_exact':True},'h2_input':{'sha256':input_hash,'bytes':input_path.stat().st_size,'shifts_by_source':shifts,'rows':sum(shifts.values()),'monomials':mons,'target':st,'prime_trial_division':True,'cpp_sha256':receipt['source_sha256']},'seconds':time.monotonic()-start}
(OUT/'independent-checks.json').write_text(json.dumps(summary,indent=2)+'\n',encoding='utf-8')
print('PASS',json.dumps({'seconds':summary['seconds'],'h2_input':summary['h2_input']}),flush=True)
