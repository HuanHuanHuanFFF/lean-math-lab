"""Finite, floating-point design; none of these rows is a theorem certificate."""
from pathlib import Path
import numpy as np
from scipy.special import digamma
import math,json,time,argparse,sys
ROOT=Path(__file__).resolve().parents[1];SRC=ROOT/'adopted/pro-a'
sys.path.insert(0,str(SRC/'code/vendor'))
from probe_weighted_asymmetric import nondominated,solve

def content(tr):
 S=sum(tr);ends=np.unique(np.concatenate([np.arange(k+1,dtype=float)/k for k in (*tr,S)]))
 lo=ends[:-1];hi=ends[1:];mid=(lo+hi)/2
 ok=np.floor(S*mid+1e-9)-sum(np.floor(v*mid+1e-9) for v in tr)>1.5
 return float(np.sum(digamma(hi[ok])-digamma(lo[ok])))
def degrees(n):
 out=[];cache={}
 for e in range(1,n+1):
  for d in range(1,n+1):
   for f in range(1,n+1):
    if math.gcd(math.gcd(e,d),f)>1:continue
    k=tuple(sorted((e,d,f)))
    if k not in cache:cache[k]=content(k)
    out.append((e,d,f,cache[k]))
 return np.array(out)
def seeds(p,q,kmax,amax):
 out=set()
 for k in range(1,kmax+1):
  P=p**k
  for l in range(1,kmax+1):
   Q=q**l
   for a in range(1,amax+1):
    b0=a*P//Q
    for b in (b0,b0+1):
     if not 1<=b<=amax or math.gcd(a,b)>1 or a%p==0 or b%q==0:continue
     D=a*P-b*Q
     if D>0:s=(p,q,k,l,a,b)
     elif D<0:s=(q,p,l,k,b,a)
     else:continue
     pp,qq,kk,ll,aa,bb=s
     if 0<aa*pp**kk-bb*qq**ll<aa*pp**kk/2:out.add(s)
 return sorted(out)
def main():
 ap=argparse.ArgumentParser();ap.add_argument('--degree',type=int,default=20);ap.add_argument('--kmax',type=int,default=30);ap.add_argument('--amax',type=int,default=64);ap.add_argument('--pairs',default='2,3;2,5;2,7;3,5;3,7;5,7');ap.add_argument('--tag',default='moderate');a=ap.parse_args();st=time.monotonic()
 gr=degrees(a.degree);print('degrees',len(gr),flush=True);E,D,F,G=gr.T;C=D+F;S=E+C;mi=np.minimum(E,D);ma=np.maximum(E,D)
 alpha=S*np.log(S)-E*np.log(E)-D*np.log(D)-F*np.log(F)
 allrows=[];records=[]
 for pp,qq in [tuple(map(int,z.split(','))) for z in a.pairs.split(';')]:
  ss=seeds(pp,qq,a.kmax,a.amax);front=[];best=None;valid=0
  for sn,seed in enumerate(ss):
   if sn%400==0:
    (ROOT/'evidence'/f'checkpoint_{a.tag}.json').write_text(json.dumps(dict(status='INCOMPLETE_FLOAT',pair=[pp,qq],processed=sn,total=len(ss),best=best,frontiers=front)))
   p,q,k,l,aa,bb=seed;P=p**k;Q=q**l;gap=aa*P-bb*Q;z=gap/(aa*P);h=1-z
   qb=F*(1+h)+D+E*h;qt=2*F/(qb+np.sqrt(qb*qb-4*h*S*F))
   eb=E*(1+z)+D+F*z;et=2*E/(eb+np.sqrt(eb*eb-4*z*S*E))
   lq=alpha+F*np.log(qt)+D*np.log1p(-qt)+E*np.log1p(-h*qt)
   le=alpha+E*np.log(et)+D*np.log1p(-et)+F*np.log1p(-z*et)
   O=F*math.log(P)-ma*math.log(aa)-C*math.log(bb)-lq+G
   T=E*math.log(P)+C*math.log(Q)-(C-mi)*math.log(aa)-(E+D)*math.log(gap)-le+G
   ix=np.where((O>1e-7)&(T>np.maximum((E+F)*math.log(P),C*math.log(Q))))[0]
   if not len(ix):continue
   valid+=len(ix);wp=1-(E[ix]+F[ix])*math.log(P)/T[ix];wq=1-C[ix]*math.log(Q)/T[ix]
   def make(jj,wa,wb):
    return dict(p=p,q=q,k0=k,l0=l,a=aa,b=bb,D0=gap,e=int(E[jj]),d=int(D[jj]),f=int(F[jj]),g_asym=float(G[jj]),display_T=float(T[jj]),display_O=float(O[jj]),wp=wa,wq=wb)
   j=int(np.argmax(np.minimum(wp,wq)));row=make(int(ix[j]),float(wp[j]),float(wq[j]))
   if best is None or min(row['wp'],row['wq'])>min(best['wp'],best['wq']):best=row
   order=np.lexsort((-wq,-wp));maxb=-1;rr=[]
   for t in order:
    if wq[t]<=maxb:continue
    maxb=wq[t];x=make(int(ix[t]),int(wp[t]*10000)-2,int(wq[t]*10000)-2)
    if min(x['wp'],x['wq'])>0:rr.append(x)
   front=[r[4] for r in nondominated(front+rr)]
  allrows+=front;record=dict(pair=[pp,qq],seeds=len(ss),degrees=len(gr),valid=valid,best_symmetric=best,front_count=len(front));records.append(record)
  (ROOT/'evidence'/f'pair_{a.tag}_{pp}_{qq}.json').write_text(json.dumps(dict(status='FLOAT_DISCOVERY_ONLY',record=record,frontiers=front),indent=2)+'\n');print(json.dumps(record),flush=True)
 baseline=json.loads((SRC/'input/new_cut_inputs.json').read_text())['cuts']+json.loads((SRC/'input/i12_cut_inputs.json').read_text())['cuts'];profiles=[]
 for i in (8,9,10):
  ps=[p for p in (2,3,5,7) if p<i];es=nondominated([r for r in baseline+allrows if max(r['p'],r['q'])<i]);opts=[]
  for s in range((i+1)//2,i):
   w=[2*s-j for j in range(i)];base=10000*(sum(w)-s*(s+1)-sum(w[:len(ps)]))
   z=solve(ps,es,lambda z:sum(ww*zz for ww,zz in zip(w[:len(ps)],sorted(z))));opts.append(dict(s=s,net=base+z['min'],**z))
  b=max(opts,key=lambda x:x['net']);profiles.append(dict(i=i,best=b,edges=len(es)));print('profile',i,b,flush=True)
 obj=dict(status='ASYMPTOTIC_FLOAT_DESIGN_ONLY',arguments=vars(a),records=records,frontiers=allrows,profiles=profiles,seconds=time.monotonic()-st)
 (ROOT/'evidence'/f'probe_{a.tag}.json').write_text(json.dumps(obj,indent=2)+'\n');print('seconds',obj['seconds'],flush=True)
if __name__=='__main__':main()
