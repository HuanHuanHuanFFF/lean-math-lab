import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.TreeRows

namespace B677Finite

set_option maxHeartbeats 1500000

lemma interval_gcd_next (n k : ℕ) :
    Nat.gcd (B677.intervalLcm n k) (n + k + 1) =
      Nat.gcd (B677.intervalLcm 0 k) (n + k + 1) := by
  by_cases hk : k = 0
  · subst k
    simp [B677.interval_lcm_eq_range]
  have hkp : 0 < k := by omega
  have hnon (t : ℕ) : (Finset.Ioc t (t + k)).Nonempty :=
    ⟨t + 1, Finset.mem_Ioc.mpr (by omega)⟩
  have hnz (t : ℕ) : ∀ a ∈ Finset.Ioc t (t + k), a ≠ 0 := by
    intro a ha
    have := Finset.mem_Ioc.mp ha
    omega
  apply Nat.dvd_antisymm
  · apply (Nat.dvd_iff_prime_pow_dvd_dvd _ _).mpr
    intro p e hp hd
    obtain ⟨ha, hx⟩ := Nat.dvd_gcd_iff.mp hd
    obtain ⟨a, ham, hpa⟩ := B677.prime_pow_occurs_in_lcm (hnon n) (hnz n) hp ha
    have ham' := Finset.mem_Ioc.mp ham
    apply Nat.dvd_gcd
    · exact (Nat.dvd_sub hx hpa).trans
        (Finset.dvd_lcm (s := Finset.Ioc 0 (0 + k)) (f := id)
          (show n + k + 1 - a ∈ Finset.Ioc 0 (0 + k) from
            Finset.mem_Ioc.mpr (by omega)))
    · exact hx
  · apply (Nat.dvd_iff_prime_pow_dvd_dvd _ _).mpr
    intro p e hp hd
    obtain ⟨ha, hx⟩ := Nat.dvd_gcd_iff.mp hd
    obtain ⟨a, ham, hpa⟩ := B677.prime_pow_occurs_in_lcm (hnon 0) (hnz 0) hp ha
    have ham' := Finset.mem_Ioc.mp ham
    apply Nat.dvd_gcd
    · exact (Nat.dvd_sub hx hpa).trans
        (Finset.dvd_lcm (s := Finset.Ioc n (n + k)) (f := id)
          (show n + k + 1 - a ∈ Finset.Ioc n (n + k) from
            Finset.mem_Ioc.mpr (by omega)))
    · exact hx

/-- An exact update whose gcd only uses the length-dependent initial LCM. -/
theorem interval_lcm_mul_step (n k : ℕ) :
    B677.intervalLcm n (k + 1) = B677.intervalLcm n k *
      ((n + k + 1) / Nat.gcd (B677.intervalLcm 0 k) (n + k + 1)) := by
  rw [interval_lcm_succ, Nat.lcm_eq_mul_div,
    Nat.mul_div_assoc _ (Nat.gcd_dvd_right _ _), interval_gcd_next]

theorem interval_lcm_mod_step (n k modulus : ℕ) :
    B677.intervalLcm n (k + 1) % modulus =
      ((B677.intervalLcm n k % modulus) *
        ((n + k + 1) / Nat.gcd (B677.intervalLcm 0 k) (n + k + 1))) % modulus := by
  rw [interval_lcm_mul_step, Nat.mod_mul_mod]

structure ModCertificate where
  values : IndexTree
  sorted : TreeRowCertificate
  initialLcm : ℕ

def modValues (width : ℕ) (c : ModCertificate) : ℕ → ℕ :=
  indexEntry width c.values

def sortedFunctionCheck (depth N k : ℕ) (values : ℕ → ℕ)
    (c : TreeRowCertificate) : Bool :=
  decide (c.groups ≤ 2 ^ depth) &&
  allTree depth 0 (fun i ↦ if i < c.groups then
    decide (indexEntry c.width c.first i < N) &&
      (if i + 1 < c.groups then
        decide (values (indexEntry c.width c.first i) <
          values (indexEntry c.width c.first (i + 1))) else true) else true) &&
  allTree depth 0 (fun n ↦ if n < N then
    decide (indexEntry c.width c.rank n < c.groups) &&
    decide (values (indexEntry c.width c.first (indexEntry c.width c.rank n)) = values n) &&
    decide (indexEntry c.width c.first (indexEntry c.width c.rank n) ≤ n) &&
    decide (n < indexEntry c.width c.first (indexEntry c.width c.rank n) + k) else true)

theorem sortedFunctionCheck_sound {depth N k n m : ℕ} {values : ℕ → ℕ}
    {c : TreeRowCertificate} (h : sortedFunctionCheck depth N k values c = true)
    (hN : N ≤ 2 ^ depth) (hn : n < N) (hm : m < N) (hsep : n + k ≤ m) :
    values n ≠ values m := by
  simp only [sortedFunctionCheck, Bool.and_eq_true, decide_eq_true_eq] at h
  have hf (i : ℕ) (hi : i + 1 < c.groups) :
      values (indexEntry c.width c.first i) < values (indexEntry c.width c.first (i + 1)) := by
    have hc := allTree_sound h.1.2 (i := i) (by omega)
    simp only [Nat.zero_add, if_pos (show i < c.groups by omega), if_pos hi,
      Bool.and_eq_true, decide_eq_true_eq] at hc
    exact hc.2
  have hn' := allTree_sound h.2 (i := n) (by omega)
  have hm' := allTree_sound h.2 (i := m) (by omega)
  simp only [Nat.zero_add, if_pos hn, if_pos hm, Bool.and_eq_true, decide_eq_true_eq] at hn' hm'
  intro heq
  have hr : indexEntry c.width c.rank n = indexEntry c.width c.rank m := by
    rcases lt_trichotomy (indexEntry c.width c.rank n) (indexEntry c.width c.rank m) with
      hlt | he | hgt
    · have ht := strictly_increasing_of_adjacent hf hlt (by omega)
      omega
    · exact he
    · have ht := strictly_increasing_of_adjacent hf hgt (by omega)
      omega
  rw [hr] at hn'
  omega

