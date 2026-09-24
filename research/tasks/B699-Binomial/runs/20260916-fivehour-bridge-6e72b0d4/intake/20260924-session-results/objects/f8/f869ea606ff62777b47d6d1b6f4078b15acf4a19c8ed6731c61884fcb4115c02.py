import numpy as np, math, random,json,time
from functools import lru_cache
PR=1009
@lru_cache(None)
def data(d):
 mons=[(i,j) for i in range(d+1) for j in range(i+1) if i+j<=d]
 mats={}
 for r in range(1,6):
  rows=[];orders=[]
  for b in range(r//2+1):
   for h in range(12):
    for u in range(h+1):
     v=h-u
     if 2*b==r and u<v:continue
     vals=[]
     for i,j in mons:
      val=0
      if i>=u and j>=v:val=math.comb(i,u)*math.comb(j,v)*pow(b,i-u,PR)*pow(r-b,j-v,PR)
      if i!=j and j>=u and i>=v:val+=math.comb(j,u)*math.comb(i,v)*pow(b,j-u,PR)*pow(r-b,i-v,PR)
      vals.append(val%PR)
     rows.append(vals);orders.append(h)
  mats[r]=(np.array(rows,dtype=np.int64),np.array(orders))
 return mons,mats

def nullity(d,w):
 mons,mats=data(d)
 cols=[i for i,(x,y) in enumerate(mons) if x+y>=w[0]]
 mat=np.concatenate([mats[r][0][mats[r][1]<w[r]][:,cols] for r in range(1,6)])%PR
 row=0
 for col in range(len(cols)):
  nz=np.nonzero(mat[row:,col])[0]
  if not len(nz):continue
  v=row+nz[0];mat[[row,v]]=mat[[v,row]]
  mat[row,col:]=mat[row,col:]*pow(int(mat[row,col]),-1,PR)%PR
  nz2=np.nonzero(mat[row+1:,col])[0]+row+1
  if len(nz2):mat[nz2,col:] = (mat[nz2,col:]-mat[nz2,col,None]*mat[None,row,col:])%PR
  row+=1
  if row==len(cols) or row==len(mat):break
 return len(cols)-row
if __name__=='__main__':
 random.seed(22);found=[];st=time.time()
 # Search favorable w0,w1 and near-minimal degrees with sum weights2..5 = d-delta.
 tested=set()
 for it in range(2500):
  d=random.randint(6,24)
  t=random.randint(1,8);w1=random.randint(1,8)
  delta=random.randrange(max(1,int(min(t,w1)*.285)+1))
  # impose nonuniform weights with sum d-delta
  ws=[random.randint(1,9) for _ in range(3)]
  w5=d-delta-sum(ws)
  if not 1<=w5<=10:continue
  w=(t,w1,*ws,w5)
  if (d,w) in tested:continue
  tested.add((d,w))
  nu=nullity(d,w)
  if nu:
   found.append((d,w,nu));print('FOUND',found[-1],flush=True)
  if len(tested)%100==0:print('tested',len(tested),'time',round(time.time()-st,1),flush=True)
 print(json.dumps({'tested':len(tested),'found':found}));
