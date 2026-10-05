module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-terminal-gap-twohour».gap.ThetaInterval
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.GapDefinitions
public import Lean.Elab.Tactic.NormCast

/-!
UNCOMPILED CANDIDATE. Not executed in Lean, Lake, a kernel, or CI.
The imports are copied from the uploaded PsiTheta.lean snapshot.
This file proves only conditional consumers. LocalPowerIncrement and PsiSupply
are explicit theorem parameters, NOT proved distributions or added axioms.
The new elementary paper proof of LocalPowerIncrement is in PROOF.md §§2-3.
The literature-backed analytic supply and its outstanding certificates are
separately documented; no placeholder proof of them is installed here.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

@[expose] public section
namespace B699UniformGapPaper20261005

/-- New elementary obligation: increments, not the size of psi - theta. -/
def LocalPowerIncrement : Prop :=
  ∀ x : ℝ, 100000000 ≤ x →
    (Chebyshev.psi (x + x / 4095) - Chebyshev.theta (x + x / 4095)) -
      (Chebyshev.psi x - Chebyshev.theta x) ≤ x / 300000

/-- Weaker accuracy than the old 1/10000 input; lower consumer threshold. -/
def PsiSupply : Prop :=
  ∀ x : ℝ, 100000000 ≤ x →
    |Chebyshev.psi x - x| ≤ (3 / 25000 : ℝ) * x

/-- Existing finite interface remains pending independent acceptance. -/
def InitialSegment : Prop :=
  ∀ y : ℕ, 10000000 ≤ y → y < 122568684 →
    ∃ p : ℕ, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y

theorem coefficient_margin :
    (1 / 4095 : ℝ) - (3 / 25000) * (2 + 1 / 4095) - 1 / 300000 =
      49 / 58500000 := by
  norm_num

theorem prime_of_local_power_and_psi {x : ℝ}
    (hx : 100000000 ≤ x)
    (hlocal : (Chebyshev.psi (x + x / 4095) - Chebyshev.theta (x + x / 4095)) -
      (Chebyshev.psi x - Chebyshev.theta x) ≤ x / 300000)
    (hψx : |Chebyshev.psi x - x| ≤ (3 / 25000 : ℝ) * x)
    (hψz : |Chebyshev.psi (x + x / 4095) - (x + x / 4095)| ≤
      (3 / 25000 : ℝ) * (x + x / 4095)) :
    ∃ p : ℕ, p.Prime ∧ x < (p : ℝ) ∧
      (4095 : ℝ) * ((p : ℝ) - x) ≤ x := by
  have hx0 : 0 < x := by linarith
  have hu := (abs_le.mp hψx).2
  have hl := (abs_le.mp hψz).1
  have hθ : Chebyshev.theta x < Chebyshev.theta (x + x / 4095) := by
    linarith
  obtain ⟨p, hp, hxp, hpz⟩ := B699ThetaSupply.exists_prime_of_theta_lt hθ
  refine ⟨p, hp, hxp, ?_⟩
  linarith

theorem gap_100M_of_supplies
    (hlocal : LocalPowerIncrement) (hψ : PsiSupply) :
    B699TailGap.Gap 4095 100000000 := by
  intro y hy
  have hyR : (100000000 : ℝ) ≤ (y : ℝ) := by exact_mod_cast hy
  have hy0 : (0 : ℝ) ≤ (y : ℝ) := Nat.cast_nonneg y
  have hz : (100000000 : ℝ) ≤ (y : ℝ) + (y : ℝ) / 4095 := by
    have := div_nonneg hy0 (by norm_num : (0 : ℝ) ≤ 4095)
    linarith
  obtain ⟨p, hp, hyp, hshort⟩ :=
    prime_of_local_power_and_psi hyR (hlocal y hyR) (hψ y hyR) (hψ _ hz)
  have hypN : y < p := by exact_mod_cast hyp
  refine ⟨p, hp, hypN, ?_⟩
  have hcast : ((4095 * (p - y) : ℕ) : ℝ) ≤ (y : ℝ) := by
    simpa only [Nat.cast_mul, Nat.cast_ofNat, Nat.cast_sub hypN.le] using hshort
  exact_mod_cast hcast

/-- Conditional use of the original finite interface; no acceptance claim. -/
theorem gap_10M_of_supplies_and_initial
    (hlocal : LocalPowerIncrement) (hψ : PsiSupply)
    (hinitial : InitialSegment) :
    B699TailGap.Gap 4095 10000000 := by
  intro y hy
  by_cases ht : y < 122568684
  · exact hinitial y hy ht
  · have hT : 122568684 ≤ y := Nat.le_of_not_gt ht
    have hyA : 100000000 ≤ y := (by norm_num : 100000000 ≤ 122568684).trans hT
    exact gap_100M_of_supplies hlocal hψ y hyA

end B699UniformGapPaper20261005

#print axioms B699UniformGapPaper20261005.coefficient_margin
#print axioms B699UniformGapPaper20261005.prime_of_local_power_and_psi
#print axioms B699UniformGapPaper20261005.gap_100M_of_supplies
#print axioms B699UniformGapPaper20261005.gap_10M_of_supplies_and_initial
