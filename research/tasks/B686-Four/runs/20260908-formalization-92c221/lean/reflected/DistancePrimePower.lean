import research.tasks.«B686-Four».runs.«20260908-reflected-sum-9bad0b9».a.ReflectedPrimePower

/-! All-prime distance balance, including primes 2 and 3.
Source: adopted reflected-sum/main/all-prime-power-balance.md and its independent audit.
The high position, unit condition, and nonzero contact are derived from the
original equation, so the final cofactor bounds have no contact certificate input. -/
namespace B686Formalization
open Finset B686Target B686ReflectedA
set_option maxHeartbeats 2400000

def distanceContact (n m i : ℕ) : ℤ := 3*(n+i : ℕ)-(m-n : ℕ)

lemma distance_contact_window (k n m i : ℕ) (hk : 3≤k)
    (hsep : n+k≤m) (heq : product k m=4*product k n) (hi : i∈Icc 1 k) :
    0<distanceContact n m i ∧ distanceContact n m i < 4*k*(m-n : ℕ) := by
  have hsize := B686Size.size_bounds_nat k n m (by omega) hsep heq
  have hi' := mem_Icc.mp hi
  have hdk : 0<m-n := by omega
  have hnm : n+(m-n)=m := by omega
  have hmul := Nat.mul_le_mul_right (m-n) hk
  have hl : m-n<3*(n+i) := by nlinarith
  have hu : 3*(n+i)<4*k*(m-n) := by nlinarith
  have hlZ : ((m-n : ℕ) : ℤ)<3*(n+i : ℕ) := by exact_mod_cast hl
  have huZ : (3 : ℤ)*(n+i : ℕ)<4*k*(m-n : ℕ) := by exact_mod_cast hu
  unfold distanceContact
  constructor <;> linarith

lemma distance_ratio_product (k n m : ℕ) (hsep : n+k≤m)
    (heq : product k m=4*product k n) :
    (∏ i∈Icc 1 k, (1+(m-n : ℕ)/(n+i : ℕ) : ℚ))=4 := by
  have hm : n≤m := by omega
  have hid : (∏ i∈Icc 1 k, (1+(m-n : ℕ)/(n+i : ℕ) : ℚ)) =
      ∏ i∈Icc 1 k, (((m : ℚ)+i)/((n : ℚ)+i)) := by
    apply prod_congr rfl
    intro i hi
    have hi' := (mem_Icc.mp hi).1
    have hz : ((n+i : ℕ) : ℚ)≠0 := by exact_mod_cast (show n+i≠0 by omega)
    rw [Nat.cast_sub hm]
    push_cast at hz ⊢
    field_simp
    ring
  rw [hid, B686Size.ratio_product_cast, heq]
  have hp : (product k n : ℚ)≠0 := by exact_mod_cast (product_pos k n).ne'
  push_cast
  field_simp

lemma distance_ratio_sub_one_valuation (d z p : ℕ) (hp : p.Prime)
    (hd : d≠0) (hz : z≠0) :
    padicValRat p ((1+(d : ℚ)/z)-1)=(padicValNat p d : ℤ)-padicValNat p z := by
  have : Fact p.Prime := ⟨hp⟩
  have hdQ : (d : ℚ)≠0 := by exact_mod_cast hd
  have hzQ : (z : ℚ)≠0 := by exact_mod_cast hz
  rw [add_sub_cancel_left, padicValRat.div hdQ hzQ, padicValRat.of_nat, padicValRat.of_nat]

