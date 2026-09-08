import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.distance.CentralPair

/-! Full central-adjacent distance-support consumer. The coarse cube divides
one actual integer auxiliary expression directly, avoiding extra grouping
certificates. Source: adopted cofactor-structure-and-pell.md §6.1. -/
namespace B686Formalization
open Finset B686Target
set_option maxHeartbeats 2400000

def centralAuxiliary (r n m : ℕ) : ℤ :=
  r*distanceContact n m r*distanceContact n m (r+1)-4*(m-n : ℕ)^2

lemma central_auxiliary_rough_cube (r n m p : ℕ) (hr : 2≤r)
    (hsep : n+2*r≤m) (heq : product (2*r) m=4*product (2*r) n)
    (hp : p.Prime) (hpk : 2*r<p) (hpd : p∣m-n)
    (hhit : p∣n+r ∨ p∣n+(r+1)) :
    p^(padicValNat p (m-n)*3)∣(centralAuxiliary r n m).natAbs := by
  let q : ℤ := (p : ℤ)^padicValNat p (m-n)
  let d : ℤ := (m-n : ℕ)
  have hd : q∣d := by dsimp [q,d]; exact_mod_cast (pow_padicValNat_dvd (p:=p) (n:=m-n))
  have hcop : IsCoprime q (centralKernel (r-1) 0) :=
    central_kernel_coprime (r-1) p _ hp (by omega)
  have hprod := original_central_products r n m (by omega) hsep heq
  have hpow (R : ℤ) (hR : q^2∣R) : q^3∣R^2 :=
    (pow_dvd_pow q (by omega : 3≤2*2)).trans (by simpa only [←pow_mul] using pow_dvd_pow_of_dvd hR 2)
  have hG : q^3∣centralAuxiliary r n m := by
    rcases hhit with hh | hh
    · obtain ⟨hz,hR⟩ := distance_rough_contact (2*r) n m r p (by omega) hsep heq
        (by simp only [mem_Icc]; omega) hp hpk hpd hh
      have hzZ : q∣(n+r : ℤ) := by dsimp [q]; exact_mod_cast hz
      have hRZ : q^2∣distanceContact n m r := by
        rw [←Int.natCast_dvd] at hR
        exact_mod_cast hR
      have hR' : q^2∣3*(n+r : ℤ)-d := by simpa [distanceContact,d] using hRZ
      have hlocal := central_cubic_contact (r-1) (n+r) d q r hzZ hd hR' hcop hprod.1
      have hsum := (dvd_mul_of_dvd_right (hpow _ hRZ) (r : ℤ)).sub hlocal
      have hid : centralAuxiliary r n m=
          r*distanceContact n m r^2-(4*d^2-3*r*(3*(n+r : ℤ)-d)) := by
        unfold centralAuxiliary distanceContact d
        push_cast
        ring
      rw [hid]
      exact hsum
    · obtain ⟨hz,hR⟩ := distance_rough_contact (2*r) n m (r+1) p (by omega) hsep heq
        (by simp only [mem_Icc]; omega) hp hpk hpd hh
      have hzZ : q∣(n+r+1 : ℤ) := by
        dsimp [q]
        exact_mod_cast (show p^padicValNat p (m-n)∣n+r+1 by simpa [add_assoc] using hz)
      have hRZ : q^2∣distanceContact n m (r+1) := by
        rw [←Int.natCast_dvd] at hR
        exact_mod_cast hR
      have hR' : q^2∣3*(n+r+1 : ℤ)-d := by simpa [distanceContact,d,Nat.cast_add,add_assoc] using hRZ
      have heq' :
          (n+r+1+d : ℤ)*(n+r+1+d+ -(r : ℤ))*centralKernel (r-1) (n+r+1+d)=
            4*((n+r+1 : ℤ)*(n+r+1+ -(r : ℤ))*centralKernel (r-1) (n+r+1)) := by
        simpa [sub_eq_add_neg] using hprod.2
      have hlocal := central_cubic_contact (r-1) (n+r+1) d q (-(r : ℤ)) hzZ hd hR' hcop heq'
      have hsum := (dvd_mul_of_dvd_right (hpow _ hRZ) (r : ℤ)).sub hlocal
      have hid : centralAuxiliary r n m=
          r*distanceContact n m (r+1)^2-(4*d^2-3*(-(r : ℤ))*(3*(n+r+1 : ℤ)-d)) := by
        unfold centralAuxiliary distanceContact d
        push_cast
        ring
      rw [hid]
      exact hsum
  rw [←Int.natCast_dvd]
  simpa only [Nat.cast_pow,pow_mul,q] using hG

