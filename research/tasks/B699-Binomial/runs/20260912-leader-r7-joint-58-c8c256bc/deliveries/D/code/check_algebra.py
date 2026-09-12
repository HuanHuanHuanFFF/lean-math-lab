#!/usr/bin/env python3
"""Exact polynomial identities and finite nonvacuous/regression checks (stdlib)."""
from __future__ import annotations
import argparse,json,math,time
from pathlib import Path

NAMES=('n','j','k','X','u','g','N','F','R','d','T','mu')
Z=(0,)*len(NAMES)
class P:
 def __init__(self,a=0):self.a={Z:a} if type(a) is int and a else (dict(a) if isinstance(a,dict) else {})
 @staticmethod
 def v(name):
  e=list(Z);e[NAMES.index(name)]=1;return P({tuple(e):1})
 def __add__(self,b):
  b=b if isinstance(b,P) else P(b);d=dict(self.a)
  for e,c in b.a.items():d[e]=d.get(e,0)+c
  return P({e:c for e,c in d.items() if c})
 __radd__=__add__
 def __neg__(self):return P({e:-c for e,c in self.a.items()})
 def __sub__(self,b):return self+(-b if isinstance(b,P) else -P(b))
 def __rsub__(self,b):return P(b)-self
 def __mul__(self,b):
  b=b if isinstance(b,P) else P(b);d={}
  for e,c in self.a.items():
   for f,k in b.a.items():
    h=tuple(x+y for x,y in zip(e,f));d[h]=d.get(h,0)+c*k
  return P({e:c for e,c in d.items() if c})
 __rmul__=__mul__
 def __pow__(self,k):
  out=P(1)
  for _ in range(k):out=out*self
  return out

def check(e,msg):
 if e.a:raise ValueError('polynomial mismatch: '+msg)
def demand(x,msg):
 if not x:raise ValueError(msg)
def one3(x):return 3 if x%9 in (3,6) else 1

def vf(n,p):
 r=0
 while n:n//=p;r+=n
 return r

def vbin(n,k,p):return vf(n,p)-vf(k,p)-vf(n-k,p)
def carry(n,k,p):
 q=p;r=0
 while q<=n:r+=int(k%q>n%q);q*=p
 return r

def valuation(x,p):
 e=0
 while x%p==0:x//=p;e+=1
 return e

def primes_of(x):
 out=[];p=2
 while p*p<=x:
  if x%p==0:
   out.append(p)
   while x%p==0:x//=p
  p+=1
 if x>1:out.append(x)
 return out

def isprime(p):return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))

