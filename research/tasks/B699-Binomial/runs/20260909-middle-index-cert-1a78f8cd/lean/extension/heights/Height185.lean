import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.RawHeight
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.counts.Count0128
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000
namespace B699MiddleExtension
theorem raw_height_185 : B699Middle.RawHeightValid 185 61 129 20000000 42 := by
  decide +kernel
theorem height_185 : B699Middle.HeightValid 185 61 129 20000000 :=
  B699Middle.heightValid_of_raw (i := 185) (r := 61) (s := 129) (N := 20000000) (t := 42)
    B699Middle.Counts.count_185 raw_height_185
theorem tail_185 {n j : ℕ} (hij : 185 < j) (hjn : j ≤ n / 2) (hNn : 20000000 ≤ n) :
    ∃ p : ℕ, p.Prime ∧ 185 ≤ p ∧ p ∣ Nat.gcd (n.choose 185) (n.choose j) :=
  B699Middle.common_of_valid_height (i := 185) (r := 61) (s := 129) (N := 20000000) height_185 hij hjn hNn
end B699MiddleExtension
#print axioms B699MiddleExtension.raw_height_185
#print axioms B699MiddleExtension.tail_185
