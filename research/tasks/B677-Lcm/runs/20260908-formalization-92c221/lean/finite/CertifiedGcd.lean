import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.ModularRows

namespace B677Finite

/-- A gcd certificate verified with only multiplication, remainder and comparison. -/
def gcdWitnessCheck (a x d inverse : ℕ) : Bool :=
  decide (a % d = 0) && decide (x % d = 0) &&
    (decide (d = x) || decide ((a * inverse) % x = d))

theorem gcdWitnessCheck_sound {a x d inverse : ℕ}
    (h : gcdWitnessCheck a x d inverse = true) : Nat.gcd a x = d := by
  simp only [gcdWitnessCheck, Bool.and_eq_true, Bool.or_eq_true, decide_eq_true_eq] at h
  have hda : d ∣ a := Nat.dvd_of_mod_eq_zero h.1.1
  have hdx : d ∣ x := Nat.dvd_of_mod_eq_zero h.1.2
  apply Nat.dvd_antisymm
  · rcases h.2 with rfl | he
    · exact Nat.gcd_dvd_right _ _
    · rw [← he]
      exact (Nat.dvd_mod_iff (Nat.gcd_dvd_right a x)).mpr
        (dvd_mul_of_dvd_left (Nat.gcd_dvd_left a x) inverse)
  · exact Nat.dvd_gcd hda hdx

structure TransitionCertificate where
  width : ℕ
  divisors : IndexTree
  inverses : IndexTree

def witnessedModNextCheck (depth N k width modulus : ℕ)
    (prev c : ModCertificate) (t : TransitionCertificate) : Bool :=
  decide (c.initialLcm = Nat.lcm prev.initialLcm (k + 1)) &&
  allTree depth 0 (fun n ↦ if n < N then
    gcdWitnessCheck prev.initialLcm (n + k + 1)
      (indexEntry t.width t.divisors n) (indexEntry t.width t.inverses n) &&
    decide (modValues width c n =
      (modValues width prev n * ((n + k + 1) / indexEntry t.width t.divisors n)) % modulus)
    else true)

theorem witnessedModNextCheck_sound {depth N k width modulus : ℕ}
    {prev c : ModCertificate} {t : TransitionCertificate}
    (hN : N ≤ 2 ^ depth) (hp : ModRep N k width modulus prev)
    (h : witnessedModNextCheck depth N k width modulus prev c t = true) :
    ModRep N (k + 1) width modulus c := by
  simp only [witnessedModNextCheck, Bool.and_eq_true, decide_eq_true_eq] at h
  constructor
  · rw [h.1, hp.1, interval_lcm_succ]
    simp
  · intro n hn
    have hc := allTree_sound h.2 (i := n) (by omega)
    simp only [Nat.zero_add, if_pos hn, Bool.and_eq_true, decide_eq_true_eq] at hc
    have hd := gcdWitnessCheck_sound hc.1
    rw [hc.2, ← hd, hp.2 n hn, hp.1, ← interval_lcm_mod_step]

theorem allTree_join {depth offset : ℕ} {p : ℕ → Bool}
    (hl : allTree depth offset p = true)
    (hr : allTree depth (offset + 2 ^ depth) p = true) :
    allTree (depth + 1) offset p = true := by
  simp only [allTree, Bool.and_eq_true]
  exact ⟨hl, hr⟩

theorem allTree_outside {depth offset bound : ℕ} {p : ℕ → Bool} (h : bound ≤ offset) :
    allTree depth offset (fun n ↦ if n < bound then p n else true) = true := by
  induction depth generalizing offset with
  | zero => simp [allTree, show ¬offset < bound by omega]
  | succ depth ih => exact allTree_join (ih h) (ih (h.trans (Nat.le_add_right _ _)))

def groupPointCheck (N : ℕ) (values : ℕ → ℕ) (c : TreeRowCertificate) (i : ℕ) : Bool :=
  if i < c.groups then
    decide (indexEntry c.width c.first i < N) &&
      (if i + 1 < c.groups then
        decide (values (indexEntry c.width c.first i) <
          values (indexEntry c.width c.first (i + 1))) else true) else true

def coverPointCheck (N k : ℕ) (values : ℕ → ℕ) (c : TreeRowCertificate) (n : ℕ) : Bool :=
  if n < N then
    decide (indexEntry c.width c.rank n < c.groups) &&
    decide (values (indexEntry c.width c.first (indexEntry c.width c.rank n)) = values n) &&
    decide (indexEntry c.width c.first (indexEntry c.width c.rank n) ≤ n) &&
    decide (n < indexEntry c.width c.first (indexEntry c.width c.rank n) + k) else true

theorem sortedFunctionCheck_of_parts {depth N k : ℕ} {values : ℕ → ℕ}
    {c : TreeRowCertificate} (hsize : c.groups ≤ 2 ^ depth)
    (hg : allTree depth 0 (groupPointCheck N values c) = true)
    (hc : allTree depth 0 (coverPointCheck N k values c) = true) :
    sortedFunctionCheck depth N k values c = true := by
  simp only [sortedFunctionCheck, Bool.and_eq_true, decide_eq_true_eq]
  exact ⟨⟨hsize, hg⟩, hc⟩

def initialPointCheck (N width modulus : ℕ) (c : ModCertificate) (n : ℕ) : Bool :=
  if n < N then decide (modValues width c n = (n + 1) % modulus) else true

theorem modInitialCheck_of_parts {depth N width modulus : ℕ} {c : ModCertificate}
    (hp : c.initialLcm = 1)
    (hc : allTree depth 0 (initialPointCheck N width modulus c) = true) :
    modInitialCheck depth N width modulus c = true := by
  simp only [modInitialCheck, Bool.and_eq_true, decide_eq_true_eq]
  exact ⟨hp, hc⟩

def nextPointCheck (N k width modulus : ℕ) (prev c : ModCertificate)
    (t : TransitionCertificate) (n : ℕ) : Bool :=
  if n < N then
    gcdWitnessCheck prev.initialLcm (n + k + 1)
      (indexEntry t.width t.divisors n) (indexEntry t.width t.inverses n) &&
    decide (modValues width c n =
      (modValues width prev n * ((n + k + 1) / indexEntry t.width t.divisors n)) % modulus)
    else true

theorem witnessedModNextCheck_of_parts {depth N k width modulus : ℕ}
    {prev c : ModCertificate} {t : TransitionCertificate}
    (hp : c.initialLcm = Nat.lcm prev.initialLcm (k + 1))
    (hc : allTree depth 0 (nextPointCheck N k width modulus prev c t) = true) :
    witnessedModNextCheck depth N k width modulus prev c t = true := by
  simp only [witnessedModNextCheck, Bool.and_eq_true, decide_eq_true_eq]
  exact ⟨hp, hc⟩

/-- info: 'B677Finite.witnessedModNextCheck_sound' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms witnessedModNextCheck_sound

end B677Finite
