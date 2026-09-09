import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.HeightRows
set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000
namespace B699Middle
theorem height_323 : HeightValid 323 107 226 2000000 := by
  decide +kernel
theorem tail_323 {n j : ℕ} (hij : 323 < j) (hjn : j ≤ n / 2) (hNn : 2000000 ≤ n) :
    ∃ p : ℕ, p.Prime ∧ 323 ≤ p ∧ p ∣ Nat.gcd (n.choose 323) (n.choose j) :=
  common_of_valid_height height_323 hij hjn hNn
end B699Middle
#print axioms B699Middle.height_323
#print axioms B699Middle.tail_323
