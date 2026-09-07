import research.tasks.«B686-Four».round5.main.FourContact

namespace B686Round5Contact
open B686Round4Shift

theorem four_position_contact (n d P Q R S : ℤ)
    (heq : product 5 (n + d) = 4 * product 5 n)
    (hd : d = P * Q * R * S)
    (hP : P ∣ n + 1) (hQ : Q ∣ n + 2) (hR : R ∣ n + 4) (hS : S ∣ n + 5)
    (hPQ : IsCoprime P Q) (hPR : IsCoprime P R) (hPS : IsCoprime P S)
    (hQR : IsCoprime Q R) (hQS : IsCoprime Q S) (hRS : IsCoprime R S)
    (h6 : IsCoprime d (6 : ℤ)) :
    d ^ 11 ∣ fourAuxiliary (3 * (n + 3) - d) d := by
  have hPd : P ∣ d := by
    rw [hd]
    exact dvd_mul_of_dvd_left (dvd_mul_of_dvd_left (dvd_mul_right P Q) R) S
  have hQd : Q ∣ d := by
    rw [hd]
    exact dvd_mul_of_dvd_left (dvd_mul_of_dvd_left (dvd_mul_left Q P) R) S
  have hRd : R ∣ d := by
    rw [hd]
    exact dvd_mul_of_dvd_left (dvd_mul_left R (P * Q)) S
  have hSd : S ∣ d := by rw [hd]; exact dvd_mul_left S (P * Q * R)
  have hp : P ∣ 3 * (n + 3) - d - 6 := by
    have hid : 3 * (n + 3) - d - 6 = 3 * (n + 1) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hP 3) hPd
  have hq : Q ∣ 3 * (n + 3) - d - 3 := by
    have hid : 3 * (n + 3) - d - 3 = 3 * (n + 2) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hQ 3) hQd
  have hr : R ∣ 3 * (n + 3) - d - (-3) := by
    have hid : 3 * (n + 3) - d - (-3) = 3 * (n + 4) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hR 3) hRd
  have hs : S ∣ 3 * (n + 3) - d - (-6) := by
    have hid : 3 * (n + 3) - d - (-6) = 3 * (n + 5) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hS 3) hSd
  have hc := curve_of_original n d heq
  have hp11 := fourContact1 _ _ _ hp hPd (h6.of_isCoprime_of_dvd_left hPd) hc
  have hq11 := fourContact2 _ _ _ hq hQd (h6.of_isCoprime_of_dvd_left hQd) hc
  have hr11 := fourContact4 _ _ _ hr hRd (h6.of_isCoprime_of_dvd_left hRd) hc
  have hs11 := fourContact5 _ _ _ hs hSd (h6.of_isCoprime_of_dvd_left hSd) hc
  have hPQR := (hPR.pow.mul_left hQR.pow).mul_dvd ((hPQ.pow).mul_dvd hp11 hq11) hr11
  have hall := ((hPS.pow.mul_left hQS.pow).mul_left hRS.pow).mul_dvd hPQR hs11
  simpa only [← mul_pow, ← hd] using hall

/-- info: 'B686Round5Contact.four_position_contact' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms four_position_contact
end B686Round5Contact
