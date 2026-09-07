import research.tasks.«B686-Four».round6.a.Tail
import research.tasks.«B686-Four».round6.a.Finite
import research.tasks.«B686-Four».round5.main.PositionPartition
import research.tasks.«B686-Four».independent.TargetBridge

namespace B686Round6A
open B686Round4K5 B686Round5Tail

theorem p5_eq_shift_product (n : ℤ) : p5 n = B686Round4Shift.product 5 n := by
  rw [B686Round4Cubic.product_five]
  rfl

theorem split_three_positions (n d i j k : ℕ)
    (hi : 1 ≤ i) (hij : i < j) (hjk : j < k) (hk : k ≤ 5)
    (h6 : Nat.Coprime d 6) (hdiv : d ∣ (n + i) * (n + j) * (n + k)) :
    ∃ P Q R : ℕ, d = P * Q * R ∧ P ∣ n + i ∧ Q ∣ n + j ∧ R ∣ n + k ∧
      Nat.Coprime P Q ∧ Nat.Coprime P R ∧ Nat.Coprime Q R := by
  obtain ⟨T, R, hT, hR, hd⟩ := exists_dvd_and_dvd_of_dvd_mul hdiv
  obtain ⟨P, Q, hP, hQ, hT⟩ := exists_dvd_and_dvd_of_dvd_mul hT
  have heq : d = P * Q * R := by rw [hd, hT]
  have hPd : P ∣ d := by rw [heq]; exact dvd_mul_of_dvd_left (dvd_mul_right P Q) R
  have hQd : Q ∣ d := by rw [heq]; exact dvd_mul_of_dvd_left (dvd_mul_left Q P) R
  refine ⟨P, Q, R, heq, hP, hQ, hR, ?_, ?_, ?_⟩
  · exact B686Round5Partition.coprime_slot_groups n d P Q i j hi hij (by omega) hP hQ hPd h6
  · exact B686Round5Partition.coprime_slot_groups n d P R i k hi (by omega) hk hP hR hPd h6
  · exact B686Round5Partition.coprime_slot_groups n d Q R j k (by omega) hjk hk hQ hR hQd h6

theorem no_auxiliary123_divisor_tail (n d : ℤ) (hn : 0 ≤ n) (hd : 50000 ≤ d)
    (heq : p5 (n + d) = 4 * p5 n)
    (hdiv : d ^ 6 ∣ auxiliary123 (error n d 3) d) : False := by
  obtain ⟨hl, hu⟩ := refined_strip n d hn (by omega) heq
  obtain ⟨hlo, hhi⟩ := auxiliary123_bounds (error n d 3) d hd hl hu
  have hsize : d ^ 6 ≤ auxiliary123 (error n d 3) d := Int.le_of_dvd hlo hdiv
  have hd0 : 0 ≤ d := by omega
  have h := mul_le_mul_of_nonneg_right hd (pow_nonneg hd0 5)
  nlinarith only [hlo, hhi, hsize, h]

theorem not_four_positions123_shift (n d P Q R : ℕ) (hd5 : 5 ≤ d)
    (hd : d = P * Q * R)
    (hP : P ∣ n + 1) (hQ : Q ∣ n + 2) (hR : R ∣ n + 3)
    (hPQ : Nat.Coprime P Q) (hPR : Nat.Coprime P R) (hQR : Nat.Coprime Q R)
    (h6 : Nat.Coprime d 6) :
    (∏ i ∈ Finset.Icc 1 (5 : ℕ), (n + d + i)) ≠
      4 * (∏ i ∈ Finset.Icc 1 (5 : ℕ), (n + i)) := by
  by_cases hsmall : d < 50000
  · exact not_four_below_50000 n d hd5 hsmall
  intro heq
  have hp' := B686Round4Shift.nat_shift_equation 5 n d heq
  have hp : p5 ((n : ℤ) + d) = 4 * p5 n := by
    simpa only [p5_eq_shift_product] using hp'
  have hPd : P ∣ d := by rw [hd]; exact dvd_mul_of_dvd_left (dvd_mul_right P Q) R
  have hQd : Q ∣ d := by rw [hd]; exact dvd_mul_of_dvd_left (dvd_mul_left Q P) R
  have hRd : R ∣ d := by rw [hd]; exact dvd_mul_left R (P * Q)
  have hdiv := three_position_contact123 n d P Q R hp'
    (by exact_mod_cast hd) (by exact_mod_cast hP) (by exact_mod_cast hQ)
    (by exact_mod_cast hR) hPQ.isCoprime hPR.isCoprime hQR.isCoprime
    (h6.coprime_dvd_left hPd).isCoprime (h6.coprime_dvd_left hQd).isCoprime
    (h6.coprime_dvd_left hRd).isCoprime
  exact no_auxiliary123_divisor_tail n d (by omega) (by omega) hp hdiv

