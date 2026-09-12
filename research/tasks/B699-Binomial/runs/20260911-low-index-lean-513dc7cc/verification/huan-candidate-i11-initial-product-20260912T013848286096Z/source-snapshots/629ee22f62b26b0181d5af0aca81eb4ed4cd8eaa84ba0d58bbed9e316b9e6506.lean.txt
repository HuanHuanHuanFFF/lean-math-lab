import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Numeric.Selector
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Numeric.RatioPower
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Scaled.FixedEdge

/-! UNCOMPILED CANDIDATE. Bind the numeric constants to the actual fixed
Padé rate and discharge all eight numeric arguments of FixedEdge. Only the
actual two-delta GrowthTrees remain as explicit final inputs; their source
certificates are frozen but not asserted accepted by this module. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11FiveThreeNumeric
open Math.B699.I11ActualPadeEdge Math.B699.I11ScaledBounds
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.ElementaryFactorialBound

theorem actual_Z_eq_certificate : fiveThreeZ = certificateZ := rfl

theorem actual_a3_eq_rational : qRate qBase = a3Rational := by
  norm_num [qRate, qNumerator, qDenominator, contentBase, qBase, beta, qLambda,
    a3Rational, a3Numerator, a3Denominator]

theorem actual_a3_pow213_gt_48 : (48 : ℚ) < qRate qBase ^ 213 := by
  rw [actual_a3_eq_rational]
  exact a3Rational_pow213_gt_48

/-- Eight exact statements in the literal types expected by frozen FixedEdge. -/
theorem actual_numeric_certificates :
    (48 : ℚ) < qRate qBase ^ 213 ∧
    fiveThreeZ ^ (fiveThreeM - 1) ≤ 4 * fiveThreeY0 ∧
    (5 : ℕ) ^ 20000 ≤ fiveThreeZ ^ 646 ∧
    ((5 : ℕ) ^ 20000) ^ fiveThreeM ≤ fiveThreeY0 ^ 646 ∧
    (4 : ℕ) ^ 646 * (5 ^ 20000) ^ (fiveThreeM + 1) ≤ fiveThreeZ ^ (646 * fiveThreeM) ∧
    (3 : ℕ) ^ 35000 ≤ fiveThreeZ ^ 772 ∧
    ((3 : ℕ) ^ 35000) ^ fiveThreeM ≤ fiveThreeY0 ^ 772 ∧
    (4 : ℕ) ^ 772 * (3 ^ 35000) ^ (fiveThreeM + 1) ≤ fiveThreeZ ^ (772 * fiveThreeM) := by
  have h := And.intro actual_a3_pow213_gt_48
    (And.intro predecessor
      (And.intro p_rate
        (And.intro p_base
          (And.intro p_lookahead
            (And.intro q_rate (And.intro q_base q_lookahead))))))
  simpa only [fiveThreeZ, certificateZ, fiveThreeM, fiveThreeY0] using h

theorem five_three_edge_of_growth_trees
    (qt : ∀ row : Bool, GrowthTree qLambda (qWeight 5 3 (rowDelta row) (1 / 4375))
      (qCore 5 3 (1 / 4375)))
    (et : ∀ row : Bool, GrowthTree eLambda (eWeight 5 3 (rowDelta row) (1 / 4375))
      (eCore 5 3 (1 / 4375)))
    (Y e f A C : ℕ) (hY : fiveThreeY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 5 ^ e * A) (hwindowQ : Y ≤ 3 ^ f * C)
    (hupperQ : 3 ^ f * C ≤ 2 * Y)
    (hgap : |(5 : ℤ) ^ e * (A : ℤ) - (3 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 354 ≤ A ^ 1000 ∨ Y ^ 228 ≤ C ^ 1000 := by
  obtain ⟨hA, hprevious, hrateP, hbaseP, hlookP, hrateQ, hbaseQ, hlookQ⟩ :=
    actual_numeric_certificates
  exact five_three_edge_of_fixed_certificates qt et hA
    hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
    Y e f A C hY hC hwindowP hwindowQ hupperQ hgap

end Math.B699.I11FiveThreeNumeric
#print axioms Math.B699.I11FiveThreeNumeric.actual_Z_eq_certificate
#print axioms Math.B699.I11FiveThreeNumeric.actual_a3_eq_rational
#print axioms Math.B699.I11FiveThreeNumeric.actual_a3_pow213_gt_48
#print axioms Math.B699.I11FiveThreeNumeric.actual_numeric_certificates
#print axioms Math.B699.I11FiveThreeNumeric.five_three_edge_of_growth_trees