lemma distance_high_contact_data (k n m p L : ℕ) (hp : p.Prime)
    (hk : 3≤k) (hsep : n+k≤m) (heq : product k m=4*product k n)
    (hL : k<p^(L+1))
    (hhigh : (L : ℤ)+padicValRat p (4-1 : ℚ)<padicValNat p (m-n)) :
    ∃ i∈Icc 1 k,
      (padicValNat p (n+i) : ℤ)=padicValNat p (m-n)-padicValRat p (4-1 : ℚ) ∧
      0<distanceContact n m i ∧
      (2 : ℤ)*padicValNat p (m-n)-padicValRat p (4-1 : ℚ)-L+padicValNat p 4 ≤
        padicValInt p (distanceContact n m i) := by
  have : Fact p.Prime := ⟨hp⟩
  let d := m-n
  let a := padicValNat p d
  let f : ℕ → ℚ := fun j => 1+(d : ℚ)/(n+j : ℕ)
  have hd : d≠0 := by dsimp [d]; omega
  have hdQ : (d : ℚ)≠0 := by exact_mod_cast hd
  have he0 : 0≤padicValRat p (4-1 : ℚ) := by
    have h3 : padicValRat p (3 : ℚ)=(padicValNat p 3 : ℤ) := padicValRat.of_nat
    norm_num only at *
    rw [h3]
    exact Int.natCast_nonneg _
  have hH : (0 : ℤ)<a-L := by dsimp [a,d]; omega
  have hex : ∃i∈Icc 1 k, L<padicValNat p (n+i) := by
    by_contra! hnot
    have hprod := valGE_prod_sub_one (p:=p) hH (Icc 1 k) f (by
      intro i hi
      apply Or.inr
      have hz : n+i≠0 := by have := (mem_Icc.mp hi).1; omega
      dsimp [f]
      rw [distance_ratio_sub_one_valuation d (n+i) p hp hd hz]
      have hb := hnot i hi
      dsimp [a]
      omega)
    have hprodEq : (∏i∈Icc 1 k,f i)=4 := distance_ratio_product k n m hsep heq
    rw [hprodEq] at hprod
    have hval := hprod.resolve_left (by norm_num)
    dsimp [a,d] at hval
    omega
  obtain ⟨i,hi,hvi⟩ := hex
  have hz : n+i≠0 := by have := (mem_Icc.mp hi).1; omega
  have hzQ : ((n+i : ℕ) : ℚ)≠0 := by exact_mod_cast hz
  let U : ℚ := ∏j∈(Icc 1 k).erase i, f j
  have hnear : ValGE p ((a : ℤ)-L) (U-1) := by
    apply valGE_prod_sub_one hH
    intro j hj
    obtain ⟨hji,hj⟩ := mem_erase.mp hj
    have hb : padicValNat p (n+j)≤L := by
      by_contra! hb
      exact hji (unique_high_position k n p L j i hp hL hj hi hb hvi)
    have hzj : n+j≠0 := by have := (mem_Icc.mp hj).1; omega
    apply Or.inr
    dsimp [f]
    rw [distance_ratio_sub_one_valuation d (n+j) p hp hd hzj]
    dsimp [a]
    omega
  obtain ⟨hU0,hUv⟩ := valGE_near_one_unit hH hnear
  have hprod : f i*U=4 := by
    dsimp [U]
    rw [mul_prod_erase _ _ hi]
    exact distance_ratio_product k n m hsep heq
  have hdiff : 4-U=((d : ℚ)/(n+i : ℕ))*U := by
    dsimp [f] at hprod
    nlinarith only [hprod]
  have hd0 : 4-U≠0 := by rw [hdiff]; exact mul_ne_zero (div_ne_zero hdQ hzQ) hU0
  have hdv : padicValRat p (4-U)=padicValRat p (4-1 : ℚ) := by
    rw [show 4-U=-(U-4) by ring,padicValRat.neg]
    apply valuation_sub_of_near_one (by norm_num) hnear (by dsimp [a,d]; omega)
    intro h
    apply hd0
    linarith
  have hb : (padicValNat p (n+i) : ℤ)=a-padicValRat p (4-1 : ℚ) := by
    rw [hdiff,padicValRat.mul (div_ne_zero hdQ hzQ) hU0,
      padicValRat.div hdQ hzQ,padicValRat.of_nat,padicValRat.of_nat,hUv] at hdv
    change (a : ℤ)-padicValNat p (n+i)+0=padicValRat p (4-1 : ℚ) at hdv
    omega
  have hRpos := (distance_contact_window k n m i hk hsep heq hi).1
  have hR0 := ne_of_gt hRpos
  have hRQ0 : ((distanceContact n m i : ℤ) : ℚ)≠0 := by exact_mod_cast hR0
  have hcontact : ((distanceContact n m i : ℤ) : ℚ)*U=4*(n+i : ℕ)*(U-1) := by
    have ht := congrArg (fun x : ℚ => x*(n+i : ℕ)) hdiff
    field_simp at ht
    dsimp [distanceContact]
    push_cast
    dsimp [d] at ht
    push_cast at ht
    nlinarith only [ht]
  have hUm0 : U-1≠0 := by
    intro hu
    rw [hu,mul_zero] at hcontact
    exact (mul_ne_zero hRQ0 hU0) hcontact
  have hUml := hnear.resolve_left hUm0
  have hv := congrArg (padicValRat p) hcontact
  rw [padicValRat.mul hRQ0 hU0,
    padicValRat.mul (mul_ne_zero (by norm_num) hzQ) hUm0,
    padicValRat.mul (by norm_num) hzQ,hUv,padicValRat.of_int,
    padicValRat.of_nat] at hv
  have hp4 : padicValRat p (4 : ℚ)=(padicValNat p 4 : ℤ) := padicValRat.of_nat
  rw [hp4] at hv
  exact ⟨i,hi,hb,hRpos,by dsimp [a,d] at *; omega⟩