theorem not_four_positions123 (n m P Q R : ℕ) (hm : n + 5 ≤ m)
    (hd : m - n = P * Q * R)
    (hP : P ∣ n + 1) (hQ : Q ∣ n + 2) (hR : R ∣ n + 3)
    (hPQ : Nat.Coprime P Q) (hPR : Nat.Coprime P R) (hQR : Nat.Coprime Q R)
    (h6 : Nat.Coprime (m - n) 6) :
    B686Target.product 5 m ≠ 4 * B686Target.product 5 n := by
  have hadd : n + (m - n) = m := by omega
  simpa only [hadd, B686Target.product] using
    not_four_positions123_shift n (m - n) P Q R (by omega) hd
      hP hQ hR hPQ hPR hQR h6

theorem not_four_support123 (n m : ℕ) (hm : n + 5 ≤ m)
    (h6 : Nat.Coprime (m - n) 6)
    (hdiv : m - n ∣ (n + 1) * (n + 2) * (n + 3)) :
    B686Target.product 5 m ≠ 4 * B686Target.product 5 n := by
  obtain ⟨P, Q, R, hd, hP, hQ, hR, hPQ, hPR, hQR⟩ :=
    split_three_positions n (m - n) 1 2 3 (by omega) (by omega) (by omega) (by omega) h6 hdiv
  exact not_four_positions123 n m P Q R hm hd hP hQ hR hPQ hPR hQR h6

theorem not_four_support123_ratio (n m : ℕ) (hm : n + 5 ≤ m)
    (h6 : Nat.Coprime (m - n) 6)
    (hdiv : m - n ∣ (n + 1) * (n + 2) * (n + 3)) :
    (4 : ℚ) ≠ (B686Target.product 5 m : ℚ) / (B686Target.product 5 n : ℚ) := by
  intro h
  exact not_four_support123 n m hm h6 hdiv ((B686Target.ratio_iff 5 n m).mp h)

theorem no_auxiliary134_divisor_tail (n d : ℤ) (hn : 0 ≤ n) (hd : 50000 ≤ d)
    (heq : p5 (n + d) = 4 * p5 n)
    (hdiv : d ^ 6 ∣ auxiliary134 (error n d 3) d) : False := by
  obtain ⟨hl, hu⟩ := refined_strip n d hn (by omega) heq
  obtain ⟨hlo, hhi⟩ := auxiliary134_bounds (error n d 3) d hd hl hu
  have hsize : d ^ 6 ≤ -auxiliary134 (error n d 3) d :=
    Int.le_of_dvd (by omega) (dvd_neg.mpr hdiv)
  have hd0 : 0 ≤ d := by omega
  have h := mul_le_mul_of_nonneg_right hd (pow_nonneg hd0 5)
  nlinarith only [hlo, hhi, hsize, h]

