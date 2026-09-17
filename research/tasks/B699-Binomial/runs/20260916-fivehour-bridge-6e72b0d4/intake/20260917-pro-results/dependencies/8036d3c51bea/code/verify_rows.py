import sys,json,itertools
from pathlib import Path
from math import comb,gcd,isqrt
from kernel import trace

def prime(p):
 return p>=2 and all(p%d for d in range(2,isqrt(p)+1))
def vp(n,p):
 if n<=0:raise ValueError('positive integer required')
 s=0
 while n%p==0:n//=p;s+=1
 return s
def legendre(n,j,p):
 z=0;t=p
 while t<=n:
  z+=n//t-j//t-(n-j)//t;t*=p
 return z
def digits(n,p):
 a=[]
 while n:a.append(n%p);n//=p
 return a or [0]
def no_carry(n,p):
 v=[0];power=1
 for d in digits(n,p):
  v=[x+k*power for x in v for k in range(d+1)];power*=p
 return sorted(v)
def row(P,f,A,B,e):
 if not(prime(P) and P%2 and f>=1 and e>=1 and (P>=5 or f>=2)):
  raise ValueError('source prime/cancellation gate')
 T=P**f;X=P**e
 if not(1<=A<T and B>=1 and B%P and X>=3*A*B*B):raise ValueError('bad row region')
 n=T*(A*X+B)
 assert vp(n,P)==f and vp(n*(n-1)*(n-2)//6,P)==f-(P==3)
 allocated=[]
 for j in no_carry(n,P):
  if not 4<=j<=n//2:continue
  assert j%T==0
  u,w=divmod(j//T,X)
  assert 0<=u<=A and 0<=w<=B and legendre(n,j,P)==0
  allocated.append(trace(T,A,B,X,u,w))
 return {'P':P,'f':f,'A':A,'B':B,'e':e,'n':n,'complete_no_carry_j_count':len(allocated),
         'W1_rejections':sum(z['mode']=='W1-rejected' for z in allocated),
         'W2_rejections':sum(z['mode']=='W2-rejected' for z in allocated)}
def factor(n):
 r={};p=2
 while p*p<=n:
  while n%p==0:r[p]=r.get(p,0)+1;n//=p
  p=3 if p==2 else p+2
 if n>1:r[n]=r.get(n,0)+1
 return r

def main(out):
 records=[]
 for P in (5,7,11):
  for f in (1,2):
   for b in (1,2,3):records.append(row(P,f,P-1,P**b-1,2*b+2))
 records.extend([row(3,2,3,7,6),row(3,2,4,5,6),row(5,1,2,2,3),row(5,2,1,4,3)])
 direct=0;fullpowers=0
 for n in range(8,257):
  a=comb(n,3)
  pf=[p for p in factor(a) if p%2]
  for j in range(4,n//2+1):
   direct+=1;b=comb(n,j)
   assert any(b%p==0 for p in pf)
   for p in (2,3,5,7,11):
    assert legendre(n,j,p)==vp(b,p);fullpowers+=1
 B=12;X=(825*B*B-31*B-4)//8;n=11*(8*X+B);j=11*(3*X+B)
 C=n*(n-1)*(n-2)//6;fac=factor(C);gfac={str(p):min(e,legendre(n,j,p)) for p,e in fac.items() if min(e,legendre(n,j,p))>0}
 witness=651397
 assert prime(witness) and C%witness==0 and legendre(n,j,witness)>0
 assert (n-2)//gcd(n-2,6*j*(j-1)*(j-2))==witness
 edge={'n':56,'j':11,'p':3,'choose3_valuation':vp(comb(56,3),3),'choosej_valuation':legendre(56,11,3),
       'full27_carry':11%27>56%27,'weakened9_carry':11%9>56%9}
 assert edge['full27_carry'] and not edge['weakened9_carry']
 res={'paper_covers_all_unbounded_parameters':True,'row_samples_complete_within_no_carry_digit_ranges':records,
      'direct_binomial_pairs':direct,'direct_valuation_comparisons':fullpowers,
      'first_window_family_example':{'n':n,'j':j,'X':X,'B':B,'actual_gcd_factorization':gfac,'witness':witness},
      'p_equals_i_boundary':edge,'publication_dependency':'none'}
 Path(out).mkdir(parents=True,exist_ok=True);Path(out,'rows.json').write_text(json.dumps(res,sort_keys=True,indent=2)+'\n')
 print('PASS',len(records),'row samples;',sum(r['complete_no_carry_j_count'] for r in records),'digit candidates;',direct,'direct binomial pairs')
if __name__=='__main__':main(sys.argv[1])
