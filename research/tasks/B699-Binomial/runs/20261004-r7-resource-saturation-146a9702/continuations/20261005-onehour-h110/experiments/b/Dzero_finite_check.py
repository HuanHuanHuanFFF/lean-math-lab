"""Exact transport and safe one-variable coprimality certificate for the D=0 boundary."""
from pathlib import Path
import sys,json,time
old=Path('research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261004-onehour/experiments/b');sys.path.insert(0,str(old));from exact_fiber import source
rs,fs,gs,prov=source();u,y,r=rs.u,rs.y,rs.r;out=Path(__file__).parent;aa=8*u*u*y*y;bb=6*(u-1)**2*(y-1)**2;ap=[rs.R.one];bp=[rs.R.one];st=time.monotonic()
for k in range(1,10):ap.append(ap[-1]*aa);bp.append(bp[-1]*bb)
co=lambda F,k:rs.R.from_dict({(i,j,0):c for (i,j,z),c in F.items() if z==k})
transport={};polys={}
for name in ['P5','V0']:
 F=fs[name];d=max(e[2] for e in F);raw=sum((co(F,k)*bp[k]*ap[d-k] for k in range(d+1)),rs.R.zero);v=raw;U=rs.R.one;ps={}
 for n,g in [('u',u),('y',y),('um',u-1),('ym',y-1)]:
  k=0
  while True:
   q,rem=v.div(g)
   if rem:break
   v=q;U*=g;k+=1
  ps[n]=k
 assert U*v==raw;polys[name]=v;transport[name]={'r_degree':d,'unit_powers':ps,'polynomial':[[list(e[:2]),str(c)] for e,c in sorted(v.items())],'stats':rs.stats(v)}
PD=polys['P5'];VD=polys['V0'];const_u=rs.R.from_dict({e:c for e,c in PD.items() if e[0]==0});assert const_u==-5598720*(y-1)**12
at_y1={}
for (i,j,k),c in PD.items():at_y1[i]=at_y1.get(i,0)+int(c)
at_y1={i:c for i,c in at_y1.items() if c};assert at_y1
p=32003
assert all(p%d for d in range(2,179))
def spec(F):
 out=[0]*(max(e[0] for e in F)+1)
 for (i,j,k),c in F.items():out[i]=(out[i]+int(c)*pow(2,j,p))%p
 assert out[-1];return out
def trim(a):
 while a and a[-1]==0:a.pop()
 return a
def rem(a,b):
 a=a[:];iv=pow(b[-1],-1,p)
 while len(a)>=len(b):
  k=len(a)-len(b);z=a[-1]*iv%p
  for j,c in enumerate(b):a[k+j]=(a[k+j]-z*c)%p
  trim(a)
 return a
f,g=spec(PD),spec(VD);seq=[f,g];a,b=f,g
while b:a,b=b,rem(a,b);seq.append(b)
assert len(a)==1 and a[0];certificate={'claim':'On u(u-1)y(y-1)!=0, the D=0 common-zero set of P5 and V0 is finite; no exhaustive point list and no claim that it is empty.','source_provenance':prov,'aD':'8*u^2*y^2','bD':'6*(u-1)^2*(y-1)^2','transport':transport,'P5_content_certificate':{'u0_coefficient':'-5598720*(y-1)^12','at_y1':[[i,str(c)] for i,c in sorted(at_y1.items())]},'coprime_certificate':{'prime':p,'y_value':2,'preserved_u_degrees':[len(f)-1,len(g)-1],'euclid_remainders':seq,'gcd_degree':0},'seconds':time.monotonic()-st};(out/'Dzero-finite-certificate.json').write_text(json.dumps(certificate,separators=(',',':'))+'\n',encoding='utf-8');print({'status':'AUTHOR_EXACT_DZERO_FINITE_PASS','degrees':[len(f)-1,len(g)-1],'steps':len(seq),'seconds':certificate['seconds']})
