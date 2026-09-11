from math import gcd,isqrt,comb
import json,time,sys
from pathlib import Path
from estimate_fraction import rows

def primes_upto(N):
 s=bytearray(b'\1')*(N+1);s[0:2]=b'\0\0'
 for p in range(2,isqrt(N)+1):
  if s[p]:s[p*p::p]=b'\0'*((N-p*p)//p+1)
 return [p for p in range(2,N+1) if s[p]]
def factor(N,ps):
 out=[]
 for p in ps:
  if p*p>N:break
  if N%p==0:
   q=1;e=0
   while N%p==0:N//=p;q*=p;e+=1
   out.append((p,e,q))
 if N>1:out.append((N,1,N))
 return out

def roots(M,g,ps):
 out=[0];mod=1
 for p,e,q in factor(M,ps):
  inv=pow(g,-1,q);new=[]
  for r in out:
   for t in [0,inv]:new.append(r+mod*((t-r)*pow(mod,-1,q)%q))
  out=new;mod*=q
 assert mod==M
 return sorted(out)

def vp_fact(n,p):
 s=0
 while n:n//=p;s+=n
 return s

def main(B,out):
 start=time.monotonic(); R=list(rows(B));ps=primes_upto(isqrt(max(r[3] for r in R))+1)
 first=[];second=[];root_counts=0;rootmax=0;noL=[]
 for c,g,alpha,n,lo,hi in R:
  M=(n-1)//gcd(3,n-1);rr=roots(M,g,ps);root_counts+=len(rr);rootmax=max(rootmax,len(rr))
  for r in rr:
   qlo=-((r-lo)//M);qhi=(hi-r)//M
   for q in range(qlo,qhi+1):
    b=r+M*q
    if gcd(alpha,b)>1:continue
    j=g*b
    assert 4<=j<=n//2 and n%4==0 and n*n*g*c**4<108*b**3
    assert 3*j*(j-1)%(n-1)==0
    first.append([n,j,c,g,alpha,b])
    if 6*j*(j-1)*(j-2)%(n-2):continue
    k=n-j;H=gcd(comb(k,3),j*comb(k,2),comb(j,2)*k,comb(j,3));L=comb(n,3)//H
    odd=L
    while odd%2==0:odd//=2
    if odd==1:noL.append([n,j,H,L])
    facts=factor(odd,ps)
    w=None
    for p,e,Q in facts:
     ev=vp_fact(n,p)-vp_fact(j,p)-vp_fact(n-j,p)
     if ev>0:w=[p,ev];break
    second.append({'n':n,'j':j,'c':c,'g':g,'alpha':alpha,'b':b,'H':H,'L':L,'oddL':odd,'witness':w})
 first.sort();second.sort(key=lambda r:(r['n'],r['j']))
 summary={'B':B,'rows':len(R),'max_n_in_rows':max(r[3] for r in R),'root_choices':root_counts,'largest_root_count':rootmax,'first_candidates':len(first),'second_candidates':len(second),'no_odd_L':noL,'elapsed_seconds':time.monotonic()-start}
 out=Path(out);out.mkdir(parents=True,exist_ok=True)
 (out/'first_candidates.json').write_text(json.dumps(first,separators=(',',':'))+'\n')
 (out/'second_candidates.json').write_text(json.dumps(second,indent=2)+'\n')
 (out/'summary.json').write_text(json.dumps(summary,indent=2)+'\n')
 print(json.dumps(summary))
if __name__=='__main__':main(int(sys.argv[1]),sys.argv[2])
