/-
Copyright (c) 2026 Will Blair. Released under the MIT license.
Adapted from williamjblair/lean-proofs, commit aff1d30b3b1c6bd705810fa4d588b03940fb31df,
ErdosProblems/Erdos686CenterComponentLogStrip.lean (Lean 4.29.1).
Local changes: focused dependency slice, local namespace, Lean 4.33.1 compatibility.
The complete license notice is retained in LICENSE-Will-Blair.txt.
-/
import Mathlib.Algebra.GCDMonoid.Finset
import Mathlib.Data.Nat.Choose.Bounds
import Mathlib.Data.Nat.Choose.Factorization
import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring
import Mathlib.Tactic.IntervalCases

namespace B686LcmBounds

set_option maxHeartbeats 1200000
set_option format.width 240

def initialLcm (N : ℕ) : ℕ :=
  (Finset.range N).lcm (fun j => j + 1)

lemma initialLcm_ne_zero (N : ℕ) : initialLcm N ≠ 0 := by
  intro hzero
  unfold initialLcm at hzero
  rw [Finset.lcm_eq_zero_iff] at hzero
  rcases hzero with ⟨j, hj, hz⟩
  omega

lemma term_dvd_initialLcm {x N : ℕ} (hx : 1 ≤ x) (hxN : x ≤ N) :
    x ∣ initialLcm N := by
  unfold initialLcm
  have hj : x - 1 ∈ Finset.range N := by
    simp only [Finset.mem_range]
    omega
  have hdvd := Finset.dvd_lcm (f := fun j : ℕ => j + 1) hj
  rw [show x = (x - 1) + 1 by omega]
  exact hdvd

private lemma prime_dvd_half_binomial
    {N m p e : ℕ} (hp : p.Prime) (hm : m ≤ N) (he : 1 ≤ e)
    (hmq : m < p ^ e) (hrq : N - m < p ^ e) (hqN : p ^ e ≤ N) :
    p ∣ N.choose m := by
  have hN0 : N ≠ 0 := by
    have hqpos : 0 < p ^ e := pow_pos hp.pos _
    omega
  have heLog : e ≤ Nat.log p N :=
    Nat.le_log_of_pow_le hp.one_lt hqN
  have hlog : Nat.log p N < Nat.log p N + 1 := by omega
  have hfac := Nat.factorization_choose hp hm hlog
  have hmem : e ∈ Finset.Ico 1 (Nat.log p N + 1) := by
    simp only [Finset.mem_Ico]
    omega
  have hcarry : p ^ e ≤ m % p ^ e + (N - m) % p ^ e := by
    rw [Nat.mod_eq_of_lt hmq, Nat.mod_eq_of_lt hrq]
    omega
  have hcardPos : 0 <
      ({i ∈ Finset.Ico 1 (Nat.log p N + 1) |
        p ^ i ≤ m % p ^ i + (N - m) % p ^ i} : Finset ℕ).card := by
    rw [Finset.card_pos]
    exact ⟨e, Finset.mem_filter.mpr ⟨hmem, hcarry⟩⟩
  have hfacPos : 0 < (N.choose m).factorization p := by
    rw [hfac]
    exact hcardPos
  exact (hp.dvd_iff_one_le_factorization (Nat.choose_ne_zero hm)).mpr hfacPos

