import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.ExactRows

namespace B677Finite

def fastPrimeCheck (n : ℕ) : Bool := decide (2 ≤ n) && decide (n.minFac = n)

lemma fastPrimeCheck_sound {n : ℕ} (h : fastPrimeCheck n = true) : n.Prime := by
  simpa only [fastPrimeCheck, Bool.and_eq_true, decide_eq_true_eq,
    Nat.prime_def_minFac] using h

def primeChainCheck (limit step : ℕ) (previous : ℕ) : List ℕ → Bool
  | [] => decide (limit ≤ previous)
  | q :: qs => fastPrimeCheck q && decide (previous < q) &&
      decide (q ≤ previous + step) && primeChainCheck limit step q qs

theorem primeChainCheck_sound {limit step previous m : ℕ} {qs : List ℕ}
    (hc : primeChainCheck limit step previous qs = true)
    (hprevious : previous ≤ m) (hm : m < limit) :
    ∃ p : ℕ, p.Prime ∧ m < p ∧ p ≤ m + step := by
  induction qs generalizing previous with
  | nil => simp [primeChainCheck] at hc; omega
  | cons q qs ih =>
    simp only [primeChainCheck, Bool.and_eq_true, decide_eq_true_eq] at hc
    by_cases hq : m < q
    · exact ⟨q, fastPrimeCheck_sound (by tauto), hq, by omega⟩
    · apply ih (by tauto) (by omega)

theorem finite_noncollision_of_certificates {N : ℕ} {cs : List RowCertificate} {ps : List ℕ}
    (hlen : cs.length = 71)
    (hrows : checkRows 1 (firstRow N) cs = true)
    (hprimes : primeChainCheck N 72 0 ps = true) :
    ∀ n m k : ℕ, 0 < k → n + k ≤ m → m < N →
      B677.intervalLcm n k ≠ B677.intervalLcm m k := by
  intro n m k hk hsep hm
  by_cases hsmall : k ≤ 71
  · exact checked_rows_noncollision hrows n m k hk (by omega) hsep hm
  · obtain ⟨p, hp, hpm, hpk⟩ := primeChainCheck_sound hprimes (Nat.zero_le m) hm
    exact B677.interval_lcm_ne_of_later_prime hk hsep hp hpm (by omega)

/-- info: 'B677Finite.finite_noncollision_of_certificates' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms finite_noncollision_of_certificates

end B677Finite
