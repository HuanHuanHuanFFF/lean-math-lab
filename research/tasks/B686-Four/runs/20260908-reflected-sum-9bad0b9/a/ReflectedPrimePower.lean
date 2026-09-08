import research.tasks.«B686-Four».runs.«20260908-reflected-sum-9bad0b9».main.ReflectedGeometry
import Mathlib.NumberTheory.Padics.PadicVal.Basic
import Mathlib.Tactic.FieldSimp

/-! All-prime reflected contact. The locked consumer starts from the original
product equation; the valuation/contact is not an assumed certificate.
Research file, A ownership. Paper claims outside compiled declarations are not
asserted as Lean theorems. -/

namespace B686ReflectedA
open Finset B686Target B686Reflected
set_option maxHeartbeats 1500000

/-- Include zero explicitly, because `padicValRat p 0 = 0`. -/
def ValGE (p : ℕ) (h : ℤ) (x : ℚ) : Prop := x = 0 ∨ h ≤ padicValRat p x

variable {p : ℕ} [Fact p.Prime]

theorem valGE_add {h : ℤ} {x y : ℚ} (hx : ValGE p h x) (hy : ValGE p h y) :
    ValGE p h (x+y) := by
  rcases hx with rfl | hx
  · simpa [ValGE] using hy
  rcases hy with rfl | hy
  · exact Or.inr (by simpa using hx)
  by_cases hz : x+y=0
  · exact Or.inl hz
  exact Or.inr (le_trans (le_min hx hy) (padicValRat.min_le_padicValRat_add hz))

theorem valGE_mul {h l : ℤ} {x y : ℚ} (hx : ValGE p h x) (hy : ValGE p l y) :
    ValGE p (h+l) (x*y) := by
  by_cases hx0 : x=0
  · simp [ValGE, hx0]
  by_cases hy0 : y=0
  · simp [ValGE, hy0]
  exact Or.inr (by
    rw [padicValRat.mul hx0 hy0]
    exact add_le_add (hx.resolve_left hx0) (hy.resolve_left hy0))

theorem valGE_near_one_unit {h : ℤ} {x : ℚ} (hh : 0<h)
    (hx : ValGE p h (x-1)) : x≠0 ∧ padicValRat p x=0 := by
  have hx0 : x≠0 := by
    intro he
    subst x
    simp [ValGE] at hx
    omega
  refine ⟨hx0, ?_⟩
  rcases hx with he | hv
  · have he1 : x=1 := by linarith
    simp [he1]
  by_cases he : x-1=0
  · have he1 : x=1 := by linarith
    simp [he1]
  have hlt : padicValRat p (1 : ℚ) < padicValRat p (x-1) := by simp; omega
  have ht := padicValRat.add_eq_of_lt (p := p)
    (show (1 : ℚ)+(x-1)≠0 by simpa using hx0) (by norm_num) he hlt
  simpa using ht

theorem valGE_prod_sub_one {h : ℤ} (hh : 0<h) (s : Finset ℕ) (f : ℕ → ℚ)
    (hf : ∀ i∈s, ValGE p h (f i-1)) : ValGE p h ((∏ i∈s, f i)-1) := by
  induction s using Finset.induction_on with
  | empty => simp [ValGE]
  | @insert i s hi ih =>
    have hfi := hf i (by simp)
    have hs := ih (fun j hj => hf j (by simp [hj]))
    have hui := (valGE_near_one_unit hh hfi).2
    have hm := valGE_mul (Or.inr (le_of_eq hui.symm) : ValGE p 0 (f i)) hs
    have ha := valGE_add (by simpa using hm) hfi
    rw [prod_insert hi]
    convert ha using 1
    ring

def reflectedLambda (k : ℕ) : ℚ := 4*(-1)^k
def reflectedContact (k n m i : ℕ) : ℤ :=
  (reflectedSum k n m : ℤ)+(4*(-1)^k-1)*(n+i : ℕ)

theorem reflectedLambda_ne_zero (k : ℕ) : reflectedLambda k≠0 := by
  unfold reflectedLambda
  exact mul_ne_zero (by norm_num) (pow_ne_zero _ (by norm_num))

theorem reflectedLambda_sub_one_ne_zero (k : ℕ) : reflectedLambda k-1≠0 := by
  rcases neg_one_pow_eq_or ℚ k with h | h <;> norm_num [reflectedLambda, h]

omit [Fact p.Prime] in
theorem reflectedLambda_valuation_nonneg (k : ℕ) :
    0 ≤ padicValRat p (reflectedLambda k-1) := by
  have hid : reflectedLambda k-1 = ((4*(-1 : ℤ)^k-1 : ℤ) : ℚ) := by
    push_cast
    rfl
  rw [hid, padicValRat.of_int]
  exact Int.natCast_nonneg _

