/-
Vendored from williamjblair/lean-proofs at aff1d30b3b1c6bd705810fa4d588b03940fb31df.
Original formalization provenance is preserved below.
Distribution license from that fixed upstream commit:

MIT License

Copyright (c) 2026 Will Blair

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

---

NOTICE — third-party files

ErdosProblems/Erdos154.lean is a third-party formalization included as a build
dependency for the 154 sumset proof. It is the Lean formalization of Lindström's
residue-distribution theorem for Sidon sets (formal authors Aristotle and Wouter
van Doorn), hosted via plby/lean-proofs, and is used under its original license
as stated in its file header. Mathlib is licensed under Apache-2.0.

-/

/-
Minimal unchanged proof-body slice from the accepted vendored SylvesterSchurSource.
Source baseline: 37e42aca251c33c62cbc2c40f286daa0526d79ee.
Path: research/tasks/B686-Four/runs/20260908-formalization-92c221/lean/shortgap/sylvester/SylvesterSchurSource.lean.
Original source: AllenGrahamHart/FormalConjectures-Bench@482dacc4d9335240f26218cdc62032da3100392b,
formalizations/erdos699/Erdos699Formalization.lean, through Will Blair's MIT vendored slice.
The three sliced proof bodies are unchanged; focused imports and namespace are changed.
The final choose_ratio_lower_bound is a new extension in this run, separately attributed.
No large upstream acceptance is rerun.
-/
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Tactic.Ring
import Lean.Elab.Tactic.Omega

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699Power

lemma succ_pow_mul_sub_le_pow_mul_succ {N r : ℕ} (hr : r ≤ N + 1) :
    (N + 1) ^ r * (N + 1 - r) ≤ N ^ r * (N + 1) := by
  induction r with
  | zero => simp
  | succ r ih =>
      have hr' : r ≤ N + 1 := by omega
      have ih' := ih hr'
      have hsub : N + 1 - (r + 1) = N - r := by omega
      have hsub2 : N + 1 - r = N - r + 1 := by omega
      have hmul_step : (N + 1) * (N - r) ≤ N * (N + 1 - r) := by
        rw [hsub2, Nat.mul_add, Nat.mul_one, Nat.succ_mul]
        exact Nat.add_le_add_left (Nat.sub_le N r) (N * (N - r))
      calc
        (N + 1) ^ (r + 1) * (N + 1 - (r + 1))
            = (N + 1) ^ r * ((N + 1) * (N - r)) := by
              rw [pow_succ, hsub]
              ring
        _ ≤ (N + 1) ^ r * (N * (N + 1 - r)) :=
              Nat.mul_le_mul_left _ hmul_step
        _ = ((N + 1) ^ r * (N + 1 - r)) * N := by ring
        _ ≤ (N ^ r * (N + 1)) * N := Nat.mul_le_mul_right _ ih'
        _ = N ^ (r + 1) * (N + 1) := by
              rw [pow_succ]
              ring


lemma pow_le_pow_mul_choose (n k : ℕ) (hk : k ≤ n) :
    n ^ k ≤ k ^ k * Nat.choose n k := by
  refine Nat.le_induction (m := k)
    (P := fun N _ => N ^ k ≤ k ^ k * Nat.choose N k) ?_ ?_ n hk
  · simp
  · intro N hkN ih
    have hsub_pos : 0 < N + 1 - k := by omega
    refine Nat.le_of_mul_le_mul_right ?_ hsub_pos
    calc
      (N + 1) ^ k * (N + 1 - k) ≤ N ^ k * (N + 1) :=
        succ_pow_mul_sub_le_pow_mul_succ (N := N) (r := k) (by omega)
      _ ≤ (k ^ k * Nat.choose N k) * (N + 1) :=
        Nat.mul_le_mul_right _ ih
      _ = k ^ k * (Nat.choose N k * (N + 1)) := by ring
      _ = k ^ k * (Nat.choose (N + 1) k * (N + 1 - k)) := by
        rw [Nat.choose_mul_succ_eq]
      _ = (k ^ k * Nat.choose (N + 1) k) * (N + 1 - k) := by ring


lemma pow_mul_pow_half_lt_pow_of_sq_lt {n i : ℕ} (hi : 0 < i) (hlarge : i ^ 2 < n) :
    i ^ i * n ^ (i / 2) < n ^ i := by
  let r := i / 2
  let d := i - r
  have hd_pos : 0 < d := by
    dsimp [d, r]
    omega
  have hi_exp_le : i ≤ 2 * d := by
    dsimp [d, r]
    omega
  have hi_pow_lt : i ^ i < n ^ d := by
    calc
      i ^ i ≤ i ^ (2 * d) := Nat.pow_le_pow_right hi hi_exp_le
      _ = (i ^ 2) ^ d := by rw [pow_mul]
      _ < n ^ d := Nat.pow_lt_pow_left hlarge hd_pos.ne'
  calc
    i ^ i * n ^ (i / 2) = i ^ i * n ^ r := by rfl
    _ < n ^ d * n ^ r :=
      Nat.mul_lt_mul_of_pos_right hi_pow_lt (Nat.pow_pos (a := n) (n := r) (by omega))
    _ = n ^ (d + r) := by rw [← pow_add]
    _ = n ^ i := by
      congr 1
      dsimp [d, r]
      omega

/-- Relative version of `pow_le_pow_mul_choose`, retaining a second binomial
coefficient. The top-index induction starts at `j` instead of `i`. -/
theorem choose_ratio_lower_bound {n i j : ℕ} (hij : i ≤ j) (hjn : j ≤ n) :
    n ^ i * j.choose i ≤ j ^ i * n.choose i := by
  refine Nat.le_induction (m := j)
    (P := fun N _ ↦ N ^ i * j.choose i ≤ j ^ i * N.choose i) ?_ ?_ n hjn
  · exact le_rfl
  · intro N hjN ih
    have hsub_pos : 0 < N + 1 - i := by omega
    refine Nat.le_of_mul_le_mul_right ?_ hsub_pos
    calc
      (N + 1) ^ i * j.choose i * (N + 1 - i) =
          ((N + 1) ^ i * (N + 1 - i)) * j.choose i := by ring
      _ ≤ (N ^ i * (N + 1)) * j.choose i :=
        Nat.mul_le_mul_right _ (succ_pow_mul_sub_le_pow_mul_succ (by omega))
      _ = (N ^ i * j.choose i) * (N + 1) := by ring
      _ ≤ (j ^ i * N.choose i) * (N + 1) := Nat.mul_le_mul_right _ ih
      _ = j ^ i * (N.choose i * (N + 1)) := by ring
      _ = j ^ i * ((N + 1).choose i * (N + 1 - i)) := by
        rw [Nat.choose_mul_succ_eq]
      _ = (j ^ i * (N + 1).choose i) * (N + 1 - i) := by ring

end B699Power
