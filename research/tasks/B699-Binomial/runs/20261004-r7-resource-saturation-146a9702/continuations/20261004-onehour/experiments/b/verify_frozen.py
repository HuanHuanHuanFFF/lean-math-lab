"""Read-only author verification of frozen certificates; Python standard library only.
The large h2 rank is NOT rerun here: its complete input and solver source are bound here.
"""
from pathlib import Path
from fractions import Fraction as Q
import hashlib,json,time,ctypes
import exact_fiber as f
from nine_module import mv,vadd,scale,pad,rank

ROOT=Path.cwd();OUT=Path(__file__).parent
SRC=ROOT/'research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20261003-session-results'
ARCHIVE='080d9a2d955471a9f4cb56594cf439e67672141d4caf2a3b9ea98adc2105389c'

def digest(b):return hashlib.sha256(b).hexdigest()
def clean(p):return {m:c for m,c in p.items() if c}
def add(a,b):
 c=dict(a)
 for m,v in b.items():c[m]=c.get(m,0)+v
 return clean(c)
def mul(a,b):
 c={}
 for m,x in a.items():
  for n,y in b.items():
   e=tuple(x+y for x,y in zip(m,n));c[e]=c.get(e,0)+x*y
 return clean(c)
def neg(a):return {m:-c for m,c in a.items()}
def power(a,n):
 r={(0,0,0):1}
 for _ in range(n):r=mul(r,a)
 return r

def poly(ts):
 z={}
 for e,c in ts:
  assert len(e) in (3,4) and (len(e)==3 or e[3]==0)
  assert isinstance(c,str) and c.lstrip('-').isdigit()
  assert tuple(e[:3]) not in z;z[tuple(e[:3])]=int(c)
 return clean(z)

def source():
 manifest=json.loads((SRC/'MEMBERS.json').read_text(encoding='utf-8'))
 records={m['name'].split('/',1)[1]:m for m in manifest['members'] if m['archive_sha256']==ARCHIVE and m.get('retained_path')}
 expected={x['member']:x['sha256'] for x in json.loads((OUT/'fiber-author-receipt.json').read_text())['source_provenance']}
 def load(name):
  rec=records[name];raw=(SRC/rec['retained_path']).read_bytes();assert digest(raw)==rec['sha256']==expected[name];return json.loads(raw)
 g=load('inputs/generic.json');fs={'P5':poly(g['B5'])}
 for i in [4,3,2,1,0]:fs['V'+str(i)]=poly(load('certificates/colon_'+str(i)+'.json')['V'])
 return fs,{'N':poly(g['N']),'K':poly(g['K'])}

def bareiss(a):
 n=len(a);a=[list(r) for r in a];old=1;sgn=1
 for k in range(n-1):
  p=next((i for i in range(k,n) if a[i][k]),None)
  if p is None:return 0
  if p!=k:a[k],a[p]=a[p],a[k];sgn=-sgn
  pivot=a[k][k]
  for i in range(k+1,n):
   for j in range(k+1,n):
    t=a[i][j]*pivot-a[i][k]*a[k][j];assert t%old==0;a[i][j]=t//old
   a[i][k]=0
  old=pivot
 return sgn*a[-1][-1]
def sylv(a,b):
 m,n=len(a)-1,len(b)-1
 return [[0]*i+a[::-1]+[0]*(n-1-i) for i in range(n)]+[[0]*i+b[::-1]+[0]*(m-1-i) for i in range(m)]
def ev(cs,t):
 v=0
 for c in cs[::-1]:v=v*t+c
 return v

