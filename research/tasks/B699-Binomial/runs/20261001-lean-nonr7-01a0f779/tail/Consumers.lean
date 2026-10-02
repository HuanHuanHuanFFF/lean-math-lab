import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».tail.NormalizationFromWindows
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».tail.UniformCountTail

/-!
Actual original-problem consumers of the source-connected N and EC proofs.
Only acceptance of this full dependency chain can establish the displayed
infinite family. The remaining i≥4883 / small-ratio region is not hidden.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699TailConsumers

theorem counterexample_height_131072 {n i j : ℕ} (hi : 131072 ≤ i)
    (hij : i < j) (hjn : j ≤ n / 2)
    (hno : ¬ ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j) :
    n < 4096 * i := by
  have hnoG : ¬ B699LargePrimeStructure.Common n i j := by
    rintro ⟨p, hp, hip, hgcd⟩
    exact hno ⟨p, hp, hip, Nat.dvd_of_dvd_gcd_left hgcd, Nat.dvd_of_dvd_gcd_right hgcd⟩
  have hN := B699TailWindows.noCommon_normalized_1000 (by omega) hij hjn hnoG
  exact B699TailUniform.normalized_height_131072 hi hN

/-- Uniform original-target family, with all legal j and no finite upper bound on i or n. -/
theorem common_of_ratio_4096 {n i j : ℕ} (hi : 131072 ≤ i)
    (hij : i < j) (hjn : j ≤ n / 2) (hn : 4096 * i ≤ n) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  by_contra hno
  have hheight := counterexample_height_131072 hi hij hjn hno
  omega

end B699TailConsumers
#check @B699TailConsumers.counterexample_height_131072
#check @B699TailConsumers.common_of_ratio_4096
#print axioms B699TailConsumers.counterexample_height_131072
#print axioms B699TailConsumers.common_of_ratio_4096
