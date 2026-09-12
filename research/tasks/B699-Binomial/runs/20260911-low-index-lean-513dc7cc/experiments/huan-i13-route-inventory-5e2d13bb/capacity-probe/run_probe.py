from pathlib import Path
from fractions import Fraction as F
from math import comb,factorial,isqrt
import json,hashlib,time,datetime
OUT=Path(__file__).resolve().parent
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
OLD=ROOT/'research/tasks/B699-Binomial/runs/20260910-i13-closure-ad35779e/delivery'
assert OUT==RUN/'experiments/huan-i13-route-inventory-5e2d13bb/capacity-probe'
assert not (OUT/'FREEZE.json').exists()
parent=OUT.parent;pf=json.loads((parent/'FREEZE.json').read_text())
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
assert all(sha(parent/n)==v['sha256'] for n,v in pf['files'].items())
start=time.perf_counter()
(OUT/'PROBE_SCOPE.md').write_text('''# Fixed 3/11 capacity probe

Original cut: p=3,q=11,k0=5,l0=2,a=1,b=2,Dseed=1,P=243,Q=121,y=243,z=1/243,c=7,d=5; weights321/407, both cofactor alternatives A^1000>=Y^321 or C^1000>=Y^407. Original source requires Y>=2^8191 (n>=2^8192) and source difference<=24. Old G inputL1=1.4135,m>74 is not replaced by an assumption.

Actual Ddelta(m)=rationalDivisor(5m-delta,2m+delta-1), delta0/1 at the same integer m. This probe evaluates m=1..101 exactly, including m<=74 to avoid relying on the old BFT cutoff. Two fixed Y values:2^8191 and2^8230. The capacity guarantees are P^(7000m)<=Y^679 andQ^(7000m)<=Y^593, obtained from the accepted strict small-cofactor capacity lemma. This is a sufficient common-exponent guarantee, not a characterization of all possible actual prime exponents.

Numerical error model uses exact actual Q/E evaluations, not asymptotic approximations. It replaces1/G by1/D in the source triangle upper bound, for both deltas. Failure of that certificate does not refute the original cut or Common. Asymptotic rates are computed separately with rational outward bounds and clearly do not prove a uniform finite-m G bound.

No Lean, no new seed/cd/weight search, no original frozen files modified. First observed start2026-09-12T02:07:51Z;20-minute checkpoint02:27:51Z is not a deadline.
''',encoding='utf-8')
# Rational outward interval arithmetic, plus a rigorous atanhtail.
def iv(x):return(F(x),F(x))
def add(a,b):return(a[0]+b[0],a[1]+b[1])
def neg(a):return(-a[1],-a[0])
def sub(a,b):return add(a,neg(b))
def mul(a,b):
 v=[x*y for x in a for y in b];return(min(v),max(v))
def div(a,b):
 assert b[0]>0;return mul(a,(1/b[1],1/b[0]))
def pw(a,n):
 assert a[0]>=0;return(a[0]**n,a[1]**n)
