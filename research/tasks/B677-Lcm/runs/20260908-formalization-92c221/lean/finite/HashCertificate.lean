import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.CertifiedGcd

namespace B677Finite

/-- Untrusted lookup data. No injectivity assumption is made about this hash. -/
structure LookupCertificate where
  width : ℕ
  directCut : ℕ
  bucketMod : ℕ
  slotMod : ℕ
  seeds : IndexTree
  representatives : IndexTree

def representative (c : LookupCertificate) (value : ℕ) : ℕ :=
  let seed := indexEntry c.width c.seeds (value % c.bucketMod)
  if seed < c.directCut then seed else
    indexEntry c.width c.representatives
      ((value / c.bucketMod + (seed - c.directCut)) % c.slotMod)

def hashPointCheck (N k width : ℕ) (c : ModCertificate) (h : LookupCertificate) (n : ℕ) : Bool :=
  if n < N then
    decide (representative h (modValues width c n) ≤ n) &&
    decide (n < representative h (modValues width c n) + k)
  else true

/-- Equal signatures have the same lookup result. Checked span bounds alone
therefore exclude separated intervals, even if the lookup has hash collisions. -/
theorem hash_rows_noncollision {depth N k width modulus : ℕ}
    {c : ModCertificate} {h : LookupCertificate} (hN : N ≤ 2 ^ depth)
    (hp : ModRep N k width modulus c)
    (hc : allTree depth 0 (hashPointCheck N k width c h) = true) :
    ∀ n m : ℕ, n + k ≤ m → m < N → B677.intervalLcm n k ≠ B677.intervalLcm m k := by
  intro n m hsep hm heq
  have hn : n < N := by omega
  have hn' := allTree_sound hc (i := n) (by omega)
  have hm' := allTree_sound hc (i := m) (by omega)
  simp only [Nat.zero_add, hashPointCheck, if_pos hn, if_pos hm,
    Bool.and_eq_true, decide_eq_true_eq] at hn' hm'
  rw [hp.2 n hn, heq] at hn'
  rw [hp.2 m hm] at hm'
  omega

/-- `Nat.gcd` is a kernel arithmetic primitive in the pinned Lean version. -/
def directNextPointCheck (N k width modulus : ℕ) (prev c : ModCertificate) (n : ℕ) : Bool :=
  if n < N then
    decide (modValues width c n =
      (modValues width prev n * ((n + k + 1) / Nat.gcd prev.initialLcm (n + k + 1))) % modulus)
    else true

theorem directNextCheck_of_parts {depth N k width modulus : ℕ}
    {prev c : ModCertificate} (hp : c.initialLcm = Nat.lcm prev.initialLcm (k + 1))
    (hc : allTree depth 0 (directNextPointCheck N k width modulus prev c) = true) :
    modNextCheck depth N k width modulus prev c = true := by
  simp only [modNextCheck, Bool.and_eq_true, decide_eq_true_eq]
  exact ⟨hp, hc⟩

/-- info: 'B677Finite.hash_rows_noncollision' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms hash_rows_noncollision

end B677Finite
