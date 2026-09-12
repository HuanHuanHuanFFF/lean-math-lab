"""Independent exact check: direct polynomial sums, original s roots by bisection,
and polynomial identity established at13 points with a proved degree<=12.
No Lean or tree generation. Source acceptance is checked separately.
"""
from pathlib import Path
from fractions import Fraction as F
from math import comb,factorial
import json,hashlib,time,datetime
OUT=Path(__file__).resolve().parent
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
assert OUT==RUN/'experiments/huan-i13-c311-actual-growth-probe-5e2d13bb'

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def sqroot(q):
 a,b=F(0),F(4)
 for _ in range(200):
  c=(a+b)/2
  if c*c<=q:a=c
  else:b=c
 assert a*a<=q<b*b
 return a,b
def add(a,b):return a[0]+b[0],a[1]+b[1]
def sub(a,b):return a[0]-b[1],a[1]-b[0]
def mul(a,b):
 v=[x*y for x in a for y in b];return min(v),max(v)
def div(a,b):
 assert b[0]>0;return mul(a,(1/b[1],1/b[0]))
def pt(x):return F(x),F(x)
def power(a,n):
 r=pt(1)
 for _ in range(n):r=mul(r,a)
 return r

def run():
 t0=time.perf_counter();a=json.loads((OUT/'probe-results.json').read_text())
 B=F(12**12,5**10*4);R=F(11664,3125);P,Q=243,121;z=F(1,P)
 Lq=F(451,100000);Le=F(973,1000000)
 for delta,row in enumerate(a['actual_normalization']):
  u=5-delta;v=1+delta;N=2*u+v+1
  aq=sum(F((-1)**u*comb(2*u-j,u)*comb(v+j,j),P**j) for j in range(u+1))
  ae=sum(F((-1)**j*comb(u+j,j)*comb(N,2*u+j+1),P**j) for j in range(v+1))
  assert aq==F(row['actualQ_m1']) and ae==F(row['actualE_m1'])
  assert 2*abs(aq)/(B*Lq)==F(row['Cq_exact'])<F(1,2)
  assert 2*abs(ae)/(B*Le)==F(row['Ce_exact'])<[F(11,100),F(1,2)][delta]
  ff=F(factorial(12-delta),factorial(u)**2*factorial(v))
  assert ff==F(row['factorial_m1'])
  assert abs(aq)/ff==F(row['actual_moment_Q']) and abs(ae)/ff==F(row['actual_moment_E'])
 # Independent polynomial identity proof: left/right degree<=12;
 # stored polynomial degree10.13 distinct exact points suffice.
 cs=a['factorial']['positive_coefficients_x_ascending'];fac=a['factorial']['m_eq_x_plus_one_factor']
 assert len(cs)==11 and all(x>0 for x in cs)
 for x in range(13):
  m=x+1;U=1;W=2*m+1
  for j in range(1,12):U*=12*m+j
  for j in range(1,5):W*=(5*m+j)**2
  exact=B.numerator*50*(m+1)**3*W-12*B.denominator*(m+2)*U
  assert exact==fac*sum(c*x**j for j,c in enumerate(cs))
 # Maxima independently enclosed from original s-form lower roots.
 s=F(7,5);sq=sqroot(s*s*z*z+4-4*z)
 xq=div(sub(pt(s*(2-z)),sq),pt(2*(1-z)*(s+1)))
 xe=div(sub(pt(s*z+2),sq),pt(2*z*(s+1)))
 qmax=mul(mul(power(xq,2),power(sub(pt(1),xq),5)),power(sub(pt(1),mul(pt(1-z),xq)),5))
 emax=mul(mul(power(xe,5),power(sub(pt(1),xe),5)),power(sub(pt(1),mul(pt(z),xe)),2))
 assert qmax[1]<Lq and emax[1]<Le
 K=F(49664,4058125);m=187;r=F(82161,1000)
 assert 3**4096<2**6493 and 11**4096<2**14170
 assert 187<K*15359<188
 assert K==F(679*4096,35000*6493)<F(593*4096,14000*14170)
 AE=F(P**5*Q**7)*R/(B*Le);AQ=F(P**2)*R/(128*B*Lq)
 assert AE==F(a['all_Y_rates']['Ae']) and AQ==F(a['all_Y_rates']['Aq'])
 assert AE.numerator**1000>(AE.denominator**1000 << 82161)
 assert AQ>F(3,2) and r-1/K>F(1,3) and r*m-F(m+1)/K>2
 eq=12*R/23*4487*F(2,3)**187
 e0=R*F(11,100)*4487/(46*P);e1=12*R/115
 assert eq==F(a['complete_eta_caps']['qcap'])<F(1,100)
 assert e0==F(a['complete_eta_caps']['E0_cap'])<F(1,5)
 assert e1==F(a['complete_eta_caps']['E1_cap'])<F(2,5)
 assert e0+eq<F(21,100) and e1+eq<F(41,100)
 tail=AE*F(4487,4511)
 assert tail.numerator**1000<(tail.denominator**1000 << 82161)
 assert F(4511,4487)<F(5,4) and F(5,4)**3<2
 assert F(2,3)*F(4511,4487)<1
 # G0 step comparison and G1 bound denominators: symbolic residuals.
 assert (4511-4487)*24==576 and 4511+23*4487==576*187
 assert F(5,2)*23/24/R==F(115,48)/R
 old=RUN/'experiments/huan-i13-c311-high-height-5e2d13bb'
 fr=json.loads((old/'FREEZE.json').read_text())
 for n,v in fr['files'].items():assert sha(old/n)==v['sha256']
 result={'status':'PASS_INDEPENDENT_ACTUAL_GROWTH_FEASIBILITY_NOT_LEAN','probe_sha256':sha(OUT/'probe.py'),'results_sha256':sha(OUT/'probe-results.json'),
  'normalization_direct_sums':4,'factorial_identity':'13 distinct exact points plus known degree<=12 proves identity; positive coefficients prove allm>=1 step',
  'actual_core_maxima':'independent rational bisection in s variables passed','all_Y_two_term_bounds':{'eta0_lt':'21/100','eta1_lt':'41/100'},
  'parent_tail_check':'unanchored r power fails; anchored complete eta retains same bounds',
  'old_high_height_freeze_verified_files':len(fr['files']),'Lean_invocations':0,'GrowthTrees_generated':0,'extra_refinements':0,
  'seconds':time.perf_counter()-t0,'utc':datetime.datetime.now(datetime.timezone.utc).isoformat()}
 if not (OUT/'FREEZE.json').exists():(OUT/'independent-check.json').write_bytes((json.dumps(result,ensure_ascii=False,indent=2)+'\n').encode('utf-8'))
 print(json.dumps(result,ensure_ascii=False,indent=2))
if __name__=='__main__':run()