theorem signed_reflected_ratio_product (k n m : ℕ)
    (heq : product k m=4*product k n) :
    (∏ i∈Icc 1 k, (1-(reflectedSum k n m : ℚ)/(n+i : ℕ))) =
      reflectedLambda k := by
  have hid : (∏ i∈Icc 1 k, (1-(reflectedSum k n m : ℚ)/(n+i : ℕ))) =
      ∏ i∈Icc 1 k, -(((m+(k+1-i) : ℕ) : ℚ)/(n+i : ℕ)) := by
    apply prod_congr rfl
    intro i hi
    have hi' := mem_Icc.mp hi
    have hz : (n+i : ℕ)≠0 := by omega
    have hs : reflectedSum k n m = (n+i)+(m+(k+1-i)) := by
      unfold reflectedSum
      omega
    rw [hs, Nat.cast_add]
    have hzQ : ((n+i : ℕ) : ℚ)≠0 := by exact_mod_cast hz
    field_simp
    ring
  rw [hid, prod_neg, Nat.card_Icc, Nat.add_sub_cancel, reflected_ratio_product k n m heq]
  unfold reflectedLambda
  ring

theorem reflectedContact_ne_zero (k n m i : ℕ) (hk : 2≤k)
    (hsep : n+k≤m) (heq : product k m=4*product k n) (hi : i∈Icc 1 k) :
    reflectedContact k n m i≠0 := by
  have hw := reflected_position_window k n m i hk hsep heq hi
  have hz : (0 : ℤ)<(n+i : ℕ) := by
    have := (mem_Icc.mp hi).1
    exact_mod_cast (show 0<n+i by omega)
  have hlow : (0 : ℤ)<(reflectedSum k n m : ℕ) := by
    exact_mod_cast (show 0<reflectedSum k n m by omega)
  have hu : (reflectedSum k n m : ℤ)<5*(n+i : ℕ) := by exact_mod_cast hw.2
  unfold reflectedContact
  rcases neg_one_pow_eq_or ℤ k with h | h
  · rw [h]
    norm_num
    linarith
  · rw [h]
    norm_num
    linarith

theorem unique_high_position (k n p L i j : ℕ) (hp : p.Prime)
    (hL : k<p^(L+1)) (hi : i∈Icc 1 k) (hj : j∈Icc 1 k)
    (hvi : L<padicValNat p (n+i)) (hvj : L<padicValNat p (n+j)) : i=j := by
  have : Fact p.Prime := ⟨hp⟩
  have hdi : p^(L+1)∣n+i := (padicValNat_dvd_iff _ _).mpr (Or.inr (by omega))
  have hdj : p^(L+1)∣n+j := (padicValNat_dvd_iff _ _).mpr (Or.inr (by omega))
  have hi' := mem_Icc.mp hi
  have hj' := mem_Icc.mp hj
  rcases lt_trichotomy i j with hij | hij | hij
  · have hd : p^(L+1)∣j-i := by
      have ht := Nat.dvd_sub hdj hdi
      rwa [show n+j-(n+i)=j-i by omega] at ht
    have hb := Nat.le_of_dvd (show 0<j-i by omega) hd
    omega
  · exact hij
  · have hd : p^(L+1)∣i-j := by
      have ht := Nat.dvd_sub hdi hdj
      rwa [show n+i-(n+j)=i-j by omega] at ht
    have hb := Nat.le_of_dvd (show 0 < i - j by omega) hd
    omega

theorem ratio_sub_one_valuation (S z : ℕ) (hS : S≠0) (hz : z≠0) :
    padicValRat p ((1-(S : ℚ)/z)-1) =
      (padicValNat p S : ℤ)-padicValNat p z := by
  have hsQ : (S : ℚ)≠0 := by exact_mod_cast hS
  have hzQ : (z : ℚ)≠0 := by exact_mod_cast hz
  have hid : (1-(S : ℚ)/z)-1 = -((S : ℚ)/z) := by ring
  rw [hid, padicValRat.neg, padicValRat.div hsQ hzQ, padicValRat.of_nat,
    padicValRat.of_nat]