/-- info: 'B686Formalization.distance_high_contact_data' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms distance_high_contact_data

lemma distance_coefficient_valuation (p : ℕ) :
    padicValRat p (4-1 : ℚ)=(padicValNat p 3 : ℤ) := by
  norm_num only
  exact padicValRat.of_nat

lemma distance_high_contact_sharp (k n m p : ℕ) (hp : p.Prime)
    (hk : 3≤k) (hsep : n+k≤m) (heq : product k m=4*product k n)
    (hhigh : Nat.log p k+padicValNat p 3<padicValNat p (m-n)) :
    ∃i∈Icc 1 k,
      0<(distanceContact n m i).natAbs ∧
      p^(2*padicValNat p (m-n)-padicValNat p 3-Nat.log p k+padicValNat p 4) ∣
        (distanceContact n m i).natAbs := by
  have : Fact p.Prime := ⟨hp⟩
  have hh : (Nat.log p k : ℤ)+padicValRat p (4-1 : ℚ)<padicValNat p (m-n) := by
    rw [distance_coefficient_valuation]
    exact_mod_cast hhigh
  obtain ⟨i,hi,_,hpos,hbound⟩ := distance_high_contact_data k n m p (Nat.log p k)
    hp hk hsep heq (Nat.lt_pow_succ_log_self hp.one_lt k) hh
  rw [distance_coefficient_valuation] at hbound
  have hdiv : (p : ℤ)^(2*padicValNat p (m-n)-padicValNat p 3-Nat.log p k+
      padicValNat p 4) ∣ distanceContact n m i :=
    (padicValInt_dvd_iff _ _).mpr (Or.inr (by omega))
  refine ⟨i,hi,Int.natAbs_pos.mpr (ne_of_gt hpos),?_⟩
  rw [← Int.natCast_dvd]
  simpa only [Nat.cast_pow] using hdiv

