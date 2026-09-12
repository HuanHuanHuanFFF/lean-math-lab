"""Exact feasibility certificate for actual c7d5 growth, with no BFT Q/E input.
No Lean files or GrowthTree data are generated. Fixed n/Y threshold and selector.
"""
from pathlib import Path
from fractions import Fraction as F
from math import comb,factorial,isqrt,gcd
from functools import reduce
import json,hashlib,time,datetime
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
OUT=Path(__file__).resolve().parent
assert OUT==RUN/'experiments/huan-i13-c311-actual-growth-probe-5e2d13bb'
if not __debug__:raise RuntimeError('Assertions required')

def conv(a,b):
 r=[0]*(len(a)+len(b)-1)
 for i,x in enumerate(a):
  for j,y in enumerate(b):r[i+j]+=x*y
 return r
def poly_pow(p,n):
 q=[F(1)]
 for _ in range(n):q=conv(q,p)
 return q
def trim(p):
 while len(p)>1 and p[-1]==0:p.pop()
 return p
def deriv(p):return [i*p[i] for i in range(1,len(p))]
def iv(x):return(F(x),F(x))
def add(a,b):return(a[0]+b[0],a[1]+b[1])
def sub(a,b):return(a[0]-b[1],a[1]-b[0])
def mul(a,b):
 a0,a1=a;b0,b1=b;v=[a0*b0,a0*b1,a1*b0,a1*b1];return min(v),max(v)
def div(a,b):
 assert b[0]>0;return mul(a,(1/b[1],1/b[0]))
def pw(a,n):
 assert a[0]>=0;return(a[0]**n,a[1]**n)
