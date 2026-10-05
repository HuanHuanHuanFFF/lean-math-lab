module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-local-power-ninetymin».supply.LocalPowerEndpoint
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-terminal-gap-twohour».gap.ThetaInterval
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.GapDefinitions
public import Lean.Elab.Tactic.NormCast
/-!
RD2 consumers with both genuine local prime-power inputs discharged.
Fixed mathematical source: intake/20261005-uniform-gap-round2-results/
originals/B699-uniform-gap-round2-20261005/PROOF.md §§1, 9–10 and
lean/B699UniformGapRound2.lean. The analytic DifferenceBudget, finite real
psi bridge and initial natural prime supply remain explicit inputs below.
No analytic supply is proved by these consumers.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699LocalPowerRound220261005

def FinitePsiSupply : Prop :=
  ∀ t : ℝ, 122568684 ≤ t → t ≤ 14403516484 →
    |Chebyshev.psi t - t| ≤ (3 / 25000 : ℝ) * t

def DifferenceBudget : Prop :=
  ∀ x : ℝ, 14400000000 ≤ x →
    x / 8192 - 14 * Real.sqrt x - (2001 / 1000000000 : ℝ) * x - 1 ≤
      Chebyshev.psi (x + x / 4095) - Chebyshev.psi x

def InitialSegment : Prop :=
  ∀ y : ℕ, 10000000 ≤ y → y < 122568684 →
    ∃ p : ℕ, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y

theorem coefficient_margin :
    (1 / 8192 : ℝ) - 14 / 120000 - 2001 / 1000000000 -
      1 / 10000000 - 1 / 14400000000 = 475571 / 144000000000 := by norm_num

theorem sqrt_bound {x : ℝ} (hx : 14400000000 ≤ x) :
    Real.sqrt x ≤ x / 120000 := by
  have hx0 : 0 ≤ x := by linarith
  have hs0 : 0 ≤ Real.sqrt x := Real.sqrt_nonneg x
  have hs2 : (Real.sqrt x) ^ 2 = x := Real.sq_sqrt hx0
  have hs : (120000 : ℝ) ≤ Real.sqrt x := by nlinarith
  have hmul : 0 ≤ Real.sqrt x * (Real.sqrt x - 120000) :=
    mul_nonneg hs0 (sub_nonneg.mpr hs)
  nlinarith

theorem theta_tail_of_budget (hbudget : DifferenceBudget)
    {x : ℝ} (hx : 14400000000 ≤ x) :
    Chebyshev.theta x < Chebyshev.theta (x + x / 4095) := by
  have hs := sqrt_bound hx
  have hlocal := B699LocalPowerEndpoint20261005.local_power_increment_tail hx
  have hb := hbudget x hx
  have hone : (1 : ℝ) ≤ x / 14400000000 := by linarith
  have hpos : (0 : ℝ) < x / 400000 := by linarith
  have htheta : x / 400000 ≤
      Chebyshev.theta (x + x / 4095) - Chebyshev.theta x := by linarith
  linarith

theorem theta_bridge_of_finite (hfinite : FinitePsiSupply)
    {x : ℝ} (hx : 122568684 ≤ x) (hB : x < 14400000000) :
    Chebyshev.theta x < Chebyshev.theta (x + x / 4095) := by
  have hxA : (100000000 : ℝ) ≤ x := by linarith
  have hxC : x ≤ (14403516484 : ℝ) := by linarith
  have hzlo : (122568684 : ℝ) ≤ x + x / 4095 := by linarith
  have hzhi : x + x / 4095 ≤ (14403516484 : ℝ) := by linarith
  have hu := (abs_le.mp (hfinite x hx hxC)).2
  have hl := (abs_le.mp (hfinite (x + x / 4095) hzlo hzhi)).1
  have hlocal := B699LocalPowerEndpoint20261005.local_power_increment_small hxA
  linarith

theorem real_prime_from_supplies (hfinite : FinitePsiSupply) (hbudget : DifferenceBudget)
    {x : ℝ} (hx : 122568684 ≤ x) :
    ∃ p : ℕ, p.Prime ∧ x < (p : ℝ) ∧
      (4095 : ℝ) * ((p : ℝ) - x) ≤ x := by
  have htheta : Chebyshev.theta x < Chebyshev.theta (x + x / 4095) := by
    by_cases hB : x < 14400000000
    · exact theta_bridge_of_finite hfinite hx hB
    · exact theta_tail_of_budget hbudget (le_of_not_gt hB)
  obtain ⟨p, hp, hxp, hpz⟩ := B699ThetaSupply.exists_prime_of_theta_lt htheta
  refine ⟨p, hp, hxp, ?_⟩
  linarith

theorem gap_from_supplies (hfinite : FinitePsiSupply) (hbudget : DifferenceBudget)
    (hinitial : InitialSegment) : B699TailGap.Gap 4095 10000000 := by
  intro y hy
  by_cases ht : y < 122568684
  · exact hinitial y hy ht
  · have hyT : 122568684 ≤ y := Nat.le_of_not_gt ht
    have hyR : (122568684 : ℝ) ≤ (y : ℝ) := by exact_mod_cast hyT
    obtain ⟨p, hp, hyp, hshort⟩ := real_prime_from_supplies hfinite hbudget hyR
    have hypN : y < p := by exact_mod_cast hyp
    refine ⟨p, hp, hypN, ?_⟩
    have hcast : ((4095 * (p - y) : ℕ) : ℝ) ≤ (y : ℝ) := by
      simpa only [Nat.cast_mul, Nat.cast_ofNat, Nat.cast_sub hypN.le] using hshort
    exact_mod_cast hcast

end B699LocalPowerRound220261005
#print axioms B699LocalPowerRound220261005.coefficient_margin
#print axioms B699LocalPowerRound220261005.sqrt_bound
#print axioms B699LocalPowerRound220261005.theta_tail_of_budget
#print axioms B699LocalPowerRound220261005.theta_bridge_of_finite
#print axioms B699LocalPowerRound220261005.real_prime_from_supplies
#print axioms B699LocalPowerRound220261005.gap_from_supplies
