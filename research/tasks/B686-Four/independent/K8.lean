import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.GCongr
import Mathlib.Tactic.Positivity.Basic

/-! Fixed-length obstruction for Erdős 686 with ratio 4 and k = 8.
This is a local extension of the square-root approximation method used for k = 6;
mathematical novelty has not been established. It does not settle arbitrary k. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

namespace B686K8

def p8 (t : ℤ) : ℤ :=
  (t+1)*(t+2)*(t+3)*(t+4)*(t+5)*(t+6)*(t+7)*(t+8)

def h8 (t : ℤ) : ℤ := t^4 + 18*t^3 + 111*t^2 + 270*t + 204

def e8 (t : ℤ) : ℤ := 16*(2*t+9)^2

theorem approx_identity (t : ℤ) : h8 t ^ 2 = p8 t + e8 t := by
  unfold h8 p8 e8
  ring

theorem remainder_gap (t : ℤ) (ht : 5 ≤ t) : 0 < h8 t - e8 t := by
  have hs : 0 ≤ t-5 := by omega
  have hid : h8 t - e8 t =
      (t-5)^4 + 38*(t-5)^3 + 467*(t-5)^2 + 2014*(t-5) + 1428 := by
    unfold h8 e8
    ring
  rw [hid]
  positivity

theorem h8_pos (t : ℤ) (ht : 0 ≤ t) : 0 < h8 t := by
  unfold h8
  positivity

theorem square_interval (t : ℤ) (ht : 5 ≤ t) :
    (2*h8 t-1)^2 < 4*p8 t ∧ p8 t < h8 t^2 := by
  have hg := remainder_gap t ht
  have htpos : 0 < 2*t+9 := by omega
  have hr : 0 < e8 t := by
    unfold e8
    positivity
  have hi := approx_identity t
  have hid : 4*p8 t-(2*h8 t-1)^2 = 4*(h8 t-e8 t)-1 := by
    unfold p8 h8 e8
    ring
  constructor <;> omega

theorem rounded_equality (n m : ℤ) (hn : 5 ≤ n) (hm : 5 ≤ m)
    (heq : p8 m = 4*p8 n) : h8 m = 2*h8 n := by
  obtain ⟨hnlo, hnhi⟩ := square_interval n hn
  obtain ⟨hmlo, hmhi⟩ := square_interval m hm
  have han := h8_pos n (by omega)
  have ham := h8_pos m (by omega)
  by_contra hne
  by_cases hlt : h8 m < 2*h8 n
  · have hle : h8 m ≤ 2*h8 n-1 := by omega
    have hsq : h8 m^2 ≤ (2*h8 n-1)^2 :=
      pow_le_pow_left₀ (by omega) hle 2
    omega
  · have hle : 4*h8 n ≤ 2*h8 m-1 := by omega
    have hsq : (4*h8 n)^2 ≤ (2*h8 m-1)^2 :=
      pow_le_pow_left₀ (by omega) hle 2
    have hring : (4*h8 n)^2 = 16*h8 n^2 := by ring
    omega

theorem not_four_of_large (n m : ℤ) (hn : 5 ≤ n) (hm : 5 ≤ m) :
    p8 m ≠ 4*p8 n := by
  intro heq
  have hh := rounded_equality n m hn hm heq
  have hi := approx_identity n
  have hj := approx_identity m
  have hring : (2*h8 n)^2 = 4*h8 n^2 := by ring
  rw [hh, hring] at hj
  have he : e8 m = 4*e8 n := by omega
  unfold e8 at he
  have hering : 4*(16*(2*n+9)^2) = 16*(2*(2*n+9))^2 := by ring
  rw [hering] at he
  have hs : (2*m+9)^2 = (2*(2*n+9))^2 := by omega
  have hpos : 0 ≤ 2*m+9 := by omega
  have hpos' : 0 ≤ 2*(2*n+9) := by omega
  have hequal : 2*m+9 = 2*(2*n+9) :=
    (sq_eq_sq₀ hpos hpos').mp hs
  omega

theorem p8_pos (t : ℤ) (ht : 0 ≤ t) : 0 < p8 t := by
  unfold p8
  positivity

theorem upper_bound (n m : ℕ) (heq : p8 m = 4*p8 n) : m < 2*n+8 := by
  by_contra h
  have hm : (2*n+8 : ℤ) ≤ (m : ℤ) := by omega
  have hp := p8_pos n (by omega)
  have hs : 256*p8 n ≤ p8 m := by
    calc
      256*p8 n = (2*(n+1))*(2*(n+2))*(2*(n+3))*(2*(n+4))*
          (2*(n+5))*(2*(n+6))*(2*(n+7))*(2*(n+8)) := by unfold p8; ring
      _ ≤ p8 m := by unfold p8; gcongr <;> omega
  omega

theorem finite_obstruction : ∀ n : Fin 5, ∀ m : Fin 18,
    n.val+8 ≤ m.val → p8 m.val ≠ 4*p8 n.val := by decide

theorem not_four (n m : ℕ) (hm : n+8 ≤ m) : p8 m ≠ 4*p8 n := by
  intro heq
  by_cases hn : 5 ≤ n
  · exact not_four_of_large n m (by omega) (by omega) heq
  · have hnlt : n < 5 := by omega
    have hmlt := upper_bound n m heq
    exact finite_obstruction ⟨n, hnlt⟩ ⟨m, by omega⟩ hm heq

/-- info: 'B686K8.not_four' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four
end B686K8