theorem not_four_positions134_shift (n d P Q R : ℕ) (hd5 : 5 ≤ d)
    (hd : d = P * Q * R)
    (hP : P ∣ n + 1) (hQ : Q ∣ n + 3) (hR : R ∣ n + 4)
    (hPQ : Nat.Coprime P Q) (hPR : Nat.Coprime P R) (hQR : Nat.Coprime Q R)
    (h6 : Nat.Coprime d 6) :
    (∏ i ∈ Finset.Icc 1 (5 : ℕ), (n + d + i)) ≠
      4 * (∏ i ∈ Finset.Icc 1 (5 : ℕ), (n + i)) := by
  by_cases hsmall : d < 50000
  · exact not_four_below_50000 n d hd5 hsmall
  intro heq
  have hp' := B686Round4Shift.nat_shift_equation 5 n d heq
  have hp : p5 ((n : ℤ) + d) = 4 * p5 n := by
    simpa only [p5_eq_shift_product] using hp'
  have hPd : P ∣ d := by rw [hd]; exact dvd_mul_of_dvd_left (dvd_mul_right P Q) R
  have hQd : Q ∣ d := by rw [hd]; exact dvd_mul_of_dvd_left (dvd_mul_left Q P) R
  have hRd : R ∣ d := by rw [hd]; exact dvd_mul_left R (P * Q)
  have hdiv := three_position_contact134 n d P Q R hp'
    (by exact_mod_cast hd) (by exact_mod_cast hP) (by exact_mod_cast hQ)
    (by exact_mod_cast hR) hPQ.isCoprime hPR.isCoprime hQR.isCoprime
    (h6.coprime_dvd_left hPd).isCoprime (h6.coprime_dvd_left hQd).isCoprime
    (h6.coprime_dvd_left hRd).isCoprime
  exact no_auxiliary134_divisor_tail n d (by omega) (by omega) hp hdiv

theorem not_four_positions134 (n m P Q R : ℕ) (hm : n + 5 ≤ m)
    (hd : m - n = P * Q * R)
    (hP : P ∣ n + 1) (hQ : Q ∣ n + 3) (hR : R ∣ n + 4)
    (hPQ : Nat.Coprime P Q) (hPR : Nat.Coprime P R) (hQR : Nat.Coprime Q R)
    (h6 : Nat.Coprime (m - n) 6) :
    B686Target.product 5 m ≠ 4 * B686Target.product 5 n := by
  have hadd : n + (m - n) = m := by omega
  simpa only [hadd, B686Target.product] using
    not_four_positions134_shift n (m - n) P Q R (by omega) hd
      hP hQ hR hPQ hPR hQR h6

theorem not_four_support134 (n m : ℕ) (hm : n + 5 ≤ m)
    (h6 : Nat.Coprime (m - n) 6)
    (hdiv : m - n ∣ (n + 1) * (n + 3) * (n + 4)) :
    B686Target.product 5 m ≠ 4 * B686Target.product 5 n := by
  obtain ⟨P, Q, R, hd, hP, hQ, hR, hPQ, hPR, hQR⟩ :=
    split_three_positions n (m - n) 1 3 4 (by omega) (by omega) (by omega) (by omega) h6 hdiv
  exact not_four_positions134 n m P Q R hm hd hP hQ hR hPQ hPR hQR h6

theorem not_four_support134_ratio (n m : ℕ) (hm : n + 5 ≤ m)
    (h6 : Nat.Coprime (m - n) 6)
    (hdiv : m - n ∣ (n + 1) * (n + 3) * (n + 4)) :
    (4 : ℚ) ≠ (B686Target.product 5 m : ℚ) / (B686Target.product 5 n : ℚ) := by
  intro h
  exact not_four_support134 n m hm h6 hdiv ((B686Target.ratio_iff 5 n m).mp h)

theorem no_auxiliary235_divisor_tail (n d : ℤ) (hn : 0 ≤ n) (hd : 50000 ≤ d)
    (heq : p5 (n + d) = 4 * p5 n)
    (hdiv : d ^ 6 ∣ auxiliary235 (error n d 3) d) : False := by
  obtain ⟨hl, hu⟩ := refined_strip n d hn (by omega) heq
  obtain ⟨hlo, hhi⟩ := auxiliary235_bounds (error n d 3) d hd hl hu
  have hsize : d ^ 6 ≤ auxiliary235 (error n d 3) d := Int.le_of_dvd hlo hdiv
  have hd0 : 0 ≤ d := by omega
  have h := mul_le_mul_of_nonneg_right hd (pow_nonneg hd0 5)
  nlinarith only [hlo, hhi, hsize, h]

