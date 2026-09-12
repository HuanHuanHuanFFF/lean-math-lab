import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Compress.PairDispatch
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Cubic.ActualCubic

/-!
# Conditional compression of actual i11 counterexamples to n < 2^109

UNCOMPILED CANDIDATE. The initial height and all six actual finite checker
premises remain explicit. Neither is asserted as an established original
result merely by this assembly. The n < 2^98 branch is retained separately.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.I11CubicCompression

open Math.B699.CubicBlockCover B699LargePrimeStructure
open B699LowIndex.I11CubicBridge

/-- Once the initial height and six finite certificates are supplied, the actual
original counterexample lies below 2^109. All legal n,j remain quantified. -/
theorem actual_i11_below_109_of_six_pair_checks (data : SixPairRows)
    (check23 : pairCheck 2 3 10 45 15359 68 ((2 : ℕ) ^ 15360) data.rows23 = true)
    (check25 : pairCheck 2 5 10 44 15359 66 ((2 : ℕ) ^ 15360) data.rows25 = true)
    (check27 : pairCheck 2 7 10 43 15359 65 ((2 : ℕ) ^ 15360) data.rows27 = true)
    (check35 : pairCheck 3 5 10 32 9691 75 ((2 : ℕ) ^ 15360) data.rows35 = true)
    (check37 : pairCheck 3 7 10 32 9691 75 ((2 : ℕ) ^ 15360) data.rows37 = true)
    (check57 : pairCheck 5 7 10 32 6615 109 ((2 : ℕ) ^ 15360) data.rows57 = true)
    {n j : ℕ} (hij : 11 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 11 j)
    (hnH : n < (2 : ℕ) ^ 15360) : n < (2 : ℕ) ^ 109 := by
  by_cases hlow : n < (2 : ℕ) ^ 98
  · exact hlow.trans_le (Nat.pow_le_pow_right (by decide : 0 < 2)
      (by decide : 98 ≤ 109))
  · have hhigh : (2 : ℕ) ^ 98 ≤ n := by omega
    obtain ⟨p, q, h, k, r, s, A, C, _hpPrime, _hqPrime, hpMem, hqMem, hpq,
      _hpFactor, _hqFactor, _hpPositive, _hqPositive, hr, hs, hA, hC, hP, hQ,
      hsmallA, hsmallC, _hdist⟩ := actual_i11_cubic_bridge hhigh hij hjn hno
    exact distinct_pair_below_109 data check23 check25 check27 check35 check37 check57
      hpMem hqMem hpq hnH (by omega) (by omega) hA hC hP hQ hsmallA hsmallC

end Math.B699.I11CubicCompression
