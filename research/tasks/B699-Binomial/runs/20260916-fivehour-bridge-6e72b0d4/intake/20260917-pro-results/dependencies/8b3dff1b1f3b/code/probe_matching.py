from math import prod

def fac(n):
 n=abs(n);out={};p=2
 while p*p<=n:
  while n%p==0:out[p]=out.get(p,0)+1;n//=p
  p+=1
 if n>1:out[n]=out.get(n,0)+1
 return out

def supports(m,c,r,a,b):
 ans={}
 for t in range(m):
  if t==r:continue
  f={}
  for d in range(t+1):
   z=c*(b-d)+a*(t-r)
   if z==0:break
   for p,e in fac(z).items():f[p]=f.get(p,0)+e
  else:
   ans[t]={p for p,e in f.items() if p>m or p==m and e>=2}
 return ans

def match(graph):
 assigned={}
 def augment(r,seen):
  for p in graph[r]:
   if p in seen:continue
   seen.add(p)
   if p not in assigned or augment(assigned[p],seen):assigned[p]=r;return True
  return False
 return all(augment(r,set()) for r in sorted(graph,key=lambda r:len(graph[r])))

def fails(m,c,r):
 return [(a,b,supports(m,c,r,a,b)) for a in range(1,c//2+1) for b in range(r+1) if (2*a<c or 2*b<=r) and match(supports(m,c,r,a,b))]
if __name__=='__main__':
 for m in range(4,10):
  whole=[];first=None
  for c in range(1,51):
   good=[r for r in range(m) if not fails(m,c,r)]
   if len(good)==m:whole.append(c)
   elif first is None:first=(c,[(r,len(fails(m,c,r))) for r in range(m) if fails(m,c,r)])
  print(m,'complete cofactor:',whole,'firstfail',first,flush=True)
  if first:
   c=first[0]; print('example',c,[(r,fails(m,c,r)[0]) for r in range(m) if fails(m,c,r)][:2],flush=True)
