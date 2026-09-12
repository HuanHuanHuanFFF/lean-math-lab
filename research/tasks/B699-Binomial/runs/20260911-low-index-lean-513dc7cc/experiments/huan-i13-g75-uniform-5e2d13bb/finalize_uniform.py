from pathlib import Path
from fractions import Fraction as F
from math import factorial,prod,comb
import json,hashlib,re,datetime,subprocess
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
OUT=Path(__file__).resolve().parent
assert OUT==RUN/'experiments/huan-i13-g75-uniform-5e2d13bb'
assert not (OUT/'FREEZE.json').exists()
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def write(n,s):
 p=OUT/n;assert not p.exists();p.write_text(s,encoding='utf-8')
def put(n,v):write(n,json.dumps(v,ensure_ascii=False,indent=2)+'\n')
# Supply the closed rate's positivity explicitly to the optional field steps.
for name in ['Geometric.lean','build_uniform.py']:
 p=OUT/name;s=p.read_text();old='  have hr : infiniteRate ≠ 0 := ne_of_gt infinite_rate_pos';new='  have hRpos : 0 < infiniteRate := infinite_rate_pos\n  have hr : infiniteRate ≠ 0 := ne_of_gt hRpos';assert s.count(old)==1;p.write_text(s.replace(old,new),encoding='utf-8')
# Full type assertions remain short enough for separate diagnostic entries.
extras={
 'AAudit.lean':'''\n#check (Math.B699.I13G75Uniform.divisor_one_eq :
  ∀ m : ℕ, 1 ≤ m →
    Math.B699.I13G75Uniform.divisorOne m =
      ((5 : ℚ) * (m : ℚ) / 2) * Math.B699.I13G75Uniform.divisorZero m)
''',
 'CAudit.lean':'''\n#check (Math.B699.I13G75Uniform.ratio_zero_lower :
  ∀ x : ℚ, 1 ≤ x →
    Math.B699.I13G75Uniform.infiniteRate * (24 * x - 1) / (24 * x + 23) ≤
      Math.B699.I13G75Uniform.ratioZero x)
''',
 'UAudit.lean':'''\n#check (Math.B699.I13G75Uniform.rational_divisor_zero_lower :
  ∀ m : ℕ, 1 ≤ m →
    (23 : ℚ) * ((11664 : ℚ) / 3125) ^ (m - 1) / (24 * (m : ℚ) - 1) ≤
      Math.B699.RationalFactorialDivisor.rationalDivisor (5 * m) (2 * m - 1))
''',
 'GAudit.lean':'''\n#check (Math.B699.I13G75Uniform.q_content_one_geometric :
  ∀ m : ℕ, 1 ≤ m →
    Math.B699.I13G75Uniform.geometricConstant *
      Math.B699.I13G75Uniform.geometricRate ^ m ≤
        (Math.B699.PadeConstruction.qContent (5 * m - 1) (2 * m) (5 * m - 1) : ℚ))
'''}
for name,suffix in extras.items():
 p=OUT/name;p.write_text(p.read_text()+suffix,encoding='utf-8')