/-- The high position is obtained from the original equation, not assumed. -/
theorem exists_high_position (k n m p L : ℕ) (hp : p.Prime)
    (hk : 2≤k) (hsep : n+k≤m) (heq : product k m=4*product k n)
    (hhigh : (L : ℤ)+padicValRat p (reflectedLambda k-1) <
      padicValNat p (reflectedSum k n m)) :
    ∃ i∈Icc 1 k, L<padicValNat p (n+i) := by
  have : Fact p.Prime := ⟨hp⟩
  let a := padicValNat p (reflectedSum k n m)
  have he0 := reflectedLambda_valuation_nonneg (p := p) k
  have hH : (0 : ℤ)<a-L := by dsimp [a]; omega
  have hS : reflectedSum k n m≠0 := by unfold reflectedSum; omega
  by_contra! hnot
  have hprod := valGE_prod_sub_one (p := p) hH (Icc 1 k)
    (fun i => 1-(reflectedSum k n m : ℚ)/(n+i : ℕ)) (by
      intro i hi
      apply Or.inr
      have hz : n+i≠0 := by have := (mem_Icc.mp hi).1; omega
      rw [ratio_sub_one_valuation _ _ hS hz]
      have hb := hnot i hi
      dsimp [a]
      omega)
  rw [signed_reflected_ratio_product k n m heq] at hprod
  have hv := hprod.resolve_left (reflectedLambda_sub_one_ne_zero k)
  dsimp [a] at hH hv
  omega

/-- A nonzero target has its coefficient valuation when U is closer to 1. -/
theorem valuation_sub_of_near_one {U lam : ℚ} {h : ℤ}
    (hlam : lam-1≠0) (hU : ValGE p h (U-1))
    (hh : padicValRat p (lam-1)<h) (hd : U-lam≠0) :
    padicValRat p (U-lam)=padicValRat p (lam-1) := by
  have hq : 1-lam≠0 := by intro he; apply hlam; linarith
  have hqv : padicValRat p (1-lam)=padicValRat p (lam-1) := by
    rw [show 1-lam=-(lam-1) by ring, padicValRat.neg]
  by_cases hu1 : U-1=0
  · have hu : U=1 := by linarith
    simpa [hu] using hqv
  have hv := hU.resolve_left hu1
  have ht := padicValRat.add_eq_of_lt (p := p)
    (show (1-lam)+(U-1)≠0 by convert hd using 1; ring) hq hu1
    (by rw [hqv]; omega)
  rw [show (1-lam)+(U-1)=U-lam by ring, hqv] at ht
  exact ht

