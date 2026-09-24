import itertools,json
from pathlib import Path
P=11
rows=[]
for l in Path('/mnt/data/next1626/outputs/diag_rows.txt').read_text().splitlines()[1:]:
 r,i,j,*z=map(int,l.split());rows.append((r,i,j,z))
def rref(A):
 A=[r[:] for r in A];n=7;k=0;piv=[]
 for j in range(n):
  rr=next((i for i in range(k,len(A)) if A[i][j]%P),None)
  if rr is None:continue
  A[k],A[rr]=A[rr],A[k];iv=pow(A[k][j],-1,P);A[k]=[x*iv%P for x in A[k]]
  for i in range(len(A)):
   if i!=k:
    c=A[i][j];A[i]=[(a-c*b)%P for a,b in zip(A[i],A[k])]
  piv.append(j);k+=1
 return A[:k],piv
ans=[]
for K in itertools.product(range(4),range(4),range(11)):
 A=[];eqs=[]
 for r,i,j,z in rows:
  t=(r-4)//2;B=(39,29,42)[t];m=(B+K[t]+1)//2;w=B+((B-K[t])%2)
  if i+2*j<w or i+j<m: A.append(z);eqs.append((r,i,j))
 R,piv=rref(A);ans.append(dict(K=K,dim=7-len(piv),eqs=eqs,rref=R))
from collections import Counter
print('dims',Counter(a['dim'] for a in ans))
print('nonzero',[(a['K'],a['dim']) for a in ans if a['dim']])
Path('/mnt/data/next1626/outputs/kappa_slices.json').write_text(json.dumps(ans,indent=2))
