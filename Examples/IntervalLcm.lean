import Math.B677.IntervalLcm

open B677

-- A prime in the later interval certifies inequality without evaluating either LCM.
example : intervalLcm 100 10 ≠ intervalLcm 110 10 :=
  interval_lcm_ne_of_later_prime (p := 113) (by decide) (by decide)
    (by decide) (by decide) (by decide)

-- The common LCM, if equality is assumed, has a smaller displacement-based certificate.
example {n m k : ℕ} (hk : 0 < k) (hsep : n + k ≤ m)
    (h : intervalLcm n k = intervalLcm m k) :
    intervalLcm n k ∣ intervalLcm 0 (m - n + k - 1) :=
  equal_interval_lcm_dvd_prefix hk hsep h