/-- The entire high branch, including the exact high-slot valuation and the
extra power at p=2, is deduced from the original separated product equation. -/
theorem original_high_contact_data (k n m p L : ℕ) (hp : p.Prime)
    (hk : 2≤k) (hsep : n+k≤m) (heq : product k m=4*product k n)
    (hL : k<p^(L+1))
    (hhigh : (L : ℤ)+padicValRat p (reflectedLambda k-1) <
      padicValNat p (reflectedSum k n m)) :
    ∃ i∈Icc 1 k,
      (padicValNat p (n+i) : ℤ) = padicValNat p (reflectedSum k n m)-
        padicValRat p (reflectedLambda k-1) ∧
      0 < (reflectedContact k n m i).natAbs ∧
      (2 : ℤ)*padicValNat p (reflectedSum k n m)-
        padicValRat p (reflectedLambda k-1)-L+padicValNat p 4 ≤
        padicValInt p (reflectedContact k n m i) := by
  have : Fact p.Prime := ⟨hp⟩
  let S := reflectedSum k n m
  let a := padicValNat p S
  let lam := reflectedLambda k
  let f : ℕ → ℚ := fun j => 1-(S : ℚ)/(n+j : ℕ)
  have hS : S≠0 := by dsimp [S, reflectedSum]; omega
  have hsQ : (S : ℚ)≠0 := by exact_mod_cast hS
  have he0 := reflectedLambda_valuation_nonneg (p := p) k
  have hH : (0 : ℤ)<a-L := by dsimp [a, S]; omega
  obtain ⟨i, hi, hvi⟩ := exists_high_position k n m p L hp hk hsep heq hhigh
  have hz : n+i≠0 := by have := (mem_Icc.mp hi).1; omega
  have hzQ : ((n+i : ℕ) : ℚ)≠0 := by exact_mod_cast hz
  let U : ℚ := ∏ j∈(Icc 1 k).erase i, f j
  have hnear : ValGE p ((a : ℤ)-L) (U-1) := by
    apply valGE_prod_sub_one hH
    intro j hj
    obtain ⟨hji, hj⟩ := mem_erase.mp hj
    have hb : padicValNat p (n+j)≤L := by
      by_contra! hb
      exact hji (unique_high_position k n p L j i hp hL hj hi hb hvi)
    have hzj : n+j≠0 := by have := (mem_Icc.mp hj).1; omega
    apply Or.inr
    dsimp [f]
    rw [ratio_sub_one_valuation _ _ hS hzj]
    dsimp [a]
    omega
  obtain ⟨hU0, hUv⟩ := valGE_near_one_unit hH hnear
  have hprod : f i*U=lam := by
    dsimp [U]
    rw [mul_prod_erase _ _ hi]
    exact signed_reflected_ratio_product k n m heq
  have hdiff : U-lam=((S : ℚ)/(n+i : ℕ))*U := by
    dsimp [f] at hprod
    nlinarith only [hprod]
  have hd0 : U-lam≠0 := by rw [hdiff]; exact mul_ne_zero (div_ne_zero hsQ hzQ) hU0
  have hdv := valuation_sub_of_near_one (p := p)
    (reflectedLambda_sub_one_ne_zero k) hnear (by dsimp [a, S, lam]; omega) hd0
  have hb : (padicValNat p (n+i) : ℤ)=a-padicValRat p (lam-1) := by
    rw [hdiff, padicValRat.mul (div_ne_zero hsQ hzQ) hU0,
      padicValRat.div hsQ hzQ, padicValRat.of_nat, padicValRat.of_nat, hUv] at hdv
    change (a : ℤ)-padicValNat p (n+i)+0=padicValRat p (lam-1) at hdv
    omega
  have hR0 := reflectedContact_ne_zero k n m i hk hsep heq hi
  have hRQ0 : ((reflectedContact k n m i : ℤ) : ℚ)≠0 := by exact_mod_cast hR0
  have hcontact : ((reflectedContact k n m i : ℤ) : ℚ)*U =
      lam*(n+i : ℕ)*(U-1) := by
    have hclear : ((S : ℚ)+(lam-1)*(n+i : ℕ))*U = lam*(n+i : ℕ)*(U-1) := by
      have ht := congrArg (fun x : ℚ => x*(n+i : ℕ)) hdiff
      field_simp at ht
      nlinarith only [ht]
    convert hclear using 1
    simp [reflectedContact, S, lam, reflectedLambda]
  have hUm0 : U-1≠0 := by
    intro hu
    rw [hu, mul_zero] at hcontact
    exact (mul_ne_zero hRQ0 hU0) hcontact
  have hUml := hnear.resolve_left hUm0
  have hlam0 : lam≠0 := reflectedLambda_ne_zero k
  have hlamv : padicValRat p lam = padicValNat p 4 := by
    dsimp [lam, reflectedLambda]
    rw [padicValRat.mul (by norm_num) (pow_ne_zero _ (by norm_num)), padicValRat.pow]
    simp only [padicValRat.neg, padicValRat.one, mul_zero, add_zero]
    exact padicValRat.of_nat
  have hv := congrArg (padicValRat p) hcontact
  rw [padicValRat.mul hRQ0 hU0,
    padicValRat.mul (mul_ne_zero hlam0 hzQ) hUm0,
    padicValRat.mul hlam0 hzQ, hUv, hlamv, padicValRat.of_int,
    padicValRat.of_nat] at hv
  have hbound : (2 : ℤ)*a-padicValRat p (lam-1)-L+padicValNat p 4 ≤
      padicValInt p (reflectedContact k n m i) := by
    omega
  exact ⟨i, hi, hb, Int.natAbs_pos.mpr hR0, hbound⟩

theorem original_high_contact (k n m p L : ℕ) (hp : p.Prime)
    (hk : 2≤k) (hsep : n+k≤m) (heq : product k m=4*product k n)
    (hL : k<p^(L+1))
    (hhigh : (L : ℤ)+padicValRat p (reflectedLambda k-1) <
      padicValNat p (reflectedSum k n m)) :
    ∃ i∈Icc 1 k,
      (padicValNat p (n+i) : ℤ) = padicValNat p (reflectedSum k n m)-
        padicValRat p (reflectedLambda k-1) ∧
      0 < (reflectedContact k n m i).natAbs ∧
      (p : ℤ)^(padicValNat p (reflectedSum k n m)+1+padicValNat p 4) ∣
        reflectedContact k n m i := by
  have : Fact p.Prime := ⟨hp⟩
  obtain ⟨i, hi, hvi, hpos, hbound⟩ :=
    original_high_contact_data k n m p L hp hk hsep heq hL hhigh
  refine ⟨i, hi, hvi, hpos, ?_⟩
  exact (padicValInt_dvd_iff _ _).mpr (Or.inr (by omega))

def reflectedCoefficient (k : ℕ) : ℕ := (4*(-1 : ℤ)^k-1).natAbs

