import json,math
from pathlib import Path
root=Path(__file__).resolve().parents[1]
rows=json.loads((root/'exploration/H02_denominator_probe.json').read_text())['post_qig']
def vp(n,p):
 e=0
 while n%p==0:e+=1;n//=p
 return e
out=[]
for n in rows:
 p=2 if n%72==56 else 3
 cs=[1,5]if p==2 else[1,2,5,10]
 ok=[]
 for c in cs:
  if n%c:continue
  if c%5==0 and vp(n,5)!=1:continue
  for a in range(1,vp(n,p)+1):
   al=c*p**a
   if n%al:continue
   g=n//al
   if al//math.gcd(al,g**5)not in (1,2,3,4,5,6,10,12,15,20,30,60):continue
   if not(g**7<(1<<22)*n and 8*g**5<625*n):continue
   s1=(1 if n%2==0 else 2)*(5 if vp(n-1,5)==1 else 1)
   if 4*(n-1)>s1*al*al:continue
   ok.append([c,a,al,g])
 if ok:out.append({'n':n,'parameters':ok})
print(json.dumps(out,indent=2));(root/'exploration/H02_D6_filter.json').write_text(json.dumps(out,indent=2))
