from pathlib import Path
from fractions import Fraction
import json

OUT=Path(__file__).resolve().parent
DATA=json.loads((OUT/"factorial-certificates.json").read_text())

def product(factors):
    return " * ".join(f"({a} * m + {j})" for a,j in factors) or "1"

def horner(coeffs):
    result=coeffs[-1]
    for coeff in reversed(coeffs[:-1]): result=f"({coeff} + x * {result})"
    return result

text=r'''import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Data.Rat.Cast.Order
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith

/-!
# Elementary factorial bounds for three BFT parameter pairs

UNCOMPILED CANDIDATE. No Lean execution or axiom audit has occurred.
Source: BFT author manuscript 2007-02-26, equations (3.1)--(3.3), page 9,
with A=C=d*m-delta and B=(c-d)*m+delta-1 on page 10.
PDF SHA256: 0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c.

This candidate concerns only the factorial prefactor. It does not prove
an integral representation, a maximizer bound, G/theta estimates, BFT
Lemma 4.1 with its printed constants, or a B699 original-problem theorem.

The target is intentionally represented in Q. Every factorial is a natural
factorial, cast before division; there is no natural-number quotient. All
final source-aligned statements require m >= 1 and delta in {0,1}.
The formula is total at other inputs only because Nat subtraction is total;
no source claim is made at those inputs. The pure factorial base at m=1
does not assert that the source's positive A,B,C convention covers that
Pade endpoint.
-/

namespace Math.B699.ElementaryFactorialBound

/-- The exact factorial prefactor after the BFT substitutions. -/
def factorialTerm (c d delta m : ℕ) : ℚ :=
  ((((c + d) * m - delta).factorial : ℕ) : ℚ) /
    (((((d * m - delta).factorial : ℕ) : ℚ) ^ 2) *
      ((((c - d) * m + delta - 1).factorial : ℕ) : ℚ))

/-- The rational growth base; the real identity with alpha(c/d)^d remains
an explicit analytic-notation bridge outside this candidate. -/
def beta (c d : ℕ) : ℚ :=
  (((c + d : ℕ) : ℚ) ^ (c + d)) /
    ((d : ℚ) ^ (2 * d) * ((c - d : ℕ) : ℚ) ^ (c - d))

theorem factorialTerm_pos (c d delta m : ℕ) :
    0 < factorialTerm c d delta m := by
  unfold factorialTerm
  positivity

/-- A casted exact factorial recurrence, with no integer division. -/
theorem factorial_add_cast (n k : ℕ) :
    (((n + k).factorial : ℕ) : ℚ) =
      ((n.factorial : ℕ) : ℚ) * (((n + 1).ascFactorial k : ℕ) : ℚ) := by
  rw [← Nat.factorial_mul_ascFactorial, Nat.cast_mul]

theorem factorial_cast_mul_pred (n : ℕ) (hn : 0 < n) :
    ((n.factorial : ℕ) : ℚ) = (n : ℚ) * (((n - 1).factorial : ℕ) : ℚ) := by
  have hpred : n - 1 + 1 = n := Nat.sub_add_cancel (by omega)
  have hnat : n.factorial = n * (n - 1).factorial := by
    calc
      n.factorial = (n - 1 + 1).factorial := congrArg Nat.factorial hpred.symm
      _ = n * (n - 1).factorial := by rw [Nat.factorial_succ, hpred]
  rw [hnat, Nat.cast_mul]

/-- The exact delta ratio. This proves the suggested constant instead of
assuming it. The denominator is (c+d)*(c-d)=c^2-d^2. -/
theorem factorial_delta_one_eq (c d m : ℕ)
    (hc : d < c) (hd : 0 < d) (hm : 0 < m) :
    factorialTerm c d 1 m =
      ((d : ℚ) ^ 2 / (((c + d : ℕ) : ℚ) * ((c - d : ℕ) : ℚ))) *
        factorialTerm c d 0 m := by
  have hcp : 0 < c + d := by omega
  have hcm : 0 < c - d := Nat.sub_pos_of_lt hc
  have ha : 0 < (c + d) * m := Nat.mul_pos hcp hm
  have hdm : 0 < d * m := Nat.mul_pos hd hm
  have hb : 0 < (c - d) * m := Nat.mul_pos hcm hm
  simp only [factorialTerm, Nat.add_zero, Nat.sub_zero, Nat.add_sub_cancel]
  rw [factorial_cast_mul_pred ((c + d) * m) ha,
    factorial_cast_mul_pred (d * m) hdm,
    factorial_cast_mul_pred ((c - d) * m) hb]
  simp only [Nat.cast_mul]
  field_simp
  <;> ring

/-- Common consumer of the finite positive-coefficient certificates. All
factors that are cancelled have explicit positivity hypotheses. -/
theorem ratio_le_of_certificate
    {a b d bn bd U W m : ℚ}
    (hb : 0 < b) (hd : 0 < d) (hbd : 0 < bd)
    (hm : 0 < m) (hW : 0 < W)
    (hcert : a * bd * (m + 2) * U ≤
      bn * b * d ^ 2 * (m + 1) ^ 3 * W) :
    a * U / (b * d ^ 2 * m * (m + 1) * W) ≤
      (bn / bd) * (m + 1) ^ 2 / (m * (m + 2)) := by
  apply sub_nonneg.mp
  have hid :
      (bn / bd) * (m + 1) ^ 2 / (m * (m + 2)) -
        a * U / (b * d ^ 2 * m * (m + 1) * W) =
      (bn * b * d ^ 2 * (m + 1) ^ 3 * W - a * bd * (m + 2) * U) /
        (bd * b * d ^ 2 * m * (m + 1) * (m + 2) * W) := by
    field_simp
    <;> ring
  rw [hid]
  exact div_nonneg (sub_nonneg.mpr hcert) (by positivity)

/-- The telescoping induction, used below with actual factorial sequences.
This generic lemma is not the final factorial theorem on its own. -/
theorem telescoping_bound_from_step
    {F : ℕ → ℚ} {B : ℚ} (hB : 0 < B)
    (hstep : ∀ m : ℕ, 1 ≤ m →
      F (m + 1) ≤ F m * (B * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))))
    {m : ℕ} (hm : 1 ≤ m) :
    F m ≤ (2 * F 1 / B) * B ^ m * (m : ℚ) / ((m : ℚ) + 1) := by
  induction m, hm using Nat.le_induction with
  | base =>
      apply le_of_eq
      simp only [pow_one, Nat.cast_one]
      field_simp
      <;> ring
  | succ m hm ih =>
      have hmQ : 0 < (m : ℚ) := Nat.cast_pos.mpr (by omega)
      calc
        F (m + 1) ≤
            F m * (B * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) :=
          hstep m hm
        _ ≤ ((2 * F 1 / B) * B ^ m * (m : ℚ) / ((m : ℚ) + 1)) *
            (B * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) :=
          mul_le_mul_of_nonneg_right ih (by positivity)
        _ = (2 * F 1 / B) * B ^ (m + 1) * ((m + 1 : ℕ) : ℚ) /
            (((m + 1 : ℕ) : ℚ) + 1) := by
          rw [pow_succ]
          simp only [Nat.cast_add, Nat.cast_one]
          field_simp
          <;> ring

theorem strict_bound_from_step
    {F : ℕ → ℚ} {B : ℚ} (hB : 0 < B) (hF : 0 < F 1)
    (hstep : ∀ m : ℕ, 1 ≤ m →
      F (m + 1) ≤ F m * (B * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))))
    {m : ℕ} (hm : 1 ≤ m) :
    F m < (2 * F 1 / B) * B ^ m := by
  have hmQ : 0 < (m : ℚ) := Nat.cast_pos.mpr (by omega)
  have hpos : 0 < (2 * F 1 / B) * B ^ m := by positivity
  calc
    F m ≤ (2 * F 1 / B) * B ^ m * (m : ℚ) / ((m : ℚ) + 1) :=
      telescoping_bound_from_step hB hstep hm
    _ < (2 * F 1 / B) * B ^ m := by
      apply (div_lt_iff₀ (show 0 < (m : ℚ) + 1 by positivity)).2
      nlinarith

'''

