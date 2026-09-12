"""Independent arithmetic verification for the single high-height construction.
Does not import certificate.py or any earlier interval implementation.
Uses rational bisection for square roots, original s-form stationary points,
and signed polynomial integration instead of the generator's positive beta sums.
"""
from pathlib import Path
from fractions import Fraction as F
from math import comb,factorial
import json,hashlib,time,datetime
OUT=Path(__file__).resolve().parent
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
assert OUT==RUN/'experiments/huan-i13-c311-high-height-5e2d13bb'
if not __debug__:raise RuntimeError('Assertions required')

def sqroot(q):
 lo,hi=F(0),F(4)
 assert lo*lo<=q<hi*hi
 for _ in range(200):
  mid=(lo+hi)/2
  if mid*mid<=q:lo=mid
  else:hi=mid
 assert lo*lo<=q<hi*hi
 return(lo,hi)
def pt(q):return(F(q),F(q))
def plus(a,b):return(a[0]+b[0],a[1]+b[1])
def minus(a,b):return(a[0]-b[1],a[1]-b[0])
def times(a,b):
 pairs=tuple(x*y for x in a for y in b);return min(pairs),max(pairs)
def over(a,b):
 assert b[0]>0
 return times(a,(1/b[1],1/b[0]))
def power(a,k):
 v=pt(1)
 for _ in range(k):v=times(v,a)
 return v
def conv(a,b):
 r=[F(0)]*(len(a)+len(b)-1)
 for i,x in enumerate(a):
  for j,y in enumerate(b):r[i+j]+=x*y
 return r
def ppow(p,n):
 out=[F(1)]
 for _ in range(n):out=conv(out,p)
 return out