theorem not_four_positions235_shift (n d P Q R : ℕ) (hd5 : 5 ≤ d)
    (hd : d = P * Q * R)
    (hP : P ∣ n + 2) (hQ : Q ∣ n + 3) (hR : R ∣ n + 5)
    (hPQ : Nat.Coprime P Q) (hPR : Nat.Coprime P R) (hQR : Nat.Coprime Q R)
    (h6 : Nat.Coprime d 6) :
    (∏ i ∈ Finset.Icc 1 (5 : ℕ), (n + d + i)) ≠
      4 * (∏ i ∈ Finset.Icc 1 (5 : ℕ), (n + i)) := by
  by_cases hsmall : d < 50000
  · exact not_four_below_50000 n d hd5 hsmall
  intro heq
  have hp' := B686Round4Shift.nat_shift_equation 5 n d heq
  have hp : p5 ((n : ℤ) + d) = 4 * p5 n := by
    simpa only [p5_eq_shift_product] using hp'
  have hPd : P ∣ d := by rw [hd]; exact dvd_mul_of_dvd_left (dvd_mul_right P Q) R
  have hQd : Q ∣ d := by rw [hd]; exact dvd_mul_of_dvd_left (dvd_mul_left Q P) R
  have hRd : R ∣ d := by rw [hd]; exact dvd_mul_left R (P * Q)
  have hdiv := three_position_contact235 n d P Q R hp'
    (by exact_mod_cast hd) (by exact_mod_cast hP) (by exact_mod_cast hQ)
    (by exact_mod_cast hR) hPQ.isCoprime hPR.isCoprime hQR.isCoprime
    (h6.coprime_dvd_left hPd).isCoprime (h6.coprime_dvd_left hQd).isCoprime
    (h6.coprime_dvd_left hRd).isCoprime
  exact no_auxiliary235_divisor_tail n d (by omega) (by omega) hp hdiv

theorem not_four_positions235 (n m P Q R : ℕ) (hm : n + 5 ≤ m)
    (hd : m - n = P * Q * R)
    (hP : P ∣ n + 2) (hQ : Q ∣ n + 3) (hR : R ∣ n + 5)
    (hPQ : Nat.Coprime P Q) (hPR : Nat.Coprime P R) (hQR : Nat.Coprime Q R)
    (h6 : Nat.Coprime (m - n) 6) :
    B686Target.product 5 m ≠ 4 * B686Target.product 5 n := by
  have hadd : n + (m - n) = m := by omega
  simpa only [hadd, B686Target.product] using
    not_four_positions235_shift n (m - n) P Q R (by omega) hd
      hP hQ hR hPQ hPR hQR h6

theorem not_four_support235 (n m : ℕ) (hm : n + 5 ≤ m)
    (h6 : Nat.Coprime (m - n) 6)
    (hdiv : m - n ∣ (n + 2) * (n + 3) * (n + 5)) :
    B686Target.product 5 m ≠ 4 * B686Target.product 5 n := by
  obtain ⟨P, Q, R, hd, hP, hQ, hR, hPQ, hPR, hQR⟩ :=
    split_three_positions n (m - n) 2 3 5 (by omega) (by omega) (by omega) (by omega) h6 hdiv
  exact not_four_positions235 n m P Q R hm hd hP hQ hR hPQ hPR hQR h6

theorem not_four_support235_ratio (n m : ℕ) (hm : n + 5 ≤ m)
    (h6 : Nat.Coprime (m - n) 6)
    (hdiv : m - n ∣ (n + 2) * (n + 3) * (n + 5)) :
    (4 : ℚ) ≠ (B686Target.product 5 m : ℚ) / (B686Target.product 5 n : ℚ) := by
  intro h
  exact not_four_support235 n m hm h6 hdiv ((B686Target.ratio_iff 5 n m).mp h)

