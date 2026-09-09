import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.HeightCertificate

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699Middle
open B699LowIndex

/-- Exactly the integer obligations consumed by the accepted height theorem. -/
def HeightValid (i r s N : ℕ) : Prop :=
  2 ≤ i ∧ s < i ∧ i ≤ N ∧
  heightExponent i r s ≤ i * (2 * s - r) ∧
  i.factorial ^ (2 * s - r) * N ^ heightExponent i r s <
    windowConstant i r s * N.descFactorial i ^ (2 * s - r)

instance (i r s N : ℕ) : Decidable (HeightValid i r s N) := by
  unfold HeightValid
  infer_instance

theorem common_of_valid_height {i r s N n j : ℕ}
    (hv : HeightValid i r s N) (hij : i < j) (hjn : j ≤ n / 2)
    (hNn : N ≤ n) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  rcases hv with ⟨hi, hsi, hiN, hd, hc⟩
  exact common_of_height_certificate hi hij hjn hsi hiN hNn hd hc
end B699Middle
#print axioms B699Middle.common_of_valid_height
