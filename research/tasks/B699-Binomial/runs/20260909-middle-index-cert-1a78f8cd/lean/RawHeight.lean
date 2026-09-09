import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.HeightRows
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.SmallPrimeCount

set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699Middle
open B699LowIndex B699LargePrimeStructure

/-- Separates the actual count theorem from the integer arithmetic certificate. -/
def RawHeightValid (i r s N t : ℕ) : Prop :=
  2 ≤ i ∧ s < i ∧ i ≤ N ∧
  t * (2 * s - r) + windowDegree i r s ≤ i * (2 * s - r) ∧
  i.factorial ^ (2 * s - r) * N ^ (t * (2 * s - r) + windowDegree i r s) <
    windowConstant i r s * N.descFactorial i ^ (2 * s - r)

instance (i r s N t : ℕ) : Decidable (RawHeightValid i r s N t) := by
  unfold RawHeightValid
  infer_instance

theorem heightValid_of_raw {i r s N t : ℕ}
    (hcount : smallPrimeCount i = t) (hraw : RawHeightValid i r s N t) :
    HeightValid i r s N := by
  unfold HeightValid heightExponent
  rw [hcount]
  exact hraw

theorem smallPrimeCount_step_checked {i t : ℕ} {b : Bool}
    (hi : smallPrimeCount i = t) (hb : trialPrimeCheck i = b) :
    smallPrimeCount (i + 1) = t + if b then 1 else 0 := by
  rw [← fastSmallPrimeCount_eq, fastSmallPrimeCount, fastSmallPrimeCount_eq, hi, hb]

end B699Middle
#print axioms B699Middle.heightValid_of_raw
#print axioms B699Middle.smallPrimeCount_step_checked
