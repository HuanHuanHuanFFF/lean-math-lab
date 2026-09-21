import math,time,json
out=[]
start=time.time()
for Q in range(3,50001,2):
 S=Q**3-1
 for v in range(2,Q,2):
  if S%v: continue
  D=S//v
  sq=Q**4+(Q-v)*(Q*D+1)
  root=math.isqrt(sq)
  if root*root!=sq:continue
  num=Q**2+root; den=Q-v
  if num%den: continue
  nu=num//den
  if (nu*nu-D)%(Q*Q): continue
  h=(nu*nu-D)//(Q*Q)
  P=Q+h*v
  assert v*nu*nu==P*Q*Q-1 and h*Q==P+2*nu
  out.append(dict(Q=Q,v=v,D=D,nu=nu,h=h,P=P,n=P*Q*nu+2))
print(json.dumps(dict(elapsed=time.time()-start,solutions=out),indent=2))
