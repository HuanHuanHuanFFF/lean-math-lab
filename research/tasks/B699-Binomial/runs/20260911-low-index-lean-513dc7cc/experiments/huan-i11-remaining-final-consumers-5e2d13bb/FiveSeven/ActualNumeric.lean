import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-remaining-final-consumers-5e2d13bb».FiveSeven.RateBasis
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-remaining-growth-numeric-5e2d13bb».row04.selector.candidate.lean.I11Numeric.I11FiveSevenSelector
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-five-seven-scaled-edge-5e2d13bb».FixedEdge

/-! UNCOMPILED CANDIDATE. Actual rate plus seven officially re-frozen selector statements; And.intro bundle then alias-only normalization. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11FiveSevenFinalConsumers
open Math.B699.I11FiveSevenScaled
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.ElementaryFactorialBound

theorem actual_rate_eq_rational : qRate qBase = rateRational := by
  norm_num [qRate, qNumerator, qDenominator, contentBase, qBase, beta, qLambda,
    rateRational, rateNumerator, rateDenominator]

theorem actual_rate_pow194_gt_48 : (48 : ℚ) < qRate qBase ^ 194 := by
  rw [actual_rate_eq_rational]
  exact rateRational_pow194_gt_48

theorem actual_numeric_certificates :
    (48 : ℚ) < qRate qBase ^ 194 ∧
    fiveSevenZ ^ (fiveSevenM - 1) ≤ 4 * fiveSevenY0 ∧
    (5 : ℕ) ^ 22000 ≤ fiveSevenZ ^ 648 ∧
    ((5 : ℕ) ^ 22000) ^ fiveSevenM ≤ fiveSevenY0 ^ 648 ∧
    (4 : ℕ) ^ 648 * (5 ^ 22000) ^ (fiveSevenM + 1) ≤ fiveSevenZ ^ (648 * fiveSevenM) ∧
    (7 : ℕ) ^ 22000 ≤ fiveSevenZ ^ 784 ∧
    ((7 : ℕ) ^ 22000) ^ fiveSevenM ≤ fiveSevenY0 ^ 784 ∧
    (4 : ℕ) ^ 784 * (7 ^ 22000) ^ (fiveSevenM + 1) ≤ fiveSevenZ ^ (784 * fiveSevenM) := by
  have h := And.intro actual_rate_pow194_gt_48
    (And.intro Math.B699.I11FiveSevenNumeric.predecessor
      (And.intro Math.B699.I11FiveSevenNumeric.p_rate
        (And.intro Math.B699.I11FiveSevenNumeric.p_base
          (And.intro Math.B699.I11FiveSevenNumeric.p_lookahead
            (And.intro Math.B699.I11FiveSevenNumeric.q_rate
              (And.intro Math.B699.I11FiveSevenNumeric.q_base
                Math.B699.I11FiveSevenNumeric.q_lookahead))))))
  simpa only [fiveSevenZ, Math.B699.I11FiveSevenNumeric.certificateZ,
    fiveSevenM, fiveSevenY0] using h

theorem five_seven_edge_of_growth_trees
    (qt : ∀ row : Bool, GrowthTree qLambda (qWeight 11 7 (rowDelta row) (1 / 50))
      (qCore 11 7 (1 / 50)))
    (et : ∀ row : Bool, GrowthTree eLambda (eWeight 11 7 (rowDelta row) (1 / 50))
      (eCore 11 7 (1 / 50)))
    (Y e f A C : ℕ) (hY : fiveSevenY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 5 ^ e * A) (hwindowQ : Y ≤ 7 ^ f * C)
    (hupperQ : 7 ^ f * C ≤ 2 * Y)
    (hgap : |(5 : ℤ) ^ e * (A : ℤ) - (7 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 352 ≤ A ^ 1000 ∨ Y ^ 216 ≤ C ^ 1000 := by
  obtain ⟨hA, hprevious, hrateP, hbaseP, hlookP, hrateQ, hbaseQ, hlookQ⟩ :=
    actual_numeric_certificates
  exact five_seven_edge_of_fixed_certificates qt et hA
    hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
    Y e f A C hY hC hwindowP hwindowQ hupperQ hgap

end Math.B699.I11FiveSevenFinalConsumers
