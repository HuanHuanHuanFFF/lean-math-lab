import Lean.Elab.Tactic.Omega
import Mathlib.Algebra.BigOperators.Associated
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Algebra.BigOperators.Ring.Nat
import Mathlib.Algebra.Field.Rat
import Mathlib.Algebra.GCDMonoid.Finset
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Algebra.Order.Group.Unbundled.Int
import Mathlib.Algebra.Order.Monoid.Unbundled.Pow
import Mathlib.Algebra.Order.Ring.Abs
import Mathlib.Algebra.Order.Ring.Cast
import Mathlib.Algebra.Order.Ring.Pow
import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Algebra.Polynomial.BigOperators
import Mathlib.Algebra.Polynomial.Coeff
import Mathlib.Algebra.Polynomial.Eval.Defs
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Algebra.Ring.Commute
import Mathlib.Data.Finset.Max
import Mathlib.Data.Int.ModEq
import Mathlib.Data.List.Range
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Data.Nat.Choose.Factorization
import Mathlib.Data.Nat.Choose.Sum
import Mathlib.Data.Nat.Dist
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.Find
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Data.Nat.GCD.BigOperators
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Nat.Prime.Factorial
import Mathlib.Data.Rat.Cast.Order
import Mathlib.Data.Real.Basic
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.NormNum.NatFactorial
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring
import Mathlib.Data.Int.GCD
namespace Contribution.B699ProfilingAboveRepairPrefix064
set_option profiler true
set_option profiler.threshold 100
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 400000
set_option exponentiation.threshold 1000000
namespace N0
end N0
namespace N2.N10
end N2.N10
namespace Math.B699.N3
end Math.B699.N3
namespace Math.B699.N4
end Math.B699.N4
namespace Math.B699.N5
end Math.B699.N5
namespace Math.B699.N6
end Math.B699.N6
namespace Math.B699.N7
end Math.B699.N7
namespace Math.B699.N8
end Math.B699.N8
namespace Math.B699.N9
end Math.B699.N9
namespace Math.B699.N13
end Math.B699.N13
namespace Math.B699.N14
end Math.B699.N14
namespace Math.B699.N15
end Math.B699.N15
namespace Math.B699.N16
end Math.B699.N16
namespace Math.B699.N17.N11
end Math.B699.N17.N11
namespace Math.B699.N18
end Math.B699.N18
namespace Math.B699.N3
def d43 (Q v:ℕ) (d:ℤ):ℕ:=
  let r:= Int.toNat (((v:ℤ) * d) % (Q:ℤ))
  if r = 0 then Q else r
@[simp] theorem d44 (Q v:ℕ):d43 Q v 0 = Q:= by
  simp [d43]
end Math.B699.N3
namespace N2.N10
def d45 (n p:ℕ):ℕ:= p ^ (n.choose 11).factorization p
end N2.N10
namespace N0
def product (k t:ℕ):ℕ:= ∏ i ∈ Finset.Icc 1 k,(t + i)
end N0
namespace N2.N10
structure d2 (n p:ℕ) where
  offset:ℕ
  cofactor:ℕ
  offset_lt:offset < 11
  cofactor_pos:1 ≤ cofactor
  equation:cofactor * d45 n p = n - offset
end N2.N10
namespace Math.B699.N16
open Polynomial
noncomputable def moment (p:ℚ[X]):ℚ:=
  p.sum fun n a => a / ((n:ℚ) + 1)
@[simp] theorem d31:moment (0:ℚ[X]) = 0:= by
  simp [moment]
@[simp] theorem d27 (n:ℕ) (a:ℚ):
    moment (Polynomial.monomial n a) = a / ((n:ℚ) + 1):= by
  simp [moment,Polynomial.sum_monomial_index]
@[simp] theorem d25 (n:ℕ):
    moment ((X:ℚ[X]) ^ n) = 1 / ((n:ℚ) + 1):= by
  rw [Polynomial.X_pow_eq_monomial,d27]
@[simp] theorem d26 (p q:ℚ[X]):
    moment (p + q) = moment p + moment q:= by
  unfold moment
  apply Polynomial.sum_add_index
  · intro n
    exact zero_div _
  · intro n a b
    exact add_div a b _
@[simp] theorem d29 (c:ℚ) (p:ℚ[X]):
    moment (c • p) = c * moment p:= by
  unfold moment
  rw [Polynomial.sum_smul_index p c _ (by intro n; exact zero_div _)]
  simpa only [smul_eq_mul,mul_div_assoc] using
    (Polynomial.smul_sum p c (fun n a => a / ((n:ℚ) + 1))).symm
noncomputable def d22:ℚ[X] →ₗ[ℚ] ℚ where
  toFun:= moment
  map_add':= d26
  map_smul' c p:= by
    simpa only [smul_eq_mul,RingHom.id_apply] using d29 c p
@[simp] theorem d23 (p:ℚ[X]):d22 p = moment p:= rfl
@[simp] theorem d30 (p q:ℚ[X]):
    moment (p - q) = moment p - moment q:= by
  exact map_sub d22 p q
@[simp] theorem d24 (c:ℚ) (p:ℚ[X]):
    moment (Polynomial.C c * p) = c * moment p:= by
  simpa only [Polynomial.smul_eq_C_mul] using d29 c p
@[simp] theorem d28:moment (1:ℚ[X]) = 1:= by
  simpa only [pow_zero,Nat.cast_zero,zero_add,div_one] using d25 0
noncomputable def d3 (a b:ℕ):ℚ[X]:=
  X ^ a * (1 - X) ^ b
def d5 (a b:ℕ):ℚ:=
  (a.factorial:ℚ) * (b.factorial:ℚ) / ((a + b + 1).factorial:ℚ)
private theorem d19 (n:ℕ):(n.factorial:ℚ) ≠ 0:=
  Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero n)
private theorem d32 (n:ℕ):(n:ℚ) + 1 ≠ 0:= by
  have h:((n + 1:ℕ):ℚ) ≠ 0:= Nat.cast_ne_zero.mpr (Nat.succ_ne_zero n)
  simpa only [Nat.cast_add,Nat.cast_one] using h
@[simp] theorem d6 (a:ℕ):
    d5 a 0 = 1 / ((a:ℚ) + 1):= by
  unfold d5
  simp only [Nat.add_zero,Nat.factorial_zero,Nat.cast_one,mul_one]
  rw [Nat.factorial_succ]
  simp only [Nat.cast_mul,Nat.cast_add,Nat.cast_one]
  field_simp [d19 a,d32 a] <;> ring
end Math.B699.N16
namespace Math.B699.N16
open Polynomial
inductive d0:ℚ[X] → Prop
  | zero:d0 0
  | basis (a b:ℕ):d0 (d3 a b)
  | add {p q:ℚ[X]}:d0 p → d0 q → d0 (p + q)
  | scale (c:ℚ) (hc:0 ≤ c) {p:ℚ[X]}:
      d0 p → d0 (Polynomial.C c * p)
end Math.B699.N16
namespace Math.B699.N16
open Polynomial
noncomputable def d4:List (ℕ × ℕ × ℚ) → ℚ[X]
  | [] => 0
  | (a,b,c)::cs => Polynomial.C c * d3 a b + d4 cs
end Math.B699.N16
namespace Math.B699.N15
open Polynomial Math.B699.N16 Math.B699.N17
noncomputable def halfLeft:ℚ[X]:= Polynomial.C (1 / 2:ℚ) * X
noncomputable def d20:ℚ[X]:= Polynomial.C (1 / 2:ℚ) + Polynomial.C (1 / 2:ℚ) * X
inductive d1 (lam:ℚ):ℚ[X] → ℚ[X] → Prop
  | leaf {w f:ℚ[X]}:d0 w → d0 f →
      d0 (Polynomial.C lam - f) → d1 lam w f
  | split {w f:ℚ[X]}:
      d1 lam (w.comp halfLeft) (f.comp halfLeft) →
      d1 lam (w.comp d20) (f.comp d20) → d1 lam w f
end Math.B699.N15
namespace Math.B699.N13
open scoped BigOperators
open Polynomial
noncomputable def d7 (n:ℕ) (a:ℕ → ℤ):ℤ[X]:=
  ∑ r ∈ Finset.range (n + 1),Polynomial.monomial r (a r)
