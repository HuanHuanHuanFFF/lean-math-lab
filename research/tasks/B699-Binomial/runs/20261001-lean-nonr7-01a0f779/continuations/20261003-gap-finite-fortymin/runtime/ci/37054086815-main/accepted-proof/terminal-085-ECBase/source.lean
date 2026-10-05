import Mathlib.NumberTheory.PrimeCounting
import Mathlib.NumberTheory.Primorial

/-! The exact fixed 128 base from paper EC section 2.3, isolated from analysis
imports so that kernel reduction of the small finite data has a bounded peak.
No new prime-counting scan or index table is introduced. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 20000
set_option maxHeartbeats 1600000
namespace B699TailECBase

theorem primes_le_128 : Nat.primesLE 128 =
    ({2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47,
      53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107,
      109, 113, 127} : Finset Nat) := by
  decide

theorem primeCounting_128 : Nat.primeCounting 128 = 31 := by
  rw [← Nat.primesLE_card_eq_primeCounting, primes_le_128]
  decide

theorem primorial_128_lower : 2 ^ 145 ≤ primorial 128 := by
  decide

end B699TailECBase
#print axioms B699TailECBase.primes_le_128
#print axioms B699TailECBase.primeCounting_128
#print axioms B699TailECBase.primorial_128_lower
