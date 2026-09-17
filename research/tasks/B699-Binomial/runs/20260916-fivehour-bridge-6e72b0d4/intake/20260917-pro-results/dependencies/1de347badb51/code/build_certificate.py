"""Construct the NEW finite-parameter certificate; never constructs a big kernel."""
from pathlib import Path
from fractions import Fraction as Q
from itertools import product
import json
ROOT=Path(__file__).resolve().parents[1]
W=[0,55,55,137,110,91,78,68,61]
MU=[27,24,19,13,0,0,0,0,0]
NU=[0,0,0,20,16,13,11,10,9]
D=305; BMAX=152

def point_records():
 out=[]
 for r in range(1,9):
  for s in range(r//2+1):
   m=W[r]-MU[s]-MU[r-s]-NU[r]
   ct=m*(m+1)//2 if s*2!=r else (m+1)**2//4
   out.append(dict(r=r,s=s,m=m,diagonal=(s*2==r),conditions=ct))
 return out

def interpolate_at_345(values):
 # Explicit Lagrange interpolation, independent of the receiver's finite differences.
 out=[Q(0)]*3
 for i,r in enumerate([3,4,5]):
  other=[v for v in [3,4,5] if v!=r]
  den=(r-other[0])*(r-other[1]);v=Q(values[i],den)
  out[0]+=v*other[0]*other[1];out[1]-=v*sum(other);out[2]+=v
 return out

def encode(xs):return [[x.numerator,x.denominator] for x in xs]

def certificate():
 points=point_records();rows=[]
 for r in range(1,9):
  count=sum(p['conditions'] for p in points if p['r']==r)
  h=((r+1)**D).bit_length()
  rows.append(dict(r=r,conditions=count,height_bits=h))
 columns=sum(D-2*b+1 for b in range(BMAX+1))
 R=sum(x['conditions'] for x in rows);K=sum(x['conditions']*(x['height_bits']+17) for x in rows)
 bb=K//(columns-R)+1
 cases=[]
 for ss in product(range(2),range(3),range(3)):
  vals=[s*(r-s) for r,s in zip([3,4,5],ss)]
  p=interpolate_at_345(vals)
  hits={str(r):[s for s in range(r//2+1) if sum(p[k]*r**k for k in range(3))==s*(r-s)] for r in range(3,9)}
  cases.append(dict(seed=list(ss),poly=encode(p),hits=hits,survives=all(hits.values())))
 oldmu=[27,23,19,13]+[0]*5
 forced=[W[r]-oldmu[1]-oldmu[r-1] for r in range(1,9)]
 return dict(schema='b699-common-locus-v1',old_forced_line=dict(line='U=1',degree=386,multiplicities=forced,load=sum(forced),factor_in_NX=[1,-1,1]),
             template=dict(total_degree=550,degree_G=D,X_cap=BMAX,mu=MU,nu=NU,weights=W,points=points,rows=rows,columns=columns,conditions=R,surplus=columns-R,height_sum=K,coefficient_bits=bb),
             transfer=dict(entry_bits=14000001,margin_numerator=93,margin_denominator=1000,nonzero_overhead=6072,kronecker_stride=306,kronecker_degree=46513,norm_l2_bits=8,factor_norm_bits=1290000,row_value_extra_bits=915,graph_norm_bits=1500000,graph_degree_cap=386),
             quadratic_cases=cases,classification='X=t(N-t), t in {0,1,2,3}')

if __name__=='__main__':
 out=ROOT/'evidence/new_certificate.json';out.parent.mkdir(parents=True,exist_ok=True)
 data=certificate();out.write_text(json.dumps(data,indent=2))
 print('BUILT_NEW_PARAMETER_CERTIFICATE',out.name)
