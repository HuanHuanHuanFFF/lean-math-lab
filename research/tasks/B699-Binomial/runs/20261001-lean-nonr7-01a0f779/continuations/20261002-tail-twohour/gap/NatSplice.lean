/-! No-import arithmetic from paper §6.2, using standard Nat cancellation.
This is used by CoreSplice; it does not supply a prime or an original Common. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699TailGapNat

theorem sub_height {n i : Nat} (hin : i ≤ n) (hheight : n < 4096 * i) :
    n - i < 4095 * i := by
  have hsum : n - i + i < 4095 * i + i := by
    simpa only [Nat.sub_add_cancel hin,
      show (4096 : Nat) = 4095 + 1 by decide, Nat.add_mul, Nat.one_mul] using hheight
  exact Nat.lt_of_add_lt_add_right hsum

theorem top_of_sub_lt {n i p : Nat} (hin : i ≤ n)
    (hlo : n - i ≤ p) (hshort : p - (n - i) < i) : p < n := by
  have hsum := Nat.add_lt_add_right hshort (n - i)
  rw [Nat.sub_add_cancel hlo] at hsum
  have hright : i + (n - i) = n := by
    rw [Nat.add_comm, Nat.sub_add_cancel hin]
  exact hright ▸ hsum

theorem top_from_gap_and_height {n i p : Nat} (hin : i ≤ n)
    (hheight : n < 4096 * i) (hyp : n - i < p)
    (hshort : 4095 * (p - (n - i)) ≤ n - i) : p < n := by
  have hmul := Nat.lt_of_le_of_lt hshort (sub_height hin hheight)
  have hdelta : p - (n - i) < i := Nat.lt_of_mul_lt_mul_left hmul
  exact top_of_sub_lt hin (Nat.le_of_lt hyp) hdelta

end B699TailGapNat

#print axioms B699TailGapNat.sub_height
#print axioms B699TailGapNat.top_of_sub_lt
#print axioms B699TailGapNat.top_from_gap_and_height
