import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.ExactRows

namespace B677Finite

set_option maxHeartbeats 1500000

/-- A compact random-access certificate tree. Malformed data cannot establish
anything unless the complete row checker below succeeds. -/
inductive IndexTree where
  | block : ℕ → IndexTree
  | node : ℕ → IndexTree → IndexTree → IndexTree

def indexEntry (width : ℕ) : IndexTree → ℕ → ℕ
  | .block code, i => code / 2 ^ (width * i) % 2 ^ width
  | .node cut left right, i =>
      if i < cut then indexEntry width left i else indexEntry width right (i - cut)

inductive ValueTree where
  | leaf : ℕ → ValueTree
  | node : ValueTree → ValueTree → ValueTree

def valueEntry : ℕ → ValueTree → ℕ → ℕ
  | 0, .leaf v, _ => v
  | d + 1, .node left right, i =>
      if i < 2 ^ d then valueEntry d left i else valueEntry d right (i - 2 ^ d)
  | _, _, _ => 0

def initialTree : ℕ → ℕ → ValueTree
  | 0, offset => .leaf (offset + 1)
  | d + 1, offset => .node (initialTree d offset) (initialTree d (offset + 2 ^ d))

def nextTree (k : ℕ) : ℕ → ℕ → ValueTree → ValueTree
  | 0, offset, .leaf v => .leaf (Nat.lcm v (offset + k + 1))
  | d + 1, offset, .node left right =>
      .node (nextTree k d offset left) (nextTree k d (offset + 2 ^ d) right)
  | _, _, _ => .leaf 0

def TreeRep : ℕ → ℕ → ℕ → ValueTree → Prop
  | 0, offset, k, .leaf v => v = B677.intervalLcm offset k
  | d + 1, offset, k, .node left right =>
      TreeRep d offset k left ∧ TreeRep d (offset + 2 ^ d) k right
  | _, _, _, _ => False

lemma initialTree_rep (d offset : ℕ) : TreeRep d offset 1 (initialTree d offset) := by
  induction d generalizing offset with
  | zero => simp [initialTree, TreeRep, B677.interval_lcm_eq_range]
  | succ d ih => exact ⟨ih offset, ih (offset + 2 ^ d)⟩

lemma nextTree_rep {d offset k : ℕ} {tree : ValueTree}
    (h : TreeRep d offset k tree) : TreeRep d offset (k + 1) (nextTree k d offset tree) := by
  induction d generalizing offset tree with
  | zero =>
    cases tree with
    | leaf v => simpa [TreeRep, nextTree, interval_lcm_succ] using
        congrArg (fun x ↦ Nat.lcm x (offset + k + 1)) h
    | node left right => exact False.elim h
  | succ d ih =>
    cases tree with
    | leaf v => exact False.elim h
    | node left right => exact ⟨ih h.1, ih h.2⟩

lemma valueEntry_eq {d offset k i : ℕ} {tree : ValueTree}
    (h : TreeRep d offset k tree) (hi : i < 2 ^ d) :
    valueEntry d tree i = B677.intervalLcm (offset + i) k := by
  induction d generalizing offset tree i with
  | zero =>
    have hi0 : i = 0 := by simpa using hi
    subst i
    cases tree with
    | leaf v => simpa [valueEntry, TreeRep] using h
    | node left right => exact False.elim h
  | succ d ih =>
    cases tree with
    | leaf v => exact False.elim h
    | node left right =>
      simp only [TreeRep] at h
      simp only [valueEntry]
      split_ifs with hlt
      · exact ih h.1 hlt
      · have hi' : i - 2 ^ d < 2 ^ d := by
          have hp : 2 ^ (d + 1) = 2 ^ d * 2 := pow_succ _ _
          omega
        have he := ih h.2 hi'
        simpa only [show offset + 2 ^ d + (i - 2 ^ d) = offset + i by omega] using he

/-- Balanced evaluation avoids a long chain of list-index reductions. -/
def allTree : ℕ → ℕ → (ℕ → Bool) → Bool
  | 0, offset, p => p offset
  | d + 1, offset, p => allTree d offset p && allTree d (offset + 2 ^ d) p

lemma allTree_sound {d offset : ℕ} {p : ℕ → Bool}
    (h : allTree d offset p = true) {i : ℕ} (hi : i < 2 ^ d) : p (offset + i) = true := by
  induction d generalizing offset i with
  | zero =>
    have hi0 : i = 0 := by simpa using hi
    simpa [hi0, allTree] using h
  | succ d ih =>
    simp only [allTree, Bool.and_eq_true] at h
    by_cases hlt : i < 2 ^ d
    · exact ih h.1 hlt
    · have hi' : i - 2 ^ d < 2 ^ d := by
        have hp : 2 ^ (d + 1) = 2 ^ d * 2 := pow_succ _ _
        omega
      have he := ih h.2 hi'
      simpa only [show offset + 2 ^ d + (i - 2 ^ d) = offset + i by omega] using he

