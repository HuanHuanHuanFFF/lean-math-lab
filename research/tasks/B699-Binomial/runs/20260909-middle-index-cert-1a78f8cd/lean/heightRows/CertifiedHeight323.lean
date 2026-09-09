import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.counts.Count0320
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.heightRows.RawHeight323
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace B699Middle
theorem height_323_certified : HeightValid 323 107 226 2000000 :=
  heightValid_of_raw (i := 323) (r := 107) (s := 226) (N := 2000000) (t := 66)
    Counts.count_323 raw_height_323
theorem tail_323_certified {n j : ℕ} (hij : 323 < j) (hjn : j ≤ n / 2) (hNn : 2000000 ≤ n) :
    ∃ p : ℕ, p.Prime ∧ 323 ≤ p ∧ p ∣ Nat.gcd (n.choose 323) (n.choose j) :=
  common_of_valid_height (i := 323) (r := 107) (s := 226) (N := 2000000)
    height_323_certified hij hjn hNn
end B699Middle
#print axioms B699Middle.height_323_certified
#print axioms B699Middle.tail_323_certified