roots=["factorialTerm_pos","factorial_add_cast","factorial_cast_mul_pred","factorial_delta_one_eq","ratio_le_of_certificate","telescoping_bound_from_step","strict_bound_from_step"]
for r in DATA["pairs"]:
    c,d,a,b=r["c"],r["d"],r["a"],r["b"]
    tag=f"{c}_{d}"
    beta=Fraction(r["beta"])
    bn,bd=beta.numerator,beta.denominator
    up=product([(a,j) for j in range(1,a)])
    wp=product([(d,j) for j in range(1,d)]*2+[(b,j) for j in range(1,b)])
    hp=horner(r["primitive_coefficients_ascending"])
    g=r["residual_content"]
    text+=f'''/-- Common numerator U for (c,d)=({c},{d}), after positive endpoint cancellation. -/
def numerator_{tag} (m : ℚ) : ℚ :=
  {up}

def denominator_{tag} (m : ℚ) : ℚ :=
  {wp}

def ratio_{tag} (m : ℚ) : ℚ :=
  {a} * numerator_{tag} m /
    ({b} * {d} ^ 2 * m * (m + 1) * denominator_{tag} m)

/-- Exact finite polynomial certificate in x=m-1. Coefficients are frozen in
factorial-certificates.json; ring checks the identity from literal integers. -/
theorem certificate_{tag} (x : ℚ) (hx : 0 ≤ x) :
    {a} * {bd} * (x + 3) * numerator_{tag} (x + 1) ≤
      {bn} * {b} * {d} ^ 2 * (x + 2) ^ 3 * denominator_{tag} (x + 1) := by
  apply sub_nonneg.mp
  calc
    0 ≤ {g} * {hp} := by positivity
    _ = {bn} * {b} * {d} ^ 2 * (x + 2) ^ 3 * denominator_{tag} (x + 1) -
        {a} * {bd} * (x + 3) * numerator_{tag} (x + 1) := by
      unfold numerator_{tag} denominator_{tag}
      ring

theorem ratio_bound_{tag} (m : ℚ) (hm : 1 ≤ m) :
    ratio_{tag} m ≤ beta {c} {d} * (m + 1) ^ 2 / (m * (m + 2)) := by
  have hmpos : 0 < m := lt_of_lt_of_le (by norm_num) hm
  have hcert := certificate_{tag} (m - 1) (sub_nonneg.mpr hm)
  have hs₁ : m - 1 + 1 = m := by ring
  have hs₂ : m - 1 + 2 = m + 1 := by ring
  have hs₃ : m - 1 + 3 = m + 2 := by ring
  simp only [hs₁, hs₂, hs₃] at hcert
  have hW : 0 < denominator_{tag} m := by
    unfold denominator_{tag}
    positivity
  have hbeta : beta {c} {d} = ({bn} : ℚ) / {bd} := by norm_num [beta]
  rw [hbeta]
  exact ratio_le_of_certificate (by norm_num) (by norm_num) (by norm_num)
    hmpos hW hcert

/-- Actual factorial recurrence, not a recurrence hypothesis. At m=k+1
all subtracted indices are nonnegative. -/
theorem factorial_step_zero_{tag} (k : ℕ) :
    factorialTerm {c} {d} 0 (k + 2) =
      factorialTerm {c} {d} 0 (k + 1) * ratio_{tag} ((k : ℚ) + 1) := by
  change ((({a} * (k + 2)).factorial : ℕ) : ℚ) /
      ((((({d} * (k + 2)).factorial : ℕ) : ℚ) ^ 2) *
        ((({b} * (k + 2) - 1).factorial : ℕ) : ℚ)) =
    ((({a} * (k + 1)).factorial : ℕ) : ℚ) /
      ((((({d} * (k + 1)).factorial : ℕ) : ℚ) ^ 2) *
        ((({b} * (k + 1) - 1).factorial : ℕ) : ℚ)) * ratio_{tag} ((k : ℚ) + 1)
  have ha : {a} * (k + 2) = {a} * (k + 1) + {a} := by omega
  have hd : {d} * (k + 2) = {d} * (k + 1) + {d} := by omega
  have hb : {b} * (k + 2) - 1 = ({b} * (k + 1) - 1) + {b} := by omega
  have hp : ({b} * (k + 1) - 1) + 1 = {b} * (k + 1) := by omega
  rw [ha, hd, hb, factorial_add_cast ({a} * (k + 1)) {a},
    factorial_add_cast ({d} * (k + 1)) {d},
    factorial_add_cast ({b} * (k + 1) - 1) {b}, hp]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio_{tag} numerator_{tag} denominator_{tag}
  field_simp
  <;> ring

theorem factorial_step_bound_zero_{tag} (m : ℕ) (hm : 1 ≤ m) :
    factorialTerm {c} {d} 0 (m + 1) ≤ factorialTerm {c} {d} 0 m *
      (beta {c} {d} * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) := by
  obtain ⟨k, rfl⟩ : ∃ k, m = k + 1 := Nat.exists_eq_add_of_le' hm
  rw [factorial_step_zero_{tag}]
  have hk : 0 ≤ (k : ℚ) := Nat.cast_nonneg k
  have hratio := ratio_bound_{tag} ((k : ℚ) + 1) (by linarith)
  have hmul := mul_le_mul_of_nonneg_left hratio (factorialTerm_pos {c} {d} 0 (k + 1)).le
  simpa only [Nat.cast_add, Nat.cast_one] using hmul

theorem factorial_step_bound_{tag} (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm {c} {d} delta (m + 1) ≤ factorialTerm {c} {d} delta m *
      (beta {c} {d} * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) := by
  rcases hdelta with rfl | rfl
  · exact factorial_step_bound_zero_{tag} m hm
  · rw [factorial_delta_one_eq {c} {d} (m + 1) (by norm_num) (by norm_num) (by omega),
      factorial_delta_one_eq {c} {d} m (by norm_num) (by norm_num) (by omega)]
    have hmul := mul_le_mul_of_nonneg_left (factorial_step_bound_zero_{tag} m hm)
      (show (0 : ℚ) ≤ ({d} : ℚ) ^ 2 / (({a} : ℚ) * ({b} : ℚ)) by norm_num)
    simpa only [mul_assoc] using hmul

/-- The requested precise telescoping bound for the actual factorial term. -/
theorem factorial_telescoping_{tag} (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm {c} {d} delta m ≤
      (2 * factorialTerm {c} {d} delta 1 / beta {c} {d}) *
        beta {c} {d} ^ m * (m : ℚ) / ((m : ℚ) + 1) := by
  exact telescoping_bound_from_step (by norm_num [beta])
    (fun n hn => factorial_step_bound_{tag} delta n hdelta hn) hm

/-- A convenient single rational constant for both deltas: F_m < beta^m/2.
The exact K=2*F_1/beta constants were independently checked to be <1/2. -/
theorem factorial_uniform_{tag} (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm {c} {d} delta m < (1 / 2 : ℚ) * beta {c} {d} ^ m := by
  have hbeta : 0 < beta {c} {d} := by norm_num [beta]
  have hK : 2 * factorialTerm {c} {d} delta 1 / beta {c} {d} < (1 / 2 : ℚ) := by
    rcases hdelta with rfl | rfl <;> norm_num [factorialTerm, beta, Nat.factorial]
  have hbound := strict_bound_from_step hbeta (factorialTerm_pos {c} {d} delta 1)
    (fun n hn => factorial_step_bound_{tag} delta n hdelta hn) hm
  exact lt_of_lt_of_le hbound (mul_le_mul_of_nonneg_right hK.le (pow_pos hbeta m).le)

'''
    roots += [f"certificate_{tag}",f"ratio_bound_{tag}",f"factorial_step_zero_{tag}",f"factorial_step_bound_zero_{tag}",f"factorial_step_bound_{tag}",f"factorial_telescoping_{tag}",f"factorial_uniform_{tag}"]