lemma initialLcm_dvd_base_mul_choose
    {N m : ℕ} (hmpos : 1 ≤ m) (hmN : m ≤ N)
    (hother : N - m ≤ m) (hdouble : N ≤ 2 * m) :
    initialLcm N ∣ initialLcm m * N.choose m := by
  have hchoose0 : N.choose m ≠ 0 := Nat.choose_ne_zero hmN
  have hL0 : initialLcm m ≠ 0 := initialLcm_ne_zero m
  have hrhs0 : initialLcm m * N.choose m ≠ 0 :=
    mul_ne_zero hL0 hchoose0
  unfold initialLcm
  apply Finset.lcm_dvd
  intro j hj
  simp only [Finset.mem_range] at hj
  let x : ℕ := j + 1
  have hx0 : x ≠ 0 := by dsimp [x]; omega
  have hxN : x ≤ N := by dsimp [x]; omega
  apply (Nat.factorization_le_iff_dvd hx0 hrhs0).mp
  intro p
  by_cases hp : p.Prime
  · let e : ℕ := x.factorization p
    have hpowX : p ^ e ∣ x :=
      (hp.pow_dvd_iff_le_factorization hx0).mpr le_rfl
    have hpowLeX : p ^ e ≤ x := Nat.le_of_dvd (by omega) hpowX
    have hpowLeN : p ^ e ≤ N := le_trans hpowLeX hxN
    by_cases hsmall : p ^ e ≤ m
    · have hpowL : p ^ e ∣ initialLcm m :=
        term_dvd_initialLcm (pow_pos hp.pos _) hsmall
      exact (hp.pow_dvd_iff_le_factorization hrhs0).mp
        (dvd_mul_of_dvd_left hpowL (N.choose m))
    · have hepos : 1 ≤ e := by
        by_contra he0
        have heq0 : e = 0 := by omega
        apply hsmall
        simpa [heq0] using hmpos
      let ep : ℕ := e - 1
      have hep : ep + 1 = e := by dsimp [ep]; omega
      have hpowEq : p ^ e = p ^ ep * p := by rw [← hep, pow_succ]
      have hprevLe : p ^ ep ≤ m := by
        have htwo : 2 * p ^ ep ≤ p ^ e := by
          rw [hpowEq]
          simpa [mul_comm] using Nat.mul_le_mul_left (p ^ ep) hp.two_le
        by_contra hnot
        have hm1 : m + 1 ≤ p ^ ep := by omega
        omega
      have hprevDvd : p ^ ep ∣ initialLcm m :=
        term_dvd_initialLcm (pow_pos hp.pos _) hprevLe
      have hpChoose : p ∣ N.choose m :=
        prime_dvd_half_binomial hp hmN hepos (by omega)
          (lt_of_le_of_lt hother (by omega)) hpowLeN
      have hpowRhs : p ^ e ∣ initialLcm m * N.choose m := by
        rw [hpowEq]
        exact mul_dvd_mul hprevDvd hpChoose
      exact (hp.pow_dvd_iff_le_factorization hrhs0).mp hpowRhs
  · simp [Nat.factorization_eq_zero_of_not_prime _ hp]

theorem initialLcm_le_four_pow (N : ℕ) : initialLcm N ≤ 4 ^ N := by
  induction N using Nat.strong_induction_on with
  | h N ih =>
      by_cases hsmall : N < 2
      · interval_cases N <;> decide
      · have hN : 2 ≤ N := by omega
        rcases Nat.even_or_odd N with hEven | hOdd
        · obtain ⟨u, hu⟩ := hEven
          have hform : N = 2 * u := by omega
          have huPos : 1 ≤ u := by omega
          have huLt : u < N := by omega
          have hrecDvd : initialLcm N ∣ initialLcm u * N.choose u := by
            apply initialLcm_dvd_base_mul_choose huPos (by omega)
            · omega
            · omega
          have hrec : initialLcm N ≤ initialLcm u * N.choose u :=
            Nat.le_of_dvd
              (mul_pos (Nat.pos_of_ne_zero (initialLcm_ne_zero u))
                (Nat.choose_pos (by omega))) hrecDvd
          have hchoose : N.choose u ≤ 4 ^ u := by
            have hraw := Nat.choose_le_two_pow N u
            rw [hform] at hraw
            rw [hform]
            calc
              (2 * u).choose u ≤ 2 ^ (2 * u) := hraw
              _ = 4 ^ u := by
                rw [show (4 : ℕ) = 2 ^ 2 by norm_num, ← pow_mul]
          calc
            initialLcm N ≤ initialLcm u * N.choose u := hrec
            _ ≤ 4 ^ u * 4 ^ u := Nat.mul_le_mul (ih u huLt) hchoose
            _ = 4 ^ N := by rw [← pow_add]; congr 1 <;> omega
        · obtain ⟨u, hu⟩ := hOdd
          have hform : N = 2 * u + 1 := by omega
          have huPos : 1 ≤ u := by omega
          let m : ℕ := u + 1
          have hmPos : 1 ≤ m := by dsimp [m]; omega
          have hmLt : m < N := by dsimp [m]; omega
          have hmN : m ≤ N := le_of_lt hmLt
          have hrecDvd : initialLcm N ∣ initialLcm m * N.choose m := by
            apply initialLcm_dvd_base_mul_choose hmPos hmN
            · dsimp [m]
              omega
            · dsimp [m]
              omega
          have hrec : initialLcm N ≤ initialLcm m * N.choose m :=
            Nat.le_of_dvd
              (mul_pos (Nat.pos_of_ne_zero (initialLcm_ne_zero m))
                (Nat.choose_pos hmN)) hrecDvd
          have hchoose : N.choose m ≤ 4 ^ u := by
            have hraw := Nat.choose_succ_le_two_pow (2 * u) m
            rw [hform]
            calc
              (2 * u + 1).choose m ≤ 2 ^ (2 * u) := by simpa using hraw
              _ = 4 ^ u := by
                rw [show (4 : ℕ) = 2 ^ 2 by norm_num, ← pow_mul]
          calc
            initialLcm N ≤ initialLcm m * N.choose m := hrec
            _ ≤ 4 ^ m * 4 ^ u := Nat.mul_le_mul (ih m hmLt) hchoose
            _ = 4 ^ N := by
              rw [← pow_add]
              congr 1
              dsimp [m]
              omega

