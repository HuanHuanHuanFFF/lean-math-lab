from math import isqrt,gcd

def icbrt(n):
 lo=0;hi=1<<((n.bit_length()+2)//3)
 while lo<hi:
  m=(lo+hi+1)//2
  if m**3<=n:lo=m
  else:hi=m-1
 return lo

def rows(B):
 for c in [1,3]:
  for g in range(1,icbrt((27*B-1)//c**4)+1):
   if c==3 and g%3==0:continue
   alpha=2*c
   while c**4*alpha**2*g**3<108*B**3:
    n=alpha*g
    lo=max(1,(4+g-1)//g,icbrt((c**4*alpha**2*g**3)//108)+1)
    hi=min(B,alpha//2)
    if n>=8 and n%4==0 and lo<=hi:yield c,g,alpha,n,lo,hi
    alpha*=2
if __name__=='__main__':
 import json
 for B in [1000,4096,65536,1048576]:
  R=list(rows(B));print(json.dumps({'B':B,'rows':len(R),'max_n':max(r[3] for r in R),'brute_checks':sum((r[5]-r[4]+2)//2 for r in R)}))