theorem no_auxiliary345_divisor_tail (n d : ℤ) (hn : 0 ≤ n) (hd : 50000 ≤ d)
    (heq : p5 (n + d) = 4 * p5 n)
    (hdiv : d ^ 6 ∣ auxiliary345 (error n d 3) d) : False := by
  obtain ⟨hl, hu⟩ := refined_strip n d hn (by omega) heq
  obtain ⟨hlo, hhi⟩ := auxiliary345_bounds (error n d 3) d hd hl hu
  have hsize : d ^ 6 ≤ -auxiliary345 (error n d 3) d :=
    Int.le_of_dvd (by omega) (dvd_neg.mpr hdiv)
  have hd0 : 0 ≤ d := by omega
  have h := mul_le_mul_of_nonneg_right hd (pow_nonneg hd0 5)
  nlinarith only [hlo, hhi, hsize, h]

theorem not_four_positions345_shift (n d P Q R : ℕ) (hd5 : 5 ≤ d)
    (hd : d = P * Q * R)
    (hP : P ∣ n + 3) (hQ : Q ∣ n + 4) (hR : R ∣ n + 5)
    (hPQ : Nat.Coprime P Q) (hPR : Nat.Coprime P R) (hQR : Nat.Coprime Q R)
    (h6 : Nat.Coprime d 6) :
    (∏ i ∈ Finset.Icc 1 (5 : ℕ), (n + d + i)) ≠
      4 * (∏ i ∈ Finset.Icc 1 (5 : ℕ), (n + i)) := by
  by_cases hsmall : d < 50000
  · exact not_four_below_50000 n d hd5 hsmall
  intro heq
  have hp' := B686Round4Shift.nat_shift_equation 5 n d heq
  have hp : p5 ((n : ℤ) + d) = 4 * p5 n := by
    simpa only [p5_eq_shift_product] using hp'
  have hPd : P ∣ d := by rw [hd]; exact dvd_mul_of_dvd_left (dvd_mul_right P Q) R
  have hQd : Q ∣ d := by rw [hd]; exact dvd_mul_of_dvd_left (dvd_mul_left Q P) R
  have hRd : R ∣ d := by rw [hd]; exact dvd_mul_left R (P * Q)
  have hdiv := three_position_contact345 n d P Q R hp'
    (by exact_mod_cast hd) (by exact_mod_cast hP) (by exact_mod_cast hQ)
    (by exact_mod_cast hR) hPQ.isCoprime hPR.isCoprime hQR.isCoprime
    (h6.coprime_dvd_left hPd).isCoprime (h6.coprime_dvd_left hQd).isCoprime
    (h6.coprime_dvd_left hRd).isCoprime
  exact no_auxiliary345_divisor_tail n d (by omega) (by omega) hp hdiv

theorem not_four_positions345 (n m P Q R : ℕ) (hm : n + 5 ≤ m)
    (hd : m - n = P * Q * R)
    (hP : P ∣ n + 3) (hQ : Q ∣ n + 4) (hR : R ∣ n + 5)
    (hPQ : Nat.Coprime P Q) (hPR : Nat.Coprime P R) (hQR : Nat.Coprime Q R)
    (h6 : Nat.Coprime (m - n) 6) :
    B686Target.product 5 m ≠ 4 * B686Target.product 5 n := by
  have hadd : n + (m - n) = m := by omega
  simpa only [hadd, B686Target.product] using
    not_four_positions345_shift n (m - n) P Q R (by omega) hd
      hP hQ hR hPQ hPR hQR h6

