import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.RegisteredHeights
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.CofactorCover
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.PrimePowerEnumeration
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.LargeDivisorWitness
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.IntervalCover

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex
open B699LargePrimeStructure

structure CoverLayer where
  lower : ℕ
  upper : ℕ
  M : ℕ
  deriving DecidableEq, Repr

def CoverLayer.bounds (layer : CoverLayer) : NatInterval :=
  (layer.lower, layer.upper - 1)

structure FiniteCoverRow where
  height : HeightCertificateDatum
  goods : List GoodSegment
  layers : List CoverLayer
  deriving DecidableEq, Repr

def LayerArithmeticValid (height : HeightCertificateDatum) (layer : CoverLayer) : Prop :=
  2 ≤ smallPrimeCount height.i ∧
  0 < layer.M ∧
  layer.M < layer.lower ∧
  height.i * (height.i - 1) ≤ layer.lower ∧
  height.i ≤ layer.lower ∧
  layer.lower < layer.upper ∧
  layer.upper ≤ height.n0 ∧
  (2 * height.i.factorial) ^ (2 * height.s - height.r) ≤
    windowConstant height.i height.r height.s *
      layer.M ^ ((2 * height.s - height.r) * (smallPrimeCount height.i - 1)) *
      layer.lower ^ (height.i * (2 * height.s - height.r) -
        heightExponent height.i height.r height.s)

instance (height : HeightCertificateDatum) (layer : CoverLayer) :
    Decidable (LayerArithmeticValid height layer) := by
  unfold LayerArithmeticValid
  infer_instance

def coverLayerCheck (height : HeightCertificateDatum) (goods : List GoodSegment)
    (layer : CoverLayer) : Bool :=
  decide (LayerArithmeticValid height layer) &&
    pairCoverCheck (powerIntervalList height.i layer.M layer.lower layer.upper)
      (goods.map goodSegmentBounds)

/-- All supplied certificates are executable finite checks. -/
def finiteCoverRowCheck (row : FiniteCoverRow) : Bool :=
  decide (row.height ∈ heightCertificateData) &&
  row.goods.all (goodSegmentCheck row.height.i row.height.r row.height.s) &&
  coverCheck (2 * row.height.i + 2) (row.height.i * (row.height.i - 1) - 1)
    (row.goods.map goodSegmentBounds) &&
  coverCheck (row.height.i * (row.height.i - 1)) (row.height.n0 - 1)
    (row.layers.map CoverLayer.bounds) &&
  row.layers.all (coverLayerCheck row.height row.goods)

theorem checked_goods_cover {i r s : ℕ} {goods : List GoodSegment}
    (hi : 2 ≤ i) (hsi : s < i)
    (hgoods : goods.all (goodSegmentCheck i r s) = true)
    {n j : ℕ} (hij : i < j) (hjn : j ≤ n / 2)
    {I : NatInterval} (hI : I ∈ goods.map goodSegmentBounds) (hIn : intervalMem n I) :
    Common n i j := by
  obtain ⟨g, hg, heq⟩ := List.mem_map.mp hI
  rw [← heq] at hIn
  have hcheck := List.all_eq_true.mp hgoods g hg
  exact goodSegmentCheck_sound hi hsi hcheck hIn.1 hIn.2 hij hjn

/-- One checked layer excludes every genuine counterexample in that layer.
The prime-power list is complete by a theorem, not by a supplied assumption. -/
theorem coverLayerCheck_sound {height : HeightCertificateDatum}
    {goods : List GoodSegment} {layer : CoverLayer}
    (hregistered : height ∈ heightCertificateData)
    (hgoods : goods.all (goodSegmentCheck height.i height.r height.s) = true)
    (hcheck : coverLayerCheck height goods layer = true)
    {n j : ℕ} (hlo : layer.lower ≤ n) (hup : n ≤ layer.upper - 1)
    (hij : height.i < j) (hjn : j ≤ n / 2) : Common n height.i j := by
  have hv := heightCertificateData_valid hregistered
  obtain ⟨hi, _, _, hsi, hlambda, _, hdegree, _⟩ := hv
  have hc := Bool.and_eq_true.mp hcheck
  have hmeta : LayerArithmeticValid height layer := of_decide_eq_true hc.1
  obtain ⟨hcount, hM, hMH, hH, hilo, hinterval, _, hcertificate⟩ := hmeta
  have hupper : n < layer.upper := by omega
  have hexponent : height.i * (2 * height.s - height.r) =
      heightExponent height.i height.r height.s +
        (height.i * (2 * height.s - height.r) -
          heightExponent height.i height.r height.s) :=
    (Nat.add_sub_of_le hdegree).symm
  by_contra hno
  have hU := noCommon_small_part_lower_of_certificate
    (r := height.r) (s := height.s) (H := layer.lower) (M := layer.M)
    hi hij hjn hsi hlambda hH hlo hexponent hcertificate hno
  obtain ⟨I, hI, J, hJ, hcolours, hIlo, hIhi, hJlo, hJhi⟩ :=
    exists_two_colours_in_power_interval_list hi (by omega) hcount (by omega)
      hM (by omega) hU hilo hlo hupper
  obtain ⟨K, hK, hnK⟩ :=
    pairCoverCheck_sound hc.2 hI hJ hcolours hIlo hIhi hJlo hJhi
  exact hno (checked_goods_cover hi hsi hgoods hij hjn hK hnK)

/-- The complete row proof handles the tail, all small legal n, and every
intermediate layer. Its only certificate premise is a computed Boolean. -/
theorem common_of_finite_cover_row_checked {row : FiniteCoverRow}
    (hcheck : finiteCoverRowCheck row = true) {n j : ℕ}
    (hij : row.height.i < j) (hjn : j ≤ n / 2) :
    ∃ p : ℕ, p.Prime ∧ row.height.i ≤ p ∧
      p ∣ Nat.gcd (n.choose row.height.i) (n.choose j) := by
  have hc := hcheck
  simp only [finiteCoverRowCheck, Bool.and_eq_true, decide_eq_true_eq, and_assoc] at hc
  obtain ⟨hregistered, hgoods, hsmall, hlayercover, hlayers⟩ := hc
  have hv := heightCertificateData_valid hregistered
  obtain ⟨hi, _, _, hsi, _, _, _, _⟩ := hv
  by_cases htail : row.height.n0 ≤ n
  · exact common_of_registered_height hregistered hij hjn htail
  by_cases hlow : n < row.height.i * (row.height.i - 1)
  · obtain ⟨I, hI, hIn⟩ :=
      coverCheck_sound (row.goods.map goodSegmentBounds)
        (2 * row.height.i + 2) (row.height.i * (row.height.i - 1) - 1) n
        hsmall (by omega) (by omega)
    exact checked_goods_cover hi hsi hgoods hij hjn hI hIn
  · obtain ⟨I, hI, hIn⟩ :=
      coverCheck_sound (row.layers.map CoverLayer.bounds)
        (row.height.i * (row.height.i - 1)) (row.height.n0 - 1) n
        hlayercover (by omega) (by omega)
    obtain ⟨layer, hLayer, heq⟩ := List.mem_map.mp hI
    rw [← heq] at hIn
    have hLayerCheck := List.all_eq_true.mp hlayers layer hLayer
    exact coverLayerCheck_sound hregistered hgoods hLayerCheck hIn.1 hIn.2 hij hjn

end B699LowIndex

#print axioms B699LowIndex.coverLayerCheck_sound
#print axioms B699LowIndex.common_of_finite_cover_row_checked
