import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.distance.HarmonicSum

/-! One actual integer auxiliary expression at either of two positions.
Its local cubic and global square divisibility directly supply the complete
rough fifth-power divisor of their product. -/
namespace B686Harmonic
open Finset Polynomial B686Target B686Formalization
set_option maxHeartbeats 2400000

noncomputable def pairAuxiliary (k n m i j : ℕ) : ℤ :=
  (harmonicRatio k i).den*distanceContact n m i*distanceContact n m j-
    4*((j : ℤ)-i)*(harmonicRatio k i).num*(m-n : ℕ)^2

lemma contact_difference (n m i j : ℕ) :
    distanceContact n m j=distanceContact n m i+3*((j : ℤ)-i) := by
  unfold distanceContact
  push_cast
  ring

lemma original_pair_auxiliary_cubic (k n m i j p : ℕ) (hk : 3≤k)
    (hsep : n+k≤m) (heq : product k m=4*product k n) (hi : i∈Icc 1 k)
    (hp : p.Prime) (hpk : k<p) (hpd : p∣m-n) (hpz : p∣n+i) :
    p^(padicValNat p (m-n)*3)∣(pairAuxiliary k n m i j).natAbs := by
  let q : ℤ := (p : ℤ)^padicValNat p (m-n)
  have hc := original_harmonic_cubic_contact k n m i p hk hsep heq hi hp hpk hpd hpz
  have hc' : q^3∣3*(harmonicRatio k i).den*distanceContact n m i-
      4*(harmonicRatio k i).num*(m-n : ℕ)^2 := by
    simpa only [q,←pow_mul,Nat.mul_comm _ 3] using hc
  have hs := (distance_rough_contact k n m i p hk hsep heq hi hp hpk hpd hpz).2
  have hsZ : q^2∣distanceContact n m i := by
    rw [←Int.natCast_dvd] at hs
    exact_mod_cast hs
  have hsquare : q^3∣distanceContact n m i^2 :=
    (pow_dvd_pow q (by omega : 3≤2*2)).trans (by simpa only [←pow_mul] using pow_dvd_pow_of_dvd hsZ 2)
  have hsum := (dvd_mul_of_dvd_right hsquare ((harmonicRatio k i).den : ℤ)).add
    (dvd_mul_of_dvd_right hc' ((j : ℤ)-i))
  have hid : pairAuxiliary k n m i j=
      (harmonicRatio k i).den*distanceContact n m i^2+
        ((j : ℤ)-i)*(3*(harmonicRatio k i).den*distanceContact n m i-
          4*(harmonicRatio k i).num*(m-n : ℕ)^2) := by
    unfold pairAuxiliary
    rw [contact_difference n m i j]
    ring
  rw [←hid] at hsum
  rw [←Int.natCast_dvd]
  simpa only [Nat.cast_pow,pow_mul,q] using hsum

lemma original_pair_auxiliary_square (k n m i j p : ℕ) (hk : 3≤k)
    (hsep : n+k≤m) (heq : product k m=4*product k n)
    (hi : i∈Icc 1 k) (hj : j∈Icc 1 k)
    (hp : p.Prime) (hpk : k<p) (hpd : p∣m-n) (hpz : p∣n+i ∨ p∣n+j) :
    p^(padicValNat p (m-n)*2)∣(pairAuxiliary k n m i j).natAbs := by
  let q : ℤ := (p : ℤ)^padicValNat p (m-n)
  have hfirst : q^2∣distanceContact n m i*distanceContact n m j := by
    rcases hpz with h | h
    · have hs := (distance_rough_contact k n m i p hk hsep heq hi hp hpk hpd h).2
      rw [←Int.natCast_dvd] at hs
      have hh : q^2∣distanceContact n m i := by exact_mod_cast hs
      exact dvd_mul_of_dvd_left hh _
    · have hs := (distance_rough_contact k n m j p hk hsep heq hj hp hpk hpd h).2
      rw [←Int.natCast_dvd] at hs
      have hh : q^2∣distanceContact n m j := by exact_mod_cast hs
      exact dvd_mul_of_dvd_right hh _
  have hd : q∣((m-n : ℕ) : ℤ) := by
    dsimp [q]
    exact_mod_cast (pow_padicValNat_dvd (p:=p) (n:=m-n))
  have hdsq := pow_dvd_pow_of_dvd hd 2
  have hsum := (dvd_mul_of_dvd_right hfirst ((harmonicRatio k i).den : ℤ)).sub
    (dvd_mul_of_dvd_right hdsq (4*((j : ℤ)-i)*(harmonicRatio k i).num))
  have hid : pairAuxiliary k n m i j=
      (harmonicRatio k i).den*(distanceContact n m i*distanceContact n m j)-
        (4*((j : ℤ)-i)*(harmonicRatio k i).num)*(m-n : ℕ)^2 := by
    unfold pairAuxiliary
    ring
  rw [←hid] at hsum
  rw [←Int.natCast_dvd]
  simpa only [Nat.cast_pow,pow_mul,q] using hsum

lemma original_pair_auxiliary_fifth (k n m i j : ℕ) (hk : 3≤k)
    (hsep : n+k≤m) (heq : product k m=4*product k n)
    (hi : i∈Icc 1 k) (hj : j∈Icc 1 k)
    (hsupport : distanceSupportAtMostTwo k n m i j) :
    distanceRoughPart k (m-n)^5∣
      (pairAuxiliary k n m i j).natAbs*(pairAuxiliary k n m j i).natAbs := by
  apply distance_rough_power_dvd
  intro p hp hpd hpk
  have hhit := hsupport p hp hpd hpk
  rcases hhit with h | h
  · have h3 := original_pair_auxiliary_cubic k n m i j p hk hsep heq hi hp hpk hpd h
    have h2 := original_pair_auxiliary_square k n m j i p hk hsep heq hj hi hp hpk hpd (Or.inr h)
    have hm := mul_dvd_mul h3 h2
    rw [←pow_add] at hm
    convert hm using 1 <;> congr 1 <;> omega
  · have h2 := original_pair_auxiliary_square k n m i j p hk hsep heq hi hj hp hpk hpd (Or.inr h)
    have h3 := original_pair_auxiliary_cubic k n m j i p hk hsep heq hj hp hpk hpd h
    have hm := mul_dvd_mul h2 h3
    rw [←pow_add] at hm
    convert hm using 1 <;> congr 1 <;> omega

lemma harmonic_numerator_bound (k i : ℕ) (hk : 2≤k) (hi : i∈Icc 1 k) :
    2*|(harmonicRatio k i).num|≤((harmonicRatio k i).den : ℤ)*k := by
  let H := harmonicRatio k i
  have hh := harmonic_ratio_abs_le_half k i hk hi
  have hd : (0 : ℚ)<H.den := by exact_mod_cast H.den_pos
  have hnum : (H.num : ℚ)=H*H.den := by
    have ht := congrArg (fun x : ℚ=>x*(H.den : ℚ)) (Rat.num_div_den H)
    simpa [hd.ne'] using ht
  have habs : |(H.num : ℚ)|=|H| *H.den := by rw [hnum,abs_mul,abs_of_pos hd]
  have hh' : 2*|(H.num : ℚ)|≤(H.den : ℚ)*k := by
    rw [habs]
    have ht := mul_le_mul_of_nonneg_right hh hd.le
    dsimp [H] at *
    linarith
  exact_mod_cast hh'

/-- info: 'B686Harmonic.original_pair_auxiliary_fifth' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_pair_auxiliary_fifth
end B686Harmonic
