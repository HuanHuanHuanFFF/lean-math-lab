import json,pathlib,time
W=pathlib.Path('/mnt/data/r4_work');SRC=W/'adopted_r3/B699-ProB-REG3-COMPAT-20261002-R3';gen=json.loads((SRC/'certificates/generic.json').read_text());bf=json.loads((W/'branch_factors.json').read_text());B=[z for z in bf['KN']['factors'] if z['degrees']==[9,10]][0]['terms']
branches={'B9':(11,B),'J':(7,[[[2,0],1],[[1,2],1],[[1,1],-3],[[0,1],1]]),'A5':(7,[[[3,1],8],[[2,3],-5],[[2,2],15],[[2,1],-15],[[2,0],5],[[1,3],10],[[1,2],-30],[[1,1],30],[[1,0],-10],[[0,3],-5],[[0,2],15],[[0,1],-15],[[0,0],5]])}
out={}
for name,(p,qterms) in branches.items():
 degree=max(m[0] for m,c in qterms);q=[0]*(degree+1)
 for (u,y),c in qterms:q[u]=(q[u]+int(c)*pow(2,y,p))%p
 iv=pow(q[-1],-1,p);q=[z*iv%p for z in q];zero=(0,)*degree;one=(1,)+(0,)*(degree-1)
 def add(a,b):return tuple((x+y)%p for x,y in zip(a,b))
 def neg(a):return tuple(-x%p for x in a)
 def mul(a,b):
  t=[0]*(2*degree-1)
  for i,x in enumerate(a):
   for j,y in enumerate(b):t[i+j]=(t[i+j]+x*y)%p
  for k in range(len(t)-1,degree-1,-1):
   z=t[k]
   for j in range(degree):t[k-degree+j]=(t[k-degree+j]-z*q[j])%p
  return tuple(t[:degree])
 def power(a,k):
  z=one
  while k:
   if k&1:z=mul(z,a)
   a=mul(a,a);k//=2
  return z
 def inv(a):
  if a==zero:raise ZeroDivisionError()
  b=power(a,p**degree-2);assert mul(a,b)==one;return b
 U=tuple([0,1]+[0]*(degree-2));powers=[power(U,j) for j in range(50)]
 def spec(ts):
  arr=[zero]*(max(m[2] for m,c in ts)+1)
  for (u,y,r,l),c in ts:
   co=int(c)*pow(2,y,p)%p;arr[r]=add(arr[r],tuple(co*z%p for z in powers[u]))
  return trim(arr)
 def trim(a):
  while a and a[-1]==zero:a.pop()
  return a
 def polyrem(a,b):
  a=a[:];iv=inv(b[-1])
  for k in range(len(a)-len(b),-1,-1):
   c=mul(a[k+len(b)-1],iv)
   for j,bj in enumerate(b):a[k+j]=add(a[k+j],neg(mul(c,bj)))
  return trim(a[:len(b)-1])
 def gcd(a,b):
  while b:a,b=b,polyrem(a,b)
  if a:iv=inv(a[-1]);a=[mul(x,iv) for x in a]
  return a
 polynomials=[spec(gen['B5'])]+[spec(gen['low'][str(i)]['stripped']) for i in range(4,-1,-1)]
 g=polynomials[0];print(name,'p',p,'field_degree',degree,'P/G degrees',[len(f)-1 for f in polynomials],flush=True)
 stages=[]
 for i,f in zip(range(4,-1,-1),polynomials[1:]):
  g=gcd(g,f);print(' after G'+str(i),'gcd degree',len(g)-1,flush=True);stages.append({'through':i,'gcd':g})
 N=spec(gen['N']);print('N',N,'gcd N',gcd(g,N),flush=True)
 out[name]={'prime':p,'base_y':2,'modulus_ascending':q,'degrees':[len(f)-1 for f in polynomials],'specialized_polynomials':polynomials,'stages':stages,'N':N}
(W/'branch_gcd.json').write_text(json.dumps(out,separators=(',',':')))
