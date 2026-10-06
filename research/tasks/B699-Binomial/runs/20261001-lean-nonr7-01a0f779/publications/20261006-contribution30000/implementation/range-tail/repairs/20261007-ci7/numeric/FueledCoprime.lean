import Mathlib.Data.Nat.GCD.Basic
set_option autoImplicit false
namespace Contribution.FueledCoprime
def fueledCoprime : Nat → Nat → Nat → Bool
  | 0, _, _ => false
  | fuel+1, a, b => if a=0 then decide (b=1) else fueledCoprime fuel (b % a) a
theorem fueledCoprime_sound {fuel a b : Nat} (hc : fueledCoprime fuel a b=true) : Nat.gcd a b=1 := by
  induction fuel generalizing a b with
  | zero => simp [fueledCoprime] at hc
  | succ fuel ih =>
      by_cases ha : a=0
      · have hb : b=1 := of_decide_eq_true (by simpa only [fueledCoprime,if_pos ha] using hc)
        rw [ha,Nat.gcd_zero_left,hb]
      · have ht : fueledCoprime fuel (b % a) a=true := by
          simpa only [fueledCoprime,if_neg ha] using hc
        exact (Nat.gcd_rec a b).trans (ih ht)
end Contribution.FueledCoprime
