import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.RawHeight
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.counts.Count0192
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000
namespace B699MiddleExtension
theorem raw_height_200 : B699Middle.RawHeightValid 200 66 140 20000000 46 := by
  decide +kernel
theorem height_200 : B699Middle.HeightValid 200 66 140 20000000 :=
  B699Middle.heightValid_of_raw (i := 200) (r := 66) (s := 140) (N := 20000000) (t := 46)
    B699Middle.Counts.count_200 raw_height_200
theorem tail_200 {n j : ℕ} (hij : 200 < j) (hjn : j ≤ n / 2) (hNn : 20000000 ≤ n) :
    ∃ p : ℕ, p.Prime ∧ 200 ≤ p ∧ p ∣ Nat.gcd (n.choose 200) (n.choose j) :=
  B699Middle.common_of_valid_height (i := 200) (r := 66) (s := 140) (N := 20000000) height_200 hij hjn hNn
end B699MiddleExtension
#print axioms B699MiddleExtension.raw_height_200
#print axioms B699MiddleExtension.tail_200
