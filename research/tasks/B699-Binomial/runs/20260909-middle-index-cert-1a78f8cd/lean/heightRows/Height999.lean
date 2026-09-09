import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.HeightRows
set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000
namespace B699Middle
theorem height_999 : HeightValid 999 333 699 2000000 := by
  decide +kernel
theorem tail_999 {n j : ℕ} (hij : 999 < j) (hjn : j ≤ n / 2) (hNn : 2000000 ≤ n) :
    ∃ p : ℕ, p.Prime ∧ 999 ≤ p ∧ p ∣ Nat.gcd (n.choose 999) (n.choose j) :=
  common_of_valid_height height_999 hij hjn hNn
end B699Middle
#print axioms B699Middle.height_999
#print axioms B699Middle.tail_999