theorem d8 (n r:ℕ) (a:ℕ → ℤ):
    (d7 n a).coeff r = if r ≤ n then a r else 0:= by
  classical
  simp [d7,Polynomial.finsetSum_coeff,Polynomial.coeff_monomial,
    Finset.sum_ite_eq',Nat.lt_succ_iff]
def d37 (A B C r:ℕ):ℤ:=
  (-1:ℤ) ^ (C + r) * ((A + B + C + 1).choose r:ℤ) *
    ((A + C - r).choose A:ℤ)
def d47 (A B C r:ℕ):ℕ:=
  (A + C - r).choose C * (B + r).choose r
def d46 (A B C r:ℕ):ℤ:=
  (-1:ℤ) ^ C * (d47 A B C r:ℤ)
def d13 (A B C r:ℕ):ℤ:=
  (-1:ℤ) ^ r * ((A + r).choose r:ℤ) *
    ((A + B + C + 1).choose (A + C + r + 1):ℤ)
noncomputable def d39 (A B C:ℕ):ℤ[X]:=
  d7 C (d37 A B C)
noncomputable def d49 (A B C:ℕ):ℤ[X]:=
  d7 A (d46 A B C)
noncomputable def d14 (A B C:ℕ):ℤ[X]:=
  d7 B (d13 A B C)
def qContent (A B C:ℕ):ℕ:=
  (Finset.range (A + 1)).gcd (d47 A B C)
@[simp] theorem d40 (A B C:ℕ):
    (d39 A B C).coeff 0 = (-1:ℤ) ^ C * ((A + C).choose A:ℤ):= by
  simp [d39,d8,d37]
@[simp] theorem d50 (A B C:ℕ):
    (d49 A B C).coeff 0 = (-1:ℤ) ^ C * ((A + C).choose C:ℤ):= by
  simp [d49,d8,d46,d47]
@[simp] theorem d15 (A B C:ℕ):
    (d14 A B C).coeff 0 =
      ((A + B + C + 1).choose (A + C + 1):ℤ):= by
  simp [d14,d8,d13]
def d48 (A B C r:ℕ):ℤ:=
  d46 A B C r / (qContent A B C:ℤ)
end Math.B699.N13
namespace Math.B699.N14
open scoped BigOperators
open Math.B699.N13
def d38 (u B r:ℕ):ℤ:=
  d37 u B u r / (qContent u B u:ℤ)
end Math.B699.N14
namespace Math.B699.N17.N11
variable {R:Type*} [CommRing R]
open scoped BigOperators
private theorem d42 (C r:ℕ) (hr:r ≤ C):
    (-1:R) ^ (C - r) = (-1:R) ^ (C + r):= by
  conv_lhs => rw [neg_one_pow_eq_pow_mod_two]
  conv_rhs => rw [neg_one_pow_eq_pow_mod_two]
  congr 1
  omega
theorem d41 (A B C:ℕ) (z u:R):
    u ^ A * (1 - u) ^ B * (z - u) ^ C =
      ∑ r ∈ Finset.range (C + 1),
        ((-1:R) ^ (C + r) * (C.choose r:R) * z ^ r) *
          (u ^ (A + C - r) * (1 - u) ^ B):= by
  have hbin:(z - u) ^ C =
      ∑ r ∈ Finset.range (C + 1),z ^ r * (-u) ^ (C - r) * (C.choose r:R):= by
    simpa only [sub_eq_add_neg] using (add_pow z (-u) C)
  rw [hbin,Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have hle:r ≤ C:= Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
  have hexp:A + C - r = A + (C - r):= by omega
  rw [neg_pow,d42 C r hle,hexp,pow_add]
  ring
theorem d51 (A B C:ℕ) (z u:R):
    u ^ B * (1 - u) ^ C * (1 - u + z * u) ^ A =
      ∑ r ∈ Finset.range (A + 1),((A.choose r:R) * z ^ r) *
        (u ^ (B + r) * (1 - u) ^ (A + C - r)):= by
  have hbin:(1 - u + z * u) ^ A =
      ∑ r ∈ Finset.range (A + 1),
        (z * u) ^ r * (1 - u) ^ (A - r) * (A.choose r:R):= by
    simpa only [add_comm (z * u) (1 - u)] using (add_pow (z * u) (1 - u) A)
  rw [hbin,Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have hle:r ≤ A:= Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
  have hexp:A + C - r = C + (A - r):= by omega
  rw [hexp,mul_pow,pow_add,pow_add]
  ring
theorem d16 (A B C:ℕ) (z u:R):
    u ^ A * (1 - u) ^ C * (1 - z * u) ^ B =
      ∑ r ∈ Finset.range (B + 1),
        ((-1:R) ^ r * (B.choose r:R) * z ^ r) *
          (u ^ (A + r) * (1 - u) ^ C):= by
  have hbin:(1 - z * u) ^ B =
      ∑ r ∈ Finset.range (B + 1),(-(z * u)) ^ r * (B.choose r:R):= by
    have h:= add_pow (-(z * u)) (1:R) B
    simpa only [one_pow,mul_one,neg_add_eq_sub] using h
  rw [hbin,Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  rw [neg_pow,mul_pow,pow_add]
  ring
end Math.B699.N17.N11
open scoped Nat
namespace Math.B699.N18
open Math.B699.N13
def d18 (u v:ℕ):ℕ:=
  (u + v / 2) ! * (v / 2) !
def d17 (u v:ℕ):ℕ:=
  u ! * v !
end Math.B699.N18
namespace Math.B699.N18
open Math.B699.N13
def d53 (u v:ℕ):ℚ:=
  (d18 u v:ℚ) / (d17 u v:ℚ)
end Math.B699.N18
namespace Math.B699.N5
open Math.B699.N18
def d36 (x:ℚ):ℚ:=
  (4 * x) * (4 * x + 1) * (4 * x + 2) * (4 * x + 3) * x
def d35 (x:ℚ):ℚ:=
  (4 * x) * (4 * x + 1) * (4 * x + 2) * (4 * x + 3) * (x + 1)
def d10 (x:ℚ):ℚ:=
  (3 * x + 1) * (3 * x + 2) * (3 * x + 3) * (2 * x) * (2 * x + 1)
def d52 (x:ℚ):ℚ:= d36 x / d10 x
def ratioOne (x:ℚ):ℚ:= d35 x / d10 x
end Math.B699.N5
namespace Math.B699.N8
open Math.B699.N18
inductive Track
  | evenZero | evenOne | oddZero | oddOne
  deriving DecidableEq,Repr
def rho:Track → ℕ
  | .evenZero => 0
  | .evenOne => 0
  | .oddZero => 1
  | .oddOne => 1
def delta:Track → ℕ
  | .evenZero => 0
  | .evenOne => 1
  | .oddZero => 0
  | .oddOne => 1
def kMin:Track → ℕ
  | .evenZero => 1
  | .evenOne => 1
  | .oddZero => 0
  | .oddOne => 0
def cutoff:Track → ℕ
  | .evenZero => 16
  | .evenOne => 1
  | .oddZero => 0
  | .oddOne => 15
def loss:Track → ℕ
  | .evenZero => 9
  | .evenOne => 1
  | .oddZero => 2
  | .oddOne => 10
def d21:Track → ℚ
  | .evenZero => 1
  | .evenOne => 4
  | .oddZero => 1
  | .oddOne => 1
def divisor:Track → ℕ → ℚ
  | .evenZero,k => d53 (8 * k) (2 * k - 1)
  | .evenOne,k => d53 (8 * k - 1) (2 * k)
  | .oddZero,k => d53 (8 * k + 4) (2 * k)
  | .oddOne,k => d53 (8 * k + 3) (2 * k + 1)
def d34:Track → ℚ → ℚ
  | .evenZero,x => (9 * x) * (9 * x + 1) * (9 * x + 2) * (9 * x + 3) * (9 * x + 4) * (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (x)
  | .evenOne,x => (9 * x) * (9 * x + 1) * (9 * x + 2) * (9 * x + 3) * (9 * x + 4) * (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (x + 1)
  | .oddZero,x => (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (9 * x + 9) * (9 * x + 10) * (9 * x + 11) * (9 * x + 12) * (9 * x + 13) * (x + 1)
  | .oddOne,x => (9 * x + 4) * (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (9 * x + 9) * (9 * x + 10) * (9 * x + 11) * (9 * x + 12) * (x + 1)
def d10:Track → ℚ → ℚ
  | .evenZero,x => (8 * x + 1) * (8 * x + 2) * (8 * x + 3) * (8 * x + 4) * (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (8 * x + 8) * (2 * x) * (2 * x + 1)
  | .evenOne,x => (8 * x) * (8 * x + 1) * (8 * x + 2) * (8 * x + 3) * (8 * x + 4) * (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (2 * x + 1) * (2 * x + 2)
  | .oddZero,x => (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (8 * x + 8) * (8 * x + 9) * (8 * x + 10) * (8 * x + 11) * (8 * x + 12) * (2 * x + 1) * (2 * x + 2)
  | .oddOne,x => (8 * x + 4) * (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (8 * x + 8) * (8 * x + 9) * (8 * x + 10) * (8 * x + 11) * (2 * x + 2) * (2 * x + 3)
def ratio (t:Track) (x:ℚ):ℚ:= d34 t x / d10 t x
def d54:ℚ:= 602791 / 500000
def d55:ℚ:= d54 ^ 8
end Math.B699.N8
namespace Math.B699.N8
open Math.B699.N18
open Math.B699.N13
def d33 (t:Track) (k:ℕ):ℚ:=
  divisor t k / (d54 ^ (4 * rho t) * d55 ^ k)
end Math.B699.N8
namespace Math.B699.N6
open Math.B699.N18
def d54:ℚ:= 1302991 / 1000000
def d55:ℚ:= d54 ^ 5
def divisor (m:ℕ):ℚ:= d53 (5 * m) (4 * m - 1)
def d34 (x:ℚ):ℚ:= (7 * x) * (7 * x + 1) * (7 * x + 2) * (7 * x + 3) * (7 * x + 4) * (7 * x + 5) * (7 * x + 6) * (2 * x) * (2 * x + 1)
def d10 (x:ℚ):ℚ:= (5 * x + 1) * (5 * x + 2) * (5 * x + 3) * (5 * x + 4) * (5 * x + 5) * (4 * x) * (4 * x + 1) * (4 * x + 2) * (4 * x + 3)
def ratio (x:ℚ):ℚ:= d34 x / d10 x
end Math.B699.N6
namespace Math.B699.N6
open Math.B699.N18
open Math.B699.N13
def d33 (m:ℕ):ℚ:= divisor m / d55 ^ m
end Math.B699.N6
namespace Math.B699.N7
open Math.B699.N18
def d34 (x:ℚ):ℚ:= (19 * x) * (19 * x + 1) * (19 * x + 2) * (19 * x + 3) * (19 * x + 4) * (19 * x + 5) * (19 * x + 6) * (19 * x + 7) * (19 * x + 8) * (19 * x + 9) * (19 * x + 10) * (19 * x + 11) * (19 * x + 12) * (19 * x + 13) * (19 * x + 14) * (19 * x + 15) * (19 * x + 16) * (19 * x + 17) * (19 * x + 18) * (4 * x) * (4 * x + 1) * (4 * x + 2) * (4 * x + 3)
def d10 (x:ℚ):ℚ:= (15 * x + 1) * (15 * x + 2) * (15 * x + 3) * (15 * x + 4) * (15 * x + 5) * (15 * x + 6) * (15 * x + 7) * (15 * x + 8) * (15 * x + 9) * (15 * x + 10) * (15 * x + 11) * (15 * x + 12) * (15 * x + 13) * (15 * x + 14) * (15 * x + 15) * (8 * x) * (8 * x + 1) * (8 * x + 2) * (8 * x + 3) * (8 * x + 4) * (8 * x + 5) * (8 * x + 6) * (8 * x + 7)
def ratio (x:ℚ):ℚ:= d34 x / d10 x
end Math.B699.N7
namespace Math.B699.N4
open Math.B699.N18
def d34 (x:ℚ):ℚ:= (9 * x) * (9 * x + 1) * (9 * x + 2) * (9 * x + 3) * (9 * x + 4) * (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (2 * x) * (2 * x + 1)
def d10 (x:ℚ):ℚ:= (7 * x + 1) * (7 * x + 2) * (7 * x + 3) * (7 * x + 4) * (7 * x + 5) * (7 * x + 6) * (7 * x + 7) * (4 * x) * (4 * x + 1) * (4 * x + 2) * (4 * x + 3)
def ratio (x:ℚ):ℚ:= d34 x / d10 x
end Math.B699.N4
namespace Math.B699.N3
def d11 (w k:ℕ):ℤ:= (k:ℤ) - (w:ℤ)
@[simp] theorem d12 (w:ℕ):d11 w w = 0:= by
  simp [d11]
end Math.B699.N3
namespace Math.B699.N9
open Polynomial
theorem d9 {n j:ℕ}
    (hn:(2:ℕ) ^ 15360 ≤ n) (hij:11 < j) (hjn:j ≤ n / 2): True := by
  classical
  letI:Infinite ℚ:= Infinite.of_injective (fun n:ℕ => (n:ℚ)) Nat.cast_injective
  have u0 {n k p e:ℕ}
      (hp:p.Prime) (hk:k ≤ n) (he:1 ≤ e)
      (hm:n % p ^ e < k % p ^ e):p ∣ n.choose k:= by
    have hmod:(k % p ^ e + (n - k) % p ^ e) % p ^ e = n % p ^ e:= by
      rw [← Nat.add_mod,Nat.add_sub_of_le hk]
    have hcarry:p ^ e ≤ k % p ^ e + (n - k) % p ^ e:= by
      by_contra h
      have hsmall:k % p ^ e + (n - k) % p ^ e < p ^ e:= Nat.lt_of_not_ge h
      rw [Nat.mod_eq_of_lt hsmall] at hmod
      have hle:k % p ^ e ≤ n % p ^ e:= by
        rw [← hmod]
        exact Nat.le_add_right _ _
      exact (Nat.not_lt_of_ge hle) hm
    have hbound:Nat.log p n < Nat.log p n + e + 1:= by omega
    have he_mem:e ∈ Finset.Ico 1 (Nat.log p n + e + 1):= by
      simp only [Finset.mem_Ico]
      omega
    have hfactor:0 < (n.choose k).factorization p:= by
      rw [Nat.factorization_choose hp hk hbound]
      exact Finset.card_pos.mpr ⟨e,Finset.mem_filter.mpr ⟨he_mem,hcarry⟩⟩
    exact Nat.dvd_of_factorization_pos (Nat.ne_of_gt hfactor)
  have u1 (k j:ℕ) (hj:j ∈ Finset.Icc 1 k):
      (∏ i ∈ (Finset.Icc 1 k).erase j,Nat.dist i j) =
        (j - 1).factorial * (k - j).factorial:= by
    have hj':= Finset.mem_Icc.mp hj
    have hsplit:(Finset.Icc 1 k).erase j =
        Finset.Icc 1 (j - 1) ∪ Finset.Icc (j + 1) k:= by
      ext i
      simp only [Finset.mem_erase,Finset.mem_Icc,Finset.mem_union]
      omega
    have hdisj:Disjoint (Finset.Icc 1 (j - 1)) (Finset.Icc (j + 1) k):= by
      apply Finset.disjoint_left.mpr
      intro i hi hi'
      simp only [Finset.mem_Icc] at hi hi'
      omega
    rw [hsplit,Finset.prod_union hdisj]
    congr 1
    · rw [← Finset.prod_Ico_id_eq_factorial]
      refine Finset.prod_bij (fun i _ ↦ j - i) ?_ ?_ ?_ ?_
      · intro i hi
        simp only [Finset.mem_Icc] at hi
        simp only [Finset.mem_Ico]
        omega
      · intro i hi i' hi' heq
        simp only [Finset.mem_Icc] at hi hi'
        omega
      · intro b hb
        simp only [Finset.mem_Ico] at hb
        refine ⟨j - b,?_,?_⟩
        · simp only [Finset.mem_Icc]
          omega
        · omega
      · intro i hi
        apply Nat.dist_eq_sub_of_le
        have hi':= Finset.mem_Icc.mp hi
        omega
    · rw [← Finset.prod_Ico_id_eq_factorial]
      refine Finset.prod_bij (fun i _ ↦ i - j) ?_ ?_ ?_ ?_
      · intro i hi
        simp only [Finset.mem_Icc] at hi
        simp only [Finset.mem_Ico]
        omega
      · intro i hi i' hi' heq
        simp only [Finset.mem_Icc] at hi hi'
        omega
      · intro b hb
        simp only [Finset.mem_Ico] at hb
        refine ⟨b + j,?_,?_⟩
        · simp only [Finset.mem_Icc]
          omega
        · omega
      · intro i hi
        apply Nat.dist_eq_sub_of_le_right
        have hi':= Finset.mem_Icc.mp hi
        omega
  have u2 (k n p:ℕ) (hk:1 ≤ k) (hp:p.Prime):
      ∃ j ∈ Finset.Icc 1 k,
        (N0.product k n).factorization p ≤
          (k - 1).factorial.factorization p + (n + j).factorization p:= by
    have hnon:(Finset.Icc 1 k).Nonempty:= ⟨1,Finset.mem_Icc.mpr ⟨le_rfl,hk⟩⟩
    obtain ⟨j,hj,hmax⟩:= (Finset.Icc 1 k).exists_max_image
      (fun i ↦ (n + i).factorization p) hnon
    have hterm:∀ i ∈ (Finset.Icc 1 k).erase j,
        p ^ (n + i).factorization p ∣ Nat.dist i j:= by
      intro i hi
      have hi':= (Finset.mem_erase.mp hi).2
      have hpi:p ^ (n + i).factorization p ∣ n + i:= Nat.ordProj_dvd _ _
      have hpj:p ^ (n + i).factorization p ∣ n + j:=
        (pow_dvd_pow p (hmax i hi')).trans (Nat.ordProj_dvd _ _)
      have hsub1:n + i - (n + j) = i - j:= by omega
      have hsub2:n + j - (n + i) = j - i:= by omega
      have h1:= Nat.dvd_sub hpi hpj
      have h2:= Nat.dvd_sub hpj hpi
      rw [hsub1] at h1
      rw [hsub2] at h2
      exact dvd_add h1 h2
    have hprod:= Finset.prod_dvd_prod_of_dvd (s:= (Finset.Icc 1 k).erase j) (fun i ↦ p ^ (n + i).factorization p) (fun i ↦ Nat.dist i j) hterm
    rw [u1 k j hj] at hprod
    have hfact:(j - 1).factorial * (k - j).factorial ∣ (k - 1).factorial:= by
      have hs:j - 1 + (k - j) = k - 1:= by
        have hj':= Finset.mem_Icc.mp hj
        omega
      rw [← hs]
      exact Nat.factorial_mul_factorial_dvd_factorial_add _ _
    have hpfull:= hprod.trans hfact
    rw [Finset.prod_pow_eq_pow_sum] at hpfull
    have hsum:= (hp.pow_dvd_iff_le_factorization (Nat.factorial_ne_zero (k - 1))).mp hpfull
    refine ⟨j,hj,?_⟩
    have hne:∀ i ∈ Finset.Icc 1 k,n + i ≠ 0:= by
      intro i hi
      have hi':= Finset.mem_Icc.mp hi
      omega
    rw [N0.product,Nat.factorization_prod_apply hne]
    have hsplit:= Finset.sum_erase_add (s:= Finset.Icc 1 k)
      (f:= fun i ↦ (n + i).factorization p) hj
    omega
  let u3 (threshold a:ℕ):ℕ:=
    (a.primeFactors.filter (fun p ↦ threshold ≤ p)).prod (fun p ↦ p ^ a.factorization p)
  let u4 (n i j:ℕ):Prop:=
    ∃ p:ℕ,p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j)
  have u5 {n i p e:ℕ}
      (hp:p.Prime) (hpi:i ≤ p) (hin:i ≤ n) (he:0 < e)
      (heval:e ≤ (n.choose i).factorization p):
      n % p ^ (e + if p = i then 1 else 0) < i:= by
    classical
    let δ:ℕ:= if p = i then 1 else 0
    let S:= (Finset.Ico 1 (Nat.log p n + 1)).filter
      (fun t ↦ p ^ t ≤ i % p ^ t + (n - i) % p ^ t)
    have hcard:S.card = (n.choose i).factorization p:= by
      simpa only [S] using
        (Nat.factorization_choose hp hin (Nat.lt_add_one (Nat.log p n))).symm
    have hlow:∀ t ∈ S,δ + 1 ≤ t:= by
      intro t ht
      obtain ⟨htI,hcarry⟩:= Finset.mem_filter.mp ht
      have ht1:1 ≤ t:= (Finset.mem_Ico.mp htI).1
      by_cases h:p = i
      · have hne:t ≠ 1:= by
          intro htEq
          have hc:= hcarry
          rw [htEq,pow_one,h,Nat.mod_self,Nat.zero_add] at hc
          have hmod:= Nat.mod_lt (n - i) (by simpa only [h] using hp.pos:0 < i)
          omega
        simpa only [δ,h,↓reduceIte] using (show 2 ≤ t by omega)
      · simpa only [δ,h,↓reduceIte,Nat.zero_add] using ht1
    have hex:∃ t ∈ S,e + δ ≤ t:= by
      by_contra h
      have hsub:S ⊆ Finset.Ico (δ + 1) (e + δ):= by
        intro t ht
        refine Finset.mem_Ico.mpr ⟨hlow t ht,?_⟩
        by_contra hlt
        exact h ⟨t,ht,by omega⟩
      have hle:= Finset.card_le_card hsub
      rw [hcard,Nat.card_Ico] at hle
      omega
    obtain ⟨t,ht,het⟩:= hex
    have ht1:1 ≤ t:= (Finset.mem_Ico.mp (Finset.mem_filter.mp ht).1).1
    have hipow:i < p ^ t:= by
      by_cases h:p = i
      · have ht2:2 ≤ t:= by
          have hh:= hlow t ht
          simpa only [δ,h,↓reduceIte] using hh
        have hh:= Nat.pow_lt_pow_right hp.one_lt (show 1 < t by omega)
        simpa only [pow_one,h] using hh
      · have hip:i < p:= by omega
        exact hip.trans_le (le_self_pow hp.one_lt.le (by omega))
    have hcarry:p ^ t ≤ i + (n - i) % p ^ t:= by
      simpa only [Nat.mod_eq_of_lt hipow] using (Finset.mem_filter.mp ht).2
    have hmod:(i + (n - i) % p ^ t) % p ^ t = n % p ^ t:= by
      have hh:(i % p ^ t + (n - i) % p ^ t) % p ^ t = n % p ^ t:= by
        rw [← Nat.add_mod,Nat.add_sub_of_le hin]
      simpa only [Nat.mod_eq_of_lt hipow] using hh
    have hrem:(n - i) % p ^ t < p ^ t:= Nat.mod_lt _ (pow_pos hp.pos _)
    have hsmall:n % p ^ t < i:= by
      rw [← hmod,Nat.mod_eq_sub_mod hcarry]
      exact (Nat.mod_le _ _).trans_lt (by omega)
    change n % p ^ (e + δ) < i
    rw [← Nat.mod_mod_of_dvd n (Nat.pow_dvd_pow p het)]
    exact (Nat.mod_le _ _).trans_lt hsmall
  have u6 (s:Finset ℕ) (f:ℕ → ℕ) (B:ℕ):
      (∀ p ∈ s,p.Prime) → (∀ p ∈ s,p ^ f p ∣ B) →
        s.prod (fun p ↦ p ^ f p) ∣ B:= by
    classical
    induction s using Finset.induction_on with
    | empty => simp
    | @insert p s hps ih =>
        intro hprime hdvd
        rw [Finset.prod_insert hps]
        have hcop:(p ^ f p).Coprime (s.prod (fun q ↦ q ^ f q)):= by
          apply Nat.coprime_prod_right_iff.mpr
          intro q hq
          apply Nat.coprime_pow_primes _ _
            (hprime p (Finset.mem_insert_self p s))
            (hprime q (Finset.mem_insert_of_mem hq))
          intro heq
          subst q
          exact hps hq
        apply hcop.mul_dvd_of_dvd_of_dvd (hdvd p (Finset.mem_insert_self p s))
        exact ih (fun q hq ↦ hprime q (Finset.mem_insert_of_mem hq))
          (fun q hq ↦ hdvd q (Finset.mem_insert_of_mem hq))
  let u7 (n i j:ℕ):ℕ:=
    ((n.choose i).primeFactors.filter (fun p ↦ i ≤ p ∧ ¬ p ∣ n.choose j)).prod
      (fun p ↦ p ^ (n.choose i).factorization p)
  have u8 {n i j:ℕ}
      (hno:¬ u4 n i j):
      u7 n i j = u3 i (n.choose i):= by
    classical
    have hsets:(n.choose i).primeFactors.filter (fun p ↦ i ≤ p ∧ ¬ p ∣ n.choose j) =
        (n.choose i).primeFactors.filter (fun p ↦ i ≤ p):= by
      ext p
      simp only [Finset.mem_filter]
      constructor
      · exact fun h ↦ ⟨h.1,h.2.1⟩
      · rintro ⟨hmem,hpi⟩
        refine ⟨hmem,hpi,?_⟩
        intro hpj
        exact hno ⟨p,Nat.prime_of_mem_primeFactors hmem,hpi,
          Nat.dvd_gcd (Nat.dvd_of_mem_primeFactors hmem) hpj⟩
    unfold u7 u3
    rw [hsets]
  have u9 {N k t Q:ℕ}
      (hk:k ≤ N) (hlo:N - k < t) (hhi:t ≤ N) (hQt:Q ∣ t):
      Q ∣ N.descFactorial k:= by
    rw [Nat.descFactorial_eq_prod_range]
    have hmem:N - t ∈ Finset.range k:= Finset.mem_range.mpr (by omega)
    have hd:= Finset.dvd_prod_of_mem (fun r:ℕ ↦ N - r) hmem
    have heq:N - (N - t) = t:= by omega
    rw [heq] at hd
    exact hQt.trans hd
  let u10 (n i:ℕ):ℕ:=
    ((n.choose i).primeFactors.filter (fun p ↦ p < i)).prod
      (fun p ↦ p ^ (n.choose i).factorization p)
  have u11 {n i:ℕ} (hin:i ≤ n):
      u10 n i * u3 i (n.choose i) = n.choose i:= by
    classical
    unfold u10 u3
    calc
      _ = (n.choose i).primeFactors.prod (fun p ↦ p ^ (n.choose i).factorization p):= by
        simpa only [Nat.not_lt] using Finset.prod_filter_mul_prod_filter_not
          (n.choose i).primeFactors (fun p ↦ p < i)
          (fun p ↦ p ^ (n.choose i).factorization p)
      _ = n.choose i:=
        (Nat.prod_primeFactors_pow_factorization (Nat.ne_of_gt (Nat.choose_pos hin))).symm
  let u23 (s:ℕ):ℕ:= ∏ h ∈ Finset.Icc 1 s,h.factorial
  have u12 (s:ℕ):0 < u23 s:= by
    unfold u23
    apply Finset.prod_pos
    intro h _
    exact Nat.factorial_pos h
  let u21 (s:ℕ):ℕ:= ∑ h ∈ Finset.Icc 1 s,h
  let u25 (i r s:ℕ):ℕ:=
    2 ^ (2 * u21 s) * (u23 s) ^ 2 *
      u23 (i - r - 1)
  have u13 (i r s:ℕ):0 < u25 i r s:= by
    unfold u25
    exact Nat.mul_pos
      (Nat.mul_pos (Nat.pow_pos (by decide:0 < 2))
        (Nat.pow_pos (u12 s)))
      (u12 _)
  have u14 (n:ℕ):
      ∀ k:ℕ,k ≤ n →
        n ^ (k + 1) ≤ n * n.descFactorial k +
          (∑ a ∈ Finset.range k,a) * n ^ k:= by
    intro k
    induction k with
    | zero => intro _; simp
    | succ k ih =>
        intro hkn
        have hk:k ≤ n:= by omega
        have hh:= ih hk
        have hdecomp:n * n.descFactorial k =
            n.descFactorial (k + 1) + k * n.descFactorial k:= by
          rw [Nat.descFactorial_succ,← Nat.add_mul,Nat.sub_add_cancel hk]
        have hD:n * n.descFactorial k ≤ n ^ (k + 1):= by
          simpa only [pow_succ'] using
            Nat.mul_le_mul_left n (Nat.descFactorial_le_pow n k)
        calc
          n ^ (k + 1 + 1) = n * n ^ (k + 1):= by rw [pow_succ']
          _ ≤ n * (n * n.descFactorial k +
              (∑ a ∈ Finset.range k,a) * n ^ k):= Nat.mul_le_mul_left n hh
          _ = n * (n.descFactorial (k + 1) + k * n.descFactorial k +
              (∑ a ∈ Finset.range k,a) * n ^ k):= by rw [hdecomp]
          _ = n * n.descFactorial (k + 1) + k * (n * n.descFactorial k) +
              (∑ a ∈ Finset.range k,a) * n ^ (k + 1):= by rw [pow_succ']; ring
          _ ≤ n * n.descFactorial (k + 1) + k * n ^ (k + 1) +
              (∑ a ∈ Finset.range k,a) * n ^ (k + 1):=
            Nat.add_le_add_right (Nat.add_le_add_left (Nat.mul_le_mul_left k hD) _) _
          _ = n * n.descFactorial (k + 1) +
              (∑ a ∈ Finset.range (k + 1),a) * n ^ (k + 1):= by
            rw [Finset.sum_range_succ]
            ring
  have u15 {n i:ℕ} (hn:0 < n) (hin:i ≤ n)
      (hlarge:i * (i - 1) ≤ n):
      n ^ i ≤ 2 * n.descFactorial i:= by
    have he:= u14 n i hin
    have hs:2 * (∑ a ∈ Finset.range i,a) ≤ n:= by
      have hsum:= Finset.sum_range_id_mul_two i
      nlinarith
    have hm:= Nat.mul_le_mul_right (n ^ i) hs
    rw [pow_succ'] at he
    have hmul:n * n ^ i ≤ n * (2 * n.descFactorial i):= by
      nlinarith
    exact Nat.le_of_mul_le_mul_left hmul hn
  let u24 (i r s:ℕ):ℕ:=
    2 * u21 s + u21 (i - r - 1)
  let u31 (N s:ℕ):ℕ:=
    ∏ h ∈ Finset.Icc 1 s,N.choose h
  have u26 (N s:ℕ):
      u23 s * u31 N s ≤ N ^ u21 s:= by
    unfold u23 u31
    calc
      _ = ∏ h ∈ Finset.Icc 1 s,h.factorial * N.choose h:=
        (Finset.prod_mul_distrib).symm
      _ ≤ ∏ h ∈ Finset.Icc 1 s,N ^ h:= by
        apply Finset.prod_le_prod (fun _ _ ↦ Nat.zero_le _)
        intro h _
        rw [← Nat.descFactorial_eq_factorial_mul_choose]
        exact Nat.descFactorial_le_pow N h
      _ = _:= by rw [Finset.prod_pow_eq_pow_sum] <;> rfl
  let u34 (n i r:ℕ):ℕ:=
    ∏ h ∈ Finset.Icc 1 (i - r - 1),(n - i + h).choose h
  have u27 {n i r:ℕ} (hin:i ≤ n):
      u23 (i - r - 1) * u34 n i r ≤
        n ^ u21 (i - r - 1):= by
    unfold u23 u34
    calc
      _ = ∏ h ∈ Finset.Icc 1 (i - r - 1),
          h.factorial * (n - i + h).choose h:= (Finset.prod_mul_distrib).symm
      _ ≤ ∏ h ∈ Finset.Icc 1 (i - r - 1),n ^ h:= by
        apply Finset.prod_le_prod (fun _ _ ↦ Nat.zero_le _)
        intro h hh
        have hh':= (Finset.mem_Icc.mp hh).2
        rw [← Nat.descFactorial_eq_factorial_mul_choose]
        exact (Nat.descFactorial_le_pow (n - i + h) h).trans
          (Nat.pow_le_pow_left (by omega:n - i + h ≤ n) h)
      _ = _:= by rw [Finset.prod_pow_eq_pow_sum] <;> rfl
  have u28 (j k:ℕ):
      4 * (j * k) ≤ (j + k) ^ 2:= by
    rcases le_total j k with h | h
    · have he:k = j + (k - j):= by omega
      rw [he]
      nlinarith
    · have he:j = k + (j - k):= by omega
      rw [he]
      nlinarith
  let u37 (n i j r s:ℕ):ℕ:=
    u31 j s * u31 (n - j) s * u34 n i r
  have u29 {n i j r s:ℕ}
      (hin:i ≤ n) (hjn:j ≤ n):
      u25 i r s * u37 n i j r s ≤
        n ^ u24 i r s:= by
    let T:= u21 s
    let L:= i - r - 1
    let B:= u23 s
    have hx:= u26 j s
    have hy:= u26 (n - j) s
    have hc:B ^ 2 * (u31 j s * u31 (n - j) s) ≤
        (j * (n - j)) ^ T:= by
      calc
        _ = (B * u31 j s) * (B * u31 (n - j) s):= by ring
        _ ≤ j ^ T * (n - j) ^ T:= Nat.mul_le_mul hx hy
        _ = _:= (mul_pow _ _ _).symm
    have hjk:4 * (j * (n - j)) ≤ n ^ 2:= by
      have hn:j + (n - j) = n:= by omega
      simpa only [hn] using u28 j (n - j)
    have hchildren:
        2 ^ (2 * T) * (B ^ 2 * (u31 j s * u31 (n - j) s)) ≤
          n ^ (2 * T):= by
      calc
        _ ≤ 2 ^ (2 * T) * (j * (n - j)) ^ T:= Nat.mul_le_mul_left _ hc
        _ = (4 * (j * (n - j))) ^ T:= by
          rw [show (4:ℕ) = 2 ^ 2 by decide]
          simp only [mul_pow,pow_mul]
        _ ≤ (n ^ 2) ^ T:= Nat.pow_le_pow_left hjk T
        _ = _:= by rw [← pow_mul]
    have hm:= u27 (r:= r) hin
    calc
      u25 i r s * u37 n i j r s =
          (2 ^ (2 * T) * (B ^ 2 * (u31 j s * u31 (n - j) s))) *
            (u23 L * u34 n i r):= by
        unfold u25 u37
        dsimp only [T,B,L]
        ring
      _ ≤ n ^ (2 * T) * n ^ u21 L:= Nat.mul_le_mul hchildren hm
      _ = n ^ u24 i r s:= by
        rw [← pow_add] <;> rfl
  have u30 {n i r a p e:ℕ}
      (hp:p.Prime) (hpi:i ≤ p) (hin:i ≤ n) (ha:a < i)
      (hdiv:p ^ e ∣ n - a):
      p ^ (e * (a - r)) ∣ u34 n i r:= by
    have hlocal:∀ h ∈ Finset.Icc (i - a) (i - r - 1),
        p ^ e ∣ (n - i + h).choose h:= by
      intro h hh
      obtain ⟨hlo,hhi⟩:= Finset.mem_Icc.mp hh
      have hhN:h ≤ n - i + h:= by omega
      have hd:p ^ e ∣ (n - i + h).descFactorial h:=
        u9 hhN (by omega) (by omega) hdiv
      rw [Nat.descFactorial_eq_factorial_mul_choose] at hd
      exact ((hp.coprime_factorial_of_lt (by omega:h < p)).pow_left e).dvd_of_dvd_mul_left hd
    have hd:= Finset.prod_dvd_prod_of_dvd (s:= Finset.Icc (i - a) (i - r - 1))
      (fun _ ↦ p ^ e) (fun h ↦ (n - i + h).choose h) hlocal
    have hsub:Finset.Icc (i - a) (i - r - 1) ⊆ Finset.Icc 1 (i - r - 1):= by
      intro h hh
      simp only [Finset.mem_Icc] at hh ⊢
      omega
    have hd2:= hd.trans (Finset.prod_dvd_prod_of_subset _ _ _ hsub)
    have hcard:(Finset.Icc (i - a) (i - r - 1)).card = a - r:= by
      rw [Nat.card_Icc]
      omega
    simpa only [Finset.prod_const,hcard,← pow_mul,u34] using hd2
  have u32 (a b c r s:ℕ) (hsplit:b + c = a):
      2 * s - r ≤ (s - b) + (s - c) + (a - r):= by
    omega
  have u40 {j k Q:ℕ} (hQ:0 < Q)
      (hno:j % Q ≤ (j + k) % Q):
      j % Q + k % Q = (j + k) % Q:= by
    have hj:= Nat.mod_lt j hQ
    have hk:= Nat.mod_lt k hQ
    have hmod:= Nat.add_mod j k Q
    by_cases hlt:j % Q + k % Q < Q
    · simpa only [Nat.mod_eq_of_lt hlt] using hmod.symm
    · have hle:Q ≤ j % Q + k % Q:= by omega
      have hsub:j % Q + k % Q - Q < Q:= by omega
      rw [Nat.mod_eq_sub_mod hle,Nat.mod_eq_of_lt hsub] at hmod
      omega
  have u41 {n i j p e:ℕ}
      (_hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2)
      (hp:p.Prime) (hpi:i ≤ p) (he:0 < e)
      (heval:e ≤ (n.choose i).factorization p)
      (havoid:¬ p ∣ n.choose j):
      ∃ a b c:ℕ,a < i ∧ b + c = a ∧
        p ^ e ∣ n - a ∧ p ^ e ∣ j - b ∧ p ^ e ∣ (n - j) - c:= by
    let Q:= p ^ (e + if p = i then 1 else 0)
    let a:= n % Q
    let b:= j % Q
    let c:= (n - j) % Q
    have hQ:0 < Q:= pow_pos hp.pos _
    have ha:a < i:= u5 hp hpi (by omega) he heval
    have hb:b ≤ a:= by
      by_contra h
      apply havoid
      apply u0 hp (by omega)
        (by omega:1 ≤ e + if p = i then 1 else 0)
      change a < b
      omega
    have hsum:b + c = a:= by
      have hn:j + (n - j) = n:= by omega
      simpa only [hn] using u40 (j:= j) (k:= n - j) hQ
        (by simpa only [hn] using hb)
    have hpow:p ^ e ∣ Q:= Nat.pow_dvd_pow p (by omega)
    have hd:∀ N:ℕ,Q ∣ N - N % Q:= by
      intro N
      refine ⟨N / Q,?_⟩
      have hm:= Nat.mod_add_div N Q
      omega
    exact ⟨a,b,c,ha,hsum,hpow.trans (hd n),hpow.trans (hd j),
      hpow.trans (hd (n - j))⟩
  have u42 {N h b p e:ℕ}
      (hp:p.Prime) (hhp:h < p) (hhN:h ≤ N)
      (hbh:b < h) (hdiv:p ^ e ∣ N - b):
      p ^ e ∣ N.choose h:= by
    have hd:p ^ e ∣ N.descFactorial h:=
      u9 hhN (by omega) (Nat.sub_le N b) hdiv
    rw [Nat.descFactorial_eq_factorial_mul_choose] at hd
    exact ((hp.coprime_factorial_of_lt hhp).pow_left e).dvd_of_dvd_mul_left hd
  have u43 {N i s b p e:ℕ}
      (hp:p.Prime) (hpi:i ≤ p) (hsi:s < i) (hiN:i ≤ N)
      (hdiv:p ^ e ∣ N - b):
      p ^ (e * (s - b)) ∣ u31 N s:= by
    have hlocal:∀ h ∈ Finset.Icc (b + 1) s,p ^ e ∣ N.choose h:= by
      intro h hh
      obtain ⟨hlo,hhi⟩:= Finset.mem_Icc.mp hh
      exact u42 hp (by omega) (by omega) (by omega) hdiv
    have hd:= Finset.prod_dvd_prod_of_dvd (s:= Finset.Icc (b + 1) s)
      (fun _ ↦ p ^ e) (fun h ↦ N.choose h) hlocal
    have hsub:Finset.Icc (b + 1) s ⊆ Finset.Icc 1 s:= by
      intro h hh
      simp only [Finset.mem_Icc] at hh ⊢
      omega
    have hd2:= hd.trans (Finset.prod_dvd_prod_of_subset _ _ _ hsub)
    simpa only [Finset.prod_const,Nat.card_Icc,Nat.add_sub_add_right,← pow_mul,
      u31] using hd2
  have u33 {n i j r s p e:ℕ}
      (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2)
      (hsi:s < i) (hp:p.Prime) (hpi:i ≤ p) (he:0 < e)
      (heval:e ≤ (n.choose i).factorization p)
      (havoid:¬ p ∣ n.choose j):
      p ^ (e * (2 * s - r)) ∣ u37 n i j r s:= by
    obtain ⟨a,b,c,ha,hsum,hn,hj,hk⟩:=
      u41 hi hij hjn hp hpi he heval havoid
    have hleft:= u43 hp hpi hsi (by omega:i ≤ j) hj
    have hright:= u43 hp hpi hsi (by omega:i ≤ n - j) hk
    have hmother:= u30 (r:= r) hp hpi (by omega:i ≤ n) ha hn
    have hmul:= Nat.mul_dvd_mul (Nat.mul_dvd_mul hleft hright) hmother
    have hcover:= u32 a b c r s hsum
    have hexp:e * (2 * s - r) ≤ e * (s - b) + e * (s - c) + e * (a - r):= by
      simpa only [Nat.mul_add] using Nat.mul_le_mul_left e hcover
    have hpow:= Nat.pow_dvd_pow p hexp
    apply hpow.trans
    simpa only [pow_add,u37] using hmul
  have u35 {n i j r s:ℕ}
      (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i):
      u7 n i j ^ (2 * s - r) ∣ u37 n i j r s:= by
    classical
    unfold u7
    rw [← Finset.prod_pow]
    simp_rw [← pow_mul]
    apply u6
    · intro p hp
      exact Nat.prime_of_mem_primeFactors (Finset.mem_filter.mp hp).1
    · intro p hp
      obtain ⟨hmem,hpi,havoid⟩:= Finset.mem_filter.mp hp
      have hprime:= Nat.prime_of_mem_primeFactors hmem
      have hchoose:n.choose i ≠ 0:= Nat.ne_of_gt (Nat.choose_pos (by omega))
      have he:0 < (n.choose i).factorization p:= by
        have hh:= (hprime.dvd_iff_one_le_factorization hchoose).mp
          (Nat.dvd_of_mem_primeFactors hmem)
        omega
      exact u33 hi hij hjn hsi hprime hpi he le_rfl havoid
  have u36 {n i j r s:ℕ}
      (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
      (hno:¬ u4 n i j):
      u3 i (n.choose i) ^ (2 * s - r) ∣
        u37 n i j r s:= by
    rw [← u8 hno]
    exact u35 hi hij hjn hsi
  have u38 {N i s:ℕ} (hsi:s < i) (hiN:i ≤ N):
      0 < u31 N s:= by
    unfold u31
    apply Finset.prod_pos
    intro h hh
    have:= (Finset.mem_Icc.mp hh).2
    exact Nat.choose_pos (by omega)
  have u39 {n i r:ℕ} (hin:i ≤ n):
      0 < u34 n i r:= by
    unfold u34
    apply Finset.prod_pos
    intro h _
    exact Nat.choose_pos (by omega)
  have u22 {n i j r s:ℕ}
      (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
      (hno:¬ u4 n i j):
      u25 i r s * u3 i (n.choose i) ^ (2 * s - r) ≤
        n ^ u24 i r s:= by
    have hZ:0 < u37 n i j r s:= by
      unfold u37
      exact Nat.mul_pos (Nat.mul_pos
        (u38 hsi (by omega:i ≤ j))
        (u38 hsi (by omega:i ≤ n - j)))
        (u39 (by omega:i ≤ n))
    have hv:= Nat.le_of_dvd hZ
      (u36 hi hij hjn hsi hno)
    exact (Nat.mul_le_mul_left (u25 i r s) hv).trans
      (u29 (by omega) (by omega))
  have u16 {n i j r s:ℕ}
      (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
      (hlarge:i * (i - 1) ≤ n) (hno:¬ u4 n i j):
      u25 i r s * n ^ (i * (2 * s - r)) ≤
        (2 * i.factorial) ^ (2 * s - r) *
          (u10 n i) ^ (2 * s - r) * n ^ u24 i r s:= by
    have hn:0 < n:= by omega
    have hin:i ≤ n:= by omega
    have hhalf:= u15 hn hin hlarge
    have hv:= u22 (r:= r) hi hij hjn hsi hno
    have hdesc:n.descFactorial i =
        i.factorial * (u10 n i * u3 i (n.choose i)):= by
      rw [u11 hin,Nat.descFactorial_eq_factorial_mul_choose]
    calc
      _ = u25 i r s * (n ^ i) ^ (2 * s - r):= by rw [← pow_mul]
      _ ≤ u25 i r s * (2 * n.descFactorial i) ^ (2 * s - r):=
        Nat.mul_le_mul_left _ (Nat.pow_le_pow_left hhalf _)
      _ = (2 * i.factorial) ^ (2 * s - r) * (u10 n i) ^ (2 * s - r) *
          (u25 i r s *
            u3 i (n.choose i) ^ (2 * s - r)):= by
        rw [hdesc]
        simp only [mul_pow]
        ring
      _ ≤ _:= Nat.mul_le_mul_left _ hv
  have u17 (n i:ℕ):
      u10 n i = ((Finset.range i).filter Nat.Prime).prod
        (fun p ↦ p ^ (n.choose i).factorization p):= by
    classical
    unfold u10
    apply Finset.prod_subset
    · intro p hp
      obtain ⟨hmem,hpi⟩:= Finset.mem_filter.mp hp
      exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr hpi,
        Nat.prime_of_mem_primeFactors hmem⟩
    · intro p hp hnot
      have hpi:p < i:= Finset.mem_range.mp (Finset.mem_filter.mp hp).1
      have hpnot:p ∉ (n.choose i).primeFactors:= by
        intro hmem
        exact hnot (Finset.mem_filter.mpr ⟨hmem,hpi⟩)
      have he:(n.choose i).factorization p = 0:= by
        apply Finsupp.notMem_support_iff.mp
        simpa only [Nat.support_factorization] using hpnot
      simp only [he,pow_zero]
  have u18 {n i:ℕ} (hin:i ≤ n):
      N0.product i (n - i) = n.descFactorial i:= by
    rw [N0.product,Nat.descFactorial_eq_prod_range]
    refine Finset.prod_bij (fun j _ ↦ i - j) ?_ ?_ ?_ ?_
    · intro j hj
      simp only [Finset.mem_Icc] at hj
      simp only [Finset.mem_range]
      omega
    · intro j hj j' hj' hsame
      simp only [Finset.mem_Icc] at hj hj'
      omega
    · intro a ha
      simp only [Finset.mem_range] at ha
      refine ⟨i - a,?_,?_⟩
      · simp only [Finset.mem_Icc]
        omega
      · omega
    · intro j hj
      simp only [Finset.mem_Icc] at hj
      omega
  have u19 {n i p:ℕ}
      (hi:1 ≤ i) (hin:i ≤ n) (hp:p.Prime):
      ∃ a < i,(n.choose i).factorization p + i.factorization p ≤
        (n - a).factorization p:= by
    obtain ⟨j,hj,hbound⟩:=
      u2 i (n - i) p hi hp
    have hjBounds:= Finset.mem_Icc.mp hj
    have hchoose:n.choose i ≠ 0:= (Nat.choose_pos hin).ne'
    have hfactorial:i.factorial = i * (i - 1).factorial:= by
      simpa only [show i - 1 + 1 = i by omega] using Nat.factorial_succ (i - 1)
    have hfactorization:i.factorial.factorization p =
        i.factorization p + (i - 1).factorial.factorization p:= by
      rw [hfactorial,Nat.factorization_mul (by omega:i ≠ 0)
        (Nat.factorial_ne_zero (i - 1)),Finsupp.add_apply]
    rw [u18 hin,
      Nat.descFactorial_eq_factorial_mul_choose,
      Nat.factorization_mul (Nat.factorial_ne_zero i) hchoose,
      Finsupp.add_apply,hfactorization] at hbound
    have hposition:n - i + j = n - (i - j):= by omega
    rw [hposition] at hbound
    exact ⟨i - j,by omega,by omega⟩
  have u20 {n i p:ℕ}
      (hi:1 ≤ i) (hin:i ≤ n) (hp:p.Prime):
      ∃ a < i,p ^ ((n.choose i).factorization p + i.factorization p) ∣ n - a:= by
    obtain ⟨a,ha,hval⟩:= u19 hi hin hp
    exact ⟨a,ha,(hp.pow_dvd_iff_le_factorization (by omega:n - a ≠ 0)).2 hval⟩
  have u45 (Z Y:ℕ) (hZ:1 < Z):
      ∃ m:ℕ,4 * Y < Z ^ m:= by
    exact ⟨4 * Y,Nat.lt_pow_self hZ⟩
  let u46 (Z Y:ℕ) (hZ:1 < Z):ℕ:=
    Nat.find (u45 Z Y hZ)
  have u48 (Z Y:ℕ) (hZ:1 < Z)
      {k:ℕ} (hk:k < u46 Z Y hZ):Z ^ k ≤ 4 * Y:= by
    exact Nat.le_of_not_gt (Nat.find_min (u45 Z Y hZ) hk)
  have u47 (Z Y:ℕ) (hZ:1 < Z):
      4 * Y < Z ^ u46 Z Y hZ:= by
    exact Nat.find_spec (u45 Z Y hZ)
  have u49 (Z Y:ℕ) (hZ:1 < Z) (hY:0 < Y):
      0 < u46 Z Y hZ:= by
    apply Nat.pos_of_ne_zero
    intro hz
    have hthreshold:= u47 Z Y hZ
    rw [hz,Nat.pow_zero] at hthreshold
    omega
  have u50 (Z Y:ℕ) (hZ:1 < Z) (hY:0 < Y):
      Z ^ (u46 Z Y hZ - 1) ≤ 4 * Y:= by
    have hpos:= u49 Z Y hZ hY
    exact u48 Z Y hZ (by omega)
  have u51 (Z Y0 Y M:ℕ) (hZ:1 < Z)
      (hY:Y0 ≤ Y) (hM:0 < M) (hprevious:Z ^ (M - 1) ≤ 4 * Y0):
      M ≤ u46 Z Y hZ:= by
    apply Nat.le_of_not_gt
    intro h
    have hsmall:u46 Z Y hZ ≤ M - 1:= by omega
    have hpower:Z ^ u46 Z Y hZ ≤ Z ^ (M - 1):=
      Nat.pow_le_pow_right (by omega) hsmall
    have hupper:Z ^ u46 Z Y hZ ≤ 4 * Y:=
      Nat.le_trans hpower (Nat.le_trans hprevious (Nat.mul_le_mul_left 4 hY))
    exact Nat.not_le_of_gt (u47 Z Y hZ) hupper
  have u52 (Z J alpha M k:ℕ)
      (hrate:J ≤ Z ^ alpha)
      (hlookahead:4 ^ alpha * J ^ (M + 1) ≤ Z ^ (alpha * M)):
      4 ^ alpha * J ^ (M + 1 + k) ≤ Z ^ (alpha * (M + k)):= by
    calc
      _ = (4 ^ alpha * J ^ (M + 1)) * J ^ k:= by
        simp only [Nat.pow_add,Nat.mul_assoc]
      _ ≤ Z ^ (alpha * M) * (Z ^ alpha) ^ k:=
        Nat.mul_le_mul hlookahead (Nat.pow_le_pow_left hrate k)
      _ = Z ^ (alpha * (M + k)):= by
        simp only [← Nat.pow_mul,← Nat.pow_add,Nat.mul_add]
  have u53 (Z J alpha M m Y0 Y:ℕ)
      (hY:Y0 ≤ Y) (hMm:M ≤ m) (hprevious:Z ^ (m - 1) ≤ 4 * Y)
      (hrate:J ≤ Z ^ alpha) (hbase:J ^ M ≤ Y0 ^ alpha)
      (hlookahead:4 ^ alpha * J ^ (M + 1) ≤ Z ^ (alpha * M)):
      J ^ m ≤ Y ^ alpha:= by
    by_cases heq:m = M
    · rw [heq]
      exact Nat.le_trans hbase (Nat.pow_le_pow_left hY alpha)
    · let k:= m - (M + 1)
      have hm:m = M + 1 + k:= by dsimp [k]; omega
      have hpred:m - 1 = M + k:= by omega
      have hscaled:4 ^ alpha * J ^ m ≤ (Z ^ (m - 1)) ^ alpha:= by
        calc
          _ = 4 ^ alpha * J ^ (M + 1 + k):= by rw [hm]
          _ ≤ Z ^ (alpha * (M + k)):=
            u52 Z J alpha M k hrate hlookahead
          _ = (Z ^ (m - 1)) ^ alpha:= by
            rw [hpred,← Nat.pow_mul,Nat.mul_comm alpha (M + k)]
      have hcombined:= Nat.le_trans hscaled (Nat.pow_le_pow_left hprevious alpha)
      have hcancel:4 ^ alpha * J ^ m ≤ 4 ^ alpha * Y ^ alpha:= by
        simpa only [Nat.mul_pow] using hcombined
      exact Nat.le_of_mul_le_mul_left hcancel (Nat.pow_pos (by decide:0 < (4:ℕ)))
  have u44 (Z J alpha M Y0 Y:ℕ) (hZ:1 < Z)
      (hY0:0 < Y0) (hY:Y0 ≤ Y) (hM:0 < M)
      (hprevious:Z ^ (M - 1) ≤ 4 * Y0)
      (hrate:J ≤ Z ^ alpha) (hbase:J ^ M ≤ Y0 ^ alpha)
      (hlookahead:4 ^ alpha * J ^ (M + 1) ≤ Z ^ (alpha * M)):
      J ^ u46 Z Y hZ ≤ Y ^ alpha:= by
    exact u53 Z J alpha M (u46 Z Y hZ) Y0 Y
      hY (u51 Z Y0 Y M hZ hY hM hprevious)
      (u50 Z Y hZ (Nat.lt_of_lt_of_le hY0 hY))
      hrate hbase hlookahead
  have u54 (p Z N alpha a b u v:ℕ)
      (hb:0 < b) (hv:0 < v)
      (hp:p ^ b ≤ 2 ^ a) (hZ:2 ^ u ≤ Z ^ v)
      (hexponent:a * v * N ≤ u * b * alpha):p ^ N ≤ Z ^ alpha:= by
    have hpowered:(p ^ N) ^ (b * v) ≤ (Z ^ alpha) ^ (b * v):= by
      calc
        _ = (p ^ b) ^ (v * N):= by
          simp only [← Nat.pow_mul] <;> congr 1 <;> ring
        _ ≤ (2 ^ a) ^ (v * N):= Nat.pow_le_pow_left hp (v * N)
        _ = 2 ^ (a * v * N):= by
          simp only [← Nat.pow_mul] <;> congr 1 <;> ring
        _ ≤ 2 ^ (u * b * alpha):= Nat.pow_le_pow_right (by decide) hexponent
        _ = (2 ^ u) ^ (b * alpha):= by
          simp only [← Nat.pow_mul] <;> congr 1 <;> ring
        _ ≤ (Z ^ v) ^ (b * alpha):= Nat.pow_le_pow_left hZ (b * alpha)
        _ = (Z ^ alpha) ^ (b * v):= by
          simp only [← Nat.pow_mul] <;> congr 1 <;> ring
    exact Iff.mp (Nat.pow_le_pow_iff_left (Nat.ne_of_gt (Nat.mul_pos hb hv))) hpowered
  have u55 (p N alpha M H a b:ℕ)
      (hb:0 < b) (hp:p ^ b ≤ 2 ^ a)
      (hexponent:a * N * M ≤ b * H * alpha):
      (p ^ N) ^ M ≤ (2 ^ H) ^ alpha:= by
    have hpowered:((p ^ N) ^ M) ^ b ≤ ((2 ^ H) ^ alpha) ^ b:= by
      calc
        _ = (p ^ b) ^ (N * M):= by
          simp only [← Nat.pow_mul] <;> congr 1 <;> ring
        _ ≤ (2 ^ a) ^ (N * M):= Nat.pow_le_pow_left hp (N * M)
        _ = 2 ^ (a * N * M):= by
          simp only [← Nat.pow_mul] <;> congr 1 <;> ring
        _ ≤ 2 ^ (b * H * alpha):= Nat.pow_le_pow_right (by decide) hexponent
        _ = ((2 ^ H) ^ alpha) ^ b:= by
          simp only [← Nat.pow_mul] <;> congr 1 <;> ring
    exact Iff.mp (Nat.pow_le_pow_iff_left (Nat.ne_of_gt hb)) hpowered
  have u56 (p Z N alpha M a b u v:ℕ)
      (hb:0 < b) (hv:0 < v)
      (hp:p ^ b ≤ 2 ^ a) (hZ:2 ^ u ≤ Z ^ v)
      (hexponent:2 * alpha * b * v + a * v * N * (M + 1) ≤ u * b * alpha * M):
      4 ^ alpha * (p ^ N) ^ (M + 1) ≤ Z ^ (alpha * M):= by
    have hleft:
        (4 ^ alpha * (p ^ N) ^ (M + 1)) ^ (b * v) =
          2 ^ (2 * alpha * b * v) * (p ^ b) ^ (v * N * (M + 1)):= by
      rw [Nat.mul_pow]
      congr 1
      · change (((2:ℕ) ^ 2) ^ alpha) ^ (b * v) = _
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
      · simp only [← Nat.pow_mul] <;> congr 1 <;> ring
    have hpowered:
        (4 ^ alpha * (p ^ N) ^ (M + 1)) ^ (b * v) ≤
          (Z ^ (alpha * M)) ^ (b * v):= by
      calc
        _ = 2 ^ (2 * alpha * b * v) * (p ^ b) ^ (v * N * (M + 1)):= hleft
        _ ≤ 2 ^ (2 * alpha * b * v) * (2 ^ a) ^ (v * N * (M + 1)):=
          Nat.mul_le_mul_left _ (Nat.pow_le_pow_left hp (v * N * (M + 1)))
        _ = 2 ^ (2 * alpha * b * v + a * v * N * (M + 1)):= by
          simp only [← Nat.pow_mul,← Nat.pow_add] <;> congr 1 <;> ring
        _ ≤ 2 ^ (u * b * alpha * M):= Nat.pow_le_pow_right (by decide) hexponent
        _ = (2 ^ u) ^ (b * alpha * M):= by
          simp only [← Nat.pow_mul] <;> congr 1 <;> ring
        _ ≤ (Z ^ v) ^ (b * alpha * M):= Nat.pow_le_pow_left hZ (b * alpha * M)
        _ = (Z ^ (alpha * M)) ^ (b * v):= by
          simp only [← Nat.pow_mul] <;> congr 1 <;> ring
    exact Iff.mp (Nat.pow_le_pow_iff_left (Nat.ne_of_gt (Nat.mul_pos hb hv))) hpowered
  have u57 (p Z N alpha M H a b u v:ℕ)
      (hb:0 < b) (hv:0 < v)
      (hp:p ^ b ≤ 2 ^ a) (hZ:2 ^ u ≤ Z ^ v)
      (hrate:a * v * N ≤ u * b * alpha)
      (hbase:a * N * M ≤ b * H * alpha)
      (hlookahead:2 * alpha * b * v + a * v * N * (M + 1) ≤ u * b * alpha * M):
      p ^ N ≤ Z ^ alpha ∧
        (p ^ N) ^ M ≤ (2 ^ H) ^ alpha ∧
        4 ^ alpha * (p ^ N) ^ (M + 1) ≤ Z ^ (alpha * M):= by
    exact ⟨u54 p Z N alpha a b u v hb hv hp hZ hrate,
      u55 p N alpha M H a b hb hp hbase,
      u56 p Z N alpha M a b u v hb hv hp hZ hlookahead⟩
  let u60 (m:ℚ):ℚ:=
    (7 * m + 1) * (7 * m + 2) * (7 * m + 3) * (7 * m + 4) * (7 * m + 5) * (7 * m + 6) * (7 * m + 1) * (7 * m + 2) * (7 * m + 3) * (7 * m + 4) * (7 * m + 5) * (7 * m + 6) * (4 * m + 1) * (4 * m + 2) * (4 * m + 3)
  let u59 (m:ℚ):ℚ:=
    (18 * m + 1) * (18 * m + 2) * (18 * m + 3) * (18 * m + 4) * (18 * m + 5) * (18 * m + 6) * (18 * m + 7) * (18 * m + 8) * (18 * m + 9) * (18 * m + 10) * (18 * m + 11) * (18 * m + 12) * (18 * m + 13) * (18 * m + 14) * (18 * m + 15) * (18 * m + 16) * (18 * m + 17)
  let u61 (m:ℚ):ℚ:=
    18 * u59 m /
      (4 * 7 ^ 2 * m * (m + 1) * u60 m)
  have u62 (x:ℚ) (hx:0 ≤ x):
      18 * 678223072849 * (x + 3) * u59 (x + 1) ≤
        153696906544127099904 * 4 * 7 ^ 2 * (x + 2) ^ 3 * u60 (x + 1):= by
    apply sub_nonneg.mp
    calc
      0 ≤ 164602368 * (110241562556209198845066336000 + x * (1187453905002991933641540241200 + x * (5983779524056672196683729952260 + x * (18725305113472259124139253307552 + x * (40729656441097585706093084110059 + x * (65294335350947065759744925165967 + x * (79804742383095184112811595305588 + x * (75858453630510332238821724032106 + x * (56675430893659432955626359692271 + x * (33392517669322858479192878823831 + x * (15464156259855364037691801651054 + x * (5569801509788070352067060767872 + x * (1529548033875043581131775993216 + x * (309597915550113867297439847952 + x * (43560928625433641348263047648 + x * (3806566550301503678085259920 + x * (155634839555301083447505504))))))))))))))))):= by positivity
      _ = 153696906544127099904 * 4 * 7 ^ 2 * (x + 2) ^ 3 * u60 (x + 1) -
          18 * 678223072849 * (x + 3) * u59 (x + 1):= by
        unfold u59 u60
        ring
  let u106 (c d:ℕ):ℚ:=
    (((c + d:ℕ):ℚ) ^ (c + d)) /
      ((d:ℚ) ^ (2 * d) * ((c - d:ℕ):ℚ) ^ (c - d))
  exact True.intro
end Math.B699.N9
end Contribution.B699ProfilingAboveRepairPrefix064

#check Contribution.B699ProfilingAboveRepairPrefix064.Math.B699.N9.d9
#print axioms Contribution.B699ProfilingAboveRepairPrefix064.Math.B699.N9.d9