theorem reflectedCoefficient_eq_three_or_five (k : ℕ) :
    reflectedCoefficient k=3 ∨ reflectedCoefficient k=5 := by
  rcases neg_one_pow_eq_or ℤ k with h | h <;> norm_num [reflectedCoefficient, h]

omit [Fact p.Prime] in
theorem reflectedCoefficient_valuation (k : ℕ) :
    padicValRat p (reflectedLambda k-1) =
      (padicValNat p (reflectedCoefficient k) : ℤ) := by
  have hid : reflectedLambda k-1 = ((4*(-1 : ℤ)^k-1 : ℤ) : ℚ) := by
    push_cast
    rfl
  rw [hid, padicValRat.of_int]
  rfl

/-- Natural-number interface, with the actual logarithmic cutoff and the
positive magnitude T. No high-slot/contact hypothesis is supplied by the caller. -/
theorem original_high_contact_nat (k n m p : ℕ) (hp : p.Prime)
    (hk : 2≤k) (hsep : n+k≤m) (heq : product k m=4*product k n)
    (hhigh : Nat.log p k+padicValNat p (reflectedCoefficient k) <
      padicValNat p (reflectedSum k n m)) :
    ∃ i∈Icc 1 k,
      padicValNat p (n+i) = padicValNat p (reflectedSum k n m)-
        padicValNat p (reflectedCoefficient k) ∧
      0 < (reflectedContact k n m i).natAbs ∧
      p^(padicValNat p (reflectedSum k n m)+1+padicValNat p 4) ∣
        (reflectedContact k n m i).natAbs := by
  have : Fact p.Prime := ⟨hp⟩
  have hhighZ : (Nat.log p k : ℤ)+padicValRat p (reflectedLambda k-1) <
      padicValNat p (reflectedSum k n m) := by
    rw [reflectedCoefficient_valuation]
    exact_mod_cast hhigh
  obtain ⟨i, hi, hvi, hpos, hdiv⟩ := original_high_contact k n m p (Nat.log p k)
    hp hk hsep heq (Nat.lt_pow_succ_log_self hp.one_lt k) hhighZ
  rw [reflectedCoefficient_valuation] at hvi
  refine ⟨i, hi, by omega, hpos, ?_⟩
  rw [← Int.natCast_dvd]
  simpa only [Nat.cast_pow] using hdiv

theorem original_high_contact_sharp_nat (k n m p : ℕ) (hp : p.Prime)
    (hk : 2≤k) (hsep : n+k≤m) (heq : product k m=4*product k n)
    (hhigh : Nat.log p k+padicValNat p (reflectedCoefficient k) <
      padicValNat p (reflectedSum k n m)) :
    ∃ i∈Icc 1 k,
      padicValNat p (n+i) = padicValNat p (reflectedSum k n m)-
        padicValNat p (reflectedCoefficient k) ∧
      0 < (reflectedContact k n m i).natAbs ∧
      p^(2*padicValNat p (reflectedSum k n m)-padicValNat p (reflectedCoefficient k)-
        Nat.log p k+padicValNat p 4) ∣ (reflectedContact k n m i).natAbs := by
  have : Fact p.Prime := ⟨hp⟩
  have hhighZ : (Nat.log p k : ℤ)+padicValRat p (reflectedLambda k-1) <
      padicValNat p (reflectedSum k n m) := by
    rw [reflectedCoefficient_valuation]
    exact_mod_cast hhigh
  obtain ⟨i, hi, hvi, hpos, hbound⟩ := original_high_contact_data k n m p (Nat.log p k)
    hp hk hsep heq (Nat.lt_pow_succ_log_self hp.one_lt k) hhighZ
  rw [reflectedCoefficient_valuation] at hvi hbound
  have hdiv : (p : ℤ)^(2*padicValNat p (reflectedSum k n m)-
      padicValNat p (reflectedCoefficient k)-Nat.log p k+padicValNat p 4) ∣
      reflectedContact k n m i :=
    (padicValInt_dvd_iff _ _).mpr (Or.inr (by omega))
  refine ⟨i, hi, by omega, hpos, ?_⟩
  rw [← Int.natCast_dvd]
  simpa only [Nat.cast_pow] using hdiv

/-- info: 'B686ReflectedA.exists_high_position' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms exists_high_position
/-- info: 'B686ReflectedA.original_high_contact_data' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_high_contact_data
/-- info: 'B686ReflectedA.original_high_contact' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_high_contact
/-- info: 'B686ReflectedA.original_high_contact_nat' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_high_contact_nat
/-- info: 'B686ReflectedA.original_high_contact_sharp_nat' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_high_contact_sharp_nat

end B686ReflectedA
