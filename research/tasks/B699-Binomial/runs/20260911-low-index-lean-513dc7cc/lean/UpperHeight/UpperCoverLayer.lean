import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.UpperHeight.I11SmallPart
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

/-!
UNCOMPILED CANDIDATE. A new upper-height layer checker uses the actual existing
CoverLayer data, complete powerIntervalList, and pair/good-segment checks.
No registered height, HeightRowValid, or global coverage premise is assumed.
The raw powerIntervalList is complete but is not claimed to be efficient at
the proposed huge H and M; compact CRT certificates remain separate work.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex.UpperHeight

open B699LargePrimeStructure

def UpperLayerArithmeticValid (i r s delta : ℕ) (layer : CoverLayer) : Prop :=
  2 ≤ i ∧
  s < i ∧
  0 < 2 * s - r ∧
  2 ≤ smallPrimeCount i ∧
  0 < layer.M ∧
  layer.M < layer.lower ∧
  i * (i - 1) ≤ layer.lower ∧
  i ≤ layer.lower ∧
  layer.lower < layer.upper ∧
  heightExponent i r s = i * (2 * s - r) + delta ∧
  (2 * i.factorial) ^ (2 * s - r) * layer.upper ^ delta ≤
    windowConstant i r s * layer.M ^ ((2 * s - r) * (smallPrimeCount i - 1))

instance instDecidableUpperLayerArithmeticValid
    (i r s delta : ℕ) (layer : CoverLayer) :
    Decidable (UpperLayerArithmeticValid i r s delta layer) := by
  unfold UpperLayerArithmeticValid
  infer_instance

def upperCoverLayerCheck (i r s delta : ℕ) (goods : List GoodSegment)
    (layer : CoverLayer) : Bool :=
  decide (UpperLayerArithmeticValid i r s delta layer) &&
    pairCoverCheck (activePowerIntervalList i layer.M layer.lower layer.upper)
      (goods.map goodSegmentBounds)

/-- A checked upper-height layer covers every original legal j in every row. -/
theorem upperCoverLayerCheck_sound {i r s delta : ℕ}
    {goods : List GoodSegment} {layer : CoverLayer}
    (hgoods : goods.all (goodSegmentCheck i r s) = true)
    (hcheck : upperCoverLayerCheck i r s delta goods layer = true)
    {n j : ℕ} (hlo : layer.lower ≤ n) (hup : n < layer.upper)
    (hij : i < j) (hjn : j ≤ n / 2) : Common n i j := by
  have hc := hcheck
  simp only [upperCoverLayerCheck, Bool.and_eq_true] at hc
  have hmeta : UpperLayerArithmeticValid i r s delta layer := of_decide_eq_true hc.1
  obtain ⟨hi, hsi, hlambda, hcount, hM, hML, hlarge, hilo, _, hexponent, hcert⟩ := hmeta
  by_contra hno
  have hU := noCommon_small_part_lower_of_upper_certificate
    (r := r) (s := s) (H := layer.upper) (M := layer.M) (delta := delta)
    hi hij hjn hsi hlambda (hlarge.trans hlo) (Nat.le_of_lt hup) hexponent hcert hno
  obtain ⟨I, hI, J, hJ, hcolours, hIlo, hIhi, hJlo, hJhi⟩ :=
    exists_two_colours_in_power_interval_list hi (by omega) hcount (by omega)
      hM (by omega) hU hilo hlo hup
  have hIactive : I ∈ activePowerIntervalList i layer.M layer.lower layer.upper := by
    simp only [activePowerIntervalList, List.mem_filter, decide_eq_true_eq]
    exact ⟨hI, hIlo.trans hIhi⟩
  have hJactive : J ∈ activePowerIntervalList i layer.M layer.lower layer.upper := by
    simp only [activePowerIntervalList, List.mem_filter, decide_eq_true_eq]
    exact ⟨hJ, hJlo.trans hJhi⟩
  obtain ⟨interval, hinterval, hninterval⟩ :=
    pairCoverCheck_sound hc.2 hIactive hJactive hcolours hIlo hIhi hJlo hJhi
  exact hno (checked_goods_cover hi hsi hgoods hij hjn hinterval hninterval)

/-- The i11 arithmetic conditions are sufficient without any impossible registry condition. -/
theorem i11_upperLayerArithmeticValid_of_certificate {layer : CoverLayer}
    (hM : 0 < layer.M) (hML : layer.M < layer.lower)
    (hlarge : 110 ≤ layer.lower) (hinterval : layer.lower < layer.upper)
    (hcertificate : (2 * Nat.factorial 11) ^ 11 * layer.upper ^ 7 ≤
      i11K * layer.M ^ 33) : UpperLayerArithmeticValid 11 3 7 7 layer := by
  have hcount : 2 ≤ smallPrimeCount 11 := by
    rw [i11_smallPrimeCount]
    decide
  have hcert : (2 * Nat.factorial 11) ^ (2 * 7 - 3) * layer.upper ^ 7 ≤
      windowConstant 11 3 7 * layer.M ^ ((2 * 7 - 3) * (smallPrimeCount 11 - 1)) := by
    simpa only [i11_windowConstant, i11_smallPrimeCount] using hcertificate
  exact ⟨by decide, by decide, by decide, hcount, hM, hML, hlarge,
    by omega, hinterval, i11_upper_exponent, hcert⟩

/-- The raw B699 conclusion, including the inclusive p >= 11 boundary. -/
theorem i11_upperCoverLayer_original
    {goods : List GoodSegment} {layer : CoverLayer}
    (hgoods : goods.all (goodSegmentCheck 11 3 7) = true)
    (hcheck : upperCoverLayerCheck 11 3 7 7 goods layer = true)
    {n j : ℕ} (hlo : layer.lower ≤ n) (hup : n < layer.upper)
    (hij : 11 < j) (hjn : j ≤ n / 2) :
    ∃ p : ℕ, p.Prime ∧ 11 ≤ p ∧ p ∣ Nat.choose n 11 ∧ p ∣ Nat.choose n j := by
  obtain ⟨p, hp, hpi, hgcd⟩ := upperCoverLayerCheck_sound hgoods hcheck hlo hup hij hjn
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.UpperHeight

#print axioms B699LowIndex.UpperHeight.UpperLayerArithmeticValid
#print axioms B699LowIndex.UpperHeight.instDecidableUpperLayerArithmeticValid
#print axioms B699LowIndex.UpperHeight.upperCoverLayerCheck
#print axioms B699LowIndex.UpperHeight.upperCoverLayerCheck_sound
#print axioms B699LowIndex.UpperHeight.i11_upperLayerArithmeticValid_of_certificate
#print axioms B699LowIndex.UpperHeight.i11_upperCoverLayer_original
