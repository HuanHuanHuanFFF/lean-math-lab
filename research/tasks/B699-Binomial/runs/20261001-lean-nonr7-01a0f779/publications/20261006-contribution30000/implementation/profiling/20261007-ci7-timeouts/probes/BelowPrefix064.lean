import Lean.Elab.Tactic.Omega
import Mathlib.Algebra.BigOperators.Associated
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Algebra.BigOperators.Ring.Nat
import Mathlib.Algebra.Field.Rat
import Mathlib.Algebra.GCDMonoid.Finset
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Ring.Abs
import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Algebra.Polynomial.BigOperators
import Mathlib.Algebra.Polynomial.Coeff
import Mathlib.Algebra.Polynomial.Eval.Defs
import Mathlib.Data.Finset.Insert
import Mathlib.Data.Finset.Max
import Mathlib.Data.Int.ModEq
import Mathlib.Data.List.Basic
import Mathlib.Data.List.Range
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Data.Nat.Choose.Factorization
import Mathlib.Data.Nat.Dist
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Data.Nat.GCD.BigOperators
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Nat.Prime.Defs
import Mathlib.Data.Nat.Prime.Factorial
import Mathlib.Data.Real.Basic
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import Mathlib.Data.Int.GCD
namespace Contribution.B699ProfilingBelowPrefix064
set_option profiler true
set_option profiler.threshold 100
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 400000
set_option exponentiation.threshold 1000000
namespace N1
def d57 (s:ℕ):ℕ:= ∑ h ∈ Finset.Icc 1 s,h
def d56 (s:ℕ):ℕ:= ∏ h ∈ Finset.Icc 1 s,h.factorial
def d55 (i r s:ℕ):ℕ:=
  2 * d57 s + d57 (i - r - 1)
def d54 (i r s:ℕ):ℕ:=
  2 ^ (2 * d57 s) * (d56 s) ^ 2 *
    d56 (i - r - 1)
end N1
namespace N1
inductive d7 where
  | topPrime (p:ℕ)
  | largeDivisor (D:ℕ)
  deriving DecidableEq,Repr
structure d3 where
  lower:ℕ
  upper:ℕ
  witness:d7
  deriving DecidableEq,Repr
def d27 (g:d3):ℕ × ℕ:= (g.lower,g.upper)
def d28 (i r s:ℕ) (g:d3):Bool:=
  match g.witness with
  | .topPrime p =>
      decide (g.lower ≤ g.upper ∧ p.Prime ∧ p ≤ g.lower ∧ g.upper < p + i)
  | .largeDivisor D =>
      decide (g.lower = g.upper ∧ 0 < D ∧ D.Coprime (i - 1).factorial ∧
        i.factorial * D ∣ g.lower.descFactorial i ∧
        g.lower ^ d55 i r s < d54 i r s * D ^ (2 * s - r))
end N1
namespace N1
abbrev d4:= ℕ × ℕ
def d18 (lo hi:ℕ):List d4 → Bool
  | [] => decide (hi < lo)
  | (a,b)::rest =>
      if hi < lo then true
      else if b < lo then d18 lo hi rest
      else if lo < a then false
      else if hi ≤ b then true
      else d18 (b + 1) hi rest
end N1
namespace N1.N11
inductive Witness where
  | good (segment:d3)
  | special330
  deriving DecidableEq,Repr
def d58:Witness → d4
  | .good segment => d27 segment
  | .special330 => (330,330)
def d59:Witness → Bool
  | .good segment => d28 11 3 7 segment
  | .special330 => true
end N1.N11
namespace Math.B699.N5
def d44 (Q v:ℕ) (d:ℤ):ℕ:=
  let r:= Int.toNat (((v:ℤ) * d) % (Q:ℤ))
  if r = 0 then Q else r
@[simp] theorem d45 (Q v:ℕ):d44 Q v 0 = Q:= by
  simp [d44]
end Math.B699.N5
namespace Math.B699.N3
open Math.B699.N5
def baseC (P Q v:ℕ) (d:ℤ):ℤ:=
  ((P:ℤ) * (d44 Q v d:ℤ) - d) / (Q:ℤ)
end Math.B699.N3
namespace Math.B699.N3
open Math.B699.N5
def d16 (Q v:ℕ) (d t:ℤ):ℤ:=
  (d44 Q v d:ℤ) + (Q:ℤ) * t
def d17 (P Q v:ℕ) (d t:ℤ):ℤ:=
  baseC P Q v d + (P:ℤ) * t
def d29 (P Q v:ℕ) (d lo:ℤ):Prop:=
  lo ≤ 0 ∨ d17 P Q v d (lo - 1) < 1
def d53 (P Q v capA capC:ℕ) (d hi:ℤ):Prop:=
  (capA:ℤ) < d16 Q v d (hi + 1) ∨
    (capC:ℤ) < d17 P Q v d (hi + 1)
instance (P Q v:ℕ) (d lo:ℤ):Decidable (d29 P Q v d lo):= by
  unfold d29
  infer_instance
instance (P Q v capA capC:ℕ) (d hi:ℤ):
    Decidable (d53 P Q v capA capC d hi):= by
  unfold d53
  infer_instance
end Math.B699.N3
namespace Math.B699.N3
structure d1 where
  lo:ℤ
  hi:ℤ
  deriving DecidableEq,Repr
end Math.B699.N3
namespace Math.B699.N2
open Math.B699.N3
structure CellData where
  inverse:ℕ
  bounds:ℤ → d1
end Math.B699.N2
namespace N1.N9
def d46 (n p:ℕ):ℕ:= p ^ (n.choose 11).factorization p
end N1.N9
namespace N1.N9
structure d6 (n p:ℕ) where
  offset:ℕ
  cofactor:ℕ
  offset_lt:offset < 11
  cofactor_pos:1 ≤ cofactor
  equation:cofactor * d46 n p = n - offset