/-- The squared complete prime-power part of the distance is bounded for
all primes. A prime not dividing the distance has exponent zero. -/
theorem original_distance_prime_power_bound (k n m p : ℕ) (hp : p.Prime)
    (hk : 3≤k) (hsep : n+k≤m) (heq : product k m=4*product k n) :
    (p^padicValNat p (m-n))^2 < 12*k^2*(m-n) := by
  have : Fact p.Prime := ⟨hp⟩
  let d := m-n
  let a := padicValNat p d
  let e := padicValNat p 3
  let L := Nat.log p k
  have hd : 0<d := by dsimp [d]; omega
  have he : p^e≤3 := Nat.le_of_dvd (by decide) pow_padicValNat_dvd
  have hL : p^L≤k := Nat.pow_log_le_self p (by omega)
  by_cases hhigh : L+e<a
  · obtain ⟨i,hi,hpos,hdiv⟩ := distance_high_contact_sharp k n m p hp hk hsep heq hhigh
    have hle : p^(2*a-e-L+padicValNat p 4)≤(distanceContact n m i).natAbs :=
      Nat.le_of_dvd hpos hdiv
    have hp2 : (p^a)^2≤p^(e+L)*p^(2*a-e-L+padicValNat p 4) := by
      rw [←pow_mul,←pow_add]
      apply Nat.pow_le_pow_right hp.pos
      omega
    have hcoeff : p^(e+L)≤3*k := by rw [pow_add]; exact Nat.mul_le_mul he hL
    have hbound : (p^a)^2≤3*k*(distanceContact n m i).natAbs :=
      hp2.trans (Nat.mul_le_mul hcoeff hle)
    have hw := distance_contact_window k n m i hk hsep heq hi
    have hcast : ((distanceContact n m i).natAbs : ℤ)=distanceContact n m i :=
      Int.natAbs_of_nonneg hw.1.le
    have hupper : (distanceContact n m i).natAbs<4*k*d := by
      have ht : ((distanceContact n m i).natAbs : ℤ)<4*k*(m-n : ℕ) := by rw [hcast]; exact hw.2
      exact_mod_cast ht
    have ht := Nat.mul_lt_mul_of_pos_left hupper (by omega : 0<3*k)
    change (p^a)^2<12*k^2*d
    nlinarith only [hbound,ht]
  · have hpow : p^a≤k*3 := by
      calc
        _ ≤ p^(L+e) := Nat.pow_le_pow_right hp.pos (by omega)
        _ = p^L*p^e := pow_add _ _ _
        _ ≤ k*3 := Nat.mul_le_mul hL he
    have hsq := Nat.pow_le_pow_left hpow 2
    have hkd : 0<k^2*d := Nat.mul_pos (pow_pos (by omega) _) hd
    have hmul := Nat.mul_le_mul_left (12*k^2) (show 1≤d by omega)
    change (p^a)^2<12*k^2*d
    nlinarith

/-- Direct quotient consumer of the distance balance. All mathematical
inputs are the original product equation and its domain conditions. -/
theorem original_distance_quotient_bounds (k n m p : ℕ) (hp : p.Prime)
    (hk : 3≤k) (hsep : n+k≤m) (heq : product k m=4*product k n) :
    let B := (m-n)/p^padicValNat p (m-n)
    m-n<12*B^2*k^2 ∧ m<16*B^2*k^3 := by
  let d := m-n
  let a := padicValNat p d
  let B := d/p^a
  have hd : 0<d := by dsimp [d]; omega
  have hfactor : d=B*p^a := (Nat.div_mul_cancel pow_padicValNat_dvd).symm
  have hB : 0<B := by
    by_contra h
    have hb : B=0 := Nat.eq_zero_of_not_pos h
    rw [hb,zero_mul] at hfactor
    omega
  have hbalance := original_distance_prime_power_bound k n m p hp hk hsep heq
  have hsquare : d^2<(12*B^2*k^2)*d := by
    calc
      d^2=B^2*(p^a)^2 := by rw [hfactor]; ring
      _ < B^2*(12*k^2*d) := Nat.mul_lt_mul_of_pos_left hbalance (pow_pos hB _)
      _ = _ := by ring
  have hdb : d<12*B^2*k^2 := by
    rw [pow_two] at hsquare
    exact Nat.lt_of_mul_lt_mul_right hsquare
  have hsize := (B686Size.size_bounds_nat k n m (by omega) hsep heq).2
  have hmul := Nat.mul_lt_mul_of_pos_left hdb (by omega : 0<4*k)
  change d<12*B^2*k^2 ∧ m<16*B^2*k^3
  refine ⟨hdb,?_⟩
  change 3*m<4*k*d at hsize
  nlinarith only [hsize,hmul]

/-- info: 'B686Formalization.original_distance_prime_power_bound' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_distance_prime_power_bound
/-- info: 'B686Formalization.original_distance_quotient_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_distance_quotient_bounds
end B686Formalization