def ModRep (N k width modulus : ℕ) (c : ModCertificate) : Prop :=
  c.initialLcm = B677.intervalLcm 0 k ∧
    ∀ n, n < N → modValues width c n = B677.intervalLcm n k % modulus

def modInitialCheck (depth N width modulus : ℕ) (c : ModCertificate) : Bool :=
  decide (c.initialLcm = 1) && allTree depth 0 (fun n ↦ if n < N then
    decide (modValues width c n = (n + 1) % modulus) else true)

theorem modInitialCheck_sound {depth N width modulus : ℕ} {c : ModCertificate}
    (hN : N ≤ 2 ^ depth) (h : modInitialCheck depth N width modulus c = true) :
    ModRep N 1 width modulus c := by
  simp only [modInitialCheck, Bool.and_eq_true, decide_eq_true_eq] at h
  constructor
  · simpa [B677.interval_lcm_eq_range] using h.1
  · intro n hn
    have hc := allTree_sound h.2 (i := n) (by omega)
    simpa [hn, B677.interval_lcm_eq_range] using hc

def modNextCheck (depth N k width modulus : ℕ) (prev c : ModCertificate) : Bool :=
  decide (c.initialLcm = Nat.lcm prev.initialLcm (k + 1)) &&
  allTree depth 0 (fun n ↦ if n < N then
    decide (modValues width c n =
      (modValues width prev n * ((n + k + 1) / Nat.gcd prev.initialLcm (n + k + 1))) % modulus)
    else true)

theorem modNextCheck_sound {depth N k width modulus : ℕ} {prev c : ModCertificate}
    (hN : N ≤ 2 ^ depth) (hp : ModRep N k width modulus prev)
    (h : modNextCheck depth N k width modulus prev c = true) :
    ModRep N (k + 1) width modulus c := by
  simp only [modNextCheck, Bool.and_eq_true, decide_eq_true_eq] at h
  constructor
  · rw [h.1, hp.1, interval_lcm_succ]
    simp
  · intro n hn
    have hc := allTree_sound h.2 (i := n) (by omega)
    simp only [Nat.zero_add, if_pos hn, decide_eq_true_eq] at hc
    rw [hc, hp.2 n hn, hp.1, ← interval_lcm_mod_step]

theorem mod_row_noncollision {depth N k width modulus : ℕ} {c : ModCertificate}
    (hN : N ≤ 2 ^ depth) (hp : ModRep N k width modulus c)
    (hc : sortedFunctionCheck depth N k (modValues width c) c.sorted = true) :
    ∀ n m : ℕ, n + k ≤ m → m < N → B677.intervalLcm n k ≠ B677.intervalLcm m k := by
  intro n m hsep hm heq
  have hn : n < N := by omega
  apply sortedFunctionCheck_sound hc hN hn hm hsep
  rw [hp.2 n hn, hp.2 m hm, heq]

def modCheckRows (depth N k width modulus : ℕ) (c : ModCertificate) :
    List ModCertificate → Bool
  | [] => sortedFunctionCheck depth N k (modValues width c) c.sorted
  | next :: cs => sortedFunctionCheck depth N k (modValues width c) c.sorted &&
      modNextCheck depth N k width modulus c next &&
      modCheckRows depth N (k + 1) width modulus next cs

theorem modCheckRows_sound {depth N k width modulus : ℕ} {c : ModCertificate}
    {cs : List ModCertificate} (hN : N ≤ 2 ^ depth) (hp : ModRep N k width modulus c)
    (hc : modCheckRows depth N k width modulus c cs = true) :
    ∀ n m length : ℕ, k ≤ length → length ≤ k + cs.length → n + length ≤ m → m < N →
      B677.intervalLcm n length ≠ B677.intervalLcm m length := by
  induction cs generalizing k c with
  | nil =>
    intro n m length hl hu hsep hm
    have he : length = k := by simpa using Nat.le_antisymm hu hl
    subst length
    exact mod_row_noncollision hN hp hc n m hsep hm
  | cons next cs ih =>
    simp only [modCheckRows, Bool.and_eq_true] at hc
    intro n m length hl hu hsep hm
    by_cases he : length = k
    · subst length
      exact mod_row_noncollision hN hp hc.1.1 n m hsep hm
    · apply ih (modNextCheck_sound hN hp hc.1.2) hc.2 n m length (by omega)
        (by simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using hu) hsep hm

theorem checked_mod_rows_noncollision {depth N width modulus : ℕ} {c : ModCertificate}
    {cs : List ModCertificate} (hN : N ≤ 2 ^ depth)
    (hi : modInitialCheck depth N width modulus c = true)
    (hc : modCheckRows depth N 1 width modulus c cs = true) :
    ∀ n m k : ℕ, 0 < k → k ≤ 1 + cs.length → n + k ≤ m → m < N →
      B677.intervalLcm n k ≠ B677.intervalLcm m k :=
  modCheckRows_sound hN (modInitialCheck_sound hN hi) hc

/-- info: 'B677Finite.checked_mod_rows_noncollision' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms checked_mod_rows_noncollision

end B677Finite
