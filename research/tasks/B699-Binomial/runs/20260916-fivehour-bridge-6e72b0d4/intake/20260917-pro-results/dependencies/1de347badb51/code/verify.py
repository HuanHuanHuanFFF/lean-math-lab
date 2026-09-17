"""Exact receiver of NEW parameter obligations, NOT a big-kernel or Lean verifier."""
from fractions import Fraction as Q
from itertools import product
from pathlib import Path
import json
ROOT=Path(__file__).resolve().parents[1]

class InvalidCertificate(ValueError):pass

def require(ok,msg):
 if not ok:raise InvalidCertificate(msg)

def verify(c):
 t=c['template'];x=c['transfer'];old=c['old_forced_line']
 req=lambda ok,s:require(ok,s)
 req(c['schema']=='b699-common-locus-v1','schema')
 # Fixed-source target correspondence is deliberately explicit.
 req(t['weights']==[0,55,55,137,110,91,78,68,61],'window weights changed')
 req(t['mu']==[27,24,19,13,0,0,0,0,0],'boundary multiplicities')
 req(t['nu']==[0,0,0,20,16,13,11,10,9],'vertical multiplicities')
 req(t['degree_G']==305 and t['X_cap']==152 and t['total_degree']==550,'degree scope')
 req(old['degree']==386 and old['line']=='U=1','old degree/line')
 oms=[27,23,19,13]+[0]*5
 loads=[t['weights'][r]-oms[1]-oms[r-1] for r in range(1,9)]
 req(old['multiplicities']==loads and old['load']==sum(loads)==389,'forced line count')
 req(sum(loads)>386,'Bezout forcing')
 req(old['factor_in_NX']==[1,-1,1],'factor is X-N+1')
 req(2*sum(t['mu'])+sum(t['nu'])+t['degree_G']==550,'prefactor degree')
 # Enumeration, rather than the closed forms used in the constructor.
 basis=[(a,b) for b in range(153) for a in range(306-2*b)]
 req(len(basis)==t['columns']==23562,'column coverage')
 points=[];cond=0;row_counts=[]
 for r in range(1,9):
  cr=0
  for s in range(r//2+1):
   m=t['weights'][r]-t['mu'][s]-t['mu'][r-s]-t['nu'][r]
   req(m>0,'positive residual order')
   pairs=[(i,h) for h in range(m) for i in range(m) if i+(2 if 2*s==r else 1)*h<m]
   p=dict(r=r,s=s,m=m,diagonal=(s*2==r),conditions=len(pairs))
   points.append(p);cr+=len(pairs)
  hh=((r+1)**305).bit_length()
  req(2**(hh-1)<=(r+1)**305<2**hh,'row height bits')
  row_counts.append(dict(r=r,conditions=cr,height_bits=hh));cond+=cr
 req(points==t['points'],'complete point/jet list')
 req(row_counts==t['rows'],'row counts')
 req(cond==t['conditions']==23547,'complete jet count')
 req(len(basis)-cond==t['surplus']==15,'dimension surplus')
 K=sum(v['conditions']*(v['height_bits']+17) for v in row_counts)
 req(K==t['height_sum']==18640401,'row-height sum')
 req(t['coefficient_bits']==1242694,'coefficient selection')
 req(t['coefficient_bits']*15>K,'strict pigeonhole')
 req(len(basis)<2**16,'image count constant')
 req(x['entry_bits']==14000001,'fixed ENTRY contract')
 req(x['margin_numerator']==93 and x['margin_denominator']==1000,'PC margin')
 req(Q(sum(t['weights'][3:]))+Q(55*463,5000)-550==Q(93,1000),'full source degree gain')
 req(x['nonzero_overhead']==6072,'height overhead')
 req(1680<2**11 and 5463*55<5000*61,'PC denominators')
 req(16+545*11+Q(5463*55,5000)<6072,'nonzero constant')
 req(1000*(t['coefficient_bits']+6072)<93*x['entry_bits'],'nonzero branch exclusion')
 req(t['coefficient_bits']+9<x['entry_bits'],'vertical specialization')
 req(x['kronecker_stride']==306,'injective substitution')
 kd=max(a+306*b for a,b in basis)
 req(kd==x['kronecker_degree']==46513,'Kronecker degree')
 req(len(basis)<2**(2*x['norm_l2_bits']),'l2 upper bound')
 req(x['factor_norm_bits']==1290000,'factor norm scope')
 req(kd+t['coefficient_bits']+x['norm_l2_bits']<1290000,'Mignotte transfer')
 req(x['row_value_extra_bits']==915==3*305,'weighted source evaluation')
 req(9*(1290000+915)+11<x['entry_bits'],'six-row hit height')
 req(x['graph_degree_cap']==386 and x['graph_norm_bits']==1500000,'rational graph scope')
 req(2*386+2<2**10,'Sylvester factorial bound')
 req(4*(1500000+10)+1<x['entry_bits'],'rational denominator exclusion')
 req(9*(1500000+6)+11<x['entry_bits'],'quadratic graph row-hit exclusion')
 req(1290000<1500000 and 305<=386,'all X-linear factors fit graph theorem')
 # All 18 possible rows-3/4/5 quadratic profiles, independently interpolated.
 cases=c['quadratic_cases'];req(len(cases)==18,'18 cases required')
 lookup={tuple(k['seed']):k for k in cases}
 req(len(lookup)==18,'no duplicated seed')
 survivors=[]
 for seed in product(range(2),range(3),range(3)):
  req(seed in lookup,'missing quadratic seed')
  vals=[s*(r-s) for r,s in zip([3,4,5],seed)]
  a=Q(vals[2]-2*vals[1]+vals[0],2);b=Q(vals[1]-vals[0])-7*a;cc=Q(vals[0])-9*a-3*b
  coeff=[cc,b,a];qcase=lookup[seed]
  req(qcase['poly']==[[z.numerator,z.denominator] for z in coeff],'independent quadratic interpolation')
  hits={str(r):[s for s in range(r//2+1) if cc+b*r+a*r*r==s*(r-s)] for r in range(3,9)}
  req(qcase['hits']==hits and qcase['survives']==all(hits.values()),'complete six-row hits')
  if all(hits.values()):survivors.append(coeff)
 req(sorted(survivors)==sorted([[Q(-u*u),Q(u),Q(0)] for u in range(4)]),'only four illegal boundary graphs')
 return {'status':'PASS_NEW_COMPONENT_PARAMETER_RECEIVER','columns':len(basis),'conditions':cond,'point_representatives':len(points),'quadratic_profiles':18,'survivors':4,'forced_boundary_load':389,'coefficient_bits':t['coefficient_bits'],'new_per_row_bound':152,'nonlinear_component_count_bound':76,
         'nonzero_height_ceiling_bits':(1000*(t['coefficient_bits']+6072)+92)//93,'factor_row_hit_ceiling_bits':9*(1290000+915)+11,'graph_denominator_ceiling_bits':4*(1500000+10)+1,'graph_constant_ceiling_bits':9*(1500000+6)+11,
         'not_executed':['large kernel recovery','large matrix construction','large resultant/gcd','historical replay','Lean']}

if __name__=='__main__':
 print(json.dumps(verify(json.loads((ROOT/'evidence/new_certificate.json').read_text())),indent=2))