end N1.N9
namespace Math.B699.N6
open Math.B699.N2
structure d5 where
  amax:ℕ
  bmax:ℕ
  cells:ℕ → ℕ → CellData
structure d8 where
  grid23:d5
  grid25:d5
  grid27:d5
  grid35:d5
  grid37:d5
  grid57:d5
end Math.B699.N6
namespace Math.B699.N14
open Polynomial
noncomputable def moment (p:ℚ[X]):ℚ:=
  p.sum fun n a => a / ((n:ℚ) + 1)
@[simp] theorem d39:moment (0:ℚ[X]) = 0:= by
  simp [moment]
@[simp] theorem d35 (n:ℕ) (a:ℚ):
    moment (Polynomial.monomial n a) = a / ((n:ℚ) + 1):= by
  simp [moment,Polynomial.sum_monomial_index]
@[simp] theorem d33 (n:ℕ):
    moment ((X:ℚ[X]) ^ n) = 1 / ((n:ℚ) + 1):= by
  rw [Polynomial.X_pow_eq_monomial,d35]
@[simp] theorem d34 (p q:ℚ[X]):
    moment (p + q) = moment p + moment q:= by
  unfold moment
  apply Polynomial.sum_add_index
  · intro n
    exact zero_div _
  · intro n a b
    exact add_div a b _
@[simp] theorem d37 (c:ℚ) (p:ℚ[X]):
    moment (c • p) = c * moment p:= by
  unfold moment
  rw [Polynomial.sum_smul_index p c _ (by intro n; exact zero_div _)]
  simpa only [smul_eq_mul,mul_div_assoc] using
    (Polynomial.smul_sum p c (fun n a => a / ((n:ℚ) + 1))).symm
noncomputable def d30:ℚ[X] →ₗ[ℚ] ℚ where
  toFun:= moment
  map_add':= d34
  map_smul' c p:= by
    simpa only [smul_eq_mul,RingHom.id_apply] using d37 c p
@[simp] theorem d31 (p:ℚ[X]):d30 p = moment p:= rfl
@[simp] theorem d38 (p q:ℚ[X]):
    moment (p - q) = moment p - moment q:= by
  exact map_sub d30 p q
@[simp] theorem d32 (c:ℚ) (p:ℚ[X]):
    moment (Polynomial.C c * p) = c * moment p:= by
  simpa only [Polynomial.smul_eq_C_mul] using d37 c p
@[simp] theorem d36:moment (1:ℚ[X]) = 1:= by
  simpa only [pow_zero,Nat.cast_zero,zero_add,div_one] using d33 0
def d10 (a b:ℕ):ℚ:=
  (a.factorial:ℚ) * (b.factorial:ℚ) / ((a + b + 1).factorial:ℚ)
private theorem d25 (n:ℕ):(n.factorial:ℚ) ≠ 0:=
  Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero n)
private theorem d40 (n:ℕ):(n:ℚ) + 1 ≠ 0:= by
  have h:((n + 1:ℕ):ℚ) ≠ 0:= Nat.cast_ne_zero.mpr (Nat.succ_ne_zero n)
  simpa only [Nat.cast_add,Nat.cast_one] using h
@[simp] theorem d11 (a:ℕ):
    d10 a 0 = 1 / ((a:ℚ) + 1):= by
  unfold d10
  simp only [Nat.add_zero,Nat.factorial_zero,Nat.cast_one,mul_one]
  rw [Nat.factorial_succ]
  simp only [Nat.cast_mul,Nat.cast_add,Nat.cast_one]
  field_simp [d25 a,d40 a] <;> ring
end Math.B699.N14
namespace Math.B699.N13
open scoped BigOperators
open Polynomial
noncomputable def d13 (n:ℕ) (a:ℕ → ℤ):ℤ[X]:=
  ∑ r ∈ Finset.range (n + 1),Polynomial.monomial r (a r)
