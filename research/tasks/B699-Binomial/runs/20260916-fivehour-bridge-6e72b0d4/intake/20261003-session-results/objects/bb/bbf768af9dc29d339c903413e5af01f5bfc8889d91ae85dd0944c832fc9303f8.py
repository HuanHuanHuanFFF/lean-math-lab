#!/usr/bin/env python3
"""D-R07 deterministic exact certificate generator, standard library only.
The local implicit-lift equations and seed format are adapted from frozen R05;
no ancestor program is imported or executed. These are non-global models.
"""
from __future__ import annotations
import argparse, hashlib, io, json, math, zipfile
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
ZERO=(0,0,0,0)
def canon(x):return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def add(*args):
 c={}
 for a in args:
  for e,v in a.items():c[e]=c.get(e,0)+v
 return {e:v for e,v in c.items() if v}
def sc(k,a):return {e:k*v for e,v in a.items() if k*v}
def mul(a,b):
 c={}
 for e,v in a.items():
  for f,w in b.items():
   g=tuple(x+y for x,y in zip(e,f));c[g]=c.get(g,0)+v*w
 return {e:v for e,v in c.items() if v}
def pw(a,n):
 r={ZERO:1}
 for _ in range(n):r=mul(r,a)
 return r

def identities():
 vs=[]
 for i in range(4):
  e=[0]*4;e[i]=1;vs.append({tuple(e):1})
 Q,v,H,h=vs;one={ZERO:1};d=add(Q,sc(-1,v));P=add(Q,mul(h,v))
 X=add(P,sc(2,H));Y=add(pw(Q,2),sc(2,mul(v,H)))
 j=mul(pw(Q,2),X);k=mul(P,Y);T=mul(mul(P,Q),H);n=add(sc(2,T),sc(2,one))
 E=add(mul(P,pw(Q,2)),sc(-1,one),sc(-4,mul(v,pw(H,2))))
 L=add(mul(h,d),sc(-4,H),sc(-1,Q))
 R=add(E,sc(-2,mul(mul(v,H),L)))
 pairs=[
 ('sum_recovery',add(j,k,sc(-1,n)),add(sc(2,E),sc(-2,mul(mul(v,H),L)))),
 ('first_source_factorization',add(mul(X,Y),sc(-1,n),one),R),
 ('j_endpoint',add(j,sc(-1,one),sc(-2,mul(H,Y))),E),
 ('k_endpoint',add(k,sc(-1,one),sc(-2,mul(mul(v,H),X))),E),
 ('paired_norm',add(mul(pw(P,2),Q),sc(-1,one),sc(-1,mul(v,pw(X,2)))),add(E,mul(mul(v,P),L))),
 ('product_recovery',add(mul(j,k),sc(-1,mul(mul(P,pw(Q,2)),add(n,sc(-1,one))))),mul(mul(P,pw(Q,2)),R)),
 ('Q_cubic_valuation',add(pw(Q,3),sc(-1,one),sc(-1,mul(v,add(sc(4,pw(H,2)),sc(-1,mul(h,pw(Q,2))))))),E)
 ]
 out=[]
 for name,a,b in pairs:
  assert a==b
  out.append({'name':name,'coefficients':[[list(e),z] for e,z in sorted(a.items())]})
 return {'variables':['Q','v','H','h'],'degree_box':[6,4,4,4],'identities':out}

def vp(x,p):
 if x==0:raise ValueError('no finite valuation of zero')
 e=0
 while x%p==0:x//=p;e+=1
 return e

def val_binom(n,k,p):
 assert 0<=k<=n
 ans=0;d=p
 while d<=n:
  ans+=n//d-k//d-(n-k)//d;d*=p
 return ans

