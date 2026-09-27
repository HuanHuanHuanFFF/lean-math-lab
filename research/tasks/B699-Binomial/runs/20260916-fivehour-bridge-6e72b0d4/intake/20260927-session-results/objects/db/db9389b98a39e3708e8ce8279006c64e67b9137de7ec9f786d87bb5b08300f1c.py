from math import gcd,isqrt,comb

def fac(n):
 out={};p=2
 while p*p<=n:
  while n%p==0: out[p]=out.get(p,0)+1;n//=p
  p+=1 if p==2 else 2
 if n>1:out[n]=out.get(n,0)+1
 return out

def digits(n,b):
 a=[]
 while n:a.append(n%b);n//=b
 return a or [0]

def lucas(n,j,p):
 return all(x<=y for x,y in zip(digits(j,p)+[0]*len(digits(n,p)),digits(n,p)))

P=1093;Q=19683;n=P*Q+1
j0=P*pow(P,-1,Q);j=min(j0,n-j0)
print('Boundary',P,fac(P),Q,fac(Q),n,j,'factors n',fac(n),'n2',fac(n-2))
print('passes',lucas(n,j,1093),lucas(n,j,3),'Q digits',digits(Q,P))
eps=1 if j%Q==1 else -1;Y=j//Q;d=Q%P;z=(d*Y+eps)//P;k=Q//P
r=[k-z*z-d*z,k-z*z+d*z,k-z*z+3*d*z-2*d*d]
R=abs(r[0]*r[1]*r[2]);bound=(isqrt(d*d+4*k*(6*R+1))-d)//(2*k)
print('Y,eps,z,k,d,r,R,Pmax',Y,eps,z,k,d,r,R,bound)
# enumerate finite necessary parameter states
states=[]
for k in range(1,129):
 for d in range(3,k//2+1,2):
  if k%d or k//d%2 or len(fac(d))!=1:continue
  for z in range(1,(d-1)//2+1):
   if gcd(d,z)>1:continue
   r=[k-z*z-d*z,k-z*z+d*z,k-z*z+3*d*z-2*d*d]
   R=abs(r[0]*r[1]*r[2])
   assert R and all(abs(a)<=k*k for a in r)
   b=(isqrt(d*d+4*k*(6*R+1))-d)//(2*k)
   for eps in [-1,1]:
    x0=z-eps*(k//d)
    if 0<=x0<=d:states.append((k,d,z,eps,b,b>k*(k+1)))
print('states',len(states),'above lifting gate',sum(s[-1] for s in states),'maxbound',max(s[-2] for s in states))
print('first remaining',next((s for s in states if s[-1]),None))
pp=[]
for v in range(5,701,2):
 f=fac(v)
 if len(f)==1:
  p,a=next(iter(f.items()));pp.append((v,p,a))
counts={'pairs':0,'weak':0,'cubic':0,'pq_pass_weak':0,'weak_mod4':0,'weak_repunit':0}
rems=[]
for P,p,a in pp:
 for Q,q,b in pp:
  if Q<=P or p==q:continue
  counts['pairs']+=1
  ds=digits(Q,P);H=max(ds)
  if P>H*(H+1):
   counts['weak']+=1
   n=P*Q+1;j0=P*pow(P,-1,Q);j=min(j0,n-j0)
   if n%4==2:counts['weak_mod4']+=1
   if lucas(n,j,p) and lucas(n,j,q):
    counts['pq_pass_weak']+=1;rems.append((P,Q,n,j,ds))
  if H**3<=P:counts['cubic']+=1
print('counts',counts,'remainders',rems)
# Exact recovery of q^T = (k/d) P + 1 after the resultant bound.
recovered=[];lattice=[];pk=0
for k,d,z,eps,Pmax,surv in states:
 if not surv:continue
 q=next(iter(fac(d)));h=k//d;Plo=k*(k+1)+1
 T=1;qt=q
 while qt<=h*Pmax+1:
  if qt>=h*Plo+1 and (qt-1)%h==0:
   P=(qt-1)//h
   lattice.append((k,d,z,eps,P,T))
   f=fac(P)
   if len(f)==1 and q not in f:
    pk+=1
    if (P*z-eps)%d==0:
     Y=(P*z-eps)//d
     if 1<=Y<=(P-1)//2:
      Q=d*qt;n=P*Q+1;t=1 if eps==1 else 0;j=Q*Y+t
      recovered.append((k,d,z,eps,P,Q,n,j,f,lucas(n,j,next(iter(f))),lucas(n,j,q)))
  T+=1;qt*=q
print('lattice recovery counts',len(lattice),pk,len(recovered))
print('lattice examples',lattice[:8]);print('recovered',recovered[:8])
# Stronger, degree-free constant-digit times height criterion.
st={'gate_rows':0,'sqrt_gate_rows':0,'two_base_survivors':[],'non_common_failures':[]}
for P,p,a in pp:
 for Q,q,b in pp:
  if Q<=P or p==q:continue
  ds=digits(Q,P);H=max(ds);d=ds[0]
  if P>=H*H:st['sqrt_gate_rows']+=1
  if P>d*H:
   st['gate_rows']+=1
   n=P*Q+1;j0=P*pow(P,-1,Q);j=min(j0,n-j0)
   if lucas(n,j,p) and lucas(n,j,q):
    st['two_base_survivors'].append((P,Q,n,j,ds))
   ff={}
   for x in [n,n-1,n-2]:
    for r,e in fac(x).items():ff[r]=ff.get(r,0)+e
   ff[2]=ff.get(2,0)-1;ff[3]=ff.get(3,0)-1
   if not any(r>=3 and e>0 and not lucas(n,j,r) for r,e in ff.items()):
    st['non_common_failures'].append((P,Q,n,j))
print('STRONG GATE',st)
