from pathlib import Path
from fractions import Fraction as Q
from math import comb, factorial, gcd
from functools import reduce
import json,re,hashlib,time,datetime
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
OUT=Path(__file__).resolve().parent;RUN=OUT.parent.parent
start=time.monotonic();src={}
def read(p):
 src[p.relative_to(ROOT).as_posix()]={'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'bytes':p.stat().st_size}
 return p.read_text(encoding='utf-8-sig')
def js(p):return json.loads(read(p))
def D(u,v):
 f=v//2
 return Q(factorial(u+f)*factorial(f),factorial(u)*factorial(v))
def mag(u,v):return [comb(2*u-h,u)*comb(v+h,h) for h in range(u+1)]
def trim(p):
 while len(p)>1 and p[-1]==0:p.pop()
 return p
def add(a,b):
 c=[0]*max(len(a),len(b))
 for i,x in enumerate(a):c[i]+=x
 for i,x in enumerate(b):c[i]+=x
 return trim(c)
def mul(a,b):
 c=[0]*(len(a)+len(b)-1)
 for i,x in enumerate(a):
  for j,y in enumerate(b):c[i+j]+=x*y
 return trim(c)
def scale(a,c):return trim([x*c for x in a])
def product(fs):return reduce(mul,fs,[1])
def shift(p,n):
 ans=[0]
 for c in reversed(p):ans=add(mul(ans,[n,1]),[c])
 return ans
base=RUN/'experiments/huan-i11-elementary-finite-plan-5e2d13bb'
plan=js(base/'FINAL_PLAN.json');row=plan['selected_plan']['rows'][1]
rr=next(x for x in js(base/'D-rough-step-certificates.json')['tracks'] if (x['c'],x['d'],x['delta'])==(9,5,0))
reuse=js(RUN/'experiments/huan-i11-other-edge-reuse-5e2d13bb/SOURCE_MAP.json')
for name in ['lean/RationalDivisor/Content.lean','lean/RationalDivisor/Coefficients.lean','lean/Factorial/FactorialCommon.lean','lean/Growth/ElementaryRate.lean','lean/PadeInteger.lean']:
 p=RUN/name;read(p)
 if p.relative_to(ROOT).as_posix() in reuse['sources']:
  assert src[p.relative_to(ROOT).as_posix()]==reuse['sources'][p.relative_to(ROOT).as_posix()]
read(base/'qe-certificates/row-01.json')
assert src[(base/'FINAL_PLAN.json').relative_to(ROOT).as_posix()]==reuse['sources'][(base/'FINAL_PLAN.json').relative_to(ROOT).as_posix()]
assert row['seed']=={'p':7,'q':2,'k0':2,'l0':4,'a':1,'b':3,'D0':1,'c':9,'d':5}
Lt=Q(row['L_target']);Lm=Q(row['L_mid']);Rt=Lt**5;Rm=Lm**5;Inf=Q(823543,200000);R=Rm/Rt
assert Lt==Q(1302991,10**6) and Lm==Q(660547,500000) and row['D_threshold_m0']==224
assert Rt<=Inf and 1<=R and 2<=1+15*(R-1)
N=product(rr['numerator_factors']);T=product(rr['denominator_factors'])
assert N==list(map(int,rr['N_coefficients'])) and T==list(map(int,rr['T_coefficients']))
rough=add(scale(mul(shift(N,1),[9,6,1]),200000),scale(mul(shift(T,1),[4,4,1]),-823543))
cp=rr['rough_certificate'];assert rough==[int(cp['content'])*int(v) for v in cp['primitive_coefficients_ascending']]
assert len(rough)==11 and min(rough)>0
middle=add(scale(shift(N,44),Rm.denominator),scale(shift(T,44),-Rm.numerator))
cp2=row['D_tracks'][0]['constant_step_certificate'];assert middle==[int(cp2['content'])*int(v) for v in cp2['primitive_coefficients_ascending']]
assert len(middle)==10 and min(middle)>0
assert Q(row['D_tracks'][0]['constant_step_target'])==Rm
# Generic comparison and the exact scope failures.
for u in range(1,31):
 for r in range(21):
  assert D(u-1,2*r+2)==Q(u,2)*D(u,2*r+1)
  if u>=2:assert D(u,2*r+1)<=D(u-1,2*r+2)
assert D(0,2)!=Q(0,2)*D(0,1)
assert D(0,2)<D(1,1)
assert D(2,1)==D(1,2)==1
assert reduce(gcd,mag(2,1))==3 and reduce(gcd,mag(1,2))==1
# Actual D0 and its recurrence; no step is taken on trust.
def ratpoly(p,x):return sum(Q(c)*x**i for i,c in enumerate(p))
steps=[]
for m in list(range(1,13))+[43,44,223,224,225]:
 d0=D(5*m,4*m-1);d1=D(5*m-1,4*m)
 ratio=ratpoly(N,Q(m))/ratpoly(T,Q(m))
 assert D(5*(m+1),4*(m+1)-1)==d0*ratio
 assert d1==Q(5*m,2)*d0 and d1>=d0
 assert Inf*Q(m+1,m+2)**2<=ratio
 if m>=44:assert Rm<=ratio
 steps.append({'m':m,'ratio':str(ratio),'D1_over_D0':str(d1/d0),'rough':True,'middle':m>=44})
# Exact original finite base; no D(44), R^180 or factorial threshold in the candidate numeric proof.
initial=1/Rt*Q(4,45**2)
assert initial==Q(row['D_tracks'][0]['initial_ratio_lower'])
assert initial*2**11>=1
assert initial*2**11==Q(row['D_tracks'][0]['initial_lower_times_2powT'])
assert 44+15*(11+1)==224
# Bounded actual coefficient/gcd tests including the two endpoint deltas.
checks=[];count=0
for m in list(range(1,13))+[224,225]:
 for delta in (0,1):
  u=5*m-delta;v=4*m+delta-1;ds=D(u,v);qs=mag(u,v);g=reduce(gcd,qs)
  assert all((Q(q)/ds).denominator==1 and Q(q)/ds>0 for q in qs)
  assert Q(g)>=ds and (Q(g)/ds).denominator==1
  if m>=224:assert Lt**(5*m)<ds<=g
  checks.append({'m':m,'delta':delta,'q_count':len(qs),'G':str(g),
    'D_numerator_bits':ds.numerator.bit_length(),'D_denominator_bits':ds.denominator.bit_length(),'lower_checked':m>=224})
  count+=len(qs)
assert count==5284
# Other even differences only test the D identity; no new G rate or threshold claimed.
for c,d in [(23,15),(11,7)]:
 for m in range(1,7):assert D(d*m-1,(c-d)*m)==Q(d*m,2)*D(d*m,(c-d)*m-1)
# Literal certificate payload in candidates is bound to these same frozen arrays.
cs=read(OUT/'Certificates.lean')
for v in cp['primitive_coefficients_ascending']+cp2['primitive_coefficients_ascending']:assert v in cs
for p in sorted(OUT.glob('*.lean')):
 text=read(p);clean=re.sub(r'/-.*?-/', '',text,flags=re.S);clean=re.sub(r'--[^\n]*','',clean)
 assert not re.search(r'\b(sorry|admit|axiom|native_decide|ofReduceBool)\b',clean)
 assert '@PKG@' not in text and '@OWN@' not in text
read(OUT/'build_candidate.py');read(OUT/'check.py')
# Bind currently accepted foundations, reusing their complete project closures.
accepted=[]
for name in ['rational-divisor-content','elementary-rate','factorial-extra-5-4']:
 paths=list((RUN/'verification/huan-prerequisites').glob(name+'.json'))
 assert paths, name
 rec=js(paths[0]);ev=js(ROOT/rec['evidence']);assert ev['success'] and ev['exit_code']==0
 for c in ev['source_closure']:
  read(ROOT/c['source']);assert src[c['source']]['sha256']==c['source_sha256_before']==c['source_sha256_after']
 assert all(set(a['axioms'])<={'propext','Quot.sound','Classical.choice'} for a in rec['public_axiom_audit'])
 accepted.append({'name':name,'evidence':rec['evidence'],'roots':len(rec['public_axiom_audit']),'hashes_match':True})
# Source data mutation does not silently preserve a complete polynomial certificate.
assert add(rough,[280])!=rough
assert add(scale(shift(N,43),Rm.denominator),scale(shift(T,43),-Rm.numerator))!=middle
assert time.monotonic()-start<60
for name,rec in src.items():assert hashlib.sha256((ROOT/name).read_bytes()).hexdigest()==rec['sha256']
result={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'status':'PASS_BOUNDED_EXACT_NOT_LEAN',
 'generic_D_identity_cases':630,'generic_monotonic_D_cases':609,'u0_identity_rejected':True,'u1_monotonicity_rejected':True,
 'G_monotonicity_counterexample':{'u':2,'r':0,'D0':'1','D1':'1','G0':3,'G1':1},
 'fixed_seed':row['seed'],'Lt':str(Lt),'Lm':str(Lm),'targetRate':str(Rt),'middleRate':str(Rm),'infiniteRate':str(Inf),'blockRatio':str(R),
 'rough_coefficients':list(map(str,rough)),'middle_coefficients':list(map(str,middle)),'positive_coefficients':21,
 'step_samples':steps,'initial_ratio_lower':str(initial),'initial_times_2pow11':str(initial*2**11),'threshold_arithmetic':'44+15*(11+1)=224',
 'actual_coefficient_cases':checks,'actual_q_coefficients_checked':count,'other_even_difference_D_cases':12,
 'tamper_rejections':['changed rough coefficient','changed middle shift44 to43'],'all_input_hashes_match':True,
 'accepted_receipts':accepted,'source_count':len(src),'seconds':time.monotonic()-start,'Lean_runs':0,'new_B_original_results':0}
(OUT/'exact-checks.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
(OUT/'SOURCE_BINDINGS.json').write_text(json.dumps({'worktree':ROOT.as_posix(),'sources':src,'matched_before_and_after':True},ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({k:result[k] for k in ['status','generic_D_identity_cases','positive_coefficients','actual_q_coefficients_checked','source_count','seconds']},ensure_ascii=False))
