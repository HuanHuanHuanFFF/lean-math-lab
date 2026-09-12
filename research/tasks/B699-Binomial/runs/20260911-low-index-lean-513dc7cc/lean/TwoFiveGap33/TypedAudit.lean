import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.TwoFiveGap33.Edge

/-! Explicit types for every new public theorem, including both final interfaces. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
open Math.B699.TwoFiveGap33 Math.B699.I11TwoFiveScaled
open Math.B699.I11TwoFiveFinalConsumers

example : (128 : ℚ) ≤ rateRational ^ 224 := rateRational_pow224_ge_128

example : (66 : ℚ) < qRate qBase ^ 329 := actual_rate_pow329_gt_66

example : ∀ (m : ℕ), 329 ≤ m → (66 : ℚ) < qRate qBase ^ m := actual_rate_gt_66

example : ∀ (m e f A C : ℕ) (D : ℤ),
    1 ≤ m → 35 * m ≤ e → 15 * m ≤ f → 1 ≤ C →
    |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ D →
    ∃ row : Bool, (128 : ℤ) ^ (5 * m) ≤
      D * |qRow m row| +
        |rowError m row| * |(5 : ℤ) ^ (f - 15 * m) * (C : ℤ)| :=
  actual_integer_gap_budget

example : ∀ (m : ℕ), 141 ≤ m → ∀ (row : Bool) (BQ : ℚ),
    0 < BQ → |qEval m row| ≤ BQ ^ m → (66 : ℚ) < qRate BQ ^ m →
    2 * (33 * |(qRow m row : ℚ)|) < (128 : ℚ) ^ (5 * m) :=
  actual_q_gap33_twice_lt

example : ∀ (m : ℕ), 141 ≤ m → ∀ (row : Bool) (BQ BE : ℚ),
    0 < BQ → 0 < BE → |qEval m row| ≤ BQ ^ m → |eEval m row| ≤ BE ^ m →
    (66 : ℚ) < qRate BQ ^ m → ∀ (V Nq : ℕ),
    (125 : ℚ) ^ (5 * m) * (V : ℚ) = (Nq : ℚ) →
    2 * (Nq : ℚ) < wRate BE ^ m →
    33 * |qRow m row| + |rowError m row| * (V : ℤ) < (128 : ℤ) ^ (5 * m) :=
  actual_integer_gap33_sum_lt

example : ∀ (Y e f A C : ℕ), (2 : ℕ) ^ 15359 ≤ Y → 1 ≤ C →
    Y ≤ 2 ^ e * A → Y ≤ 5 ^ f * C → 5 ^ f * C ≤ 2 * Y →
    |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 33 →
    Y ^ 248 ≤ A ^ 1000 ∨ Y ^ 252 ≤ C ^ 1000 :=
  actual_two_five_strong_edge

example : ∀ (Y e f A C : ℕ), (2 : ℕ) ^ 15359 ≤ Y → 1 ≤ C →
    Y ≤ 2 ^ e * A → Y ≤ 5 ^ f * C → 5 ^ f * C ≤ 2 * Y →
    |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 33 →
    Y ^ 10 ≤ A ^ 1000 ∨ Y ^ 10 ≤ C ^ 1000 :=
  actual_two_five_weak_edge

#check Math.B699.TwoFiveGap33.actual_two_five_strong_edge
#check Math.B699.TwoFiveGap33.actual_two_five_weak_edge

#print axioms Math.B699.TwoFiveGap33.rateRational_pow224_ge_128
#print axioms Math.B699.TwoFiveGap33.actual_rate_pow329_gt_66
#print axioms Math.B699.TwoFiveGap33.actual_rate_gt_66
#print axioms Math.B699.TwoFiveGap33.actual_integer_gap_budget
#print axioms Math.B699.TwoFiveGap33.actual_q_gap33_twice_lt
#print axioms Math.B699.TwoFiveGap33.actual_integer_gap33_sum_lt
#print axioms Math.B699.TwoFiveGap33.actual_two_five_strong_edge
#print axioms Math.B699.TwoFiveGap33.actual_two_five_weak_edge
