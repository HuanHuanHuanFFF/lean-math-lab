from pathlib import Path
from fractions import Fraction
from math import comb,factorial
import json,hashlib,re,datetime
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
OUT=Path(__file__).resolve().parent
assert OUT==RUN/'experiments/huan-i11-e-coefficient-staging-5e2d13bb'
assert not (OUT/'FREEZE.json').exists()
base='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
own=base+'.experiments.«huan-i11-e-coefficient-staging-5e2d13bb»'
ns='Math.B699.I11ECoefficientStaging'
header='set_option autoImplicit false\nset_option relaxedAutoImplicit false\n'
coefs=[(-1)**r*comb(15+r,r)*comb(38,31+r) for r in range(8)]
coefs_factorial=[(-1)**r*(factorial(15+r)//(factorial(r)*factorial(15)))*(factorial(38)//(factorial(31+r)*factorial(7-r))) for r in range(8)]
assert coefs==coefs_factorial
value=sum((Fraction(c,9**r) for r,c in enumerate(coefs)),Fraction())
assert value==Fraction(13515592997264,1594323)
def write(name,s):
 p=OUT/name;assert not p.exists(),name;p.write_text(s,encoding='utf-8')
def put(name,v):write(name,json.dumps(v,ensure_ascii=False,indent=2)+'\n')
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
terms=' +\n      '.join(f'f (a {i}) * z ^ {i}' for i in range(8))
cterms=' +\n      '.join(f'f c{i} * z ^ {i}' for i in range(8))
proofs=', '.join(f'h{i}' for i in range(8))
evalbridge=f'''import {base}.lean.PadeInteger

/-! UNCOMPILED diagnostic layer. All polynomial simplification occurs with
symbolic coefficients. No concrete fastECoefficient or rational value is imported. -/
{header}universe u
namespace {ns}
open scoped BigOperators
open Math.B699.PadeConstruction

/-- Structural evaluation bridge, proved before any coefficients become numbers. -/
theorem coefficientPolynomial_eval_sum {{R : Type u}} [Semiring R]
    (n : ℕ) (a : ℕ → ℤ) (f : ℤ →+* R) (z : R) :
    (coefficientPolynomial n a).eval₂ f z =
      ∑ r ∈ Finset.range (n + 1), f (a r) * z ^ r := by
  classical
  simp only [coefficientPolynomial, Polynomial.eval₂_finsetSum,
    Polynomial.eval₂_monomial]

/-- Only the eight-term sum is unfolded here; a, f and z remain symbolic. -/
theorem coefficientPolynomial_eval_seven {{R : Type u}} [Semiring R]
    (a : ℕ → ℤ) (f : ℤ →+* R) (z : R) :
    (coefficientPolynomial 7 a).eval₂ f z =
      {terms} := by
  rw [coefficientPolynomial_eval_sum]
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, zero_add]

/-- Substitute proved integer coefficients while the polynomial is still symbolic. -/
theorem coefficientPolynomial_eval_seven_of_coeffs {{R : Type u}} [Semiring R]
    (a : ℕ → ℤ) (f : ℤ →+* R) (z : R)
    (c0 c1 c2 c3 c4 c5 c6 c7 : ℤ)
    (h0 : a 0 = c0) (h1 : a 1 = c1) (h2 : a 2 = c2) (h3 : a 3 = c3)
    (h4 : a 4 = c4) (h5 : a 5 = c5) (h6 : a 6 = c6) (h7 : a 7 = c7) :
    (coefficientPolynomial 7 a).eval₂ f z =
      {cterms} := by
  rw [coefficientPolynomial_eval_seven, {proofs}]

end {ns}
'''
write('EvalBridge.lean',evalbridge)
c0=f'''import {base}.lean.I11InitialCapComputation.ChooseFast

/-! UNCOMPILED first numerical probe: one actual integer coefficient only.
No polynomial expression or rational sum is evaluated in this file. -/
{header}namespace {ns}
open Math.B699.I11InitialCapComputation

theorem coefficient_0 : fastECoefficient 15 7 15 0 = (12620256 : ℤ) := by
  norm_num [fastECoefficient, chooseFast]

end {ns}
'''
write('Coeff0.lean',c0)
rest=f'''import {own}.Coeff0

/-! UNCOMPILED. Each remaining integer coefficient has its own closed proof.
Neither coefficientPolynomial nor Polynomial.eval₂ is unfolded here. -/
{header}namespace {ns}
open Math.B699.I11InitialCapComputation

'''
for i,c in enumerate(coefs[1:],1):rest+=f'''theorem coefficient_{i} : fastECoefficient 15 7 15 {i} = ({c} : ℤ) := by
  norm_num [fastECoefficient, chooseFast]

'''
rest+='end '+ns+'\n';write('Coefficients.lean',rest)
rt=' +\n    '.join(f'(Int.castRingHom ℚ) ({c} : ℤ) * (1 / 9 : ℚ) ^ {i}' for i,c in enumerate(coefs))
ratsum=f'''import Mathlib.Algebra.Field.Rat
import Mathlib.Tactic.NormNum

/-! UNCOMPILED. This layer imports no Polynomial or Padé module.
It contains only eight fixed rational terms with integer coefficients. -/
{header}namespace {ns}

def rationalDelta0Sum : ℚ :=
    {rt}

theorem rational_delta0_sum_value :
    rationalDelta0Sum = (13515592997264 : ℚ) / 1594323 := by
  norm_num [rationalDelta0Sum, Int.coe_castRingHom]

end {ns}
'''
write('RatSum.lean',ratsum)
args=' '.join(f'({c})' if c<0 else str(c) for c in coefs)
hargs=' '.join(f'coefficient_{i}' for i in range(8))
closed=f'''import {own}.EvalBridge
import {own}.Coefficients
import {own}.RatSum

/-! UNCOMPILED. The original ClosedEval target, connected without running a
rewriter or numerical tactic on any concrete Polynomial expression. -/
{header}namespace {ns}
open Math.B699.PadeConstruction Math.B699.I11InitialCapComputation

theorem closed_e_delta0 :
    (coefficientPolynomial 7 (fastECoefficient 15 7 15)).eval₂
      (Int.castRingHom ℚ) (1 / 9) = (13515592997264 : ℚ) / 1594323 := by
  have hstage :
      (coefficientPolynomial 7 (fastECoefficient 15 7 15)).eval₂
        (Int.castRingHom ℚ) (1 / 9) = rationalDelta0Sum :=
    coefficientPolynomial_eval_seven_of_coeffs
      (fastECoefficient 15 7 15) (Int.castRingHom ℚ) (1 / 9)
      {args}
      {hargs}
  exact Eq.trans hstage rational_delta0_sum_value

end {ns}
'''
write('ClosedEval.lean',closed)
actual=f'''import {own}.ClosedEval

/-! UNCOMPILED. Restore the unchanged actualE target using the already proved
generic fast-coefficient identity. No actualE evaluation occurs in this bridge. -/
{header}namespace {ns}
open Math.B699.PadeConstruction Math.B699.PadeGrowthNormalization
open Math.B699.I11InitialCapComputation

theorem actual_e_delta0 :
    actualE 23 15 0 1 (1 / 9) = (13515592997264 : ℚ) / 1594323 := by
  have hfast : actualE 23 15 0 1 (1 / 9) =
      (coefficientPolynomial 7 (fastECoefficient 15 7 15)).eval₂
        (Int.castRingHom ℚ) (1 / 9) :=
    Math.B699.I11InitialCapComputation.actualE_eq_fast 23 15 0 1 (1 / 9)
  exact Eq.trans hfast closed_e_delta0

end {ns}
'''
write('ActualEval.lean',actual)
modules=['Coeff0','EvalBridge','Coefficients','RatSum','ClosedEval','ActualEval']
roots=[];public_theorems=[];declarations=[]
for mod in modules:
 s=(OUT/(mod+'.lean')).read_text();rs=[]
 assert not re.search(r'\b(?:sorry|admit|axiom|native_decide)\b',s)
 for kind,name in re.findall(r'^(def|theorem) ([A-Za-z_][A-Za-z_0-9]*)',s,re.M):
  r=ns+'.'+name;roots.append(r);rs.append(r);declarations.append({'module':mod,'kind':kind,'root':r})
  if kind=='theorem':public_theorems.append(r)
 write(mod+'Audit.lean','import '+own+'.'+mod+'\n\n'+'\n'.join('#check @'+r+'\n#print axioms '+r for r in rs)+'\n')
write('Audit.lean','import '+own+'.ActualEval\n\n'+'\n'.join('#check @'+r+'\n#print axioms '+r for r in roots)+'\n')
put('expected-axioms.json',{'allowed_axioms':['propext','Classical.choice','Quot.sound'],'expected_print_roots':roots,'candidate_public_theorems':public_theorems,'declarations':declarations,'status':'UNCOMPILED_CANDIDATE'})
put('exact-checks.json',{'status':'EXACT_PYTHON_ONLY','parameters':{'c':23,'d':15,'delta':0,'m':1,'A':15,'B':7,'C':15,'z':'1/9'},'coefficient_formula':'(-1)^r choose(15+r,r) choose(38,31+r)','indices':list(range(8)),'coefficients':coefs,'independent_factorial_quotients_match':coefs==coefs_factorial,'sum':str(value),'cleared_numerator':sum(c*9**(7-r) for r,c in enumerate(coefs)),'cleared_denominator':9**7,'maximum_coefficient_bits':max(abs(c).bit_length() for c in coefs),'numerator_bits':value.numerator.bit_length(),'denominator_bits':value.denominator.bit_length(),'boundary':'Finite arithmetic check; not a Lean acceptance or a new bound.'})
probe_names=['Coeff0.lean','Coeff0Audit.lean','EvalBridge.lean','EvalBridgeAudit.lean']
put('FIRST_PROBE_FREEZE.json',{'status':'FROZEN_UNCOMPILED_MINIMAL_PREFIX','frozen_at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'namespace':ns,'recommended_order':['Coeff0Audit.lean','EvalBridgeAudit.lean'],'files':{n:{'sha256':sha(OUT/n),'bytes':(OUT/n).stat().st_size} for n in probe_names},'lean_invocations':0})
print(json.dumps({'prefix_freeze_sha256':sha(OUT/'FIRST_PROBE_FREEZE.json'),'prefix':{n:sha(OUT/n) for n in probe_names},'files':len(list(OUT.iterdir())),'public_roots':len(roots),'public_theorems':len(public_theorems),'coefficients':coefs},indent=2))