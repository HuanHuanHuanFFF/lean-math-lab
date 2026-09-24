from pathlib import Path
import json,sys,math,itertools
P=11;b=Path('/mnt/data/next_round')
def readbas(i):
 ls=(b/f'certificates/{i}_mod11.txt.basis').read_text().splitlines();h=int(ls[0].split()[3]);d=int(ls[0].split()[5]);pos=1;out=[]
 for k in range(d):
  assert ls[pos].startswith('BASIS ');pos+=1;bb=[]
  for j in range(h+1):
   jj,n,*c=map(int,ls[pos].split());pos+=1;assert jj==j and len(c)==n+1;bb.append(c)
  out.append(bb)
 return h,out
def ev(c,n):
 z=0
 for x in c[::-1]:z=(z*n+x)%P
 return z
def mul(a,c):
 out=[0]*(len(a)+len(c)-1)
 for i,x in enumerate(a):
  for j,y in enumerate(c):out[i+j]=(out[i+j]+x*y)%P
 return out
def rem(a,c):
 a=a[:];iv=pow(c[-1],-1,P)
 for k in range(len(a)-len(c),-1,-1):
  t=a[k+len(c)-1]*iv%P
  for j,y in enumerate(c):a[k+j]=(a[k+j]-t*y)%P
 return a[:len(c)-1]
def ker(rows,d):
 bas={}
 for v in rows:
  v=[x%P for x in v]
  for j in range(d):
   if not v[j]:continue
   if j in bas:v=[(a-v[j]*c)%P for a,c in zip(v,bas[j])]
   else:
    iv=pow(v[j],-1,P);v=[x*iv%P for x in v];bas[j]=v;break
  if len(bas)==d:return []
 out=[]
 for f in range(d):
  if f in bas:continue
  v=[0]*d;v[f]=1
  for j in sorted(bas,reverse=True):v[j]=-sum(x*y for x,y in zip(bas[j],v))%P
  out.append(v)
 return out
def allp(d):
 for j in range(d):
  for tail in itertools.product(range(P),repeat=d-j-1):yield (0,)*j+(1,)+tail
stats=[]
for i in [1626,1627,1629,1630]:
 h,B=readbas(i);d=len(B);ns=[1,2,9,10,0];E={n:[[ev(c,n)for c in F]for F in B]for n in ns};cases=[]
 for c,a,z in allp(3):
  rows=[]
  if c:
   for n in ns:
    q=[1]
    for t in range(4):q=mul(q,[(t*t-t*n)%P,1])
    w=math.prod(n-r for r in range(3,9));q[0]=(q[0]+w*(n-3)*(a*n+z))%P
    R=[rem(F,q)for F in E[n]];rows.extend(list(zip(*R)))
  else:
   # R=W(N-3)(aN+b), all split over F11. Require all N jets of appropriate order.
   roots={r:1 for r in range(3,9)};roots[3]+=1
   if a:
    r=(-z*pow(a,-1,P))%P;roots[r]=roots.get(r,0)+1
   for r,m in roots.items():
    for ell in range(m):
     for x in range(h+1):rows.append([sum(math.comb(k,ell)*cf*pow(r,k-ell,P)for k,cf in enumerate(F[x])if k>=ell)%P for F in B])
  K=ker(rows,d)
  cases.append({'param':[c,a,z],'dimension':len(K),'subspace_basis':K})
 print(i,'dims', {dim:sum(x['dimension']==dim for x in cases)for dim in sorted(set(x['dimension']for x in cases))}, 'nonzero',[(x['param'],x['dimension'])for x in cases if x['dimension']],flush=True)
 stats.append({'state':i,'dimension':d,'cases':cases})
(b/'discovery/quartic_slices.json').write_text(json.dumps(stats,indent=2))