text+='\n'.join(f"#print axioms {name}" for name in roots)+'\n\nend Math.B699.ElementaryFactorialBound\n'
(OUT/"FactorialBound.lean").write_text(text,encoding="utf-8")
print("Candidate written",len(text),"characters",len(roots),"theorems with axiom-print checks; no Lean run")

# Split the candidate at fixed pair boundaries, so (3,2) can be compiled first.
# Each concrete module imports the one shared helper file; no duplicated declarations.
prefix='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-factorial-bound-5e2d13bb»'
marker='/-- Common numerator U for (c,d)='
parts=text.split(marker)
common=parts[0]
common_roots=roots[:7]
common += '\n'.join(f'#print axioms {n}' for n in common_roots)+'\n\nend Math.B699.ElementaryFactorialBound\n'
(OUT/'FactorialCommon.lean').write_text(common,encoding='utf-8')
module_names=[]
for idx,r in enumerate(DATA['pairs']):
    tag=f"{r['c']}_{r['d']}"
    name=f"Factorial{r['c']}D{r['d']}"
    body=marker+parts[idx+1]
    if '#print axioms' in body: body=body.split('#print axioms',1)[0]
    pair_roots=roots[7+7*idx:7+7*(idx+1)]
    body=f'import {prefix}.FactorialCommon\n\nnamespace Math.B699.ElementaryFactorialBound\n\n'+body
    body+='\n'.join(f'#print axioms {n}' for n in pair_roots)+'\n\nend Math.B699.ElementaryFactorialBound\n'
    (OUT/f'{name}.lean').write_text(body,encoding='utf-8')
    module_names.append(name)
entry='\n'.join(f'import {prefix}.{n}' for n in module_names)
entry+='\n\n/-! Uncompiled entry point for exactly the three fixed parameter pairs.\nCompile Factorial3D2.lean first to check the actual (3,2) factorial chain.\nThe common source and all imported candidates remain pending Lean verification. -/\n'
(OUT/'FactorialBound.lean').write_text(entry,encoding='utf-8')
print('Split candidates:', 'FactorialCommon.lean',*(n+'.lean' for n in module_names))
