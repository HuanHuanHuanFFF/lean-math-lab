"""One fixed all-Y capacity certificate. Exact arithmetic; no Lean or sampling proof.
Only writes inside this script's directory. Input analytic Q/E estimates remain
conditional; actual all-m divisor lower bounds are adopted with source receipts.
"""
from pathlib import Path
from fractions import Fraction as F
from math import factorial,comb,isqrt
import hashlib,json,datetime,time
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
OLD=ROOT/'research/tasks/B699-Binomial/runs/20260910-i13-closure-ad35779e/delivery'
OUT=Path(__file__).resolve().parent
assert OUT==RUN/'experiments/huan-i13-c311-high-height-5e2d13bb'
if not __debug__:raise RuntimeError('Assertions must remain enabled')

def iv(q):return(F(q),F(q))
def add(a,b):return(a[0]+b[0],a[1]+b[1])
def sub(a,b):return(a[0]-b[1],a[1]-b[0])
def mul(a,b):
 w=[x*y for x in a for y in b];return(min(w),max(w))
def div(a,b):
 assert b[0]>0;return mul(a,(1/b[1],1/b[0]))
def pw(a,n):
 assert a[0]>=0;return(a[0]**n,a[1]**n)
def sqrtiv(q,bits=160):
 q=F(q);D=1<<bits;k=isqrt(q.numerator*D*D//q.denominator)
 lo,hi=F(k,D),F(k+1,D)
 assert lo*lo<=q<hi*hi
 return(lo,hi)
def ceilq(q,den):return F(-((-q.numerator*den)//q.denominator),den)
def floorq(q,den):return F(q.numerator*den//q.denominator,den)
def enclosure(x,den=10**15):return {'lo':str(floorq(x[0],den)),'hi':str(ceilq(x[1],den))}
def beta(a,b):
 assert a>0 and b>0
 return F(factorial(a-1)*factorial(b-1),factorial(a+b-1))
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def run():
 start=time.perf_counter()
 oldrows=json.loads((OLD/'input/i13_cuts.json').read_text())['cuts']
 row=next(r for r in oldrows if (r['p'],r['q'])==(3,11))
 assert {k:row[k] for k in ['p','q','k0','l0','a','b','D0','c','d','wp','wq']}==dict(p=3,q=11,k0=5,l0=2,a=1,b=2,D0=1,c=7,d=5,wp=321,wq=407)
 P,Q,c,d=243,121,7,5;z=F(1,243);t=F(d,c);s=F(c,d)
 assert P-2*Q==1 and 0<z<1/s
 R=F(11664,3125);S=F(9555003,2560000);CG=F(71875,18345885696)
 assert S==R*F(65535,65536) and CG==F(23,24)/R/65536
 # Stable algebraic forms of the original stationary points.
 disc=z*z+4*t*t*(1-z);sd=sqrtiv(disc)
 xq=div(iv(2*(1-t)),add(iv(2-z),sd))
 xe=div(iv(2*t),add(iv(2*t+z),sd))
 assert 0<xq[0]<=xq[1]<1 and 0<xe[0]<=xe[1]<1
 alpha=F((c+d)**(c+d),(c-d)**(c-d)*d**(2*d))
 Qcore=mul(mul(pw(xq,c-d),pw(sub(iv(1),xq),d)),pw(sub(iv(1),mul(iv(1-z),xq)),d))
 Ecore=mul(mul(pw(xe,d),pw(sub(iv(1),xe),d)),pw(sub(iv(1),mul(iv(z),xe)),c-d))
 Bq=mul(iv(alpha),Qcore);Be=mul(iv(alpha),Ecore)
 Uq=ceilq(Bq[1],10**12);Ue=ceilq(Be[1],10**12)
 # C1/C2 exactly follow original formula; pi>3 is the sole pi bound.
 sf=sqrtiv(s*s-1);constants=[]
 for delta in [0,1]:
  h=d-delta;jdeg=c-d-1+delta
  Jq=sum((F(comb(h,j))*z**j*beta(jdeg+j+1,2*h-j+1) for j in range(h+1)),F())
  Je=sum((F(comb(jdeg,j))*(1-z)**j*beta(h+j+1,h+jdeg-j+1) for j in range(jdeg+1)),F())
  fac=sf if delta==0 else div(iv(1),sf)
  Cq=div(mul(iv(alpha*Jq),fac),mul(iv(6),Bq))
  Ce=div(mul(iv(alpha*Je),fac),mul(iv(6),Be))
  assert Cq[1]<1
  ecap=[F(1,16),F(7,25)][delta]
  assert Ce[1]<ecap
  constants.append({'delta':delta,'Jq':str(Jq),'Je':str(Je),'Cq_pi3_enclosure':enclosure(Cq),'Ce_pi3_enclosure':enclosure(Ce),'Cq_cap':'1','Ce_cap':str(ecap)})
 # One capacity construction. Bases are only 6493 and 14170 bits.
 basis_power=4096;p_up=6493;q_up=14170
 assert 3**basis_power<2**p_up and 11**basis_power<2**q_up
 Kp=F(679*basis_power,35000*p_up);Kq=F(593*basis_power,14000*q_up)
 K=F(49664,4058125)
 assert K==Kp and K<Kq
 H=15359;m0=187
 assert m0<K*H<m0+1
 # E ratio lower. This one finite power proves a rate for all m.
 r=F(82161,1000)
 AE=F(P**5*Q**7)*R/Ue
 AQ=F(P**2)*R/(2**7*Uq)
 assert AQ>F(3,2)
 ae_lhs=AE.numerator**r.denominator
 ae_rhs=AE.denominator**r.denominator * 2**r.numerator
 assert ae_lhs>ae_rhs
 # For all m>=187, r*m-(m+1)/K >= 2+(m-187)/3.
 gamma=r-1/K
 zeta0=r*m0-F(m0+1)/K
 assert gamma>F(1,3) and zeta0>2
 # (24m-1) grows at most 5/4 at each step for m>=187;
 # (5/4)^3<2 lets this be absorbed by 2^((m-187)/3).
 assert 4*(24*m0+23)<5*(24*m0-1)
 assert 5**3<2*4**3
 # Exact both-delta E caps and Q cap, all propagated from m0.
 E0_const=R*F(24*m0-1,184*P) # 2*(1/16)*R/23*(24m-1)/P
 E1_const=R*F(672,2875) # 2*(7/25)*R/23 * (24m-1)*2/(5m) < 672R/2875
 assert E0_const<1 and E1_const<1
 E0=E0_const/4;E1=E1_const/4
 Qcap=F(24)*R/F(23)*(24*m0-1)*F(2,3)**m0
 assert Qcap<F(1,4) and E0<F(1,4) and E1<F(1,4)
 assert F(5,4)*F(2,3)<1
 # Stronger check using only rational numbers: whole eta <1/2.
 assert E0+Qcap<F(1,2) and E1+Qcap<F(1,2)
 geo_majorant=F(2*(1<<H))*F(7,25)/CG * (Ue/(F(P**5*Q**7)*S))**m0
 assert geo_majorant>1
 # This rejects only this weaker sufficient majorant at the chosen m.
 # We do not assert finite computations prove infinite domains. The report
 # provides the induction and floor-selector deduction using these constants.
 checks={
  'source_seed_exact':True,'q_estimate_caps_both':True,'e_estimate_caps_both':True,
  'capacity_bases':True,'Kp_equals_K_lt_Kq':True,'m_at_H_at_least187':True,
  'AQ_gt_three_halves':True,'AE_pow1000_gt_two_pow82161':True,
  'zeta187_gt_two':True,'zeta_step_gt_one_third':True,
  'linear_growth_step_le_five_fourths':True,'five_fourths_cubed_lt_two':True,
  'E0_cap_lt_quarter':True,'E1_cap_lt_quarter':True,'Q_cap_lt_quarter':True,
  'both_source_triangle_eta_lt_half_uniform_conditional':True}
 result={'status':'PASS_EXACT_CERTIFICATE_WITH_UNIFORM_PAPER_DEDUCTION_NOT_LEAN',
  'source_input':row,'threshold':{'n_bits':15360,'Y_bits':H,'Y_definition':'n-12','window':'Np,Nq in[Y,2Y],difference<=24'},
  'adopted_D':{'R':str(R),'D0_lower':'23*R^(m-1)/(24m-1)','D1':'(5m/2)*D0','weak_geometric_S':str(S),'weak_geometric_C':str(CG),'used_bound':'sharper accepted linear-denominator bound; the common geometric relaxation with these Q/E caps fails at the selected base m'},
  'stationary':{'disc':str(disc),'sqrt_discriminant_outward':enclosure(sd),'xq':enclosure(xq),'xe':enclosure(xe)},
  'analytic_inputs':{'status':'original Q/E estimates remain not Lean formalized','alpha_to_d':str(alpha),'Qcal_pow_d':enclosure(Bq),'Ecal_pow_d':enclosure(Be),'Uq':str(Uq),'Ue':str(Ue),'constants':constants},
  'selector':{'K':str(K),'Kq':str(Kq),'m':'floor(K*log_2(Y))','domain':'all real Y>=2^15359','m_min':m0,'K_times_H':str(K*H),'p_basis':[3,4096,2,6493],'q_basis':[11,4096,2,14170]},
  'rates':{'AE':str(AE),'AQ':str(AQ),'r_log2_AE_lower':str(r),'gamma':str(gamma),'zeta187':str(zeta0),'gamma_minus_third':str(gamma-F(1,3)),'zeta187_minus_two':str(zeta0-2),'AE_integer_power_bits':[ae_lhs.bit_length(),ae_rhs.bit_length()]},
  'uniform_caps':{'E0_constant':str(E0_const),'E1_constant':str(E1_const),'E0':str(E0),'E1':str(E1),'Q':str(Qcap),'display_E0':enclosure(iv(E0)),'display_E1':enclosure(iv(E1)),'whole_eta_lt':'1/2'},
  'checks':checks,'new_Lean_invocations':0,'original_i13_coverage_added':False,
  'weaker_geometric_diagnostic':{'m':m0,'Y_bits':H,'delta':1,'conservative_E_majorant_gt_one':True,'majorant_floor':geo_majorant.numerator//geo_majorant.denominator,'interpretation':'Only the sufficient majorant using the common C*S^m relaxation fails here; the stronger accepted D bound is used instead.'},
  'boundary':'Capacity and source triangle closure for one fixed high-height edge, conditional on actual Q/E estimates. This script does not formalize the estimates, actual Padé consumer, other i13 edges, weighted graph or original theorem.',
  'seconds':time.perf_counter()-start,'utc':datetime.datetime.now(datetime.timezone.utc).isoformat()}
 if not (OUT/'FREEZE.json').exists():
  (OUT/'certificate.json').write_bytes((json.dumps(result,ensure_ascii=False,indent=2)+'\n').encode('utf-8'))
 print(json.dumps({'status':result['status'],'selector':result['selector'],'analytic_bounds':{'Uq':str(Uq),'Ue':str(Ue)},'rates':result['rates'],'uniform_caps':result['uniform_caps'],'seconds':result['seconds']},ensure_ascii=False,indent=2))
 return result
if __name__=='__main__':run()
