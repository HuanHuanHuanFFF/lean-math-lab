-- Actual old i11 (2,3) block 0. Core-only exact certificate, not a B original result.
-- No Mathlib import is needed for these bounded Nat/Int checks.
set_option maxRecDepth 100000
set_option maxHeartbeats 800000

namespace Math.B699.CubicBlockGround

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


theorem base_checks : 2 ≤ p ∧ 2 ≤ q ∧ 1 ≤ u ∧ 1 ≤ b0 ∧ w < P := by
  decide +kernel

theorem inverse_check : (P * v) % Q = 1 := by
  decide +kernel

theorem boundary_check : Q ^ 3 ≤ (P - w) ^ 2 := by
  decide +kernel

theorem rho_values : List.map rho differences = expectedRho := by
  decide +kernel

theorem all_finite_differences :
    ∀ k : Fin 21, p ^ (u + 3 * L) < (rho ((k.val : Int) - 10)) ^ 2 := by
  decide +kernel

theorem zero_uses_positive_representative : rho 0 = Q := by
  decide +kernel

theorem tamper_inverse_rejected : (P * (v + 1)) % Q ≠ 1 := by
  decide +kernel

theorem tamper_extended_endpoint_rejected :
    ¬ p ^ (u + 3 * (L + 1)) < (rho 9) ^ 2 := by
  decide +kernel

end Math.B699.CubicBlockGround

#print axioms Math.B699.CubicBlockGround.base_checks
#print axioms Math.B699.CubicBlockGround.inverse_check
#print axioms Math.B699.CubicBlockGround.boundary_check
#print axioms Math.B699.CubicBlockGround.rho_values
#print axioms Math.B699.CubicBlockGround.all_finite_differences
#print axioms Math.B699.CubicBlockGround.zero_uses_positive_representative
#print axioms Math.B699.CubicBlockGround.tamper_inverse_rejected
#print axioms Math.B699.CubicBlockGround.tamper_extended_endpoint_rejected
