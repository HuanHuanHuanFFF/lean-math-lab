from pathlib import Path
from fractions import Fraction as F
from math import isqrt, factorial, prod, comb, gcd
import json, hashlib, time, re, sys
OUT=Path(__file__).resolve().parent
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
assert OUT==RUN/'experiments/huan-i13-fixed-graph-rate-review-5e2d13bb'
CHECK='--check' in sys.argv
assert CHECK or not (OUT/'FREEZE.json').exists()
start=time.perf_counter()
def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()
sources={}
def read(p):
 p=Path(p); sources[p.relative_to(ROOT).as_posix()]={'sha256':sha(p),'bytes':p.stat().st_size}; return p.read_text(encoding='utf-8-sig')
def iv(x):return(F(x),F(x))
def add(a,b):return(a[0]+b[0],a[1]+b[1])
def neg(a):return(-a[1],-a[0])
def sub(a,b):return add(a,neg(b))
def mul(a,b):
 vals=[x*y for x in a for y in b];return(min(vals),max(vals))
def div(a,b):
 assert b[0]>0;return mul(a,(1/b[1],1/b[0]))
def pw(a,n):
 assert a[0]>=0;return(a[0]**n,a[1]**n)
def miniv(a,b):return(min(a[0],b[0]),min(a[1],b[1]))
def maxiv(a,b):return(max(a[0],b[0]),max(a[1],b[1]))
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
def dec(q,digits,upper=False):
 scale=10**digits
 x=-((-q.numerator*scale)//q.denominator) if upper else q.numerator*scale//q.denominator
 sign='-' if x<0 else '';x=abs(x)
 return f'{sign}{x//scale}.{x%scale:0{digits}d}'
def show(a):
 b=rnd(a);lo=dec(b[0],15);hi=dec(b[1],15,True)
 assert F(lo)<=a[0]<=a[1]<=F(hi)
 return {'lower':lo,'upper':hi,'exact_lower':str(b[0]),'exact_upper':str(b[1])}
def sign(a):
 assert a[0]>0 or a[1]<0
 return 'positive' if a[0]>0 else 'negative'
source=ROOT/'research/tasks/B699-Binomial/runs/20260910-i13-closure-ad35779e/delivery/input/i13_cuts.json'
original=json.loads(read(source))
rows=original['cuts'];indices=[1,2,3,4,6,8,9,10]
assert sha(source)=='195d21db772a0637f7514cb920de8b66c029cb54f2347ef50191d69eb675efe1'
parent=json.loads(read(RUN/'experiments/huan-i13-fixed-graph-asymptotic-probe-5e2d13bb/probe.json'))
read(RUN/'experiments/huan-i13-fixed-graph-asymptotic-probe-5e2d13bb/probe.py')
read(RUN/'experiments/huan-i13-route-inventory-5e2d13bb/capacity-probe/run_probe.py')
read(ROOT/'research/tasks/B699-Binomial/runs/20260910-i13-closure-ad35779e/delivery/notes/PROOFS.md')

def beta(c,d):return F((c+d)**(c+d),d**(2*d)*(c-d)**(c-d))
def cores(row):
 c,d=row['c'],row['d'];P=row['p']**row['k0'];Q=row['q']**row['l0'];a,b,Ds=row['a'],row['b'],row['D0']
 assert a*P-b*Q==Ds and gcd(c,d)==1
 z=F(Ds,a*P);t=F(d,c);assert 0<z<t<1
 S=sqrtiv(z*z+4*t*t*(1-z))
 xq=div(iv(2*(1-t)),add(iv(2-z),S));xe=div(iv(2*t),add(iv(2*t+z),S))
 assert 0<xq[0]<=xq[1]<1 and 0<xe[0]<=xe[1]<1
 qder=add(sub(mul(iv((c+d)*(1-z)),pw(xq,2)),mul(iv(c*(2-z)),xq)),iv(c-d))
 eder=add(sub(mul(iv((c+d)*z),pw(xe,2)),mul(iv(2*d+c*z),xe)),iv(d))
 assert qder[0]<=0<=qder[1] and eder[0]<=0<=eder[1]
 lq=mul(mul(pw(xq,c-d),pw(sub(iv(1),xq),d)),pw(sub(iv(1),mul(iv(1-z),xq)),d))
 le=mul(mul(pw(xe,d),pw(sub(iv(1),xe),d)),pw(sub(iv(1),mul(iv(z),xe)),c-d))
 return P,Q,z,xq,xe,lq,le

def compute(row,gamma=None,lambdas=None):
 c,d=row['c'],row['d'];a,b,Ds=row['a'],row['b'],row['D0'];P,Q,z,xq,xe,lq,le=cores(row)
 R2=beta(c,d)/4**c;directGamma=mul(iv(F(1,2)),lnf(R2))
 if gamma is None:gamma=directGamma
 if lambdas is not None:
  assert lq[1]<=lambdas[0] and le[1]<=lambdas[1]
  lq,le=map(iv,lambdas)
 lqb=lniv(mul(iv(beta(c,d)),lq));leb=lniv(mul(iv(beta(c,d)),le))
 LP,LQ,La,Lb,LD=map(lnf,[P,Q,a,b,Ds])
 eq0=sub(sub(add(mul(iv(d),LP),mul(iv(c),LQ)),mul(iv(c-d),La)),add(mul(iv(2*d),LD),leb))
 qq0=sub(sub(mul(iv(c-d),LP),add(mul(iv(d),La),mul(iv(c),Lb))),lqb)
 T=add(eq0,gamma);AQ=add(qq0,gamma)
 kp=div(iv(F(1000-row['wp'],1000)),mul(iv(c),LP));kq=div(iv(F(1000-row['wq'],1000)),mul(iv(c),LQ));kappa=miniv(kp,kq)
 slack=sub(mul(kappa,T),iv(1));requiredE=sub(div(iv(1),kappa),eq0);requiredQ=neg(qq0);required=maxiv(requiredE,requiredQ)
 gain=sub(required,gamma)
 # The two logarithmic expressions agree with their multiplicative scale definitions.
 testT=add(sub(add(mul(iv(c),LP),mul(iv(c),LQ)),add(mul(iv(c-d),lnf(a*P)),mul(iv(2*d),LD))),sub(gamma,leb))
 assert T[0]<=testT[1] and testT[0]<=T[1]
 # Same-row monotonicity against G=1, in logG/m units, no change of parameters.
 assert gamma[0]>0
 baselineSlack=sub(mul(kappa,eq0),iv(1))
 assert baselineSlack[1]<slack[0] and qq0[1]<AQ[0]
 bound='p' if kp[1]<kq[0] else 'q' if kq[1]<kp[0] else 'both/unresolved'
 out={'parameters':row,'P':P,'Q':Q,'z':str(z),'beta':str(beta(c,d)),'R_squared_per_two_m_steps':str(R2),'gamma_logG_per_m':show(gamma),'direct_D_gamma':show(directGamma),'xQ':show(xq),'xE':show(xe),'lambdaQ':show(lq),'lambdaE':show(le),'logQBase':show(lqb),'logEBase':show(leb),'logAQ':show(AQ),'logAE':show(T),'kappa':show(kappa),'capacity_limiter':bound,'capacity_times_E_rate_minus_one':show(slack),'Q_sign':sign(AQ),'E_capacity_sign':sign(slack),'minimum_gamma_Q':show(requiredQ),'minimum_gamma_E':show(requiredE),'minimum_gamma_both':show(required),'additional_gamma_needed':show(gain),'G1_logAQ':show(qq0),'G1_capacity_slack':show(baselineSlack),'same_configuration_monotonic':True}
 return out
fixed=[]
for idx in indices:
 r=compute(rows[idx]);r['source_index']=idx
 # Compare floating precursor only as a diagnostic, not an acceptance test.
 r['parent_indicated_signs']={'Q': 'positive' if parent['results'][indices.index(idx)]['logAQ']>0 else 'negative','E': 'positive' if parent['results'][indices.index(idx)]['capacity_times_E_rate_minus_one']>0 else 'negative'}
 assert r['Q_sign']==r['parent_indicated_signs']['Q'] and r['E_capacity_sign']==r['parent_indicated_signs']['E']
 fixed.append(r)

# Actual factorial objects: a bounded identity diagnostic, not an asymptotic or uniform proof.
checks=0;layer_checks=0
for c,d in sorted(set((rows[i]['c'],rows[i]['d']) for i in indices)):
 for delta in [0,1]:
  for m in range(1,21):
   u=d*m-delta;v=(c-d)*m+delta-1;f=v//2
   assert u>=0 and v>=0
   def D(uu,vv):return F(factorial(uu+vv//2)*factorial(vv//2),factorial(uu)*factorial(vv))
   rat=F(prod(range(u+f+1,u+f+c+d+1))*prod(range(f+1,f+c-d+1)),prod(range(u+1,u+2*d+1))*prod(range(v+1,v+2*(c-d)+1)))
   assert D(u+2*d,v+2*(c-d))/D(u,v)==rat
   checks+=1
   if m<=4:
    gd=0
    for h in range(u+1):gd=gcd(gd,comb(2*u-h,u)*comb(v+h,h))
    assert (F(gd)/D(u,v)).denominator==1
    layer_checks+=1

# Existing i11 sources: reuse exactly the real targetBase and actual kernel lambda.
def base_from(file,name):
 text=read(file);match=re.search(r'def '+name+r'\s*:\s*ℚ\s*:=\s*(\d+)\s*/\s*(\d+)',text);assert match
 return F(int(match[1]),int(match[2]))
def kernels(file):return base_from(file,'qLambda'),base_from(file,'eLambda')
base54=base_from(RUN/'lean/I11DivisorTwoFive/Actual.lean','targetBase')
base53=base_from(RUN/'lean/I11DivisorFiveThree/Actual.lean','targetBase')
base95=base_from(RUN/'lean/I11DivisorSevenTwo/Actual.lean','targetBase')
base117=base_from(RUN/'lean/I11DivisorFiveSeven/Actual.lean','targetBase')
ql54=kernels(RUN/'lean/I11TwoFiveEdge/GrowthInputs.lean');ql53=kernels(RUN/'lean/I11Scaled/GrowthInputs.lean')
ql95=kernels(RUN/'lean/I11SevenTwoEdge/GrowthInputs.lean');ql117=kernels(RUN/'lean/I11FiveSevenEdge/GrowthInputs.lean')
comparisons=[]
for idx,bas,lam,kind in [(1,base54,ql54,'same seed and cd; accepted target G and Q/E lambdas'),(4,base54,None,'same cd only; accepted G applies but new kernel is optimistic exact maximum'),(10,base54,None,'same cd only; accepted G applies but new kernel is optimistic exact maximum'),(6,base53,ql53,'same seed and cd; accepted target G and Q/E lambdas')]:
 r=compute(rows[idx],mul(iv(rows[idx]['d']),lnf(bas)),lam)
 r.update({'source_index':idx,'comparison':kind,'targetBase':str(bas)})
 comparisons.append(r)
for idx,c,d,bas,lam in [(3,9,5,base95,ql95),(9,11,7,base117,ql117)]:
 row=dict(rows[idx]);row.update(c=c,d=d)
 # Explicitly label changed c/d; no transfer between gcd families is asserted.
 for label,gam,lams in [('existing c/d with accepted G and kernel lambdas',mul(iv(d),lnf(bas)),lam),('existing c/d with optimistic full rational-D rate',None,None)]:
  r=compute(row,gam,lams);r.update({'source_index':idx,'comparison':label,'cd_changed_from':[rows[idx]['c'],rows[idx]['d']],'targetBase':str(bas)})
  comparisons.append(r)
r=compute(rows[8],lnf(F(11664,3125)*F(65535,65536)));r.update({'source_index':8,'comparison':'accepted I13G75 geometric bound rate, with fixed positive prefactor; kernel maximum remains an asymptotic model'})
comparisons.append(r)

# Existing source BFT L1 is compared only as an unaccepted external stronger-rate input.
old_rates=[]
for idx in indices:
 r=compute(rows[idx],mul(iv(rows[idx]['d']),lnf(F(rows[idx]['L1']))))
 assert r['Q_sign']=='positive' and r['E_capacity_sign']=='positive'
 r.update({'source_index':idx,'status':'OLD_PAPER_BFT_RATE_ONLY_NOT_ACCEPTED_LEAN','exact_L1':str(F(rows[idx]['L1']))})
 old_rates.append(r)

# Source matches for ProC R2; permutations and proportional parameter scaling checked exactly.
triples=[(5,7,14),(9,12,20),(5,6,15),(8,8,13),(9,11,18),(10,15,19)]
proc=[]
for r in fixed:
 if r['E_capacity_sign']!='negative':continue
 c,d=r['parameters']['c'],r['parameters']['d'];want=tuple(sorted((d,d,c-d)))
 matches=[]
 for tri in triples:
  st=tuple(sorted(tri));ratio=F(want[0],st[0])
  if all(F(a,b)==ratio for a,b in zip(want,st)):matches.append({'triple':tri,'scale':str(ratio)})
 assert not matches
 proc.append({'source_index':r['source_index'],'required_e_d_f_sorted':want,'exact_or_proportional_permutation_matches':matches})
for rel in ['lean/Growth/ActualKernel.lean','lean/Growth/Affine.lean','lean/Factorial/FactorialCommon.lean','lean/RationalDivisor/Content.lean','lean/I11DivisorTwoFive/Bounds.lean','lean/I11DivisorTwoFive/Threshold.lean','lean/I11DivisorFiveThree/Bounds.lean','lean/I11DivisorFiveThree/Threshold.lean','lean/I11DivisorSevenTwo/Bounds.lean','lean/I11DivisorSevenTwo/Threshold.lean','lean/I11DivisorFiveSeven/Bounds.lean','lean/I11DivisorFiveSeven/Threshold.lean','lean/I13G75/Geometric.lean']:
 read(RUN/rel)
procroot=ROOT/'research/external-results/20260911-proc-r2-ea89a10a/payload/b699-proc-r2-resumed-20260911'
for rel in ['notes/PADE_MINIMAL_INTERFACE.md','notes/THRESHOLDS.md','notes/PROOFS.md','REPORT.md']:read(procroot/rel)
accepted=[]
receipt_names=['i11-two-five-divisor-finite','i11-five-three-divisor-finite','i11-seven-two-divisor-threshold','i11-five-seven-divisor-threshold','i13-g75-full-audit','i11-two-five-growth-tree','i11-five-three-growth-tree','i11-seven-two-growth-tree','i11-five-seven-growth-tree']
for name in receipt_names:
 receipt_path=RUN/'verification/huan-prerequisites'/f'{name}.json'
 receipt=json.loads(read(receipt_path));evidence_path=ROOT/receipt['evidence'];ev=json.loads(read(evidence_path))
 assert ev['success'] is True and ev['exit_code']==0
 root=ROOT/receipt['root'];assert sha(root).lower()==receipt['source_sha256'].lower();read(root)
 assert all(set(a['axioms'])<=set(['propext','Classical.choice','Quot.sound']) for a in receipt['public_axiom_audit'])
 records=ev.get('compile_records',[])+ev.get('reuse_records',[])
 current_hash_checks=0
 for r in records:
  source_path=ROOT/r['source']
  assert sha(source_path).lower()==r['source_sha256_after'].lower()
  if r.get('axiom_audit'):assert not r['axiom_audit']['unexpected_axioms']
  current_hash_checks+=1
 accepted.append({'receipt':receipt_path.relative_to(ROOT).as_posix(),'evidence':receipt['evidence'],'evidence_success':True,'current_root_hash_matches':True,'current_closure_source_hash_checks':current_hash_checks,'public_axiom_roots':len(receipt['public_axiom_audit']),'axioms_within_std3':True})
if CHECK:
 assert accepted==json.loads((OUT/'ACCEPTED_INPUTS.json').read_text())
else:
 (OUT/'ACCEPTED_INPUTS.json').write_text(json.dumps(accepted,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
record={'status':'EXACT_RATIONAL_OUTWARD_REVIEW_NOT_LEAN','scope':'Fixed selected eight source rows, original weights; no new seed, cutoff, weight or cd search. Existing accepted i11 cd variants are separately identified comparisons only.','original_n_bits':8192,'original_Y_bits':8191,'finite_actual_D':'rationalDivisor(d*m-delta,(c-d)*m+delta-1), delta=0,1 at the same m','parent_metadata_correction':'The precursor formula text omitted -delta in the first argument; fixed shifts do not affect its correctly computed asymptotic rate.','fixed_rows':fixed,'existing_accepted_inputs_comparisons':comparisons,'old_external_BFT_rates':old_rates,'factorial_step_identity_diagnostic_cases':checks,'finite_gcd_quotient_diagnostic_cases':layer_checks,'ProC_R2_parameter_matches':proc,'method':'Integer square bounds at 2^-160; log via reduction to [1,2),80-term positive atanh series with explicit geometric tail and outward rational rounding. No floating decision in rate signs or comparisons.','asymptotic_mathematics_status':'Paper derivation from positive factorial steps and strictly concave positive cores; no new Lean acceptance or uniform finite-m bound follows from these rate intervals.','seconds':time.perf_counter()-start,'lean_invocations':0,'files_written_only_here':True}
if CHECK:
 prior=json.loads((OUT/'rate-results.json').read_text())
 assert json.loads(json.dumps({k:v for k,v in record.items() if k!='seconds'}))=={k:v for k,v in prior.items() if k!='seconds'}
 assert sources==json.loads((OUT/'SOURCE_MAP.json').read_text())
else:
 (OUT/'rate-results.json').write_text(json.dumps(record,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 (OUT/'SOURCE_MAP.json').write_text(json.dumps(sources,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'seconds':record['seconds'],'fixed':[{'pair':[r['parameters']['p'],r['parameters']['q']],'gamma':[r['gamma_logG_per_m']['lower'],r['gamma_logG_per_m']['upper']],'Q':[r['logAQ']['lower'],r['logAQ']['upper']],'slack':[r['capacity_times_E_rate_minus_one']['lower'],r['capacity_times_E_rate_minus_one']['upper']],'needed':[r['minimum_gamma_both']['lower'],r['minimum_gamma_both']['upper']],'extra':[r['additional_gamma_needed']['lower'],r['additional_gamma_needed']['upper']]} for r in fixed],'reuse':[{'index':r['source_index'],'kind':r['comparison'],'cd':[r['parameters']['c'],r['parameters']['d']],'Q':r['logAQ']['lower'],'slack':r['capacity_times_E_rate_minus_one']['lower']}for r in comparisons],'diagnostics':[checks,layer_checks]},ensure_ascii=False,indent=2))
