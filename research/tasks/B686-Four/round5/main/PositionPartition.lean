import research.tasks.«B686-Four».round5.main.FourOriginal
import Mathlib.Algebra.GCDMonoid.Nat

namespace B686Round5Partition

theorem coprime_slot_groups (n d A B i j : ℕ)
    (hi : 1 ≤ i) (hij : i < j) (hj : j ≤ 5)
    (hA : A ∣ n + i) (hB : B ∣ n + j) (hAd : A ∣ d)
    (h6 : Nat.Coprime d 6) : Nat.Coprime A B := by
  apply Nat.coprime_of_dvd
  intro p hp hpA hpB
  have hpi := dvd_trans hpA hA
  have hpj := dvd_trans hpB hB
  have hpij : p ∣ j - i := by
    have h := Nat.dvd_sub hpj hpi
    have he : n + j - (n + i) = j - i := by omega
    simpa only [he] using h
  have hcases : j - i = 1 ∨ j - i = 2 ∨ j - i = 3 ∨ j - i = 4 := by omega
  have h36 : j - i ∣ 36 := by
    rcases hcases with h | h | h | h <;> rw [h] <;> norm_num
  have hp36 : p ∣ 6 ^ 2 := by norm_num; exact dvd_trans hpij h36
  have hp6 : p ∣ 6 := hp.dvd_of_dvd_pow hp36
  exact (hp.coprime_iff_not_dvd.mp (h6.coprime_dvd_left (dvd_trans hpA hAd))) hp6

theorem split_four_positions (n d : ℕ) (h6 : Nat.Coprime d 6)
    (hdiv : d ∣ (n + 1) * (n + 2) * (n + 4) * (n + 5)) :
    ∃ P Q R S : ℕ, d = P * Q * R * S ∧
      P ∣ n + 1 ∧ Q ∣ n + 2 ∧ R ∣ n + 4 ∧ S ∣ n + 5 ∧
      Nat.Coprime P Q ∧ Nat.Coprime P R ∧ Nat.Coprime P S ∧
      Nat.Coprime Q R ∧ Nat.Coprime Q S ∧ Nat.Coprime R S := by
  obtain ⟨T, S, hT, hS, hd⟩ := exists_dvd_and_dvd_of_dvd_mul hdiv
  obtain ⟨U, R, hU, hR, hT⟩ := exists_dvd_and_dvd_of_dvd_mul hT
  obtain ⟨P, Q, hP, hQ, hU⟩ := exists_dvd_and_dvd_of_dvd_mul hU
  have heq : d = P * Q * R * S := by rw [hd, hT, hU]
  have hPd : P ∣ d := by
    rw [heq]
    exact dvd_mul_of_dvd_left (dvd_mul_of_dvd_left (dvd_mul_right P Q) R) S
  have hQd : Q ∣ d := by
    rw [heq]
    exact dvd_mul_of_dvd_left (dvd_mul_of_dvd_left (dvd_mul_left Q P) R) S
  have hRd : R ∣ d := by rw [heq]; exact dvd_mul_of_dvd_left (dvd_mul_left R (P * Q)) S
  refine ⟨P, Q, R, S, heq, hP, hQ, hR, hS, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · exact coprime_slot_groups n d P Q 1 2 (by omega) (by omega) (by omega) hP hQ hPd h6
  · exact coprime_slot_groups n d P R 1 4 (by omega) (by omega) (by omega) hP hR hPd h6
  · exact coprime_slot_groups n d P S 1 5 (by omega) (by omega) (by omega) hP hS hPd h6
  · exact coprime_slot_groups n d Q R 2 4 (by omega) (by omega) (by omega) hQ hR hQd h6
  · exact coprime_slot_groups n d Q S 2 5 (by omega) (by omega) (by omega) hQ hS hQd h6
  · exact coprime_slot_groups n d R S 4 5 (by omega) (by omega) (by omega) hR hS hRd h6

/-- info: 'B686Round5Partition.coprime_slot_groups' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms coprime_slot_groups
/-- info: 'B686Round5Partition.split_four_positions' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms split_four_positions
end B686Round5Partition
