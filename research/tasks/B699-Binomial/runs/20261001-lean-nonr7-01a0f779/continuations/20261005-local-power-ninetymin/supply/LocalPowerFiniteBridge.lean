module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-local-power-ninetymin».supply.LocalPowerRound2
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699LocalPowerBridge20261005

/-- A direct finite prime-gap bridge; no finite real psi accuracy is required. -/
def FiniteMiddleGap : Prop :=
  ∀ y : Nat, 122568684 ≤ y → y < 14400000000 →
    ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y

theorem tail_gap_of_budget (hbudget : B699LocalPowerRound220261005.DifferenceBudget) :
    B699TailGap.Gap 4095 14400000000 := by
  intro y hy
  have hyR : (14400000000 : ℝ) ≤ (y : ℝ) := by exact_mod_cast hy
  have htheta := B699LocalPowerRound220261005.theta_tail_of_budget hbudget hyR
  obtain ⟨p, hp, hyp, hpz⟩ := B699ThetaSupply.exists_prime_of_theta_lt htheta
  have hshort : (4095 : ℝ) * ((p : ℝ) - (y : ℝ)) ≤ (y : ℝ) := by linarith
  have hypN : y < p := by exact_mod_cast hyp
  refine ⟨p, hp, hypN, ?_⟩
  have hcast : ((4095 * (p - y) : Nat) : ℝ) ≤ (y : ℝ) := by
    simpa only [Nat.cast_mul, Nat.cast_ofNat, Nat.cast_sub hypN.le] using hshort
  exact_mod_cast hcast

theorem gap_of_middle_and_budget (hmid : FiniteMiddleGap)
    (hbudget : B699LocalPowerRound220261005.DifferenceBudget)
    (hinitial : B699LocalPowerRound220261005.InitialSegment) :
    B699TailGap.Gap 4095 10000000 := by
  intro y hy
  by_cases hT : y < 122568684
  · exact hinitial y hy hT
  · have hyT : 122568684 ≤ y := Nat.le_of_not_gt hT
    by_cases hB : y < 14400000000
    · exact hmid y hyT hB
    · exact tail_gap_of_budget hbudget y (Nat.le_of_not_gt hB)

end B699LocalPowerBridge20261005
#print axioms B699LocalPowerBridge20261005.tail_gap_of_budget
#print axioms B699LocalPowerBridge20261005.gap_of_middle_and_budget
