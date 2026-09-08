import Math.B677.IntervalLcm
import Init.Data.Array.Lemmas

namespace B677Finite

set_option maxHeartbeats 1000000

def entry (a : Array ℕ) (i : ℕ) : ℕ := a[i]?.getD 0

def allBelow (N : ℕ) (p : ℕ → Bool) : Bool := Nat.all N (fun i _ ↦ p i)

lemma allBelow_sound {N : ℕ} {p : ℕ → Bool} (h : allBelow N p = true)
    {i : ℕ} (hi : i < N) : p i = true := by
  induction N with
  | zero => omega
  | succ N ih =>
    simp only [allBelow, Nat.all_succ, Bool.and_eq_true] at h
    by_cases hlt : i < N
    · exact ih h.1 hlt
    · have heq : i = N := by omega
      simpa [heq] using h.2

/-- `first` is a strictly signature-sorted list of group representatives.
Every start points to a representative with the same signature, and lies
within a window of length `k` from that representative. -/
def rowCheck (values first rank : Array ℕ) (k : ℕ) : Bool :=
  allBelow first.size (fun i ↦
    decide (entry first i < values.size) &&
      (if i + 1 < first.size then
        decide (entry values (entry first i) < entry values (entry first (i + 1))) else true)) &&
  allBelow values.size (fun n ↦
    decide (entry rank n < first.size) &&
    decide (entry values (entry first (entry rank n)) = entry values n) &&
    decide (entry first (entry rank n) ≤ n) &&
    decide (n < entry first (entry rank n) + k))

lemma strictly_increasing_of_adjacent {N : ℕ} {f : ℕ → ℕ}
    (h : ∀ i, i + 1 < N → f i < f (i + 1)) {i j : ℕ}
    (hij : i < j) (hj : j < N) : f i < f j := by
  induction j with
  | zero => omega
  | succ j ih =>
    by_cases hi : i < j
    · exact (ih hi (by omega)).trans (h j hj)
    · have heq : i = j := by omega
      simpa [heq] using h j hj

theorem rowCheck_sound {values first rank : Array ℕ} {k n m : ℕ}
    (h : rowCheck values first rank k = true)
    (hn : n < values.size) (hm : m < values.size) (hsep : n + k ≤ m) :
    entry values n ≠ entry values m := by
  simp only [rowCheck, Bool.and_eq_true] at h
  have hf (i : ℕ) (hi : i + 1 < first.size) :
      entry values (entry first i) < entry values (entry first (i + 1)) := by
    have hc := allBelow_sound h.1 (i := i) (by omega)
    simp only [Bool.and_eq_true, decide_eq_true_eq, if_pos hi] at hc
    exact hc.2
  have hn' := allBelow_sound h.2 hn
  have hm' := allBelow_sound h.2 hm
  simp only [Bool.and_eq_true, decide_eq_true_eq] at hn' hm'
  intro heq
  have hv : entry values (entry first (entry rank n)) = entry values (entry first (entry rank m)) := by
    omega
  have hr : entry rank n = entry rank m := by
    rcases lt_trichotomy (entry rank n) (entry rank m) with hlt | he | hgt
    · have ht := strictly_increasing_of_adjacent hf hlt (by omega)
      omega
    · exact he
    · have ht := strictly_increasing_of_adjacent hf hgt (by omega)
      omega
  rw [hr] at hn'
  omega

/-- info: 'B677Finite.rowCheck_sound' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms rowCheck_sound

end B677Finite
