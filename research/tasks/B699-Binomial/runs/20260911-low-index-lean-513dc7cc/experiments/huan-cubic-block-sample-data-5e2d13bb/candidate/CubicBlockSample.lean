import Mathlib.Data.Int.Basic
import Mathlib.Data.List.Basic
import Mathlib.Tactic.Decide
import Mathlib.Tactic.NormNum

set_option maxRecDepth 4096

namespace Math.B699.CubicBlockSample

def p : Nat := 2
def q : Nat := 3
def u : Nat := 45
def L : Nat := 1
def b0 : Nat := 18
def w : Nat := 10
def v : Nat := 174456611
def P : Nat := p ^ u
def Q : Nat := q ^ b0
def differences : List Int := [-10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
def rho (d : Int) : Nat :=
  let r := Int.toNat (((v : Int) * d) % (Q : Int))
  if r = 0 then Q else r
def expectedRho : List Nat := [192536335, 366992946, 154029068, 328485679, 115521801, 289978412, 77014534, 251471145, 38507267, 212963878, 387420489, 174456611, 348913222, 135949344, 310405955, 97442077, 271898688, 58934810, 233391421, 20427543, 194884154]

theorem inverse_check : (P * v) % Q = 1 := by
  norm_num [P, Q, p, q, u, b0, v]
theorem boundary_check : Q ^ 3 ≤ (P - w) ^ 2 ∧ (P - w) ^ 2 < q ^ (3 * (b0 + 1)) := by
  norm_num [P, Q, p, q, u, b0, w]
theorem differences_length : differences.length = 21 := by decide
theorem rho_values : List.map rho differences = expectedRho := by
  norm_num [differences, expectedRho, rho, P, Q, p, q, u, b0, v]
theorem d_m10 : rho (-10) ^ 2 > p ^ (u + 3 * L) := by
  norm_num [rho, P, Q, p, q, u, L, b0, v]

theorem d_neg9 : rho (-9) ^ 2 > p ^ (u + 3 * L) := by
  norm_num [rho, P, Q, p, q, u, L, b0, v]

theorem d_neg8 : rho (-8) ^ 2 > p ^ (u + 3 * L) := by
  norm_num [rho, P, Q, p, q, u, L, b0, v]

theorem d_neg7 : rho (-7) ^ 2 > p ^ (u + 3 * L) := by
  norm_num [rho, P, Q, p, q, u, L, b0, v]

theorem d_neg6 : rho (-6) ^ 2 > p ^ (u + 3 * L) := by
  norm_num [rho, P, Q, p, q, u, L, b0, v]

theorem d_neg5 : rho (-5) ^ 2 > p ^ (u + 3 * L) := by
  norm_num [rho, P, Q, p, q, u, L, b0, v]

theorem d_neg4 : rho (-4) ^ 2 > p ^ (u + 3 * L) := by
  norm_num [rho, P, Q, p, q, u, L, b0, v]

theorem d_neg3 : rho (-3) ^ 2 > p ^ (u + 3 * L) := by
  norm_num [rho, P, Q, p, q, u, L, b0, v]

theorem d_neg2 : rho (-2) ^ 2 > p ^ (u + 3 * L) := by
  norm_num [rho, P, Q, p, q, u, L, b0, v]

theorem d_neg1 : rho (-1) ^ 2 > p ^ (u + 3 * L) := by
  norm_num [rho, P, Q, p, q, u, L, b0, v]

theorem d_pos0 : rho (0) ^ 2 > p ^ (u + 3 * L) := by
  norm_num [rho, P, Q, p, q, u, L, b0, v]

theorem d_pos1 : rho (1) ^ 2 > p ^ (u + 3 * L) := by
  norm_num [rho, P, Q, p, q, u, L, b0, v]

theorem d_pos2 : rho (2) ^ 2 > p ^ (u + 3 * L) := by
  norm_num [rho, P, Q, p, q, u, L, b0, v]

theorem d_pos3 : rho (3) ^ 2 > p ^ (u + 3 * L) := by
  norm_num [rho, P, Q, p, q, u, L, b0, v]

theorem d_pos4 : rho (4) ^ 2 > p ^ (u + 3 * L) := by
  norm_num [rho, P, Q, p, q, u, L, b0, v]

theorem d_pos5 : rho (5) ^ 2 > p ^ (u + 3 * L) := by
  norm_num [rho, P, Q, p, q, u, L, b0, v]

theorem d_pos6 : rho (6) ^ 2 > p ^ (u + 3 * L) := by
  norm_num [rho, P, Q, p, q, u, L, b0, v]

theorem d_pos7 : rho (7) ^ 2 > p ^ (u + 3 * L) := by
  norm_num [rho, P, Q, p, q, u, L, b0, v]

theorem d_pos8 : rho (8) ^ 2 > p ^ (u + 3 * L) := by
  norm_num [rho, P, Q, p, q, u, L, b0, v]

theorem d_pos9 : rho (9) ^ 2 > p ^ (u + 3 * L) := by
  norm_num [rho, P, Q, p, q, u, L, b0, v]

theorem d_pos10 : rho (10) ^ 2 > p ^ (u + 3 * L) := by
  norm_num [rho, P, Q, p, q, u, L, b0, v]

theorem d_zero_uses_Q : rho 0 = Q := by
  norm_num [rho, Q, q, b0, v]
def checks : List Bool := differences.map (fun d => decide (rho d ^ 2 > p ^ (u + 3 * L)))
theorem checks_length : checks.length = 21 := by decide
end Math.B699.CubicBlockSample
