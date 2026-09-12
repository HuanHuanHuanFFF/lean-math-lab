import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-seven-two-scaled-edge-5e2d13bb».SelectedEdge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-seven-two-scaled-edge-5e2d13bb».SmallCertificates

/-! UNCOMPILED CANDIDATE. Fixed seven-two cofactor edge: four actual trees plus eight explicit numerical certificates and ordinary windows. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11SevenTwoScaled
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

theorem seven_two_edge_of_fixed_certificates
    (qt : ∀ row : Bool, GrowthTree qLambda (qWeight 9 5 (rowDelta row) (1 / 49))
      (qCore 9 5 (1 / 49)))
    (et : ∀ row : Bool, GrowthTree eLambda (eWeight 9 5 (rowDelta row) (1 / 49))
      (eCore 9 5 (1 / 49)))
    (hAbase : (48 : ℚ) < qRate qBase ^ 285)
    (hprevious : sevenTwoZ ^ (sevenTwoM - 1) ≤ 4 * sevenTwoY0)
    (hrateP : 7 ^ 18000 ≤ sevenTwoZ ^ 940)
    (hbaseP : (7 ^ 18000) ^ sevenTwoM ≤ sevenTwoY0 ^ 940)
    (hlookP : 4 ^ 940 * (7 ^ 18000) ^ (sevenTwoM + 1) ≤ sevenTwoZ ^ (940 * sevenTwoM))
    (hrateQ : 2 ^ 36000 ≤ sevenTwoZ ^ 670)
    (hbaseQ : (2 ^ 36000) ^ sevenTwoM ≤ sevenTwoY0 ^ 670)
    (hlookQ : 4 ^ 670 * (2 ^ 36000) ^ (sevenTwoM + 1) ≤ sevenTwoZ ^ (670 * sevenTwoM))
    (Y e f A C : ℕ) (hY : sevenTwoY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 7 ^ e * A) (hwindowQ : Y ≤ 2 ^ f * C)
    (hupperQ : 2 ^ f * C ≤ 2 * Y)
    (hgap : |(7 : ℤ) ^ e * (A : ℤ) - (2 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 60 ≤ A ^ 1000 ∨ Y ^ 330 ≤ C ^ 1000 := by
  obtain ⟨hQ, hE⟩ := standard_bounds_from_fixed_trees qt et
    fixed_initial_q_cap fixed_initial_e_cap
  exact edge_of_actual_growth qBase eBase
    fixed_bases_pos.2.2.1 fixed_bases_pos.2.2.2 hQ hE
    fixed_qRate_ge_one hAbase fixed_wRate_ge_Z
    hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
    Y e f A C hY hC hwindowP hwindowQ hupperQ hgap

end Math.B699.I11SevenTwoScaled