def integ(p):return sum((a/F(k+1) for k,a in enumerate(p)),F())
def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def run():
 t0=time.perf_counter();data=json.loads((OUT/'certificate.json').read_text())
 P,Q=243,121;s=F(7,5);z=F(1,243);R=F(11664,3125)
 disc=s*s*z*z+4-4*z;root=sqroot(disc)
 xq=over(minus(pt(s*(2-z)),root),pt(2*(1-z)*(s+1)))
 xe=over(minus(pt(s*z+2),root),pt(2*z*(s+1)))
 alpha=F(12**12,2**2*5**10)
 qb=times(pt(alpha),times(times(power(xq,2),power(minus(pt(1),xq),5)),power(minus(pt(1),times(pt(1-z),xq)),5)))
 eb=times(pt(alpha),times(times(power(xe,5),power(minus(pt(1),xe),5)),power(minus(pt(1),times(pt(z),xe)),2)))
 Uq=F(data['analytic_inputs']['Uq']);Ue=F(data['analytic_inputs']['Ue'])
 assert qb[1]<Uq and eb[1]<Ue
 sqrtfac=sqroot(s*s-1)
 integral_checks=[]
 for delta in [0,1]:
  h=5-delta;t=1+delta
  jp=[F(0)]*t+conv(ppow([F(1),F(-1)],h),ppow([F(1),-(1-z)],h))
  ep=[F(0)]*h+conv(ppow([F(1),F(-1)],h),ppow([F(1),-z],t))
  Jq,Je=integ(jp),integ(ep)
  assert Jq==F(data['analytic_inputs']['constants'][delta]['Jq'])
  assert Je==F(data['analytic_inputs']['constants'][delta]['Je'])
  f=sqrtfac if delta==0 else over(pt(1),sqrtfac)
  cq=over(times(pt(alpha*Jq),f),times(pt(6),qb))
  ce=over(times(pt(alpha*Je),f),times(pt(6),eb))
  assert cq[1]<1 and ce[1]<[F(1,16),F(7,25)][delta]
  integral_checks.append({'delta':delta,'signed_polynomial_matches_positive_beta_sum':True,'C1_lt1':True,'C2_cap':str([F(1,16),F(7,25)][delta])})
 K=F(49664,4058125);H=15359;m0=187;r=F(82161,1000)
 assert 3**4096<1<<6493 and 11**4096<1<<14170
 assert K==F(679*4096,35000*6493) and K<F(593*4096,14000*14170)
 assert m0<K*H<m0+1
 A=F(3**25*11**14)*R/Ue
 B=F(3**10)*R/(128*Uq)
 assert A==F(data['rates']['AE']) and B==F(data['rates']['AQ'])
 assert (A.numerator**1000)>(A.denominator**1000 << 82161)
 assert B>F(3,2)
 assert r-1/K>F(1,3)
 assert r*m0-F(m0+1)/K>2
 # Universal induction obligations, stated algebraically, not sample evidence.
 # 5(24m-1)-4(24m+23)=24m-97>0 for m>=187.
 assert 24*m0-97>0 and 125<128
 E0=R*F(24*m0-1,4*184*P)
 E1=R*F(672,4*2875)
 qcap=F(24)*R/23*(24*m0-1)*F(2,3)**m0
 assert E0==F(data['uniform_caps']['E0']) and E1==F(data['uniform_caps']['E1'])
 assert qcap==F(data['uniform_caps']['Q'])
 assert E0<F(1,4) and E1<F(1,4) and qcap<F(1,4)
 # qcap propagation: (5/4)*(2/3)=5/6<1 for every further m.
 assert F(5,4)*F(2,3)==F(5,6)<1
 # Required negative control: direct actual E polynomials and factorial D.
 # This bounded computation is used only to rule out the finite m<=100
 # branch at the old height; m>=101 is excluded uniformly by capacity.
 Y=1<<8230;minima={0:None,1:None};trace=hashlib.sha256()
 for m in range(1,101):
  for delta in [0,1]:
   u=5*m-delta;v=2*m+delta-1;N=2*u+v+1;f=v//2
   D=F(factorial(u+f)*factorial(f),factorial(u)*factorial(v))
   eh=sum((-1)**j*comb(u+j,j)*comb(N,2*u+j+1)*P**(v-j) for j in range(v+1))
   eta=F(Y*eh,(P*Q)**(7*m))/D
   assert eta>[128,512][delta]
   if minima[delta] is None or eta<minima[delta][1]:minima[delta]=(m,eta)
   trace.update(f'{m},{delta},{eh},{D.numerator},{D.denominator};'.encode())
 assert all(minima[d][0]==100 for d in [0,1])
 assert 1<<405<3**256 and 1<<885<11**256
 pm=405*35000*101-8230*679*256
 qm=885*14000*101-8230*593*256
 assert pm>0 and qm>0
 result={'status':'PASS_INDEPENDENT_EXACT_CHECK_NOT_LEAN','certificate_sha256':digest(OUT/'certificate.json'),'generator_sha256':digest(OUT/'certificate.py'),
 'analytic_check':'200-step rational square-root bisection in original s variables; signed polynomial integrals; no imported generator functions',
 'constant_checks':integral_checks,'uniform_induction_obligations':True,'all_Y_scope':'all real Y>=2^15359 with m=floor((49664/4058125)*log2Y)',
 'negative_control':{'Y_bits':8230,'finite_m_range':[1,100],'both_deltas':True,'minimal_m':{str(d):minima[d][0] for d in [0,1]},'minimal_E_floor':{str(d):minima[d][1].numerator//minima[d][1].denominator for d in [0,1]},'m_ge101_capacity_exclusion_margins':[pm,qm],'trace_sha256':trace.hexdigest(),'conclusion':'Every m>=1 is blocked for the old actual-D capacity/triangle interface; not an original Padé or B699 counterexample.'},
 'new_Lean_invocations':0,'seconds':time.perf_counter()-t0,'utc':datetime.datetime.now(datetime.timezone.utc).isoformat()}
 if not (OUT/'FREEZE.json').exists():
  (OUT/'independent-check.json').write_bytes((json.dumps(result,ensure_ascii=False,indent=2)+'\n').encode('utf-8'))
 print(json.dumps(result,ensure_ascii=False,indent=2))
 return result
if __name__=='__main__':run()
