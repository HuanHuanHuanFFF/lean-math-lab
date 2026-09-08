import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.distance.PairAuxiliary

/-! Positivity and height of the two auxiliary integers, and the original
arbitrary two-position cofactor bound. -/
namespace B686Harmonic
open Finset B686Target B686Formalization
set_option maxHeartbeats 2400000

lemma auxiliary_numeric_bounds (k d R T q p h : ℤ) (hk : 40≤k) (hd : 0<d)
    (hR : 0<R) (hT : 0<T) (hq : 0<q)
    (hRl : (3*k-8)*d<2*R) (hTl : (3*k-8)*d<2*T)
    (hRu : R<4*k*d) (hTu : T<4*k*d)
    (hnum : 2*|p|≤q*k) (hgap : |h|≤k-1) :
    0<q*R*T-4*h*p*d^2 ∧ q*R*T-4*h*p*d^2<18*q*k^2*d^2 := by
  have hd2 : 0<d^2 := pow_pos hd _
  have hbase : 0<(3*k-8)*d := mul_pos (by omega) hd
  have hRT := mul_lt_mul hRl hTl.le hbase (by linarith : 0≤2*R)
  have hkpoly : 8*k*(k-1)<(3*k-8)^2 := by
    have hz : 0≤k*(k-40) := mul_nonneg (by omega) (by omega)
    nlinarith only [hz]
  have hpoly := mul_lt_mul_of_pos_right hkpoly hd2
  have hlow : 2*k*(k-1)*d^2<R*T := by nlinarith only [hRT,hpoly]
  have huRT := mul_lt_mul hRu hTu.le hT (by positivity : 0≤4*k*d)
  have hu : R*T<16*k^2*d^2 := by nlinarith only [huRT]
  have hc0 : 4*|h| *|p|≤2*q*k*(k-1) := by
    have ht := mul_le_mul hgap hnum (by positivity : 0≤2*|p|) (by omega : 0≤k-1)
    nlinarith only [ht]
  have hcorr : |4*h*p*d^2|≤2*q*k*(k-1)*d^2 := by
    rw [abs_mul,abs_mul,abs_mul,abs_of_nonneg (by norm_num : (0 : ℤ)≤4),abs_of_nonneg (sq_nonneg d)]
    exact mul_le_mul_of_nonneg_right hc0 hd2.le
  have hcorr' := abs_le.mp hcorr
  have hqlow := mul_lt_mul_of_pos_left hlow hq
  have hqu := mul_lt_mul_of_pos_left hu hq
  constructor <;> nlinarith only [hcorr'.1,hcorr'.2,hqlow,hqu,mul_pos hq hd2,
    mul_nonneg (show 0≤q*d^2 by positivity) (show 0≤k by omega)]

lemma original_pair_auxiliary_bounds (k n m i j : ℕ) (hk : 40≤k)
    (hsep : n+k≤m) (heq : product k m=4*product k n)
    (hi : i∈Icc 1 k) (hj : j∈Icc 1 k) :
    0<pairAuxiliary k n m i j ∧
      pairAuxiliary k n m i j<18*(harmonicRatio k i).den*(k : ℤ)^2*(m-n : ℕ)^2 := by
  let d : ℤ := (m-n : ℕ)
  have hd : 0<d := by dsimp [d]; exact_mod_cast (by omega : 0<m-n)
  have hi' := mem_Icc.mp hi
  have hj' := mem_Icc.mp hj
  have hsize := B686Size.size_bounds_nat k n m (by omega) hsep heq
  have hsizeZ : (k : ℤ)*d<2*m := by dsimp [d]; exact_mod_cast hsize.1
  have hcast : (n : ℤ)+d=m := by dsimp [d]; exact_mod_cast (show n+(m-n)=m by omega)
  have hlow (a : ℕ) (ha : 1≤a) : (3*(k : ℤ)-8)*d<2*distanceContact n m a := by
    unfold distanceContact
    push_cast
    nlinarith only [hsizeZ,hcast,show (0 : ℤ)<a by exact_mod_cast ha]
  have hiw := distance_contact_window k n m i (by omega) hsep heq hi
  have hjw := distance_contact_window k n m j (by omega) hsep heq hj
  have hq : (0 : ℤ)<(harmonicRatio k i).den := by exact_mod_cast (harmonicRatio k i).den_pos
  have hgap : |(j : ℤ)-i|≤(k : ℤ)-1 := by rw [abs_le]; constructor <;> omega
  exact auxiliary_numeric_bounds k d (distanceContact n m i) (distanceContact n m j)
    (harmonicRatio k i).den (harmonicRatio k i).num ((j : ℤ)-i)
    (by exact_mod_cast hk) hd hiw.1 hjw.1 hq (hlow i hi'.1) (hlow j hj'.1)
    hiw.2 hjw.2 (harmonic_numerator_bound k i (by omega) hi) hgap

