import Mathlib.Data.Nat.Prime.Defs
import CoreOnlyDivisorCertificates

namespace B699CoreBridge

theorem not_prime_4884 : ¬ Nat.Prime 4884 :=
  fun h => B699CoreOnly.not_primeByDivisors_4884 (Nat.prime_def.mp h)

theorem not_prime_4885 : ¬ Nat.Prime 4885 :=
  fun h => B699CoreOnly.not_primeByDivisors_4885 (Nat.prime_def.mp h)

theorem not_prime_4886 : ¬ Nat.Prime 4886 :=
  fun h => B699CoreOnly.not_primeByDivisors_4886 (Nat.prime_def.mp h)

theorem not_prime_4887 : ¬ Nat.Prime 4887 :=
  fun h => B699CoreOnly.not_primeByDivisors_4887 (Nat.prime_def.mp h)

theorem not_prime_4888 : ¬ Nat.Prime 4888 :=
  fun h => B699CoreOnly.not_primeByDivisors_4888 (Nat.prime_def.mp h)

end B699CoreBridge