def generic_grid():
 rows=[];by={}
 for p in (3,5,7,11,19):
  hh=hashlib.sha256();count=0
  for m in range(1,5):
   L=p**m
   for N in range(26):
    for K in range(N+1):
     for R in sorted({0,1,2,L//2,L-1}):
      for a in (0,1):
       if a>R or (a==1 and R%p==0):continue
       n=N*L+R;z=K*L+a
       left=val_binom(n,z,p);right=val_binom(N,K,p)
       assert left==right
       first=int(K%p>N%p)
       assert not first or left>0
       row=[p,m,N,K,R,a,left,first]
       hh.update(canon(row));count+=1
  by[str(p)]={'count':count,'sha256':hh.hexdigest()}
 return {'primes':[3,5,7,11,19],'m_range':[1,4],'N_range':[0,25], 'buckets':by,'count':sum(z['count'] for z in by.values())}

def small_integer_regression():
 hh=hashlib.sha256();count=0
 for p in (3,5,7,11):
  for n in range(2,101):
   for z in range(n+1):
    for m in (1,2):
     L=p**m;N,R=divmod(n,L);K,a=divmod(z,L)
     if a not in (0,1) or a>R or (a==1 and R%p==0):continue
     exact=math.comb(n,z);red=math.comb(N,K)
     a1=vp(exact,p);a2=vp(red,p)
     assert a1==a2
     hh.update(canon([p,n,z,m,a1,a2]));count+=1
 return {'n_range':[2,100],'count':count,'sha256':hh.hexdigest()}

def original_witnesses():
 out=[]
 for s in (42,78,114):
  n=3*2**s;p=19;N,R=divmod(n,p);beta=N%p+1
  assert beta<p
  K=N//2+(beta-N//2)%p
  while p*K+1<n//2 or (n-p*K-1)%3==0:K+=p
  k=p*K+1;j=n-k
  assert 4<=j<=n//2 and math.gcd(n,j)==1
  e=vp(n-2,p);f=val_binom(n,3,p);vv=val_binom(n,j,p)
  assert f==e==1 and vv==val_binom(N,K,p)>0
  out.append({'s':s,'n':n,'j':j,'k':k,'ell':p,'m':1,'N':N,'K':K,'alpha':N%p,'beta':K%p,'source_valuation':f,'binomial_valuation':vv,'reduced_source_valuation':val_binom(N,3,p),'full_core_recovery_claimed':False})
 return out

# Local algebraic examples: adapted equations, NOT actual core instances.
def ring(A,s,state,power):
 y,H,B=state;m=power
 d=(1+A*B*pow(3,-1,m))%m;v=A*y%m;Q=(d+v)%m
 h=(4*H+Q)*pow(d,-1,m)%m;P=(Q+h*v)%m
 C=(4*d**3+6*d*d*v+4*d*v*v+v**3+d*B*y)%m
 G=(4*d*H*H-4*Q*Q*H-C)%m
 n=3*pow(2,s,m)%m
 fs=[(d*d+d+1-3*y*y)%m,G,(2*P*Q*H+2-n)%m]
 return fs,{'d':d,'y':y,'B':B,'H':H,'v':v,'Q':Q,'P':P,'h':h}

def lift(A,s,p,K):
 H0=(3*pow(2,s,p)-2)*pow(2,-1,p)%p;B0=(4*H0*H0-4*H0-4)%p
 state=[1,H0,B0];log=[]
 for k in range(1,K):
  pk=p**k;fs,_=ring(A,s,state,p*pk)
  assert all(f%pk==0 for f in fs)
  r=[f//pk for f in fs]
  dy=r[0]*pow(6,-1,p)%p;dH=-r[2]*pow(2,-1,p)%p
  dB=(r[1]-B0*dy+(8*H0-4)*dH)%p
  delta=[dy,dH,dB];state=[x+pk*t for x,t in zip(state,delta)]
  assert ring(A,s,state,p*pk)[0]==[0,0,0]
  log.append(delta)
 return ring(A,s,state,p**K)[1],log

def pell(q,m):
 def mult(a,b):return ((a[0]*b[0]+3*a[1]*b[1])%m,(a[0]*b[1]+a[1]*b[0])%m)
 r=(1,0);a=(2,1);k=8*q+1
 while k:
  if k&1:r=mult(r,a)
  a=mult(a,a);k//=2
 return ((3*r[1]-1)*pow(2,-1,m)%m,r[0]*pow(2,-1,m)%m)

def source_q(state,p,K):
 q=0;period={13:3,19:5}[p]
 for k in range(1,K):
  m=p**(k+1);step=period*p**(k-1)
  digs=[i for i in range(p) if pell(q+i*step,m)==(state['d']%m,state['y']%m)]
  assert len(digs)==1;q+=digs[0]*step
 return q,period*p**(K-1)

def crt(a,m,b,n):
 assert math.gcd(m,n)==1
 return (a+m*((b-a)*pow(m,-1,n)%n))%(m*n),m*n

def get_seeds():
 with zipfile.ZipFile(ROOT/'dependencies/D-R06-evidence.zip') as zz:
  parent=zz.read(next(n for n in zz.namelist() if n.endswith('dependencies/D-R05-evidence.zip')))
 with zipfile.ZipFile(io.BytesIO(parent)) as zz:
  c=json.loads(zz.read(next(n for n in zz.namelist() if n.endswith('certificates/certificate.json'))))
 return c['boundary_models'][:3]

def local_fibers():
 fibers=[]
 for seed in get_seeds():
  A=seed['A'];a13=seed['a13'];b=seed['b19'];e=seed['e19'];m=b+e;K=seed['local19']['precision'];s0=seed['s']
  st13,log13=lift(A,s0,13,K);q13,period13=source_q(st13,13,K)
  step=36*13**(K-1)*19**(m-1);rows=[]
  for t in range(19):
   s=s0+t*step;z,digits=lift(A,s,19,K);q19,period19=source_q(z,19,K)
   q,period=crt(q13,period13,q19,period19)
   if q<9:q+=period
   mod=19**(m+1);L=19**m;n=3*pow(2,s,mod)%mod
   alpha=n//L;beta=(2*(z['v']//19**b)*(z['H']//19**e)*z['P'])%19
   jm=((z['P']+2*z['H'])*z['Q']**2)%mod
   km=((z['Q']**2+2*z['v']*z['H'])*z['P'])%mod
   assert vp(z['H'],19)==e and vp(z['v'],19)==b
   assert vp((z['P']*z['Q']**2-1)%(19**K),19)==b+2*e
   assert A%24570==5616 and s%12==6 and q%3==0
   assert (jm+km)%mod==n and (jm+km>=mod)==(alpha<beta)
   assert 3*pow(2,s,13**K)%(13**K)==3*pow(2,s0,13**K)%(13**K)
   rows.append({'t':t,'s':s,'q':q,'q_modulus':period,'state19':z,'lift_digits':digits,'alpha':alpha,'beta':beta,'carry':alpha<beta,'j_mod':jm,'k_mod':km,'n_mod':n,'q19':q19})
  assert sorted(r['alpha'] for r in rows)==list(range(19))
  assert len({r['beta'] for r in rows})==1
  assert sum(r['carry'] for r in rows)==rows[0]['beta']
  fibers.append({'a13':a13,'b19':b,'e19':e,'precision':K,'A':A,'s0':s0,'s_step':step,'state13':st13,'q13':q13,'source_period13':period13,'lift13':log13,'beta':rows[0]['beta'],'first_digit_rejects':sum(r['carry'] for r in rows),'rows':rows,'global_integer_core_claimed':False,'prime_power_PQ_claimed':False})
 return fibers

def build():
 return {'schema':'B699-D-R07-exact-v1','identities':identities(),'generic_stripping_grid':generic_grid(),'small_exact_binomials':small_integer_regression(),'actual_original_witnesses':original_witnesses(),'local_fibers':local_fibers(),'source_groups':[['P','e_P','k',0],['Q','2e_Q','j',0],['H','e+b','k',1],['X','f+v_ell(v)','k',1],['Y','f','j',1]],'limits':{'M_upper_bound':False,'MA_upper_bound':False,'whole_entry_closed':False,'history_net_certified':False,'q6_executed':False,'local_models_are_NC3':False,'external_BL_reproved':False}}

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--output',required=True);args=ap.parse_args()
 cert=build();path=Path(args.output);path.parent.mkdir(parents=True,exist_ok=True);path.write_bytes(canon(cert))
 print(json.dumps({'status':'PASS','identities':len(cert['identities']['identities']),'generic_cases':cert['generic_stripping_grid']['count'],'exact_binomial_cases':cert['small_exact_binomials']['count'],'local_fibers':len(cert['local_fibers']),'local_rows':sum(len(x['rows']) for x in cert['local_fibers'])}))
if __name__=='__main__':main()
