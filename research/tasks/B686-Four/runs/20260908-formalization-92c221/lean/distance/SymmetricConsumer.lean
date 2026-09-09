import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.distance.PairBounds
import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.distance.HarmonicDenominator

/-! Complete arbitrary symmetric-gap consumer, with both the reduced
harmonic denominator bound and the explicit fixed-gap exponents. -/
namespace B686Harmonic
open Finset B686Target B686Formalization
set_option maxHeartbeats 2400000

lemma pair_auxiliary_reflection (k n m i j : ℕ) (hi : i∈Icc 1 k) (hj : j∈Icc 1 k)
    (hsym : i+j=k+1) : pairAuxiliary k n m j i=pairAuxiliary k n m i j := by
  unfold pairAuxiliary
  rw [harmonic_ratio_reflection k i j hi hj hsym,Rat.neg_num,Rat.neg_den]
  ring

lemma original_symmetric_auxiliary_cube (k n m i j : ℕ) (hk : 3≤k)
    (hsep : n+k≤m) (heq : product k m=4*product k n)
    (hi : i∈Icc 1 k) (hj : j∈Icc 1 k) (hsym : i+j=k+1)
    (hsupport : distanceSupportAtMostTwo k n m i j) :
    distanceRoughPart k (m-n)^3∣(pairAuxiliary k n m i j).natAbs := by
  apply distance_rough_power_dvd
  intro p hp hpd hpk
  rcases hsupport p hp hpd hpk with h | h
  · exact original_pair_auxiliary_cubic k n m i j p hk hsep heq hi hp hpk hpd h
  · have ht := original_pair_auxiliary_cubic k n m j i p hk hsep heq hj hp hpk hpd h
    rwa [pair_auxiliary_reflection k n m i j hi hj hsym] at ht

lemma original_symmetric_auxiliary_bounds (k n m i j : ℕ) (hk : 40≤k)
    (hsep : n+k≤m) (heq : product k m=4*product k n)
    (hi : i∈Icc 1 k) (hj : j∈Icc 1 k) (hsym : i+j=k+1) (hij : i<j) :
    0<pairAuxiliary k n m i j ∧
      pairAuxiliary k n m i j<16*(harmonicRatio k i).den*(k : ℤ)^2*(m-n : ℕ)^2 := by
  refine ⟨(original_pair_auxiliary_bounds k n m i j hk hsep heq hi hj).1,?_⟩
  have hiw := distance_contact_window k n m i (by omega) hsep heq hi
  have hjw := distance_contact_window k n m j (by omega) hsep heq hj
  have hq : (0 : ℤ)<(harmonicRatio k i).den := by exact_mod_cast (harmonicRatio k i).den_pos
  have hp : 0≤(harmonicRatio k i).num := Rat.num_nonneg.mpr
    (harmonic_ratio_pos_of_reflection k i j hi hj hsym hij).le
  have hgap : (0 : ℤ)≤(j : ℤ)-i := by omega
  have ht := mul_lt_mul hiw.2 hjw.2.le hjw.1 (by positivity : (0 : ℤ)≤4*k*(m-n : ℕ))
  have hRT : distanceContact n m i*distanceContact n m j<16*(k : ℤ)^2*(m-n : ℕ)^2 := by
    nlinarith only [ht]
  have hu := mul_lt_mul_of_pos_left hRT hq
  have hc : 0≤4*((j : ℤ)-i)*(harmonicRatio k i).num*(m-n : ℕ)^2 := by positivity
  unfold pairAuxiliary
  nlinarith only [hu,hc]

