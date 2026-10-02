"""Optional finite discovery probe; not the universal proof or a replay dependency."""
from __future__ import annotations
import argparse,json

def mul(a,b,m):return ((a[0]*b[0]+3*a[1]*b[1])%m,(a[0]*b[1]+a[1]*b[0])%m)
def power(e,m):
 a=(2,1);z=(1,0)
 while e:
  if e&1:z=mul(a,z,m)
  a=mul(a,a,m);e//=2
 return z

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--limit',type=int,default=20000);a=ap.parse_args()
 if a.limit<5:raise ValueError('limit must exceed 4')
 sieve=bytearray(b'\x01')*a.limit;sieve[:2]=b'\x00\x00'
 for p in range(2,int(a.limit**0.5)+1):
  if sieve[p]:sieve[p*p:a.limit:p]=b'\x00'*len(range(p*p,a.limit,p))
 found=[];tested=0
 for p in range(5,a.limit):
  if not sieve[p]:continue
  tested+=1;eps=1 if pow(3,(p-1)//2,p)==1 else -1
  if power(p-eps,p*p)==(1,0):
   found.append(dict(p=p,legendre5=0 if p==5 else 1 if pow(5,(p-1)//2,p)==1 else -1))
 print(json.dumps(dict(finite_search_p_less_than=a.limit,primes_tested=tested,exceptional_candidates=found,
 proof_boundary='Finite discovery only. Full exponent result for 103 and the universal lemma are separately proved/certified.'),ensure_ascii=False,indent=2))
if __name__=='__main__':main()