def intervalLcm (a m : ℕ) : ℕ :=
  (Finset.range m).lcm (fun t => a + t)

lemma intervalLcm_ne_zero {a m : ℕ} (ha : 1 ≤ a) :
    intervalLcm a m ≠ 0 := by
  intro hzero
  unfold intervalLcm at hzero
  rw [Finset.lcm_eq_zero_iff] at hzero
  rcases hzero with ⟨t, ht, hterm⟩
  omega

/-- Every term of a positive interval divides its binomial quotient times
`lcm(1,...,m)`.  The proof is Kummer's carry formula: every prime power in
the term above `m` forces a carry in `choose (a+m-1) m`. -/
lemma interval_term_dvd_choose_mul_initialLcm
    {a m t : ℕ} (ha : 1 ≤ a) (hm : 1 ≤ m) (ht : t < m) :
    a + t ∣ (a + m - 1).choose m * initialLcm m := by
  have hx0 : a + t ≠ 0 := by omega
  have hN : m ≤ a + m - 1 := by omega
  have hchoose0 : (a + m - 1).choose m ≠ 0 := Nat.choose_ne_zero hN
  have hrhs0 : (a + m - 1).choose m * initialLcm m ≠ 0 :=
    mul_ne_zero hchoose0 (initialLcm_ne_zero m)
  apply (Nat.factorization_le_iff_dvd hx0 hrhs0).mp
  intro p
  by_cases hp : p.Prime
  · let e : ℕ := (a + t).factorization p
    let ell : ℕ := Nat.log p m
    have hpellDvd : p ^ ell ∣ initialLcm m := by
      apply term_dvd_initialLcm (pow_pos hp.pos _)
      dsimp [ell]
      exact Nat.pow_log_le_self p (by omega)
    have hellL : ell ≤ (initialLcm m).factorization p :=
      (hp.pow_dvd_iff_le_factorization (initialLcm_ne_zero m)).mp hpellDvd
    have heBound : e ≤ ell + ((a + m - 1).choose m).factorization p := by
      by_cases heSmall : e ≤ ell
      · omega
      · let carries : Finset ℕ :=
          {j ∈ Finset.Ico 1 (Nat.log p (a + m - 1) + 1) |
            p ^ j ≤ m % p ^ j + ((a + m - 1) - m) % p ^ j}
        have hsubset : Finset.Ioc ell e ⊆ carries := by
          intro j hj
          simp only [Finset.mem_Ioc] at hj
          have hjpos : 1 ≤ j := by omega
          have hjle : j ≤ e := hj.2
          have hqDvd : p ^ j ∣ a + t :=
            (hp.pow_dvd_iff_le_factorization hx0).mpr hjle
          have hqPos : 0 < p ^ j := pow_pos hp.pos _
          have hqLeX : p ^ j ≤ a + t := Nat.le_of_dvd (by omega) hqDvd
          have hqLeN : p ^ j ≤ a + m - 1 := by omega
          have hjLog : j ≤ Nat.log p (a + m - 1) :=
            Nat.le_log_of_pow_le hp.one_lt hqLeN
          have hmLtq : m < p ^ j := by
            have hmBase : m < p ^ (ell + 1) := by
              dsimp [ell]
              simpa [Nat.succ_eq_add_one] using Nat.lt_pow_succ_log_self hp.one_lt m
            exact lt_of_lt_of_le hmBase
              (Nat.pow_le_pow_right hp.one_lt.le (by omega))
          have ht1Ltq : t + 1 < p ^ j := by omega
          have hnotDvd : ¬ p ^ j ∣ t + 1 := by
            exact Nat.not_dvd_of_pos_of_lt (by omega) ht1Ltq
          have hcarrySmall :
              p ^ j ≤ (t + 1) % p ^ j + (a - 1) % p ^ j := by
            apply Nat.le_mod_add_mod_of_dvd_add_of_not_dvd
            · convert hqDvd using 1 <;> omega
            · exact hnotDvd
          have hcarry :
              p ^ j ≤ m % p ^ j + ((a + m - 1) - m) % p ^ j := by
            rw [Nat.mod_eq_of_lt ht1Ltq] at hcarrySmall
            rw [Nat.mod_eq_of_lt hmLtq]
            have hsub : (a + m - 1) - m = a - 1 := by omega
            rw [hsub]
            omega
          simp only [carries, Finset.mem_filter, Finset.mem_Ico]
          exact ⟨⟨hjpos, by omega⟩, hcarry⟩
        have hcard : e - ell ≤ carries.card := by
          simpa using Finset.card_le_card hsubset
        have hfacChoose :
            ((a + m - 1).choose m).factorization p = carries.card := by
          dsimp [carries]
          exact Nat.factorization_choose hp hN (by omega)
        rw [hfacChoose]
        omega
    rw [Nat.factorization_mul hchoose0 (initialLcm_ne_zero m),
      Finsupp.coe_add, Pi.add_apply]
    omega
  · simp [Nat.factorization_eq_zero_of_not_prime _ hp]

