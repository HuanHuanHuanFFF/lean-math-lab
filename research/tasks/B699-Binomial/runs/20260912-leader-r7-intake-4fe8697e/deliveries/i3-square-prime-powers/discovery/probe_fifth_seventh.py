from math import gcd,isqrt
from pathlib import Path
import json

def run():
 rows=[];counts={}
 # enumerate all odd q, not merely primes, as a safe finite over-cover.
 for r,t,limit,weight in [(5,2,9000,1),(7,2,31,1),(7,3,9000,3)]:
  tag=f'{r}:{t}'; C={'q_values':0,'g_values':0,'powers':0,'square_normalized':0,'split_match':0,'first_pass':0,'second_pass':0}
  q=3
  while q**weight<limit:
   beta=q**r
   if beta<=2**20:q+=2;continue
   C['q_values']+=1
   for g in range(1,(limit-1)//q**weight+1):
    C['g_values']+=1
    a=2
    while a<=2*beta:a*=2
    while a*a*g**3<108*beta**3:
     C['powers']+=1
     n=a*g;X=isqrt(n)
     if n%4==0 and X*X==n:
      C['square_normalized']+=1;j=g*beta
      d=gcd(beta,n-1)
      if gcd(a,beta)==1 and d==q**t and ((X-1)%d==0 or (X+1)%d==0):
       C['split_match']+=1
       f=3*j*(j-1)%(n-1)==0
       ss=6*j*(j-1)*(j-2)%(n-2)==0
       C['first_pass']+=f; C['second_pass']+=f and ss
       rows.append({'r':r,'t':t,'q':q,'g':g,'alpha':a,'n':n,'j':j,'d':d,'first':f,'second':ss})
     a*=2
   q+=2
  counts[tag]=C
 return {'counts':counts,'rows':rows}
if __name__=='__main__':
 obj=run();Path('/mnt/data/b699-i3-c-combination/outputs/probe_fifth_seventh.json').write_text(json.dumps(obj,indent=2)+'\n');print(json.dumps(obj)[:4000])