/-- Arbitrary two-position distance support, with exactly the paper's
reduced harmonic denominators and all original equation hypotheses. -/
theorem original_general_two_position_bounds (k n m i j : ℕ) (hk : 40≤k)
    (hsep : n+k≤m) (heq : product k m=4*product k n)
    (hi : i∈Icc 1 k) (hj : j∈Icc 1 k) (hij : i<j)
    (hsupport : distanceSupportAtMostTwo k n m i j) :
    let A := distanceSmoothPart k (m-n)
    let qi := (harmonicRatio k i).den
    let qj := (harmonicRatio k j).den
    m-n<324*qi*qj*A^5*k^4 ∧ m<432*qi*qj*A^5*k^5 := by
  let d := m-n
  let A := distanceSmoothPart k d
  let D := distanceRoughPart k d
  let qi := (harmonicRatio k i).den
  let qj := (harmonicRatio k j).den
  let Gi := (pairAuxiliary k n m i j).natAbs
  let Gj := (pairAuxiliary k n m j i).natAbs
  have hd : 0<d := by dsimp [d]; omega
  have hA := distance_smooth_pos k d
  have hqi : 0<qi := (harmonicRatio k i).den_pos
  have hqj : 0<qj := (harmonicRatio k j).den_pos
  have hfactor : A*D=d := distance_smooth_rough_product k d hd.ne'
  have hbi := original_pair_auxiliary_bounds k n m i j hk hsep heq hi hj
  have hbj := original_pair_auxiliary_bounds k n m j i hk hsep heq hj hi
  have hGi : 0<Gi := Int.natAbs_pos.mpr hbi.1.ne'
  have hGj : 0<Gj := Int.natAbs_pos.mpr hbj.1.ne'
  have hGiupper : Gi<18*qi*k^2*d^2 := by
    have hc := Int.natAbs_of_nonneg hbi.1.le
    have ht : ((pairAuxiliary k n m i j).natAbs : ℤ)<
        18*(harmonicRatio k i).den*(k : ℤ)^2*(m-n : ℕ)^2 := by rw [hc]; exact hbi.2
    exact_mod_cast ht
  have hGjupper : Gj<18*qj*k^2*d^2 := by
    have hc := Int.natAbs_of_nonneg hbj.1.le
    have ht : ((pairAuxiliary k n m j i).natAbs : ℤ)<
        18*(harmonicRatio k j).den*(k : ℤ)^2*(m-n : ℕ)^2 := by rw [hc]; exact hbj.2
    exact_mod_cast ht
  have hdiv : D^5∣Gi*Gj := original_pair_auxiliary_fifth k n m i j (by omega) hsep heq hi hj hsupport
  have hupper : Gi*Gj<324*qi*qj*k^4*d^4 := by
    have ht := mul_lt_mul hGiupper hGjupper.le hGj (by positivity : 0≤18*qi*k^2*d^2)
    nlinarith only [ht]
  have hfifth : D^5<324*qi*qj*k^4*d^4 := (Nat.le_of_dvd (Nat.mul_pos hGi hGj) hdiv).trans_lt hupper
  have hd5 : d^5<(324*qi*qj*A^5*k^4)*d^4 := by
    calc
      d^5=A^5*D^5 := by rw [←hfactor]; ring
      _ < A^5*(324*qi*qj*k^4*d^4) := Nat.mul_lt_mul_of_pos_left hfifth (pow_pos hA _)
      _ = _ := by ring
  have hdb : d<324*qi*qj*A^5*k^4 := by
    apply (Nat.mul_lt_mul_right (pow_pos hd 4)).mp
    convert hd5 using 1 <;> ring
  have hsize := (B686Size.size_bounds_nat k n m (by omega) hsep heq).2
  have hm := Nat.mul_lt_mul_of_pos_left hdb (by omega : 0<4*k)
  change d<324*qi*qj*A^5*k^4 ∧ m<432*qi*qj*A^5*k^5
  exact ⟨hdb,by nlinarith only [hsize,hm]⟩

/-- info: 'B686Harmonic.original_general_two_position_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_general_two_position_bounds
end B686Harmonic
