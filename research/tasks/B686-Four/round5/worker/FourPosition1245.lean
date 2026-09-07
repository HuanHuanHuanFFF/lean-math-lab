import research.tasks.«B686-Four».round5.main.FourOriginal
import research.tasks.«B686-Four».round5.worker.FourContactTail
import research.tasks.«B686-Four».round5.worker.ThreePosition124

/-! Exclude arbitrary many displacement primes grouped in the four noncentral
positions, with displacement coprime to6 and pairwise coprime groups.
Natural nonoverlap and rational ratio match the original k=5 question. -/
namespace B686Round5FourPositions
open B686Round4K5 B686Round5Contact B686Round5Tail B686Round5FourTail
open B686Round5Positions

theorem optimized_eq_fourAuxiliary (z d : ℤ) : optimizedFour z d = fourAuxiliary z d := by
  unfold optimizedFour fourAuxiliary
  ring

theorem no_four_contact_tail (n d : ℤ) (hn : 0 ≤ n) (hd : 20000 ≤ d)
    (heq : p5 (n + d) = 4 * p5 n)
    (hdiv : d ^ 11 ∣ fourAuxiliary (error n d 3) d) : False := by
  obtain ⟨hl, hu⟩ := refined_strip n d hn hd heq
  obtain ⟨hlo, hneg⟩ := four_bounds (error n d 3) d hd hl hu
  rw [optimized_eq_fourAuxiliary] at hlo hneg
  have hsize : d ^ 11 ≤ -fourAuxiliary (error n d 3) d :=
    Int.le_of_dvd (by omega) (dvd_neg.mpr hdiv)
  have hd0 : 0 ≤ d := by omega
  have h := mul_le_mul_of_nonneg_right hd (pow_nonneg hd0 10)
  nlinarith only [hlo,hsize,h]

theorem not_four_four_positions_shift (n d P Q R S : ℕ) (hd5 : 5 ≤ d)
    (hd : d = P * Q * R * S)
    (hP : P ∣ n + 1) (hQ : Q ∣ n + 2) (hR : R ∣ n + 4) (hS : S ∣ n + 5)
    (hPQ : Nat.Coprime P Q) (hPR : Nat.Coprime P R) (hPS : Nat.Coprime P S)
    (hQR : Nat.Coprime Q R) (hQS : Nat.Coprime Q S) (hRS : Nat.Coprime R S)
    (h6 : Nat.Coprime d 6) :
    (∏ i ∈ Finset.Icc 1 (5 : ℕ), (n + d + i)) ≠
      4 * (∏ i ∈ Finset.Icc 1 (5 : ℕ), (n + i)) := by
  by_cases hsmall : d < 20000
  · exact B686Round5Finite.not_four_below_20000 n d hd5 hsmall
  intro heq
  have hp' := B686Round4Shift.nat_shift_equation 5 n d heq
  have hp : p5 ((n : ℤ) + d) = 4 * p5 n := by
    simpa only [p5_eq_shift_product] using hp'
  have hdiv := four_position_contact n d P Q R S hp' (by exact_mod_cast hd)
    (by exact_mod_cast hP) (by exact_mod_cast hQ) (by exact_mod_cast hR)
    (by exact_mod_cast hS) hPQ.isCoprime hPR.isCoprime hPS.isCoprime
    hQR.isCoprime hQS.isCoprime hRS.isCoprime h6.isCoprime
  exact no_four_contact_tail n d (by omega) (by omega) hp hdiv

theorem not_four_four_positions (n m P Q R S : ℕ) (hm : n + 5 ≤ m)
    (hd : m - n = P * Q * R * S)
    (hP : P ∣ n + 1) (hQ : Q ∣ n + 2) (hR : R ∣ n + 4) (hS : S ∣ n + 5)
    (hPQ : Nat.Coprime P Q) (hPR : Nat.Coprime P R) (hPS : Nat.Coprime P S)
    (hQR : Nat.Coprime Q R) (hQS : Nat.Coprime Q S) (hRS : Nat.Coprime R S)
    (h6 : Nat.Coprime (m - n) 6) :
    B686Target.product 5 m ≠ 4 * B686Target.product 5 n := by
  have hadd : n + (m - n) = m := by omega
  simpa only [hadd, B686Target.product] using
    not_four_four_positions_shift n (m - n) P Q R S (by omega) hd
      hP hQ hR hS hPQ hPR hPS hQR hQS hRS h6

theorem not_four_four_positions_ratio (n m P Q R S : ℕ) (hm : n + 5 ≤ m)
    (hd : m - n = P * Q * R * S)
    (hP : P ∣ n + 1) (hQ : Q ∣ n + 2) (hR : R ∣ n + 4) (hS : S ∣ n + 5)
    (hPQ : Nat.Coprime P Q) (hPR : Nat.Coprime P R) (hPS : Nat.Coprime P S)
    (hQR : Nat.Coprime Q R) (hQS : Nat.Coprime Q S) (hRS : Nat.Coprime R S)
    (h6 : Nat.Coprime (m - n) 6) :
    (4 : ℚ) ≠ (B686Target.product 5 m : ℚ) / (B686Target.product 5 n : ℚ) := by
  intro heq
  exact not_four_four_positions n m P Q R S hm hd hP hQ hR hS hPQ hPR hPS hQR hQS hRS h6
    ((B686Target.ratio_iff 5 n m).mp heq)

/-- info: 'B686Round5FourPositions.no_four_contact_tail' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms no_four_contact_tail
/-- info: 'B686Round5FourPositions.not_four_four_positions_shift' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_four_positions_shift
/-- info: 'B686Round5FourPositions.not_four_four_positions_ratio' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_four_positions_ratio
end B686Round5FourPositions