R=F(11664,3125);rho=F(65535,65536);K=F(23,1)/(24*R*65536)
def D(u,v):return F(factorial(u+v//2)*factorial(v//2),factorial(u)*factorial(v))
def d0(m):return D(5*m,max(0,2*m-1))
def d1(m):return D(max(0,5*m-1),2*m)
for m in range(1,81):
 assert d0(m)==F(factorial(6*m-1)*factorial(m-1),factorial(5*m)*factorial(2*m-1))
 assert d1(m)==F(5*m,2)*d0(m)
 N=prod(6*m+j for j in range(6))*m
 V=prod(5*m+j for j in range(1,6))*(2*m)*(2*m+1)
 assert d0(m+1)==d0(m)*F(N,V)
 assert F(N,V)>=R*F(24*m-1,24*m+23)
 assert d0(m)>=23*R**(m-1)/(24*m-1)
 assert F(m)*rho**m<=65536
 assert d0(m)>=K*(R*rho)**m and d1(m)>=K*(R*rho)**m
assert d1(0)!=F(0)*d0(0)
def mul(a,b):
 c=[0]*(len(a)+len(b)-1)
 for i,x in enumerate(a):
  for j,y in enumerate(b):c[i+j]+=x*y
 return c
n=[0,1]
for j in range(6):n=mul(n,[j,6])
den=[1]
for j in range(1,6):den=mul(den,[j,5])
den=mul(mul(den,[0,2]),[1,2])
l=mul([3125*x for x in n],[23,24]);r=mul([11664*x for x in den],[-1,24])
raw=[x-y for x,y in zip(l,r)]
while raw[-1]==0:raw.pop()
p=[1399680,11061720,28359900,29947860,14985000,4860000]
assert raw==[0]+[2*x for x in p]
put('exact-checks.json',{'status':'EXACT_FINITE_AND_COEFFICIENT_CHECKS_NOT_LEAN','finite_m_range':[1,80],'actual_D_formula_and_step':True,'delta1_relation':True,'uniform_bounds_tested_finitely':True,'rho_bound_tested_finitely':True,'m0_excluded_relation_counterexample':{'D0':str(d0(0)),'D1':str(d1(0)),'claimed_factor_at0':'0'},'R':str(R),'rho':str(rho),'geometric_rate':str(R*rho),'geometric_constant':str(K),'five_degree_coefficients_ascending':p,'raw_difference_coefficients_ascending':raw,'all_five_degree_coefficients_positive':True,'coefficient_identity_exact':True,'warning':'Finite tests do not prove the allm claim; Lean candidates separately contain factorial recurrence, positive polynomial proof, and induction.'})
mods=['Actual','Certificate','Uniform','Geometric']
for m in mods:
 s=(OUT/(m+'.lean')).read_text();assert not re.search(r'\b(?:sorry|admit|axiom|native_decide)\b',s)
expected=json.loads((OUT/'expected-axioms.json').read_text());decls=expected['declarations']
assert len(decls)==47 and len(expected['candidate_public_theorems'])==36
# Synthetic audit checker only; no Lean invocation.
auditor=(RUN/'experiments/huan-i11-e-delta1-staging-5e2d13bb/audit_axioms.py').read_text();write('audit_axioms.py',auditor)
r=subprocess.run([r'C:/Python314/python.exe','-B',str(OUT/'audit_axioms.py'),'--self-test'],capture_output=True,text=True);assert r.returncode==0,r.stdout+r.stderr
print(r.stdout)
source_paths=[RUN/'lean/RationalDivisor/Content.lean',RUN/'lean/RationalDivisor/Coefficients.lean',RUN/'lean/Factorial/FactorialCommon.lean',RUN/'lean/I11DivisorSevenTwo/Adjacent.lean',RUN/'lean/Growth/ElementaryRate.lean',RUN/'lean/I11DivisorFiveThree/Actual.lean',RUN/'lean/I11DivisorFiveThree/Bounds.lean',RUN/'experiments/huan-i13-route-inventory-5e2d13bb/capacity-probe/NEXT_UNIFORM_BOUND.md',RUN/'experiments/huan-i13-route-inventory-5e2d13bb/capacity-probe/UNTRIED_GEOMETRIC_BRANCH.md',ROOT/'lean-toolchain',ROOT/'lake-manifest.json']
source_entries=[{'path':str(p),'sha256':sha(p),'bytes':p.stat().st_size} for p in source_paths]
mathroot=Path(r'D:/CodingProject/Math/.tools/pi5e2d/mathlib')
new_math=['Mathlib/Algebra/Ring/GeomSum','Mathlib/Algebra/Order/GroupWithZero/Basic']
math_entries=[{'module':s.replace('/','.'),'source_sha256':sha(mathroot/(s+'.lean')),'pinned_olean_exists':(mathroot/'.lake/build/lib/lean'/(s+'.olean')).exists()} for s in new_math]
receipts=[]
for name in ['rational-divisor-content','rational-divisor-adjacent']:
 p=RUN/'verification/huan-prerequisites'/(name+'.json');r=json.loads(p.read_text());e=ROOT/r['evidence'];ev=json.loads(e.read_text());assert ev['success'] is True;assert sha(ROOT/r['root'])==r['source_sha256'].lower();receipts.append({'name':name,'path':str(p),'sha256':sha(p),'evidence':str(e),'evidence_sha256':sha(e),'success':True,'root_source_sha_match':True})
put('SOURCE_MAP.json',{'namespace':'Math.B699.I13G75Uniform','target_directory':'lean/I13G75','module_mapping':{m+'.lean':'lean/I13G75/'+m+'.lean' for m in mods},'audit_mapping':{m+'.lean':'lean/I13G75/'+m+'.lean' for m in ['AAudit','CAudit','UAudit','GAudit','Audit']},'import_rule':'Remap only own experiment imports to lean.I13G75; preserve explicit accepted run imports.','sources':source_entries,'accepted_receipts_checked':receipts,'optional_mathlib_imports':math_entries,'proof_routes':{'Actual':'Actual D definitions and Nat half/predecessor identities; factorial_add_cast derives raw one-step ratio. Delta1 equality and domination directly instantiate accepted rationalDivisor_adjacent_odd_even(_ge).','Certificate':'Actual raw numerator/denominator difference equals2*x*positive degree5 polynomial; positive denominators justify rational division.','Uniform':'F(m)=(24*m-1)D0(m), actual step supplies F(m)R<=F(m+1); accepted lower_geometric_from_step atK1 gives result. Both actualqContent bounds consume accepted rationalDivisor_le_qContent.','Geometric':'Finite sum provesm*rho^m<=65536; positive arithmetic gives fixedprefactor bound and transfers it to both realD and actualqContent.'},'Nat_vs_Rat':'m>=1 is explicit. Factorial arguments and m-1 exponents useNat subtraction;24*(m:Rat)-1 is rational and provedpositive. Delta relation failsat0 and is not extended there.','external_hypotheses_final':'Onlym:Nat and1<=m. No assumedD-step, Dlower, Gbound, tree, or height.','known_missing_API':'None identified by static source reading; actual elaboration/tactic/resource behavior remains untested. Optional cache status is recorded separately.','original_frontier':'No newi13 height/edge or original index. Old8192 capacity gap remains.','lean_invocations':0})
put('STATIC_REVIEW.json',{'status':'STATIC_AND_EXACT_NUMERIC_ONLY','implementation_modules':4,'public_roots':47,'public_theorems':36,'final_root_types_checked_in_source':['rational_divisor_zero_lower','rational_divisor_one_eq','q_content_zero_lower','q_content_one_lower','q_content_zero_geometric','q_content_one_geometric'],'source_identity':'Actual step follows same already-accepted c5d3 factorial_add_cast proof pattern with every factor changed toc7d5 and exact coefficient checks','positivity':'Raw denominator requiresx>0; linear denominator24*m-1 requiresm>=1; all cancellation conditions appear in source','no_placeholders':True,'no_Lean_runs':True,'possible_unverified_diagnostics':['Nat/rational casts in factorial-step specialization','field_simp automatic nonzero discharge in Actual, as in accepted template','Rat finite-sum/nsmul elaboration in optional Geometric'],'not_a_known_mathematical_gap':True})
write('README.md','''# c7d5 实际D的全m均匀界候选（未运行Lean）

本包给所有m≥1的真实rationalDivisor(5m,2m−1)下界

    D0(m)≥23(11664/3125)^(m−1)/(24m−1)，

并直接实例化已验邻项定理得到D1(m)=(5m/2)D0(m)，其中D1=rationalDivisor(5m−1,2m)。最终还把这些界接到实际qContent，未添加D-step、G或高度假设。

Actual.lean从实际factorialNumerator/factorialDenominator定义证明两闭式与D0递推。为沿用已验的阶乘步进模式，源码保留7次raw分子与分母；它们与纸面约去2m后的比值完全一致。Certificate.lean的恒等式是raw清分母差=2xP5(x)，P5的六个系数全正，因此真正使用的是指定五次差证书。Uniform.lean把H(m)=(24m−1)D0(m)接到已验lower_geometric_from_step，从H(1)=23推出全m界。所有m=0的截断边界都未混入目标。

可选Geometric.lean取rho=65535/65536、rate=(11664/3125)rho、constant=23/[24(11664/3125)65536]。通过有限几何和证明m rho^m≤65536，得到两实际D及qContent的constant·rate^m下界。此层不检查共同渐近容量、不选新Y0，也不宣称旧8192已修复。

建议主任务串行按AAudit、CAudit、UAudit验必要三层，再按需GAudit和Audit验可选层及全部公开根。目标短目录lean/I13G75，准确imports和来源SHA见SOURCE_MAP。实际通用邻项模块位于lean/I11DivisorSevenTwo/Adjacent.lean，数学namespace仍为Math.B699.RationalFactorialDivisor；它不是仅适用于i11的数值定理。

本包4实现源、47公开根（36定理）均有完整证明文本及typed/#print axioms入口，无sorry、axiom或native_decide。只做m1..80的独立Fraction核对、精确多项式系数卷积和审计器合成日志自测；这些不代替源码中的全参数证明或Lean验收。m0处D1关系的真实反例另记为边界检查。

当前没有运行Lean。主任务须检验实际D身份及field_simp/类型推断后方能接受；可选新Mathlib导入的缓存状态已列出。没有修改旧冻结包或共享源，没有Git操作。预期价值是补一个全m有效D/G来源；i13位置加权桥、新共同高度、其它边及最终原题仍独立未完成。
''')
put('CHECKPOINT.json',{'owner':'/root/pade_construction','started_utc':'2026-09-12T02:29:58Z','checkpoint_utc':'2026-09-12T02:49:58Z','checkpoint_not_deadline':True,'lean_invocations':0,'last_verified_reused_result':'acceptedrationalDivisor content/adjacent andElementaryRate, with actual source mapping','new_result_status':'complete uncompiled proof chain with exact coefficient and bounded arithmetic checks','expected_frontier_change':'If accepted, supplies actualallmD/G lower bound forc7d5 and a fixedprefactor geometric variant; no originali13 height by itself','remaining_work':['Primary serializedLean acceptance andaxiom audit','More-than8192 common capacity threshold, allmQ/E growth and actual edges','i13 position-weighted bridge andcomplete finite tail']})
files={p.name:{'sha256':sha(p),'bytes':p.stat().st_size} for p in sorted(OUT.iterdir()) if p.is_file() and p.name!='FREEZE.json'}
put('FREEZE.json',{'status':'FROZEN_UNCOMPILED_ACTUAL_G75_UNIFORM_CANDIDATE','frozen_at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'owner':'/root/pade_construction','lean_invocations':0,'public_roots':47,'public_theorems':36,'files':files})
print(json.dumps({'FREEZE_sha256':sha(OUT/'FREEZE.json'),'sources':{m:sha(OUT/(m+'.lean')) for m in mods},'Audit_sha256':sha(OUT/'Audit.lean'),'files':len(files),'mathlib_cache':math_entries,'geometric_rate':str(R*rho),'geometric_constant':str(K)},indent=2))