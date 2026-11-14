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
namespace Contribution.B699I11BelowFinalCandidate
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 10000000
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
    (hn:n < (2:ℕ) ^ 15360) (hij:11 < j) (hjn:j ≤ n / 2):
    ∃ p:ℕ,Nat.Prime p ∧ 11 ≤ p ∧ p ∣ n.choose 11 ∧ p ∣ n.choose j:= by
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
  have u85 {P Q v:ℕ} (hinv:(P * v) % Q = 1):
      (P:ℤ) * (v:ℤ) - (Q:ℤ) * (((P * v) / Q:ℕ):ℤ) = 1:= by
    have hN:= Nat.mod_add_div (P * v) Q
    rw [hinv] at hN
    have h:= congrArg (fun k:ℕ => (k:ℤ)) hN
    simp only [Nat.cast_add,Nat.cast_one,Nat.cast_mul] at h
    omega
  have u265 {Q v X:ℕ} {d:ℤ} (hX:0 < X)
      (hmod:(X:ℤ) ≡ (v:ℤ) * d [ZMOD (Q:ℤ)]):
      Math.B699.N5.d44 Q v d ≤ X:= by
    have hm:X % Q = Int.toNat (((v:ℤ) * d) % (Q:ℤ)):= by
      have h:= congrArg Int.toNat hmod.eq
      simpa only [← Int.natCast_mod,Int.toNat_natCast] using h
    dsimp only [Math.B699.N5.d44]
    split_ifs with h
    · have hz:X % Q = 0:= hm.trans h
      exact Nat.le_of_dvd hX (Nat.dvd_of_mod_eq_zero hz)
    · rw [← hm]
      exact Nat.mod_le X Q
  have u266 {P Q v X T:ℕ} {d:ℤ}
      (hQ:1 < Q) (hX:0 < X) (hinv:(P * v) % Q = 1)
      (heq:(P:ℤ) * (X:ℤ) - (Q:ℤ) * (T:ℤ) = d):
      Math.B699.N5.d44 Q v d ≤ X:= by
    have hiN:Nat.ModEq Q (P * v) 1:= by
      change (P * v) % Q = 1 % Q
      rw [hinv,Nat.mod_eq_of_lt hQ]
    have hiI:(P:ℤ) * (v:ℤ) ≡ 1 [ZMOD (Q:ℤ)]:= by
      have h:((P * v:ℕ):ℤ) ≡ ((1:ℕ):ℤ) [ZMOD (Q:ℤ)]:=
        Int.natCast_modEq_iff.mpr hiN
      simpa only [Nat.cast_mul,Nat.cast_one] using h
    have hPX:(P:ℤ) * (X:ℤ) ≡ d [ZMOD (Q:ℤ)]:= by
      apply Int.modEq_iff_dvd.mpr
      refine ⟨-(T:ℤ),?_⟩
      rw [← heq]
      ring
    have hunit:(v:ℤ) * ((P:ℤ) * (X:ℤ)) ≡ (X:ℤ) [ZMOD (Q:ℤ)]:= by
      have h:= hiI.mul_right (X:ℤ)
      simpa only [mul_assoc,mul_comm,mul_left_comm,one_mul,mul_one] using h
    have hXD:(X:ℤ) ≡ (v:ℤ) * d [ZMOD (Q:ℤ)]:=
      hunit.symm.trans (hPX.mul_left (v:ℤ))
    exact u265 hX hXD
  have u86 {P Q v A C:ℕ} {d:ℤ}
      (hQ:1 < Q) (hinv:(P * v) % Q = 1) (hA:0 < A)
      (heq:(P:ℤ) * (A:ℤ) - (Q:ℤ) * (C:ℤ) = d):
      ∃ t:ℤ,0 ≤ t ∧
        (A:ℤ) = (Math.B699.N5.d44 Q v d:ℤ) + (Q:ℤ) * t ∧
        (C:ℤ) = Math.B699.N3.baseC P Q v d + (P:ℤ) * t:= by
    let D:ℤ:= (A:ℤ) - (Math.B699.N5.d44 Q v d:ℤ)
    let E:ℤ:= (C:ℤ) - Math.B699.N3.baseC P Q v d
    let z:ℤ:= (((P * v) / Q:ℕ):ℤ)
    let t:ℤ:= (v:ℤ) * E - z * D
    have hseed:= u84 (d:= d) hQ hinv
    have hPD:(P:ℤ) * D = (Q:ℤ) * E:= by
      dsimp only [D,E]
      calc
        (P:ℤ) * ((A:ℤ) - (Math.B699.N5.d44 Q v d:ℤ)) =
            ((P:ℤ) * (A:ℤ) - (Q:ℤ) * (C:ℤ)) -
              ((P:ℤ) * (Math.B699.N5.d44 Q v d:ℤ) - (Q:ℤ) * Math.B699.N3.baseC P Q v d) +
              (Q:ℤ) * ((C:ℤ) - Math.B699.N3.baseC P Q v d):= by ring
        _ = (Q:ℤ) * ((C:ℤ) - Math.B699.N3.baseC P Q v d):= by rw [heq,hseed]; ring
    have hbez:(P:ℤ) * (v:ℤ) - (Q:ℤ) * z = 1:= u85 hinv
    have hD:D = (Q:ℤ) * t:= by
      calc
        D = ((P:ℤ) * (v:ℤ) - (Q:ℤ) * z) * D:= by rw [hbez]; ring
        _ = (v:ℤ) * ((P:ℤ) * D) - (Q:ℤ) * z * D:= by ring
        _ = (Q:ℤ) * t:= by rw [hPD]; dsimp only [t]; ring
    have hrho:Math.B699.N5.d44 Q v d ≤ A:=
      u266 hQ hA hinv heq
    have hDnonneg:0 ≤ D:= by dsimp only [D]; omega
    have hQi:0 < (Q:ℤ):= by omega
    have ht:0 ≤ t:= by
      by_contra hnot
      have hneg:(Q:ℤ) * t < 0:= Int.mul_neg_of_pos_of_neg hQi (by omega:t < 0)
      rw [← hD] at hneg
      exact (not_lt_of_ge hDnonneg) hneg
    have hcancel:(Q:ℤ) * ((P:ℤ) * t) = (Q:ℤ) * E:= by
      calc
        (Q:ℤ) * ((P:ℤ) * t) = (P:ℤ) * ((Q:ℤ) * t):= by ring
        _ = (P:ℤ) * D:= by rw [← hD]
        _ = (Q:ℤ) * E:= hPD
    have hEt:(P:ℤ) * t = E:= mul_left_cancel₀ (ne_of_gt hQi) hcancel
    refine ⟨t,ht,?_,?_⟩
    · dsimp only [D] at hD
      omega
    · dsimp only [E] at hEt
      omega
  have u78 {P Q v capA capC w A C:ℕ} {d:ℤ}
      {bounds:Math.B699.N3.d1} (hcheck:u77 P Q v capA capC w d bounds = true)
      (hA:1 ≤ A) (hC:1 ≤ C) (hAcap:A ≤ capA) (hCcap:C ≤ capC)
      (heq:(P:ℤ) * (A:ℤ) - (Q:ℤ) * (C:ℤ) = d):
      ∃ t:ℤ,0 ≤ t ∧ bounds.lo ≤ t ∧ t ≤ bounds.hi ∧
        (A:ℤ) = Math.B699.N3.d16 Q v d t ∧ (C:ℤ) = Math.B699.N3.d17 P Q v d t:= by
    unfold u77 at hcheck
    have hmeta:2 ≤ P ∧ 2 ≤ Q ∧ (P * v) % Q = 1 ∧ -(w:ℤ) ≤ d ∧ d ≤ (w:ℤ) ∧
        Math.B699.N3.d29 P Q v d bounds.lo ∧ Math.B699.N3.d53 P Q v capA capC d bounds.hi:=
      of_decide_eq_true hcheck
    rcases hmeta with ⟨_hp,hq,hinv,_hdlo,_hdhi,hlo,hhi⟩
    obtain ⟨t,ht,hAt,hCt⟩:= u86 (by omega:1 < Q) hinv
      (by omega:0 < A) heq
    have hAI:(A:ℤ) = Math.B699.N3.d16 Q v d t:= hAt
    have hCI:(C:ℤ) = Math.B699.N3.d17 P Q v d t:= hCt
    have hCposI:1 ≤ Math.B699.N3.d17 P Q v d t:= by rw [← hCI]; omega
    have hAcapI:Math.B699.N3.d16 Q v d t ≤ (capA:ℤ):= by rw [← hAI]; omega
    have hCcapI:Math.B699.N3.d17 P Q v d t ≤ (capC:ℤ):= by rw [← hCI]; omega
    have hb:= u76 hlo hhi ht hCposI hAcapI hCcapI
    exact ⟨t,ht,hb.1,hb.2,hAI,hCI⟩
  have u79 {P Q v capA capC w A C:ℕ} {d:ℤ}
      {bounds:Math.B699.N3.d1} (hcheck:u77 P Q v capA capC w d bounds = true)
      (hempty:bounds.hi < bounds.lo)
      (hA:1 ≤ A) (hC:1 ≤ C) (hAcap:A ≤ capA) (hCcap:C ≤ capC)
      (heq:(P:ℤ) * (A:ℤ) - (Q:ℤ) * (C:ℤ) = d):False:= by
    obtain ⟨t,_ht,hlo,hhi,_hAI,_hCI⟩:=
      u78 hcheck hA hC hAcap hCcap heq
    omega
  have u75 {P Q v w:ℕ} {d t T:ℤ} (h:t ≤ T):
      u72 P Q v w d t ≤ u72 P Q v w d T:= by
    unfold u72
    exact Int.add_le_add
      (min_le_min
        (Int.mul_le_mul_of_nonneg_left (u73 h) (by omega:0 ≤ (P:ℤ)))
        (Int.mul_le_mul_of_nonneg_left (u74 h) (by omega:0 ≤ (Q:ℤ))))
      le_rfl
  have u80 {P Q v capA capC w A C n:ℕ} {d:ℤ}
      {bounds:Math.B699.N3.d1} (hcheck:u77 P Q v capA capC w d bounds = true)
      (hA:1 ≤ A) (hC:1 ≤ C) (hAcap:A ≤ capA) (hCcap:C ≤ capC)
      (heq:(P:ℤ) * (A:ℤ) - (Q:ℤ) * (C:ℤ) = d)
      (hn:n ≤ min (P * A) (Q * C) + w):
      (n:ℤ) ≤ u72 P Q v w d bounds.hi:= by
    obtain ⟨t,_ht,_hlo,hhi,hAI,hCI⟩:=
      u78 hcheck hA hC hAcap hCcap heq
    have hnt:(n:ℤ) ≤ u72 P Q v w d t:= by
      unfold u72
      rw [← hAI,← hCI]
      exact_mod_cast hn
    exact hnt.trans (u75 hhi)
  have u81 {P Q v capA capC w A C n:ℕ} {d:ℤ}
      {bounds:Math.B699.N3.d1} (hcheck:u77 P Q v capA capC w d bounds = true)
      (hA:1 ≤ A) (hC:1 ≤ C) (hAcap:A ≤ capA) (hCcap:C ≤ capC)
      (heq:(P:ℤ) * (A:ℤ) - (Q:ℤ) * (C:ℤ) = d)
      (hn:n ≤ min (P * A) (Q * C) + w):
      n ≤ (u72 P Q v w d bounds.hi).toNat:= by
    have hbound:= u80 hcheck hA hC hAcap hCcap heq hn
    omega
  have u56 {P Q v capA capC T A C n:ℕ} {d:ℤ} {bounds:Math.B699.N3.d1}
      (hcheck:u52 P Q v capA capC T d bounds = true)
      (hA:1 ≤ A) (hC:1 ≤ C) (hAcap:A ≤ capA) (hCcap:C ≤ capC)
      (heq:(P:ℤ) * (A:ℤ) - (Q:ℤ) * (C:ℤ) = d)
      (hn:n ≤ min (P * A) (Q * C) + 10):n ≤ T:= by
    unfold u52 at hcheck
    obtain ⟨hc,hempty | hupper⟩:= of_decide_eq_true hcheck
    · exact False.elim (u79 hc hempty hA hC hAcap hCcap heq)
    · exact Nat.le_trans (u81 hc hA hC hAcap hCcap heq hn) hupper
  have u57 {d:ℤ} (hlo:-10 ≤ d) (hhi:d ≤ 10):d ∈ u53:= by
    let k:ℕ:= (d + 10).toNat
    have hk:(k:ℤ) = d + 10:= by
      dsimp only [k]
      exact Int.toNat_of_nonneg (by omega)
    have hk21:k < 21:= by omega
    unfold u53
    apply List.mem_map.mpr
    refine ⟨k,List.mem_range.mpr hk21,?_⟩
    omega
  have u58 {P Q capA capC T A C n:ℕ} {d:ℤ} {data:Math.B699.N2.CellData}
      (hcheck:u55 P Q capA capC T data = true)
      (hdlo:-10 ≤ d) (hdhi:d ≤ 10)
      (hA:1 ≤ A) (hC:1 ≤ C) (hAcap:A ≤ capA) (hCcap:C ≤ capC)
      (heq:(P:ℤ) * (A:ℤ) - (Q:ℤ) * (C:ℤ) = d)
      (hn:n ≤ min (P * A) (Q * C) + 10):n ≤ T:= by
    unfold u55 u54 at hcheck
    have hrow:= (List.all_eq_true.mp hcheck) d (u57 hdlo hdhi)
    exact u56 hrow hA hC hAcap hCcap heq hn
  let u59 (P Q capA capC:ℕ):Math.B699.N2.CellData:=
    let v:ℤ:= Nat.gcdA P Q % (Q:ℤ)
    { inverse:= v.toNat
      bounds:= fun d =>
        let z:= (d * v) % (Q:ℤ)
        let rho:= if z = 0 then (Q:ℤ) else z
        let c0:= ((P:ℤ) * rho - d) / (Q:ℤ)
        ⟨max 0 ((1 - c0 + (P:ℤ) - 1) / (P:ℤ)),
          min (((capA:ℤ) - rho) / (Q:ℤ)) (((capC:ℤ) - c0) / (P:ℤ))⟩ }
  let u67 (H M P:ℕ):ℕ:= min M ((H - 1) / P)
  let u61 (p q H M T aStart aCount bStart bCount:ℕ)
      (data:ℕ → ℕ → Math.B699.N2.CellData):Bool:=
    (List.range' aStart aCount).all (fun a =>
      (List.range' bStart bCount).all (fun b =>
        u55 (p ^ a) (q ^ b) (u67 H M (p ^ a)) (u67 H M (q ^ b)) T (data a b)))
  let u63 (p q H M T amax bmax:ℕ) (data:ℕ → ℕ → Math.B699.N2.CellData):Bool:=
    u61 p q H M T 1 amax 1 bmax data
  have u64 {p q H M T aStart aCount bStart bCount a b:ℕ}
      {data:ℕ → ℕ → Math.B699.N2.CellData}
      (hcheck:u61 p q H M T aStart aCount bStart bCount data = true)
      (ha0:aStart ≤ a) (ha1:a < aStart + aCount)
      (hb0:bStart ≤ b) (hb1:b < bStart + bCount):
      u55 (p ^ a) (q ^ b) (u67 H M (p ^ a)) (u67 H M (q ^ b)) T (data a b) = true:= by
    unfold u61 at hcheck
    have haMem:a ∈ List.range' aStart aCount:= List.mem_range'_1.mpr ⟨ha0,ha1⟩
    have hbMem:b ∈ List.range' bStart bCount:= List.mem_range'_1.mpr ⟨hb0,hb1⟩
    exact (List.all_eq_true.mp ((List.all_eq_true.mp hcheck) a haMem)) b hbMem
  have u65 {p q H M T amax bmax a b A C n:ℕ} {d:ℤ}
      {data:ℕ → ℕ → Math.B699.N2.CellData}
      (hcheck:u63 p q H M T amax bmax data = true)
      (ha0:1 ≤ a) (ha1:a ≤ amax) (hb0:1 ≤ b) (hb1:b ≤ bmax)
      (hdlo:-10 ≤ d) (hdhi:d ≤ 10) (hA:1 ≤ A) (hC:1 ≤ C)
      (hAcap:A ≤ u67 H M (p ^ a)) (hCcap:C ≤ u67 H M (q ^ b))
      (heq:((p ^ a:ℕ):ℤ) * (A:ℤ) - ((q ^ b:ℕ):ℤ) * (C:ℤ) = d)
      (hn:n ≤ min (p ^ a * A) (q ^ b * C) + 10):n ≤ T:= by
    unfold u63 at hcheck
    have hcell:= u64 hcheck ha0 (by omega) hb0 (by omega)
    exact u58 hcell hdlo hdhi hA hC hAcap hCcap heq hn
  have u66 {p a amax H:ℕ} (hp:1 < p)
      (hcut:H ≤ p ^ (amax + 1)) (hsmall:p ^ a < H):a ≤ amax:= by
    apply Nat.le_of_not_gt
    intro hnot
    have hpower:p ^ (amax + 1) ≤ p ^ a:= Nat.pow_le_pow_right (by omega) (by omega)
    exact Nat.not_le_of_gt hsmall (Nat.le_trans hcut hpower)
  have u68 {A P n H M:ℕ} (hP:0 < P)
      (hproduct:A * P ≤ n) (hnH:n < H) (hM:A ≤ M):A ≤ u67 H M P:= by
    unfold u67
    apply le_min hM
    apply (Nat.le_div_iff_mul_le hP).mpr
    exact Nat.le_trans hproduct (by omega:n ≤ H - 1)
  have u69 {A P n a H M:ℕ} (hP:0 < P)
      (hM:A ≤ M) (hnH:n < H) (heq:n - a = P * A):A ≤ u67 H M P:= by
    apply u68 (n:= n) (H:= H) (M:= M) hP
    · calc
        A * P = P * A:= Nat.mul_comm _ _
        _ = n - a:= heq.symm
        _ ≤ n:= Nat.sub_le n a
    · exact hnH
    · exact hM
  have u70 {A P n a H:ℕ} (hA:1 ≤ A)
      (hnH:n < H) (heq:n - a = P * A):P < H:= by
    have hPn:P ≤ n:= by
      calc
        P = P * 1:= (Nat.mul_one P).symm
        _ ≤ P * A:= Nat.mul_le_mul_left P hA
        _ = n - a:= heq.symm
        _ ≤ n:= Nat.sub_le n a
    exact Nat.lt_of_le_of_lt hPn hnH
  have u71 {n a b:ℕ} (ha:a < 11) (hb:b < 11):
      -(10:ℤ) ≤ ((n - a:ℕ):ℤ) - ((n - b:ℕ):ℤ) ∧
      ((n - a:ℕ):ℤ) - ((n - b:ℕ):ℤ) ≤ 10 ∧
      n ≤ min (n - a) (n - b) + 10:= by
    refine ⟨by omega,by omega,?_⟩
    by_cases h:n - a ≤ n - b
    · rw [min_eq_left h]
      omega
    · rw [min_eq_right (by omega:n - b ≤ n - a)]
      omega
  have u60 {p q H M T amax bmax a b A C n r s:ℕ}
      {data:ℕ → ℕ → Math.B699.N2.CellData}
      (hcheck:u63 p q H M T amax bmax data = true)
      (hp:1 < p) (hq:1 < q)
      (hcutP:H ≤ p ^ (amax + 1)) (hcutQ:H ≤ q ^ (bmax + 1))
      (ha:1 ≤ a) (hb:1 ≤ b) (hnH:n < H)
      (hr:r < 11) (hs:s < 11) (hA:1 ≤ A) (hC:1 ≤ C)
      (hAM:A ≤ M) (hCM:C ≤ M)
      (hP:n - r = p ^ a * A) (hQ:n - s = q ^ b * C):n ≤ T:= by
    have hPAH:= u70 hA hnH hP
    have hQCH:= u70 hC hnH hQ
    have haMax:= u66 hp hcutP hPAH
    have hbMax:= u66 hq hcutQ hQCH
    have hAcap:= u69 (Nat.pow_pos (by omega:0 < p)) hAM hnH hP
    have hCcap:= u69 (Nat.pow_pos (by omega:0 < q)) hCM hnH hQ
    obtain ⟨hdlo,hdhi,hn⟩:= u71 hr hs
    have hPi:((n - r:ℕ):ℤ) = ((p ^ a:ℕ):ℤ) * (A:ℤ):= by exact_mod_cast hP
    have hQi:((n - s:ℕ):ℤ) = ((q ^ b:ℕ):ℤ) * (C:ℤ):= by exact_mod_cast hQ
    apply u65 hcheck ha haMax hb hbMax hdlo hdhi hA hC hAcap hCcap
    · rw [hPi,hQi]
    · simpa only [hP,hQ] using hn
  have u62 {p q H M T amax bmax a b A C n r s:ℕ}
      {data:ℕ → ℕ → Math.B699.N2.CellData}
      (hcheck:u63 p q H M T amax bmax data = true)
      (hp:1 < p) (hq:1 < q)
      (hcutP:H ≤ p ^ (amax + 1)) (hcutQ:H ≤ q ^ (bmax + 1))
      (ha:1 ≤ a) (hb:1 ≤ b) (hnH:n < H)
      (hr:r < 11) (hs:s < 11) (hA:1 ≤ A) (hC:1 ≤ C)
      (hAM:A ≤ M) (hCM:C ≤ M)
      (hP:n - r = q ^ b * A) (hQ:n - s = p ^ a * C):n ≤ T:= by
    exact u60 hcheck hp hq hcutP hcutQ ha hb hnH
      hs hr hC hA hCM hAM hQ hP
  let u396:ℕ:= 649037107316853453566312041152512
  let u397:ℕ:= 118703030
  let u87 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (2 ^ a) (3 ^ b)
      (u67 u396 u397 (2 ^ a))
      (u67 u396 u397 (3 ^ b))
  let u398:ℕ:= 1458309064184540963
  have u88:
      u63 2 3 u396 u397 u398 108 68 u87 = true:= by
    decide +kernel
  let u89 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (2 ^ a) (5 ^ b)
      (u67 u396 u397 (2 ^ a))
      (u67 u396 u397 (5 ^ b))
  have u90:
      u63 2 5 u396 u397 u398 108 46 u89 = true:= by
    decide +kernel
  let u91 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (2 ^ a) (7 ^ b)
      (u67 u396 u397 (2 ^ a))
      (u67 u396 u397 (7 ^ b))
  have u92:
      u63 2 7 u396 u397 u398 108 38 u91 = true:= by
    decide +kernel
  let u93 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (3 ^ a) (5 ^ b)
      (u67 u396 u397 (3 ^ a))
      (u67 u396 u397 (5 ^ b))
  have u94:
      u63 3 5 u396 u397 u398 68 46 u93 = true:= by
    decide +kernel
  let u95 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (3 ^ a) (7 ^ b)
      (u67 u396 u397 (3 ^ a))
      (u67 u396 u397 (7 ^ b))
  have u96:
      u63 3 7 u396 u397 u398 68 38 u95 = true:= by
    decide +kernel
  let u98 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (5 ^ a) (7 ^ b)
      (u67 u396 u397 (5 ^ a))
      (u67 u396 u397 (7 ^ b))
  have u97:
      u63 5 7 u396 u397 u398 46 38 u98 = true:= by
    decide +kernel
  let u409:ℕ:= 1458309064184540964
  let u410:ℕ:= 92731
  let u100 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (2 ^ a) (3 ^ b)
      (u67 u409 u410 (2 ^ a))
      (u67 u409 u410 (3 ^ b))
  let u411:ℕ:= 304531636234
  have u99:
      u63 2 3 u409 u410 u411 60 38 u100 = true:= by
    decide +kernel
  let u102 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (2 ^ a) (5 ^ b)
      (u67 u409 u410 (2 ^ a))
      (u67 u409 u410 (5 ^ b))
  have u101:
      u63 2 5 u409 u410 u411 60 25 u102 = true:= by
    decide +kernel
  let u104 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (2 ^ a) (7 ^ b)
      (u67 u409 u410 (2 ^ a))
      (u67 u409 u410 (7 ^ b))
  have u103:
      u63 2 7 u409 u410 u411 60 21 u104 = true:= by
    decide +kernel
  let u106 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (3 ^ a) (5 ^ b)
      (u67 u409 u410 (3 ^ a))
      (u67 u409 u410 (5 ^ b))
  have u105:
      u63 3 5 u409 u410 u411 38 25 u106 = true:= by
    decide +kernel
  let u108 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (3 ^ a) (7 ^ b)
      (u67 u409 u410 (3 ^ a))
      (u67 u409 u410 (7 ^ b))
  have u107:
      u63 3 7 u409 u410 u411 38 21 u108 = true:= by
    decide +kernel
  let u110 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (5 ^ a) (7 ^ b)
      (u67 u409 u410 (5 ^ a))
      (u67 u409 u410 (7 ^ b))
  have u109:
      u63 5 7 u409 u410 u411 25 21 u110 = true:= by
    decide +kernel
  let u422:ℕ:= 304531636235
  let u423:ℕ:= 3550
  let u112 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (2 ^ a) (3 ^ b)
      (u67 u422 u423 (2 ^ a))
      (u67 u422 u423 (3 ^ b))
  let u424:ℕ:= 207734385
  have u111:
      u63 2 3 u422 u423 u424 38 24 u112 = true:= by
    decide +kernel
  let u114 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (2 ^ a) (5 ^ b)
      (u67 u422 u423 (2 ^ a))
      (u67 u422 u423 (5 ^ b))
  have u113:
      u63 2 5 u422 u423 u424 38 16 u114 = true:= by
    decide +kernel
  let u116 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (2 ^ a) (7 ^ b)
      (u67 u422 u423 (2 ^ a))
      (u67 u422 u423 (7 ^ b))
  have u115:
      u63 2 7 u422 u423 u424 38 13 u116 = true:= by
    decide +kernel
  let u118 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (3 ^ a) (5 ^ b)
      (u67 u422 u423 (3 ^ a))
      (u67 u422 u423 (5 ^ b))
  have u117:
      u63 3 5 u422 u423 u424 24 16 u118 = true:= by
    decide +kernel
  let u120 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (3 ^ a) (7 ^ b)
      (u67 u422 u423 (3 ^ a))
      (u67 u422 u423 (7 ^ b))
  have u119:
      u63 3 7 u422 u423 u424 24 13 u120 = true:= by
    decide +kernel
  let u121 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (5 ^ a) (7 ^ b)
      (u67 u422 u423 (5 ^ a))
      (u67 u422 u423 (7 ^ b))
  have u122:
      u63 5 7 u422 u423 u424 16 13 u121 = true:= by
    decide +kernel
  let u435:ℕ:= 207734386
  let u436:ℕ:= 757
  let u124 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (2 ^ a) (3 ^ b)
      (u67 u435 u436 (2 ^ a))
      (u67 u435 u436 (3 ^ b))
  let u437:ℕ:= 29294602
  have u123:
      u63 2 3 u435 u436 u437 27 17 u124 = true:= by
    decide +kernel
  let u126 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (2 ^ a) (5 ^ b)
      (u67 u435 u436 (2 ^ a))
      (u67 u435 u436 (5 ^ b))
  have u125:
      u63 2 5 u435 u436 u437 27 11 u126 = true:= by
    decide +kernel
  let u128 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (2 ^ a) (7 ^ b)
      (u67 u435 u436 (2 ^ a))
      (u67 u435 u436 (7 ^ b))
  have u127:
      u63 2 7 u435 u436 u437 27 9 u128 = true:= by
    decide +kernel
  let u130 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (3 ^ a) (5 ^ b)
      (u67 u435 u436 (3 ^ a))
      (u67 u435 u436 (5 ^ b))
  have u129:
      u63 3 5 u435 u436 u437 17 11 u130 = true:= by
    decide +kernel
  let u132 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (3 ^ a) (7 ^ b)
      (u67 u435 u436 (3 ^ a))
      (u67 u435 u436 (7 ^ b))
  have u131:
      u63 3 7 u435 u436 u437 17 9 u132 = true:= by
    decide +kernel
  let u133 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (5 ^ a) (7 ^ b)
      (u67 u435 u436 (5 ^ a))
      (u67 u435 u436 (7 ^ b))
  have u134:
      u63 5 7 u435 u436 u437 11 9 u133 = true:= by
    decide +kernel
  let u147:List Math.B699.N4.d0:=
    [
      { u:= 103,L:= 8,b0:= 43,v:= 0xd917b6dbafd5d7a26 },
      { u:= 112,L:= 9,b0:= 47,v:= 0x4c6cbeaeb4b92104eae },
      { u:= 122,L:= 9,b0:= 51,v:= 0x12c78e8ec15ba6292ce46 },
      { u:= 132,L:= 11,b0:= 55,v:= 0x4e85c79e19c9c36d2e2ce5 },
      { u:= 144,L:= 12,b0:= 60,v:= 0x19a52fbbfaa9aa28aa8dbc33 },
      { u:= 157,L:= 13,b0:= 66,v:= 0x9352234de3791aa994de0d46e1 },
      { u:= 171,L:= 15,b0:= 71,v:= 0x10e6ba9efa5f2a0968da003c2f1ce },
      { u:= 187,L:= 17,b0:= 78,v:= 0x6cd508924616a976d1e271b6310b5db },
      { u:= 205,L:= 19,b0:= 86,v:= 0x10adbd0405fb27c35adc2f85fc537d2395c },
      { u:= 225,L:= 18,b0:= 94,v:= 0x119def0f4411a38601c094ee3d0c8f537e5751 },
      { u:= 244,L:= 22,b0:= 102,v:= 0x18d4983b1797573f76c8b6bce3d47da1d703f3599 },
      { u:= 267,L:= 26,b0:= 112,v:= 0x1872042a52c640f1a889d7226c9081fa12aca7ae2d067 },
      { u:= 294,L:= 29,b0:= 123,v:= 0x12c0b8631814014af511e4a5a8ed4065a1c693adc303ecc6f },
      { u:= 324,L:= 32,b0:= 136,v:= 0x4728702bd7550f86f4581963556305bb1306ad67415c9876908d69 },
      { u:= 357,L:= 36,b0:= 150,v:= 0x24a1ebfbf0ad12e3fc3de58077499d1ba3cfec76fb41120c71dfbaf0c25f },
      { u:= 394,L:= 40,b0:= 165,v:= 0xa7a4dc4d58a5f3b4a55fbe8f5527c58675287ef4dfe5abbac98c8cf173d7812cb },
    ]
  let u149:List Math.B699.N4.d0:=
    [
      { u:= 435,L:= 44,b0:= 182,v:= 0x3dc4fd7ddfa33ed2821be4060a22c977aa21107234cb89da1cc5645e221b74b45fe19f61 },
      { u:= 480,L:= 49,b0:= 201,v:= 0x37afbba24e946ff5b8b5fe281c7faefb58b0250c12cf6273a4dfdea1e1ad228511bd7692eb76f2f0 },
      { u:= 530,L:= 54,b0:= 222,v:= 0x5e63cf8f195672c21110a341b873c6dd36af38a8024d994b2b5adb7d7c2b9b0e4cdbeaa38afed2075e59244 },
      { u:= 585,L:= 61,b0:= 246,v:= 0x28a207b2084bbb584b94f4f814df54ae108a152af15852e8bf8c101dab8bd2a78639b0149d77fc7e770e151dd394cb8d71 },
      { u:= 647,L:= 69,b0:= 272,v:= 0x92b1cb05ae9ec10f79f7cceeefcdd70cb2308ee78357caca8d352151f4cab553b588e71e1ac55f483ff2f6335cab7939d7534325766 },
      { u:= 717,L:= 74,b0:= 301,v:= 0x13501b94a78076e26e4f31f1c72d27232495c001fba7ba8f059b8c7e5197964af8861fa95ffd32d19de89b1810e460ef7bb856928b77def74afd4aa3 },
      { u:= 792,L:= 84,b0:= 333,v:= 0xd7b8f3afce4f853385e5a7eb0cf332a4d5974f66f69e7dd621c114224922724cefe07034e32d0198c2af513f3da1a4da0947e1a580e3200cbecdc91a05bc4b5a5a83 },
      { u:= 877,L:= 93,b0:= 368,v:= 0x51566372e69f8bcbad34d4b1d013530906fb87b4820b2028d965e24ed18f5dc734f14cd99d3c6091de476831772eeb336bcbdb381b6ac15c376942879d1451d6f894b329acc8060f16 },
      { u:= 971,L:= 105,b0:= 408,v:= 0x3738a382c055a215e9bac8a29ead7012168468e14470c872364bf478afa96500f21e54513cb1f1abab72ef65acd408f7262cc77d6e2c8e2e619d5890e0a1eafee5dce6bbecb6fbd2e3102651d6a4ad95f9 },
      { u:= 1077,L:= 117,b0:= 453,v:= 0x221ac9e8725fd6cb6ac59393762f7e206e7958a4bcb6914ffe3c51e7a261bb04b11ddffd5705eb531b3a3b3465253fb42426b82dbcd3f671f22cddbc3f753031d2b719e90f9b65003e3fe9d915cf2e6da891e72eab6c3b5d728e },
      { u:= 1195,L:= 128,b0:= 502,v:= 0x188a0404b00d060a09907f17efd054d21a4c8cc703d3f31c1f15f152d9d88aca649bfb7382f29249d94cb168d1982f70e6730e3c6392ec99a506ee6b555178132b316ca25990b939c931731f77dc40109887ecee78b139b592fa742ed543a12cace43c1 },
      { u:= 1324,L:= 142,b0:= 556,v:= 0x1e1477ef213bff654fe0c24c37930778de53606cb514f4fea11cca82fa664c800dcc183c3ec2a5ae123338dcbb4d7f23086f5ecfd826793e05c89657fe19705dbc80ee4ce38b40181659427deb227a0472ede9b0b6bb75fcfefb6e8a320e41bb56e27d125b0c6337e6e8d711bb9df },
      { u:= 1467,L:= 159,b0:= 617,v:= 0xe8e5f15f263ea41debcad836f1168bddab46f19c678c31678c8174e13a5ddbc76bf9579326652539581eac1b65df46a74486f5e414aee0dc984bafecda2377f50fb100067def5ee4971ba7ec2c51913391becfdb36bc9a35339ea1db3c0a91f1e062bf4529997c1a937d5b06b35ddc22a545fabaf5e5449d5185 },
      { u:= 1627,L:= 176,b0:= 684,v:= 0xd156eeda0ddd3595a50e7bca51f23a8b663cdeb94e967befd2c595431443dc5d0e6baab47ae5a3ed52bd629beb2e52a3446d67fb0289b94066bf38cf0ebb0e179612abe1d9f4e9367bfb788d98e2dd625910aceccf7501cf29d0f0738e73028077e222ff53932473e0885c335528cdd194c9aef100115b46e9ceada855b3015369829581ac9a2f6 },
      { u:= 1804,L:= 194,b0:= 758,v:= 0x1a66fbacacaaca003d7745a064e89bfcc491ebd39e9b29f6c7958cfd78bc78996e766948e7b1c43e02a1b588262a6935ea71298e6ecacc062b4108fe480859b646dbba00e65e8c5b6ad52fcad8519aa9d04891e0d5622792be7d5c955dcdccba95e53b315220372ab771d8388affa46a5193d06876ddf6570d7d4f2d2c1eaf6ffb72664fa291ee885842fb3c944b273496b54183152ad },
      { u:= 1999,L:= 218,b0:= 840,v:= 0x34949b10bedaed345b691150aee4501491da4cc7cb9c715932807e8e09a6052308d76e46ce7d46ce47053938d044a5730fb47842e2809f1f0e27ed3946fe1a7934f799a89d33543e6b1bba9795b8259d0b9e252404b433c34a8819879bb0aca9a2045b4a882506c2d1a4161538bb1ea5e63c566f9a899e8c78020e27346e150d9708b602d676fb3ff328a469691f0f73296829d565564406f2544e1dabf86023f72379fc7f5c6 },
    ]
  let u151:List Math.B699.N4.d0:=
    [
      { u:= 2218,L:= 241,b0:= 932,v:= 0x1d408797b12c96e656af9b86451dcd5ed85d41ff5fa8edcdd9bd6d66fb475b19d8e6dc7eb38d8020a2143e9cdfe5b0c9209aa0032a571798d8da9b1e46ffc30fd338a920bd3a6336b39392653d9d7f4f031097291947d01485b83e46f43e737887bde1a9e647812a1d3aa1aefcd311aa99b39d3cfca45f11920886833879d900ef7745615415bfc6666dc41092ba19fca442fa60304b8c31e1f58271654305c67b25338f81eea39b280c248bcc2726434743c69bd9a92aa319 },
      { u:= 2460,L:= 267,b0:= 1034,v:= 0x6692bd135db4e2177fd58c37f553195a2016457394c07fbe18bedc1d022efa62a596f601605346b29894a8eee4e033b25bc158fbfd397850ca236e5968104cb65152b8598849ac48edc39d7076ec17e2508b98a3cd66245f8622d4cb11ae9fe1774ddcc0628fbab9a88978197a21739f4fa99fb3bebb131bc2b506b6f47deadc4e20e5c15355e455a5f4a41e76620116d9338f4a6d85b16585823b4f87d8a416c60ed7fb3a4bff47c7ff22663d924b9f149895b8efcacee04bf3997588fa8192d7e72ebdd779106b1bc1d2625a },
      { u:= 2728,L:= 299,b0:= 1147,v:= 0x2a8002a8e6c8f6e383f903dc9da02e880383fa2b6d665736c0e29aeef9c84794660066c63224ca659885359ab665c302770a3c20ae3b80724044b688451fd8b02a0b0d0a54e9edd1987d8f40892abc9e6120ea9b73cc84521f056fe6492611da47d6a4784ff478dc0641b4006a76d75bbd9130ae2ebc964034adce4272448cd2fff75c952dda14db7aad8e865f4269a75780a36bdb295e6992d5473bdbe2c1c429607c76ae075c3779bbc3b7bdb23400bf4794ba20c0cffa7e8751c33d49718e71887d9e4954f3417301fbd8b1744b7cb32ec3a9ce64183c08bb4d41995937bbbbb44ef },
      { u:= 3028,L:= 333,b0:= 1273,v:= 0x2ecb3eaf5cf4d502e9c8b2e965002cd9e2b501d7db8f0c344130f0eecf93da803a1c5ad19e1f8d2a2e9dcc8a9a2da11291c67eee189fcf204114fe1b3b9e6a247667d30a5d753efe0d8c4e51bc46769cf07693e485594c50822b0389c38b110aeee38169aa4ac74597637766b03d824dd4c4e827e148f964624799e5246e8dd53c7c284e79afd4b404061583a91127a452a3868a4085a224ebbedae2fe80326e45fc9506b711a5f09b9eaa1bcd12715d72bd916504894f776a3db777ec1a6e30e189c8ba31d91ec12eadd10d977d14f4db8672095825af71ed197756627a52e5a56816c4e4bf1868e47f7a03e8d707e317dd4ef0a7f9f4d9cc8dc22a0 },
      { u:= 3362,L:= 369,b0:= 1414,v:= 0x11e980bd45c7638d0a8e2564024abcac9f806d0f794e0623c245d8c8a262b0210c59e3a4f5ca7c397b95189aec8445e5ccbb80818e699f593bcbcbb428104646d906884108e7bb5b8a1606ed587c37210fa616c3999ba30f5cab142aea7117bbb4a17c57d99fe31735b0f9875851631512692ba39286f3297a93c27e2f73d684860dcb40c6795f9048d5cdcf3bebe1abb9a538071b685130dad6f17134cca0c4ea4a2203dc70b8cda3e9a78b120f9d8b789b8fa93f4aed35b8c118264845b0c4a48e0e6bedac73a75edc88e312c68d2937fb7a126e6f48d02aa149e7462552ae87660bf42a306c81ca65fac433d76980e17be52816740353a3bbbc8d679cfbcfe6ddc948ba6387aa3618e3780fa7f88e7a7ad8dfb16d0b4c6 },
      { u:= 3732,L:= 363,b0:= 1569,v:= 0x29ec7ee604e0382cbddf25c047d6d3efe3b1527e113137c87cd6a0ce8cf50445ca6d03515a8f50a0b72bacb35729d0e4ce6939628ca93f2f984e1326bc30155c6dc49c46580c9144d64ff705ef03a0e555843c7f83492d27cda390d1d20858a6ffa6ee5e26bfc1ab684cb9aa134d38035c66783f1e116c468153961b2cc21e49da99f646c7d5e649c28eb96407e39fe719bb6a354049bfcf268a56146e2ea6473d406cb646cfe7305a8ad524f0d61555f43464a85d698512deabedd0ca69805aee4f3637bdf50e5e1ced34368b281c180a274be0530784b1b315d3f483aec3ba22f7a3afe1b78d3f3a9c6a2ba9170d5e5642ed5f863e8ac0643b29177e40cfcec093b3f914109ac7e44dd2554a88d5d75223b1686148b341a1886ba8c3ed59ced4d19c7bfc8608aa155b4bed6a115bbbcd60767a951c07 },
    ]
  let u276:List Math.B699.N4.d0:=
    [
      { u:= 4096,L:= 451,b0:= 1722,v:= 0x38c0575e2fba05f038b8113a0abcf9d18c4a4c9ebd3dd5838c0139372134748efe87c59968e1dd1a7aff318fd3391cafe82567d55ac032675a55a92b3c58a9b874a64f54471c3e8e5266a4a44bfe127ad7a48df06d3eb8a1b1076ab575d5521dd93e92a4249767fd99ee981d3880ad6e391e9eef877384a96303dbcb128e25255fbd4f98604be5f3b60df3332b14765b91d6c0d140fb74f92ce9fd8744d9aedf74c86ca6204a51a8a0590d541762b165f846d4434cc8dcf3ae96ef2557f3e2020e580c475c50cb2c7a1bf45d0cee23dc181633bc8bfda2800a8e70b2e0d8b361e4a79ce8320b72176964d9f3cb85c193205fe5a6e59c702c00f90414a3d4ae2e544cb516801693c7ce6106fa97a3757d574df3c080d36e8337674d932ce4a10296eba1fc9d6e85a0e857d342ae395d99e77bd33fa607e86f2e732c1a52f50289aaa40958ece2c68cdefe968f4c09eac600b6c463db },
      { u:= 4548,L:= 501,b0:= 1912,v:= 0xd9fdbd9c58653c27d37b4bc6791d62715203292af3802638cae608a801cdc2157cf0bd171562add9772fdb15fc62d2e3a2049896c86bd92d714ca1c3a1616bbb3e5b5ab40800167eb17bf336cf3efa9271ac2e03d4fe5c94bcad73179901ed85629f642da0971d09891e4e79838d23fba3f49b87f2fb3c27d80f15832d3ecc13220f0f3e31710056065b4e380962128c5775a1ef0cb3f15c09ba298962e69fd554f52304df90db9713913c08b53b25366032be71cd38880a0b08c8dd2c0edd19bae51455ae908f982ce13914f0c1354cd1c897b44a87c18f4a785205cbec8d085d6efd83133c265f07891331a038eebaa400fdfca3d8e59a02152131bdb51ffa47496257ab26b6f1e34f4a20b6fa295326ea0bcffd59afc140f33c590bc62212a8b14b66a3ed3e1f89ef81310f893cbaef68e28f447bea3eb743a38cc0fc8c03ae2d5d7cc7c811af10189e8c1224de54667288bb0a78db8633b2a9e3b2e5d6b31a9f55f1d15a1a7714ee5392a7f01aab8b03ed3c53372b1b7a9ee },
      { u:= 5050,L:= 556,b0:= 2124,v:= 0xfbe7c7c3c50bdef646fb30d9c5b10b7612b09231af1759d63a2602e87923032254ad58d9422fae5bb7fad8815036a01ed8148ee4ef9927f35ea6e25fbaee1208b2e382e2512d0986bbe7d5c56cbcaed0c0e43fc4be23a0ec3c66d9e3fc1784b3cd9c47009e9cd647f38c7beb7fde44535f49b85a06c83e366950a652fba9b5ddfb406f1575afb9e458eb76be66ec907f5632ea5a3c94373e2ba4d995e95488c263b1ff341786d1933d547d6976024a6bed792b72328268208a9818fbe0128d623ef1388327fd413fb9220c7a02056957aa08d2cc8aebb32663e32148dff474c4ee2431e5c4a4a4d60d9255017c985794e83e253edc9fd78c82534c00d6da09d46c136a10847e2bcabb319e0d321e97638f64c34a38a420fb217ce47692383cfc65fb5b167dedab566fc3367d840e10fbf5e5c121852f9e458322208c0bebbeea3cc19492cc6d28a7721d3ea3efb1c08e4d31ad9773a5f0f824ed414b2cdbcdff42458ce9b6d016d29e5bd3b5142684d0093eececf6baf9cd025c6ff853ba94d982b102e1c89bbae9d2f63121c500ed954eb71aa135b8819ef5afaecb7a64d2709cd01a75 },
      { u:= 5607,L:= 619,b0:= 2358,v:= 0x25e5afbba52ef409ac6b562394764426a9812ab04a3046e4abd3f1f4e15c876aca010b66626bba74f09bbdb1551a362d99a09986120f50b2d3893092ea64d3235cb36720b61da4aa09d878833765cb78d92cee69b2187123b987582a68ba402e54ac8e780856c8d1350140dbbf8bdaeafcbe8b8945e591edb6360e2026bd216fc1a100eb93b95f77656d947da756dee5952e204dd638b13d8ddf557ae0cb528de3fd4d1b014598238a393b8a7c066986f754109f646642be382ef1769f768d983ba032343ab5d4d083c617df5e801f1eb9bddf05b403bcbce451e7631dd8aaac587fdfdc09436acd1b53a02255a262febfcf3ed303dd43b3f4bf2a3c17214bc7c4a32d85fac93e7e7cbdc863fdaa0a74687422d104b0dcebb5a8770b33520f68e156fd665e01120544f90a6650c90eb070b4d24b43a2648fb740bfee3207d4297633fd6c0cbad835b5a0c8a56f9432b42e6c8279d40abbdc87cbda4b21fb7204bcd9b5d48c58346b37d6389d159e22d8751382b1814d4c8b68fb94cef3c737ce505c114efd568f4b5681a42711484990e0bcfb9a97357a3f4155164162a905d367da521f843db5d05994b6bf85765defecba647e0becc2b8ef525c07e836a5fbc29b7457986f69b2f5f09c7af4f6015c9546640 },
      { u:= 6227,L:= 689,b0:= 2619,v:= 0x6d4a62c3a9dd19f2cb76836255fe0f76a90eb61742d667b79d62bfe0cfbd4015826535d10e25c4f16c27e9b38eb3d989e40fde82a9e351692b1b327fc911f1db75ca63554db03c35a49512ec307395c5a4707e505f63550aea4ad94a24616eeb454f524f5c8afc240820af5bc40c939ce929a04dd2b75dd66ff8230db1d8dcdfc9fdb6f792717a2c2754756337aa0447d7e96293f0286d61e8731d481ed99e202682d16369131842fad24a1c7cef810bb82a0d1c21eab83e743b669aa8d2915475216869b0fb3265782bbaa8241ba640d2ad98e23e631b19b2076dad7064918b56f1146d8f1fe1f48ae923b4529e62c76b4323803bc005e45aa50ca89ada35029b15cc22436afe3c8b6159b095c9fc6682a4e66b3cff69c26731e67b8ec63392fc93fb9d0fe4674a791b4377596acf184e9f6699d24fca6e04dd92336f83ae6a7e5728692579f4ebdffc4aa929b4ed61046da457d577fba6a7385df62c7fd4bf8e49026aeb94d3009754422c8c60d7ff237b15d1d7bc667b93918756f464a04f62b4fbdd7aed9b428b50546fe14d9a7d5d9aae10bad2bc5a1c5983aa4332d480fa0cd5894ab2ca34ac7fa8d2a774a67825482a28d85eff89944bece715f71fd6ad9c3c301dceb2f2421c1fdfd6db777ce371159b693991cc29f4c8fe0f30335c44f3004a2607eef5e209a9aaf177299f810064c0cf3d2f05200f8d55c1c7a3288c01be06ef0eef },
      { u:= 6917,L:= 764,b0:= 2909,v:= 0x3cd32f16a8d809e18fae09ef3c3b03d27fbf10f7fcabef5b4a0defd65668c4cac5a0fc8a466b50ca9eac3fb2f0b268f550806a1800b230f64762d491a7b295d160e86c22017452bf31fc944b7a7cccf614c661bbc9e4e9a2f19de93db4c1a51df9dbfc3f3a363d1a5689990b3e8711d49c7a9a8edd09c29e307ad7c3aa7317a396657276463ece1a65347a555b0a03018dbecf975ca85ce0abce0c6a45d232e39ef112c93a068050a56b9873b06a514535f0b75566db503437ef5555b70527e3b5527034ab9451e944cca3afda0b1a98012661e5786d199532a1b559b439d82c62bf277184ed39ece0b5aeb84e9bc122e946aa207f9ada7d5227d94ee459529eb8fe6ff6d9a5af3b2cba2c58ada83e77fb7e421fdfd624574770529be67918866eb0507442e16154c79354ecbde68476edeec0a3315132537f71ba40a99bda4130f54af805b216b2f73235532e8713c39f031a8b5cca17933f4368e04bbb2d58373c4cc33f839ec2f5a360e4ab28fea09d09a3b347485f4dcb4857b957476822a16e86f790371272b2416a1d1ea2edbfd80fd27d67b0a01f2bb8cec959d68ffbc71735a34b00e52aaa8df4fb299e22384ab53906c9c883e62b97760d40dc63e8ee168e9b0f9b713c965645b29f9a9a90ea9c12f554d7e09856b00d48059f6dfa26a7b2c9194155d3f3b17b21ff28cfb3dd46b060b6d2060c9944f4649fa12dfeb5806b895390ab8815b6abb3c06b77185c0aa26e42da4406f5a9bab21c5dae690c4ce6d02c8fb3c7e2b7656095d7a2623ec4be1b14fdf346776b6809b84854935 },
      { u:= 7682,L:= 850,b0:= 3231,v:= 0x7031b3359c97b6a29c83bfc2bc5cc295fbb614c21e53212009d4276950214afa65e31398fcaf0adf1f30f324ec70f7e3cc587012f9999426bcbd0f89b98e0066954588adc53c45fb13c567b0323fb13074d9440dc432c45b4eef313b6453876838f53e501bbecd374f55554b7b04342c4510ea9aa56e0413a74018aa49b8626aae690d4d21cf8a0dcb907029ea0699c1a1c5517c058e6cb13d5997e9ea8098d898a4113add813d6f6dbf58eca18eba7cfb5da0a8d31d89dbb93caaf9d5dbabb86f80b5a07aa20a0c43c5166f6647a7b2107ee61e4f07c41ec9502093d5a84539f91ac9d2d5c3f35f0a3a18be44cc20b1143b738630b52c21115f6caf88277cebefb58135d3bd7974d2aa7855177f33c666def2337ee7b31714881b723c6ec23133356bc202e500b1d3769e925e8658a414b1849f6700567076c6fdfd4a9f168ad0cdbad832b51aed41e83f3a703ecf79955ef412d82e56aad35419af86df8b1f63bdfff9beae152108336ff050a795095fe08cdf81e3976ba69db701d21538e11ee8bb86954ec8636ce637078a2146fcbc9cf6a28aecebe40aa46bbbf3b6b849b8ebe49d74d1983cd2d661c9ba48d20b92ccf578a63a60b35213673c439ba220501c0072380ef898c18f3040fa6225abe191d2cec57989cb501da6f1e8a713377b4b123eb5966819858ab8ac05467b2e81967932e802018e4e185722de096f7dceb02a53d1a6476cc79eba806dc645e10f0efe7c890408855595b115e741563174d9f27da49260e9152c77fbba1444921b5e2fbeba565776e12112e9639c4a871620d4c4278cc9e4cf037f3662d66ae5dc9c7736e4e88c7a10b15b876896f14733b0d1813d201bc793201ccd38ab3abebefd8c9a125e24b2e42788a9ecee707f },
      { u:= 8533,L:= 945,b0:= 3589,v:= 0xd360b24d6cf703057c129afcfe249848d273099c6c15ee7af3959679c9fd5cebbc79436167653a8f4265083796599220ac0920423bf85503e18d4f3782e91eaf711275bcf60d61978ca118dd7e3c17a56eeb148f3ee024158e11578f70e1c2713613c58fb4e76ccfcf50fb1174c9b6ae2fb052b66a1f0e84f5be2302b25856fb3bd7c56b831e83357eff074f5aca4f700cb7d7f7ecd56827e7ea7d4162f6d6e2ddd4a8c50222b1428c79502a1ceb1f47d23e5a375464b970905d698c80ee48d4367e8b78126daa9d014194389b9cc69cbd8aff819fe14bc60c39315073d20b158c043b5873cdbd76ab3ae309b741b7a7f401dcbc72d050efd563d59e8d62b4a3763bdc39dc1e17f3eca3a476b8ab85783f10352c6d71a6df9e55f23f212435fe62b11bf4bea4cc1afb256557166ce8e3e8ccf6868010bcbd2788b27cd4b316781081fe949d70c2cea39989c17aff8f0e1a611cbc226573eda90a95ae56232a001839466fb5ae10064de177da26b60b0a5d0e9c6269dc86f49489c306fdaccdc1436bbd13a954e58b4406230645fd59508261ebea0c3ce04c9809a5beba2f6187c53808d8dda854e3a302da4c972bff8eae8cf87a8fb2f77790ebf74f5002950081e3a3be355e5b61af7c0b21680f12f234b3799a9dd9f13f5b6908a4215bb1a34c66e82f4346da6dca673f9ca94b666284e487cd22e1a5dbae233e0488f30d76803890c5823f614fdce12462e26315f6a27fc3f8d02821c85b24d01aeebacd28f305fee5f35db5380e0f020b61cfa71217c159dd4ffff3ac3229891c98fad614e27144f13e6d41aa6aa3c8ef8c5dd7fa8ec8df84647cca43d83777ae0bcf5f4f7c2b09b97913c57f64609dcec5d3f1303488b4f8fdd81ca075dee7123dd9603a71c35c412854872140c4980aa7392c604f8c9e4eeca3955a581928386147333109bec8906f2465f37ef96665a172668de2fa0d94dad51bc94d4d25e2d457e9492fb8d02879a099 },
      { u:= 9479,L:= 1050,b0:= 3987,v:= 0x508a7eecc7be6d5fa305ba0c23ad15f62d32f9d2727b1bbdd5f1b4842f718a2a7af08994c15b034a30d3e5b3a49b2956eca16a6e6a3b3d1fa5e6a5929561d43cdb34d3c5de8f8e3f14d64c3fc5ff348e33307547dc7dfee0d5578219ec74f4363bf05d6e0e2480b3e7d04d1713149b3e8ecb2dccfddc8e00062474274bf1db72c65d4b77373a404b5c3eca7c67d5164c748ab22b9337382051d1d57e28bf05e2c4765be111b9bd9f517422d73831f28126a42ba7628f8acf440909a474aa00cc7aad25723c5a8b0a886a49ea531ee5e9d29c54a49607cd6c129d3f8ec45137830f217b5ebecb549b42b5c63cb4543e6b18ce07789040f0a843dc9796a33e89b8ee015191421630317072bb1b17a1fd05137a8db08547683bab2ba0305d87173b5d9f049916b702ae6723a2d3fb48695f53afa573fbbba18f66553b2babbc49cd74c36324f7edebf3534bfc811c8990385dbdcbc151ee9b0d6c6e2316a4adc5d9f9bd6e72dc135c9724835c65a540921580c2af60040708ffac36ca342f21f69d4d40e50ec64aafa5792752fa58404d86e2dd685440c907573deb264cb530485900bce0522e4bc786ec47f7679a7d980bef3be148ec983bdd737134baf3bc481511c87330b9114669ae6b81beeafaa86a27da00069c3dd7b863d85c39c3cbcef8dda03321da7cfa58a42541757019c0d49a03e427a3660e8f7d592bcbe47786f881620d48ad699600820792fbf68cfb3c4f994441eb78d23f397f03b7906e256d7707ba83b2d66f48033caad60bb75ac090ae75dec3a6af5cc90654eadbc70ee9844be1f7fc9f7a4117e2c5c91432d3edff036f3348224c34ae653530baf9b01f1d3b015e85ad2d596739aa054e3d919114efaa4cb342c490b0540a5ea18a0c0d77373e9d8e46bea57f3de14893f095aad6e8380268edcafd4509563531ef5a749085d8b9156127db7cdb950e85d788b5fef7afb0ffb7064e377d2ef3429a9da2acd74221169eed3f258f60616877261b265a1b1449df0f49047483354a2f989ad95d7519ff7f6b316bbc66942b6b97ca4aac05d7d01b9207c79be31631aa2cbabebe762fa1b1d78685c03c5bd95fd40c0e234ebc988f },
      { u:= 10530,L:= 1167,b0:= 4429,v:= 0x2806f92c63990e9397ce9889dd2cecaa0e001a68fb16c7386b75e0b634c039e65fef8dbec2add3837ace8a67e411529194de3b0a5c63eb60e1d3ab649a48b04354cd73a8750a27ebc398942cff089f49e5c2cc25d5fed6b198e63d4e9c216af53cf26b51a03cbb5796155baeaf91773ff2cf956f3a59f577909dadb07e861e041b7c624231175ac1470fc13483f1800c87260308c30c05d41ba6c91791430a8a98c4fe356a7b3f5a5cbc7566a9e643c96310ae367c56e56f315bba93daf1c383095d108ba1ee7abc253e55ef61c7167a08b9f78ee92bff0fc4aab84ef9539e94c6f795a4aec56c1ca6268ac990922cda5ec9bf020315ebce07b521886b6a0eef7f28e4a3fcf09111bbf7a461d805268a6a68c40df26d3a02319787b80dff94b2305f6ae857f8793e3a1c454fc28b224bd2f15ed43e2e0305778c66f5a738aca4d105f9e7a54e035499623db199e41ff71fc3021ab5a2f6f40be77dbdff42feaa1b1e1a4c2f221f8db657b33cc7a9ae7ed047224ab6533ebc45b05564a2c6627183695ed01a55d43615b5438238c5a6c03d4e0b6c005f92babb2ec237a145166d48e096b009c5bc67c1332072f25b14b20f9525c698f6dab1040819b8c45a6a5dc86909a474592939df1540db59cd06c9bf43204436900bdc4d4c4eff060fdc7c4c0e477055b4224432f35ff0ab85fe33ea3855050634d59637a461746f93802df567cc4b0477399216d17184aadafe70d6ad34dfdaa0d87a857cc4c753e80f0272604fb4e590b1cd9e1f662f51b0f2d4634a75a6bc1b83ea5e622cfeee68a703337aff2905fe21e5a97bd1694809d2ca1f48f9be77a1fcb869ea227af41144c7f81b9ba6109fd68ded5572355d535dfa3e622399762a7874b995a9c9e9500ab2f235c3b1864c335b3505e48edff9159b4e79ff6f874781bf5a0e72360e538ca8b565bf064e918dca25cec344effc01b269baa1b42863f4859e0925c680583016d1c16f6936ac23a42784b9291ceb8a8a26e7b0a20607e546c96d7e2ea3343426a3a385621d5dc0da90583f7f69d64a7533ccda807b7473a68e3bcc078062c563e11666cbec732be495883fab77fbd8c9b3729586dc7f9bab51b0e69be7d802d4572f906e8d19a17273b4de61a5b7149d9fa8730df810de3927a7ca9e779776cc79e9d4c25ee5c5a91ca73b1f888f5beeab6c2481bef774e48163f819f5516d8b54bd17a7a25f821ada47af37365 },
      { u:= 11698,L:= 1296,b0:= 4920,v:= 0x56c7ad483f51515d51ddbf1df7e6a6fcd455fe0c0ec9d0433064e31e4a3f2be906249ddb45896cdce648a63a930d3d8eba29ce69d1333412abd62e5c31f9bec7e1afc4f627d7f6631acc119500283c63973f2520876c72d8ba17facaf28491eea8e412e53200595f5194417174db33f3dac53288774bb314a3f55737b4c206ff678c2c2b817934b15b2b6a3bb49d0db031184530bc06ff871332c380f4b470952a098c8daa5c32d7fb2548547e6ad07f85245d413ec338d6b5877aa74a97639346e7899a1b88f8aa8fdb63ecdd0bd3c67b7f89bb1a4a8149559dd53297ee76d851e4aceedd35e3edac5784e7d07ce313c806dc80fc66a01572351ffdc3f3bcb4343f9b89ca9876910a8d21b73ed96d583fd74019201b670eda86dd90b39c6a6b77f0a1461f8324a0eb20b4ea5e63caaa9e3031fd96efd23c58173fe35d14aaf7edbbcfd603e766b99994699c327164d00de10c12d68bf711b36ecdc8c5e0e30af73b8f9414dad212e8bb1bf9f75252868c1b450390a71cbb328874b81b65047452427f0ed508314adde550709cb977e8a761af5ba1e462c91350b92a8406c334df144bcbeee8730964b0f2b1936335602c14279719caa6255539d5e36733077262f758f9d066ab392ec28814e078e63fcc641befeae36df5030d1e24084e094c1873c56926384a5124769bf7773f2689d25d3779b178eae5304d2189dbf22ce3abf328dc0dc2e0a4b9fae6bcd5705e8c9c32d3830bbf5703bf947f26eee38a58b44846924b50b3860272bb53db7dc64e23d119a5905d699251b56265723ead878feaa583c4cf142a1b07e74d6817955296967034aa0c2c112958614fed7f7b86172b6339ba9a9d8bb2cd0d79dba062572b03f5503f4778d96c63801960ab34bb482448c752319532526d9ca065079e41947911f7f7233fb714ecc6b40225d859bf85b635ded0dcffe4312375cb0a6b2d7787d142f77ad07609e1d619633cfe3ac11295f7a68637fe8174e0edf82f6cf2a27db9cd22b149113465b360d60ec8d49e290d112244ce2efd9c1620f05c22d4ef85a2d2bfac96e746e7a3258961d5d0c62ddfa53a1f5bd92f534b06957602ec6e5e817c5a6afa2af81ead13cf5230e9af7cab17ae82ed582d965b87239e72ac2df1fec69c9c0e3b692dd0126c73fd989b1c72865f26b805bc968402540e3115d2b8663a2944cf03821aa326728b581cac840541d78f85f28079fbdbfad8cffce5bde3758d02db2f8dabee5fb921f27e49d0997ef21bd225eab9fd674d55f1a4f99f5ac431c5e95ed8b359aef23a61878e1c4ad8d294ab18e62f0655e3aee695b3be09746dacec401d0db91dca0e41d0d94517c517a943426d1a63cb9d9ce },
      { u:= 12995,L:= 1440,b0:= 5465,v:= 0xa73601dfe3e47009a9e348a9b1aa35b46ca7cbe225a022ec41e9fa202cf65168e939448e91e3b7e87812845f564372cd00cf3390e35260c1dae60c2237cae7e7acc6593deea29085ff076e4f286e4a9fd128af110816496a5c6f33f805807ca93f2b36a088924fccc4016cec650b7b692efc12ab358adcac98e18a57dc115b6560a42df21b5a78fc82bced7a2bf63f1d132ddb467d625f6a4446b1be86b68c8f919a80caa3b510694bb160370328b155cf488085116e590c5ab3c92d640d9a4ab3349c91eeedeeacc62fd8de9a3316a9c9cdd559ac39b95b992b8f5e5abede53e8173de457af312800836e6a6eab8e22d28e8c8e33ed6082a33ba45abb4922955531219066c1c996d40b8406395e2528ca30909b32b6fb170fbb03bd484a6fd6075700f37f7423d1ff21ef45bfd9f263b19319ca2fc9907696d68558d5e5d1492f36642374595aed5135a66b737aedc6db2a6fcf01faa4a25bda1153cdb0fa7ba91f391d5733d874a3c7e08c7a1d792e7431865a61b4209109514e3104603b9b32f4ef09022e9c83f91da68ee7fb09b395d96264090bd7031a60194dd44bccc3d3342a61ab87da294f277f7d41e43db43f2879c351199b392817327277a2b5d6dccf2c778494d76927ee27ae303e5a4e40897b2c68f1609b918263e7c76ddb12d12e167496f2202e09554f7e27e63a3cf723458f29e624a64c46425f04a8c27652065060292f3d80ec64d163b19d0f76836e5eae86dd74a719260c5057e79b3111ea471286b10a821f2f59602216eee23e41ce3392aef90c7a1e371ef96af1f06dc693d95cb33090c72f00dadf990f7975d6a7cac54c455afdd63b1f9c4e48a2a5f7d7f00fff2fa479f955d868ecf28fba07ce65ffcfa4df66b8fe1e531b5c5286de4c2d056538732b7a41c4c064c89617b788229d17b8658ec0b751f32464543d73c0fe4b1298fb1e273f8569353c8f47253db1b737d98d91e686c2ac3adcdf2f3fa5033f20cf1b38b3738ddc6c9b68a16856de85a62457ad3099c074fc8d212fde121afd984d9c5b03d1b1286fa6c102a76bcf1563259885759604da8ad7f484100f1268eb6616d3bc72759cd143b0e9e29e64e98ea1fc4ae9772a1a8467c4452371445c36c005c139ab3682b5cb0c870cb28ee6631dbc13a24c8e1a7ddf9c951f011e159a13fd6ff6d997ad1513e9706735a4040951e36034c4f7d470e8700f7a87792c1c53ba84d29c1fe83a59400030a1899a790dce9ece71515ffdda214adb6f4381fe62e6188688d9961cfd1755fc7e244640e23ca9e575c735f882cd271b8f774d908778654b78aa45db7a28eb3b5d4dd40e846cd78ff09d26a110b9a6c82f68b37ebea2ba1e676503980d2bd07b37e22082b550e3e5960e282ac4653cda01f4a871bdd29f080d57ca0dda926014032c9b56fb6bb6d3d2484ac486a9d81f873ed1f158d455e5c238123396e02df1689b9e2a799cf5398428243f6442b5e4b9fb856f061afd3db647872d478ee95ae1105ffd167329258 },
      { u:= 14436,L:= 923,b0:= 6072,v:= 0xecaf6c0b2f987d3872efff636cfad83af83f63911e283d2d4806101e989f7aaefaf734d1e47182a7bf452e3a11cb73044a4816598c7516ebb2d9e775aabcaf10a240469e039faa1137633a37a4afd3df7522973d28101278290c7949d659fb39a0480e0936ee35f7f0ed46fa4391b1e605bdc0e377dd0baad5bdfd2fb995b261d93ce2294e6007302d714db4c7ba07c9d71ca84cf1ec6ca5a85d1e461e27d531f684f86f6a88871f3b242c18f58ede86ad4d789e7ecf4992ffaea96c6289c00781d9ae48e0a6da13b13c639d101a7b0e4046cf17ea1c5f57e3d9cbf9589e15c7c71c5b58ca663aeb856abed80379cad137f15537b28832d945122b501e774f0be42b7fdedb90d108bff4dd328a63cc5f80fca091de2b4d350b8f23a7ceac7bd408d2b640c151a1b792e107cfbd19b154645d122fc797a6b00b92b232381f867edd22a66ccc1fd3905f6fddf5948cf5bb509cb3431f72fb1dd51e83068faa806d2600b480134ea4f4b00061d81632695e7a7904495fbb6d0e62e6ae20074f79a3b36fee1876679aa0a6f8074c189cfd8b491f5197ca7631cb640a8d4e0c105b3d23473a8ac1a78a8162fb3d6a91f06843c28ac98bf91138ba794799ee9580c4c86269cf65ecb2fdf4e0caef22748728699c3fb526b07a598c028cbe52b07a82c23462464d6a54bd15df796d52c631e1eb325c34e28aa08a1720534f05b3224bb83fee8bc213b48038d88ca25eb23375343b212ed03ca9cc107f4df60aa3ba2f41f57184df6f3c58cc88a71fb21255a070eddb3816c0ac4eb8715acd0acfa862197fe191177bcd6e3389a768c16f1172956bf7e6b9e94c5497cfa9eda32c7eb2542568dcdd9a7f737ce5da33ab2ad4d9fa49de94e76bad7b863eda004d12a539c9683bd28378b356adc664e6a7567f5a2f458f1d44d77407a38ad3d92bc20a66d79d06989e0c9553db0fd5df9151d298e0c9861dd09596fbbd9a93920f8a5a4e14f2f2e4f544f7647767a63dd97f5690b6c923f8c566f3d721076c36ba4b13421fe54567e8329a747352b015eea410dc70c8ee9e7e9f716e44a3ab3a2e3376394558f4d0d7a2cec1113fde04908fee77201926781c5b549f53eacd7802861d25fb8d3386b2efb08d96035a54d1cc5aebed72ab4e78514fc60dd4d55f9755447df32f48a06460ff04122b5a1c800ecb632763914883a08448d940fb29434d252ae8feb98178735a93cf0e2b82fa421031d0ec9600c337b165f6e9b0849de73d3fa21c933c8ff1875d6b851e79c787501b5d7924547ebd1a47647b7ee41f24eb93e46853c5b1e31b7a4a24ed584a236ece7ef8920d1c49fd25206bbdbb50f8024179a095706494083bb411416f4506510eb9e94653050fcdbd4de7688d7b00f27ab2268c0888c713e45983c1f506f0f22bcdb357ebb0b35f1604b64620a42ae3c98ab9f8db742f06c8870adb9ce40f9b6d47f5c2e133325ef1b525590afdee8f58c0ac9f4072911c273c86463ca7616042c1984118ac53f31f3e4476c17c5f2a02f1322d6f61c2a59b3e23480fa607610d728bd1e61d18800ef9fb26fd7e473aca3daaefd219a8e5a9af02a41c94116f9391545b950593afdffca8662869e6329e1c1e4c57e361c8b273d625433ad207bc71b8533037cb3c0b85a92b8003b48be3344be6004221e860e458d25667593aae0b201f02 },
    ]
  let u191:List Math.B699.N4.d0:= u276
  let u192:List Math.B699.N4.d0:= u151 ++ u191
  let u193:List Math.B699.N4.d0:= u149 ++ u192
  let u194:List Math.B699.N4.d0:= u147 ++ u193
  let u278:List Math.B699.N4.d0:=
    [
      { u:= 45,L:= 1,b0:= 18,v:= 0xa65ff23 },
      { u:= 47,L:= 1,b0:= 19,v:= 0x368e86ad },
      { u:= 49,L:= 1,b0:= 20,v:= 0x643c027d },
      { u:= 51,L:= 1,b0:= 21,v:= 0xb4ee154c },
      { u:= 53,L:= 3,b0:= 22,v:= 0x50c342ab9 },
      { u:= 57,L:= 0,b0:= 23,v:= 0x15c73adb75 },
      { u:= 58,L:= 0,b0:= 24,v:= 0x2bc4abca2b },
      { u:= 59,L:= 0,b0:= 24,v:= 0x36c3644186 },
      { u:= 60,L:= 2,b0:= 25,v:= 0x1b61b220c3 },
      { u:= 63,L:= 3,b0:= 26,v:= 0x1755017d40a },
      { u:= 67,L:= 4,b0:= 28,v:= 0x3451724ed21 },
      { u:= 72,L:= 3,b0:= 30,v:= 0x1ea956023239 },
      { u:= 76,L:= 4,b0:= 31,v:= 0xb1783cedf451 },
      { u:= 81,L:= 6,b0:= 34,v:= 0x104628f82219f1 },
      { u:= 88,L:= 7,b0:= 37,v:= 0x63a5b9ee357916 },
      { u:= 96,L:= 6,b0:= 40,v:= 0x188ed3d16352c755 },
    ]
  let u195:List Math.B699.N4.d0:=
    u278 ++ u194
  let u153:List Math.B699.N4.d0:=
    [
      { u:= 44,L:= 1,b0:= 12,v:= 0xdbfeadf },
      { u:= 46,L:= 1,b0:= 13,v:= 0x15a0979d },
      { u:= 48,L:= 1,b0:= 13,v:= 0x3bf9fc97 },
      { u:= 50,L:= 1,b0:= 14,v:= 0x14438ea5f },
      { u:= 52,L:= 1,b0:= 14,v:= 0xac014b12 },
      { u:= 54,L:= 0,b0:= 15,v:= 0xe0e673b9 },
      { u:= 55,L:= 2,b0:= 15,v:= 0x3fdf1dea3 },
      { u:= 58,L:= 2,b0:= 16,v:= 0x1dcf130b3a },
      { u:= 61,L:= 3,b0:= 17,v:= 0x88f3ef847b },
      { u:= 65,L:= 2,b0:= 18,v:= 0x228919f4783 },
      { u:= 68,L:= 3,b0:= 19,v:= 0xcd8b7c6b8a3 },
      { u:= 72,L:= 3,b0:= 20,v:= 0x35edc6e42855 },
      { u:= 76,L:= 4,b0:= 21,v:= 0xec79593fe229 },
      { u:= 81,L:= 3,b0:= 23,v:= 0x2a1da61e735da8 },
      { u:= 85,L:= 4,b0:= 24,v:= 0x96dcedd9104298 },
      { u:= 90,L:= 4,b0:= 25,v:= 0x10d698a3148ab1e },
    ]
  let u155:List Math.B699.N4.d0:=
    [
      { u:= 95,L:= 4,b0:= 27,v:= 0x561c82ba11b79d9b },
      { u:= 100,L:= 7,b0:= 28,v:= 0xee91135f63024e4b },
      { u:= 108,L:= 9,b0:= 31,v:= 0xef19784ed0989e2d29 },
      { u:= 118,L:= 8,b0:= 33,v:= 0x5d7dd4dc7df80ffd38c },
      { u:= 127,L:= 10,b0:= 36,v:= 0x241fba5284686c4132422 },
      { u:= 138,L:= 9,b0:= 39,v:= 0x46514189c5b92c7f969f8ec },
      { u:= 148,L:= 12,b0:= 42,v:= 0x180d1671c99533699bc11fe37 },
      { u:= 161,L:= 14,b0:= 46,v:= 0x10c7eb363ea2752666255ace0ff },
      { u:= 176,L:= 15,b0:= 50,v:= 0x604373c3c4967b15a18de33ac0680 },
      { u:= 192,L:= 18,b0:= 55,v:= 0x26e4f360bf260ef562cc272d530d9fb1 },
      { u:= 211,L:= 17,b0:= 60,v:= 0x9e43b309192331afd02266e804abd34b7ab },
      { u:= 229,L:= 21,b0:= 65,v:= 0x1c860d65031798b295ba145b63250442cdf694 },
      { u:= 251,L:= 25,b0:= 72,v:= 0x5db48f8d157d00c2e41f851eca6d9f5f21f48e249e },
      { u:= 277,L:= 27,b0:= 79,v:= 0x19f01798a1cfd12a7193d8d3573b478fa76d0bc12a6bc1 },
      { u:= 305,L:= 30,b0:= 87,v:= 0x27b10db1bc9acce91004040153797653628f3c86fe3656ce9f4 },
      { u:= 336,L:= 33,b0:= 96,v:= 0x262ec217973d6c2c26dfda62fde44c13454ca5173e54b8c834374c89 },
    ]
  let u157:List Math.B699.N4.d0:=
    [
      { u:= 370,L:= 36,b0:= 106,v:= 0x27f473a14f475a527a650273c8f250cd95d55e105bc77afb401de7810be31e },
      { u:= 407,L:= 40,b0:= 116,v:= 0xfdc7172f98954bd4889cfbbc264a179c9d59aee441ed88a0c2b0fa611bf1d392f2a },
      { u:= 448,L:= 46,b0:= 128,v:= 0x19646fe86f3d748e1068fa6114b8d44406bc9902e918c08be169b618ba656651289a0995f93 },
      { u:= 495,L:= 51,b0:= 142,v:= 0x1809861365607e21fac1cc5cd61e37d1a6a8071e559941450eb3be519292e4f9e0a18140351beb064e },
      { u:= 547,L:= 58,b0:= 157,v:= 0x1813e837f1c6c68ecdf522b53faf187cdf7aa97ae438bf1bf464658cc87f140ee720d5e65c02f93129c73a3c15b },
      { u:= 606,L:= 62,b0:= 173,v:= 0x30ed58fee0e537f5693177a02e21f144413571427a7bd22fc708e897bbb04b99f0445de8a7c47ff33928c40bebe8d97eee61d },
      { u:= 669,L:= 70,b0:= 192,v:= 0xcd05e83ed63437303e505006855c12f2eb62eadf1dfdb835cac0be7e3d2a394e5edcf3be0c625f0683649e63c5648e776519c73ce22bc5 },
      { u:= 740,L:= 76,b0:= 212,v:= 0x132c0a6bd6e3a50df00644738dad4f5a2ed83d1fd8d2534cff0dfb1d162bc2f06333307ca6902be6cfdc4b2ab9e92ee7d2e536ceb1dc966ccf8fe62be9 },
      { u:= 817,L:= 85,b0:= 234,v:= 0x23f56bfa81bf6cca356b60f6593c8feebe1b30dd96a8ec8913a6fa5d3d082a3d0637381705e32218998338af47088b172ca9adfc32de44a161bd0acc706d0a9a3d25df47 },
      { u:= 903,L:= 95,b0:= 259,v:= 0x212b8240480551de259e40eb1645aa4951394346dc2a0643ee11275b80e488a8b48f8f83219b47363f534dd1fba34000f198b99acf04224ddfd2687589d5a1a85df92c1dfbb50d054d402b8 },
      { u:= 999,L:= 106,b0:= 286,v:= 0x4de3940c01861c7434fa22d2b9024690b691cd6d528ceecf99b5003b5cfedae42c0dcfe8d7407aa0868f0ad9d7aa99fc6f16bf95316fc53be3d7f2264fafe471d5cc4836050c15b96515b25fed6f84c7ab9471 },
      { u:= 1106,L:= 119,b0:= 317,v:= 0xcc46d197c850cf78c80ae4c7106b581d9c70dfdfcacb562fcf3d49628d4e9775d12b5ccdb38bec2b284fcf25dda77abeb54688d1170b435b8c3b5185c391947bb7d03b82456311404c689cfc6820a7516a8b7fe1fbf6fbf24217ca30 },
      { u:= 1226,L:= 132,b0:= 352,v:= 0x48ce7335cca4725b36b4b1534076929fbebb88229e9865131925230a169330d593694f9b19a9f5dbbc3d3570937702f61983cc7d534af862c89734b79d978539b965f8816266232e226531506e945337eb025698dbc398056c1bcd923056fbdb7c47a2de6fb5 },
      { u:= 1359,L:= 147,b0:= 390,v:= 0x1c9c12224f6f80e95d00b6c660b2f9e1b5ee67026cf18dbeb553e4fb607bb8fc19e8f57ee7ffecb85c9afd9b15ac93098989faf3281b1a04069d0b4da0ceccd09cb16fdfa032cf45039ad62232b267d75dcce8b477edaf667aa2ed412a8198141c5f8a777a94c24eeb83aa38e6e3f198a49 },
      { u:= 1507,L:= 163,b0:= 432,v:= 0x666bd96809ce9f1bb2ea943f521202b82c376fdd274fb059622699bb3e5befe61944ac2d52dbabb581056c0c6f299bff35216618414e4899fd015fc40799a75704d6ed6c82a2087c3e6e86a69c8e6516f492265c02646b2af7d832e37249a54561cb0b53a6254c6c2b6f5a814525692205cc17cdcac13c59a6e24237a43 },
      { u:= 1671,L:= 182,b0:= 479,v:= 0x69f0f146499a5d7240b3ccab63a2afb793f58c392aad8251eb69a7ff09081f5ec13e1f476e05e495378d33b210a7bfaef0ca0bd873aa0761982ce3385507077417f9c105cbdc763c9a9ef5fbd8f625041ee08d3a30be00d35a5702ff1514f00f8982ab18db6558d223fb012cdf63e1479c8e1eeced0aceaadf3ca2321a6bcf9f282c53cf71057dd6378775 },
    ]
  let u159:List Math.B699.N4.d0:=
    [
      { u:= 1854,L:= 202,b0:= 532,v:= 0x8b243a3c482a84292b55856f111ae64f7d39c0d1492b3071404f32e11a6f5867d4f30c3933e02b61c32623174e32e509fc2ec39aadac378b4b6136ecd128e56d247c4bd819c9f43745a5dd0f1ecaccf1c9afe8b913d4bf43c83ef8426eb1bb4cf86dbb17a8d4e82b198875729aa7afbbbf255b0a6bc39066901604afda544c4218dde80dd711e61932748668b18c44673bb5feef39a8ec0cc40e4 },
      { u:= 2057,L:= 224,b0:= 590,v:= 0x3b62d0b965e33ef1b1520a34905bd67afd08525c89d3631a90892c0d7bee999a76a72fc0cd2495d082cde0ed1f3cfedc766a72b8bf55f3f49d33b68754c6a3ecaa1bbfca14656d0353139304b6020447a31bf65580c5adf917085d381f633e29b5f0d1c57d84ee629b6608eec41e3ae6a6b279398f6d4482d80e3d95f2fc641f97add3fdee39e39b838d1492190ace870d4f62d4f8aa88a9c2b9f562f0a0f841e3edfc40681d8ad69730162 },
      { u:= 2282,L:= 246,b0:= 655,v:= 0xe89a42c4bf6c1854cd90c34cca78e61900bd118ac90b257e7142718e23c06fb8c190d1968e69c87e2c5e2f65881b18913c08e35d3e61cb84cb06ff82c71f17d9b208d7523533781ba0319e3db60f8900e69b88d0be4fc0f79338945054c3b932bac67077b016dd49b4678d21ae385fa1ab24a095aea8e63d4b9fdd7dd8454501ebec0b059abe2ed68627c7c88e767e33faed3d7fa3b076c998c9da4ff89f613863d8fbc9d5bd95c1ad88f7c45e0fe9227293da4e966cac9a7f7800f01943 },
      { u:= 2529,L:= 275,b0:= 726,v:= 0x1a3dd6ca97a5693316ea178bfc3fb3e8988652eaebdfce282af4a6fde85ea4faa7827a9803e5e4a326f46284d4347d964c29f48b6391c0c238ad1811cddc84f730576be7806d1a61f56fb2d357bdf8f24096e5d94242c7bd29f7c15b7921e6be20d0cacdd61f2e158cdf8c40079cbb5341479ff8faf264d995f0f1dd8a357ca77f92f7099bb868619dede766e5e844abde8ae9a5b24ede338e5b3d7d53ff853a635cc770fde789b20d318300a8c980502ba0fcc39917da99aef162a1f408a2dee9ccb414b16163f309334aebbd023d528ccd4b },
      { u:= 2805,L:= 308,b0:= 805,v:= 0xf7b8695fc3fe8333f8a6a5de6a623d471065eae45289769b580dff80f62230b0c8b444a5a8511f901356d121435615492589ba1a9b7cd1576bf406799fdcffc094e63a97aa7e3f0059d73837d4bdd2dd8bb0272d12b9ce174c38208c82807f5b0ba0ff2e2199d9d4e920e81e8cad41e85315535700b4533144b282d4e6922a2edbcbea2ef546bcbeadcfa6636c3146466b7e3223e49669083d81f31780484c65ede4b5d499677ab91c8b8a9a2fe409baf50e90cc9e787fd912ab75a723c2a5dc33db38d4ffdcd641a96a40d1cc3bcb11e9bff14c714603879859fdc76a472105b8492ccac71e62a5131 },
      { u:= 3114,L:= 341,b0:= 894,v:= 0xa0002ebfe54f89bafb9dd2d7d46d9725022433dcc54f78f8e1d7cef3b8068f9c91c40fc07c662969fdaa87009710140e794cde77524624e5257b0157f66358b1418ea874c9dd3394bd77d7f3af9aceb49bd2e8c1ee4aab1d54581977a0d02dd211d42c42d31571026055c85ed61d81c6cbff16f2a570538e9fd8ee061f7330e907404c624a9efefcede11acd0937d3a4ebc51dc8718255960f1115b124316fd19bc4c4162e0d51d1e3e887ab86b9f39a046072819f8e82ca8f0332441e24e6c6f12eca1352dff29825a88ceaf15e915036982b176bda1465c5a875e911ec0b53b30204cf1406062dbea1c5d5c4d168fac4a23f012207ccb6efac79c7616b4b63ea252d5 },
      { u:= 3456,L:= 380,b0:= 992,v:= 0x998104a5427826e74d2af6aaf922fd1448a13e994d4b9650004d0ccb4fa75a28d9e4fe5816bb36a7152244a4e31529f7b650b60e4d1d50217336621e891f2d7008022b8afe99174f1d9c26e2aa22867094ed4e9ca429a200e126967badb79d346f8722b455bbba0f9d9f9097d6062e3e91f3163a4c1adc7241dd1ffd76baa926343c0613a3145d88203a71ff48abb627b7c9de62360a1ec69a3f852082dc59870d757ba9337c19389179a7f5db8506a5cfdb83261a694b8afc1decc16aab5a427875c264d70786b358d63c5d88b52789c98166c3016a6e167199fb38c1af5939113fb97e3019a0bdd1058ef7ef8b7f06988b405feeb1f721b5404dfb04d2496a8970c744b5dcb1bd4501c6d8a36c7f277cb087431d2d2fcab231121ed0b6b4d8 },
      { u:= 3837,L:= 258,b0:= 1101,v:= 0x429581dbd54c5e98e80366eebc7b5852b4da64d44c151142e6dfa432d8944350948240b04387b6d74af828de122cb8ba81cbf8a507dcc0b8a7086b440f06814d3300c4b19ddc4315f1f0a5dd8002a7c8ba075f3ccd5d46d105a29dd1d827a098e0237a395276dc2effdc8ba81b03c6dcde5d680f4594712a5198a0e31764b2063110708f00565f57b979658ac696c348ac71357d7f5e61c582cbf7945cf93ceced7fbd08753de80bf318177781625d08c4f83cc54fe4c98243b1b0a7112e400c9be1ffd6ff02305fe98ec581ea75a27372b449ad095745e131c14e4ef5b9241269571b53b7cf44491da8ab2feb81336856cb8513e046c00935ac497e2d0bbf8cf89c97443216809889eab1e82a5f4689cdd1f086357685cca13c9ff7ef3f69e1454527032673c71b86e4543bb96b176fdeb3c255d9dd06e5e1536b98d5c69a },
    ]
  let u137:List Math.B699.N4.d0:=
    [
      { u:= 4096,L:= 451,b0:= 1176,v:= 0x451fc998d5d18a5634d15e555b2893aec8b17bc0560d2dd08e940369b00d06afbfb051a5d221b992e877170c2c6f3ef9252f79eb6a7cefbb75bb20196c07016b7105887bd2456eaef02a3efae85c2280b2c47c01f6de6b68bc1b88f51dc24baf9ef594ae06007dddc8682d1c1fe83f2858ede8f51920b6ef94a1a66f1c6d5ec8cc42f8103f993d5b9dd8d780cadb1fba91eac4918bbbab3a78dcc1bb2d0b4fbae5ff9b7b9f5f6fc50d303bc8e684f5079e613582ce874b0df89a94adc1c54bc0a8744a2590b730b1ab7c0f4de2a5f10662af9d380255e28d102bf1e68529df48f57a11f5b427c521414db352e31f9e90ee2029e4fdfad61512c58ba7f5283d63798b5ef83a33ac5df1700bc84c329a6a63751106f718cb8f472824295a29f841c6789c11b4d715c9519fbc16f86d7bb79858aa72a2402bced55171412197049358ff77ef169c223f406422d679484f3323b7723a6b4 },
      { u:= 4548,L:= 501,b0:= 1305,v:= 0xeff7fb5e52a02a47740bbe97c465403220d33036743b1e3a8193264ceac0953beef70feed4310fef9e2ba33f6713f6243870677d9afb26e3fbf3dbc3f4d1a17e0145a0c41e69d819ec139b45c319cf98f23245ef5daadab6939744c4b741d70e74f496c18747296210bb35edd3ef5f649bb1b8fe6c8b99a95af1f943b635253f9845db9fa8acab78a5dee7c19f600b6a9861931fa90927f4aaec173adb44eabf6a3c602fbd996a789b70b5e2fc1b95a02b144686bc81fdd6c7bdeb42b35e155e075a52de66dc492f14e703b6de37a832a014c9fe36c37772dc52787f51879270f872102f3a5f004116f581aadfc31074e11d97738655c4152f4328d8bd017096dfe18d0bbeb532f847d6567baf2bd61be4138e75a2c72b9cdb53f2067735196bd7418da39a4bfacd9f95272500f94d934ae06869a9d10147103d4d749b279fb16423537764c127d8cf72d0c9c7e125353766b23c34be495f33b2ca69853f1072a1bb641ebf7a042bc1322eb4c660fd7bee2b1d26de2b4e68c5c03 },
      { u:= 5050,L:= 557,b0:= 1449,v:= 0x14bff4eee8bb6e209b66c2b32ba799b2cb2ba55615529154cd8bad22d83bab7bfe085ff8500bc77f518b27e9b39383d373346b1fffac20c72fac00879a8fd0b0c9daa4aa3b39325d0bcbc8b25660787862d3ef22f4c5856dfe4d8ddc3f6235bd466400328634e246ad52e30542dd6255b085e97df66a6547dcb2195220a4be7fbf1507f45ad195cf89b5c5d66f04c310f4dd3bcf52f7afd9107968cdf0f78a2c0224be901cb776cf55783cb6d8de713c490a818c85b50fb9d64768b9aac3e42c0fb123f4d44205ab08d32ef68264c32e3fdbd3f08edcd924fdbaba8cc4ca7d58617cac08c0b9250e8871faf62fa05334b8374762963432ccb84e1913d5f52b99455428182e277b9cd9576a0933c2dcb0c13cb35bcf1e51d34c529854a6e44615336a6490c88eabea493a8b47d78c65a1b37f9bd7e0ea506eca0163d178ee4b607189aa720197fdd71fb5cef0c35687c8793c1f4cf61268440d1052d5a1d6a5a545e5b31c37dc9657b0edfd51b569fb09ae2309ad56cd59787ef21f7a8f50a4b31210e146c3cae8d2f0e467dac870e522f5d15d18523d272f063acd1da0292b5ee5e98d6720 },
      { u:= 5608,L:= 619,b0:= 1610,v:= 0x4b99f3fa317fd737bc9ea25f5f6e2347575b1f6f23b80b3c8c8bb30f017f2be7d404de121ff1100d599a02d8ea0926eb17662a736062614cb49d59b338811959582613526c2940d3933c1633a16b07b66f700f8b6883fc080eac75222f4bdd0563e3817b109281dee6ef1b4588cffec2524d47f1a9c6a4a351a8114dd19a31a5e544318311227f99a88de7250386f6d11258f88fd986fe12db3d5796458fe9d63d55fdbada0df043ddbc40a748aef2a71ef9225c0b3e310692a1c47f8dcab8679551433aeed8689b24dbfff8b537a76f4c30036373e50cf402fd2cc51014c753adcd2b5c9043ad1846f40c4477d9915c5bd0e97f2c04a916f304818cfdd6bf6df29033d81530f2cd7b1fbc0cc10c300e7e0566be90fe118f890b99ec528686564a4ba368d2ca10bbb3de4b797f1c819fafa102d0f27c965e4f2a4e5e4c1b81bb0c6c0a34a7c0c9770d5b1c852032e619f020bdd253c7367c445e7dd2156da2220eab53babf8eeaec7d37c1180694d33c62bde13829337780e3a6eac353f0f8d6b208c3b4868b7e20f0fe7d3bc8205e8dea1f256fef4317c67a22a5f5487db228ed402a1b194cc10ecf5592e0109ecb6bd59c9391e2213d6899d5a2a0feadd2ae710fc13b6d4d0ee009d6457b83226d65e3edba5 },
      { u:= 6228,L:= 688,b0:= 1788,v:= 0x5d5cf086800a648f0ab40dcfba475554dbe8a9bef89fe92e12813dc647a19c6f0227c9392e6b91d1b177a9ee935b6cc7ac13f767a170cd5f90456f6087100e08e35531718a7558b86799e1d0ecea1ba846f50cc52d634262d205a07497b080579fffa966c245707692e7d618f67b5df8c4bbedf4cedac3ede50b1780817076c16da49151e54ee15439e3c5f752ca68646a6a385d58d9cee62a908c2910ab6c279159a4692ea85b4a983810f062becce881d69703c7919e8626b23e24defb1f8e510c5f58a7396be053a3df57c345a64dfecf9e673ace40f3aab8feb03c177f81edf2efaf3e3b68b881b714fee26a40d7a07e6584c12082eeee494d2853e8eedf785f8930d616e762c67445453367df6c8e0e70971b29d972786eeae2115c5c005c339f14ee7a02058f9704681b80d2b55b87c81805092f0c0d8a1908d934d777f0491e7704cde6f4edda52ccf516930c2fb5d04020cc0db936969b4e89d51965b80d50f41d8dcf969f42b457162ff919a194eaf336062cb7499f0d40857bc408b69ca91bf28d211d437671e75b2900b07efffc7290870eb5dff0369dbc87904f2f5f860c91f43f8a8d8e55c8fe27ec3f2e92f071e7020da4f1cf7aa05ff8b15597304d34d9252a23cfd6a3d4a9bd02ffae7fded3f69a5832053a6c1fad3e3982e73ed582fde27a87fe25a2fddcc9bd71a2d0f6741637bdc01365508b2fa7e63cd3db646b0cbca6 },
      { u:= 6917,L:= 763,b0:= 1985,v:= 0x1fcd90346aec56f683c63925b994b704969f09e726fb10205061ac1375023d2ae98cefecd3cc29004f10535ffb4e721cfb67f28281befdd0ef390806ee8a9b3cb544cccdd440c01fe14a8a87701ef9c64f30a0dd5f2e3a5aec6da17e61acdfc12467c9d862cf2260e31815ffb72dabd0f03227e698eedb281c3df75b5f533afab0a9264492755c6a2f2173c721f87a7e68b6e5cf9f76469ca38e4ab684f2d9eb78a9cc9209667ec08f5af9c5b6dfa9692b6d5df18dc5a37d87b9d1be4ea1f46ee2b3f7b3e6e08ab273c86160986142ac43624b55897bcde7aedf6017d8eab6c7a26290817ab7eb77a3d954845863a4ec786469e0a8bdd33918e990eef9e8ef1373111388baeef111841bced0a816871885940a4a1aa197b18fecb0bea7b925f2d297167ae6d3655b494c0bb35e6aa009e6aa27c9a031345425c4efd6632129e540a690b73df44acaf19606c064fa4d086e0b2d3c51b68a7013bd91d409266a024da376fde7374ac25db097e86daa42a3e603e185221b75dade527e8e5e6ddfb8fcf1fb0edf51471cf48ef7a88568487e85484e8bf6afc5f71046ca82fd1e0d0d959e2ab4df7b2dba02674b2177cdffeb48c1bf0fbec49538dfdabbc10365c45e8a8dc766f3d72afe18ea78b0be5e2bfb75568eedfa24b96e50e3b99e8fed8bef0c24f1238c6d94bafd1dd76033170028efd19bc647ee33c04c035c7079d17930385ee3bdcb01677130afd9b06769a316e3c0c163043cd7306b08c54dade9fb866fb3714259b4991f94a8bb5eaee5336b13f04146dcad5913e5a02d01cb01bdda0 },
      { u:= 7681,L:= 850,b0:= 2205,v:= 0x51cc5d53ec7984f784572aad2b20e007e121827ae70cd93dd9980d4f771408a767874e3c28ebeeda65dee5eb3d365f1d54b487db4a10fa7c3a498c739a87509acd55e0757ec7ce0342d4421f67277fe071b9139d2049638aa8d8ab6359654cbefbc7b4a7fd9f4d65826396aa130639751360ff0629915b92ea897fa2e848fadf5d622c9ca8e8d6c8edb30b2a922ac07fa63b374c0d4586b072c68b960bfe8f2f4a6cb3920228713de9792956ffe3f0bca8ab4e9396d854a7d28de4994fe1ec919840570d412dec412e52b9fd2f23c000500966adaaaaec41c915a89cbb7583bfceb9bd6c159fd31739d7bb053f2a89ee7b18feef82fe3ab57a00fcf95326fe536a3c8fe15d7fa58da6004388b3c2d83a24ca04e4e0b7157b4c49ec15ac1b69c695a60939358d99513b4b79aadabb52d483b2f9e8228c69e2e638d0dc40a5e5b40974ebe670eec35dcc930e0cdcdf90f9f0cfcd5b909686558b14df1ca18d3b61cc67a6a8cce229d786fdfbcc4307e9016503dfd86e23dcf269fdb30d00d758d3266a286d2d112b108128d85b7297b677527b732f70b96e3475450d55803d79627d016d3b5190a3d4b4a9e5e0166817b38c3fea23bcebe9684f877c0a2a29264ce5642d21ad6f3dcc93b9906265dacd0c14d8fbfd39fe2c97a68e07d75fd52516cb1667f035a3dcbac7af257f4dff344fd409da7adc90c2e6e7c14b754d482d977f8dffc5971930bed2cde8b6018a5c57c841336216a6549f4c8ff2e0015e59eea7c2b0f84e0d196a62a6801daf55d180f88e9ee788354fa6db2cb3a7d648623b6a69b98431a64db385652c7469716b37623915d9cbd1630d966e12eaef9a1069a7178384fae1abf5603c5664538d4520c1ebda91a64f51860336f51b7e223259 },
      { u:= 8532,L:= 940,b0:= 2449,v:= 0x49f9e298449aa4ede32bf17f93fe2ad8231fa1dd72914abbb4d03d5817947fa2143e5de68b15ce4d511a68bc011334e40085c114b395781f2c4bd6258aaccee78f3984835d2c3c3030d146ee1f00c8dca217911ffe0615d9930785dac1cdb9c6d811216ddb37e6f7086e0eaee94e4252e8c4238286add59f3ca4ea8ff2d095387784a270885cc64e94aef039aa9667864ccafc75f5e41cc6337c850656c95fb449306831abe725c3b90fdd3c3f288d561ae5f170a5320ee5e361b0a0d7566fbca3a526d11e5b0a79b0ee0d6b3c9255bfccbd6422b147455393cabac9fadd61526b9ee8df253e89b6a570b52a87a63855a5849716ee455b6881b913ca8bc406fc88894e0f2cfa40e758269916a60e8c59338214bc499c9020ddfb10b177b0d95cd347fcdfa99a1feccacd5cd9b56b78b62afb95bd7a99140920a34bd04aade52ec0bd033b0e5fbfba42fe8a48c3dfd8fa92711bfce368448e3b69d23d42182d9bd1b1f165b13672502bc1bed5837021da7053f62920f0b738b34c783741e5d46ddc4254e453e02ea7ab409a3d320d56fe6d43c501cba908ccdcba8bd7e8e0b3de323f410cdf7526ae02b74f1fa8151fee4c762ffbb956ceca9e25ba7735d3b569ff9d4fae03c960a2b470b828925bb25d3cccf721c7ca0980b4d2e94f201c0e9a9f44425030d31f14bd3f90809a5c7c0eee3b671c5d43a7d21da90419e7340e76f4f55f1426fa661c68cc49b19173ad64e8da4ff2ba7a082eac0729a4a86168413ba1d46d8c0ac53ae9a1a75464390cab0a56512a55403c0f9b0f741a654b325b1888985ed535598225820dd3bf09d98b8f333e86acbcf67426f928bec6cba7eb9e1da334d18d67b280e45e3854b948c9b61bda716c33823dc2fe6c36052188d552f3c46102b8a31e5720de83828c51d3e70a93b7a3345d9138968dab458fd82ac6543e9e0f5d72e6a74716257d86c32673fee2dcd30293b6b618ea2ca281c738ab0fa904d3ee78 },
      { u:= 9473,L:= 1048,b0:= 2719,v:= 0x4a0066e096d1e29a73ec69d59bcbd4af3da8a9c8e00350df322673ac86c8206fd9cb33eaba47b54f04779208a87c77068da1c4835bde7eb762f6febd62a8a7bbc752465019d767012b1137dd95b7fb4a5aeac80378f3af1e11e8e845b5b294d8b76d56b5d0ec3e01795e4c01c2e6887ed7e4507a9640a10a649da62e4689d4b6d0e52e1f86f1bb104075dd6e1f576b21e327391b305b8db402ba9945169b1d6d9d659a62e01dd344c8eeb4158dfc617161b299b58fee490542333f3cabb28c0dfce9541675ff1b0b6720bc94cd5fc22661e93990c487eead29057f076ec5cc6e5ed9e1be5e317685af36ad3161c66ebfdf7966cadaeb5ead2129aaa8c5a09886e30cee9b59a72f6ab50bfc40cd6c7ee7fe49db381e810ec64e98c7fb7e6533a12b3992dc97804ebd95ff355e96a2f9b4c23c29170f16550c6540087aa12bb21179825a7ce7fb722c8ec1864a8ba185f55c45b822c432db162fd38d0846c80d3706290839565a25f348ddd7298ea76f2306a796b1c5cf0f6b43e39ffc952ca05faa71b184d4a29d050d7c6eab227641997c804516b1e242961f950cc45d20f69f5166cc2bb6e420b8f9fb7adb84b9d8990134153353d9b634e12b4c32d9757f310e4d889beb73512fc879df9ac2733246ff178e78c0da9033f17ebf958ab5f84e7ce3553d21de79f77065609c1aae8fe8c2fcb7ba27c77d0e362df6ca7c21d5a7c0b609ce3ca4612bed934d86ec9a5a711dda6eccda5f803119f3e8023a1fc52feb04184b731a14429fad0e70cf12b71958c842dbb42d5c45463a61e995f547c371743c8e87584d6935ad752de94d74ffc082ad143631cc75be3aed9fc6afc362f961bbdd9880d0a759b797da811ca7b1448b2b3d5c366940f38fed5670e157c9b522f26f0a3b0933c77b843173415229e43d08bce0237fee10444b2fa1d0d0701669191cf25200fb46398d5148ac6c3c10eeaed4b9d0dbb56425f0bc4a79c0b294c23107efe0b39f35edcb7d16c9d09ccb66f6708ed1c787c865637934de6a9834178d2f11dc0716ee572708749380d598bb595dc3851c86f132199302276c50960c96b61a0696e39adc6dc12ca697c1075dec25ce },
      { u:= 10522,L:= 1163,b0:= 3021,v:= 0x4dc40ff1b8533ad6f297b7e6402db19c4e5328a96c35d3831502c00f5550b31103cb4eb7bf74d295f8a243d8edbad260c933541897c87fd3d00c9af89fdddce28a98319962a0020bbba0159a98b4fbe08972376476fb191329e4917bbc3b52848cf7ddbeb082de385443491d356b160a517975d3a2a64766e625da4f895846ebab29758d0c3798235c4c8790af1f6fdd31beed5d1c92aead3c6314b966bf950c733e57d7b66469af03256030384fa6b5d0e787b9e8a11743031f09bb6c37864511a04ec582fab8eecb40e3ecc109a73872df3e5ea7586e00c1d31347935b6bec94e47b61e297e77879df14252ba3575f12b790d4f30e8bf4dcf9e4cd2c515d8080ffd92e3d27eb09fff9fabe53b231776d4e7d071eae756feb5cd647058a369df59006090a73cd219b63608004da110dfba0049374192794a1e7a04c164494d11d5f7749a58e0dbfefc0e26bdb493a35ea0c6e89b522fc2345702d414dc4e99491e7bde7c2c2410677344ce25041973e95428782a6013a1dd7d30e783ba6c28ddaf759d649f63e11aba1303cf798cf0c64d1330fb097d9e751666677de3efdbbe4e9953068863045f6a7338076efc47e7ee5129a17bf4dc0966338804749f367636c4c5a71189d5545fea0a11ef4d1544e75fc642e23e805b8711c979ea50be139068cfac9cccd27fd1b98e40174a0c2476c8e69f2e07ba6fed62de0b4f2353f42fbb2e8c6390a6030da30aa844c60938888023631aa7b9cee726298fbf5c63eb64c17f6520c93ad8f1335cdee7c67c5b16c022bad8bc4f9387b589a470dabddc82d9c1c38229b41fbb4ccdb4e592fca578000c50d52dde0b5d24544535ca54df022fb2abc51c46a9528e084d59ecad3010030cef38e11550e7cd4bc714827bb3a57046556cb11fb6a608eefe56b0c2b291f836158971fc5f0b2a927a73567844a69465e45a5b8eb74c35c96168d463e390e3a8c7ce873199a666142b1cd15df99623deaf12f1ad0bfefaa05f371d653244a3b6e2056f53ccb9360670ee992f8194664bddd0f82b3b5634b2a2fc6cd0aba6d3c0f67650cb5baee211ac4e8a937ea1af88d247b70066a528c1276cf280999156853e713463316af4235b2ce33d24187d07e676dacde6168a07b662863bcf0a7c10680abdc51f02a8197fa2067c79a778c462cdbf8ed8450e9289bd2e3e1a8f928120c16d2602585bac9c6e8658861ae66778f0fe72870b04171a2 },
      { u:= 11686,L:= 1293,b0:= 3355,v:= 0x2127721a6be0da4bbbc98cffcfc508b42a4cc9d7952dafa5c764b8b9149f5fa060b670e35e6c31b17300cab992be94295a1f024f6a8009709c1827997a73bdacf34109543d87f5141eead7ad147955bc1d8d166e795df684ae2154ecb09802f3b3b15ba911c4c31db7d1c21173794044b137dccc06150b717e48af674ae989454e733278d7ccf7d565c6107d7f0aae5fd28712009644f5928450183fddcc1c2ca838e9d1d7a588d9110fd87a193be49f73ae9b7e8d1390b0dbdba00467aa86d77b561a6ab9962104143814bc93d912ffee05c7d69204e7b3bb9b91492bbf9a49dff27854e2d47617b7aa3ce80415e425b441ff7356d922c56d4ee9001b3319a57d73472b9294ad9b82f23a9b94f6396be2369e8ee44147ccea4043bf71c0980ac12fbb3d2c9319695d0aaf8bd5e8f5869549dbb952629378c60a51b56b893f4e2753bdb89bedd86f4ef475d432493f2bc6574ac6ab9a7a011e68b3e76ed39439cbedb80138488ac850cd7e0aaef193c5de37ec5769a9ee21da9192c394e6da0330b082770e9b67e8d7d9b5fe1d4f7b1f590e381bcd1f1a3c34c55cd6afe3017fe50c7c3b27e89d67c3e8501f63a0b8b7b9ee2f247ebc736cce2544e2ed7ea17a069d64445e87da5c35cec374ce86260eb7318a9cef0bfc0e194621824f2161c12408feacfba097203a4a4307976273cd9ceddd2aa04bb6152e9a4ac4e96761d8aef059e9c894cfa939d500aa34f0cd15b9a5ab4f1e198edebc5045dfa1460e51f002e29247d44ca748b0eeec60dfceccc4d0e1d8c101904fb5fca6b4494b1638fc4bbedd9dbec397e452f2a259f798cc440a6cbc2ec4ef86d055e3a1d97d4fbc789d9d757259869b5a66431eba8d1a6c6017985fab00f756772b49a03753950cb4de340dfd456dfe9b26b9a503aa10d34cc43e408eb8d313526f37963c2c191f11223607e9ace0e47df56e520dbd10d172d04099cb99787066e74e1199f5bdb47790cdf413cfcc2da8cbe02146dc08d7a9331a61e3a618f03554672a9c054526193442cd9a0492bcc0d9d077958ad88679e45e1ddb1970965d152011048c26e512d49c266b0d368bcc52a7273ef1ba3651e0d6dfe32362d2d7df4a03bf6c03387b76abe2abbb8fa5627ba41cad30bbeee8851cb3eaae165ce93fd11ee5dddb1948dc52b20d93186e158dae8d6b210584334a7a95dd5671cfda0fa536beeb47c34ae33c8d8c4bbf88bbd0408fd4bb04ef06a29aff6245d7fb3874b2e8c2c086ae85c0e59849ac8bcb7bdab337d133cd2f5734fcb865ea709ae1e1df7b17ee71e621e8bee638bd0077ee8ae383ea4fef8bd75a23429457b1dbdccd6e5213bfee4562729d4358f8daa8d36a08e02e1d },
      { u:= 12980,L:= 1437,b0:= 3726,v:= 0x77a6117c017e9184ea5250ece4c63ac3903eb475ccfe460f612627f36a8e196cddd199f250d568ac66c72f39fb5c49304d3cb22111ae638c379a7180ce4b777d9c62a29bbf9bf5b45d4c970522c13a53f7da5ba3f667dbc9ec2fa64a1c9810c97cddbb0f74482a711a4d890693f49bb8b324c51361ab5f93e2e54558dc13de82b988eaf01aa1aa8be82524cda0cdd56603299b5cd30d3e130d341300a64fe350354ada0636a35350526e39719cb8462a6e89514a601a0d7416f11cd2e9509f43f923cceed53b05c61b9bf26c02bfaf40f8c427fa27a1e9159770e6b1f213524df9f20667360cdec8a54fb4445b60a76b4bf33ad92be4ff4751e16c2e94c989ea89e60326bc17232bbf43debe0eaab4590e0a8c6e9dda24ee0fd575a172d8b0a3d61e15f8dcb96a84350e7302c89c1fc9e29c424bd80b5c0f82109d1fd3553765fb3918e100120d5805c6d8cca88d0a6002276114655ac45104d2eb7f3e85c1e4e879e6aa724467545896b2407f32d42fef5b8a93a79b66f364b9d5d85b0a70719b933931b04146ce0ea4216366d130941f3dd08f283d5e77a18bdbbd64109310b5d2bcf841b461cb16d3d038b467afe7118f4d0e3461aac59d9c401fc374047e0af896ee18b846b05e4de1198d89a556819fdaa8f9d33f4a7e623c3c12e5c9cc3bcbd6de607e1acaff1fdaeb2b8c47360967b2b5d6f66da26a4bb4c8871575afcdd6c03d616d3fa5e7308f896d404e3ab51e65f2d05b249f9f42f0e9fa6e67b4b70d907719c378b6c166c0e7dccc140b03531a2e15db60f44ad889344185752ef95b8baa9387d99c9754ec918f7c33d5ff5e717698f14f9d02a4a9db5f6578d1dfa37937565a610c3a663f0e4727004353bc3cc7d7379315b0b87901896fcda123b8446660a6a90b96610fc814ac5c1ff2f5b55ab58ee08b7fdb7c2881c584c385e51bb4c0a9071e98932a743e27775544999bab2664670d9bf6053edef37998b9077caf3ba29d0a7f8e86039f7ca1647389bb08df79959c0463e4cf3f85452ebcb00313f14d4bfc27510f0259ce15ccbefb4824254c62a4bfccccfb899c2f7afe5931b805e1e4f9bd6ab3bf6466241a24d0db95f2ad189a5b02a02e28ec44422639541f6b2682f5aadb10bc2de876bcde394f353400780eaef0cbed49fa8914cba58e88c29b29a6fbc4b33e18c6b9e9a28b959d9357a72fbcd69ce3e1d15a4219a137f05f7064a958ec1f16cf83213133561aca598e6dbd4dcb16b75c0613c8d47a6429de799de908b9cf527bc4a722ea983fc8bc5baaa6bd9f17cd671c62b8daa3e97b002d364c8614b98ee48b4e369c5b52d82c4f388c1ea8a90ed55b2caeb526ea5840cfa772be2730a9ddd61d53449637236c06c61540aa598aa8978c484036b8a014266a694bd84d32332d4192a065c700252c3248500f71043f35060f8c20ec0f35ab9774365bb7408a7e1e576d7b3f49124924924a60428073c34f48ae2a97e3db4454ea13e6f344072c60767dd2ca0db49e014c1c4 },
      { u:= 14418,L:= 941,b0:= 4139,v:= 0x53335ce9ec3f7e30e20e5675c3442d9122dc40169e9c642c1a26d10fb7d4aa4879909df30ec7ad9a273c8f293886126579f06b4c5ffc8fc9c8673e7116dec67f08fbc170e375ea4b2fa8c1831fd13fbc0e8a4a9acbb67d275b940f09afe2d8300e29a41d9fc40d545d3030ae5fcb387719a9f4b4e411e9cd9c9bde86a48b983c945a9f3ca65c67f71ee4b0e672bf002e410c4802b925715f694d7567e332f25f688a75c3600ffb506ebcff7f2f822e82885b69fed9b6ab643035dbe864e624b6ec497e0148d276c6dcf0a33a02517d1cab9dc884edc09c4c768ed6d540a9ac3cba56c36d84036da0c54501bec854a069834d09e0f970783cae72a0008b69c4ba2069cbd2841d7e755e05b1819e2d554bfae44680240b24541f05b7ddb765ed3e465c714e3f72b5139d370f4c7424dd335789e21556148e62fdde84bf1652d04b7d4769f82f708ef011792f48e26bfe943dd0fe62dd40622637dd9aefea214d4c761bd1249c54fdcbb6e861365ca6ca044528044d3e9b86d914fecf66c3a042d10710150ce5dd8d4ef9df4c60b904e0fb045c7bf055d04ff8f275739f615382950db172ff482a2508455b591919076deffa93efb31efc283dd74b905ca67269d6d1625a50acb9fc32743ebabfec8aab144e67afba713587dab4f56b6f5835d5d082a44f83ec7a520544e9824d37dc4b473f080a7ba9344cae3e4d6d87825bca22e51a9933f7cb39d8ec25244acc92cb970897df416b05b7ea1a6e309fea6900429628bbbf7323d8691a700d2bb5da71b53ba094980d5de9de5b3328f0bfad6f9f49be800856a156acacceb77bbda563a518cdfd09500b916ad0f75c43040b6c876cf2eacaaa7f7c6de4c6ba82df7341fd1dea5b5f7db41c67df9a8e3639a5d2efd3cd4c03de98ab662d2ee0b0a634b7c00dae00e0ee19d4ce001640c54bcea931dc811ce3fd47eb612afbeeaab2eac65d16c3c3d03c232899b63d373a562a547a7b932e78299d123a504e8dc87ba593d25cdd84a7808c289e3c3f5f197824250c23c2fd58592ce233487edb4e630dcb600f488c4506c866acfe0c72ce4a37cf33bdb10dff075195ecae8f645f17dd3de33eaebad15a1249dbd94b2357787077d7fddc2b916a0735668eb0c982e675e34ff3aced055af7473b273bf853e6600e630eb4d6e5636b36e74aae533fb48e4e1e6ac438b419115aecf48e1fa717325e120ea34444a1368ae1ab91b3b73def794124d18ba38cb8539b27b0a02117df007855f84334624633cf65e85342e6bb94b3391cdb610c33b4896a2711ad549f7311d778726656c5e2eae281e9e5369214fbf015f590bd1d2592a80b91bbdbfc8d05d020243701b6ceb317c4ccc746b34e6c9689bd56e14d6e50a183d2c5cbcdaa1cdfa4fe2da980e07f2c04e287ef4d90bd7413917809375a70e5f0abf0d873593c779f71e595c0d0afebf052a9bba99c5b08b23b911e954bbba8f2eedc2d90272f9ee78c4bbe2df34dd3747c48c8ead5054944418edb796413b3fa083d46d0a9053efeb851f2776a1e6909cf99855127a5e3975dc920ad4615dc1075b4363a054f59218a41ac9fcc74fd2f4949278a6edef91e907b7489c509412b2c33fcf7a3833a4474ae30f066a99797fcf37a8e8e371dc3d84e857c52de64635a1ad17207332dbe0d1e0b30503ed76198f21d03aad7790 },
    ]
  let u202:List Math.B699.N4.d0:= u137
  let u203:List Math.B699.N4.d0:= u159 ++ u202
  let u204:List Math.B699.N4.d0:= u157 ++ u203
  let u205:List Math.B699.N4.d0:= u155 ++ u204
  let u206:List Math.B699.N4.d0:=
    u153 ++ u205
  let u161:List Math.B699.N4.d0:=
    [
      { u:= 43,L:= 0,b0:= 10,v:= 0xdfc78fd },
      { u:= 44,L:= 1,b0:= 10,v:= 0xf6959f7 },
      { u:= 46,L:= 0,b0:= 10,v:= 0x80fe53a },
      { u:= 47,L:= 1,b0:= 11,v:= 0x407f29d },
      { u:= 49,L:= 1,b0:= 11,v:= 0x1e78e3cd },
      { u:= 51,L:= 2,b0:= 12,v:= 0x186a7f5de },
      { u:= 54,L:= 1,b0:= 12,v:= 0xff1550c4 },
      { u:= 56,L:= 2,b0:= 13,v:= 0x6b1c7e473 },
      { u:= 59,L:= 4,b0:= 14,v:= 0x90a6122f4f },
      { u:= 64,L:= 4,b0:= 15,v:= 0x31f02b48f82 },
      { u:= 69,L:= 3,b0:= 16,v:= 0x13cc415b81b7 },
      { u:= 73,L:= 4,b0:= 17,v:= 0x8b23c4fec4b8 },
      { u:= 78,L:= 4,b0:= 18,v:= 0x5987cd36b6035 },
      { u:= 83,L:= 5,b0:= 19,v:= 0x10a07451506331 },
      { u:= 89,L:= 7,b0:= 21,v:= 0xa7f156ae66b283 },
      { u:= 97,L:= 8,b0:= 23,v:= 0x1ceb3990bc630224 },
    ]
  let u163:List Math.B699.N4.d0:=
    [
      { u:= 106,L:= 4,b0:= 25,v:= 0x33f0a466c1dfa6f815 },
      { u:= 111,L:= 9,b0:= 26,v:= 0x8c34dd37e7a24bd204 },
      { u:= 121,L:= 8,b0:= 28,v:= 0x5f495de708d9ef4131bd },
      { u:= 130,L:= 10,b0:= 30,v:= 0xcd21e8f9b915b44fdbee9 },
      { u:= 141,L:= 11,b0:= 33,v:= 0x28d7cd43a4d8b3460a444ec },
      { u:= 153,L:= 13,b0:= 36,v:= 0x53d9684d7b4e796c5c035d596 },
      { u:= 167,L:= 13,b0:= 39,v:= 0x15f84717eb4a5dd5c4f120b1f9bd },
      { u:= 181,L:= 15,b0:= 42,v:= 0x22bf47a283e6bcc6e7f1dd754ac770 },
      { u:= 197,L:= 17,b0:= 46,v:= 0x547ad18e64764d7d8734be18959c75c9 },
      { u:= 215,L:= 19,b0:= 51,v:= 0x7e2389fb183c947e4909c6b54db1fbd26e0b },
      { u:= 235,L:= 22,b0:= 55,v:= 0x4ed5d0b511ae5b1d3e962227b57109e9f2fb738 },
      { u:= 258,L:= 25,b0:= 61,v:= 0x2a2c0df83bdbdb568c5eb4949bf700ca687db850029 },
      { u:= 284,L:= 27,b0:= 67,v:= 0xff90752ed748c7f0b37336ead56a7cee6e1876c8c96447 },
      { u:= 312,L:= 28,b0:= 74,v:= 0x3d29d9b978f45d22ab2b8b004f1b3f6ac46bfb6d12ac63ae530c },
      { u:= 341,L:= 32,b0:= 80,v:= 0xba0e784dff8365ae353e236ef23b4557fe280d1e8ef74e97c155d504 },
      { u:= 374,L:= 36,b0:= 88,v:= 0x664eb92ed1bd6f8d975c15ec1d09ccf836258fabb090406a1ac72f45d9bf69 },
    ]
  let u165:List Math.B699.N4.d0:=
    [
      { u:= 411,L:= 40,b0:= 97,v:= 0x11ecc11061d3065daca1d4bcdd30db1ec82e780f767cc14fd4d14aab372d522cd3f36 },
      { u:= 452,L:= 46,b0:= 107,v:= 0x14676f71ec868d86f45d01bff50d1480a6f0e0062d9f0a9d7b28308b3bfae4de38e229b4f4b },
      { u:= 499,L:= 52,b0:= 118,v:= 0x1c4148ca8bbfc8db35fe1665cc37844167305189cd2b726a7f83f0411ea1c6d6b8106ad9881fad4a4fd },
      { u:= 552,L:= 58,b0:= 131,v:= 0x5b0e00e58276acc7f6e6bec837f3d8483d91848cb9ec9bdf8b28d74638b6c609985e3fa5e7592a7f75b54a49095f },
      { u:= 611,L:= 64,b0:= 145,v:= 0x451c85a91861ae2af3aa8436ae3862456ddddc7de50377ee56ebe2c0d05a3d8929c849017de637e394d6d587e318a4d4cbfd09 },
      { u:= 676,L:= 71,b0:= 160,v:= 0x68394f1dfe90ac7b4de9e5540314ca1ff6c463e5f6a6c44a92a3e082407c272301ecab488f158ae0ff1364032455195d3d5108e19fff19b1 },
      { u:= 748,L:= 78,b0:= 177,v:= 0x7bb92bba542914eae0fb1477cc5baeec0cd33d82837a0562c13ee011e1416efaa762680a07b1580b3948bd711331f54c8596ffb4cd446cf33a18c2de256f },
      { u:= 827,L:= 87,b0:= 196,v:= 0x499266ff0032f54fd5cbeba18e3aec2a2aaa815084f95eee519199d452c9a91a121bad870d86c69e88005e774721b61f41ec0db8a395e73b653dfe8b8444237022debee895 },
      { u:= 915,L:= 96,b0:= 217,v:= 0x21034ba5d51f2abf757fc07b3f912ef29a07a4d297ec69204cc84a99f5ae9bc01de54e722249b13e146407128adfe360ecb627a35b263d2c04231c25337d34239f868f25284704272c48adf4d },
      { u:= 1012,L:= 107,b0:= 240,v:= 0x26b904e234a70d499cd1bc19135cab5fb57a0ce8fd3ffb592cf94a95120016e7327371bce97625e1154bf0b92da5679c5067582a14a6e4b5ca25e58ce9f04950ecc3e239f2cf820d340fa2941803b4cf81728a01c },
      { u:= 1120,L:= 118,b0:= 265,v:= 0xdbfa90b3d666af91553e02136fdd6604d0b8968fe4669194430ebb100e887c86107ae0ae2bca16b0378cc4d1ce0d89d61ac4209716aa2f65298d13e6d286a4ac788492ea01b7f449da0145b3d802bf26ef6288bd5d7de12a2ebd2e5235 },
      { u:= 1239,L:= 132,b0:= 294,v:= 0x12530fda66e8800411851ade29f9976897da0d02ce9abecdbffe59887eeb3f8a184f3d0b31f9bb2b82514ea435929b3e9984ec802d1dcde7ebb0af9eb38527d84e52c07ce71470167f9b5f809760cb31b6a30a043d2dcc7866dd6e69745bdfb09066a8bcb11d9af },
      { u:= 1372,L:= 147,b0:= 325,v:= 0x10f6672ffe4c83005c11b5fbe0621dd0c748d98e160024a8354b9a05174f05f992a11435e876295f033e247b8c12abd6b468424db3afa2fb23f0dbbd6e2995496638670ec241c90717a81a5d94bcd2615443bf9cb4329283f3e88b2d6b98aba13c6064d1f69e7e097fcc71963c5ff354550d1 },
      { u:= 1520,L:= 164,b0:= 360,v:= 0x3706901eed2baf9208466c2098da62c6c971e3a9059374aaaf79eac9c40409b52b1273210313970f2a6f852629b970e29902c23f2db7ee8042b341c2bd28e026930343b7c5f338edbb5293caffacd9175cb27613026683d080f361b6edb3408ad6fca855ff687eb08f3da17c22753dbefe2b52f198987c5274670cd7b597e },
      { u:= 1685,L:= 183,b0:= 400,v:= 0x3e8ffad9f2882c0403ee41f24310a108e4a89bff4a1213043cbd2b82b1045002c96ff9fe5e3115ec7e4144a684806a092a37b98fbbeee8a761a3071c58181acdab9370dfa80a1747826b04d5d4d6138c8cafd8e959108e66bbcd6278333963c967d8293ced36c0dffc94d437c8986a458f355760982373c4b43f186f7633ce89fb1aaf2adbf86c097764c3238 },
      { u:= 1869,L:= 202,b0:= 443,v:= 0x70fa5e324f3d8200d5fa91ebf92e6eba61145149aa2a42e7127c0e69ff5ad64fc18976bef9d81cf790136388055ce2ffaa08c22d8157c6e903ffbef99ada69936f0cc48cfc7543e9e403f2ba914ef8410db47583354236d5e1111ba79c25d32d07b5e091404b3042b99191db23027670d7ace2bd9dc859cc3fe1e9acda809ea607b2f1e3d91b4c6938a27b73dec6ba41934683057ae78541a664e0b },
    ]
  let u167:List Math.B699.N4.d0:=
    [
      { u:= 2072,L:= 225,b0:= 492,v:= 0x1266d2aab75438b6ff290b1d21759c9e386c883bdb04adb354ffd0373d13ba90190d7759a48dc9d807526c08e62448343d40bb7ee59a0d9a922ebd83b5c0acd662d43804048e6a7a4450b528a782d8b209747eebb9af39aa07d0360f4b8d29e6d7753282d09611f795da8974242983deedab0c5bd59a3129404c23b817444c4be289839aa7c74959f00c2ffd928dcabe02b6eb20d92e735259aee1b46bc082bd94bfa2dd904966c6208cee067b },
      { u:= 2298,L:= 251,b0:= 545,v:= 0x3c7b3ac08ec1cfe270389c0bbebccb274b8bf52a130ab6edaa50b2dba725c6ea919dc770bd38ccf23f22e4c8aace6efac279e1d8dde5e3f0df408cf83616932eca74195087cbdeb670b3f653a9ccadf53c2db8b2cf300543c1812e6c5ffa80d7d3cf4023f579350ca2ecc35b2315db68d8a3ee70939ef7302385a0c8c73f06e7fe11a7a6d791707d40c2e1a342b2cc89765afae29bd0e82fc231f1d5753ce66fae04165922f93bb4d0cc54455c2f12f7abd48fa2e756382cf5854e145550619 },
      { u:= 2550,L:= 277,b0:= 605,v:= 0x2b5cad0f1d81a5a0ae2271b984b65bb4f695f77f5f7f6a0ad7ef1a5b2467d13efcc7d75b4cf8cac89d3b9982acf1a38d2fc0f2b2a2a535ca47faaf8b2b610db1a49389766216c067c5fd8e39dbc13f1315e5185154d2d3887a13fd6862bfb6a035a2728df9034eebdde6e7796640189fdb06128451993c8dd6c4f6a73809c677f644f1c188555fe0c51e4d51bc8cf93a3f047137de9c59b65533224d4818d2da619f700258141bf1486d5a958f6101da77ae41956eb0ff30e9c0504850daf169db5c3f88aca161a160e462218250fb11b40aaac3c },
      { u:= 2828,L:= 310,b0:= 671,v:= 0xcc7c13f95b3fc4ec2a5b1956f0a3bac34b84425e9c619d0519b1e26d7b35d33f931aed735e6f96a89af649d6304abcd8591ee41055991d37514b5830cb45df4864c7d8f1ce69246a8fa53e2e16c6af2063e0f97ccfca3347dfac8473af2252336953222e783d620cd81bcd785fb18e4502fb44ac5d031383caee0d3b17716bdfd0b3392a0daa27cc0732e822dbf0a0f6aafe0342c72337a00c1f7067e3f01a108fc3d4a5f18c54e5f5db09ce861f108de97aef14d7e74b67cc1ea44b67f5e70771404bb92ff547e1181e443e59e9a9bb8d2ce7cd0644d0b2ad2e61dc2ad6a66d9d8ba80afc7b99d8cf02da1 },
      { u:= 3139,L:= 345,b0:= 745,v:= 0x36ae6a68a8a1d3aca1f6cf8f40406c0b56da0021f007afe4fc540c33c73acf6c52fad330405b2896ee6360b70e3b3fd7168732d92e6ed58e031cbbfa870e4a60a96da648377eb2fdda3efb1bd153294c556a95700e26b7169f4a7bcdf61a76a95574bf3523d6d430cf28253b9eeb80aaa0dc72926085fae408a3598228fbec26be7a39f24654aec03e599776cb477a11fd3e31afc0a599f433225be2bc0988bb40433822f056b315cf2a7121ddc7972e914b013f61678950bd83c5477fb7415c0a8f05846bf036c5899922b72a5d01057372c0561bde727e931b6c320a657af207c8ccc948c084ccdc5412512ff1eb9ff05f0e1e3e90f7d408ff8fa9988674f54ef062429ee },
      { u:= 3485,L:= 380,b0:= 827,v:= 0x5ae4d06ad2847e72a89d171c43de4f2735d7f6ca1a152a41e4c2ae9b85f401e35e1921bd593977b6fb5b8182643c125b3cff901472791bd868a5a5f08094dc82f67a7f7175f27a9f000ea2d0ff27f5dfee7607b9ea2ca8511e36a44cc8014293be369bab642a377750ac9308ad9c58d28cbc12edb85988b88f440406b8293fc41e633d0e747be24539985e0d0b2f185c3379bf1b5a38c5a3b9bc35fa2c5b67666d870f27288525bdae63dacd01b9a9469986f10fc8aa5c49bac9d581952fedfa0f0bbab6a585fcdb218a1ccb9c419d2ac7a12bd85c79ab96b0b334d2e4ca5a17b193e6911eefa8f36ae0fbad32c4dceea6d6be5d8823c728012401cb6837c461cea16df8c5c1d4b3765a6d7e3b4b1551f1a46826413e5ecb1d2eb593886eed142ea6 },
      { u:= 3866,L:= 229,b0:= 918,v:= 0x1982eefdcf3d3159c53c3d0a17d118c60aa96e09ee3ca0fccb7f85253e210f42f6c82135068e56137ea24618bda9ae494dda9e5f2d2ab364839419f9bb3daaf81cb879cc0fe4b95b089f0ab57726b847a9b303f4a5f5239179948011d2bbb416403bb3706316590e569c22931dead63c0f432f6258a1c487faed0bf6c62dc420cd3518e096ad0e7596e5dd7511776cdbdb5fd1f0abe667c61333eae0eb20b177a2d645c1367d6be5acbad9a393ca813356a453414fcbdc8e0aa8dba8872d5a6d9fc201d05ef1fd95ec898d48bcc8a8f67b7a9acc99929f96143840db3c2987d75892cad08a3872d94de01676b65033008dc2be0cc79828266d1729540648ddecf28b7767eb2aaed7bf1c7ba678564f5ac1471b2c68a4d164afe5905605c9bd716fb65dce4a885c8791e0f6b36f2823ba576d18017f29f3c774f722376ec550f3432c7 },
    ]
  let u139:List Math.B699.N4.d0:=
    [
      { u:= 4096,L:= 450,b0:= 972,v:= 0xdffa3b1354b94f68dfdc8943a41592de95f2fad6e07a634909214fc285d96771fffe8654f5254267ab42887ae71215e61089e008d8768939c1527272453712594818de81c3361058401117c78d8d43671135c0f849d7fd112645c85c5a9bc7ec9e2f2e322c33e3e1e73fbe4ea76291fd44b42010e73fdbcb05463471e2b05dfc3dbfb350206b7890f29714b40db10d39dc70857d1c0719d4469c36d5fb954b24c710972c69afe58274781323d8d48c8c90782deaa98d4a1d52adc137f7b109e6a8fb6b40cc9887f711270866370cb2c11024d00079aff663f6ba33413dedfafaa8bd9cf004f5cfa88d7e107a5947055d353862207c2f96b5adbf101c5c62198521d301073608f8c3fe3ed5af8af8113b7a9935a692570c69f05b4e1e375a6451a3355d697514d3e59b525023db506c00fef3ec5fa9196ca202c45af016aab9f73a0d126195b70a0505d76b3c4c89484aac70e2035d },
      { u:= 4547,L:= 500,b0:= 1079,v:= 0x10b6577a69e9ca74aba167846610248f71a613e60d42771537af23e5dfc0d0d79f96f31ee6ee079d6a534a82c247430ac1e03ec200cde6135962107250a82200ca9e0514b06767a4cd0e66a3119599abb7874197b93743593d46a3aeb09b06ae52133dbb373f7a80620b6368ee1494f6c4d72cece7880214c1c299a02aa99da98043f7a1c803ec725d37875dc1bd23e922662458ed2db6cf17787e6c47285bdcc4ebaad42611758c136cb59468df03cb70214c8039c472b3c9efd7ecb1703bfe7f23ec6cccb930f4c6aee515240b6947ebc08f522c42eba478bb207c559a00d826a915279ede95bd2af43692fc9e54cda697fbedc41655bf63bc9ac152834fd9cb298dfa5cfdd869a841ff67b7e9ed6b97ef571f60928883903cfcd2b427ee8aaa23bcf7135114206ccaf910522aa5112b3d5d2f42287dbcf37bd864d3de8de82a4cca3bea87310820049536c7ca87b18a76f900bc2de87833072ac686b08ed9585b8adc06d6f208d17bf551f5f75a0d8839f58b9425900eaddf6e },
      { u:= 5048,L:= 555,b0:= 1198,v:= 0x2a151aa2f6672d7c9378ba9c06c1c1fb17c9ee92133619bdead0ae6f41fc0a936fd0d22304e06e35c258441124152bcfd599137416b5515038a31d6d4b677ba6f51cffbe9a531ab239f5c38d683f01f38191489d42fd36c9771f2900e08714443c8fd41e9d66df464ee2fb325d26103522c93ef2cf0a4e379dc3823307701ea9df201b759040221375e2a80f495cc5cdbe373a822dc9abb606b4e3cfb41812ba228d5ecd7215e8a7e6a02809195a87a60bb894edd6768f3aa7563bed621e5c5f9be9718a5c810e1339e26161a4d8ffc633170732ae7f136af57ba96b1b771f4796a7fa5dd51dee8d1ad98984051c056e0753c82c2394f48db70c346542c0469fcfaebbbaa206bbf03e00709bc01e62bf3bd53475797f05753a1ad82c828ba3eddcc7cd53084a51d35b09d195b8f0728dfc3ddf85a915b6287e9354a7801a6b576170a3efa77e66fe329c7925f5ba01bf52b70f4a90e95b259bc9613e30e0dbe232cb5e2174b7509fe0a2a9299d00e39d226d0ba9eb84dab2c3f456f51ff7241864cc69dad8244d8e4368af3d079ee9a3ad1a1419bf5f7386772c061f2f69304c1cc68f926 },
      { u:= 5604,L:= 618,b0:= 1330,v:= 0x2e94d77bf1450f5f6592ee5f850d8517aade86ae6a58c81d8e27e0ac60fc99e40358a763eab3fba3db0f90e7e00f1de9801435d8f63971496951a67c4f6a84d6407739e3690939a85a8adefe41170d3e285af684cdc7e112b6ba5fccd198d14d44d0c122ac35f4663f399d8bc957373a229c4c13c5637e48a38fa300d9ae7d4401eb61c026a4226fca0cd6831e570bd4ad237b54a4ac47d06f3332b2ef6d6a616d550d931d752b8f9479365602dd8c4198af927a7ebde3a37ab762a36c3143408a0b099e34ab16e7a1460790e0d14ff6cfcdc7da8f147f2bbc9e2134f6a8328d633a89d67b485e921c89fd2c4410a05c0f79ee2342af2598f91ad9530e045e93eb40257f4caf9eec62c8fd8e840a1f722cc5c6e69c051f482aa5ff75d23fc5cf4d29d2adbcfedfc6214704cbf89f8ddd3cc0e46898dfded9496c65a674cd56c1e24d0db6569ccf639eceaf86faf88ef5661ef4b433cb759acc585eb2c2c8b066b7487262ce8dec1f01b7a6e94aff03749623257b9d023083ce7a929cebe5fa6feafe3881df5507bb22fbc3a77c312cf1e9d1c2bd17b513fcb1a3e1f3d9fc3a0657130fa9039bdb58ba69bc340bf94056092f476a6688add5f838376546a3b31d4279d7cba58c78c5d8b64228768cf2cc8820af },
      { u:= 6223,L:= 687,b0:= 1477,v:= 0x942a2b73c78ce6dc0139a59311c7753ee77466bea70ae9d1e16618dbd8da2fecd8ca3c51cad6f53e8550ae0f9e07f9adbf4eaa9bc0c6bd75eaad3b4964e6614b804a8b8eb63d46d7b78dd20d08dadd5bf0d53ed9dbe60b738094ea8458b346bc55364e60dea3ead5c29e1aa5bed9e9906dc282e8ca17ccd8443645f6cbd884d92b90c38e2b3feee6624136d5986f7471aea7490029cee6651edf04a332ce307ecdf46174d3c4b4a0d6dd70b5253648e6e93e44ba4d063d014ad50d33f0a2b8da960a6e949be1dbb131fca3f21c79f8129cb612bdc151657424474703e2e3350f0d3e229594dbaa431cc3ee1d6528c93b8a95602feb3a47728c73ffe9d0a05f2f061a9c57b193183d77f0c160a884de5d61dcb278e03f6822b7cb7a6ee123cc65de6e7208100a251f6b49a456a781a0aaa3416eb420425c668a8494134bbfbb2865cd956e34abf25d7527129b844c0e0a9a6a063e69a26a7fb3a679178a61c69c0da98f761ea886d91658a19101ed3be02c24bbf3f5d883cfcb788251df14d314db7ad45c3e048225e2cd44428b18757cc8d2ad144b52bd173cd606e4e38ff61b929698f6ea678a82389f66075176c1bd67d6f942620881275fee0995570602fb5f907af62435f96c84713444d89109ed4b9cf5eafb8a4b30325a5135406fd204b60f36b2bb601a3716a1422b48cdbb276e78929a725c4aa1e97b17150ae2cef405eca80447ca },
      { u:= 6911,L:= 765,b0:= 1641,v:= 0x4aa20b2ba509c1ce1cca76d48fcffa06632b25eba38f830d33345a847b546ec3e11b6e7376c76e2974a1b4995619891ed89926103af211a9f8949edb8e613d42d23b749ab8d74416b14f5385c8d5fdc31f958ad879e150ce8b519a8072ddab7ff521b8baca97db6e7932dfa56ba059604c553c61567974b2af7a5674095089275c5a9b30f1f1d205c48e06351566b37756856ee249b6f3e072a60dfb5854a427051e62a299a36d1fb41bb71b95e1bc8923f1533dd547cd53de00b90378e25a5ea23fe7ad31a055e7a7992d9f140a53a328541f667323e0f406477caffbbab9ab04ae3198672b37f1b704f11cd5aa8fe8f9d289cfcb1e21fe871308194a25a5ae3787c699205714aae6e0b17c060edfb91b0ce9acb99d5cf927440bd61fb9909da5cf9714de93c6b2aa0d25d7198841ced2c0d22d1f4a393ef8968862edb12566289f0ac23849a5ad549a0275f59364448e036dbb96e0a59f9ada9e5c9a430712753f5368e07adfb9dcf472cdec9722d1dcc7d474b8e34f87715bfd3f6dfd59563d67e14981435862b4665059bc62d77c41f2d0196c61d10a3d780e8a44d53e8c43054688a27a86fa96de15b4eb368cfe2bc6ffe9fd787ce46ed302f2167fd31f65ba28cac9f431a74741fbe4fafa657716d77b5a39114fab69c22aa1cf1674e06ebea0ff670b395c1b29552fb7381616a47cc18321e9c18fc9b9d9029ac2ea8ca9a61fec95d10e3b367e023ba52cf97d87d7ad4b404efdcf77d8b1355fee6bb2218c5de7e9a8f7316268d3a63cd1d4f4017e9522d33551a95e553ed6259a4a87 },
      { u:= 7677,L:= 850,b0:= 1823,v:= 0x28dddd15548efd26f5a9bd8599de6f8837b86119fee437d402363bd84646c3f65a8838c3bda1b3a72f2eb816fa38a7bde9a5589f198f30d875b3a4e24393c2baebb62d05e53b113a7d6eee0e16590af0688bbee464fbf159a08daffd1972846d6163c6b186ad621a9449ffcb913aef16612a8c1789d6f47fdebf162b3091df8ef57cb1f778e9ee71ff6fd82d22cd62d324a7fe4bcaf305b2947feede8a76e2b4774e52809740d5f0194fad1f99f9f22de351a935687a0ed618712c9da469987777efb95a694a0939fa625aa0669ccc15ebb67bdf4502283f5a93b6398c20306c1b2863dfe2f363a7dd75b0d9c007a447c38181e6d3df07e058971b2cbdcd8664ce2a1fabdc773367ef90a2d7b56fa390ca5ffc722678affb577ac35a3e9481e6802e292f76918400ada63d756bdf8d4b40af44c2bb4846cde1610dc531cced8848fa705edf40bf51f8593ce73ef3578d7eb466b36ec6b6a3d382f94c1b40e92a2730c8ec8f3b6793cac11238f2244899b8d969474e4c3750a2503256642c7808f5cd55ecc1cbf48933587e1695f6b1b5e231be31819c05c5cdbcc56d16b67902f3fa1eed41017de298b3600311a38643d52f925662ce8594c5ab18890fa36c9a752fa009eb949f772b2fdfa050449b7acb16c13134be19887c063b076df0190cddaf620b65564ebeda0fb96e8177411cabfd737ae9855862f75a8dd17ed2ff20b94e0f3096bd3d830c314868cd7db8584e1b39939f74229adf3c1775a6fabc6282defe0012ee0ea982299cc3072e8517348b426895174cec60e5a6ca8f9226869dadbffd50c37d2c1bc8d5908a25699aa42503b31c832b2817083434fb65789edf3be32713f73f7904fce928bf08920e5c93d2ff98102d10205f8ac2ed9f9cae },
      { u:= 8528,L:= 943,b0:= 2025,v:= 0x3a23771a48732bf52ad174d7dd707e676e459e7223841a5c699fa34f931b9f056f39f2d5d2613f8fb5891e85a985a29b6f171289c6fc61c506483c90aee864a9fa4f9480115c1026855c151c21b861e6af975a010b4b1db3029c68ad3ad4d5e854a074cf36ccbc6e6dcc82160a12b4a89147acc66ed9c9e041fe0551be419d8b960df6892de938e4be258de0a0a925ce7620417cd0b321729106da9c2315c24fa3b5ac83c25a0ae52eef1d2fac9e9f3014bb9deea98a2475d970ab3c137369caea1cc99bfd7f55d1816a8f1e7b447ff96c6a9bcbee31a1b7c7ae76f968354925262fb2991aae5de2055a68d41efb3e1a687adea3b4ae0688883dd59a0cedfabed0dff98b750312f6f52197f12d62713f547401cad32ec351710d0f380c7fc11610deb10bdd31d6b0679cfe502ab906ec61260227b1a59d04bc262d1315953c3eec29b442a18ca4d8a2f078e2930a060ca6ee2ef07818f4fc824a4a2a5788a56aefa59c86d9e805ed059b351c7b260cb7d8fe44b6eb2296b3779b4b962a19ac49dbd6fab33b2f8351ebd3d895723d6863e1de1bd0e86a48aa6170b1358a7f49d8377f69a0a84d00f62f1fd5ec4ce98a1dc82b3eda63123ebfb07aecb464f10d3e8f9582ef7aa225f937bda8520a8cbe83683db9c2bb0a12930c08a6839233dd7fdfbe947cb45b05bda90e628a89266d0c71981c3a8aa763f1fbd3805867fe22fe2660a40dc743fab807967bd83a56682d967b07f26dd21c8e1aaf023c4cacd4e691fc073e6df0c3a7bca6a0c4f048d0640e574338a3ca65f46f254c86af5095d1271188e8e221dd80b0e72a82cff79623390cff758f545f07c5459666ed11dfbc11de5122fa46a84427e0ac8a8d3a938ca005f98c2c32c2f0728eb79334f4a8e320490b5034b5b56efa186da05cbc1be57ea76b4609a1124fb4396775b0f14cda834cb506eb492a1369556edbe98e4ac1e6a43613b218b1756cea7ef7da5114150fa4752cb0adc },
      { u:= 9472,L:= 1049,b0:= 2249,v:= 0x2d18f27a20864051c0637e9afb3286ddd962c6b68e430c6eed8965125c24f7debfe9dc87771326dd037b2dcb7bff8990ce7bd31bcb03280c7b8f3d20f5f06432034b689df146be7a6800e6773aa8f744c030873cc62a7a67a63b1aa083c488b3258aa0fa82c16f98f3ba6e41c7564b0cea261dc1ad7b8135b7e4f6a5f6321ba4a4ca2f4c96515862617853547e27ae10346d85d1bf314008ec1945711e9d39f6fecc91004c580f7d245d545da739ca6e492b2327ed9f04b480efe233b70d206ec6cd0fe5df3064b3094e3d08c965a4192e15823efdea3087e8dbcb560d1ac6c261b65449f0387f1875ae9ab57b0c626cca74e88d311bf5e730bef14c907f2ab1cb8850aa0cb349fd32fb519f25982a11e0a675dd555ae2ec7704715038d56f5462542aa32c68c970576d93ae8bd7af8874012695cb12737869071e6365767cf27da6050c129eec80edbd22115cd217a64cc54657d303c9ed1cf0da57c358eb8f2907315a1e6018833b285307bbfdeb277cf4e2caf57037ca200db2a21c39d50d1d27e55be6aa956a0d4ff13699f9a118f8145b732a8253b6ce4fde8b89e97263b6b4d5e2d193bfa2a574ba6fb8a6fe0f34e88093f3c23b93e514d2525202ff03b1e01ef5ecf6461815b5d0cc97a255172f477c2e80b3289faff2ab69b6b1d03b7ed3ef9529e4ad387e54b26856fe9adb5975e64a6c6936560de205246e8eeeb7c25d361893f60e9a0e833e482b242f1ef96c96c3b6a8a92b7942e3f322ff761c42db2d2fb57d8726a0f73888b10cd55311fd073f07681e3a76d42a58e8bf870d63410dc905bcd9ac04587189be90a05712db1b01001c0f0fbda52c7d8c2e69564d6302c39d75236c3474d54195d2d66f086687d35f5d23080bb8d069fdd4ac38a5014b64bba93f05d2457c578ef863a16126d47969a802123ddb42ac382b681f636ba01281cfcfe486ca9a6ace554d3393da61f4631fdf5efd2838b559a23216b888406924be7d6cba68e0a07c73b39ff8ba135f48daad6dc91d649b17078fe889f603ae18ac42c827ea38bc96489b74291e7e321618d4d1758ea83c67c744ac1e19e45af871cdf133b8da33fdc9c5b222f28e62174 },
      { u:= 10522,L:= 1165,b0:= 2498,v:= 0xb498b211bf03c9368589061e9faed2019d3325c3e3621be4e22e0d054de8bb8a756b34209266132c10970ec382d2dd38c9cc11402b79d2f531a72e17a60d4d55c157745f3b7c3b5526903fc606d4ed53ddd0da0d3e110471d675b620d993f22976893dd866b2b10bc85101447e59202953dba287f03a9122d5ef7f20b3b3a65db5a64ec9b290784a242f9a0b5ab910c69959f40d3a3836b1651e59e5470d05f08e8392ff4d8926a06ef22165475f8e8b0164b946622277359bdde86b6d66ee985403258990c1d8fbacf2b54e221bed1d8b46dea14c6e503a313f0e38f196647e6abff4387c3cb972e302f9a5db393c2574c827f29e57bfcfb92832ed590bc251c87949071524941605de7a08573896dba44abcf7c9706379775fd3b34a21bf190c69809990233e76d98bdacf92b705f3cc03fb84dffd8b374e54e0b807d41c05abac65a6bec2a91afbdb0f064308d4ace77b4ae9050e46e77b8854a2a86938439d53ea6c223b70ef2b9928dde7b8d0704740ee2df122fa237fbe6cf091af4c20375f6f132eb209b3b5e83869a464814d6d771152838884da9439262f7c3735e99b3a6f442123abf9050fb4d96f8fc28a9a7c9e78afda03640222dc5f580e81449bd73860573612f8c66f8cb8e694280579e527d399c1fbc0b696a37eb7cf5b5d963ad9aad4c4e5f1823c7d5548fefcf4d2a2605020082a2075a7057aa5805e1c482a84d2d63b3f1cb59de83e481eb04216699bcf9a00b7cef5e43a71e92874477cd98312a862de9976eda22182210c63b28b3da64bea1130d5c48cd5f440c46db591779bd496cf899766a3d66ad6d6b9e6a3e6edf9254110fae62f4b7322791f5fc06273acdfa0e362d6e8c31d1891e1c456413137f6acad748ab9c983df621d22176e277d9d71ef4c62f66dab641eafee4755c6acea34589d72e93f2d96a7e1f44bc3ccdea05abab469f4021ae7c512f692cb67a6bccc93089489d93aadaa9892b11ecd00abf3086854992981afdd0b699be636bea0c1936a767ec6127d583ecb64af53a32f06869683f913f4a38d40718fd5159d5afc27014cdfe758b5f45eafaf7201fd7f7ff42429090a7baf0555b199f96dea05fdb98258afa6aba5c57da77193251111009327c40a1a642fccbb4ad7fca0c48965e5660af05e66f322a9eb038a6ff9316096b98bfec4385c821d359e85b1dcb20f452a87a00f6c6a0c32ef50b96fcd27e95b05444dfc1 },
      { u:= 11688,L:= 1294,b0:= 2775,v:= 0x51a92087b5b5c2fbafb7ce20b707d30e9d050714cefbf9c34a2111509f7725ee43a90bd7bdbff5ba70a579921621cb74182e4f348a8497d063b599e11ecce95b5d9b6dfa6b6fbe8c0832995a0ba7c318785169c911edef879544036b0a6011317308704bd474abb1e680557c5e842d2c79217b0409ab6a40a2bd8723585b65fefd072235afe43ee91b57bf5877dc3002c718721d6f7367387422c5a20d7b733475c7a50dba89fe3184e3d5bd69b44d935eba5ad053d24d9ff791142bdda82add14be8c739ea78006d1d95ee0be44c7e98ceaf4bd86d56842f3abd47a1de061a56297fed129a5c3526b3eb2bda8ee84d1d51b258aba1fc8f0960be71e0f9959fbb00869e3383adae2cbceb7e6f20894a35bf92428ec5021e524719df49762983fd07d9fbc7a7ea747986d79b25fe4bfbe50a2ab975b3e8eff2e5b5e80e7c6c8020f4671b54a88ca4dae1cd2c8e2ffbf4c8ce5820f4c866387f41bbedec98189019342533eac51d42fea23ae134f2377db9733006ec81d8e634e584e9417bd7f40f4901c7db7ca897fca3985dcf17bfca9d7cc406c08640007e2bf0fd52d3fbb23397ae930454e7c8725c028a757955efc1622214661344cd5272d66d492f0cdf58a39edca3251fcb7fd66a4b8243b88eb960b00c54c74a82fb10f8cdedbd4d5fb9bcd687eda734066ac1d996f86ee4d8834468618c0390e2e2ac99bad717abf62dc32f16bbc79286ff7b561bc40bd0198b83ef5758367b313c28c07d4d4302f395701023f5b98d57334504059af8a80cced8f6728aa34d520951a6657b1dc365abb8642c6b9082b3a9d7d46a278ad1bc8aba821fbcaf704d84b206ca17e462b89c541b890069512331292bd05c8fb83831d0067ef560496674a2a3fa706f88fd2e30aea08a5e84866b85356fb2d9b8ec47504bd8882c157d69b7678a2d7b5426414deb4fc11fb605a0bee509b2d67828240c3aa4b220e78afac419fd430feb1cfcb63dfe0364c3f5a82b3055952893310ac9d63b730081cdd8e81d09da96fb06a38924d3786cb62f6dabee21e5420bda62d9ddc53f07113448c12de7cb7e1d8307f4b0a4ee845ba4b424d9e0a077dcd9764f8abeaf1db754b2ff6e84803408733628773534d1c3603e5ca2435d36357502eef784b436c08f56d9da2695bb9ab5cdebf927c28474f41afe3ccf2d574707f245484634a8f9a15a9dd5a34b35b6884d39be91b792bf11763e648d86ae7f61b78f94d6d40bf313d1653b6427dff2848198b407a6923ed8cbf795bd3f69358ab2abfa0d1998a1965b09364c9a4600400e621457fb364a6256a36cd97700aa21191ddae768d839d3681ca9e16a7acd8435807ef5f52306ae4b8951f8ea05 },
      { u:= 12983,L:= 1439,b0:= 3083,v:= 0x4e9e1df414b3fbf9d51da71226e32c43a8aaa0ac7f22fbd462a80f577ce82ed6ee3fe43d5152146aea96a827d672f56729cfd3b752624a0a877670a11fbda8d82e0bcab1204dbc16c9ec8917c3b7657e6a978edfa4c9ec7f1339bc3f08d8d318dedacc207f008cdfa208b913b05dba591066d838c0cd5e09946df0503729b639d7b566e5e9cfc631123cb05302f5e06b5ce9d41f8df66c4d42c958835abea619785b8d0e2bd84ec3324ede56adc1616d5e1167d4e025f4be97b35958b7488e9c46766e6c14de235e78873458cf9436551a9d7690dfb53cbb0575f6ee78ab5bf261fb83e911ba40478ff394f1fba55be87fcbf8e1a3b2d3e3b3f7e527126ee3d69e4d754c9159ac8dd213f1c668863e533cc7c5895582f6709716f2439a10eda8f4b5901b4eb533dc5d9e7d967fc28d557a59e3d4ad18384207d517099a094f189b3b69588a9c1838eacda49d54b773963fc0f8138c4c72f3806a7f9ffe2f2d1eba34c957193625505b43edbe7db5529bdc5f7f4944ca2f36735e7003ea1e6a6bce8304fd218a1ae67d50bf985506ab706066f2859b1776cead586adbdb4bbcd53d754b163adf24c174fbbe229bc2c34c9b669c45258121ef19687223313a970dff77a849dd3d68895a65b81b754ebbc41250acd53d6c3ec127a9354ef7787a58598952ebf9b4248b89ca25b6e1e65ad8474ea2f202bf6ceb97ead4edd07a0f88c46c0a5a228368448a85152b1e6a8fcec7895f48bb42094afdaff404540c43839c95425cebe73719ec5cd8391c35e93568020c6d649af28b6a24b6beb4444ca1a242cbc8539d737acc73454e023d4e20d48d809be3bc1735ecb6b32cddd65980d7f88b611b44d08061a510b414fb63960414d0ec655508f2e74ee5127a8ae568da54793e890b5595439522e82fae8e2356370d12207ec14919b03490a4f320b7328390be90fd1ed76a7f6c1656fa5eb5188d8b56200b536429bd12f01e1659558834d05a97a992c73f6e5b807accd9863373b8de9e2ab89aee8475f204b0e699ed7f284638554ec7ae8952d26a55139fed0dc62b91ea5842c383ed0a9b7fd41edb7d970a1c9edc4c3f7fd782dfbbfd6ebb96e1076fd75eb6f0e3aaa228ca2555438ca94c097b2346114f28940b8e5387c60306ad28742c71255c98bb7cb38f4a8e542782bbc4fee478e4cbbc903095d0d273fd2b087908e5421b807cab87c4c9814b2a97154827c5a275adc1823377598605e9f220267be4280039797b29cd3f364c8e7ad0381b7a4e2a6ec172c2a1853b4a52e98255eafdcf9d20c820f6f86b5135f2b6bdcd4d9b01ad34e5673c724506e3bc1ed67073ed09f376d133ecb111bf1aeafd08f9c63925d3d6c23ac33c5131ad1aa935986852118ca3c5c8a87999773ebfe6859172c3204871665ae6ecfd1598a3536872c7ab1a8c68e9461b63124a3a2edb05bbddc8ea37fcff46e167f7d8c4f1fee5f162f6085e6a6cb4ec7df85fc44df0ecdd1b6a62f468503dc20fe401a4ec0ef8404b5cf9d4 },
      { u:= 14423,L:= 936,b0:= 3425,v:= 0x8e833dbe1b7aac717dbd2e78490edf1e6751823107de32fdb96d5c1e859d7bc52fb533acd7237e966172f752d6c5e88f22d0d9dfa2433182559ec5ddd204d158b78aaf41a6896aa02c4193a31b4cd6036f4933345b2c19cdc9b5f53193274b4ba15f17acfb25a4a51dd15309772f163e0c0655848d2f996117ba2461a14148e42418245091d6f814f6f55255c6a05e8d7318b2f6165790d6350a1c275e1801d0cd2b231d08759ae29118a8a8cb5c15e582c024e943c31093a52ba5327cc3c32818809b343f83cc7c370096fb2ff6c406ee0dbfbb83c094ffc5e5c76572c5f3e760987bf3de34f1e467e0fb3395b14a3c70f6198b58b4c8e239e0293f8be27ccebd66f917eb8e0b0b8749b2319d1e8ed5c0b3c335899302ad4255163887a5c74abe972d551cbffaab5d58467c0ff7e489d8633dc60b7f68d92028f42c506a5f56c9715520a1aa2883ea671d2edf25f5a8d2bb4cd8924c5106e9a666e610d70e88abda889a1cb94f80d4c1078cf5cc2c3f4222a5b44352416b1c93459cb18bd87e1378ac0138d82726d1fa3ef69256bb2a526a37e7f76f9cfe98aa557208b44ad50f9ad7fc2fc08bf39b1e56a2166252d0cd7b4c7930086a3493e9bd511511c205de949549765760636d4fdcc73a6dbd5d22eff93d51eed2641dca5d606bb44ecdfc8a288486ba81b25bc871af32dc4f20fba16baeaf84d4ecb0c4b7baa58c48ea631cda341d51351b0f7f1030eb205c95e08e36f27fca1c196d61b5baed08445c7dff5bd699f7eacb77087509b942d96897255715ff8b6112966a90654a2415ed8787f630d55114546b4c1789cce16282837cc3488d03963c8cea970ab04719fe41948ddf5de56e0a2ccf8f0743c061b7fcfd50c026eca370ea188da75a2c0b155cee854065b48342b14074dfa80b2c489cdc316995ff14c506fd2476ae788a543a15ad9bb16e5b21cc365c37713d01b513a1c6318b5ff30920cdda923e3b8bebc92e1c11160eae904f8d3ced06cd81cf5f921d6e3939d3591711ef2b937277816e1e6ca5e540f6e8432dd304eecae0a0d901735b177755429d864dace45be5403e0a7f78e3603417cc6b825fc2bd8f15d831d5859c8200189cb6efe51baf73d0846f64eb028dbe54757dc13d9338de4a8cb47f24dd045ef6ccf893787f2a2f46f56fb74f3d0198950459eef968d3bb47aec7b2476139338f923a5ea046c7f4f9c8a1f11037db27dbad5f2f3cfd2dff35795751f0576cc3f7403d8828b50eb0b57005e533ea3027b31bedb7476530d7fab6c11da67199d5259d7d48fef901d876cd8eaf05cfe8a5756082b380eb4c241727fd6a1f6925912438ff376036e67ac46a7909f103d7e0c641dec5592f60909713e95984cfa9af6b14b0c70591a5d7908238a70cb789ba7531e6b809c6850091ae8545fd5d4ec00d383149b7731e329d369bb3889a7df139714b088995a37e2691d73a9c515ea1292778d03b83724200393439970d0b3d9bdd217c4c7626e8b0c74fc3a35b3bcabcaa780ab2d9e1548cd11c1269429ad8a32a8caefe03039d5b1dcdce470d73807a3725035940a2e6b045779416476f0fccc3da37438c11e7931fcc9e1a6e673c1d5220cfab87b1b392b33c49622a825cb83834a1f859a7810cc8c0b870cb5e3409321b11b234d31d5a74d687d877e1616142c6891ca6142115e348 },
    ]
  let u213:List Math.B699.N4.d0:= u139
  let u214:List Math.B699.N4.d0:= u167 ++ u213
  let u215:List Math.B699.N4.d0:= u165 ++ u214
  let u216:List Math.B699.N4.d0:= u163 ++ u215
  let u217:List Math.B699.N4.d0:=
    u161 ++ u216
  let u169:List Math.B699.N4.d0:=
    [
      { u:= 32,L:= 0,b0:= 14,v:= 0xc9ab3dc6 },
      { u:= 33,L:= 2,b0:= 15,v:= 0x579260643 },
      { u:= 36,L:= 0,b0:= 16,v:= 0xf33fbae78 },
      { u:= 37,L:= 1,b0:= 16,v:= 0x10e8fa0a13 },
      { u:= 39,L:= 1,b0:= 17,v:= 0x8817afa74d },
      { u:= 41,L:= 2,b0:= 18,v:= 0x286b705f1c5 },
      { u:= 44,L:= 3,b0:= 20,v:= 0x7cdaea665f3 },
      { u:= 48,L:= 2,b0:= 21,v:= 0x15f530572ad4b },
      { u:= 51,L:= 3,b0:= 23,v:= 0x1b5817b9c4046e },
      { u:= 55,L:= 4,b0:= 25,v:= 0x307374348921f70 },
      { u:= 60,L:= 4,b0:= 27,v:= 0x11cc6d9132b021e3 },
      { u:= 65,L:= 4,b0:= 29,v:= 0xf45012e0c5efceb3 },
      { u:= 70,L:= 4,b0:= 31,v:= 0x711c94f67c70317acf },
      { u:= 75,L:= 5,b0:= 34,v:= 0x7802ccad4a9de53588af },
      { u:= 81,L:= 5,b0:= 36,v:= 0x6de42e2537dcdc39925e5 },
      { u:= 87,L:= 7,b0:= 39,v:= 0x55d63ec98f303d03ab2a495 },
    ]
  let u171:List Math.B699.N4.d0:=
    [
      { u:= 95,L:= 8,b0:= 43,v:= 0xd39f3c271c4723f415ff0e11e },
      { u:= 104,L:= 8,b0:= 47,v:= 0x1f3125320b2bc8b8ff30cf8c211c },
      { u:= 113,L:= 10,b0:= 51,v:= 0x1a3709456f15f9251c3d8ec9c4fedf },
      { u:= 124,L:= 10,b0:= 56,v:= 0x3ad76b0d6b309b1d54d99bfb6e3cbbbea },
      { u:= 135,L:= 11,b0:= 61,v:= 0x2c3a3c6994d618744f318d7997e2b43d5cf4 },
      { u:= 147,L:= 13,b0:= 66,v:= 0x1b681b5b20669067e1232ccda89423bf9f0ed65 },
      { u:= 161,L:= 15,b0:= 73,v:= 0xfa57fb38c25d0d6194bf6dffdc0b979af6b67b30da },
      { u:= 177,L:= 16,b0:= 80,v:= 0x79ff218504d67ceab1a3d0c55eecdbc1bdbad6b64101e1 },
      { u:= 194,L:= 19,b0:= 88,v:= 0xf65d9142037da0611d4f97c43107dbb91c8ec2c7dddf712fabb },
      { u:= 214,L:= 21,b0:= 97,v:= 0x71797e1e375f18464fabb3383d9669727750b1e5def14c982d416f58 },
      { u:= 236,L:= 24,b0:= 107,v:= 0x11e0be0f4ae947afaa3cc2c4b63c9bd16f19c9782102ebbb7978e7b543a5bec },
      { u:= 261,L:= 26,b0:= 118,v:= 0x255d9d92c177a5bc46358d78adacd89eacd34156c80f9cf28aedf9cb4dfc76742dda1 },
      { u:= 288,L:= 30,b0:= 131,v:= 0x21802c1476279c5d4b75dec5c19fc140d157a91ac6aec2c354fed488b0b578c0a6d8e7694fb0 },
      { u:= 319,L:= 32,b0:= 145,v:= 0x12433545254d8777ea93c6f60bbb089babc575f91ae3f3e808e197ecab626d8c3a6acd1776299bc63c896 },
      { u:= 352,L:= 36,b0:= 160,v:= 0x336f8d09f3bdd59c36bc40800ae15929c8f4d0244c8308ab03635ee46684297d290eae56c81a7083aa5a8819010cd },
      { u:= 389,L:= 41,b0:= 177,v:= 0x6dc127e488ae63f3b6339e6544950b1fc26d1b618976addedfb027062099d73ef670bb1d5c4a4c53f1d0808fe8b05902bca5277 },
    ]
  let u173:List Math.B699.N4.d0:=
    [
      { u:= 431,L:= 46,b0:= 196,v:= 0x1fe9e755363ec2d3479f0fe17702ac322b66ca59be306b902ff7e711885a0ead0fb0cbebd3a4358192156c3fb7bc2404cab0918d3d62c1dcda },
      { u:= 478,L:= 50,b0:= 217,v:= 0x191319dd837630aa9d0034d99d328abfdad3d67b887ae8621a4798871b8eb7bce9e129bff54ca0ecf25879e000c7cc82568f5fbb9e965715edf9f9053fad22 },
      { u:= 529,L:= 56,b0:= 240,v:= 0xd9c1dc4ea120e14d2adf3ab58e6716080180042307304ca944d347abc79bfdd41262b4ed266b50d3b908250f09ea23a669175022d60889380d876312688428f7253c4247177 },
      { u:= 586,L:= 62,b0:= 266,v:= 0x2d633db3fe48d5111368cc96bbee8c2bae07402488b0db0305a922b420a07c2d586de37b35fd18c85fe260a1e1b7ea58dcac3fbf9541a5821857063a29c7f06446ae4471b883e9269e96fd5141c },
      { u:= 649,L:= 69,b0:= 295,v:= 0x1df48a32e068fafd53955a5938cac5e5633aba00d39096e3a9ed2d909b0433db58857473c1935cd92d46be118ea571cb3bc39795824db994e18e7fbcd9fa8ffdc6ee32731ce46c53cc336dd20a8218366414299bb5fe },
      { u:= 719,L:= 77,b0:= 327,v:= 0x28b59a9d5ca33b72bf01e081597efce5f6a42f411eb793df4809e62ade651122b2d50361e079d830eb73ea0bab771fce5f786579d5ecc6ffde1bd6460a3814f778da7d1cb00e4d443a9f1936c594e1aeaa1128a9df5d3b1714a75bc4cd7df9 },
      { u:= 797,L:= 85,b0:= 362,v:= 0x16e02d80ba64d41fdea28f1017ac4a4bde7f5d342c72e4f09d391aeb278df6df92e5f0f8fc3c66ac12c8d269f4dbb29efa3ad912a534aa9d3294fbb529f9d1dd8d1a325090776d14690cada04aad5598b45d423863a679a91dcb9ba77ab945e0b676a840ff2d98ca6c9 },
      { u:= 883,L:= 95,b0:= 401,v:= 0x1052ecb6d7e023cd793a5020cd6de215e2ff4a082d814a8d3c0278baed5e6b23104b0299101ba8ce559a2f105fe09c6d08c5626c2e3b8ad5883f14abddee3f76aa7c448eceb895fb6a7a47dc2e11e092b3cb89d7c7aaf4b2215df2cfb120bdc264bd324fc05e302a4d836972842eb6a42e609e194 },
      { u:= 979,L:= 106,b0:= 445,v:= 0xbe60e2b232b2a7b6db532e14dfc04e923accbf00255653bc8c044f960b51e2918a2095929c4ed6793d4f223462e2169e1b9409a68237a6b453b6c5146f98dea0a55e21e8ac6a145f79a9b2661ac25b73983bf7cc47c28f6d6b3a1867b5379a3ebd9f35fd871fa70f754f884fcd93890ab89a4d6b496f981c32ef00545eebb15065 },
      { u:= 1086,L:= 118,b0:= 494,v:= 0x3c60dbf401b85d9cc0c3034cf6a2712b40a67496fad29e0ffdaa22b6fbeeeb0f00d489dfe57936b585f120d7f90b58c2a425fa27cafc211fe09eae6deefe2bb5baf0f4d2403f02cd04e94bdf950338e3b1662552d4e2132ca937c9508e3e74b2062910140d7da23745ebe90ff611ac5f6e97548a7517254f7955189c9c0578e873a7132a24748b059f31a812e2bbcb2 },
      { u:= 1205,L:= 131,b0:= 548,v:= 0xb70ec10704998d15a1222a9489ef9decc2d854dfe038aa233dc1a4e54694266f146f42ee9cd7b7c1b5eabfed808abf62c5451e391a1f6289e5aa5e24b096a18e7bc84338427ed85cdd5301b5b60db4e31ef4a5777f26df64db0abd50c3ec84b9b223a361a1b10fbdf952ea6b9067cbed3e3869ab89ea14f1868abca052bb2a01e1ee0fc5c1f6abe30b630335bece0a107836984de25d482c93b845c26ccc01 },
      { u:= 1337,L:= 146,b0:= 608,v:= 0xaeea76b1d9a2d2407ba5a06797fe6b1e4670d80e8473d618b738bf404797a1bf635c1cb646e32a7f755cc74a512732d636e904fb7d32f08099e291997fd76bcc85fedba88b3f0de23af66c18225c220a894bf0aad7bf83801d8689c0dc1833dbc2ab54b3d6f9305a41cf67d77bcc2d0e58e934d14fa6aacafbd14fb3a62b562ffc3eaf37de531585d9be759f3d7fd1eca8b58c2d0eeba5ae76a391c548a39dfd06f9aa932762f7a6c6a8f9fd48e48d2a },
      { u:= 1484,L:= 163,b0:= 675,v:= 0x2b5d75c8fb05f099ef49e470a909062d569df9d568fdce7b7303bd906972d4d2d55d97e5ce35e377eb8e71e4282b419b3f8e53fc8465c1d593eaa8f6343b76ce8a194b98bd9a54f62b4757735c695f1f1e11afb2b515a9f6487f990ed215c2d274d2e1795099d2e469920a737bcbfa874f8d3c237dd39f8b557b07125d9acf87e3370977f1c84af9f0636e2aeda853f2cbb1bab74c6922b676fd83327b511e4a2f6efb7410ba73663d10505b8c6c27427f1ebfa97864e355216e503a732775f590235ce7 },
      { u:= 1648,L:= 180,b0:= 749,v:= 0x3277d36161ee0acf604b5c8990ffa9873b06f54fb9ec3fec78288abb563e644380a0f4d938be1821be42c56bce7e09283d3d9b8918f8e34ebd473f28b6ffe530542c06b9c1c2e8c862842bef8ed1b22f8cad5e1de031efd722b598112496c9537adf680e22b47c707befadfe42d9804e93245dba005f6c7eddd098c53a7ff5a0046d71aadcfac8413cb6ba877c21c378036f291e3fa61099e6b5b4f37214c298b3ef89ae44a912a8890de237fd7f89d790cf3225d9722585453589cd34cb5d24a5690b2218caff02c9faed5549e838d9ffd232836964df5d67c },
      { u:= 1829,L:= 200,b0:= 832,v:= 0x411e2dff79a359261f7903755d57690a76c09d8ca17f3e5c202e883a0c5b3e0063d84c4f887baa352798aa16e8a173edecd43192b65fff68b99cac67d7743cbd6bba5f8e965553994993c08a3be5c55d936225f9ef499524f43ece793286c38f5668bffad0706eb5ef9e9336410062486e12fa66d6c91d4ab18ee944997f71cd8680b468a0efb81fb9ec7ef85acc43ba886aa3a46e7da0a2aa7a049667a642ff857178a8cc1c74c56a858b7d3ea2f457bf645e581530dbee71fdd30ead741a7013906ccabdbd8e70c0eb86c5ca433c5c243c3ab4ebcbfafb96b55096eabaddd1048a5f8b76156ee664372b3ee31dff802e9 },
      { u:= 2030,L:= 222,b0:= 923,v:= 0x625580f56aea440a461ed1ca4ccc08f06ee43d7c56b4d3bb70de896782e4c74bd9295b8fd19c0a47515aea3a69f7ea23f1b9b91fdef5beccdc2a7aafb012d826753fd5d71a0436570c05e5add2fe9b9a7501cd2eebec8e2ebd2056cbe8eb4ca70416546bb64f226e6b2af5492728c1e6e6e9ce88c8a333007a8ef80ce558c4bb6c08357f5a2e1f85e1a286433df586be14c859ee98122a1d501708396758ccd1e6575d132013f03a465d8f11fd14eec46f231a9ba26ad0881a2e7479eefd607b41ac3628c5652d2bba693ae2849ef8edadc7ff093e258764601ef5db5ad3af696b2a946563cac221c45606c41a7bce6d2a069188b56f04fa30b23577dfdb0a14d751c34ded94a7faa53fa8dc },
    ]
  let u175:List Math.B699.N4.d0:=
    [
      { u:= 2253,L:= 248,b0:= 1025,v:= 0x61766038ec878f86a2e93ebda4117df5f65498f8f7db1f2dab842ed168d2a9190cd91e5c87d43be357cf2f2b6e363284f2feea3eaee449ecc455b4d814b0db96c6514dd4299d8f56abe3a30ae393cfc583a21561eac4807166f7a5afd93504e0b779b97ca874635574eaa669752e5b15918e30948cc8400b23ccbbd3e8f4b89d9a3f6c7a291a861a5c2fdb620f6819e484cf5d2991198302d4720d16e6c1d2a2a5dc10e7e133f6054d45e6b4e9a18d33232f1002b47c959244204c86cbcb9dbdbbcefbd51ad608c06dea9fa8a90c950aa07935256a3c8cdb5ed7cf6575d9a08da515bb4b6235ca0ea6750200ea2111d378c8b185bef4912dbb6b5a74dda74cba1f87d99edffc5478e5e053976c7d207f684934945f65f2903a0a017eaeb387310f29c232ec64818d721 },
      { u:= 2502,L:= 82,b0:= 1138,v:= 0xc5ada9062bf46f700930a6741d186e72d560b36c894b2bf57b0871fa141631702e3d742f718813a90848fb053cdfe68f1fc9f62acddc77067dc0183edad98b3c451d24d839863c65d6bdb16a9fb09b094549b0689d0d06fdec8d01e26deb0d470e0a3d24ed24e6442b87c32a60b6433ea81ceec42e562060416417b08866583d663a4a3bd51e782a4ad208625d426473255b8dd76817ead78b867bd7ca9a34d907dac113f37bee42345a75b9a243563278d891dd059ea35f8c9ce51524b52038afecc9d9b1f9a3b36f75f2aa44b7921cabc86b613536442a03c57ace9dc9be361f600707b0bd1a16aad2910566ad5f0efb589ebdc38fd550a3d724d19a4cf26e67716b12c9526f5e1742d66156bcefa3da64e937bccb82e4e1d058bc2014aa161608ef3b24e21fcdf9ad4db96c8744dc40d0d315490c518530acb9317c2a3395e28ce033cb4770a3080c },
    ]
  let u141:List Math.B699.N4.d0:=
    [
      { u:= 2585,L:= 284,b0:= 1176,v:= 0x30818f595567fe2284e7c0a3b625c492d4d049e5ec3d446fde17331aba26f716c1ac91be9804beac49d83ef80895533a148e4610982afc8eb7f835bf275671ba8caeaccb687448fd862734fbb832e3ff7705496b1272927faad3d38b6f4e5eac7da49119f23925e78407db901c2eddf034f40eead19bc50b47ba19bd03e37dea619115fc8ff371b17c4696ee252b8ab86fe59b79712afadca1d9db825d0f8cc981b192b8624c455ca3eb350c87cfe757ab5121cd65745797e7af7c393b875fc58787e6e82316344a968ba2208c94322cc917fd222227e11d9e84e7e22c2ad2b70c0a4c43f32162821798877ac8f6e9d5e18c1ebd2ff21fe9d0a3d405f2cce18f124a8033220f420acefd886f23bcaf2dd55ae07bcce64b1c8917bfaf120adfda27a1cb4e4547fdc7853a492b3a14916eb0ecb85100c90075768fc0c616863ab6b3db3eb07d899d08ca0b19df4c41b36a60ba37586bb },
      { u:= 2870,L:= 317,b0:= 1306,v:= 0x20c940f45ac5e6ba29af86cd64255db6ea048fb223bcb8dd8d1fee65adf0707228df68bd7a0a279033e12c8ec781ca5d741d93322f5938b45b30117d8edd48636ca9e18e64477967a569746a1ac1dcb66f3029a694df314e1f78b9509ee37f98f91eb50855687a62976609309f860ca0e894b9b55aae4033f27d155efffe5ef203d8a974abbad88a2cb4d5ab15b173563a803424795c54a96dee6e1367de668fac43b764b3324dfda739610abb96e41cd50daa4bb6d9cc0f85062793ae17176818bde6dd126b9a81f2648aa9b0220abebd8e706284112783611e0de3cbb3efef00fca326f2ba29feb043744e10e991f3c2b158cef848dc220062304f74826d46b24b8aba22c05f09b6dd1ce33e60e199ba0827b5c09221b2e33b24636725a489c1f683d888e8a66f4ee420b439ba76f531de4b78337915ee3c7b1daf51b85ce1ea4bf2170e0ca326a9b852461916df99b8b1df49f2e76620ef43192d820ee41aababbb598ac534def36abea18e8566950932d30eeccba5e0e31d4e },
      { u:= 3188,L:= 350,b0:= 1450,v:= 0x589f62260e373c52f4746879186f1f40875a5985fc123cd935ae44ede656952dc02a3148e7b2293d95a91ef662ac4c09598a152db0d39a96f3f5b71ece1b25433f3a7f77f21255d78000de31464cc3f8f7f83c2beb079e498be6fe060c250575c39443c279f375f48419d90efc1c189d75d038664975648cf704eda12e76d98c3e605688cf89dc22a808871d5eaaa9b761cbf3fd627e14e839aa0222c52a4a48563ef67f5e72446c0c0796952ff2ba7619277d8499565a6b26f47353cfea44ca45d7f32e115b08646a84d7d66d4b63f559f213aa6e70daf8210cc905eca11ddf454fc1add111ef297d97ef3e52cac7e9ef6dc07705d15647a5e3375159a9139c57b0c51231a03cd2dc2cb43c95ebf6db4f3329191a9e3bae0bf0df993077cef7376da8031e1f7e62397fac914cd0feed510a20f9b2fa6b44b45543ad622c9d4233949ffe799f3e58e92d950d2c220af45721f7b03560695d7036cde8cf9136090270eaf980c1ef477dde671d64166d325bff74bb6b5bfa307a7edb147320c8590f8a8c333a77c52dd9d5d961993ad015d84a28414bec3cab89deff318b42f35745c66d8e1d },
      { u:= 3539,L:= 391,b0:= 1610,v:= 0x40b4724a418d5741ded2db383bcf12acb44bb9c22d944beb2774439c78e848fba487b6b64c8f4a9b25b71356155917bf3e8b0031e44f5d2de421bf3dfc6f1b7473685b4d0b01807cf2017889261080ae0ed7c263264c10ea3959c8bf3362d3df0b77292fc77bbf3a0b43427c26c7a2418735d37485779f99ee8b2055f775094e644f35a41babd9293e81778b2707f87cefdd171e7189679a82597a9099f97b1dbc9aecd8661e036d99e31a20c842a6df1d2951d2c45ecce9298b0fda24ac49c8c5651be1d4e32c311aef9d38a2b034a11402e2068c46ddbbc1b691231e4eefbc89cf785efb2f38734e6f7ac55ca167290023e81f450cabc28d6f020e668904d7e72ffd2fcc5ad82e7b057c64b32a1c6ef6026fe6a1c6656bd0b801e5d9b16418278a5d90fb31efd9de92c43ad5c19e9c60d9fb66616b671f8446098b2a4bf8ed3fc04e2a6bc67954389c60b31783c8f997cae330aace063d134b8a7851efe724b0e65427f0b11331b34db553b8cae3a8b522a8b62ef5d7d45823bffe00b99c555f9ce66240fdacf6ae1edbe9d2fd5118080a09fa965db9e6340fbb212f221f3f7211fe339d311176f6d55c2dc5a2a81667a00b58f06942f22502dca3a1198997af6afa571982286108b0778f3c9fb2f3a6c1562 },
      { u:= 3931,L:= 432,b0:= 1788,v:= 0x60d9ecf2edc0791b2343913f079724c45103b680860d35d0d4efea9ecb51fdcfdeefb8c6ca96350adfc81b6170112dbb0a664d5a0226390532d6a5d9a8fd9f6360129735c407669b26bb3e6e568b08f460522b96625a310988fd72e0ad6e5055239adfefb9b229160fa8089b091062829f228bd94f4596c35132458009da64f5b43edad6fd02b9dbf53819f683aee049165a6dc8e7e892ce938253eba16fc1c6fd5740ca1d10f537db830ca4b48490aa8c8524c5716aec9217c0936c8622ff6b4fa01f76cefed63221691fecfc82111182dc9df920887a5ccbf54f304ff6ab83bf8245be85d898d8ddbbb45af44efe3b20bea8ead591b47fef5df6d760eb84844ef8db74dcd7b0e16ca33138437958faaa55f27205859bfc137b7557b9e2b904f506884efa1587cb38f3db1c70524dbd6ab4cf41d973ba508e91b480a72963d8dbbb0f3e02450087b8883da63b0738591a5d2a0376ea6919ff702054aa3654d6685a9a80d4395bca6f4993815fae9c2116be34d8d65db0f0c4a6141acd6420027d79539ac3e358d3be7bc73e95c030f2930237adab975f4f53151b7340361a9f463047bbbb80ee8d2a6e9c2685880a40b8c324230f3053e464fc0f25caf50bb479e699d734a3972023f0e12d228f916c3bd158b8093437c18e5cd7ba7ae3208f12870dc66f107aeefd3c9e0e62e493fb18503e0374d78155b0f1cf3030ccfa7bc8056244cf5593 },
      { u:= 4364,L:= 482,b0:= 1985,v:= 0x1c515111169a537721c7c9ffdcbb1165bb1a4c35f6a4298058958bcaa11a1a5d2908dc5969cd5c43f671cd63868f5756124afab1adcb6bf36ef324d35d0066f8e5764ea7cf11fb2beb4a7391dd1bfb9feb55ef543fc78d4e835ed3e53ec7b2959afbbef96e697dba7a55d0e80eab798924c9f7d594577198bc957e60377c24a99de1c3623a843fe5aabdeb574e2abd0e48a7f693cca2e41608b2d6b4dc1d105b25dd23ce7eeb478aaaced120493707f8c6f2f85cb29247261b4c653b47d28a91ec0735346dc26f0f0dfab6c0fabd78812b0206c7e346a105252e82bb68455443d27ce39ee41bea69917615bc33c3c46168958bf91effab41a014cba1d11b2b64201f1a2c569aaade7c939093549a383f7f9f4260c593dc9c769440d31a6b1af518b24f816cba2121d8492aa7360adf7a1d8080e5c5d234a5bdd6b13286d48cba2f928a499d1bc7d4502e3a8e127884f6862d27bb3ca38e00371678e65337d1b670198a1a9e343fd2e20befaac09b0912abfef8894d29ac5ea9fbeea54cf944ff4453d8a9aac6bf61a687130ba35dd8ef16cc6bee66e5b13dd50a399125ce4cb1397e17674cf27590f83ad2a96afe5db78e538de98eb3fcef74ac7ff29606e5ae577fbf73b4d4317fa5817ee4debe8daa52b0b594571fafa34d4f81bdc7d3264fe517ff699e55d456439108e5baf904f06cff4fde6dd253810e761c661f3bea0cbf72c2a43f8e6f81a6bd0726713be97f494ede8d618e8d0d4b549cff8ccfcf554185a60ae859e390be3426735354f6b79f91a251ea4b31850274fbd01e6422946 },
      { u:= 4847,L:= 536,b0:= 2205,v:= 0xd30710281f8b0ff05459280ce6431ea4e6e61d09bc73953317d28321de9c759569d268f976f238da8aaf5f3c6f410e4eaf145e1a41ac75ad228e08d78f13b3095779df44589479e5731a7c346b39403a3539f5210078d86eb8bef819a78ace4e450523188ebaba805e5002a9c6e0a171e588c5607f630140f5ec9b40f210c295549fcb3e202b60e63d8757051fe650b83dd661269ffc17287658ebe4c6135d81dc768d009633a06e1048df0ff8118ca3fade50dd0c1671a8b11eba2b37fdbd908d255d6ff20a7a857d963a4fa7a1db84dd2f64829ff49655009a2dec549d4f284447eb1d7de535b0b7b5d802590edef6842feb2a26f767d46f91ffbb5a95a6c97c5839ef7c74b9ebcd2a2bfaa10acdd14eb515c0b9a813618fcadde61b575c096a474a244755c4e37b2233dc600ec3174beb8fc13ad0463c2f3deef01f1a5ae12eb55241562402a0e0bff49fc0e20fca78b4da04fb73c2f683b352c37b0996fe56fae64704bcaa839d7c85c186d88d997a3bf9146db56856f7d07ad2f4e20bb1e3d4f743fe93ef865d96549559cbf8ce5b731614595239ef1e983306b6db3fa64d073711a43589e56a522b66e1f8c613abef94e1fb969ce2e8890c31d9327193d89121f88c1ac9da91c628bc4ff72e3d8eaa451dd628b769305b434e11d2d4f4a73d9a5f0342d46a694466e52d0c70baccdcfeb59a597a5472dfcc48dd81fb6775cabf1308fdb5ed422856887bbbbfa3ae2f665b9aea7fa947a0c843d9fbe873fe9afbecb210ad78fbbc69afd32ab7f8c86458041a784d2f3fca43c94f585081569e51de7f5b6ec92bac8692c364890890c555441d4526bec47a9ae3959d92458a08e92f1e7c575d7257a73e759e9cb0b773802383582ee84accd5a040c7411b },
      { u:= 5384,L:= 594,b0:= 2450,v:= 0x128097fb7d696a7522ce0b99afb5ee36110d2ef08ff0805cb99e02272058abd83c42a3ff283f2cdb7aaeeb59af7731d097e3b2089909fc81acc6e528a1c57b223bc5662d46d8b85f6fccd2f1edb99496073476a5ab6356fc1b9605b7ccc27251b5af6521dcb05816b2308d0c8620e660e33b39c1fcb800a01f2a69863d2b9886dcda6f68bf93632d943581addbed5b0bb51f4fe8169e7e18d7009fc38e09fb57796fd3a86d5d50ba396e798a2921e62456a64d69f6660cf4b2a4b49d120b0ffe1a9536bdd62d81a569614f3ae6b14afd6947b16a923d23d0b7245f9a914223c1f8d3fee24df37c42ec06593a7837c87f0b17294ddbb37b4c91f0c1f4d48d75278e376478f8e0eb9867bda79817f22be6cca2515e778a8e9a28a9c1b52f9240d9c7e761e1ce1bfdbddf6281b81d02721464ef8315ff59b9924e69237fe25dfaea99a0c77dc557a30e82b0c8182fcf1a57cfe9c44f4d4274982ea4b37143c2cb35faa58aad261cbea91967d3401051180a23aa61ae8514ece5937b9b317ec439817a93f80fc08cb6dd57047df76bfb599434468c6f1172ea072701dfd6718a92c8f73e7b8199126801b4cf24a405299025a419b3487528acc6ce635a550d13e746adcb1bc1abbe0613ab36c31e2a24546e376806c273daadb9dbbe75a16acc11c98d0f15937c7956064ed0864ea27e7e28fb31faaad79d299be653af55359f4212a28cebb90552c6ce4e33350d7efa2b88ec16266370a8b560ebb81227eb3a1174c442f83c01bbc55b1859cb962d9b6f3170749c096ac66620ab0b5c8d6274818eb51dd26e357084edd6436e7e6f459c781b3b7d8a01c2594e7a3e46812d7feea51213a39d3e2068fa50aebfd26506b4eaa7784adfee1feef624757d903aaea18ca00f47ec507b23587b1e2636f5bd875059be439d26ed767cd20c1fee733d631b436638939729747d1d44713a230bc91a3508f6a3445710ba0fb9dc6b827dee9c3d08808529c496f },
      { u:= 5979,L:= 660,b0:= 2720,v:= 0x4f777b21da5352b4fabd1e90ad38cbc17d4a988ac83f31a4de0e50754b2d5af9af6a51c971d15c9ecb158a7c0063dfc3247c3ed6d0d606e173600389a562d2a02c7bb54228eca3a51f57f5b63d97412f5d1fe79533ff04e54186f73a79571280b11b2eff737a114345a9ae84bcc9c03c0f8538ef72159a6bf06cf91b098baadd3a5fe85a1a3ca69b8e8a9517adfe879267c0dd48804d691e8ad8d2d46cd663b6e9a45f1f05166de8ac54886ec3e757de8d233765bf8ed552150cc8f17c90669e0dccc7d878fcada6434112ab4fabea6183645fe0e243113a722416567855c0d1b3844066e58ee74ea5b5fc5b2b6d5d2376643ef563de7ec8ce295a32f31c43308fa670e0be903555fc7d1b18671c14bded2d6a4a70935138fdfb9ff8ee8dda6719dea6a6e389e52aea8016961caa064f90aa227d28536d285c373926eca83276861cf99ac0dc3245810ddb3d2edebd59cc685c8b11551abee8e819ef04e032e3cefe5caf193cdec60a8fcb5452d904608f8e3c5d841516fd4546ebd4a17f78a7f919283049ecfe8eb516902622c44e410fea027cf4cd7b375d0601b93c098b39100a27f06ebdecb6b79199f19d86c8179e607e16155f75fc85241c83d8a73032902fd4cb5e491df2bf6e8600049ad12312dd750c410336ee0ada5cbb7e75256c9be7103db0c1a5fd447cfe42e568adea9de81e3793f3831c05f2d60f9c7a7b98521f6dceb76ff5a5af4811dfbcbedd9e23edb0e32e9f30b87c45354ce92b14b28a935a7e32c2b523959c3fc4b02e1834343781b4cbd83e42a535d42f73ce41c41e6ae2a04528ccfa188c4eb4517d855e40ed2d667eadfac71282b79ca3bd8200660f0338a850584cbb29c2e90c6bbaec0367baff33c404de8c5c9a285ac9b49bd6e9dba916de6c3e5ad054dfc78662e63acf9caa60ee160167238c50dfa5fc063d2f09a65b9bea9584e1ab2478f28a936769d5781cdf53b73d2cfa1bc14730180b0b95a215e1c04316304ec9690081dda7dc353811ee031d5d6c63804510f5960a0797d1d9299dc23f8b6889c8605618b89fdbea6cab9cd37f76866333b3a265319c7365b35c86992f195ccd43f8248ffa673e15408 },
      { u:= 6640,L:= 733,b0:= 3021,v:= 0x2e804226ff6f7beacd2ce01d22e3baabd758e1354b580b090e296c82dbdde299700b31a1b5296dd3fb591fdb32e7519a94d052ed5697383cf61fc0b214ca4f92fb9b8a1bf8d41e2779e9132177686f902d7aa9d337bc6f2f1b74f702d2e7e418e162f042bf046122e10f1717dfa8671475c2c1478d0bb7a413ed68eb06c9511c95d3e39b0150d42a4d9df3373c04f1c2de56f837e5080f8a2bd9e86cdd7a2ec9071c16c3d31bb482a7eb7deff0780d9e85518d0ffcb57ebfe7122401f1c16d2fbd7dd028e802bb9784a9d271fd70a1fee005f1c78df90388d8cbcaae63eeb826b52fb194f3eddb941bb5fdb403e38f0b127c2e7ae2299f4b40c6c9f6c4d874d4417279e1a19ddf364a3f34f496c101897a9c241441d2aea5281708778cbd8a1457770fc8379519e131c3d30fb34bdd021cbd34e6ee21f8a154a239223c47dc759f157e5d8afe9d890c1bd464b81a3a0f57cf661e6b1ed3d8868d2534f383568b6eb45ac963c649205c72b8a8ded41be0e127b1075f55e24b56f60ba2aeaf9e28c56539627ef02959f920cdd05c6c6ae1e48db228c5e99279bab53ad56212bb264492732a38b9ceb28f27cd283de8752e6f695b87d2fee6cdde928003de07efe50bd84c20ae6c7b0ba4e045839cf1048fc0b4ae01d1ae7f1142410f6b763329687e7b58b23857d2a48ebb0077f4ef9d7524bd88c6e2fff5b832fd03dd5dacc426ae0548f73aeae0d83c00e68cd25dd8285fbcc55dd71ba2697697463281f45533f07c6780f18d7fcc7150350e258590172d6693355b758adaded955a8b1d6bfbe1ed66314296d66da65b530d8e5d1693f762bc8708d00d3e1dd2df55af49e1ab331c80119e00d383213e2ee51d6c3d4325ec19ff586f99a0329fd1b090cd96e8e7fe355ea6b5ca2e695f0a31551734d91bfa740c6e2c5a5b13af2668dcb867330152936fe46b5dccf36f12ce10235707f4750a50258803e322860802f8d269135014c66d4a1bac51a06e3037a3985b82ed9a933f9d746f36749e05158eb6a35e19ad2931f9831221fa20c682d398d3f23a7f7854f25a16ff0f3fea7bdca2d2ae17542b26eea75ec4473b8c15246c0964efe27b356068c293466a6262a70b69bda7b6cbc8b8331f6bdd7f41d4ca21bbef241a0b02baca5f87e77e63aab9a329aaa345b84e6094958db39c1f2b4eff9ae29e04a0322824554a264af74745cbfe226959a0ec746296a86b3d3eba31e },
      { u:= 7374,L:= 817,b0:= 3355,v:= 0x1be07c6041f0a5471b31074f92c3d467d2d588427825cb58fd1edd492232d4ad4bff71416551481ca07bd29797f81be2dd9bc6e8590d8add1a99eeb1638b23bc9c7bea7ad81afe6be66d5769f600e8a1692319f0c324bcec37c92e48501ce258288585bcaffc0bba3e89132ac81545f976a03c546b10b2ec3d7e159eca20ff83e017a7ac8d29e83b7dd4cb7bf69a02caa8692675e38dfd1f487e3582c3084369c4fa15996e222f91c7253cb2dc1c0a74725465cb3071501bf10958a9ca9ccf87921fc5ad6a1599255a3d39dc834cce37ae310d9d8778e291a3e4a0e95083d9704d77d965fd526a8a0307812e546e06a1fcf876b90f1b7cf6157130155fe03dbb50f5b8cb7a084967e85c66d693e3f72f24368e7272e3fba4b8ae6e3b0b0bbbd7df9d381dfc693a9cb3f03f6858ceda15b0d3d6fec6511f9544cb905bd15fae209c2dc320579141bc0fa987b7ddb3f05ce742242c2a02b9a33a7f9b7dfd1375ed16feb90cfe199f19499cc889bd1b8ad55d7b2cacc2d926f2bc411372c7aa858cb2f60eea2693e0e5c31060638f28fb2587ff92a33d9a5b85b703051e1aac974bbcbc9dcd45e09a27906741ce1697e59ac069b73dd804c368e8ec99807837d5c52159c7270caf3ec3b8f93ede6bc20191006c0a410862898e2ecb4e9a8f2da69deac2145411724008d6c39e55561a0de620a52dcfdd173aa0fc79d6460830b5e3972224bf9f6caaf49bdfe1e456cc18b24620aa4a1cc012e42ccbce91f7f54083b3f843bc7e302c136622ab49634a551e9cb24b73ebb8df30f38b05298ae08f1f9f16eada356385f6620d450b08bb5f377f4f71bd641b4b0df810ef58ff91da27d7de57db22da4b75c56ddea148e75d6b62befd56b204753fa0419e85bb3b885b3c02d04ffe0742dc69f9fd919c189e97cdcb5d4577bd526aee687c2c2c77ca29829693044f43f748de9661bdc162e2893032b9c0c4d9695a685b736f28cc90aabaf8fe3592b88e79d1c9862eeb07b828c1193adc61490d74e8d6fdcb8d65f68f6234afefe83ce8aab9fca3031d4d28165e71f1366451b61336d4dc5620dac97b201fb6797b06dfa989faff452db12037ce1688d1d376124a59ff6b381b37236571faf77878c1c584dbfe3f1f50b944b20696de222001b99187ec127697b9d21ff2806a2684c77d2c5f0426f7140262dd8abaf52ae7518096d272ad427d5e1889bac42de6c2245a6608b025a0479821d869fe0550329c4a24725418186ef2b4cbabd7a2f3341f4f67d6328d1acdb5f02a6bbe7014ab8716c2526e8d20e84f55700e9afc84722d09aa39a8ade1c973e00ca008a664ed506974d4b2af6f0011263b5bbe74e08829e88b173ea5542ead },
      { u:= 8192,L:= 905,b0:= 3727,v:= 0xb64a0b1a7cc9e786db673c633e07c14b406be8a9e5e61406129a74040e42fe75cd717cd47e2b5734a31eecf78a9fb73f53844afdcbb5a05c4ddfab7fc15cf5baad8beb893e6984a19102321e18df123cdc534a1d2eae5ab1130f246db9d4159ce416d5f5c7b4d8977ec64b377d528fde9ad36599cfb887af7cecf8757eb2458966cd0d946047fa6e56abf4203b871a3827089f6a2fb394d833d1f0bc2e566e95dbc81c68a993ac094ebb29036da00722a9f9116cd715ef1e61db6d500c2333360405b57e26fc5eb874e5299193f569fce0fd0fb7a5f1670b7f2e9fea5f9baff41908fb5cb67b89cb763d3fc58892a65f58ad4660a87a3892ebaf31839f884026d757a1522941fbcf447b27e079e727a8b5dbde87f99059f8b4db2b680ccc0865a44aedf05863ea517d8847666eaa48f852b9fb0bd1449b2484f9cef5514094b3f4cff8a8f7b67784096940432a9ab51e923e0ceccc162afad9d919965e23889fa7810199ca0ca581006939e12e1199de0502e998498496fa0f6a16b1926511135662c9ce4b477d7fa0ebb03526f791e4a32a6fc86b3e1d40d92035362d9c4ded848219a2021885b442c9959284f14f78d4102301e3d0178add3f27fdae55499b635e6b87da957efd418f5b2e2c1efdfa1d2f3e568a8b2a947cca6cfedf6a2c82ce0d46f1f2bb3132a0b73d02c292f617e2793426dde586c8d837ddf012df537b9f028bf09daafc43a5d2f351f3426da568f69cb877f8f78844ab908b1a94a888e2cac269e0182af6efea769964beee84786cea399b139fa2787b18ed0ccb3aa15b10eec964a27f01c35fdeaf15b5401a1e5bce09b3af3c56d294c07d8578ec42d62000be5f3643f112b852772caf3be0686d72124ce4beeb78246df6840603a7ea94706f53eac93476faf06fc8920d21bd21ac9c53fc061ddcbc6cbad6ffec707877041f141d47774212c46c3843492077f5e2c1dbe8a4ed1d16f004fb5cb05afa40983e7e6fe442aad9da16a11bf3a01867dbb55f0c6ec943d3b5c9d3fda0e4322aa51bfa9a467c6262c6426a64d54ea8b9f1e5a6e7ebb93142defe352b728aed591ad8a26fb6fca645068930b53faa508de793724c52e72c565d7a1f75a205beb88ac7a9adc44c0eea8fcc5db69dbe289ca0c10f62b47c755f4e43ff937abbeaf048068c0a2b51ffd76393f48c1f44baa8d75cda46d2f55707fc748a0fe447a2e365c560a42ae91538af7b8a700ff78386a1fb875ec6b122f1f5557ba9d89375c22f5827b90f29a4e77af81f062d0918d8b132998f82d54820f3600f922943143557d15f20e09c7a58be9d24fd34dbd9f0a51dcb74b9e8eeb6d76956d5870eed9053a9b2bab66d805075ba92c331d1c4de9ec84fa46f68ffc2661221544d90941cd213b7d5933240a832aab0fc629edee4a4ef0b30021bed6343d7d2539818e4b0f1cd8fbb56631c84d70151be5c9724daae6da75964058309ffe2629c90b93732eb92143455819a22481b971893ead2db2f1b2d471ac7c04 },
      { u:= 9098,L:= 593,b0:= 4140,v:= 0x1911758e02cec5e69889b043d29e7d6c00e8e9901e7361829a1d3d923ec395d48170774d5c419aa7f6c78b9f0efab47d710b6f6af78b4e9bf0c1e027b91185df73f7fc0e6f5e65175083ac49f41fb4111c870f118c64ada4c0a8810e3e4bf8fbcdbc2036d5b3a263068ec400989acc2a8c3903413ab3022bd3ce33e554f944072e33bd9e309260241037184b60b2cfcdaaf179367244e0dff2b982332862dc3d5838fbd33c23b1848f92c5dc70099e1f01dd57f0c9b2e17fffc980858c5409fe65d447e967879d162fffb72a729017da20d70317c5786421bc167c0643e2ba7080295cc88c8aa7d1ff8ed83ef05d2af5f1bd865376f53a69bf8369ab126af0f28056d2d518f0eb4828dda328b306f9217d0fd4ada1d746963533ea46e4028d0cc7d669022f174c8ab2c5d842c05944e0a686cc8c5240d8ad0c629ed218ca4b659b739f66928b4371455cf5b39f0cfa0e22caceba62f46ee1f660b0abf9174f307b19b7cd1e6e83c1ec51153a08f55dc5ece0c914b08831988ac117e3b27823fcf343ce227a98a891ce43932d8b48351d6ebf0bfd09d1660c20e444952c9663380edd146e7e212e5be0017e32a369f4a1543e8a70c4c5aa0595faa231f9ad5b1e1da67c560af696dab875434c30225f0f62a78835476eaa4b13db3e679682ea9d378dcae7018af4eaecc340a35d01fc2aa1954d0ef1118de9b6e8bcb1fed10c5e957631cb147ea86134ab5a7d4bb5f53a60f060e7202974fbe8a170bda4008c93790217794ffef34daf54191cb4454d47a3fda87c911632edb85aa816fe4756ce605e78445bb9861e8cf96de15f3d09cb6ff4c1047e021279d78653057bed02b8f5a71cee73368226d55799dca2c561010c212a7ae715ad117ea475612667ba41e71c4cc7d1ea27414ff0032a291cc3ba67ae851e70f227040ff1634bb70fcd198addf158c5b9292e0d156e6bcf1f8343a159e7b83d0a6d53e5bac2e5fd7fa5accb9a363545a11c7699d0d09439aec89ee63dedf22b60861f41396f69f6b37832c45136587360c5b0b44841508d64100efb44ca759cfee4a5527c660be0da8b9186c9b593cfa4ce378e264c906b300f0ccbde57a526128a7e352ba5e9ed5b59d208552496ef4fc25617e8501f7bd5bb47bad6c5be49b89c3f9eb14cf03223898411875e6933fea1cb0b033572e8d9751e0b25cb0b2779933bb70c16c0fe4a5815d724e6c3d3c198270590b0deaf57e5fadf9fd268b66d8bcb9557856c948f51caec6ccfd25553279c9abd6f6028f88e6f2d0ae5a5c21f2a67e04fd860279f9cc53aaa1286c0dcf6970de7c38c7e709bc1556231e725774f308b90c6c7227c83ae2194aa004a0e072c02c04b9c9d20d2abdbca04497ce2a6446f8df38663ccf9243eaf777378a70a812ecc0e41da35705963c2ba6d7829e09f347d94777384f6ad2ac1ba00199a312d34ad7a7e08188ef507f699a578f6854da8510add9ae7ebe599c38d5b95121ac7941ea3a3ee62f2a6a29fd81f5ff31d42ceb1eb5ee4e217126db5d4151cc176cd649bf3b47ab5859e41db35c355a67d44e3630fb4df55549e846d438830ad9177858a4e664a9291ca6bca6d8ae55f4e8254e38ba8b844aabb97674787d47c528803026235245b8476eb0f3b11e2b5b6edfb81d501d57be65ec1b93026e6738e7fb31324f7614ab5898645 },
    ]
  let u224:List Math.B699.N4.d0:= u141
  let u225:List Math.B699.N4.d0:= u175 ++ u224
  let u226:List Math.B699.N4.d0:= u173 ++ u225
  let u227:List Math.B699.N4.d0:= u171 ++ u226
  let u228:List Math.B699.N4.d0:=
    u169 ++ u227
  let u177:List Math.B699.N4.d0:=
    [
      { u:= 32,L:= 1,b0:= 12,v:= 0x905c62a6 },
      { u:= 34,L:= 1,b0:= 12,v:= 0x17eb5805a },
      { u:= 36,L:= 1,b0:= 13,v:= 0xcb2e04335 },
      { u:= 38,L:= 2,b0:= 14,v:= 0x17f83e55b4 },
      { u:= 41,L:= 2,b0:= 15,v:= 0x18e96ff4d28 },
      { u:= 44,L:= 1,b0:= 16,v:= 0xb285b2e24c },
      { u:= 46,L:= 2,b0:= 17,v:= 0x36f92f80aa5 },
      { u:= 49,L:= 2,b0:= 18,v:= 0x2c937ac813c06 },
      { u:= 52,L:= 2,b0:= 19,v:= 0x83ed541de39a4 },
      { u:= 55,L:= 3,b0:= 20,v:= 0xe749d07c52868e },
      { u:= 59,L:= 4,b0:= 22,v:= 0x212d3a8d97334048 },
      { u:= 64,L:= 5,b0:= 24,v:= 0x4b137c1954b2abc59 },
      { u:= 70,L:= 5,b0:= 26,v:= 0x18d6563313d42c855e7 },
      { u:= 76,L:= 4,b0:= 28,v:= 0x204f5504685ec7afd5c7 },
      { u:= 81,L:= 6,b0:= 30,v:= 0x11162e40e315671b42ebbd },
      { u:= 88,L:= 7,b0:= 33,v:= 0xb00160b63e6297831c1953e },
    ]
  let u179:List Math.B699.N4.d0:=
    [
      { u:= 96,L:= 8,b0:= 36,v:= 0xcef17d16aa7739de2453e6c8a },
      { u:= 105,L:= 9,b0:= 39,v:= 0x12db605de86a2d55b3b832d9159a },
      { u:= 115,L:= 10,b0:= 43,v:= 0x14bfbe506a9f72a5a9983979f09d5ea },
      { u:= 126,L:= 11,b0:= 47,v:= 0x84d65f02a3ad15ef5d4e834db772ae19c },
      { u:= 138,L:= 11,b0:= 51,v:= 0x497b8332756f6863b51fe3e04bc7cac2e6d7 },
      { u:= 150,L:= 14,b0:= 56,v:= 0x818747e15b03fe8f361e18f945c846247bf2661 },
      { u:= 165,L:= 16,b0:= 62,v:= 0xcb342b742ad2f00df6f263d563109d57c64e178db67 },
      { u:= 182,L:= 17,b0:= 68,v:= 0x1e4fac61f916c056c6ddae119a15465e1e7c03b4e7a4fae5 },
      { u:= 200,L:= 20,b0:= 75,v:= 0x400c7dbc44e6a32363204571508af2c264bae00481aa42dcaeaa2 },
      { u:= 221,L:= 21,b0:= 83,v:= 0x155b5e84a01a10bbab57e45f41624c9b992492910fec3a18f812e5d804b },
      { u:= 243,L:= 24,b0:= 91,v:= 0x615624dce335ee6668a817d866f7ecf79cc6aca2e26a4c8d698f07485fcd363 },
      { u:= 268,L:= 26,b0:= 100,v:= 0xfb39d73235e20cd560c0e9c447dace562809d57199d74e0514acf77c33139a77cec9e0 },
      { u:= 295,L:= 30,b0:= 111,v:= 0xc20344f202d0f6a63f36561dbc3a42942ad3fa67e33feaf1140ce4dac361f8640baee769b40e70 },
      { u:= 326,L:= 32,b0:= 122,v:= 0x4d42c6914454a3a1e752ce8ba4d2c94b3324772b3842766e0a79007324a26d3982447d94a41e615a8ef71e },
      { u:= 359,L:= 38,b0:= 135,v:= 0x133b9bef0c543bf3973bec81b57c514f279b0eb381b7c9e408e56e3e0f0d9f008010aab7fad69195af666fae8421e57 },
      { u:= 398,L:= 41,b0:= 149,v:= 0x183bf147c42d92adbfed02293bbd68efd85f0bc48fb8412a993879fbb2d61d272cba18ac30907aaf08a371e88d724dbad8f7f13e9 },
    ]
  let u181:List Math.B699.N4.d0:=
    [
      { u:= 440,L:= 46,b0:= 165,v:= 0x1312d16911301c2ff538536e630a1ae32e1e0f2d86af164bd45959d63f7a9191c2c40811d6a7a15c2477fcd5c230458251b8c76633e4606144f5 },
      { u:= 487,L:= 51,b0:= 183,v:= 0x2a1ba7c659ef302712f3e1917ca5a576722b517a80391f5c571845d99abdf04ec4d0499b521eaa842c4495d2827ad8b0b859605bcf3239c3c70018867379d232 },
      { u:= 539,L:= 57,b0:= 202,v:= 0x6fb3ff4cc6bd249d14f13dae7b2afb720627a79f21e0f26e4d3422301e672c24edcda104751cb17d67c3223460461407db1e821d2daf67b15337930e107cc3f545ca8044c83d18 },
      { u:= 597,L:= 63,b0:= 224,v:= 0x92de016566b95273eefd9c56bb815b17da1339ae6597877410e47aec8f4ceea73652b1d9891024d1637265fa758228229554e52c21ad71b514376d632feefc40719efc52e02a17e560adc05d046cb },
      { u:= 661,L:= 70,b0:= 248,v:= 0x3d6d2d0ad95d89b094e769c2c4640894a9143bf4654116e9d139d1aea6a57068ce642719ae057102a74af7e1a52e058fc14e2a8257ced0bf73e930f19dce3ec3a3126ad1e01a653cdf6ab59180d66dd7f19cf1a245bbd4 },
      { u:= 732,L:= 78,b0:= 275,v:= 0xfee385c793941a78d296925b0de47b5199c5a3ab152b52b48992ffff881fcd669dcdd90f9d9df50ea97f2c53e9db2d84b89728d9bd7ab8e34f1f994aab266577c0947dd1c1b095459486cb04f72e313f3b3150a4360e3525756241b8d34e8905a },
      { u:= 811,L:= 86,b0:= 305,v:= 0x22885628e5fdd3cc31a3d4ace93b2aebfe6fa6fb6bd628ff775c9d3accf4cf9a04c11dc02594c41164e050168dc2870948620deb75f6536105de9c5247e9862c52eeb3062763dcfa0bec90814807585f58bc2f5aeb8ded30b6628f744ccc46b37b7a585ea010edf372845 },
      { u:= 898,L:= 96,b0:= 337,v:= 0x1819e8fe0c3681095e17d5a93b7d93a066cdda7ef9d93323e2910046d3d3320a76545d6d4825041b1497d122a5cca68a002f1c216783c7cdfb76546425ea0fb623722a3527a67521ed15c3131a7b8fc6415813566f18d09a6bd8beb4cc72f4f40e75aa6461c2091fa13f3e6a2d9e4af84eac728862bc1 },
      { u:= 995,L:= 107,b0:= 374,v:= 0xfa8d92ff0b28fed5160893b94e675776548c860e93238cbc7c91061cd653f1441b95e09c3b2db780d1ba17c3db15c78cbfcb24735455f2a168adcd94d862c2c6f36841b2f07ba854ede6ff4fcd9784c611d4f72c153f6bf25f3b5134edf58f9ea8c38564358f46f0524cf5240d7634fff1109467fdb6f2544dc0d560803c430b3021d7 },
      { u:= 1103,L:= 120,b0:= 415,v:= 0x601876de0b6fa4b2a6a433cb026c6b2bbd08253c04013a91698dfe7cdda706995e058d5879dcebaf2a9986fcf7bcae9e717d60954f6bcccf930a045d627de4f808f7c79f3cbcdb1aed087bac9011a860cf9c6b6e84c1a6a5062f99060eab436c7a5bb7acf6e6f9a42f6da34283a45ac6f0a80faa4cc83acb3d5994f07b949698cd0d72f2164bd8f96e788d7198a6fd79de5 },
      { u:= 1224,L:= 132,b0:= 460,v:= 0xa5808dee0d73bd3b1521ae6b50c6de32480ff6b8aadfc3af30ec146be1e0f932f21a0bd7766bfadc8c1d0a9dd65c19be76a872b121a35a662d11464595768208d9ffa2e35fa64e932b74487436a62a0a09519a166d7abe46368bcbc039d612b1dbb520fb9ac78e92673c49a07fd2da7640bdf25e761be3d68a55ab4e70c3e85e187aaaeaef37842c9a3b897927d0d1bcc6817add53362929907c03fd8ff54a0818a },
      { u:= 1357,L:= 147,b0:= 510,v:= 0x9ae5958e3f310c8820b595c3974b9f51870b8db614bc2482a24bf46872795df1123801179cbd4a63e3d1cd2062eb7d0768f8026cf89e6993c88dca7f8ef5c10780ac804821ee7720e680fb366362bc34c8c9367934868b29751909a9b60717a5bb8bfdbb858e0d8406a86225612b5591589a2691b59ac97d1a1390874bf14b32af7acd19c04c183b3b4aca9a0c6424ea001235d67a09f5ba8743a301ff1fecde205dac2e075b33c2a4f67e058cd1b1c394ea04 },
      { u:= 1505,L:= 165,b0:= 566,v:= 0xe8ec9d3d9d240d055ca7db32162a7629e84e5601df5e0fc6aa14713a0c8f34571b11bccec6c39b6af041b83a754f9f66f80d5447e7c306675ba819279fc7f5c156b89e8ba66878ffc9e2d4e0a293bd4cfa1e8ee3652e26a9a9de2a65a35791fc94775a38bd0d9c6e11b865b9729d03284c5baec8b8937dc9cde1fe8636c24371b9a1352e751b68984e6ad646b19cc68676efb5f91ebf7608eb809693b1019d52afd29a4221c24ceae42fd05a85f6ba066a180760ed80cdd7c444d96bf03fe11556cd1ad3041eb },
      { u:= 1671,L:= 182,b0:= 628,v:= 0x7268591dc0c6ab2570b39ff4d026bea581f65020e7f8a65c7adc547365a48f36cfc1922547ccc8a8cfd1d3882fa732f201f362521a9b55bbe79c5a11b62eb83232c3a5ad3ebf2d1781b9bb35269fbc767ab725e872e46e0ea40f2de7125c75dd42d6295cff35287ab48ea5e081ec681936e65982d2eb8f0393116673c8110ea10580410164b5e37060f92999a6cef335c7ffd6a6de8e47d326d551bca834154bced9005175481e21d1f22c4f7d773f39f5a944215860838917b2a2b23e04bf0d5796d99183296fca045abd6e322c743aceec2af3ed88cbbd097baaeaa },
      { u:= 1854,L:= 203,b0:= 697,v:= 0x183dc9b565e25bd9620af1462e858a88c56d824f4aeb6db0a55847aa41eb492b03f8e74714caecdb1a255a02a5066074c5dafb4748e880606ae97732bd4c893918b58ec484db0b498e018b91804d99abcb5b951dff35b31baa4237ed57644e7b2e9f5f44ba951ec804c8fdeb10ec156cd8df1ba04c3e4054611864e4f6c85d613ce51f4b8eb48ec63b22a7fbe0698116062e6606c6c7bbbcf7cf4da34b6d6002e4c74b3fc4ba0cedd37ad23ea92d0de7cb2ca28c55a110384acd8bc3a71dd5c706ed132ad99d79ad77885a7f8b3414d5cf12251262d29330242294c157bb5ce8117ccd334018aad521b9fe1f9f78acd4a081d727ee },
      { u:= 2058,L:= 224,b0:= 774,v:= 0x17bbffccdc9867b0331a91e4bbd274fb8ea31211a630f57db4bec1e4c3883c381fcce3c2143c583deaf2e5ac203ac56e50707d9fa12dce5ba7a387b0a3f1943512ddbde15a916ae395f05b9f7bcfe600b4e863c0ff044ea2dbd902efac19a9392a6ecc2d1324f217b1fb54188a9e9cff2cf64e07782f75eb14abfca461443cdcc01b4ea06f6605e39b2166a2831f44d9293245f41bb86a2882c075c5f277e1c2495fdaf9bce57834405197bbd276c30ca2248f718633c9d5c23a5c0998f4a4cf4298924981db343082bf7003daa3b68adfc04a2369ee2156a76e807659300f267844e64572241cff0fd3f02ead31fdcb6e6873752b81e1c229caadc9e27d00ba69a43fa614972ad4b78e5155fe1fe207 },
    ]
  let u183:List Math.B699.N4.d0:=
    [
      { u:= 2283,L:= 250,b0:= 859,v:= 0x349e4a12eb812b7b2f88fe5dc41aa20eab91f20874598d3bb288f503202540b9b0a817c6b34595d68a02298ce0bc31f80d8e6f1012099abd98ba9d754159c3db887789fc72766369d37373efe765b71efef8a67f6fa676e4636e60a68d43ba1bb14e48f631f7e303e486dc0772d14192b4bdffc81a09f1d66cc40d4e2ccd5afe2aa169e0cb08f3ae7914516f87625e9d9b08f112d869c64df6b6e6bb5ff98e14411ffb71187369a56c32cb7d8b151bbab1e02304013c0db1306e354c662aa0fff6c1d3bca988d99e995ea8314b923113ae368fc5b3859968434354d70a12c1a5e185e47e21e9cfd9c6980427f739f2325090efb6aa0776c5a0fa26c8ffa028f0c43f33dfadcc982e68edd6477c5c5a3e4af0171d90b68e39c8706b7194ce6e3be145649b403db4aa42ab874b736 },
      { u:= 2534,L:= 50,b0:= 953,v:= 0x22dae13df8aa5d73f591324de1fc3dfe62f83610a699b18f5d2a3c6183638f47a60d1a5498b113eb5b61359857f3051ee3ded1ba89f1537b45cb766914b8c947aaeac874646db629643f5f07cc6e0b58fbd1e43a414d16ab1c6ced2767382a44e12dd04fd36f82c0de3092a3d91ff55f5ef8ed6bb40435e6e82cc3a68009ad6f6920602507bc3e298bb47a6edccc88f5eb4ff75e3122d4ec4c018088212063c626e388505770bcfa290fc839680e248518fdeb231e868170cd237b74c4066673ce06424b16063078408220b47a489476cf02da0e8ac2c4b9fe9bb6856fde77352446a579a261dccf32ab77d0c96070c05e87a74a2bb9209e89c8c353f50d9063db08f865efa5e65a3fd94277abd70bb0504525ff2334a4c2f53eba71918827efdc4098a8a642ac5a9b81c44b327f8e0fd3421292e272200f7b1cbce5c644483b5e1387b3eb693a62110bcb879ed69 },
    ]
  let u143:List Math.B699.N4.d0:=
    [
      { u:= 2585,L:= 283,b0:= 972,v:= 0xa2839be6dad1a39e67b8f1b058300132b7c4e7d9c0914e3d786a916c2d284bc91b2231726e9501c6d5a12f3708d044584cb9c3a8b675399fe97bdc99dfa57700b8171776db5e277d3cb940f69967151aa397771137297a691b33822b16dc467bce1a6ba090c97da128ab51848da9df0017100550111ee31a102eaf218e02d1aa589e0a653f1bb13a61e576337b01f2be9b6dd21b67a5a061f4fbd1eb70e85f19ebe2499cd2f1af9ba256b60e3643ed4b9e3b408d31bbb450493a06ac4d54ba8cdc966fb0a0ba7ae0402e3255a856f7759661ceecbeb44330cab7b8dca26084e678e25031c3d77bcf3d4ca0ab99354549e8e17730e6168858378a9585fbab57aca645c5bd00b6e3b7adf7668052aabbc419d359e655968ba04bee0a0b05348f5366f7ed537f09c4dae655ec91c81eb554dbb2f342c1c44827900f4130f72481cbb92f473607e1fdd353c3f913ab40bd64dfbdec076c },
      { u:= 2869,L:= 315,b0:= 1079,v:= 0x58e40838f2dc90628e51e281b088754e150a88e7df3672a426ac16ffd69f3e47248f3796f8b00f5bafdc9c5e6ee02117d9be773c0eeab5c43a60b91da218fb3679272c47bbf487c117a6d499fa55f54445261d90f981368ed0e3b75ee84e6e4a8295f8ef13d21058244cfcf04f2e34fe2fca04fc09e092568fccbfb6f3f0853870be355af40ca22cde50e715259d3a761d93b46a26db78652aba6426e9fc4cb97618cd60a10a3a1ad9629dda61a7011a888b5c237e84b68559eea93f266f66fcceb16f747a07cc6e3dcd79a4a7a234c0d3b9f8ab8cfb9535a2e83002a0bbfb8e01d0f7df8774485f6562c2e80dcaa8c3a02f9d82f50cdbcfa77677c532c8463cc6684ca5a83b9fc51ad86f07ddb38bcc3c10bbdaee2187a4bc3f66db7f1b07ee7d5e59667182ad8771702b6cf97f3a9e1c624e4010ee325e71824d2a7ae77ff179d560edf8dd3357a786c3ac5d33b3e31ee33a541878aef305a0be533ddf65899e9ea674e6c1934b33b9de709ebcf45548d37b1cc9af7cec543e1 },
      { u:= 3185,L:= 350,b0:= 1198,v:= 0x1477ac815f699b2f25ff48423c421d48f88abd4760d00f3f76ad70ad4ea58a45f34635744cbe760d62c12a8e2f54b7b61078d85e69f940c2f6dd39c92e47c8dceb7d8cb6040bf9dbc71b7cb95bb80424dc4b906ef6a7f0c73757bd9d9041df3e0b36072ee18fb6f77f3e0efb593352c48e3cf5c8e428124c4e4165b6f0ee331652c029ae3b2865d2a04bff09d1b0093bdf3ab814f6f3f7161f125ed90a09a4a505d225ab9f6d3dece09e82666aaae3d03561ca79ae943d3fb890f109cdabb5c79163b4b72a2c78db11a620d6f58c38412165396a30173c63686e5dcc80513a07fb27bd642c05c501273f737e76ec715d130d5a99f112101d13e29fc74a8144a1a0b8c7698f757c5f0cf11ffde30fd7e131a57d1a1bbc8d191a7e996610738e16554b822164b78d9b8c10b72383aed6778bb58828d595eb0451af639f0a3c8afe7eb9779b5cf7b100e0210797ca4f701be57c059d984f84b4852adf4f97af5641035c4a1f9991648038678b10350526fb5b8afc30903bbe6966f91cb4fad9d204dad01f8425905478962238e0211cde0caa59be060e3feb87e38befb4a8818b9c399f23c3a },
      { u:= 3536,L:= 389,b0:= 1330,v:= 0x839afce69bfb63e6be8cdb3b1ae7c21c6f846958b2b64b09d7359b508ba42e08788bf0d02199d507a2244663f6fc7bd114eea372a8d0afa9bc7c3bdc74160b5d2d81d066ddb090846249a1401838afd70ef6287a2c44dfe43c0c51ce245f4bbe4e9e2773b84ff77fa18e1fe57e0a1e63d31df44a3c884398433e114327c3978494264a74ce81d7418422ad475012e435bd67424484def71900186c3a597d0b57013574362afc04a2278ab96226d46da83fe2e72886123079f3a79739acda1d40a50dd6845b6c506d44de22c349c921391d491ad48755683b5c36dc1651c7a149a50e06384f41a2141fc245edb8a11f23150693e201d2196c789f394813f8930fc3b4f6aed19ef4a7ed4d45f2b6d55886d8c60de293330b6027f650f9a7695265f6a8e5e7c9ba50e58d377157f46ecee7d3f12ca7616040f2809b51d29b71a1fde702f1de967eb9e19f5a6c24c0930cf1a89d3e9175a6f2d3d2f332330c0be98c38973ddf3e64ca2d9f7c26982afb00749cb63d5a86798a9434e374aefb2d5f6f2195166f8b5b2d759b630805bc99c98517fc3c4b9a2702a357202736f0a124758ef0e4de5358805ffd195c7dc4a5448689c24d0c984227038f015889b17a894138325343130be3dd42d895a5b146e0e25dd1e },
      { u:= 3926,L:= 433,b0:= 1477,v:= 0x3a0021a6c501dd657f612b5d8db1a9b39a63b884a9fca19e045682754942a7a7c60c469527a9c5018bf46a386852415b83f836f7068f893d18f40713e53588d2dd2b7f306189f8803d9a71e1ab38c1d586dde4f2828fd4692febde8ff0bd407c30c72baa3a33ac8259ed568dda14fb8315f0a3a199ceaac31c5b199c6d914ee87ecc51d64027c54732b24041e6e578be6da9f6cf9e3965ba32c915c348c6c823489f66be59178eadda43487602f8b4ddb5ba28dca8bfb0bf93aea891707cf3b5dfa22623e12d48c25c9d5bd2f584f9b81f0453b306fa5f6c7d973969c9496ab996447cacfb2f7a58771c986347c7d1484b720ccc5e3964d7028079a665324c81e015dad1705733479f7c95d161a098ceed90ee37b6d84a9c22d9428dca8cb2371e42bc310c8044e520eda7bcd3d5308519927df4d9844265fb856c5bb3f9a3e36795cac54c5c98f0a320b7db80e8d2f9aa6417959c355606237a63b8d469fc387f72912b2ad18e9f4e8d8e8c55bb4ad2729a4dbeb4f007810d1ead9bee823e83c0d4b248558417cb6389840922b3d6b3583335936cec594c57915518043959a06470c6354f0253e48bd0ec7f1353d1c11ee94e6e042e98d3971c17263e77372cd67bbffd1bb3c0056b90cc72ae6233fa6cd36d0e8263624230b31a4c973b5b9b7de61beae6fda81858ea5472b6b9e15c551cfedc20de27cac84ff52eec058bbc05cbd87d81b10 },
      { u:= 4360,L:= 482,b0:= 1641,v:= 0x2b0963bdc52b9f3bb5d8da345c590151c8ede203d081150c92f6137f5473ead4bab3c62ab478581013a67ba9199a7a7f6d74cf2b7ff9ea25f416e9566a977d04293331747002bbe98c87e1fff264d7ec0221e3555281ae847b651819f9503d8887755230db0c63f4edb0b457bebf7a5d36625ac0f9069e698986c555d683e42f1b071cfffee57cbc54ee4a5695455b4eb84695cb5aa176f276a62b8e79bf47e6fb06711b26a13d43ac489aae370596d75b1abc0b93788580b18a45cdd5a615507da6375c533420e75c5757d138512b14ab23d863a6bdffd5bfd8dba0bd4052027c8493c20486d8fce520b826dfd8d6485bdecea3dc95e0aafd1ff55070e08dd6a613072c3cf249583c559146405d7245a23fec90f2adbc54d2458b0820ed511127bc517e9dc22e58b1dda54717a5ac1616b5d20852e1d8d54758e0974504c7f0a0a6fd66ddd99fa07c2836a593651db6054a1bdd7cf92f4039e6d65031100c09ffedeff3dc6fe77f02608c50cc8fc0118720b54bc2e8dbbf913f93d0f67ed646aaf8a27146a1fe67b90b78f7fff713903fce17f96782d299fd6746f8ca3d09a4e108684049f99535f485f67e1176b911e5d758e14ec33731dc141a41376edd7ee37933d9a302aa5087f132a21f33e1201e202b9f0218fbb3ede4628019d5abab9841de13cac7ace76b98648b4976d27afcda71315bdbd52fc8e47601152664185a8d4c2a2aebeea504f0c8a2be287c6ef9262ecdc3b7efeb913c3b8abcf50f4c42f3d61a742e2fe19aa6c552c1994a02a9343109d147a9ccba1ce8bcf64ab50b },
      { u:= 4843,L:= 534,b0:= 1822,v:= 0x7c8b1618c77028816b270c915e84edea3e8378e90d56afb939d5488fd9024895b67b3dab8d26a361f7ce2827581c0f56998626a3aed7a633b8ced9ce94aaddc0b9d3659bbdcaf3c33010acda85cbda08d34814fe40a5f9ef1236087698dab6f10e33dd19212e0692ff47a4c54bb03e7049a280983e10e4d36668074bedc7acb582b9ec09a4f956b245b203406c21c12702d3ec5f7c3e9f958946e231f6b0cda79cd07b2e4266f410ab411d8a8fdd29e5656203f9ace0d06367f66a3d8d8c19b544da008bc9bf7674656eee7fede8fa313ff728bda502683596f114646318888d42ac7b23f92b13ae27d11d164dcaedb44a1e219ca614f7a313b9d79a772bec51e0229fe0f67f0e54f5dbbfd1553b19564c3cccee7b62ea3c554d569067e511cba9097102822612371a0870659501501d454870ca00a1965218a7c285eaff7fc574b0be2e97be4e2379c97544ca1c8c1e0f452b9e5f8872f80a331ba1acada1e8dcd071bcc52c218f826a75d88efb350fdda80b9cdab9ff7eb57b21942767d95550f4a6f4b36866233002a1be063520c49304dd85de39df426191da33ffaab00812b15ebd4e7f0f935fb373b8efc9c2505cdc317825543a411f03537faea86191a23da006530677fe254fb832ddd410b16624c4aa8d8a09b9c15030a651ac952f0f4aa48dfda045faad7d0ebcf566d48d4ea5d0689d11bf6d4db9e3cec2fb3826a8d8138a0e28be99ccfcb9263ecb12363cb7cf4693c7ad02d329df219ae2b7f7402f7dd4a73e4156392526b97d0b461ff0db9c23279fb9c0706f7c5821702a35e1dc10acb5e67abcd919ff929407c165ea10586f0e40b8a45efed01e5a5b285423077a1382b2a75c155de9f9f32c5aec67b4d1d08fcd6905b9dc617fbe8add8 },
      { u:= 5378,L:= 595,b0:= 2024,v:= 0x3117425faf22725791bf4d4d4f4838426516e862287d5d8d77846c656038a059fe7b09e756205491d630511408a7ccd58435139e73fb88756e7ddc747f8abfc310e4a691ffc6ba2a47e29fb243f2d682f4ba8d1909e942fcc6ee4fc139f806923c3bc011154b296b20118109de84795a0ba2e35601d36513aeda0edeb48b6b768f65ba3ab218cec0d6dd34f61be9223c4906ac44eb1f4d6387ef6a1178073befcabef3a14509abb705cbb25b352eea5ff4f8ae51e1c2b8602667b017f1c39e92336f108adf5ccb267999f9354d65940712a7f98de96d2af4c275897f9ceab184dcfa2bafa3e56e3603c276cfb6416608b45fd7d6e814dd900fdb7cbdc10183799e0dca9b71aa633866880ab0a5e963c285349b2484ac95a1df6a17cfd79ee6c136e46ca3bd00d01b7df885ec3089b37af0a2055640afa2afd08e7ad4436ce7fca410519cad37d67fd5da323d20c6a0a637b797babf2912b35091090976f498a6f247df693ab12c4bba65d8d8a02299f41264f64c3dfc4c2ecd8fcedcaf6019bb3a5f9980b950488d2340a3b42b7478adc07b439fddfa867e2cc073d97d36be0db32fe77a89fe69eaf15b360256ee72eb9664ea7f4c28671dda12d1a92447ea140e5cd490790eb57a5216d6e66c5bd452f23344d82389e961f7d020f9be171e2de59657975ac3a8826f94e863956348d8bfcf7e585eecf62422eda01d2ad83f215e6f257e9f4eb4afeb8667a5d6526fad7a200905c243f528598cd6295fe6f9631b482257f76fd6d750ddd48b291d9587a780f1a2e803b5228ad8a4305356031f0feecd36a4bc0cf9ed26017939ec8f214b51e6cc379d96aebeada70c441cc2a454a93d1e262bee58bb655ad53d787d39350085dfc047be9684a5788c0f91b6a1ad144952f41e1c6f892823f337c953f3c0ed093891cddf60c71c5834faca75afb6a5833a8aa7c9d2fc5b3a701a299bb866252b917d255a611cd73c2d1ac87f4862af49a89670f },
      { u:= 5974,L:= 661,b0:= 2248,v:= 0x2440a98b4d57f952f85b5ef1fe4a5bd115c3f8f943b2354acda1a8442f326504269727a5b32cba4ffc68f064a5274fdb8fd0e29968431cda78967db83ffbe48a0bafacd32b6c565353d1aa97ac712c4c410be80fb8f679ec676c0fc63f6281c4bc609361cf4c0d36e97d8386cc66071f9c7b2e8eb8828fc3eee2c96754e9d2d601ca6dbbb911c1141c15db6f247125005225edd9e0692f54caa506f83084947d6f4c475ef21c9c40339b6ee12ac8be9c0055985f5497ac9c1aec41216743417fde83b994b46b5c1b31e7a788ba8713cd2c048da05a6161415365a3ef2dbbf89358766a372c940e50e7a1ee751dccbad3b13a5905d2a564e504ba6151054d1f33d0659ac7877c82f1c2591e2d8a01db70a694148654bc1b8daabd2a97f8222e9a6d3c571f1020c02045b169e11b71800676aae90daf4d1590122a8cd6ae428840fcf6eec0ba50437c85a84c31a6fd17a1786861df0051e5387aa7ebf5349555c6e9c4af910a56545971398fba4cccc714bab8bff10bb4561b1ecc11c68641ebaf26de09e4579add74be0d850fc0014a12198630af7735b409cf26c6434c6b34be4443f15a273aab03d684f85af7ba75026ad0c2a9e14a47850546eac10c1adbf4cd4a9fc931eeffca6f851805c5401621c745b95f44940635a9e2edc6dd75148f2bb54a89ccdbfc2dd8d72f3b17fc1f9c7e052ed6f7daa053f6bb95ad745cd1aa9ff33e2da769c38c941e9a5e512df3996ad17c6fa475414cf57fac5df572c398df26c3c54e084689498a19e55689ddd9d6e420fc19b2f9dd5549734aad7c86198bb7aca16ea0d9f62bf2611085e694254426614d3663e5ad2c9c70f313f16a99df828da0b800975c50b73e9e2816ddae32c53038f89ab47c2288316f217779d8f18ea3410e5de36ae60f1d77a0b2cd3f124579ffe08d20ceca0831f7e95fd8db9ab4c848c0873ef7954d0e19f52b9ad28f62ac4e55fcedf4bb62f09099174da39768d84361890a469c22b6562ace194a46bbda1afc20cd6cf9e5f9bf52b230ff34b2bc75eb2c2b9775f6bb3f58a1cffeebde41746ca8ec5878d30e64fc4436aaeec0979f4da3d12dce7b375fa27dd421ad3b7a17e3 },
      { u:= 6636,L:= 734,b0:= 2497,v:= 0x3a32579641bc6a09ee9d2cdf1814a8ee84f1a460192f03f71b67fe6e6bdc2d4d113c5bc7597da6412e0b9e4c00715fa4b5aafbcabc79082aa4528b2ca6f219dfa15ff51c05c30bc461ee88fdef57b7bef690e7642f116126d2148d57042d7206526d7de6e30fb165e9e5480e48b253c85434345c96dac2b437b5e55144009c98e51ff3710d8b49cf01d3636988237664200d14b58a4cbdf8b4f80946aa045bcc87b9a7ef18c41d1b0f9db6c6f5afd669d56797ff36a92344d71dd986d8c6dfcf45ad7a17c461e9e58cffee62981ce9c676631112e04d4580557353b4e612b3cf8bda0f95ee0cf4b673443db0f94465ebb69271f9e56d9926e44bec7ba11fcd8931674f886a733dab6bb976f88889c36f015c0c5cad83d8b7b37f4a438543a1c460de4706b8af19b89f2deeb27ae7e5552d2379928de5a579ed1f63b0f4f2c73d4b6494acf9e65f03261f75042e4c8a6e7b153f7d7399c1c3d4e466bd631158c3629768805e6f15caab5525609cfc5e329798d5b3fb084e9e394ef21f2368744b42ccb6f8503a02a180f2210e79a6962326547b8f74788f4e6377c75515f9d1e91557129e6a0a3cee8396bb302663eb31b727a72be8d3505c0f9a02eb93396945ba602476b19a1bd3f0d4a285cb39663bdf14c8da5016df39b67208af420641b6038cbe170ecbd0531094abc4f8ac33168abbdc5ac81f22582b4b7c4f4c29f8749bc13363afe5a7559734d4319681806901e71d9719da060a971d30d05af09632fad93d94567e70708527370b19e54bcb8c0295c463d2a9103c6a59c66cea2d4ac35022db872f453ea35e3fbd64dee46267f0722e6131624126d2b10d5cda6c9929d98a5b3a4eac043cddabfe9db48ffd09d070cf5882ec93a17f2160543aee04c339e494fb07d32d5d308483e9f756e14236dcc68b85709f6df5d720aade2bc3502b54f5d88de0bd5261e5eca8a34ec9361cc5c60294843ef4095f476af6a1e938b1b9894dae3dfed91dfa05f9970992b671d3058e6df26e23a21fd598b7d4d2b2cb44763c7b5cd1dd8ea124f320d0c5c9545852c098f257e718bd905a1af00f1c0abda1bdc690f74d5630bf94350f6ad74fad7144e6e78b15353d745872e620e5a8f712b792b5f1ae7c5c87d5a46e20d3deb9eadc8795e712c05249809169f02a931db0fc9e249b711c3771b5a83f442860989b1e9f86d695a21ebfe80c13c18c7c4eb7ce2d079905ff84d12 },
      { u:= 7371,L:= 816,b0:= 2774,v:= 0x960c169785b78331401e90c6c5ad8dee990b607e154b69223df9dd65f6844f4a6fce2613827ba721e8889493f48d55139dde2c7ef3f5816ad16bbf79fa7dafc58403c098e15cc600ae4ed97aff5cdb72d1938d042185e62efb2a2a91d34baae583d2c9e948a152c73aa7b06e8dc695a99713b83705c6a54facf81909e97335e18c19fe057fcc87ec17a98ae51303e56a965bafd7f08772de37032c62e6a8cae7d7dbacdff0b31016198920e9a38532ffb423e0bf85a6faaada0ec3ad2006e5388b7e8e1cf6718c8c3e64133d5df0190444e7a11b582712cf6226d3f91c3702ac149f4471cc263a363f170db3c9df9e33def5e98308a9ab581812a5c47591b3e09e09721876fc8a25e288fcd93fc8cc69e76e38ddccd9342191e443518605df5e1011c986afe2951cf9535ad26724879fdce58dfdcf0c541c68d7bcb44e1186787eebbab74a5fc1c2531510a494ccc89392558214a35fd6238e290aba116c80d2fe95fe92c0c68c6a34a6b622b06535a180cb33c654029c72d00aa68fb6d99f8db56b95f67f66e180675d71e7e6137b34615dd1c3070489f2b0b1f2c1b783028d2d48eea5a53f9dc9a08944418e456d0aa8461899e53ea431dfe760f22a5651e1fab9e452de0710076f4c4e378daebb213fdedb3a268c97e222239d1bd8aefb779de66f0c7e9cbb441400011f9103bfba6bfafae62f33c0c4a98ac12ce04f8631f95033abd0cd9fd44b464ae675445fb7de056f4c8fe3834e27c09ef02e5713099988672400c13fdbbf8ca5cac32ae2c47d230cbf5126ef1a74c9199a06f25acaa3cbfdda9439410a27efa362bf0822c430dd423f5dee2a49de1f7db0df085a18b593cbf0b9a9441af5bd202f09cf09a915d276220d514d89489b5bd1c3d10e94f47f0ab7190523cf081ac120fc2313cd68924eae69f80b67c9a939923628aa2a168744180eec845e21f04ccf2d652fa2eefc626be347bd54cf9908f910ce0722de7933f69d522f845e20cb697016af9f52b321d9d4fbeb47f60f3ecc3a39639a4eda38a4379af389a6be545eef9dc20edea5e8f45b7632c3af77f731b400f8ab696bd7af2682be26346f3c7f96b9b0bc9d5427b73b9c5326090e560430e91ce81626e73d904e20a649f7f68ad44fee77f0b8ae35dd946fd3dde08b6f94670ab374a00913c338d559272d9527b3f65b3d24245478fdcf0959fe6a4889322a53225f2674f90f3a8c6a723ee60652f6ecffc58810d2e49522ab13b648b2be7cfa34936834a44c6dc71c7ae109e270907a3ac70b07b192c58b3aa45b241664f5cb72844bf87e5bf68bd072539ad2e6a04267b5e8b75fe883c9fba69d440d1107d86c8ddf3cc2da92ff03f1c94c7fa0a },
      { u:= 8188,L:= 907,b0:= 3081,v:= 0x1c3c572ee82d6bffb0f4b5eec358c1d3256155a29830225b6edfc8a60e08f6ea4b6bee53adfa12eea3b713f55be821e0091d21852e58a3496a4decf8e18bb132cf429412432757ab2b9456caeafdde783fa291f7995ecd561c0f645b85d9264dfc8ec86c9d452a4c72baed81b2ceec6369f56aeff3ca95df230523700bb514c740d7993acd62f7efebb436db8bce00d45fa387da86fa968e98b482ddffdcbaabac81785b55629af0ff1bdfd6c6643d140a1928a3e5f272d9a47ffbe8e9c851ab86c4d9ced0d4f842f1632726d2320efd9998f4abdb900e6ab406dd109e22406238fe473906f775c8cb35e70a83aecf8c9aebb00ba602a417013a29ca8054819931717257fd5a8f9c74df2989793f7c37a5e2d5efcf37da5714416856438889ec6482f0e62a1a1d56fffac80386a09900ebae9ab31a0b7f5e0942829ea847f016c31c895989321a74ddcc18ec2f36204558f1c54a6f41372f3bf20849020b25d9dbd2ae70f6cb2eef231f7b32503ede25fbf08f4bc790f6684c137beca8f69f5e9ac747d55cbc91cd1dcb136f06296770524669768aeeab35294cd328675fe454384d6552f7aefe69efe3f34508b1945454f5e95e6bc5ef5111701ecbeaff03f9edf9aeb7ae06de53fb19e164bfabc3ca344a8f10c81d9cce8b7efa4b2d8f9f3ac1a18cf3509eb1a1d001787a0e78a93af4b939f1552366174317df31b2eeb4f5b48068029d72b6dd52c38faba31c49ecc43c66b0ced31244fe6c4028545ae02506b1078ff39065abb50768a9ba2b28703e908ecc19c1f316fe95e8ef4d1a8b3b7d162602f2582ec80829b9f81bb1605c800a75b4a128cad8aeaf608cd80588cb9f7c81155c8be1a489e0ebaec37aea9e0d0a414dd7b21cc34580206661e4568092152637e414832f88a5eb5d76135eb713d4607b9da91377bb44a0949b3797943962b357fe8130f5e0fdb209c95efd6d1401fb3ddbee3f91e4c9c9f34e4441409935b86e09d97cd8bf691a9ef3cdcd9927281bcd1ddf90010212735e3d46f776fbfc93c0e467db25ba1c086c7825b10670ac41ca9a917690db05ef5e2eced75cb640d8ef235f219afa5fa40e6e53872a1c96051ca91638d7880950e6c8e6fb2a22ff95d4502896208c10ea51e7db0d277eba42066d11b233d01f24b2ce6fd7a96d8e70ef2b0dd5894e3bb4a909fc9807801efbef78df894c8eb0755f1cc2b10fa35457d66ca05d9715687c3c09487bddcb31323ae48f31d9a8c44431ebc05bc0860fa8eadf11e00fc758f6a4dbe6058ba3ee98d03c37dc74bbf16ecba6a35bfe7ca51c9cadb8065b45c0db9b64567af388fb06bac5acd4a9764e9c412749927c57a49646af9d150eced868b96660da72d944dd925f10b3b15c9ecc8ba582f908d0af4fd418620c17dc1587c2e969f24e1e1700c0921f76d9e3e5f5e15dfcd326f17eaa1621b043626506b551bf96c3361fe3ef3f1b8a6af216b9586137c135cf53c01cebb0a18bd803c7e8f86b77d6182bb7020410469a0fbad },
      { u:= 9096,L:= 595,b0:= 3423,v:= 0x252df2885986272375c35da98be8aacd5fe9a738a382dc8d81e2f0a2b61777a6063cd6a4d451601d1a3c228494567b73468695cc2453a273c45260a7531e401c0f53421593b87d3f518c9a756daa35588bb39c8c82129a5d716c410171d2bafa3422a5b189a6bc92cd506440c18ace0588b94c4db22cae10d91d53e4e337133d3ccccfa1bf2ccbfd75f26622f308ad33c9b82dcd9e884afdbfb66a89ac577e917aea5eb43d58ddf2caa82d2244142db91e370988df0df7ce0b1913ff5dbbcdf2c3484dc72752e372442d05b9131da8426ceda9cb94367324e223be462eb96bb6da50d26b308891e498c9b56b008823149013eb48667c23030d5ed8e50694d092bb92569bc28e28f31548ece656561848c07713706e20a566fdcaddce81329ec7d1782a8e5c8494a60d2a58eae0dc7784bcc02213700d30f596a1779d6d247a8c06f5c7ce48066537338fe9690909402194ed91c8dea1c9eed0215e85aaf4da7cc14490fa7ac268bfe953c46b65db5b0c502da51571e3aac5e56a93fae62f9bc18b8c72236a92ec3ba6e866469fc6aad19acfb6e90d69907237537ce778d618f9b73a23674383f722d8b304f28d822f59077935a02a64c5b4a49b14ac405a919b8a5fb6543ccf20be99c4eef2b4b06b418d10a29f908279eecf8675eefaa65bac58409731f5b54e4c0c5fc9dc3be3fc2372d7f5ee66e2993c8450cd79663727826bf441e4f03302e3a95051fe1a42b06d343f998af17c8fdba33cdc34e05e03ddf91ca5a16d5159be0137b766acfeaf67dee96c28e1b418e33d7136e9ccb1df4fdf72c5ed4919ae76711fc71ecef5db6627a67bd2ecbfd009440ac898aa9bd97197ec954e10ca54ec0c06ecabf16f11866c27dd0b76bd4fbd4438b303e9c82ce11a7887f353ab14fbfda72701500e0207657e8ab7810745055a8d1471fa044aaf4a30d3036d1e53893dcdb2386668afdc875684e49a9c20fcf1be991297f7c0fe9d674c59c12e65c69f894f2cc30d88760ef851457a93dad299ef9c2c985c43e0d988816ecff360535e70893a14dcd6a25bf69efad6ca78185517f23e3bebf7759074b82ce9d14311106f44b6bffeedd0a85abe43364f9a48a994a9d98d2ba19853df1da2a79ac942a42255d2ee2cc7c3df714c2ba53b05f2a0551355f3aff839d004c1c2973febdc491aae8e5cf5bde46fc6bd001d3051bfa6b182414eafb35b80d625900f9149a6f26588e1ef9f1fd5fb23f81d9634efa4b7ba48510206911f84537aa3850ae60753d48db837b4ab38f2e8b0aaa071c4e9bfcd57f96d727539759512e1cf53f3cd2b7957f10c835b4ee6b3f71dbb5f399be29774cac3ba9e149c91363d1eb2a514b835370ef795beff17138ac6d865f9613853c1fedb923e11d18815138a8c495d898e449fe8b3293d0979761aa7175051e8fb7656ed19c89c7c86518dad865f7a225fdf3ecdc7747fad50512e5041828032a0b2bfa746108a2f4daf53d3c53e27a9dfb273e1cb0127fdd06d7f02cc0f0a768b74dc64b102f036de97ca8c69211697e9105b203ee8bf3eb415e2fe5a9663ac06e280d63997cb33be84a613be39db3d6f36f65f9d22f7c7a20f8ba4311ed5ef0130a38802569cfbc0f4220a85271ce6669ed21fa17d1068e073cd9fd7e52df95d5208fe16c96697e75bc450c2992d513a67f16e0493977fb },
    ]
  let u235:List Math.B699.N4.d0:= u143
  let u236:List Math.B699.N4.d0:= u183 ++ u235
  let u237:List Math.B699.N4.d0:= u181 ++ u236
  let u238:List Math.B699.N4.d0:= u179 ++ u237
  let u239:List Math.B699.N4.d0:=
    u177 ++ u238
  let u185:List Math.B699.N4.d0:=
    [
      { u:= 32,L:= 1,b0:= 17,v:= 0x59befac87bb7 },
      { u:= 34,L:= 0,b0:= 18,v:= 0x396ffca944f },
      { u:= 35,L:= 2,b0:= 19,v:= 0xde332ce7af81f },
      { u:= 38,L:= 0,b0:= 20,v:= 0x5e635d38dd62d4 },
      { u:= 39,L:= 2,b0:= 21,v:= 0x19fbf92da7666ff },
      { u:= 42,L:= 3,b0:= 23,v:= 0x45c681fd43e9db8a },
      { u:= 46,L:= 2,b0:= 25,v:= 0x4862f5bb41f6096dd5 },
      { u:= 49,L:= 4,b0:= 27,v:= 0x2adb2ee639af7642aa7 },
      { u:= 54,L:= 4,b0:= 29,v:= 0x277f8781786cc2a935912 },
      { u:= 59,L:= 5,b0:= 32,v:= 0x4a6e04f1f752ed44e44ebf },
      { u:= 65,L:= 5,b0:= 35,v:= 0x1669a3b20272aff407913cec9 },
      { u:= 71,L:= 5,b0:= 39,v:= 0x79001df2427df1972c9643a6f73 },
      { u:= 77,L:= 6,b0:= 42,v:= 0x35cb97a6c9607497e78f92ad3386b2 },
      { u:= 84,L:= 6,b0:= 46,v:= 0x13943fcd87980291c38417f10e3392c4f },
      { u:= 91,L:= 8,b0:= 50,v:= 0x1344feb51ec2bbd9af0ec512f2d4a8d8d0e6 },
      { u:= 100,L:= 9,b0:= 55,v:= 0x28a22338dd42040e885f79ac8ceca8fbc61c855 },
    ]
  let u187:List Math.B699.N4.d0:=
    [
      { u:= 110,L:= 9,b0:= 60,v:= 0x8be8cb072c1b04f220569f15487b0f06f3ff7c40eb },
      { u:= 120,L:= 11,b0:= 66,v:= 0x1b9f021261cd5c8efa7c96823490fe03bc1e5fb95cbc341 },
      { u:= 132,L:= 12,b0:= 72,v:= 0x2ef84fdd31aff21fc6b5d51bbac568811e9e66d7808b0a53ddb },
      { u:= 145,L:= 14,b0:= 79,v:= 0xc8293d4a287aef8b7719cf0255c7a8e58d0a50e8ed6d01fd605a37b },
      { u:= 160,L:= 16,b0:= 88,v:= 0x44d253ef9d8685e640c2b2e054e6319cc115e35d8d9b7f0c09a6c38a130258 },
      { u:= 177,L:= 17,b0:= 97,v:= 0x3e133f3797228bb65cc90aba9fda5caf7f1191a9ed944d4bc67e0c290870047706f2 },
      { u:= 195,L:= 19,b0:= 107,v:= 0x149756cdc9fc7d5eaa83a6bfeb6131ac0cb41af9f1b4ba227e7d2006a6888f5d8f14f51383b1 },
      { u:= 215,L:= 21,b0:= 118,v:= 0x578a322ea122b0494b4a0d6e966ff45ae4b36b9186e1635aae607ae768c6ed7c81d022ebba29a30bf2b },
      { u:= 237,L:= 24,b0:= 130,v:= 0x5e88191d7499f959ce1f1e4059cec434345dde4d7d7043b14a6740c6fa39759f678e6efea4b1867604f313284dc },
      { u:= 262,L:= 27,b0:= 144,v:= 0x309860db3d725eb1360bd75f53a2616fba1d6873f34b5d60f43b46a0e3688c0e33d1917984d2a3eada5408b066b1ff5d30ee4 },
      { u:= 290,L:= 30,b0:= 159,v:= 0x35aee9087434ef816a055a1f859226ea3be2676ca3aa07e8e7166d1ae380d7eeb44a9de541fa8a958cc14a4274a205791dcbbd4fa0c529ae },
      { u:= 321,L:= 33,b0:= 176,v:= 0x3ab53c6b00dcd2c2ec3ecb1885d054485a938d4aa5c990e8280ecdc415acebddb218f5eee66cc2b848a04d46a4c93c06ff2ba5f33251beb2de93cfef8027 },
      { u:= 355,L:= 37,b0:= 195,v:= 0x24d594b6ad084bfe2f22e3f657934121a0999a15e002ee974ce5b64c2e0a1306a0ab213841002303bcec71e661d08ccd3612595826c734707ac111c1bbce0d8e64b25e84d },
      { u:= 393,L:= 41,b0:= 216,v:= 0x23cf44cdaf3e4110c524e492db0ed8a994b46753ab80d3f2ae70a8b065b444e03a2ade26e5f8a5561b1bb16d6424df62f73c55fb3980fb134259fd53ada749d06aa756300d4e31c21bde73a7 },
      { u:= 435,L:= 46,b0:= 239,v:= 0x26521a3f1b267669d13e6f56736e31ca05292388b20accc670ba0fccdc32849d1824b3e2b776efa0abc16e52f300cd4dfeedcc1ec81735b2c920862184ea28a334794065b98c756191da5c7d6a23788bef3b440f },
      { u:= 482,L:= 50,b0:= 265,v:= 0xa45117a892466b74e2b3cb3516a7b05134a3ef474ee6f35f28b9e2ce1ab57791477cb72a7c39151945924740e1a8bc53185350e10ef0ecf9c1e82c8457466b5d12414777a8fa1768a9f09e49085ce9d14141f28fb17674d97fa4062c72 },
    ]
  let u189:List Math.B699.N4.d0:=
    [
      { u:= 533,L:= 57,b0:= 293,v:= 0x4d935588f44ae49b2bd40a9cec516e04a4675355ac6933eaf0b4b1312e7932f15c1b63568f52a5105fe94cee0fe994465b023b5f277482e5048f80742cea4fd5eecaa3070a7365ed38b635bd98cb48f4e7beaf15d7685fac2af800cdd19d2f0bb7cd75428a3594 },
      { u:= 591,L:= 62,b0:= 325,v:= 0x1c23aa84bc630d60c8d29bb3e20301648c5d012cf6323a1a56e715987c75c016c904570e74f4c1e34074829d970bcf2660aa1b33cdaa7f0e1c116a85999f9b6e22a6370f53ef820f8ce42d675688823064cf5d519d4be1ce05322843cd8a76165b3ee6b4b9eebc88757ffa389dd08d02bdf },
      { u:= 654,L:= 70,b0:= 360,v:= 0x4bc9bd7278ad06d51498e14fbe9d5a45b68271be6df44a4d6f00453474367f8660ee6937bb6038c2f0ca6fe8c9edffb2bd9ede11446f6253b2a056a88374d67665132bc40776f8e2856b52e714678d17aafe6478163ce37a9147b93e835982fe13038fc254b852e7cfda502eaa483bb802e54324469a937e13ac94ef66fad },
      { u:= 725,L:= 78,b0:= 399,v:= 0xc05c9e2f648255c17ead5a7a56ffbe6a853ab52d35908088d322b63eb1a36add47eb24d481077189cae4cc5f4cfd67136fe6693e4f7893985cdde413ed10c6e24bdb1545d7c5328d9b9a5ace81b587fda08f096814cdb1ebb221643985fb3bf11e51c0bd17813d1b83c73de52e80ae17b03243d446156f3527f2b210f2a51874a62c16d04c6b4ea694d12304 },
      { u:= 804,L:= 87,b0:= 443,v:= 0xa6a3cbc5ee39a8097f45bc657538377644fe7dfc933319fc12b30b684a94ece17f136dc3e0a373ffb949eca93cbe46ea31214b703453fc3a366612d2222a29d7a63de7e0d7e56846df47daa5b0c56def91c1e6e66387f109aab0652ff694619c7e2aee703f103939aeda75a7df4e2aa8f90a04759499811c48646faef63d2969e1756f38a769d537960a532c26e54a433c315fd3114841395f701fa },
      { u:= 892,L:= 97,b0:= 491,v:= 0x4e30714a6cb4a335a051496e92e236a4a5b32fa10133a70fa44f374f2ca92b18c5e973a1ddf426bbf4c1bf2a0b7959cda8defec47fae9f010c2caa3afa6e7e9b2f347a6ab3fbfb65c87cd34340367044bf182404a6122a8c992de50a88f3c2be7c56365819ae71d6586058529c2b7d6c4c3f843b3cd34d5e81b2548cb66c8810104b3c2472cc13c58669307189e7cb2020d9277c96e220cb8a32c13fa5e8b313345b2b0c52094e9b473f543c },
      { u:= 990,L:= 108,b0:= 545,v:= 0x607f9e910ebe4ae78b59a151aeded8d8005cc71561dac3a7f9719a3e1f759d3f5f5cc0af059c4c951c5d66ca7de3e44cc40f44c141bd83a8c593fe8d3fb084db026061de75532e9f5bf068d337f9705374466804acfa455aaa45b6e58c563da417406725d81d7a3276013d5f55ce2c2af51bbd539efc7bf8e41ab24ac75678b0c7541c70ba159b7b9665345bbccc45d82697ded0b5309115c5bb67f5b854a2e9ef75f1446abb58d02a325c01e7c22438208963db3f12449eb9adb557042f40 },
      { u:= 1099,L:= 119,b0:= 605,v:= 0x543253c4a795edfdbce02f9222faf8e58c6aa4b4a4c26b5805dd443ff14dcf87b1794b017c78c30e25ef7e2affe7aaeba2183c7666e5bb8ce220439c09a906ace78b5d3932566df71ae0ae0bd3498ffa525c1bd1709bc9deee83a14ca41c6a3b93331722868a6882684ac2dc2069f8a557b0e649a122f781f7f72f1ca69ea1ac58aaa4c1b5ba8f5921ed5a38cb8d7be2e15685810bc4e299588ca279effecd0aac91f99d9f597e656ab6177365a0ade6ef71c2b43bf3cd8294ae93483e34bc801dccb5cf0a8baab217261c29dc728c0b6f80c8e35 },
      { u:= 1219,L:= 133,b0:= 672,v:= 0x513d4e753eec1981c9f36aa433b42f35b0934348f443a7770eb71a04fab8dbf9046acd725a83cc499b662653a8c254c97457557bee2d1e32f403f69330674a1b6adc164df86e8530a00dce2f4b2fe6d1e483785013c49a1e6c4da999f3abe924a2bac1d578a77f40e0921a27d86ff51129b7d0ba1edc3f3f2fa7fad43995e034a1ebd6e8e07e770f0c81bebfa0bfaac702d421e74dbe2b9e75e2c81467b9f951882f4afb599398c38cde9849ab00ecc630574cb5812689691e73a9cacc95645fb85852b3cdc570e021de6e1db1788117cdf0fd7b4e9b3391d60ca9125494709f3473a6c95895491fe3124eb3 },
      { u:= 1353,L:= 149,b0:= 746,v:= 0x474fbf78be76a80840b3773d0b086c515764d2d28858602412f01d840d004e15cf5f679f3c70cff0d2c6195a2294f5c5b4fe0df3f31ec02e33c405e4a520755ff754ca090adb4fdfa7959d5eb0c2e81b41a9d159f16fbd7d840b575d0a684f45d032f3e072469fd732d1479b2c496f066d512b81966c923e1653c2b8f9cce3dbd5b6ef9e51998b98278787abd4c02ff82af7b24c14ef6d9b0b494713d15395cfa8f05badb03866bd28ed4c7071e7120ce9691ae44c2d86203bf9aa0ac65d31340ebd68831dc3ecc2be6f4e30ab183c9a20b38a464677f013b8cee6ef9ee32f2e5b08e715cbf117097595b6e4ae535aa10fb0bc8edbbb22194ab58e254adfd88877cab0445634 },
      { u:= 1503,L:= 165,b0:= 828,v:= 0x221bb372e1a15b8337bd67901e645cefdc3dd67b4a40d05fb87f508b459dd276dd3632ed73ae0e07ed4e9a85fcbaa8a794882a96e81ba96f5b627fb9d89306708483e7485635ec5228daa5c1260b6eb404ba5942ce776c8b0cec89e14705adc2113454237612a3cd1c57f43bee8aee9d4a915c70341deaeaf291f04a95fa0aaabcc0ea821275d8b6c890db566fd7b3e985d7ae46b9ed85809a10e362c48a2552cef84126dacb2330fb2392474b0d81a7a5ce0f05fc1461920691b41593fcde50aea682995e710eaa09023774fe0fa12d197ac4ba41c33187a7e30b42f288e77887b27cd8a48f311eb92d3c3ee989a8732bc0abcdacc1972b89f2035c98ff85ce59e008027ec5a088b4de545775ba90f3c39028853b6f54774407019fc56b55758c473 },
      { u:= 1669,L:= 95,b0:= 920,v:= 0x1a1bc5ccbbec4d1675a4c716ca2cc2b8845f25ba83ef064b05950683b590bd27a3463cca51dc7e31beb7491170fd0f6d4ce4887137285b0576f3e39b769e51f4ccf9ebd38440ea0eacbdefdb2246a5582067fed7f446a415d3b98834aee7c619914b10b698b3a885825a73c27276ef96a9253b5b87b530e2db758c87ba3d65644463432f057aa22fb42f7aedbbbdd6e07c4083acc2e26d446b112a359d0db9a509dc282cdc42d2baf1370cda1e3accf4b49f2f5cb24d397820f72389b8154d9cdfd18c7095e2d7ef6b484c5ed5262103fdc1c67fa9845b83e92c76746c9f3f5c853a5e7ddf0d3c5cf4bebb030b2175c96536e7ddb19b9383738a2d2f07fc9e129df9a7d042d0c2040eeae5d42e1d106959fc8621cc47687e9fdc0539a57b2b3427c69c84d9dba2a0b78e15b9e6d23d6e0ddd0e4c896ccc6fa46add1df4a49971a026b3 },
    ]
  let u145:List Math.B699.N4.d0:=
    [
      { u:= 1765,L:= 194,b0:= 973,v:= 0x62eb8d73d69c935e0fb2954526942efa40c3874e2d8ed97dcf40b5ec5e92d1a81d4871d236160afa712fc5654a489d4a048bfea246b7cf150a5a5f38e86637746c1e539baf2fb1c64911bf1a9a8dab754256362ddb43a0df1d54a27998000ecd5e60037187ff29c6c654f0087ed41f64c1167d82a34a24c4ef9456dd26769dd3e01498a643f3181dffd7a4b5c130601bda69d570ac4b4374190cf5f30c6487ac552aa54c13d15a68b6107547d8f9f475be5460f1d1a7ab9e98411ab9501f44f4c7f2e5ab3d4d72d9548ebfcca5df95e4b4bbb6fbc1d8a4104e3f7c6829b8b0d304d649d2e8c440ce20dbc16de669e8d1375bd9ef49ac14dc4d8cc74d0dbf9f9655e34720a920874a654b5fb477bb052176b6de9f2b1c9bb0976ba39b100da96f7d6abba94dbb78543a435825aa85178ea596ae7c897b32a27019ccb0c7e25a83b28067005de939c5451819e9a4d04610b0f90b86af2 },
      { u:= 1960,L:= 215,b0:= 1080,v:= 0xd154702d2edba41cf62e7eb28cfc2ac2f521704966af4895b61d7cb0aa14f4f5acfc97c24196ca59f283fa0c7db20f6c5da638655a948b943ed438836ebce6a8658ecbda51e7ac1bcc43b7a31fb5e37dfe33414dd0b0db7a4f9f71e294fd0d93f2a32f2cf6f66260eefe2848e5ca5b3a9bfb04e130f4cfb6991ad28e53d6d0e0e6f790ab5f3f8e9c20afd11f21053f69b3a55fe87bf5fe9a00a6721cff47b007437d79114399c168f964dd90821e2686663232e50de237aa2e33348f1053aec4bd185e1b9d7dd5508a3882c84332507028de6984c4a66e4541d967a0247bb97302b41e1721ebf0f9273fead4864a2aaab882e21de0cfcde95872c89563854d95017a1ed5173c88edcafaec1c0d682c3a5128aa67a1dc30516e8a36c58d14f3319fd468b9ad1d31d6e9e752c33a6c9114b2eac7f434b3b60130e82071afac65c8205f7e2237567d0062d230ba69382f3dcc36fd218a39164f439f046b1a758824086f3cd99ae4c2d287d3ecd716098afbdf6f9715268c77eefbd4c8 },
      { u:= 2176,L:= 239,b0:= 1199,v:= 0x32d9f2f14b4044ebb626caebcbc1164b61a005950b111c15e7a0ad6f57af6b65fa5dec0558e88b3408f40affb3d7af662bd70c957e6136f00604b7da32f34ee86bbdb78ba6cbe2b6b2c5912e189e96c1b885f7d7294af116f5b011e3deb829b72c60bd2a3e196067bd186846369e8d4ffbb37135bf8c203baf13d842face1345bb9020110bba6c706892ecc0596173892c5a63ac88428d33fb5086f0b566abe62986d3ed4b682a393c6c655325ec076bd3bb8b5ab7cf183afe80e65025e810010b3fc12f22b0174fd786f85183c0e5d7cd9234149a2ea07cc38495f095ff299c189e1ff4c35402aeed07e42ce369c6a04b69452aca6c6bf8a2032e3881c8314a76ca6e2ea77116f4741a8da4eca74c40dba11479b60b6676ed32ff95c51722783f9a5710e3814e7839a8769953ac6b2f11548148bb4fbaa84f806a8b6b6ed49c35fe89c685bd07d2fde3047e0d811b4e9eb031afe167097895d5f0cceb1af7eb422c6afe31e86ea742e34ea61227cb77b39548fa2fbab9bbfdfa94baf704be4ea022827065dc2d37e1c973871cd28bc0255c14f371030d89dc7e33d2f4e68023250846cd32 },
      { u:= 2416,L:= 267,b0:= 1332,v:= 0x804fedf00394145953b1bd2e59b25f8662dfef2afae421a853d83bf9242d45e79425c3a2bf8e1ef2d0b707146add9cdd20a0767cc6dded98027288d0a9f31f80de7d5305be4bee5f438883efe53e80cdcddf2517fd9c8d51f1fae4aee4a6295b5d59eee7dfc5236e6ac5c51a05d357ffd4b96dd61b6cdaf49bc019c36cb5f9deaad01e18099dc6d0e506d7f80544611d9d45f0de264825e88fb814a894650d8895b698d3b24a97f31e112c82ae70fc31521ce9204aafcbe0ad5e16d2b16fd18eb697e03e93623d1d0956322781d3e8e7fe5d50289a6d9e10f3e60ce8dee24c28e6d09184ec1e6b9081cf6cc0ea94a7cce79c409f4ee1d73430318434cf4832b5d24a70a52967bd216fcda4d7c09fa6a38371c0e5be086d6ac7c6fe60133f2dd485a9c5f689c547d7dc0f04984a4429897e21f74e22b8d80586981fd45539dc4e8190ed334c8de446c5ad36671f99f06ce5e74e1c9e98b4f9e9a42c8c8d52a85ad086c07ef3b70a42d803feddffa1a0ca732118d60879a8d17bf8cdd13d0244bb9abf5c0de41b4fa2f975f68e3bce1ff00fd1cf0193b409f0958ab3b8892ed13932fe8e2360fd08e8a2dbc27dba81038c7bed592d49cb90b7d34b4179355b78aaa81a46b58ebc12e4a947b33f825cf30ba5c2fe8 },
      { u:= 2684,L:= 296,b0:= 1479,v:= 0x13a13505c1ad9738b4a9d24b1dce947d9eae3d1b4ac367176858c43049d43b11c89755a28f6fb159ab1eb84a0426ac534014023be27941409e5d72108c49125c838b1f11e6d2e4d4773edcf447d8833aa1e47b78525eacfe8f9bc737950dcea7aaf2ade62738d365441f001ee94dd0c893dc4bcbccf6ea90dac69ba6766f17c12ecb4815f150214eafcd10ac87049cce32662f1be9eef7f7ba007e04b8a241ac7ad3c17a7700e0c64bb7516a597b9e1ba7871965fdbd47c9197af672e35d0fa7d723c5356616b0b9f8716656245e58ea865c101215a90c13b7759da75e3db223845606e4cc8cd7e95baa611fa11859aecfd95da01413b0327d895ecb741ea652a3876b502aa38450b6ddcf78ff1097afc4a36b85b37758da2689be1dc0bb02e9d3ea7882657493eb04e46a66c9ebb24e33a66db73cb63c06c1ded729587fbc1d609f0d0d04e68cf39ee0f1ae4e79d3e0a7b77142d01a8a550f6f51b63de65eee9325446dff6f39a2cddd95bcb0b610daed53c4bb5f4371d2d0f3ae5118e4392eb41e14203d7fee40406288fc3fc4c682f1b86e6cbf91b18443adbdc74920a36aa0e79f0b74ef13477b8491ff1f760fee56dbe8a43d2ea049416e208aad62517d9e0cd0756c664bc4455110d2a943bbed378451b5767f46b2f1d101b7f9e0c91c78825a8bfb909d1e71c233f39ef9eab6a58e308068faf87185301c19c80e4c01cbcec228cbc6dc },
      { u:= 2981,L:= 329,b0:= 1643,v:= 0xde4c19c0beb1b5e953dab79f60ccba742c3a99b2c1acd655edd570035825b1f4cdd7e62a898a1cce53685779d34403e00d65cec75f2e1898fda24864d23bd3dff30a42ea61bf1dcdd7353d5f3cb862ae17470031cac181f5de97bf45e43812f23d5b054f189adc8d0fb7d94c97a2cda2efbe629cca3d0940a2fb0449c9ea60e5993aad508887b08f6aee7844350f08ec2e32046efeba5e3a9b8e89d1022ee2338ef79d594717b4dff38ebc906619197304671fafa29aea49d24fe1cc9b711a58ca94373cf8fc866418270da9c4b2ae8cd98b77639e45e9750c3a4928cbb6501fe55596c7fa8889fcef2c18ca7f71e9bd0322ddbc4fefe60bdb852168f2201087080d05cac1f116d944cccb07410dacb639e4fbfc61675adf49ae59c71ccb84e6829bb9c6956b22f39bee78e3d879a50a4a7404e0552b9ddf681274180400038841042c4b6b207b30276c779a1b6583887a6f391fc09c3101cb84554e6a62b006bc4aa3bd7be62045e3b5175da40fe806e9d24da792daa3f2a815f3606be8678ee3b89ce7b7cfafda96b8653324178eedce8afc5885f9f8f01e934c054a1e38256df979b699186f93fb1d260bab5afd46d126dc9eeb6d661d9cb49904cc8b5bfdd46c4c84619a94db4ad4e23b9ee7d8f3b8ce6095d85c9ef6f3a59465fbc59a8474ab7e65934d23fdec58de35a72210006829edb88b09cc86aab49d6c0a5c7199febc9f125b524fc914039579d131fcba2cd1160cd7b64e557b1436ae6e0e62c7f15fa8f10cf86de6ada1338cf5a3ca06a732f0a299c20b71f3e0718152bfd7234 },
      { u:= 3311,L:= 364,b0:= 1825,v:= 0xab08a5747224deb55bdeba35d330498844229861065e72861871623b22cc57e53fa7b48782364dbbe9a0f8a6db96d4443745e7f5c8c045888d86f8bf216e7b0c0b0ca3cee631574bf675823f26d04b9176a3b2b9a89146ee70847a71e7c3d1890a17a9fd3ee24b4ce1edb1a777d7f27d9e620acd4d6c436c4b331fa82c4e9bfe078474bdce520560457b96c3b9f4f48500395256289c0033cfcb8e73d417c46fdbe11b576316c5fcad66707135c806e920ce69adbddd47f0026ced556033b5369e0cb6f74bdec5f1c134c0aedf940bd777fc7630e8245e1afc1247a06b651923f76dffa71e288ae42e0dee740bd85eefa31731717de6d642714d854a98e8d9d5d142ca2137d4eb17a286e1e6681d526853427bc1b65ac152a6ae42a2bbcaae90b38483e47a82df82b4e0ea5212caeba04019e00a3520060c732f32b0aded6c31f5b63aebb549177ae7aa08a3abb4fba9b3324b6dd16d62e0e3d120624ac79b0656afd6c8122ce1df0c2799396ba56316b3d28dd783b958c6a4f2ca42feee941c8e5aa851c4082c16a283eee1bdcbe6327de852e2a0b94b01c15e1788ecdbb3ba711703c793fb4199318bb9667f0f985924137a2e73c0b21804b7cc1b94cd66810632c8973d515cc221f3170349a4bd4cba0c2e01256ab9931ea81f8f42c6607db5aad45d9e779c1d119162984457fe60a9f3a5669a67840462e6992f0314a1267779f402982e8e592a6d2d20f6dde4a1c6c8423dbb527cd0fa4e2061893066a4956356638694fafef15c767b6f8054cd5b01706536176c8b080c0013960aee1ca357dc80571d3e15c25b3ba7041a3e9c3fcaa715c00cf351eb916aa38431b7db3d15b421700f89af25880aa81a5810d209da88dc2c762f8e808b71f45b294bcef },
      { u:= 3676,L:= 406,b0:= 2026,v:= 0x5d7324ca10ad2d325366f8a78afe504465f569c83025a2761996388e4ab4128c43d3ff587f240767a0d5f41ee2b46da0677c62b7cb2e2cb40534a2f8aa3c89211e6797dc756538d37f454e99f5c736aafa99fa83c4d3ab7bdbcf03694485123b14b342aa5cb519280d13fd2a75e4ebcc54a940086eef3a363f01e48e17996b89e0e5af6d678116fe0f9921d3a72455e39e84e7fe25f0fbe729a7beb4ef292532235890c93e89dbfbb078ea0bdf51bb9ab0782e0852ad58da8b8053bb05230c36104dd8c13b44cff809ede976864c545f1bc04075cae241fa3961c62058a93575cc94ac1540d9ab30aae1b1f72d7d93d9145464c670271a6f2f4f640cc1ec87fd92bebb0d9403db3660863e09cab15b8393f1ecaaf8ddc160a1c752ee5d965b6ebff89dba0ec3ba2720970444bfc442fb9d5209a650a25b7946dea724822abcc0a26ac83a1e9618b360f455a15fb51a20ca2002b49f4f731f6a17d4afcea2b8b2514bc72fc98e0fbad6f8f4f525fd847783a59ee00a3def03bb0cfa7c1c69880dabc931ae7c5a17901b95c2afb5ffe285b94bacabd56e685d427a68e42eeeb655ce6b41bc260f30efc355970847f163fe76f4d2c2dd87125e7f9f63dab1d7437c152c2f287e0ed6de5d1587c2cf49e36c1d2526dc8c9f794934e9284d7aeefbdb61e84039db2df097b319bd3b4f01e2c56e3b44c3c4d845d9b2a975e474e412771a2ef03b6eae3de8ce2da423a15e87520623087af61a39d1ace1c80bdd5f02b8d9f995d378a47b20d87b5fd22376105efac667173d4d558001f689ab0c92a3a77c66b2120c6cb740b3224a5f678a62a9e84794294bc933e805d6af032a3027f3674bf65013927dfe410775d43cf61d337d75f7bd634573f286e00c2d4623260ed22ddfff68df68c5914026e55f83c7c77f1a2a123733d8eab5518259831701b846859018509308c7faa69153d56c8d6e936d69b177c0d8bf49a8e788ecd194d586afffc0bda3b9 },
      { u:= 4083,L:= 451,b0:= 2251,v:= 0x21728f7fe42c44849b5d836b984213bdf823e405f9087ee2149806458de16d065932bfd651f1f59515fb872ce17a667bc0d0a6b36bcfc9f2a893db3684f51f672c4bd36933a15541b230b2af897d789e967d6fd2c05d4317ec9214ac51a64444b0f8e5375a4caca87f9ca25e8cd869cefd2ca84252ab63b0c18ffa8dd672201f637297c189ab4fd8984647ae4107683b16e8c38e16345f1341b794239ee309d6905809e4dc80689002392b9442c7313244a27ef2d3c3237ed74c388276034dc7f38f237b26e84477c8bdd50e9a761ad20f83a48c8bad2d9bbac1d71b7412ada0dbd779af937462988cfc21bf39d17fc0e9108492c545d9b01dfe03baa7e30def653714bc7c64c50ee3a62ddb38389b0e55ad99e9fe5c9b5afde2216d80f17069467526deb33cd3f4e5430e4b46086403664e4455c5aabf7719734eca93c48fa977f3a750e1d7eba8e243d51e08a89c0c641599b4313596e8c626495c4c0ff7df61138d08eede974db165bed83bc6844580c238ff4f2582f7b073c70c627694ae7999e382ccdcfe876f199ec13256c9ffaea8d05133d1dd046ec333b3cad12b8854b8ea3c610bfd317c82a1c57e040c3745a88e5fc5c7a57137f9e5398ef7e019d9443706ff507ee11d9538dd5a13282af0851146795d11055c254a60fd0ea21f1a6ad4d8419a203db3da9d870f55df6ed660f555176313d1e52eeee4327eae2a6cad2eea1c985178ac4c5bdc54ac2b2a4425673cc4731eb7d984e0ffebc12771bfcb625c250d8bbcee6d9419f5b77dd24ea3458af98f816f585ab336ee8960b828b6d88e3b787396c71e9f20785bb7c128a746e6c7b5a4886d07f4e1ba27e0aee91675b1098357b9c184f4e0951d7b443437e8153670a854113dbf5875b2e9bb4d69417188f92333931f57fe889fa51cf611b361e339f33567c0db10232d26918a2a284f319f9b4005220766c97e11a3d8fec8ee326b5fb635d9029c1f10c688b5370fbea12f37a23db826fbe2f3fbd3b5f1c6e615956a3a8590f739eaacf7a98a75a7416f38ced6f2d98fbeb3108f66a5202009798535983d0e962fa9f214facf4096682f6b65cb6b626af7996a51c1255e6af3063f },
      { u:= 4535,L:= 502,b0:= 2500,v:= 0x4638b87c91a26a3b16e3a32e271491c4cf72d3db9eaf047293a7568b94465d72a167e49a48408cf3367f69aae330218ec1ff2d3ca337cce1cdd5dea2f7a679987d5422640e2042d5109be9bde338cc2210d0cad5847293e3e65faa2d50596628fd444036f6d30f3d3c001d0d510fe0acb60b22662dd13ba7a19915dbcb4790ff4dc56a91a0c99ce4a3ceca713b780dff290e2240ef9b8cbf1dbf2229f92aea87eb3e0f506ff190b96c360fb468af007bb143e300fd44d32d324ba5e45facca1c262d832ff3450d10992bd1731c69a3b0ec77c561518ce26320a0e82c09e02ce139c4681e669cbebb11dec6ee93d1e4a91d8018b554030c95f1a886452b8099d2e2d9ca1e54b04e013c39901ecbfd4d2184afbe618b9f52f3014572a578c5bc5d27d2d543db502ad56f4d47e8f8d83d58d8a7b18ccf20dab66d06c7ba620783fc75f5323a40550d1a601abe168fe74d44c9673d197549c3216f40a24be7836ede271a6c74e626fdc0e2e4548ef089d4c97103b419e70625f9602520d8a9ddec5c8fb66cc508bbbe7e63f1fa834be89f4f742c1144eaa01fee51af2ef4b9cbf5c9e97c9e2fb94ab776f7f0a65326e3a8a52fdce06fcefef7cff339fc025b14e72f534c93e75ac800a3888bba40206b116cb60b125af2974e78abf403ed111a1e1ecc64ff9083d922003adad9014e8419052a4046f5194ebe1e78c8859c13c4518d76ef01d371029691e933aedde6d6003db3a35c8142ac4128213a728b30facf68743b801a9fed7309366f9816ee154d68c725df790226aa4642f18f9c49c6e05600c73f3cb03d102282313a8851fc8f7e4adf11aecb2cbcec5147ff29d7dc15be610697523586457fad34328bd5bcfe2bb0b5fa486c5c31b17bac41de81c2801df77cd8286ac2dca875ade78cbb7159eccf7e24b17d571d1d87946e8cd653e27111999a215c278ab4afd6849b4ad92357ccbefeeb20b5837363a45521a0685d0b39ac105d650ed46b6a300d6ae5c8609807325f8d62ee3f1520a4b2da6a6321c8da5793979376bf11158115b0abaa70cb80fd2c11b56cf682e1c959fda3dbd94aedf59563cf1546bc6752ab4e398f145574f803550328d714d09acf227bf6fa7366bffc8aae51748f802e3d7e0b678b8969666b90bb81b0cdb1acec68338c4db6cea29c5506bc6770b1fe0a2f9b7ae1d26191f8b597d0083720a52a15f2ec49ab03b82a61bf2c0ec7630b9ed63af },
      { u:= 5038,L:= 557,b0:= 2777,v:= 0x5d7e5892940c854caa2c09f838522a0eaaae2f42e4ce5385a69db2cf0ee98ed52bff9a0fd419874397b6a8917db99d84cdaf76447adf26c3cd999da06c369f90f545080e32d108726bd46f022e4601ca890a25281a6c61b130d0c84a9eaf648692220c49deab80955661fad4b5de105f6fcb004526f495feed7b200ae3a0a184d42aa5fd8d92578bf7f417a9b083fc851d4f83fb5feceb864ff15c5de710be1f5b8b844516cc436af8e83360e7d5d2f9a28d2e9e96d0a488aa97c27dc274116f253ecaa3db8760ffd38a72cef26da432191dea45f94b3cc7bba1fc4c5fd3082f67af15fb113c57d2c6928a52fcca3d091073c9d4324a4490320cb477528702dd4b5d6a594905bf223debfe77632e2b80f95eab8ed30f743399d132b6aec41dabc42b161d9184aa5e2e97d8f3d84b51bd05c0f4b2071fc4535bc41f4975b956e3e4810e10e0cf45365ed682de99151517699c6dfa3c21b20263b6657f0d9681404050406f43fcfb3adadb3965b4b1a07a0f4dfac9946a322008913f5e02432d15da72b1e823e6309d06017657634cb258b981d6b3f193110e5726233128838dd9c7289d23579d82e6e823a47d8ba8f9d82276ee2c1aaa8a59fb8487ec9c3eb6eaf0c30c2302020ee6cd25e91f94d88aadfbdbce93f3ad32abc99c23dc1d6bb503cc121e724f756bbb0962759589c6853669d1143a9a14790b7f431ab6a06003d66522ba6c005c051a25ce27f536b21068c24b9e0afb817129216ed3e808c5e681d185c8f2dd8b648c3bfc9edaea0e6b5bf3dc58eb00921f7ca0497b92b5fca32ae85e521eeb1fc66e6a0392507d1981384af808a7a84e9b758112614dd67b7f27df13f7bae76ff872184472d26015647ac0d8be1fd7920cbc5832fb58d820558fba543114ab3decc435e864e6507e08d6755c533995d383eda4f5a247cf3bfcb2b0017f0c04ec17c70896dbb80766eb3ab2467eab34d9cd9e2a3f78432df0417c3a4a0ecf793975e937dac239c8fea7588ee5b495e14feb34be06fc2163dc567295bb6c028af800dc8568356a1ee04173e9ce03b7e3f8865f41c9c7face71028c0fd30fc3181f2a20857fe1b9745b575203bc8c1ffd69aa5a922fd21141cbc472f31046ba12f305ba3f00637f58ddd557b44b85dcb458cdc293f2021e83022b6d6740b8e663d707a418fc3f2cdc8d0092b25b16189264bb09debe58e66ea1eb9bc89dfc01b4b615b2d1100a968c143f87b89dfabe600e83d014bd0996ef1858bf179b9a55fb7cd2d782c53d0c54def8e3514d040fbcf520fe07d5200b527c8c611d7dcf20d45fe48a9f1fff3676072da235114c96759a7deca473e510689977952f04f198d003ff4448e4b2f9bccc2 },
      { u:= 5596,L:= 620,b0:= 3085,v:= 0x17fb7f56e9ce8006951ec5ec567126eb62eeadf227d42081fe92b17b597d48dc63508dc9c2cdb0f67b5dcf925df75d8d0022f2f759b949fb7d5625bea9afccd788ceab97d76e0d793a4c3153e3a611078f31c47c3b04bb2e8136a5fb1eeda4bf1bb880e5117486ecd56753a5aa137abbcb8fb6a0c9a65fd23b61f820a314e71b02fc6dae393e253f89adb25720a112cef573cb0886e8352d6db8b298ea582f2b403e64289ca20bee60dfa7a22eb5df7b4f12d586f488d908e312088e6c44891bac6273a123f478cc6d8f99ddf14a0c253709c129676c496fe025cd34060597512843c2cbb7080a03a1594832fa10de71a13b4ef0d1414b7e29f39c388ee7a44f7956507d2c544b9d63af7a62e03242c460294ff3f411e94a26cfe4ca84319fbd719a493cab0cecf330ba17978be5d71db978bd8cfeaef4258c39162120b30285c4e304a1c6bca712dd19c0f69cc23273e76a311acc137acf7c25705e085456f8d9c04fd88bd512c98186a1a2fe28e8d6a857bac2a9ab2fde0263f59d62405f210d2f5cbfa208493519ff3d7280194cb7394ef2b53ffeae98c98139200a055fbfa6bdde1b5b419e20d113c2c2b30eb0049cd8c9fe373d9620c4ea177a066bcad4456d9f296a5195953a64bea72868bac0608211b8dce11ab07f716ee51fe7fd266637ce5325659f124592696c0f6c28f61ba33d4827fc973e6a181f4c217c16c7e7b27921699e8a72a722058924813c67016ec08f9fad381aab5d92944c266cba7fbf26fa8fd3fd679435e78b41f620e448ccf13f288cd8541ea8bf9631651c4d2020838c2ce6da84c797c26242551d34deecc5d8c141e3349c1aa081c6996d151ec74eda40ac896c8b4eb87662509e24dd68302f1090e92b93272b7e5de69b28d52e327be5c872f6ea2794113bfbecbc803a27928862495df92115a981e1b6708b4f65d4c9d2df9d8ab31320bb19c0d1151583c0b868447c524e13c2bee1d360fff189d5905e7082260ffe3c18c84f7f3b7ad09e2530adbdb14584c80b5b79298d866134d844e294084f5590c365e01dad1df984ea8ca90a7ab36fc534324a07ae5a263d07c629cb901bd1ab6fcbab209dc736b961eabaa17c6d320f9b2ba8700a3633316bf762484c444abe17d6a17778993cdb8eff8772ab564c68bf819d111e977e75d35c2086db4f0e74e6ee56e385fd63ffe4f8a27e30c94ac5861b76d7ded82f99e2e9419e76664bd9d5b648f62af349d36e35651b4f214a9ed23ce9f6bc014e3458e6067e322afec2489720033d07747aa6b719ceb43d33278d5f7782341fcd6bd7213ffdb99b31e184aadfe3d3dc1af85336cbaf6837c96d671ec282ac8915aadb1c325e71831fb8b84b384cb86754d1def27e537ed3e38350a8ce28a759d202380c9ee4f622ac67936d13ed086dba146e0f4d518109b19f7935fee459e04ae098d0ac8dce12bdbf892ad664761f4cdc2002f9d85ad884c664b2fc365f1a4de0f386e32a69172bab5c5743733d42dce930721f387d24c4 },
      { u:= 6217,L:= 398,b0:= 3428,v:= 0x493ad260940d5e86106ceb36c255d01e8c91a69e91a30d11b49178bd38f87c9928e176f0a2ae933b13a38c3d2031080be4f434d3fdf4be19d64a5c98a007214c388ca5150e6941f43238b02c441fa41c791ea5513e0961eae5ce702b0d828d1ddcfea25ec027a2c43bb0b91d7a9b514891d5c2394569512d4c26002fd3a30d7db9f0af9730b773eec6962101780d19b56ac95a11e648ff9250e82641fa59c425c3f154aa038136f638f4447d75363e678db9bbc1934f49f96eaac877b79d56dc510a086e64a347a18a6a3d78b6a9be0c354e1fe5eb59b3916a020c6ca087fb386aa55edc631d627bf5e1fb89bfa742ab773d9f01380056095df51875728ee61da9e5d6316fe36c559ac5f5a9831737882baf7dc760481dabcad5bb48725bce74c6a86da0297ffafb315ded384c844ac82936278a6c8dc520a1d81d60e969f6bebb55db377c63d174fd334923b6b3973d9737e52babc90660934692cf6aa823ebdec129fcc0b9083b725757ae2e970f3d233bd31866df9206a1e08339e825fd42a2fe0b302c213181fc734a2ef8992d474c64d220424b36ce086898e7abe4949137078aa07dcdb3e697a43f5e7c5d68c226de7f65869de025f9853362760c6b730ecc98fa7c903ca306c71e5089708a11c922d58fbec0f828582b99bb0cf965094d977b976781ddd44d9855584a4c4f7370e49c6026b88070ece082843729f6c0b46f3e37b8090d97e29e143133bc62ea0c65e8b9f499fccd15afa62d64653351303538c15157579f9bbd9b7ff188b4ea1e810eb87b976ab865cb5ffacb83715a40b6fd057b5c93f01dd80a2fe6eca9477f377513b5727d962955251c170b0cd5385749bf8ff532681504a6ddd5cf3cbcd1ddb2938c3a3878cd118580c0e116ca5830e04e0a85bc20dabc2f4bcee6db59e37b4b1916550c9c6623297c6a613a6229f8df1d385bc65b73acdd7c0e7afef4680fdbd7e459a815d1c56c78d7e44bc34f8a67cd8d1b56050a810a30ddc84e4f1b5f1fcab9351c379d690cfd508fd11b7c75772594fb8d4eaa7cb79bd00bfaec7e8d73e81a9b49b73d539418099ee6d137be7a201b2929ba8ce83a05f9958d143e79094dbd4e5c0b069f0605b9f6ae273ed2902931f9fe0bf166d2edfea81190204155d34b2b44bafe8b6978f97a22870591b1e93e780d31ee2e21b80bfced0b2b37df099eb609fc93503e9d5a866e3c9734c3f97ac7fe86c40cf5dc09bc66454eb0a834464f6e209fd176eddf0b98ccca626ab871f1ebcd8e8a911df4442b29ddc3fd0216e37d78f7d8bf50ff7041a1ac6d6cbed6140723feeb4937aa58a13fa24d1047e9e517790715c48ef87e38c22bafe150b010186e8c85863348cdbe045c07e21b5ba6b76fa534d3d2f60c216bbfaa4e023d8db49a0f53c0a9bb7add9033c10dce064ff2bf9518d041e7b669557c005e3b8843c9a91c7389af98bbfbbd4d8f569c521b2b8686108a3f17bd8e28b5aed4609685765c6bfa304865e6b2e00de894473ded44ef145996d50084b980eabba8807f9f013caa4fba2271b18a35a6a32362a312583876677e3f29e04511d5873dbcbdc6d5776d651bb88db2bb4a7559ab09129c37d596423352fd3a25d4e83c069eba81a513148565f2fd3b73607c3aa1a178a3217c1f665fe239edffc4388a6e4fcd094ed131a0d7171e93f85bbbf156 },
    ]
  let u246:List Math.B699.N4.d0:= u145
  let u247:List Math.B699.N4.d0:= u189 ++ u246
  let u248:List Math.B699.N4.d0:= u187 ++ u247
  let u249:List Math.B699.N4.d0:=
    u185 ++ u248
  let u135:Math.B699.N7.d9 where
    rows23:= u195
    rows25:= u206
    rows27:= u217
    rows35:= u228
    rows37:= u239
    rows57:= u249
  have u148:
      Math.B699.N4.d19
        2 3 10 103 435 u147 = true:= by
    decide +kernel
  have u150:
      Math.B699.N4.d19
        2 3 10 435 2218 u149 = true:= by
    decide +kernel
  have u152:
      Math.B699.N4.d19
        2 3 10 2218 4096 u151 = true:= by
    decide +kernel
  have u277:
      Math.B699.N4.d19
        2 3 10 4096 15360 u276 = true:= by
    decide +kernel
  have u196:Math.B699.N4.d19
      2 3 10 4096 15360 u276 = true:=
    u277
  have u267 (p q w:ℕ) (left right:List Math.B699.N4.d0):
      ∀ {start mid stop:ℕ},
        Math.B699.N4.d19 p q w start mid left = true →
        Math.B699.N4.d19 p q w mid stop right = true →
        Math.B699.N4.d19 p q w start stop (left ++ right) = true:= by
    induction left with
    | nil =>
        intro start mid stop hleft hright
        change decide (start = mid) = true at hleft
        have hjoin:start = mid:= of_decide_eq_true hleft
        simpa only [List.nil_append,hjoin] using hright
    | cons row left ih =>
        intro start mid stop hleft hright
        change (decide (row.u = start) &&
          (Math.B699.N5.d12 p q row.u row.L row.b0 w row.v &&
            Math.B699.N4.d19 p q w (row.u + row.L + 1) mid left)) = true at hleft
        simp only [Bool.and_eq_true] at hleft
        have htail:Math.B699.N4.d19 p q w (row.u + row.L + 1) stop (left ++ right) = true:=
          ih (start:= row.u + row.L + 1) (mid:= mid) (stop:= stop) hleft.2.2 hright
        change (decide (row.u = start) &&
          (Math.B699.N5.d12 p q row.u row.L row.b0 w row.v &&
            Math.B699.N4.d19 p q w (row.u + row.L + 1) stop (left ++ right))) = true
        simp only [Bool.and_eq_true]
        exact ⟨hleft.1,hleft.2.1,htail⟩
  have u197:Math.B699.N4.d19
      2 3 10 2218 15360 u192 = true:= by
    change Math.B699.N4.d19 2 3 10
      2218 15360 (u151 ++ u191) = true
    exact u267
      2 3 10 u151 u191
      (start:= 2218) (mid:= 4096) (stop:= 15360)
      u152 u196
  have u198:Math.B699.N4.d19
      2 3 10 435 15360 u193 = true:= by
    change Math.B699.N4.d19 2 3 10
      435 15360 (u149 ++ u192) = true
    exact u267
      2 3 10 u149 u192
      (start:= 435) (mid:= 2218) (stop:= 15360)
      u150 u197
  have u199:Math.B699.N4.d19
      2 3 10 103 15360 u194 = true:= by
    change Math.B699.N4.d19 2 3 10
      103 15360 (u147 ++ u193) = true
    exact u267
      2 3 10 u147 u193
      (start:= 103) (mid:= 435) (stop:= 15360)
      u148 u198
  have u279:
      Math.B699.N4.d19
        2 3 10 45 103 u278 = true:= by
    decide +kernel
  have u200:
      Math.B699.N4.d19
        2 3 10 45 15360 u195 = true:= by
    change Math.B699.N4.d19 2 3 10
      45 15360 (u278 ++ u194) = true
    exact u267
      2 3 10 u278 u194
      (start:= 45) (mid:= 103) (stop:= 15360)
      u279 u199
  let u274 (p q w astart amax cut H:ℕ) (rows:List Math.B699.N4.d0):Bool:=
    decide (2 ≤ p ∧ 2 ≤ q ∧ 1 ≤ astart ∧ H ≤ p ^ (amax + 1) ∧
      w < (2:ℕ) ^ cut ∧
        p ^ (3 * (astart - 1)) < ((2:ℕ) ^ cut - w) ^ 2) &&
      Math.B699.N4.d19 p q w astart (amax + 1) rows
  have u201:
      u274
        2 3 10 45 15359
        68 ((2:ℕ) ^ 15360) u195 = true:= by
    simp only [u274,Bool.and_eq_true]
    constructor
    · decide +kernel
    · exact u200
  have u154:
      Math.B699.N4.d19
        2 5 10 44 95 u153 = true:= by
    decide +kernel
  have u156:
      Math.B699.N4.d19
        2 5 10 95 370 u155 = true:= by
    decide +kernel
  have u158:
      Math.B699.N4.d19
        2 5 10 370 1854 u157 = true:= by
    decide +kernel
  have u160:
      Math.B699.N4.d19
        2 5 10 1854 4096 u159 = true:= by
    decide +kernel
  have u138:
      Math.B699.N4.d19
        2 5 10 4096 15360 u137 = true:= by
    decide +kernel
  have u207:Math.B699.N4.d19
      2 5 10 4096 15360 u137 = true:=
    u138
  have u208:Math.B699.N4.d19
      2 5 10 1854 15360 u203 = true:= by
    change Math.B699.N4.d19 2 5 10
      1854 15360 (u159 ++ u202) = true
    exact u267
      2 5 10 u159 u202
      (start:= 1854) (mid:= 4096) (stop:= 15360)
      u160 u207
  have u209:Math.B699.N4.d19
      2 5 10 370 15360 u204 = true:= by
    change Math.B699.N4.d19 2 5 10
      370 15360 (u157 ++ u203) = true
    exact u267
      2 5 10 u157 u203
      (start:= 370) (mid:= 1854) (stop:= 15360)
      u158 u208
  have u210:Math.B699.N4.d19
      2 5 10 95 15360 u205 = true:= by
    change Math.B699.N4.d19 2 5 10
      95 15360 (u155 ++ u204) = true
    exact u267
      2 5 10 u155 u204
      (start:= 95) (mid:= 370) (stop:= 15360)
      u156 u209
  have u211:
      Math.B699.N4.d19
        2 5 10 44 15360 u206 = true:= by
    change Math.B699.N4.d19 2 5 10
      44 15360 (u153 ++ u205) = true
    exact u267
      2 5 10 u153 u205
      (start:= 44) (mid:= 95) (stop:= 15360)
      u154 u210
  have u212:
      u274
        2 5 10 44 15359
        66 ((2:ℕ) ^ 15360) u206 = true:= by
    simp only [u274,Bool.and_eq_true]
    constructor
    · decide +kernel
    · exact u211
  have u162:
      Math.B699.N4.d19
        2 7 10 43 106 u161 = true:= by
    decide +kernel
  have u164:
      Math.B699.N4.d19
        2 7 10 106 411 u163 = true:= by
    decide +kernel
  have u166:
      Math.B699.N4.d19
        2 7 10 411 2072 u165 = true:= by
    decide +kernel
  have u168:
      Math.B699.N4.d19
        2 7 10 2072 4096 u167 = true:= by
    decide +kernel
  have u140:
      Math.B699.N4.d19
        2 7 10 4096 15360 u139 = true:= by
    decide +kernel
  have u218:Math.B699.N4.d19
      2 7 10 4096 15360 u139 = true:=
    u140
  have u219:Math.B699.N4.d19
      2 7 10 2072 15360 u214 = true:= by
    change Math.B699.N4.d19 2 7 10
      2072 15360 (u167 ++ u213) = true
    exact u267
      2 7 10 u167 u213
      (start:= 2072) (mid:= 4096) (stop:= 15360)
      u168 u218
  have u220:Math.B699.N4.d19
      2 7 10 411 15360 u215 = true:= by
    change Math.B699.N4.d19 2 7 10
      411 15360 (u165 ++ u214) = true
    exact u267
      2 7 10 u165 u214
      (start:= 411) (mid:= 2072) (stop:= 15360)
      u166 u219
  have u221:Math.B699.N4.d19
      2 7 10 106 15360 u216 = true:= by
    change Math.B699.N4.d19 2 7 10
      106 15360 (u163 ++ u215) = true
    exact u267
      2 7 10 u163 u215
      (start:= 106) (mid:= 411) (stop:= 15360)
      u164 u220
  have u222:
      Math.B699.N4.d19
        2 7 10 43 15360 u217 = true:= by
    change Math.B699.N4.d19 2 7 10
      43 15360 (u161 ++ u216) = true
    exact u267
      2 7 10 u161 u216
      (start:= 43) (mid:= 106) (stop:= 15360)
      u162 u221
  have u223:
      u274
        2 7 10 43 15359
        65 ((2:ℕ) ^ 15360) u217 = true:= by
    simp only [u274,Bool.and_eq_true]
    constructor
    · decide +kernel
    · exact u222
  have u170:
      Math.B699.N4.d19
        3 5 10 32 95 u169 = true:= by
    decide +kernel
  have u172:
      Math.B699.N4.d19
        3 5 10 95 431 u171 = true:= by
    decide +kernel
  have u174:
      Math.B699.N4.d19
        3 5 10 431 2253 u173 = true:= by
    decide +kernel
  have u176:
      Math.B699.N4.d19
        3 5 10 2253 2585 u175 = true:= by
    decide +kernel
  have u142:
      Math.B699.N4.d19
        3 5 10 2585 9692 u141 = true:= by
    decide +kernel
  have u229:Math.B699.N4.d19
      3 5 10 2585 9692 u141 = true:=
    u142
  have u230:Math.B699.N4.d19
      3 5 10 2253 9692 u225 = true:= by
    change Math.B699.N4.d19 3 5 10
      2253 9692 (u175 ++ u224) = true
    exact u267
      3 5 10 u175 u224
      (start:= 2253) (mid:= 2585) (stop:= 9692)
      u176 u229
  have u231:Math.B699.N4.d19
      3 5 10 431 9692 u226 = true:= by
    change Math.B699.N4.d19 3 5 10
      431 9692 (u173 ++ u225) = true
    exact u267
      3 5 10 u173 u225
      (start:= 431) (mid:= 2253) (stop:= 9692)
      u174 u230
  have u232:Math.B699.N4.d19
      3 5 10 95 9692 u227 = true:= by
    change Math.B699.N4.d19 3 5 10
      95 9692 (u171 ++ u226) = true
    exact u267
      3 5 10 u171 u226
      (start:= 95) (mid:= 431) (stop:= 9692)
      u172 u231
  have u233:
      Math.B699.N4.d19
        3 5 10 32 9692 u228 = true:= by
    change Math.B699.N4.d19 3 5 10
      32 9692 (u169 ++ u227) = true
    exact u267
      3 5 10 u169 u227
      (start:= 32) (mid:= 95) (stop:= 9692)
      u170 u232
  have u234:
      u274
        3 5 10 32 9691
        75 ((2:ℕ) ^ 15360) u228 = true:= by
    simp only [u274,Bool.and_eq_true]
    constructor
    · decide +kernel
    · exact u233
  have u178:
      Math.B699.N4.d19
        3 7 10 32 96 u177 = true:= by
    decide +kernel
  have u180:
      Math.B699.N4.d19
        3 7 10 96 440 u179 = true:= by
    decide +kernel
  have u182:
      Math.B699.N4.d19
        3 7 10 440 2283 u181 = true:= by
    decide +kernel
  have u184:
      Math.B699.N4.d19
        3 7 10 2283 2585 u183 = true:= by
    decide +kernel
  have u144:
      Math.B699.N4.d19
        3 7 10 2585 9692 u143 = true:= by
    decide +kernel
  have u240:Math.B699.N4.d19
      3 7 10 2585 9692 u143 = true:=
    u144
  have u241:Math.B699.N4.d19
      3 7 10 2283 9692 u236 = true:= by
    change Math.B699.N4.d19 3 7 10
      2283 9692 (u183 ++ u235) = true
    exact u267
      3 7 10 u183 u235
      (start:= 2283) (mid:= 2585) (stop:= 9692)
      u184 u240
  have u242:Math.B699.N4.d19
      3 7 10 440 9692 u237 = true:= by
    change Math.B699.N4.d19 3 7 10
      440 9692 (u181 ++ u236) = true
    exact u267
      3 7 10 u181 u236
      (start:= 440) (mid:= 2283) (stop:= 9692)
      u182 u241
  have u243:Math.B699.N4.d19
      3 7 10 96 9692 u238 = true:= by
    change Math.B699.N4.d19 3 7 10
      96 9692 (u179 ++ u237) = true
    exact u267
      3 7 10 u179 u237
      (start:= 96) (mid:= 440) (stop:= 9692)
      u180 u242
  have u244:
      Math.B699.N4.d19
        3 7 10 32 9692 u239 = true:= by
    change Math.B699.N4.d19 3 7 10
      32 9692 (u177 ++ u238) = true
    exact u267
      3 7 10 u177 u238
      (start:= 32) (mid:= 96) (stop:= 9692)
      u178 u243
  have u245:
      u274
        3 7 10 32 9691
        75 ((2:ℕ) ^ 15360) u239 = true:= by
    simp only [u274,Bool.and_eq_true]
    constructor
    · decide +kernel
    · exact u244
  have u186:
      Math.B699.N4.d19
        5 7 10 32 110 u185 = true:= by
    decide +kernel
  have u188:
      Math.B699.N4.d19
        5 7 10 110 533 u187 = true:= by
    decide +kernel
  have u190:
      Math.B699.N4.d19
        5 7 10 533 1765 u189 = true:= by
    decide +kernel
  have u146:
      Math.B699.N4.d19
        5 7 10 1765 6616 u145 = true:= by
    decide +kernel
  have u250:Math.B699.N4.d19
      5 7 10 1765 6616 u145 = true:=
    u146
  have u251:Math.B699.N4.d19
      5 7 10 533 6616 u247 = true:= by
    change Math.B699.N4.d19 5 7 10
      533 6616 (u189 ++ u246) = true
    exact u267
      5 7 10 u189 u246
      (start:= 533) (mid:= 1765) (stop:= 6616)
      u190 u250
  have u252:Math.B699.N4.d19
      5 7 10 110 6616 u248 = true:= by
    change Math.B699.N4.d19 5 7 10
      110 6616 (u187 ++ u247) = true
    exact u267
      5 7 10 u187 u247
      (start:= 110) (mid:= 533) (stop:= 6616)
      u188 u251
  have u253:
      Math.B699.N4.d19
        5 7 10 32 6616 u249 = true:= by
    change Math.B699.N4.d19 5 7 10
      32 6616 (u185 ++ u248) = true
    exact u267
      5 7 10 u185 u248
      (start:= 32) (mid:= 110) (stop:= 6616)
      u186 u252
  have u254:
      u274
        5 7 10 32 6615
        109 ((2:ℕ) ^ 15360) u249 = true:= by
    simp only [u274,Bool.and_eq_true]
    constructor
    · decide +kernel
    · exact u253
  have u258 {N M w:ℕ} (hdist:Nat.dist N M ≤ w):
      -(w:ℤ) ≤ (N:ℤ) - (M:ℤ) ∧ (N:ℤ) - (M:ℤ) ≤ (w:ℤ):= by
    have hNM:= Nat.dist_tri_right' N M
    have hMN:= Nat.dist_tri_right N M
    constructor <;> omega
  have u259 (p a u A:ℕ) (hua:u ≤ a):
      p ^ u * (p ^ (a - u) * A) = p ^ a * A:= by
    rw [← mul_assoc,← pow_add,Nat.add_sub_of_le hua]
  have u255 {A R:ℕ} (hA:0 < A)
      (h:A ^ 3 ≤ R * A):A ^ 2 ≤ R:= by
    have hm:A ^ 2 * A ≤ R * A:= by simpa only [pow_succ] using h
    exact Nat.le_of_mul_le_mul_right hm hA
  have u260 {p u L a A:ℕ} (hp:0 < p)
      (hua:u ≤ a) (hau:a ≤ u + L) (hA:0 < A)
      (hsmall:A ^ 3 ≤ p ^ a * A):
      (p ^ (a - u) * A) ^ 2 ≤ p ^ (u + 3 * L):= by
    have hA2:= u255 hA hsmall
    have he:(a - u) * 2 + a ≤ u + 3 * L:= by omega
    calc
      (p ^ (a - u) * A) ^ 2 = p ^ ((a - u) * 2) * A ^ 2:= by
        rw [mul_pow,← pow_mul]
      _ ≤ p ^ ((a - u) * 2) * p ^ a:= Nat.mul_le_mul_left _ hA2
      _ = p ^ ((a - u) * 2 + a):= by rw [← pow_add]
      _ ≤ p ^ (u + 3 * L):= Nat.pow_le_pow_right hp he
  have u256 {x R C:ℕ} (hC:0 < C)
      (hsmall:C ^ 3 ≤ x) (hx:x ≤ R * C):x ^ 2 ≤ R ^ 3:= by
    have hC2:= u255 hC (hsmall.trans hx)
    calc
      x ^ 2 ≤ (R * C) ^ 2:= Nat.pow_le_pow_left hx 2
      _ = R ^ 2 * C ^ 2:= by rw [mul_pow]
      _ ≤ R ^ 2 * R:= Nat.mul_le_mul_left _ hC2
      _ = R ^ 3:= by ring
  have u257 {P N M w:ℕ} (hP:P ≤ N)
      (hdist:Nat.dist N M ≤ w):P - w ≤ min N M:= by
    have hNM:= Nat.dist_tri_right' N M
    exact le_min (by omega) (by omega)
  have u261 {p q u b0 a b A C w:ℕ}
      (hp:0 < p) (hq:1 < q) (hua:u ≤ a) (hA:1 ≤ A) (hC:1 ≤ C)
      (hdist:Nat.dist (p ^ a * A) (q ^ b * C) ≤ w)
      (hsmallC:C ^ 3 ≤ min (p ^ a * A) (q ^ b * C))
      (hmodulus:(q ^ b0) ^ 3 ≤ (p ^ u - w) ^ 2):b0 ≤ b:= by
    have hN:p ^ u ≤ p ^ a * A:= by
      calc
        p ^ u ≤ p ^ a:= Nat.pow_le_pow_right hp hua
        _ ≤ p ^ a * A:= by
          simpa only [mul_one] using Nat.mul_le_mul_left (p ^ a) hA
    have hmin:= u257 hN hdist
    have hs:(min (p ^ a * A) (q ^ b * C)) ^ 2 ≤ (q ^ b) ^ 3:=
      u256 (by omega:0 < C) hsmallC (min_le_right _ _)
    have hpows:q ^ (b0 * 3) ≤ q ^ (b * 3):= by
      calc
        q ^ (b0 * 3) = (q ^ b0) ^ 3:= by rw [pow_mul]
        _ ≤ (p ^ u - w) ^ 2:= hmodulus
        _ ≤ (min (p ^ a * A) (q ^ b * C)) ^ 2:= Nat.pow_le_pow_left hmin 2
        _ ≤ (q ^ b) ^ 3:= hs
        _ = q ^ (b * 3):= by rw [← pow_mul]
    have he:b0 * 3 ≤ b * 3:= (Nat.pow_le_pow_iff_right hq).mp hpows
    omega
  have u262
      {p q u L b0 w v:ℕ} (hp:2 ≤ p) (hq:2 ≤ q)
      (_hu:1 ≤ u) (hb0:1 ≤ b0) (_hPw:w < p ^ u)
      (hQ:(q ^ b0) ^ 3 ≤ (p ^ u - w) ^ 2)
      (hinv:(p ^ u * v) % (q ^ b0) = 1)
      (hresidues:∀ d:ℤ,-(w:ℤ) ≤ d → d ≤ (w:ℤ) →
        p ^ (u + 3 * L) < (Math.B699.N5.d44 (q ^ b0) v d) ^ 2)
      {a b A C:ℕ} (hua:u ≤ a) (hau:a ≤ u + L)
      (hA:1 ≤ A) (hC:1 ≤ C)
      (hdist:Nat.dist (p ^ a * A) (q ^ b * C) ≤ w)
      (hsmallA:A ^ 3 ≤ min (p ^ a * A) (q ^ b * C))
      (hsmallC:C ^ 3 ≤ min (p ^ a * A) (q ^ b * C)):False:= by
    have hp0:0 < p:= by omega
    have hq1:1 < q:= by omega
    have hbb:b0 ≤ b:= u261 hp0 hq1 hua hA hC hdist hsmallC hQ
    let X:ℕ:= p ^ (a - u) * A
    let T:ℕ:= q ^ (b - b0) * C
    let d:ℤ:= ((p ^ a * A:ℕ):ℤ) - ((q ^ b * C:ℕ):ℤ)
    have hX:0 < X:= by
      dsimp [X]
      exact Nat.mul_pos (Nat.pow_pos hp0) (by omega)
    have hQ1:1 < q ^ b0:= by
      have hqle:q ≤ q ^ b0:= by
        simpa only [pow_one] using Nat.pow_le_pow_right (by omega:0 < q) hb0
      omega
    have hPX:p ^ u * X = p ^ a * A:= u259 p a u A hua
    have hQT:q ^ b0 * T = q ^ b * C:= u259 q b b0 C hbb
    have heq:((p ^ u:ℕ):ℤ) * (X:ℤ) -
        ((q ^ b0:ℕ):ℤ) * (T:ℤ) = d:= by
      have h:= congrArg₂ (fun r s:ℕ => (r:ℤ) - (s:ℤ)) hPX hQT
      dsimp only [d]
      simpa only [Nat.cast_mul] using h
    have hd:-(w:ℤ) ≤ d ∧ d ≤ (w:ℤ):= u258 hdist
    have hrho:Math.B699.N5.d44 (q ^ b0) v d ≤ X:=
      u266 hQ1 hX hinv heq
    have hXbound:X ^ 2 ≤ p ^ (u + 3 * L):=
      u260 hp0 hua hau (by omega:0 < A)
        (hsmallA.trans (min_le_left _ _))
    have hsmallrho:(Math.B699.N5.d44 (q ^ b0) v d) ^ 2 ≤ p ^ (u + 3 * L):=
      (Nat.pow_le_pow_left hrho 2).trans hXbound
    exact (not_lt_of_ge hsmallrho) (hresidues d hd.1 hd.2)
  have u263 {p q u L b0 w v:ℕ}
      (hcheck:Math.B699.N5.d51 p q u L b0 w v = true) {d:ℤ}
      (hlo:-(w:ℤ) ≤ d) (hhi:d ≤ (w:ℤ)):
      p ^ (u + 3 * L) < (Math.B699.N5.d44 (q ^ b0) v d) ^ 2:= by
    unfold Math.B699.N5.d51 at hcheck
    let k:ℕ:= (d + (w:ℤ)).toNat
    have hkcast:(k:ℤ) = d + (w:ℤ):= by
      dsimp only [k]
      exact Int.toNat_of_nonneg (by omega)
    have hk:k < 2 * w + 1:= by omega
    have hd:Math.B699.N5.d20 w k = d:= by
      unfold Math.B699.N5.d20
      omega
    have hmem:k ∈ List.range (2 * w + 1):= List.mem_range.mpr hk
    have hall:= List.all_eq_true.mp hcheck k hmem
    have hbound:p ^ (u + 3 * L) <
        (Math.B699.N5.d44 (q ^ b0) v (Math.B699.N5.d20 w k)) ^ 2:= of_decide_eq_true hall
    simpa only [hd] using hbound
  have u264 {p q u L b0 w v a b A C:ℕ}
      (hcheck:Math.B699.N5.d12 p q u L b0 w v = true)
      (hua:u ≤ a) (hau:a ≤ u + L) (hA:1 ≤ A) (hC:1 ≤ C)
      (hdist:Nat.dist (p ^ a * A) (q ^ b * C) ≤ w)
      (hsmallA:A ^ 3 ≤ min (p ^ a * A) (q ^ b * C))
      (hsmallC:C ^ 3 ≤ min (p ^ a * A) (q ^ b * C)):False:= by
    have hc:= hcheck
    simp only [Math.B699.N5.d12,Bool.and_eq_true] at hc
    have hmeta:2 ≤ p ∧ 2 ≤ q ∧ 1 ≤ u ∧ 1 ≤ b0 ∧ w < p ^ u ∧
        (q ^ b0) ^ 3 ≤ (p ^ u - w) ^ 2 ∧ (p ^ u * v) % (q ^ b0) = 1:=
      of_decide_eq_true hc.1
    rcases hmeta with ⟨hp,hq,hu,hb0,hPw,hQ,hinv⟩
    exact u262 hp hq hu hb0 hPw hQ hinv
      (fun d hlo hhi => u263 hc.2 hlo hhi)
      hua hau hA hC hdist hsmallA hsmallC
  have u268 (p q w:ℕ) (rows:List Math.B699.N4.d0):
      ∀ {start stop h k A C:ℕ},
        Math.B699.N4.d19 p q w start stop rows = true → start ≤ h → h < stop →
        1 ≤ A → 1 ≤ C → Nat.dist (p ^ h * A) (q ^ k * C) ≤ w →
        A ^ 3 ≤ min (p ^ h * A) (q ^ k * C) →
        C ^ 3 ≤ min (p ^ h * A) (q ^ k * C) → False:= by
    induction rows with
    | nil =>
        intro start stop h k A C hc hstart hstop hA hC hdist hsmallA hsmallC
        change decide (start = stop) = true at hc
        have heq:start = stop:= of_decide_eq_true hc
        omega
    | cons row rows ih =>
        intro start stop h k A C hc hstart hstop hA hC hdist hsmallA hsmallC
        change (decide (row.u = start) &&
          (Math.B699.N5.d12 p q row.u row.L row.b0 w row.v &&
            Math.B699.N4.d19 p q w (row.u + row.L + 1) stop rows)) = true at hc
        simp only [Bool.and_eq_true] at hc
        have hsplit:= hc
        have heq:row.u = start:= of_decide_eq_true hsplit.1
        have hrest:= hsplit.2
        by_cases hend:h ≤ row.u + row.L
        · exact u264 (a:= h) (b:= k) (A:= A) (C:= C)
            hrest.1 (by omega) hend hA hC hdist hsmallA hsmallC
        · exact ih (start:= row.u + row.L + 1) (stop:= stop)
            (h:= h) (k:= k) (A:= A) (C:= C)
            hrest.2 (by omega) hstop hA hC hdist hsmallA hsmallC
  have u269 {n r s w:ℕ} (hr:r ≤ w) (hs:s ≤ w):
      Nat.dist (n - r) (n - s) ≤ w:= by
    unfold Nat.dist
    omega
  have u271 {p h A n H amax:ℕ} (hp:1 < p)
      (hA:1 ≤ A) (hwindow:p ^ h * A ≤ n) (hnH:n < H)
      (hcap:H ≤ p ^ (amax + 1)):h ≤ amax:= by
    have hpower:p ^ h < p ^ (amax + 1):= by
      calc
        p ^ h ≤ p ^ h * A:= by
          simpa only [mul_one] using Nat.mul_le_mul_left (p ^ h) hA
        _ ≤ n:= hwindow
        _ < H:= hnH
        _ ≤ p ^ (amax + 1):= hcap
    have he:h < amax + 1:= (Nat.pow_lt_pow_iff_right hp).mp hpower
    omega
  have u270 {n r s w:ℕ} (hr:r ≤ w) (hs:s ≤ w):
      n - w ≤ min (n - r) (n - s):= by
    exact le_min (by omega) (by omega)
  have u272 {p n r s h A w astart cut:ℕ}
      (hp:0 < p) (hA:1 ≤ A) (hr:r ≤ w) (hs:s ≤ w)
      (hwindow:n - r = p ^ h * A)
      (hsmall:A ^ 3 ≤ min (n - r) (n - s)) (hbelow:h < astart)
      (_hcutw:w < (2:ℕ) ^ cut)
      (hcut:p ^ (3 * (astart - 1)) < ((2:ℕ) ^ cut - w) ^ 2):
      n < (2:ℕ) ^ cut:= by
    have hx:min (n - r) (n - s) ≤ p ^ h * A:= by
      calc
        min (n - r) (n - s) ≤ n - r:= min_le_left _ _
        _ = p ^ h * A:= hwindow
    have hsquare:(min (n - r) (n - s)) ^ 2 ≤ (p ^ h) ^ 3:=
      u256 (R:= p ^ h) (C:= A) (by omega) hsmall hx
    have hexp:h * 3 ≤ 3 * (astart - 1):= by omega
    by_contra hnot
    have hlarge:(2:ℕ) ^ cut ≤ n:= by omega
    have hshift:(2:ℕ) ^ cut - w ≤ n - w:= Nat.sub_le_sub_right hlarge w
    have hbad:((2:ℕ) ^ cut - w) ^ 2 ≤ p ^ (3 * (astart - 1)):= by
      calc
        ((2:ℕ) ^ cut - w) ^ 2 ≤ (n - w) ^ 2:= Nat.pow_le_pow_left hshift 2
        _ ≤ (min (n - r) (n - s)) ^ 2:=
          Nat.pow_le_pow_left (u270 (n:= n) hr hs) 2
        _ ≤ (p ^ h) ^ 3:= hsquare
        _ = p ^ (h * 3):= by rw [← pow_mul]
        _ ≤ p ^ (3 * (astart - 1)):= Nat.pow_le_pow_right hp hexp
    exact (not_lt_of_ge hbad) hcut
  have u273 (p q w astart amax cut H:ℕ)
      (rows:List Math.B699.N4.d0) (hp:2 ≤ p) (_hq:2 ≤ q) (_hstart:1 ≤ astart)
      (hcover:Math.B699.N4.d19 p q w astart (amax + 1) rows = true)
      (hcap:H ≤ p ^ (amax + 1)) (hcutw:w < (2:ℕ) ^ cut)
      (hcut:p ^ (3 * (astart - 1)) < ((2:ℕ) ^ cut - w) ^ 2)
      {n r s h k A C:ℕ} (hnH:n < H) (hr:r ≤ w) (hs:s ≤ w)
      (hA:1 ≤ A) (hC:1 ≤ C)
      (hP:n - r = p ^ h * A) (hQ:n - s = q ^ k * C)
      (hsmallA:A ^ 3 ≤ min (n - r) (n - s))
      (hsmallC:C ^ 3 ≤ min (n - r) (n - s)):n < (2:ℕ) ^ cut:= by
    have hwindow:p ^ h * A ≤ n:= by
      rw [← hP]
      exact Nat.sub_le n r
    have hmax:h ≤ amax:=
      u271 (by omega:1 < p) hA hwindow hnH hcap
    by_cases hbelow:h < astart
    · exact u272 (by omega:0 < p) hA hr hs hP hsmallA
        hbelow hcutw hcut
    · have hdist:Nat.dist (p ^ h * A) (q ^ k * C) ≤ w:= by
        simpa only [hP,hQ] using u269 (n:= n) hr hs
      have hsmallA':A ^ 3 ≤ min (p ^ h * A) (q ^ k * C):= by
        simpa only [hP,hQ] using hsmallA
      have hsmallC':C ^ 3 ≤ min (p ^ h * A) (q ^ k * C):= by
        simpa only [hP,hQ] using hsmallC
      exact False.elim (u268 p q w rows
        (start:= astart) (stop:= amax + 1) (h:= h) (k:= k) (A:= A) (C:= C)
        hcover (by omega) (by omega) hA hC hdist hsmallA' hsmallC')
  have u275 {p q w astart amax cut H n r s h k A C:ℕ}
      {rows:List Math.B699.N4.d0} (hcheck:u274 p q w astart amax cut H rows = true)
      (hnH:n < H) (hr:r ≤ w) (hs:s ≤ w) (hA:1 ≤ A) (hC:1 ≤ C)
      (hP:n - r = p ^ h * A) (hQ:n - s = q ^ k * C)
      (hsmallA:A ^ 3 ≤ min (n - r) (n - s))
      (hsmallC:C ^ 3 ≤ min (n - r) (n - s)):n < (2:ℕ) ^ cut:= by
    have hc:= hcheck
    simp only [u274,Bool.and_eq_true] at hc
    have hmeta:2 ≤ p ∧ 2 ≤ q ∧ 1 ≤ astart ∧ H ≤ p ^ (amax + 1) ∧
        w < (2:ℕ) ^ cut ∧
          p ^ (3 * (astart - 1)) < ((2:ℕ) ^ cut - w) ^ 2:= of_decide_eq_true hc.1
    rcases hmeta with ⟨hp,hq,hstart,hcap,hcutw,hcut⟩
    exact u273 p q w astart amax cut H rows hp hq hstart
      hc.2 hcap hcutw hcut hnH hr hs hA hC hP hQ hsmallA hsmallC
  have u376 {n cut:ℕ} (hn:n < (2:ℕ) ^ cut)
      (hcut:cut ≤ 109):n < (2:ℕ) ^ 109:=
    hn.trans_le (Nat.pow_le_pow_right (by decide:0 < 2) hcut)
  have u378 {p q w astart amax cut H n r s h k A C:ℕ}
      {rows:List Math.B699.N4.d0} (hcheck:u274 p q w astart amax cut H rows = true)
      (hnH:n < H) (hr:r ≤ w) (hs:s ≤ w) (hA:1 ≤ A) (hC:1 ≤ C)
      (hQfirst:n - r = q ^ h * A) (hPsecond:n - s = p ^ k * C)
      (hsmallA:A ^ 3 ≤ min (n - r) (n - s))
      (hsmallC:C ^ 3 ≤ min (n - r) (n - s)):n < (2:ℕ) ^ cut:= by
    have hC':C ^ 3 ≤ min (n - s) (n - r):= by
      simpa only [min_comm] using hsmallC
    have hA':A ^ 3 ≤ min (n - s) (n - r):= by
      simpa only [min_comm] using hsmallA
    exact u275 (r:= s) (s:= r) (h:= k) (k:= h) (A:= C) (C:= A)
      hcheck hnH hs hr hC hA hPsecond hQfirst hC' hA'
  have u377 (data:Math.B699.N7.d9)
      (check23:u274 2 3 10 45 15359 68 ((2:ℕ) ^ 15360) data.rows23 = true)
      (check25:u274 2 5 10 44 15359 66 ((2:ℕ) ^ 15360) data.rows25 = true)
      (check27:u274 2 7 10 43 15359 65 ((2:ℕ) ^ 15360) data.rows27 = true)
      (check35:u274 3 5 10 32 9691 75 ((2:ℕ) ^ 15360) data.rows35 = true)
      (check37:u274 3 7 10 32 9691 75 ((2:ℕ) ^ 15360) data.rows37 = true)
      (check57:u274 5 7 10 32 6615 109 ((2:ℕ) ^ 15360) data.rows57 = true)
      {p q n r s h k A C:ℕ}
      (hpMem:p ∈ ({2,3,5,7}:Finset ℕ))
      (hqMem:q ∈ ({2,3,5,7}:Finset ℕ)) (hpq:p ≠ q)
      (hnH:n < (2:ℕ) ^ 15360) (hr:r ≤ 10) (hs:s ≤ 10)
      (hA:1 ≤ A) (hC:1 ≤ C)
      (hP:n - r = p ^ h * A) (hQ:n - s = q ^ k * C)
      (hsmallA:A ^ 3 ≤ min (n - r) (n - s))
      (hsmallC:C ^ 3 ≤ min (n - r) (n - s)):n < (2:ℕ) ^ 109:= by
    have hpCases:p = 2 ∨ p = 3 ∨ p = 5 ∨ p = 7:= by
      simpa only [Finset.mem_insert,Finset.mem_singleton] using hpMem
    have hqCases:q = 2 ∨ q = 3 ∨ q = 5 ∨ q = 7:= by
      simpa only [Finset.mem_insert,Finset.mem_singleton] using hqMem
    rcases hpCases with hp2 | hp3 | hp5 | hp7
    · subst p
      rcases hqCases with hq2 | hq3 | hq5 | hq7
      · subst q
        exact False.elim (hpq rfl)
      · subst q
        exact u376 (cut:= 68)
          (u275 check23 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
      · subst q
        exact u376 (cut:= 66)
          (u275 check25 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
      · subst q
        exact u376 (cut:= 65)
          (u275 check27 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
    · subst p
      rcases hqCases with hq2 | hq3 | hq5 | hq7
      · subst q
        exact u376 (cut:= 68)
          (u378 check23 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
      · subst q
        exact False.elim (hpq rfl)
      · subst q
        exact u376 (cut:= 75)
          (u275 check35 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
      · subst q
        exact u376 (cut:= 75)
          (u275 check37 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
    · subst p
      rcases hqCases with hq2 | hq3 | hq5 | hq7
      · subst q
        exact u376 (cut:= 66)
          (u378 check25 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
      · subst q
        exact u376 (cut:= 75)
          (u378 check35 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
      · subst q
        exact False.elim (hpq rfl)
      · subst q
        exact u376 (cut:= 109)
          (u275 check57 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
    · subst p
      rcases hqCases with hq2 | hq3 | hq5 | hq7
      · subst q
        exact u376 (cut:= 65)
          (u378 check27 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
      · subst q
        exact u376 (cut:= 75)
          (u378 check37 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
      · subst q
        exact u376 (cut:= 109)
          (u378 check57 hnH hr hs hA hC hP hQ hsmallA hsmallC) (by decide)
      · subst q
        exact False.elim (hpq rfl)
  have u461 {n A X:ℕ} (hn:0 < n)
      (hproduct:A * X ≤ n) (hlarge:n ^ 3 < X ^ 4):A ^ 4 ≤ n:= by
    have hscaled:A ^ 4 * n ^ 3 ≤ n * n ^ 3:= by
      calc
        _ ≤ A ^ 4 * X ^ 4:= Nat.mul_le_mul_left _ (Nat.le_of_lt hlarge)
        _ = (A * X) ^ 4:= Eq.symm (Nat.mul_pow A X 4)
        _ ≤ n ^ 4:= Nat.pow_le_pow_left hproduct 4
        _ = n * n ^ 3:= Eq.trans (Nat.pow_succ n 3) (Nat.mul_comm _ _)
    exact Nat.le_of_mul_le_mul_right hscaled (Nat.pow_pos hn)
  have u462 {n A:ℕ}
      (hn:20 ≤ n) (hA:1 ≤ A) (hfour:A ^ 4 ≤ n):A ^ 3 ≤ n - 10:= by
    have hdouble:2 * A ^ 3 ≤ n:= by
      by_cases htwo:2 ≤ A
      · calc
          _ = A ^ 3 * 2:= Nat.mul_comm _ _
          _ ≤ A ^ 3 * A:= Nat.mul_le_mul_left _ htwo
          _ = A ^ 4:= Eq.symm (Nat.pow_succ A 3)
          _ ≤ n:= hfour
      · have heq:A = 1:= by omega
        simpa only [heq,Nat.one_pow,Nat.mul_one] using (show 2 ≤ n by omega)
    omega
  have u463 {n A a b:ℕ}
      (hn:20 ≤ n) (hA:1 ≤ A) (hfour:A ^ 4 ≤ n)
      (ha:a < 11) (hb:b < 11):A ^ 3 ≤ min (n - a) (n - b):= by
    have hcube:= u462 hn hA hfour
    apply le_min <;> omega
  have u464 {n a b:ℕ} (ha:a < 11) (hb:b < 11):
      Nat.dist (n - a) (n - b) ≤ 10:= by
    unfold Nat.dist
    omega
  have u465 {n p e:ℕ} (hn:0 < n)
      (hlarge:n ^ 3 < (p ^ e) ^ 4):0 < e:= by
    apply Nat.pos_of_ne_zero
    intro heq
    rw [heq,Nat.pow_zero,Nat.one_pow] at hlarge
    have hpositive:0 < n ^ 3:= Nat.pow_pos hn
    omega
  have u467:110 ≤ (2:ℕ) ^ 98:= by decide
  have u466 {S:Finset ℕ} {f:ℕ → ℕ} {cap threshold:ℕ}
      (hS:S.Nonempty) (hcap:∀ p ∈ S,f p ≤ cap)
      (hprod:cap * threshold ^ (S.card - 1) < S.prod f):
      ∃ p ∈ S,∃ q ∈ S,p ≠ q ∧ threshold < f p ∧ threshold < f q:= by
    classical
    by_contra hnone
    have hdistinguished:∃ p ∈ S,∀ q ∈ S.erase p,f q ≤ threshold:= by
      by_cases hlarge:∃ p ∈ S,threshold < f p
      · obtain ⟨p,hp,hfp⟩:= hlarge
        refine ⟨p,hp,?_⟩
        intro q hq
        apply Nat.le_of_not_gt
        intro hqbig
        have hpq:p ≠ q:= Ne.symm (Finset.mem_erase.mp hq).1
        exact hnone ⟨p,hp,q,Finset.mem_of_mem_erase hq,hpq,hfp,hqbig⟩
      · obtain ⟨p,hp⟩:= hS
        refine ⟨p,hp,?_⟩
        intro q hq
        apply Nat.le_of_not_gt
        intro hqbig
        exact hlarge ⟨q,Finset.mem_of_mem_erase hq,hqbig⟩
    obtain ⟨p,hp,hrest⟩:= hdistinguished
    have hcard:(S.erase p).card = S.card - 1:= Finset.card_erase_of_mem hp
    have hrestProd:(S.erase p).prod f ≤ threshold ^ (S.card - 1):= by
      simpa only [hcard] using Finset.prod_le_pow_card (S.erase p) f threshold hrest
    have hbound:S.prod f ≤ cap * threshold ^ (S.card - 1):= by
      rw [← Finset.mul_prod_erase S f hp]
      exact Nat.mul_le_mul (hcap p hp) hrestProd
    exact Nat.not_le_of_gt hprod hbound
  let u558:ℕ:= 142131407644347048724404082572664265244672000000000
  have u468:
      (2 * Nat.factorial 11) ^ 44 < u558 ^ 4 * (2:ℕ) ^ (98 * 5):= by decide
  have u560:N1.d55 11 3 7 = 84:= by decide
  have u561:N1.d54 11 3 7 = u558:= by decide
  have u469 {n j:ℕ}
      (hn:(2:ℕ) ^ 98 ≤ n) (hij:11 < j) (hjn:j ≤ n / 2)
      (hno:¬ u7 n 11 j):n ^ 143 < (u14 n 11) ^ 44:= by
    have hn110:110 ≤ n:= Nat.le_trans u467 hn
    have hnpos:0 < n:= by omega
    have hbase:u558 * n ^ 121 ≤
        (2 * Nat.factorial 11) ^ 11 * (u14 n 11) ^ 11 * n ^ 84:= by
      have h:= u20 (r:= 3) (s:= 7)
        (by decide:2 ≤ 11) hij hjn (by decide:7 < 11) hn110 hno
      simpa only [u561,u560] using h
    have hfour:u558 ^ 4 * n ^ 484 ≤
        (2 * Nat.factorial 11) ^ 44 * (u14 n 11) ^ 44 * n ^ 336:= by
      simpa only [Nat.mul_pow,← Nat.pow_mul] using Nat.pow_le_pow_left hbase 4
    have hsplit:n ^ 484 = n ^ 336 * n ^ 148:= by rw [← Nat.pow_add]
    have hscaled:n ^ 336 * (u558 ^ 4 * n ^ 148) ≤
        n ^ 336 * ((2 * Nat.factorial 11) ^ 44 * (u14 n 11) ^ 44):= by
      rw [hsplit] at hfour
      simpa only [Nat.mul_assoc,Nat.mul_comm,Nat.mul_left_comm] using hfour
    have hbound:u558 ^ 4 * n ^ 148 ≤
        (2 * Nat.factorial 11) ^ 44 * (u14 n 11) ^ 44:=
      Nat.le_of_mul_le_mul_left hscaled (Nat.pow_pos hnpos)
    have hstartPower:(2:ℕ) ^ (98 * 5) ≤ n ^ 5:= by
      simpa only [← Nat.pow_mul] using Nat.pow_le_pow_left hn 5
    have hconstant:(2 * Nat.factorial 11) ^ 44 < u558 ^ 4 * n ^ 5:=
      Nat.lt_of_lt_of_le u468 (Nat.mul_le_mul_left _ hstartPower)
    have hlift:(2 * Nat.factorial 11) ^ 44 * n ^ 143 < u558 ^ 4 * n ^ 148:= by
      have h:= Nat.mul_lt_mul_of_pos_right hconstant (Nat.pow_pos hnpos:0 < n ^ 143)
      simpa only [Nat.mul_assoc,← Nat.pow_add] using h
    have hstrict:= Nat.lt_of_lt_of_le hlift hbound
    apply Nat.lt_of_not_ge
    intro hreverse
    exact Nat.not_le_of_gt hstrict (Nat.mul_le_mul_left _ hreverse)
  have u470 {n j:ℕ}
      (hn:(2:ℕ) ^ 98 ≤ n) (hij:11 < j) (hjn:j ≤ n / 2)
      (hno:¬ u7 n 11 j):n ^ 13 < (u14 n 11) ^ 4:= by
    apply Iff.mp (Nat.pow_lt_pow_iff_left (n:= 11) (by decide))
    simpa only [← Nat.pow_mul] using u469 hn hij hjn hno
  have u559:u13 11 = 4:= by decide
  have u471 {n j:ℕ}
      (hn:(2:ℕ) ^ 98 ≤ n) (hij:11 < j) (hjn:j ≤ n / 2)
      (hno:¬ u7 n 11 j):
      ∃ p q:ℕ,p.Prime ∧ p < 11 ∧ q.Prime ∧ q < 11 ∧ p ≠ q ∧
        n ^ 3 < (p ^ (n.choose 11).factorization p) ^ 4 ∧
        n ^ 3 < (q ^ (n.choose 11).factorization q) ^ 4:= by
    classical
    have hn110:110 ≤ n:= Nat.le_trans u467 hn
    have hnpos:0 < n:= by omega
    let S:= (Finset.range 11).filter Nat.Prime
    let f:ℕ → ℕ:= fun p => (p ^ (n.choose 11).factorization p) ^ 4
    have hcard:S.card = 4:= u559
    have hS:S.Nonempty:= Finset.card_pos.mp (by simpa only [hcard] using (by decide:0 < (4:ℕ)))
    have hsmall:S.prod (fun p => p ^ (n.choose 11).factorization p) = u14 n 11:=
      Eq.symm (u27 n 11)
    have hproduct:S.prod f = (u14 n 11) ^ 4:= by
      dsimp only [f]
      rw [Finset.prod_pow,hsmall]
    have hcap:∀ p ∈ S,f p ≤ n ^ 4:= by
      intro p hp
      exact Nat.pow_le_pow_left (Nat.pow_factorization_choose_le hnpos) 4
    have hprod:n ^ 4 * (n ^ 3) ^ (S.card - 1) < S.prod f:= by
      rw [hcard,hproduct]
      simpa only [← Nat.pow_mul,← Nat.pow_add] using u470 hn hij hjn hno
    obtain ⟨p,hp,q,hq,hpq,hpb,hqb⟩:= u466 hS hcap hprod
    obtain ⟨hpRange,hpPrime⟩:= Finset.mem_filter.mp hp
    obtain ⟨hqRange,hqPrime⟩:= Finset.mem_filter.mp hq
    exact ⟨p,q,hpPrime,Finset.mem_range.mp hpRange,hqPrime,Finset.mem_range.mp hqRange,
      hpq,hpb,hqb⟩
  have u477:
      (Finset.range 11).filter Nat.Prime = ({2,3,5,7}:Finset ℕ):= by decide
  have u479 {n p:ℕ} (hn:11 ≤ n) (hp:p.Prime):
      Nonempty (N1.N9.d6 n p):= by
    obtain ⟨a,ha,hraw⟩:= u30 (by decide:1 ≤ 11) hn hp
    have hsubpower:N1.N9.d46 n p ∣
        p ^ ((n.choose 11).factorization p + (11:ℕ).factorization p):= by
      unfold N1.N9.d46
      exact Nat.pow_dvd_pow p (by omega)
    have hdiv:N1.N9.d46 n p ∣ n - a:= Nat.dvd_trans hsubpower hraw
    obtain ⟨C,hC⟩:= hdiv
    have hCpos:0 < C:= by
      apply Nat.pos_of_ne_zero
      intro hzero
      rw [hzero,Nat.mul_zero] at hC
      omega
    refine ⟨{
      offset:= a
      cofactor:= C
      offset_lt:= ha
      cofactor_pos:= by omega
      equation:= ?_ }⟩
    calc
      C * N1.N9.d46 n p = N1.N9.d46 n p * C:= Nat.mul_comm _ _
      _ = n - a:= Eq.symm hC
  have u460 {n j:ℕ}
      (hn:(2:ℕ) ^ 98 ≤ n) (hij:11 < j) (hjn:j ≤ n / 2)
      (hno:¬ u7 n 11 j):
      ∃ p q h k a b A C:ℕ,
        p.Prime ∧ q.Prime ∧ p ∈ ({2,3,5,7}:Finset ℕ) ∧
        q ∈ ({2,3,5,7}:Finset ℕ) ∧ p ≠ q ∧
        h = (n.choose 11).factorization p ∧ k = (n.choose 11).factorization q ∧
        0 < h ∧ 0 < k ∧ a < 11 ∧ b < 11 ∧ 1 ≤ A ∧ 1 ≤ C ∧
        n - a = p ^ h * A ∧ n - b = q ^ k * C ∧
        A ^ 3 ≤ min (n - a) (n - b) ∧ C ^ 3 ≤ min (n - a) (n - b) ∧
        Nat.dist (n - a) (n - b) ≤ 10:= by
    have hn110:110 ≤ n:= Nat.le_trans u467 hn
    have hn11:11 ≤ n:= by omega
    have hn20:20 ≤ n:= by omega
    have hnpos:0 < n:= by omega
    obtain ⟨p,q,hp,hplt,hq,hqlt,hpq,hpb,hqb⟩:= u471 hn hij hjn hno
    have hpMem:p ∈ ({2,3,5,7}:Finset ℕ):= by
      rw [← u477]
      exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr hplt,hp⟩
    have hqMem:q ∈ ({2,3,5,7}:Finset ℕ):= by
      rw [← u477]
      exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr hqlt,hq⟩
    obtain ⟨wp⟩:= u479 hn11 hp
    obtain ⟨wq⟩:= u479 hn11 hq
    have hprodP:wp.cofactor * N1.N9.d46 n p ≤ n:= by
      rw [wp.equation]
      exact Nat.sub_le n wp.offset
    have hprodQ:wq.cofactor * N1.N9.d46 n q ≤ n:= by
      rw [wq.equation]
      exact Nat.sub_le n wq.offset
    have hfourP:wp.cofactor ^ 4 ≤ n:= u461 hnpos hprodP hpb
    have hfourQ:wq.cofactor ^ 4 ≤ n:= u461 hnpos hprodQ hqb
    have hcubeP:wp.cofactor ^ 3 ≤ min (n - wp.offset) (n - wq.offset):=
      u463 hn20 wp.cofactor_pos hfourP wp.offset_lt wq.offset_lt
    have hcubeQ:wq.cofactor ^ 3 ≤ min (n - wp.offset) (n - wq.offset):=
      u463 hn20 wq.cofactor_pos hfourQ wp.offset_lt wq.offset_lt
    have hreprP:n - wp.offset = p ^ (n.choose 11).factorization p * wp.cofactor:= by
      simpa only [N1.N9.d46,Nat.mul_comm] using Eq.symm wp.equation
    have hreprQ:n - wq.offset = q ^ (n.choose 11).factorization q * wq.cofactor:= by
      simpa only [N1.N9.d46,Nat.mul_comm] using Eq.symm wq.equation
    exact ⟨p,q,(n.choose 11).factorization p,(n.choose 11).factorization q,
      wp.offset,wq.offset,wp.cofactor,wq.cofactor,hp,hq,hpMem,hqMem,hpq,
      rfl,rfl,u465 hnpos hpb,u465 hnpos hqb,
      wp.offset_lt,wq.offset_lt,wp.cofactor_pos,wq.cofactor_pos,hreprP,hreprQ,
      hcubeP,hcubeQ,u464 wp.offset_lt wq.offset_lt⟩
  have u375 (data:Math.B699.N7.d9)
      (check23:u274 2 3 10 45 15359 68 ((2:ℕ) ^ 15360) data.rows23 = true)
      (check25:u274 2 5 10 44 15359 66 ((2:ℕ) ^ 15360) data.rows25 = true)
      (check27:u274 2 7 10 43 15359 65 ((2:ℕ) ^ 15360) data.rows27 = true)
      (check35:u274 3 5 10 32 9691 75 ((2:ℕ) ^ 15360) data.rows35 = true)
      (check37:u274 3 7 10 32 9691 75 ((2:ℕ) ^ 15360) data.rows37 = true)
      (check57:u274 5 7 10 32 6615 109 ((2:ℕ) ^ 15360) data.rows57 = true)
      {n j:ℕ} (hij:11 < j) (hjn:j ≤ n / 2) (hno:¬ u7 n 11 j)
      (hnH:n < (2:ℕ) ^ 15360):n < (2:ℕ) ^ 109:= by
    by_cases hlow:n < (2:ℕ) ^ 98
    · exact hlow.trans_le (Nat.pow_le_pow_right (by decide:0 < 2)
        (by decide:98 ≤ 109))
    · have hhigh:(2:ℕ) ^ 98 ≤ n:= by omega
      obtain ⟨p,q,h,k,r,s,A,C,_hpPrime,_hqPrime,hpMem,hqMem,hpq,
        _hpFactor,_hqFactor,_hpPositive,_hqPositive,hr,hs,hA,hC,hP,hQ,
        hsmallA,hsmallC,_hdist⟩:= u460 hhigh hij hjn hno
      exact u377 data check23 check25 check27 check35 check37 check57
        hpMem hqMem hpq hnH (by omega) (by omega) hA hC hP hQ hsmallA hsmallC
  have u136 {n j:ℕ}
      (hij:11 < j) (hjn:j ≤ n / 2) (hno:¬ u7 n 11 j)
      (hnH:n < (2:ℕ) ^ 15360):n < (2:ℕ) ^ 109:= by
    exact u375 u135
      u201
      u212
      u223
      u234
      u245
      u254
      hij hjn hno hnH
  have u562:u21 11 3 7 = 128:= by decide
  have u563:u21 11 3 7 = 11 * (2 * 7 - 3) + 7:= by
    rw [u562]
  have u565
      {n i j r s H M delta:ℕ}
      (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
      (hlambda:0 < 2 * s - r)
      (hlarge:i * (i - 1) ≤ n) (hnH:n ≤ H)
      (hexponent:u21 i r s = i * (2 * s - r) + delta)
      (hcertificate:(2 * i.factorial) ^ (2 * s - r) * H ^ delta ≤
        N1.d54 i r s * M ^ ((2 * s - r) * (u13 i - 1)))
      (hno:¬ u7 n i j):
      n ^ u13 i ≤ M ^ (u13 i - 1) * u14 n i:= by
    have hn:0 < n:= by omega
    have hbase:= u20 (r:= r) hi hij hjn hsi hlarge hno
    have hcert:(2 * i.factorial) ^ (2 * s - r) * n ^ delta ≤
        N1.d54 i r s * M ^ ((2 * s - r) * (u13 i - 1)):=
      (Nat.mul_le_mul_left _ (Nat.pow_le_pow_left hnH delta)).trans hcertificate
    have hMpow:M ^ ((2 * s - r) * (u13 i - 1)) =
        (M ^ (u13 i - 1)) ^ (2 * s - r):= by
      rw [← pow_mul,Nat.mul_comm]
    have hbound:
        N1.d54 i r s * n ^ (i * (2 * s - r) + delta) ≤
          N1.d54 i r s * n ^ N1.d55 i r s *
            (M ^ (u13 i - 1) * u14 n i) ^ (2 * s - r):= by
      calc
        _ = (N1.d54 i r s * n ^ (i * (2 * s - r))) * n ^ delta:= by
          rw [pow_add]
          ring
        _ ≤ ((2 * i.factorial) ^ (2 * s - r) *
            (u14 n i) ^ (2 * s - r) * n ^ N1.d55 i r s) *
              n ^ delta:= Nat.mul_le_mul_right _ hbase
        _ = ((2 * i.factorial) ^ (2 * s - r) * n ^ delta) *
            (u14 n i) ^ (2 * s - r) * n ^ N1.d55 i r s:= by ring
        _ ≤ (N1.d54 i r s * M ^ ((2 * s - r) * (u13 i - 1))) *
            (u14 n i) ^ (2 * s - r) * n ^ N1.d55 i r s:=
          Nat.mul_le_mul_right _ (Nat.mul_le_mul_right _ hcert)
        _ = _:= by
          rw [hMpow]
          simp only [mul_pow]
          ring
    have hnpow:n ^ (i * (2 * s - r) + delta) =
        n ^ N1.d55 i r s * (n ^ u13 i) ^ (2 * s - r):= by
      rw [← pow_mul,← pow_add]
      congr 1
      unfold u21 at hexponent
      omega
    have hmul:
        (N1.d54 i r s * n ^ N1.d55 i r s) *
            (n ^ u13 i) ^ (2 * s - r) ≤
          (N1.d54 i r s * n ^ N1.d55 i r s) *
            (M ^ (u13 i - 1) * u14 n i) ^ (2 * s - r):= by
      simpa only [hnpow,Nat.mul_assoc] using hbound
    have hpowers:= Nat.le_of_mul_le_mul_left hmul
      (Nat.mul_pos (u17 i r s) (Nat.pow_pos hn))
    exact (Nat.pow_le_pow_iff_left hlambda.ne').mp hpowers
  have u564
      {n j H M:ℕ}
      (hij:11 < j) (hjn:j ≤ n / 2)
      (hlarge:110 ≤ n) (hnH:n ≤ H)
      (hcertificate:(2 * Nat.factorial 11) ^ 11 * H ^ 7 ≤ u558 * M ^ 33)
      (hno:¬ u7 n 11 j):
      n ^ 4 ≤ M ^ 3 * u14 n 11:= by
    have hcert:(2 * Nat.factorial 11) ^ (2 * 7 - 3) * H ^ 7 ≤
        N1.d54 11 3 7 * M ^ ((2 * 7 - 3) * (u13 11 - 1)):= by
      simpa only [u561,u559] using hcertificate
    have hbound:= u565
      (i:= 11) (r:= 3) (s:= 7) (delta:= 7)
      (by decide) hij hjn (by decide) (by decide) hlarge hnH
      u563 hcert hno
    simpa only [u559] using hbound
  have u282 {n j H M:ℕ}
      (hij:11 < j) (hjn:j ≤ n / 2) (hlarge:110 ≤ n) (hnH:n < H)
      (hcertificate:(2 * Nat.factorial 11) ^ 11 * H ^ 7 ≤ u558 * M ^ 33)
      (hno:¬ u7 n 11 j):n ^ 4 < M ^ 3 * u14 n 11:= by
    have hnpos:0 < n:= by omega
    have hweak:= u564
      hij hjn hlarge (Nat.le_of_lt hnH) hcertificate hno
    have hUpos:0 < u14 n 11:= by
      apply Nat.pos_of_ne_zero
      intro hz
      rw [hz,Nat.mul_zero] at hweak
      have hp:0 < n ^ 4:= Nat.pow_pos hnpos
      omega
    have hconstantPos:0 < (2 * Nat.factorial 11) ^ 11:=
      Nat.pow_pos (Nat.mul_pos (by decide:0 < (2:ℕ)) (Nat.factorial_pos 11))
    have hcertn:(2 * Nat.factorial 11) ^ 11 * n ^ 7 < u558 * M ^ 33:=
      Nat.lt_of_lt_of_le
        (Nat.mul_lt_mul_of_pos_left (Nat.pow_lt_pow_left hnH (by decide:7 ≠ 0)) hconstantPos)
        hcertificate
    have hbase:u558 * n ^ 121 ≤
        (2 * Nat.factorial 11) ^ 11 * (u14 n 11) ^ 11 * n ^ 84:= by
      have h:= u20 (r:= 3) (s:= 7)
        (by decide:2 ≤ 11) hij hjn (by decide:7 < 11) hlarge hno
      simpa only [u561,u560] using h
    have hstrict:(u558 * n ^ 84) * (n ^ 4) ^ 11 <
        (u558 * n ^ 84) * (M ^ 3 * u14 n 11) ^ 11:= by
      calc
        _ = (u558 * n ^ 121) * n ^ 7:= by
          simp only [← Nat.pow_mul,Nat.mul_assoc,← Nat.pow_add]
        _ ≤ ((2 * Nat.factorial 11) ^ 11 * (u14 n 11) ^ 11 * n ^ 84) * n ^ 7:=
          Nat.mul_le_mul_right _ hbase
        _ = ((2 * Nat.factorial 11) ^ 11 * n ^ 7) * (u14 n 11) ^ 11 * n ^ 84:= by ring
        _ < (u558 * M ^ 33) * (u14 n 11) ^ 11 * n ^ 84:=
          Nat.mul_lt_mul_of_pos_right
            (Nat.mul_lt_mul_of_pos_right hcertn (Nat.pow_pos hUpos)) (Nat.pow_pos hnpos)
        _ = (u558 * n ^ 84) * (M ^ 3 * u14 n 11) ^ 11:= by
          simp only [Nat.mul_pow,← Nat.pow_mul]
          ring
    have hpowers:(n ^ 4) ^ 11 < (M ^ 3 * u14 n 11) ^ 11:=
      Nat.lt_of_mul_lt_mul_left hstrict
    exact (Nat.pow_lt_pow_iff_left (n:= 11) (by decide)).mp hpowers
  have u478 {n p:ℕ} (hn:11 ≤ n) (hp:p.Prime):
      1 ≤ N1.N9.d46 n p ∧ N1.N9.d46 n p ≤ n:= by
    constructor
    · have hpos:0 < N1.N9.d46 n p:= Nat.pow_pos (Nat.Prime.pos hp)
      omega
    · exact Nat.pow_factorization_choose_le (by omega:0 < n)
  have u281 {n j H M:ℕ}
      (hM:1 ≤ M) (hij:11 < j) (hjn:j ≤ n / 2) (hlarge:110 ≤ n) (hnH:n < H)
      (hcertificate:(2 * Nat.factorial 11) ^ 11 * H ^ 7 ≤ u558 * M ^ 33)
      (hno:¬ u7 n 11 j):
      ∃ p q:ℕ,p.Prime ∧ q.Prime ∧ p ∈ ({2,3,5,7}:Finset ℕ) ∧
        q ∈ ({2,3,5,7}:Finset ℕ) ∧ p ≠ q ∧
        n < M * N1.N9.d46 n p ∧ n < M * N1.N9.d46 n q:= by
    classical
    let S:= (Finset.range 11).filter Nat.Prime
    let f:ℕ → ℕ:= fun p => M * N1.N9.d46 n p
    have hcard:S.card = 4:= u559
    have hS:S.Nonempty:= Finset.card_pos.mp (by rw [hcard]; decide)
    have hsmall:S.prod (N1.N9.d46 n) = u14 n 11:= by
      rw [u27]
      apply Finset.prod_congr rfl
      intro p _hp
      rfl
    have hproduct:S.prod f = M ^ 4 * u14 n 11:= by
      dsimp only [f]
      rw [Finset.prod_mul_distrib]
      simp only [Finset.prod_const,hcard]
      rw [hsmall]
    have hcap:∀ p ∈ S,f p ≤ M * n:= by
      intro p hp
      have hprime:p.Prime:= (Finset.mem_filter.mp hp).2
      exact Nat.mul_le_mul_left M (u478 (by omega:11 ≤ n) hprime).2
    have hU:= u282 hij hjn hlarge hnH hcertificate hno
    have hprod:(M * n) * n ^ (S.card - 1) < S.prod f:= by
      rw [hcard,hproduct]
      change (M * n) * n ^ 3 < M ^ 4 * u14 n 11
      calc
        _ = M * n ^ 4:= by rw [Nat.pow_succ n 3]; ring
        _ < M * (M ^ 3 * u14 n 11):=
          Nat.mul_lt_mul_of_pos_left hU (by omega)
        _ = M ^ 4 * u14 n 11:= by rw [Nat.pow_succ M 3]; ring
    obtain ⟨p,hp,q,hq,hpq,hpb,hqb⟩:= u466 hS hcap hprod
    have hpPrime:p.Prime:= (Finset.mem_filter.mp hp).2
    have hqPrime:q.Prime:= (Finset.mem_filter.mp hq).2
    have hpMem:p ∈ ({2,3,5,7}:Finset ℕ):= by
      simpa only [S,u477] using hp
    have hqMem:q ∈ ({2,3,5,7}:Finset ℕ):= by
      simpa only [S,u477] using hq
    exact ⟨p,q,hpPrime,hqPrime,hpMem,hqMem,hpq,hpb,hqb⟩
  have u284 {n M p e:ℕ}
      (hMn:M < n) (hlarge:n < M * p ^ e):0 < e:= by
    apply Nat.pos_of_ne_zero
    intro heq
    rw [heq,Nat.pow_zero,Nat.mul_one] at hlarge
    omega
  have u283 {n M A X:ℕ}
      (hproduct:A * X ≤ n) (hlarge:n < M * X):A < M:= by
    exact Nat.lt_of_mul_lt_mul_right (Nat.lt_of_le_of_lt hproduct hlarge)
  have u285 {n M p:ℕ} (window:N1.N9.d6 n p)
      (hlarge:n < M * N1.N9.d46 n p):window.cofactor < M:= by
    apply u283 (X:= N1.N9.d46 n p) (n:= n)
    · rw [window.equation]
      exact Nat.sub_le n window.offset
    · exact hlarge
  have u280 {n j H M:ℕ}
      (hM:1 ≤ M) (hlarge:110 ≤ n) (hMn:M < n) (hnH:n < H)
      (hij:11 < j) (hjn:j ≤ n / 2)
      (hcertificate:(2 * Nat.factorial 11) ^ 11 * H ^ 7 ≤ u558 * M ^ 33)
      (hno:¬ u7 n 11 j):
      ∃ p q h k a b A C:ℕ,
        p.Prime ∧ q.Prime ∧ p ∈ ({2,3,5,7}:Finset ℕ) ∧
        q ∈ ({2,3,5,7}:Finset ℕ) ∧ p ≠ q ∧
        h = (n.choose 11).factorization p ∧ k = (n.choose 11).factorization q ∧
        0 < h ∧ 0 < k ∧ a < 11 ∧ b < 11 ∧ 1 ≤ A ∧ 1 ≤ C ∧ A ≤ M ∧ C ≤ M ∧
        n - a = p ^ h * A ∧ n - b = q ^ k * C ∧ Nat.dist (n - a) (n - b) ≤ 10:= by
    have hn11:11 ≤ n:= by omega
    obtain ⟨p,q,hp,hq,hpMem,hqMem,hpq,hpb,hqb⟩:=
      u281 hM hij hjn hlarge hnH hcertificate hno
    obtain ⟨wp⟩:= u479 hn11 hp
    obtain ⟨wq⟩:= u479 hn11 hq
    have hA:wp.cofactor < M:= u285 wp hpb
    have hC:wq.cofactor < M:= u285 wq hqb
    have hpowP:0 < (n.choose 11).factorization p:= u284 hMn hpb
    have hpowQ:0 < (n.choose 11).factorization q:= u284 hMn hqb
    have hreprP:n - wp.offset = p ^ (n.choose 11).factorization p * wp.cofactor:= by
      simpa only [N1.N9.d46,Nat.mul_comm] using Eq.symm wp.equation
    have hreprQ:n - wq.offset = q ^ (n.choose 11).factorization q * wq.cofactor:= by
      simpa only [N1.N9.d46,Nat.mul_comm] using Eq.symm wq.equation
    exact ⟨p,q,(n.choose 11).factorization p,(n.choose 11).factorization q,
      wp.offset,wq.offset,wp.cofactor,wq.cofactor,hp,hq,hpMem,hqMem,hpq,
      rfl,rfl,hpowP,hpowQ,wp.offset_lt,wq.offset_lt,wp.cofactor_pos,wq.cofactor_pos,
      Nat.le_of_lt hA,Nat.le_of_lt hC,hreprP,hreprQ,
      u464 wp.offset_lt wq.offset_lt⟩
  have u392:u409 = u398 + 1:= by decide +kernel
  let u449 (M T:ℕ):ℕ:= max M (max 109 T)
  let u450 (M T:ℕ):ℕ:= u449 M T + 1
  have u287:
      u450 u397 u398 = u409:= by
    change max u397 (max 109 u398) + 1 = u409
    have hM:u397 ≤ u398:= by decide +kernel
    have h109:109 ≤ u398:= by decide +kernel
    rw [Nat.max_eq_right h109,Nat.max_eq_right hM]
    exact u392.symm
  let u306:Math.B699.N6.d5 where
    amax:= 108
    bmax:= 38
    cells:= u91
  let u401:ℕ:= 108
  have u402:u396 ≤ (2:ℕ) ^ (u401 + 1):= by
    decide +kernel
  let u407:ℕ:= 38
  have u408:u396 ≤ (7:ℕ) ^ (u407 + 1):= by
    decide +kernel
  let u455 (p q H:ℕ) (data:Math.B699.N6.d5):Bool:=
    decide (1 < p ∧ 1 < q ∧ H ≤ p ^ (data.amax + 1) ∧ H ≤ q ^ (data.bmax + 1))
  have u314:
      u455 2 7 u396 u306 = true:= by
    have hp:u396 ≤ (2:ℕ) ^ (108 + 1):= by
      simpa only [u401] using u402
    have hq:u396 ≤ (7:ℕ) ^ (38 + 1):= by
      simpa only [u407] using u408
    have hprop:1 < (2:ℕ) ∧ 1 < (7:ℕ) ∧
        u396 ≤ (2:ℕ) ^ (108 + 1) ∧
        u396 ≤ (7:ℕ) ^ (38 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  let u456 (p q H M T:ℕ) (data:Math.B699.N6.d5):Bool:=
    u455 p q H data && u63 p q H M T data.amax data.bmax data.cells
  have u457 {p q H M T:ℕ} {data:Math.B699.N6.d5}
      (hc:u455 p q H data = true)
      (hg:u63 p q H M T data.amax data.bmax data.cells = true):
      u456 p q H M T data = true:= by
    unfold u456
    exact Bool.and_eq_true_iff.mpr ⟨hc,hg⟩
  have u295:
      u456 2 7 u396 u397 u398 u306 = true:= by
    exact u457 u314
      (by simpa only [u306] using u92)
  let u307:Math.B699.N6.d5 where
    amax:= 68
    bmax:= 46
    cells:= u93
  let u403:ℕ:= 68
  have u404:u396 ≤ (3:ℕ) ^ (u403 + 1):= by
    decide +kernel
  let u405:ℕ:= 46
  have u406:u396 ≤ (5:ℕ) ^ (u405 + 1):= by
    decide +kernel
  have u296:
      u455 3 5 u396 u307 = true:= by
    have hp:u396 ≤ (3:ℕ) ^ (68 + 1):= by
      simpa only [u403] using u404
    have hq:u396 ≤ (5:ℕ) ^ (46 + 1):= by
      simpa only [u405] using u406
    have hprop:1 < (3:ℕ) ∧ 1 < (5:ℕ) ∧
        u396 ≤ (3:ℕ) ^ (68 + 1) ∧
        u396 ≤ (5:ℕ) ^ (46 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u297:
      u456 3 5 u396 u397 u398 u307 = true:= by
    exact u457 u296
      (by simpa only [u307] using u94)
  let u308:Math.B699.N6.d5 where
    amax:= 68
    bmax:= 38
    cells:= u95
  have u298:
      u455 3 7 u396 u308 = true:= by
    have hp:u396 ≤ (3:ℕ) ^ (68 + 1):= by
      simpa only [u403] using u404
    have hq:u396 ≤ (7:ℕ) ^ (38 + 1):= by
      simpa only [u407] using u408
    have hprop:1 < (3:ℕ) ∧ 1 < (7:ℕ) ∧
        u396 ≤ (3:ℕ) ^ (68 + 1) ∧
        u396 ≤ (7:ℕ) ^ (38 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u299:
      u456 3 7 u396 u397 u398 u308 = true:= by
    exact u457 u298
      (by simpa only [u308] using u96)
  let u309:Math.B699.N6.d5 where
    amax:= 46
    bmax:= 38
    cells:= u98
  have u300:
      u455 5 7 u396 u309 = true:= by
    have hp:u396 ≤ (5:ℕ) ^ (46 + 1):= by
      simpa only [u405] using u406
    have hq:u396 ≤ (7:ℕ) ^ (38 + 1):= by
      simpa only [u407] using u408
    have hprop:1 < (5:ℕ) ∧ 1 < (7:ℕ) ∧
        u396 ≤ (5:ℕ) ^ (46 + 1) ∧
        u396 ≤ (7:ℕ) ^ (38 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u301:
      u456 5 7 u396 u397 u398 u309 = true:= by
    exact u457 u300
      (by simpa only [u309] using u97)
  have u399:1 ≤ u397:= by decide +kernel
  have u400:
      (2 * Nat.factorial 11) ^ 11 * u396 ^ 7 ≤ u558 * u397 ^ 33:= by
    decide +kernel
  let u448 (H M:ℕ):Bool:=
    decide (1 ≤ M ∧ (2 * Nat.factorial 11) ^ 11 * H ^ 7 ≤ u558 * M ^ 33)
  have u302:
      u448 u396 u397 = true:= by
    unfold u448
    exact decide_eq_true ⟨u399,u400⟩
  let u304:Math.B699.N6.d5 where
    amax:= 108
    bmax:= 68
    cells:= u87
  let u305:Math.B699.N6.d5 where
    amax:= 108
    bmax:= 46
    cells:= u89
  let u303:Math.B699.N6.d8 where
    u304:= u304
    u305:= u305
    u306:= u306
    u307:= u307
    u308:= u308
    u309:= u309
  have u310:
      u455 2 3 u396 u304 = true:= by
    have hp:u396 ≤ (2:ℕ) ^ (108 + 1):= by
      simpa only [u401] using u402
    have hq:u396 ≤ (3:ℕ) ^ (68 + 1):= by
      simpa only [u403] using u404
    have hprop:1 < (2:ℕ) ∧ 1 < (3:ℕ) ∧
        u396 ≤ (2:ℕ) ^ (108 + 1) ∧
        u396 ≤ (3:ℕ) ^ (68 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u311:
      u456 2 3 u396 u397 u398 u304 = true:= by
    exact u457 u310
      (by simpa only [u304] using u88)
  have u312:
      u455 2 5 u396 u305 = true:= by
    have hp:u396 ≤ (2:ℕ) ^ (108 + 1):= by
      simpa only [u401] using u402
    have hq:u396 ≤ (5:ℕ) ^ (46 + 1):= by
      simpa only [u405] using u406
    have hprop:1 < (2:ℕ) ∧ 1 < (5:ℕ) ∧
        u396 ≤ (2:ℕ) ^ (108 + 1) ∧
        u396 ≤ (5:ℕ) ^ (46 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u313:
      u456 2 5 u396 u397 u398 u305 = true:= by
    exact u457 u312
      (by simpa only [u305] using u90)
  have u451 (H M:ℕ):
      u448 H M = true ↔
        1 ≤ M ∧ (2 * Nat.factorial 11) ^ 11 * H ^ 7 ≤ u558 * M ^ 33:= by
    unfold u448
    exact decide_eq_true_iff
  have u458 {p q H M T n r s h k A C:ℕ} {data:Math.B699.N6.d5}
      (hcheck:u456 p q H M T data = true)
      (hnH:n < H) (hr:r < 11) (hs:s < 11) (hh:1 ≤ h) (hk:1 ≤ k)
      (hA:1 ≤ A) (hC:1 ≤ C) (hAM:A ≤ M) (hCM:C ≤ M)
      (hP:n - r = p ^ h * A) (hQ:n - s = q ^ k * C):n ≤ T:= by
    unfold u456 at hcheck
    obtain ⟨hc,hg⟩:= Bool.and_eq_true_iff.mp hcheck
    unfold u455 at hc
    obtain ⟨hp,hq,hcutP,hcutQ⟩:= of_decide_eq_true hc
    exact u60 hg hp hq hcutP hcutQ hh hk hnH hr hs hA hC hAM hCM hP hQ
  have u459 {p q H M T n r s h k A C:ℕ} {data:Math.B699.N6.d5}
      (hcheck:u456 p q H M T data = true)
      (hnH:n < H) (hr:r < 11) (hs:s < 11) (hh:1 ≤ h) (hk:1 ≤ k)
      (hA:1 ≤ A) (hC:1 ≤ C) (hAM:A ≤ M) (hCM:C ≤ M)
      (hP:n - r = q ^ h * A) (hQ:n - s = p ^ k * C):n ≤ T:= by
    unfold u456 at hcheck
    obtain ⟨hc,hg⟩:= Bool.and_eq_true_iff.mp hcheck
    unfold u455 at hc
    obtain ⟨hp,hq,hcutP,hcutQ⟩:= of_decide_eq_true hc
    exact u62 hg hp hq hcutP hcutQ hk hh hnH hr hs hA hC hAM hCM hP hQ
  have u454 (data:Math.B699.N6.d8) {H M T:ℕ}
      (check23:u456 2 3 H M T data.grid23 = true)
      (check25:u456 2 5 H M T data.grid25 = true)
      (check27:u456 2 7 H M T data.grid27 = true)
      (check35:u456 3 5 H M T data.grid35 = true)
      (check37:u456 3 7 H M T data.grid37 = true)
      (check57:u456 5 7 H M T data.grid57 = true)
      {p q n r s h k A C:ℕ}
      (hpMem:p ∈ ({2,3,5,7}:Finset ℕ))
      (hqMem:q ∈ ({2,3,5,7}:Finset ℕ)) (hpq:p ≠ q)
      (hnH:n < H) (hr:r < 11) (hs:s < 11) (hh:1 ≤ h) (hk:1 ≤ k)
      (hA:1 ≤ A) (hC:1 ≤ C) (hAM:A ≤ M) (hCM:C ≤ M)
      (hP:n - r = p ^ h * A) (hQ:n - s = q ^ k * C):n ≤ T:= by
    have hpCases:p = 2 ∨ p = 3 ∨ p = 5 ∨ p = 7:= by
      simpa only [Finset.mem_insert,Finset.mem_singleton] using hpMem
    have hqCases:q = 2 ∨ q = 3 ∨ q = 5 ∨ q = 7:= by
      simpa only [Finset.mem_insert,Finset.mem_singleton] using hqMem
    rcases hpCases with hp2 | hp3 | hp5 | hp7
    · subst p
      rcases hqCases with hq2 | hq3 | hq5 | hq7
      · subst q
        exact False.elim (hpq rfl)
      · subst q
        exact u458 check23 hnH hr hs hh hk hA hC hAM hCM hP hQ
      · subst q
        exact u458 check25 hnH hr hs hh hk hA hC hAM hCM hP hQ
      · subst q
        exact u458 check27 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst p
      rcases hqCases with hq2 | hq3 | hq5 | hq7
      · subst q
        exact u459 check23 hnH hr hs hh hk hA hC hAM hCM hP hQ
      · subst q
        exact False.elim (hpq rfl)
      · subst q
        exact u458 check35 hnH hr hs hh hk hA hC hAM hCM hP hQ
      · subst q
        exact u458 check37 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst p
      rcases hqCases with hq2 | hq3 | hq5 | hq7
      · subst q
        exact u459 check25 hnH hr hs hh hk hA hC hAM hCM hP hQ
      · subst q
        exact u459 check35 hnH hr hs hh hk hA hC hAM hCM hP hQ
      · subst q
        exact False.elim (hpq rfl)
      · subst q
        exact u458 check57 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst p
      rcases hqCases with hq2 | hq3 | hq5 | hq7
      · subst q
        exact u459 check27 hnH hr hs hh hk hA hC hAM hCM hP hQ
      · subst q
        exact u459 check37 hnH hr hs hh hk hA hC hAM hCM hP hQ
      · subst q
        exact u459 check57 hnH hr hs hh hk hA hC hAM hCM hP hQ
      · subst q
        exact False.elim (hpq rfl)
  have u452 (data:Math.B699.N6.d8) {n j H M T:ℕ}
      (hconstants:u448 H M = true)
      (check23:u456 2 3 H M T data.grid23 = true)
      (check25:u456 2 5 H M T data.grid25 = true)
      (check27:u456 2 7 H M T data.grid27 = true)
      (check35:u456 3 5 H M T data.grid35 = true)
      (check37:u456 3 7 H M T data.grid37 = true)
      (check57:u456 5 7 H M T data.grid57 = true)
      (hij:11 < j) (hjn:j ≤ n / 2) (hno:¬ u7 n 11 j) (hnH:n < H):
      n ≤ u449 M T:= by
    change n ≤ max M (max 109 T)
    obtain ⟨hM,hcertificate⟩:= (u451 H M).mp hconstants
    by_cases hnM:n ≤ M
    · exact Nat.le_trans hnM (Nat.le_max_left M (max 109 T))
    by_cases hnsmall:n < 110
    · have hn109:n ≤ 109:= by omega
      exact Nat.le_trans hn109
        (Nat.le_trans (Nat.le_max_left 109 T) (Nat.le_max_right M (max 109 T)))
    have hlarge:110 ≤ n:= by omega
    have hMn:M < n:= Nat.lt_of_not_ge hnM
    obtain ⟨p,q,h,k,r,s,A,C,_,_,hpMem,hqMem,hpq,_,_,
      hh,hk,hr,hs,hA,hC,hAM,hCM,hP,hQ,_⟩:=
        u280 hM hlarge hMn hnH hij hjn hcertificate hno
    have hT:n ≤ T:= u454 data
      check23 check25 check27 check35 check37 check57 hpMem hqMem hpq hnH hr hs
      (Nat.succ_le_of_lt hh) (Nat.succ_le_of_lt hk) hA hC hAM hCM hP hQ
    exact Nat.le_trans hT
      (Nat.le_trans (Nat.le_max_right 109 T) (Nat.le_max_right M (max 109 T)))
  have u453 (data:Math.B699.N6.d8) {n j H M T:ℕ}
      (hconstants:u448 H M = true)
      (check23:u456 2 3 H M T data.grid23 = true)
      (check25:u456 2 5 H M T data.grid25 = true)
      (check27:u456 2 7 H M T data.grid27 = true)
      (check35:u456 3 5 H M T data.grid35 = true)
      (check37:u456 3 7 H M T data.grid37 = true)
      (check57:u456 5 7 H M T data.grid57 = true)
      (hij:11 < j) (hjn:j ≤ n / 2) (hno:¬ u7 n 11 j) (hnH:n < H):
      n < u450 M T:= by
    change n < Nat.succ (u449 M T)
    exact Nat.lt_succ_of_le (u452 data hconstants
      check23 check25 check27 check35 check37 check57 hij hjn hno hnH)
  have u291 {n j:ℕ}
      (hij:11 < j) (hjn:j ≤ n / 2)
      (hno:¬ u7 n 11 j)
      (hnH:n < u396):n < u409:= by
    have h:= u453
      (data:= u303)
      u302
      (by simpa only [u303] using u311)
      (by simpa only [u303] using u313)
      (by simpa only [u303] using u295)
      (by simpa only [u303] using u297)
      (by simpa only [u303] using u299)
      (by simpa only [u303] using u301)
      hij hjn hno hnH
    simpa only [u287] using h
  have u393:u422 = u411 + 1:= by decide +kernel
  have u288:
      u450 u410 u411 = u422:= by
    change max u410 (max 109 u411) + 1 = u422
    have hM:u410 ≤ u411:= by decide +kernel
    have h109:109 ≤ u411:= by decide +kernel
    rw [Nat.max_eq_right h109,Nat.max_eq_right hM]
    exact u393.symm
  let u326:Math.B699.N6.d5 where
    amax:= 60
    bmax:= 21
    cells:= u104
  let u414:ℕ:= 60
  have u415:u409 ≤ (2:ℕ) ^ (u414 + 1):= by
    decide +kernel
  let u420:ℕ:= 21
  have u421:u409 ≤ (7:ℕ) ^ (u420 + 1):= by
    decide +kernel
  have u334:
      u455 2 7 u409 u326 = true:= by
    have hp:u409 ≤ (2:ℕ) ^ (60 + 1):= by
      simpa only [u414] using u415
    have hq:u409 ≤ (7:ℕ) ^ (21 + 1):= by
      simpa only [u420] using u421
    have hprop:1 < (2:ℕ) ∧ 1 < (7:ℕ) ∧
        u409 ≤ (2:ℕ) ^ (60 + 1) ∧
        u409 ≤ (7:ℕ) ^ (21 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u315:
      u456 2 7 u409 u410 u411 u326 = true:= by
    exact u457 u334
      (by simpa only [u326] using u103)
  let u327:Math.B699.N6.d5 where
    amax:= 38
    bmax:= 25
    cells:= u106
  let u416:ℕ:= 38
  have u417:u409 ≤ (3:ℕ) ^ (u416 + 1):= by
    decide +kernel
  let u418:ℕ:= 25
  have u419:u409 ≤ (5:ℕ) ^ (u418 + 1):= by
    decide +kernel
  have u316:
      u455 3 5 u409 u327 = true:= by
    have hp:u409 ≤ (3:ℕ) ^ (38 + 1):= by
      simpa only [u416] using u417
    have hq:u409 ≤ (5:ℕ) ^ (25 + 1):= by
      simpa only [u418] using u419
    have hprop:1 < (3:ℕ) ∧ 1 < (5:ℕ) ∧
        u409 ≤ (3:ℕ) ^ (38 + 1) ∧
        u409 ≤ (5:ℕ) ^ (25 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u317:
      u456 3 5 u409 u410 u411 u327 = true:= by
    exact u457 u316
      (by simpa only [u327] using u105)
  let u328:Math.B699.N6.d5 where
    amax:= 38
    bmax:= 21
    cells:= u108
  have u318:
      u455 3 7 u409 u328 = true:= by
    have hp:u409 ≤ (3:ℕ) ^ (38 + 1):= by
      simpa only [u416] using u417
    have hq:u409 ≤ (7:ℕ) ^ (21 + 1):= by
      simpa only [u420] using u421
    have hprop:1 < (3:ℕ) ∧ 1 < (7:ℕ) ∧
        u409 ≤ (3:ℕ) ^ (38 + 1) ∧
        u409 ≤ (7:ℕ) ^ (21 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u319:
      u456 3 7 u409 u410 u411 u328 = true:= by
    exact u457 u318
      (by simpa only [u328] using u107)
  let u329:Math.B699.N6.d5 where
    amax:= 25
    bmax:= 21
    cells:= u110
  have u320:
      u455 5 7 u409 u329 = true:= by
    have hp:u409 ≤ (5:ℕ) ^ (25 + 1):= by
      simpa only [u418] using u419
    have hq:u409 ≤ (7:ℕ) ^ (21 + 1):= by
      simpa only [u420] using u421
    have hprop:1 < (5:ℕ) ∧ 1 < (7:ℕ) ∧
        u409 ≤ (5:ℕ) ^ (25 + 1) ∧
        u409 ≤ (7:ℕ) ^ (21 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u321:
      u456 5 7 u409 u410 u411 u329 = true:= by
    exact u457 u320
      (by simpa only [u329] using u109)
  have u412:1 ≤ u410:= by decide +kernel
  have u413:
      (2 * Nat.factorial 11) ^ 11 * u409 ^ 7 ≤ u558 * u410 ^ 33:= by
    decide +kernel
  have u322:
      u448 u409 u410 = true:= by
    unfold u448
    exact decide_eq_true ⟨u412,u413⟩
  let u324:Math.B699.N6.d5 where
    amax:= 60
    bmax:= 38
    cells:= u100
  let u325:Math.B699.N6.d5 where
    amax:= 60
    bmax:= 25
    cells:= u102
  let u323:Math.B699.N6.d8 where
    u324:= u324
    u325:= u325
    u326:= u326
    u327:= u327
    u328:= u328
    u329:= u329
  have u330:
      u455 2 3 u409 u324 = true:= by
    have hp:u409 ≤ (2:ℕ) ^ (60 + 1):= by
      simpa only [u414] using u415
    have hq:u409 ≤ (3:ℕ) ^ (38 + 1):= by
      simpa only [u416] using u417
    have hprop:1 < (2:ℕ) ∧ 1 < (3:ℕ) ∧
        u409 ≤ (2:ℕ) ^ (60 + 1) ∧
        u409 ≤ (3:ℕ) ^ (38 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u331:
      u456 2 3 u409 u410 u411 u324 = true:= by
    exact u457 u330
      (by simpa only [u324] using u99)
  have u332:
      u455 2 5 u409 u325 = true:= by
    have hp:u409 ≤ (2:ℕ) ^ (60 + 1):= by
      simpa only [u414] using u415
    have hq:u409 ≤ (5:ℕ) ^ (25 + 1):= by
      simpa only [u418] using u419
    have hprop:1 < (2:ℕ) ∧ 1 < (5:ℕ) ∧
        u409 ≤ (2:ℕ) ^ (60 + 1) ∧
        u409 ≤ (5:ℕ) ^ (25 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u333:
      u456 2 5 u409 u410 u411 u325 = true:= by
    exact u457 u332
      (by simpa only [u325] using u101)
  have u292 {n j:ℕ}
      (hij:11 < j) (hjn:j ≤ n / 2)
      (hno:¬ u7 n 11 j)
      (hnH:n < u409):n < u422:= by
    have h:= u453
      (data:= u323)
      u322
      (by simpa only [u323] using u331)
      (by simpa only [u323] using u333)
      (by simpa only [u323] using u315)
      (by simpa only [u323] using u317)
      (by simpa only [u323] using u319)
      (by simpa only [u323] using u321)
      hij hjn hno hnH
    simpa only [u288] using h
  have u394:u435 = u424 + 1:= by decide +kernel
  have u289:
      u450 u423 u424 = u435:= by
    change max u423 (max 109 u424) + 1 = u435
    have hM:u423 ≤ u424:= by decide +kernel
    have h109:109 ≤ u424:= by decide +kernel
    rw [Nat.max_eq_right h109,Nat.max_eq_right hM]
    exact u394.symm
  let u346:Math.B699.N6.d5 where
    amax:= 38
    bmax:= 13
    cells:= u116
  let u427:ℕ:= 38
  have u428:u422 ≤ (2:ℕ) ^ (u427 + 1):= by
    decide +kernel
  let u433:ℕ:= 13
  have u434:u422 ≤ (7:ℕ) ^ (u433 + 1):= by
    decide +kernel
  have u354:
      u455 2 7 u422 u346 = true:= by
    have hp:u422 ≤ (2:ℕ) ^ (38 + 1):= by
      simpa only [u427] using u428
    have hq:u422 ≤ (7:ℕ) ^ (13 + 1):= by
      simpa only [u433] using u434
    have hprop:1 < (2:ℕ) ∧ 1 < (7:ℕ) ∧
        u422 ≤ (2:ℕ) ^ (38 + 1) ∧
        u422 ≤ (7:ℕ) ^ (13 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u335:
      u456 2 7 u422 u423 u424 u346 = true:= by
    exact u457 u354
      (by simpa only [u346] using u115)
  let u347:Math.B699.N6.d5 where
    amax:= 24
    bmax:= 16
    cells:= u118
  let u429:ℕ:= 24
  have u430:u422 ≤ (3:ℕ) ^ (u429 + 1):= by
    decide +kernel
  let u431:ℕ:= 16
  have u432:u422 ≤ (5:ℕ) ^ (u431 + 1):= by
    decide +kernel
  have u336:
      u455 3 5 u422 u347 = true:= by
    have hp:u422 ≤ (3:ℕ) ^ (24 + 1):= by
      simpa only [u429] using u430
    have hq:u422 ≤ (5:ℕ) ^ (16 + 1):= by
      simpa only [u431] using u432
    have hprop:1 < (3:ℕ) ∧ 1 < (5:ℕ) ∧
        u422 ≤ (3:ℕ) ^ (24 + 1) ∧
        u422 ≤ (5:ℕ) ^ (16 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u337:
      u456 3 5 u422 u423 u424 u347 = true:= by
    exact u457 u336
      (by simpa only [u347] using u117)
  let u348:Math.B699.N6.d5 where
    amax:= 24
    bmax:= 13
    cells:= u120
  have u338:
      u455 3 7 u422 u348 = true:= by
    have hp:u422 ≤ (3:ℕ) ^ (24 + 1):= by
      simpa only [u429] using u430
    have hq:u422 ≤ (7:ℕ) ^ (13 + 1):= by
      simpa only [u433] using u434
    have hprop:1 < (3:ℕ) ∧ 1 < (7:ℕ) ∧
        u422 ≤ (3:ℕ) ^ (24 + 1) ∧
        u422 ≤ (7:ℕ) ^ (13 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u339:
      u456 3 7 u422 u423 u424 u348 = true:= by
    exact u457 u338
      (by simpa only [u348] using u119)
  let u349:Math.B699.N6.d5 where
    amax:= 16
    bmax:= 13
    cells:= u121
  have u340:
      u455 5 7 u422 u349 = true:= by
    have hp:u422 ≤ (5:ℕ) ^ (16 + 1):= by
      simpa only [u431] using u432
    have hq:u422 ≤ (7:ℕ) ^ (13 + 1):= by
      simpa only [u433] using u434
    have hprop:1 < (5:ℕ) ∧ 1 < (7:ℕ) ∧
        u422 ≤ (5:ℕ) ^ (16 + 1) ∧
        u422 ≤ (7:ℕ) ^ (13 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u341:
      u456 5 7 u422 u423 u424 u349 = true:= by
    exact u457 u340
      (by simpa only [u349] using u122)
  have u425:1 ≤ u423:= by decide +kernel
  have u426:
      (2 * Nat.factorial 11) ^ 11 * u422 ^ 7 ≤ u558 * u423 ^ 33:= by
    decide +kernel
  have u342:
      u448 u422 u423 = true:= by
    unfold u448
    exact decide_eq_true ⟨u425,u426⟩
  let u344:Math.B699.N6.d5 where
    amax:= 38
    bmax:= 24
    cells:= u112
  let u345:Math.B699.N6.d5 where
    amax:= 38
    bmax:= 16
    cells:= u114
  let u343:Math.B699.N6.d8 where
    u344:= u344
    u345:= u345
    u346:= u346
    u347:= u347
    u348:= u348
    u349:= u349
  have u350:
      u455 2 3 u422 u344 = true:= by
    have hp:u422 ≤ (2:ℕ) ^ (38 + 1):= by
      simpa only [u427] using u428
    have hq:u422 ≤ (3:ℕ) ^ (24 + 1):= by
      simpa only [u429] using u430
    have hprop:1 < (2:ℕ) ∧ 1 < (3:ℕ) ∧
        u422 ≤ (2:ℕ) ^ (38 + 1) ∧
        u422 ≤ (3:ℕ) ^ (24 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u351:
      u456 2 3 u422 u423 u424 u344 = true:= by
    exact u457 u350
      (by simpa only [u344] using u111)
  have u352:
      u455 2 5 u422 u345 = true:= by
    have hp:u422 ≤ (2:ℕ) ^ (38 + 1):= by
      simpa only [u427] using u428
    have hq:u422 ≤ (5:ℕ) ^ (16 + 1):= by
      simpa only [u431] using u432
    have hprop:1 < (2:ℕ) ∧ 1 < (5:ℕ) ∧
        u422 ≤ (2:ℕ) ^ (38 + 1) ∧
        u422 ≤ (5:ℕ) ^ (16 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u353:
      u456 2 5 u422 u423 u424 u345 = true:= by
    exact u457 u352
      (by simpa only [u345] using u113)
  have u293 {n j:ℕ}
      (hij:11 < j) (hjn:j ≤ n / 2)
      (hno:¬ u7 n 11 j)
      (hnH:n < u422):n < u435:= by
    have h:= u453
      (data:= u343)
      u342
      (by simpa only [u343] using u351)
      (by simpa only [u343] using u353)
      (by simpa only [u343] using u335)
      (by simpa only [u343] using u337)
      (by simpa only [u343] using u339)
      (by simpa only [u343] using u341)
      hij hjn hno hnH
    simpa only [u289] using h
  let u379:ℕ:= 29294603
  have u395:u379 = u437 + 1:= by decide +kernel
  have u290:
      u450 u436 u437 = u379:= by
    change max u436 (max 109 u437) + 1 = u379
    have hM:u436 ≤ u437:= by decide +kernel
    have h109:109 ≤ u437:= by decide +kernel
    rw [Nat.max_eq_right h109,Nat.max_eq_right hM]
    exact u395.symm
  let u366:Math.B699.N6.d5 where
    amax:= 27
    bmax:= 9
    cells:= u128
  let u440:ℕ:= 27
  have u441:u435 ≤ (2:ℕ) ^ (u440 + 1):= by
    decide +kernel
  let u446:ℕ:= 9
  have u447:u435 ≤ (7:ℕ) ^ (u446 + 1):= by
    decide +kernel
  have u374:
      u455 2 7 u435 u366 = true:= by
    have hp:u435 ≤ (2:ℕ) ^ (27 + 1):= by
      simpa only [u440] using u441
    have hq:u435 ≤ (7:ℕ) ^ (9 + 1):= by
      simpa only [u446] using u447
    have hprop:1 < (2:ℕ) ∧ 1 < (7:ℕ) ∧
        u435 ≤ (2:ℕ) ^ (27 + 1) ∧
        u435 ≤ (7:ℕ) ^ (9 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u355:
      u456 2 7 u435 u436 u437 u366 = true:= by
    exact u457 u374
      (by simpa only [u366] using u127)
  let u367:Math.B699.N6.d5 where
    amax:= 17
    bmax:= 11
    cells:= u130
  let u442:ℕ:= 17
  have u443:u435 ≤ (3:ℕ) ^ (u442 + 1):= by
    decide +kernel
  let u444:ℕ:= 11
  have u445:u435 ≤ (5:ℕ) ^ (u444 + 1):= by
    decide +kernel
  have u356:
      u455 3 5 u435 u367 = true:= by
    have hp:u435 ≤ (3:ℕ) ^ (17 + 1):= by
      simpa only [u442] using u443
    have hq:u435 ≤ (5:ℕ) ^ (11 + 1):= by
      simpa only [u444] using u445
    have hprop:1 < (3:ℕ) ∧ 1 < (5:ℕ) ∧
        u435 ≤ (3:ℕ) ^ (17 + 1) ∧
        u435 ≤ (5:ℕ) ^ (11 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u357:
      u456 3 5 u435 u436 u437 u367 = true:= by
    exact u457 u356
      (by simpa only [u367] using u129)
  let u368:Math.B699.N6.d5 where
    amax:= 17
    bmax:= 9
    cells:= u132
  have u358:
      u455 3 7 u435 u368 = true:= by
    have hp:u435 ≤ (3:ℕ) ^ (17 + 1):= by
      simpa only [u442] using u443
    have hq:u435 ≤ (7:ℕ) ^ (9 + 1):= by
      simpa only [u446] using u447
    have hprop:1 < (3:ℕ) ∧ 1 < (7:ℕ) ∧
        u435 ≤ (3:ℕ) ^ (17 + 1) ∧
        u435 ≤ (7:ℕ) ^ (9 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u359:
      u456 3 7 u435 u436 u437 u368 = true:= by
    exact u457 u358
      (by simpa only [u368] using u131)
  let u369:Math.B699.N6.d5 where
    amax:= 11
    bmax:= 9
    cells:= u133
  have u360:
      u455 5 7 u435 u369 = true:= by
    have hp:u435 ≤ (5:ℕ) ^ (11 + 1):= by
      simpa only [u444] using u445
    have hq:u435 ≤ (7:ℕ) ^ (9 + 1):= by
      simpa only [u446] using u447
    have hprop:1 < (5:ℕ) ∧ 1 < (7:ℕ) ∧
        u435 ≤ (5:ℕ) ^ (11 + 1) ∧
        u435 ≤ (7:ℕ) ^ (9 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u361:
      u456 5 7 u435 u436 u437 u369 = true:= by
    exact u457 u360
      (by simpa only [u369] using u134)
  have u438:1 ≤ u436:= by decide +kernel
  have u439:
      (2 * Nat.factorial 11) ^ 11 * u435 ^ 7 ≤ u558 * u436 ^ 33:= by
    decide +kernel
  have u362:
      u448 u435 u436 = true:= by
    unfold u448
    exact decide_eq_true ⟨u438,u439⟩
  let u364:Math.B699.N6.d5 where
    amax:= 27
    bmax:= 17
    cells:= u124
  let u365:Math.B699.N6.d5 where
    amax:= 27
    bmax:= 11
    cells:= u126
  let u363:Math.B699.N6.d8 where
    u364:= u364
    u365:= u365
    u366:= u366
    u367:= u367
    u368:= u368
    u369:= u369
  have u370:
      u455 2 3 u435 u364 = true:= by
    have hp:u435 ≤ (2:ℕ) ^ (27 + 1):= by
      simpa only [u440] using u441
    have hq:u435 ≤ (3:ℕ) ^ (17 + 1):= by
      simpa only [u442] using u443
    have hprop:1 < (2:ℕ) ∧ 1 < (3:ℕ) ∧
        u435 ≤ (2:ℕ) ^ (27 + 1) ∧
        u435 ≤ (3:ℕ) ^ (17 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u371:
      u456 2 3 u435 u436 u437 u364 = true:= by
    exact u457 u370
      (by simpa only [u364] using u123)
  have u372:
      u455 2 5 u435 u365 = true:= by
    have hp:u435 ≤ (2:ℕ) ^ (27 + 1):= by
      simpa only [u440] using u441
    have hq:u435 ≤ (5:ℕ) ^ (11 + 1):= by
      simpa only [u444] using u445
    have hprop:1 < (2:ℕ) ∧ 1 < (5:ℕ) ∧
        u435 ≤ (2:ℕ) ^ (27 + 1) ∧
        u435 ≤ (5:ℕ) ^ (11 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u373:
      u456 2 5 u435 u436 u437 u365 = true:= by
    exact u457 u372
      (by simpa only [u365] using u125)
  have u294 {n j:ℕ}
      (hij:11 < j) (hjn:j ≤ n / 2)
      (hno:¬ u7 n 11 j)
      (hnH:n < u435):n < u379:= by
    have h:= u453
      (data:= u363)
      u362
      (by simpa only [u363] using u371)
      (by simpa only [u363] using u373)
      (by simpa only [u363] using u355)
      (by simpa only [u363] using u357)
      (by simpa only [u363] using u359)
      (by simpa only [u363] using u361)
      hij hjn hno hnH
    simpa only [u290] using h
  have u391:u396 = (2:ℕ) ^ 109:= by decide +kernel
  have u286 {n j:ℕ}
      (hij:11 < j) (hjn:j ≤ n / 2)
      (hno:¬ u7 n 11 j)
      (hn109:n < (2:ℕ) ^ 109):n < u379:= by
    have hn00:n < u396:= by
      simpa only [u391] using hn109
    have hn01:= u291 hij hjn hno hn00
    have hn02:= u292 hij hjn hno hn01
    have hn03:= u293 hij hjn hno hn02
    exact u294 hij hjn hno hn03
  let u380:ℕ:= 500
  have u381:1 ≤ u380:= by decide +kernel
  have u382:
      (2 * Nat.factorial 11) ^ 11 * u379 ^ 7 ≤ u558 * u380 ^ 33:= by
    decide +kernel
  let u383:ℕ:= 24
  have u384:u379 ≤ (2:ℕ) ^ (u383 + 1):= by
    decide +kernel
  let u385:ℕ:= 15
  have u386:u379 ≤ (3:ℕ) ^ (u385 + 1):= by
    decide +kernel
  let u387:ℕ:= 10
  have u388:u379 ≤ (5:ℕ) ^ (u387 + 1):= by
    decide +kernel
  let u389:ℕ:= 8
  have u390:u379 ≤ (7:ℕ) ^ (u389 + 1):= by
    decide +kernel
  let u532 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (2 ^ a) (3 ^ b)
      (u67 u379 u380 (2 ^ a))
      (u67 u379 u380 (3 ^ b))
  let u528:Math.B699.N6.d5 where
    amax:= 24
    bmax:= 15
    u532:= u532
  let u537 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (2 ^ a) (5 ^ b)
      (u67 u379 u380 (2 ^ a))
      (u67 u379 u380 (5 ^ b))
  let u533:Math.B699.N6.d5 where
    amax:= 24
    bmax:= 10
    u537:= u537
  let u542 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (2 ^ a) (7 ^ b)
      (u67 u379 u380 (2 ^ a))
      (u67 u379 u380 (7 ^ b))
  let u538:Math.B699.N6.d5 where
    amax:= 24
    bmax:= 8
    u542:= u542
  let u547 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (3 ^ a) (5 ^ b)
      (u67 u379 u380 (3 ^ a))
      (u67 u379 u380 (5 ^ b))
  let u543:Math.B699.N6.d5 where
    amax:= 15
    bmax:= 10
    u547:= u547
  let u552 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (3 ^ a) (7 ^ b)
      (u67 u379 u380 (3 ^ a))
      (u67 u379 u380 (7 ^ b))
  let u548:Math.B699.N6.d5 where
    amax:= 15
    bmax:= 8
    u552:= u552
  let u557 (a b:ℕ):Math.B699.N2.CellData:=
    u59 (5 ^ a) (7 ^ b)
      (u67 u379 u380 (5 ^ a))
      (u67 u379 u380 (7 ^ b))
  let u553:Math.B699.N6.d5 where
    amax:= 10
    bmax:= 8
    u557:= u557
  let u472:Math.B699.N6.d8 where
    grid23:= u528
    grid25:= u533
    grid27:= u538
    grid35:= u543
    grid37:= u548
    grid57:= u553
  let u520 (cs:List N1.d4):List N1.d4:= (0,23)::cs
  let u527:List N1.d4:= [
    (24,4010),
    (4016,4042),
    (4048,4060),
    (4064,4090),
    (4096,4110),
    (4112,4138),
    (4144,4186),
    (4192,4235),
    (4240,4285),
    (4288,4298),
    (4300,4346),
    (4350,4394),
    (4400,4442),
    (4448,4490),
    (4496,4519),
    (4528,4538),
    (4544,4546),
    (4550,4554),
    (4557,4570),
    (4576,4585),
    (4592,4602),
    (4606,4618),
    (4624,4634),
    (4644,4665),
    (4672,4682),
    (4698,4698),
    (4700,4714),
    (4725,4735),
    (4752,4762),
    (4775,4789),
    (4800,4812),
    (4816,4816),
    (4825,4826),
    (4832,4842),
    (4850,4861),
    (4864,4870),
    (4880,4885),
    (4887,4890),
    (4896,4897),
    (4900,4910),
    (4914,4922),
    (4928,4935),
    (4944,4960),
    (4968,4970),
    (4975,4985),
    (4995,5010),
    (5024,5034),
    (5047,5060),
    (5075,5085),
    (5096,5098),
    (5100,5113),
    (5125,5140),
    (5145,5146),
    (5150,5162),
    (5175,5178),
    (5184,5194),
    (5200,5210),
    (5216,5221),
    (5225,5226),
    (5232,5235),
    (5238,5258),
    (5265,5275),
    (5280,5285),
    (5292,5306),
    (5319,5322),
    (5325,5335),
    (5344,5356),
    (5360,5360),
    (5375,5385),
    (5392,5410),
    (5425,5435),
    (5440,5450),
    (5454,5464),
    (5475,5485),
    (5488,5498),
    (5504,5514),
    (5525,5530),
    (5535,5546),
    (5552,5560),
    (5562,5562),
    (5568,5572),
    (5575,5578),
    (5584,5596),
    (5600,5610),
    (5616,5626),
    (5632,5645),
    (5648,5658),
    (5670,5690),
    (5697,5707),
    (5725,5738),
    (5750,5761),
    (5776,5788),
    (5792,5792),
    (5800,5802),
    (5805,5815),
    (5825,5842),
    (5850,5850),
    (5856,5866),
    (5875,5896),
    (5904,5910),
    (5913,5914),
    (5920,5923),
    (5925,5946),
    (5950,5950),
    (5952,5960),
    (5968,5988),
    (5994,5994),
    (6000,6010),
    (6021,6037),
    (6048,6058),
    (6075,6086),
    (6100,6110),
    (6112,6112),
    (6125,6138),
    (6150,6154),
    (6156,6166),
    (6175,6186),
    (6192,6193),
    (6200,6202),
    (6208,6218),
    (6224,6234),
    (6240,6247),
    (6250,6250),
    (6256,6260),
    (6264,6266),
    (6272,6282),
    (6291,6298),
    (6300,6301),
    (6304,6310),
    (6320,6331),
    (6345,6346),
    (6350,6360),
    (6370,6382),
    (6384,6385),
    (6400,6410),
    (6419,6436),
    (6450,6460),
    (6468,6478),
    (6480,6490),
    (6500,6510),
    (6512,6522),
    (6525,6538),
    (6544,6544),
    (6550,6554),
    (6560,6571),
    (6575,6585),
    (6592,6598),
    (6600,6602),
    (6608,6610),
    (6615,6634),
    (6642,6652),
    (6656,6660),
    (6664,6666),
    (6669,6682),
    (6696,6698),
    (6700,6710),
    (6713,6714),
    (6720,6733),
    (6750,6760),
    (6762,6762),
    (6768,6772),
    (6775,6787),
    (6800,6814),
    (6816,6821),
    (6825,6826),
    (6831,6841),
    (6850,6870),
    (6880,6890),
    (6900,6906),
    (6909,6910),
    (6912,6922),
    (6928,6935),
    (6944,6954),
    (6958,6970),
    (6975,6985),
    (6993,7003),
    (7007,7017),
    (7024,7034),
    (7047,7066),
    (7074,7084),
    (7101,7114),
    (7125,7138),
    (7152,7164),
    (7175,7178),
    (7182,7192),
    (7200,7213),
    (7216,7219),
    (7225,7226),
    (7232,7242),
    (7250,7260),
    (7264,7273),
    (7280,7285),
    (7290,7290),
    (7296,7310),
    (7317,7322),
    (7325,7335),
    (7344,7360),
    (7375,7385),
    (7398,7410),
    (7425,7435),
    (7448,7462),
    (7475,7485),
    (7488,7489),
    (7497,7498),
    (7500,7514),
    (7525,7530),
    (7533,7543),
    (7546,7546),
    (7550,7562),
    (7568,7570),
    (7575,7578),
    (7584,7585),
    (7587,7597),
    (7600,7610),
    (7616,7626),
    (7632,7635),
    (7641,7642),
    (7644,7658),
    (7668,7678),
    (7680,7685),
    (7695,7706),
    (7722,7722),
    (7725,7735),
    (7744,7760),
    (7776,7786),
    (7792,7813),
    (7825,7835),
    (7840,7850),
    (7856,7866),
    (7875,7882),
    (7884,7885),
    (7888,7898),
    (7904,7914),
    (7920,7921),
    (7925,7930),
    (7938,7948),
    (7952,7960),
    (7968,7978),
    (7984,7985),
    (7987,7997),
    (8000,8010),
    (8025,8029),
    (8032,8042),
    (8046,8046),
    (8050,8056),
    (8073,8083),
    (8085,8085),
    (8100,8110),
    (8127,8138),
    (8154,8164),
    (8181,8193),
    (8200,8202),
    (8208,8210),
    (8225,8242),
    (8256,8260),
    (8262,8266),
    (8281,8285),
    (8288,8298),
    (8320,8335),
    (8350,8360),
    (8375,8389),
    (8400,8407),
    (8424,8435),
    (8450,8460),
    (8477,8488),
    (8505,8510),
    (8512,8515),
    (8526,8536),
    (8550,8554),
    (8559,8560),
    (8575,8586),
    (8608,8610),
    (8613,8618),
    (8625,8634),
    (8640,8650),
    (8672,8683),
    (8700,8710),
    (8722,8732),
    (8750,8758),
    (8771,8785),
    (8800,8810),
    (8825,8839),
    (8856,8860),
    (8864,8866),
    (8869,8879),
    (8883,8885),
    (8900,8906),
    (8910,8910),
    (8918,8920),
    (8925,8935),
    (8937,8938),
    (8960,8960),
    (8964,8977),
    (8992,9002),
    (9018,9034),
    (9050,9060),
    (9065,9066),
    (9072,9082),
    (9100,9109),
    (9120,9135),
    (9152,9163),
    (9180,9190),
    (9207,9210),
    (9212,9222),
    (9225,9226),
    (9234,9235),
    (9250,9258),
    (9261,9271),
    (9280,9285),
    (9288,9290),
    (9310,9310),
    (9312,9322),
    (9325,9325),
    (9344,9354),
    (9359,9360),
    (9369,9369),
    (9375,9385),
    (9400,9406),
    (9408,9418),
    (9425,9433),
    (9450,9460),
    (9475,9485),
    (9504,9514),
    (9531,9541),
    (9555,9565),
    (9568,9568),
    (9575,9578),
    (9585,9585),
    (9600,9610),
    (9612,9614),
    (9632,9635),
    (9639,9642),
    (9653,9660),
    (9666,9676),
    (9696,9710),
    (9725,9735),
    (9750,9761),
    (9775,9784),
    (9800,9810),
    (9825,9835),
    (9850,9865),
    (9882,9885),
    (9888,9892),
    (9898,9898),
    (9900,9910),
    (9925,9930),
    (9950,9960),
    (9984,9985),
    (9990,9994),
    (9996,10006),
    (10017,10027),
    (10045,10058),
    (10075,10085),
    (10098,10108),
    (10125,10135),
    (10144,10160),
    (10176,10186),
    (10200,10202),
    (10206,10216),
    (10233,10235),
    (10240,10251),
    (10260,10260),
    (10275,10282),
    (10290,10297),
    (10300,10300),
    (10304,10310),
    (10314,10314),
    (10339,10351),
    (10368,10378),
    (10395,10398),
    (10400,10410),
    (10425,10435),
    (10437,10442),
    (10450,10459),
    (10476,10486),
    (10496,10496),
    (10500,10510),
    (10528,10540),
    (10557,10567),
    (10584,10594),
    (10600,10602),
    (10625,10635),
    (10638,10643),
    (10656,10660),
    (10665,10666),
    (10675,10675),
    (10682,10685),
    (10688,10698),
    (10700,10702),
    (10720,10735),
    (10750,10760),
    (10775,10790),
    (10800,10810),
    (10825,10837),
    (10850,10860),
    (10878,10890),
    (10908,10910),
    (10912,10918),
    (10927,10937),
    (10944,10945),
    (10950,10954),
    (10976,10986),
    (11008,11010),
    (11016,11018),
    (11025,11035),
    (11043,11053),
    (11072,11084),
    (11100,11110),
    (11124,11134),
    (11151,11160),
    (11172,11185),
    (11200,11210),
    (11225,11242),
    (11259,11260),
    (11264,11280),
    (11296,11296),
    (11300,11306),
    (11319,11323),
    (11325,11335),
    (11350,11350),
    (11360,11360),
    (11367,11378),
    (11394,11404),
    (11421,11434),
    (11450,11460),
    (11466,11466),
    (11475,11485),
    (11502,11510),
    (11520,11535),
    (11552,11562),
    (11564,11566),
    (11583,11593),
    (11610,11610),
    (11613,11623),
    (11625,11626),
    (11650,11658),
    (11664,11672),
    (11680,11685),
    (11700,11701),
    (11712,11722),
    (11725,11728),
    (11745,11755),
    (11760,11760),
    (11775,11785),
    (11800,11818),
    (11826,11835),
    (11850,11850),
    (11853,11863),
    (11875,11885),
    (11904,11917),
    (11934,11944),
    (11956,11966),
    (11968,11971),
    (11975,11978),
    (12000,12010),
    (12015,12015),
    (12025,12025),
    (12032,12035),
    (12042,12042),
    (12050,12052),
    (12054,12060),
    (12064,12064),
    (12069,12079),
    (12096,12110),
    (12125,12135),
    (12150,12162),
    (12177,12185),
    (12200,12211),
    (12225,12235),
    (12250,12266),
    (12285,12285),
    (12288,12295),
    (12300,12309),
    (12320,12322),
    (12325,12330),
    (12348,12360),
    (12375,12376),
    (12384,12385),
    (12393,12394),
    (12397,12407),
    (12420,12430),
    (12447,12458),
    (12475,12485),
    (12500,12510),
    (12544,12554),
    (12582,12586),
    (12609,12618),
    (12640,12650),
    (12672,12673),
    (12691,12700),
    (12740,12754),
    (12771,12778),
    (12798,12808),
    (12832,12835),
    (12838,12842),
    (12879,12885),
    (12887,12889),
    (12896,12897),
    (12906,12906),
    (12933,12943),
    (12960,12970),
    (12987,12997),
    (13000,13002),
    (13024,13024),
    (13034,13034),
    (13041,13044),
    (13088,13093),
    (13095,13098),
    (13122,13135),
    (13152,13159),
    (13181,13191),
    (13230,13240),
    (13250,13260),
    (13280,13290),
    (13312,13321),
    (13338,13338),
    (13344,13348),
    (13375,13386),
    (13426,13429),
    (13446,13450),
    (13473,13483),
    (13500,13510),
    (13527,13534),
    (13536,13537),
    (13573,13578),
    (13608,13610),
    (13625,13635),
    (13671,13674),
    (13696,13699),
    (13728,13730),
    (13760,13760),
    (13769,13779),
    (13824,13828),
    (13856,13861),
    (13875,13877),
    (13920,13926),
    (14014,14024),
    (14112,14122),
    (14176,14185),
    (14210,14218),
    (14250,14250),
    (14256,14266),
    (14308,14314),
    (14337,14346),
    (14375,14378),
    (14406,14410),
    (14464,14465),
    (14499,14510),
    (14560,14563),
    (14602,14602),
    (14625,14634),
    (14656,14666),
    (14749,14760),
    (14823,14826),
    (14848,14857),
    (14880,14885),
    (14904,14906),
    (14912,14914),
    (14945,14954),
    (14985,14986),
    (14994,14995),
    (15000,15004),
    (15008,15010),
    (15043,15050),
    (15072,15076),
    (15141,15151),
    (15200,15200),
    (15232,15242),
    (15296,15298),
    (15337,15338),
    (15390,15400),
    (15488,15494),
    (15552,15562),
    (15584,15592),
    (15625,15626),
    (15631,15641),
    (15680,15690),
    (15714,15722),
    (15750,15754),
    (15778,15786),
    (15875,15886),
    (15974,15978),
    (16000,16010),
    (16072,16074),
    (16121,16135),
    (16200,16202),
    (16256,16260),
    (16320,16327),
    (16366,16372),
    (16375,16376),
    (16384,16385),
    (16448,16453),
    (16513,16522),
    (16611,16615),
    (16709,16714),
    (16758,16760),
    (16767,16777),
    (16856,16858),
    (16905,16906),
    (16960,16964),
    (17003,17013),
    (17091,17098),
    (17101,17101),
    (17152,17160),
    (17250,17260),
    (17344,17344),
    (17346,17354),
    (17415,17418),
    (17496,17506),
    (17542,17546),
    (17600,17601),
    (17664,17668),
    (17738,17748),
    (17792,17797),
    (17885,17885),
    (17983,17993),
    (18130,18135),
    (18179,18186),
    (18228,18235),
    (18250,18250),
    (18306,18314),
    (18375,18385),
    (18432,18434),
    (18473,18478),
    (18500,18506),
    (18624,18635),
    (18718,18721),
    (18752,18760),
    (18816,18826),
    (18873,18885),
    (18954,18954),
    (18963,18964),
    (19008,19010),
    (19012,19018),
    (19116,19120),
    (19125,19126),
    (19200,19210),
    (19257,19260),
    (19264,19267),
    (19359,19365),
    (19456,19463),
    (19502,19510),
    (19521,19530),
    (19602,19610),
    (19649,19658),
    (19750,19757),
    (19845,19855),
    (19904,19904),
    (20000,20002),
    (20007,20010),
    (20041,20042),
    (20090,20100),
    (20169,20170),
    (20250,20260),
    (20288,20296),
    (20335,20341),
    (20384,20385),
    (20416,20422),
    (20482,20490),
    (20500,20503),
    (20580,20584),
    (20629,20635),
    (20678,20682),
    (20736,20746),
    (20825,20827),
    (20874,20884),
    (20928,20933),
    (20979,20982),
    (21000,21002),
    (21060,21066),
    (21070,21070),
    (21120,21130),
    (21222,21227),
    (21250,21258),
    (21312,21313),
    (21315,21322),
    (21376,21386),
    (21465,21472),
    (21504,21514),
    (21568,21570),
    (21627,21637),
    (21708,21717),
    (21756,21766),
    (21875,21880),
    (21952,21962),
    (22001,22010),
    (22148,22154),
    (22197,22204),
    (22250,22256),
    (22275,22282),
    (22344,22346),
    (22400,22403),
    (22442,22447),
    (22500,22501),
    (22528,22528),
    (22592,22602),
    (22687,22690),
    (22785,22794),
    (22842,22844),
    (22848,22852),
    (22883,22885),
    (22932,22933),
    (22981,22986),
    (23004,23010),
    (23040,23040),
    (23085,23089),
    (23128,23135),
    (23168,23178),
    (23232,23236),
    (23250,23257),
    (23328,23334),
    (23375,23383),
    (23424,23432),
    (23490,23498),
    (23500,23500),
    (23571,23579),
    (23618,23628),
    (23750,23754),
    (23814,23824),
    (23872,23873),
    (23875,23882),
    (24000,24010),
    (24059,24069),
    (24128,24135),
    (24138,24138),
    (24255,24265),
    (24304,24310),
    (24381,24391),
    (24451,24458),
    (24500,24510),
    (24625,24634),
    (24704,24714),
    (24875,24877),
    (25029,25034),
    (25039,25039),
    (25280,25282),
    (25353,25354),
    (25382,25385),
    (25600,25606),
    (25728,25735),
    (25758,25760),
    (25920,25930),
    (26001,26010),
    (26244,26254),
    (26375,26378),
    (26411,26416),
    (26496,26497),
    (26500,26506),
    (26568,26570),
    (26625,26634),
    (26752,26762),
    (26816,26821),
    (26880,26885),
    (27008,27010),
    (27135,27145),
    (27378,27385),
    (27459,27466),
    (27625,27631),
    (27712,27712),
    (27783,27793),
    (28032,28036),
    (28126,28135),
    (28352,28360),
    (28674,28682),
    (28755,28760),
    (28998,29008),
    (29125,29130),
    (29160,29165),
    (29248,29258),
    (29322,29322),
    (29376,29385),
    (29500,29510),
    (29568,29575),
    (29632,29635),
    (29760,29760),
    (29889,29898),
    (30132,30135),
    (30213,30218),
    (30375,30385),
    (30464,30466),
    (30528,30538),
    (30625,30628),
    (30784,30790),
    (30870,30871),
    (30875,30880),
    (31104,31114),
    (31428,31434),
    (31509,31510),
    (31556,31562),
    (31625,31626),
    (31680,31681),
    (31750,31760),
    (31875,31882),
    (32000,32010),
    (32128,32135),
    (32242,32248),
    (32250,32252),
    (32256,32260),
    (32384,32385),
    (32643,32650),
    (32896,32896),
    (33129,33135),
    (33280,33281),
    (33375,33382),
    (33536,33544),
    (33615,33625),
    (34182,34186),
    (34304,34310),
    (34432,34435),
    (34506,34510),
    (34750,34759),
    (34992,34996),
    (35000,35002),
    (35073,35082),
    (35329,35338),
    (35721,35722),
    (35883,35885),
    (35968,35974),
    (36126,36135),
    (36358,36362),
    (36375,36379),
    (36612,36618),
    (36701,36703),
    (36864,36865),
    (37000,37002),
    (37125,37130),
    (37250,37258),
    (37260,37260),
    (37376,37385),
    (37503,37513),
    (37632,37635),
    (37750,37756),
    (37760,37760),
    (38073,38080),
    (38151,38154),
    (38400,38404),
    (38759,38760),
    (38880,38885),
    (39042,39050),
    (39125,39133),
    (39375,39376),
    (39447,39455),
    (39690,39690),
    (39936,39943),
    (40131,40135),
    (40257,40260),
    (40500,40510),
    (40581,40586),
    (40824,40827),
    (40832,40834),
    (41503,41510),
    (41856,41856),
    (42250,42250),
    (42375,42378),
    (42500,42506),
    (42532,42535),
    (42625,42634),
    (42752,42760),
    (42875,42885),
    (43008,43018),
    (43254,43260),
    (43264,43264),
    (43500,43507),
    (43750,43750),
    (43904,43914),
    (44250,44257),
    (44933,44938),
    (45441,45450),
    (45625,45629),
    (45962,45962),
    (46656,46658),
    (47000,47001),
    (47385,47385),
    (47625,47626),
    (47628,47635),
    (47750,47754),
    (47872,47882),
    (48000,48010),
    (48128,48135),
    (48256,48260),
    (48363,48367),
    (48384,48385),
    (50058,50058),
    (50304,50311),
    (51456,51460),
    (51759,51760),
    (52002,52010),
    (52250,52255),
    (52480,52490),
    (52736,52741),
    (53000,53002),
    (53125,53130),
    (53250,53258),
    (53376,53385),
    (53504,53514),
    (53632,53635),
    (53760,53760),
    (54194,54199),
    (54537,54538),
    (54880,54885),
    (54918,54922),
    (55168,55171),
    (56133,56135),
    (56252,56260),
    (56376,56385),
    (56625,56629),
    (57348,57354),
    (57600,57601),
    (57625,57634),
    (58250,58250),
    (58320,58320),
    (58375,58378),
    (58500,58506),
    (58625,58634),
    (58752,58760),
    (58880,58885),
    (59000,59006),
    (59008,59010),
    (59778,59786),
    (60025,60035),
    (60375,60378),
    (60507,60510),
    (60750,60760),
    (61000,61003),
    (61056,61064),
    (61750,61750),
    (62083,62090),
    (62208,62218),
    (63112,63114),
    (63750,63754),
    (65856,65863),
    (66825,66826),
    (66885,66885),
    (67072,67078),
    (68608,68610),
    (69376,69385),
    (69632,69639),
    (70658,70666),
    (71685,71695),
    (71936,71938),
    (73750,73755),
    (75008,75010),
    (76545,76554),
    (77518,77527),
    (81162,81162),
    (81408,81415),
    (83349,83359),
    (84378,84385),
    (85000,85002),
    (85760,85760),
    (86022,86026),
    (86272,86275),
    (86784,86789),
    (87808,87818),
    (88837,88842),
    (89181,89190),
    (89866,89866),
    (90625,90634),
    (90882,90890),
    (95013,95021),
    (95744,95752),
    (96256,96260),
    (100359,100362),
    (100608,100612),
    (100845,100852),
    (101875,101881),
    (103936,103939),
    (104960,104968),
    (105219,105226),
    (105472,105472),
    (105987,105994),
    (106250,106250),
    (106677,106683),
    (107016,107018),
    (108135,108135),
    (108388,108388),
    (110080,110089),
    (111875,111882),
    (112504,112514),
    (114219,114220),
    (114696,114698),
    (114944,114949),
    (116883,116885),
    (117504,117510),
    (118341,118345),
    (119556,119562),
    (119808,119809),
    (120050,120052),
    (121088,121089),
    (121257,121260),
    (122112,122118),
    (123137,123146),
    (124166,124170),
    (129033,129034),
    (130000,130007),
    (133125,133130),
    (134144,134146),
    (138752,138760),
    (139264,139268),
    (140288,140297),
    (140630,140635),
    (141316,141322),
    (142345,142346),
    (144384,144385),
    (147500,147500),
    (153090,153098),
    (158125,158133),
    (168756,168760),
    (175625,175626),
    (177152,177157),
    (177674,177674),
    (181250,181258),
    (186880,186885),
    (196101,196106),
    (196882,196885),
    (208896,208897),
    (220160,220168),
    (220892,220897),
    (223750,223754),
    (229376,229385),
    (235008,235010),
    (239112,239114),
    (242501,242510),
    (244224,244225),
    (247303,247306),
    (261711,261719),
    (263169,263178),
    (266250,266250),
    (277504,277510),
    (288125,288130),
    (302535,302536),
    (306180,306186),
    (349191,349194),
    (354304,354304),
    (362500,362506),
    (441784,441784),
    (483328,483337),
    (612360,612362),
    (725000,725002),
    (784384,784385),
    (785133,785137),
    (818750,818751),
    (966656,966664),
    (1006020,1006029),
    (1015625,1015633),
    (1146880,1146885),
    (1226911,1226917),
    (1384375,1384381),
    (1449984,1449991),
    (2453822,2453824),
    (2703132,2703135),
    (2899968,2899972),
    (9764867,9764874),
    (19529734,19529738),
    (29294601,29294602)
  ]
  let u525:List N1.d4:= (0,23)::u527
  have u473:
      u525 = u520 u527:= rfl
  have u474:u448 u379 u380 = true:=
    (u451 u379 u380).mpr
      ⟨u381,u382⟩
  have u526:N1.d18 24 500 u525 = true:= by
    decide +kernel
  have u475:
      N1.d18 24 (max u380 109) (u520 u527) = true:= by
    have hmax:max u380 109 = (500:ℕ):= by decide
    simpa only [hmax,u473] using
      u526
  let u497 (n:ℕ) (candidate_intervals:List N1.d4):Prop:=
    ∃ I ∈ candidate_intervals,u22 n I
  let u513 (P Q v:ℕ) (d:ℤ) (t:ℕ):N1.d4:=
    let A:= (Math.B699.N3.d16 Q v d (t:ℤ)).toNat
    let C:= (Math.B699.N3.d17 P Q v d (t:ℤ)).toNat
    (max (P * A) (Q * C),min (P * A) (Q * C) + 10)
  let u514 (bounds:Math.B699.N3.d1):List ℕ:=
    List.range' bounds.lo.toNat ((bounds.hi + 1).toNat - bounds.lo.toNat)
  let u515 (P Q v capA capC:ℕ) (d:ℤ) (bounds:Math.B699.N3.d1)
      (candidates:List N1.d4):Bool:=
    u77 P Q v capA capC 10 d bounds &&
      (u514 bounds).all (fun t =>
        N1.d18 (u513 P Q v d t).1
          (u513 P Q v d t).2 candidates)
  let u516 (P Q capA capC:ℕ) (data:Math.B699.N2.CellData)
      (candidates:List N1.d4):Bool:=
    u53.all (fun d => u515 P Q data.inverse capA capC d (data.bounds d) candidates)
  let u502 (p q H M aStart aCount bStart bCount:ℕ)
      (data:ℕ → ℕ → Math.B699.N2.CellData) (candidates:List N1.d4):Bool:=
    (List.range' aStart aCount).all (fun a =>
      (List.range' bStart bCount).all (fun b =>
        u516 (p ^ a) (q ^ b)
          (u67 H M (p ^ a)) (u67 H M (q ^ b)) (data a b) candidates))
  let u503 (p q H M amax bmax:ℕ)
      (data:ℕ → ℕ → Math.B699.N2.CellData) (candidates:List N1.d4):Bool:=
    u502 p q H M 1 amax 1 bmax data candidates
  let u509 (p q H M:ℕ) (data:Math.B699.N6.d5)
      (candidates:List N1.d4):Bool:=
    u455 p q H data &&
      u503 p q H M data.amax data.bmax data.cells candidates
  have u504 {p q H M aStart aCount bStart bCount a b:ℕ}
      {data:ℕ → ℕ → Math.B699.N2.CellData} {candidates:List N1.d4}
      (hcheck:u502 p q H M aStart aCount bStart bCount data candidates = true)
      (ha0:aStart ≤ a) (ha1:a < aStart + aCount)
      (hb0:bStart ≤ b) (hb1:b < bStart + bCount):
      u516 (p ^ a) (q ^ b) (u67 H M (p ^ a))
        (u67 H M (q ^ b)) (data a b) candidates = true:= by
    unfold u502 at hcheck
    have haMem:a ∈ List.range' aStart aCount:= List.mem_range'_1.mpr ⟨ha0,ha1⟩
    have hbMem:b ∈ List.range' bStart bCount:= List.mem_range'_1.mpr ⟨hb0,hb1⟩
    exact (List.all_eq_true.mp ((List.all_eq_true.mp hcheck) a haMem)) b hbMem
  have u517 {bounds:Math.B699.N3.d1} {t:ℤ}
      (ht:0 ≤ t) (hlo:bounds.lo ≤ t) (hhi:t ≤ bounds.hi):
      t.toNat ∈ u514 bounds:= by
    unfold u514
    apply List.mem_range'_1.mpr
    constructor <;> omega
  have u518 {P Q v capA capC A C n:ℕ}
      {d:ℤ} {bounds:Math.B699.N3.d1} {candidates:List N1.d4}
      (hcheck:u515 P Q v capA capC d bounds candidates = true)
      (hA:1 ≤ A) (hC:1 ≤ C) (hAcap:A ≤ capA) (hCcap:C ≤ capC)
      (heq:(P:ℤ) * (A:ℤ) - (Q:ℤ) * (C:ℤ) = d)
      (hnlo:max (P * A) (Q * C) ≤ n)
      (hnhi:n ≤ min (P * A) (Q * C) + 10):u497 n candidates:= by
    unfold u515 at hcheck
    obtain ⟨hpair,hcover⟩:= Bool.and_eq_true_iff.mp hcheck
    obtain ⟨t,ht,hlo,hhi,hAt,hCt⟩:=
      u78 hpair hA hC hAcap hCcap heq
    have hm:= u517 ht hlo hhi
    have hc:= List.all_eq_true.mp hcover t.toNat hm
    have hAA:(Math.B699.N3.d16 Q v d (t.toNat:ℤ)).toNat = A:= by
      rw [Int.toNat_of_nonneg ht,← hAt]
      exact Int.toNat_natCast A
    have hCC:(Math.B699.N3.d17 P Q v d (t.toNat:ℤ)).toNat = C:= by
      rw [Int.toNat_of_nonneg ht,← hCt]
      exact Int.toNat_natCast C
    have hI:u513 P Q v d t.toNat =
        (max (P * A) (Q * C),min (P * A) (Q * C) + 10):= by
      simp only [u513,hAA,hCC]
    rw [hI] at hc
    exact u23 candidates (max (P * A) (Q * C))
      (min (P * A) (Q * C) + 10) n hc hnlo hnhi
  have u519 {P Q capA capC A C n:ℕ} {d:ℤ}
      {data:Math.B699.N2.CellData} {candidates:List N1.d4}
      (hcheck:u516 P Q capA capC data candidates = true)
      (hdlo:-10 ≤ d) (hdhi:d ≤ 10)
      (hA:1 ≤ A) (hC:1 ≤ C) (hAcap:A ≤ capA) (hCcap:C ≤ capC)
      (heq:(P:ℤ) * (A:ℤ) - (Q:ℤ) * (C:ℤ) = d)
      (hnlo:max (P * A) (Q * C) ≤ n)
      (hnhi:n ≤ min (P * A) (Q * C) + 10):u497 n candidates:= by
    unfold u516 at hcheck
    have hrow:= List.all_eq_true.mp hcheck d (u57 hdlo hdhi)
    exact u518 hrow hA hC hAcap hCcap heq hnlo hnhi
  have u506
      {p q H M amax bmax a b A C n:ℕ} {d:ℤ}
      {data:ℕ → ℕ → Math.B699.N2.CellData} {candidates:List N1.d4}
      (hcheck:u503 p q H M amax bmax data candidates = true)
      (ha0:1 ≤ a) (ha1:a ≤ amax) (hb0:1 ≤ b) (hb1:b ≤ bmax)
      (hdlo:-10 ≤ d) (hdhi:d ≤ 10) (hA:1 ≤ A) (hC:1 ≤ C)
      (hAcap:A ≤ u67 H M (p ^ a)) (hCcap:C ≤ u67 H M (q ^ b))
      (heq:((p ^ a:ℕ):ℤ) * (A:ℤ) - ((q ^ b:ℕ):ℤ) * (C:ℤ) = d)
      (hnlo:max (p ^ a * A) (q ^ b * C) ≤ n)
      (hnhi:n ≤ min (p ^ a * A) (q ^ b * C) + 10):u497 n candidates:= by
    unfold u503 at hcheck
    have hcell:= u504 hcheck ha0 (by omega) hb0 (by omega)
    exact u519 hcell hdlo hdhi hA hC hAcap hCcap heq hnlo hnhi
  have u507
      {p q H M amax bmax a b A C n r s:ℕ}
      {data:ℕ → ℕ → Math.B699.N2.CellData} {candidates:List N1.d4}
      (hcheck:u503 p q H M amax bmax data candidates = true)
      (hp:1 < p) (hq:1 < q)
      (hcutP:H ≤ p ^ (amax + 1)) (hcutQ:H ≤ q ^ (bmax + 1))
      (ha:1 ≤ a) (hb:1 ≤ b) (hnH:n < H)
      (hr:r < 11) (hs:s < 11) (hA:1 ≤ A) (hC:1 ≤ C)
      (hAM:A ≤ M) (hCM:C ≤ M)
      (hP:n - r = p ^ a * A) (hQ:n - s = q ^ b * C):u497 n candidates:= by
    have hPAH:= u70 hA hnH hP
    have hQCH:= u70 hC hnH hQ
    have haMax:= u66 hp hcutP hPAH
    have hbMax:= u66 hq hcutQ hQCH
    have hAcap:= u69 (Nat.pow_pos (by omega:0 < p)) hAM hnH hP
    have hCcap:= u69 (Nat.pow_pos (by omega:0 < q)) hCM hnH hQ
    obtain ⟨hdlo,hdhi,hnhi⟩:= u71 hr hs
    have hPi:((n - r:ℕ):ℤ) = ((p ^ a:ℕ):ℤ) * (A:ℤ):= by exact_mod_cast hP
    have hQi:((n - s:ℕ):ℤ) = ((q ^ b:ℕ):ℤ) * (C:ℤ):= by exact_mod_cast hQ
    have hnlo:max (p ^ a * A) (q ^ b * C) ≤ n:= by
      rw [← hP,← hQ]
      exact max_le (Nat.sub_le n r) (Nat.sub_le n s)
    apply u506 hcheck ha haMax hb hbMax hdlo hdhi hA hC hAcap hCcap
    · rw [hPi,hQi]
    · exact hnlo
    · simpa only [hP,hQ] using hnhi
  have u511 {p q H M n r s h k A C:ℕ}
      {data:Math.B699.N6.d5} {candidates:List N1.d4}
      (hcheck:u509 p q H M data candidates = true)
      (hnH:n < H) (hr:r < 11) (hs:s < 11) (hh:1 ≤ h) (hk:1 ≤ k)
      (hA:1 ≤ A) (hC:1 ≤ C) (hAM:A ≤ M) (hCM:C ≤ M)
      (hP:n - r = p ^ h * A) (hQ:n - s = q ^ k * C):u497 n candidates:= by
    unfold u509 at hcheck
    obtain ⟨hc,hg⟩:= Bool.and_eq_true_iff.mp hcheck
    unfold u455 at hc
    obtain ⟨hp,hq,hcutP,hcutQ⟩:= of_decide_eq_true hc
    exact u507 hg hp hq hcutP hcutQ hh hk hnH hr hs hA hC hAM hCM hP hQ
  have u508
      {p q H M amax bmax a b A C n r s:ℕ}
      {data:ℕ → ℕ → Math.B699.N2.CellData} {candidates:List N1.d4}
      (hcheck:u503 p q H M amax bmax data candidates = true)
      (hp:1 < p) (hq:1 < q)
      (hcutP:H ≤ p ^ (amax + 1)) (hcutQ:H ≤ q ^ (bmax + 1))
      (ha:1 ≤ a) (hb:1 ≤ b) (hnH:n < H)
      (hr:r < 11) (hs:s < 11) (hA:1 ≤ A) (hC:1 ≤ C)
      (hAM:A ≤ M) (hCM:C ≤ M)
      (hP:n - r = q ^ b * A) (hQ:n - s = p ^ a * C):u497 n candidates:= by
    exact u507 hcheck hp hq hcutP hcutQ ha hb hnH
      hs hr hC hA hCM hAM hQ hP
  have u512 {p q H M n r s h k A C:ℕ}
      {data:Math.B699.N6.d5} {candidates:List N1.d4}
      (hcheck:u509 p q H M data candidates = true)
      (hnH:n < H) (hr:r < 11) (hs:s < 11) (hh:1 ≤ h) (hk:1 ≤ k)
      (hA:1 ≤ A) (hC:1 ≤ C) (hAM:A ≤ M) (hCM:C ≤ M)
      (hP:n - r = q ^ h * A) (hQ:n - s = p ^ k * C):u497 n candidates:= by
    unfold u509 at hcheck
    obtain ⟨hc,hg⟩:= Bool.and_eq_true_iff.mp hcheck
    unfold u455 at hc
    obtain ⟨hp,hq,hcutP,hcutQ⟩:= of_decide_eq_true hc
    exact u508 hg hp hq hcutP hcutQ hk hh hnH hr hs hA hC hAM hCM hP hQ
  have u505 (data:Math.B699.N6.d8) {H M:ℕ} {candidates:List N1.d4}
      (check23:u509 2 3 H M data.grid23 candidates = true)
      (check25:u509 2 5 H M data.grid25 candidates = true)
      (check27:u509 2 7 H M data.grid27 candidates = true)
      (check35:u509 3 5 H M data.grid35 candidates = true)
      (check37:u509 3 7 H M data.grid37 candidates = true)
      (check57:u509 5 7 H M data.grid57 candidates = true)
      {p q n r s h k A C:ℕ}
      (hpMem:p ∈ ({2,3,5,7}:Finset ℕ))
      (hqMem:q ∈ ({2,3,5,7}:Finset ℕ)) (hpq:p ≠ q)
      (hnH:n < H) (hr:r < 11) (hs:s < 11) (hh:1 ≤ h) (hk:1 ≤ k)
      (hA:1 ≤ A) (hC:1 ≤ C) (hAM:A ≤ M) (hCM:C ≤ M)
      (hP:n - r = p ^ h * A) (hQ:n - s = q ^ k * C):u497 n candidates:= by
    have hpCases:p = 2 ∨ p = 3 ∨ p = 5 ∨ p = 7:= by
      simpa only [Finset.mem_insert,Finset.mem_singleton] using hpMem
    have hqCases:q = 2 ∨ q = 3 ∨ q = 5 ∨ q = 7:= by
      simpa only [Finset.mem_insert,Finset.mem_singleton] using hqMem
    rcases hpCases with hp2 | hp3 | hp5 | hp7
    · subst p
      rcases hqCases with hq2 | hq3 | hq5 | hq7
      · subst q
        exact False.elim (hpq rfl)
      · subst q
        exact u511 check23 hnH hr hs hh hk hA hC hAM hCM hP hQ
      · subst q
        exact u511 check25 hnH hr hs hh hk hA hC hAM hCM hP hQ
      · subst q
        exact u511 check27 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst p
      rcases hqCases with hq2 | hq3 | hq5 | hq7
      · subst q
        exact u512 check23 hnH hr hs hh hk hA hC hAM hCM hP hQ
      · subst q
        exact False.elim (hpq rfl)
      · subst q
        exact u511 check35 hnH hr hs hh hk hA hC hAM hCM hP hQ
      · subst q
        exact u511 check37 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst p
      rcases hqCases with hq2 | hq3 | hq5 | hq7
      · subst q
        exact u512 check25 hnH hr hs hh hk hA hC hAM hCM hP hQ
      · subst q
        exact u512 check35 hnH hr hs hh hk hA hC hAM hCM hP hQ
      · subst q
        exact False.elim (hpq rfl)
      · subst q
        exact u511 check57 hnH hr hs hh hk hA hC hAM hCM hP hQ
    · subst p
      rcases hqCases with hq2 | hq3 | hq5 | hq7
      · subst q
        exact u512 check27 hnH hr hs hh hk hA hC hAM hCM hP hQ
      · subst q
        exact u512 check37 hnH hr hs hh hk hA hC hAM hCM hP hQ
      · subst q
        exact u512 check57 hnH hr hs hh hk hA hC hAM hCM hP hQ
      · subst q
        exact False.elim (hpq rfl)
  have u501 (data:Math.B699.N6.d8)
      {n j H M:ℕ} {candidates:List N1.d4}
      (hconstants:u448 H M = true)
      (check23:u509 2 3 H M data.grid23 candidates = true)
      (check25:u509 2 5 H M data.grid25 candidates = true)
      (check27:u509 2 7 H M data.grid27 candidates = true)
      (check35:u509 3 5 H M data.grid35 candidates = true)
      (check37:u509 3 7 H M data.grid37 candidates = true)
      (check57:u509 5 7 H M data.grid57 candidates = true)
      (hsmall:N1.d18 24 (max M 109) candidates = true)
      (hij:11 < j) (hjn:j ≤ n / 2) (hno:¬ u7 n 11 j) (hnH:n < H):
      u497 n candidates:= by
    have hn24:24 ≤ n:= by omega
    by_cases hnM:n ≤ M
    · exact u23 candidates 24 (max M 109) n hsmall hn24
        (Nat.le_trans hnM (Nat.le_max_left M 109))
    by_cases hnsmall:n < 110
    · have hn109:n ≤ 109:= by omega
      exact u23 candidates 24 (max M 109) n hsmall hn24
        (Nat.le_trans hn109 (Nat.le_max_right M 109))
    obtain ⟨hM,hcertificate⟩:= (u451 H M).mp hconstants
    have hlarge:110 ≤ n:= by omega
    have hMn:M < n:= Nat.lt_of_not_ge hnM
    obtain ⟨p,q,h,k,r,s,A,C,_,_,hpMem,hqMem,hpq,_,_,
      hh,hk,hr,hs,hA,hC,hAM,hCM,hP,hQ,_⟩:=
        u280 hM hlarge hMn hnH hij hjn hcertificate hno
    exact u505 data
      check23 check25 check27 check35 check37 check57 hpMem hqMem hpq hnH hr hs
      (Nat.succ_le_of_lt hh) (Nat.succ_le_of_lt hk) hA hC hAM hCM hP hQ
  have u521 {n j:ℕ} (hij:11 < j) (hjn:j ≤ n / 2):24 ≤ n:= by
    omega
  have u522 {n:ℕ} {cs:List N1.d4}
      (hmember:u497 n (u520 cs)) (hn:24 ≤ n):
      u497 n cs:= by
    obtain ⟨I,hI,hIn⟩:= hmember
    change I ∈ (0,23)::cs at hI
    rcases List.mem_cons.mp hI with rfl | htail
    · have hn23:n ≤ 23:= hIn.2
      omega
    · exact ⟨I,htail,hIn⟩
  have u523 {n j:ℕ} {cs:List N1.d4}
      (hmember:u497 n (u520 cs))
      (hij:11 < j) (hjn:j ≤ n / 2):u497 n cs:=
    u522 hmember (u521 hij hjn)
  have u524 (data:Math.B699.N6.d8)
      {n j H M:ℕ} {cs:List N1.d4}
      (hconstants:u448 H M = true)
      (check23:u509 2 3 H M data.grid23 (u520 cs) = true)
      (check25:u509 2 5 H M data.grid25 (u520 cs) = true)
      (check27:u509 2 7 H M data.grid27 (u520 cs) = true)
      (check35:u509 3 5 H M data.grid35 (u520 cs) = true)
      (check37:u509 3 7 H M data.grid37 (u520 cs) = true)
      (check57:u509 5 7 H M data.grid57 (u520 cs) = true)
      (hsmall:N1.d18 24 (max M 109) (u520 cs) = true)
      (hij:11 < j) (hjn:j ≤ n / 2) (hno:¬ u7 n 11 j) (hnH:n < H):
      u497 n cs:= by
    have hmember:= u501 data hconstants
      check23 check25 check27 check35 check37 check57 hsmall hij hjn hno hnH
    exact u523 hmember hij hjn
  have u510 {p q H M:ℕ}
      {data:Math.B699.N6.d5} {candidates:List N1.d4}
      (hc:u455 p q H data = true)
      (hg:u503 p q H M data.amax data.bmax data.cells candidates = true):
      u509 p q H M data candidates = true:= by
    unfold u509
    exact Bool.and_eq_true_iff.mpr ⟨hc,hg⟩
  have u529:u455 2 3 u379 u528 = true:= by
    have hp:u379 ≤ (2:ℕ) ^ (24 + 1):= by
      simpa only [u383] using u384
    have hq:u379 ≤ (3:ℕ) ^ (15 + 1):= by
      simpa only [u385] using u386
    have hprop:1 < (2:ℕ) ∧ 1 < (3:ℕ) ∧
        u379 ≤ (2:ℕ) ^ (24 + 1) ∧ u379 ≤ (3:ℕ) ^ (15 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u531:
      u503 2 3 u379 u380 24 15 u532 u525 = true:= by
    decide +kernel
  have u530:u509 2 3 u379 u380 u528 u525 = true:= by
    exact u510 u529
      (by simpa only [u528] using u531)
  have u534:u455 2 5 u379 u533 = true:= by
    have hp:u379 ≤ (2:ℕ) ^ (24 + 1):= by
      simpa only [u383] using u384
    have hq:u379 ≤ (5:ℕ) ^ (10 + 1):= by
      simpa only [u387] using u388
    have hprop:1 < (2:ℕ) ∧ 1 < (5:ℕ) ∧
        u379 ≤ (2:ℕ) ^ (24 + 1) ∧ u379 ≤ (5:ℕ) ^ (10 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u536:
      u503 2 5 u379 u380 24 10 u537 u525 = true:= by
    decide +kernel
  have u535:u509 2 5 u379 u380 u533 u525 = true:= by
    exact u510 u534
      (by simpa only [u533] using u536)
  have u539:u455 2 7 u379 u538 = true:= by
    have hp:u379 ≤ (2:ℕ) ^ (24 + 1):= by
      simpa only [u383] using u384
    have hq:u379 ≤ (7:ℕ) ^ (8 + 1):= by
      simpa only [u389] using u390
    have hprop:1 < (2:ℕ) ∧ 1 < (7:ℕ) ∧
        u379 ≤ (2:ℕ) ^ (24 + 1) ∧ u379 ≤ (7:ℕ) ^ (8 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u541:
      u503 2 7 u379 u380 24 8 u542 u525 = true:= by
    decide +kernel
  have u540:u509 2 7 u379 u380 u538 u525 = true:= by
    exact u510 u539
      (by simpa only [u538] using u541)
  have u544:u455 3 5 u379 u543 = true:= by
    have hp:u379 ≤ (3:ℕ) ^ (15 + 1):= by
      simpa only [u385] using u386
    have hq:u379 ≤ (5:ℕ) ^ (10 + 1):= by
      simpa only [u387] using u388
    have hprop:1 < (3:ℕ) ∧ 1 < (5:ℕ) ∧
        u379 ≤ (3:ℕ) ^ (15 + 1) ∧ u379 ≤ (5:ℕ) ^ (10 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u546:
      u503 3 5 u379 u380 15 10 u547 u525 = true:= by
    decide +kernel
  have u545:u509 3 5 u379 u380 u543 u525 = true:= by
    exact u510 u544
      (by simpa only [u543] using u546)
  have u549:u455 3 7 u379 u548 = true:= by
    have hp:u379 ≤ (3:ℕ) ^ (15 + 1):= by
      simpa only [u385] using u386
    have hq:u379 ≤ (7:ℕ) ^ (8 + 1):= by
      simpa only [u389] using u390
    have hprop:1 < (3:ℕ) ∧ 1 < (7:ℕ) ∧
        u379 ≤ (3:ℕ) ^ (15 + 1) ∧ u379 ≤ (7:ℕ) ^ (8 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u551:
      u503 3 7 u379 u380 15 8 u552 u525 = true:= by
    decide +kernel
  have u550:u509 3 7 u379 u380 u548 u525 = true:= by
    exact u510 u549
      (by simpa only [u548] using u551)
  have u554:u455 5 7 u379 u553 = true:= by
    have hp:u379 ≤ (5:ℕ) ^ (10 + 1):= by
      simpa only [u387] using u388
    have hq:u379 ≤ (7:ℕ) ^ (8 + 1):= by
      simpa only [u389] using u390
    have hprop:1 < (5:ℕ) ∧ 1 < (7:ℕ) ∧
        u379 ≤ (5:ℕ) ^ (10 + 1) ∧ u379 ≤ (7:ℕ) ^ (8 + 1):=
      ⟨by decide,by decide,hp,hq⟩
    simp only [u455,decide_eq_true_eq]
    exact hprop
  have u556:
      u503 5 7 u379 u380 10 8 u557 u525 = true:= by
    decide +kernel
  have u555:u509 5 7 u379 u380 u553 u525 = true:= by
    exact u510 u554
      (by simpa only [u553] using u556)
  have u476 {n j:ℕ}
      (hij:11 < j) (hjn:j ≤ n / 2) (hno:¬ u7 n 11 j)
      (hnH:n < u379):u497 n u527:= by
    exact u524 u472
      (H:= u379) (M:= u380) (cs:= u527)
      u474
      (by simpa only [u472,u473] using
        u530)
      (by simpa only [u472,u473] using
        u535)
      (by simpa only [u472,u473] using
        u540)
      (by simpa only [u472,u473] using
        u545)
      (by simpa only [u472,u473] using
        u550)
      (by simpa only [u472,u473] using
        u555)
      u475 hij hjn hno hnH
  have u480 (j:ℕ) (hlo:12 ≤ j) (hhi:j ≤ 162):
      u7 330 11 j:= by
    apply u5 (p:= 163) (ei:= 1) (ej:= 1)
      (by decide +kernel) (by decide) (by decide) (by omega) (by decide) (by decide)
      (by decide)
    change 4 < j % 163
    rw [Nat.mod_eq_of_lt (by omega:j < 163)]
    omega
  have u481 (j:ℕ) (hlo:163 ≤ j) (hhi:j ≤ 165):
      u7 330 11 j:= by
    apply u5 (p:= 109) (ei:= 1) (ej:= 1)
      (by decide +kernel) (by decide) (by decide) (by omega) (by decide) (by decide)
      (by decide)
    change 3 < j % 109
    rw [Nat.mod_eq_sub_mod (by omega:109 ≤ j),
      Nat.mod_eq_of_lt (by omega:j - 109 < 109)]
    omega
  have u482 (j:ℕ) (hij:11 < j) (hjn:j ≤ 330 / 2):
      u7 330 11 j:= by
    by_cases h:j ≤ 162
    · exact u480 j (by omega) h
    · exact u481 j (by omega) (by omega)
  let u486:List Math.B699.N10.d2:= [
    ⟨(24,137),[.good ⟨24,33,.topPrime 23⟩,.good ⟨34,41,.topPrime 31⟩,.good ⟨42,51,.topPrime 41⟩,.good ⟨52,57,.topPrime 47⟩,.good ⟨58,63,.topPrime 53⟩,.good ⟨64,71,.topPrime 61⟩,.good ⟨72,81,.topPrime 71⟩,.good ⟨82,89,.topPrime 79⟩,.good ⟨90,99,.topPrime 89⟩,.good ⟨100,107,.topPrime 97⟩,.good ⟨108,117,.topPrime 107⟩,.good ⟨118,123,.topPrime 113⟩,.good ⟨124,124,.largeDivisor 140926216014727⟩,.good ⟨125,125,.largeDivisor 7417169263933⟩,.good ⟨126,126,.largeDivisor 322485620171⟩,.good ⟨127,137,.topPrime 127⟩]⟩,
    ⟨(138,261),[.good ⟨138,147,.topPrime 137⟩,.good ⟨148,149,.topPrime 139⟩,.good ⟨150,159,.topPrime 149⟩,.good ⟨160,167,.topPrime 157⟩,.good ⟨168,177,.topPrime 167⟩,.good ⟨178,183,.topPrime 173⟩,.good ⟨184,191,.topPrime 181⟩,.good ⟨192,201,.topPrime 191⟩,.good ⟨202,209,.topPrime 199⟩,.good ⟨210,210,.largeDivisor 80036661771053⟩,.good ⟨211,221,.topPrime 211⟩,.good ⟨222,222,.largeDivisor 34921388338248217⟩,.good ⟨223,233,.topPrime 223⟩,.good ⟨234,243,.topPrime 233⟩,.good ⟨244,251,.topPrime 241⟩,.good ⟨252,261,.topPrime 251⟩]⟩,
    ⟨(262,347),[.good ⟨262,267,.topPrime 257⟩,.good ⟨268,273,.topPrime 263⟩,.good ⟨274,281,.topPrime 271⟩,.good ⟨282,291,.topPrime 281⟩,.good ⟨292,293,.topPrime 283⟩,.good ⟨294,303,.topPrime 293⟩,.good ⟨304,304,.largeDivisor 1211801735253811⟩,.good ⟨305,305,.largeDivisor 73919905850482471⟩,.good ⟨306,306,.largeDivisor 21298955923020373⟩,.good ⟨307,317,.topPrime 307⟩,.good ⟨318,327,.topPrime 317⟩,.good ⟨328,328,.largeDivisor 11569892263412821⟩,.good ⟨329,329,.largeDivisor 10260093139252879⟩,.special330,.good ⟨331,341,.topPrime 331⟩,.good ⟨342,347,.topPrime 337⟩]⟩,
    ⟨(348,467),[.good ⟨348,357,.topPrime 347⟩,.good ⟨358,363,.topPrime 353⟩,.good ⟨364,369,.topPrime 359⟩,.good ⟨370,377,.topPrime 367⟩,.good ⟨378,383,.topPrime 373⟩,.good ⟨384,393,.topPrime 383⟩,.good ⟨394,399,.topPrime 389⟩,.good ⟨400,407,.topPrime 397⟩,.good ⟨408,411,.topPrime 401⟩,.good ⟨412,419,.topPrime 409⟩,.good ⟨420,429,.topPrime 419⟩,.good ⟨430,431,.topPrime 421⟩,.good ⟨432,441,.topPrime 431⟩,.good ⟨442,449,.topPrime 439⟩,.good ⟨450,459,.topPrime 449⟩,.good ⟨460,467,.topPrime 457⟩]⟩,
    ⟨(468,539),[.good ⟨468,477,.topPrime 467⟩,.good ⟨478,478,.largeDivisor 5270350720880731187⟩,.good ⟨479,489,.topPrime 479⟩,.good ⟨490,497,.topPrime 487⟩,.good ⟨498,501,.topPrime 491⟩,.good ⟨502,509,.topPrime 499⟩,.good ⟨510,519,.topPrime 509⟩,.good ⟨520,520,.largeDivisor 104967105969199357⟩,.good ⟨521,531,.topPrime 521⟩,.good ⟨532,533,.topPrime 523⟩,.good ⟨534,534,.largeDivisor 27070235206345472219⟩,.good ⟨535,535,.largeDivisor 22110802802129507843⟩,.good ⟨536,536,.largeDivisor 1481423787742677025481⟩,.good ⟨537,537,.largeDivisor 1008269422075814401373⟩,.good ⟨538,538,.largeDivisor 514657446941924239031⟩,.good ⟨539,539,.largeDivisor 514657446941924239031⟩]⟩,
    ⟨(540,651),[.good ⟨540,540,.largeDivisor 972887423330669639⟩,.good ⟨541,551,.topPrime 541⟩,.good ⟨552,557,.topPrime 547⟩,.good ⟨558,567,.topPrime 557⟩,.good ⟨568,573,.topPrime 563⟩,.good ⟨574,581,.topPrime 571⟩,.good ⟨582,587,.topPrime 577⟩,.good ⟨588,597,.topPrime 587⟩,.good ⟨598,603,.topPrime 593⟩,.good ⟨604,611,.topPrime 601⟩,.good ⟨612,617,.topPrime 607⟩,.good ⟨618,627,.topPrime 617⟩,.good ⟨628,629,.topPrime 619⟩,.good ⟨630,630,.largeDivisor 150671639572539241⟩,.good ⟨631,641,.topPrime 631⟩,.good ⟨642,651,.topPrime 641⟩]⟩,
    ⟨(652,779),[.good ⟨652,657,.topPrime 647⟩,.good ⟨658,663,.topPrime 653⟩,.good ⟨664,671,.topPrime 661⟩,.good ⟨672,672,.largeDivisor 433316763496762989311⟩,.good ⟨673,683,.topPrime 673⟩,.good ⟨684,693,.topPrime 683⟩,.good ⟨694,701,.topPrime 691⟩,.good ⟨702,711,.topPrime 701⟩,.good ⟨712,719,.topPrime 709⟩,.good ⟨720,729,.topPrime 719⟩,.good ⟨730,737,.topPrime 727⟩,.good ⟨738,743,.topPrime 733⟩,.good ⟨744,753,.topPrime 743⟩,.good ⟨754,761,.topPrime 751⟩,.good ⟨762,771,.topPrime 761⟩,.good ⟨772,779,.topPrime 769⟩]⟩,
    ⟨(780,863),[.good ⟨780,783,.topPrime 773⟩,.good ⟨784,784,.largeDivisor 15172848556831719559⟩,.good ⟨785,785,.largeDivisor 55398540079594883041⟩,.good ⟨786,786,.largeDivisor 234103508078288054141⟩,.good ⟨787,797,.topPrime 787⟩,.good ⟨798,807,.topPrime 797⟩,.good ⟨808,808,.largeDivisor 667327401920735963459⟩,.good ⟨809,819,.topPrime 809⟩,.good ⟨820,821,.topPrime 811⟩,.good ⟨822,831,.topPrime 821⟩,.good ⟨832,839,.topPrime 829⟩,.good ⟨840,849,.topPrime 839⟩,.good ⟨850,850,.largeDivisor 467687046069664043909⟩,.good ⟨851,851,.largeDivisor 398001676205284101366559⟩,.good ⟨852,852,.largeDivisor 33600617135047765989329⟩,.good ⟨853,863,.topPrime 853⟩]⟩,
    ⟨(864,917),[.good ⟨864,873,.topPrime 863⟩,.good ⟨874,874,.largeDivisor 6187517631072445747391⟩,.good ⟨875,875,.largeDivisor 6187517631072445747391⟩,.good ⟨876,876,.largeDivisor 2610917844325367280691⟩,.good ⟨877,887,.topPrime 877⟩,.good ⟨888,897,.topPrime 887⟩,.good ⟨898,898,.largeDivisor 298200661368752690509⟩,.good ⟨899,899,.largeDivisor 7245470123527261318043⟩,.good ⟨900,900,.largeDivisor 57050945854545364709⟩,.good ⟨901,901,.largeDivisor 577560699044330040481⟩,.good ⟨902,902,.largeDivisor 23679988660817531659721⟩,.good ⟨903,903,.largeDivisor 4566096468229389512861⟩,.good ⟨904,904,.largeDivisor 577792722183562166801⟩,.good ⟨905,905,.largeDivisor 701882434330367464369⟩,.good ⟨906,906,.largeDivisor 592090768625058587261⟩,.good ⟨907,917,.topPrime 907⟩]⟩,
    ⟨(918,1019),[.good ⟨918,921,.topPrime 911⟩,.good ⟨922,929,.topPrime 919⟩,.good ⟨930,939,.topPrime 929⟩,.good ⟨940,947,.topPrime 937⟩,.good ⟨948,957,.topPrime 947⟩,.good ⟨958,963,.topPrime 953⟩,.good ⟨964,964,.largeDivisor 54882072170269836921533⟩,.good ⟨965,965,.largeDivisor 199853583563435443884073⟩,.good ⟨966,966,.largeDivisor 24066138334863953975569⟩,.good ⟨967,977,.topPrime 967⟩,.good ⟨978,987,.topPrime 977⟩,.good ⟨988,993,.topPrime 983⟩,.good ⟨994,1001,.topPrime 991⟩,.good ⟨1002,1007,.topPrime 997⟩,.good ⟨1008,1008,.largeDivisor 342459332588361191983⟩,.good ⟨1009,1019,.topPrime 1009⟩]⟩,
    ⟨(1020,1097),[.good ⟨1020,1029,.topPrime 1019⟩,.good ⟨1030,1031,.topPrime 1021⟩,.good ⟨1032,1041,.topPrime 1031⟩,.good ⟨1042,1049,.topPrime 1039⟩,.good ⟨1050,1059,.topPrime 1049⟩,.good ⟨1060,1061,.topPrime 1051⟩,.good ⟨1062,1071,.topPrime 1061⟩,.good ⟨1072,1079,.topPrime 1069⟩,.good ⟨1080,1080,.largeDivisor 104881015460846448317⟩,.good ⟨1081,1081,.largeDivisor 1059592315076401968511⟩,.good ⟨1082,1082,.largeDivisor 33719967203313733233203⟩,.good ⟨1083,1083,.largeDivisor 181685196423824741749049⟩,.good ⟨1084,1084,.largeDivisor 45886941501264217161223⟩,.good ⟨1085,1085,.largeDivisor 7946900483459166100547⟩,.good ⟨1086,1086,.largeDivisor 33450906686188582888349⟩,.good ⟨1087,1097,.topPrime 1087⟩]⟩,
    ⟨(1098,1149),[.good ⟨1098,1107,.topPrime 1097⟩,.good ⟨1108,1113,.topPrime 1103⟩,.good ⟨1114,1119,.topPrime 1109⟩,.good ⟨1120,1127,.topPrime 1117⟩,.good ⟨1128,1133,.topPrime 1123⟩,.good ⟨1134,1139,.topPrime 1129⟩,.good ⟨1140,1140,.largeDivisor 93402061385831686706803⟩,.good ⟨1141,1141,.largeDivisor 134730407131774910913353⟩,.good ⟨1142,1142,.largeDivisor 204061173666428313346219⟩,.good ⟨1143,1143,.largeDivisor 91575155673626840264911⟩,.good ⟨1144,1144,.largeDivisor 11558029356865523528581⟩,.good ⟨1145,1145,.largeDivisor 2646788722722204888045049⟩,.good ⟨1146,1146,.largeDivisor 2227033682995335390381517⟩,.good ⟨1147,1147,.largeDivisor 35977572315431685813628169⟩,.good ⟨1148,1148,.largeDivisor 3892032889004483161896451⟩,.good ⟨1149,1149,.largeDivisor 2619769062370328736390757⟩]⟩,
    ⟨(1150,1259),[.good ⟨1150,1150,.largeDivisor 52901394586933767284449⟩,.good ⟨1151,1161,.topPrime 1151⟩,.good ⟨1162,1163,.topPrime 1153⟩,.good ⟨1164,1173,.topPrime 1163⟩,.good ⟨1174,1181,.topPrime 1171⟩,.good ⟨1182,1191,.topPrime 1181⟩,.good ⟨1192,1197,.topPrime 1187⟩,.good ⟨1198,1203,.topPrime 1193⟩,.good ⟨1204,1211,.topPrime 1201⟩,.good ⟨1212,1212,.largeDivisor 2362264759090746490482073⟩,.good ⟨1213,1223,.topPrime 1213⟩,.good ⟨1224,1233,.topPrime 1223⟩,.good ⟨1234,1241,.topPrime 1231⟩,.good ⟨1242,1247,.topPrime 1237⟩,.good ⟨1248,1248,.largeDivisor 135994301061180038313343⟩,.good ⟨1249,1259,.topPrime 1249⟩]⟩,
    ⟨(1260,1337),[.good ⟨1260,1269,.topPrime 1259⟩,.good ⟨1270,1270,.largeDivisor 43984872786455146185341⟩,.good ⟨1271,1271,.largeDivisor 55904773311584490801568411⟩,.good ⟨1272,1272,.largeDivisor 2349685159011877884602003⟩,.good ⟨1273,1273,.largeDivisor 4740331549004945399521949⟩,.good ⟨1274,1274,.largeDivisor 146376033579725154854597⟩,.good ⟨1275,1275,.largeDivisor 31498640137409210538331⟩,.good ⟨1276,1276,.largeDivisor 39715676694994221983113⟩,.good ⟨1277,1287,.topPrime 1277⟩,.good ⟨1288,1293,.topPrime 1283⟩,.good ⟨1294,1301,.topPrime 1291⟩,.good ⟨1302,1311,.topPrime 1301⟩,.good ⟨1312,1317,.topPrime 1307⟩,.good ⟨1318,1318,.largeDivisor 1490744226820808775543559⟩,.good ⟨1319,1329,.topPrime 1319⟩,.good ⟨1330,1337,.topPrime 1327⟩]⟩,
    ⟨(1338,1353),[.good ⟨1338,1338,.largeDivisor 1760448015894400033328303⟩,.good ⟨1339,1339,.largeDivisor 28400480641959055959356599⟩,.good ⟨1340,1340,.largeDivisor 4295332286707125844868831⟩,.good ⟨1341,1341,.largeDivisor 33684447932597986888708201⟩,.good ⟨1342,1342,.largeDivisor 16981415899904770249679341⟩,.good ⟨1343,1343,.largeDivisor 616379501447894768792414999⟩,.good ⟨1344,1344,.largeDivisor 462400226142456690767003⟩,.good ⟨1345,1345,.largeDivisor 186485248624169190129421⟩,.good ⟨1346,1346,.largeDivisor 1410163733978268145585397⟩,.good ⟨1347,1347,.largeDivisor 3791398302731990403400259⟩,.good ⟨1348,1348,.largeDivisor 6689535225239166313852813⟩,.good ⟨1349,1349,.largeDivisor 40467188425325719091423519⟩,.good ⟨1350,1350,.largeDivisor 30221948039825032928621⟩,.good ⟨1351,1351,.largeDivisor 87057253308749721719759⟩,.good ⟨1352,1352,.largeDivisor 98742790665628878997579⟩,.good ⟨1353,1353,.largeDivisor 66368105201488262932799⟩]⟩,
    ⟨(1354,1396),[.good ⟨1354,1354,.largeDivisor 33455850499931164561061⟩,.good ⟨1355,1355,.largeDivisor 9066535485481345596047531⟩,.good ⟨1356,1356,.largeDivisor 3808618995759821755960487⟩,.good ⟨1357,1357,.largeDivisor 7679488822059551445525083⟩,.good ⟨1358,1358,.largeDivisor 1659043242182130267741499⟩,.good ⟨1359,1359,.largeDivisor 743369523945108814329277⟩,.good ⟨1360,1360,.largeDivisor 9367888737632950217641⟩,.good ⟨1361,1371,.topPrime 1361⟩,.good ⟨1372,1377,.topPrime 1367⟩,.good ⟨1378,1383,.topPrime 1373⟩,.good ⟨1384,1391,.topPrime 1381⟩,.good ⟨1392,1392,.largeDivisor 19073557370537770189800737⟩,.good ⟨1393,1393,.largeDivisor 5492963700053569128466493⟩,.good ⟨1394,1394,.largeDivisor 8304979824159083910067561⟩,.good ⟨1395,1395,.largeDivisor 1488175575427350296023667⟩,.good ⟨1396,1396,.largeDivisor 1874993775538430517372779⟩]⟩,
    ⟨(1397,1491),[.good ⟨1397,1397,.largeDivisor 238124209493380675706342933⟩,.good ⟨1398,1398,.largeDivisor 40002120268174259148938647⟩,.good ⟨1399,1409,.topPrime 1399⟩,.good ⟨1410,1419,.topPrime 1409⟩,.good ⟨1420,1420,.largeDivisor 19010867728115816840795261⟩,.good ⟨1421,1421,.largeDivisor 11730109874794865710277927⟩,.good ⟨1422,1422,.largeDivisor 656753139694397158832003⟩,.good ⟨1423,1433,.topPrime 1423⟩,.good ⟨1434,1443,.topPrime 1433⟩,.good ⟨1444,1449,.topPrime 1439⟩,.good ⟨1450,1457,.topPrime 1447⟩,.good ⟨1458,1463,.topPrime 1453⟩,.good ⟨1464,1469,.topPrime 1459⟩,.good ⟨1470,1470,.largeDivisor 568459715922064580343899⟩,.good ⟨1471,1481,.topPrime 1471⟩,.good ⟨1482,1491,.topPrime 1481⟩]⟩,
    ⟨(1492,1594),[.good ⟨1492,1499,.topPrime 1489⟩,.good ⟨1500,1509,.topPrime 1499⟩,.good ⟨1510,1510,.largeDivisor 374613983949997306272979⟩,.good ⟨1511,1521,.topPrime 1511⟩,.good ⟨1522,1522,.largeDivisor 115876525400422047722149⟩,.good ⟨1523,1533,.topPrime 1523⟩,.good ⟨1534,1541,.topPrime 1531⟩,.good ⟨1542,1542,.largeDivisor 58552432732240737146389⟩,.good ⟨1543,1553,.topPrime 1543⟩,.good ⟨1554,1563,.topPrime 1553⟩,.good ⟨1564,1569,.topPrime 1559⟩,.good ⟨1570,1577,.topPrime 1567⟩,.good ⟨1578,1581,.topPrime 1571⟩,.good ⟨1582,1589,.topPrime 1579⟩,.good ⟨1590,1593,.topPrime 1583⟩,.good ⟨1594,1594,.largeDivisor 9456141106591281681782801⟩]⟩,
    ⟨(1595,1655),[.good ⟨1595,1595,.largeDivisor 274228092091147168771701229⟩,.good ⟨1596,1596,.largeDivisor 16436384068554562166127203⟩,.good ⟨1597,1607,.topPrime 1597⟩,.good ⟨1608,1617,.topPrime 1607⟩,.good ⟨1618,1623,.topPrime 1613⟩,.good ⟨1624,1631,.topPrime 1621⟩,.good ⟨1632,1637,.topPrime 1627⟩,.good ⟨1638,1647,.topPrime 1637⟩,.good ⟨1648,1648,.largeDivisor 1951043014450380585735247⟩,.good ⟨1649,1649,.largeDivisor 247482302371436737375186331⟩,.good ⟨1650,1650,.largeDivisor 1660955049472729781041519⟩,.good ⟨1651,1651,.largeDivisor 66883824065353094353647509⟩,.good ⟨1652,1652,.largeDivisor 7214160182551796283117373⟩,.good ⟨1653,1653,.largeDivisor 4841659269897734168084863⟩,.good ⟨1654,1654,.largeDivisor 2437037258798189992091407⟩,.good ⟨1655,1655,.largeDivisor 5888024326001466331257341⟩]⟩,
    ⟨(1656,1691),[.good ⟨1656,1656,.largeDivisor 2881373606341143098274869⟩,.good ⟨1657,1667,.topPrime 1657⟩,.good ⟨1668,1677,.topPrime 1667⟩,.good ⟨1678,1679,.topPrime 1669⟩,.good ⟨1680,1680,.largeDivisor 289466395068644229119983⟩,.good ⟨1681,1681,.largeDivisor 2913730599463418857189769⟩,.good ⟨1682,1682,.largeDivisor 4399367027197011236798197⟩,.good ⟨1683,1683,.largeDivisor 3936275761176273211872071⟩,.good ⟨1684,1684,.largeDivisor 6933774457971594235138669⟩,.good ⟨1685,1685,.largeDivisor 75376838462465395394894563⟩,.good ⟨1686,1686,.largeDivisor 316132710566459344865154809⟩,.good ⟨1687,1687,.largeDivisor 181832895576412176879480451⟩,.good ⟨1688,1688,.largeDivisor 68634599224728030986709079⟩,.good ⟨1689,1689,.largeDivisor 46056352042338356907648643⟩,.good ⟨1690,1690,.largeDivisor 4635809109681466538053973⟩,.good ⟨1691,1691,.largeDivisor 7839153204471359915849268343⟩]⟩,
    ⟨(1692,1773),[.good ⟨1692,1692,.largeDivisor 219179179423054084500247241⟩,.good ⟨1693,1703,.topPrime 1693⟩,.good ⟨1704,1709,.topPrime 1699⟩,.good ⟨1710,1719,.topPrime 1709⟩,.good ⟨1720,1720,.largeDivisor 268048235354732155298027⟩,.good ⟨1721,1731,.topPrime 1721⟩,.good ⟨1732,1733,.topPrime 1723⟩,.good ⟨1734,1743,.topPrime 1733⟩,.good ⟨1744,1751,.topPrime 1741⟩,.good ⟨1752,1757,.topPrime 1747⟩,.good ⟨1758,1763,.topPrime 1753⟩,.good ⟨1764,1769,.topPrime 1759⟩,.good ⟨1770,1770,.largeDivisor 3860905251431273224875761⟩,.good ⟨1771,1771,.largeDivisor 88800820782919284172142503⟩,.good ⟨1772,1772,.largeDivisor 67016633061044706794308567⟩,.good ⟨1773,1773,.largeDivisor 14985558130562777796230179⟩]⟩,
    ⟨(1774,1845),[.good ⟨1774,1774,.largeDivisor 7539529246630280150457271⟩,.good ⟨1775,1775,.largeDivisor 535306576510749890682466241⟩,.good ⟨1776,1776,.largeDivisor 56108621333987948881731589⟩,.good ⟨1777,1787,.topPrime 1777⟩,.good ⟨1788,1797,.topPrime 1787⟩,.good ⟨1798,1799,.topPrime 1789⟩,.good ⟨1800,1800,.largeDivisor 38728022964284306792399⟩,.good ⟨1801,1811,.topPrime 1801⟩,.good ⟨1812,1821,.topPrime 1811⟩,.good ⟨1822,1822,.largeDivisor 30364345282514714939103779⟩,.good ⟨1823,1833,.topPrime 1823⟩,.good ⟨1834,1841,.topPrime 1831⟩,.good ⟨1842,1842,.largeDivisor 19979167637811908034859597⟩,.good ⟨1843,1843,.largeDivisor 160793039111298456367887499⟩,.good ⟨1844,1844,.largeDivisor 121318479591339751858586149⟩,.good ⟨1845,1845,.largeDivisor 37969905826297174245817039⟩]⟩,
    ⟨(1846,1926),[.good ⟨1846,1846,.largeDivisor 95493795851968097626400891⟩,.good ⟨1847,1857,.topPrime 1847⟩,.good ⟨1858,1858,.largeDivisor 3296838436545217624630259⟩,.good ⟨1859,1859,.largeDivisor 557165695776141778562513771⟩,.good ⟨1860,1860,.largeDivisor 9341339409983988715758749⟩,.good ⟨1861,1871,.topPrime 1861⟩,.good ⟨1872,1881,.topPrime 1871⟩,.good ⟨1882,1889,.topPrime 1879⟩,.good ⟨1890,1899,.topPrime 1889⟩,.good ⟨1900,1900,.largeDivisor 1499951385481258625219291⟩,.good ⟨1901,1911,.topPrime 1901⟩,.good ⟨1912,1917,.topPrime 1907⟩,.good ⟨1918,1923,.topPrime 1913⟩,.good ⟨1924,1924,.largeDivisor 56524930146410059166746589⟩,.good ⟨1925,1925,.largeDivisor 1949135522290002040232641⟩,.good ⟨1926,1926,.largeDivisor 544536555835588037349589⟩]⟩,
    ⟨(1927,1964),[.good ⟨1927,1927,.largeDivisor 2190651238194526404953357⟩,.good ⟨1928,1928,.largeDivisor 7435872512744800895686747⟩,.good ⟨1929,1929,.largeDivisor 34899752012371583765887433⟩,.good ⟨1930,1930,.largeDivisor 3509980270134296856079351⟩,.good ⟨1931,1941,.topPrime 1931⟩,.good ⟨1942,1943,.topPrime 1933⟩,.good ⟨1944,1944,.largeDivisor 9385719533671432280239339⟩,.good ⟨1945,1945,.largeDivisor 3775641053359035322660913⟩,.good ⟨1946,1946,.largeDivisor 12204979218997811856973649⟩,.good ⟨1947,1947,.largeDivisor 65463070356442809051040481⟩,.good ⟨1948,1948,.largeDivisor 16458706899115977288516631⟩,.good ⟨1949,1959,.topPrime 1949⟩,.good ⟨1960,1961,.topPrime 1951⟩,.good ⟨1962,1962,.largeDivisor 2862520196686320624123811⟩,.good ⟨1963,1963,.largeDivisor 92116838460577825986148213⟩,.good ⟨1964,1964,.largeDivisor 1459011860778829437393508793⟩]⟩,
    ⟨(1965,2037),[.good ⟨1965,1965,.largeDivisor 195630044792248368780501179⟩,.good ⟨1966,1966,.largeDivisor 491826941255192190565812427⟩,.good ⟨1967,1967,.largeDivisor 847873438605576721159468049⟩,.good ⟨1968,1968,.largeDivisor 17763316802671765747336837⟩,.good ⟨1969,1969,.largeDivisor 35726221434587034480598807⟩,.good ⟨1970,1970,.largeDivisor 10778048426667145164897343⟩,.good ⟨1971,1971,.largeDivisor 786797535146701597037506039⟩,.good ⟨1972,1972,.largeDivisor 197802745959879595787603507⟩,.good ⟨1973,1983,.topPrime 1973⟩,.good ⟨1984,1989,.topPrime 1979⟩,.good ⟨1990,1997,.topPrime 1987⟩,.good ⟨1998,2007,.topPrime 1997⟩,.good ⟨2008,2013,.topPrime 2003⟩,.good ⟨2014,2021,.topPrime 2011⟩,.good ⟨2022,2027,.topPrime 2017⟩,.good ⟨2028,2037,.topPrime 2027⟩]⟩,
    ⟨(2038,2124),[.good ⟨2038,2039,.topPrime 2029⟩,.good ⟨2040,2049,.topPrime 2039⟩,.good ⟨2050,2050,.largeDivisor 426652004520453460482253⟩,.good ⟨2051,2051,.largeDivisor 7353472783793697877723537⟩,.good ⟨2052,2052,.largeDivisor 68454670696756619145883⟩,.good ⟨2053,2063,.topPrime 2053⟩,.good ⟨2064,2073,.topPrime 2063⟩,.good ⟨2074,2079,.topPrime 2069⟩,.good ⟨2080,2080,.largeDivisor 508728483924638938550707⟩,.good ⟨2081,2091,.topPrime 2081⟩,.good ⟨2092,2099,.topPrime 2089⟩,.good ⟨2100,2109,.topPrime 2099⟩,.good ⟨2110,2110,.largeDivisor 680851108667062287789367⟩,.good ⟨2111,2121,.topPrime 2111⟩,.good ⟨2122,2123,.topPrime 2113⟩,.good ⟨2124,2124,.largeDivisor 384484596367630091351380037⟩]⟩,
    ⟨(2125,2178),[.good ⟨2125,2125,.largeDivisor 43286345286421930814393779⟩,.good ⟨2126,2126,.largeDivisor 979008192329074733100012491⟩,.good ⟨2127,2127,.largeDivisor 1312130072516661598805120711⟩,.good ⟨2128,2128,.largeDivisor 11776320915359740376616577⟩,.good ⟨2129,2139,.topPrime 2129⟩,.good ⟨2140,2147,.topPrime 2137⟩,.good ⟨2148,2153,.topPrime 2143⟩,.good ⟨2154,2163,.topPrime 2153⟩,.good ⟨2164,2171,.topPrime 2161⟩,.good ⟨2172,2172,.largeDivisor 1475733492073042261436656513⟩,.good ⟨2173,2173,.largeDivisor 2966483698681517885385619429⟩,.good ⟨2174,2174,.largeDivisor 31306483305503009139943381741⟩,.good ⟨2175,2175,.largeDivisor 1678166387910512504728942829⟩,.good ⟨2176,2176,.largeDivisor 65886440172006264619843021⟩,.good ⟨2177,2177,.largeDivisor 56760894441811491126789971⟩,.good ⟨2178,2178,.largeDivisor 3169390044974245697434973⟩]⟩,
    ⟨(2179,2223),[.good ⟨2179,2189,.topPrime 2179⟩,.good ⟨2190,2190,.largeDivisor 9312099530242515999359783⟩,.good ⟨2191,2191,.largeDivisor 26740249109778967961464331⟩,.good ⟨2192,2192,.largeDivisor 5039084082585582683247061⟩,.good ⟨2193,2193,.largeDivisor 3376324898597672723605501⟩,.good ⟨2194,2194,.largeDivisor 1696668993935706357212659⟩,.good ⟨2195,2195,.largeDivisor 57295206795213468524335177⟩,.good ⟨2196,2196,.largeDivisor 7997729094984031075479281⟩,.good ⟨2197,2197,.largeDivisor 16075947686806876736347649⟩,.good ⟨2198,2198,.largeDivisor 2523923786828679647606580893⟩,.good ⟨2199,2199,.largeDivisor 3382150156755799235275363427⟩,.good ⟨2200,2200,.largeDivisor 16995729430933664498871173⟩,.good ⟨2201,2201,.largeDivisor 512432883253219117287882901⟩,.good ⟨2202,2202,.largeDivisor 600839834357608357970137459⟩,.good ⟨2203,2213,.topPrime 2203⟩,.good ⟨2214,2223,.topPrime 2213⟩]⟩,
    ⟨(2224,2283),[.good ⟨2224,2231,.topPrime 2221⟩,.good ⟨2232,2232,.largeDivisor 232503425977815963337910491⟩,.good ⟨2233,2233,.largeDivisor 66758409439174880562370339⟩,.good ⟨2234,2234,.largeDivisor 301899365763394095498654529⟩,.good ⟨2235,2235,.largeDivisor 323618744595292951289924639⟩,.good ⟨2236,2236,.largeDivisor 2032616609312008536753571609⟩,.good ⟨2237,2247,.topPrime 2237⟩,.good ⟨2248,2253,.topPrime 2243⟩,.good ⟨2254,2261,.topPrime 2251⟩,.good ⟨2262,2262,.largeDivisor 164922314509051502728650637⟩,.good ⟨2263,2263,.largeDivisor 662911541268176821802728937⟩,.good ⟨2264,2264,.largeDivisor 249805547508514035379723421⟩,.good ⟨2265,2265,.largeDivisor 1640027724947200840971227677⟩,.good ⟨2266,2266,.largeDivisor 4120069650477114307805767091⟩,.good ⟨2267,2277,.topPrime 2267⟩,.good ⟨2278,2283,.topPrime 2273⟩]⟩,
    ⟨(2284,2331),[.good ⟨2284,2291,.topPrime 2281⟩,.good ⟨2292,2297,.topPrime 2287⟩,.good ⟨2298,2307,.topPrime 2297⟩,.good ⟨2308,2308,.largeDivisor 18016641098855713886394251⟩,.good ⟨2309,2319,.topPrime 2309⟩,.good ⟨2320,2321,.topPrime 2311⟩,.good ⟨2322,2322,.largeDivisor 599159510783167599634542511⟩,.good ⟨2323,2323,.largeDivisor 4816081465568506345851357277⟩,.good ⟨2324,2324,.largeDivisor 1555388177596054578621255463⟩,.good ⟨2325,2325,.largeDivisor 41674186262297054396939429⟩,.good ⟨2326,2326,.largeDivisor 104680515384560419575897529⟩,.good ⟨2327,2327,.largeDivisor 1262132431605554903384008031⟩,.good ⟨2328,2328,.largeDivisor 369869624972020621233379997⟩,.good ⟨2329,2329,.largeDivisor 743249660534802439044471107⟩,.good ⟨2330,2330,.largeDivisor 224032562619157785636949247⟩,.good ⟨2331,2331,.largeDivisor 285834648858925450640245591⟩]⟩,
    ⟨(2332,2433),[.good ⟨2332,2332,.largeDivisor 71797328860298809876459793⟩,.good ⟨2333,2343,.topPrime 2333⟩,.good ⟨2344,2351,.topPrime 2341⟩,.good ⟨2352,2361,.topPrime 2351⟩,.good ⟨2362,2367,.topPrime 2357⟩,.good ⟨2368,2368,.largeDivisor 79693044548525222244666457⟩,.good ⟨2369,2369,.largeDivisor 1441166584240124057233701043⟩,.good ⟨2370,2370,.largeDivisor 337840237848575075731342381⟩,.good ⟨2371,2381,.topPrime 2371⟩,.good ⟨2382,2391,.topPrime 2381⟩,.good ⟨2392,2399,.topPrime 2389⟩,.good ⟨2400,2409,.topPrime 2399⟩,.good ⟨2410,2410,.largeDivisor 22562196827632449819637⟩,.good ⟨2411,2421,.topPrime 2411⟩,.good ⟨2422,2427,.topPrime 2417⟩,.good ⟨2428,2433,.topPrime 2423⟩]⟩,
    ⟨(2434,2494),[.good ⟨2434,2434,.largeDivisor 8392240158891295793957273⟩,.good ⟨2435,2435,.largeDivisor 40465554033465951006506851⟩,.good ⟨2436,2436,.largeDivisor 12097949144025902878234007⟩,.good ⟨2437,2447,.topPrime 2437⟩,.good ⟨2448,2457,.topPrime 2447⟩,.good ⟨2458,2458,.largeDivisor 4579979260586926768931099⟩,.good ⟨2459,2469,.topPrime 2459⟩,.good ⟨2470,2477,.topPrime 2467⟩,.good ⟨2478,2487,.topPrime 2477⟩,.good ⟨2488,2488,.largeDivisor 549697536489869117540914321⟩,.good ⟨2489,2489,.largeDivisor 23189782513953970060327724491⟩,.good ⟨2490,2490,.largeDivisor 776422730398620215815732607⟩,.good ⟨2491,2491,.largeDivisor 62389323271708482503128707227⟩,.good ⟨2492,2492,.largeDivisor 6714207703968627500336704889⟩,.good ⟨2493,2493,.largeDivisor 1498658770345938612081601333⟩,.good ⟨2494,2494,.largeDivisor 752649007902289750006345897⟩]⟩,
    ⟨(2495,2520),[.good ⟨2495,2495,.largeDivisor 16329211084488808054485504461⟩,.good ⟨2496,2496,.largeDivisor 2989855550681049362088895183⟩,.good ⟨2497,2497,.largeDivisor 6006170000040692081364417757⟩,.good ⟨2498,2498,.largeDivisor 9049102931303768889775823617⟩,.good ⟨2499,2499,.largeDivisor 494645497852617592045623799⟩,.good ⟨2500,2500,.largeDivisor 198732622680842744895791⟩,.good ⟨2501,2501,.largeDivisor 5988316738852863915474377⟩,.good ⟨2502,2502,.largeDivisor 334153362786249732738233⟩,.good ⟨2503,2513,.topPrime 2503⟩,.good ⟨2514,2514,.largeDivisor 205478305291848328850823661⟩,.good ⟨2515,2515,.largeDivisor 330209544925877665852921091⟩,.good ⟨2516,2516,.largeDivisor 1243723375798664980966990217⟩,.good ⟨2517,2517,.largeDivisor 5829519063101005134253099397⟩,.good ⟨2518,2518,.largeDivisor 2927548663918693842849881189⟩,.good ⟨2519,2519,.largeDivisor 35284665475651625790138041699⟩,.good ⟨2520,2520,.largeDivisor 14063238531547080825084911⟩]⟩,
    ⟨(2521,2578),[.good ⟨2521,2531,.topPrime 2521⟩,.good ⟨2532,2541,.topPrime 2531⟩,.good ⟨2542,2549,.topPrime 2539⟩,.good ⟨2550,2559,.topPrime 2549⟩,.good ⟨2560,2567,.topPrime 2557⟩,.good ⟨2568,2568,.largeDivisor 170436592692350867720854003⟩,.good ⟨2569,2569,.largeDivisor 48905574290924760323341219⟩,.good ⟨2570,2570,.largeDivisor 14734739264674869171276311⟩,.good ⟨2571,2571,.largeDivisor 12627671549826362879783798527⟩,.good ⟨2572,2572,.largeDivisor 3170477472291429649238962301⟩,.good ⟨2573,2573,.largeDivisor 133731779282063089958882786893⟩,.good ⟨2574,2574,.largeDivisor 7461429745351159525602902273⟩,.good ⟨2575,2575,.largeDivisor 1198950489502604416750544359⟩,.good ⟨2576,2576,.largeDivisor 1451361118871573767645395803⟩,.good ⟨2577,2577,.largeDivisor 971721902658364665944968819⟩,.good ⟨2578,2578,.largeDivisor 487942942160744859525930973⟩]⟩,
    ⟨(2579,2645),[.good ⟨2579,2589,.topPrime 2579⟩,.good ⟨2590,2590,.largeDivisor 2054269597116239949023341777⟩,.good ⟨2591,2601,.topPrime 2591⟩,.good ⟨2602,2603,.topPrime 2593⟩,.good ⟨2604,2604,.largeDivisor 311431465827184474018532129⟩,.good ⟨2605,2605,.largeDivisor 125100843250549815700582297⟩,.good ⟨2606,2606,.largeDivisor 942233518817724912473171867⟩,.good ⟨2607,2607,.largeDivisor 1261634711637292679413230127⟩,.good ⟨2608,2608,.largeDivisor 3880121848997711448006726617⟩,.good ⟨2609,2619,.topPrime 2609⟩,.good ⟨2620,2627,.topPrime 2617⟩,.good ⟨2628,2631,.topPrime 2621⟩,.good ⟨2632,2632,.largeDivisor 30659307695641992334082219⟩,.good ⟨2633,2643,.topPrime 2633⟩,.good ⟨2644,2644,.largeDivisor 45129747418504412867384895493⟩,.good ⟨2645,2645,.largeDivisor 54381859645532652407395466323⟩]⟩,
    ⟨(2646,2759),[.good ⟨2646,2646,.largeDivisor 103191384526627423922951549⟩,.good ⟨2647,2657,.topPrime 2647⟩,.good ⟨2658,2667,.topPrime 2657⟩,.good ⟨2668,2673,.topPrime 2663⟩,.good ⟨2674,2681,.topPrime 2671⟩,.good ⟨2682,2687,.topPrime 2677⟩,.good ⟨2688,2697,.topPrime 2687⟩,.good ⟨2698,2703,.topPrime 2693⟩,.good ⟨2704,2709,.topPrime 2699⟩,.good ⟨2710,2717,.topPrime 2707⟩,.good ⟨2718,2723,.topPrime 2713⟩,.good ⟨2724,2729,.topPrime 2719⟩,.good ⟨2730,2739,.topPrime 2729⟩,.good ⟨2740,2741,.topPrime 2731⟩,.good ⟨2742,2751,.topPrime 2741⟩,.good ⟨2752,2759,.topPrime 2749⟩]⟩,
    ⟨(2760,2829),[.good ⟨2760,2763,.topPrime 2753⟩,.good ⟨2764,2764,.largeDivisor 5452112883112986397861796411⟩,.good ⟨2765,2765,.largeDivisor 25336289280348583848887171557⟩,.good ⟨2766,2766,.largeDivisor 21197875423304350552335727927⟩,.good ⟨2767,2777,.topPrime 2767⟩,.good ⟨2778,2787,.topPrime 2777⟩,.good ⟨2788,2788,.largeDivisor 1927640025822980460976166611⟩,.good ⟨2789,2799,.topPrime 2789⟩,.good ⟨2800,2807,.topPrime 2797⟩,.good ⟨2808,2813,.topPrime 2803⟩,.good ⟨2814,2814,.largeDivisor 8541022091547382170000753187⟩,.good ⟨2815,2815,.largeDivisor 6859622592783418205007737581⟩,.good ⟨2816,2816,.largeDivisor 403507211340201070882808093⟩,.good ⟨2817,2817,.largeDivisor 90019784140757615956036303⟩,.good ⟨2818,2818,.largeDivisor 316303929811290476015100127⟩,.good ⟨2819,2829,.topPrime 2819⟩]⟩,
    ⟨(2830,2897),[.good ⟨2830,2830,.largeDivisor 1091000545949506117980570919⟩,.good ⟨2831,2831,.largeDivisor 65715373310277698297936090887⟩,.good ⟨2832,2832,.largeDivisor 9620861104978620842625879311⟩,.good ⟨2833,2843,.topPrime 2833⟩,.good ⟨2844,2853,.topPrime 2843⟩,.good ⟨2854,2861,.topPrime 2851⟩,.good ⟨2862,2871,.topPrime 2861⟩,.good ⟨2872,2872,.largeDivisor 891177496820765581901144003⟩,.good ⟨2873,2873,.largeDivisor 48308546195586028618905409823⟩,.good ⟨2874,2874,.largeDivisor 56576512537128869702825651113⟩,.good ⟨2875,2875,.largeDivisor 7269607756167396665726200981⟩,.good ⟨2876,2876,.largeDivisor 27365696213007111008676117829⟩,.good ⟨2877,2877,.largeDivisor 2616259861257483746119070581⟩,.good ⟨2878,2878,.largeDivisor 1313148915364324768282295977⟩,.good ⟨2879,2889,.topPrime 2879⟩,.good ⟨2890,2897,.topPrime 2887⟩]⟩,
    ⟨(2898,2984),[.good ⟨2898,2907,.topPrime 2897⟩,.good ⟨2908,2913,.topPrime 2903⟩,.good ⟨2914,2919,.topPrime 2909⟩,.good ⟨2920,2927,.topPrime 2917⟩,.good ⟨2928,2937,.topPrime 2927⟩,.good ⟨2938,2938,.largeDivisor 72116220959864124632306975101⟩,.good ⟨2939,2949,.topPrime 2939⟩,.good ⟨2950,2950,.largeDivisor 5131227216327537803066317⟩,.good ⟨2951,2951,.largeDivisor 15142251515382564056848701467⟩,.good ⟨2952,2952,.largeDivisor 211095651863544755637809167⟩,.good ⟨2953,2963,.topPrime 2953⟩,.good ⟨2964,2973,.topPrime 2963⟩,.good ⟨2974,2981,.topPrime 2971⟩,.good ⟨2982,2982,.largeDivisor 2427166035314501326538822519⟩,.good ⟨2983,2983,.largeDivisor 9744597958739108286763536439⟩,.good ⟨2984,2984,.largeDivisor 3667744741281218356168313917⟩]⟩,
    ⟨(2985,3011),[.good ⟨2985,2985,.largeDivisor 490841428053101851296230309⟩,.good ⟨2986,2986,.largeDivisor 43107426593134180234427755961⟩,.good ⟨2987,2987,.largeDivisor 4153609136570703108394700227597⟩,.good ⟨2988,2988,.largeDivisor 115804352816717621093973839063⟩,.good ⟨2989,2989,.largeDivisor 4744167576776208788940499787⟩,.good ⟨2990,2990,.largeDivisor 4285516934912647818408487723⟩,.good ⟨2991,2991,.largeDivisor 28675573047704093120491693019⟩,.good ⟨2992,2992,.largeDivisor 1798836685649334254790991813⟩,.good ⟨2993,2993,.largeDivisor 75829833804907851050555471779⟩,.good ⟨2994,2994,.largeDivisor 12684910180572919099640355487⟩,.good ⟨2995,2995,.largeDivisor 20370673453520585899958640581⟩,.good ⟨2996,2996,.largeDivisor 10953075676013581363294344433⟩,.good ⟨2997,2997,.largeDivisor 271442598802747830168714497⟩,.good ⟨2998,2998,.largeDivisor 136221110011824237503482769⟩,.good ⟨2999,3009,.topPrime 2999⟩,.good ⟨3010,3011,.topPrime 3001⟩]⟩,
    ⟨(3012,3100),[.good ⟨3012,3021,.topPrime 3011⟩,.good ⟨3022,3029,.topPrime 3019⟩,.good ⟨3030,3033,.topPrime 3023⟩,.good ⟨3034,3034,.largeDivisor 326273569326872540330075833⟩,.good ⟨3035,3035,.largeDivisor 198048056581411631980356030631⟩,.good ⟨3036,3036,.largeDivisor 414100481942951594140744427683⟩,.good ⟨3037,3047,.topPrime 3037⟩,.good ⟨3048,3051,.topPrime 3041⟩,.good ⟨3052,3059,.topPrime 3049⟩,.good ⟨3060,3060,.largeDivisor 143374951226272524023667961⟩,.good ⟨3061,3071,.topPrime 3061⟩,.good ⟨3072,3077,.topPrime 3067⟩,.good ⟨3078,3078,.largeDivisor 27880780746928268694555709⟩,.good ⟨3079,3089,.topPrime 3079⟩,.good ⟨3090,3099,.topPrime 3089⟩,.good ⟨3100,3100,.largeDivisor 20844319461184084697905807747⟩]⟩,
    ⟨(3101,3136),[.good ⟨3101,3101,.largeDivisor 89650810886451937098759930407⟩,.good ⟨3102,3102,.largeDivisor 14994975486346053536091518609⟩,.good ⟨3103,3103,.largeDivisor 60193284520222256303353146499⟩,.good ⟨3104,3104,.largeDivisor 5663189717227506170150587013⟩,.good ⟨3105,3105,.largeDivisor 589381735277070777888975119⟩,.good ⟨3106,3106,.largeDivisor 1478691171058628300584133053⟩,.good ⟨3107,3107,.largeDivisor 106844034150678096044532590597⟩,.good ⟨3108,3108,.largeDivisor 1276470540385886197496837537⟩,.good ⟨3109,3119,.topPrime 3109⟩,.good ⟨3120,3129,.topPrime 3119⟩,.good ⟨3130,3131,.topPrime 3121⟩,.good ⟨3132,3132,.largeDivisor 14819949370792016613496561⟩,.good ⟨3133,3133,.largeDivisor 208210320083817883632666931⟩,.good ⟨3134,3134,.largeDivisor 940246603951996033580371991⟩,.good ⟨3135,3135,.largeDivisor 251615288381520065324324899⟩,.good ⟨3136,3136,.largeDivisor 251615288381520065324324899⟩]⟩,
    ⟨(3137,3162),[.good ⟨3137,3147,.topPrime 3137⟩,.good ⟨3148,3148,.largeDivisor 617232533532646065801975062569⟩,.good ⟨3149,3149,.largeDivisor 3716377147407844094092580252447⟩,.good ⟨3150,3150,.largeDivisor 1183936650974145936314934773⟩,.good ⟨3151,3151,.largeDivisor 23761683995028877995722034839⟩,.good ⟨3152,3152,.largeDivisor 13412755722122317951739945167⟩,.good ⟨3153,3153,.largeDivisor 8973142115818304371278601127⟩,.good ⟨3154,3154,.largeDivisor 31515913400101260564602124671⟩,.good ⟨3155,3155,.largeDivisor 151805659202014468826442295171⟩,.good ⟨3156,3156,.largeDivisor 63473590413560898730293042337⟩,.good ⟨3157,3157,.largeDivisor 18198721726965012922671431719⟩,.good ⟨3158,3158,.largeDivisor 27393500101885372168635072149⟩,.good ⟨3159,3159,.largeDivisor 452497460386924826165509451⟩,.good ⟨3160,3160,.largeDivisor 11351952801069247782494521⟩,.good ⟨3161,3161,.largeDivisor 35883522804179892240465180881⟩,.good ⟨3162,3162,.largeDivisor 6001465096097366934536702737⟩]⟩,
    ⟨(3163,3244),[.good ⟨3163,3173,.topPrime 3163⟩,.good ⟨3174,3179,.topPrime 3169⟩,.good ⟨3180,3180,.largeDivisor 3942789974833410386720290451⟩,.good ⟨3181,3191,.topPrime 3181⟩,.good ⟨3192,3201,.topPrime 3191⟩,.good ⟨3202,3202,.largeDivisor 664678567505609964291223759⟩,.good ⟨3203,3213,.topPrime 3203⟩,.good ⟨3214,3219,.topPrime 3209⟩,.good ⟨3220,3227,.topPrime 3217⟩,.good ⟨3228,3231,.topPrime 3221⟩,.good ⟨3232,3239,.topPrime 3229⟩,.good ⟨3240,3240,.largeDivisor 112138848708432346861867157⟩,.good ⟨3241,3241,.largeDivisor 160743922452025314541933417⟩,.good ⟨3242,3242,.largeDivisor 725810301656637980146167323⟩,.good ⟨3243,3243,.largeDivisor 7768326099909164916217889863⟩,.good ⟨3244,3244,.largeDivisor 1948689287666666485324067021⟩]⟩,
    ⟨(3245,3287),[.good ⟨3245,3245,.largeDivisor 114972667972333322634119954239⟩,.good ⟨3246,3246,.largeDivisor 96136342153063875649240950917⟩,.good ⟨3247,3247,.largeDivisor 385852537665016568891329255411⟩,.good ⟨3248,3248,.largeDivisor 10370457453461983779285030961⟩,.good ⟨3249,3249,.largeDivisor 2312375009697205771662690659⟩,.good ⟨3250,3250,.largeDivisor 9280912357537411247797153⟩,.good ⟨3251,3261,.topPrime 3251⟩,.good ⟨3262,3269,.topPrime 3259⟩,.good ⟨3270,3270,.largeDivisor 1117111572671491942058929987⟩,.good ⟨3271,3281,.topPrime 3271⟩,.good ⟨3282,3282,.largeDivisor 48850798972214092243421357287⟩,.good ⟨3283,3283,.largeDivisor 8002453621365144695132593981⟩,.good ⟨3284,3284,.largeDivisor 6022011386930140966731310411⟩,.good ⟨3285,3285,.largeDivisor 268544185244899383366759719⟩,.good ⟨3286,3286,.largeDivisor 3368077071430302953218215407⟩,.good ⟨3287,3287,.largeDivisor 851605333368569677479098003293⟩]⟩,
    ⟨(3288,3341),[.good ⟨3288,3288,.largeDivisor 35602664226882528475629059033⟩,.good ⟨3289,3289,.largeDivisor 71444272508979033652436836583⟩,.good ⟨3290,3290,.largeDivisor 3072169083185740696856844757⟩,.good ⟨3291,3291,.largeDivisor 82199255713530671815901431669⟩,.good ⟨3292,3292,.largeDivisor 20618709982394313594784175027⟩,.good ⟨3293,3293,.largeDivisor 124126895744103244364943854413⟩,.good ⟨3294,3294,.largeDivisor 113011054334183550839725001779⟩,.good ⟨3295,3295,.largeDivisor 90711674550824555424334684741⟩,.good ⟨3296,3296,.largeDivisor 127990444914177112448033870251⟩,.good ⟨3297,3297,.largeDivisor 12230371181695560958211392349⟩,.good ⟨3298,3298,.largeDivisor 6135650160820194712531361723⟩,.good ⟨3299,3309,.topPrime 3299⟩,.good ⟨3310,3317,.topPrime 3307⟩,.good ⟨3318,3323,.topPrime 3313⟩,.good ⟨3324,3333,.topPrime 3323⟩,.good ⟨3334,3341,.topPrime 3331⟩]⟩,
    ⟨(3342,3402),[.good ⟨3342,3342,.largeDivisor 24343503629118754572319339577⟩,.good ⟨3343,3353,.topPrime 3343⟩,.good ⟨3354,3357,.topPrime 3347⟩,.good ⟨3358,3358,.largeDivisor 27939426367555216910194542367⟩,.good ⟨3359,3369,.topPrime 3359⟩,.good ⟨3370,3371,.topPrime 3361⟩,.good ⟨3372,3381,.topPrime 3371⟩,.good ⟨3382,3383,.topPrime 3373⟩,.good ⟨3384,3384,.largeDivisor 31037909603289411676859213⟩,.good ⟨3385,3385,.largeDivisor 87189480503846189648272561⟩,.good ⟨3386,3386,.largeDivisor 147611790493011599074525445773⟩,.good ⟨3387,3387,.largeDivisor 789828016429431731540944209847⟩,.good ⟨3388,3388,.largeDivisor 28300026647308628817427968431⟩,.good ⟨3389,3399,.topPrime 3389⟩,.good ⟨3400,3401,.topPrime 3391⟩,.good ⟨3402,3402,.largeDivisor 31991819121100222755475871⟩]⟩,
    ⟨(3403,3443),[.good ⟨3403,3403,.largeDivisor 2054116235266114302582724321⟩,.good ⟨3404,3404,.largeDivisor 4636745135839425123336600523⟩,.good ⟨3405,3405,.largeDivisor 620236385289068652326109793⟩,.good ⟨3406,3406,.largeDivisor 10889304785023545514550154407⟩,.good ⟨3407,3417,.topPrime 3407⟩,.good ⟨3418,3423,.topPrime 3413⟩,.good ⟨3424,3424,.largeDivisor 27820381059952076086999897337⟩,.good ⟨3425,3425,.largeDivisor 6698404578582485806536003401⟩,.good ⟨3426,3426,.largeDivisor 5599983915623132350705794937⟩,.good ⟨3427,3427,.largeDivisor 314608932440007779768340315559⟩,.good ⟨3428,3428,.largeDivisor 236716290694544922968803907317⟩,.good ⟨3429,3429,.largeDivisor 17590970695264602233492156951⟩,.good ⟨3430,3430,.largeDivisor 5145063087237380003946229⟩,.good ⟨3431,3431,.largeDivisor 929090076437444778607342721⟩,.good ⟨3432,3432,.largeDivisor 38836562680664894282622043⟩,.good ⟨3433,3443,.topPrime 3433⟩]⟩,
    ⟨(3444,3486),[.good ⟨3444,3444,.largeDivisor 118655237951581427493790131649⟩,.good ⟨3445,3445,.largeDivisor 47614128682958417905195923533⟩,.good ⟨3446,3446,.largeDivisor 358249535898416393234290725971⟩,.good ⟨3447,3447,.largeDivisor 159731748834800324340783874327⟩,.good ⟨3448,3448,.largeDivisor 140212594191036537252297046507⟩,.good ⟨3449,3459,.topPrime 3449⟩,.good ⟨3460,3467,.topPrime 3457⟩,.good ⟨3468,3477,.topPrime 3467⟩,.good ⟨3478,3479,.topPrime 3469⟩,.good ⟨3480,3480,.largeDivisor 380161275440025741140830819⟩,.good ⟨3481,3481,.largeDivisor 3813663976388269754787412337⟩,.good ⟨3482,3482,.largeDivisor 5738624877175434436547005081⟩,.good ⟨3483,3483,.largeDivisor 7960028055436892928113587693⟩,.good ⟨3484,3484,.largeDivisor 1996309944222727826198368811⟩,.good ⟨3485,3485,.largeDivisor 7209471663850991165079083219⟩,.good ⟨3486,3486,.largeDivisor 4304936317263541487061610843⟩]⟩,
    ⟨(3487,3570),[.good ⟨3487,3487,.largeDivisor 17274238133829653815171273889⟩,.good ⟨3488,3488,.largeDivisor 1624583223975351394179179339⟩,.good ⟨3489,3489,.largeDivisor 1086480902520605906515460363⟩,.good ⟨3490,3490,.largeDivisor 5340589225066076920759093897⟩,.good ⟨3491,3501,.topPrime 3491⟩,.good ⟨3502,3509,.topPrime 3499⟩,.good ⟨3510,3510,.largeDivisor 130001624350871421302340329⟩,.good ⟨3511,3521,.topPrime 3511⟩,.good ⟨3522,3527,.topPrime 3517⟩,.good ⟨3528,3537,.topPrime 3527⟩,.good ⟨3538,3543,.topPrime 3533⟩,.good ⟨3544,3551,.topPrime 3541⟩,.good ⟨3552,3557,.topPrime 3547⟩,.good ⟨3558,3567,.topPrime 3557⟩,.good ⟨3568,3569,.topPrime 3559⟩,.good ⟨3570,3570,.largeDivisor 1958598815072653965686656103⟩]⟩,
    ⟨(3571,3656),[.good ⟨3571,3581,.topPrime 3571⟩,.good ⟨3582,3591,.topPrime 3581⟩,.good ⟨3592,3593,.topPrime 3583⟩,.good ⟨3594,3603,.topPrime 3593⟩,.good ⟨3604,3604,.largeDivisor 273943818443058398029671895853⟩,.good ⟨3605,3605,.largeDivisor 47105531385033414018457771741⟩,.good ⟨3606,3606,.largeDivisor 39374720949103034527250515739⟩,.good ⟨3607,3617,.topPrime 3607⟩,.good ⟨3618,3627,.topPrime 3617⟩,.good ⟨3628,3633,.topPrime 3623⟩,.good ⟨3634,3641,.topPrime 3631⟩,.good ⟨3642,3647,.topPrime 3637⟩,.good ⟨3648,3653,.topPrime 3643⟩,.good ⟨3654,3654,.largeDivisor 46860771465923142366783833⟩,.good ⟨3655,3655,.largeDivisor 37601782592304958364565293⟩,.good ⟨3656,3656,.largeDivisor 17184014644683365972606338901⟩]⟩,
    ⟨(3657,3749),[.good ⟨3657,3657,.largeDivisor 11490572601134955085357721953⟩,.good ⟨3658,3658,.largeDivisor 40338305734118681096198221597⟩,.good ⟨3659,3669,.topPrime 3659⟩,.good ⟨3670,3670,.largeDivisor 47794396966102807853274253799⟩,.good ⟨3671,3681,.topPrime 3671⟩,.good ⟨3682,3687,.topPrime 3677⟩,.good ⟨3688,3688,.largeDivisor 441357179296244377574011897163⟩,.good ⟨3689,3689,.largeDivisor 379437575023035541568522462977⟩,.good ⟨3690,3690,.largeDivisor 4228578574597569231940587383⟩,.good ⟨3691,3701,.topPrime 3691⟩,.good ⟨3702,3711,.topPrime 3701⟩,.good ⟨3712,3719,.topPrime 3709⟩,.good ⟨3720,3729,.topPrime 3719⟩,.good ⟨3730,3737,.topPrime 3727⟩,.good ⟨3738,3743,.topPrime 3733⟩,.good ⟨3744,3749,.topPrime 3739⟩]⟩,
    ⟨(3750,3791),[.good ⟨3750,3750,.largeDivisor 1697037216111721788714999277⟩,.good ⟨3751,3751,.largeDivisor 34040570040829242938342044321⟩,.good ⟨3752,3752,.largeDivisor 1828964067951531096125835581⟩,.good ⟨3753,3753,.largeDivisor 135877073995330209706836529⟩,.good ⟨3754,3754,.largeDivisor 68138196069792894368082331⟩,.good ⟨3755,3755,.largeDivisor 3936291172954958743879217737⟩,.good ⟨3756,3756,.largeDivisor 11514571375092542867609300483⟩,.good ⟨3757,3757,.largeDivisor 23096767034822575308920524247⟩,.good ⟨3758,3758,.largeDivisor 34746857692899614896286361137⟩,.good ⟨3759,3759,.largeDivisor 6637873561397044894808173579⟩,.good ⟨3760,3760,.largeDivisor 83216873135679143786605537⟩,.good ⟨3761,3771,.topPrime 3761⟩,.good ⟨3772,3779,.topPrime 3769⟩,.good ⟨3780,3789,.topPrime 3779⟩,.good ⟨3790,3790,.largeDivisor 15138245256625678614160071923⟩,.good ⟨3791,3791,.largeDivisor 57389087767867947626280832660093⟩]⟩,
    ⟨(3792,3846),[.good ⟨3792,3792,.largeDivisor 1199084351669285337867280026487⟩,.good ⟨3793,3803,.topPrime 3793⟩,.good ⟨3804,3813,.topPrime 3803⟩,.good ⟨3814,3814,.largeDivisor 141997136998969511981726424407⟩,.good ⟨3815,3815,.largeDivisor 48825513983872797495293944039⟩,.good ⟨3816,3816,.largeDivisor 3400462866156712571945570347⟩,.good ⟨3817,3817,.largeDivisor 6820581587031094002688513933⟩,.good ⟨3818,3818,.largeDivisor 277031707439199115981539853151⟩,.good ⟨3819,3819,.largeDivisor 20744786092358851449676484297719⟩,.good ⟨3820,3820,.largeDivisor 1040234744983077087657707666281⟩,.good ⟨3821,3831,.topPrime 3821⟩,.good ⟨3832,3833,.topPrime 3823⟩,.good ⟨3834,3843,.topPrime 3833⟩,.good ⟨3844,3844,.largeDivisor 2764204188475767665399084521⟩,.good ⟨3845,3845,.largeDivisor 29939056632927680770308394319⟩,.good ⟨3846,3846,.largeDivisor 25020776143033433342591500337⟩]⟩,
    ⟨(3847,3906),[.good ⟨3847,3857,.topPrime 3847⟩,.good ⟨3858,3863,.topPrime 3853⟩,.good ⟨3864,3873,.topPrime 3863⟩,.good ⟨3874,3874,.largeDivisor 15486789670270016761493282881⟩,.good ⟨3875,3875,.largeDivisor 20873499120798718243751816057⟩,.good ⟨3876,3876,.largeDivisor 8722044263930124182059297007⟩,.good ⟨3877,3887,.topPrime 3877⟩,.good ⟨3888,3891,.topPrime 3881⟩,.good ⟨3892,3899,.topPrime 3889⟩,.good ⟨3900,3900,.largeDivisor 37342681014190267080584149489⟩,.good ⟨3901,3901,.largeDivisor 374482772844103423859534105801⟩,.good ⟨3902,3902,.largeDivisor 563312174108593508057016993383⟩,.good ⟨3903,3903,.largeDivisor 5272439845433670172533662650297⟩,.good ⟨3904,3904,.largeDivisor 82614649517455402138338921569⟩,.good ⟨3905,3905,.largeDivisor 99417629080327687319018024261⟩,.good ⟨3906,3906,.largeDivisor 3956285624505979854800460529⟩]⟩,
    ⟨(3907,3966),[.good ⟨3907,3917,.topPrime 3907⟩,.good ⟨3918,3927,.topPrime 3917⟩,.good ⟨3928,3933,.topPrime 3923⟩,.good ⟨3934,3941,.topPrime 3931⟩,.good ⟨3942,3942,.largeDivisor 29179679455891872917619769549⟩,.good ⟨3943,3953,.topPrime 3943⟩,.good ⟨3954,3957,.topPrime 3947⟩,.good ⟨3958,3958,.largeDivisor 109839469092244534207396452829⟩,.good ⟨3959,3959,.largeDivisor 9252222513536087466533671420213⟩,.good ⟨3960,3960,.largeDivisor 25772207558596343917921090307⟩,.good ⟨3961,3961,.largeDivisor 1292198913159495167833992895013⟩,.good ⟨3962,3962,.largeDivisor 833012055635847682225558062161⟩,.good ⟨3963,3963,.largeDivisor 4455096864352043677003895547023⟩,.good ⟨3964,3964,.largeDivisor 1116873511908139459628348213281⟩,.good ⟨3965,3965,.largeDivisor 1343976775331038833816813555587⟩,.good ⟨3966,3966,.largeDivisor 7861669455697492647370918232239⟩]⟩,
    ⟨(3967,4010),[.good ⟨3967,3977,.topPrime 3967⟩,.good ⟨3978,3978,.largeDivisor 38395993672692582777359977⟩,.good ⟨3979,3979,.largeDivisor 4928311574956251189390817693⟩,.good ⟨3980,3980,.largeDivisor 980734003416293986688772720907⟩,.good ⟨3981,3981,.largeDivisor 3278171341394010378680104283737⟩,.good ⟨3982,3982,.largeDivisor 1643626074216941491803597992677⟩,.good ⟨3983,3983,.largeDivisor 2825447843593473440592892017623⟩,.good ⟨3984,3984,.largeDivisor 59026471436762722267608869233⟩,.good ⟨3985,3985,.largeDivisor 23675942493759380798834559023⟩,.good ⟨3986,3986,.largeDivisor 890304780944574451548627851563⟩,.good ⟨3987,3987,.largeDivisor 5555000252935865944169607580879⟩,.good ⟨3988,3988,.largeDivisor 1392591212516232925908247110419⟩,.good ⟨3989,3999,.topPrime 3989⟩,.good ⟨4000,4000,.largeDivisor 411269842381564518434882657⟩,.good ⟨4001,4010,.topPrime 4001⟩]⟩,
    ⟨(4016,4042),[.good ⟨4016,4023,.topPrime 4013⟩,.good ⟨4024,4031,.topPrime 4021⟩,.good ⟨4032,4037,.topPrime 4027⟩,.good ⟨4038,4038,.largeDivisor 1198069528274995891534856472103⟩,.good ⟨4039,4039,.largeDivisor 686480752546844716400806538633⟩,.good ⟨4040,4040,.largeDivisor 51626623981557197584870782131⟩,.good ⟨4041,4041,.largeDivisor 57519489249923527830290275873⟩,.good ⟨4042,4042,.largeDivisor 28838225694392321941209786043⟩]⟩,
    ⟨(4048,4060),[.good ⟨4048,4048,.largeDivisor 351758578797191899651923166913⟩,.good ⟨4049,4059,.topPrime 4049⟩,.good ⟨4060,4060,.topPrime 4057⟩]⟩,
    ⟨(4064,4090),[.good ⟨4064,4067,.topPrime 4057⟩,.good ⟨4068,4068,.largeDivisor 17684765623694650580237137229⟩,.good ⟨4069,4069,.largeDivisor 35465407256191982854107891269⟩,.good ⟨4070,4070,.largeDivisor 32005367523880569892731511633⟩,.good ⟨4071,4071,.largeDivisor 1497630473445032184290919354689⟩,.good ⟨4072,4072,.largeDivisor 187710886723349269097285878241⟩,.good ⟨4073,4083,.topPrime 4073⟩,.good ⟨4084,4089,.topPrime 4079⟩,.good ⟨4090,4090,.largeDivisor 78821780045392684406617639063⟩]⟩,
    ⟨(4096,4110),[.good ⟨4096,4103,.topPrime 4093⟩,.good ⟨4104,4109,.topPrime 4099⟩,.good ⟨4110,4110,.largeDivisor 22179261991381109020921485997⟩]⟩,
    ⟨(4112,4138),[.good ⟨4112,4121,.topPrime 4111⟩,.good ⟨4122,4122,.largeDivisor 20449082995144986545305837037⟩,.good ⟨4123,4123,.largeDivisor 46865797214554074222510264649⟩,.good ⟨4124,4124,.largeDivisor 105730058923862692611396242567⟩,.good ⟨4125,4125,.largeDivisor 565401384619586591504792741⟩,.good ⟨4126,4126,.largeDivisor 1417281964119328236056363821⟩,.good ⟨4127,4137,.topPrime 4127⟩,.good ⟨4138,4138,.topPrime 4133⟩]⟩,
    ⟨(4144,4186),[.good ⟨4144,4149,.topPrime 4139⟩,.good ⟨4150,4150,.largeDivisor 86365495763562576921632400713⟩,.good ⟨4151,4151,.largeDivisor 2226727782077939483240348418383⟩,.good ⟨4152,4152,.largeDivisor 93026782492026933252977608399⟩,.good ⟨4153,4163,.topPrime 4153⟩,.good ⟨4164,4169,.topPrime 4159⟩,.good ⟨4170,4170,.largeDivisor 24391510461291247777030778003⟩,.good ⟨4171,4171,.largeDivisor 7825922318003522652153490388501⟩,.good ⟨4172,4172,.largeDivisor 840708309576441871067678491627⟩,.good ⟨4173,4173,.largeDivisor 561953512071518809541153667397⟩,.good ⟨4174,4174,.largeDivisor 281719188011832754146622076353⟩,.good ⟨4175,4175,.largeDivisor 135582433423562161217538578533⟩,.good ⟨4176,4176,.largeDivisor 231287680546076627959330516321⟩,.good ⟨4177,4186,.topPrime 4177⟩]⟩,
    ⟨(4192,4235),[.good ⟨4192,4192,.largeDivisor 603091213860626847135990872077⟩,.good ⟨4193,4193,.largeDivisor 518295031710926085271819989059⟩,.good ⟨4194,4194,.largeDivisor 28869888211485961718463795709⟩,.good ⟨4195,4195,.largeDivisor 46313262350739429984304253537⟩,.good ⟨4196,4196,.largeDivisor 1567181038900827808178553611623⟩,.good ⟨4197,4197,.largeDivisor 7332730011445679276393968236323⟩,.good ⟨4198,4198,.largeDivisor 3675997204209333843121791098171⟩,.good ⟨4199,4199,.largeDivisor 44227828826575910622545561092321⟩,.good ⟨4200,4200,.largeDivisor 10558087569008333879815125589⟩,.good ⟨4201,4211,.topPrime 4201⟩,.good ⟨4212,4221,.topPrime 4211⟩,.good ⟨4222,4229,.topPrime 4219⟩,.good ⟨4230,4235,.topPrime 4229⟩]⟩,
    ⟨(4240,4285),[.good ⟨4240,4241,.topPrime 4231⟩,.good ⟨4242,4251,.topPrime 4241⟩,.good ⟨4252,4253,.topPrime 4243⟩,.good ⟨4254,4263,.topPrime 4253⟩,.good ⟨4264,4271,.topPrime 4261⟩,.good ⟨4272,4281,.topPrime 4271⟩,.good ⟨4282,4283,.topPrime 4273⟩,.good ⟨4284,4285,.topPrime 4283⟩]⟩,
    ⟨(4288,4298),[.good ⟨4288,4293,.topPrime 4283⟩,.good ⟨4294,4298,.topPrime 4289⟩]⟩,
    ⟨(4300,4322),[.good ⟨4300,4307,.topPrime 4297⟩,.good ⟨4308,4308,.largeDivisor 279285579914105860004909227631⟩,.good ⟨4309,4309,.largeDivisor 3920005093973557494336006064697⟩,.good ⟨4310,4310,.largeDivisor 1179010603979485889782846206479⟩,.good ⟨4311,4311,.largeDivisor 13133629751306366074557751927987⟩,.good ⟨4312,4312,.largeDivisor 33589845911269478451554352757⟩,.good ⟨4313,4313,.largeDivisor 606163202574498998165497587619⟩,.good ⟨4314,4314,.largeDivisor 101285461922162393604692717987⟩,.good ⟨4315,4315,.largeDivisor 324941835088573032270817158449⟩,.good ⟨4316,4316,.largeDivisor 8551518050257812239517358877231⟩,.good ⟨4317,4317,.largeDivisor 5715575696386898194456794902153⟩,.good ⟨4318,4318,.largeDivisor 2865086586603044625454427720861⟩,.good ⟨4319,4319,.largeDivisor 4924118172518324606978779676243⟩,.good ⟨4320,4320,.largeDivisor 1142751954634097147128981127⟩,.good ⟨4321,4321,.largeDivisor 11456684909452282535369669257⟩,.good ⟨4322,4322,.largeDivisor 51686630666652155655394269863⟩]⟩,
    ⟨(4323,4346),[.good ⟨4323,4323,.largeDivisor 6770948617331432390856649352053⟩,.good ⟨4324,4324,.largeDivisor 1697054360151931002670076037461⟩,.good ⟨4325,4325,.largeDivisor 408331577616528600086123997887⟩,.good ⟨4326,4326,.largeDivisor 48734823284475603486524648647⟩,.good ⟨4327,4337,.topPrime 4327⟩,.good ⟨4338,4346,.topPrime 4337⟩]⟩,
    ⟨(4350,4394),[.good ⟨4350,4359,.topPrime 4349⟩,.good ⟨4360,4367,.topPrime 4357⟩,.good ⟨4368,4373,.topPrime 4363⟩,.good ⟨4374,4383,.topPrime 4373⟩,.good ⟨4384,4384,.largeDivisor 4644731558161595201665663⟩,.good ⟨4385,4385,.largeDivisor 4073429576507718991860786451⟩,.good ⟨4386,4386,.largeDivisor 2977677020427142583050234895681⟩,.good ⟨4387,4387,.largeDivisor 23881296322877284299527203816001⟩,.good ⟨4388,4388,.largeDivisor 17955984966549952622742524048083⟩,.good ⟨4389,4389,.largeDivisor 1714390524444467838352301291023⟩,.good ⟨4390,4390,.largeDivisor 171869705464974053673592205243⟩,.good ⟨4391,4394,.topPrime 4391⟩]⟩,
    ⟨(4400,4442),[.good ⟨4400,4407,.topPrime 4397⟩,.good ⟨4408,4408,.largeDivisor 419513647245980223165145104851⟩,.good ⟨4409,4419,.topPrime 4409⟩,.good ⟨4420,4420,.largeDivisor 4410849822399295878062720611⟩,.good ⟨4421,4431,.topPrime 4421⟩,.good ⟨4432,4433,.topPrime 4423⟩,.good ⟨4434,4434,.largeDivisor 63940350258904173638516234003⟩,.good ⟨4435,4435,.largeDivisor 717912540248708886295745564059⟩,.good ⟨4436,4436,.largeDivisor 13494322154844375506813251365109⟩,.good ⟨4437,4437,.largeDivisor 3006191062963523327997710313149⟩,.good ⟨4438,4438,.largeDivisor 215261478870439777496108915579⟩,.good ⟨4439,4439,.largeDivisor 23305992797704443226956767713541⟩,.good ⟨4440,4440,.largeDivisor 194698968958018604515105081373⟩,.good ⟨4441,4442,.topPrime 4441⟩]⟩,
    ⟨(4448,4490),[.good ⟨4448,4457,.topPrime 4447⟩,.good ⟨4458,4467,.topPrime 4457⟩,.good ⟨4468,4473,.topPrime 4463⟩,.good ⟨4474,4474,.largeDivisor 352936402940830125236256687913⟩,.good ⟨4475,4475,.largeDivisor 2037923100851890077977095068917⟩,.good ⟨4476,4476,.largeDivisor 851226558362547591361093461037⟩,.good ⟨4477,4477,.largeDivisor 11946524457019202402895346160071⟩,.good ⟨4478,4478,.largeDivisor 17963914210386832894615634689321⟩,.good ⟨4479,4479,.largeDivisor 24010853998305766796473717628609⟩,.good ⟨4480,4480,.largeDivisor 5372757663527806398852924061⟩,.good ⟨4481,4490,.topPrime 4481⟩]⟩,
    ⟨(4496,4519),[.good ⟨4496,4503,.topPrime 4493⟩,.good ⟨4504,4504,.largeDivisor 45586866443708490607626989173⟩,.good ⟨4505,4505,.largeDivisor 383866978184872430256746890139⟩,.good ⟨4506,4506,.largeDivisor 320671969540421796577104465511⟩,.good ⟨4507,4517,.topPrime 4507⟩,.good ⟨4518,4519,.topPrime 4517⟩]⟩,
    ⟨(4528,4538),[.good ⟨4528,4533,.topPrime 4523⟩,.good ⟨4534,4534,.largeDivisor 3433107471013512334150666524863⟩,.good ⟨4535,4535,.largeDivisor 8259491979334895721683433787933⟩,.good ⟨4536,4536,.largeDivisor 45632552372015998462339413193⟩,.good ⟨4537,4537,.largeDivisor 91486915648182317730284541607⟩,.good ⟨4538,4538,.largeDivisor 412691474365259799065637425261⟩]⟩,
    ⟨(4544,4546),[.good ⟨4544,4544,.largeDivisor 104685036623237791009902872051⟩,.good ⟨4545,4545,.largeDivisor 4663956197153514288487071053⟩,.good ⟨4546,4546,.largeDivisor 11688172476438740879527136167⟩]⟩,
    ⟨(4550,4554),[.good ⟨4550,4554,.topPrime 4549⟩]⟩,
    ⟨(4557,4570),[.good ⟨4557,4559,.topPrime 4549⟩,.good ⟨4560,4560,.largeDivisor 7461703692698611754926375471⟩,.good ⟨4561,4570,.topPrime 4561⟩]⟩,
    ⟨(4576,4585),[.good ⟨4576,4577,.topPrime 4567⟩,.good ⟨4578,4578,.largeDivisor 136369446430276890331901677589⟩,.good ⟨4579,4579,.largeDivisor 1093582653597614502328857761261⟩,.good ⟨4580,4580,.largeDivisor 164432322832471254782211705403⟩,.good ⟨4581,4581,.largeDivisor 183142346437041288149115444311⟩,.good ⟨4582,4582,.largeDivisor 642540759092284213092838411817⟩,.good ⟨4583,4585,.topPrime 4583⟩]⟩,
    ⟨(4592,4602),[.good ⟨4592,4601,.topPrime 4591⟩,.good ⟨4602,4602,.topPrime 4597⟩]⟩,
    ⟨(4606,4618),[.good ⟨4606,4613,.topPrime 4603⟩,.good ⟨4614,4614,.largeDivisor 13272711265037421888203693137⟩,.good ⟨4615,4615,.largeDivisor 10643538225568671071079069301⟩,.good ⟨4616,4616,.largeDivisor 20004304743169782436523201911⟩,.good ⟨4617,4617,.largeDivisor 8086846598302678006254060347⟩,.good ⟨4618,4618,.largeDivisor 4053077663442779144007081689⟩]⟩,
    ⟨(4624,4634),[.good ⟨4624,4631,.topPrime 4621⟩,.good ⟨4632,4632,.largeDivisor 434466619422326761566882702779⟩,.good ⟨4633,4633,.largeDivisor 871001232273318860380513873637⟩,.good ⟨4634,4634,.largeDivisor 187087221208610345740395906667⟩]⟩,
    ⟨(4644,4665),[.good ⟨4644,4653,.topPrime 4643⟩,.good ⟨4654,4661,.topPrime 4651⟩,.good ⟨4662,4665,.topPrime 4657⟩]⟩,
    ⟨(4672,4682),[.good ⟨4672,4673,.topPrime 4663⟩,.good ⟨4674,4682,.topPrime 4673⟩]⟩,
    ⟨(4698,4698),[.good ⟨4698,4698,.topPrime 4691⟩]⟩,
    ⟨(4700,4714),[.good ⟨4700,4701,.topPrime 4691⟩,.good ⟨4702,4702,.largeDivisor 1138873798481302534182321967879⟩,.good ⟨4703,4713,.topPrime 4703⟩,.good ⟨4714,4714,.largeDivisor 134459498335970410753664945951⟩]⟩,
    ⟨(4725,4735),[.good ⟨4725,4733,.topPrime 4723⟩,.good ⟨4734,4735,.topPrime 4733⟩]⟩,
    ⟨(4752,4762),[.good ⟨4752,4761,.topPrime 4751⟩,.good ⟨4762,4762,.topPrime 4759⟩]⟩,
    ⟨(4775,4789),[.good ⟨4775,4775,.largeDivisor 1040991927138279283581005554937⟩,.good ⟨4776,4776,.largeDivisor 217373970094981718187429281671⟩,.good ⟨4777,4777,.largeDivisor 435751345003662470743327603249⟩,.good ⟨4778,4778,.largeDivisor 4585946974509910319849381692343⟩,.good ⟨4779,4779,.largeDivisor 1815911889235467844772573958713⟩,.good ⟨4780,4780,.largeDivisor 91005020240569682302504754903⟩,.good ⟨4781,4781,.largeDivisor 1172762808005831943634165049033⟩,.good ⟨4782,4782,.largeDivisor 195911120934950337261880013431⟩,.good ⟨4783,4789,.topPrime 4783⟩]⟩,
    ⟨(4800,4812),[.good ⟨4800,4809,.topPrime 4799⟩,.good ⟨4810,4811,.topPrime 4801⟩,.good ⟨4812,4812,.largeDivisor 9178335547059336068152085747⟩]⟩,
    ⟨(4816,4816),[.good ⟨4816,4816,.topPrime 4813⟩]⟩,
    ⟨(4825,4826),[.good ⟨4825,4826,.topPrime 4817⟩]⟩,
    ⟨(4832,4842),[.good ⟨4832,4841,.topPrime 4831⟩,.good ⟨4842,4842,.largeDivisor 983255716092111521159202075259⟩]⟩,
    ⟨(4850,4861),[.good ⟨4850,4850,.largeDivisor 2162792566963116657547735870399⟩,.good ⟨4851,4851,.largeDivisor 196617506087556059777066897309⟩,.good ⟨4852,4852,.largeDivisor 49266067937245507231890548737⟩,.good ⟨4853,4853,.largeDivisor 888803820444061139763438040969⟩,.good ⟨4854,4854,.largeDivisor 148470429638497927331947424147⟩,.good ⟨4855,4855,.largeDivisor 833322469242667557452722247669⟩,.good ⟨4856,4856,.largeDivisor 1566027055202164728711462552121⟩,.good ⟨4857,4857,.largeDivisor 1046387867260546717203408118813⟩,.good ⟨4858,4858,.largeDivisor 74911613356593709690444113313⟩,.good ⟨4859,4859,.largeDivisor 3603916131680087479067999471167⟩,.good ⟨4860,4860,.largeDivisor 743228734106019278009486383⟩,.good ⟨4861,4861,.topPrime 4861⟩]⟩,
    ⟨(4864,4870),[.good ⟨4864,4870,.topPrime 4861⟩]⟩,
    ⟨(4880,4885),[.good ⟨4880,4885,.topPrime 4877⟩]⟩,
    ⟨(4887,4890),[.good ⟨4887,4887,.topPrime 4877⟩,.good ⟨4888,4888,.largeDivisor 311756459344440145533639564397⟩,.good ⟨4889,4890,.topPrime 4889⟩]⟩,
    ⟨(4896,4897),[.good ⟨4896,4897,.topPrime 4889⟩]⟩,
    ⟨(4900,4910),[.good ⟨4900,4900,.largeDivisor 16471972802942625263723735033⟩,.good ⟨4901,4901,.largeDivisor 495270789614857708082883591391⟩,.good ⟨4902,4902,.largeDivisor 82730777983099314558109976317⟩,.good ⟨4903,4910,.topPrime 4903⟩]⟩,
    ⟨(4914,4922),[.good ⟨4914,4919,.topPrime 4909⟩,.good ⟨4920,4922,.topPrime 4919⟩]⟩,
    ⟨(4928,4935),[.good ⟨4928,4929,.topPrime 4919⟩,.good ⟨4930,4930,.largeDivisor 30829934566153995973126421671⟩,.good ⟨4931,4935,.topPrime 4931⟩]⟩,
    ⟨(4944,4960),[.good ⟨4944,4953,.topPrime 4943⟩,.good ⟨4954,4960,.topPrime 4951⟩]⟩,
    ⟨(4968,4970),[.good ⟨4968,4970,.topPrime 4967⟩]⟩,
    ⟨(4975,4985),[.good ⟨4975,4983,.topPrime 4973⟩,.good ⟨4984,4984,.largeDivisor 695180250624955110416398755563⟩,.good ⟨4985,4985,.largeDivisor 836061169931339258245053750659⟩]⟩,
    ⟨(4995,5010),[.good ⟨4995,5003,.topPrime 4993⟩,.good ⟨5004,5010,.topPrime 5003⟩]⟩,
    ⟨(5024,5034),[.good ⟨5024,5033,.topPrime 5023⟩,.good ⟨5034,5034,.largeDivisor 387973490377651298932052381491⟩]⟩,
    ⟨(5047,5060),[.good ⟨5047,5049,.topPrime 5039⟩,.good ⟨5050,5050,.largeDivisor 2550917330164354559565794689⟩,.good ⟨5051,5060,.topPrime 5051⟩]⟩,
    ⟨(5075,5085),[.good ⟨5075,5075,.largeDivisor 4072516579564589755349449296637⟩,.good ⟨5076,5076,.largeDivisor 188951904481279090327170895303⟩,.good ⟨5077,5085,.topPrime 5077⟩]⟩,
    ⟨(5096,5098),[.good ⟨5096,5097,.topPrime 5087⟩,.good ⟨5098,5098,.largeDivisor 318483169005872080753167931787⟩]⟩,
    ⟨(5100,5113),[.good ⟨5100,5109,.topPrime 5099⟩,.good ⟨5110,5113,.topPrime 5107⟩]⟩,
    ⟨(5125,5140),[.good ⟨5125,5129,.topPrime 5119⟩,.good ⟨5130,5130,.largeDivisor 464410687647883052662773889⟩,.good ⟨5131,5131,.largeDivisor 340413034045898277601813260637⟩,.good ⟨5132,5132,.largeDivisor 767574556556920017861382097359⟩,.good ⟨5133,5133,.largeDivisor 512815332397067610527459886209⟩,.good ⟨5134,5134,.largeDivisor 256958219454084043768102582061⟩,.good ⟨5135,5135,.largeDivisor 4326165432448267425407235275027⟩,.good ⟨5136,5136,.largeDivisor 11290236616389380841916443278729⟩,.good ⟨5137,5137,.largeDivisor 22628929183922063747532098760371⟩,.good ⟨5138,5138,.largeDivisor 4859459924224340196222516234673⟩,.good ⟨5139,5139,.largeDivisor 4328785673529014433764519141963⟩,.good ⟨5140,5140,.largeDivisor 216903473990438040451838841779⟩]⟩,
    ⟨(5145,5146),[.good ⟨5145,5145,.largeDivisor 40268209620635855774943338831⟩,.good ⟨5146,5146,.largeDivisor 100886176586072109940534771969⟩]⟩,
    ⟨(5150,5162),[.good ⟨5150,5157,.topPrime 5147⟩,.good ⟨5158,5162,.topPrime 5153⟩]⟩,
    ⟨(5175,5178),[.good ⟨5175,5178,.topPrime 5171⟩]⟩,
    ⟨(5184,5194),[.good ⟨5184,5189,.topPrime 5179⟩,.good ⟨5190,5194,.topPrime 5189⟩]⟩,
    ⟨(5200,5210),[.good ⟨5200,5207,.topPrime 5197⟩,.good ⟨5208,5208,.largeDivisor 1128044423032431853263014805677⟩,.good ⟨5209,5210,.topPrime 5209⟩]⟩,
    ⟨(5216,5221),[.good ⟨5216,5219,.topPrime 5209⟩,.good ⟨5220,5220,.largeDivisor 899885166181647353084996089991⟩,.good ⟨5221,5221,.largeDivisor 9017851156687871075732753523691⟩]⟩,
    ⟨(5225,5226),[.good ⟨5225,5225,.largeDivisor 701553679961630671762671248377⟩,.good ⟨5226,5226,.largeDivisor 4101028558701881309431454076083⟩]⟩,
    ⟨(5232,5235),[.good ⟨5232,5235,.topPrime 5231⟩]⟩,
    ⟨(5238,5258),[.good ⟨5238,5247,.topPrime 5237⟩,.good ⟨5248,5248,.largeDivisor 85221676612301269554645123239⟩,.good ⟨5249,5249,.largeDivisor 4611634850906900658683837648263⟩,.good ⟨5250,5250,.largeDivisor 880250973641324806009512817⟩,.good ⟨5251,5251,.largeDivisor 35283953149546538598137036657⟩,.good ⟨5252,5252,.largeDivisor 26518506288125131756928408203⟩,.good ⟨5253,5253,.largeDivisor 17716102445824916332079985793⟩,.good ⟨5254,5254,.largeDivisor 434955150702636029947421707273⟩,.good ⟨5255,5255,.largeDivisor 1046082067250504502230526806279⟩,.good ⟨5256,5256,.largeDivisor 72796940809615661261037613783⟩,.good ⟨5257,5257,.largeDivisor 20842738295090111173099217671⟩,.good ⟨5258,5258,.largeDivisor 93988951934462954157937981573⟩]⟩,
    ⟨(5265,5275),[.good ⟨5265,5271,.topPrime 5261⟩,.good ⟨5272,5272,.largeDivisor 716899266497642308897947462293⟩,.good ⟨5273,5275,.topPrime 5273⟩]⟩,
    ⟨(5280,5285),[.good ⟨5280,5285,.topPrime 5279⟩]⟩,
    ⟨(5292,5306),[.good ⟨5292,5292,.largeDivisor 427096494019283386759227682253⟩,.good ⟨5293,5293,.largeDivisor 855971882939820888344033366969⟩,.good ⟨5294,5294,.largeDivisor 3859893652711594363622923888189⟩,.good ⟨5295,5295,.largeDivisor 1031447736114453300801583749077⟩,.good ⟨5296,5296,.largeDivisor 2260988083800556573280292853937⟩,.good ⟨5297,5306,.topPrime 5297⟩]⟩,
    ⟨(5319,5322),[.good ⟨5319,5319,.topPrime 5309⟩,.good ⟨5320,5320,.largeDivisor 39606604474498910801877034357⟩,.good ⟨5321,5321,.largeDivisor 3571978684895062786047249149383⟩,.good ⟨5322,5322,.largeDivisor 596562811806047955417795141311⟩]⟩,
    ⟨(5325,5335),[.good ⟨5325,5333,.topPrime 5323⟩,.good ⟨5334,5335,.topPrime 5333⟩]⟩,
    ⟨(5344,5356),[.good ⟨5344,5344,.largeDivisor 535100381206019183069665867483⟩,.good ⟨5345,5345,.largeDivisor 4504112657553027611822620569601⟩,.good ⟨5346,5346,.largeDivisor 46434151108794099090954851233⟩,.good ⟨5347,5356,.topPrime 5347⟩]⟩,
    ⟨(5360,5360),[.good ⟨5360,5360,.topPrime 5351⟩]⟩,
    ⟨(5375,5385),[.good ⟨5375,5375,.largeDivisor 7153677023867234697470562680921⟩,.good ⟨5376,5376,.largeDivisor 6666986974713173063812267177⟩,.good ⟨5377,5377,.largeDivisor 13361307850552639420096369963⟩,.good ⟨5378,5378,.largeDivisor 20083039021875934824281240263⟩,.good ⟨5379,5379,.largeDivisor 53664514107635694694390855129⟩,.good ⟨5380,5380,.largeDivisor 18821061662260758634669022203⟩,.good ⟨5381,5385,.topPrime 5381⟩]⟩,
    ⟨(5392,5410),[.good ⟨5392,5397,.topPrime 5387⟩,.good ⟨5398,5403,.topPrime 5393⟩,.good ⟨5404,5409,.topPrime 5399⟩,.good ⟨5410,5410,.topPrime 5407⟩]⟩,
    ⟨(5425,5435),[.good ⟨5425,5429,.topPrime 5419⟩,.good ⟨5430,5430,.largeDivisor 555708293407432188368807628179⟩,.good ⟨5431,5435,.topPrime 5431⟩]⟩,
    ⟨(5440,5450),[.good ⟨5440,5447,.topPrime 5437⟩,.good ⟨5448,5450,.topPrime 5443⟩]⟩,
    ⟨(5454,5464),[.good ⟨5454,5459,.topPrime 5449⟩,.good ⟨5460,5460,.largeDivisor 253055183863956746543601846217⟩,.good ⟨5461,5461,.largeDivisor 12678296872303374246556052130193⟩,.good ⟨5462,5462,.largeDivisor 19055822101409199266562783911699⟩,.good ⟨5463,5463,.largeDivisor 8486341904295953011594724750111⟩,.good ⟨5464,5464,.largeDivisor 7440528267823024270756350454847⟩]⟩,
    ⟨(5475,5485),[.good ⟨5475,5481,.topPrime 5471⟩,.good ⟨5482,5485,.topPrime 5479⟩]⟩,
    ⟨(5488,5498),[.good ⟨5488,5493,.topPrime 5483⟩,.good ⟨5494,5494,.largeDivisor 2903098063183319865389037230407⟩,.good ⟨5495,5495,.largeDivisor 997344411203022360757284125107⟩,.good ⟨5496,5496,.largeDivisor 208196782283949061634838709799⟩,.good ⟨5497,5497,.largeDivisor 417228476928497262780425952521⟩,.good ⟨5498,5498,.largeDivisor 627097366362186427218912489601⟩]⟩,
    ⟨(5504,5514),[.good ⟨5504,5513,.topPrime 5503⟩,.good ⟨5514,5514,.topPrime 5507⟩]⟩,
    ⟨(5525,5530),[.good ⟨5525,5530,.topPrime 5521⟩]⟩,
    ⟨(5535,5546),[.good ⟨5535,5541,.topPrime 5531⟩,.good ⟨5542,5542,.largeDivisor 3727371921964811190782165335297⟩,.good ⟨5543,5543,.largeDivisor 44817402523754768829730027014211⟩,.good ⟨5544,5544,.largeDivisor 89100203824562164671431465237⟩,.good ⟨5545,5545,.largeDivisor 35710923759103520282116911799⟩,.good ⟨5546,5546,.largeDivisor 2415277843512050286397809668747⟩]⟩,
    ⟨(5552,5560),[.good ⟨5552,5552,.largeDivisor 6843768386885368955284203408629⟩,.good ⟨5553,5553,.largeDivisor 1523856042839506548325641827183⟩,.good ⟨5554,5554,.largeDivisor 763440056100542970359066814737⟩,.good ⟨5555,5555,.largeDivisor 77107445666154840006265748288437⟩,.good ⟨5556,5556,.largeDivisor 32191837099575916071146114930159⟩,.good ⟨5557,5560,.topPrime 5557⟩]⟩,
    ⟨(5562,5562),[.good ⟨5562,5562,.topPrime 5557⟩]⟩,
    ⟨(5568,5572),[.good ⟨5568,5572,.topPrime 5563⟩]⟩,
    ⟨(5575,5578),[.good ⟨5575,5578,.topPrime 5573⟩]⟩,
    ⟨(5584,5596),[.good ⟨5584,5591,.topPrime 5581⟩,.good ⟨5592,5596,.topPrime 5591⟩]⟩,
    ⟨(5600,5610),[.good ⟨5600,5601,.topPrime 5591⟩,.good ⟨5602,5602,.largeDivisor 1258961989327496408594491331573⟩,.good ⟨5603,5603,.largeDivisor 30274523717604988744012596269543⟩,.good ⟨5604,5604,.largeDivisor 17694871809914305060643157018619⟩,.good ⟨5605,5605,.largeDivisor 7091866749701085439035030038567⟩,.good ⟨5606,5606,.largeDivisor 53293572384482955725509890611537⟩,.good ⟨5607,5607,.largeDivisor 3390370223172968591544231783007⟩,.good ⟨5608,5608,.largeDivisor 424629181069189026741559135231⟩,.good ⟨5609,5609,.largeDivisor 7658344297804119778113843053089⟩,.good ⟨5610,5610,.largeDivisor 255779672028821289249381791557⟩]⟩,
    ⟨(5616,5626),[.good ⟨5616,5616,.largeDivisor 1437820568941735166775260278007⟩,.good ⟨5617,5617,.largeDivisor 2881283673116563122289203346973⟩,.good ⟨5618,5618,.largeDivisor 90938492559375570904610923614013⟩,.good ⟨5619,5619,.largeDivisor 242978311788459977609609500612049⟩,.good ⟨5620,5620,.largeDivisor 12172741239535969639561467226241⟩,.good ⟨5621,5621,.largeDivisor 52271182969772104922822771030329⟩,.good ⟨5622,5622,.largeDivisor 8728942869840752506270706907043⟩,.good ⟨5623,5626,.topPrime 5623⟩]⟩,
    ⟨(5632,5645),[.good ⟨5632,5633,.topPrime 5623⟩,.good ⟨5634,5634,.largeDivisor 7819244259744108433875562241⟩,.good ⟨5635,5635,.largeDivisor 255821647189352054024378281⟩,.good ⟨5636,5636,.largeDivisor 360452700889797044120348997929⟩,.good ⟨5637,5637,.largeDivisor 240771640587248007786041865307⟩,.good ⟨5638,5638,.largeDivisor 120621157777759398249307271779⟩,.good ⟨5639,5645,.topPrime 5639⟩]⟩,
    ⟨(5648,5658),[.good ⟨5648,5657,.topPrime 5647⟩,.good ⟨5658,5658,.topPrime 5657⟩]⟩,
    ⟨(5670,5690),[.good ⟨5670,5679,.topPrime 5669⟩,.good ⟨5680,5680,.largeDivisor 21718259330222528717659841897⟩,.good ⟨5681,5681,.largeDivisor 123381431254994185645025561816857⟩,.good ⟨5682,5682,.largeDivisor 20603458895870127632840628996749⟩,.good ⟨5683,5690,.topPrime 5683⟩]⟩,
    ⟨(5697,5707),[.good ⟨5697,5703,.topPrime 5693⟩,.good ⟨5704,5707,.topPrime 5701⟩]⟩,
    ⟨(5725,5738),[.good ⟨5725,5727,.topPrime 5717⟩,.good ⟨5728,5728,.largeDivisor 536098047569339251060923041599⟩,.good ⟨5729,5729,.largeDivisor 3222776195723761352915034738007⟩,.good ⟨5730,5730,.largeDivisor 753427482721222054353453653561⟩,.good ⟨5731,5731,.largeDivisor 30195055269058206947549950269637⟩,.good ⟨5732,5732,.largeDivisor 22689834399874363165096527916303⟩,.good ⟨5733,5733,.largeDivisor 103099562110579070655803866799⟩,.good ⟨5734,5734,.largeDivisor 51648863283423064052103736871⟩,.good ⟨5735,5735,.largeDivisor 1117759362001627442787980871529⟩,.good ⟨5736,5736,.largeDivisor 1166569814490781479590949468539⟩,.good ⟨5737,5738,.topPrime 5737⟩]⟩,
    ⟨(5750,5761),[.good ⟨5750,5759,.topPrime 5749⟩,.good ⟨5760,5760,.largeDivisor 4433402551159111770507546227⟩,.good ⟨5761,5761,.largeDivisor 158638708678432564657726545427⟩]⟩,
    ⟨(5776,5788),[.good ⟨5776,5776,.largeDivisor 3526111981616383993552471543297⟩,.good ⟨5777,5777,.largeDivisor 21197033213109105443030830494929⟩,.good ⟨5778,5778,.largeDivisor 393286380059419851292578266509⟩,.good ⟨5779,5788,.topPrime 5779⟩]⟩,
    ⟨(5792,5792),[.good ⟨5792,5792,.topPrime 5791⟩]⟩,
    ⟨(5800,5802),[.good ⟨5800,5801,.topPrime 5791⟩,.good ⟨5802,5802,.topPrime 5801⟩]⟩,
    ⟨(5805,5815),[.good ⟨5805,5811,.topPrime 5801⟩,.good ⟨5812,5815,.topPrime 5807⟩]⟩,
    ⟨(5825,5842),[.good ⟨5825,5831,.topPrime 5821⟩,.good ⟨5832,5837,.topPrime 5827⟩,.good ⟨5838,5838,.largeDivisor 19984575868352222999717492023⟩,.good ⟨5839,5842,.topPrime 5839⟩]⟩,
    ⟨(5850,5850),[.good ⟨5850,5850,.topPrime 5849⟩]⟩,
    ⟨(5856,5866),[.good ⟨5856,5861,.topPrime 5851⟩,.good ⟨5862,5866,.topPrime 5861⟩]⟩,
    ⟨(5875,5896),[.good ⟨5875,5879,.topPrime 5869⟩,.good ⟨5880,5889,.topPrime 5879⟩,.good ⟨5890,5891,.topPrime 5881⟩,.good ⟨5892,5892,.largeDivisor 6400671043191134520840581804213⟩,.good ⟨5893,5893,.largeDivisor 12825282032480569782833576529149⟩,.good ⟨5894,5894,.largeDivisor 2753413429716634308298284405289⟩,.good ⟨5895,5895,.largeDivisor 245205410804132627047637836229⟩,.good ⟨5896,5896,.largeDivisor 153539836671746598244782570349⟩]⟩,
    ⟨(5904,5910),[.good ⟨5904,5910,.topPrime 5903⟩]⟩,
    ⟨(5913,5914),[.good ⟨5913,5913,.topPrime 5903⟩,.good ⟨5914,5914,.largeDivisor 5927785582215725955533673003589⟩]⟩,
    ⟨(5920,5923),[.good ⟨5920,5920,.largeDivisor 1798299779550336801674663328913⟩,.good ⟨5921,5921,.largeDivisor 54049406064556061942719195789309⟩,.good ⟨5922,5922,.largeDivisor 429761814419579582356251429893⟩,.good ⟨5923,5923,.topPrime 5923⟩]⟩,
    ⟨(5925,5946),[.good ⟨5925,5933,.topPrime 5923⟩,.good ⟨5934,5937,.topPrime 5927⟩,.good ⟨5938,5938,.largeDivisor 3415262721376237900608136860449⟩,.good ⟨5939,5946,.topPrime 5939⟩]⟩,
    ⟨(5950,5950),[.good ⟨5950,5950,.largeDivisor 434562503726936971033329927713⟩]⟩,
    ⟨(5952,5960),[.good ⟨5952,5952,.largeDivisor 1226737544185231432620766910903⟩,.good ⟨5953,5960,.topPrime 5953⟩]⟩,
    ⟨(5968,5988),[.good ⟨5968,5968,.largeDivisor 19654987238886874079216130848807⟩,.good ⟨5969,5969,.largeDivisor 354442957187056650691362794672293⟩,.good ⟨5970,5970,.largeDivisor 11836574673640589610267024020773⟩,.good ⟨5971,5971,.largeDivisor 67762404004130355285622627447781⟩,.good ⟨5972,5972,.largeDivisor 50915585897416517585019920875459⟩,.good ⟨5973,5973,.largeDivisor 34006350728532803257891533868849⟩,.good ⟨5974,5974,.largeDivisor 17034541275553829168425626642001⟩,.good ⟨5975,5975,.largeDivisor 57341624857145988327517250245609⟩,.good ⟨5976,5976,.largeDivisor 3989400555861791308620227804179⟩,.good ⟨5977,5977,.largeDivisor 7993512277031822544962487960301⟩,.good ⟨5978,5978,.largeDivisor 2206354067416023417387836043341⟩,.good ⟨5979,5979,.largeDivisor 11788910606863631825345729850881⟩,.good ⟨5980,5980,.largeDivisor 590531792838369226969069061051⟩,.good ⟨5981,5988,.topPrime 5981⟩]⟩,
    ⟨(5994,5994),[.good ⟨5994,5994,.topPrime 5987⟩]⟩,
    ⟨(6000,6010),[.good ⟨6000,6000,.largeDivisor 23824998353573705980998129707⟩,.good ⟨6001,6001,.largeDivisor 238687504373615708834674084093⟩,.good ⟨6002,6002,.largeDivisor 358688633262504127297374524969⟩,.good ⟨6003,6003,.largeDivisor 2235937555010189279507932786489⟩,.good ⟨6004,6004,.largeDivisor 560010390467260822383014702573⟩,.good ⟨6005,6005,.largeDivisor 18177634566248114802216233994329⟩,.good ⟨6006,6006,.largeDivisor 2167974764781885251640468274553⟩,.good ⟨6007,6010,.topPrime 6007⟩]⟩,
    ⟨(6021,6037),[.good ⟨6021,6021,.topPrime 6011⟩,.good ⟨6022,6022,.largeDivisor 775143251667783923581732734217⟩,.good ⟨6023,6023,.largeDivisor 27956214399970434561274109330473⟩,.good ⟨6024,6024,.largeDivisor 8168812356685191006844937650697⟩,.good ⟨6025,6025,.largeDivisor 654700291972441314482750240711⟩,.good ⟨6026,6026,.largeDivisor 4919231869608393218295577245043⟩,.good ⟨6027,6027,.largeDivisor 4291244822424343020215290788229⟩,.good ⟨6028,6028,.largeDivisor 1074772469236078599212970453359⟩,.good ⟨6029,6037,.topPrime 6029⟩]⟩,
    ⟨(6048,6058),[.good ⟨6048,6057,.topPrime 6047⟩,.good ⟨6058,6058,.topPrime 6053⟩]⟩,
    ⟨(6075,6086),[.good ⟨6075,6083,.topPrime 6073⟩,.good ⟨6084,6086,.topPrime 6079⟩]⟩,
    ⟨(6100,6110),[.good ⟨6100,6101,.topPrime 6091⟩,.good ⟨6102,6110,.topPrime 6101⟩]⟩,
    ⟨(6112,6112),[.good ⟨6112,6112,.largeDivisor 1825319859558476579969535476989⟩]⟩,
    ⟨(6125,6138),[.good ⟨6125,6131,.topPrime 6121⟩,.good ⟨6132,6138,.topPrime 6131⟩]⟩,
    ⟨(6150,6154),[.good ⟨6150,6153,.topPrime 6143⟩,.good ⟨6154,6154,.topPrime 6151⟩]⟩,
    ⟨(6156,6166),[.good ⟨6156,6161,.topPrime 6151⟩,.good ⟨6162,6162,.largeDivisor 3993213719428528737081307448873⟩,.good ⟨6163,6166,.topPrime 6163⟩]⟩,
    ⟨(6175,6186),[.good ⟨6175,6183,.topPrime 6173⟩,.good ⟨6184,6184,.largeDivisor 8475511877858623624572465907⟩,.good ⟨6185,6185,.largeDivisor 10484208192911117423596140326959⟩,.good ⟨6186,6186,.largeDivisor 43762018813325352484727209219007⟩]⟩,
    ⟨(6192,6193),[.good ⟨6192,6192,.largeDivisor 29487719545489179751820978287093⟩,.good ⟨6193,6193,.largeDivisor 59080377594698961566815696710439⟩]⟩,
    ⟨(6200,6202),[.good ⟨6200,6202,.topPrime 6199⟩]⟩,
    ⟨(6208,6218),[.good ⟨6208,6213,.topPrime 6203⟩,.good ⟨6214,6218,.topPrime 6211⟩]⟩,
    ⟨(6224,6234),[.good ⟨6224,6231,.topPrime 6221⟩,.good ⟨6232,6234,.topPrime 6229⟩]⟩,
    ⟨(6240,6247),[.good ⟨6240,6240,.largeDivisor 458630482798491609388483482821⟩,.good ⟨6241,6241,.largeDivisor 32160818462307709372960959733549⟩,.good ⟨6242,6242,.largeDivisor 48326391151113317743385245704577⟩,.good ⟨6243,6243,.largeDivisor 129097843370303997720134398345603⟩,.good ⟨6244,6244,.largeDivisor 4618774117050824882334344750693⟩,.good ⟨6245,6245,.largeDivisor 5552308827908065715144943785963⟩,.good ⟨6246,6246,.largeDivisor 1545029000227825824503043699863⟩,.good ⟨6247,6247,.topPrime 6247⟩]⟩,
    ⟨(6250,6250),[.good ⟨6250,6250,.topPrime 6247⟩]⟩,
    ⟨(6256,6260),[.good ⟨6256,6257,.topPrime 6247⟩,.good ⟨6258,6260,.topPrime 6257⟩]⟩,
    ⟨(6264,6266),[.good ⟨6264,6266,.topPrime 6263⟩]⟩,
    ⟨(6272,6282),[.good ⟨6272,6281,.topPrime 6271⟩,.good ⟨6282,6282,.topPrime 6277⟩]⟩,
    ⟨(6291,6298),[.good ⟨6291,6297,.topPrime 6287⟩,.good ⟨6298,6298,.largeDivisor 106639042252353914892760380978197⟩]⟩,
    ⟨(6300,6301),[.good ⟨6300,6301,.topPrime 6299⟩]⟩,
    ⟨(6304,6310),[.good ⟨6304,6310,.topPrime 6301⟩]⟩,
    ⟨(6320,6331),[.good ⟨6320,6327,.topPrime 6317⟩,.good ⟨6328,6331,.topPrime 6323⟩]⟩,
    ⟨(6345,6346),[.good ⟨6345,6346,.topPrime 6343⟩]⟩,
    ⟨(6350,6360),[.good ⟨6350,6353,.topPrime 6343⟩,.good ⟨6354,6360,.topPrime 6353⟩]⟩,
    ⟨(6370,6382),[.good ⟨6370,6377,.topPrime 6367⟩,.good ⟨6378,6382,.topPrime 6373⟩]⟩,
    ⟨(6384,6385),[.good ⟨6384,6385,.topPrime 6379⟩]⟩,
    ⟨(6400,6410),[.good ⟨6400,6407,.topPrime 6397⟩,.good ⟨6408,6408,.largeDivisor 25601722793352331356039960557⟩,.good ⟨6409,6409,.largeDivisor 359040353134781382190065880109⟩,.good ⟨6410,6410,.largeDivisor 2913226156448036278276357331011⟩]⟩,
    ⟨(6419,6436),[.good ⟨6419,6419,.largeDivisor 193212908069389678626077147413759⟩,.good ⟨6420,6420,.largeDivisor 3225742106947214169603722074157⟩,.good ⟨6421,6431,.topPrime 6421⟩,.good ⟨6432,6436,.topPrime 6427⟩]⟩,
    ⟨(6450,6460),[.good ⟨6450,6459,.topPrime 6449⟩,.good ⟨6460,6460,.topPrime 6451⟩]⟩,
    ⟨(6468,6478),[.good ⟨6468,6468,.largeDivisor 4376753746780062258668624287981⟩,.good ⟨6469,6478,.topPrime 6469⟩]⟩,
    ⟨(6480,6490),[.good ⟨6480,6483,.topPrime 6473⟩,.good ⟨6484,6490,.topPrime 6481⟩]⟩,
    ⟨(6500,6510),[.good ⟨6500,6501,.topPrime 6491⟩,.good ⟨6502,6502,.largeDivisor 18176238156196509558121842545851⟩,.good ⟨6503,6503,.largeDivisor 31212061454910457263392221303319⟩,.good ⟨6504,6504,.largeDivisor 1302705783810370232308531029293⟩,.good ⟨6505,6505,.largeDivisor 521964959882134792803633775519⟩,.good ⟨6506,6506,.largeDivisor 3921367239022135060023604322779⟩,.good ⟨6507,6507,.largeDivisor 32587913951873605153989263509991⟩,.good ⟨6508,6508,.largeDivisor 8160772048591404584506777240381⟩,.good ⟨6509,6509,.largeDivisor 147142563058951391802090340879889⟩,.good ⟨6510,6510,.largeDivisor 701864818407061570374642339941⟩]⟩,
    ⟨(6512,6522),[.good ⟨6512,6512,.largeDivisor 66022705118309247065304163290967⟩,.good ⟨6513,6513,.largeDivisor 44089600987957359390579925716607⟩,.good ⟨6514,6514,.largeDivisor 154574629082644908003357177673831⟩,.good ⟨6515,6515,.largeDivisor 743213068984082343647138016638383⟩,.good ⟨6516,6516,.largeDivisor 103398589920152885626542644897423⟩,.good ⟨6517,6517,.largeDivisor 603926593446942768799357593929⟩,.good ⟨6518,6518,.largeDivisor 8166791568645587068535711197571⟩,.good ⟨6519,6519,.largeDivisor 10907460404835194038062753799829⟩,.good ⟨6520,6520,.largeDivisor 273147341525293689999113361403⟩,.good ⟨6521,6522,.topPrime 6521⟩]⟩,
    ⟨(6525,6538),[.good ⟨6525,6531,.topPrime 6521⟩,.good ⟨6532,6538,.topPrime 6529⟩]⟩,
    ⟨(6544,6544),[.good ⟨6544,6544,.largeDivisor 54198178070277672562469982065851⟩]⟩,
    ⟨(6550,6554),[.good ⟨6550,6554,.topPrime 6547⟩]⟩,
    ⟨(6560,6571),[.good ⟨6560,6563,.topPrime 6553⟩,.good ⟨6564,6571,.topPrime 6563⟩]⟩,
    ⟨(6575,6585),[.good ⟨6575,6581,.topPrime 6571⟩,.good ⟨6582,6585,.topPrime 6581⟩]⟩,
    ⟨(6592,6598),[.good ⟨6592,6592,.largeDivisor 44054020127363937198463531965701⟩,.good ⟨6593,6593,.largeDivisor 264765865724439779352297234503069⟩,.good ⟨6594,6594,.largeDivisor 6314482898182750320265937386751⟩,.good ⟨6595,6595,.largeDivisor 10120052178254006892382468302703⟩,.good ⟨6596,6596,.largeDivisor 38013590072758217233573326266873⟩,.good ⟨6597,6597,.largeDivisor 8461573496304820295235119390713⟩,.good ⟨6598,6598,.largeDivisor 29664963830297133001042145451607⟩]⟩,
    ⟨(6600,6602),[.good ⟨6600,6602,.topPrime 6599⟩]⟩,
    ⟨(6608,6610),[.good ⟨6608,6610,.topPrime 6607⟩]⟩,
    ⟨(6615,6634),[.good ⟨6615,6617,.topPrime 6607⟩,.good ⟨6618,6618,.largeDivisor 3755509919145902684530373944529⟩,.good ⟨6619,6629,.topPrime 6619⟩,.good ⟨6630,6630,.largeDivisor 643634264365329895359396495541⟩,.good ⟨6631,6631,.largeDivisor 12894074945638980471686278434841⟩,.good ⟨6632,6632,.largeDivisor 4843311341157550888549127694827⟩,.good ⟨6633,6633,.largeDivisor 7546554880408276965878873384963⟩,.good ⟨6634,6634,.largeDivisor 3779544396544504710225007250177⟩]⟩,
    ⟨(6642,6652),[.good ⟨6642,6647,.topPrime 6637⟩,.good ⟨6648,6648,.largeDivisor 64471350965097753123144276905729⟩,.good ⟨6649,6649,.largeDivisor 129156376187687544596500842767759⟩,.good ⟨6650,6650,.largeDivisor 1108888905361980726314286494617⟩,.good ⟨6651,6651,.largeDivisor 9873119289909683816219972524361⟩,.good ⟨6652,6652,.largeDivisor 2472368224532420446675773875623⟩]⟩,
    ⟨(6656,6660),[.good ⟨6656,6660,.topPrime 6653⟩]⟩,
    ⟨(6664,6666),[.good ⟨6664,6666,.topPrime 6661⟩]⟩,
    ⟨(6669,6682),[.good ⟨6669,6671,.topPrime 6661⟩,.good ⟨6672,6672,.largeDivisor 4106957217874267630061920859257⟩,.good ⟨6673,6682,.topPrime 6673⟩]⟩,
    ⟨(6696,6698),[.good ⟨6696,6698,.topPrime 6691⟩]⟩,
    ⟨(6700,6710),[.good ⟨6700,6701,.topPrime 6691⟩,.good ⟨6702,6710,.topPrime 6701⟩]⟩,
    ⟨(6713,6714),[.good ⟨6713,6714,.topPrime 6709⟩]⟩,
    ⟨(6720,6733),[.good ⟨6720,6729,.topPrime 6719⟩,.good ⟨6730,6730,.largeDivisor 105408866298120184922597634263⟩,.good ⟨6731,6731,.largeDivisor 709507079052646964714004676224253⟩,.good ⟨6732,6732,.largeDivisor 19740786160220946645070506539791⟩,.good ⟨6733,6733,.topPrime 6733⟩]⟩,
    ⟨(6750,6760),[.good ⟨6750,6750,.largeDivisor 348508554295813415532777340969⟩,.good ⟨6751,6751,.largeDivisor 6981546736056487739649198305287⟩,.good ⟨6752,6752,.largeDivisor 13767349171102045916504493854351⟩,.good ⟨6753,6753,.largeDivisor 9193207648813617727099263027631⟩,.good ⟨6754,6754,.largeDivisor 4604102362456412140651670064409⟩,.good ⟨6755,6755,.largeDivisor 3162248241829493036105951325377⟩,.good ⟨6756,6756,.largeDivisor 1319752231393628301947850701399⟩,.good ⟨6757,6757,.largeDivisor 2643808427965237603398051345791⟩,.good ⟨6758,6758,.largeDivisor 3972178158334609987497561359461⟩,.good ⟨6759,6759,.largeDivisor 12378032352320714110417711954171⟩,.good ⟨6760,6760,.largeDivisor 309955173735694278361326614351⟩]⟩,
    ⟨(6762,6762),[.good ⟨6762,6762,.topPrime 6761⟩]⟩,
    ⟨(6768,6772),[.good ⟨6768,6772,.topPrime 6763⟩]⟩,
    ⟨(6775,6787),[.good ⟨6775,6775,.largeDivisor 228679828208940478079223817652011⟩,.good ⟨6776,6776,.largeDivisor 61353124641423055094425902296881⟩,.good ⟨6777,6777,.largeDivisor 4552064524090211891427993342157⟩,.good ⟨6778,6778,.largeDivisor 2279732033713865538650726974519⟩,.good ⟨6779,6787,.topPrime 6779⟩]⟩,
    ⟨(6800,6814),[.good ⟨6800,6803,.topPrime 6793⟩,.good ⟨6804,6813,.topPrime 6803⟩,.good ⟨6814,6814,.largeDivisor 767181457886126177165121507683⟩]⟩,
    ⟨(6816,6821),[.good ⟨6816,6816,.largeDivisor 54549927423963327364291185645119⟩,.good ⟨6817,6817,.largeDivisor 109276184322409051613979727458941⟩,.good ⟨6818,6818,.largeDivisor 23454165608203264934335886854343⟩,.good ⟨6819,6819,.largeDivisor 62645497564566417386304901080989⟩,.good ⟨6820,6820,.largeDivisor 3137335096125297155049195369161⟩,.good ⟨6821,6821,.largeDivisor 94272082337756175747094985079503⟩]⟩,
    ⟨(6825,6826),[.good ⟨6825,6826,.topPrime 6823⟩]⟩,
    ⟨(6831,6841),[.good ⟨6831,6839,.topPrime 6829⟩,.good ⟨6840,6841,.topPrime 6833⟩]⟩,
    ⟨(6850,6870),[.good ⟨6850,6851,.topPrime 6841⟩,.good ⟨6852,6852,.largeDivisor 80929366648647059051347367642711⟩,.good ⟨6853,6853,.largeDivisor 23159850905882920435916127717689⟩,.good ⟨6854,6854,.largeDivisor 34795619927426904135854699556563⟩,.good ⟨6855,6855,.largeDivisor 9293745357588600344877614083781⟩,.good ⟨6856,6856,.largeDivisor 5817925326116457630065825617093⟩,.good ⟨6857,6867,.topPrime 6857⟩,.good ⟨6868,6870,.topPrime 6863⟩]⟩,
    ⟨(6880,6890),[.good ⟨6880,6881,.topPrime 6871⟩,.good ⟨6882,6882,.largeDivisor 485236831935182067121235941333⟩,.good ⟨6883,6890,.topPrime 6883⟩]⟩,
    ⟨(6900,6906),[.good ⟨6900,6906,.topPrime 6899⟩]⟩,
    ⟨(6909,6910),[.good ⟨6909,6910,.topPrime 6907⟩]⟩,
    ⟨(6912,6922),[.good ⟨6912,6921,.topPrime 6911⟩,.good ⟨6922,6922,.topPrime 6917⟩]⟩,
    ⟨(6928,6935),[.good ⟨6928,6928,.largeDivisor 182755387957791001869991891080719⟩,.good ⟨6929,6929,.largeDivisor 1098275874379474286172743983779967⟩,.good ⟨6930,6930,.largeDivisor 1746066572940340677540133519523⟩,.good ⟨6931,6931,.largeDivisor 69953684491615614081102112276381⟩,.good ⟨6932,6932,.largeDivisor 157645949576033627051430377860817⟩,.good ⟨6933,6933,.largeDivisor 105264313629070705609897602784267⟩,.good ⟨6934,6934,.largeDivisor 369010490750240784984342759204301⟩,.good ⟨6935,6935,.largeDivisor 887032150208984347960629821518831⟩]⟩,
    ⟨(6944,6954),[.good ⟨6944,6944,.largeDivisor 66948411246401473778947457891131⟩,.good ⟨6945,6945,.largeDivisor 8940615635155431889141238247359⟩,.good ⟨6946,6946,.largeDivisor 22386992141957328731786244003661⟩,.good ⟨6947,6954,.topPrime 6947⟩]⟩,
    ⟨(6958,6970),[.good ⟨6958,6959,.topPrime 6949⟩,.good ⟨6960,6969,.topPrime 6959⟩,.good ⟨6970,6970,.topPrime 6967⟩]⟩,
    ⟨(6975,6985),[.good ⟨6975,6981,.topPrime 6971⟩,.good ⟨6982,6985,.topPrime 6977⟩]⟩,
    ⟨(6993,7003),[.good ⟨6993,7001,.topPrime 6991⟩,.good ⟨7002,7003,.topPrime 7001⟩]⟩,
    ⟨(7007,7017),[.good ⟨7007,7011,.topPrime 7001⟩,.good ⟨7012,7012,.largeDivisor 49686288391400515312459350668839⟩,.good ⟨7013,7017,.topPrime 7013⟩]⟩,
    ⟨(7024,7034),[.good ⟨7024,7029,.topPrime 7019⟩,.good ⟨7030,7034,.topPrime 7027⟩]⟩,
    ⟨(7047,7066),[.good ⟨7047,7053,.topPrime 7043⟩,.good ⟨7054,7054,.largeDivisor 33016528136159838633629197423999⟩,.good ⟨7055,7055,.largeDivisor 79363409199525608708774782905047⟩,.good ⟨7056,7056,.largeDivisor 56326053370848551248243280983⟩,.good ⟨7057,7066,.topPrime 7057⟩]⟩,
    ⟨(7074,7084),[.good ⟨7074,7079,.topPrime 7069⟩,.good ⟨7080,7084,.topPrime 7079⟩]⟩,
    ⟨(7101,7114),[.good ⟨7101,7101,.largeDivisor 30446100630699927185783887756081⟩,.good ⟨7102,7102,.largeDivisor 106726656801199843471587942173587⟩,.good ⟨7103,7113,.topPrime 7103⟩,.good ⟨7114,7114,.topPrime 7109⟩]⟩,
    ⟨(7125,7138),[.good ⟨7125,7131,.topPrime 7121⟩,.good ⟨7132,7138,.topPrime 7129⟩]⟩,
    ⟨(7152,7164),[.good ⟨7152,7161,.topPrime 7151⟩,.good ⟨7162,7164,.topPrime 7159⟩]⟩,
    ⟨(7175,7178),[.good ⟨7175,7175,.largeDivisor 2879429908563674042417204332747⟩,.good ⟨7176,7176,.largeDivisor 600802193063878952325711162241⟩,.good ⟨7177,7178,.topPrime 7177⟩]⟩,
    ⟨(7182,7192),[.good ⟨7182,7187,.topPrime 7177⟩,.good ⟨7188,7192,.topPrime 7187⟩]⟩,
    ⟨(7200,7213),[.good ⟨7200,7203,.topPrime 7193⟩,.good ⟨7204,7204,.largeDivisor 117013057792470430735253953493⟩,.good ⟨7205,7205,.largeDivisor 140630372209299325012094200987⟩,.good ⟨7206,7206,.largeDivisor 117371144561062188561171046133⟩,.good ⟨7207,7213,.topPrime 7207⟩]⟩,
    ⟨(7216,7219),[.good ⟨7216,7219,.topPrime 7213⟩]⟩,
    ⟨(7225,7226),[.good ⟨7225,7226,.topPrime 7219⟩]⟩,
    ⟨(7232,7242),[.good ⟨7232,7239,.topPrime 7229⟩,.good ⟨7240,7242,.topPrime 7237⟩]⟩,
    ⟨(7250,7260),[.good ⟨7250,7257,.topPrime 7247⟩,.good ⟨7258,7260,.topPrime 7253⟩]⟩,
    ⟨(7264,7273),[.good ⟨7264,7264,.largeDivisor 85501719072650156864822974433551⟩,.good ⟨7265,7265,.largeDivisor 308272947425708878224783577796401⟩,.good ⟨7266,7266,.largeDivisor 36754803518020424488551039944023⟩,.good ⟨7267,7267,.largeDivisor 294484186510975109987100779794063⟩,.good ⟨7268,7268,.largeDivisor 221197919342886223582704471635309⟩,.good ⟨7269,7269,.largeDivisor 147688773372227423461254597622583⟩,.good ⟨7270,7270,.largeDivisor 103538802547357123294437890522293⟩,.good ⟨7271,7271,.largeDivisor 6221740771254823499783949603203243⟩,.good ⟨7272,7272,.largeDivisor 86543977123913672149590815304163⟩,.good ⟨7273,7273,.largeDivisor 24764305213920767106423810823747⟩]⟩,
    ⟨(7280,7285),[.good ⟨7280,7280,.largeDivisor 27030169778541617880759135165181⟩,.good ⟨7281,7281,.largeDivisor 30078964719174922786154250823427⟩,.good ⟨7282,7282,.largeDivisor 15062234980403781304413096857117⟩,.good ⟨7283,7285,.topPrime 7283⟩]⟩,
    ⟨(7290,7290),[.good ⟨7290,7290,.topPrime 7283⟩]⟩,
    ⟨(7296,7310),[.good ⟨7296,7296,.largeDivisor 356112837607932169822104264607⟩,.good ⟨7297,7307,.topPrime 7297⟩,.good ⟨7308,7310,.topPrime 7307⟩]⟩,
    ⟨(7317,7322),[.good ⟨7317,7319,.topPrime 7309⟩,.good ⟨7320,7320,.largeDivisor 111652634317324711559534246853413⟩,.good ⟨7321,7322,.topPrime 7321⟩]⟩,
    ⟨(7325,7335),[.good ⟨7325,7331,.topPrime 7321⟩,.good ⟨7332,7335,.topPrime 7331⟩]⟩,
    ⟨(7344,7360),[.good ⟨7344,7344,.largeDivisor 27559276771890682494344508186043⟩,.good ⟨7345,7345,.largeDivisor 11040244771722774088953390380501⟩,.good ⟨7346,7346,.largeDivisor 248778030960354289746784066672271⟩,.good ⟨7347,7347,.largeDivisor 4650819830701585157174612055575509⟩,.good ⟨7348,7348,.largeDivisor 1164448143518987588078201219312009⟩,.good ⟨7349,7359,.topPrime 7349⟩,.good ⟨7360,7360,.topPrime 7351⟩]⟩,
    ⟨(7375,7385),[.good ⟨7375,7379,.topPrime 7369⟩,.good ⟨7380,7380,.largeDivisor 155111163333196188772474237573⟩,.good ⟨7381,7381,.largeDivisor 1553426725322009592034779304649⟩,.good ⟨7382,7382,.largeDivisor 441053695627964415707720801035343⟩,.good ⟨7383,7383,.largeDivisor 588949074845588945771405801056961⟩,.good ⟨7384,7384,.largeDivisor 73728468205951254163435176234311⟩,.good ⟨7385,7385,.largeDivisor 12658020172055097338067389898649⟩]⟩,
    ⟨(7398,7410),[.good ⟨7398,7403,.topPrime 7393⟩,.good ⟨7404,7404,.largeDivisor 72339682960654153845896687789509⟩,.good ⟨7405,7405,.largeDivisor 28978920872255559060257775119357⟩,.good ⟨7406,7406,.largeDivisor 31095028684428378788795868231521⟩,.good ⟨7407,7407,.largeDivisor 13840567121300462814050297217167⟩,.good ⟨7408,7408,.largeDivisor 866321830088159291997470273293⟩,.good ⟨7409,7409,.largeDivisor 46850937511847972221965381422101⟩,.good ⟨7410,7410,.largeDivisor 76636964009446683038579133849397⟩]⟩,
    ⟨(7425,7435),[.good ⟨7425,7427,.topPrime 7417⟩,.good ⟨7428,7428,.largeDivisor 2342595966117541672069473978413⟩,.good ⟨7429,7429,.largeDivisor 4692139507222220836291216550453⟩,.good ⟨7430,7430,.largeDivisor 1409728934034011355181712048923⟩,.good ⟨7431,7431,.largeDivisor 65884878671740492958209448022307⟩,.good ⟨7432,7432,.largeDivisor 8247817313845427564772480422143⟩,.good ⟨7433,7435,.topPrime 7433⟩]⟩,
    ⟨(7448,7462),[.good ⟨7448,7448,.largeDivisor 124095489653996401129776794676137⟩,.good ⟨7449,7449,.largeDivisor 82852675668425131488366706421309⟩,.good ⟨7450,7450,.largeDivisor 1659503787417037853443559518319⟩,.good ⟨7451,7461,.topPrime 7451⟩,.good ⟨7462,7462,.topPrime 7459⟩]⟩,
    ⟨(7475,7485),[.good ⟨7475,7475,.largeDivisor 2024885495732782518967424082585757⟩,.good ⟨7476,7476,.largeDivisor 120706503094586499791092259444161⟩,.good ⟨7477,7485,.topPrime 7477⟩]⟩,
    ⟨(7488,7489),[.good ⟨7488,7489,.topPrime 7487⟩]⟩,
    ⟨(7497,7498),[.good ⟨7497,7498,.topPrime 7489⟩]⟩,
    ⟨(7500,7514),[.good ⟨7500,7509,.topPrime 7499⟩,.good ⟨7510,7514,.topPrime 7507⟩]⟩,
    ⟨(7525,7530),[.good ⟨7525,7530,.topPrime 7523⟩]⟩,
    ⟨(7533,7543),[.good ⟨7533,7539,.topPrime 7529⟩,.good ⟨7540,7543,.topPrime 7537⟩]⟩,
    ⟨(7546,7546),[.good ⟨7546,7546,.topPrime 7541⟩]⟩,
    ⟨(7550,7562),[.good ⟨7550,7559,.topPrime 7549⟩,.good ⟨7560,7562,.topPrime 7559⟩]⟩,
    ⟨(7568,7570),[.good ⟨7568,7570,.topPrime 7561⟩]⟩,
    ⟨(7575,7578),[.good ⟨7575,7578,.topPrime 7573⟩]⟩,
    ⟨(7584,7585),[.good ⟨7584,7585,.topPrime 7583⟩]⟩,
    ⟨(7587,7597),[.good ⟨7587,7593,.topPrime 7583⟩,.good ⟨7594,7597,.topPrime 7591⟩]⟩,
    ⟨(7600,7610),[.good ⟨7600,7601,.topPrime 7591⟩,.good ⟨7602,7602,.largeDivisor 10363344536274776111169575725813⟩,.good ⟨7603,7610,.topPrime 7603⟩]⟩,
    ⟨(7616,7626),[.good ⟨7616,7617,.topPrime 7607⟩,.good ⟨7618,7618,.largeDivisor 10311366405327492926242236536069⟩,.good ⟨7619,7619,.largeDivisor 247830601394921667523784227660283⟩,.good ⟨7620,7620,.largeDivisor 28955369252212559131113704611643⟩,.good ⟨7621,7626,.topPrime 7621⟩]⟩,
    ⟨(7632,7635),[.good ⟨7632,7632,.largeDivisor 5050501923424714716619371887747⟩,.good ⟨7633,7633,.largeDivisor 10115581522304079620035598430641⟩,.good ⟨7634,7634,.largeDivisor 319100617112683238922941150493857⟩,.good ⟨7635,7635,.largeDivisor 170432543662492936633554087724421⟩]⟩,
    ⟨(7641,7642),[.good ⟨7641,7642,.topPrime 7639⟩]⟩,
    ⟨(7644,7658),[.good ⟨7644,7653,.topPrime 7643⟩,.good ⟨7654,7658,.topPrime 7649⟩]⟩,
    ⟨(7668,7678),[.good ⟨7668,7668,.largeDivisor 88650086796892182386035037052977⟩,.good ⟨7669,7678,.topPrime 7669⟩]⟩,
    ⟨(7680,7685),[.good ⟨7680,7683,.topPrime 7673⟩,.good ⟨7684,7685,.topPrime 7681⟩]⟩,
    ⟨(7695,7706),[.good ⟨7695,7701,.topPrime 7691⟩,.good ⟨7702,7706,.topPrime 7699⟩]⟩,
    ⟨(7722,7722),[.good ⟨7722,7722,.topPrime 7717⟩]⟩,
    ⟨(7725,7735),[.good ⟨7725,7733,.topPrime 7723⟩,.good ⟨7734,7735,.topPrime 7727⟩]⟩,
    ⟨(7744,7760),[.good ⟨7744,7751,.topPrime 7741⟩,.good ⟨7752,7752,.largeDivisor 214167924265493557328410213487⟩,.good ⟨7753,7760,.topPrime 7753⟩]⟩,
    ⟨(7776,7786),[.good ⟨7776,7776,.largeDivisor 4021273655838651861339688741627⟩,.good ⟨7777,7777,.largeDivisor 1150562717392928719533452019559⟩,.good ⟨7778,7778,.largeDivisor 5184864899120625481188406609577⟩,.good ⟨7779,7779,.largeDivisor 13845885358825727984265230008891⟩,.good ⟨7780,7780,.largeDivisor 693274476069405095363518403071⟩,.good ⟨7781,7781,.largeDivisor 145793748602595703973609099845823⟩,.good ⟨7782,7782,.largeDivisor 24333353743091832203547934950461⟩,.good ⟨7783,7783,.largeDivisor 97471174566383803417505701348141⟩,.good ⟨7784,7784,.largeDivisor 5229059538682882545362135271089⟩,.good ⟨7785,7785,.largeDivisor 232731489630084558875134911731⟩,.good ⟨7786,7786,.largeDivisor 2913259450578518288427331869353⟩]⟩,
    ⟨(7792,7813),[.good ⟨7792,7799,.topPrime 7789⟩,.good ⟨7800,7803,.topPrime 7793⟩,.good ⟨7804,7804,.largeDivisor 301216149937710767905538104005827⟩,.good ⟨7805,7805,.largeDivisor 155129795464456122962898376889837⟩,.good ⟨7806,7806,.largeDivisor 129457257151544205243573308745143⟩,.good ⟨7807,7807,.largeDivisor 518559675003645772363559169509149⟩,.good ⟨7808,7808,.largeDivisor 12170888870805075842315163270511⟩,.good ⟨7809,7809,.largeDivisor 56877600952792840965074272878169⟩,.good ⟨7810,7810,.largeDivisor 5695782323904501704541993475811⟩,.good ⟨7811,7811,.largeDivisor 3422288902462927908782885464581517⟩,.good ⟨7812,7812,.largeDivisor 13599661066062141414212209896427⟩,.good ⟨7813,7813,.largeDivisor 27237670317647657233847730305251⟩]⟩,
    ⟨(7825,7835),[.good ⟨7825,7833,.topPrime 7823⟩,.good ⟨7834,7835,.topPrime 7829⟩]⟩,
    ⟨(7840,7850),[.good ⟨7840,7840,.largeDivisor 808338147759940227275709832813⟩,.good ⟨7841,7850,.topPrime 7841⟩]⟩,
    ⟨(7856,7866),[.good ⟨7856,7863,.topPrime 7853⟩,.good ⟨7864,7864,.largeDivisor 58519726120785642293339948017291⟩,.good ⟨7865,7865,.largeDivisor 492254166780726285173388974498389⟩,.good ⟨7866,7866,.largeDivisor 136928752949189934195271153313683⟩]⟩,
    ⟨(7875,7882),[.good ⟨7875,7882,.topPrime 7873⟩]⟩,
    ⟨(7884,7885),[.good ⟨7884,7885,.topPrime 7883⟩]⟩,
    ⟨(7888,7898),[.good ⟨7888,7893,.topPrime 7883⟩,.good ⟨7894,7894,.largeDivisor 17435547270571195591255103826373⟩,.good ⟨7895,7895,.largeDivisor 377133275893587915597148067696479⟩,.good ⟨7896,7896,.largeDivisor 11239863010144979095159137084169⟩,.good ⟨7897,7897,.largeDivisor 22511082473019249280870328570551⟩,.good ⟨7898,7898,.largeDivisor 33813718024325985321474677643631⟩]⟩,
    ⟨(7904,7914),[.good ⟨7904,7911,.topPrime 7901⟩,.good ⟨7912,7914,.topPrime 7907⟩]⟩,
    ⟨(7920,7921),[.good ⟨7920,7921,.topPrime 7919⟩]⟩,
    ⟨(7925,7930),[.good ⟨7925,7929,.topPrime 7919⟩,.good ⟨7930,7930,.topPrime 7927⟩]⟩,
    ⟨(7938,7948),[.good ⟨7938,7947,.topPrime 7937⟩,.good ⟨7948,7948,.largeDivisor 12529478671438157958906047858083⟩]⟩,
    ⟨(7952,7960),[.good ⟨7952,7960,.topPrime 7951⟩]⟩,
    ⟨(7968,7978),[.good ⟨7968,7973,.topPrime 7963⟩,.good ⟨7974,7974,.largeDivisor 68187413041427852001882036356671⟩,.good ⟨7975,7975,.largeDivisor 10925055128184572972677232344439⟩,.good ⟨7976,7976,.largeDivisor 184614914623729139894223739786537⟩,.good ⟨7977,7977,.largeDivisor 862725936703859021052268759389107⟩,.good ⟨7978,7978,.largeDivisor 431958549204429978031567727024369⟩]⟩,
    ⟨(7984,7985),[.good ⟨7984,7984,.largeDivisor 290365173786388907111190760740707⟩,.good ⟨7985,7985,.largeDivisor 1046756619722038565816188814679253⟩]⟩,
    ⟨(7987,7997),[.good ⟨7987,7987,.largeDivisor 714044921342571391194019714035863⟩,.good ⟨7988,7988,.largeDivisor 536272172967700288911040755520729⟩,.good ⟨7989,7989,.largeDivisor 358007720384303301421434327388243⟩,.good ⟨7990,7990,.largeDivisor 35850127658485817500404314774183⟩,.good ⟨7991,7991,.largeDivisor 15077808953629482507670046282131387⟩,.good ⟨7992,7992,.largeDivisor 69900881002918287530859755975299⟩,.good ⟨7993,7997,.topPrime 7993⟩]⟩,
    ⟨(8000,8010),[.good ⟨8000,8003,.topPrime 7993⟩,.good ⟨8004,8004,.largeDivisor 12791671315430090986154631833051⟩,.good ⟨8005,8005,.largeDivisor 35865964581442339174839869640481⟩,.good ⟨8006,8006,.largeDivisor 269364833432483459131114443097271⟩,.good ⟨8007,8007,.largeDivisor 359647193812555453937440944785701⟩,.good ⟨8008,8008,.largeDivisor 6431105253869629850325628998919⟩,.good ⟨8009,8010,.topPrime 8009⟩]⟩,
    ⟨(8025,8029),[.good ⟨8025,8027,.topPrime 8017⟩,.good ⟨8028,8028,.largeDivisor 15233198493723830497469863765741⟩,.good ⟨8029,8029,.largeDivisor 4358313462784044295484642988103⟩]⟩,
    ⟨(8032,8042),[.good ⟨8032,8032,.largeDivisor 66464620078618719622600402360853⟩,.good ⟨8033,8033,.largeDivisor 2795341848646828139939000168401739⟩,.good ⟨8034,8034,.largeDivisor 466529070838601879518673965535327⟩,.good ⟨8035,8035,.largeDivisor 747469807415387059208882415369163⟩,.good ⟨8036,8036,.largeDivisor 286413664523652985304338121776969⟩,.good ⟨8037,8037,.largeDivisor 63734712788343412877342123784409⟩,.good ⟨8038,8038,.largeDivisor 31911026622194116899718200509473⟩,.good ⟨8039,8042,.topPrime 8039⟩]⟩,
    ⟨(8046,8046),[.good ⟨8046,8046,.topPrime 8039⟩]⟩,
    ⟨(8050,8056),[.good ⟨8050,8050,.largeDivisor 9083012354599256418326617892009⟩,.good ⟨8051,8051,.largeDivisor 1091452723386247961551456726097977⟩,.good ⟨8052,8052,.largeDivisor 91078818230589775177344542123087⟩,.good ⟨8053,8056,.topPrime 8053⟩]⟩,
    ⟨(8073,8083),[.good ⟨8073,8079,.topPrime 8069⟩,.good ⟨8080,8080,.largeDivisor 9462615987829446700839097696127⟩,.good ⟨8081,8083,.topPrime 8081⟩]⟩,
    ⟨(8085,8085),[.good ⟨8085,8085,.topPrime 8081⟩]⟩,
    ⟨(8100,8110),[.good ⟨8100,8103,.topPrime 8093⟩,.good ⟨8104,8110,.topPrime 8101⟩]⟩,
    ⟨(8127,8138),[.good ⟨8127,8133,.topPrime 8123⟩,.good ⟨8134,8134,.largeDivisor 145463388080309765473533083233⟩,.good ⟨8135,8135,.largeDivisor 349584833687834547157220570783⟩,.good ⟨8136,8136,.largeDivisor 3038698938978869525289686499883⟩,.good ⟨8137,8137,.largeDivisor 6085624727164917875284809020317⟩,.good ⟨8138,8138,.largeDivisor 575869930577536065919392741945811⟩]⟩,
    ⟨(8154,8164),[.good ⟨8154,8157,.topPrime 8147⟩,.good ⟨8158,8158,.largeDivisor 210361007943737485118028958536947⟩,.good ⟨8159,8159,.largeDivisor 17694180039308805578123693533020109⟩,.good ⟨8160,8160,.largeDivisor 36912634761105619686845354038697⟩,.good ⟨8161,8164,.topPrime 8161⟩]⟩,
    ⟨(8181,8193),[.good ⟨8181,8189,.topPrime 8179⟩,.good ⟨8190,8190,.largeDivisor 3486088049666992385512784060953⟩,.good ⟨8191,8193,.topPrime 8191⟩]⟩,
    ⟨(8200,8202),[.good ⟨8200,8201,.topPrime 8191⟩,.good ⟨8202,8202,.largeDivisor 2288584802924069824279584764717⟩]⟩,
    ⟨(8208,8210),[.good ⟨8208,8208,.largeDivisor 131247186662465835208919466201511⟩,.good ⟨8209,8210,.topPrime 8209⟩]⟩,
    ⟨(8225,8242),[.good ⟨8225,8231,.topPrime 8221⟩,.good ⟨8232,8241,.topPrime 8231⟩,.good ⟨8242,8242,.topPrime 8237⟩]⟩,
    ⟨(8256,8260),[.good ⟨8256,8256,.largeDivisor 8996573077118599123995772006247⟩,.good ⟨8257,8257,.largeDivisor 126120040573460565308714922675011⟩,.good ⟨8258,8258,.largeDivisor 189432392698369834179586728164831⟩,.good ⟨8259,8259,.largeDivisor 505826747913299857901457092762153⟩,.good ⟨8260,8260,.largeDivisor 3617866180977656881583945747723⟩]⟩,
    ⟨(8262,8266),[.good ⟨8262,8262,.largeDivisor 5598024182831383518019904903791⟩,.good ⟨8263,8266,.topPrime 8263⟩]⟩,
    ⟨(8281,8285),[.good ⟨8281,8283,.topPrime 8273⟩,.good ⟨8284,8284,.largeDivisor 106721841779182613898035866528199⟩,.good ⟨8285,8285,.largeDivisor 897655288467541072228657009326019⟩]⟩,
    ⟨(8288,8298),[.good ⟨8288,8297,.topPrime 8287⟩,.good ⟨8298,8298,.topPrime 8297⟩]⟩,
    ⟨(8320,8335),[.good ⟨8320,8327,.topPrime 8317⟩,.good ⟨8328,8328,.largeDivisor 173229379358071196556506264431537⟩,.good ⟨8329,8335,.topPrime 8329⟩]⟩,
    ⟨(8350,8360),[.good ⟨8350,8350,.largeDivisor 126814795579945934465342593772803⟩,.good ⟨8351,8351,.largeDivisor 1088417634006298559835638232884561⟩,.good ⟨8352,8352,.largeDivisor 3784211891401829305267175249209⟩,.good ⟨8353,8360,.topPrime 8353⟩]⟩,
    ⟨(8375,8389),[.good ⟨8375,8379,.topPrime 8369⟩,.good ⟨8380,8387,.topPrime 8377⟩,.good ⟨8388,8389,.topPrime 8387⟩]⟩,
    ⟨(8400,8407),[.good ⟨8400,8400,.largeDivisor 14510123453489291653168201705907⟩,.good ⟨8401,8401,.largeDivisor 145291474532495279115930944614213⟩,.good ⟨8402,8402,.largeDivisor 218222911873797879001081837084129⟩,.good ⟨8403,8403,.largeDivisor 582690539712590904749313847161721⟩,.good ⟨8404,8404,.largeDivisor 1021044890689035438597421511998979⟩,.good ⟨8405,8405,.largeDivisor 1226859514830785255384035426497701⟩,.good ⟨8406,8406,.largeDivisor 341240853737925380741122420592273⟩,.good ⟨8407,8407,.largeDivisor 195250245516554731905711304016827⟩]⟩,
    ⟨(8424,8435),[.good ⟨8424,8433,.topPrime 8423⟩,.good ⟨8434,8435,.topPrime 8431⟩]⟩,
    ⟨(8450,8460),[.good ⟨8450,8457,.topPrime 8447⟩,.good ⟨8458,8458,.largeDivisor 4891172586508681614455719509689⟩,.good ⟨8459,8459,.largeDivisor 3761311719025176161516448302950841⟩,.good ⟨8460,8460,.largeDivisor 146463670914816304549522013453761⟩]⟩,
    ⟨(8477,8488),[.good ⟨8477,8477,.topPrime 8467⟩,.good ⟨8478,8478,.largeDivisor 15299011809740218245161627072207⟩,.good ⟨8479,8479,.largeDivisor 61275541395742706896894395817309⟩,.good ⟨8480,8480,.largeDivisor 3451226029728335244989801252197⟩,.good ⟨8481,8481,.largeDivisor 80633189967289287087488992892239⟩,.good ⟨8482,8482,.largeDivisor 40368948016913453728962438774169⟩,.good ⟨8483,8483,.largeDivisor 970112708293135490036227671731659⟩,.good ⟨8484,8484,.largeDivisor 11563954152910030035838427339183⟩,.good ⟨8485,8485,.largeDivisor 4631586074460307049992402925323⟩,.good ⟨8486,8486,.largeDivisor 173909908972876839054139518691553⟩,.good ⟨8487,8487,.largeDivisor 77393602718934808507811970800441⟩,.good ⟨8488,8488,.largeDivisor 474650939218438334258893069475537⟩]⟩,
    ⟨(8505,8510),[.good ⟨8505,8510,.topPrime 8501⟩]⟩,
    ⟨(8512,8515),[.good ⟨8512,8512,.largeDivisor 11657936351401400022254721712049⟩,.good ⟨8513,8515,.topPrime 8513⟩]⟩,
    ⟨(8526,8536),[.good ⟨8526,8531,.topPrime 8521⟩,.good ⟨8532,8536,.topPrime 8527⟩]⟩,
    ⟨(8550,8554),[.good ⟨8550,8553,.topPrime 8543⟩,.good ⟨8554,8554,.largeDivisor 132914745989619212214081233897773⟩]⟩,
    ⟨(8559,8560),[.good ⟨8559,8559,.largeDivisor 3329445361043211002944776555478127⟩,.good ⟨8560,8560,.largeDivisor 41671616988141721524750390856961⟩]⟩,
    ⟨(8575,8586),[.good ⟨8575,8583,.topPrime 8573⟩,.good ⟨8584,8586,.topPrime 8581⟩]⟩,
    ⟨(8608,8610),[.good ⟨8608,8609,.topPrime 8599⟩,.good ⟨8610,8610,.topPrime 8609⟩]⟩,
    ⟨(8613,8618),[.good ⟨8613,8618,.topPrime 8609⟩]⟩,
    ⟨(8625,8634),[.good ⟨8625,8633,.topPrime 8623⟩,.good ⟨8634,8634,.topPrime 8629⟩]⟩,
    ⟨(8640,8650),[.good ⟨8640,8640,.largeDivisor 8243619541440313633254548525213⟩,.good ⟨8641,8650,.topPrime 8641⟩]⟩,
    ⟨(8672,8683),[.good ⟨8672,8679,.topPrime 8669⟩,.good ⟨8680,8683,.topPrime 8677⟩]⟩,
    ⟨(8700,8710),[.good ⟨8700,8709,.topPrime 8699⟩,.good ⟨8710,8710,.topPrime 8707⟩]⟩,
    ⟨(8722,8732),[.good ⟨8722,8729,.topPrime 8719⟩,.good ⟨8730,8730,.largeDivisor 1055951386136357778006857813831⟩,.good ⟨8731,8732,.topPrime 8731⟩]⟩,
    ⟨(8750,8758),[.good ⟨8750,8757,.topPrime 8747⟩,.good ⟨8758,8758,.topPrime 8753⟩]⟩,
    ⟨(8771,8785),[.good ⟨8771,8771,.topPrime 8761⟩,.good ⟨8772,8772,.largeDivisor 125238463334458330188553161942833⟩,.good ⟨8773,8773,.largeDivisor 250791380696919180722249917764089⟩,.good ⟨8774,8774,.largeDivisor 376659290351723535032013142496083⟩,.good ⟨8775,8775,.largeDivisor 15643996084895865672256136908783⟩,.good ⟨8776,8776,.largeDivisor 9789768228825307839398164397567⟩,.good ⟨8777,8777,.largeDivisor 176436952247227365310878211329457⟩,.good ⟨8778,8778,.largeDivisor 4206150680925119122844022603839⟩,.good ⟨8779,8785,.topPrime 8779⟩]⟩,
    ⟨(8800,8810),[.good ⟨8800,8800,.largeDivisor 36318589468764566282897034606841⟩,.good ⟨8801,8801,.largeDivisor 1090921180595894019985586353497637⟩,.good ⟨8802,8802,.largeDivisor 20227522743388775481475438018441⟩,.good ⟨8803,8810,.topPrime 8803⟩]⟩,
    ⟨(8825,8839),[.good ⟨8825,8831,.topPrime 8821⟩,.good ⟨8832,8839,.topPrime 8831⟩]⟩,
    ⟨(8856,8860),[.good ⟨8856,8859,.topPrime 8849⟩,.good ⟨8860,8860,.largeDivisor 730593305961844654399394080174769⟩]⟩,
    ⟨(8864,8866),[.good ⟨8864,8866,.topPrime 8863⟩]⟩,
    ⟨(8869,8879),[.good ⟨8869,8877,.topPrime 8867⟩,.good ⟨8878,8878,.largeDivisor 45740608782545554891696054040197⟩,.good ⟨8879,8879,.largeDivisor 549568153423845712968023361059417⟩]⟩,
    ⟨(8883,8885),[.good ⟨8883,8883,.largeDivisor 71594344638290415080088124256393⟩,.good ⟨8884,8884,.largeDivisor 17920775323074835105699957621261⟩,.good ⟨8885,8885,.largeDivisor 64594762168567914772472261040529⟩]⟩,
    ⟨(8900,8906),[.good ⟨8900,8903,.topPrime 8893⟩,.good ⟨8904,8904,.largeDivisor 103330369351043730725625829380517⟩,.good ⟨8905,8905,.largeDivisor 41383266879741147835021273246391⟩,.good ⟨8906,8906,.largeDivisor 310758326164396848751011348678211⟩]⟩,
    ⟨(8910,8910),[.good ⟨8910,8910,.largeDivisor 86363875697644863864557117157259⟩]⟩,
    ⟨(8918,8920),[.good ⟨8918,8918,.largeDivisor 28607528321956182491523414435769⟩,.good ⟨8919,8919,.largeDivisor 12730157416730389245217648722877⟩,.good ⟨8920,8920,.largeDivisor 318646885613523044301665244719⟩]⟩,
    ⟨(8925,8935),[.good ⟨8925,8933,.topPrime 8923⟩,.good ⟨8934,8935,.topPrime 8933⟩]⟩,
    ⟨(8937,8938),[.good ⟨8937,8938,.topPrime 8933⟩]⟩,
    ⟨(8960,8960),[.good ⟨8960,8960,.topPrime 8951⟩]⟩,
    ⟨(8964,8977),[.good ⟨8964,8973,.topPrime 8963⟩,.good ⟨8974,8977,.topPrime 8971⟩]⟩,
    ⟨(8992,9002),[.good ⟨8992,8992,.largeDivisor 99506143047369537043648474525901⟩,.good ⟨8993,8993,.largeDivisor 1793304097044076646560181826475807⟩,.good ⟨8994,8994,.largeDivisor 299250010182463641678026556594371⟩,.good ⟨8995,8995,.largeDivisor 68483751217180014168524332185889⟩,.good ⟨8996,8996,.largeDivisor 257128474937291906285494529359039⟩,.good ⟨8997,8997,.largeDivisor 171628821797671584008501690084077⟩,.good ⟨8998,8998,.largeDivisor 85919446897487977796177712661429⟩,.good ⟨8999,9002,.topPrime 8999⟩]⟩,
    ⟨(9018,9034),[.good ⟨9018,9023,.topPrime 9013⟩,.good ⟨9024,9024,.largeDivisor 28508061107729202937342294468631⟩,.good ⟨9025,9025,.largeDivisor 2283428014175780399463183559613⟩,.good ⟨9026,9026,.largeDivisor 17146606702121958307449829292069⟩,.good ⟨9027,9027,.largeDivisor 747741153140361920972703425215009⟩,.good ⟨9028,9028,.largeDivisor 187163333995541405748629436698489⟩,.good ⟨9029,9034,.topPrime 9029⟩]⟩,
    ⟨(9050,9060),[.good ⟨9050,9059,.topPrime 9049⟩,.good ⟨9060,9060,.topPrime 9059⟩]⟩,
    ⟨(9065,9066),[.good ⟨9065,9066,.topPrime 9059⟩]⟩,
    ⟨(9072,9082),[.good ⟨9072,9077,.topPrime 9067⟩,.good ⟨9078,9078,.largeDivisor 795573403490950856241640877893043⟩,.good ⟨9079,9079,.largeDivisor 455164845314408143160744692821913⟩,.good ⟨9080,9080,.largeDivisor 34178769396748477835755555828837⟩,.good ⟨9081,9081,.largeDivisor 38022467829458890999203258909919⟩,.good ⟨9082,9082,.largeDivisor 19034287996204698933676771988749⟩]⟩,
    ⟨(9100,9109),[.good ⟨9100,9101,.topPrime 9091⟩,.good ⟨9102,9102,.largeDivisor 702026635625656604109239186543633⟩,.good ⟨9103,9109,.topPrime 9103⟩]⟩,
    ⟨(9120,9135),[.good ⟨9120,9120,.largeDivisor 269046979033582025261679676668491⟩,.good ⟨9121,9121,.largeDivisor 384816919517845640961546233478643⟩,.good ⟨9122,9122,.largeDivisor 577922281831048392632733740828479⟩,.good ⟨9123,9123,.largeDivisor 1542986531210024725194155668006501⟩,.good ⟨9124,9124,.largeDivisor 386212254766823921668810389413237⟩,.good ⟨9125,9125,.largeDivisor 909467567676714396187843820231171⟩,.good ⟨9126,9126,.largeDivisor 84311584716053062510008560405413⟩,.good ⟨9127,9135,.topPrime 9127⟩]⟩,
    ⟨(9152,9163),[.good ⟨9152,9161,.topPrime 9151⟩,.good ⟨9162,9163,.topPrime 9161⟩]⟩,
    ⟨(9180,9190),[.good ⟨9180,9183,.topPrime 9173⟩,.good ⟨9184,9190,.topPrime 9181⟩]⟩,
    ⟨(9207,9210),[.good ⟨9207,9210,.topPrime 9203⟩]⟩,
    ⟨(9212,9222),[.good ⟨9212,9219,.topPrime 9209⟩,.good ⟨9220,9220,.largeDivisor 2708541135337839059658205408733⟩,.good ⟨9221,9222,.topPrime 9221⟩]⟩,
    ⟨(9225,9226),[.good ⟨9225,9226,.topPrime 9221⟩]⟩,
    ⟨(9234,9235),[.good ⟨9234,9235,.topPrime 9227⟩]⟩,
    ⟨(9250,9258),[.good ⟨9250,9251,.topPrime 9241⟩,.good ⟨9252,9252,.largeDivisor 294137864998502390005662274830779⟩,.good ⟨9253,9253,.largeDivisor 588975906693603682043365727982947⟩,.good ⟨9254,9254,.largeDivisor 379077969157226907332682323463221⟩,.good ⟨9255,9255,.largeDivisor 101207748580704890447540023183387⟩,.good ⟨9256,9256,.largeDivisor 63330105520754763790050733814591⟩,.good ⟨9257,9258,.topPrime 9257⟩]⟩,
    ⟨(9261,9271),[.good ⟨9261,9267,.topPrime 9257⟩,.good ⟨9268,9268,.largeDivisor 43700428122845941446679431744119⟩,.good ⟨9269,9269,.largeDivisor 262514107758042145994343261721477⟩,.good ⟨9270,9270,.largeDivisor 2920288702784138787927136403209⟩,.good ⟨9271,9271,.largeDivisor 58475154564820195902532357654753⟩]⟩,
    ⟨(9280,9285),[.good ⟨9280,9285,.topPrime 9277⟩]⟩,
    ⟨(9288,9290),[.good ⟨9288,9290,.topPrime 9283⟩]⟩,
    ⟨(9310,9310),[.good ⟨9310,9310,.largeDivisor 77162594788730818504363936968739⟩]⟩,
    ⟨(9312,9322),[.good ⟨9312,9321,.topPrime 9311⟩,.good ⟨9322,9322,.topPrime 9319⟩]⟩,
    ⟨(9325,9325),[.good ⟨9325,9325,.topPrime 9323⟩]⟩,
    ⟨(9344,9354),[.good ⟨9344,9353,.topPrime 9343⟩,.good ⟨9354,9354,.topPrime 9349⟩]⟩,
    ⟨(9359,9360),[.good ⟨9359,9359,.topPrime 9349⟩,.good ⟨9360,9360,.largeDivisor 6820671579560340559320857673209⟩]⟩,
    ⟨(9369,9369),[.good ⟨9369,9369,.largeDivisor 114886667906813560235063567684573⟩]⟩,
    ⟨(9375,9385),[.good ⟨9375,9381,.topPrime 9371⟩,.good ⟨9382,9385,.topPrime 9377⟩]⟩,
    ⟨(9400,9406),[.good ⟨9400,9406,.topPrime 9397⟩]⟩,
    ⟨(9408,9418),[.good ⟨9408,9413,.topPrime 9403⟩,.good ⟨9414,9418,.topPrime 9413⟩]⟩,
    ⟨(9425,9433),[.good ⟨9425,9431,.topPrime 9421⟩,.good ⟨9432,9433,.topPrime 9431⟩]⟩,
    ⟨(9450,9460),[.good ⟨9450,9450,.largeDivisor 8841252784678540964679062653541⟩,.good ⟨9451,9451,.largeDivisor 1416248814711811706053929171840949⟩,.good ⟨9452,9452,.largeDivisor 3190272592148723604771625007683663⟩,.good ⟨9453,9453,.largeDivisor 2129326188913498851649097733363953⟩,.good ⟨9454,9454,.largeDivisor 7461323124532326962005400285849819⟩,.good ⟨9455,9455,.largeDivisor 17928033073050356143776635248465067⟩,.good ⟨9456,9456,.largeDivisor 1869678409418168427911062543116791⟩,.good ⟨9457,9457,.largeDivisor 76402272500043723605088941524781⟩,.good ⟨9458,9458,.largeDivisor 114736851906226347706721373283801⟩,.good ⟨9459,9459,.largeDivisor 102107054490638350076006912211071⟩,.good ⟨9460,9460,.largeDivisor 5111296092080848723245980471567⟩]⟩,
    ⟨(9475,9485),[.good ⟨9475,9483,.topPrime 9473⟩,.good ⟨9484,9485,.topPrime 9479⟩]⟩,
    ⟨(9504,9514),[.good ⟨9504,9507,.topPrime 9497⟩,.good ⟨9508,9508,.largeDivisor 8106128025834577831874341736579⟩,.good ⟨9509,9509,.largeDivisor 48693096271421983956597040791617⟩,.good ⟨9510,9510,.largeDivisor 11374879526927611580133575483377⟩,.good ⟨9511,9514,.topPrime 9511⟩]⟩,
    ⟨(9531,9541),[.good ⟨9531,9531,.topPrime 9521⟩,.good ⟨9532,9532,.largeDivisor 2722501178148215092974154399913947⟩,.good ⟨9533,9541,.topPrime 9533⟩]⟩,
    ⟨(9555,9565),[.good ⟨9555,9561,.topPrime 9551⟩,.good ⟨9562,9562,.largeDivisor 71895488630827255562813334623219⟩,.good ⟨9563,9563,.largeDivisor 3454957576766839421845145321617303⟩,.good ⟨9564,9564,.largeDivisor 288244654944328589889100892005547⟩,.good ⟨9565,9565,.largeDivisor 115430610196462338802145699478043⟩]⟩,
    ⟨(9568,9568),[.good ⟨9568,9568,.largeDivisor 591214037399716211393278835408797⟩]⟩,
    ⟨(9575,9578),[.good ⟨9575,9575,.largeDivisor 15448109412231062666851135433708737⟩,.good ⟨9576,9576,.largeDivisor 153431301010136011850586290245931⟩,.good ⟨9577,9577,.largeDivisor 307215465141976287997713757408589⟩,.good ⟨9578,9578,.largeDivisor 1384059136937840492211713249510567⟩]⟩,
    ⟨(9585,9585),[.good ⟨9585,9585,.largeDivisor 41340223640693026849008741030109⟩]⟩,
    ⟨(9600,9610),[.good ⟨9600,9600,.largeDivisor 23657536523485983544308347261173⟩,.good ⟨9601,9610,.topPrime 9601⟩]⟩,
    ⟨(9612,9614),[.good ⟨9612,9612,.largeDivisor 6215753816976249559060371985609⟩,.good ⟨9613,9614,.topPrime 9613⟩]⟩,
    ⟨(9632,9635),[.good ⟨9632,9635,.topPrime 9631⟩]⟩,
    ⟨(9639,9642),[.good ⟨9639,9641,.topPrime 9631⟩,.good ⟨9642,9642,.largeDivisor 275799002498255960530810527426487⟩]⟩,
    ⟨(9653,9660),[.good ⟨9653,9659,.topPrime 9649⟩,.good ⟨9660,9660,.largeDivisor 115824851016204506148611817898967⟩]⟩,
    ⟨(9666,9676),[.good ⟨9666,9671,.topPrime 9661⟩,.good ⟨9672,9672,.largeDivisor 2996611538628243802023258542377817⟩,.good ⟨9673,9673,.largeDivisor 6000046245736079962113636903419711⟩,.good ⟨9674,9674,.largeDivisor 1287187816145182009879081993251481⟩,.good ⟨9675,9675,.largeDivisor 366550172809555141886096196753733⟩,.good ⟨9676,9676,.largeDivisor 458709191943256020808311795109819⟩]⟩,
    ⟨(9696,9710),[.good ⟨9696,9699,.topPrime 9689⟩,.good ⟨9700,9707,.topPrime 9697⟩,.good ⟨9708,9708,.largeDivisor 4281156293495304626006879053020463⟩,.good ⟨9709,9709,.largeDivisor 1224574918349760263203040059092469⟩,.good ⟨9710,9710,.largeDivisor 367789126420543524766517753596903⟩]⟩,
    ⟨(9725,9735),[.good ⟨9725,9731,.topPrime 9721⟩,.good ⟨9732,9732,.largeDivisor 68735775953931899159426187029129⟩,.good ⟨9733,9735,.topPrime 9733⟩]⟩,
    ⟨(9750,9761),[.good ⟨9750,9759,.topPrime 9749⟩,.good ⟨9760,9760,.largeDivisor 3243147610950433780248822127337⟩,.good ⟨9761,9761,.largeDivisor 2435104910037475702231442521918189⟩]⟩,
    ⟨(9775,9784),[.good ⟨9775,9779,.topPrime 9769⟩,.good ⟨9780,9780,.largeDivisor 154795351114293081637985741775743⟩,.good ⟨9781,9784,.topPrime 9781⟩]⟩,
    ⟨(9800,9810),[.good ⟨9800,9801,.topPrime 9791⟩,.good ⟨9802,9802,.largeDivisor 1574117490097697476743841784183⟩,.good ⟨9803,9810,.topPrime 9803⟩]⟩,
    ⟨(9825,9835),[.good ⟨9825,9827,.topPrime 9817⟩,.good ⟨9828,9828,.largeDivisor 136137517778677029989547151867057⟩,.good ⟨9829,9835,.topPrime 9829⟩]⟩,
    ⟨(9850,9865),[.good ⟨9850,9850,.largeDivisor 35878942545085046099913964541317⟩,.good ⟨9851,9861,.topPrime 9851⟩,.good ⟨9862,9865,.topPrime 9859⟩]⟩,
    ⟨(9882,9885),[.good ⟨9882,9882,.largeDivisor 67479929217034046833354707901909⟩,.good ⟨9883,9885,.topPrime 9883⟩]⟩,
    ⟨(9888,9892),[.good ⟨9888,9892,.topPrime 9887⟩]⟩,
    ⟨(9898,9898),[.good ⟨9898,9898,.largeDivisor 473134726191309540281205893681057⟩]⟩,
    ⟨(9900,9910),[.good ⟨9900,9900,.largeDivisor 50580047459072898033885084198719⟩,.good ⟨9901,9910,.topPrime 9901⟩]⟩,
    ⟨(9925,9930),[.good ⟨9925,9930,.topPrime 9923⟩]⟩,
    ⟨(9950,9960),[.good ⟨9950,9959,.topPrime 9949⟩,.good ⟨9960,9960,.largeDivisor 993314344592230907699276099307863⟩]⟩,
    ⟨(9984,9985),[.good ⟨9984,9984,.largeDivisor 91069305912459871224360754483693⟩,.good ⟨9985,9985,.largeDivisor 36467897314454053105082900883083⟩]⟩,
    ⟨(9990,9994),[.good ⟨9990,9990,.largeDivisor 20371876068625451539671873803549⟩,.good ⟨9991,9991,.largeDivisor 407886600804883539745213809962441⟩,.good ⟨9992,9992,.largeDivisor 459378146443011308513771008695301⟩,.good ⟨9993,9993,.largeDivisor 2146127076860688174837827812011287⟩,.good ⟨9994,9994,.largeDivisor 1074245918368512351964802722289933⟩]⟩,
    ⟨(9996,10006),[.good ⟨9996,9996,.largeDivisor 1406190017484578993752932895943099⟩,.good ⟨9997,9997,.largeDivisor 2815477990144870058191081546313471⟩,.good ⟨9998,9998,.largeDivisor 4227868570962512893030104130375801⟩,.good ⟨9999,9999,.largeDivisor 1881122139503144503066257784880863⟩,.good ⟨10000,10000,.largeDivisor 1318235556764642258630874411269⟩,.good ⟨10001,10001,.largeDivisor 356315508194680735907226351002737⟩,.good ⟨10002,10002,.largeDivisor 59451301387301850341041570125269⟩,.good ⟨10003,10003,.largeDivisor 68019143060411804753681668301849⟩,.good ⟨10004,10004,.largeDivisor 51070512396904810474019169145279⟩,.good ⟨10005,10005,.largeDivisor 6816896491642086969415806647969⟩,.good ⟨10006,10006,.largeDivisor 17060997072378869988988134397093⟩]⟩,
    ⟨(10017,10027),[.good ⟨10017,10019,.topPrime 10009⟩,.good ⟨10020,10020,.largeDivisor 505328738080532747818533790259449⟩,.good ⟨10021,10021,.largeDivisor 35411883107028102558668021763566003⟩,.good ⟨10022,10022,.largeDivisor 53176190065723051220103523241603009⟩,.good ⟨10023,10023,.largeDivisor 70979485021806118308576057191448523⟩,.good ⟨10024,10024,.largeDivisor 1268883233686537019598033979553509⟩,.good ⟨10025,10025,.largeDivisor 304866492934871986134698397723761⟩,.good ⟨10026,10026,.largeDivisor 84778151055778180867212684738959⟩,.good ⟨10027,10027,.largeDivisor 2715880257623922746183838945295661⟩]⟩,
    ⟨(10045,10058),[.good ⟨10045,10049,.topPrime 10039⟩,.good ⟨10050,10050,.largeDivisor 8703854257612370451576823814687⟩,.good ⟨10051,10051,.largeDivisor 348535614116581415971309387097287⟩,.good ⟨10052,10052,.largeDivisor 37384011194458538492291625326539⟩,.good ⟨10053,10053,.largeDivisor 8316658136668031765761749749003⟩,.good ⟨10054,10054,.largeDivisor 4162883645626824224483154036467⟩,.good ⟨10055,10055,.largeDivisor 270050290688888500497923315075327⟩,.good ⟨10056,10056,.largeDivisor 2759782238991323944112923634550293⟩,.good ⟨10057,10057,.largeDivisor 5525608197797281486351517617493987⟩,.good ⟨10058,10058,.largeDivisor 8297486899588691727340036458159827⟩]⟩,
    ⟨(10075,10085),[.good ⟨10075,10079,.topPrime 10069⟩,.good ⟨10080,10085,.topPrime 10079⟩]⟩,
    ⟨(10098,10108),[.good ⟨10098,10103,.topPrime 10093⟩,.good ⟨10104,10108,.topPrime 10103⟩]⟩,
    ⟨(10125,10135),[.good ⟨10125,10125,.largeDivisor 20151464727398907847845611347669⟩,.good ⟨10126,10126,.largeDivisor 353034138113566333680423288073523⟩,.good ⟨10127,10127,.largeDivisor 12723048813793901285343938214663941⟩,.good ⟨10128,10128,.largeDivisor 265351714906643587151089350923603⟩,.good ⟨10129,10129,.largeDivisor 75897199341750004073458448465399⟩,.good ⟨10130,10130,.largeDivisor 22793911335070487437418739488719⟩,.good ⟨10131,10131,.largeDivisor 304249164342027810577719696653771⟩,.good ⟨10132,10132,.largeDivisor 76144959320062883528639856893983⟩,.good ⟨10133,10135,.topPrime 10133⟩]⟩,
    ⟨(10144,10160),[.good ⟨10144,10151,.topPrime 10141⟩,.good ⟨10152,10160,.topPrime 10151⟩]⟩,
    ⟨(10176,10186),[.good ⟨10176,10179,.topPrime 10169⟩,.good ⟨10180,10186,.topPrime 10177⟩]⟩,
    ⟨(10200,10202),[.good ⟨10200,10202,.topPrime 10193⟩]⟩,
    ⟨(10206,10216),[.good ⟨10206,10206,.largeDivisor 30553341315160080321388208509187⟩,.good ⟨10207,10207,.largeDivisor 122345215693934460510164552472841⟩,.good ⟨10208,10208,.largeDivisor 34446711214797081114512349725363⟩,.good ⟨10209,10209,.largeDivisor 22989244609522350859518636225811⟩,.good ⟨10210,10210,.largeDivisor 16109827554099053004508255035383⟩,.good ⟨10211,10216,.topPrime 10211⟩]⟩,
    ⟨(10233,10235),[.good ⟨10233,10233,.topPrime 10223⟩,.good ⟨10234,10234,.largeDivisor 212548100054620038713378113977887⟩,.good ⟨10235,10235,.largeDivisor 6127971279039538299243450694545559⟩]⟩,
    ⟨(10240,10251),[.good ⟨10240,10240,.largeDivisor 35096831031418145382482490271819⟩,.good ⟨10241,10241,.largeDivisor 21510960954740153621521526295631⟩,.good ⟨10242,10242,.largeDivisor 1196338264416689220080710435169⟩,.good ⟨10243,10251,.topPrime 10243⟩]⟩,
    ⟨(10260,10260),[.good ⟨10260,10260,.topPrime 10259⟩]⟩,
    ⟨(10275,10282),[.good ⟨10275,10282,.topPrime 10273⟩]⟩,
    ⟨(10290,10297),[.good ⟨10290,10297,.topPrime 10289⟩]⟩,
    ⟨(10300,10300),[.good ⟨10300,10300,.largeDivisor 33521121665610529139531623668257⟩]⟩,
    ⟨(10304,10310),[.good ⟨10304,10310,.topPrime 10303⟩]⟩,
    ⟨(10314,10314),[.good ⟨10314,10314,.topPrime 10313⟩]⟩,
    ⟨(10339,10351),[.good ⟨10339,10347,.topPrime 10337⟩,.good ⟨10348,10351,.topPrime 10343⟩]⟩,
    ⟨(10368,10378),[.good ⟨10368,10368,.largeDivisor 51096542094692603643341713012949⟩,.good ⟨10369,10378,.topPrime 10369⟩]⟩,
    ⟨(10395,10398),[.good ⟨10395,10398,.topPrime 10391⟩]⟩,
    ⟨(10400,10410),[.good ⟨10400,10409,.topPrime 10399⟩,.good ⟨10410,10410,.largeDivisor 230779755889028058022291767225583⟩]⟩,
    ⟨(10425,10435),[.good ⟨10425,10425,.largeDivisor 312621199751263979498446344335623⟩,.good ⟨10426,10426,.largeDivisor 782378451417829632801440611148153⟩,.good ⟨10427,10435,.topPrime 10427⟩]⟩,
    ⟨(10437,10442),[.good ⟨10437,10442,.topPrime 10433⟩]⟩,
    ⟨(10450,10459),[.good ⟨10450,10450,.largeDivisor 41607410300192221032657784182091⟩,.good ⟨10451,10451,.largeDivisor 2142064261316792620750278337374547⟩,.good ⟨10452,10452,.largeDivisor 178693417451099164129249346983357⟩,.good ⟨10453,10459,.topPrime 10453⟩]⟩,
    ⟨(10476,10486),[.good ⟨10476,10476,.largeDivisor 7696974713401741102091071436883361⟩,.good ⟨10477,10486,.topPrime 10477⟩]⟩,
    ⟨(10496,10496),[.good ⟨10496,10496,.topPrime 10487⟩]⟩,
    ⟨(10500,10510),[.good ⟨10500,10509,.topPrime 10499⟩,.good ⟨10510,10510,.topPrime 10501⟩]⟩,
    ⟨(10528,10540),[.good ⟨10528,10528,.largeDivisor 1306291386698995555656339700942223⟩,.good ⟨10529,10539,.topPrime 10529⟩,.good ⟨10540,10540,.topPrime 10531⟩]⟩,
    ⟨(10557,10567),[.good ⟨10557,10557,.largeDivisor 2393673276106339932050543131032449⟩,.good ⟨10558,10558,.largeDivisor 1198084879545403290157847462664293⟩,.good ⟨10559,10567,.topPrime 10559⟩]⟩,
    ⟨(10584,10594),[.good ⟨10584,10584,.largeDivisor 43962767694058335582093234834467⟩,.good ⟨10585,10585,.largeDivisor 17603400644660771028426589397497⟩,.good ⟨10586,10586,.largeDivisor 1982442544940201299009828461296843⟩,.good ⟨10587,10587,.largeDivisor 10584023814060469567633410952975127⟩,.good ⟨10588,10588,.largeDivisor 18541304457854442717091753006303879⟩,.good ⟨10589,10594,.topPrime 10589⟩]⟩,
    ⟨(10600,10602),[.good ⟨10600,10602,.topPrime 10597⟩]⟩,
    ⟨(10625,10635),[.good ⟨10625,10625,.largeDivisor 121381852989092597298755002955323⟩,.good ⟨10626,10626,.largeDivisor 14465194915798599678089974445453⟩,.good ⟨10627,10635,.topPrime 10627⟩]⟩,
    ⟨(10638,10643),[.good ⟨10638,10641,.topPrime 10631⟩,.good ⟨10642,10643,.topPrime 10639⟩]⟩,
    ⟨(10656,10660),[.good ⟨10656,10660,.topPrime 10651⟩]⟩,
    ⟨(10665,10666),[.good ⟨10665,10666,.topPrime 10663⟩]⟩,
    ⟨(10675,10675),[.good ⟨10675,10675,.topPrime 10667⟩]⟩,
    ⟨(10682,10685),[.good ⟨10682,10682,.largeDivisor 1313710512982606207049275993585703⟩,.good ⟨10683,10683,.largeDivisor 2337892622054503100101185313922383⟩,.good ⟨10684,10684,.largeDivisor 585075535791958941288322493533841⟩,.good ⟨10685,10685,.largeDivisor 2108442529489740737829924399126169⟩]⟩,
    ⟨(10688,10698),[.good ⟨10688,10697,.topPrime 10687⟩,.good ⟨10698,10698,.topPrime 10691⟩]⟩,
    ⟨(10700,10702),[.good ⟨10700,10701,.topPrime 10691⟩,.good ⟨10702,10702,.largeDivisor 1081657479728563762195558682168861⟩]⟩,
    ⟨(10720,10735),[.good ⟨10720,10721,.topPrime 10711⟩,.good ⟨10722,10722,.largeDivisor 18631899118782854088711633336631349⟩,.good ⟨10723,10733,.topPrime 10723⟩,.good ⟨10734,10735,.topPrime 10733⟩]⟩,
    ⟨(10750,10760),[.good ⟨10750,10750,.largeDivisor 1227162793578166428729599474994041⟩,.good ⟨10751,10751,.largeDivisor 73705179853401493157943709249502429⟩,.good ⟨10752,10752,.largeDivisor 6862040764677543353313817079369⟩,.good ⟨10753,10760,.topPrime 10753⟩]⟩,
    ⟨(10775,10790),[.good ⟨10775,10781,.topPrime 10771⟩,.good ⟨10782,10790,.topPrime 10781⟩]⟩,
    ⟨(10800,10810),[.good ⟨10800,10809,.topPrime 10799⟩,.good ⟨10810,10810,.largeDivisor 77659531329866018646711252086783⟩]⟩,
    ⟨(10825,10837),[.good ⟨10825,10825,.largeDivisor 354841710996976102807591812822109⟩,.good ⟨10826,10826,.largeDivisor 18648137685695452859198975561224039⟩,.good ⟨10827,10827,.largeDivisor 44247947999786252050525379881957631⟩,.good ⟨10828,10828,.largeDivisor 11073236131591142118958325167833901⟩,.good ⟨10829,10829,.largeDivisor 4071855549220702842412295943579521⟩,.good ⟨10830,10830,.largeDivisor 135866517540315530650784622944099⟩,.good ⟨10831,10837,.topPrime 10831⟩]⟩,
    ⟨(10850,10860),[.good ⟨10850,10857,.topPrime 10847⟩,.good ⟨10858,10860,.topPrime 10853⟩]⟩,
    ⟨(10878,10890),[.good ⟨10878,10878,.largeDivisor 427927319661673787990857173835159⟩,.good ⟨10879,10879,.largeDivisor 1713441777916580470943148764870333⟩,.good ⟨10880,10880,.largeDivisor 8039886896103192935697910296107⟩,.good ⟨10881,10881,.largeDivisor 2980749235629794621054515040783⟩,.good ⟨10882,10882,.largeDivisor 10443178745049396351035168278751⟩,.good ⟨10883,10890,.topPrime 10883⟩]⟩,
    ⟨(10908,10910),[.good ⟨10908,10910,.topPrime 10903⟩]⟩,
    ⟨(10912,10918),[.good ⟨10912,10918,.topPrime 10909⟩]⟩,
    ⟨(10927,10937),[.good ⟨10927,10927,.largeDivisor 2997501313787236515069844914017813⟩,.good ⟨10928,10928,.largeDivisor 1687793402569400280125889592971283⟩,.good ⟨10929,10929,.largeDivisor 1126329248133417332936181679280891⟩,.good ⟨10930,10930,.largeDivisor 112746393278672510751831355934977⟩,.good ⟨10931,10931,.largeDivisor 94802371148397631925251427055787199⟩,.good ⟨10932,10932,.largeDivisor 7908154941506294541150448681240009⟩,.good ⟨10933,10933,.largeDivisor 15832239145850268855227587517303977⟩,.good ⟨10934,10934,.largeDivisor 3396039212553985162299573153258557⟩,.good ⟨10935,10935,.largeDivisor 1243514907562792077004603864247⟩,.good ⟨10936,10936,.largeDivisor 3889896747456148213421724216077⟩,.good ⟨10937,10937,.topPrime 10937⟩]⟩,
    ⟨(10944,10945),[.good ⟨10944,10945,.topPrime 10939⟩]⟩,
    ⟨(10950,10954),[.good ⟨10950,10954,.topPrime 10949⟩]⟩,
    ⟨(10976,10986),[.good ⟨10976,10983,.topPrime 10973⟩,.good ⟨10984,10986,.topPrime 10979⟩]⟩,
    ⟨(11008,11010),[.good ⟨11008,11010,.topPrime 11003⟩]⟩,
    ⟨(11016,11018),[.good ⟨11016,11016,.largeDivisor 348508592221440061243995235457813⟩,.good ⟨11017,11017,.largeDivisor 697713821643395448796128567879107⟩,.good ⟨11018,11018,.largeDivisor 448978558980664119544197205985983⟩]⟩,
    ⟨(11025,11035),[.good ⟨11025,11025,.largeDivisor 9186086495313886074303519752243⟩,.good ⟨11026,11026,.largeDivisor 22988150180964799785581164046353⟩,.good ⟨11027,11035,.topPrime 11027⟩]⟩,
    ⟨(11043,11053),[.good ⟨11043,11043,.largeDivisor 68740805592799707823765700285668553⟩,.good ⟨11044,11044,.largeDivisor 17202335198198132266964297878068601⟩,.good ⟨11045,11045,.largeDivisor 61990144294974998658603807524720293⟩,.good ⟨11046,11046,.largeDivisor 7387135455178262187228274299502237⟩,.good ⟨11047,11053,.topPrime 11047⟩]⟩,
    ⟨(11072,11084),[.good ⟨11072,11081,.topPrime 11071⟩,.good ⟨11082,11082,.largeDivisor 164066716687582111806689580864401⟩,.good ⟨11083,11084,.topPrime 11083⟩]⟩,
    ⟨(11100,11110),[.good ⟨11100,11103,.topPrime 11093⟩,.good ⟨11104,11104,.largeDivisor 260846291454570305637061974659789⟩,.good ⟨11105,11105,.largeDivisor 313325913099297268155713707798481⟩,.good ⟨11106,11106,.largeDivisor 609848859250051780605915954926381⟩,.good ⟨11107,11107,.largeDivisor 4883627454715447099632233966378741⟩,.good ⟨11108,11108,.largeDivisor 98991484976239391209333676822144261⟩,.good ⟨11109,11109,.largeDivisor 9437104983317829870199588221105481⟩,.good ⟨11110,11110,.largeDivisor 944645791194351652021960763460509⟩]⟩,
    ⟨(11124,11134),[.good ⟨11124,11129,.topPrime 11119⟩,.good ⟨11130,11130,.largeDivisor 9176471497742668010707706260123⟩,.good ⟨11131,11134,.topPrime 11131⟩]⟩,
    ⟨(11151,11160),[.good ⟨11151,11159,.topPrime 11149⟩,.good ⟨11160,11160,.topPrime 11159⟩]⟩,
    ⟨(11172,11185),[.good ⟨11172,11181,.topPrime 11171⟩,.good ⟨11182,11185,.topPrime 11177⟩]⟩,
    ⟨(11200,11210),[.good ⟨11200,11207,.topPrime 11197⟩,.good ⟨11208,11208,.largeDivisor 433542082677727313431567920186251⟩,.good ⟨11209,11209,.largeDivisor 867935917973681988972038724302141⟩,.good ⟨11210,11210,.largeDivisor 260636529345967722913917870330217⟩]⟩,
    ⟨(11225,11242),[.good ⟨11225,11225,.largeDivisor 6348008252428997165174876248625869⟩,.good ⟨11226,11226,.largeDivisor 5295195470483572757932319866776193⟩,.good ⟨11227,11227,.largeDivisor 84806219040112797936242732017541111⟩,.good ⟨11228,11228,.largeDivisor 9095291210239430856494606990915749⟩,.good ⟨11229,11229,.largeDivisor 6069473168109500748058355137635523⟩,.good ⟨11230,11230,.largeDivisor 607542416239145141284386560260691⟩,.good ⟨11231,11231,.largeDivisor 36488282763539246426550510472127383⟩,.good ⟨11232,11232,.largeDivisor 2071387231117948487096753869596751⟩,.good ⟨11233,11233,.largeDivisor 4146835281972538826511822530240653⟩,.good ⟨11234,11234,.largeDivisor 18679048740047915467936573498285283⟩,.good ⟨11235,11235,.largeDivisor 1424560381457681364981620359455827⟩,.good ⟨11236,11236,.largeDivisor 8912227419854403016109958997130107⟩,.good ⟨11237,11237,.largeDivisor 53525761366597502240527851015901129⟩,.good ⟨11238,11238,.largeDivisor 8929700814076522819676553393852571⟩,.good ⟨11239,11242,.topPrime 11239⟩]⟩,
    ⟨(11259,11260),[.good ⟨11259,11260,.topPrime 11257⟩]⟩,
    ⟨(11264,11280),[.good ⟨11264,11271,.topPrime 11261⟩,.good ⟨11272,11272,.largeDivisor 61818439792363533637436146153319⟩,.good ⟨11273,11280,.topPrime 11273⟩]⟩,
    ⟨(11296,11296),[.good ⟨11296,11296,.topPrime 11287⟩]⟩,
    ⟨(11300,11306),[.good ⟨11300,11306,.topPrime 11299⟩]⟩,
    ⟨(11319,11323),[.good ⟨11319,11323,.topPrime 11317⟩]⟩,
    ⟨(11325,11335),[.good ⟨11325,11331,.topPrime 11321⟩,.good ⟨11332,11335,.topPrime 11329⟩]⟩,
    ⟨(11350,11350),[.good ⟨11350,11350,.largeDivisor 88527977859687575846708235612929⟩]⟩,
    ⟨(11360,11360),[.good ⟨11360,11360,.topPrime 11353⟩]⟩,
    ⟨(11367,11378),[.good ⟨11367,11367,.largeDivisor 94498078073229811446875891058713747⟩,.good ⟨11368,11368,.largeDivisor 241300014451322050890147119899859⟩,.good ⟨11369,11378,.topPrime 11369⟩]⟩,
    ⟨(11394,11404),[.good ⟨11394,11403,.topPrime 11393⟩,.good ⟨11404,11404,.topPrime 11399⟩]⟩,
    ⟨(11421,11434),[.good ⟨11421,11421,.topPrime 11411⟩,.good ⟨11422,11422,.largeDivisor 1581800852899644738575272926073973⟩,.good ⟨11423,11433,.topPrime 11423⟩,.good ⟨11434,11434,.largeDivisor 3240375811160581501975594387028747⟩]⟩,
    ⟨(11450,11460),[.good ⟨11450,11457,.topPrime 11447⟩,.good ⟨11458,11458,.largeDivisor 1289561994538944378845987670980899⟩,.good ⟨11459,11459,.largeDivisor 39830433680382112229639279573504371⟩,.good ⟨11460,11460,.largeDivisor 664478367800941867050493702379189⟩]⟩,
    ⟨(11466,11466),[.good ⟨11466,11466,.largeDivisor 397807690275448384501143449644457⟩]⟩,
    ⟨(11475,11485),[.good ⟨11475,11481,.topPrime 11471⟩,.good ⟨11482,11482,.largeDivisor 2262172727266327259758256241239803⟩,.good ⟨11483,11485,.topPrime 11483⟩]⟩,
    ⟨(11502,11510),[.good ⟨11502,11507,.topPrime 11497⟩,.good ⟨11508,11510,.topPrime 11503⟩]⟩,
    ⟨(11520,11535),[.good ⟨11520,11529,.topPrime 11519⟩,.good ⟨11530,11535,.topPrime 11527⟩]⟩,
    ⟨(11552,11562),[.good ⟨11552,11561,.topPrime 11551⟩,.good ⟨11562,11562,.largeDivisor 42731472777802396570098380742517559⟩]⟩,
    ⟨(11564,11566),[.good ⟨11564,11564,.largeDivisor 20969577398002186416927219691843973⟩,.good ⟨11565,11565,.largeDivisor 932868511560768895473480259789493⟩,.good ⟨11566,11566,.largeDivisor 2334391433299838391399020485661029⟩]⟩,
    ⟨(11583,11593),[.good ⟨11583,11589,.topPrime 11579⟩,.good ⟨11590,11593,.topPrime 11587⟩]⟩,
    ⟨(11610,11610),[.good ⟨11610,11610,.largeDivisor 1192660790648981613928109762591867⟩]⟩,
    ⟨(11613,11623),[.good ⟨11613,11613,.largeDivisor 14645591392622048790314347134758549⟩,.good ⟨11614,11614,.largeDivisor 7329737931307096210062519504571481⟩,.good ⟨11615,11615,.largeDivisor 17608046757421286965848224207982989⟩,.good ⟨11616,11616,.largeDivisor 917955044225754296797774721743189⟩,.good ⟨11617,11623,.topPrime 11617⟩]⟩,
    ⟨(11625,11626),[.good ⟨11625,11626,.topPrime 11621⟩]⟩,
    ⟨(11650,11658),[.good ⟨11650,11650,.largeDivisor 199071575853074618329149614191897⟩,.good ⟨11651,11651,.largeDivisor 23911164229527550290236310875771051⟩,.good ⟨11652,11652,.largeDivisor 13961359270517890157438038400705767⟩,.good ⟨11653,11653,.largeDivisor 27949101456681837142179258114314431⟩,.good ⟨11654,11654,.largeDivisor 41963260548334208973841416395802677⟩,.good ⟨11655,11655,.largeDivisor 533370195908061055318492753914359⟩,.good ⟨11656,11656,.largeDivisor 333671264679280789007747506420447⟩,.good ⟨11657,11658,.topPrime 11657⟩]⟩,
    ⟨(11664,11672),[.good ⟨11664,11667,.topPrime 11657⟩,.good ⟨11668,11668,.largeDivisor 142844919167664085327142193842329⟩,.good ⟨11669,11669,.largeDivisor 122554029980697905424779226523501⟩,.good ⟨11670,11670,.largeDivisor 4088988563555320800260667219971⟩,.good ⟨11671,11671,.largeDivisor 81856921998720667341067319252627⟩,.good ⟨11672,11672,.largeDivisor 30725302082874570015594859477639⟩]⟩,
    ⟨(11680,11685),[.good ⟨11680,11685,.topPrime 11677⟩]⟩,
    ⟨(11700,11701),[.good ⟨11700,11701,.topPrime 11699⟩]⟩,
    ⟨(11712,11722),[.good ⟨11712,11712,.largeDivisor 1507469732024282804198145116718479⟩,.good ⟨11713,11713,.largeDivisor 3017773538061942315086801188194077⟩,.good ⟨11714,11714,.largeDivisor 4530915050609791371305663819341889⟩,.good ⟨11715,11715,.largeDivisor 16931314136489220387510638482803901⟩,.good ⟨11716,11716,.largeDivisor 21184032082775278306287338793734569⟩,.good ⟨11717,11722,.topPrime 11717⟩]⟩,
    ⟨(11725,11728),[.good ⟨11725,11728,.topPrime 11719⟩]⟩,
    ⟨(11745,11755),[.good ⟨11745,11753,.topPrime 11743⟩,.good ⟨11754,11754,.largeDivisor 32522281521754622221415487942623⟩,.good ⟨11755,11755,.largeDivisor 208337558195218302023291041289119⟩]⟩,
    ⟨(11760,11760),[.good ⟨11760,11760,.largeDivisor 50459825784898983372410314534477⟩]⟩,
    ⟨(11775,11785),[.good ⟨11775,11775,.largeDivisor 9552227179756699785362140483183657⟩,.good ⟨11776,11776,.largeDivisor 93370686414961366367755729329887⟩,.good ⟨11777,11785,.topPrime 11777⟩]⟩,
    ⟨(11800,11818),[.good ⟨11800,11800,.largeDivisor 1425928509483591183469627835343971⟩,.good ⟨11801,11811,.topPrime 11801⟩,.good ⟨11812,11817,.topPrime 11807⟩,.good ⟨11818,11818,.topPrime 11813⟩]⟩,
    ⟨(11826,11835),[.good ⟨11826,11831,.topPrime 11821⟩,.good ⟨11832,11835,.topPrime 11831⟩]⟩,
    ⟨(11850,11850),[.good ⟨11850,11850,.largeDivisor 3361155383292242141567745525535417⟩]⟩,
    ⟨(11853,11863),[.good ⟨11853,11853,.largeDivisor 8560079700235729011771032448172943⟩,.good ⟨11854,11854,.largeDivisor 4284015231216513202125045116973827⟩,.good ⟨11855,11855,.largeDivisor 216114896025837293664648552603083911⟩,.good ⟨11856,11856,.largeDivisor 22532874342921828423456391934555393⟩,.good ⟨11857,11857,.largeDivisor 45107595995952071520668991924366587⟩,.good ⟨11858,11858,.largeDivisor 1382126896811901912889579139743823⟩,.good ⟨11859,11859,.largeDivisor 3689093601011106186125932707229799⟩,.good ⟨11860,11860,.largeDivisor 184625918254670096073312355083743⟩,.good ⟨11861,11861,.largeDivisor 27719595144539772272475415742383237⟩,.good ⟨11862,11862,.largeDivisor 10789848316746432325789308313189931⟩,.good ⟨11863,11863,.topPrime 11863⟩]⟩,
    ⟨(11875,11885),[.good ⟨11875,11877,.topPrime 11867⟩,.good ⟨11878,11878,.largeDivisor 2759675436317414603085333283569223⟩,.good ⟨11879,11879,.largeDivisor 4735257042902580972129232135709779⟩,.good ⟨11880,11880,.largeDivisor 4388560744117313227181864815301⟩,.good ⟨11881,11881,.largeDivisor 43926276496089130962213762317263⟩,.good ⟨11882,11882,.largeDivisor 197851409145766131195232723219757⟩,.good ⟨11883,11883,.largeDivisor 14786593049554332937062581446669009⟩,.good ⟨11884,11884,.largeDivisor 3700073102857401091216451568942443⟩,.good ⟨11885,11885,.largeDivisor 4444200993174351891774383718734809⟩]⟩,
    ⟨(11904,11917),[.good ⟨11904,11913,.topPrime 11903⟩,.good ⟨11914,11917,.topPrime 11909⟩]⟩,
    ⟨(11934,11944),[.good ⟨11934,11943,.topPrime 11933⟩,.good ⟨11944,11944,.topPrime 11941⟩]⟩,
    ⟨(11956,11966),[.good ⟨11956,11963,.topPrime 11953⟩,.good ⟨11964,11966,.topPrime 11959⟩]⟩,
    ⟨(11968,11971),[.good ⟨11968,11969,.topPrime 11959⟩,.good ⟨11970,11971,.topPrime 11969⟩]⟩,
    ⟨(11975,11978),[.good ⟨11975,11978,.topPrime 11971⟩]⟩,
    ⟨(12000,12010),[.good ⟨12000,12000,.largeDivisor 220580748065269646809367665817713⟩,.good ⟨12001,12001,.largeDivisor 2207831157240451235495597462450687⟩,.good ⟨12002,12002,.largeDivisor 23203493475656651250803993646526397⟩,.good ⟨12003,12003,.largeDivisor 61932740090795371350544882308040103⟩,.good ⟨12004,12004,.largeDivisor 15497386226338439875175951955843271⟩,.good ⟨12005,12005,.largeDivisor 7752569397868154014595273614729⟩,.good ⟨12006,12006,.largeDivisor 2155466356139249157038369112557⟩,.good ⟨12007,12010,.topPrime 12007⟩]⟩,
    ⟨(12015,12015),[.good ⟨12015,12015,.topPrime 12011⟩]⟩,
    ⟨(12025,12025),[.good ⟨12025,12025,.largeDivisor 3510746739254749566324612683045911⟩]⟩,
    ⟨(12032,12035),[.good ⟨12032,12032,.largeDivisor 14906118445554780135529201132068521⟩,.good ⟨12033,12033,.largeDivisor 473643091515715023438043156916501⟩,.good ⟨12034,12034,.largeDivisor 237038216888468543294244836992979⟩,.good ⟨12035,12035,.largeDivisor 3416472982338585531193097740371859⟩]⟩,
    ⟨(12042,12042),[.good ⟨12042,12042,.topPrime 12041⟩]⟩,
    ⟨(12050,12052),[.good ⟨12050,12052,.topPrime 12049⟩]⟩,
    ⟨(12054,12060),[.good ⟨12054,12059,.topPrime 12049⟩,.good ⟨12060,12060,.largeDivisor 3107011995630738960938721719595671⟩]⟩,
    ⟨(12064,12064),[.good ⟨12064,12064,.largeDivisor 4176390040273668413351228744402381⟩]⟩,
    ⟨(12069,12079),[.good ⟨12069,12069,.largeDivisor 4350865778066226741624104580716237⟩,.good ⟨12070,12070,.largeDivisor 435483455852552921232299048754001⟩,.good ⟨12071,12079,.topPrime 12071⟩]⟩,
    ⟨(12096,12110),[.good ⟨12096,12096,.largeDivisor 1672194433036925738367377044357211⟩,.good ⟨12097,12107,.topPrime 12097⟩,.good ⟨12108,12110,.topPrime 12107⟩]⟩,
    ⟨(12125,12135),[.good ⟨12125,12129,.topPrime 12119⟩,.good ⟨12130,12130,.largeDivisor 579483185378821181277731871584573⟩,.good ⟨12131,12131,.largeDivisor 9943013467935614922319894390654109⟩,.good ⟨12132,12132,.largeDivisor 276445469738000348883904332121973⟩,.good ⟨12133,12133,.largeDivisor 553392655392040625805710486988269⟩,.good ⟨12134,12134,.largeDivisor 7477579599696014424862462192779127⟩,.good ⟨12135,12135,.largeDivisor 13970812693196479606729173011451071⟩]⟩,
    ⟨(12150,12162),[.good ⟨12150,12159,.topPrime 12149⟩,.good ⟨12160,12162,.topPrime 12157⟩]⟩,
    ⟨(12177,12185),[.good ⟨12177,12177,.largeDivisor 20155879151941917033635746952159813⟩,.good ⟨12178,12178,.largeDivisor 10087050888154379289702314719462571⟩,.good ⟨12179,12179,.largeDivisor 726924217555220031770914147741625161⟩,.good ⟨12180,12180,.largeDivisor 1732336454030847310490304074657501⟩,.good ⟨12181,12181,.largeDivisor 17339022470459943376402953108794593⟩,.good ⟨12182,12182,.largeDivisor 26032039898341512227180277886533859⟩,.good ⟨12183,12183,.largeDivisor 34740753870248071362004307754588893⟩,.good ⟨12184,12184,.largeDivisor 30425628605168379921985371311235701⟩,.good ⟨12185,12185,.largeDivisor 36543744165005097028032700781410253⟩]⟩,
    ⟨(12200,12211),[.good ⟨12200,12207,.topPrime 12197⟩,.good ⟨12208,12211,.topPrime 12203⟩]⟩,
    ⟨(12225,12235),[.good ⟨12225,12225,.largeDivisor 1353063271017762610187771587376107⟩,.good ⟨12226,12226,.largeDivisor 23699930589488776034607013506103559⟩,.good ⟨12227,12235,.topPrime 12227⟩]⟩,
    ⟨(12250,12266),[.good ⟨12250,12251,.topPrime 12241⟩,.good ⟨12252,12261,.topPrime 12251⟩,.good ⟨12262,12263,.topPrime 12253⟩,.good ⟨12264,12266,.topPrime 12263⟩]⟩,
    ⟨(12285,12285),[.good ⟨12285,12285,.topPrime 12281⟩]⟩,
    ⟨(12288,12295),[.good ⟨12288,12291,.topPrime 12281⟩,.good ⟨12292,12295,.topPrime 12289⟩]⟩,
    ⟨(12300,12309),[.good ⟨12300,12300,.largeDivisor 1654019605427284814303924986962809⟩,.good ⟨12301,12309,.topPrime 12301⟩]⟩,
    ⟨(12320,12322),[.good ⟨12320,12320,.largeDivisor 2455625701848428101659731586134717⟩,.good ⟨12321,12321,.largeDivisor 2730911117652719797865290447943483⟩,.good ⟨12322,12322,.largeDivisor 1366675606844156175343030984467533⟩]⟩,
    ⟨(12325,12330),[.good ⟨12325,12330,.topPrime 12323⟩]⟩,
    ⟨(12348,12360),[.good ⟨12348,12357,.topPrime 12347⟩,.good ⟨12358,12358,.largeDivisor 51842312893311736326139967743489⟩,.good ⟨12359,12359,.largeDivisor 640719145048439749254763861341780551⟩,.good ⟨12360,12360,.largeDivisor 5344082269008769469045321703636197⟩]⟩,
    ⟨(12375,12376),[.good ⟨12375,12376,.topPrime 12373⟩]⟩,
    ⟨(12384,12385),[.good ⟨12384,12385,.topPrime 12379⟩]⟩,
    ⟨(12393,12394),[.good ⟨12393,12394,.topPrime 12391⟩]⟩,
    ⟨(12397,12407),[.good ⟨12397,12401,.topPrime 12391⟩,.good ⟨12402,12407,.topPrime 12401⟩]⟩,
    ⟨(12420,12430),[.good ⟨12420,12423,.topPrime 12413⟩,.good ⟨12424,12430,.topPrime 12421⟩]⟩,
    ⟨(12447,12458),[.good ⟨12447,12447,.topPrime 12437⟩,.good ⟨12448,12448,.largeDivisor 655104250926130176315128456287153⟩,.good ⟨12449,12449,.largeDivisor 11802305093747314855205548700895467⟩,.good ⟨12450,12450,.largeDivisor 551261295881275820473866371510593⟩,.good ⟨12451,12458,.topPrime 12451⟩]⟩,
    ⟨(12475,12485),[.good ⟨12475,12483,.topPrime 12473⟩,.good ⟨12484,12485,.topPrime 12479⟩]⟩,
    ⟨(12500,12510),[.good ⟨12500,12507,.topPrime 12497⟩,.good ⟨12508,12510,.topPrime 12503⟩]⟩,
    ⟨(12544,12554),[.good ⟨12544,12551,.topPrime 12541⟩,.good ⟨12552,12554,.topPrime 12547⟩]⟩,
    ⟨(12582,12586),[.good ⟨12582,12586,.topPrime 12577⟩]⟩,
    ⟨(12609,12618),[.good ⟨12609,12611,.topPrime 12601⟩,.good ⟨12612,12618,.topPrime 12611⟩]⟩,
    ⟨(12640,12650),[.good ⟨12640,12647,.topPrime 12637⟩,.good ⟨12648,12650,.topPrime 12647⟩]⟩,
    ⟨(12672,12673),[.good ⟨12672,12673,.topPrime 12671⟩]⟩,
    ⟨(12691,12700),[.good ⟨12691,12699,.topPrime 12689⟩,.good ⟨12700,12700,.topPrime 12697⟩]⟩,
    ⟨(12740,12754),[.good ⟨12740,12749,.topPrime 12739⟩,.good ⟨12750,12753,.topPrime 12743⟩,.good ⟨12754,12754,.largeDivisor 479247296724291827696210501645429⟩]⟩,
    ⟨(12771,12778),[.good ⟨12771,12773,.topPrime 12763⟩,.good ⟨12774,12774,.largeDivisor 255980804716665914303630507774884301⟩,.good ⟨12775,12775,.largeDivisor 5856032198156255639036360723148403⟩,.good ⟨12776,12776,.largeDivisor 10989522233202750006511243331219741⟩,.good ⟨12777,12777,.largeDivisor 7332661004419632191403945691315193⟩,.good ⟨12778,12778,.largeDivisor 3669489399015981050433133000846931⟩]⟩,
    ⟨(12798,12808),[.good ⟨12798,12801,.topPrime 12791⟩,.good ⟨12802,12808,.topPrime 12799⟩]⟩,
    ⟨(12832,12835),[.good ⟨12832,12835,.topPrime 12829⟩]⟩,
    ⟨(12838,12842),[.good ⟨12838,12839,.topPrime 12829⟩,.good ⟨12840,12840,.largeDivisor 1658675472607548930628783263852317⟩,.good ⟨12841,12842,.topPrime 12841⟩]⟩,
    ⟨(12879,12885),[.good ⟨12879,12879,.largeDivisor 6639668675708455316667586431719383⟩,.good ⟨12880,12880,.largeDivisor 11866685798530924880204715823261⟩,.good ⟨12881,12881,.largeDivisor 1068914543852285618055363248387587⟩,.good ⟨12882,12882,.largeDivisor 178304679174178946621464135986959⟩,.good ⟨12883,12883,.largeDivisor 1427656421256026954210268778073333⟩,.good ⟨12884,12884,.largeDivisor 7501600869275143261845474280871461⟩,.good ⟨12885,12885,.largeDivisor 1001068066911192801293345099777627⟩]⟩,
    ⟨(12887,12889),[.good ⟨12887,12887,.largeDivisor 15348662664280516495143684901954297⟩,.good ⟨12888,12888,.largeDivisor 213357972890130655636461877568519⟩,.good ⟨12889,12889,.topPrime 12889⟩]⟩,
    ⟨(12896,12897),[.good ⟨12896,12897,.topPrime 12893⟩]⟩,
    ⟨(12906,12906),[.good ⟨12906,12906,.topPrime 12899⟩]⟩,
    ⟨(12933,12943),[.good ⟨12933,12933,.topPrime 12923⟩,.good ⟨12934,12934,.largeDivisor 4892656053710362376198478141862993⟩,.good ⟨12935,12935,.largeDivisor 35257106437183029156616888448466749⟩,.good ⟨12936,12936,.largeDivisor 750151200791128279928018903158867⟩,.good ⟨12937,12937,.largeDivisor 1501579155908220107910998073675733⟩,.good ⟨12938,12938,.largeDivisor 2254285346848520742185250995267653⟩,.good ⟨12939,12939,.largeDivisor 96264680207501682782623639035538489⟩,.good ⟨12940,12940,.largeDivisor 33721303786818402144210879510554089⟩,.good ⟨12941,12943,.topPrime 12941⟩]⟩,
    ⟨(12960,12970),[.good ⟨12960,12969,.topPrime 12959⟩,.good ⟨12970,12970,.topPrime 12967⟩]⟩,
    ⟨(12987,12997),[.good ⟨12987,12993,.topPrime 12983⟩,.good ⟨12994,12994,.largeDivisor 1576008159863989740994532094116293⟩,.good ⟨12995,12995,.largeDivisor 7571248072988002471062456400384927⟩,.good ⟨12996,12996,.largeDivisor 51570199138654130038746165293187899⟩,.good ⟨12997,12997,.largeDivisor 103227765009254231959584769800641171⟩]⟩,
    ⟨(13000,13002),[.good ⟨13000,13000,.largeDivisor 266117834639034376450023569825581⟩,.good ⟨13001,13002,.topPrime 13001⟩]⟩,
    ⟨(13024,13024),[.good ⟨13024,13024,.largeDivisor 52806124531248224012175734424258371⟩]⟩,
    ⟨(13034,13034),[.good ⟨13034,13034,.topPrime 13033⟩]⟩,
    ⟨(13041,13044),[.good ⟨13041,13044,.topPrime 13037⟩]⟩,
    ⟨(13088,13093),[.good ⟨13088,13088,.largeDivisor 214969516372122026801538382620072817⟩,.good ⟨13089,13089,.largeDivisor 143433552520502890799068965189077489⟩,.good ⟨13090,13090,.largeDivisor 2050774089864212904612424228943917⟩,.good ⟨13091,13091,.largeDivisor 246299849636811111323681152120227683⟩,.good ⟨13092,13092,.largeDivisor 20542247225270309796967826386604113⟩,.good ⟨13093,13093,.topPrime 13093⟩]⟩,
    ⟨(13095,13098),[.good ⟨13095,13098,.topPrime 13093⟩]⟩,
    ⟨(13122,13135),[.good ⟨13122,13131,.topPrime 13121⟩,.good ⟨13132,13135,.topPrime 13127⟩]⟩,
    ⟨(13152,13159),[.good ⟨13152,13159,.topPrime 13151⟩]⟩,
    ⟨(13181,13191),[.good ⟨13181,13187,.topPrime 13177⟩,.good ⟨13188,13191,.topPrime 13187⟩]⟩,
    ⟨(13230,13240),[.good ⟨13230,13239,.topPrime 13229⟩,.good ⟨13240,13240,.largeDivisor 516603942777590823650264000611081⟩]⟩,
    ⟨(13250,13260),[.good ⟨13250,13259,.topPrime 13249⟩,.good ⟨13260,13260,.topPrime 13259⟩]⟩,
    ⟨(13280,13290),[.good ⟨13280,13280,.largeDivisor 1441909179633537339451696823126689⟩,.good ⟨13281,13281,.largeDivisor 4810348107187392465525743659368389⟩,.good ⟨13282,13282,.largeDivisor 2407167642214714291579870668515219⟩,.good ⟨13283,13283,.largeDivisor 404739339133393037152600279618831063⟩,.good ⟨13284,13284,.largeDivisor 1250230762033384654807248660014471⟩,.good ⟨13285,13285,.largeDivisor 500506725135257349378161773340131⟩,.good ⟨13286,13286,.largeDivisor 8050523426328122450167381744064141⟩,.good ⟨13287,13287,.largeDivisor 10742925054295647584149241863350431⟩,.good ⟨13288,13288,.largeDivisor 1343978196519173807130518244710783⟩,.good ⟨13289,13289,.largeDivisor 8070549594913375835046297765007499⟩,.good ⟨13290,13290,.largeDivisor 13192817234489392970204833615860967⟩]⟩,
    ⟨(13312,13321),[.good ⟨13312,13319,.topPrime 13309⟩,.good ⟨13320,13321,.topPrime 13313⟩]⟩,
    ⟨(13338,13338),[.good ⟨13338,13338,.topPrime 13337⟩]⟩,
    ⟨(13344,13348),[.good ⟨13344,13348,.topPrime 13339⟩]⟩,
    ⟨(13375,13386),[.good ⟨13375,13377,.topPrime 13367⟩,.good ⟨13378,13378,.largeDivisor 37224260746055549735086821972227⟩,.good ⟨13379,13379,.largeDivisor 894117386932634111141340379113869⟩,.good ⟨13380,13380,.largeDivisor 14914217763929793311730039983723⟩,.good ⟨13381,13386,.topPrime 13381⟩]⟩,
    ⟨(13426,13429),[.good ⟨13426,13429,.topPrime 13421⟩]⟩,
    ⟨(13446,13450),[.good ⟨13446,13450,.topPrime 13441⟩]⟩,
    ⟨(13473,13483),[.good ⟨13473,13479,.topPrime 13469⟩,.good ⟨13480,13483,.topPrime 13477⟩]⟩,
    ⟨(13500,13510),[.good ⟨13500,13509,.topPrime 13499⟩,.good ⟨13510,13510,.largeDivisor 90315612020999930967653762633161⟩]⟩,
    ⟨(13527,13534),[.good ⟨13527,13533,.topPrime 13523⟩,.good ⟨13534,13534,.largeDivisor 2631340051733702201601056567950471⟩]⟩,
    ⟨(13536,13537),[.good ⟨13536,13536,.largeDivisor 26905309285704990549505812592121713⟩,.good ⟨13537,13537,.topPrime 13537⟩]⟩,
    ⟨(13573,13578),[.good ⟨13573,13577,.topPrime 13567⟩,.good ⟨13578,13578,.topPrime 13577⟩]⟩,
    ⟨(13608,13610),[.good ⟨13608,13608,.largeDivisor 271644887164494370407373478223043⟩,.good ⟨13609,13609,.largeDivisor 543729264512664198687151884856213⟩,.good ⟨13610,13610,.largeDivisor 489752170087184628996170559423763⟩]⟩,
    ⟨(13625,13635),[.good ⟨13625,13629,.topPrime 13619⟩,.good ⟨13630,13635,.topPrime 13627⟩]⟩,
    ⟨(13671,13674),[.good ⟨13671,13674,.topPrime 13669⟩]⟩,
    ⟨(13696,13699),[.good ⟨13696,13699,.topPrime 13693⟩]⟩,
    ⟨(13728,13730),[.good ⟨13728,13730,.topPrime 13723⟩]⟩,
    ⟨(13760,13760),[.good ⟨13760,13760,.topPrime 13759⟩]⟩,
    ⟨(13769,13779),[.good ⟨13769,13773,.topPrime 13763⟩,.good ⟨13774,13774,.largeDivisor 111750315965826357816770457269218399⟩,.good ⟨13775,13775,.largeDivisor 53683020137027308768125999961063067⟩,.good ⟨13776,13776,.largeDivisor 799492853475524758261229930404499⟩,.good ⟨13777,13777,.largeDivisor 1600263408736351096115787411184481⟩,.good ⟨13778,13778,.largeDivisor 2402313057917786598636230001231181⟩,.good ⟨13779,13779,.largeDivisor 2137095462912336596462561378201591⟩]⟩,
    ⟨(13824,13828),[.good ⟨13824,13824,.largeDivisor 908563272138639145042639273363013⟩,.good ⟨13825,13825,.largeDivisor 10391848631671129645051180338161⟩,.good ⟨13826,13826,.largeDivisor 234002767396555437251592213933899⟩,.good ⟨13827,13827,.largeDivisor 624504200886348587314758838460533⟩,.good ⟨13828,13828,.largeDivisor 156250345405233195798445487772893⟩]⟩,
    ⟨(13856,13861),[.good ⟨13856,13856,.largeDivisor 994107929340178811363221226579653⟩,.good ⟨13857,13857,.largeDivisor 4642855940972988806558866375704163⟩,.good ⟨13858,13858,.largeDivisor 2323272103343817392983778805319141⟩,.good ⟨13859,13861,.topPrime 13859⟩]⟩,
    ⟨(13875,13877),[.good ⟨13875,13877,.topPrime 13873⟩]⟩,
    ⟨(13920,13926),[.good ⟨13920,13923,.topPrime 13913⟩,.good ⟨13924,13926,.topPrime 13921⟩]⟩,
    ⟨(14014,14024),[.good ⟨14014,14021,.topPrime 14011⟩,.good ⟨14022,14022,.largeDivisor 809503796536288184707218515737129⟩,.good ⟨14023,14023,.largeDivisor 3240557162097736001755445402849489⟩,.good ⟨14024,14024,.largeDivisor 32836397139637752665186680873960429⟩]⟩,
    ⟨(14112,14122),[.good ⟨14112,14117,.topPrime 14107⟩,.good ⟨14118,14118,.largeDivisor 329850875788525138946569014307946359⟩,.good ⟨14119,14119,.largeDivisor 188633177336392176142679246345088689⟩,.good ⟨14120,14120,.largeDivisor 14158518307409406374306989997834639⟩,.good ⟨14121,14121,.largeDivisor 5247983752498312922581542004867127⟩,.good ⟨14122,14122,.largeDivisor 2626037366337650595021491609125277⟩]⟩,
    ⟨(14176,14185),[.good ⟨14176,14183,.topPrime 14173⟩,.good ⟨14184,14185,.topPrime 14177⟩]⟩,
    ⟨(14210,14218),[.good ⟨14210,14217,.topPrime 14207⟩,.good ⟨14218,14218,.largeDivisor 6365905329555329281100630287665839⟩]⟩,
    ⟨(14250,14250),[.good ⟨14250,14250,.topPrime 14249⟩]⟩,
    ⟨(14256,14266),[.good ⟨14256,14261,.topPrime 14251⟩,.good ⟨14262,14262,.largeDivisor 11708573293973245480763033362793843⟩,.good ⟨14263,14263,.largeDivisor 328093086231710020220281227610075801⟩,.good ⟨14264,14264,.largeDivisor 123129861660942741749686682557096433⟩,.good ⟨14265,14265,.largeDivisor 5476661448929261840136197329956443⟩,.good ⟨14266,14266,.largeDivisor 1957459844426137430760710304884467⟩]⟩,
    ⟨(14308,14314),[.good ⟨14308,14313,.topPrime 14303⟩,.good ⟨14314,14314,.largeDivisor 63981697473368885496862571273181839⟩]⟩,
    ⟨(14337,14346),[.good ⟨14337,14337,.topPrime 14327⟩,.good ⟨14338,14338,.largeDivisor 37715338451196162233693714408821⟩,.good ⟨14339,14339,.largeDivisor 2717589135938199850597659150291881⟩,.good ⟨14340,14340,.largeDivisor 317295458470556797407347599863097⟩,.good ⟨14341,14346,.topPrime 14341⟩]⟩,
    ⟨(14375,14378),[.good ⟨14375,14378,.topPrime 14369⟩]⟩,
    ⟨(14406,14410),[.good ⟨14406,14410,.topPrime 14401⟩]⟩,
    ⟨(14464,14465),[.good ⟨14464,14465,.topPrime 14461⟩]⟩,
    ⟨(14499,14510),[.good ⟨14499,14499,.topPrime 14489⟩,.good ⟨14500,14500,.largeDivisor 131108705775401462422518448547173⟩,.good ⟨14501,14501,.largeDivisor 82661188802134635069084348799241551⟩,.good ⟨14502,14502,.largeDivisor 13787322706145843141396513080378637⟩,.good ⟨14503,14510,.topPrime 14503⟩]⟩,
    ⟨(14560,14563),[.good ⟨14560,14563,.topPrime 14557⟩]⟩,
    ⟨(14602,14602),[.good ⟨14602,14602,.topPrime 14593⟩]⟩,
    ⟨(14625,14634),[.good ⟨14625,14631,.topPrime 14621⟩,.good ⟨14632,14634,.topPrime 14629⟩]⟩,
    ⟨(14656,14666),[.good ⟨14656,14663,.topPrime 14653⟩,.good ⟨14664,14666,.topPrime 14657⟩]⟩,
    ⟨(14749,14760),[.good ⟨14749,14757,.topPrime 14747⟩,.good ⟨14758,14760,.topPrime 14753⟩]⟩,
    ⟨(14823,14826),[.good ⟨14823,14826,.topPrime 14821⟩]⟩,
    ⟨(14848,14857),[.good ⟨14848,14853,.topPrime 14843⟩,.good ⟨14854,14857,.topPrime 14851⟩]⟩,
    ⟨(14880,14885),[.good ⟨14880,14885,.topPrime 14879⟩]⟩,
    ⟨(14904,14906),[.good ⟨14904,14906,.topPrime 14897⟩]⟩,
    ⟨(14912,14914),[.good ⟨14912,14912,.largeDivisor 50189910028247102800705002365130061⟩,.good ⟨14913,14913,.largeDivisor 11161546224239088624448824173804927⟩,.good ⟨14914,14914,.largeDivisor 39094246216134750527249827085046191⟩]⟩,
    ⟨(14945,14954),[.good ⟨14945,14949,.topPrime 14939⟩,.good ⟨14950,14954,.topPrime 14947⟩]⟩,
    ⟨(14985,14986),[.good ⟨14985,14986,.topPrime 14983⟩]⟩,
    ⟨(14994,14995),[.good ⟨14994,14994,.largeDivisor 3384872774352031156227898808697533⟩,.good ⟨14995,14995,.largeDivisor 5419772263898420415124115604529579⟩]⟩,
    ⟨(15000,15004),[.good ⟨15000,15000,.largeDivisor 1028101640296994162148452848097069⟩,.good ⟨15001,15001,.largeDivisor 1469794406375222474639182423930633⟩,.good ⟨15002,15002,.largeDivisor 2206309354056542682062939235922289⟩,.good ⟨15003,15003,.largeDivisor 3925205649105930257202689120899099⟩,.good ⟨15004,15004,.largeDivisor 982021369292092602865823176982093⟩]⟩,
    ⟨(15008,15010),[.good ⟨15008,15008,.largeDivisor 7756134764736752807456047430160449⟩,.good ⟨15009,15009,.largeDivisor 5174548903584207800467076315921153⟩,.good ⟨15010,15010,.largeDivisor 517834382577498227115213117554347⟩]⟩,
    ⟨(15043,15050),[.good ⟨15043,15043,.largeDivisor 63154817613489728594941594617206633⟩,.good ⟨15044,15044,.largeDivisor 47400772110224479993130181072702883⟩,.good ⟨15045,15045,.largeDivisor 6324727208534675193974933033912597⟩,.good ⟨15046,15046,.largeDivisor 15823386361758018451703831464624033⟩,.good ⟨15047,15047,.largeDivisor 1330136841259066500797695821498311869⟩,.good ⟨15048,15048,.largeDivisor 18487637149906557070341053846721233⟩,.good ⟨15049,15049,.largeDivisor 37002320982702989407043824888855943⟩,.good ⟨15050,15050,.largeDivisor 2856552607282277458712539443843457⟩]⟩,
    ⟨(15072,15076),[.good ⟨15072,15072,.largeDivisor 12543126738768194906079511967888183⟩,.good ⟨15073,15076,.topPrime 15073⟩]⟩,
    ⟨(15141,15151),[.good ⟨15141,15149,.topPrime 15139⟩,.good ⟨15150,15151,.topPrime 15149⟩]⟩,
    ⟨(15200,15200),[.good ⟨15200,15200,.topPrime 15199⟩]⟩,
    ⟨(15232,15242),[.good ⟨15232,15237,.topPrime 15227⟩,.good ⟨15238,15242,.topPrime 15233⟩]⟩,
    ⟨(15296,15298),[.good ⟨15296,15298,.topPrime 15289⟩]⟩,
    ⟨(15337,15338),[.good ⟨15337,15338,.topPrime 15331⟩]⟩,
    ⟨(15390,15400),[.good ⟨15390,15393,.topPrime 15383⟩,.good ⟨15394,15400,.topPrime 15391⟩]⟩,
    ⟨(15488,15494),[.good ⟨15488,15488,.largeDivisor 342722347860170080729639137952402733⟩,.good ⟨15489,15489,.largeDivisor 76214647973556365025934740459501887⟩,.good ⟨15490,15490,.largeDivisor 7626880916792997572528775306658597⟩,.good ⟨15491,15491,.largeDivisor 392518313229369851814097203572918027⟩,.good ⟨15492,15492,.largeDivisor 32733101374531133563206478251575297⟩,.good ⟨15493,15494,.topPrime 15493⟩]⟩,
    ⟨(15552,15562),[.good ⟨15552,15561,.topPrime 15551⟩,.good ⟨15562,15562,.topPrime 15559⟩]⟩,
    ⟨(15584,15592),[.good ⟨15584,15592,.topPrime 15583⟩]⟩,
    ⟨(15625,15626),[.good ⟨15625,15626,.topPrime 15619⟩]⟩,
    ⟨(15631,15641),[.good ⟨15631,15639,.topPrime 15629⟩,.good ⟨15640,15640,.largeDivisor 3230510035037646002392556808620111⟩,.good ⟨15641,15641,.topPrime 15641⟩]⟩,
    ⟨(15680,15690),[.good ⟨15680,15689,.topPrime 15679⟩,.good ⟨15690,15690,.topPrime 15683⟩]⟩,
    ⟨(15714,15722),[.good ⟨15714,15714,.largeDivisor 138945064484179231521276567144937937⟩,.good ⟨15715,15715,.largeDivisor 31781117653283991315870187798307251⟩,.good ⟨15716,15716,.largeDivisor 357787997878947856389839449454295671⟩,.good ⟨15717,15717,.largeDivisor 238692387735617957420905243307150773⟩,.good ⟨15718,15718,.largeDivisor 119429774954747662021448673021639901⟩,.good ⟨15719,15719,.largeDivisor 10039126377078494648744126691054318737⟩,.good ⟨15720,15720,.largeDivisor 83717967750797810107930523682482383⟩,.good ⟨15721,15721,.largeDivisor 837765863151045431385598830561620333⟩,.good ⟨15722,15722,.largeDivisor 179646947549861374727139103822932907⟩]⟩,
    ⟨(15750,15754),[.good ⟨15750,15754,.topPrime 15749⟩]⟩,
    ⟨(15778,15786),[.good ⟨15778,15783,.topPrime 15773⟩,.good ⟨15784,15784,.largeDivisor 16079817172203077867027718058105753⟩,.good ⟨15785,15785,.largeDivisor 2758462360085046830745340754737807⟩,.good ⟨15786,15786,.largeDivisor 3833869238977157005647644757377269⟩]⟩,
    ⟨(15875,15886),[.good ⟨15875,15875,.largeDivisor 50361701483217495654597964911951313⟩,.good ⟨15876,15876,.largeDivisor 15871951302621334905325548349181⟩,.good ⟨15877,15886,.topPrime 15877⟩]⟩,
    ⟨(15974,15978),[.good ⟨15974,15978,.topPrime 15973⟩]⟩,
    ⟨(16000,16010),[.good ⟨16000,16001,.topPrime 15991⟩,.good ⟨16002,16010,.topPrime 16001⟩]⟩,
    ⟨(16072,16074),[.good ⟨16072,16074,.topPrime 16069⟩]⟩,
    ⟨(16121,16135),[.good ⟨16121,16121,.topPrime 16111⟩,.good ⟨16122,16122,.largeDivisor 3222497493203565221105002255549147⟩,.good ⟨16123,16123,.largeDivisor 51595160956227489632448809698330583⟩,.good ⟨16124,16124,.largeDivisor 38722787900680136046993325617942763⟩,.good ⟨16125,16125,.largeDivisor 1446637601849909513484546482685959⟩,.good ⟨16126,16126,.largeDivisor 3619062669474347008137107753613679⟩,.good ⟨16127,16135,.topPrime 16127⟩]⟩,
    ⟨(16200,16202),[.good ⟨16200,16202,.topPrime 16193⟩]⟩,
    ⟨(16256,16260),[.good ⟨16256,16260,.topPrime 16253⟩]⟩,
    ⟨(16320,16327),[.good ⟨16320,16327,.topPrime 16319⟩]⟩,
    ⟨(16366,16372),[.good ⟨16366,16372,.topPrime 16363⟩]⟩,
    ⟨(16375,16376),[.good ⟨16375,16376,.topPrime 16369⟩]⟩,
    ⟨(16384,16385),[.good ⟨16384,16385,.topPrime 16381⟩]⟩,
    ⟨(16448,16453),[.good ⟨16448,16453,.topPrime 16447⟩]⟩,
    ⟨(16513,16522),[.good ⟨16513,16513,.largeDivisor 66067207076317012750993897749936691⟩,.good ⟨16514,16514,.largeDivisor 99166865811516010595338413692279087⟩,.good ⟨16515,16515,.largeDivisor 17641415294632271395292873400419983⟩,.good ⟨16516,16516,.largeDivisor 22066465844149242226950704110976707⟩,.good ⟨16517,16517,.largeDivisor 2782227605708496441698815112984750149⟩,.good ⟨16518,16518,.largeDivisor 464013606258889604652380081544012671⟩,.good ⟨16519,16522,.topPrime 16519⟩]⟩,
    ⟨(16611,16615),[.good ⟨16611,16615,.topPrime 16607⟩]⟩,
    ⟨(16709,16714),[.good ⟨16709,16713,.topPrime 16703⟩,.good ⟨16714,16714,.largeDivisor 58702617632643956571056809039134499⟩]⟩,
    ⟨(16758,16760),[.good ⟨16758,16758,.largeDivisor 8286937915065428610075422413391797⟩,.good ⟨16759,16760,.topPrime 16759⟩]⟩,
    ⟨(16767,16777),[.good ⟨16767,16773,.topPrime 16763⟩,.good ⟨16774,16774,.largeDivisor 6784826108836871403864363787184621⟩,.good ⟨16775,16775,.largeDivisor 3258853485346843745163198354474503⟩,.good ⟨16776,16776,.largeDivisor 1585204304980823784181681036727681⟩,.good ⟨16777,16777,.largeDivisor 3172488682412415677826084069328439⟩]⟩,
    ⟨(16856,16858),[.good ⟨16856,16856,.largeDivisor 22090120551731845725458570014913057⟩,.good ⟨16857,16857,.largeDivisor 4912121072467499352224136487941607⟩,.good ⟨16858,16858,.largeDivisor 2457664184711138602712485692221749⟩]⟩,
    ⟨(16905,16906),[.good ⟨16905,16906,.topPrime 16903⟩]⟩,
    ⟨(16960,16964),[.good ⟨16960,16960,.largeDivisor 8272930997919177040630091742807029⟩,.good ⟨16961,16961,.largeDivisor 177392139893435097074749666308154259⟩,.good ⟨16962,16962,.largeDivisor 29584542474116041497865453758076343⟩,.good ⟨16963,16964,.topPrime 16963⟩]⟩,
    ⟨(17003,17013),[.good ⟨17003,17003,.topPrime 16993⟩,.good ⟨17004,17004,.largeDivisor 58369231772545744810272329698036181⟩,.good ⟨17005,17005,.largeDivisor 23362805373476294939359326033072973⟩,.good ⟨17006,17006,.largeDivisor 175334451977642485321599602170537943⟩,.good ⟨17007,17007,.largeDivisor 1637514016904868614972237470683327181⟩,.good ⟨17008,17008,.largeDivisor 102410860738358259558480227765863199⟩,.good ⟨17009,17009,.largeDivisor 614862806317944100540130672103624127⟩,.good ⟨17010,17010,.largeDivisor 36170528049764344993242583216873⟩,.good ⟨17011,17013,.topPrime 17011⟩]⟩,
    ⟨(17091,17098),[.good ⟨17091,17091,.largeDivisor 1400598369948611803229042249280038641⟩,.good ⟨17092,17092,.largeDivisor 350375085462819403735009515319571753⟩,.good ⟨17093,17098,.topPrime 17093⟩]⟩,
    ⟨(17101,17101),[.good ⟨17101,17101,.topPrime 17099⟩]⟩,
    ⟨(17152,17160),[.good ⟨17152,17152,.largeDivisor 238873090257783910067743358735227⟩,.good ⟨17153,17153,.largeDivisor 1434158248929565071540777680218883⟩,.good ⟨17154,17154,.largeDivisor 558086080534861377369686047059451⟩,.good ⟨17155,17155,.largeDivisor 893510659036448616778064781829667⟩,.good ⟨17156,17156,.largeDivisor 30175332414230930057961573616279069⟩,.good ⟨17157,17157,.largeDivisor 2875684892386174018121381738539601⟩,.good ⟨17158,17158,.largeDivisor 1438764838851168536855621037786857⟩,.good ⟨17159,17160,.topPrime 17159⟩]⟩,
    ⟨(17250,17260),[.good ⟨17250,17250,.largeDivisor 1709078698606894330586309299173127⟩,.good ⟨17251,17251,.largeDivisor 68406767122198454981309563155535067⟩,.good ⟨17252,17252,.largeDivisor 359364660898954855462104928002220151⟩,.good ⟨17253,17253,.largeDivisor 2959620800814962850923262949560101⟩,.good ⟨17254,17254,.largeDivisor 1480754430704093517074464389366989⟩,.good ⟨17255,17255,.largeDivisor 1524033265839494997740523891352663⟩,.good ⟨17256,17256,.largeDivisor 317709457274165527218160822813153⟩,.good ⟨17257,17260,.topPrime 17257⟩]⟩,
    ⟨(17344,17344),[.good ⟨17344,17344,.topPrime 17341⟩]⟩,
    ⟨(17346,17354),[.good ⟨17346,17351,.topPrime 17341⟩,.good ⟨17352,17354,.topPrime 17351⟩]⟩,
    ⟨(17415,17418),[.good ⟨17415,17415,.largeDivisor 21526116808691304476539303136756791⟩,.good ⟨17416,17416,.largeDivisor 1923189407498706030509544175676921⟩,.good ⟨17417,17418,.topPrime 17417⟩]⟩,
    ⟨(17496,17506),[.good ⟨17496,17501,.topPrime 17491⟩,.good ⟨17502,17506,.topPrime 17497⟩]⟩,
    ⟨(17542,17546),[.good ⟨17542,17546,.topPrime 17539⟩]⟩,
    ⟨(17600,17601),[.good ⟨17600,17601,.topPrime 17599⟩]⟩,
    ⟨(17664,17668),[.good ⟨17664,17668,.topPrime 17659⟩]⟩,
    ⟨(17738,17748),[.good ⟨17738,17747,.topPrime 17737⟩,.good ⟨17748,17748,.topPrime 17747⟩]⟩,
    ⟨(17792,17797),[.good ⟨17792,17797,.topPrime 17791⟩]⟩,
    ⟨(17885,17885),[.good ⟨17885,17885,.topPrime 17881⟩]⟩,
    ⟨(17983,17993),[.good ⟨17983,17991,.topPrime 17981⟩,.good ⟨17992,17993,.topPrime 17989⟩]⟩,
    ⟨(18130,18135),[.good ⟨18130,18135,.topPrime 18127⟩]⟩,
    ⟨(18179,18186),[.good ⟨18179,18179,.topPrime 18169⟩,.good ⟨18180,18180,.largeDivisor 60430329458747048795961750157673⟩,.good ⟨18181,18186,.topPrime 18181⟩]⟩,
    ⟨(18228,18235),[.good ⟨18228,18233,.topPrime 18223⟩,.good ⟨18234,18235,.topPrime 18233⟩]⟩,
    ⟨(18250,18250),[.good ⟨18250,18250,.largeDivisor 11120324825127209743819359420401119⟩]⟩,
    ⟨(18306,18314),[.good ⟨18306,18311,.topPrime 18301⟩,.good ⟨18312,18314,.topPrime 18311⟩]⟩,
    ⟨(18375,18385),[.good ⟨18375,18381,.topPrime 18371⟩,.good ⟨18382,18385,.topPrime 18379⟩]⟩,
    ⟨(18432,18434),[.good ⟨18432,18434,.topPrime 18427⟩]⟩,
    ⟨(18473,18478),[.good ⟨18473,18473,.largeDivisor 100874851816226840149608742120549711⟩,.good ⟨18474,18474,.largeDivisor 16822491942921650913754282456219063⟩,.good ⟨18475,18475,.largeDivisor 21545617930362391724894999540980741⟩,.good ⟨18476,18476,.largeDivisor 80844199204178625001860278537603609⟩,.good ⟨18477,18477,.largeDivisor 125832555698391749149976612462244283⟩,.good ⟨18478,18478,.largeDivisor 62953754377941266605113658013682511⟩]⟩,
    ⟨(18500,18506),[.good ⟨18500,18503,.topPrime 18493⟩,.good ⟨18504,18506,.topPrime 18503⟩]⟩,
    ⟨(18624,18635),[.good ⟨18624,18627,.topPrime 18617⟩,.good ⟨18628,18628,.largeDivisor 19905952677784375779488098113481171⟩,.good ⟨18629,18629,.largeDivisor 119506281802914965000349268371266753⟩,.good ⟨18630,18630,.largeDivisor 147625784492563735700522754849301⟩,.good ⟨18631,18631,.largeDivisor 144758736362155524201917865557754049⟩,.good ⟨18632,18632,.largeDivisor 162949781047588311196842295255683509⟩,.good ⟨18633,18633,.largeDivisor 108697356898998066893307646421764609⟩,.good ⟨18634,18634,.largeDivisor 7768682920719885466089914481413773⟩,.good ⟨18635,18635,.largeDivisor 298493621087866114764093930641537443⟩]⟩,
    ⟨(18718,18721),[.good ⟨18718,18721,.topPrime 18713⟩]⟩,
    ⟨(18752,18760),[.good ⟨18752,18759,.topPrime 18749⟩,.good ⟨18760,18760,.topPrime 18757⟩]⟩,
    ⟨(18816,18826),[.good ⟨18816,18816,.largeDivisor 138946505177372764379635980006812723⟩,.good ⟨18817,18817,.largeDivisor 278055555452794140947741171518472297⟩,.good ⟨18818,18818,.largeDivisor 417327280468230989340771523818361117⟩,.good ⟨18819,18819,.largeDivisor 123724846655192258430675351808335899⟩,.good ⟨18820,18820,.largeDivisor 43329021474706332409105138091419457⟩,.good ⟨18821,18821,.largeDivisor 3901892407538028144840994277600983733⟩,.good ⟨18822,18822,.largeDivisor 650695682443612476230195048048178511⟩,.good ⟨18823,18823,.largeDivisor 372043523302333393277268654943982993⟩,.good ⟨18824,18824,.largeDivisor 139597896719883666780643142255332799⟩,.good ⟨18825,18825,.largeDivisor 3724787081608461822253792782618107⟩,.good ⟨18826,18826,.largeDivisor 9317411852027757409746200229280957⟩]⟩,
    ⟨(18873,18885),[.good ⟨18873,18879,.topPrime 18869⟩,.good ⟨18880,18880,.largeDivisor 1794936078623173652029747596303877⟩,.good ⟨18881,18881,.largeDivisor 53879472337812625952263377370132753⟩,.good ⟨18882,18882,.largeDivisor 2995048830605979790362157959899807⟩,.good ⟨18883,18883,.largeDivisor 167820495751729128728215515598777613⟩,.good ⟨18884,18884,.largeDivisor 3400345752978168312128349567132313781⟩,.good ⟨18885,18885,.largeDivisor 453643668856576656243466366961914067⟩]⟩,
    ⟨(18954,18954),[.good ⟨18954,18954,.topPrime 18947⟩]⟩,
    ⟨(18963,18964),[.good ⟨18963,18964,.topPrime 18959⟩]⟩,
    ⟨(19008,19010),[.good ⟨19008,19010,.topPrime 19001⟩]⟩,
    ⟨(19012,19018),[.good ⟨19012,19018,.topPrime 19009⟩]⟩,
    ⟨(19116,19120),[.good ⟨19116,19116,.largeDivisor 1371888146741544122908963950060553801⟩,.good ⟨19117,19117,.largeDivisor 392193711792228305209293473004854227⟩,.good ⟨19118,19118,.largeDivisor 1765887748950499467496766984669524991⟩,.good ⟨19119,19119,.largeDivisor 2355872435432600608406300186999975459⟩,.good ⟨19120,19120,.largeDivisor 29465357269788662170134792228426089⟩]⟩,
    ⟨(19125,19126),[.good ⟨19125,19126,.topPrime 19121⟩]⟩,
    ⟨(19200,19210),[.good ⟨19200,19200,.largeDivisor 6298664922091171930729752239192953⟩,.good ⟨19201,19201,.largeDivisor 9003250589523754354346904842160641⟩,.good ⟨19202,19202,.largeDivisor 13512616681259585048629769171421653⟩,.good ⟨19203,19203,.largeDivisor 36054297364211172945510276142671947⟩,.good ⟨19204,19204,.largeDivisor 9018740251423844178158434625174179⟩,.good ⟨19205,19205,.largeDivisor 75800834366999968245747368479855627⟩,.good ⟨19206,19206,.largeDivisor 21067853677934088595522907571765031⟩,.good ⟨19207,19210,.topPrime 19207⟩]⟩,
    ⟨(19257,19260),[.good ⟨19257,19259,.topPrime 19249⟩,.good ⟨19260,19260,.topPrime 19259⟩]⟩,
    ⟨(19264,19267),[.good ⟨19264,19267,.topPrime 19259⟩]⟩,
    ⟨(19359,19365),[.good ⟨19359,19359,.largeDivisor 1261157302175567099806370475526135529⟩,.good ⟨19360,19360,.largeDivisor 7886714226225831778209252547349341⟩,.good ⟨19361,19361,.largeDivisor 3551038933347868117625798571377455607⟩,.good ⟨19362,19362,.largeDivisor 84596607321242685247557911291664877⟩,.good ⟨19363,19363,.largeDivisor 677157547565614764137438543340432829⟩,.good ⟨19364,19364,.largeDivisor 508156826502114567228234380454353639⟩,.good ⟨19365,19365,.largeDivisor 67792752197398977605833479918008737⟩]⟩,
    ⟨(19456,19463),[.good ⟨19456,19457,.topPrime 19447⟩,.good ⟨19458,19463,.topPrime 19457⟩]⟩,
    ⟨(19502,19510),[.good ⟨19502,19510,.topPrime 19501⟩]⟩,
    ⟨(19521,19530),[.good ⟨19521,19521,.largeDivisor 1511847986625087607820902851777478273⟩,.good ⟨19522,19522,.largeDivisor 756350171567191847672586373645634023⟩,.good ⟨19523,19523,.largeDivisor 7783987559043904292099053122131635757⟩,.good ⟨19524,19524,.largeDivisor 649031300085298635947581583032243703⟩,.good ⟨19525,19525,.largeDivisor 51951772611111841208881953095027399⟩,.good ⟨19526,19526,.largeDivisor 389857921600526445597474641096658337⟩,.good ⟨19527,19527,.largeDivisor 3640724837443079819790476956812265589⟩,.good ⟨19528,19528,.largeDivisor 455347098847084994625636842320988897⟩,.good ⟨19529,19529,.largeDivisor 2733622346567698389192764184963600421⟩,.good ⟨19530,19530,.largeDivisor 4341528395081646091755504366713029⟩]⟩,
    ⟨(19602,19610),[.good ⟨19602,19607,.topPrime 19597⟩,.good ⟨19608,19610,.topPrime 19603⟩]⟩,
    ⟨(19649,19658),[.good ⟨19649,19649,.largeDivisor 2685513511558866439041011056266490483⟩,.good ⟨19650,19650,.largeDivisor 17913451296614466292294538844692207⟩,.good ⟨19651,19651,.largeDivisor 716939371547394861730916461989911527⟩,.good ⟨19652,19652,.largeDivisor 538005671668298603281501844777216333⟩,.good ⟨19653,19653,.largeDivisor 2512099183962241019313698207509297361⟩,.good ⟨19654,19654,.largeDivisor 1256752974637119711693514854410928329⟩,.good ⟨19655,19655,.largeDivisor 3017896116859204390144903416425998327⟩,.good ⟨19656,19656,.largeDivisor 9985403288157204650517623928108419⟩,.good ⟨19657,19657,.largeDivisor 19981988438899131814641650570582021⟩,.good ⟨19658,19658,.largeDivisor 89969291967906352087087853164567423⟩]⟩,
    ⟨(19750,19757),[.good ⟨19750,19750,.largeDivisor 15153934615880178172099838687488789⟩,.good ⟨19751,19757,.topPrime 19751⟩]⟩,
    ⟨(19845,19855),[.good ⟨19845,19853,.topPrime 19843⟩,.good ⟨19854,19855,.topPrime 19853⟩]⟩,
    ⟨(19904,19904),[.good ⟨19904,19904,.largeDivisor 14737460047609412994894628075420453⟩]⟩,
    ⟨(20000,20002),[.good ⟨20000,20002,.topPrime 19997⟩]⟩,
    ⟨(20007,20010),[.good ⟨20007,20007,.topPrime 19997⟩,.good ⟨20008,20008,.largeDivisor 2265936089703761014449425686870297⟩,.good ⟨20009,20009,.largeDivisor 40809284625456844408747577469475943⟩,.good ⟨20010,20010,.largeDivisor 9527403866006200637253984659482133⟩]⟩,
    ⟨(20041,20042),[.good ⟨20041,20041,.largeDivisor 370831747634846274710437988982483089⟩,.good ⟨20042,20042,.largeDivisor 556553084176845067975632632558553697⟩]⟩,
    ⟨(20090,20100),[.good ⟨20090,20099,.topPrime 20089⟩,.good ⟨20100,20100,.largeDivisor 22981322707317431306362924112033293⟩]⟩,
    ⟨(20169,20170),[.good ⟨20169,20170,.topPrime 20161⟩]⟩,
    ⟨(20250,20260),[.good ⟨20250,20259,.topPrime 20249⟩,.good ⟨20260,20260,.largeDivisor 5200988480873578546812972228073561⟩]⟩,
    ⟨(20288,20296),[.good ⟨20288,20296,.topPrime 20287⟩]⟩,
    ⟨(20335,20341),[.good ⟨20335,20341,.topPrime 20333⟩]⟩,
    ⟨(20384,20385),[.good ⟨20384,20384,.largeDivisor 160905066750946520016743420159126347⟩,.good ⟨20385,20385,.largeDivisor 2385065777892698981302469465399831⟩]⟩,
    ⟨(20416,20422),[.good ⟨20416,20421,.topPrime 20411⟩,.good ⟨20422,20422,.largeDivisor 39425743726810079391103073598558427⟩]⟩,
    ⟨(20482,20490),[.good ⟨20482,20489,.topPrime 20479⟩,.good ⟨20490,20490,.topPrime 20483⟩]⟩,
    ⟨(20500,20503),[.good ⟨20500,20500,.largeDivisor 248660962364754726842884195989550189⟩,.good ⟨20501,20501,.largeDivisor 7463833659501957035147831481671696083⟩,.good ⟨20502,20502,.largeDivisor 414880022359705678738635501323706107⟩,.good ⟨20503,20503,.largeDivisor 237201558752991983803525938586206361⟩]⟩,
    ⟨(20580,20584),[.good ⟨20580,20580,.largeDivisor 1891753877198083119293813174489341⟩,.good ⟨20581,20581,.largeDivisor 18927655102874938589297991708393353⟩,.good ⟨20582,20582,.largeDivisor 28406664527298526035068635361101939⟩,.good ⟨20583,20583,.largeDivisor 12631935013403019452110046484705451⟩,.good ⟨20584,20584,.largeDivisor 11058852939600533872160309494776157⟩]⟩,
    ⟨(20629,20635),[.good ⟨20629,20635,.topPrime 20627⟩]⟩,
    ⟨(20678,20682),[.good ⟨20678,20678,.largeDivisor 941817410044003894086621442905254909⟩,.good ⟨20679,20679,.largeDivisor 1256424890155471035792351772004242711⟩,.good ⟨20680,20680,.largeDivisor 31427338923526949804279155553059823⟩,.good ⟨20681,20682,.topPrime 20681⟩]⟩,
    ⟨(20736,20746),[.good ⟨20736,20741,.topPrime 20731⟩,.good ⟨20742,20742,.largeDivisor 315774936863783740837940597424901303⟩,.good ⟨20743,20746,.topPrime 20743⟩]⟩,
    ⟨(20825,20827),[.good ⟨20825,20825,.largeDivisor 90503134032887644402559913559453291⟩,.good ⟨20826,20826,.largeDivisor 25153044937797502900255061251089949⟩,.good ⟨20827,20827,.largeDivisor 402661388869722208227219185762067923⟩]⟩,
    ⟨(20874,20884),[.good ⟨20874,20883,.topPrime 20873⟩,.good ⟨20884,20884,.topPrime 20879⟩]⟩,
    ⟨(20928,20933),[.good ⟨20928,20931,.topPrime 20921⟩,.good ⟨20932,20933,.topPrime 20929⟩]⟩,
    ⟨(20979,20982),[.good ⟨20979,20979,.largeDivisor 218100684758699532994922939619945989⟩,.good ⟨20980,20980,.largeDivisor 10910754843429625166277560382532469⟩,.good ⟨20981,20982,.topPrime 20981⟩]⟩,
    ⟨(21000,21002),[.good ⟨21000,21000,.largeDivisor 6512078509681846207157471734009319⟩,.good ⟨21001,21002,.topPrime 21001⟩]⟩,
    ⟨(21060,21066),[.good ⟨21060,21066,.topPrime 21059⟩]⟩,
    ⟨(21070,21070),[.good ⟨21070,21070,.topPrime 21067⟩]⟩,
    ⟨(21120,21130),[.good ⟨21120,21120,.largeDivisor 33016239656040251928403511959570699⟩,.good ⟨21121,21130,.topPrime 21121⟩]⟩,
    ⟨(21222,21227),[.good ⟨21222,21227,.topPrime 21221⟩]⟩,
    ⟨(21250,21258),[.good ⟨21250,21257,.topPrime 21247⟩,.good ⟨21258,21258,.largeDivisor 11586523612630810559507439076720343⟩]⟩,
    ⟨(21312,21313),[.good ⟨21312,21312,.largeDivisor 1985750136793899182768092789943222063⟩,.good ⟨21313,21313,.topPrime 21313⟩]⟩,
    ⟨(21315,21322),[.good ⟨21315,21322,.topPrime 21313⟩]⟩,
    ⟨(21376,21386),[.good ⟨21376,21376,.largeDivisor 369423934460506946531840744053621541⟩,.good ⟨21377,21386,.topPrime 21377⟩]⟩,
    ⟨(21465,21472),[.good ⟨21465,21465,.largeDivisor 70150380949312693359759528184548359⟩,.good ⟨21466,21466,.largeDivisor 1228261074598651122072265931492263519⟩,.good ⟨21467,21472,.topPrime 21467⟩]⟩,
    ⟨(21504,21514),[.good ⟨21504,21513,.topPrime 21503⟩,.good ⟨21514,21514,.largeDivisor 75866378633149022979106067167812613⟩]⟩,
    ⟨(21568,21570),[.good ⟨21568,21570,.topPrime 21563⟩]⟩,
    ⟨(21627,21637),[.good ⟨21627,21627,.topPrime 21617⟩,.good ⟨21628,21628,.largeDivisor 498096383804204557258469031899345519⟩,.good ⟨21629,21629,.largeDivisor 8970296990259067750993694163989129251⟩,.good ⟨21630,21630,.largeDivisor 42737434201243534777387968864928087⟩,.good ⟨21631,21631,.largeDivisor 855183570034319057141238810839277937⟩,.good ⟨21632,21632,.largeDivisor 20053562277757724525720738036886079⟩,.good ⟨21633,21633,.largeDivisor 13375842899353524332159119598925679⟩,.good ⟨21634,21634,.largeDivisor 46839265989740068857547813759009087⟩,.good ⟨21635,21635,.largeDivisor 224942845657719509374705205477505349⟩,.good ⟨21636,21636,.largeDivisor 781448845319592052798831378566362513⟩,.good ⟨21637,21637,.largeDivisor 223384664837034961176471635175124991⟩]⟩,
    ⟨(21708,21717),[.good ⟨21708,21711,.topPrime 21701⟩,.good ⟨21712,21712,.largeDivisor 4176959969973326019213234710118332393⟩,.good ⟨21713,21717,.topPrime 21713⟩]⟩,
    ⟨(21756,21766),[.good ⟨21756,21761,.topPrime 21751⟩,.good ⟨21762,21766,.topPrime 21757⟩]⟩,
    ⟨(21875,21880),[.good ⟨21875,21880,.topPrime 21871⟩]⟩,
    ⟨(21952,21962),[.good ⟨21952,21953,.topPrime 21943⟩,.good ⟨21954,21954,.largeDivisor 4815024412650822667603078206638321⟩,.good ⟨21955,21955,.largeDivisor 7707900909934291773038686257874177⟩,.good ⟨21956,21956,.largeDivisor 202433818634590083934016023298906017⟩,.good ⟨21957,21957,.largeDivisor 135023523064482349796141736491815651⟩,.good ⟨21958,21958,.largeDivisor 67545598930375528245857753904572107⟩,.good ⟨21959,21959,.largeDivisor 115850488706718442923595283760876271⟩,.good ⟨21960,21960,.largeDivisor 321968190400921455115919281489519⟩,.good ⟨21961,21962,.topPrime 21961⟩]⟩,
    ⟨(22001,22010),[.good ⟨22001,22007,.topPrime 21997⟩,.good ⟨22008,22010,.topPrime 22003⟩]⟩,
    ⟨(22148,22154),[.good ⟨22148,22154,.topPrime 22147⟩]⟩,
    ⟨(22197,22204),[.good ⟨22197,22203,.topPrime 22193⟩,.good ⟨22204,22204,.largeDivisor 203610730513690397670512895442235689⟩]⟩,
    ⟨(22250,22256),[.good ⟨22250,22256,.topPrime 22247⟩]⟩,
    ⟨(22275,22282),[.good ⟨22275,22282,.topPrime 22273⟩]⟩,
    ⟨(22344,22346),[.good ⟨22344,22346,.topPrime 22343⟩]⟩,
    ⟨(22400,22403),[.good ⟨22400,22403,.topPrime 22397⟩]⟩,
    ⟨(22442,22447),[.good ⟨22442,22447,.topPrime 22441⟩]⟩,
    ⟨(22500,22501),[.good ⟨22500,22500,.largeDivisor 1413286996536987482849972204690207⟩,.good ⟨22501,22501,.topPrime 22501⟩]⟩,
    ⟨(22528,22528),[.good ⟨22528,22528,.largeDivisor 3264749202676099712087472964562971⟩]⟩,
    ⟨(22592,22602),[.good ⟨22592,22592,.largeDivisor 6236088237333625640101038518967564491⟩,.good ⟨22593,22593,.largeDivisor 29115920964265055607936094907839261117⟩,.good ⟨22594,22594,.largeDivisor 14565051549098983005041582791208437003⟩,.good ⟨22595,22595,.largeDivisor 69946299628457283953010534148215650177⟩,.good ⟨22596,22596,.largeDivisor 4165498029677885628372776994879346889⟩,.good ⟨22597,22597,.largeDivisor 8335053482390080717642755844619552081⟩,.good ⟨22598,22598,.largeDivisor 12508669052666426089606255583524547611⟩,.good ⟨22599,22599,.largeDivisor 68668096446371384589657149475697003⟩,.good ⟨22600,22600,.largeDivisor 16831876135444612708527674383413799⟩,.good ⟨22601,22601,.largeDivisor 1515606504132205943527625373464283949⟩,.good ⟨22602,22602,.largeDivisor 252724080433182231387214589077064213⟩]⟩,
    ⟨(22687,22690),[.good ⟨22687,22689,.topPrime 22679⟩,.good ⟨22690,22690,.largeDivisor 32297564454728018241878532771973691⟩]⟩,
    ⟨(22785,22794),[.good ⟨22785,22793,.topPrime 22783⟩,.good ⟨22794,22794,.topPrime 22787⟩]⟩,
    ⟨(22842,22844),[.good ⟨22842,22842,.largeDivisor 115864787834009576848793259680507273⟩,.good ⟨22843,22843,.largeDivisor 1854729746665929056732294625705555457⟩,.good ⟨22844,22844,.largeDivisor 4175152378087946725659493341507460471⟩]⟩,
    ⟨(22848,22852),[.good ⟨22848,22848,.largeDivisor 610050434370743009327956203706082321⟩,.good ⟨22849,22849,.largeDivisor 1220688534454602593934186119492098691⟩,.good ⟨22850,22850,.largeDivisor 73276587448542412377239334901863799⟩,.good ⟨22851,22851,.largeDivisor 325830570108317311779002926997954791⟩,.good ⟨22852,22852,.largeDivisor 570478102062156543730751983432214441⟩]⟩,
    ⟨(22883,22885),[.good ⟨22883,22885,.topPrime 22877⟩]⟩,
    ⟨(22932,22933),[.good ⟨22932,22932,.largeDivisor 145185313610513014849056226305240271⟩,.good ⟨22933,22933,.largeDivisor 290509972692600555757211974335404863⟩]⟩,
    ⟨(22981,22986),[.good ⟨22981,22983,.topPrime 22973⟩,.good ⟨22984,22984,.largeDivisor 23922138775365170484680920898325331⟩,.good ⟨22985,22985,.largeDivisor 201042179068288279192099073801830981⟩,.good ⟨22986,22986,.largeDivisor 279358936529057815591197516044546423⟩]⟩,
    ⟨(23004,23010),[.good ⟨23004,23010,.topPrime 23003⟩]⟩,
    ⟨(23040,23040),[.good ⟨23040,23040,.topPrime 23039⟩]⟩,
    ⟨(23085,23089),[.good ⟨23085,23089,.topPrime 23081⟩]⟩,
    ⟨(23128,23135),[.good ⟨23128,23128,.largeDivisor 86095980807635003953878506261115971⟩,.good ⟨23129,23129,.largeDivisor 516821681832283936270245515523838903⟩,.good ⟨23130,23130,.largeDivisor 5745195390410353891667161100810009⟩,.good ⟨23131,23135,.topPrime 23131⟩]⟩,
    ⟨(23168,23178),[.good ⟨23168,23177,.topPrime 23167⟩,.good ⟨23178,23178,.topPrime 23173⟩]⟩,
    ⟨(23232,23236),[.good ⟨23232,23236,.topPrime 23227⟩]⟩,
    ⟨(23250,23257),[.good ⟨23250,23250,.largeDivisor 70954099658871885945901893690663649⟩,.good ⟨23251,23257,.topPrime 23251⟩]⟩,
    ⟨(23328,23334),[.good ⟨23328,23334,.topPrime 23327⟩]⟩,
    ⟨(23375,23383),[.good ⟨23375,23381,.topPrime 23371⟩,.good ⟨23382,23382,.largeDivisor 107877517459389963444325057348529813⟩,.good ⟨23383,23383,.largeDivisor 431713159464815251620512205370643953⟩]⟩,
    ⟨(23424,23432),[.good ⟨23424,23427,.topPrime 23417⟩,.good ⟨23428,23428,.largeDivisor 1446843018825610343515695451775896871⟩,.good ⟨23429,23429,.largeDivisor 3722201063804241214255982073092949137⟩,.good ⟨23430,23430,.largeDivisor 124131646561813586760063281911507463⟩,.good ⟨23431,23432,.topPrime 23431⟩]⟩,
    ⟨(23490,23498),[.good ⟨23490,23490,.largeDivisor 1158525109990580293830032152291730837⟩,.good ⟨23491,23491,.largeDivisor 46362714410202251588349719402870611741⟩,.good ⟨23492,23492,.largeDivisor 14909282249965384853440174234959158011⟩,.good ⟨23493,23493,.largeDivisor 9944177608336507008541862229279036401⟩,.good ⟨23494,23494,.largeDivisor 4974417849726565934051920777044706409⟩,.good ⟨23495,23495,.largeDivisor 11944194928904002720546742836654611863⟩,.good ⟨23496,23496,.largeDivisor 17426776207745184297191149384627220587⟩,.good ⟨23497,23498,.topPrime 23497⟩]⟩,
    ⟨(23500,23500),[.good ⟨23500,23500,.topPrime 23497⟩]⟩,
    ⟨(23571,23579),[.good ⟨23571,23577,.topPrime 23567⟩,.good ⟨23578,23578,.largeDivisor 98545448699655435602843861473436417⟩,.good ⟨23579,23579,.largeDivisor 4732389276760031600976487596094006673⟩]⟩,
    ⟨(23618,23628),[.good ⟨23618,23619,.topPrime 23609⟩,.good ⟨23620,23620,.largeDivisor 1356670466083401992731873037205075013⟩,.good ⟨23621,23621,.largeDivisor 40719076339715423723404794170039487779⟩,.good ⟨23622,23622,.largeDivisor 47527721182763007174338771019106274351⟩,.good ⟨23623,23628,.topPrime 23623⟩]⟩,
    ⟨(23750,23754),[.good ⟨23750,23754,.topPrime 23747⟩]⟩,
    ⟨(23814,23824),[.good ⟨23814,23823,.topPrime 23813⟩,.good ⟨23824,23824,.topPrime 23819⟩]⟩,
    ⟨(23872,23873),[.good ⟨23872,23873,.topPrime 23869⟩]⟩,
    ⟨(23875,23882),[.good ⟨23875,23882,.topPrime 23873⟩]⟩,
    ⟨(24000,24010),[.good ⟨24000,24003,.topPrime 23993⟩,.good ⟨24004,24010,.topPrime 24001⟩]⟩,
    ⟨(24059,24069),[.good ⟨24059,24059,.topPrime 24049⟩,.good ⟨24060,24060,.largeDivisor 10944088742565354898758886882518533⟩,.good ⟨24061,24069,.topPrime 24061⟩]⟩,
    ⟨(24128,24135),[.good ⟨24128,24131,.topPrime 24121⟩,.good ⟨24132,24132,.largeDivisor 2404758815817468597386865639154513279⟩,.good ⟨24133,24135,.topPrime 24133⟩]⟩,
    ⟨(24138,24138),[.good ⟨24138,24138,.topPrime 24137⟩]⟩,
    ⟨(24255,24265),[.good ⟨24255,24261,.topPrime 24251⟩,.good ⟨24262,24262,.largeDivisor 9111395499912500246526052641659682803⟩,.good ⟨24263,24263,.largeDivisor 109386337958622955705819700764269611009⟩,.good ⟨24264,24264,.largeDivisor 1519943755084151901738392741415860261⟩,.good ⟨24265,24265,.largeDivisor 608253240160253086429984330344781879⟩]⟩,
    ⟨(24304,24310),[.good ⟨24304,24304,.largeDivisor 137576915081067814118594010236483599⟩,.good ⟨24305,24305,.largeDivisor 165167049693522016406640030565459811⟩,.good ⟨24306,24306,.largeDivisor 137701526715056120284687953039859579⟩,.good ⟨24307,24307,.largeDivisor 1102110968015432701929506116081615669⟩,.good ⟨24308,24308,.largeDivisor 5788702119818309878673819072971459309⟩,.good ⟨24309,24309,.largeDivisor 1286960607920755204732733995892329541⟩,.good ⟨24310,24310,.largeDivisor 128754320665679900518757000041740529⟩]⟩,
    ⟨(24381,24391),[.good ⟨24381,24389,.topPrime 24379⟩,.good ⟨24390,24390,.largeDivisor 500600823214482736023392650033373317⟩,.good ⟨24391,24391,.topPrime 24391⟩]⟩,
    ⟨(24451,24458),[.good ⟨24451,24453,.topPrime 24443⟩,.good ⟨24454,24454,.largeDivisor 331228562774203860161464160565836441⟩,.good ⟨24455,24455,.largeDivisor 16701431964212691546904342364201093123⟩,.good ⟨24456,24456,.largeDivisor 3481030716206326996583253194747579033⟩,.good ⟨24457,24457,.largeDivisor 6965194160701803105247207999995217247⟩,.good ⟨24458,24458,.largeDivisor 1493213179377353052505445131426143641⟩]⟩,
    ⟨(24500,24510),[.good ⟨24500,24509,.topPrime 24499⟩,.good ⟨24510,24510,.topPrime 24509⟩]⟩,
    ⟨(24625,24634),[.good ⟨24625,24633,.topPrime 24623⟩,.good ⟨24634,24634,.topPrime 24631⟩]⟩,
    ⟨(24704,24714),[.good ⟨24704,24707,.topPrime 24697⟩,.good ⟨24708,24708,.largeDivisor 6061459147116036992148607373419590589⟩,.good ⟨24709,24714,.topPrime 24709⟩]⟩,
    ⟨(24875,24877),[.good ⟨24875,24875,.largeDivisor 50133192193353366493794640175310079001⟩,.good ⟨24876,24876,.largeDivisor 6966023689042263472192257462525490567⟩,.good ⟨24877,24877,.topPrime 24877⟩]⟩,
    ⟨(25029,25034),[.good ⟨25029,25029,.largeDivisor 3105074526808566569359392250767034891⟩,.good ⟨25030,25030,.largeDivisor 310643972205197734645931444249166167⟩,.good ⟨25031,25034,.topPrime 25031⟩]⟩,
    ⟨(25039,25039),[.good ⟨25039,25039,.topPrime 25037⟩]⟩,
    ⟨(25280,25282),[.good ⟨25280,25280,.largeDivisor 222774390759376225768784738464659797⟩,.good ⟨25281,25281,.largeDivisor 1733443943609661546217496759964624293⟩,.good ⟨25282,25282,.largeDivisor 867099239886420466373921749939172003⟩]⟩,
    ⟨(25353,25354),[.good ⟨25353,25354,.topPrime 25349⟩]⟩,
    ⟨(25382,25385),[.good ⟨25382,25383,.topPrime 25373⟩,.good ⟨25384,25384,.largeDivisor 28538897492283388874369080832994589⟩,.good ⟨25385,25385,.largeDivisor 34261523425945321663554462849163757⟩]⟩,
    ⟨(25600,25606),[.good ⟨25600,25600,.largeDivisor 15990017857671301015884842447810399⟩,.good ⟨25601,25606,.topPrime 25601⟩]⟩,
    ⟨(25728,25735),[.good ⟨25728,25728,.largeDivisor 124104260805665617928767745345012707⟩,.good ⟨25729,25729,.largeDivisor 1738202790565580121768788960251405519⟩,.good ⟨25730,25730,.largeDivisor 521683865639243864844406158255787519⟩,.good ⟨25731,25731,.largeDivisor 773195527144944639497230278099168749⟩,.good ⟨25732,25732,.largeDivisor 27625935595280281625829268907629411⟩,.good ⟨25733,25735,.topPrime 25733⟩]⟩,
    ⟨(25758,25760),[.good ⟨25758,25758,.largeDivisor 3406779918877205140742602006335184427⟩,.good ⟨25759,25760,.topPrime 25759⟩]⟩,
    ⟨(25920,25930),[.good ⟨25920,25929,.topPrime 25919⟩,.good ⟨25930,25930,.largeDivisor 14026508542040483327677279587660319⟩]⟩,
    ⟨(26001,26010),[.good ⟨26001,26009,.topPrime 25999⟩,.good ⟨26010,26010,.topPrime 26003⟩]⟩,
    ⟨(26244,26254),[.good ⟨26244,26247,.topPrime 26237⟩,.good ⟨26248,26248,.largeDivisor 363859551106144185118241070732340633⟩,.good ⟨26249,26254,.topPrime 26249⟩]⟩,
    ⟨(26375,26378),[.good ⟨26375,26378,.topPrime 26371⟩]⟩,
    ⟨(26411,26416),[.good ⟨26411,26416,.topPrime 26407⟩]⟩,
    ⟨(26496,26497),[.good ⟨26496,26497,.topPrime 26489⟩]⟩,
    ⟨(26500,26506),[.good ⟨26500,26506,.topPrime 26497⟩]⟩,
    ⟨(26568,26570),[.good ⟨26568,26570,.topPrime 26561⟩]⟩,
    ⟨(26625,26634),[.good ⟨26625,26625,.largeDivisor 103438051668642572662733705844261313⟩,.good ⟨26626,26626,.largeDivisor 258702006737673975175460046196628003⟩,.good ⟨26627,26634,.topPrime 26627⟩]⟩,
    ⟨(26752,26762),[.good ⟨26752,26752,.largeDivisor 13079732745630123620577867014632241129⟩,.good ⟨26753,26753,.largeDivisor 78510677618093492757756265703939050241⟩,.good ⟨26754,26754,.largeDivisor 38164708859709658821030978355128731⟩,.good ⟨26755,26755,.largeDivisor 61088650047354587003092062572029267⟩,.good ⟨26756,26756,.largeDivisor 229176657412649934079463155661415461⟩,.good ⟨26757,26757,.largeDivisor 16983030546319904634169444945820887⟩,.good ⟨26758,26758,.largeDivisor 59465052520076944281746402494147513⟩,.good ⟨26759,26762,.topPrime 26759⟩]⟩,
    ⟨(26816,26821),[.good ⟨26816,26821,.topPrime 26813⟩]⟩,
    ⟨(26880,26885),[.good ⟨26880,26885,.topPrime 26879⟩]⟩,
    ⟨(27008,27010),[.good ⟨27008,27008,.largeDivisor 296421101491466804567799990698645099⟩,.good ⟨27009,27009,.largeDivisor 65898194353351498667158142979971401⟩,.good ⟨27010,27010,.largeDivisor 323032709525231212159698991268426051⟩]⟩,
    ⟨(27135,27145),[.good ⟨27135,27137,.topPrime 27127⟩,.good ⟨27138,27138,.largeDivisor 10633751019385508939569858302381324097⟩,.good ⟨27139,27139,.largeDivisor 12157786110928227118464270315049364059⟩,.good ⟨27140,27140,.largeDivisor 1824407359563154285055403606935971141⟩,.good ⟨27141,27141,.largeDivisor 6083823583475067016917153126409779179⟩,.good ⟨27142,27142,.largeDivisor 3043145105279574453082550775073057139⟩,.good ⟨27143,27145,.topPrime 27143⟩]⟩,
    ⟨(27378,27385),[.good ⟨27378,27378,.largeDivisor 714081154084453910903190473855603257⟩,.good ⟨27379,27379,.largeDivisor 5714945313556931782115887747352400343⟩,.good ⟨27380,27380,.largeDivisor 2572759005017901877578642001356605087⟩,.good ⟨27381,27381,.largeDivisor 60055169920200487050282009070030011839⟩,.good ⟨27382,27382,.largeDivisor 30039652602296769142720798881216648719⟩,.good ⟨27383,27383,.largeDivisor 360620695838970815184183970085206265617⟩,.good ⟨27384,27384,.largeDivisor 2147414365314442804041281084422190527⟩,.good ⟨27385,27385,.largeDivisor 859310913920304174598823445560045117⟩]⟩,
    ⟨(27459,27466),[.good ⟨27459,27466,.topPrime 27457⟩]⟩,
    ⟨(27625,27631),[.good ⟨27625,27627,.topPrime 27617⟩,.good ⟨27628,27628,.largeDivisor 66291792778570970387273997245539578317⟩,.good ⟨27629,27629,.largeDivisor 56844168172283210975140227488191335133⟩,.good ⟨27630,27630,.largeDivisor 631853420793328714630075304640817549⟩,.good ⟨27631,27631,.topPrime 27631⟩]⟩,
    ⟨(27712,27712),[.good ⟨27712,27712,.largeDivisor 3966626421167429838826019115002503747⟩]⟩,
    ⟨(27783,27793),[.good ⟨27783,27789,.topPrime 27779⟩,.good ⟨27790,27790,.largeDivisor 1030554071628987814791251895427370027⟩,.good ⟨27791,27793,.topPrime 27791⟩]⟩,
    ⟨(28032,28036),[.good ⟨28032,28036,.topPrime 28031⟩]⟩,
    ⟨(28126,28135),[.good ⟨28126,28133,.topPrime 28123⟩,.good ⟨28134,28134,.largeDivisor 2359845612450843210986240750801753⟩,.good ⟨28135,28135,.largeDivisor 1888614885686373879706951600734101⟩]⟩,
    ⟨(28352,28360),[.good ⟨28352,28360,.topPrime 28351⟩]⟩,
    ⟨(28674,28682),[.good ⟨28674,28679,.topPrime 28669⟩,.good ⟨28680,28680,.largeDivisor 4650492300596886717927484458391607⟩,.good ⟨28681,28681,.largeDivisor 46522765843536556664415131409532501⟩,.good ⟨28682,28682,.largeDivisor 69810922356613765734474981641111813⟩]⟩,
    ⟨(28755,28760),[.good ⟨28755,28760,.topPrime 28753⟩]⟩,
    ⟨(28998,29008),[.good ⟨28998,28998,.largeDivisor 117607215417800949678345093823762314439⟩,.good ⟨28999,28999,.largeDivisor 470607374072141539909249258423524680063⟩,.good ⟨29000,29000,.largeDivisor 4237073532471935627869676651438129687⟩,.good ⟨29001,29001,.largeDivisor 2018419644133750638871343034024165953⟩,.good ⟨29002,29002,.largeDivisor 1009592744630523887215803019433080283⟩,.good ⟨29003,29003,.largeDivisor 193915353460391286761059172004090247999⟩,.good ⟨29004,29004,.largeDivisor 16165743776558677615337495903627983631⟩,.good ⟨29005,29005,.largeDivisor 45281255262103760910947761340872010161⟩,.good ⟨29006,29006,.largeDivisor 339738254043606230983691351643386840851⟩,.good ⟨29007,29007,.largeDivisor 151052061357779401636148051641141645477⟩,.good ⟨29008,29008,.largeDivisor 192741534304853531763198879564170117⟩]⟩,
    ⟨(29125,29130),[.good ⟨29125,29130,.topPrime 29123⟩]⟩,
    ⟨(29160,29165),[.good ⟨29160,29163,.topPrime 29153⟩,.good ⟨29164,29164,.largeDivisor 973604906114237607069470732804879339⟩,.good ⟨29165,29165,.largeDivisor 1168766704540923639027829344402317593⟩]⟩,
    ⟨(29248,29258),[.good ⟨29248,29253,.topPrime 29243⟩,.good ⟨29254,29258,.topPrime 29251⟩]⟩,
    ⟨(29322,29322),[.good ⟨29322,29322,.largeDivisor 33224929097361493966843432501893283439⟩]⟩,
    ⟨(29376,29385),[.good ⟨29376,29376,.largeDivisor 1627408459598241878579123996675494583⟩,.good ⟨29377,29377,.largeDivisor 3256036117797286090514126925719267477⟩,.good ⟨29378,29378,.largeDivisor 14657650792008683844180818391630499531⟩,.good ⟨29379,29379,.largeDivisor 5585958446750244810135920710948261739⟩,.good ⟨29380,29380,.largeDivisor 279402531862716116520469458421566839⟩,.good ⟨29381,29381,.largeDivisor 8385215310172075811530044083640505921⟩,.good ⟨29382,29382,.largeDivisor 1398059288887428254028212382199705747⟩,.good ⟨29383,29385,.topPrime 29383⟩]⟩,
    ⟨(29500,29510),[.good ⟨29500,29500,.largeDivisor 715634519243395034961579222901934861⟩,.good ⟨29501,29510,.topPrime 29501⟩]⟩,
    ⟨(29568,29575),[.good ⟨29568,29575,.topPrime 29567⟩]⟩,
    ⟨(29632,29635),[.good ⟨29632,29635,.topPrime 29629⟩]⟩,
    ⟨(29760,29760),[.good ⟨29760,29760,.topPrime 29759⟩]⟩,
    ⟨(29889,29898),[.good ⟨29889,29891,.topPrime 29881⟩,.good ⟨29892,29892,.largeDivisor 1117371223906278916026302821515787099⟩,.good ⟨29893,29893,.largeDivisor 2235565089099149697930143246340367027⟩,.good ⟨29894,29894,.largeDivisor 23482074059567807824990759735101522103⟩,.good ⟨29895,29895,.largeDivisor 6264191353328689732995125706338821249⟩,.good ⟨29896,29896,.largeDivisor 3916560663776027025632053666486226369⟩,.good ⟨29897,29897,.largeDivisor 3358287611922788883050492111937898579⟩,.good ⟨29898,29898,.largeDivisor 186640202208443548524337250240199737⟩]⟩,
    ⟨(30132,30135),[.good ⟨30132,30132,.largeDivisor 9565831979801711288473403456856835699⟩,.good ⟨30133,30135,.topPrime 30133⟩]⟩,
    ⟨(30213,30218),[.good ⟨30213,30218,.topPrime 30211⟩]⟩,
    ⟨(30375,30385),[.good ⟨30375,30377,.topPrime 30367⟩,.good ⟨30378,30378,.largeDivisor 7845738732422133536662381329607100539⟩,.good ⟨30379,30379,.largeDivisor 251154580560855631939163838158202431269⟩,.good ⟨30380,30380,.largeDivisor 769119035600763073210913660269117393⟩,.good ⟨30381,30381,.largeDivisor 2564658700536360764704287993923395403⟩,.good ⟨30382,30382,.largeDivisor 1282793794074869328524672843030861663⟩,.good ⟨30383,30383,.largeDivisor 15399100689599666064229606870725669659⟩,.good ⟨30384,30384,.largeDivisor 748838498618467282680905058705488891⟩,.good ⟨30385,30385,.largeDivisor 299643876743558680243093437924096661⟩]⟩,
    ⟨(30464,30466),[.good ⟨30464,30464,.largeDivisor 32518895872688296091484364340507026843⟩,.good ⟨30465,30465,.largeDivisor 1445806298404805703942662025252725893⟩,.good ⟨30466,30466,.largeDivisor 3615821268034871989518727734472955759⟩]⟩,
    ⟨(30528,30538),[.good ⟨30528,30528,.largeDivisor 543321676401741815636112716538237517⟩,.good ⟨30529,30538,.topPrime 30529⟩]⟩,
    ⟨(30625,30628),[.good ⟨30625,30625,.largeDivisor 1555885731770662459012944355621169⟩,.good ⟨30626,30626,.largeDivisor 11673335722980967288028033766598217⟩,.good ⟨30627,30627,.largeDivisor 10380026513013909506443532507900113⟩,.good ⟨30628,30628,.largeDivisor 2595938955813682107679985903680673⟩]⟩,
    ⟨(30784,30790),[.good ⟨30784,30790,.topPrime 30781⟩]⟩,
    ⟨(30870,30871),[.good ⟨30870,30871,.topPrime 30869⟩]⟩,
    ⟨(30875,30880),[.good ⟨30875,30880,.topPrime 30871⟩]⟩,
    ⟨(31104,31114),[.good ⟨31104,31104,.largeDivisor 605578764394456282395269405242819249⟩,.good ⟨31105,31105,.largeDivisor 1696220393200320816200347127427095249⟩,.good ⟨31106,31106,.largeDivisor 38178459877633270122089723405026935467⟩,.good ⟨31107,31107,.largeDivisor 101845240666627058887560674552797605829⟩,.good ⟨31108,31108,.largeDivisor 3638616663363754137829369695731361227⟩,.good ⟨31109,31109,.largeDivisor 21839422299938843811254845044280709321⟩,.good ⟨31110,31110,.largeDivisor 728238236761200714887014833625489423⟩,.good ⟨31111,31111,.largeDivisor 72849581298642171835530284530297753823⟩,.good ⟨31112,31112,.largeDivisor 191297786408115736845629491248026984887⟩,.good ⟨31113,31113,.largeDivisor 42525654145254716884788190550088694409⟩,.good ⟨31114,31114,.largeDivisor 21270346961313301950829498131618487571⟩]⟩,
    ⟨(31428,31434),[.good ⟨31428,31428,.largeDivisor 57011616592713148841987665585100000501⟩,.good ⟨31429,31429,.largeDivisor 114063154745202212423122435653071991581⟩,.good ⟨31430,31430,.largeDivisor 14670397158577998676018898197716792959⟩,.good ⟨31431,31431,.largeDivisor 97836887988810752468905153671215047633⟩,.good ⟨31432,31432,.largeDivisor 12233892393877898426222219177435597917⟩,.good ⟨31433,31433,.largeDivisor 73429050910208894640336646057730217553⟩,.good ⟨31434,31434,.largeDivisor 85697214907236444424309130919235600303⟩]⟩,
    ⟨(31509,31510),[.good ⟨31509,31509,.largeDivisor 1915075259426073768741182017228404859⟩,.good ⟨31510,31510,.largeDivisor 191574403709691051947790867528705791⟩]⟩,
    ⟨(31556,31562),[.good ⟨31556,31557,.topPrime 31547⟩,.good ⟨31558,31558,.largeDivisor 4696303250404697133909815597712532231⟩,.good ⟨31559,31559,.largeDivisor 56375288809251364339695652509779309501⟩,.good ⟨31560,31560,.largeDivisor 3289705115782806483545586112729522609⟩,.good ⟨31561,31561,.largeDivisor 164542604055817995922634300006111668879⟩,.good ⟨31562,31562,.largeDivisor 246899955748299305282408661062703075647⟩]⟩,
    ⟨(31625,31626),[.good ⟨31625,31625,.largeDivisor 32977181757378380408763303593545818569⟩,.good ⟨31626,31626,.largeDivisor 1309073639269646288565489356631345953⟩]⟩,
    ⟨(31680,31681),[.good ⟨31680,31680,.largeDivisor 6224752893279194057108869654388986621⟩,.good ⟨31681,31681,.largeDivisor 62269149482784384882622702722038991203⟩]⟩,
    ⟨(31750,31760),[.good ⟨31750,31751,.topPrime 31741⟩,.good ⟨31752,31760,.topPrime 31751⟩]⟩,
    ⟨(31875,31882),[.good ⟨31875,31882,.topPrime 31873⟩]⟩,
    ⟨(32000,32010),[.good ⟨32000,32001,.topPrime 31991⟩,.good ⟨32002,32002,.largeDivisor 745425687975149029334352226120777991⟩,.good ⟨32003,32010,.topPrime 32003⟩]⟩,
    ⟨(32128,32135),[.good ⟨32128,32129,.topPrime 32119⟩,.good ⟨32130,32130,.largeDivisor 311556611450822608097173767060664957⟩,.good ⟨32131,32131,.largeDivisor 12466532356819901893860884569646607389⟩,.good ⟨32132,32132,.largeDivisor 28059303564677576888031517441292013773⟩,.good ⟨32133,32133,.largeDivisor 18712608211273365671359540708155081223⟩,.good ⟨32134,32134,.largeDivisor 65516556140886721778542981163200629769⟩,.good ⟨32135,32135,.largeDivisor 157293577257183026100371961126593368519⟩]⟩,
    ⟨(32242,32248),[.good ⟨32242,32247,.topPrime 32237⟩,.good ⟨32248,32248,.largeDivisor 15446605443684240884069687273705293147⟩]⟩,
    ⟨(32250,32252),[.good ⟨32250,32250,.largeDivisor 476963430789496320489367822799641727⟩,.good ⟨32251,32252,.topPrime 32251⟩]⟩,
    ⟨(32256,32260),[.good ⟨32256,32260,.topPrime 32251⟩]⟩,
    ⟨(32384,32385),[.good ⟨32384,32385,.topPrime 32381⟩]⟩,
    ⟨(32643,32650),[.good ⟨32643,32643,.topPrime 32633⟩,.good ⟨32644,32644,.largeDivisor 4416604125771624551306405352074678677⟩,.good ⟨32645,32645,.largeDivisor 779351576680079370148095149829610191409⟩,.good ⟨32646,32646,.largeDivisor 649678555035439229810906344449656664847⟩,.good ⟨32647,32650,.topPrime 32647⟩]⟩,
    ⟨(32896,32896),[.good ⟨32896,32896,.topPrime 32887⟩]⟩,
    ⟨(33129,33135),[.good ⟨33129,33129,.topPrime 33119⟩,.good ⟨33130,33130,.largeDivisor 116398118969146476449323446080526179⟩,.good ⟨33131,33131,.largeDivisor 23952708568737837958028168273875235009⟩,.good ⟨33132,33132,.largeDivisor 1996721969695515552130544748170934569⟩,.good ⟨33133,33133,.largeDivisor 3994770184283649344166495932682058757⟩,.good ⟨33134,33134,.largeDivisor 5994145244364388976071582113644023859⟩,.good ⟨33135,33135,.largeDivisor 78349507957401983716817307035737566299⟩]⟩,
    ⟨(33280,33281),[.good ⟨33280,33280,.largeDivisor 105321642075401383211747455363245599⟩,.good ⟨33281,33281,.largeDivisor 3160693931389930960027202039625046691⟩]⟩,
    ⟨(33375,33382),[.good ⟨33375,33375,.largeDivisor 60588571960816503451881338055354989723⟩,.good ⟨33376,33376,.largeDivisor 1352869357434685900544031076014969799⟩,.good ⟨33377,33382,.topPrime 33377⟩]⟩,
    ⟨(33536,33544),[.good ⟨33536,33543,.topPrime 33533⟩,.good ⟨33544,33544,.largeDivisor 1158323671954361363652953904845386499⟩]⟩,
    ⟨(33615,33625),[.good ⟨33615,33623,.topPrime 33613⟩,.good ⟨33624,33625,.topPrime 33623⟩]⟩,
    ⟨(34182,34186),[.good ⟨34182,34182,.largeDivisor 10260878540832369261974151396855585059⟩,.good ⟨34183,34186,.topPrime 34183⟩]⟩,
    ⟨(34304,34310),[.good ⟨34304,34310,.topPrime 34303⟩]⟩,
    ⟨(34432,34435),[.good ⟨34432,34435,.topPrime 34429⟩]⟩,
    ⟨(34506,34510),[.good ⟨34506,34510,.topPrime 34501⟩]⟩,
    ⟨(34750,34759),[.good ⟨34750,34757,.topPrime 34747⟩,.good ⟨34758,34759,.topPrime 34757⟩]⟩,
    ⟨(34992,34996),[.good ⟨34992,34992,.largeDivisor 1404925100791951267980395354505403997⟩,.good ⟨34993,34993,.largeDivisor 401533393108396569014578719179721833⟩,.good ⟨34994,34994,.largeDivisor 1807468427892362945214325662332799823⟩,.good ⟨34995,34995,.largeDivisor 964286266241226332308488856671031783⟩,.good ⟨34996,34996,.largeDivisor 1205736821972915418231666286553502511⟩]⟩,
    ⟨(35000,35002),[.good ⟨35000,35000,.largeDivisor 141973054194324980064950237539068931⟩,.good ⟨35001,35001,.largeDivisor 157797430054795612309971841608870841⟩,.good ⟨35002,35002,.largeDivisor 78923518144350776229225149324021851⟩]⟩,
    ⟨(35073,35082),[.good ⟨35073,35079,.topPrime 35069⟩,.good ⟨35080,35080,.largeDivisor 2047278667302038108517146248928724139⟩,.good ⟨35081,35082,.topPrime 35081⟩]⟩,
    ⟨(35329,35338),[.good ⟨35329,35337,.topPrime 35327⟩,.good ⟨35338,35338,.largeDivisor 5095004531236196284284884118477207971⟩]⟩,
    ⟨(35721,35722),[.good ⟨35721,35721,.largeDivisor 1322000556990887903083041808049990999⟩,.good ⟨35722,35722,.largeDivisor 661203885313047767829694204407070349⟩]⟩,
    ⟨(35883,35885),[.good ⟨35883,35885,.topPrime 35879⟩]⟩,
    ⟨(35968,35974),[.good ⟨35968,35973,.topPrime 35963⟩,.good ⟨35974,35974,.topPrime 35969⟩]⟩,
    ⟨(36126,36135),[.good ⟨36126,36126,.largeDivisor 422392950278364656356652274420023191537⟩,.good ⟨36127,36127,.largeDivisor 241440914429797318801271723145612990533⟩,.good ⟨36128,36128,.largeDivisor 67925938796720950143691945036480704289⟩,.good ⟨36129,36129,.largeDivisor 45297750757456692097042034114532206753⟩,.good ⟨36130,36130,.largeDivisor 4531154613546638294155786961316893131⟩,.good ⟨36131,36135,.topPrime 36131⟩]⟩,
    ⟨(36358,36362),[.good ⟨36358,36362,.topPrime 36353⟩]⟩,
    ⟨(36375,36379),[.good ⟨36375,36379,.topPrime 36373⟩]⟩,
    ⟨(36612,36618),[.good ⟨36612,36617,.topPrime 36607⟩,.good ⟨36618,36618,.largeDivisor 82059896780647190920045438168417725361⟩]⟩,
    ⟨(36701,36703),[.good ⟨36701,36703,.topPrime 36697⟩]⟩,
    ⟨(36864,36865),[.good ⟨36864,36865,.topPrime 36857⟩]⟩,
    ⟨(37000,37002),[.good ⟨37000,37002,.topPrime 36997⟩]⟩,
    ⟨(37125,37130),[.good ⟨37125,37130,.topPrime 37123⟩]⟩,
    ⟨(37250,37258),[.good ⟨37250,37253,.topPrime 37243⟩,.good ⟨37254,37258,.topPrime 37253⟩]⟩,
    ⟨(37260,37260),[.good ⟨37260,37260,.topPrime 37253⟩]⟩,
    ⟨(37376,37385),[.good ⟨37376,37379,.topPrime 37369⟩,.good ⟨37380,37385,.topPrime 37379⟩]⟩,
    ⟨(37503,37513),[.good ⟨37503,37511,.topPrime 37501⟩,.good ⟨37512,37513,.topPrime 37511⟩]⟩,
    ⟨(37632,37635),[.good ⟨37632,37632,.largeDivisor 5699575144427674899231747102914421563⟩,.good ⟨37633,37635,.topPrime 37633⟩]⟩,
    ⟨(37750,37756),[.good ⟨37750,37756,.topPrime 37747⟩]⟩,
    ⟨(37760,37760),[.good ⟨37760,37760,.largeDivisor 49698749712273319182557561478657017167⟩]⟩,
    ⟨(38073,38080),[.good ⟨38073,38079,.topPrime 38069⟩,.good ⟨38080,38080,.largeDivisor 137399191118462504034068826012717343⟩]⟩,
    ⟨(38151,38154),[.good ⟨38151,38154,.topPrime 38149⟩]⟩,
    ⟨(38400,38404),[.good ⟨38400,38403,.topPrime 38393⟩,.good ⟨38404,38404,.largeDivisor 3079279010246539043750338985296235873⟩]⟩,
    ⟨(38759,38760),[.good ⟨38759,38759,.topPrime 38749⟩,.good ⟨38760,38760,.largeDivisor 360582004863201876597362279594647189⟩]⟩,
    ⟨(38880,38885),[.good ⟨38880,38883,.topPrime 38873⟩,.good ⟨38884,38884,.largeDivisor 237227592689687306888862582577163981597⟩,.good ⟨38885,38885,.largeDivisor 40679094841525327666850799389292974773⟩]⟩,
    ⟨(39042,39050),[.good ⟨39042,39050,.topPrime 39041⟩]⟩,
    ⟨(39125,39133),[.good ⟨39125,39129,.topPrime 39119⟩,.good ⟨39130,39130,.largeDivisor 7264890418368218577523442899542658843⟩,.good ⟨39131,39131,.largeDivisor 1744063969086912645135397816576710326291⟩,.good ⟨39132,39132,.largeDivisor 48459843419070934926565717303210146077⟩,.good ⟨39133,39133,.topPrime 39133⟩]⟩,
    ⟨(39375,39376),[.good ⟨39375,39376,.topPrime 39373⟩]⟩,
    ⟨(39447,39455),[.good ⟨39447,39453,.topPrime 39443⟩,.good ⟨39454,39455,.topPrime 39451⟩]⟩,
    ⟨(39690,39690),[.good ⟨39690,39690,.largeDivisor 1896022249051167010086554893614525277⟩]⟩,
    ⟨(39936,39943),[.good ⟨39936,39939,.topPrime 39929⟩,.good ⟨39940,39943,.topPrime 39937⟩]⟩,
    ⟨(40131,40135),[.good ⟨40131,40135,.topPrime 40129⟩]⟩,
    ⟨(40257,40260),[.good ⟨40257,40260,.topPrime 40253⟩]⟩,
    ⟨(40500,40510),[.good ⟨40500,40509,.topPrime 40499⟩,.good ⟨40510,40510,.topPrime 40507⟩]⟩,
    ⟨(40581,40586),[.good ⟨40581,40586,.topPrime 40577⟩]⟩,
    ⟨(40824,40827),[.good ⟨40824,40827,.topPrime 40823⟩]⟩,
    ⟨(40832,40834),[.good ⟨40832,40834,.topPrime 40829⟩]⟩,
    ⟨(41503,41510),[.good ⟨41503,41503,.largeDivisor 204017048245313927155554621470462835101⟩,.good ⟨41504,41504,.largeDivisor 19131668829019750091877257179321111787⟩,.good ⟨41505,41505,.largeDivisor 2551565414271829590023828534977660207⟩,.good ⟨41506,41506,.largeDivisor 6380604535773379862846669910397804829⟩,.good ⟨41507,41510,.topPrime 41507⟩]⟩,
    ⟨(41856,41856),[.good ⟨41856,41856,.topPrime 41851⟩]⟩,
    ⟨(42250,42250),[.good ⟨42250,42250,.largeDivisor 199572866154807154690633322619236127881⟩]⟩,
    ⟨(42375,42378),[.good ⟨42375,42378,.topPrime 42373⟩]⟩,
    ⟨(42500,42506),[.good ⟨42500,42506,.topPrime 42499⟩]⟩,
    ⟨(42532,42535),[.good ⟨42532,42532,.largeDivisor 9274432864098661787660433534185672057⟩,.good ⟨42533,42535,.topPrime 42533⟩]⟩,
    ⟨(42625,42634),[.good ⟨42625,42625,.largeDivisor 41894945667323161378659143369308175783⟩,.good ⟨42626,42626,.largeDivisor 942879595573029079686760636356985375357⟩,.good ⟨42627,42627,.largeDivisor 17604962120232812343323497873845473322533⟩,.good ⟨42628,42628,.largeDivisor 4402376547277402941145517442372086472493⟩,.good ⟨42629,42629,.largeDivisor 26421076986328088128691012677865644690399⟩,.good ⟨42630,42630,.largeDivisor 17978160740597258399587962356181602009⟩,.good ⟨42631,42631,.largeDivisor 359656016204787293680354023090745131509⟩,.good ⟨42632,42632,.largeDivisor 134905814764222671079229013095697952123⟩,.good ⟨42633,42633,.largeDivisor 9995602342110065113514270173999674647⟩,.good ⟨42634,42634,.largeDivisor 34993636907006118907009968352627864091⟩]⟩,
    ⟨(42752,42760),[.good ⟨42752,42760,.topPrime 42751⟩]⟩,
    ⟨(42875,42885),[.good ⟨42875,42875,.largeDivisor 525204519380860329889664097834553007041⟩,.good ⟨42876,42876,.largeDivisor 24321263757634614600046266982423602449⟩,.good ⟨42877,42877,.largeDivisor 48655009850982100975420323305434460981⟩,.good ⟨42878,42878,.largeDivisor 219003727943566084990979700051482134993⟩,.good ⟨42879,42879,.largeDivisor 2044559296863089518469022111584476914079⟩,.good ⟨42880,42880,.largeDivisor 3195443628025542880343009668435465097⟩,.good ⟨42881,42881,.largeDivisor 95887906377441080652196359406704813733⟩,.good ⟨42882,42882,.largeDivisor 2283631182182998841778649505592256183⟩,.good ⟨42883,42883,.largeDivisor 18273736888515308701622285267458988971⟩,.good ⟨42884,42884,.largeDivisor 13708819059672005079427088401961221801⟩,.good ⟨42885,42885,.largeDivisor 609437167694519794779774000423055669⟩]⟩,
    ⟨(43008,43018),[.good ⟨43008,43013,.topPrime 43003⟩,.good ⟨43014,43018,.topPrime 43013⟩]⟩,
    ⟨(43254,43260),[.good ⟨43254,43254,.largeDivisor 72920012100466481534330305363978558801⟩,.good ⟨43255,43255,.largeDivisor 58350848643153781496021780751436362241⟩,.good ⟨43256,43256,.largeDivisor 328307012084841307543173536444345900767⟩,.good ⟨43257,43257,.largeDivisor 1532489092667959473442867990285213189757⟩,.good ⟨43258,43258,.largeDivisor 766439442858817847506088093090361784199⟩,.good ⟨43259,43259,.largeDivisor 36798450453528969217831148522748013787641⟩,.good ⟨43260,43260,.largeDivisor 87637642412853102486453057824297565727⟩]⟩,
    ⟨(43264,43264),[.good ⟨43264,43264,.topPrime 43261⟩]⟩,
    ⟨(43500,43507),[.good ⟨43500,43507,.topPrime 43499⟩]⟩,
    ⟨(43750,43750),[.good ⟨43750,43750,.largeDivisor 36740077800559919859295640891553821⟩]⟩,
    ⟨(43904,43914),[.good ⟨43904,43904,.largeDivisor 14795463215892579039383914953473379743⟩,.good ⟨43905,43905,.largeDivisor 1973222801882607137571272568862103363⟩,.good ⟨43906,43906,.largeDivisor 4934293219014565951828470976674992041⟩,.good ⟨43907,43907,.largeDivisor 118452713158705602650045202390852310303⟩,.good ⟨43908,43908,.largeDivisor 69114730895822643931831509416062606187⟩,.good ⟨43909,43909,.largeDivisor 138264099453491114511038760169023325667⟩,.good ⟨43910,43910,.largeDivisor 41489623501693397377022565154252813709⟩,.good ⟨43911,43911,.largeDivisor 65873046880820724309304619390692963907⟩,.good ⟨43912,43912,.largeDivisor 8236194034961047714944376115248255823⟩,.good ⟨43913,43914,.topPrime 43913⟩]⟩,
    ⟨(44250,44257),[.good ⟨44250,44257,.topPrime 44249⟩]⟩,
    ⟨(44933,44938),[.good ⟨44933,44937,.topPrime 44927⟩,.good ⟨44938,44938,.largeDivisor 222994437031605730940856162765964804967⟩]⟩,
    ⟨(45441,45450),[.good ⟨45441,45449,.topPrime 45439⟩,.good ⟨45450,45450,.largeDivisor 55009184140370060210911707738685733627⟩]⟩,
    ⟨(45625,45629),[.good ⟨45625,45625,.largeDivisor 8672952777228754840736824853146527749⟩,.good ⟨45626,45626,.largeDivisor 9294690266684811583676853731142562951⟩,.good ⟨45627,45627,.largeDivisor 49583635309017642713483433320570761109⟩,.good ⟨45628,45628,.largeDivisor 12398897954051433685527446431982608939⟩,.good ⟨45629,45629,.largeDivisor 74411326416600403477171097362216817477⟩]⟩,
    ⟨(45962,45962),[.good ⟨45962,45962,.topPrime 45959⟩]⟩,
    ⟨(46656,46658),[.good ⟨46656,46658,.topPrime 46649⟩]⟩,
    ⟨(47000,47001),[.good ⟨47000,47001,.topPrime 46997⟩]⟩,
    ⟨(47385,47385),[.good ⟨47385,47385,.topPrime 47381⟩]⟩,
    ⟨(47625,47626),[.good ⟨47625,47626,.topPrime 47623⟩]⟩,
    ⟨(47628,47635),[.good ⟨47628,47633,.topPrime 47623⟩,.good ⟨47634,47635,.topPrime 47629⟩]⟩,
    ⟨(47750,47754),[.good ⟨47750,47753,.topPrime 47743⟩,.good ⟨47754,47754,.largeDivisor 365561820028048244047515141977136071449⟩]⟩,
    ⟨(47872,47882),[.good ⟨47872,47879,.topPrime 47869⟩,.good ⟨47880,47880,.largeDivisor 199107947899228350509343060509753683⟩,.good ⟨47881,47882,.topPrime 47881⟩]⟩,
    ⟨(48000,48010),[.good ⟨48000,48000,.largeDivisor 232092416491334552758320953560723589813⟩,.good ⟨48001,48001,.largeDivisor 2321456154198905994363859989970471563787⟩,.good ⟨48002,48002,.largeDivisor 3482982381504528522268363044275882228071⟩,.good ⟨48003,48003,.largeDivisor 65030573029701237905269634855844097469503⟩,.good ⟨48004,48004,.largeDivisor 16261369510750412687290665053340799986071⟩,.good ⟨48005,48005,.largeDivisor 19518115848570410327625662604966248364329⟩,.good ⟨48006,48006,.largeDivisor 258235307091201386770336404920378533417⟩,.good ⟨48007,48007,.largeDivisor 1033177963790924658278484856322411222081⟩,.good ⟨48008,48008,.largeDivisor 1162591592107507758171608404798572987757⟩,.good ⟨48009,48009,.largeDivisor 775238686965975526231103350222574420729⟩,.good ⟨48010,48010,.largeDivisor 542791444673129429989139154793434416497⟩]⟩,
    ⟨(48128,48135),[.good ⟨48128,48131,.topPrime 48121⟩,.good ⟨48132,48135,.topPrime 48131⟩]⟩,
    ⟨(48256,48260),[.good ⟨48256,48257,.topPrime 48247⟩,.good ⟨48258,48258,.largeDivisor 136772884096463688250552139402076285067⟩,.good ⟨48259,48260,.topPrime 48259⟩]⟩,
    ⟨(48363,48367),[.good ⟨48363,48363,.topPrime 48353⟩,.good ⟨48364,48364,.largeDivisor 762527603255155528843435978885923887137⟩,.good ⟨48365,48365,.largeDivisor 915241283817734139533758062261265884139⟩,.good ⟨48366,48366,.largeDivisor 254291524104875569530266561192846802883⟩,.good ⟨48367,48367,.largeDivisor 7121782366172852733914535474935970651443⟩]⟩,
    ⟨(48384,48385),[.good ⟨48384,48385,.topPrime 48383⟩]⟩,
    ⟨(50058,50058),[.good ⟨50058,50058,.topPrime 50053⟩]⟩,
    ⟨(50304,50311),[.good ⟨50304,50304,.largeDivisor 39993700495664264106386663623389475649⟩,.good ⟨50305,50305,.largeDivisor 16000979070540349193715203511946614487⟩,.good ⟨50306,50306,.largeDivisor 840235128520462219769349715941530676809⟩,.good ⟨50307,50307,.largeDivisor 2241117046311377598745383392178070290983⟩,.good ⟨50308,50308,.largeDivisor 560401795165878602290806348756856075903⟩,.good ⟨50309,50309,.largeDivisor 480449445527516344347372686212039200467⟩,.good ⟨50310,50310,.largeDivisor 5339494623151188621844993570300203047⟩,.good ⟨50311,50311,.topPrime 50311⟩]⟩,
    ⟨(51456,51460),[.good ⟨51456,51459,.topPrime 51449⟩,.good ⟨51460,51460,.largeDivisor 50931014587695337748316059279370599359⟩]⟩,
    ⟨(51759,51760),[.good ⟨51759,51759,.topPrime 51749⟩,.good ⟨51760,51760,.largeDivisor 17517178327961480032081967341879903213⟩]⟩,
    ⟨(52002,52010),[.good ⟨52002,52002,.largeDivisor 968075378404167858425482398662409738409⟩,.good ⟨52003,52003,.largeDivisor 1106605937246432223456363862080788113039⟩,.good ⟨52004,52004,.largeDivisor 2490390131580554844583033853368933054807⟩,.good ⟨52005,52005,.largeDivisor 332122267422771229225271314752859595377⟩,.good ⟨52006,52006,.largeDivisor 830481327030899151220764496347591889469⟩,.good ⟨52007,52007,.largeDivisor 69775189620187354050950402522696625841057⟩,.good ⟨52008,52008,.largeDivisor 2907914608668692352028184746556216477827⟩,.good ⟨52009,52010,.topPrime 52009⟩]⟩,
    ⟨(52250,52255),[.good ⟨52250,52255,.topPrime 52249⟩]⟩,
    ⟨(52480,52490),[.good ⟨52480,52480,.largeDivisor 10534273498138488482596559235291126289⟩,.good ⟨52481,52481,.largeDivisor 948283374709787331140909134180640821223⟩,.good ⟨52482,52482,.largeDivisor 158080362077843185483210386626480632411⟩,.good ⟨52483,52483,.largeDivisor 8854356075700580473548912189239683063849⟩,.good ⟨52484,52484,.largeDivisor 6642159171532063140668645408210730174419⟩,.good ⟨52485,52485,.largeDivisor 885806873544638827960498162264334523013⟩,.good ⟨52486,52486,.largeDivisor 1582129570709314419258650600442587006563⟩,.good ⟨52487,52487,.largeDivisor 18989534593601597512835306212080965976097⟩,.good ⟨52488,52488,.largeDivisor 361863951704586723952118189151075061⟩,.good ⟨52489,52490,.topPrime 52489⟩]⟩,
    ⟨(52736,52741),[.good ⟨52736,52741,.topPrime 52733⟩]⟩,
    ⟨(53000,53002),[.good ⟨53000,53002,.topPrime 52999⟩]⟩,
    ⟨(53125,53130),[.good ⟨53125,53127,.topPrime 53117⟩,.good ⟨53128,53128,.largeDivisor 330841741575013289973576675586943397161⟩,.good ⟨53129,53130,.topPrime 53129⟩]⟩,
    ⟨(53250,53258),[.good ⟨53250,53250,.largeDivisor 7573574610600725706325317988380009217⟩,.good ⟨53251,53251,.largeDivisor 303005575949736472267114581667335740657⟩,.good ⟨53252,53252,.largeDivisor 227301134423781013990651739772200412203⟩,.good ⟨53253,53253,.largeDivisor 353652593317252763550535457331609213517⟩,.good ⟨53254,53254,.largeDivisor 176862828958895804801759998917580875013⟩,.good ⟨53255,53255,.largeDivisor 3821026351402026809216117136858324340291⟩,.good ⟨53256,53256,.largeDivisor 113744516235744435958447660098045714703⟩,.good ⟨53257,53257,.largeDivisor 227536029041319213681367503055313849977⟩,.good ⟨53258,53258,.largeDivisor 341374551655940579250725969849566314217⟩]⟩,
    ⟨(53376,53385),[.good ⟨53376,53376,.largeDivisor 3731072965182730950528294402999285783743⟩,.good ⟨53377,53385,.topPrime 53377⟩]⟩,
    ⟨(53504,53514),[.good ⟨53504,53513,.topPrime 53503⟩,.good ⟨53514,53514,.topPrime 53507⟩]⟩,
    ⟨(53632,53635),[.good ⟨53632,53635,.topPrime 53629⟩]⟩,
    ⟨(53760,53760),[.good ⟨53760,53760,.topPrime 53759⟩]⟩,
    ⟨(54194,54199),[.good ⟨54194,54199,.topPrime 54193⟩]⟩,
    ⟨(54537,54538),[.good ⟨54537,54537,.largeDivisor 2412040612658955163826339177629649935721⟩,.good ⟨54538,54538,.largeDivisor 1206263602739872876967015295812770262387⟩]⟩,
    ⟨(54880,54885),[.good ⟨54880,54885,.topPrime 54877⟩]⟩,
    ⟨(54918,54922),[.good ⟨54918,54922,.topPrime 54917⟩]⟩,
    ⟨(55168,55171),[.good ⟨55168,55171,.topPrime 55163⟩]⟩,
    ⟨(56133,56135),[.good ⟨56133,56135,.topPrime 56131⟩]⟩,
    ⟨(56252,56260),[.good ⟨56252,56259,.topPrime 56249⟩,.good ⟨56260,56260,.largeDivisor 1449038965882578130303771268338152607⟩]⟩,
    ⟨(56376,56385),[.good ⟨56376,56379,.topPrime 56369⟩,.good ⟨56380,56385,.topPrime 56377⟩]⟩,
    ⟨(56625,56629),[.good ⟨56625,56625,.largeDivisor 847090343421350709521643852489855201943⟩,.good ⟨56626,56626,.largeDivisor 2118137321671703845154667702512167299533⟩,.good ⟨56627,56627,.largeDivisor 355916208054313274894876462878802663711143⟩,.good ⟨56628,56628,.largeDivisor 9888482174425257103160546763487231573867⟩,.good ⟨56629,56629,.topPrime 56629⟩]⟩,
    ⟨(57348,57354),[.good ⟨57348,57354,.topPrime 57347⟩]⟩,
    ⟨(57600,57601),[.good ⟨57600,57601,.topPrime 57593⟩]⟩,
    ⟨(57625,57634),[.good ⟨57625,57625,.largeDivisor 26947308770034878673748451552576889883⟩,.good ⟨57626,57626,.largeDivisor 202143402132521468166288501584066109919⟩,.good ⟨57627,57627,.largeDivisor 359434658110118011849137816062975646157⟩,.good ⟨57628,57628,.largeDivisor 629130739811987631722819647189805629229⟩,.good ⟨57629,57629,.largeDivisor 33979545833762919614390228161107130840523⟩,.good ⟨57630,57630,.largeDivisor 1132867761444290400375633528827067431657⟩,.good ⟨57631,57631,.largeDivisor 3237382950354336295138004457769262813201⟩,.good ⟨57632,57632,.largeDivisor 303562591429591277531293071715647541343⟩,.good ⟨57633,57633,.largeDivisor 202413694212414634433156474982794936543⟩,.good ⟨57634,57634,.largeDivisor 101226167088127180474120926358905327497⟩]⟩,
    ⟨(58250,58250),[.good ⟨58250,58250,.topPrime 58243⟩]⟩,
    ⟨(58320,58320),[.good ⟨58320,58320,.topPrime 58313⟩]⟩,
    ⟨(58375,58378),[.good ⟨58375,58378,.topPrime 58369⟩]⟩,
    ⟨(58500,58506),[.good ⟨58500,58500,.largeDivisor 1363703442866619898636795596455088470209⟩,.good ⟨58501,58501,.largeDivisor 13639599095766820087220239218365383928141⟩,.good ⟨58502,58502,.largeDivisor 61389738906027889578593509367041982656109⟩,.good ⟨58503,58503,.largeDivisor 573078649308975526410795608504875875431681⟩,.good ⟨58504,58504,.largeDivisor 71648302572898261751699319320194848563621⟩,.good ⟨58505,58505,.largeDivisor 85994131542258955867948890692953115503429⟩,.good ⟨58506,58506,.largeDivisor 1462760251039365092548237391905091886929⟩]⟩,
    ⟨(58625,58634),[.good ⟨58625,58625,.largeDivisor 2094155625314358240471073529036769765533⟩,.good ⟨58626,58626,.largeDivisor 581819062667309117906191801081016730047⟩,.good ⟨58627,58627,.largeDivisor 4655425984304126061892494434553946749347⟩,.good ⟨58628,58628,.largeDivisor 31430022409924263329874846120339565870649⟩,.good ⟨58629,58629,.largeDivisor 146700962015082368821529524177166500074061⟩,.good ⟨58630,58630,.largeDivisor 14672849081260818649254125799667807194497⟩,.good ⟨58631,58634,.topPrime 58631⟩]⟩,
    ⟨(58752,58760),[.good ⟨58752,58752,.largeDivisor 34041373778739846547860398574672752399⟩,.good ⟨58753,58753,.largeDivisor 68095496701586674073965544157766103357⟩,.good ⟨58754,58754,.largeDivisor 306487116072086980890284325221800952707⟩,.good ⟨58755,58755,.largeDivisor 1144432825218650814249040707239079439231⟩,.good ⟨58756,58756,.largeDivisor 1430808900301026624436476206369464455091⟩,.good ⟨58757,58760,.topPrime 58757⟩]⟩,
    ⟨(58880,58885),[.good ⟨58880,58880,.largeDivisor 1647427770579232396063245459784203681323⟩,.good ⟨58881,58881,.largeDivisor 38447163915765272577328559618530993642481⟩,.good ⟨58882,58882,.largeDivisor 19227173869036459206555521797305481201751⟩,.good ⟨58883,58883,.largeDivisor 461538393367498502837182547896754443376561⟩,.good ⟨58884,58884,.largeDivisor 5495531291943954792330354595071167849557⟩,.good ⟨58885,58885,.largeDivisor 2198623230126166239401929071106197770297⟩]⟩,
    ⟨(59000,59006),[.good ⟨59000,59006,.topPrime 58997⟩]⟩,
    ⟨(59008,59010),[.good ⟨59008,59008,.largeDivisor 78738669948469470543642674530869658325317⟩,.good ⟨59009,59010,.topPrime 59009⟩]⟩,
    ⟨(59778,59786),[.good ⟨59778,59781,.topPrime 59771⟩,.good ⟨59782,59786,.topPrime 59779⟩]⟩,
    ⟨(60025,60035),[.good ⟨60025,60027,.topPrime 60017⟩,.good ⟨60028,60028,.largeDivisor 234656062568834951115147694998118581089⟩,.good ⟨60029,60035,.topPrime 60029⟩]⟩,
    ⟨(60375,60378),[.good ⟨60375,60378,.topPrime 60373⟩]⟩,
    ⟨(60507,60510),[.good ⟨60507,60507,.topPrime 60497⟩,.good ⟨60508,60508,.largeDivisor 1952381619179832143618586573251424446543⟩,.good ⟨60509,60510,.topPrime 60509⟩]⟩,
    ⟨(60750,60760),[.good ⟨60750,60750,.largeDivisor 8568087597298577848224660139323388630933⟩,.good ⟨60751,60751,.largeDivisor 171392785519751696693281635865668482949559⟩,.good ⟨60752,60752,.largeDivisor 96425901114016475380706826401236217181727⟩,.good ⟨60753,60753,.largeDivisor 9185082214047929382515717255894648721041⟩,.good ⟨60754,60754,.largeDivisor 4593372774083169268107929194842397382399⟩,.good ⟨60755,60755,.largeDivisor 22052181974667953289916810607084144841379⟩,.good ⟨60756,60756,.largeDivisor 9190073037924425673458623105084124235073⟩,.good ⟨60757,60760,.topPrime 60757⟩]⟩,
    ⟨(61000,61003),[.good ⟨61000,61000,.largeDivisor 240108658726687172466904728341929916941⟩,.good ⟨61001,61003,.topPrime 61001⟩]⟩,
    ⟨(61056,61064),[.good ⟨61056,61061,.topPrime 61051⟩,.good ⟨61062,61064,.topPrime 61057⟩]⟩,
    ⟨(61750,61750),[.good ⟨61750,61750,.largeDivisor 134525971200998122208921756143412766433⟩]⟩,
    ⟨(62083,62090),[.good ⟨62083,62090,.topPrime 62081⟩]⟩,
    ⟨(62208,62218),[.good ⟨62208,62217,.topPrime 62207⟩,.good ⟨62218,62218,.topPrime 62213⟩]⟩,
    ⟨(63112,63114),[.good ⟨63112,63113,.topPrime 63103⟩,.good ⟨63114,63114,.topPrime 63113⟩]⟩,
    ⟨(63750,63754),[.good ⟨63750,63753,.topPrime 63743⟩,.good ⟨63754,63754,.largeDivisor 292711399459153325277918268418895179219⟩]⟩,
    ⟨(65856,65863),[.good ⟨65856,65861,.topPrime 65851⟩,.good ⟨65862,65862,.largeDivisor 6645280552652611460051397930471512248253⟩,.good ⟨65863,65863,.largeDivisor 3797937479190209635402028981826304971379⟩]⟩,
    ⟨(66825,66826),[.good ⟨66825,66826,.topPrime 66821⟩]⟩,
    ⟨(66885,66885),[.good ⟨66885,66885,.topPrime 66883⟩]⟩,
    ⟨(67072,67078),[.good ⟨67072,67072,.largeDivisor 24863698111434079007077969996635170924147⟩,.good ⟨67073,67078,.topPrime 67073⟩]⟩,
    ⟨(68608,68610),[.good ⟨68608,68608,.largeDivisor 27897761836079733118821183884607896003⟩,.good ⟨68609,68609,.largeDivisor 502240236633847916439045553696946506657⟩,.good ⟨68610,68610,.largeDivisor 16744025731885452920539616923058888041⟩]⟩,
    ⟨(69376,69385),[.good ⟨69376,69381,.topPrime 69371⟩,.good ⟨69382,69385,.topPrime 69379⟩]⟩,
    ⟨(69632,69639),[.good ⟨69632,69633,.topPrime 69623⟩,.good ⟨69634,69634,.largeDivisor 4926950212726407573426882090209342099⟩,.good ⟨69635,69635,.largeDivisor 70959292257125830687814050538102903219⟩,.good ⟨69636,69636,.largeDivisor 105610867650192663626926118305363207843⟩,.good ⟨69637,69637,.largeDivisor 211255105579997889207717062603928926107⟩,.good ⟨69638,69638,.largeDivisor 316932720978497414982269826481373660137⟩,.good ⟨69639,69639,.largeDivisor 422643721036011977594268368019309862283⟩]⟩,
    ⟨(70658,70666),[.good ⟨70658,70666,.topPrime 70657⟩]⟩,
    ⟨(71685,71695),[.good ⟨71685,71685,.largeDivisor 2067311865288685582856179006963356849547⟩,.good ⟨71686,71686,.largeDivisor 25845364209118366706073953312377955897563⟩,.good ⟨71687,71687,.largeDivisor 2713049281620160040969089021741332387037⟩,.good ⟨71688,71688,.largeDivisor 113061068462678656226888247386767859147⟩,.good ⟨71689,71689,.largeDivisor 226156838556348396614006851946482911197⟩,.good ⟨71690,71690,.largeDivisor 67857463508578313954958151827076381801⟩,.good ⟨71691,71691,.largeDivisor 1621589805464495968581634954211644295898497⟩,.good ⟨71692,71692,.largeDivisor 405459662718714321017963522890798129426051⟩,.good ⟨71693,71695,.topPrime 71693⟩]⟩,
    ⟨(71936,71938),[.good ⟨71936,71938,.topPrime 71933⟩]⟩,
    ⟨(73750,73755),[.good ⟨73750,73750,.largeDivisor 11956809721906953740318688293764697681713⟩,.good ⟨73751,73755,.topPrime 73751⟩]⟩,
    ⟨(75008,75010),[.good ⟨75008,75008,.largeDivisor 1050143693624359776219104562596209582817⟩,.good ⟨75009,75009,.largeDivisor 4901389354431560105433315545751918648343⟩,.good ⟨75010,75010,.largeDivisor 490210823445527705047471298399780554157⟩]⟩,
    ⟨(76545,76554),[.good ⟨76545,76553,.topPrime 76543⟩,.good ⟨76554,76554,.largeDivisor 676117572261700022803882896690915433729⟩]⟩,
    ⟨(77518,77527),[.good ⟨77518,77523,.topPrime 77513⟩,.good ⟨77524,77527,.topPrime 77521⟩]⟩,
    ⟨(81162,81162),[.good ⟨81162,81162,.topPrime 81157⟩]⟩,
    ⟨(81408,81415),[.good ⟨81408,81411,.topPrime 81401⟩,.good ⟨81412,81415,.topPrime 81409⟩]⟩,
    ⟨(83349,83359),[.good ⟨83349,83351,.topPrime 83341⟩,.good ⟨83352,83352,.largeDivisor 15197244445777580315686920509995614865307⟩,.good ⟨83353,83353,.largeDivisor 212789503828136847312859379349851249095907⟩,.good ⟨83354,83354,.largeDivisor 319226383177180784905440421624986519872219⟩,.good ⟨83355,83355,.largeDivisor 340553083377921601405170363403733939514287⟩,.good ⟨83356,83356,.largeDivisor 60821076802212046756445627923265699078171⟩,.good ⟨83357,83359,.topPrime 83357⟩]⟩,
    ⟨(84378,84385),[.good ⟨84378,84385,.topPrime 84377⟩]⟩,
    ⟨(85000,85002),[.good ⟨85000,85001,.topPrime 84991⟩,.good ⟨85002,85002,.largeDivisor 5196768023971699887629220543500881300147⟩]⟩,
    ⟨(85760,85760),[.good ⟨85760,85760,.topPrime 85751⟩]⟩,
    ⟨(86022,86026),[.good ⟨86022,86026,.topPrime 86017⟩]⟩,
    ⟨(86272,86275),[.good ⟨86272,86275,.topPrime 86269⟩]⟩,
    ⟨(86784,86789),[.good ⟨86784,86789,.topPrime 86783⟩]⟩,
    ⟨(87808,87818),[.good ⟨87808,87813,.topPrime 87803⟩,.good ⟨87814,87818,.topPrime 87811⟩]⟩,
    ⟨(88837,88842),[.good ⟨88837,88837,.largeDivisor 49237214613627350130864071102620690245257⟩,.good ⟨88838,88838,.largeDivisor 73864967946324200934271713813614388868387⟩,.good ⟨88839,88839,.largeDivisor 32832940000818038790570364617201226303411⟩,.good ⟨88840,88840,.largeDivisor 820925145412161165316020441689132193539⟩,.good ⟨88841,88841,.largeDivisor 1551740656245995959315756852342642408642517⟩,.good ⟨88842,88842,.largeDivisor 258655468215312921948288454623245332651549⟩]⟩,
    ⟨(89181,89190),[.good ⟨89181,89181,.largeDivisor 85245557358222759900464802220126085620037⟩,.good ⟨89182,89182,.largeDivisor 42628036560771002755622635114528740104777⟩,.good ⟨89183,89183,.largeDivisor 1534798621154315841241297322333070903820883⟩,.good ⟨89184,89184,.largeDivisor 111926204494258530223185902539243493967313⟩,.good ⟨89185,89185,.largeDivisor 44776004430979644371475249368481535019063⟩,.good ⟨89186,89186,.largeDivisor 1679307288133452717794109163236919336505531⟩,.good ⟨89187,89187,.largeDivisor 639815022221474270428956814951753514141831⟩,.good ⟨89188,89188,.largeDivisor 159973485881698328131182368805625308149191⟩,.good ⟨89189,89190,.topPrime 89189⟩]⟩,
    ⟨(89866,89866),[.good ⟨89866,89866,.largeDivisor 32600942002056056249703949214594935114673⟩]⟩,
    ⟨(90625,90634),[.good ⟨90625,90629,.topPrime 90619⟩,.good ⟨90630,90630,.largeDivisor 1683224167197924259200363044618871736081⟩,.good ⟨90631,90634,.topPrime 90631⟩]⟩,
    ⟨(90882,90890),[.good ⟨90882,90882,.largeDivisor 8034406324458212191871488955677879897297⟩,.good ⟨90883,90883,.largeDivisor 64283031075423514273603004732711749159789⟩,.good ⟨90884,90884,.largeDivisor 144654327925591528950236096913136936977277⟩,.good ⟨90885,90885,.largeDivisor 135027048667564177154441613186981466822573⟩,.good ⟨90886,90886,.largeDivisor 8440212066850232327963260286184317464674257⟩,.good ⟨90887,90890,.topPrime 90887⟩]⟩,
    ⟨(95013,95021),[.good ⟨95013,95019,.topPrime 95009⟩,.good ⟨95020,95020,.largeDivisor 256891091676291737340984657529671432397781⟩,.good ⟨95021,95021,.topPrime 95021⟩]⟩,
    ⟨(95744,95752),[.good ⟨95744,95747,.topPrime 95737⟩,.good ⟨95748,95752,.topPrime 95747⟩]⟩,
    ⟨(96256,96260),[.good ⟨96256,96256,.largeDivisor 23806650888285751674604143111700413521827⟩,.good ⟨96257,96257,.largeDivisor 61224098815189334445012450332708506889591⟩,.good ⟨96258,96258,.largeDivisor 10205182678858379923543951922528936756779⟩,.good ⟨96259,96260,.topPrime 96259⟩]⟩,
    ⟨(100359,100362),[.good ⟨100359,100362,.topPrime 100357⟩]⟩,
    ⟨(100608,100612),[.good ⟨100608,100608,.largeDivisor 286831622682191905769030800633145340983479⟩,.good ⟨100609,100612,.topPrime 100609⟩]⟩,
    ⟨(100845,100852),[.good ⟨100845,100845,.largeDivisor 6725258979161042789350523340096829879331⟩,.good ⟨100846,100846,.largeDivisor 117704871053883117170226115368865828880773⟩,.good ⟨100847,100852,.topPrime 100847⟩]⟩,
    ⟨(101875,101881),[.good ⟨101875,101881,.topPrime 101873⟩]⟩,
    ⟨(103936,103939),[.good ⟨103936,103936,.largeDivisor 726699915802995943036542213133746742087117⟩,.good ⟨103937,103937,.largeDivisor 4360660998141908049846376537525676065602949⟩,.good ⟨103938,103938,.largeDivisor 726853757645388331689443366589599300320801⟩,.good ⟨103939,103939,.largeDivisor 5815445517350782680892083294585202191982429⟩]⟩,
    ⟨(104960,104968),[.good ⟨104960,104968,.topPrime 104959⟩]⟩,
    ⟨(105219,105226),[.good ⟨105219,105221,.topPrime 105211⟩,.good ⟨105222,105222,.largeDivisor 42276045266749658511591117308543335498574009⟩,.good ⟨105223,105223,.largeDivisor 169121861046390119665633278962736394752174769⟩,.good ⟨105224,105224,.largeDivisor 9061046930688233436506655959937888447416281⟩,.good ⟨105225,105225,.largeDivisor 241653180066447269591857325294977046623549⟩,.good ⟨105226,105226,.largeDivisor 604196110955471662549845053259736128594059⟩]⟩,
    ⟨(105472,105472),[.good ⟨105472,105472,.topPrime 105467⟩]⟩,
    ⟨(105987,105994),[.good ⟨105987,105993,.topPrime 105983⟩,.good ⟨105994,105994,.largeDivisor 300542870679226979364807309464864787860003⟩]⟩,
    ⟨(106250,106250),[.good ⟨106250,106250,.topPrime 106243⟩]⟩,
    ⟨(106677,106683),[.good ⟨106677,106679,.topPrime 106669⟩,.good ⟨106680,106680,.largeDivisor 45887491436200125485736380769475914219313⟩,.good ⟨106681,106683,.topPrime 106681⟩]⟩,
    ⟨(107016,107018),[.good ⟨107016,107016,.largeDivisor 1002008928781267541529111403288038469133491⟩,.good ⟨107017,107017,.largeDivisor 2004223866538042885292804423035643101344949⟩,.good ⟨107018,107018,.largeDivisor 3006644842148199746253964839838914090943589⟩]⟩,
    ⟨(108135,108135),[.good ⟨108135,108135,.topPrime 108131⟩]⟩,
    ⟨(108388,108388),[.good ⟨108388,108388,.topPrime 108379⟩]⟩,
    ⟨(110080,110089),[.good ⟨110080,110080,.largeDivisor 77176027003729004099021469543434666496437⟩,.good ⟨110081,110081,.largeDivisor 6946536572851588307624188380057916208171939⟩,.good ⟨110082,110082,.largeDivisor 165410256629303022179166154065392322969889⟩,.good ⟨110083,110089,.topPrime 110083⟩]⟩,
    ⟨(111875,111882),[.good ⟨111875,111881,.topPrime 111871⟩,.good ⟨111882,111882,.largeDivisor 1281220683039160171921205020347072532420639⟩]⟩,
    ⟨(112504,112514),[.good ⟨112504,112511,.topPrime 112501⟩,.good ⟨112512,112514,.topPrime 112507⟩]⟩,
    ⟨(114219,114220),[.good ⟨114219,114220,.topPrime 114217⟩]⟩,
    ⟨(114696,114698),[.good ⟨114696,114698,.topPrime 114691⟩]⟩,
    ⟨(114944,114949),[.good ⟨114944,114949,.topPrime 114941⟩]⟩,
    ⟨(116883,116885),[.good ⟨116883,116885,.topPrime 116881⟩]⟩,
    ⟨(117504,117510),[.good ⟨117504,117510,.topPrime 117503⟩]⟩,
    ⟨(118341,118345),[.good ⟨118341,118341,.largeDivisor 8379298861982010834652686883345311780182489⟩,.good ⟨118342,118342,.largeDivisor 598576985577185501561882872830601621535207⟩,.good ⟨118343,118345,.topPrime 118343⟩]⟩,
    ⟨(119556,119562),[.good ⟨119556,119561,.topPrime 119551⟩,.good ⟨119562,119562,.topPrime 119557⟩]⟩,
    ⟨(119808,119809),[.good ⟨119808,119808,.largeDivisor 29985865810455148267316207050877316369041⟩,.good ⟨119809,119809,.topPrime 119809⟩]⟩,
    ⟨(120050,120052),[.good ⟨120050,120052,.topPrime 120049⟩]⟩,
    ⟨(121088,121089),[.good ⟨121088,121089,.topPrime 121081⟩]⟩,
    ⟨(121257,121260),[.good ⟨121257,121257,.largeDivisor 613321219103997134656771438193465461935169⟩,.good ⟨121258,121258,.largeDivisor 2146819016976862899203590758399146555722381⟩,.good ⟨121259,121260,.topPrime 121259⟩]⟩,
    ⟨(122112,122118),[.good ⟨122112,122112,.largeDivisor 19966957821699626963858918739588316099529807⟩,.good ⟨122113,122113,.largeDivisor 39937513234528616196912485365470640020014141⟩,.good ⟨122114,122114,.largeDivisor 179735000041321863281114883095713191398393411⟩,.good ⟨122115,122115,.largeDivisor 13695328903102753521321929439842392818995711⟩,.good ⟨122116,122116,.largeDivisor 17120703332493508138587166122146857637734739⟩,.good ⟨122117,122118,.topPrime 122117⟩]⟩,
    ⟨(123137,123146),[.good ⟨123137,123137,.topPrime 123127⟩,.good ⟨123138,123138,.largeDivisor 3127423918921313121366497238108590496898049⟩,.good ⟨123139,123139,.largeDivisor 25021626531872625329864797830124990266878621⟩,.good ⟨123140,123140,.largeDivisor 11260737852257857916524929481768844753539337⟩,.good ⟨123141,123141,.largeDivisor 262774023093591980613757123614647965092967121⟩,.good ⟨123142,123142,.largeDivisor 131398749103763892426518422315074919059693161⟩,.good ⟨123143,123146,.topPrime 123143⟩]⟩,
    ⟨(124166,124170),[.good ⟨124166,124166,.largeDivisor 61684693351736767000036676293226256428824417⟩,.good ⟨124167,124167,.largeDivisor 82253544673959633021827958217092739048700467⟩,.good ⟨124168,124168,.largeDivisor 10282604016563926835633848590796301479375951⟩,.good ⟨124169,124169,.largeDivisor 61701090133510183697570161198017975083005483⟩,.good ⟨124170,124170,.largeDivisor 14398196541839017326731854157895720745817201⟩]⟩,
    ⟨(129033,129034),[.good ⟨129033,129033,.topPrime 129023⟩,.good ⟨129034,129034,.largeDivisor 26372915692894393745878661435797383605021⟩]⟩,
    ⟨(130000,130007),[.good ⟨130000,130000,.largeDivisor 436136101939560452157515830408596429953377⟩,.good ⟨130001,130001,.largeDivisor 91596331806534407659013272163082301276848083⟩,.good ⟨130002,130002,.largeDivisor 15267347133664492239830761883188099343535071⟩,.good ⟨130003,130007,.topPrime 130003⟩]⟩,
    ⟨(133125,133130),[.good ⟨133125,133130,.topPrime 133121⟩]⟩,
    ⟨(134144,134146),[.good ⟨134144,134144,.largeDivisor 10916086620495618004880469828847438218003679⟩,.good ⟨134145,134145,.largeDivisor 3396394344608854740898515870973198343374279⟩,.good ⟨134146,134146,.largeDivisor 8491682181233448169243156335549458846876021⟩]⟩,
    ⟨(138752,138760),[.good ⟨138752,138752,.largeDivisor 143589910135298106163222429525323742470999569⟩,.good ⟨138753,138753,.largeDivisor 1181903658405604915875510043951505051836369⟩,.good ⟨138754,138754,.largeDivisor 84428383114520734892875172409443118346513⟩,.good ⟨138755,138755,.largeDivisor 1215865106284932493000611784916687066545969⟩,.good ⟨138756,138756,.largeDivisor 506650626111667967010201234963121285468703⟩,.good ⟨138757,138757,.largeDivisor 1013381588332300925409518007867294483556727⟩,.good ⟨138758,138758,.largeDivisor 10641350267429499909790668967432272434491019⟩,.good ⟨138759,138759,.largeDivisor 14189591890893321974444253228893963067215761⟩,.good ⟨138760,138760,.largeDivisor 354767920990485941731811504594866686463841⟩]⟩,
    ⟨(139264,139268),[.good ⟨139264,139264,.largeDivisor 1135259009002424953000535751123420765240823⟩,.good ⟨139265,139265,.largeDivisor 194631203275481446335005030536433763837013⟩,.good ⟨139266,139266,.largeDivisor 18022831253723982984380380372462844312077⟩,.good ⟨139267,139268,.topPrime 139267⟩]⟩,
    ⟨(140288,140297),[.good ⟨140288,140291,.topPrime 140281⟩,.good ⟨140292,140292,.largeDivisor 5106048426737822680311916769919790644417667⟩,.good ⟨140293,140293,.largeDivisor 10212897619542483815300605058416007597229691⟩,.good ⟨140294,140294,.largeDivisor 6565948998873114153661856886532803755170253⟩,.good ⟨140295,140295,.largeDivisor 1751057026787380932371456401577979342536779⟩,.good ⟨140296,140296,.largeDivisor 1094496456455440688990206754623552900526339⟩,.good ⟨140297,140297,.topPrime 140297⟩]⟩,
    ⟨(140630,140635),[.good ⟨140630,140635,.topPrime 140629⟩]⟩,
    ⟨(141316,141322),[.good ⟨141316,141321,.topPrime 141311⟩,.good ⟨141322,141322,.topPrime 141319⟩]⟩,
    ⟨(142345,142346),[.good ⟨142345,142345,.largeDivisor 513503026586703953366191455499856538195091⟩,.good ⟨142346,142346,.largeDivisor 11554711005771571442596251805972585960467661⟩]⟩,
    ⟨(144384,144385),[.good ⟨144384,144385,.topPrime 144383⟩]⟩,
    ⟨(147500,147500),[.good ⟨147500,147500,.largeDivisor 20997153953850231775866601748260973222462633⟩]⟩,
    ⟨(153090,153098),[.good ⟨153090,153098,.topPrime 153089⟩]⟩,
    ⟨(158125,158133),[.good ⟨158125,158125,.largeDivisor 30086644578008799385136095171682939773204231⟩,.good ⟨158126,158126,.largeDivisor 225665532707628280598331760986506808394729733⟩,.good ⟨158127,158127,.largeDivisor 2106358166014942277679735928783033002245052151⟩,.good ⟨158128,158128,.largeDivisor 131656543918273648818968423282523164246651849⟩,.good ⟨158129,158133,.topPrime 158129⟩]⟩,
    ⟨(168756,168760),[.good ⟨168756,168756,.largeDivisor 5129175431181448227632897103905218623336727⟩,.good ⟨168757,168757,.largeDivisor 10259019570714418813490628714917485205201143⟩,.good ⟨168758,168758,.largeDivisor 15389532478040710858211270606340067985736053⟩,.good ⟨168759,168759,.largeDivisor 6840238070868783494970477520076862891424769⟩,.good ⟨168760,168760,.largeDivisor 1197119692246874250851638306599920543365873⟩]⟩,
    ⟨(175625,175626),[.good ⟨175625,175626,.topPrime 175621⟩]⟩,
    ⟨(177152,177157),[.good ⟨177152,177152,.largeDivisor 191450633972752917178955090827821124015151⟩,.good ⟨177153,177153,.largeDivisor 893491771652970245185685376469901619712217⟩,.good ⟨177154,177154,.largeDivisor 446773627282507044635195596730181129196463⟩,.good ⟨177155,177155,.largeDivisor 2144646577461930239597563363737575882476613⟩,.good ⟨177156,177156,.largeDivisor 42555153799309519276216857509597105348191⟩,.good ⟨177157,177157,.largeDivisor 85115592580405727551474488002299734593719⟩]⟩,
    ⟨(177674,177674),[.good ⟨177674,177674,.largeDivisor 113477666767741394316232645585874163568850897⟩]⟩,
    ⟨(181250,181258),[.good ⟨181250,181253,.topPrime 181243⟩,.good ⟨181254,181258,.topPrime 181253⟩]⟩,
    ⟨(186880,186885),[.good ⟨186880,186885,.topPrime 186877⟩]⟩,
    ⟨(196101,196106),[.good ⟨196101,196101,.largeDivisor 18067446750089698005047468775204528736599601⟩,.good ⟨196102,196102,.largeDivisor 63239610941100381219180714699517340061840127⟩,.good ⟨196103,196103,.largeDivisor 2276753703760346623503762749168248382255743423⟩,.good ⟨196104,196104,.largeDivisor 94870059173074981058218526023130644803290681⟩,.good ⟨196105,196105,.largeDivisor 5421450340619693808777406767240211356113269⟩,.good ⟨196106,196106,.largeDivisor 40663158437143948369314699437635159802721209⟩]⟩,
    ⟨(196882,196885),[.good ⟨196882,196885,.topPrime 196879⟩]⟩,
    ⟨(208896,208897),[.good ⟨208896,208897,.topPrime 208891⟩]⟩,
    ⟨(220160,220168),[.good ⟨220160,220161,.topPrime 220151⟩,.good ⟨220162,220162,.largeDivisor 847027471690076689643551325392800088918326373⟩,.good ⟨220163,220168,.topPrime 220163⟩]⟩,
    ⟨(220892,220897),[.good ⟨220892,220897,.topPrime 220889⟩]⟩,
    ⟨(223750,223754),[.good ⟨223750,223754,.topPrime 223747⟩]⟩,
    ⟨(229376,229385),[.good ⟨229376,229383,.topPrime 229373⟩,.good ⟨229384,229384,.largeDivisor 8979124425921283803639179429575723817615971⟩,.good ⟨229385,229385,.largeDivisor 32326398123518067728129532660334731349036169⟩]⟩,
    ⟨(235008,235010),[.good ⟨235008,235010,.topPrime 235007⟩]⟩,
    ⟨(239112,239114),[.good ⟨239112,239112,.largeDivisor 9803067388875825052089634829299981376472581989⟩,.good ⟨239113,239113,.largeDivisor 2801005252458024675279419127686577810632507701⟩,.good ⟨239114,239114,.largeDivisor 12605103510675802917242500570212074502419946671⟩]⟩,
    ⟨(242501,242510),[.good ⟨242501,242501,.topPrime 242491⟩,.good ⟨242502,242502,.largeDivisor 148265787124970981686623365582581683059804297⟩,.good ⟨242503,242503,.largeDivisor 593090051220936574764548538077508633473297617⟩,.good ⟨242504,242504,.largeDivisor 222418858144279427334039660956112372808403591⟩,.good ⟨242505,242505,.largeDivisor 69200116998990926268872451526614489756046819⟩,.good ⟨242506,242506,.largeDivisor 173008140095231794116983677291420167970266293⟩,.good ⟨242507,242507,.largeDivisor 99657209097563840132844087004537840080677833531⟩,.good ⟨242508,242508,.largeDivisor 1186449162936724192313805445766754822999529501⟩,.good ⟨242509,242510,.topPrime 242509⟩]⟩,
    ⟨(244224,244225),[.good ⟨244224,244225,.topPrime 244219⟩]⟩,
    ⟨(247303,247306),[.good ⟨247303,247306,.topPrime 247301⟩]⟩,
    ⟨(261711,261719),[.good ⟨261711,261717,.topPrime 261707⟩,.good ⟨261718,261719,.topPrime 261713⟩]⟩,
    ⟨(263169,263178),[.good ⟨263169,263177,.topPrime 263167⟩,.good ⟨263178,263178,.topPrime 263171⟩]⟩,
    ⟨(266250,266250),[.good ⟨266250,266250,.largeDivisor 172717609621405591605350408261919127996698473⟩]⟩,
    ⟨(277504,277510),[.good ⟨277504,277509,.topPrime 277499⟩,.good ⟨277510,277510,.largeDivisor 103774388298692263849612902109515757559261651⟩]⟩,
    ⟨(288125,288130),[.good ⟨288125,288125,.largeDivisor 7374033501318363649776992469813254704115218999⟩,.good ⟨288126,288126,.largeDivisor 2048420843336914894087088809404244278305057191⟩,.good ⟨288127,288127,.largeDivisor 1170570885790317149419243117131823275893243819⟩,.good ⟨288128,288128,.largeDivisor 740780169781839725426684356666779362956337317⟩,.good ⟨288129,288129,.largeDivisor 493872301254050304036228529056480264033593909⟩,.good ⟨288130,288130,.largeDivisor 49389115664128194982614310780283028358421143⟩]⟩,
    ⟨(302535,302536),[.good ⟨302535,302535,.largeDivisor 19863212044901105292036885573155881338871939⟩,.good ⟨302536,302536,.largeDivisor 62074794636974225173866531833735721394274863⟩]⟩,
    ⟨(306180,306186),[.good ⟨306180,306180,.largeDivisor 283370398340881212391954301343749490746866853⟩,.good ⟨306181,306181,.largeDivisor 2833805792024344334565142239270031774059066529⟩,.good ⟨306182,306182,.largeDivisor 12752584217842937726650171685002158626722612481⟩,.good ⟨306183,306183,.largeDivisor 17004056515387012101951101633630839026454888787⟩,.good ⟨306184,306184,.largeDivisor 14879083998568945658976531535333526190802440809⟩,.good ⟨306185,306185,.largeDivisor 17855542276359844898366533963613222742875013577⟩,.good ⟨306186,306186,.largeDivisor 74400765730784620315876753057658722119021378121⟩]⟩,
    ⟨(349191,349194),[.good ⟨349191,349194,.topPrime 349187⟩]⟩,
    ⟨(354304,354304),[.good ⟨354304,354304,.topPrime 354301⟩]⟩,
    ⟨(362500,362506),[.good ⟨362500,362500,.largeDivisor 37059134753286342810475137908649207087452079973⟩,.good ⟨362501,362501,.largeDivisor 1111807780120918029888276749732950940859758871331⟩,.good ⟨362502,362502,.largeDivisor 420197096966726815547679569184929498657310017⟩,.good ⟨362503,362503,.largeDivisor 1680839392226359432114148581135522969354036537⟩,.good ⟨362504,362504,.largeDivisor 1891001697741962533142697188395211964901543253⟩,.good ⟨362505,362505,.largeDivisor 252141210774964598246920296346682083321520333⟩,.good ⟨362506,362506,.largeDivisor 4412605086086188889258380271673763411052961757⟩]⟩,
    ⟨(441784,441784),[.good ⟨441784,441784,.largeDivisor 7460519976572577963651013702013424603251231401⟩]⟩,
    ⟨(483328,483337),[.good ⟨483328,483333,.topPrime 483323⟩,.good ⟨483334,483334,.largeDivisor 564232623727390919971426971224655797083791599389⟩,.good ⟨483335,483335,.largeDivisor 1354189116315904810707796782962330906887277665619⟩,.good ⟨483336,483336,.largeDivisor 9596229707509385975635864028647356035977708591⟩,.good ⟨483337,483337,.topPrime 483337⟩]⟩,
    ⟨(612360,612362),[.good ⟨612360,612360,.largeDivisor 20728382262341301503581663158272872710230589751⟩,.good ⟨612361,612361,.largeDivisor 1036437730917741628973199218850586642092717740713⟩,.good ⟨612362,612362,.largeDivisor 4664053570601053068102751510558524796992760190027⟩]⟩,
    ⟨(725000,725002),[.good ⟨725000,725002,.topPrime 724993⟩]⟩,
    ⟨(784384,784385),[.good ⟨784384,784385,.topPrime 784379⟩]⟩,
    ⟨(785133,785137),[.good ⟨785133,785137,.topPrime 785129⟩]⟩,
    ⟨(818750,818751),[.good ⟨818750,818750,.largeDivisor 10278621368919428635443057645763735904051358695897⟩,.good ⟨818751,818751,.largeDivisor 68525063100407545860693577045433263593472522686277⟩]⟩,
    ⟨(966656,966664),[.good ⟨966656,966663,.topPrime 966653⟩,.good ⟨966664,966664,.topPrime 966661⟩]⟩,
    ⟨(1006020,1006029),[.good ⟨1006020,1006020,.largeDivisor 31851682264263907905996851902402736007384626515163⟩,.good ⟨1006021,1006029,.topPrime 1006021⟩]⟩,
    ⟨(1015625,1015633),[.good ⟨1015625,1015625,.largeDivisor 4949437035060914016052278517480515353454200500769⟩,.good ⟨1015626,1015626,.largeDivisor 4124575534832569312245217119343670162387055985613⟩,.good ⟨1015627,1015633,.topPrime 1015627⟩]⟩,
    ⟨(1146880,1146885),[.good ⟨1146880,1146885,.topPrime 1146877⟩]⟩,
    ⟨(1226911,1226917),[.good ⟨1226911,1226911,.largeDivisor 6462930598835919036166140229896994057712815215816119⟩,.good ⟨1226912,1226912,.largeDivisor 605905175943212953039355210944845547848034311300437⟩,.good ⟨1226913,1226913,.largeDivisor 403940405526556717027860644086201552445033817414677⟩,.good ⟨1226914,1226914,.largeDivisor 201972013560244700646881055094974049096198404054563⟩,.good ⟨1226915,1226915,.largeDivisor 6786320498898195998744846493546490084810687797086243⟩,.good ⟨1226916,1226916,.largeDivisor 942552964259455368725464128626739350562729187722343⟩,.good ⟨1226917,1226917,.largeDivisor 1885122829703853763255767389355554808232043867766127⟩]⟩,
    ⟨(1384375,1384381),[.good ⟨1384375,1384375,.largeDivisor 65597827181909361618446725160382258311459496062185187⟩,.good ⟨1384376,1384376,.largeDivisor 17570986182444456432042360497662933630772125149291697⟩,.good ⟨1384377,1384377,.largeDivisor 11714083866209711045596086053675169269286408506517781⟩,.good ⟨1384378,1384378,.largeDivisor 5857088472397733894942677201498852357314274190094127⟩,.good ⟨1384379,1384379,.largeDivisor 281142480577285893406846105250642478678491646926539213⟩,.good ⟨1384380,1384380,.largeDivisor 10933405563718445474685126413823799236051915923849849⟩,.good ⟨1384381,1384381,.largeDivisor 109334924389477562101822995224512269192519250045689937⟩]⟩,
    ⟨(1449984,1449991),[.good ⟨1449984,1449991,.topPrime 1449983⟩]⟩,
    ⟨(2453822,2453824),[.good ⟨2453822,2453824,.topPrime 2453821⟩]⟩,
    ⟨(2703132,2703135),[.good ⟨2703132,2703132,.largeDivisor 17198682785635699681936501720602786550568978454783155197⟩,.good ⟨2703133,2703133,.largeDivisor 34397505546833465739490901043695528516137395528143646241⟩,.good ⟨2703134,2703134,.largeDivisor 3158967445981839290861495282084568059812875709938125549⟩,.good ⟨2703135,2703135,.largeDivisor 842394746926802139697415587726168574569007590938839161⟩]⟩,
    ⟨(2899968,2899972),[.good ⟨2899968,2899968,.largeDivisor 1740590084251324817909869359987635423672988765683050697⟩,.good ⟨2899969,2899969,.largeDivisor 3481193373170390868329310933478335280685812386130496267⟩,.good ⟨2899970,2899970,.largeDivisor 1044361973365099824490168843189765920545473437252753083⟩,.good ⟨2899971,2899971,.largeDivisor 32491384637996437225779445252849588215915989714989364261⟩,.good ⟨2899972,2899972,.largeDivisor 8122876970709244370399987224724464056386131100190410893⟩]⟩,
    ⟨(9764867,9764874),[.good ⟨9764867,9764873,.topPrime 9764863⟩,.good ⟨9764874,9764874,.topPrime 9764873⟩]⟩,
    ⟨(19529734,19529738),[.good ⟨19529734,19529738,.topPrime 19529729⟩]⟩
  ]
  let u489:List N1.d4:= u486.map Math.B699.N10.d2.interval
  have u488:
      u527.all (fun I => N1.d18 I.1 I.2 u489) = true:= by
    decide +kernel
  let u495 (witnesses:List N1.N11.Witness):List N1.d4:=
    witnesses.map N1.N11.d58
  let u484 (b:Math.B699.N10.d2):Bool:=
    b.witnesses.all Math.B699.N10.fastWitnessCheck &&
      N1.d18 b.interval.1 b.interval.2 (u495 b.witnesses)
  have u491 {w:N1.N11.Witness} (h:Math.B699.N10.fastWitnessCheck w = true):
      N1.N11.d59 w = true:= by
    cases w with
    | special330 => rfl
    | good g =>
      cases hw:g.witness with
      | largeDivisor D => simpa only [Math.B699.N10.fastWitnessCheck,hw] using h
      | topPrime p =>
        have hc:decide (g.lower ≤ g.upper ∧ p ≤ g.lower ∧ g.upper < p + 11) && N1.d52 p = true:= by
          simpa only [Math.B699.N10.fastWitnessCheck,hw] using h
        obtain ⟨hb,hp⟩:= Bool.and_eq_true_iff.mp hc
        obtain ⟨hlo,hplower,hupper⟩:= of_decide_eq_true hb
        simp only [N1.N11.d59,N1.d28,hw,decide_eq_true_eq]
        exact ⟨hlo,u51 hp,hplower,hupper⟩
  let u492 (I:N1.d4):Prop:=
    ∀ {n j:ℕ},u22 n I → 11 < j → j ≤ n / 2 → u7 n 11 j
  let u496 (witnesses:List N1.N11.Witness):Bool:= witnesses.all N1.N11.d59
  have u500 {w:N1.N11.Witness} (hcheck:N1.N11.d59 w = true)
      {n j:ℕ} (hIn:u22 n (N1.N11.d58 w))
      (hij:11 < j) (hjn:j ≤ n / 2):u7 n 11 j:= by
    cases w with
    | good segment =>
        have hc:N1.d28 11 3 7 segment = true:= by
          simpa only [N1.N11.d59] using hcheck
        have hn:segment.lower ≤ n ∧ n ≤ segment.upper:= by
          simpa only [N1.N11.d58,N1.d27,u22] using hIn
        exact u26 (i:= 11) (r:= 3) (s:= 7)
          (g:= segment) (by decide) (by decide) hc hn.1 hn.2 hij hjn
    | special330 =>
        have hn:n = 330:= by
          have hb:330 ≤ n ∧ n ≤ 330:= by
            simpa only [N1.N11.d58,u22] using hIn
          omega
        subst n
        exact u482 j hij hjn
  have u498 {witnesses:List N1.N11.Witness}
      (hchecks:u496 witnesses = true) {n j:ℕ}
      {I:N1.d4} (hI:I ∈ u495 witnesses) (hIn:u22 n I)
      (hij:11 < j) (hjn:j ≤ n / 2):u7 n 11 j:= by
    unfold u495 at hI
    obtain ⟨w,hw,heq⟩:= List.mem_map.mp hI
    rw [← heq] at hIn
    unfold u496 at hchecks
    have hc:= List.all_eq_true.mp hchecks w hw
    exact u500 hc hIn hij hjn
  have u499 {witnesses:List N1.N11.Witness} {lo hi n j:ℕ}
      (hchecks:u496 witnesses = true)
      (hcover:N1.d18 lo hi (u495 witnesses) = true)
      (hlo:lo ≤ n) (hhi:n ≤ hi) (hij:11 < j) (hjn:j ≤ n / 2):
      u7 n 11 j:= by
    obtain ⟨I,hI,hIn⟩:= u23 (u495 witnesses)
      lo hi n hcover hlo hhi
    exact u498 hchecks hI hIn hij hjn
  have u485 {b:Math.B699.N10.d2} (h:u484 b = true):
      u492 b.interval:= by
    obtain ⟨hc,hcover⟩:= Bool.and_eq_true_iff.mp h
    have hws:u496 b.witnesses = true:= by
      apply List.all_eq_true.mpr
      intro w hw
      exact u491 (List.all_eq_true.mp hc w hw)
    intro n j hn hij hjn
    exact u499 hws hcover hn.1 hn.2 hij hjn
  have u487:u486.all u484 = true:= by
    decide +kernel
  let u493 (intervals:List N1.d4):Prop:=
    ∀ I ∈ intervals,u492 I
  have u490:u493 u489:= by
    intro I hI
    obtain ⟨b,hb,rfl⟩:= List.mem_map.mp hI
    exact u485 (List.all_eq_true.mp u487 b hb)
  have u494 {intervals:List N1.d4} {lo hi:ℕ}
      (hsound:u493 intervals) (hcover:N1.d18 lo hi intervals = true):
      u492 (lo,hi):= by
    intro n j hIn hij hjn
    obtain ⟨I,hI,hmem⟩:= u23 intervals lo hi n hcover hIn.1 hIn.2
    exact hsound I hI hmem hij hjn
  have u483 {n j:ℕ}
      (hmem:u497 n u527) (hij:11 < j) (hjn:j ≤ n / 2):
      u7 n 11 j:= by
    obtain ⟨I,hI,hn⟩:= hmem
    exact u494 u490
      (List.all_eq_true.mp u488 I hI) hn hij hjn
  have hc:u7 n 11 j:= by
    classical
    by_contra hno
    have hn109:= u136 hij hjn hno hn
    have hn04:= u286 hij hjn hno hn109
    have hmember:= u476 hij hjn hno hn04
    exact hno (u483 hmember hij hjn)
  obtain ⟨p,hp,hpi,hg⟩:= hc
  exact ⟨p,hp,hpi,dvd_trans hg (Nat.gcd_dvd_left _ _),dvd_trans hg (Nat.gcd_dvd_right _ _)⟩
end Math.B699.N8
namespace Math.B699.N8
end Math.B699.N8
end Contribution.B699I11BelowFinalCandidate

#check (Contribution.B699I11BelowFinalCandidate.Math.B699.N8.d15 : ∀ {n j : Nat}, n < (2 : Nat) ^ 15360 → 11 < j → j ≤ n / 2 → ∃ p : Nat, Nat.Prime p ∧ 11 ≤ p ∧ p ∣ Nat.choose n 11 ∧ p ∣ Nat.choose n j)
#print axioms Contribution.B699I11BelowFinalCandidate.Math.B699.N8.d15