def sqrtiv(q):
 den=1<<160;k=isqrt(q.numerator*den*den//q.denominator)
 lo,hi=F(k,den),F(k+1,den);assert lo*lo<=q<hi*hi
 return lo,hi
def enc(a):
 den=10**15
 return {'lo':str(F(a[0].numerator*den//a[0].denominator,den)),
         'hi':str(F(-((-a[1].numerator*den)//a[1].denominator),den))}
def evalpoly(p,x):
 ans=F(0)
 for a in reversed(p):ans=ans*x+a
 return ans
def moment(p):return sum((a/F(i+1) for i,a in enumerate(p)),F())
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def run():
 t0=time.perf_counter();P,Q=243,121;z=F(1,P);R=F(11664,3125)
 beta=F(12**12,5**10*2**2);lamq=F(451,100000);lame=F(973,1000000)
 assert P-2*Q==1
 # Elementary actual core maxima; derivative identities are checked as polynomials.
 x=[F(0),F(1)];one_x=[F(1),F(-1)];qfac=[F(1),-(1-z)];efac=[F(1),-z]
 qcore=conv(conv(poly_pow(x,2),poly_pow(one_x,5)),poly_pow(qfac,5))
 ecore=conv(conv(poly_pow(x,5),poly_pow(one_x,5)),poly_pow(efac,2))
 qquadratic=[F(2),-7*(2-z),12*(1-z)]
 equadratic=[F(5),-(10+7*z),12*z]
 qder=conv(conv(conv(x,poly_pow(one_x,4)),poly_pow(qfac,4)),qquadratic)
 eder=conv(conv(conv(poly_pow(x,4),poly_pow(one_x,4)),efac),equadratic)
 assert trim(deriv(qcore))==trim(qder) and trim(deriv(ecore))==trim(eder)
 assert evalpoly(qquadratic,0)>0 and evalpoly(qquadratic,1)<0
 assert evalpoly(equadratic,0)>0 and evalpoly(equadratic,1)<0
 # Both quadratics open upward: one root in(0,1), the other>1.
 t=F(5,7);root=sqrtiv(z*z+4*t*t*(1-z))
 xq=div(iv(2*(1-t)),add(iv(2-z),root))
 xe=div(iv(2*t),add(iv(2*t+z),root))
 qmax=mul(mul(pw(xq,2),pw(sub(iv(1),xq),5)),pw(sub(iv(1),mul(iv(1-z),xq)),5))
 emax=mul(mul(pw(xe,5),pw(sub(iv(1),xe),5)),pw(sub(iv(1),mul(iv(z),xe)),2))
 assert qmax[1]<lamq and emax[1]<lame
 # Actual factorial step: no sampling of F_m is used to prove the recurrence.
 U=[1]
 for j in range(1,12):U=conv(U,[j,12])
 W=[1]
 for _ in range(2):
  for j in range(1,5):W=conv(W,[j,5])
 W=conv(W,[1,2])
 left=[12*beta.denominator*x for x in conv([2,1],U)]
 right=[beta.numerator*50*x for x in conv([1,3,3,1],W)]
 residual=trim([b-a for a,b in zip(left,right)])
 shifted=[sum(residual[j]*comb(j,k) for j in range(k,len(residual))) for k in range(len(residual))]
 factor=reduce(gcd,shifted);coeffs=[x//factor for x in shifted]
 assert len(coeffs)==11 and all(x>0 for x in coeffs)
 # F0 actual recurrence=12 U/[50*m*(m+1)*W]. F1/F0=25/24.
 # The positive residual proves step<=beta*(m+1)^2/[m*(m+2)].
 rows=[]
 for delta in [0,1]:
  u=5-delta;v=1+delta;N=2*u+v+1
  qp=[(-1)**u*comb(2*u-j,u)*comb(v+j,j) for j in range(u+1)]
  ep=[(-1)**j*comb(u+j,j)*comb(N,2*u+j+1) for j in range(v+1)]
  aq=evalpoly(qp,z);ae=evalpoly(ep,z)
  F1=F(factorial(12-delta),factorial(5-delta)**2*factorial(1+delta))
  qw=conv(conv(poly_pow(x,1+delta),poly_pow(one_x,5-delta)),poly_pow(qfac,5-delta))
  ew=conv(conv(poly_pow(x,5-delta),poly_pow(one_x,5-delta)),poly_pow(efac,1+delta))
  assert abs(aq)==F1*moment(qw) and abs(ae)==F1*moment(ew)
  cq=2*abs(aq)/(beta*lamq);ce=2*abs(ae)/(beta*lame)
  assert cq<F(1,2) and ce<[F(11,100),F(1,2)][delta]
  rows.append({'delta':delta,'actualQ_m1':str(aq),'actualE_m1':str(ae),'factorial_m1':str(F1),
    'actual_moment_Q':str(moment(qw)),'actual_moment_E':str(moment(ew)),
    'Cq_exact':str(cq),'Ce_exact':str(ce),'Cq_enclosure':enc(iv(cq)),'Ce_enclosure':enc(iv(ce)),
    'chosen_Cq_cap':'1/2','chosen_Ce_cap':str([F(11,100),F(1,2)][delta])})
 assert F(rows[1]['factorial_m1'])/F(rows[0]['factorial_m1'])==F(25,24)
 # Same fixed height, selector and integer-rate lower as the previous package.
 K=F(49664,4058125);m0=187;H=15359;r=F(82161,1000)
 assert 3**4096<2**6493 and 11**4096<2**14170
 assert K==F(679*4096,35000*6493) and K<F(593*4096,14000*14170)
 assert 187<K*H<188
 Ae=F(P**5*Q**7)*R/(beta*lame);Aq=F(P**2)*R/(128*beta*lamq)
 assert Ae.numerator**1000>Ae.denominator**1000*2**82161
 assert Aq>F(3,2)
 zeta0=r*m0-F(m0+1)/K;gammar=r-1/K
 assert zeta0>2 and gammar>F(1,3)
 assert 24*m0-97>0 and 125<128 and F(5,4)*F(2,3)==F(5,6)<1
 # Complete two-term bounds; do not force every individual E term below1/4.
 qcap=F(24)*R/23*F(1,2)*(24*m0-1)*F(2,3)**m0
 e0cap=R*F(11,100)*(24*m0-1)/(46*P)
 e1cap=12*R/115
 assert e0cap<F(1,5) and e1cap<F(2,5) and qcap<F(1,100)
 assert e0cap+qcap<F(21,100)<F(1,2)
 assert e1cap+qcap<F(41,100)<F(1,2)
 tight0=R*F(rows[0]['Ce_exact'])*(24*m0-1)/(46*P)
 tight1=24*R*F(rows[1]['Ce_exact'])/115
 assert tight0<e0cap and tight1<e1cap
 # Parent-requested anchored-tail check, same parameters and same height.
 S0=R*F(4487,4511);Aes=Ae*F(4487,4511)
 assert Aes.numerator**1000<Aes.denominator**1000*2**82161
 loss=F((Aes.denominator**1000)*2**82161,Aes.numerator**1000)
 lossbits=loss.numerator.bit_length()-loss.denominator.bit_length()
 if loss<F(2)**lossbits:lossbits-=1
 assert F(2)**lossbits<=loss<F(2)**(lossbits+1)
 # Exact allm tail recurrence comparison residual is576*(m-187).
 assert 24*(4511-4487)==576 and 4511+23*4487==576*187
 assert F(4511,4487)<F(5,4) and F(2,3)*F(4511,4487)<1
 # Therefore anchored error multipliers are at most
 # (4511/4487)*2^(-gamma)<1, and(4511/4487)*(2/3)<1.
 tail={'S0':str(S0),'D0_anchor':'23*R^186/4487','D0_bound':'D0(187+n)>=D0_anchor*S0^n',
  'step_comparison_polynomial':'576*(m-187)','D1_global_constant':str(F(115,48)/R),
  'D1_bound':'D1(m)>=(115/(48R))*R^m, allm>=1',
  'AE0_tail':str(Aes),'AE0_tail_pow1000_gt_2pow82161':False,
  'failure_power_ratio_log2_floor':lossbits,
  'failure_meaning':'the common unanchored rate r fails; this does not reject the anchored tail',
  'anchored_inverse_rate_loss':str(F(4511,4487)),
  'anchored_eta0_lt':'21/100','anchored_eta1_lt':'41/100',
  'anchored_uniform_reason':'base at187 unchanged; inverse rate loss<5/4<2^(1/3), gamma>1/3; Q step loss*(2/3)<1',
  'status':'exact paper algebra and numeric feasibility; not Lean; optional parent-suggested interface'}
 result={'status':'PASS_ACTUAL_FRAMEWORK_CONSTANT_AND_FACTORIAL_FEASIBILITY_NOT_LEAN',
  'fixed':{'P':P,'Q':Q,'seed':'243-2*121=1','c':7,'d':5,'weights':[321,407],'n_bits':15360,'Y_bits':15359,'Y':'n-12','K':str(K),'m':'floor(K*log2Y)','m_min':m0},
  'beta':str(beta),'lambdaQ':str(lamq),'lambdaE':str(lame),
  'actual_core_bounds':{'Q_max':enc(qmax),'E_max':enc(emax),'Q_gap_lower':str(lamq-qmax[1]),'E_gap_lower':str(lame-emax[1]),
    'q_derivative_quadratic':[str(x) for x in qquadratic],'e_derivative_quadratic':[str(x) for x in equadratic],
    'derivative_factorization_exact':True,'global_max_proof':'positive endpoint0 and negative endpoint1 upward quadratic gives one root in(0,1), larger root>1; derivative sign changes exactly once'},
  'actual_normalization':rows,
  'factorial':{'F0':'(12m)! / ((5m)!^2*(2m-1)!)','F1_ratio':'25/24','U':'product(j=1..11)(12m+j)','W':'(2m+1)*product(j=1..4)(5m+j)^2',
   'ratio':'12U/(50*m*(m+1)*W)','beta_reduced':[beta.numerator,beta.denominator],
   'residual':'beta_num*50*(m+1)^3*W-12*beta_den*(m+2)*U','m_eq_x_plus_one_factor':factor,'positive_coefficients_x_ascending':coeffs,
   'raw_residual_coefficients_m_ascending':residual,'uniform_result':'Fdelta(m)<(2*Fdelta(1)/beta)*beta^m, allm>=1; follows generic telescoping bound from exact allm step',
   'evidence':'paper factorial cancellation and exact positive polynomial identity; c7d5 instance not yet Lean accepted'},
  'all_Y_rates':{'Ae':str(Ae),'Aq':str(Aq),'r':str(r),'Ae_pow1000_gt_2pow82161':True,'Aq_gt_three_halves':True,'zeta187':str(zeta0),'gamma':str(gammar)},
  'complete_eta_caps':{'qcap':str(qcap),'E0_cap':str(e0cap),'E1_cap':str(e1cap),'E0_cap_enclosure':enc(iv(e0cap)),'E1_cap_enclosure':enc(iv(e1cap)),
   'using_exact_Ce_E0':enc(iv(tight0)),'using_exact_Ce_E1':enc(iv(tight1)),
   'eta0_lt':'21/100','eta1_lt':'41/100','both_lt_half':True,'domain':'allY>=2^15359, allselectedm>=187 via interval-floor and induction, not sampling'},
  'extra_refinement_tested':False,'reason_no_refinement':'existing m1 normalization already has full two-term margin; do not try m2 or another bound',
  'missing_before_actual_Lean_QE':'new c7d5 factorial instance and four actual GrowthTree terms (two distinct cores) with these lambdas; generic framework accepted separately',
  'parent_anchored_tail':tail,
  'no_BFT_QE_input':True,'new_Lean_invocations':0,'GrowthTrees_generated':0,'original_coverage_added':False,
  'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'seconds':time.perf_counter()-t0}
 if not (OUT/'FREEZE.json').exists():
  (OUT/'probe-results.json').write_bytes((json.dumps(result,ensure_ascii=False,indent=2)+'\n').encode('utf-8'))
 print(json.dumps({'status':result['status'],'lambdas':[str(lamq),str(lame)],'actual_normalization':rows,'factorial_degree':len(coeffs)-1,'factorial_factor':factor,'all_Y_rates':result['all_Y_rates'],'complete_eta_caps':result['complete_eta_caps'],'parent_anchored_tail':tail,'seconds':result['seconds']},ensure_ascii=False,indent=2))
 return result
if __name__=='__main__':run()
