import research.tasks.«B686-Four».runs.«20260908-reflected-sum-9bad0b9».main.ReflectedGeometry
import research.tasks.«B686-Four».runs.«20260908-reflected-sum-9bad0b9».main.PrimeSynchronization

/-! A complete source-aligned exclusion when S=m+n+k+1 itself is prime.
This is only the exponent-one subfamily of the paper prime-power theorem.
It deliberately does not assume the missing higher-order contact certificate. -/

namespace B686Reflected
open Finset B686Target

theorem int_dvd_prod_difference (s : Finset ℕ) (f g : ℕ → ℤ) (q : ℤ)
    (h : ∀ i ∈ s, q ∣ f i-g i) : q ∣ s.prod f-s.prod g := by
  induction s using Finset.induction_on with
  | empty => simp
  | @insert a s ha ih =>
    have h1 := h a (by simp)
    have h2 := ih (fun i hi => h i (by simp [hi]))
    rw [prod_insert ha, prod_insert ha]
    have hd := dvd_add (dvd_mul_of_dvd_left h1 (s.prod f))
      (dvd_mul_of_dvd_right h2 (g a))
    have hid : f a*s.prod f-g a*s.prod g =
        (f a-g a)*s.prod f+g a*(s.prod f-s.prod g) := by ring
    rw [hid]
    exact hd

theorem reflected_sum_divides_fifteen_product_square (k n m : ℕ)
    (heq : product k m = 4*product k n) :
    reflectedSum k n m ∣ 15*(product k n)^2 := by
  have hd : (reflectedSum k n m : ℤ) ∣
      (∏ i ∈ Icc 1 k, (((m+(k+1-i) : ℕ) : ℤ)^2)) -
      (∏ i ∈ Icc 1 k, (((n+i : ℕ) : ℤ)^2)) := by
    apply int_dvd_prod_difference
    intro i hi
    have hi' := mem_Icc.mp hi
    have hs : ((m+(k+1-i) : ℕ) : ℤ)+(n+i : ℕ) = reflectedSum k n m := by
      exact_mod_cast (show m+(k+1-i)+(n+i)=reflectedSum k n m by
        unfold reflectedSum; omega)
    refine ⟨((m+(k+1-i) : ℕ) : ℤ)-(n+i : ℕ), ?_⟩
    rw [← hs]
    ring
  have hu : (∏ i ∈ Icc 1 k, ((m+(k+1-i) : ℕ) : ℤ)) = (product k m : ℤ) := by
    rw [← Nat.cast_prod, reflected_product]
  have hl : (∏ i ∈ Icc 1 k, ((n+i : ℕ) : ℤ)) = (product k n : ℤ) := by
    simp [product]
  have hc : (product k m : ℤ) = 4*(product k n : ℤ) := by exact_mod_cast heq
  simp only [Finset.prod_pow, hu, hl, hc] at hd
  have hid : (4*(product k n : ℤ))^2-(product k n : ℤ)^2 =
      15*(product k n : ℤ)^2 := by ring
  rw [hid] at hd
  exact_mod_cast hd

theorem not_four_prime_reflected_sum (k n m : ℕ) (hk : 2 ≤ k)
    (hsep : n+k ≤ m) (hprime : (reflectedSum k n m).Prime) :
    product k m ≠ 4*product k n := by
  intro heq
  have hsize := (reflected_sum_size k n m hk hsep heq).2
  have hs5 : 5 < reflectedSum k n m := by nlinarith
  have hd := reflected_sum_divides_fifteen_product_square k n m heq
  have hnot : ¬ reflectedSum k n m ∣ 15 := by
    intro hdiv
    have hsplit : reflectedSum k n m ∣ 3 ∨ reflectedSum k n m ∣ 5 := by
      apply hprime.dvd_mul.mp
      simpa using hdiv
    rcases hsplit with h3 | h5
    · have := Nat.le_of_dvd (by decide : 0 < 3) h3
      omega
    · have := Nat.le_of_dvd (by decide : 0 < 5) h5
      omega
  have hp2 : reflectedSum k n m ∣ (product k n)^2 :=
    (hprime.dvd_mul.mp hd).resolve_left hnot
  have hpn : reflectedSum k n m ∣ product k n := hprime.dvd_of_dvd_pow hp2
  obtain ⟨i, hi1, hik, hpi⟩ :=
    (B686Round9.prime_dvd_blockProduct_iff k n (reflectedSum k n m) hprime).mp hpn
  have hi : i ∈ Icc 1 k := mem_Icc.mpr ⟨hi1, hik⟩
  have hwindow := (reflected_position_window k n m i hk hsep heq hi).1
  have hle := Nat.le_of_dvd (show 0 < n+i by omega) hpi
  omega

/-- info: 'B686Reflected.int_dvd_prod_difference' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms int_dvd_prod_difference
/-- info: 'B686Reflected.reflected_sum_divides_fifteen_product_square' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms reflected_sum_divides_fifteen_product_square
/-- info: 'B686Reflected.not_four_prime_reflected_sum' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_prime_reflected_sum

end B686Reflected
