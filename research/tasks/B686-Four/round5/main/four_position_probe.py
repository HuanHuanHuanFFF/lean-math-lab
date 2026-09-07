"""Select a four-position auxiliary with rigorous rational height diagnostics."""
from pathlib import Path
from fractions import Fraction as Q
from math import comb
from decimal import Decimal, getcontext
import json
BASE=Path(__file__).resolve().parent
j=json.loads((BASE/'dimension-audit.json').read_text());r=next(r for r in j['rows'] if r['slots']==[1,2,4,5])
G=[{(a,b):c for a,b,c in g['terms']} for g in r['auxiliaries']]
D=20000;lo=Q(83894387,10000000);hi=Q(83894390,10000000)
getcontext().prec=70;c=3/(Decimal(4)**(Decimal(1)/5)-1)-1
leading=[sum(Decimal(v)*c**a for (a,b),v in g.items() if a+b==10) for g in G]
def combine(A,B):return {m:A*G[0].get(m,0)+B*G[1].get(m,0) for m in G[0].keys()|G[1].keys() if A*G[0].get(m,0)+B*G[1].get(m,0)}
def bounds(g):
 low=Q(0);high=Q(0);groups=[]
 for j in range(11):
  group=[(a,Q(c)) for (a,b),c in g.items() if a+b==j];degree=max((a for a,c in group),default=0)
  power=[sum(c*comb(a,r)*lo**(a-r)*(hi-lo)**r for a,c in group if a>=r) for r in range(degree+1)]
  bern=[sum(power[r]*Q(comb(k,r),comb(degree,r)) for r in range(k+1)) for k in range(degree+1)]
  l,u=min(bern),max(bern);e=10-j
  low+=(min(Q(0),l)/D**e if e else l);high+=(max(Q(0),u)/D**e if e else u)
  groups.append(dict(degree=j,bernstein=[str(v) for v in bern]))
 return low,high,groups
candidates=[]
for B in range(1,501):
 A=-round(B*leading[1]/leading[0]);v=A*leading[0]+B*leading[1]
 if abs(v)<18000:candidates.append((max(abs(A),abs(B)),A,B,v))
valid=[]
for _,A,B,v in sorted(candidates)[:25]:
 g=combine(A,B);l,u,groups=bounds(g)
 if -D<l<u<0 or 0<l<u<D:
  valid.append(dict(A=A,B=B,approx_main=str(v),lower=str(l),upper=str(u),display=[float(l),float(u)],terms=[[a,b,c] for (a,b),c in sorted(g.items())],groups=groups))
result=dict(evidence='exact Bernstein rectangle computation; no Lean contact or original theorem yet',D=D,slots=[1,2,4,5],degree=10,contact_order=11,valid=valid)
(BASE/'four-position-probe.json').write_text(json.dumps(result,indent=2)+'\n')
print('valid',len(valid))
for v in valid[:5]:print(v['A'],v['B'],v['display'])
