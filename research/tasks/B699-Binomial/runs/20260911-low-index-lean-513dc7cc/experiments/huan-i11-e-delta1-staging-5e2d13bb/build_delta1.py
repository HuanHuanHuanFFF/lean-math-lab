from pathlib import Path
from fractions import Fraction
from math import comb,factorial
import json,hashlib,re,datetime,subprocess
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
OUT=Path(__file__).resolve().parent
assert OUT==RUN/'experiments/huan-i11-e-delta1-staging-5e2d13bb'
assert not (OUT/'FREEZE.json').exists()
base='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
own=base+'.experiments.«huan-i11-e-delta1-staging-5e2d13bb»'
ns='Math.B699.I11EOne'
header='set_option autoImplicit false\nset_option relaxedAutoImplicit false\n'
c=[(-1)**r*comb(14+r,r)*comb(37,29+r) for r in range(9)]
f=[(-1)**r*(factorial(14+r)//(factorial(r)*factorial(14)))*(factorial(37)//(factorial(29+r)*factorial(8-r))) for r in range(9)]
assert c==f
v1=sum((Fraction(a,9**r) for r,a in enumerate(c)),Fraction())
v0=Fraction(13515592997264,1594323)
assert v1==Fraction(117258057456010,4782969)
beta=Fraction(38**38,15**30*8**8)
lam=Fraction(46880976166089921083,79228162514264337593543950336)
ebase=beta*lam
assert 2*abs(v0)<=ebase and 2*abs(v1)<=ebase

def write(name,s):
 p=OUT/name;assert not p.exists(),name;p.write_text(s,encoding='utf-8')
def put(name,v):write(name,json.dumps(v,ensure_ascii=False,indent=2)+'\n')
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
terms=' +\n      '.join(f'f (a {i}) * z ^ {i}' for i in range(9))
cterms=' +\n      '.join(f'f c{i} * z ^ {i}' for i in range(9))
evalsrc=f'''import {base}.lean.I11ECoefficientStaging.EvalBridge

/-! UNCOMPILED delta1 candidate. Reuse the accepted symbolic eval-to-sum
bridge, expanding nine terms while a,f,z are still symbolic. -/
{header}universe u
namespace {ns}
open scoped BigOperators
open Math.B699.PadeConstruction
open Math.B699.I11ECoefficientStaging

theorem coefficientPolynomial_eval_eight {{R : Type u}} [Semiring R]
    (a : ℕ → ℤ) (f : ℤ →+* R) (z : R) :
    (coefficientPolynomial 8 a).eval₂ f z =
      {terms} := by
  rw [coefficientPolynomial_eval_sum]
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, zero_add]

theorem coefficientPolynomial_eval_eight_of_coeffs {{R : Type u}} [Semiring R]
    (a : ℕ → ℤ) (f : ℤ →+* R) (z : R)
    (c0 c1 c2 c3 c4 c5 c6 c7 c8 : ℤ)
    (h0 : a 0 = c0) (h1 : a 1 = c1) (h2 : a 2 = c2) (h3 : a 3 = c3)
    (h4 : a 4 = c4) (h5 : a 5 = c5) (h6 : a 6 = c6) (h7 : a 7 = c7)
    (h8 : a 8 = c8) :
    (coefficientPolynomial 8 a).eval₂ f z =
      {cterms} := by
  rw [coefficientPolynomial_eval_eight, h0, h1, h2, h3, h4, h5, h6, h7, h8]

end {ns}
'''
write('Eval.lean',evalsrc)
c0=f'''import {base}.lean.I11InitialCapComputation.ChooseFast

/-! UNCOMPILED first delta1 coefficient; no concrete Polynomial evaluation. -/
{header}namespace {ns}
open Math.B699.I11InitialCapComputation

theorem coefficient_0 : fastECoefficient 14 8 14 0 = ({c[0]} : ℤ) := by
  norm_num [fastECoefficient, chooseFast]

end {ns}
'''
write('Coeff0.lean',c0)
cs=f'''import {own}.Coeff0

/-! UNCOMPILED. Independent closed integer certificates for indices1 through8. -/
{header}namespace {ns}
open Math.B699.I11InitialCapComputation

'''
for r,a in enumerate(c[1:],1):cs+=f'''theorem coefficient_{r} : fastECoefficient 14 8 14 {r} = ({a} : ℤ) := by
  norm_num [fastECoefficient, chooseFast]

'''
cs+='end '+ns+'\n';write('Coeffs.lean',cs)
rt=' +\n    '.join(f'(Int.castRingHom ℚ) ({a} : ℤ) * (1 / 9 : ℚ) ^ {r}' for r,a in enumerate(c))
write('RatSum.lean',f'''import Mathlib.Algebra.Field.Rat
import Mathlib.Tactic.NormNum

/-! UNCOMPILED. Nine literal rational terms; no direct Polynomial or Pade import. -/
{header}namespace {ns}

def rationalDelta1Sum : ℚ :=
    {rt}

theorem rational_delta1_sum_value :
    rationalDelta1Sum = (117258057456010 : ℚ) / 4782969 := by
  norm_num [rationalDelta1Sum, Int.coe_castRingHom]

end {ns}
''')
args=' '.join(f'({a})' if a<0 else str(a) for a in c)
hs=' '.join(f'coefficient_{r}' for r in range(9))
write('Closed.lean',f'''import {own}.Eval
import {own}.Coeffs
import {own}.RatSum

/-! UNCOMPILED. Only theorem instantiation and equality transitivity operate
on the concrete coefficientPolynomial. All numerical work was staged above. -/
{header}namespace {ns}
open Math.B699.PadeConstruction Math.B699.I11InitialCapComputation

theorem closed_e_delta1 :
    (coefficientPolynomial 8 (fastECoefficient 14 8 14)).eval₂
      (Int.castRingHom ℚ) (1 / 9) = (117258057456010 : ℚ) / 4782969 := by
  have hstage :
      (coefficientPolynomial 8 (fastECoefficient 14 8 14)).eval₂
        (Int.castRingHom ℚ) (1 / 9) = rationalDelta1Sum :=
    coefficientPolynomial_eval_eight_of_coeffs
      (fastECoefficient 14 8 14) (Int.castRingHom ℚ) (1 / 9)
      {args}
      {hs}
  exact Eq.trans hstage rational_delta1_sum_value

end {ns}
''')
write('Actual.lean',f'''import {own}.Closed

/-! UNCOMPILED. Restore the actual delta1 source via accepted actualE_eq_fast.
No rewriting or numerical tactic is applied to the concrete actualE term. -/
{header}namespace {ns}
open Math.B699.PadeConstruction Math.B699.PadeGrowthNormalization
open Math.B699.I11InitialCapComputation

theorem actual_e_delta1 :
    actualE 23 15 1 1 (1 / 9) = (117258057456010 : ℚ) / 4782969 := by
  have hfast : actualE 23 15 1 1 (1 / 9) =
      (coefficientPolynomial 8 (fastECoefficient 14 8 14)).eval₂
        (Int.castRingHom ℚ) (1 / 9) :=
    Math.B699.I11InitialCapComputation.actualE_eq_fast 23 15 1 1 (1 / 9)
  exact Eq.trans hfast closed_e_delta1

end {ns}
''')
write('CapNums.lean',f'''import {base}.lean.I11ThreeTwoEdge.GrowthInputs

/-! UNCOMPILED. Both cap checks involve only the fixed rational values and
existing eBase=beta23,15*eLambda. No actualE expression is evaluated here. -/
{header}namespace {ns}
open Math.B699.ElementaryFactorialBound

theorem numeric_cap_delta0 :
    2 * |(13515592997264 : ℚ) / 1594323| ≤ Math.B699.I11ThreeTwoScaled.eBase := by
  norm_num [Math.B699.I11ThreeTwoScaled.eBase, beta,
    Math.B699.I11ThreeTwoScaled.eLambda]

theorem numeric_cap_delta1 :
    2 * |(117258057456010 : ℚ) / 4782969| ≤ Math.B699.I11ThreeTwoScaled.eBase := by
  norm_num [Math.B699.I11ThreeTwoScaled.eBase, beta,
    Math.B699.I11ThreeTwoScaled.eLambda]

end {ns}
''')
write('Caps.lean',f'''import {own}.Actual
import {own}.CapNums
import {base}.lean.I11ECoefficientStaging.ActualEval

/-! UNCOMPILED consumer of the two actual-value theorems and pure Rat caps.
The old failed I11InitialCapComputation.ThreeTwo module is not imported. -/
{header}namespace {ns}
open Math.B699.PadeGrowthNormalization

theorem actual_e_delta0 :
    actualE 23 15 0 1 (1 / 9) = (13515592997264 : ℚ) / 1594323 :=
  Math.B699.I11ECoefficientStaging.actual_e_delta0

theorem e_cap_delta0 :
    2 * |actualE 23 15 0 1 (1 / 9)| ≤ Math.B699.I11ThreeTwoScaled.eBase := by
  calc
    _ = 2 * |(13515592997264 : ℚ) / 1594323| :=
      congrArg (fun x : ℚ => 2 * |x|) actual_e_delta0
    _ ≤ Math.B699.I11ThreeTwoScaled.eBase := numeric_cap_delta0

theorem e_cap_delta1 :
    2 * |actualE 23 15 1 1 (1 / 9)| ≤ Math.B699.I11ThreeTwoScaled.eBase := by
  calc
    _ = 2 * |(117258057456010 : ℚ) / 4782969| :=
      congrArg (fun x : ℚ => 2 * |x|) actual_e_delta1
    _ ≤ Math.B699.I11ThreeTwoScaled.eBase := numeric_cap_delta1

theorem fixed_initial_e_cap (row : Bool) :
    2 * |actualE 23 15 (Math.B699.I11ThreeTwoScaled.rowDelta row) 1 (1 / 9)| ≤
      Math.B699.I11ThreeTwoScaled.eBase := by
  cases row
  · exact e_cap_delta1
  · exact e_cap_delta0

end {ns}
''')
mods=['Coeff0','Eval','Coeffs','RatSum','Closed','Actual','CapNums','Caps']
auditnames=dict(zip(mods,['ZeroAudit','EvalAudit','CoeffAudit','RatAudit','ClosedAudit','ActualAudit','NumAudit','CapAudit']))
roots=[];theorems=[];decls=[]
for mod in mods:
 s=(OUT/(mod+'.lean')).read_text();rs=[]
 assert not re.search(r'\b(?:sorry|admit|axiom|native_decide)\b',s)
 assert not any(line.startswith('import ') and line.endswith('.I11InitialCapComputation.ThreeTwo') for line in s.splitlines())
 for kind,name in re.findall(r'^(def|theorem) ([A-Za-z_][A-Za-z_0-9]*)',s,re.M):
  root=ns+'.'+name;assert root not in roots;roots.append(root);rs.append(root);decls.append({'module':mod,'kind':kind,'root':root})
  if kind=='theorem':theorems.append(root)
 write(auditnames[mod]+'.lean','import '+own+'.'+mod+'\n\n'+'\n'.join('#check @'+r+'\n#print axioms '+r for r in rs)+'\n')
audit='import '+own+'.Caps\n\n'+'\n'.join('#check @'+r+'\n#print axioms '+r for r in roots)+'\n'
audit+='''
open Math.B699.PadeGrowthNormalization
#check (Math.B699.I11EOne.actual_e_delta0 :
  actualE 23 15 0 1 (1 / 9) = (13515592997264 : ℚ) / 1594323)
#check (Math.B699.I11EOne.actual_e_delta1 :
  actualE 23 15 1 1 (1 / 9) = (117258057456010 : ℚ) / 4782969)
#check (Math.B699.I11EOne.e_cap_delta0 :
  2 * |actualE 23 15 0 1 (1 / 9)| ≤ Math.B699.I11ThreeTwoScaled.eBase)
#check (Math.B699.I11EOne.e_cap_delta1 :
  2 * |actualE 23 15 1 1 (1 / 9)| ≤ Math.B699.I11ThreeTwoScaled.eBase)
#check (Math.B699.I11EOne.fixed_initial_e_cap :
  ∀ row : Bool,
    2 * |actualE 23 15 (Math.B699.I11ThreeTwoScaled.rowDelta row) 1 (1 / 9)| ≤
      Math.B699.I11ThreeTwoScaled.eBase)
'''
write('Audit.lean',audit)
put('expected-axioms.json',{'status':'UNCOMPILED_NEW_CANDIDATE','allowed_axioms':['propext','Classical.choice','Quot.sound'],'expected_print_roots':roots,'candidate_public_theorems':theorems,'declarations':decls})
auditor=(RUN/'experiments/huan-i11-e-coefficient-staging-5e2d13bb/audit_axioms.py').read_text();write('audit_axioms.py',auditor)
p=subprocess.run([r'C:/Python314/python.exe','-B',str(OUT/'audit_axioms.py'),'--self-test'],capture_output=True,text=True)
assert p.returncode==0,p.stdout+p.stderr
print(p.stdout)
put('exact-checks.json',{'status':'EXACT_PYTHON_ONLY','parameters':{'c':23,'d':15,'delta':1,'m':1,'A':14,'B':8,'C':14,'z':'1/9'},'formula':'(-1)^r choose(14+r,r) choose(37,29+r)','coefficients':c,'factorial_quotients':f,'all9_match':True,'rational_sum':str(v1),'common_denominator':9**8,'cleared_numerator':sum(a*9**(8-r) for r,a in enumerate(c)),'largest_coefficient_bits':max(abs(a).bit_length() for a in c),'beta':str(beta),'eLambda':str(lam),'eBase':str(ebase),'delta0_exact_value':str(v0),'delta1_exact_value':str(v1),'cap0_margin':str(ebase-2*abs(v0)),'cap1_margin':str(ebase-2*abs(v1)),'cap0_holds':True,'cap1_holds':True,'Bool_to_delta':{'false':1,'true':0},'scope':'No new threshold, weight or lambda; finite arithmetic only.'})
source_paths=[RUN/'lean/I11ECoefficientStaging/EvalBridge.lean',RUN/'lean/I11ECoefficientStaging/ActualEval.lean',RUN/'lean/I11InitialCapComputation/ChooseFast.lean',RUN/'lean/PadeInteger.lean',RUN/'lean/Growth/Normalization.lean',RUN/'lean/I11ThreeTwoEdge/GrowthInputs.lean',RUN/'lean/I11ThreeTwoEdge/SourceRows.lean',RUN/'lean/Factorial/FactorialCommon.lean',RUN/'lean/I11InitialCapComputation/ThreeTwo.lean',RUN/'lean/I11ThreeTwoEdge/SmallCertificates.lean',ROOT/'lean-toolchain',ROOT/'lake-manifest.json']
inputs=[{'path':str(p),'sha256':sha(p),'bytes':p.stat().st_size} for p in source_paths]
receipts=[{'path':str(p),'sha256':sha(p),'bytes':p.stat().st_size} for p in sorted((RUN/'verification/huan-prerequisites').glob('i11-e-staged*.json'))]
put('INPUT_SOURCES.json',{'sources':inputs,'existing_staged_receipts_at_freeze':receipts,'acceptance_snapshot':'Parent reports all delta0 coefficients, Rat sum, closed_e_delta0 and actual_e_delta0 accepted at 1536MiB in v22 through00:45UTC; final aggregate Audit was still running at report time. New delta1 layers are uncompiled.','old_ThreeTwo_and_SmallCertificates_role':'Read-only target/API correspondence; not imported by any candidate source.'})
exports=['actual_e_delta0','e_cap_delta0','actual_e_delta1','e_cap_delta1','fixed_initial_e_cap']
put('SOURCE_MAP.json',{'owner':'/root/pade_construction','namespace':ns,'scope':'Actual ThreeTwo delta1 m1 E value plus both initial E caps; fixed c23d15 z1/9','short_target_directory':'lean/I11EOne','modules':{m+'.lean':'lean/I11EOne/'+m+'.lean' for m in mods},'audit_targets':{a+'.lean':'lean/I11EOne/'+a+'.lean' for a in list(auditnames.values())+['Audit']},'import_rule':'Replace only own experiment module prefix by lean.I11EOne on integration. Keep accepted external imports.','proof_dependencies':[{'module':'Eval','uses':'accepted Math.B699.I11ECoefficientStaging.coefficientPolynomial_eval_sum; all a/f/z symbolic'},{'module':'Coeff0/Coeffs','uses':'accepted fastECoefficient, chooseFast;9 separate exact integer proofs'},{'module':'RatSum','uses':'Rat and norm_num only; literal9 coefficients, no direct Polynomial/Pade import'},{'module':'Closed','uses':'actual9 coefficient proofs, symbolic substitution theorem, literal Rat sum; no rw/simp/norm_num on concrete polynomial'},{'module':'Actual','uses':'accepted actualE_eq_fast, Eq.trans closed_e_delta1'},{'module':'CapNums','uses':'existing GrowthInputs.eBase, eLambda, FactorialCommon.beta; only pure Rat inequalities'},{'module':'Caps','uses':'delta0 actual_e_delta0 from existing staged source; new delta1 actual_e_delta1; congrArg x=>2*abs x; two pure Rat bounds; rowDelta false1 true0'}],'preserved_five_public_exports':[{'old':'Math.B699.I11InitialCapComputation.ThreeTwo.'+n,'new':ns+'.'+n} for n in exports],'final_public_inputs':'No coefficient, sum, cap, tree or height assumption. Only row:Bool for fixed_initial_e_cap.','avoided_imports':['lean/I11InitialCapComputation/ThreeTwo.lean','lean/I11ThreeTwoEdge/SmallCertificates.lean'],'pending_acceptance':['All new delta1/cap modules and audits','Any downstream reacceptance of original alias module and SmallCertificates/FixedEdge'],'resource_evidence_boundary':'The staged delta0 method has now actually passed1536MiB. New delta1 memory/runtime are unmeasured; no Lean run by this subagent.','mathematical_frontier':'If accepted, closes both actual m1 E cap inputs for the last ThreeTwo edge; original theorem acceptance still belongs to the full downstream proof chain.'})
legacy='''Primary-only adapter suggestion: replace the old failed ThreeTwo implementation
with an import of lean.I11EOne.Caps and aliases preserving the five public types.
Do not add this snippet as another file importing the old ThreeTwo module.

namespace Math.B699.I11InitialCapComputation.ThreeTwo
open Math.B699.PadeGrowthNormalization
'''
legacy+='''
theorem actual_e_delta0 :
    actualE 23 15 0 1 (1 / 9) = (13515592997264 : ℚ) / 1594323 :=
  Math.B699.I11EOne.actual_e_delta0

theorem e_cap_delta0 :
    2 * |actualE 23 15 0 1 (1 / 9)| ≤ Math.B699.I11ThreeTwoScaled.eBase :=
  Math.B699.I11EOne.e_cap_delta0

theorem actual_e_delta1 :
    actualE 23 15 1 1 (1 / 9) = (117258057456010 : ℚ) / 4782969 :=
  Math.B699.I11EOne.actual_e_delta1

theorem e_cap_delta1 :
    2 * |actualE 23 15 1 1 (1 / 9)| ≤ Math.B699.I11ThreeTwoScaled.eBase :=
  Math.B699.I11EOne.e_cap_delta1

theorem fixed_initial_e_cap (row : Bool) :
    2 * |actualE 23 15 (Math.B699.I11ThreeTwoScaled.rowDelta row) 1 (1 / 9)| ≤
      Math.B699.I11ThreeTwoScaled.eBase :=
  Math.B699.I11EOne.fixed_initial_e_cap row

end Math.B699.I11InitialCapComputation.ThreeTwo
'''
write('LEGACY_ADAPTER.txt',legacy)
checker='''from pathlib import Path
from fractions import Fraction
from math import comb,factorial
import json,re,hashlib
out=Path(__file__).resolve().parent
d=json.loads((out/'exact-checks.json').read_text())
c=[(-1)**r*comb(14+r,r)*comb(37,29+r) for r in range(9)]
f=[(-1)**r*(factorial(14+r)//(factorial(r)*factorial(14)))*(factorial(37)//(factorial(29+r)*factorial(8-r))) for r in range(9)]
assert c==f==d['coefficients']
v=sum((Fraction(a,9**r) for r,a in enumerate(c)),Fraction())
assert v==Fraction(117258057456010,4782969)
eb=Fraction(38**38,15**30*8**8)*Fraction(46880976166089921083,79228162514264337593543950336)
assert eb==Fraction(d['eBase'])
assert 2*abs(v)<=eb and 2*Fraction(13515592997264,1594323)<=eb
s=(out/'Coeff0.lean').read_text()+(out/'Coeffs.lean').read_text()
found={int(r):int(a) for r,a in re.findall(r'fastECoefficient 14 8 14 (\\d+) = \\((-?\\d+) : ℤ\\)',s)}
assert found==dict(enumerate(c))
rs=(out/'RatSum.lean').read_text()
terms=[(int(a),int(r)) for a,r in re.findall(r'\\(Int.castRingHom ℚ\\) \\((-?\\d+) : ℤ\\) \\* \\(1 / 9 : ℚ\\) \\^ (\\d+)',rs)]
assert terms==[(a,r) for r,a in enumerate(c)]
for name in ['Closed.lean','Actual.lean','Caps.lean']:
 s=(out/name).read_text();assert not re.search(r'^\\s+(?:rw|simp|simp_all|norm_num|native_decide)\\b',s,re.M)
for p in out.glob('*.lean'):
 s=p.read_text();assert not re.search(r'\\b(?:sorry|admit|axiom|native_decide)\\b',s)
 assert not any(l.startswith('import ') and l.endswith('.I11InitialCapComputation.ThreeTwo') for l in s.splitlines())
fz=out/'FREEZE.json'
if fz.exists():
 z=json.loads(fz.read_text());assert all(hashlib.sha256((out/n).read_bytes()).hexdigest()==v['sha256'] for n,v in z['files'].items())
print(json.dumps({'status':'PASS_EXACT_STATIC_CHECKS_ONLY','coefficient_count':9,'max_coefficient_bits':max(abs(a).bit_length() for a in c),'rat_sum':str(v),'both_caps':True,'forbidden_imports':False,'lean_invocations':0}))
'''
write('check_data.py',checker)
p=subprocess.run([r'C:/Python314/python.exe','-B',str(OUT/'check_data.py')],capture_output=True,text=True);assert p.returncode==0,p.stdout+p.stderr
put('static-checks.json',json.loads(p.stdout))
put('CHECKPOINT.json',{'started_utc':'2026-09-12T00:42:58Z','checkpoint_utc':'2026-09-12T01:02:58Z','checkpoint_is_not_deadline':True,'lean_invocations':0,'last_verified_reused_result':'Parent-reported actual delta0 staged value accepted1536MiB through00:45UTC; generic eval bridge accepted','new_candidate_scope':'delta1 nine-term actual value and two actual caps, old five APIs preserved through optional primary aliases'})
write('README.md','''# ThreeTwo δ1 求值与双行初值界候选

本包完整保留 δ1 的真实参数 A=C=14、B=8、z=1/9、m=1，以及原目标 actualE 23 15 1 1 (1/9)=117258057456010/4782969。另给两δ的实际初值界与Bool行消费者，五个原公共接口可由主任务按 LEGACY_ADAPTER 对接。没有修改既有δ0冻结包或主线源码。

已复用的数学定义和符号eval_sum桥都是实际源。主任务已报告δ0的全部整数系数、Rat和、closed值、actualE值在1536 MiB下通过；报告时总审计仍在运行。这个进展支持分层路线，本包新增δ1和cap源仍未运行Lean，不能把它们当作已接受。

九个系数为38608020、−154432080、278974080、−296409960、202097700、−90349560、25814160、−4302360、319770，最大29位。组合数公式与阶乘商独立计算一致。精确有理和为原目标；共同分母9^8=43046721下的分子为1055322517104090。两个实际目标值都满足2|E|≤原eBase，全部精确分数和余量见exact-checks.json。没有改β、eLambda或高度阈值。

分层顺序及短审计入口：Coeff0/ZeroAudit（单系数），Eval/EvalAudit（复用已验eval_sum，符号a/f/z九项展开与代入），Coeffs/CoeffAudit（另八系数），RatSum/RatAudit（仅字面Rat和），Closed/ClosedAudit（带全部实际系数证明的泛型特化与Eq.trans），Actual/ActualAudit（actualE_eq_fast和Eq.trans），CapNums/NumAudit（原eBase下纯Rat两界），Caps/CapAudit（congrArg转接实际对象并合成Bool行）。Audit检查全部21公开根、20定理及五个原接口的完整类型。目标路径统一为lean/I11EOne，最长审计名仅ClosedAudit。

rowDelta false=1、true=0；Caps的false分支使用δ1，true分支使用δ0。末端不存在外部系数/求值/cap/增长树假设。泛型代入的九个等式输入均由本包实际整数证书供给。CapNums与Caps均不导入当前失败ThreeTwo模块，避免环；仅GrowthInputs提供原eBase。

这次只做轻量精确Python检查和审计器合成日志自测，没有调用Lean。实际速度、内存和公理闭包仍由主任务逐层验收。若本包通过，将补齐最后ThreeTwo边的两行m=1 E界；仍须主任务对别名、SmallCertificates、FixedEdge及原题消费者做完整后继验收，不能仅凭本包宣布i11或B原题完成。
''')
files={p.name:{'sha256':sha(p),'bytes':p.stat().st_size} for p in sorted(OUT.iterdir()) if p.is_file() and p.name!='FREEZE.json'}
put('FREEZE.json',{'status':'FROZEN_UNCOMPILED_DELTA1_AND_CAP_CANDIDATE','frozen_at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'owner':'/root/pade_construction','lean_invocations':0,'implementation_modules':8,'public_theorems':len(theorems),'public_roots':len(roots),'files':files})
print(json.dumps({'FREEZE_sha256':sha(OUT/'FREEZE.json'),'sources':{m:sha(OUT/(m+'.lean')) for m in mods},'Audit':sha(OUT/'Audit.lean'),'files':len(files),'public_roots':len(roots),'public_theorems':len(theorems),'beta':str(beta),'eBase':str(ebase)},indent=2))