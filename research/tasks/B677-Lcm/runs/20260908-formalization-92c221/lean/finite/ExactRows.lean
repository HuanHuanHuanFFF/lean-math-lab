import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.SortedCertificate

namespace B677Finite

set_option maxHeartbeats 1000000

structure RowCertificate where
  first : Array ℕ
  rank : Array ℕ

/-- Compact untrusted integer data; `rowCheck` checks all decoded entries. -/
def unpackInto (base : ℕ) : ℕ → ℕ → Array ℕ → Array ℕ
  | _, 0, out => out
  | code, count + 1, out => unpackInto base (code / base) count (out.push (code % base))

def decodeIndices (width count : ℕ) (codes : Array ℕ) : Array ℕ :=
  (codes.foldl (fun out code ↦ unpackInto (2 ^ width) code 64 out) #[]).extract 0 count

def firstRow (N : ℕ) : Array ℕ := Array.ofFn (fun i : Fin N ↦ i.val + 1)

def nextRow (k : ℕ) (row : Array ℕ) : Array ℕ :=
  Array.ofFn (fun i : Fin row.size ↦ Nat.lcm row[i.val] (i.val + k + 1))

def checkRows (k : ℕ) (row : Array ℕ) : List RowCertificate → Bool
  | [] => true
  | c :: cs => rowCheck row c.first c.rank k && checkRows (k + 1) (nextRow k row) cs

def Represents (row : Array ℕ) (k : ℕ) : Prop :=
  ∀ n, n < row.size → entry row n = B677.intervalLcm n k

lemma interval_lcm_succ (n k : ℕ) :
    B677.intervalLcm n (k + 1) = Nat.lcm (B677.intervalLcm n k) (n + k + 1) := by
  simp only [B677.interval_lcm_eq_range, Finset.range_add_one, Finset.lcm_insert]
  exact Nat.lcm_comm _ _

lemma firstRow_represents (N : ℕ) : Represents (firstRow N) 1 := by
  intro n hn
  have hn' : n < N := by simpa [firstRow] using hn
  simp [entry, firstRow, hn', B677.interval_lcm_eq_range]

lemma nextRow_represents {row : Array ℕ} {k : ℕ} (h : Represents row k) :
    Represents (nextRow k row) (k + 1) := by
  intro n hn
  have hn' : n < row.size := by simpa [nextRow] using hn
  rw [interval_lcm_succ]
  have hv := h n hn'
  simpa [entry, nextRow, hn'] using congrArg (fun x ↦ Nat.lcm x (n + k + 1)) hv

theorem checkRows_sound {row : Array ℕ} {k : ℕ} {cs : List RowCertificate}
    (hrep : Represents row k) (hc : checkRows k row cs = true)
    {length n m : ℕ} (hl : k ≤ length) (hu : length < k + cs.length)
    (hn : n < row.size) (hm : m < row.size) (hsep : n + length ≤ m) :
    B677.intervalLcm n length ≠ B677.intervalLcm m length := by
  induction cs generalizing row k with
  | nil => simp at hu; omega
  | cons c cs ih =>
    simp only [checkRows, Bool.and_eq_true] at hc
    by_cases he : length = k
    · subst length
      rw [← hrep n hn, ← hrep m hm]
      exact rowCheck_sound hc.1 hn hm hsep
    · apply ih (nextRow_represents hrep) hc.2 (by omega)
        (by simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using hu)
      · simpa [nextRow] using hn
      · simpa [nextRow] using hm

theorem checked_rows_noncollision {N : ℕ} {cs : List RowCertificate}
    (hc : checkRows 1 (firstRow N) cs = true) :
    ∀ n m k : ℕ, 0 < k → k ≤ cs.length → n + k ≤ m → m < N →
      B677.intervalLcm n k ≠ B677.intervalLcm m k := by
  intro n m k hk hkbound hsep hm
  apply checkRows_sound (firstRow_represents N) hc hk (by omega)
  · simpa [firstRow] using (show n < N by omega)
  · simpa [firstRow] using hm
  · exact hsep

/-- info: 'B677Finite.checked_rows_noncollision' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms checked_rows_noncollision

end B677Finite