/-- Every symmetric pair, both length parities, at the paper's full k≥40
range. h=j-i is positive, and all factor parts are actual original data. -/
theorem original_symmetric_two_position_bounds (k n m i j : ℕ) (hk : 40≤k)
    (hsep : n+k≤m) (heq : product k m=4*product k n)
    (hi : i∈Icc 1 k) (hj : j∈Icc 1 k) (hij : i<j) (hsym : i+j=k+1)
    (hsupport : distanceSupportAtMostTwo k n m i j) :
    let A := distanceSmoothPart k (m-n)
    let q := (harmonicRatio k i).den
    let h := j-i
    (m-n<16*q*A^3*k^2 ∧ 3*m<64*q*A^3*k^3) ∧
      (m-n<16*A^3*k^(h+2) ∧ 3*m<64*A^3*k^(h+3)) := by
  let d := m-n
  let A := distanceSmoothPart k d
  let D := distanceRoughPart k d
  let q := (harmonicRatio k i).den
  let h := j-i
  let G := (pairAuxiliary k n m i j).natAbs
  have hd : 0<d := by dsimp [d]; omega
  have hA := distance_smooth_pos k d
  have hfactor : A*D=d := distance_smooth_rough_product k d hd.ne'
  have hb := original_symmetric_auxiliary_bounds k n m i j hk hsep heq hi hj hsym hij
  have hG : 0<G := Int.natAbs_pos.mpr hb.1.ne'
  have hGu : G<16*q*k^2*d^2 := by
    have hc := Int.natAbs_of_nonneg hb.1.le
    have ht : ((pairAuxiliary k n m i j).natAbs : ℤ)<
        16*(harmonicRatio k i).den*(k : ℤ)^2*(m-n : ℕ)^2 := by rw [hc]; exact hb.2
    exact_mod_cast ht
  have hdiv : D^3∣G := original_symmetric_auxiliary_cube k n m i j (by omega) hsep heq hi hj hsym hsupport
  have hcube : D^3<16*q*k^2*d^2 := (Nat.le_of_dvd hG hdiv).trans_lt hGu
  have hd3 : d^3<(16*q*A^3*k^2)*d^2 := by
    calc
      d^3=A^3*D^3 := by rw [←hfactor]; ring
      _ < A^3*(16*q*k^2*d^2) := Nat.mul_lt_mul_of_pos_left hcube (pow_pos hA _)
      _ = _ := by ring
  have hdb : d<16*q*A^3*k^2 := by
    apply (Nat.mul_lt_mul_right (pow_pos hd 2)).mp
    convert hd3 using 1 <;> ring
  have hsize := (B686Size.size_bounds_nat k n m (by omega) hsep heq).2
  have hm := Nat.mul_lt_mul_of_pos_left hdb (by omega : 0<4*k)
  have hmb : 3*m<64*q*A^3*k^3 := by nlinarith only [hsize,hm]
  have hq : q≤k^h := by
    have ht := harmonic_denominator_bound k i hi
    rwa [position_offset_of_reflection k i j hi hj hsym hij] at ht
  have hdp : 16*q*A^3*k^2≤16*A^3*k^(h+2) := by
    calc
      _ = (16*A^3*k^2)*q := by ring
      _ ≤ (16*A^3*k^2)*k^h := Nat.mul_le_mul_left _ hq
      _ = _ := by rw [pow_add]; ring
  have hmp : 64*q*A^3*k^3≤64*A^3*k^(h+3) := by
    calc
      _ = (64*A^3*k^3)*q := by ring
      _ ≤ (64*A^3*k^3)*k^h := Nat.mul_le_mul_left _ hq
      _ = _ := by rw [pow_add]; ring
  exact ⟨⟨hdb,hmb⟩,⟨hdb.trans_le hdp,hmb.trans_le hmp⟩⟩

/-- Complete generic center-distance height consumer, supplementing the
324/432 bounds with the exact denominator estimates used by the paper. -/
theorem original_general_center_band_height (k n m i j : ℕ) (hk : 40≤k)
    (hsep : n+k≤m) (heq : product k m=4*product k n)
    (hi : i∈Icc 1 k) (hj : j∈Icc 1 k) (hij : i<j)
    (hsupport : distanceSupportAtMostTwo k n m i j) :
    let A := distanceSmoothPart k (m-n)
    (harmonicRatio k i).den≤k^positionOffset k i ∧
    (harmonicRatio k j).den≤k^positionOffset k j ∧
      m<432*A^5*k^(positionOffset k i+positionOffset k j+5) := by
  have hiq := harmonic_denominator_bound k i hi
  have hjq := harmonic_denominator_bound k j hj
  have hm := (original_general_two_position_bounds k n m i j hk hsep heq hi hj hij hsupport).2
  refine ⟨hiq,hjq,hm.trans_le ?_⟩
  let A := distanceSmoothPart k (m-n)
  have hmule := Nat.mul_le_mul hiq hjq
  calc
    _ = (432*A^5*k^5)*((harmonicRatio k i).den*(harmonicRatio k j).den) := by ring
    _ ≤ (432*A^5*k^5)*(k^positionOffset k i*k^positionOffset k j) := Nat.mul_le_mul_left _ hmule
    _ = _ := by rw [pow_add,pow_add]; ring

/-- info: 'B686Harmonic.original_symmetric_two_position_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_symmetric_two_position_bounds
/-- info: 'B686Harmonic.original_general_center_band_height' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_general_center_band_height
end B686Harmonic
