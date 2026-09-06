import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.GCongr
import Mathlib.Tactic.Positivity.Basic

/-!
An explicit completion of Vjeko Kovac's 13 March 2026 square-root sketch for
Erdos 686, N = 4, k = 6. This proves only this fixed-k obstruction.
The proof uses integer square gaps and a finite kernel computation.
Source: https://www.erdosproblems.com/forum/thread/686
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

namespace B686K6

def p6 (t : ℤ) : ℤ :=
  (t + 1) * (t + 2) * (t + 3) * (t + 4) * (t + 5) * (t + 6)

def a6 (t : ℤ) : ℤ := 16 * t ^ 3 + 168 * t ^ 2 + 518 * t + 441

def r6 (t : ℤ) : ℤ := 189 * (2 * t + 7) ^ 2 + 900

theorem approx_identity (t : ℤ) : a6 t ^ 2 = 256 * p6 t + r6 t := by
  unfold a6 p6 r6
  ring

theorem remainder_gap (t : ℤ) (ht : 44 ≤ t) : 0 < a6 t - r6 t := by
  have hs : 0 ≤ t - 44 := by omega
  have hid : a6 t - r6 t =
      16 * (t - 44) ^ 3 + 1524 * (t - 44) ^ 2 + 36410 * (t - 44) + 4800 := by
    unfold a6 r6
    ring
  rw [hid]
  positivity

theorem a6_pos (t : ℤ) (ht : 0 ≤ t) : 0 < a6 t := by
  unfold a6
  positivity

theorem square_interval (t : ℤ) (ht : 44 ≤ t) :
    (2 * a6 t - 1) ^ 2 < 1024 * p6 t ∧ 256 * p6 t < a6 t ^ 2 := by
  have hg := remainder_gap t ht
  have hr : 0 < r6 t := by unfold r6; positivity
  have hi := approx_identity t
  have hid : 1024 * p6 t - (2 * a6 t - 1) ^ 2 =
      4 * (a6 t - r6 t) - 1 := by
    unfold p6 a6 r6
    ring
  constructor <;> omega

theorem a6_odd (t : ℤ) : ∃ z : ℤ, a6 t = 2 * z + 1 := by
  refine ⟨8 * t ^ 3 + 84 * t ^ 2 + 259 * t + 220, ?_⟩
  unfold a6
  ring

theorem not_four_of_large (n m : ℤ) (hn : 44 ≤ n) (hm : 44 ≤ m) :
    p6 m ≠ 4 * p6 n := by
  intro heq
  obtain ⟨hnlo, hnhi⟩ := square_interval n hn
  obtain ⟨hmlo, hmhi⟩ := square_interval m hm
  have han := a6_pos n (by omega)
  have ham := a6_pos m (by omega)
  obtain ⟨z, hz⟩ := a6_odd m
  have hne : a6 m ≠ 2 * a6 n := by omega
  by_cases hlt : a6 m < 2 * a6 n
  · have hle : a6 m ≤ 2 * a6 n - 1 := by omega
    have hsq : a6 m ^ 2 ≤ (2 * a6 n - 1) ^ 2 := by
      exact pow_le_pow_left₀ (by omega) hle 2
    omega
  · have hle : 4 * a6 n ≤ 2 * a6 m - 1 := by omega
    have hsq : (4 * a6 n) ^ 2 ≤ (2 * a6 m - 1) ^ 2 := by
      exact pow_le_pow_left₀ (by omega) hle 2
    have hring : (4 * a6 n) ^ 2 = 16 * a6 n ^ 2 := by ring
    omega

theorem p6_pos (t : ℤ) (ht : 0 ≤ t) : 0 < p6 t := by
  unfold p6
  positivity

theorem upper_bound (n m : ℕ) (heq : p6 m = 4 * p6 n) : m < 2 * n + 6 := by
  by_contra h
  have hm : (2 * n + 6 : ℤ) ≤ (m : ℤ) := by omega
  have hp := p6_pos (n : ℤ) (by omega)
  have hs : 64 * p6 n ≤ p6 m := by
    calc
      64 * p6 n =
          (2 * (n + 1)) * (2 * (n + 2)) * (2 * (n + 3)) *
          (2 * (n + 4)) * (2 * (n + 5)) * (2 * (n + 6)) := by
        unfold p6
        ring
      _ ≤ p6 m := by
        unfold p6
        gcongr <;> omega
  omega

theorem finite_obstruction :
    ∀ n : Fin 44, ∀ m : Fin 92,
      n.val + 6 ≤ m.val → p6 m.val ≠ 4 * p6 n.val := by
  decide

theorem not_four (n m : ℕ) (hm : n + 6 ≤ m) : p6 m ≠ 4 * p6 n := by
  intro heq
  by_cases hn : 44 ≤ n
  · exact not_four_of_large n m (by omega) (by omega) heq
  · have hnlt : n < 44 := by omega
    have hmlt := upper_bound n m heq
    exact finite_obstruction ⟨n, hnlt⟩ ⟨m, by omega⟩ hm heq

/-- info: 'B686K6.not_four' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four
end B686K6
