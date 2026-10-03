
/-! Structural comparison audit, not a production dependency.
Typed checks test the exact interfaces in the executing environment.
pp.all prints actual elaborated declarations only when Lean really runs.
No printed body, axiom list or runtime is precomputed or claimed here. -/

#check (Nat.not_prime_of_mul_eq :
  ∀ {a b n : Nat}, a * b = n → a ≠ 1 → b ≠ 1 → ¬ Nat.Prime n)
#check (Nat.not_prime_of_dvd_of_lt :
  ∀ {m n : Nat}, m ∣ n → 2 ≤ m → m < n → ¬ Nat.Prime n)
#check (Nat.le_add_right : ∀ n k : Nat, n ≤ n + k)
#check (Nat.le_refl : ∀ n : Nat, n ≤ n)
#check (Nat.succ_succ_ne_one : ∀ a : Nat, Nat.succ (Nat.succ a) ≠ 1)
#print axioms Nat.not_prime_of_mul_eq
#print axioms Nat.not_prime_of_dvd_of_lt
#print axioms Nat.le_add_right
#print axioms Nat.le_refl
#print axioms Nat.succ_succ_ne_one

-- Check each concrete obligation independently.
#check (⟨2442, rfl⟩ : 2 ∣ (4884 : Nat))
#check (Nat.le_refl 2 : 2 ≤ (2 : Nat))
#check (Nat.le_add_right 3 4881 : 2 < (4884 : Nat))
#check (B699NonprimeCertificates.not_prime_4884 : ¬ Nat.Prime 4884)
#print axioms B699NonprimeCertificates.not_prime_4884
set_option pp.all true in
#print B699NonprimeCertificates.not_prime_4884
#check (B699NonprimeDivisorCandidates.not_prime_4884 : ¬ Nat.Prime 4884)
#print axioms B699NonprimeDivisorCandidates.not_prime_4884
set_option pp.all true in
#print B699NonprimeDivisorCandidates.not_prime_4884

-- Check each concrete obligation independently.
#check (⟨977, rfl⟩ : 5 ∣ (4885 : Nat))
#check (Nat.le_add_right 2 3 : 2 ≤ (5 : Nat))
#check (Nat.le_add_right 6 4879 : 5 < (4885 : Nat))
#check (B699NonprimeCertificates.not_prime_4885 : ¬ Nat.Prime 4885)
#print axioms B699NonprimeCertificates.not_prime_4885
set_option pp.all true in
#print B699NonprimeCertificates.not_prime_4885
#check (B699NonprimeDivisorCandidates.not_prime_4885 : ¬ Nat.Prime 4885)
#print axioms B699NonprimeDivisorCandidates.not_prime_4885
set_option pp.all true in
#print B699NonprimeDivisorCandidates.not_prime_4885

-- Check each concrete obligation independently.
#check (⟨2443, rfl⟩ : 2 ∣ (4886 : Nat))
#check (Nat.le_refl 2 : 2 ≤ (2 : Nat))
#check (Nat.le_add_right 3 4883 : 2 < (4886 : Nat))
#check (B699NonprimeCertificates.not_prime_4886 : ¬ Nat.Prime 4886)
#print axioms B699NonprimeCertificates.not_prime_4886
set_option pp.all true in
#print B699NonprimeCertificates.not_prime_4886
#check (B699NonprimeDivisorCandidates.not_prime_4886 : ¬ Nat.Prime 4886)
#print axioms B699NonprimeDivisorCandidates.not_prime_4886
set_option pp.all true in
#print B699NonprimeDivisorCandidates.not_prime_4886

-- Check each concrete obligation independently.
#check (⟨1629, rfl⟩ : 3 ∣ (4887 : Nat))
#check (Nat.le_add_right 2 1 : 2 ≤ (3 : Nat))
#check (Nat.le_add_right 4 4883 : 3 < (4887 : Nat))
#check (B699NonprimeCertificates.not_prime_4887 : ¬ Nat.Prime 4887)
#print axioms B699NonprimeCertificates.not_prime_4887
set_option pp.all true in
#print B699NonprimeCertificates.not_prime_4887
#check (B699NonprimeDivisorCandidates.not_prime_4887 : ¬ Nat.Prime 4887)
#print axioms B699NonprimeDivisorCandidates.not_prime_4887
set_option pp.all true in
#print B699NonprimeDivisorCandidates.not_prime_4887

-- Check each concrete obligation independently.
#check (⟨2444, rfl⟩ : 2 ∣ (4888 : Nat))
#check (Nat.le_refl 2 : 2 ≤ (2 : Nat))
#check (Nat.le_add_right 3 4885 : 2 < (4888 : Nat))
#check (B699NonprimeCertificates.not_prime_4888 : ¬ Nat.Prime 4888)
#print axioms B699NonprimeCertificates.not_prime_4888
set_option pp.all true in
#print B699NonprimeCertificates.not_prime_4888
#check (B699NonprimeDivisorCandidates.not_prime_4888 : ¬ Nat.Prime 4888)
#print axioms B699NonprimeDivisorCandidates.not_prime_4888
set_option pp.all true in
#print B699NonprimeDivisorCandidates.not_prime_4888

example : ¬ Nat.Prime (4884 + 1) :=
  B699NonprimeCertificates.not_prime_4885

example : ¬ Nat.Prime (4885 + 1) :=
  B699NonprimeCertificates.not_prime_4886

example : ¬ Nat.Prime (4886 + 1) :=
  B699NonprimeCertificates.not_prime_4887

example : ¬ Nat.Prime (4887 + 1) :=
  B699NonprimeCertificates.not_prime_4888

example : ¬ Nat.Prime (4884 + 1) :=
  B699NonprimeDivisorCandidates.not_prime_4885

example : ¬ Nat.Prime (4885 + 1) :=
  B699NonprimeDivisorCandidates.not_prime_4886

example : ¬ Nat.Prime (4886 + 1) :=
  B699NonprimeDivisorCandidates.not_prime_4887

example : ¬ Nat.Prime (4887 + 1) :=
  B699NonprimeDivisorCandidates.not_prime_4888
