"""Exact primal+true-log dual verification. No LP solver or float decisions.
The finite check covers every constant interval and exact endpoint of[0,2).
A symbolic prime-log dual proves optimality for the original real objective.
"""
from pathlib import Path
from fractions import Fraction as F
from math import gcd,factorial,isqrt
import json,hashlib,time,datetime
OUT=Path(__file__).resolve().parent
floor=lambda x:x.numerator//x.denominator

def add(a,b):return a[0]+b[0],a[1]+b[1]
def scale(q,a):return (q*a[0],q*a[1]) if q>=0 else (q*a[1],q*a[0])
def series(u,N=100):
 assert 0<=u<1
 s=F(0);term=u
 for k in range(N):s+=F(2,2*k+1)*term;term*=u*u
 tail=2*term/F(2*N+1)/(1-u*u)
 return s,s+tail
LN2=series(F(1,3))
def ln(p):
 k=p.bit_length()-1;u=F(p-2**k,p+2**k)
 return add(scale(F(k),LN2),series(u))
def shown(a):
 D=10**15
 return {'lo':str(F(a[0].numerator*D//a[0].denominator,D)),
 'hi':str(F(-((-a[1].numerator*D)//a[1].denominator),D))}
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def prime_list(n):return [p for p in range(2,n+1) if all(p%d for d in range(2,isqrt(p)+1))]
def c1c2(m):
 one=two=1;layer=[]
 for p in prime_list(9*m):
  q=p
  while q<=9*m:
   s=2*((4*m)%q)+m%q
   v1=int(s>=2*q);v2=int(s>=2*q+1)
   if v1:one*=p
   if v2:two*=p
   if v1-v2:assert s==2*q and 9*m%q==0
   layer.append([p,q,s,v1,v2]);q*=p
 assert one%two==0 and (9*m)%(one//two)==0
 return one,two,layer

def run():
 t0=time.perf_counter();model=json.loads((OUT/'model.json').read_text());candidate=json.loads((OUT/'discovery.json').read_text());dual=json.loads((OUT/'dual-candidate.json').read_text())
 aa=[F(j,2) for j in range(1,21)];w=[F(x) for x in candidate['weights']]
 knots=sorted({F(2*k,j) for j in range(1,21) for k in range(j+1)})
 assert len(knots)==129 and knots[0]==0 and knots[-1]==2
 assert [str(t) for t in knots]==model['breakpoints']
 # Explicit completeness: every jump of eachfloor and g is in this list.
 assert all(F(2*k,j) in knots for j in range(1,21) for k in range(j+1))
 assert all(F(k,j) in knots for j in [1,4,9] for k in range(2*j+1))
 A=[];g=[];slacks=[]
 for i,t in enumerate(knots[:-1]):
  r=[floor(a*t) for a in aa];gg=int(floor(9*t)-2*floor(4*t)-floor(t)==2)
  assert r==model['A'][i] and gg==model['b'][i]
  ff=sum((x*v for x,v in zip(r,w)),F());assert ff<=gg
  A.append(r);g.append(gg);slacks.append(str(F(gg)-ff))
 assert sum((a*v for a,v in zip(aa,w)),F())==0
 assert sum((floor(2*a)*v for a,v in zip(aa,w)),F())==0
 assert floor(F(18))-2*floor(F(8))-floor(F(2))==0
 # Negative weights and fixed denominator are explicitly preserved.
 assert w==[F(1),F(-1),F(0),F(0),F(0),F(0),F(0),F(-1),F(1)]+[F(0)]*11
 assert candidate['K']==1
 P=dual['prime_log_basis'];assert P==[2,3,5,7,11,13,17,19]
 Y=[[F(v) for v in row] for row in dual['dual_log_coefficients']];support=dual['support']
 logs={p:ln(p) for p in P};signs=[]
 for i,coeffs in enumerate(Y):
  v=(F(0),F(0))
  for p,k in zip(P,coeffs):v=add(v,scale(k,logs[p]))
  assert (all(k==0 for k in coeffs) and v==(0,0)) or v[0]>0,(i,v)
  signs.append({'interval':support[i],'t_left':str(knots[support[i]]),'log_coefficients':[str(k) for k in coeffs],'value_interval':shown(v),'strictly_positive':v[0]>0})
 # True objective after balance elimination is(j/2)*log(j),j=2..20.
 target=[]
 for j in range(2,21):
  row=[]
  for p in P:
   v=0;k=j
   while k%p==0:v+=1;k//=p
   row.append(F(j*v,2))
  target.append(row)
 for j in range(19):
  for k in range(len(P)):
   assert sum((F(A[t][j+1])*Y[i][k] for i,t in enumerate(support)),F())==target[j][k]
 # Dual objective is exactly9log3-13log2, equal to the primal candidate.
 dual_value=[sum((F(g[t])*Y[i][k] for i,t in enumerate(support)),F()) for k in range(len(P))]
 expected=[F(-13) if p==2 else F(9) if p==3 else F(0) for p in P]
 assert dual_value==expected
 for t in support:assert F(g[t])==sum((F(x)*v for x,v in zip(A[t],w)),F())
 rate=add(scale(F(9),logs[3]),scale(F(-13),logs[2]))
 goal=F(910560352,10**9)
 assert rate[1]<goal
 gap=(goal-rate[1],goal-rate[0])
 # Direct examples only check source alignment, not allm divisibility.
 examples=[]
 for m in [2,4]:
  c1,c2,layers=c1c2(m);f=F(factorial(9*m//2)*factorial(m//2),factorial(4*m)*factorial(m))
  assert f<=c1 and (F(c1)/f).denominator==1 and c2>=F(c1,9*m)
  examples.append({'m':m,'C1':c1,'C2':c2,'C1_over_C2':c1//c2,'nine_m':9*m,'factorial_ratio':str(f),'C1_div_ratio_integer':str(F(c1)/f)})
 if (OUT/'FREEZE.json').exists():
  for n,v in json.loads((OUT/'FREEZE.json').read_text())['files'].items():assert sha(OUT/n)==v['sha256']
 out={'status':'PASS_EXACT_MINORANT_AND_TRUE_OBJECTIVE_DUAL_OPTIMUM_NO_IMPROVEMENT',
  'basis':list(map(str,aa)),'interval_count':128,'exact_endpoints_included':129,'domain':'allreal t by2periodicity; Legendre application mpositiveeven',
  'weights':list(map(str,w)),'K':1,'minorant':'floor(t/2)-floor(t)-floor(4t)+floor(9t/2)',
  'factorial_ratio_even_m':'((m/2)!*(9m/2)!)/(m!*(4m)!)','negative_weights_in_denominator':True,
  'all_interval_slacks':slacks,'periodicity_balance_verified':True,'dual_signs':signs,
  'true_objective_dual_identity':'A_reduced^T*y=((j/2)*logj)_(j2..20),y>=0','dual_upper_equals_primal':'9log3-13log2=log(19683/8192)',
  'optimal_rate':shown(rate),'target':str(goal),'target_minus_optimum':shown(gap),'optimality_scope':'exact fixed20basis, arbitraryreal unrestrictedweights satisfyingallconstraints andbalance; no coefficientbox restriction',
  'C1_C2_bridge':'vp(C1/C2)=sum_h[2*(4m modp^h)+(m modp^h)=2p^h]<=vp(9m),soC1/C2 divides9m',
  'Legendre_statement':'clear rationalweight denominatorsK; numerator factorial product divides C1^K timesdenominator product; positive ratio<=C1^K, evenifratioisnotinteger',
  'source_alignment_examples_only':examples,'log_certificate':'100positiveatanhterms afterpower2rangereduction plus explicitgeometrictail; Fraction arithmeticonly',
  'solver_screening_models':1,'solver_evaluations':3,'solver_accounting':'one rejectedSymPyfreeboundsencoding,one correctedfixedmodelscreen,one deterministicreplaytoextractdual; nootherbasisorfamily',
  'Lean_invocations':0,'new_installations':0,'original_frontier_reduction':False,'next':'stopthisfixedbasis; do not formalize an unchanged-rate auxiliaryroute as fullprogress',
  'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'seconds':time.perf_counter()-t0}
 if not (OUT/'FREEZE.json').exists():(OUT/'verification.json').write_bytes((json.dumps(out,ensure_ascii=False,indent=2)+'\n').encode('utf-8'))
 print(json.dumps({'status':out['status'],'intervals':128,'dual_support':len(support),'positive_dual_count':sum(x['strictly_positive'] for x in signs),'rate':out['optimal_rate'],'target_gap':out['target_minus_optimum'],'K':1,'examples':examples,'seconds':out['seconds']},ensure_ascii=False,indent=2))
 return out
if __name__=='__main__':run()
