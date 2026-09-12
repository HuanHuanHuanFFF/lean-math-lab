from pathlib import Path
from fractions import Fraction as Q
from math import comb,factorial,gcd
from functools import reduce
import json,re,ast,hashlib,time,datetime
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb');OUT=Path(__file__).resolve().parent;RUN=OUT.parent.parent
start=time.monotonic();sources={}
def read(p):
 sources[p.relative_to(ROOT).as_posix()]={'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()}
 return p.read_text(encoding='utf-8-sig')
def js(p):return json.loads(read(p))
def trim(p):
 while len(p)>1 and p[-1]==0:p.pop()
 return p
def add(p,q):
 r=[0]*max(len(p),len(q))
 for i,a in enumerate(p):r[i]+=a
 for i,a in enumerate(q):r[i]+=a
 return trim(r)
def mul(p,q):
 r=[0]*(len(p)+len(q)-1)
 for i,a in enumerate(p):
  for j,b in enumerate(q):r[i+j]+=a*b
 return trim(r)
def scale(p,a):return trim([c*a for c in p])
def shift(p,a):
 r=[0]
 for c in reversed(p):r=add(mul(r,[a,1]),[c])
 return r
def polynomial(expr):
 def visit(t):
  if isinstance(t,ast.Constant) and isinstance(t.value,int):return [t.value]
  if isinstance(t,ast.Name) and t.id=='x':return [0,1]
  if isinstance(t,ast.BinOp) and isinstance(t.op,ast.Add):return add(visit(t.left),visit(t.right))
  if isinstance(t,ast.BinOp) and isinstance(t.op,ast.Mult):return mul(visit(t.left),visit(t.right))
  raise ValueError(ast.dump(t))
 return visit(ast.parse(expr,mode='eval').body)
def source_factors(text,name):
 line=re.search(r'def '+name+r' \(x : ℚ\) : ℚ := (.*)',text).group(1)
 return [[int(b or 0),int(a)] for a,b in re.findall(r'\((\d+) \* x(?: \+ (\d+))?\)',line)]
def D(u,v):
 f=v//2
 return Q(factorial(u+f)*factorial(f),factorial(u)*factorial(v))
def mags(u,v):return [comb(2*u-h,u)*comb(v+h,h) for h in range(u+1)]
def val(p,x):return sum(Q(a)*x**i for i,a in enumerate(p))
base=RUN/'experiments/huan-i11-elementary-finite-plan-5e2d13bb'
plan=js(base/'FINAL_PLAN.json')['selected_plan'];roughs=js(base/'D-rough-step-certificates.json')['tracks']
reuse=js(RUN/'experiments/huan-i11-other-edge-reuse-5e2d13bb/reuse-data.json')
map0=js(RUN/'experiments/huan-i11-other-edge-reuse-5e2d13bb/SOURCE_MAP.json')
audit=js(OUT/'AUDIT_PLAN.json')
previous=RUN/'experiments/huan-i11-seven-two-divisor-finite-5e2d13bb'
prevfreeze=js(previous/'FREEZE.json')
for n in ['Adjacent.lean','build_candidate.py']:
 read(previous/n);assert sources[(previous/n).relative_to(ROOT).as_posix()]==prevfreeze['files'][n]
assert sources[(previous/'Adjacent.lean').relative_to(ROOT).as_posix()]['sha256']==audit['previous_adjacent_sha256']
results=[];totalq=0;totalpoly=0
for group in audit['groups']:
 label=group['label'];row=plan['rows'][group['row_index']];c=group['c'];d=group['d'];w=c-d;a=(c+d)//2;s=w//2
 rr=next(t for t in roughs if (t['c'],t['d'],t['delta'])==(c,d,0));track=row['D_tracks'][0]
 reused=next(x for x in reuse['rows'] if x['row_index']==group['row_index'])
 assert reused['seed']==row['seed'] and reused['L_target']==row['L_target'] and reused['L_mid']==row['L_mid']
 assert reused['G_m0']==group['m0']==row['D_threshold_m0']
 Lt=Q(group['Lt']);Lm=Q(group['Lm']);Rt=Lt**d;Rm=Lm**d;Inf=Q(rr['R_infinity_exact']);R=Rm/Rt
 K=group['K'];loss=group['loss'];B=group['block'];m0=group['m0']
 assert K+B*(loss+1)==m0 and Rt<=Inf and 1<=R and 2<=1+B*(R-1)
 actual=read(OUT/label/'Actual.lean');certificate=read(OUT/label/'Certificates.lean')
 nf=source_factors(actual,'numerator');tf=source_factors(actual,'denominator')
 assert nf==rr['numerator_factors'] and tf==rr['denominator_factors']
 N=reduce(mul,nf,[1]);T=reduce(mul,tf,[1])
 assert N==list(map(int,rr['N_coefficients'])) and T==list(map(int,rr['T_coefficients']))
 rough=add(scale(mul(shift(N,1),[9,6,1]),Inf.denominator),scale(mul(shift(T,1),[4,4,1]),-Inf.numerator))
 middle=add(scale(shift(N,K),Rm.denominator),scale(shift(T,K),-Rm.numerator))
 arrays=[rr['rough_certificate'],track['constant_step_certificate']]
 for p,ar in zip([rough,middle],arrays):
  assert p==[int(ar['content'])*int(z) for z in ar['primitive_coefficients_ascending']]
  assert min(p)>0
 literal=re.findall(r'0 ≤ (.*?) := by positivity',certificate)
 assert len(literal)==2
 assert polynomial(literal[0])==rough and polynomial(literal[1])==middle
 totalpoly+=len(rough)+len(middle)
 assert D(d,w-1)==Q(group['initial'])==Q(track['small_base_D'])
 bottom=D(d,w-1)/Rt*Q(4,(K+1)**2)
 assert bottom==Q(track['initial_ratio_lower']) and bottom*2**loss>=1
 assert bottom*2**loss==Q(track['initial_lower_times_2powT'])
 assert R==Q(track['block_ratio_R'])
 steps=[]
 for m in sorted(set(list(range(1,7))+[K-1,K,m0-1,m0,m0+1])):
  D0=D(d*m,w*m-1);D1=D(d*m-1,w*m)
  ratio=val(N,Q(m))/val(T,Q(m))
  assert D(d*(m+1),w*(m+1)-1)==D0*ratio
  assert D1==Q(d*m,2)*D0 and D1>=D0
  assert Inf*Q(m+1,m+2)**2<=ratio
  if m>=K:assert Rm<=ratio
  if m>=m0:assert Lt**(d*m)<D0<=D1
  steps.append({'m':m,'D1_over_D0':str(D1/D0),'rough':True,'middle':m>=K,'fixed_lower_checked':m>=m0})
 qrows=[];count=0
 for m in list(range(1,5))+[m0]:
  for delta in (0,1):
   u=d*m-delta;v=w*m+delta-1;dd=D(u,v);qs=mags(u,v);G=reduce(gcd,qs)
   assert all((Q(q)/dd).denominator==1 and q>0 for q in qs)
   assert (Q(G)/dd).denominator==1 and dd<=G
   if m>=m0:assert Lt**(d*m)<dd<=G
   count+=len(qs)
   qrows.append({'m':m,'delta':delta,'count':len(qs),'G':str(G),'D_numerator_bits':dd.numerator.bit_length(),'D_denominator_bits':dd.denominator.bit_length(),'fixed_lower_checked':m>=m0})
 totalq+=count
 assert add(rough,[1])!=rough
 assert add(scale(shift(N,K-1),Rm.denominator),scale(shift(T,K-1),-Rm.numerator))!=middle
 # Verify all four source factorial step increments were transformed together.
 for slope,pred in [(a,True),(s,True),(d,False),(w,True)]:
  expr=f'factorial_add_cast ({slope} * (k + 1)'+(' - 1' if pred else '')+f') {slope}'
  assert expr in actual,expr
 results.append({'label':label,'seed':row['seed'],'Lt':str(Lt),'Lm':str(Lm),'m0':m0,'K':K,'loss':loss,'B':B,
  'targetRate':str(Rt),'middleRate':str(Rm),'infiniteRate':str(Inf),'blockRatio':str(R),'D_initial':str(D(d,w-1)),
  'bottom':str(bottom),'bottom_times_two_loss':str(bottom*2**loss),'rough_coefficients':list(map(str,rough)),
  'middle_coefficients':list(map(str,middle)),'positive_coefficient_count':len(rough)+len(middle),
  'step_cases':steps,'q_rows':qrows,'actual_q_checked':count,'tamper_rejected':True})
 assert time.monotonic()-start<60
assert D(2,1)==D(1,2)==1 and reduce(gcd,mags(2,1))==3 and reduce(gcd,mags(1,2))==1
for p in sorted(OUT.rglob('*.lean')):
 text=read(p);clean=re.sub(r'/-.*?-/', '',text,flags=re.S);clean=re.sub(r'--[^\n]*','',clean)
 assert not re.search(r'\b(?:sorry|admit|axiom|native_decide|ofReduceBool)\b',clean)
 assert not re.search(r'@[A-Z_]+@',clean)
for entry in [audit['common']]+sum([g['modules'] for g in audit['groups']],[]):assert hashlib.sha256((OUT/entry['path']).read_bytes()).hexdigest()==entry['sha256']
accepted=[]
for name in ['rational-divisor-content','elementary-rate','factorial-extra-5-4']:
 rec=js(RUN/'verification/huan-prerequisites'/f'{name}.json');ev=js(ROOT/rec['evidence']);assert ev['success'] and ev['exit_code']==0
 for cs in ev['source_closure']:
  read(ROOT/cs['source']);assert sources[cs['source']]['sha256']==cs['source_sha256_before']==cs['source_sha256_after']
 assert all(set(x['axioms'])<={'propext','Classical.choice','Quot.sound'} for x in rec['public_axiom_audit'])
 accepted.append({'name':name,'evidence':rec['evidence'],'public_roots':len(rec['public_axiom_audit']),'source_closure_hashes_match':True})
for name,record in map0['sources'].items():
 if name in sources:assert sources[name]==record
read(OUT/'build_candidate.py');read(OUT/'check.py')
for name,record in sources.items():assert hashlib.sha256((ROOT/name).read_bytes()).hexdigest()==record['sha256']
assert time.monotonic()-start<60
res={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'status':'PASS_BOUNDED_EXACT_NOT_LEAN','groups':results,
 'total_actual_q_checked':totalq,'total_positive_coefficients_checked':totalpoly,'G_monotonicity_counterexample':{'u':2,'r':0,'D0':'1','D1':'1','G0':3,'G1':1},
 'accepted_foundation_receipts':accepted,'previous_adjacent_sha256':audit['previous_adjacent_sha256'],'previous_adjacent_candidate_only':True,
 'source_count':len(sources),'seconds':time.monotonic()-start,'Lean_runs':0,'original_B_count_change':0}
(OUT/'exact-checks.json').write_text(json.dumps(res,ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
(OUT/'SOURCE_BINDINGS.json').write_text(json.dumps({'worktree':ROOT.as_posix(),'sources':sources,'all_unchanged_before_and_after':True},ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps({'status':res['status'],'groups':[(x['label'],x['actual_q_checked'],x['positive_coefficient_count']) for x in results],'total_actual_q_checked':totalq,'total_positive_coefficients_checked':totalpoly,'seconds':res['seconds'],'sources':len(sources)},ensure_ascii=False))
