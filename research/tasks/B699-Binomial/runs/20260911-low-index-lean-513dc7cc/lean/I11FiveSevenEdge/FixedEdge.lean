import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11FiveSevenEdge.SelectedEdge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11FiveSevenEdge.SmallCertificates

/-! UNCOMPILED CANDIDATE. Fixed original five-seven actual cofactor edge, retaining only four actual trees, eight finite numerical facts and ordinary windows. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11FiveSevenScaled
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

theorem five_seven_edge_of_fixed_certificates
    (qt : ∀ row : Bool, GrowthTree qLambda (qWeight 11 7 (rowDelta row) (1 / 50))
      (qCore 11 7 (1 / 50)))
    (et : ∀ row : Bool, GrowthTree eLambda (eWeight 11 7 (rowDelta row) (1 / 50))
      (eCore 11 7 (1 / 50)))
    (hAbase : (48 : ℚ) < qRate qBase ^ 194)
    (hprevious : fiveSevenZ ^ (fiveSevenM - 1) ≤ 4 * fiveSevenY0)
    (hrateP : 5 ^ 22000 ≤ fiveSevenZ ^ 648)
    (hbaseP : (5 ^ 22000) ^ fiveSevenM ≤ fiveSevenY0 ^ 648)
    (hlookP : 4 ^ 648 * (5 ^ 22000) ^ (fiveSevenM + 1) ≤ fiveSevenZ ^ (648 * fiveSevenM))
    (hrateQ : 7 ^ 22000 ≤ fiveSevenZ ^ 784)
    (hbaseQ : (7 ^ 22000) ^ fiveSevenM ≤ fiveSevenY0 ^ 784)
    (hlookQ : 4 ^ 784 * (7 ^ 22000) ^ (fiveSevenM + 1) ≤ fiveSevenZ ^ (784 * fiveSevenM))
    (Y e f A C : ℕ) (hY : fiveSevenY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 5 ^ e * A) (hwindowQ : Y ≤ 7 ^ f * C)
    (hupperQ : 7 ^ f * C ≤ 2 * Y)
    (hgap : |(5 : ℤ) ^ e * (A : ℤ) - (7 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 352 ≤ A ^ 1000 ∨ Y ^ 216 ≤ C ^ 1000 := by
  obtain ⟨hQ, hE⟩ := standard_bounds_from_fixed_trees qt et
    fixed_initial_q_cap fixed_initial_e_cap
  exact edge_of_actual_growth qBase eBase
    fixed_bases_pos.2.2.1 fixed_bases_pos.2.2.2 hQ hE
    fixed_qRate_ge_one hAbase fixed_wRate_ge_Z
    hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
    Y e f A C hY hC hwindowP hwindowQ hupperQ hgap

end Math.B699.I11FiveSevenScaled