def joint(n,j):
 k=n-j;g=math.gcd(n,j);lam=one3(n-1);mu=one3((n-2)//2);N=(n-1)//lam;K=(n-2)//(2*mu)
 demand(n%4==0 and 4<=j<=n//2,'joint domain')
 demand(j*(j-1)%N==0 and j*(j-1)*(j-2)%K==0,'exact projection precondition')
 C=[math.gcd(K,j-s) for s in range(3)]
 demand(math.prod(C)==K and all(math.gcd(C[a],C[b])==1 for a in range(3) for b in range(a)),'complete gcd allocation')
 rn=(j//g)*(k//g);rd=N*C[0]*C[2];tn=(j-1)*(k-1);td=N*C[1]**2
 demand(rn%rd==0 and tn%td==0,'integral joint quotients')
 R,T=rn//rd,tn//td
 demand(g**4*R**2*T*(n-1)**3*(n-2)**2==4*lam**3*mu**2*j*j*k*k*(j-1)*(k-1),'joint identity')
 demand(g*g*R*C[0]*C[2]-T*C[1]**2==lam,'coupled norm')
 demand(n*n*g*R*R*T<4*lam**3*mu**2*(j//g)**3,'weighted height')
 if j%2:demand(T%8==0,'8-divisibility')
 demand(16*(n-1)**3*g**4*R**2*T<lam**3*mu**2*n**4,'central height')
 return {'n':n,'j':j,'g':g,'R':R,'T':T,'C':C}

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--root',type=Path,required=True);ap.add_argument('--output',type=Path)
 a=ap.parse_args();t0=time.monotonic();n,j,k,X,u,g,N,F,R,d,T,mu=[P.v(x) for x in NAMES]
 identities=[]
 def ident(expr,name):check(expr,name);identities.append(name)
 ident(j*k-((j+k)-1)-(j-1)*(k-1),'complementary product')
 ident((n-1)*(n-2)-n*(n-j)-(n*(j-3)+2),'positive endpoint margin')
 ident((j+k)**2-4*j*k-(k-j)**2,'central discriminant')
 ident(n**4*(n-2)**2-64*X**2*(X-n+1)-(n**2-4*X)*(16*X**2+(n-2)**2*(n**2+4*X)),'sharp central product bound')
 ident((u+12)*(u+7)**3-(u+8)**4-(u**3+15*u**2+59*u+20),'n+4 rational bound')
 xx=g**2*N*F*R;ll=g**2*R*F-d**2*T
 ident(xx**2*(xx-ll*N)-g**4*N**3*(F*d)**2*R**2*T,'residual product elimination')
 ident(g**2*R*(2*mu*F*d)-2*mu*d*(ll+T*d**2),'F-free cubic relation')
 for residue in range(9):
  nn=36+residue
  if nn%2:nn+=9
  lam=one3(nn-1);mm=one3((nn-2)//2);delta=one3(nn)
  expected=1 if residue in (0,1,2) else 9 if residue in (5,8) else 27
  demand(delta**3*lam**3*mm**2==expected,'residue table')
 for c,V,lowerT in [(1,1,1),(1,9,1),(1,27,1),(3,1,3)]:
  demand(4*V*c**4<=108*lowerT,'old scalar interface coefficient')
 weak=[joint(76672,26775),joint(18610024,7865522)]
 rejected=[]
 for nn,jj in [(56,11),(496,210)]:
  try:joint(nn,jj)
  except ValueError:rejected.append([nn,jj])
  else:raise ValueError('coarse projection wrongly accepted as exact')
 # Numerical inequalities and the parity strengthening, separate from primality.
 inequality_pairs=0;parity_cases=0
 for nn in range(8,1025,4):
  demand(nn**4<(nn+4)*(nn-1)**3,'rational envelope')
  for jj in range(4,nn//2):
   kk=nn-jj;inequality_pairs+=1
   demand(nn*kk<(nn-1)*(nn-2),'endpoint')
   if jj%2:
    demand((jj-1)*(kk-1)%8==0,'parity product');parity_cases+=1
 # Complete small original-input regression, not the infinite proof.
 common_pairs=0;valuation_comparisons=0;direct_comparisons=0
 for nn in range(8,1025):
  ps=sorted(set(primes_of(nn)+primes_of(nn-1)+primes_of(nn-2)))
  ps=[p for p in ps if p>=3 and vbin(nn,3,p)>0]
  for jj in range(4,nn//2+1):
   found=False
   for p in ps:
    v=vbin(nn,jj,p);demand(v==carry(nn,jj,p),'factorial/carry discrepancy');valuation_comparisons+=1
    if nn<=96:
     demand(v==valuation(math.comb(nn,jj),p),'direct coefficient discrepancy');direct_comparisons+=1
    if v:found=True;break
   demand(found,'small original counterexample');common_pairs+=1
 # Boundary p=i=3, kept with the full two valuations.
 demand([vbin(28,i,3) for i in (3,14)]==[2,3],'p=3 endpoint')
 demand(isprime(599) and [vbin(76672,i,599) for i in (3,26775)]==[1,1],'mixed weak witness')
 # New row consumer and same-prime transport. No enumeration of its huge j domain.
 row=json.loads((a.root/'evidence/row-example.json').read_text())[0];nn=row['n'];jj=row['j'];m=row['m'];v=row['v']
 demand(nn==m*2**v and m%2==1,'row decomposition')
 demand(128*m**3>=27*(2**v+4),'new row exclusion')
 demand(2*m**3<27*2**v,'old relaxed scalar cut does not exclude this row')
 lam=one3(nn-1);mu=one3((nn-2)//2)
 for key,target in [('N_factors',(nn-1)//lam),('K_factors',(nn-2)//(2*mu))]:
  fs={int(p):e for p,e in row[key].items()}
  demand(math.prod(p**e for p,e in fs.items())==target and all(isprime(p) for p in fs),'example factorization')
 demand(len(row['N_factors'])>=2 and len(row['K_factors'])>=3,'old omega consumers avoided')
 for p,e in row['K_factors'].items():
  Q=int(p)**e;demand((nn-1)*Q*Q<2*lam*(nn-2)**2,'old square-root consumer avoided')
 if mu==3:demand((nn-1)*9<2*lam*(nn-2)**2,'discarded once-3 square-root case')
 demand(math.gcd(nn*(nn-1)*(nn-2)//6,105)==1,'transport row condition')
 for name,value in [('beta_factors',row['beta']),('gamma_factors',row['gamma'])]:
  fs={int(p):e for p,e in row[name].items()}
  demand(math.prod(p**e for p,e in fs.items())==value and all(isprime(p) for p in fs),'cofactor example')
  demand(min(value//p**e for p,e in fs.items())>21,'old small cofactor consumer avoided')
 transport=0
 for w in row['witnesses']:
  p=w['p'];demand(isprime(p) and p>=11,'transport prime')
  demand([vbin(nn,i,p) for i in range(3,10)]==w['transferred'],'transport valuations')
  demand(vbin(nn,jj,p)==w['j_valuation'] and min(w['transferred'])>0 and w['j_valuation']>0,'common witness')
  transport+=8
 result={'status':'PASS','polynomial_identities':len(identities),'identity_names':identities,'nonvacuous_exact_projection_inputs':weak,'coarse_inputs_rejected':rejected,'inequality_pairs':inequality_pairs,'parity_cases':parity_cases,'small_original_pairs':common_pairs,'valuation_comparisons':valuation_comparisons,'direct_comb_comparisons':direct_comparisons,'large_transport_valuations':transport,'seconds':time.monotonic()-t0}
 if a.output:a.output.write_text(json.dumps(result,indent=2)+'\n')
 print(json.dumps({k:v for k,v in result.items() if k not in ('identity_names','nonvacuous_exact_projection_inputs','coarse_inputs_rejected')}))
if __name__=='__main__':main()