theorem d14 (n r:ℕ) (a:ℕ → ℤ):
    (d13 n a).coeff r = if r ≤ n then a r else 0:= by
  classical
  simp [d13,Polynomial.finsetSum_coeff,Polynomial.coeff_monomial,
    Finset.sum_ite_eq',Nat.lt_succ_iff]
def d41 (A B C r:ℕ):ℤ:=
  (-1:ℤ) ^ (C + r) * ((A + B + C + 1).choose r:ℤ) *
    ((A + C - r).choose A:ℤ)
def d48 (A B C r:ℕ):ℕ:=
  (A + C - r).choose C * (B + r).choose r
def d47 (A B C r:ℕ):ℤ:=
  (-1:ℤ) ^ C * (d48 A B C r:ℤ)
def d22 (A B C r:ℕ):ℤ:=
  (-1:ℤ) ^ r * ((A + r).choose r:ℤ) *
    ((A + B + C + 1).choose (A + C + r + 1):ℤ)
noncomputable def d42 (A B C:ℕ):ℤ[X]:=
  d13 C (d41 A B C)
noncomputable def d49 (A B C:ℕ):ℤ[X]:=
  d13 A (d47 A B C)
noncomputable def d23 (A B C:ℕ):ℤ[X]:=
  d13 B (d22 A B C)
@[simp] theorem d43 (A B C:ℕ):
    (d42 A B C).coeff 0 = (-1:ℤ) ^ C * ((A + C).choose A:ℤ):= by
  simp [d42,d14,d41]
@[simp] theorem d50 (A B C:ℕ):
    (d49 A B C).coeff 0 = (-1:ℤ) ^ C * ((A + C).choose C:ℤ):= by
  simp [d49,d14,d47,d48]
@[simp] theorem d24 (A B C:ℕ):
    (d23 A B C).coeff 0 =
      ((A + B + C + 1).choose (A + C + 1):ℤ):= by
  simp [d23,d14,d22]
end Math.B699.N13
namespace Math.B699.N5
def d20 (w k:ℕ):ℤ:= (k:ℤ) - (w:ℤ)
@[simp] theorem d21 (w:ℕ):d20 w w = 0:= by
  simp [d20]
def d51 (p q u L b0 w v:ℕ):Bool:=
  (List.range (2 * w + 1)).all fun k =>
    decide (p ^ (u + 3 * L) < (d44 (q ^ b0) v (d20 w k)) ^ 2)
def d12 (p q u L b0 w v:ℕ):Bool:=
  decide (2 ≤ p ∧ 2 ≤ q ∧ 1 ≤ u ∧ 1 ≤ b0 ∧ w < p ^ u ∧
    (q ^ b0) ^ 3 ≤ (p ^ u - w) ^ 2 ∧ (p ^ u * v) % (q ^ b0) = 1) &&
    d51 p q u L b0 w v
end Math.B699.N5
namespace Math.B699.N4
open Math.B699.N5
structure d0 where
  u:ℕ
  L:ℕ
  b0:ℕ
  v:ℕ
  deriving DecidableEq,Repr
def d19 (p q w:ℕ):ℕ → ℕ → List d0 → Bool
  | start,stop,[] => decide (start = stop)
  | start,stop,row::rows =>
      decide (row.u = start) &&
        (d12 p q row.u row.L row.b0 w row.v &&
          d19 p q w (row.u + row.L + 1) stop rows)
end Math.B699.N4
namespace Math.B699.N7
open Math.B699.N4
structure d9 where
  rows23:List d0
  rows25:List d0
  rows27:List d0
  rows35:List d0
  rows37:List d0
  rows57:List d0
  deriving DecidableEq,Repr
end Math.B699.N7
namespace N1
def d52 (p:ℕ):Bool:=
  decide (2 ≤ p) &&
    (List.range (Nat.sqrt p + 1)).all
      (fun d => if d < 2 then true else decide (p % d ≠ 0))
end N1
namespace Math.B699.N10
open N1 N1.N11
def fastWitnessCheck:Witness → Bool
  | .special330 => true
  | .good g => match g.witness with
    | .topPrime p => decide (g.lower ≤ g.upper ∧ p ≤ g.lower ∧ g.upper < p + 11) && d52 p
    | .largeDivisor _ => d59 (.good g)
end Math.B699.N10
namespace Math.B699.N10
open N1 N1.N11
structure d2 where
  interval:d4
  witnesses:List Witness
end Math.B699.N10
namespace Math.B699.N10
open N1 N1.N11
end Math.B699.N10
namespace Math.B699.N8
open Polynomial
theorem d15 {n j:ℕ}
    (hn:n < (2:ℕ) ^ 15360) (hij:11 < j) (hjn:j ≤ n / 2): True := by
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
  let u3 (k t:ℕ):ℕ:= ∏ i ∈ Finset.Icc 1 k,(t + i)
  have u2 (k n p:ℕ) (hk:1 ≤ k) (hp:p.Prime):
      ∃ j ∈ Finset.Icc 1 k,
        (u3 k n).factorization p ≤
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
    rw [u3,Nat.factorization_prod_apply hne]
    have hsplit:= Finset.sum_erase_add (s:= Finset.Icc 1 k)
      (f:= fun i ↦ (n + i).factorization p) hj
    omega
  let u4 (threshold a:ℕ):ℕ:=
    (a.primeFactors.filter (fun p ↦ threshold ≤ p)).prod (fun p ↦ p ^ a.factorization p)
  let u7 (n i j:ℕ):Prop:=
    ∃ p:ℕ,p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j)
  have u5 {n i j p ei ej:ℕ}
      (hp:p.Prime) (hpi:i ≤ p) (hin:i ≤ n) (hjn:j ≤ n)
      (hei:1 ≤ ei) (hej:1 ≤ ej)
      (hmi:n % p ^ ei < i % p ^ ei)
      (hmj:n % p ^ ej < j % p ^ ej):u7 n i j:= by
    exact ⟨p,hp,hpi,Nat.dvd_gcd
      (u0 hp hin hei hmi)
      (u0 hp hjn hej hmj)⟩
  have u6 {n i j p:ℕ}
      (_hi:1 ≤ i) (hij:i < j) (hjn:j ≤ n / 2)
      (hp:p.Prime) (hlo:n - i < p) (hpn:p ≤ n):u7 n i j:= by
    have hi:i ≤ n:= by omega
    have hj:j ≤ n:= by omega
    have hip:i < p:= by omega
    have hjp:j < p:= by omega
    have hn2:n < 2 * p:= by omega
    have hnmod:n % p = n - p:= by
      rw [Nat.mod_eq_sub_mod hpn,Nat.mod_eq_of_lt (by omega)]
    apply u5 hp hip.le hi hj (ei:= 1) (ej:= 1) (by decide) (by decide)
    · simpa [hnmod,Nat.mod_eq_of_lt hip] using (show n - p < i by omega)
    · simpa [hnmod,Nat.mod_eq_of_lt hjp] using (show n - p < j by omega)
  have u8 {n i p e:ℕ}
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
  have u9 (s:Finset ℕ) (f:ℕ → ℕ) (B:ℕ):
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
  let u10 (n i j:ℕ):ℕ:=
    ((n.choose i).primeFactors.filter (fun p ↦ i ≤ p ∧ ¬ p ∣ n.choose j)).prod
      (fun p ↦ p ^ (n.choose i).factorization p)
  have u11 {n i j:ℕ}
      (hno:¬ u7 n i j):
      u10 n i j = u4 i (n.choose i):= by
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
    unfold u10 u4
    rw [hsets]
  have u12 {N k t Q:ℕ}
      (hk:k ≤ N) (hlo:N - k < t) (hhi:t ≤ N) (hQt:Q ∣ t):
      Q ∣ N.descFactorial k:= by
    rw [Nat.descFactorial_eq_prod_range]
    have hmem:N - t ∈ Finset.range k:= Finset.mem_range.mpr (by omega)
    have hd:= Finset.dvd_prod_of_mem (fun r:ℕ ↦ N - r) hmem
    have heq:N - (N - t) = t:= by omega
    rw [heq] at hd
    exact hQt.trans hd
  let u13 (i:ℕ):ℕ:= ((Finset.range i).filter Nat.Prime).card
  let u14 (n i:ℕ):ℕ:=
    ((n.choose i).primeFactors.filter (fun p ↦ p < i)).prod
      (fun p ↦ p ^ (n.choose i).factorization p)
  have u15 {n i:ℕ} (hin:i ≤ n):
      u14 n i * u4 i (n.choose i) = n.choose i:= by
    classical
    unfold u14 u4
    calc
      _ = (n.choose i).primeFactors.prod (fun p ↦ p ^ (n.choose i).factorization p):= by
        simpa only [Nat.not_lt] using Finset.prod_filter_mul_prod_filter_not
          (n.choose i).primeFactors (fun p ↦ p < i)
          (fun p ↦ p ^ (n.choose i).factorization p)
      _ = n.choose i:=
        (Nat.prod_primeFactors_pow_factorization (Nat.ne_of_gt (Nat.choose_pos hin))).symm
  have u16 (s:ℕ):0 < N1.d56 s:= by
    unfold N1.d56
    apply Finset.prod_pos
    intro h _
    exact Nat.factorial_pos h
  have u17 (i r s:ℕ):0 < N1.d54 i r s:= by
    unfold N1.d54
    exact Nat.mul_pos
      (Nat.mul_pos (Nat.pow_pos (by decide:0 < 2))
        (Nat.pow_pos (u16 s)))
      (u16 _)
  have u18 (n:ℕ):
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
  have u19 {n i:ℕ} (hn:0 < n) (hin:i ≤ n)
      (hlarge:i * (i - 1) ≤ n):
      n ^ i ≤ 2 * n.descFactorial i:= by
    have he:= u18 n i hin
    have hs:2 * (∑ a ∈ Finset.range i,a) ≤ n:= by
      have hsum:= Finset.sum_range_id_mul_two i
      nlinarith
    have hm:= Nat.mul_le_mul_right (n ^ i) hs
    rw [pow_succ'] at he
    have hmul:n * n ^ i ≤ n * (2 * n.descFactorial i):= by
      nlinarith
    exact Nat.le_of_mul_le_mul_left hmul hn
  let u38 (N s:ℕ):ℕ:=
    ∏ h ∈ Finset.Icc 1 s,N.choose h
  have u33 (N s:ℕ):
      N1.d56 s * u38 N s ≤ N ^ N1.d57 s:= by
    unfold N1.d56 u38
    calc
      _ = ∏ h ∈ Finset.Icc 1 s,h.factorial * N.choose h:=
        (Finset.prod_mul_distrib).symm
      _ ≤ ∏ h ∈ Finset.Icc 1 s,N ^ h:= by
        apply Finset.prod_le_prod (fun _ _ ↦ Nat.zero_le _)
        intro h _
        rw [← Nat.descFactorial_eq_factorial_mul_choose]
        exact Nat.descFactorial_le_pow N h
      _ = _:= by rw [Finset.prod_pow_eq_pow_sum]; rfl
  let u41 (n i r:ℕ):ℕ:=
    ∏ h ∈ Finset.Icc 1 (i - r - 1),(n - i + h).choose h
  have u34 {n i r:ℕ} (hin:i ≤ n):
      N1.d56 (i - r - 1) * u41 n i r ≤
        n ^ N1.d57 (i - r - 1):= by
    unfold N1.d56 u41
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
      _ = _:= by rw [Finset.prod_pow_eq_pow_sum]; rfl
  have u35 (j k:ℕ):
      4 * (j * k) ≤ (j + k) ^ 2:= by
    rcases le_total j k with h | h
    · have he:k = j + (k - j):= by omega
      rw [he]
      nlinarith
    · have he:j = k + (j - k):= by omega
      rw [he]
      nlinarith
  let u44 (n i j r s:ℕ):ℕ:=
    u38 j s * u38 (n - j) s * u41 n i r
  have u36 {n i j r s:ℕ}
      (hin:i ≤ n) (hjn:j ≤ n):
      N1.d54 i r s * u44 n i j r s ≤
        n ^ N1.d55 i r s:= by
    let T:= N1.d57 s
    let L:= i - r - 1
    let B:= N1.d56 s
    have hx:= u33 j s
    have hy:= u33 (n - j) s
    have hc:B ^ 2 * (u38 j s * u38 (n - j) s) ≤
        (j * (n - j)) ^ T:= by
      calc
        _ = (B * u38 j s) * (B * u38 (n - j) s):= by ring
        _ ≤ j ^ T * (n - j) ^ T:= Nat.mul_le_mul hx hy
        _ = _:= (mul_pow _ _ _).symm
    have hjk:4 * (j * (n - j)) ≤ n ^ 2:= by
      have hn:j + (n - j) = n:= by omega
      simpa only [hn] using u35 j (n - j)
    have hchildren:
        2 ^ (2 * T) * (B ^ 2 * (u38 j s * u38 (n - j) s)) ≤
          n ^ (2 * T):= by
      calc
        _ ≤ 2 ^ (2 * T) * (j * (n - j)) ^ T:= Nat.mul_le_mul_left _ hc
        _ = (4 * (j * (n - j))) ^ T:= by
          rw [show (4:ℕ) = 2 ^ 2 by decide]
          simp only [mul_pow,pow_mul]
        _ ≤ (n ^ 2) ^ T:= Nat.pow_le_pow_left hjk T
        _ = _:= by rw [← pow_mul]
    have hm:= u34 (r:= r) hin
    calc
      N1.d54 i r s * u44 n i j r s =
          (2 ^ (2 * T) * (B ^ 2 * (u38 j s * u38 (n - j) s))) *
            (N1.d56 L * u41 n i r):= by
        unfold N1.d54 u44
        dsimp only [T,B,L]
        ring
      _ ≤ n ^ (2 * T) * n ^ N1.d57 L:= Nat.mul_le_mul hchildren hm
      _ = n ^ N1.d55 i r s:= by
        rw [← pow_add]
        rfl
  have u37 {n i r a p e:ℕ}
      (hp:p.Prime) (hpi:i ≤ p) (hin:i ≤ n) (ha:a < i)
      (hdiv:p ^ e ∣ n - a):
      p ^ (e * (a - r)) ∣ u41 n i r:= by
    have hlocal:∀ h ∈ Finset.Icc (i - a) (i - r - 1),
        p ^ e ∣ (n - i + h).choose h:= by
      intro h hh
      obtain ⟨hlo,hhi⟩:= Finset.mem_Icc.mp hh
      have hhN:h ≤ n - i + h:= by omega
      have hd:p ^ e ∣ (n - i + h).descFactorial h:=
        u12 hhN (by omega) (by omega) hdiv
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
    simpa only [Finset.prod_const,hcard,← pow_mul,u41] using hd2
  have u39 (a b c r s:ℕ) (hsplit:b + c = a):
      2 * s - r ≤ (s - b) + (s - c) + (a - r):= by
    omega
  have u47 {j k Q:ℕ} (hQ:0 < Q)
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
  have u48 {n i j p e:ℕ}
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
    have ha:a < i:= u8 hp hpi (by omega) he heval
    have hb:b ≤ a:= by
      by_contra h
      apply havoid
      apply u0 hp (by omega)
        (by omega:1 ≤ e + if p = i then 1 else 0)
      change a < b
      omega
    have hsum:b + c = a:= by
      have hn:j + (n - j) = n:= by omega
      simpa only [hn] using u47 (j:= j) (k:= n - j) hQ
        (by simpa only [hn] using hb)
    have hpow:p ^ e ∣ Q:= Nat.pow_dvd_pow p (by omega)
    have hd:∀ N:ℕ,Q ∣ N - N % Q:= by
      intro N
      refine ⟨N / Q,?_⟩
      have hm:= Nat.mod_add_div N Q
      omega
    exact ⟨a,b,c,ha,hsum,hpow.trans (hd n),hpow.trans (hd j),
      hpow.trans (hd (n - j))⟩
  have u49 {N h b p e:ℕ}
      (hp:p.Prime) (hhp:h < p) (hhN:h ≤ N)
      (hbh:b < h) (hdiv:p ^ e ∣ N - b):
      p ^ e ∣ N.choose h:= by
    have hd:p ^ e ∣ N.descFactorial h:=
      u12 hhN (by omega) (Nat.sub_le N b) hdiv
    rw [Nat.descFactorial_eq_factorial_mul_choose] at hd
    exact ((hp.coprime_factorial_of_lt hhp).pow_left e).dvd_of_dvd_mul_left hd
  have u50 {N i s b p e:ℕ}
      (hp:p.Prime) (hpi:i ≤ p) (hsi:s < i) (hiN:i ≤ N)
      (hdiv:p ^ e ∣ N - b):
      p ^ (e * (s - b)) ∣ u38 N s:= by
    have hlocal:∀ h ∈ Finset.Icc (b + 1) s,p ^ e ∣ N.choose h:= by
      intro h hh
      obtain ⟨hlo,hhi⟩:= Finset.mem_Icc.mp hh
      exact u49 hp (by omega) (by omega) (by omega) hdiv
    have hd:= Finset.prod_dvd_prod_of_dvd (s:= Finset.Icc (b + 1) s)
      (fun _ ↦ p ^ e) (fun h ↦ N.choose h) hlocal
    have hsub:Finset.Icc (b + 1) s ⊆ Finset.Icc 1 s:= by
      intro h hh
      simp only [Finset.mem_Icc] at hh ⊢
      omega
    have hd2:= hd.trans (Finset.prod_dvd_prod_of_subset _ _ _ hsub)
    simpa only [Finset.prod_const,Nat.card_Icc,Nat.add_sub_add_right,← pow_mul,
      u38] using hd2
  have u40 {n i j r s p e:ℕ}
      (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2)
      (hsi:s < i) (hp:p.Prime) (hpi:i ≤ p) (he:0 < e)
      (heval:e ≤ (n.choose i).factorization p)
      (havoid:¬ p ∣ n.choose j):
      p ^ (e * (2 * s - r)) ∣ u44 n i j r s:= by
    obtain ⟨a,b,c,ha,hsum,hn,hj,hk⟩:=
      u48 hi hij hjn hp hpi he heval havoid
    have hleft:= u50 hp hpi hsi (by omega:i ≤ j) hj
    have hright:= u50 hp hpi hsi (by omega:i ≤ n - j) hk
    have hmother:= u37 (r:= r) hp hpi (by omega:i ≤ n) ha hn
    have hmul:= Nat.mul_dvd_mul (Nat.mul_dvd_mul hleft hright) hmother
    have hcover:= u39 a b c r s hsum
    have hexp:e * (2 * s - r) ≤ e * (s - b) + e * (s - c) + e * (a - r):= by
      simpa only [Nat.mul_add] using Nat.mul_le_mul_left e hcover
    have hpow:= Nat.pow_dvd_pow p hexp
    apply hpow.trans
    simpa only [pow_add,u44] using hmul
  have u42 {n i j r s:ℕ}
      (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i):
      u10 n i j ^ (2 * s - r) ∣ u44 n i j r s:= by
    classical
    unfold u10
    rw [← Finset.prod_pow]
    simp_rw [← pow_mul]
    apply u9
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
      exact u40 hi hij hjn hsi hprime hpi he le_rfl havoid
  have u43 {n i j r s:ℕ}
      (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
      (hno:¬ u7 n i j):
      u4 i (n.choose i) ^ (2 * s - r) ∣
        u44 n i j r s:= by
    rw [← u11 hno]
    exact u42 hi hij hjn hsi
  have u45 {N i s:ℕ} (hsi:s < i) (hiN:i ≤ N):
      0 < u38 N s:= by
    unfold u38
    apply Finset.prod_pos
    intro h hh
    have:= (Finset.mem_Icc.mp hh).2
    exact Nat.choose_pos (by omega)
  have u46 {n i r:ℕ} (hin:i ≤ n):
      0 < u41 n i r:= by
    unfold u41
    apply Finset.prod_pos
    intro h _
    exact Nat.choose_pos (by omega)
  have u31 {n i j r s:ℕ}
      (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
      (hno:¬ u7 n i j):
      N1.d54 i r s * u4 i (n.choose i) ^ (2 * s - r) ≤
        n ^ N1.d55 i r s:= by
    have hZ:0 < u44 n i j r s:= by
      unfold u44
      exact Nat.mul_pos (Nat.mul_pos
        (u45 hsi (by omega:i ≤ j))
        (u45 hsi (by omega:i ≤ n - j)))
        (u46 (by omega:i ≤ n))
    have hv:= Nat.le_of_dvd hZ
      (u43 hi hij hjn hsi hno)
    exact (Nat.mul_le_mul_left (N1.d54 i r s) hv).trans
      (u36 (by omega) (by omega))
  have u20 {n i j r s:ℕ}
      (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
      (hlarge:i * (i - 1) ≤ n) (hno:¬ u7 n i j):
      N1.d54 i r s * n ^ (i * (2 * s - r)) ≤
        (2 * i.factorial) ^ (2 * s - r) *
          (u14 n i) ^ (2 * s - r) * n ^ N1.d55 i r s:= by
    have hn:0 < n:= by omega
    have hin:i ≤ n:= by omega
    have hhalf:= u19 hn hin hlarge
    have hv:= u31 (r:= r) hi hij hjn hsi hno
    have hdesc:n.descFactorial i =
        i.factorial * (u14 n i * u4 i (n.choose i)):= by
      rw [u15 hin,Nat.descFactorial_eq_factorial_mul_choose]
    calc
      _ = N1.d54 i r s * (n ^ i) ^ (2 * s - r):= by rw [← pow_mul]
      _ ≤ N1.d54 i r s * (2 * n.descFactorial i) ^ (2 * s - r):=
        Nat.mul_le_mul_left _ (Nat.pow_le_pow_left hhalf _)
      _ = (2 * i.factorial) ^ (2 * s - r) * (u14 n i) ^ (2 * s - r) *
          (N1.d54 i r s *
            u4 i (n.choose i) ^ (2 * s - r)):= by
        rw [hdesc]
        simp only [mul_pow]
        ring
      _ ≤ _:= Nat.mul_le_mul_left _ hv
  let u21 (i r s:ℕ):ℕ:=
    u13 i * (2 * s - r) + N1.d55 i r s
  let u22 (n:ℕ) (I:N1.d4):Prop:=
    I.1 ≤ n ∧ n ≤ I.2
  have u23 (cover:List N1.d4):
      ∀ lo hi n:ℕ,N1.d18 lo hi cover = true → lo ≤ n → n ≤ hi →
        ∃ I ∈ cover,u22 n I:= by
    induction cover with
    | nil =>
        intro lo hi n hcheck hlo hhi
        simp only [N1.d18,decide_eq_true_eq] at hcheck
        omega
    | cons I rest ih =>
        obtain ⟨a,b⟩:= I
        intro lo hi n hcheck hlo hhi
        by_cases hempty:hi < lo
        · omega
        by_cases hbefore:b < lo
        · have hr:N1.d18 lo hi rest = true:= by
            simpa only [N1.d18,if_neg hempty,if_pos hbefore] using hcheck
          obtain ⟨J,hJ,hnJ⟩:= ih lo hi n hr hlo hhi
          exact ⟨J,List.mem_cons_of_mem _ hJ,hnJ⟩
        by_cases hgap:lo < a
        · simp only [N1.d18,if_neg hempty,if_neg hbefore,if_pos hgap,
            Bool.false_eq_true] at hcheck
        by_cases hdone:hi ≤ b
        · refine ⟨(a,b),List.mem_cons_self,?_⟩
          unfold u22
          dsimp only
          omega
        by_cases hnhead:n ≤ b
        · refine ⟨(a,b),List.mem_cons_self,?_⟩
          unfold u22
          dsimp only
          omega
        · have hr:N1.d18 (b + 1) hi rest = true:= by
            simpa only [N1.d18,if_neg hempty,if_neg hbefore,if_neg hgap,
              if_neg hdone] using hcheck
          obtain ⟨J,hJ,hnJ⟩:= ih (b + 1) hi n hr (by omega) hhi
          exact ⟨J,List.mem_cons_of_mem _ hJ,hnJ⟩
  have u24 {n i D:ℕ}
      (hin:i ≤ n) (hD:D ∣ n.choose i)
      (hcop:D.Coprime (i - 1).factorial):
      D ∣ u4 i (n.choose i):= by
    classical
    have hcopSmall:D.Coprime (u14 n i):= by
      unfold u14
      apply Nat.Coprime.prod_right
      intro p hp
      obtain ⟨hmem,hpi⟩:= Finset.mem_filter.mp hp
      have hprime:= Nat.prime_of_mem_primeFactors hmem
      have hpfact:p ∣ (i - 1).factorial:=
        hprime.dvd_factorial.mpr (by omega)
      exact (hcop.of_dvd_right hpfact).pow_right _
    apply hcopSmall.dvd_of_dvd_mul_left
    rw [u15 hin]
    exact hD
  have u32 {n i j r s:ℕ}
      (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
      (hcompare:n ^ N1.d55 i r s <
        N1.d54 i r s * u4 i (n.choose i) ^ (2 * s - r)):
      ∃ p:ℕ,p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j):= by
    by_contra hno
    exact (Nat.not_le_of_gt hcompare) (u31 hi hij hjn hsi hno)
  have u25 {n i j r s D:ℕ}
      (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
      (_hDpos:0 < D) (hcop:D.Coprime (i - 1).factorial)
      (hnum:i.factorial * D ∣ n.descFactorial i)
      (hcompare:n ^ N1.d55 i r s <
        N1.d54 i r s * D ^ (2 * s - r)):
      ∃ p:ℕ,p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j):= by
    have hin:i ≤ n:= by omega
    have hDchoose:D ∣ n.choose i:= by
      apply Nat.dvd_of_mul_dvd_mul_left (Nat.factorial_pos i)
      simpa only [Nat.descFactorial_eq_factorial_mul_choose] using hnum
    have hDprime:= u24 hin hDchoose hcop
    have hprimePos:0 < u4 i (n.choose i):= by
      by_contra h
      have hzero:u4 i (n.choose i) = 0:= by omega
      have hsplit:= u15 hin
      rw [hzero,Nat.mul_zero] at hsplit
      have hchoose:= Nat.choose_pos hin
      omega
    have hDle:= Nat.le_of_dvd hprimePos hDprime
    apply u32 hi hij hjn hsi
    exact hcompare.trans_le (Nat.mul_le_mul_left _ (Nat.pow_le_pow_left hDle _))
  have u26 {i r s:ℕ} {g:N1.d3}
      (hi:2 ≤ i) (hsi:s < i) (hcheck:N1.d28 i r s g = true)
      {n j:ℕ} (hlo:g.lower ≤ n) (hup:n ≤ g.upper)
      (hij:i < j) (hjn:j ≤ n / 2):u7 n i j:= by
    cases hw:g.witness with
    | topPrime p =>
        have hc:g.lower ≤ g.upper ∧ p.Prime ∧ p ≤ g.lower ∧ g.upper < p + i:=
          of_decide_eq_true (by simpa only [N1.d28,hw] using hcheck)
        obtain ⟨_,hp,hplower,hupper⟩:= hc
        exact u6 (by omega) hij hjn hp (by omega) (by omega)
    | largeDivisor D =>
        have hc:g.lower = g.upper ∧ 0 < D ∧ D.Coprime (i - 1).factorial ∧
            i.factorial * D ∣ g.lower.descFactorial i ∧
            g.lower ^ N1.d55 i r s < N1.d54 i r s * D ^ (2 * s - r):=
          of_decide_eq_true (by simpa only [N1.d28,hw] using hcheck)
        obtain ⟨heq,hDpos,hcop,hnum,hcompare⟩:= hc
        have hn:n = g.lower:= by omega
        subst n
        exact u25 hi hij hjn hsi hDpos hcop hnum hcompare
  have u27 (n i:ℕ):
      u14 n i = ((Finset.range i).filter Nat.Prime).prod
        (fun p ↦ p ^ (n.choose i).factorization p):= by
    classical
    unfold u14
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
  have u28 {n i:ℕ} (hin:i ≤ n):
      u3 i (n - i) = n.descFactorial i:= by
    rw [u3,Nat.descFactorial_eq_prod_range]
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
  have u29 {n i p:ℕ}
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
    rw [u28 hin,
      Nat.descFactorial_eq_factorial_mul_choose,
      Nat.factorization_mul (Nat.factorial_ne_zero i) hchoose,
      Finsupp.add_apply,hfactorization] at hbound
    have hposition:n - i + j = n - (i - j):= by omega
    rw [hposition] at hbound
    exact ⟨i - j,by omega,by omega⟩
  have u30 {n i p:ℕ}
      (hi:1 ≤ i) (hin:i ≤ n) (hp:p.Prime):
      ∃ a < i,p ^ ((n.choose i).factorization p + i.factorization p) ∣ n - a:= by
    obtain ⟨a,ha,hval⟩:= u29 hi hin hp
    exact ⟨a,ha,(hp.pow_dvd_iff_le_factorization (by omega:n - a ≠ 0)).2 hval⟩
  have u51 {p:ℕ} (hcheck:N1.d52 p = true):
      p.Prime:= by
    have hc:= hcheck
    simp only [N1.d52,Bool.and_eq_true,decide_eq_true_eq] at hc
    refine Nat.prime_def_le_sqrt.mpr ⟨hc.1,?_⟩
    intro d hd hsqrt
    have hmem:d ∈ List.range (Nat.sqrt p + 1):= List.mem_range.mpr (by omega)
    have htest:= List.all_eq_true.mp hc.2 d hmem
    have hnot:¬ d < 2:= by omega
    simp only [if_neg hnot,decide_eq_true_eq] at htest
    exact fun hdiv => htest (Nat.mod_eq_zero_of_dvd hdiv)
  let u72 (P Q v w:ℕ) (d t:ℤ):ℤ:=
    min ((P:ℤ) * Math.B699.N3.d16 Q v d t) ((Q:ℤ) * Math.B699.N3.d17 P Q v d t) + (w:ℤ)
  let u77 (P Q v capA capC w:ℕ) (d:ℤ) (bounds:Math.B699.N3.d1):Bool:=
    decide (2 ≤ P ∧ 2 ≤ Q ∧ (P * v) % Q = 1 ∧ -(w:ℤ) ≤ d ∧ d ≤ (w:ℤ) ∧
      Math.B699.N3.d29 P Q v d bounds.lo ∧ Math.B699.N3.d53 P Q v capA capC d bounds.hi)
  let u52 (P Q v capA capC T:ℕ) (d:ℤ) (bounds:Math.B699.N3.d1):Bool:=
    decide (u77 P Q v capA capC 10 d bounds = true ∧
      (bounds.hi < bounds.lo ∨ (u72 P Q v 10 d bounds.hi).toNat ≤ T))
  let u53:List ℤ:= (List.range 21).map (fun k:ℕ => (k:ℤ) - 10)
  let u54 (P Q capA capC T:ℕ) (ds:List ℤ) (data:Math.B699.N2.CellData):Bool:=
    ds.all (fun d => u52 P Q data.inverse capA capC T d (data.bounds d))
  let u55 (P Q capA capC T:ℕ) (data:Math.B699.N2.CellData):Bool:=
    u54 P Q capA capC T u53 data
  have u73 {Q v:ℕ} {d t T:ℤ} (h:t ≤ T):
      Math.B699.N3.d16 Q v d t ≤ Math.B699.N3.d16 Q v d T:= by
    unfold Math.B699.N3.d16
    exact Int.add_le_add le_rfl
      (Int.mul_le_mul_of_nonneg_left h (by omega:0 ≤ (Q:ℤ)))
  have u74 {P Q v:ℕ} {d t T:ℤ} (h:t ≤ T):
      Math.B699.N3.d17 P Q v d t ≤ Math.B699.N3.d17 P Q v d T:= by
    unfold Math.B699.N3.d17
    exact Int.add_le_add le_rfl
      (Int.mul_le_mul_of_nonneg_left h (by omega:0 ≤ (P:ℤ)))
  have u76 {P Q v capA capC:ℕ} {d lo hi t:ℤ}
      (hlow:Math.B699.N3.d29 P Q v d lo)
      (hupp:Math.B699.N3.d53 P Q v capA capC d hi)
      (ht:0 ≤ t) (hCpos:1 ≤ Math.B699.N3.d17 P Q v d t)
      (hAcap:Math.B699.N3.d16 Q v d t ≤ (capA:ℤ))
      (hCcap:Math.B699.N3.d17 P Q v d t ≤ (capC:ℤ)):lo ≤ t ∧ t ≤ hi:= by
    unfold Math.B699.N3.d29 at hlow
    unfold Math.B699.N3.d53 at hupp
    constructor
    · rcases hlow with hlo | hprev
      · exact hlo.trans ht
      · by_contra hnot
        have hmono:Math.B699.N3.d17 P Q v d t ≤ Math.B699.N3.d17 P Q v d (lo - 1):=
          u74 (by omega:t ≤ lo - 1)
        exact (not_lt_of_ge (hCpos.trans hmono)) hprev
    · by_contra hnot
      have hnext:hi + 1 ≤ t:= by omega
      rcases hupp with hnextA | hnextC
      · exact (not_lt_of_ge ((u73 hnext).trans hAcap)) hnextA
      · exact (not_lt_of_ge ((u74 hnext).trans hCcap)) hnextC
  have u82 {Q v:ℕ} (hQ:0 < Q) (d:ℤ):
      (Math.B699.N5.d44 Q v d:ℤ) ≡ (v:ℤ) * d [ZMOD (Q:ℤ)]:= by
    let r:ℕ:= Int.toNat (((v:ℤ) * d) % (Q:ℤ))
    have hQz:(Q:ℤ) ≠ 0:= by omega
    have hr:(r:ℤ) = ((v:ℤ) * d) % (Q:ℤ):= by
      dsimp only [r]
      exact Int.toNat_of_nonneg (Int.emod_nonneg _ hQz)
    change ((if r = 0 then Q else r:ℕ):ℤ) ≡ (v:ℤ) * d [ZMOD (Q:ℤ)]
    split_ifs with hzero
    · change (Q:ℤ) % (Q:ℤ) = ((v:ℤ) * d) % (Q:ℤ)
      have hz:((v:ℤ) * d) % (Q:ℤ) = 0:= by
        simpa only [hzero,Nat.cast_zero] using hr.symm
      simpa only [Int.emod_self] using hz.symm
    · change (r:ℤ) % (Q:ℤ) = ((v:ℤ) * d) % (Q:ℤ)
      rw [hr,Int.emod_emod]
  have u83 {P Q v:ℕ} (hQ:1 < Q) (hinv:(P * v) % Q = 1):
      (P:ℤ) * (v:ℤ) ≡ 1 [ZMOD (Q:ℤ)]:= by
    have hN:Nat.ModEq Q (P * v) 1:= by
      change (P * v) % Q = 1 % Q
      rw [hinv,Nat.mod_eq_of_lt hQ]
    have h:((P * v:ℕ):ℤ) ≡ ((1:ℕ):ℤ) [ZMOD (Q:ℤ)]:=
      Int.natCast_modEq_iff.mpr hN
    simpa only [Nat.cast_mul,Nat.cast_one] using h
  have u84 {P Q v:ℕ} {d:ℤ}
      (hQ:1 < Q) (hinv:(P * v) % Q = 1):
      (P:ℤ) * (Math.B699.N5.d44 Q v d:ℤ) - (Q:ℤ) * Math.B699.N3.baseC P Q v d = d:= by
    have hr:= u82 (v:= v) (by omega:0 < Q) d
    have hi:= u83 hQ hinv
    have hm:(P:ℤ) * (Math.B699.N5.d44 Q v d:ℤ) ≡ d [ZMOD (Q:ℤ)]:= by
      apply (hr.mul_left (P:ℤ)).trans
      simpa only [mul_assoc,one_mul] using hi.mul_right d
    have hdiv:(Q:ℤ) ∣ (P:ℤ) * (Math.B699.N5.d44 Q v d:ℤ) - d:= hm.symm.dvd
    have hmul:(Q:ℤ) * Math.B699.N3.baseC P Q v d =
        (P:ℤ) * (Math.B699.N5.d44 Q v d:ℤ) - d:= by
      unfold Math.B699.N3.baseC
      exact Int.mul_ediv_cancel' hdiv
    rw [hmul]
    ring
  exact True.intro
end Math.B699.N8
end Contribution.B699ProfilingBelowPrefix064

#check Contribution.B699ProfilingBelowPrefix064.Math.B699.N8.d15
#print axioms Contribution.B699ProfilingBelowPrefix064.Math.B699.N8.d15
