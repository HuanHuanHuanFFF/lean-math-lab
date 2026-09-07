import research.tasks.«B686-Four».round4.main.K5CubicSlots

/-! A fifth-order central-slot congruence; a necessary condition, not a full solution. -/
namespace B686Round4Fifth
open B686Round4Shift B686Round4Cubic

theorem central_identity (n d : ℤ) :
    36 * (9 * err n d 3 + 25 * d ^ 3) =
      err n d 3 * d ^ 2 * (40 * (err n d 3) ^ 2 + 200 * err n d 3 * d + 420 * d ^ 2 - 540) +
      (err n d 3) ^ 3 * (45 - (err n d 3) ^ 2) + 340 * d ^ 5 -
      81 * (product 5 (n + d) - 4 * product 5 n) := by
  rw [product_five, product_five]
  norm_num [err]
  ring

theorem central_fifth (n d q : ℤ) (hqd : q ∣ d) (hqz : q ^ 3 ∣ err n d 3)
    (hc : IsCoprime q (36 : ℤ))
    (heq : product 5 (n + d) = 4 * product 5 n) :
    q ^ 5 ∣ 9 * err n d 3 + 25 * d ^ 3 := by
  have hd2 : q ^ 2 ∣ d ^ 2 := pow_dvd_pow_of_dvd hqd 2
  have hzd2 : q ^ 5 ∣ err n d 3 * d ^ 2 := by
    simpa only [← pow_add] using mul_dvd_mul hqz hd2
  have hz3 : q ^ 5 ∣ (err n d 3) ^ 3 := by
    obtain ⟨a, ha⟩ := hqz
    refine ⟨q ^ 4 * a ^ 3, ?_⟩
    rw [ha]
    ring
  have hd5 : q ^ 5 ∣ d ^ 5 := pow_dvd_pow_of_dvd hqd 5
  have hsum := dvd_add
    (dvd_add (dvd_mul_of_dvd_left hzd2
      (40 * (err n d 3) ^ 2 + 200 * err n d 3 * d + 420 * d ^ 2 - 540))
      (dvd_mul_of_dvd_left hz3 (45 - (err n d 3) ^ 2)))
    (dvd_mul_of_dvd_right hd5 340)
  have hid := central_identity n d
  rw [heq, sub_self, mul_zero, sub_zero] at hid
  rw [← hid] at hsum
  exact (hc.pow_left (m := 5)).dvd_of_dvd_mul_left hsum

/-- info: 'B686Round4Fifth.central_identity' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms central_identity
/-- info: 'B686Round4Fifth.central_fifth' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms central_fifth

end B686Round4Fifth