def main():
 st=time.monotonic();fs,gs=source();one={(0,0,0):1};u={(1,0,0):1};y={(0,1,0):1};r={(0,0,1):1};um=add(u,neg(one));ym=add(y,neg(one));E=add(add(mul(u,y),neg(y)),one)
 gs['D']=add({(2,2,1):8},{m:-6*c for m,c in mul(power(um,2),power(ym,2)).items()})
 L={m:-1105920*c for m,c in mul({(8,7,0):1},mul(power(um,2),mul(power(ym,3),power(E,5)))).items()}
 lc=lambda P,k:{(a,b,0):c for (a,b,j),c in P.items() if j==k}
 assert lc(fs['V0'],9)==L
 A5=add({(3,1,0):8},{m:-5*c for m,c in mul(power(um,2),power(ym,3)).items()})
 J={(2,0,0):1,(1,2,0):1,(1,1,0):-3,(0,1,0):1};F0={(2,2,0):2,(2,1,0):-6,(2,0,0):5,(1,1,0):2,(1,0,0):-4,(0,0,0):1};p1=lc(fs['P5'],1)
 assert lc(fs['P5'],0)=={m:-9*c for m,c in mul(power(um,4),mul(power(ym,3),mul(J,F0))).items()}
 assert lc(fs['P5'],5)=={m:144*c for m,c in mul({(4,4,0):1},mul(power(um,2),mul(ym,A5))).items()}
 rc=json.loads((OUT/'p5-nonzero-fiber-certificate.json').read_text());objects={'A5':A5,'J':J,'F0':F0,'p1':p1};dets=0
 for check in rc['resultant_checks']:
  P,G=objects[check['left']],objects[check['right']];m=max(e[0] for e in P);n=max(e[0] for e in G);a=max(e[1] for e in P);b=max(e[1] for e in G);bound=n*a+m*b
  assert check['fixed_u_degrees']==[m,n] and check['y_degree_bound']==bound and check['exact_integer_nodes']==bound+1
  cs=list(map(int,rc['resultants'][check['name']]));assert len(cs)<=bound+1
  pe=lambda P,d,t:[sum(c*t**j for (ii,j,k),c in P.items() if ii==i) for i in range(d+1)]
  for t in range(bound+1):assert bareiss(sylv(pe(P,m,t),pe(G,n,t)))==ev(cs,t);dets+=1
 for item in rc['bezout'].values():
  a=list(map(Q,item['bezout_left']));b=list(map(Q,item['bezout_right']));x=list(map(Q,rc['resultants'][item['left']]));z=list(map(Q,rc['resultants'][item['right']]));assert f.qa(f.qm(a,x),f.qm(b,z))==[1]
 cases=[];names=['P5','V4','V3','V2','V1']
 for fname in ['rational-generic','four-boundary-base-fibers','F0-complex-fiber']:
  rec=json.loads((OUT/(fname+'-certificate.json')).read_text());K=f.Alg(rec['base_modulus']);uu=K.val(rec['u']);yy=K.val(rec['y'])
  dq=[Q(i)*c for i,c in enumerate(K.q)][1:];assert f.qd(f.qm(dq,f.qinv(dq,K.q)),K.q)[1]==[1]
  for a in [uu,yy,K.sub(uu,K.one),K.sub(yy,K.one),K.add(K.sub(K.mul(uu,yy),yy),K.one)]:assert K.mul(a,K.inv(a))==K.one
  pp={n:f.evaluate(K,F,uu,yy) for n,F in (fs|gs).items()};V0=pp['V0'];ell=V0[-1];assert len(V0)==10 and pp['P5'] and len(pp['P5'])<=6
  dec=lambda p:[K.val(c) for c in p];d=dec(rec['gcd']);assert d[-1]==K.one
  bez={n:dec(c) for n,c in zip(rec['gcd_bezout_names'],rec['gcd_bezout'])};lhs=[]
  for name in rec['gcd_bezout_names']:lhs=f.pa(K,lhs,f.pm(K,bez[name],pp[name]));assert not f.pd(K,pp[name],d)[1]
  assert lhs==d
  if 'expected_root' in rec:assert d==[K.neg(K.val(rec['expected_root'])),K.one] and rec['root_matches']
  if fname=='four-boundary-base-fibers':
   assert not f.pd(K,pp['K'],d)[1]
   for name in ['N','D']:
    rem=f.pd(K,pp[name],d)[1];assert len(rem)==1;K.inv(rem[0])
   K.inv(K.val(rec['expected_root']))
  A=[[K.zero]*9 for _ in range(9)]
  for i in range(8):A[i+1][i]=ell
  for i in range(9):A[i][8]=K.neg(V0[i])
  columns=[]
  for name in names:
   ff=pp[name]+[K.zero]*(10-len(pp[name]));v=[K.sub(K.mul(ell,ff[i]),K.mul(ff[9],V0[i])) for i in range(9)]
   for j in range(9):
    direct=f.pd(K,[K.zero]*j+pp[name],V0)[1];assert v==scale(K,K.pow(ell,j+1),pad(K,direct));columns.append(v);v=mv(K,A,v)
  s=f.pm(K,[K.zero,K.one],f.pm(K,pp['D'],f.pm(K,pp['N'],pp['K'])));s+= [K.zero]*(7-len(s))
  def S(v):
   z=[K.zero]*9;p=v
   for j in range(7):
    z=vadd(K,z,scale(K,K.mul(s[j],K.pow(ell,6-j)),p))
    if j<6:p=mv(K,A,p)
   return z
  v=[K.one]+[K.zero]*8;sp=[K.one];rr=rank(K,columns);assert rr==9-(len(d)-1)
  for j in range(1,10):
   v=S(v);sp=f.pd(K,f.pm(K,sp,s),V0)[1];assert v==scale(K,K.pow(ell,6*j),pad(K,sp))
   if j in [5,9]:assert rank(K,columns+[v])==rr and not f.pd(K,sp,d)[1]
  ds=dec(rec['s9_gcd']);a,b=map(dec,rec['s9_bezout']);assert f.pa(K,f.pm(K,a,d),f.pm(K,b,sp))==ds
  assert not f.pd(K,d,ds)[1] and not f.pd(K,sp,ds)[1];assert f.pm(K,ds,dec(rec['allowed_fiber_polynomial']))==d
  cases.append({'case':fname,'r_degree':len(d)-1,'rank':rr,'allowed_degree':len(rec['allowed_fiber_polynomial'])-1,'relation_columns':45,'gate_iterates':9})
 # Bind the C++ rank experiment to complete current integer input, without trusting a tempfile.
 h=mul(mul(mul(mul(mul(mul(r,u),um),y),ym),gs['D']),mul(gs['N'],gs['K']));h2=mul(h,h)
 def stats(P):return max(map(sum,P)),[max(e[i] for e in P) for i in range(3)]
 td,degs=stats(h2);assert (td,degs)==(56,[26,20,12]);lines=['26 20 12 56 6'];rows=0
 for i,P in enumerate(list(fs.values())+[h2]):
  t,d=stats(P);lines.append(' '.join(map(str,[t]+d+[len(P)])))
  for e,c in sorted(P.items()):lines.append(' '.join(map(str,[*e,c])))
  if i<6:rows+=sum(a+b+c+t<=56 for a in range(27-d[0]) for b in range(21-d[1]) for c in range(13-d[2]))
 raw=('\r\n'.join(lines)+'\r\n').encode();receipt=json.loads((OUT/'h2-bounded-receipt.json').read_text());assert digest(raw)==receipt['input_sha256'] and len(raw)==receipt['input_bytes'] and rows==2450
 assert digest((OUT/'rectangular_membership.cpp').read_bytes())==receipt['source_sha256'];assert all(32003%d for d in range(2,179))
 return {'status':'PASS','kind':'author read-only exact verification','source_files':6,'global_coefficient_identities':3,'exact_resultant_nodes':dets,'univariate_bezout_identities':2,'cases':cases,'h2_check':'Complete integer input and solver source bound; rank not rerun in this Python checker','seconds':time.monotonic()-st}
if __name__=='__main__':print(json.dumps(main(),ensure_ascii=False))