/-- Lcm form of the interval compression. -/
lemma intervalLcm_dvd_choose_mul_initialLcm
    {a m : ℕ} (ha : 1 ≤ a) (hm : 1 ≤ m) :
    intervalLcm a m ∣ (a + m - 1).choose m * initialLcm m := by
  unfold intervalLcm
  apply Finset.lcm_dvd
  intro t ht
  exact interval_term_dvd_choose_mul_initialLcm ha hm
    (Finset.mem_range.mp ht)

/-- Exact interval theorem: factorial times the interval lcm divides the
interval product times the initial lcm. -/
theorem factorial_mul_intervalLcm_dvd_ascFactorial_mul_initialLcm
    {a m : ℕ} (ha : 1 ≤ a) (hm : 1 ≤ m) :
    m.factorial * intervalLcm a m ∣
      a.ascFactorial m * initialLcm m := by
  have hdvd := intervalLcm_dvd_choose_mul_initialLcm ha hm
  have hmul := mul_dvd_mul_left m.factorial hdvd
  rw [Nat.ascFactorial_eq_factorial_mul_choose']
  simpa [mul_assoc, mul_comm, mul_left_comm] using hmul

/-- info: 'B686LcmBounds.initialLcm_le_four_pow' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs (whitespace := lax) in
#print axioms initialLcm_le_four_pow
/-- info: 'B686LcmBounds.factorial_mul_intervalLcm_dvd_ascFactorial_mul_initialLcm' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs (whitespace := lax) in
#print axioms factorial_mul_intervalLcm_dvd_ascFactorial_mul_initialLcm

end B686LcmBounds