theorem not_four_support345 (n m : ℕ) (hm : n + 5 ≤ m)
    (h6 : Nat.Coprime (m - n) 6)
    (hdiv : m - n ∣ (n + 3) * (n + 4) * (n + 5)) :
    B686Target.product 5 m ≠ 4 * B686Target.product 5 n := by
  obtain ⟨P, Q, R, hd, hP, hQ, hR, hPQ, hPR, hQR⟩ :=
    split_three_positions n (m - n) 3 4 5 (by omega) (by omega) (by omega) (by omega) h6 hdiv
  exact not_four_positions345 n m P Q R hm hd hP hQ hR hPQ hPR hQR h6

theorem not_four_support345_ratio (n m : ℕ) (hm : n + 5 ≤ m)
    (h6 : Nat.Coprime (m - n) 6)
    (hdiv : m - n ∣ (n + 3) * (n + 4) * (n + 5)) :
    (4 : ℚ) ≠ (B686Target.product 5 m : ℚ) / (B686Target.product 5 n : ℚ) := by
  intro h
  exact not_four_support345 n m hm h6 hdiv ((B686Target.ratio_iff 5 n m).mp h)

theorem solution_displacement_ge_50000 (n m : ℕ) (hm : n + 5 ≤ m)
    (heq : B686Target.product 5 m = 4 * B686Target.product 5 n) :
    50000 ≤ m - n := by
  by_contra hsmall
  have hadd : n + (m - n) = m := by omega
  have hnot := not_four_below_50000 n (m - n) (by omega) (by omega)
  apply hnot
  simpa only [hadd, B686Target.product] using heq

theorem solution_displacement_ge_50000_ratio (n m : ℕ) (hm : n + 5 ≤ m)
    (heq : (4 : ℚ) = (B686Target.product 5 m : ℚ) / (B686Target.product 5 n : ℚ)) :
    50000 ≤ m - n :=
  solution_displacement_ge_50000 n m hm ((B686Target.ratio_iff 5 n m).mp heq)

/-- info: 'B686Round6A.p5_eq_shift_product' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms p5_eq_shift_product
/-- info: 'B686Round6A.split_three_positions' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms split_three_positions
/-- info: 'B686Round6A.no_auxiliary123_divisor_tail' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms no_auxiliary123_divisor_tail
/-- info: 'B686Round6A.not_four_positions123_shift' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_positions123_shift
/-- info: 'B686Round6A.not_four_positions123' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_positions123
/-- info: 'B686Round6A.not_four_support123' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_support123
/-- info: 'B686Round6A.not_four_support123_ratio' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_support123_ratio
/-- info: 'B686Round6A.no_auxiliary134_divisor_tail' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms no_auxiliary134_divisor_tail
/-- info: 'B686Round6A.not_four_positions134_shift' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_positions134_shift
/-- info: 'B686Round6A.not_four_positions134' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_positions134
/-- info: 'B686Round6A.not_four_support134' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_support134
/-- info: 'B686Round6A.not_four_support134_ratio' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_support134_ratio
/-- info: 'B686Round6A.no_auxiliary235_divisor_tail' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms no_auxiliary235_divisor_tail
/-- info: 'B686Round6A.not_four_positions235_shift' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_positions235_shift
/-- info: 'B686Round6A.not_four_positions235' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_positions235
/-- info: 'B686Round6A.not_four_support235' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_support235
/-- info: 'B686Round6A.not_four_support235_ratio' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_support235_ratio
/-- info: 'B686Round6A.no_auxiliary345_divisor_tail' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms no_auxiliary345_divisor_tail
/-- info: 'B686Round6A.not_four_positions345_shift' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_positions345_shift
/-- info: 'B686Round6A.not_four_positions345' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_positions345
/-- info: 'B686Round6A.not_four_support345' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_support345
/-- info: 'B686Round6A.not_four_support345_ratio' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_support345_ratio
/-- info: 'B686Round6A.solution_displacement_ge_50000' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms solution_displacement_ge_50000
/-- info: 'B686Round6A.solution_displacement_ge_50000_ratio' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms solution_displacement_ge_50000_ratio
end B686Round6A
