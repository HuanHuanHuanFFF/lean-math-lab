"""Discovery of exact terminal certificates. SymPy used only for factor discovery."""
import json,math,time
from pathlib import Path
import sympy as S
ROOT=Path(__file__).resolve().parents[1]
FAC={}
def factor(n):
 if n not in FAC:FAC[n]=[(int(p),int(e)) for p,e in S.factorint(n).items()]
 return FAC[n]
def valuation_binomial(n,j,p):
 ans=0;q=p
 while q<=n:
  ans+=j%q>n%q;q*=p
 return int(ans)
def pp(x,p):
 a=1
 while x%p==0:x//=p;a*=p
 return a

def do_row(n):
 fives=[factor(n-r) for r in range(5)]
 q1=n-1
 for p in (2,3):
  while q1%p==0:q1//=p
 if q1%5==0 and q1%25!=0:q1//=5
 fq=factor(q1)
 prime_sources={p:(r,e-(p==5)) for r,fac in enumerate(fives) for p,e in fac if p>=5 and (p!=5 or e>=2)}
 base=2 if n%72==56 else 3
 cs=[1] if base==2 else [1,2]
 if n%5==0 and n%25!=0:cs+=[5*c for c in cs]
 alphas=[];v=1
 while n%v==0:
  for c in cs:
   if n%(c*v)==0:alphas.append(c*v)
  v*=base
 alphas=sorted(set(alphas))
 candidates=[]
 for alpha in alphas:
  g=n//alpha;lo=5//g+1;hi=alpha//2
  roots=[0];M=1
  for p,e in fq:
   Q=p**e
   roots=[(r+M*((t-r)*pow(M,-1,Q)%Q))%(M*Q) for r in roots for t in (0,alpha%Q)]
   M*=Q
  assert M==q1
  for root in roots:
   first=root+max(0,(lo-root+M-1)//M)*M
   for beta in range(first,hi+1,M):
    if math.gcd(alpha,beta)!=1:continue
    j=g*beta
    assert 5<j<=n//2 and math.gcd(n,j)==g
    found=None
    for p in sorted(prime_sources,reverse=True):
     v=valuation_binomial(n,j,p)
     if v:
      r,e=prime_sources[p];found={'alpha':alpha,'beta':beta,'p':p,'r':r,'source_v':e,'target_v':v};break
    if found is None:
     raise RuntimeError('ACTUAL SOURCE-FACTOR NC SURVIVOR '+str((n,j,alpha,beta)))
    candidates.append(found)
 return {'n':n,'row_factorizations':[[[p,e] for p,e in fac] for fac in fives],'q1':q1,'alphas':alphas,'candidates':sorted(candidates,key=lambda z:(z['alpha'],z['beta']))}

PRIME_CERT={}
def cert(p):
 if p in PRIME_CERT:return
 if p==2:PRIME_CERT[2]={'p':2};return
 fs=factor(p-1)
 for q,e in fs:cert(q)
 a=2
 while not (pow(a,p-1,p)==1 and all(math.gcd(pow(a,(p-1)//q,p)-1,p)==1 for q,e in fs)):
  a+=1
  if a>10000:raise RuntimeError('No Lucas witness found')
 PRIME_CERT[p]={'p':p,'a':a,'factorization_p_minus_1':[[q,e] for q,e in fs]}

def main():
 terminals=json.loads((ROOT/'evidence/i5_finite.json').read_text())['terminals']
 rows=[];t=time.time()
 for ix,n in enumerate(terminals):
  rows.append(do_row(n))
  if ix%10==0:print('row',ix+1,'/',len(terminals),'candidates',sum(len(r['candidates']) for r in rows),flush=True)
 used=set(p for r in rows for fac in r['row_factorizations'] for p,e in fac)
 for p in sorted(used):cert(p)
 (ROOT/'evidence/i5_terminals.json').write_text(json.dumps({'rows':rows,'prime_certificates':[PRIME_CERT[p] for p in sorted(PRIME_CERT)]},indent=2)+'\n')
 print('DONE rows',len(rows),'candidates',sum(len(r['candidates']) for r in rows),'prime_certificates',len(PRIME_CERT),'seconds',time.time()-t,flush=True)
if __name__=='__main__':main()