structure TreeRowCertificate where
  width : ℕ
  groups : ℕ
  first : IndexTree
  rank : IndexTree

def treeRowCheck (depth N k : ℕ) (row : ValueTree) (c : TreeRowCertificate) : Bool :=
  decide (c.groups ≤ 2 ^ depth) &&
  allTree depth 0 (fun i ↦ if i < c.groups then
    decide (indexEntry c.width c.first i < N) &&
      (if i + 1 < c.groups then
        decide (valueEntry depth row (indexEntry c.width c.first i) <
          valueEntry depth row (indexEntry c.width c.first (i + 1))) else true) else true) &&
  allTree depth 0 (fun n ↦ if n < N then
    decide (indexEntry c.width c.rank n < c.groups) &&
    decide (valueEntry depth row (indexEntry c.width c.first (indexEntry c.width c.rank n)) =
      valueEntry depth row n) &&
    decide (indexEntry c.width c.first (indexEntry c.width c.rank n) ≤ n) &&
    decide (n < indexEntry c.width c.first (indexEntry c.width c.rank n) + k) else true)

theorem treeRowCheck_sound {depth N k n m : ℕ} {row : ValueTree} {c : TreeRowCertificate}
    (h : treeRowCheck depth N k row c = true) (hN : N ≤ 2 ^ depth)
    (hn : n < N) (hm : m < N) (hsep : n + k ≤ m) :
    valueEntry depth row n ≠ valueEntry depth row m := by
  simp only [treeRowCheck, Bool.and_eq_true, decide_eq_true_eq] at h
  have hf (i : ℕ) (hi : i + 1 < c.groups) :
      valueEntry depth row (indexEntry c.width c.first i) <
        valueEntry depth row (indexEntry c.width c.first (i + 1)) := by
    have hc := allTree_sound h.1.2 (i := i) (by omega)
    simp only [Nat.zero_add, if_pos (show i < c.groups by omega), if_pos hi,
      Bool.and_eq_true, decide_eq_true_eq] at hc
    exact hc.2
  have hn' := allTree_sound h.2 (i := n) (by omega)
  have hm' := allTree_sound h.2 (i := m) (by omega)
  simp only [Nat.zero_add, if_pos hn, if_pos hm, Bool.and_eq_true, decide_eq_true_eq] at hn' hm'
  intro heq
  have hv : valueEntry depth row (indexEntry c.width c.first (indexEntry c.width c.rank n)) =
      valueEntry depth row (indexEntry c.width c.first (indexEntry c.width c.rank m)) := by omega
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

def treeCheckRows (depth N k : ℕ) (row : ValueTree) : List TreeRowCertificate → Bool
  | [] => true
  | c :: cs => treeRowCheck depth N k row c &&
      treeCheckRows depth N (k + 1) (nextTree k depth 0 row) cs

theorem treeCheckRows_sound {depth N k : ℕ} {row : ValueTree} {cs : List TreeRowCertificate}
    (hrep : TreeRep depth 0 k row) (hc : treeCheckRows depth N k row cs = true)
    (hN : N ≤ 2 ^ depth) {length n m : ℕ} (hl : k ≤ length)
    (hu : length < k + cs.length) (hn : n < N) (hm : m < N) (hsep : n + length ≤ m) :
    B677.intervalLcm n length ≠ B677.intervalLcm m length := by
  induction cs generalizing row k with
  | nil => simp at hu; omega
  | cons c cs ih =>
    simp only [treeCheckRows, Bool.and_eq_true] at hc
    by_cases he : length = k
    · subst length
      have hn' := valueEntry_eq hrep (i := n) (by omega)
      have hm' := valueEntry_eq hrep (i := m) (by omega)
      simp only [Nat.zero_add] at hn' hm'
      rw [← hn', ← hm']
      exact treeRowCheck_sound hc.1 hN hn hm hsep
    · exact ih (nextTree_rep hrep) hc.2 (by omega)
        (by simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using hu)

theorem checked_tree_rows_noncollision {depth N : ℕ} {cs : List TreeRowCertificate}
    (hN : N ≤ 2 ^ depth) (hc : treeCheckRows depth N 1 (initialTree depth 0) cs = true) :
    ∀ n m k : ℕ, 0 < k → k ≤ cs.length → n + k ≤ m → m < N →
      B677.intervalLcm n k ≠ B677.intervalLcm m k := by
  intro n m k hk hkbound hsep hm
  exact treeCheckRows_sound (initialTree_rep depth 0) hc hN hk (by omega) (by omega) hm hsep

/-- info: 'B677Finite.checked_tree_rows_noncollision' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms checked_tree_rows_noncollision

end B677Finite
