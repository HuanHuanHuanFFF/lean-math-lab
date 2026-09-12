from pathlib import Path
import json,hashlib,re
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
OUT=Path(__file__).resolve().parent
assert OUT==RUN/'experiments/huan-i13-g75-uniform-5e2d13bb'
assert not (OUT/'FREEZE.json').exists()
base='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
own=base+'.experiments.«huan-i13-g75-uniform-5e2d13bb»'
ns='Math.B699.I13G75Uniform'
opts='set_option autoImplicit false\nset_option relaxedAutoImplicit false\n'
def write(name,s):
 p=OUT/name;assert not p.exists();p.write_text(s,encoding='utf-8')
actual=f'''import {base}.lean.RationalDivisor.Content
import {base}.lean.Factorial.FactorialCommon
import {base}.lean.I11DivisorSevenTwo.Adjacent

/-! UNCOMPILED. Actual c7d5 rational divisors, exact closed factorial forms and
one-step recurrence. The step is proved from factorial_add_cast; no step input. -/
{opts}namespace {ns}
open Math.B699.RationalFactorialDivisor Math.B699.ElementaryFactorialBound

def divisorZero (m : ℕ) : ℚ := rationalDivisor (5 * m) (2 * m - 1)
def divisorOne (m : ℕ) : ℚ := rationalDivisor (5 * m - 1) (2 * m)
def infiniteRate : ℚ := 11664 / 3125

def numeratorZero (x : ℚ) : ℚ :=
  (6 * x) * (6 * x + 1) * (6 * x + 2) * (6 * x + 3) *
    (6 * x + 4) * (6 * x + 5) * x

def denominator (x : ℚ) : ℚ :=
  (5 * x + 1) * (5 * x + 2) * (5 * x + 3) * (5 * x + 4) *
    (5 * x + 5) * (2 * x) * (2 * x + 1)

def ratioZero (x : ℚ) : ℚ := numeratorZero x / denominator x

theorem infinite_rate_pos : 0 < infiniteRate := by norm_num [infiniteRate]

theorem divisor_zero_pos (m : ℕ) : 0 < divisorZero m := rationalDivisor_pos _ _

theorem divisor_one_pos (m : ℕ) : 0 < divisorOne m := rationalDivisor_pos _ _

theorem denominator_pos (x : ℚ) (hx : 0 < x) : 0 < denominator x := by
  unfold denominator
  positivity

theorem divisor_zero_formula (m : ℕ) (hm : 1 ≤ m) :
    divisorZero m =
      (((6 * m - 1).factorial : ℕ) : ℚ) * (((m - 1).factorial : ℕ) : ℚ) /
        ((((5 * m).factorial : ℕ) : ℚ) * (((2 * m - 1).factorial : ℕ) : ℚ)) := by
  have hf : (2 * m - 1) / 2 = m - 1 := by omega
  have hn : 5 * m + (m - 1) = 6 * m - 1 := by omega
  simp only [divisorZero, rationalDivisor, factorialNumerator, factorialDenominator,
    hf, hn, Nat.cast_mul]

theorem divisor_one_formula (m : ℕ) (hm : 1 ≤ m) :
    divisorOne m =
      (((6 * m - 1).factorial : ℕ) : ℚ) * ((m.factorial : ℕ) : ℚ) /
        ((((5 * m - 1).factorial : ℕ) : ℚ) * (((2 * m).factorial : ℕ) : ℚ)) := by
  have hf : (2 * m) / 2 = m := by omega
  have hn : 5 * m - 1 + m = 6 * m - 1 := by omega
  simp only [divisorOne, rationalDivisor, factorialNumerator, factorialDenominator,
    hf, hn, Nat.cast_mul]

theorem divisor_zero_one : divisorZero 1 = 1 := by
  rw [divisor_zero_formula 1 (by decide)]
  norm_num

theorem divisor_one_eq (m : ℕ) (hm : 1 ≤ m) :
    divisorOne m = ((5 : ℚ) * (m : ℚ) / 2) * divisorZero m := by
  have h := rationalDivisor_adjacent_odd_even (5 * m) (m - 1) (by omega)
  have ho : 2 * (m - 1) + 1 = 2 * m - 1 := by omega
  have he : 2 * (m - 1) + 2 = 2 * m := by omega
  simpa only [divisorZero, divisorOne, ho, he, Nat.cast_mul, Nat.cast_ofNat] using h

theorem divisor_zero_le_one (m : ℕ) (hm : 1 ≤ m) :
    divisorZero m ≤ divisorOne m := by
  have h := rationalDivisor_adjacent_odd_even_ge (5 * m) (m - 1) (by omega)
  have ho : 2 * (m - 1) + 1 = 2 * m - 1 := by omega
  have he : 2 * (m - 1) + 2 = 2 * m := by omega
  simpa only [divisorZero, divisorOne, ho, he] using h

/-- The shifted index keeps all factorial arguments nonnegative without a
truncated predecessor cancellation hidden inside a field tactic. -/
theorem divisor_zero_step_succ (k : ℕ) :
    divisorZero (k + 2) = divisorZero (k + 1) * ratioZero ((k : ℚ) + 1) := by
  rw [divisor_zero_formula (k + 2) (by omega), divisor_zero_formula (k + 1) (by omega)]
  have hn : 6 * (k + 2) - 1 = (6 * (k + 1) - 1) + 6 := by omega
  have hf : k + 2 - 1 = (k + 1 - 1) + 1 := by omega
  have hu : 5 * (k + 2) = 5 * (k + 1) + 5 := by omega
  have hv : 2 * (k + 2) - 1 = (2 * (k + 1) - 1) + 2 := by omega
  have hn1 : (6 * (k + 1) - 1) + 1 = 6 * (k + 1) := by omega
  have hf1 : (k + 1 - 1) + 1 = k + 1 := by omega
  have hv1 : (2 * (k + 1) - 1) + 1 = 2 * (k + 1) := by omega
  rw [hn, hf, hu, hv, factorial_add_cast (6 * (k + 1) - 1) 6,
    factorial_add_cast (k + 1 - 1) 1, factorial_add_cast (5 * (k + 1)) 5,
    factorial_add_cast (2 * (k + 1) - 1) 2, hn1, hf1, hv1]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratioZero numeratorZero denominator
  field_simp
  <;> ring

theorem divisor_zero_step (m : ℕ) (hm : 1 ≤ m) :
    divisorZero (m + 1) = divisorZero m * ratioZero (m : ℚ) := by
  obtain ⟨k, rfl⟩ : ∃ k, m = k + 1 := Nat.exists_eq_add_of_le' hm
  simpa only [Nat.cast_add, Nat.cast_one] using divisor_zero_step_succ k

end {ns}
'''
write('Actual.lean',actual)
cert=f'''import {own}.Actual

/-! UNCOMPILED. The five-degree positive polynomial is the cleared
simplified difference. The actual raw factorial products contribute 2*x. -/
{opts}namespace {ns}

def certificatePolynomial (x : ℚ) : ℚ :=
  1399680 + x * (11061720 + x * (28359900 + x *
    (29947860 + x * (14985000 + x * 4860000))))

theorem certificate_identity (x : ℚ) :
    3125 * numeratorZero x * (24 * x + 23) -
      11664 * denominator x * (24 * x - 1) =
        2 * x * certificatePolynomial x := by
  unfold numeratorZero denominator certificatePolynomial
  ring

theorem certificate_nonneg (x : ℚ) (hx : 0 ≤ x) :
    0 ≤ certificatePolynomial x := by
  unfold certificatePolynomial
  positivity

theorem linear_denominator_pos (m : ℕ) (hm : 1 ≤ m) :
    0 < 24 * (m : ℚ) - 1 := by
  have hmq : (1 : ℚ) ≤ (m : ℚ) := by exact_mod_cast hm
  linarith

theorem ratio_zero_lower (x : ℚ) (hx : 1 ≤ x) :
    infiniteRate * (24 * x - 1) / (24 * x + 23) ≤ ratioZero x := by
  have hx0 : 0 < x := lt_of_lt_of_le (by norm_num) hx
  have hd : 0 < denominator x := denominator_pos x hx0
  have hs : 0 < 24 * x + 23 := by positivity
  have hid : ratioZero x - infiniteRate * (24 * x - 1) / (24 * x + 23) =
      (3125 * numeratorZero x * (24 * x + 23) -
        11664 * denominator x * (24 * x - 1)) /
          (3125 * denominator x * (24 * x + 23)) := by
    unfold ratioZero infiniteRate
    field_simp [ne_of_gt hd, ne_of_gt hs]
    <;> ring
  apply sub_nonneg.mp
  rw [hid, certificate_identity]
  exact div_nonneg
    (mul_nonneg (mul_nonneg (by norm_num) hx0.le) (certificate_nonneg x hx0.le))
    (by positivity)

theorem divisor_zero_step_lower (m : ℕ) (hm : 1 ≤ m) :
    divisorZero m *
      (infiniteRate * (24 * (m : ℚ) - 1) / (24 * (m : ℚ) + 23)) ≤
        divisorZero (m + 1) := by
  rw [divisor_zero_step m hm]
  exact mul_le_mul_of_nonneg_left
    (ratio_zero_lower (m : ℚ) (by exact_mod_cast hm)) (divisor_zero_pos m).le

end {ns}
'''
write('Certificate.lean',cert)
uniform=f'''import {own}.Certificate
import {base}.lean.Growth.ElementaryRate

/-! UNCOMPILED. The actual factorial step supplies every induction premise.
The public actual-D and actual-qContent bounds require only m>=1. -/
{opts}namespace {ns}
open Math.B699.ElementaryRate Math.B699.RationalFactorialDivisor
open Math.B699.PadeConstruction

def scaledZero (m : ℕ) : ℚ := (24 * (m : ℚ) - 1) * divisorZero m

theorem scaled_zero_one : scaledZero 1 = 23 := by
  norm_num [scaledZero, divisor_zero_one]

theorem scaled_zero_step (m : ℕ) (hm : 1 ≤ m) :
    scaledZero m * infiniteRate ≤ scaledZero (m + 1) := by
  have hs : 0 < 24 * (m : ℚ) + 23 := by positivity
  calc
    _ = (24 * (m : ℚ) + 23) *
        (divisorZero m *
          (infiniteRate * (24 * (m : ℚ) - 1) / (24 * (m : ℚ) + 23))) := by
      unfold scaledZero
      field_simp [ne_of_gt hs]
      <;> ring
    _ ≤ (24 * (m : ℚ) + 23) * divisorZero (m + 1) :=
      mul_le_mul_of_nonneg_left (divisor_zero_step_lower m hm) hs.le
    _ = scaledZero (m + 1) := by
      simp only [scaledZero, Nat.cast_add, Nat.cast_one]
      ring

theorem scaled_zero_lower (m : ℕ) (hm : 1 ≤ m) :
    23 * infiniteRate ^ (m - 1) ≤ scaledZero m := by
  have h := lower_geometric_from_step (F := scaledZero) (R := infiniteRate) (K := 1)
    infinite_rate_pos.le (fun k hk => scaled_zero_step k hk) (m - 1)
  have hi : 1 + (m - 1) = m := by omega
  simpa only [scaled_zero_one, hi] using h

theorem divisor_zero_lower (m : ℕ) (hm : 1 ≤ m) :
    23 * infiniteRate ^ (m - 1) / (24 * (m : ℚ) - 1) ≤ divisorZero m := by
  apply (div_le_iff₀ (linear_denominator_pos m hm)).2
  simpa only [scaledZero, mul_comm (24 * (m : ℚ) - 1) (divisorZero m)] using
    scaled_zero_lower m hm

theorem divisor_one_lower (m : ℕ) (hm : 1 ≤ m) :
    ((5 : ℚ) * (m : ℚ) / 2) *
      (23 * infiniteRate ^ (m - 1) / (24 * (m : ℚ) - 1)) ≤ divisorOne m := by
  rw [divisor_one_eq m hm]
  exact mul_le_mul_of_nonneg_left (divisor_zero_lower m hm) (by positivity)

theorem rational_divisor_zero_lower (m : ℕ) (hm : 1 ≤ m) :
    (23 : ℚ) * ((11664 : ℚ) / 3125) ^ (m - 1) / (24 * (m : ℚ) - 1) ≤
      rationalDivisor (5 * m) (2 * m - 1) := by
  simpa only [infiniteRate, divisorZero] using divisor_zero_lower m hm

theorem rational_divisor_one_eq (m : ℕ) (hm : 1 ≤ m) :
    rationalDivisor (5 * m - 1) (2 * m) =
      ((5 : ℚ) * (m : ℚ) / 2) * rationalDivisor (5 * m) (2 * m - 1) := by
  simpa only [divisorZero, divisorOne] using divisor_one_eq m hm

theorem q_content_zero_lower (m : ℕ) (hm : 1 ≤ m) :
    23 * infiniteRate ^ (m - 1) / (24 * (m : ℚ) - 1) ≤
      (qContent (5 * m) (2 * m - 1) (5 * m) : ℚ) :=
  (divisor_zero_lower m hm).trans (rationalDivisor_le_qContent (5 * m) (2 * m - 1))

theorem q_content_one_lower (m : ℕ) (hm : 1 ≤ m) :
    ((5 : ℚ) * (m : ℚ) / 2) *
      (23 * infiniteRate ^ (m - 1) / (24 * (m : ℚ) - 1)) ≤
        (qContent (5 * m - 1) (2 * m) (5 * m - 1) : ℚ) :=
  (divisor_one_lower m hm).trans (rationalDivisor_le_qContent (5 * m - 1) (2 * m))

end {ns}
'''
write('Uniform.lean',uniform)
geo=f'''import {own}.Uniform
import Mathlib.Algebra.Ring.GeomSum
import Mathlib.Algebra.Order.GroupWithZero.Basic

/-! UNCOMPILED optional layer. A finite geometric sum absorbs the single
linear denominator into a fixed positive prefactor. No new height is asserted. -/
{opts}namespace {ns}
open scoped BigOperators
open Math.B699.RationalFactorialDivisor Math.B699.PadeConstruction

def rho : ℚ := 65535 / 65536
def geometricRate : ℚ := infiniteRate * rho
def geometricConstant : ℚ := 23 / (24 * infiniteRate * 65536)

theorem rho_pos : 0 < rho := by norm_num [rho]

theorem rho_le_one : rho ≤ 1 := by norm_num [rho]

theorem geometric_constant_pos : 0 < geometricConstant := by
  norm_num [geometricConstant, infiniteRate]

theorem geometric_rate_pos : 0 < geometricRate :=
  mul_pos infinite_rate_pos rho_pos

theorem finite_geometric_sum_le (m : ℕ) :
    (∑ k ∈ Finset.range m, rho ^ k) ≤ (65536 : ℚ) := by
  have h := geom_sum_mul_neg rho m
  have hr : (1 : ℚ) - rho = 1 / 65536 := by norm_num [rho]
  rw [hr] at h
  have hp : 0 ≤ rho ^ m := pow_nonneg rho_pos.le m
  linarith

theorem mul_rho_power_le (m : ℕ) : (m : ℚ) * rho ^ m ≤ 65536 := by
  calc
    _ = ∑ k ∈ Finset.range m, rho ^ m := by simp [nsmul_eq_mul]
    _ ≤ ∑ k ∈ Finset.range m, rho ^ k := by
      apply Finset.sum_le_sum
      intro k hk
      exact pow_le_pow_of_le_one rho_pos.le rho_le_one
        (Nat.le_of_lt (Finset.mem_range.mp hk))
    _ ≤ 65536 := finite_geometric_sum_le m

theorem rho_power_div_le (m : ℕ) (hm : 1 ≤ m) :
    rho ^ m / 65536 ≤ 1 / (m : ℚ) := by
  have hm0 : (0 : ℚ) < (m : ℚ) := by exact_mod_cast (show 0 < m by omega)
  apply (div_le_div_iff₀ (by norm_num : (0 : ℚ) < 65536) hm0).2
  simpa only [one_mul, mul_comm (rho ^ m) (m : ℚ)] using mul_rho_power_le m

theorem divisor_zero_geometric (m : ℕ) (hm : 1 ≤ m) :
    geometricConstant * geometricRate ^ m ≤ divisorZero m := by
  have hm0 : (0 : ℚ) < (m : ℚ) := by exact_mod_cast (show 0 < m by omega)
  have hRpos : 0 < infiniteRate := infinite_rate_pos
  have hr : infiniteRate ≠ 0 := ne_of_gt hRpos
  have hi : m - 1 + 1 = m := Nat.sub_add_cancel hm
  have hp : infiniteRate ^ m = infiniteRate ^ (m - 1) * infiniteRate := by
    simpa only [hi] using (pow_succ infiniteRate (m - 1))
  have hn : 0 ≤ 23 * infiniteRate ^ (m - 1) := by positivity
  calc
    _ = (23 / (24 * infiniteRate)) * infiniteRate ^ m * (rho ^ m / 65536) := by
      unfold geometricConstant geometricRate
      rw [mul_pow]
      field_simp [hr]
      <;> ring
    _ ≤ (23 / (24 * infiniteRate)) * infiniteRate ^ m * (1 / (m : ℚ)) :=
      mul_le_mul_of_nonneg_left (rho_power_div_le m hm) (by positivity)
    _ = 23 * infiniteRate ^ (m - 1) / (24 * (m : ℚ)) := by
      rw [hp]
      field_simp [hr, ne_of_gt hm0]
      <;> ring
    _ ≤ 23 * infiniteRate ^ (m - 1) / (24 * (m : ℚ) - 1) := by
      apply (div_le_div_iff₀ (by positivity : 0 < 24 * (m : ℚ))
        (linear_denominator_pos m hm)).2
      exact mul_le_mul_of_nonneg_left (by linarith : 24 * (m : ℚ) - 1 ≤ 24 * (m : ℚ)) hn
    _ ≤ divisorZero m := divisor_zero_lower m hm

theorem divisor_one_geometric (m : ℕ) (hm : 1 ≤ m) :
    geometricConstant * geometricRate ^ m ≤ divisorOne m :=
  (divisor_zero_geometric m hm).trans (divisor_zero_le_one m hm)

theorem q_content_zero_geometric (m : ℕ) (hm : 1 ≤ m) :
    geometricConstant * geometricRate ^ m ≤
      (qContent (5 * m) (2 * m - 1) (5 * m) : ℚ) :=
  (divisor_zero_geometric m hm).trans (rationalDivisor_le_qContent (5 * m) (2 * m - 1))

theorem q_content_one_geometric (m : ℕ) (hm : 1 ≤ m) :
    geometricConstant * geometricRate ^ m ≤
      (qContent (5 * m - 1) (2 * m) (5 * m - 1) : ℚ) :=
  (divisor_one_geometric m hm).trans (rationalDivisor_le_qContent (5 * m - 1) (2 * m))

end {ns}
'''
write('Geometric.lean',geo)
mods=['Actual','Certificate','Uniform','Geometric'];roots=[];thms=[];decls=[]
for mod,audit in zip(mods,['AAudit','CAudit','UAudit','GAudit']):
 s=(OUT/(mod+'.lean')).read_text();rs=[]
 assert not re.search(r'\b(?:sorry|admit|axiom|native_decide)\b',s)
 for kind,n in re.findall(r'^(def|theorem) ([A-Za-z_][A-Za-z_0-9]*)',s,re.M):
  root=ns+'.'+n;assert root not in roots;roots.append(root);rs.append(root);decls.append({'module':mod,'kind':kind,'root':root})
  if kind=='theorem':thms.append(root)
 write(audit+'.lean','import '+own+'.'+mod+'\n\n'+'\n'.join('#check @'+r+'\n#print axioms '+r for r in rs)+'\n')
