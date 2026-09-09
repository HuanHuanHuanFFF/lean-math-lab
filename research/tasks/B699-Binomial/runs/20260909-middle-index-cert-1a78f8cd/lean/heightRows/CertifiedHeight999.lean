import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.counts.Count0960
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.heightRows.RawHeight999
set_option maxRecDepth 65536
set_option maxHeartbeats 0
namespace B699Middle
theorem height_999_certified : HeightValid 999 333 699 2000000 :=
  heightValid_of_raw (i := 999) (r := 333) (s := 699) (N := 2000000) (t := 168)
    Counts.count_999 raw_height_999
theorem tail_999_certified {n j : ℕ} (hij : 999 < j) (hjn : j ≤ n / 2) (hNn : 2000000 ≤ n) :
    ∃ p : ℕ, p.Prime ∧ 999 ≤ p ∧ p ∣ Nat.gcd (n.choose 999) (n.choose j) :=
  common_of_valid_height (i := 999) (r := 333) (s := 699) (N := 2000000)
    height_999_certified hij hjn hNn
end B699Middle
#print axioms B699Middle.height_999_certified
#print axioms B699Middle.tail_999_certified