def miniv(a,b):return(min(a[0],b[0]),min(a[1],b[1]))
def rnd(a,bits=112):
 d=1<<bits;return(F(a[0].numerator*d//a[0].denominator,d),F(-((-a[1].numerator*d)//a[1].denominator),d))
def series(u,n=80):
 assert 0<=u<1
 term=u;s=F()
 for k in range(n):s+=2*term/(2*k+1);term*=u*u
 return(s,s+2*term/((2*n+1)*(1-u*u)))
LN2=series(F(1,3))
def lnf(q):
 q=F(q);assert q>0
 k=q.numerator.bit_length()-q.denominator.bit_length()
 twok=F(2**k) if k>=0 else F(1,2**(-k))
 if q<twok:k-=1;twok/=2
 m=q/twok;assert 1<=m<2
 u=(m-1)/(m+1);den=1<<160
 ul=F(u.numerator*den//u.denominator,den);uu=F(-((-u.numerator*den)//u.denominator),den)
 a=series(ul);b=series(uu)
 return rnd(add(mul(iv(k),LN2),(a[0],b[1])))
def lniv(a):return(lnf(a[0])[0],lnf(a[1])[1])
def sqrtiv(q,bits=160):
 q=F(q);den=1<<bits;n=isqrt((q.numerator*den*den)//q.denominator)
 lo=F(n,den);hi=F(n+1,den);assert lo*lo<=q<hi*hi;return(lo,hi)
def shown(a,places=12):
 ten=10**places;lo=a[0].numerator*ten//a[0].denominator;hi=-((-a[1].numerator*ten)//a[1].denominator)
 return{'lower':str(F(lo,ten)),'upper':str(F(hi,ten))}
def exact_iv(a):return{'lo':str(a[0]),'hi':str(a[1])}
P,Q,c,d=243,121,7,5;z=F(1,243);t=F(5,7)
R=F(6**6,5**5*2**2);oldL=F(14135,10000)
assert R==F(11664,3125) and R<oldL**5
S=sqrtiv(z*z+4*t*t*(1-z))
xq=div(iv(2*(1-t)),add(iv(2-z),S));xe=div(iv(2*t),add(iv(2*t+z),S))
assert 0<xq[0]<=xq[1]<1 and 0<xe[0]<=xe[1]<1
# Derived stationary quadratics of the actual qCore/eCore.
qder=add(sub(mul(iv((c+d)*(1-z)),pw(xq,2)),mul(iv(c*(2-z)),xq)),iv(c-d))
eder=add(sub(mul(iv((c+d)*z),pw(xe,2)),mul(iv(2*d+c*z),xe)),iv(d))
assert qder[0]<=0<=qder[1] and eder[0]<=0<=eder[1]
lq=mul(mul(pw(xq,c-d),pw(sub(iv(1),xq),d)),pw(sub(iv(1),mul(iv(1-z),xq)),d))
le=mul(mul(pw(xe,d),pw(sub(iv(1),xe),d)),pw(sub(iv(1),mul(iv(z),xe)),c-d))
beta=F((c+d)**(c+d),d**(2*d)*(c-d)**(c-d));qb=mul(iv(beta),lq);eb=mul(iv(beta),le)
LP,LQ,LR,L2=lnf(P),lnf(Q),lnf(R),lnf(2)
qrate=div(iv(P**(c-d)*R),mul(iv(2**c),qb))
wrate=div(iv(Q**c*R),mul(iv(P**(c-d)),eb))
T=add(mul(iv(c),LP),lniv(wrate))
kappa=miniv(div(iv(F(679,1000)),mul(iv(c),LP)),div(iv(F(593,1000)),mul(iv(c),LQ)))
slope=sub(mul(kappa,T),iv(1))
source_margin=sub(sub(mul(mul(slope,iv(8191)),L2),T),mul(iv(2),L2))
m_lower=sub(mul(mul(kappa,iv(8191)),L2),iv(1))
assert slope[0]>0 and source_margin[1]<0 and qrate[0]>1 and wrate[0]>1
asym={'status':'RATIONAL_OUTWARD_BOUNDS_FOR_ASYMPTOTIC_MODEL_ONLY','R_per_m':str(R),'gamma_logG_per_m':shown(LR),'L_D_is_R_to_one_fifth_not_gamma':True,'oldL1':str(oldL),'R_less_oldL1_pow5':True,'stationary_points':{'q':shown(xq),'e':shown(xe)},'lambda_q':shown(lq,18),'lambda_e':shown(le,18),'beta':str(beta),'qRate_per_m':shown(qrate),'wRate_per_m':shown(wrate),'T':shown(T),'kappa':shown(kappa),'kappa_T_minus1':shown(slope),'original_source_margin_at_Y_bits8191':shown(source_margin),'original_floor_m_lower_at8191':shown(m_lower),'outward_exact':{'xQ':exact_iv(rnd(xq)),'xE':exact_iv(rnd(xe)),'slope':exact_iv(rnd(slope)),'source_margin':exact_iv(rnd(source_margin))},'proof_method':'sqrt bound via integer square; log range-reduced into[1,2), rounded u=(x-1)/(x+1) outward at2^-160;80 positive atanh terms plus2*u^161/(161*(1-u^2)); no float decisions','warning':'Positive asymptotic slope is not a finite-m G lower bound. Negative source margin only rejects that sufficient certificate at the original cutoff.'}
# Small integer bases certify capacities without million-bit powers.
bases={'3':{'power':256,'lower_two_power':405,'upper_two_power':406},'11':{'power':256,'lower_two_power':885,'upper_two_power':886}}
for p,b in bases.items():assert 2**b['lower_two_power']<int(p)**256<2**b['upper_two_power']
capacity={}
for H in [8191,8230]:
 capacity[str(H)]={'m100_p_upper_margin':H*679*256-406*35000*100,'m100_q_upper_margin':H*593*256-886*14000*100,'m101_p_lower_margin':405*35000*101-H*679*256,'m101_q_lower_margin':885*14000*101-H*593*256}
 assert min(capacity[str(H)].values())>0
# Exact homogeneous actual Q and E values; two independent coefficient methods.
def values(m,delta):
 u=5*m-delta;v=2*m+delta-1;N=2*u+v+1
 qa=[];qcur=comb(2*u,u)
 for r in range(u+1):
  expected=comb(2*u-r,u)*comb(v+r,r);assert qcur==expected;qa.append(qcur)
  if r<u:
   num=qcur*(u-r)*(v+r+1);den=(2*u-r)*(r+1);assert num%den==0;qcur=num//den
 ea=[];ecur=comb(N,2*u+1)
 for r in range(v+1):
  expected=(-1)**r*comb(u+r,r)*comb(N,2*u+r+1);assert ecur==expected;ea.append(ecur)
  if r<v:
   num=-ecur*(u+r+1)*(v-r);den=(r+1)*(2*u+r+2);assert num%den==0;ecur=num//den
 qh=0
 for a in qa:qh=qh*P+a
 eh=0
 for a in ea:eh=eh*P+a
 assert qh>0 and eh>0
 if m in [1,75,100,101]:
  assert eh==sum(a*P**(v-r) for r,a in enumerate(ea))
  assert qh==sum(a*P**(u-r) for r,a in enumerate(qa))
 f=v//2;D=F(factorial(u+f)*factorial(f),factorial(u)*factorial(v))
 if delta==0:assert D==F(factorial(6*m-1)*factorial(m-1),factorial(5*m)*factorial(2*m-1))
 else:assert D==F(factorial(6*m-1)*factorial(m),factorial(5*m-1)*factorial(2*m))
 # eta=A*upper_Nq+B*width, replacing the actual G by the proven lower boundD.
 A=F(eh,((P*Q)**(7*m)))/D
 B=F((2**(7*m))*qh,P**(7*m))/D
 return u,v,D,A,B,eh,qh

def lgfloor(q):
 q=F(q);k=q.numerator.bit_length()-q.denominator.bit_length()
 if k>=0:
  if q.numerator<q.denominator*(1<<k):k-=1
 elif q.numerator*(1<<(-k))<q.denominator:k-=1
 return k

def short_value(q):
 k=lgfloor(q)
 return {'log2_floor':k,**({'enclosure':shown(iv(q),15)} if -100<k<100 else {})}
rows=[];minbad=None;goodbase=[];Ds={};maxbits=0
for m in range(1,102):
 row={'m':m,'deltas':[]}
 for delta in [0,1]:
  u,v,D,A,B,eh,qh=values(m,delta);Ds[m,delta]=D
  maxbits=max(maxbits,D.numerator.bit_length(),D.denominator.bit_length(),eh.bit_length(),qh.bit_length())
  vals={}
  for H in [8191,8230]:
   Y=1<<H;eta=2*Y*A+24*B;tight=(Y+12)*A+12*B
   vals[str(H)]={'source_eta_lt1':eta<1,'actual_window_eta_lt1':tight<1,'source_E_term':short_value(2*Y*A),'tight_E_term':short_value((Y+12)*A),'source_eta':short_value(eta),'q_term':short_value(24*B)}
   if H==8230 and delta==1 and m<=100:
    assert (Y+12)*A>1
    if minbad is None or (Y+12)*A<minbad[0]:minbad=((Y+12)*A,m)
  row['deltas'].append({'delta':delta,'u':u,'v':v,'D_bits':[D.numerator.bit_length(),D.denominator.bit_length()],'D_div_oldL_pow5m_lt1':D<oldL**(5*m),'values':vals})
 assert Ds[m,1]==F(5*m,2)*Ds[m,0]
 if all(r['values']['8191']['source_eta_lt1'] for r in row['deltas']):goodbase.append(m)
 rows.append(row)
assert minbad[1]==100 and 100 in goodbase
# Exact symbolic candidate for a uniform rational (not purely geometric) D bound.
def poly_mul(a,b):
 r=[0]*(len(a)+len(b)-1)
 for i,x in enumerate(a):
  for j,y in enumerate(b):r[i+j]+=x*y
 return r
L=poly_mul([0,3],[23,24]);L=[3125*x for x in L]
RR=poly_mul([-1,24],[1,2]);RR=[11664*x for x in RR]
for j in range(1,6):L=poly_mul(L,[j,6]);RR=poly_mul(RR,[j,5])
Dpoly=[x-y for x,y in zip(L,RR)]
while Dpoly and Dpoly[-1]==0:Dpoly.pop()
# Shift m=k+1; coefficientwise positivity gives the proposed allm>=1step.
shift=[sum(Dpoly[j]*comb(j,k) for j in range(k,len(Dpoly))) for k in range(len(Dpoly))]
assert all(x>=0 for x in shift) and any(x>0 for x in shift)
for m in range(1,101):
 exact_ratio=F(3*m,2*m+1)
 for j in range(1,6):exact_ratio*=F(6*m+j,5*m+j)
 assert Ds[m+1,0]/Ds[m,0]==exact_ratio
 assert exact_ratio>=R*F(24*m-1,24*m+23)
 assert Ds[m,0]>=R**(m-1)*F(23,24*m-1)

out={'status':'EXACT_SINGLE_SEED_CAPACITY_PROBE_NOT_LEAN','parameters':{'p':3,'q':11,'P':P,'Q':Q,'a':1,'b':2,'seed_difference':1,'c':7,'d':5,'z':'1/243','wp':321,'wq':407,'original_Y_bits':8191,'original_n_bits':8192,'original_m0_strict':74},'m_test_range':[1,101],'same_m_for_both_deltas':True,'Y_bits_tested':[8191,8230],'capacity_small_integer_bases':bases,'capacity_margins':capacity,'capacity_conclusion':'At both testedY, m100 satisfies both sufficient capacities; everym>=101 fails both by monotonicity and the small lower bases. Thus all guaranteed common m are<=100.','source_triangle_eta':'2Y*Ehom/(D*(P*Q)^(7m))+24*2^(7m)*abs(Qhom)/(D*P^(7m))','tight_actual_window_eta':'(Y+12)*Ehom/(D*(P*Q)^(7m))+12*2^(7m)*abs(Qhom)/(D*P^(7m))','bad_Y_bits':8230,'all_m1_through100_delta1_tight_E_term_gt1':True,'minimum_bad_term':{'m':minbad[1],**short_value(minbad[0])},'m_with_both_source_rows_lt1_at_Y8191':goodbase,'asymptotic':asym,'D_formulas':{'delta0':'(6m-1)! (m-1)! / ((5m)! (2m-1)!)','delta1':'(6m-1)! m! / ((5m-1)! (2m)!)','ratio_delta1_delta0':'5m/2','R':str(R)},'uniform_bound_next_candidate':{'status':'EXACT_POLYNOMIAL_PAPER_CERTIFICATE_NOT_LEAN','ratio_D0_next':'3m/(2m+1)*product_(j=1..5)((6m+j)/(5m+j))','step_lower':'R*(24m-1)/(24m+23)','D0_lower':'23*R^(m-1)/(24m-1), allm>=1 by telescoping','D1_lower':'(5m/2)*23*R^(m-1)/(24m-1)','cleared_difference_coefficients_m_ascending':Dpoly,'cleared_difference_coefficients_k_ascending_m_eq_k_plus1':shift,'finite_step_matches':100,'boundary':'Uniform statement is proposed from the actual factorial identity and all-positive polynomial identity, not inferred from finite m samples. Still needs formal proof before reuse.'},'all_rows':rows,'maximum_integer_coefficient_or_D_bits':maxbits,'seconds':time.perf_counter()-start,'lean_invocations':0,'interpretation':'Rejects the fixed8192 uniform capacity+two-row triangle certificate when only actual rationalD is used. Does not refute the original Padé cut, actualG, original Common, or the same seed at a higher threshold. Positive asymptotic slope leaves a higher-threshold route open.'}
(OUT/'probe-results.json').write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'seconds':out['seconds'],'asymptotic':asym,'capacities':capacity,'bad_Y':out['bad_Y_bits'],'minimum_bad_term':out['minimum_bad_term'],'good_m_at_original_Y':goodbase,'sample_m100':rows[99],'uniform_D_polynomial':out['uniform_bound_next_candidate'],'max_integer_bits':maxbits},ensure_ascii=False,indent=2))