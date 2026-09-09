import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.RawHeight
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.counts.Count0320
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000
namespace B699MiddleExtension
theorem raw_height_322 : B699Middle.RawHeightValid 322 107 225 20000000 66 := by
  decide +kernel
theorem height_322 : B699Middle.HeightValid 322 107 225 20000000 :=
  B699Middle.heightValid_of_raw (i := 322) (r := 107) (s := 225) (N := 20000000) (t := 66)
    B699Middle.Counts.count_322 raw_height_322
theorem tail_322 {n j : ℕ} (hij : 322 < j) (hjn : j ≤ n / 2) (hNn : 20000000 ≤ n) :
    ∃ p : ℕ, p.Prime ∧ 322 ≤ p ∧ p ∣ Nat.gcd (n.choose 322) (n.choose j) :=
  B699Middle.common_of_valid_height (i := 322) (r := 107) (s := 225) (N := 20000000) height_322 hij hjn hNn
end B699MiddleExtension
#print axioms B699MiddleExtension.raw_height_322
#print axioms B699MiddleExtension.tail_322