lemma central_auxiliary_bounds (r n m : ℕ) (hr : 2≤r)
    (hsep : n+2*r≤m) (heq : product (2*r) m=4*product (2*r) n) :
    0<centralAuxiliary r n m ∧
      centralAuxiliary r n m<8*(2*r : ℤ)^3*(m-n : ℕ)^2 := by
  let d : ℤ := (m-n : ℕ)
  let R : ℤ := distanceContact n m r
  let T : ℤ := distanceContact n m (r+1)
  have hd : 0<d := by dsimp [d]; exact_mod_cast (by omega : 0<m-n)
  have hrZ : (2 : ℤ)≤r := by exact_mod_cast hr
  have hwR := distance_contact_window (2*r) n m r (by omega) hsep heq (by simp only [mem_Icc]; omega)
  have hwT := distance_contact_window (2*r) n m (r+1) (by omega) hsep heq (by simp only [mem_Icc]; omega)
  have hsize := B686Size.size_bounds_nat (2*r) n m (by omega) hsep heq
  have hnd : m-n<n := by
    have hmul := Nat.mul_le_mul_right (m-n) (show 4≤2*r by omega)
    have hnm : n+(m-n)=m := by omega
    nlinarith [hsize.1]
  have hnZ : d<(n : ℤ) := by dsimp [d]; exact_mod_cast hnd
  have hR : 2*d<R := by dsimp [R,distanceContact]; push_cast; linarith
  have hT : 2*d<T := by dsimp [T,distanceContact]; push_cast; linarith
  have hRT : (2*d)*(2*d)<R*T := mul_lt_mul hR hT.le (by positivity) (by linarith)
  have hmul : 2*(R*T)≤(r : ℤ)*(R*T) := mul_le_mul_of_nonneg_right hrZ (mul_nonneg hwR.1.le hwT.1.le)
  have huR : R<4*(2*r : ℤ)*d := by simpa [R,d] using hwR.2
  have huT : T<4*(2*r : ℤ)*d := by simpa [T,d] using hwT.2
  have huRT : R*T<(4*(2*r : ℤ)*d)^2 := by
    have := mul_lt_mul huR huT.le (by dsimp [T]; linarith [hwT.1]) (by positivity)
    nlinarith only [this]
  have hu := mul_lt_mul_of_pos_left huRT (by omega : (0 : ℤ)<r)
  change 0<(r : ℤ)*R*T-4*d^2 ∧ (r : ℤ)*R*T-4*d^2<8*(2*r : ℤ)^3*d^2
  constructor <;> nlinarith only [hRT,hmul,hu,sq_nonneg d]

/-- Complete original-equation consumer, for every even length 2r≥4. -/
theorem original_central_distance_support_bounds (r n m : ℕ) (hr : 2≤r)
    (hsep : n+2*r≤m) (heq : product (2*r) m=4*product (2*r) n)
    (hsupport : distanceSupportAtMostTwo (2*r) n m r (r+1)) :
    let A := distanceSmoothPart (2*r) (m-n)
    m-n<8*A^3*(2*r)^3 ∧ 3*m<32*A^3*(2*r)^4 := by
  let d := m-n
  let A := distanceSmoothPart (2*r) d
  let D := distanceRoughPart (2*r) d
  have hd : 0<d := by dsimp [d]; omega
  have hA := distance_smooth_pos (2*r) d
  have hfactor : A*D=d := distance_smooth_rough_product (2*r) d hd.ne'
  have hdiv : D^3∣(centralAuxiliary r n m).natAbs := by
    apply distance_rough_power_dvd
    intro p hp hpd hpk
    exact central_auxiliary_rough_cube r n m p hr hsep heq hp hpk hpd (hsupport p hp hpd hpk)
  have hb := central_auxiliary_bounds r n m hr hsep heq
  have hG : (centralAuxiliary r n m).natAbs<8*(2*r)^3*d^2 := by
    have hcast := Int.natAbs_of_nonneg hb.1.le
    have ht : ((centralAuxiliary r n m).natAbs : ℤ)<8*(2*r : ℤ)^3*(m-n : ℕ)^2 := by
      rw [hcast]
      exact hb.2
    exact_mod_cast ht
  have hcube : D^3<8*(2*r)^3*d^2 :=
    (Nat.le_of_dvd (Int.natAbs_pos.mpr hb.1.ne') hdiv).trans_lt hG
  have hdcube : d^3<(8*A^3*(2*r)^3)*d^2 := by
    calc
      d^3=A^3*D^3 := by rw [←hfactor]; ring
      _ < A^3*(8*(2*r)^3*d^2) := Nat.mul_lt_mul_of_pos_left hcube (pow_pos hA _)
      _ = _ := by ring
  have hdb : d<8*A^3*(2*r)^3 := by
    apply (Nat.mul_lt_mul_right (pow_pos hd 2)).mp
    convert hdcube using 1 <;> ring
  have hsize := (B686Size.size_bounds_nat (2*r) n m (by omega) hsep heq).2
  have hm := Nat.mul_lt_mul_of_pos_left hdb (by omega : 0<4*(2*r))
  change d<8*A^3*(2*r)^3 ∧ 3*m<32*A^3*(2*r)^4
  exact ⟨hdb,by nlinarith only [hsize,hm]⟩

/-- info: 'B686Formalization.original_central_distance_support_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_central_distance_support_bounds
end B686Formalization
