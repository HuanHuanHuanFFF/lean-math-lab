import math,json,itertools
from pathlib import Path
from source_probe import tab,optimize
ROOT=Path(__file__).resolve().parents[1]

def evalseed(p,P,a,q,Q,b,c,d,L):
 z=(a*P-b*Q)/(a*P);s=c/d
 if not 0<z<1/s:return None
 # stable positive roots for the two critical points
 radical=math.sqrt(s*s*z*z+4-4*z)
 u1=(s*(2-z)-radical)/(2*(1-z)*(s+1))
 u2=2/(s*z+2+radical)
 if not 0<u1<1 or not 0<u2<1:return None
 la=(s+1)*math.log(s+1)-(s-1)*math.log(s-1)
 lq=la+(s-1)*math.log(u1)+math.log1p(-u1)+math.log(1-u1+z*u1)
 le=la+math.log(u2)+math.log1p(-u2)+(s-1)*math.log1p(-z*u2)
 o3=(s-1)*math.log(P)+math.log(L)-math.log(a)-s*math.log(b)-lq
 o4=s*math.log(min(P,Q))+math.log(L)-(s-1)*math.log(a*P)-2*math.log(a*P-b*Q)-le
 if o3<=0 or o4<=0:return None
 return o4/(s*math.log(max(P,Q))+o4),o3,o4

def runpair(p,q,N=10**15,cof=20):
 A=[];B=[];P=p
 while P<=N:A.append(P);P*=p
 Q=q
 while Q<=N:B.append(Q);Q*=q
 best=None;cnt=0
 for k,P in enumerate(A,1):
  for l,Q in enumerate(B,1):
   if P>cof*Q or Q>cof*P:continue
   cand=set()
   for a in range(1,cof+1):
    for b in [a*P//Q,a*P//Q+1]:
     if 1<=b<=cof and math.gcd(a,b)==1:cand.add((a,b))
   for a,b in cand:
    if a*P==b*Q:continue
    if a*P>b*Q:pp,PP,aa,qq,QQ,bb=p,P,a,q,Q,b;kk,ll=k,l
    else:pp,PP,aa,qq,QQ,bb=q,Q,b,p,P,a;kk,ll=l,k
    # skip seeds with hopeless D, even with the most optimistic gamma.
    if (aa*PP-bb*QQ)**2>min(P,Q)**2:continue
    cnt+=1
    for c,d,L,m0 in tab:
     z=evalseed(pp,PP,aa,qq,QQ,bb,c,d,L)
     if z and (best is None or z[0]>best['lambda']):
      best=dict(pair=[p,q],seed=[pp,kk,aa,qq,ll,bb],P=PP,Q=QQ,D0=aa*PP-bb*QQ,c=c,d=d,L1=L,m0=m0,**{'lambda':z[0]},logO3=z[1],logO4=z[2])
 return dict(best=best,seed_count=cnt)
if __name__=='__main__':
 import sys,time
 ps=[2,3,5,7,11,13,17,19,23] if '--extended' in sys.argv else [2,3,5,7,11,13]
 rows=[]
 for p,q in itertools.combinations(ps,2):
  t0=time.time();x=runpair(p,q);rows.append(x);print(p,q,x['best'],round(time.time()-t0,2),flush=True)
  (ROOT/'outputs/seed_probe.json').write_text(json.dumps(dict(status='FLOATING FINITE DIAGNOSTIC',rows=rows),indent=2))