audit='import '+own+'.Geometric\n\n'+'\n'.join('#check @'+r+'\n#print axioms '+r for r in roots)+'\n'
audit+='''
open Math.B699.RationalFactorialDivisor
#check (Math.B699.I13G75Uniform.rational_divisor_zero_lower :
  ∀ m : ℕ, 1 ≤ m →
    (23 : ℚ) * ((11664 : ℚ) / 3125) ^ (m - 1) / (24 * (m : ℚ) - 1) ≤
      rationalDivisor (5 * m) (2 * m - 1))
#check (Math.B699.I13G75Uniform.rational_divisor_one_eq :
  ∀ m : ℕ, 1 ≤ m →
    rationalDivisor (5 * m - 1) (2 * m) =
      ((5 : ℚ) * (m : ℚ) / 2) * rationalDivisor (5 * m) (2 * m - 1))
'''
write('Audit.lean',audit)
write('expected-axioms.json',json.dumps({'allowed_axioms':['propext','Classical.choice','Quot.sound'],'expected_print_roots':roots,'candidate_public_theorems':thms,'declarations':decls,'status':'UNCOMPILED_FULL_PROOF_CANDIDATE'},indent=2)+'\n')
print(json.dumps({'implementation_modules':4,'public_roots':len(roots),'public_theorems':len(thms),'source_sha256':{m:hashlib.sha256((OUT/(m+'.lean')).read_bytes()).hexdigest() for m in mods}},indent=2))