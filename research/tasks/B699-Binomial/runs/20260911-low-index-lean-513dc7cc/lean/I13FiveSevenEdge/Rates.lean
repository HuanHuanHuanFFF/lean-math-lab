import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13FiveSevenEdge.Parameters

/-! UNCOMPILED. Only small exact rational bases are evaluated. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I13FiveSevenEdge


theorem qRatio_nonneg : 0 ≤ qRatio := by
  have hB := qB_pos
  have hR := rateR_pos
  unfold qRatio
  positivity

theorem eRatio_nonneg : 0 ≤ eRatio := by
  have hB := eB_pos
  have hR := rateR_pos
  unfold eRatio
  positivity

theorem qRatio_le : qRatio ≤ (4 / 5 : ℚ) := by
  norm_num [qRatio, qB, rateR, Math.B699.I11DivisorFiveSeven.infiniteRate,
    Math.B699.I11FiveSevenScaled.qBase, Math.B699.I11FiveSevenScaled.qLambda,
    Math.B699.ElementaryFactorialBound.beta]

theorem eRatio_le : eRatio ≤ (32 / 33 : ℚ) := by
  norm_num [eRatio, indexBase, eB, rateR, Math.B699.I11DivisorFiveSeven.infiniteRate,
    Math.B699.I11FiveSevenScaled.eBase, Math.B699.I11FiveSevenScaled.eLambda,
    Math.B699.ElementaryFactorialBound.beta]

theorem q_coefficient_le : 9 * rateR / 2 ≤ (36 : ℚ) := by
  norm_num [rateR, Math.B699.I11DivisorFiveSeven.infiniteRate]
theorem e_coefficient_le : 3 * rateR / 1600 ≤ (1 / 64 : ℚ) := by
  norm_num [rateR, Math.B699.I11DivisorFiveSeven.infiniteRate]

theorem q_block_small : (4 / 5 : ℚ) ^ 4 ≤ 1 / 2 := by norm_num
theorem e_block_small : (32 / 33 : ℚ) ^ 32 ≤ 1 / 2 := by norm_num
end Math.B699.I13FiveSevenEdge
