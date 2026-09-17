import json,math,time,sys
from pathlib import Path
import numpy as np
BASE=Path(__file__).parent

def prime(p):return p>=2 and all(p%k for k in range(2,math.isqrt(p)+1))
def rat(a,M):
 if not a:return (0,1)
 B=math.isqrt(M//2);r0,r1=M,a;t0,t1=0,1
 while abs(r1)>B:
  q=r0//r1;r0,r1=r1,r0-q*r1;t0,t1=t1,t0-q*t1
 if t1<0:r1,t1=-r1,-t1
 if not (0<t1<=B and math.gcd(r1,t1)==1 and (r1-a*t1)%M==0):return None
 return r1,t1

def kernel(rows,nc,p):
 A=np.array([[v%p for v in row]for row in rows],dtype=np.int64);nr=len(rows);pivs=[];r=0
 for c in range(nc):
  ii=np.flatnonzero(A[r:,c])
  if len(ii)==0:continue
  q=r+int(ii[0]);A[[r,q]]=A[[q,r]];A[r,c:]=(A[r,c:]*pow(int(A[r,c]),-1,p))%p
  ii=np.flatnonzero(A[r+1:,c])+r+1
  A[ii,c:]=(A[ii,c:]-A[ii,c,None]*A[r,None,c:])%p
  pivs.append(c);r+=1
  if r==nr:break
 pset=set(pivs);free=[c for c in range(nc)if c not in pset]
 V=np.zeros((nc,len(free)),dtype=np.int64)
 for idx,c in enumerate(free):V[c,idx]=1
 for row,c in reversed(list(enumerate(pivs))):V[c,:]=(-A[row,c+1:]@V[c+1:,:])%p
 return free,V.T.tolist()

def run(idx):
 rec=json.loads((BASE/'peeled_conic.json').read_text())[idx];D=rec['reducedD'];pts=rec['points'];m01=next(w for x,y,w in pts if(x,y)==(0,1));m10=next(w for x,y,w in pts if(x,y)==(1,0));exps=[(a,b)for a in range(D-m10+1)for b in range(D-m01+1)if a+b<=D]
 rows=[]
 for x,y,w in pts:
  h=x+y-1
  if h==0:continue
  for u in range(w):
   for v in range(w-u):rows.append([math.comb(a,u)*math.comb(b,v)*x**(a-u)*y**(b-v)*h**(D-a-b)if a>=u and b>=v else 0 for a,b in exps])
 print('START',idx,'D',D,'matrix',len(rows),len(exps),flush=True)
 st=time.monotonic();p=1000003;M=1;VC=None;free0=None;mods=[]
 for z in range(1,101):
  while not prime(p):p+=2
  free,V=kernel(rows,len(exps),p)
  if free0 is None:free0=free;VC=[[0]*len(exps)for _ in free]
  if free0!=free:print('badprime',p,len(free),flush=True);p+=2;continue
  im=pow(M,-1,p)
  VC=[[a+M*((b-a)*im%p)for a,b in zip(c,v)]for c,v in zip(VC,V)];M*=p;mods.append(p);p+=2
  if z%3:continue
  print('CRT',idx,z,'bits',M.bit_length(),'elapsed',round(time.monotonic()-st,1),flush=True)
  recovered=[]
  for vcrt in VC:
   fs=[rat(a,M)for a in vcrt]
   if any(f is None for f in fs):break
   L=math.lcm(*(b for a,b in fs));vec=[a*(L//b)for a,b in fs];gc=math.gcd(*vec);vec=[v//gc for v in vec]
   if not all(sum(a*b for a,b in zip(row,vec))==0 for row in rows):break
   recovered.append(vec)
  if len(recovered)==len(VC):
   result=dict(record=rec,exps=exps,basis=recovered,free=free0,moduli=mods,seconds=time.monotonic()-st,rows=len(rows))
   (BASE/f'slot-kernel-{idx}.json').write_text(json.dumps(result,separators=(',',':')))
   print('RECOVERED',idx,'basis',len(recovered),'bits',[max(abs(a).bit_length()for a in v)for v in recovered],'seconds',result['seconds'],flush=True);return
 print('NOT_RECOVERED',idx,flush=True)
if __name__=='__main__':run(int(sys.argv[1]))
