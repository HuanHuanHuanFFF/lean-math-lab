import math,json
from pathlib import Path

def v(a,p):
 r=0
 while a%p==0:a//=p;r+=1
 return r

def smallparts(n):
 return [3 if v(n-1,3)==1 else 1,3 if v((n-2)//2,3)==1 else 1]
rows=[];count=0
for la,mu in [(1,1),(1,3),(3,1)]:
 A=la**3*mu**2
 params=[]
 # eps<g; u(g²-eps²)<=A
 for g in range(2,(A+1)//2+1):
  for E in range(1,g,2):
   for u in range(1,A//(g*g-E*E)+1,2):
    for z in range(1,u+1):params.append((g,E,u,z,'strict'))
 # eps=g => g=eps=1; u<=A is finite bottom
 for u in range(1,A+1,2):
  for z in range(1,u+1):params.append((1,1,u,z,'diagonal-small'))
 for g,E,u,z,kind in params:
  count+=1
  if (2*u*g*g+E)%(la*mu):continue
  H=(2*u*g*g+E)//(la*mu)
  if (z*H*H+la)%(u*g*g):continue
  C=(z*H*H+la)//(u*g*g)
  if C<5:continue
  n=2*mu*C*H+2
  dnum=la*mu*mu*C*C-z*(n-1);dden=la*g*g
  if dnum<=0 or dnum%dden:continue
  dd=dnum//dden;delta=math.isqrt(dd)
  if delta*delta!=dd or delta%2==0:continue
  j=(mu*C-g*delta)*H+1
  if not(4<=j<n/2) or n%4:continue
  row=dict(kind=kind,la=la,mu=mu,g=g,eps=E,u=u,z=z,H=H,C=C,n=n,j=j,delta=delta)
  row['actual_smallparts']=smallparts(n)
  row['actual_g']=math.gcd(n,j)
  alpha=n//g
  odd=alpha>>v(alpha,2)
  row['alpha_shape']=odd in [1,3] and (odd!=3 or(v(n,3)==1 and g%3!=0))
  row['pass_required']=row['actual_smallparts']==[la,mu] and row['actual_g']==g and row['alpha_shape']
  rows.append(row)
print('finite parameter count',count,'terminals',len(rows),'survivors',sum(r['pass_required'] for r in rows))
for r in rows:print(r)
Path(__file__).resolve().parents[1].joinpath('outputs/balanced_probe.json').write_text(json.dumps({'parameter_count':count,'terminals':rows,'survivors':sum(r['pass_required'] for r in rows)},indent=2))
