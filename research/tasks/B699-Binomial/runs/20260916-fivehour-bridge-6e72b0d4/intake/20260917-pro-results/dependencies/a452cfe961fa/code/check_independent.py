#!/usr/bin/env python3
"""Independent dense division and digit-addition checks; does not import generator."""
import json,sys,copy
from pathlib import Path
from fractions import Fraction
from math import isqrt,gcd

def mul(a,b):
 c=[Fraction(0)]*(len(a)+len(b)-1)
 for i,x in enumerate(a):
  for j,y in enumerate(b):c[i+j]+=x*y
 return c

def divide(a,b):
 a=list(map(Fraction,a));b=list(map(Fraction,b));quo=[Fraction(0)]*max(1,len(a)-len(b)+1)
 while len(a)>=len(b):
  c=a[-1]/b[-1];k=len(a)-len(b);quo[k]=c
  for i,t in enumerate(b):a[k+i]-=c*t
  while a and not a[-1]:a.pop()
 return quo,a

def evalp(c,x):
 y=Fraction(0)
 for v in reversed(c):y=y*x+v
 return y

def verify_record(rec):
 if not isinstance(rec,list) or len(rec)!=8:raise ValueError('shape')
 T,A,B,u,v,X,q,R=rec
 if not all(type(a) is int for a in rec):raise ValueError('non-integer')
 if not(T>=3 and T%2 and 1<=A<T and 1<=B<T and X>=T**3):raise ValueError('parameters')
 if not(0<=u<A and 0<=v<=B):raise ValueError('digits')
 z=T*(u*X+v);n=T*(A*X+B);de=A*v-B*u;y=T*de+u
 if de<=0 or not(0<z<n) or 3*z*(z-1)%(n-1):raise ValueError('original W1')
 if q*(n-1)!=3*y*(y-A):raise ValueError('first quotient')
 if not(0<q<3*A):raise ValueError('quotient range')
 cubic=[6*x for x in mul(mul([u,1],[u-A,1]),[u-2*A,1])]
 qq,rr=divide(cubic,[-q,-3*A,3])
 r0=evalp(rr,y)
 if r0.denominator!=1 or int(r0)!=R:raise ValueError('division mismatch')
 if not(R!=0 and R%T==0 and abs(R)<T*(n-2)):raise ValueError('complete divisor')
 if 6*z*(z-1)*(z-2)%(n-2)==0:raise ValueError('forbidden original W2')
 if R%(n-2)==0:raise ValueError('R unexpectedly divisible by n-2')
 return n,z

def factors(n):
 a=[];p=2
 while p*p<=n:
  if n%p==0:
   a.append(p)
   while n%p==0:n//=p
  p+=1
 if n>1:a.append(n)
 return a

def carries(n,j,p):
 a,b=j,n-j;c=s=0
 while a or b or c:
  z=a%p+b%p+c;c=int(z>=p);s+=c;a//=p;b//=p
 return s

def main(out):
 out=Path(out)
 data=json.loads((out/'kernel_cases.json').read_text());ns=[]
 for rec in data['cases']:ns.append(verify_record(rec))
 src=json.loads((out/'small_rows.json').read_text());total=pairs=0
 for n in src['rows']:
  ps=sorted(set(factors(n)+factors(n-1)+factors(n-2))-{2})
  pe=[(p,carries(n,3,p)) for p in ps if carries(n,3,p)]
  for j in range(4,n//2+1):
   odd=1
   for p,e in pe:odd*=p**min(e,carries(n,j,p))
   assert odd>1;total+=odd;pairs+=1
 assert pairs==src['actual_binomial_pairs'] and total==src['odd_gcd_checksum']
 for a in src['valuation_samples']:
  assert all(a['p']%d for d in range(2,isqrt(a['p'])+1))
  assert carries(a['n'],3,a['p'])==a['choose3_valuation']
  assert carries(a['n'],a['j'],a['p'])==a['choosej_valuation']
 # Make every corruption fail closed. These are tests, not new math results.
 base=data['cases'][0]
 muts=[]
 for pos,value,label in [(0,2,'even_T'),(1,base[0],'digit_A_too_large'),(2,0,'zero_B'),(3,base[1]+1,'u_out_of_range'),(4,base[2]+1,'v_out_of_range'),(5,base[0]**3-1,'short_gap'),(6,base[6]+1,'wrong_quotient'),(6,0,'zero_quotient'),(7,0,'zero_remainder'),(7,base[7]+base[0],'changed_remainder')]:
  r=base.copy();r[pos]=value;muts.append((label,r))
 muts.append(('truncated',base[:-1]));muts.append(('float_coefficient',[float(base[0])]+base[1:]))
 rejected=[]
 for label,r in muts:
  try:verify_record(r)
  except (ValueError,AssertionError,ZeroDivisionError):rejected.append(label)
  else:raise AssertionError(('bad record accepted',label))
 result={'dense_division_records':len(ns),'full_binomial_pairs_checked_by_digits':pairs,'odd_gcd_checksum':total,'valuation_examples':len(src['valuation_samples']),'bad_records_rejected':rejected,'method':'Dense rational long division; prime valuation by literal base-p addition, compared with generator direct binomial gcd. Same author, not independent research or Lean.'}
 (out/'independent.json').write_text(json.dumps(result,sort_keys=True,indent=2)+'\n')
 print('PASS independent',len(ns),'kernel records,',pairs,'binomial pairs,',len(rejected),'bad records')
if __name__=='__main__':main(sys.argv[1])
