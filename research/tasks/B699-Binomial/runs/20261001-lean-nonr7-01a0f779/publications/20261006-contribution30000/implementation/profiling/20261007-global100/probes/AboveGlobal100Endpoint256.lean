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
namespace Contribution.B699ProfilingAboveGlobal100Endpoint256
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
namespace N1
end N1
namespace B699
end B699
namespace N3
end N3
namespace N4
end N4
namespace N5
end N5
namespace N5.N15
end N5.N15
namespace Math.B699.N6
end Math.B699.N6
namespace Math.B699.N7
end Math.B699.N7
namespace Math.B699.N8
end Math.B699.N8
namespace Math.B699.N9
end Math.B699.N9
namespace Math.B699.N10
end Math.B699.N10
namespace Math.B699.N11
end Math.B699.N11
namespace Math.B699.N12
end Math.B699.N12
namespace Math.B699.N13
end Math.B699.N13
namespace Math.B699.N14
end Math.B699.N14
namespace Math.B699.N18
end Math.B699.N18
namespace Math.B699.N19
end Math.B699.N19
namespace Math.B699.N20
end Math.B699.N20
namespace Math.B699.N21
end Math.B699.N21
namespace Math.B699.N22.N16
end Math.B699.N22.N16
namespace Math.B699.N23
end Math.B699.N23
namespace B699
theorem d109 {n k p e:ℕ}
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
end B699
namespace N4
def Common (n i j:ℕ):Prop:=
  ∃ p:ℕ,p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j)
end N4
namespace N3
def d108 (threshold a:ℕ):ℕ:=
  (a.primeFactors.filter (fun p ↦ threshold ≤ p)).prod (fun p ↦ p ^ a.factorization p)
end N3
namespace N4
theorem d114 {n i p e:ℕ}
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
theorem d35 {N k t Q:ℕ}
    (hk:k ≤ N) (hlo:N - k < t) (hhi:t ≤ N) (hQt:Q ∣ t):
    Q ∣ N.descFactorial k:= by
  rw [Nat.descFactorial_eq_prod_range]
  have hmem:N - t ∈ Finset.range k:= Finset.mem_range.mpr (by omega)
  have hd:= Finset.dvd_prod_of_mem (fun r:ℕ ↦ N - r) hmem
  have heq:N - (N - t) = t:= by omega
  rw [heq] at hd
  exact hQt.trans hd
theorem d112 (s:Finset ℕ) (f:ℕ → ℕ) (B:ℕ):
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
def d5 (n i j:ℕ):ℕ:=
  ((n.choose i).primeFactors.filter (fun p ↦ i ≤ p ∧ ¬ p ∣ n.choose j)).prod
    (fun p ↦ p ^ (n.choose i).factorization p)
theorem d6 {n i j:ℕ}
    (hno:¬ Common n i j):
    d5 n i j = N3.d108 i (n.choose i):= by
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
  unfold d5 N3.d108
  rw [hsets]
end N4
namespace N4
def d136 (n i:ℕ):ℕ:=
  ((n.choose i).primeFactors.filter (fun p ↦ p < i)).prod
    (fun p ↦ p ^ (n.choose i).factorization p)
theorem d137 {n i:ℕ} (hin:i ≤ n):
    d136 n i * N3.d108 i (n.choose i) = n.choose i:= by
  classical
  unfold d136 N3.d108
  calc
    _ = (n.choose i).primeFactors.prod (fun p ↦ p ^ (n.choose i).factorization p):= by
      simpa only [Nat.not_lt] using Finset.prod_filter_mul_prod_filter_not
        (n.choose i).primeFactors (fun p ↦ p < i)
        (fun p ↦ p ^ (n.choose i).factorization p)
    _ = n.choose i:=
      (Nat.prod_primeFactors_pow_factorization (Nat.ne_of_gt (Nat.choose_pos hin))).symm
end N4
namespace N5
open N4
def d19 (N s:ℕ):ℕ:=
  ∏ h ∈ Finset.Icc 1 s,N.choose h
def d84 (n i r:ℕ):ℕ:=
  ∏ h ∈ Finset.Icc 1 (i - r - 1),(n - i + h).choose h
def d145 (n i j r s:ℕ):ℕ:=
  d19 j s * d19 (n - j) s * d84 n i r
theorem d140 {j k Q:ℕ} (hQ:0 < Q)
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
theorem d115 {n i j p e:ℕ}
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
  have ha:a < i:= d114 hp hpi (by omega) he heval
  have hb:b ≤ a:= by
    by_contra h
    apply havoid
    apply B699.d109 hp (by omega)
      (by omega:1 ≤ e + if p = i then 1 else 0)
    change a < b
    omega
  have hsum:b + c = a:= by
    have hn:j + (n - j) = n:= by omega
    simpa only [hn] using d140 (j:= j) (k:= n - j) hQ
      (by simpa only [hn] using hb)
  have hpow:p ^ e ∣ Q:= Nat.pow_dvd_pow p (by omega)
  have hd:∀ N:ℕ,Q ∣ N - N % Q:= by
    intro N
    refine ⟨N / Q,?_⟩
    have hm:= Nat.mod_add_div N Q
    omega
  exact ⟨a,b,c,ha,hsum,hpow.trans (hd n),hpow.trans (hd j),
    hpow.trans (hd (n - j))⟩
theorem d111 {N h b p e:ℕ}
    (hp:p.Prime) (hhp:h < p) (hhN:h ≤ N)
    (hbh:b < h) (hdiv:p ^ e ∣ N - b):
    p ^ e ∣ N.choose h:= by
  have hd:p ^ e ∣ N.descFactorial h:=
    d35 hhN (by omega) (Nat.sub_le N b) hdiv
  rw [Nat.descFactorial_eq_factorial_mul_choose] at hd
  exact ((hp.coprime_factorial_of_lt hhp).pow_left e).dvd_of_dvd_mul_left hd
theorem d110 {N i s b p e:ℕ}
    (hp:p.Prime) (hpi:i ≤ p) (hsi:s < i) (hiN:i ≤ N)
    (hdiv:p ^ e ∣ N - b):
    p ^ (e * (s - b)) ∣ d19 N s:= by
  have hlocal:∀ h ∈ Finset.Icc (b + 1) s,p ^ e ∣ N.choose h:= by
    intro h hh
    obtain ⟨hlo,hhi⟩:= Finset.mem_Icc.mp hh
    exact d111 hp (by omega) (by omega) (by omega) hdiv
  have hd:= Finset.prod_dvd_prod_of_dvd (s:= Finset.Icc (b + 1) s)
    (fun _ ↦ p ^ e) (fun h ↦ N.choose h) hlocal
  have hsub:Finset.Icc (b + 1) s ⊆ Finset.Icc 1 s:= by
    intro h hh
    simp only [Finset.mem_Icc] at hh ⊢
    omega
  have hd2:= hd.trans (Finset.prod_dvd_prod_of_subset _ _ _ hsub)
  simpa only [Finset.prod_const,Nat.card_Icc,Nat.add_sub_add_right,← pow_mul,
    d19] using hd2
theorem d113 {n i r a p e:ℕ}
    (hp:p.Prime) (hpi:i ≤ p) (hin:i ≤ n) (ha:a < i)
    (hdiv:p ^ e ∣ n - a):
    p ^ (e * (a - r)) ∣ d84 n i r:= by
  have hlocal:∀ h ∈ Finset.Icc (i - a) (i - r - 1),
      p ^ e ∣ (n - i + h).choose h:= by
    intro h hh
    obtain ⟨hlo,hhi⟩:= Finset.mem_Icc.mp hh
    have hhN:h ≤ n - i + h:= by omega
    have hd:p ^ e ∣ (n - i + h).descFactorial h:=
      d35 hhN (by omega) (by omega) hdiv
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
  simpa only [Finset.prod_const,hcard,← pow_mul,d84] using hd2
theorem d147 (a b c r s:ℕ) (hsplit:b + c = a):
    2 * s - r ≤ (s - b) + (s - c) + (a - r):= by
  omega
theorem d116 {n i j r s p e:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2)
    (hsi:s < i) (hp:p.Prime) (hpi:i ≤ p) (he:0 < e)
    (heval:e ≤ (n.choose i).factorization p)
    (havoid:¬ p ∣ n.choose j):
    p ^ (e * (2 * s - r)) ∣ d145 n i j r s:= by
  obtain ⟨a,b,c,ha,hsum,hn,hj,hk⟩:=
    d115 hi hij hjn hp hpi he heval havoid
  have hleft:= d110 hp hpi hsi (by omega:i ≤ j) hj
  have hright:= d110 hp hpi hsi (by omega:i ≤ n - j) hk
  have hmother:= d113 (r:= r) hp hpi (by omega:i ≤ n) ha hn
  have hmul:= Nat.mul_dvd_mul (Nat.mul_dvd_mul hleft hright) hmother
  have hcover:= d147 a b c r s hsum
  have hexp:e * (2 * s - r) ≤ e * (s - b) + e * (s - c) + e * (a - r):= by
    simpa only [Nat.mul_add] using Nat.mul_le_mul_left e hcover
  have hpow:= Nat.pow_dvd_pow p hexp
  apply hpow.trans
  simpa only [pow_add,d145] using hmul
theorem d3 {n i j r s:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i):
    d5 n i j ^ (2 * s - r) ∣ d145 n i j r s:= by
  classical
  unfold d5
  rw [← Finset.prod_pow]
  simp_rw [← pow_mul]
  apply d112
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
    exact d116 hi hij hjn hsi hprime hpi he le_rfl havoid
theorem d4 {n i j r s:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
    (hno:¬ Common n i j):
    N3.d108 i (n.choose i) ^ (2 * s - r) ∣
      d145 n i j r s:= by
  rw [← d6 hno]
  exact d3 hi hij hjn hsi
theorem d20 {N i s:ℕ} (hsi:s < i) (hiN:i ≤ N):
    0 < d19 N s:= by
  unfold d19
  apply Finset.prod_pos
  intro h hh
  have:= (Finset.mem_Icc.mp hh).2
  exact Nat.choose_pos (by omega)
theorem d85 {n i r:ℕ} (hin:i ≤ n):
    0 < d84 n i r:= by
  unfold d84
  apply Finset.prod_pos
  intro h _
  exact Nat.choose_pos (by omega)
end N5
namespace N5
open N4
def d151 (s:ℕ):ℕ:= ∑ h ∈ Finset.Icc 1 s,h
def d150 (s:ℕ):ℕ:= ∏ h ∈ Finset.Icc 1 s,h.factorial
def d149 (i r s:ℕ):ℕ:=
  2 * d151 s + d151 (i - r - 1)
def d148 (i r s:ℕ):ℕ:=
  2 ^ (2 * d151 s) * (d150 s) ^ 2 *
    d150 (i - r - 1)
theorem d21 (N s:ℕ):
    d150 s * d19 N s ≤ N ^ d151 s:= by
  unfold d150 d19
  calc
    _ = ∏ h ∈ Finset.Icc 1 s,h.factorial * N.choose h:=
      (Finset.prod_mul_distrib).symm
    _ ≤ ∏ h ∈ Finset.Icc 1 s,N ^ h:= by
      apply Finset.prod_le_prod (fun _ _ ↦ Nat.zero_le _)
      intro h _
      rw [← Nat.descFactorial_eq_factorial_mul_choose]
      exact Nat.descFactorial_le_pow N h
    _ = _:= by rw [Finset.prod_pow_eq_pow_sum] <;> rfl
theorem d86 {n i r:ℕ} (hin:i ≤ n):
    d150 (i - r - 1) * d84 n i r ≤
      n ^ d151 (i - r - 1):= by
  unfold d150 d84
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
theorem d62 (j k:ℕ):
    4 * (j * k) ≤ (j + k) ^ 2:= by
  rcases le_total j k with h | h
  · have he:k = j + (k - j):= by omega
    rw [he]
    nlinarith
  · have he:j = k + (j - k):= by omega
    rw [he]
    nlinarith
theorem d146 {n i j r s:ℕ}
    (hin:i ≤ n) (hjn:j ≤ n):
    d148 i r s * d145 n i j r s ≤
      n ^ d149 i r s:= by
  let T:= d151 s
  let L:= i - r - 1
  let B:= d150 s
  have hx:= d21 j s
  have hy:= d21 (n - j) s
  have hc:B ^ 2 * (d19 j s * d19 (n - j) s) ≤
      (j * (n - j)) ^ T:= by
    calc
      _ = (B * d19 j s) * (B * d19 (n - j) s):= by ring
      _ ≤ j ^ T * (n - j) ^ T:= Nat.mul_le_mul hx hy
      _ = _:= (mul_pow _ _ _).symm
  have hjk:4 * (j * (n - j)) ≤ n ^ 2:= by
    have hn:j + (n - j) = n:= by omega
    simpa only [hn] using d62 j (n - j)
  have hchildren:
      2 ^ (2 * T) * (B ^ 2 * (d19 j s * d19 (n - j) s)) ≤
        n ^ (2 * T):= by
    calc
      _ ≤ 2 ^ (2 * T) * (j * (n - j)) ^ T:= Nat.mul_le_mul_left _ hc
      _ = (4 * (j * (n - j))) ^ T:= by
        rw [show (4:ℕ) = 2 ^ 2 by decide]
        simp only [mul_pow,pow_mul]
      _ ≤ (n ^ 2) ^ T:= Nat.pow_le_pow_left hjk T
      _ = _:= by rw [← pow_mul]
  have hm:= d86 (r:= r) hin
  calc
    d148 i r s * d145 n i j r s =
        (2 ^ (2 * T) * (B ^ 2 * (d19 j s * d19 (n - j) s))) *
          (d150 L * d84 n i r):= by
      unfold d148 d145
      dsimp only [T,B,L]
      ring
    _ ≤ n ^ (2 * T) * n ^ d151 L:= Nat.mul_le_mul hchildren hm
    _ = n ^ d149 i r s:= by
      rw [← pow_add] <;> rfl
theorem d89 {n i j r s:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
    (hno:¬ Common n i j):
    d148 i r s * N3.d108 i (n.choose i) ^ (2 * s - r) ≤
      n ^ d149 i r s:= by
  have hZ:0 < d145 n i j r s:= by
    unfold d145
    exact Nat.mul_pos (Nat.mul_pos
      (d20 hsi (by omega:i ≤ j))
      (d20 hsi (by omega:i ≤ n - j)))
      (d85 (by omega:i ≤ n))
  have hv:= Nat.le_of_dvd hZ
    (d4 hi hij hjn hsi hno)
  exact (Nat.mul_le_mul_left (d148 i r s) hv).trans
    (d146 (by omega) (by omega))
end N5
namespace Math.B699.N6
def d104 (Q v:ℕ) (d:ℤ):ℕ:=
  let r:= Int.toNat (((v:ℤ) * d) % (Q:ℤ))
  if r = 0 then Q else r
@[simp] theorem d105 (Q v:ℕ):d104 Q v 0 = Q:= by
  simp [d104]
end Math.B699.N6
namespace N5
open N4
theorem d139 (n i:ℕ):
    d136 n i = ((Finset.range i).filter Nat.Prime).prod
      (fun p ↦ p ^ (n.choose i).factorization p):= by
  classical
  unfold d136
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
end N5
namespace N5
open N4
theorem d153 (s:ℕ):0 < d150 s:= by
  unfold d150
  apply Finset.prod_pos
  intro h _
  exact Nat.factorial_pos h
theorem d152 (i r s:ℕ):0 < d148 i r s:= by
  unfold d148
  exact Nat.mul_pos
    (Nat.mul_pos (Nat.pow_pos (by decide:0 < 2))
      (Nat.pow_pos (d153 s)))
    (d153 _)
theorem d31 (n:ℕ):
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
theorem d106 {n i:ℕ} (hn:0 < n) (hin:i ≤ n)
    (hlarge:i * (i - 1) ≤ n):
    n ^ i ≤ 2 * n.descFactorial i:= by
  have he:= d31 n i hin
  have hs:2 * (∑ a ∈ Finset.range i,a) ≤ n:= by
    have hsum:= Finset.sum_range_id_mul_two i
    nlinarith
  have hm:= Nat.mul_le_mul_right (n ^ i) hs
  rw [pow_succ'] at he
  have hmul:n * n ^ i ≤ n * (2 * n.descFactorial i):= by
    nlinarith
  exact Nat.le_of_mul_le_mul_left hmul hn
theorem d88 {n i j r s:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
    (hlarge:i * (i - 1) ≤ n) (hno:¬ Common n i j):
    d148 i r s * n ^ (i * (2 * s - r)) ≤
      (2 * i.factorial) ^ (2 * s - r) *
        (d136 n i) ^ (2 * s - r) * n ^ d149 i r s:= by
  have hn:0 < n:= by omega
  have hin:i ≤ n:= by omega
  have hhalf:= d106 hn hin hlarge
  have hv:= d89 (r:= r) hi hij hjn hsi hno
  have hdesc:n.descFactorial i =
      i.factorial * (d136 n i * N3.d108 i (n.choose i)):= by
    rw [d137 hin,Nat.descFactorial_eq_factorial_mul_choose]
  calc
    _ = d148 i r s * (n ^ i) ^ (2 * s - r):= by rw [← pow_mul]
    _ ≤ d148 i r s * (2 * n.descFactorial i) ^ (2 * s - r):=
      Nat.mul_le_mul_left _ (Nat.pow_le_pow_left hhalf _)
    _ = (2 * i.factorial) ^ (2 * s - r) * (d136 n i) ^ (2 * s - r) *
        (d148 i r s *
          N3.d108 i (n.choose i) ^ (2 * s - r)):= by
      rw [hdesc]
      simp only [mul_pow]
      ring
    _ ≤ _:= Nat.mul_le_mul_left _ hv
end N5
namespace N5.N15
open N4
def d107 (n p:ℕ):ℕ:= p ^ (n.choose 11).factorization p
end N5.N15
namespace N0
def product (k t:ℕ):ℕ:= ∏ i ∈ Finset.Icc 1 k,(t + i)
end N0
namespace N1
open N0
theorem d34 (k j:ℕ) (hj:j ∈ Finset.Icc 1 k):
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
theorem d138 (k n p:ℕ) (hk:1 ≤ k) (hp:p.Prime):
    ∃ j ∈ Finset.Icc 1 k,
      (product k n).factorization p ≤
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
  rw [d34 k j hj] at hprod
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
  rw [product,Nat.factorization_prod_apply hne]
  have hsplit:= Finset.sum_erase_add (s:= Finset.Icc 1 k)
    (f:= fun i ↦ (n + i).factorization p) hj
  omega
end N1
namespace N5
private theorem d135 {n i:ℕ} (hin:i ≤ n):
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
theorem d12 {n i p:ℕ}
    (hi:1 ≤ i) (hin:i ≤ n) (hp:p.Prime):
    ∃ a < i,(n.choose i).factorization p + i.factorization p ≤
      (n - a).factorization p:= by
  obtain ⟨j,hj,hbound⟩:=
    N1.d138 i (n - i) p hi hp
  have hjBounds:= Finset.mem_Icc.mp hj
  have hchoose:n.choose i ≠ 0:= (Nat.choose_pos hin).ne'
  have hfactorial:i.factorial = i * (i - 1).factorial:= by
    simpa only [show i - 1 + 1 = i by omega] using Nat.factorial_succ (i - 1)
  have hfactorization:i.factorial.factorization p =
      i.factorization p + (i - 1).factorial.factorization p:= by
    rw [hfactorial,Nat.factorization_mul (by omega:i ≠ 0)
      (Nat.factorial_ne_zero (i - 1)),Finsupp.add_apply]
  rw [d135 hin,
    Nat.descFactorial_eq_factorial_mul_choose,
    Nat.factorization_mul (Nat.factorial_ne_zero i) hchoose,
    Finsupp.add_apply,hfactorization] at hbound
  have hposition:n - i + j = n - (i - j):= by omega
  rw [hposition] at hbound
  exact ⟨i - j,by omega,by omega⟩
theorem d13 {n i p:ℕ}
    (hi:1 ≤ i) (hin:i ≤ n) (hp:p.Prime):
    ∃ a < i,p ^ ((n.choose i).factorization p + i.factorization p) ∣ n - a:= by
  obtain ⟨a,ha,hval⟩:= d12 hi hin hp
  exact ⟨a,ha,(hp.pow_dvd_iff_le_factorization (by omega:n - a ≠ 0)).2 hval⟩
end N5
namespace N5.N15
structure d2 (n p:ℕ) where
  offset:ℕ
  cofactor:ℕ
  offset_lt:offset < 11
  cofactor_pos:1 ≤ cofactor
  equation:cofactor * d107 n p = n - offset
end N5.N15
namespace Math.B699.N21
open Polynomial
noncomputable def moment (p:ℚ[X]):ℚ:=
  p.sum fun n a => a / ((n:ℚ) + 1)
@[simp] theorem d83:moment (0:ℚ[X]) = 0:= by
  simp [moment]
@[simp] theorem d79 (n:ℕ) (a:ℚ):
    moment (Polynomial.monomial n a) = a / ((n:ℚ) + 1):= by
  simp [moment,Polynomial.sum_monomial_index]
@[simp] theorem d77 (n:ℕ):
    moment ((X:ℚ[X]) ^ n) = 1 / ((n:ℚ) + 1):= by
  rw [Polynomial.X_pow_eq_monomial,d79]
@[simp] theorem d78 (p q:ℚ[X]):
    moment (p + q) = moment p + moment q:= by
  unfold moment
  apply Polynomial.sum_add_index
  · intro n
    exact zero_div _
  · intro n a b
    exact add_div a b _
@[simp] theorem d81 (c:ℚ) (p:ℚ[X]):
    moment (c • p) = c * moment p:= by
  unfold moment
  rw [Polynomial.sum_smul_index p c _ (by intro n; exact zero_div _)]
  simpa only [smul_eq_mul,mul_div_assoc] using
    (Polynomial.smul_sum p c (fun n a => a / ((n:ℚ) + 1))).symm
noncomputable def d74:ℚ[X] →ₗ[ℚ] ℚ where
  toFun:= moment
  map_add':= d78
  map_smul' c p:= by
    simpa only [smul_eq_mul,RingHom.id_apply] using d81 c p
@[simp] theorem d75 (p:ℚ[X]):d74 p = moment p:= rfl
@[simp] theorem d82 (p q:ℚ[X]):
    moment (p - q) = moment p - moment q:= by
  exact map_sub d74 p q
@[simp] theorem d76 (c:ℚ) (p:ℚ[X]):
    moment (Polynomial.C c * p) = c * moment p:= by
  simpa only [Polynomial.smul_eq_C_mul] using d81 c p
@[simp] theorem d80:moment (1:ℚ[X]) = 1:= by
  simpa only [pow_zero,Nat.cast_zero,zero_add,div_one] using d77 0
noncomputable def d8 (a b:ℕ):ℚ[X]:=
  X ^ a * (1 - X) ^ b
def d10 (a b:ℕ):ℚ:=
  (a.factorial:ℚ) * (b.factorial:ℚ) / ((a + b + 1).factorial:ℚ)
private theorem d43 (n:ℕ):(n.factorial:ℚ) ≠ 0:=
  Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero n)
private theorem d87 (n:ℕ):(n:ℚ) + 1 ≠ 0:= by
  have h:((n + 1:ℕ):ℚ) ≠ 0:= Nat.cast_ne_zero.mpr (Nat.succ_ne_zero n)
  simpa only [Nat.cast_add,Nat.cast_one] using h
@[simp] theorem d11 (a:ℕ):
    d10 a 0 = 1 / ((a:ℚ) + 1):= by
  unfold d10
  simp only [Nat.add_zero,Nat.factorial_zero,Nat.cast_one,mul_one]
  rw [Nat.factorial_succ]
  simp only [Nat.cast_mul,Nat.cast_add,Nat.cast_one]
  field_simp [d43 a,d87 a] <;> ring
end Math.B699.N21
namespace Math.B699.N21
open Polynomial
inductive d0:ℚ[X] → Prop
  | zero:d0 0
  | basis (a b:ℕ):d0 (d8 a b)
  | add {p q:ℚ[X]}:d0 p → d0 q → d0 (p + q)
  | scale (c:ℚ) (hc:0 ≤ c) {p:ℚ[X]}:
      d0 p → d0 (Polynomial.C c * p)
end Math.B699.N21
namespace Math.B699.N21
open Polynomial
noncomputable def d9:List (ℕ × ℕ × ℚ) → ℚ[X]
  | [] => 0
  | (a,b,c)::cs => Polynomial.C c * d8 a b + d9 cs
end Math.B699.N21
namespace Math.B699.N20
open Polynomial Math.B699.N21 Math.B699.N22
noncomputable def halfLeft:ℚ[X]:= Polynomial.C (1 / 2:ℚ) * X
noncomputable def d63:ℚ[X]:= Polynomial.C (1 / 2:ℚ) + Polynomial.C (1 / 2:ℚ) * X
inductive d1 (lam:ℚ):ℚ[X] → ℚ[X] → Prop
  | leaf {w f:ℚ[X]}:d0 w → d0 f →
      d0 (Polynomial.C lam - f) → d1 lam w f
  | split {w f:ℚ[X]}:
      d1 lam (w.comp halfLeft) (f.comp halfLeft) →
      d1 lam (w.comp d63) (f.comp d63) → d1 lam w f
end Math.B699.N20
namespace Math.B699.N7
theorem d123 (p Z N alpha a b u v:ℕ)
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
theorem d7 (p N alpha M H a b:ℕ)
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
theorem d72 (p Z N alpha M a b u v:ℕ)
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
theorem d25 (p Z N alpha M H a b u v:ℕ)
    (hb:0 < b) (hv:0 < v)
    (hp:p ^ b ≤ 2 ^ a) (hZ:2 ^ u ≤ Z ^ v)
    (hrate:a * v * N ≤ u * b * alpha)
    (hbase:a * N * M ≤ b * H * alpha)
    (hlookahead:2 * alpha * b * v + a * v * N * (M + 1) ≤ u * b * alpha * M):
    p ^ N ≤ Z ^ alpha ∧
      (p ^ N) ^ M ≤ (2 ^ H) ^ alpha ∧
      4 ^ alpha * (p ^ N) ^ (M + 1) ≤ Z ^ (alpha * M):= by
  exact ⟨d123 p Z N alpha a b u v hb hv hp hZ hrate,
    d7 p N alpha M H a b hb hp hbase,
    d72 p Z N alpha M a b u v hb hv hp hZ hlookahead⟩
end Math.B699.N7
namespace Math.B699.N7
theorem d40 (Z Y:ℕ) (hZ:1 < Z):
    ∃ m:ℕ,4 * Y < Z ^ m:= by
  exact ⟨4 * Y,Nat.lt_pow_self hZ⟩
def d65 (Z Y:ℕ) (hZ:1 < Z):ℕ:=
  Nat.find (d40 Z Y hZ)
theorem d71 (Z Y:ℕ) (hZ:1 < Z):
    4 * Y < Z ^ d65 Z Y hZ:= by
  exact Nat.find_spec (d40 Z Y hZ)
theorem d68 (Z Y:ℕ) (hZ:1 < Z)
    {k:ℕ} (hk:k < d65 Z Y hZ):Z ^ k ≤ 4 * Y:= by
  exact Nat.le_of_not_gt (Nat.find_min (d40 Z Y hZ) hk)
theorem d69 (Z Y:ℕ) (hZ:1 < Z) (hY:0 < Y):
    0 < d65 Z Y hZ:= by
  apply Nat.pos_of_ne_zero
  intro hz
  have hthreshold:= d71 Z Y hZ
  rw [hz,Nat.pow_zero] at hthreshold
  omega
theorem d70 (Z Y:ℕ) (hZ:1 < Z) (hY:0 < Y):
    Z ^ (d65 Z Y hZ - 1) ≤ 4 * Y:= by
  have hpos:= d69 Z Y hZ hY
  exact d68 Z Y hZ (by omega)
theorem d67 (Z Y0 Y M:ℕ) (hZ:1 < Z)
    (hY:Y0 ≤ Y) (hM:0 < M) (hprevious:Z ^ (M - 1) ≤ 4 * Y0):
    M ≤ d65 Z Y hZ:= by
  apply Nat.le_of_not_gt
  intro h
  have hsmall:d65 Z Y hZ ≤ M - 1:= by omega
  have hpower:Z ^ d65 Z Y hZ ≤ Z ^ (M - 1):=
    Nat.pow_le_pow_right (by omega) hsmall
  have hupper:Z ^ d65 Z Y hZ ≤ 4 * Y:=
    Nat.le_trans hpower (Nat.le_trans hprevious (Nat.mul_le_mul_left 4 hY))
  exact Nat.not_le_of_gt (d71 Z Y hZ) hupper
theorem d73 (Z J alpha M k:ℕ)
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
theorem d14 (Z J alpha M m Y0 Y:ℕ)
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
          d73 Z J alpha M k hrate hlookahead
        _ = (Z ^ (m - 1)) ^ alpha:= by
          rw [hpred,← Nat.pow_mul,Nat.mul_comm alpha (M + k)]
    have hcombined:= Nat.le_trans hscaled (Nat.pow_le_pow_left hprevious alpha)
    have hcancel:4 ^ alpha * J ^ m ≤ 4 ^ alpha * Y ^ alpha:= by
      simpa only [Nat.mul_pow] using hcombined
    exact Nat.le_of_mul_le_mul_left hcancel (Nat.pow_pos (by decide:0 < (4:ℕ)))
theorem d66 (Z J alpha M Y0 Y:ℕ) (hZ:1 < Z)
    (hY0:0 < Y0) (hY:Y0 ≤ Y) (hM:0 < M)
    (hprevious:Z ^ (M - 1) ≤ 4 * Y0)
    (hrate:J ≤ Z ^ alpha) (hbase:J ^ M ≤ Y0 ^ alpha)
    (hlookahead:4 ^ alpha * J ^ (M + 1) ≤ Z ^ (alpha * M)):
    J ^ d65 Z Y hZ ≤ Y ^ alpha:= by
  exact d14 Z J alpha M (d65 Z Y hZ) Y0 Y
    hY (d67 Z Y0 Y M hZ hY hM hprevious)
    (d70 Z Y hZ (Nat.lt_of_lt_of_le hY0 hY))
    hrate hbase hlookahead
end Math.B699.N7
namespace Math.B699.N18
open scoped BigOperators
open Polynomial
noncomputable def d22 (n:ℕ) (a:ℕ → ℤ):ℤ[X]:=
  ∑ r ∈ Finset.range (n + 1),Polynomial.monomial r (a r)
theorem d23 (n r:ℕ) (a:ℕ → ℤ):
    (d22 n a).coeff r = if r ≤ n then a r else 0:= by
  classical
  simp [d22,Polynomial.finsetSum_coeff,Polynomial.coeff_monomial,
    Finset.sum_ite_eq',Nat.lt_succ_iff]
def d98 (A B C r:ℕ):ℤ:=
  (-1:ℤ) ^ (C + r) * ((A + B + C + 1).choose r:ℤ) *
    ((A + C - r).choose A:ℤ)
def d118 (A B C r:ℕ):ℕ:=
  (A + C - r).choose C * (B + r).choose r
def d117 (A B C r:ℕ):ℤ:=
  (-1:ℤ) ^ C * (d118 A B C r:ℤ)
def d36 (A B C r:ℕ):ℤ:=
  (-1:ℤ) ^ r * ((A + r).choose r:ℤ) *
    ((A + B + C + 1).choose (A + C + r + 1):ℤ)
noncomputable def d100 (A B C:ℕ):ℤ[X]:=
  d22 C (d98 A B C)
noncomputable def d120 (A B C:ℕ):ℤ[X]:=
  d22 A (d117 A B C)
noncomputable def d37 (A B C:ℕ):ℤ[X]:=
  d22 B (d36 A B C)
def qContent (A B C:ℕ):ℕ:=
  (Finset.range (A + 1)).gcd (d118 A B C)
@[simp] theorem d101 (A B C:ℕ):
    (d100 A B C).coeff 0 = (-1:ℤ) ^ C * ((A + C).choose A:ℤ):= by
  simp [d100,d23,d98]
@[simp] theorem d121 (A B C:ℕ):
    (d120 A B C).coeff 0 = (-1:ℤ) ^ C * ((A + C).choose C:ℤ):= by
  simp [d120,d23,d117,d118]
@[simp] theorem d38 (A B C:ℕ):
    (d37 A B C).coeff 0 =
      ((A + B + C + 1).choose (A + C + 1):ℤ):= by
  simp [d37,d23,d36]
def d119 (A B C r:ℕ):ℤ:=
  d117 A B C r / (qContent A B C:ℤ)
end Math.B699.N18
namespace Math.B699.N19
open scoped BigOperators
open Math.B699.N18
def d99 (u B r:ℕ):ℤ:=
  d98 u B u r / (qContent u B u:ℤ)
end Math.B699.N19
namespace Math.B699.N22.N16
variable {R:Type*} [CommRing R]
open scoped BigOperators
private theorem d103 (C r:ℕ) (hr:r ≤ C):
    (-1:R) ^ (C - r) = (-1:R) ^ (C + r):= by
  conv_lhs => rw [neg_one_pow_eq_pow_mod_two]
  conv_rhs => rw [neg_one_pow_eq_pow_mod_two]
  congr 1
  omega
theorem d102 (A B C:ℕ) (z u:R):
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
  rw [neg_pow,d103 C r hle,hexp,pow_add]
  ring
theorem d122 (A B C:ℕ) (z u:R):
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
theorem d39 (A B C:ℕ) (z u:R):
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
end Math.B699.N22.N16
open scoped Nat
namespace Math.B699.N23
open Math.B699.N18
def d42 (u v:ℕ):ℕ:=
  (u + v / 2) ! * (v / 2) !
def d41 (u v:ℕ):ℕ:=
  u ! * v !
end Math.B699.N23
namespace Math.B699.N23
open Math.B699.N18
def d134 (u v:ℕ):ℚ:=
  (d42 u v:ℚ) / (d41 u v:ℚ)
end Math.B699.N23
namespace Math.B699.N8
def d44 (c d delta m:ℕ):ℚ:=
  ((((c + d) * m - delta).factorial:ℕ):ℚ) /
    (((((d * m - delta).factorial:ℕ):ℚ) ^ 2) *
      ((((c - d) * m + delta - 1).factorial:ℕ):ℚ))
def beta (c d:ℕ):ℚ:=
  (((c + d:ℕ):ℚ) ^ (c + d)) /
    ((d:ℚ) ^ (2 * d) * ((c - d:ℕ):ℚ) ^ (c - d))
theorem d45 (c d delta m:ℕ):
    0 < d44 c d delta m:= by
  unfold d44
  positivity
theorem d46 (n k:ℕ):
    (((n + k).factorial:ℕ):ℚ) =
      ((n.factorial:ℕ):ℚ) * (((n + 1).ascFactorial k:ℕ):ℚ):= by
  rw [← Nat.factorial_mul_ascFactorial,Nat.cast_mul]
theorem d47 (n:ℕ) (hn:0 < n):
    ((n.factorial:ℕ):ℚ) = (n:ℚ) * (((n - 1).factorial:ℕ):ℚ):= by
  have hpred:n - 1 + 1 = n:= Nat.sub_add_cancel (by omega)
  have hnat:n.factorial = n * (n - 1).factorial:= by
    calc
      n.factorial = (n - 1 + 1).factorial:= congrArg Nat.factorial hpred.symm
      _ = n * (n - 1).factorial:= by rw [Nat.factorial_succ,hpred]
  rw [hnat,Nat.cast_mul]
theorem d48 (c d m:ℕ)
    (hc:d < c) (hd:0 < d) (hm:0 < m):
    d44 c d 1 m =
      ((d:ℚ) ^ 2 / (((c + d:ℕ):ℚ) * ((c - d:ℕ):ℚ))) *
        d44 c d 0 m:= by
  have hcp:0 < c + d:= by omega
  have hcm:0 < c - d:= Nat.sub_pos_of_lt hc
  have ha:0 < (c + d) * m:= Nat.mul_pos hcp hm
  have hdm:0 < d * m:= Nat.mul_pos hd hm
  have hb:0 < (c - d) * m:= Nat.mul_pos hcm hm
  simp only [d44,Nat.add_zero,Nat.sub_zero,Nat.add_sub_cancel]
  rw [d47 ((c + d) * m) ha,
    d47 (d * m) hdm,
    d47 ((c - d) * m) hb]
  simp only [Nat.cast_mul]
  field_simp
  <;> ring
theorem d133
    {a b d bn bd U W m:ℚ}
    (hb:0 < b) (hd:0 < d) (hbd:0 < bd)
    (hm:0 < m) (hW:0 < W)
    (hcert:a * bd * (m + 2) * U ≤
      bn * b * d ^ 2 * (m + 1) ^ 3 * W):
    a * U / (b * d ^ 2 * m * (m + 1) * W) ≤
      (bn / bd) * (m + 1) ^ 2 / (m * (m + 2)):= by
  apply sub_nonneg.mp
  have hid:
      (bn / bd) * (m + 1) ^ 2 / (m * (m + 2)) -
        a * U / (b * d ^ 2 * m * (m + 1) * W) =
      (bn * b * d ^ 2 * (m + 1) ^ 3 * W - a * bd * (m + 2) * U) /
        (bd * b * d ^ 2 * m * (m + 1) * (m + 2) * W):= by
    field_simp
    <;> ring
  rw [hid]
  exact div_nonneg (sub_nonneg.mpr hcert) (by positivity)
theorem d144
    {F:ℕ → ℚ} {B:ℚ} (hB:0 < B)
    (hstep:∀ m:ℕ,1 ≤ m →
      F (m + 1) ≤ F m * (B * ((m:ℚ) + 1) ^ 2 / ((m:ℚ) * (m + 2))))
    {m:ℕ} (hm:1 ≤ m):
    F m ≤ (2 * F 1 / B) * B ^ m * (m:ℚ) / ((m:ℚ) + 1):= by
  induction m,hm using Nat.le_induction with
  | base =>
      apply le_of_eq
      simp only [pow_one,Nat.cast_one]
      field_simp
      <;> ring
  | succ m hm ih =>
      have hmQ:0 < (m:ℚ):= Nat.cast_pos.mpr (by omega)
      calc
        F (m + 1) ≤
            F m * (B * ((m:ℚ) + 1) ^ 2 / ((m:ℚ) * (m + 2))):=
          hstep m hm
        _ ≤ ((2 * F 1 / B) * B ^ m * (m:ℚ) / ((m:ℚ) + 1)) *
            (B * ((m:ℚ) + 1) ^ 2 / ((m:ℚ) * (m + 2))):=
          mul_le_mul_of_nonneg_right ih (by positivity)
        _ = (2 * F 1 / B) * B ^ (m + 1) * ((m + 1:ℕ):ℚ) /
            (((m + 1:ℕ):ℚ) + 1):= by
          rw [pow_succ]
          simp only [Nat.cast_add,Nat.cast_one]
          field_simp
          <;> ring
theorem d141
    {F:ℕ → ℚ} {B:ℚ} (hB:0 < B) (hF:0 < F 1)
    (hstep:∀ m:ℕ,1 ≤ m →
      F (m + 1) ≤ F m * (B * ((m:ℚ) + 1) ^ 2 / ((m:ℚ) * (m + 2))))
    {m:ℕ} (hm:1 ≤ m):
    F m < (2 * F 1 / B) * B ^ m:= by
  have hmQ:0 < (m:ℚ):= Nat.cast_pos.mpr (by omega)
  have hpos:0 < (2 * F 1 / B) * B ^ m:= by positivity
  calc
    F m ≤ (2 * F 1 / B) * B ^ m * (m:ℚ) / ((m:ℚ) + 1):=
      d144 hB hstep hm
    _ < (2 * F 1 / B) * B ^ m:= by
      apply (div_lt_iff₀ (show 0 < (m:ℚ) + 1 by positivity)).2
      nlinarith
end Math.B699.N8
namespace Math.B699.N10
open Math.B699.N23
open Math.B699.N8
def d93 (x:ℚ):ℚ:=
  (4 * x) * (4 * x + 1) * (4 * x + 2) * (4 * x + 3) * x
def d92 (x:ℚ):ℚ:=
  (4 * x) * (4 * x + 1) * (4 * x + 2) * (4 * x + 3) * (x + 1)
def d26 (x:ℚ):ℚ:=
  (3 * x + 1) * (3 * x + 2) * (3 * x + 3) * (2 * x) * (2 * x + 1)
def d124 (x:ℚ):ℚ:= d93 x / d26 x
def ratioOne (x:ℚ):ℚ:= d92 x / d26 x
end Math.B699.N10
namespace Math.B699.N8
def d96 (m:ℚ):ℚ:=
  (8 * m + 1) * (8 * m + 2) * (8 * m + 3) * (8 * m + 4) * (8 * m + 5) * (8 * m + 6) * (8 * m + 7)
def d29 (m:ℚ):ℚ:=
  (3 * m + 1) * (3 * m + 2) * (3 * m + 1) * (3 * m + 2) * (2 * m + 1)
def d127 (m:ℚ):ℚ:=
  8 * d96 m /
    (2 * 3 ^ 2 * m * (m + 1) * d29 m)
theorem d17 (x:ℚ) (hx:0 ≤ x):
    8 * 729 * (x + 3) * d96 (x + 1) ≤
      4194304 * 2 * 3 ^ 2 * (x + 2) ^ 3 * d29 (x + 1):= by
  apply sub_nonneg.mp
  calc
    0 ≤ 1152 * (136578525 + x * (531865645 + x * (860032554 + x * (739144464 + x * (356098016 + x * (91183104 + x * 9695232)))))):= by positivity
    _ = 4194304 * 2 * 3 ^ 2 * (x + 2) ^ 3 * d29 (x + 1) -
        8 * 729 * (x + 3) * d96 (x + 1):= by
      unfold d96 d29
      ring
theorem d131 (m:ℚ) (hm:1 ≤ m):
    d127 m ≤ beta 5 3 * (m + 1) ^ 2 / (m * (m + 2)):= by
  have hmpos:0 < m:= lt_of_lt_of_le (by norm_num) hm
  have hcert:= d17 (m - 1) (sub_nonneg.mpr hm)
  have hs₁:m - 1 + 1 = m:= by ring
  have hs₂:m - 1 + 2 = m + 1:= by ring
  have hs₃:m - 1 + 3 = m + 2:= by ring
  simp only [hs₁,hs₂,hs₃] at hcert
  have hW:0 < d29 m:= by
    unfold d29
    positivity
  have hbeta:beta 5 3 = (4194304:ℚ) / 729:= by norm_num [beta]
  rw [hbeta]
  exact d133 (by norm_num) (by norm_num) (by norm_num)
    hmpos hW hcert
theorem d57 (k:ℕ):
    d44 5 3 0 (k + 2) =
      d44 5 3 0 (k + 1) * d127 ((k:ℚ) + 1):= by
  change (((8 * (k + 2)).factorial:ℕ):ℚ) /
      (((((3 * (k + 2)).factorial:ℕ):ℚ) ^ 2) *
        (((2 * (k + 2) - 1).factorial:ℕ):ℚ)) =
    (((8 * (k + 1)).factorial:ℕ):ℚ) /
      (((((3 * (k + 1)).factorial:ℕ):ℚ) ^ 2) *
        (((2 * (k + 1) - 1).factorial:ℕ):ℚ)) * d127 ((k:ℚ) + 1)
  have ha:8 * (k + 2) = 8 * (k + 1) + 8:= by omega
  have hd:3 * (k + 2) = 3 * (k + 1) + 3:= by omega
  have hb:2 * (k + 2) - 1 = (2 * (k + 1) - 1) + 2:= by omega
  have hp:(2 * (k + 1) - 1) + 1 = 2 * (k + 1):= by omega
  rw [ha,hd,hb,d46 (8 * (k + 1)) 8,
    d46 (3 * (k + 1)) 3,
    d46 (2 * (k + 1) - 1) 2,hp]
  simp only [Nat.ascFactorial_succ,Nat.ascFactorial_zero,
    Nat.cast_mul,Nat.cast_add,Nat.cast_one,Nat.cast_ofNat]
  unfold d127 d96 d29
  field_simp
  <;> ring
theorem d54 (m:ℕ) (hm:1 ≤ m):
    d44 5 3 0 (m + 1) ≤ d44 5 3 0 m *
      (beta 5 3 * ((m:ℚ) + 1) ^ 2 / ((m:ℚ) * (m + 2))):= by
  obtain ⟨k,rfl⟩:∃ k,m = k + 1:= Nat.exists_eq_add_of_le' hm
  rw [d57]
  have hk:0 ≤ (k:ℚ):= Nat.cast_nonneg k
  have hratio:= d131 ((k:ℚ) + 1) (by linarith)
  have hmul:= mul_le_mul_of_nonneg_left hratio (d45 5 3 0 (k + 1)).le
  simpa only [Nat.cast_add,Nat.cast_one] using hmul
theorem d51 (delta m:ℕ)
    (hdelta:delta = 0 ∨ delta = 1) (hm:1 ≤ m):
    d44 5 3 delta (m + 1) ≤ d44 5 3 delta m *
      (beta 5 3 * ((m:ℚ) + 1) ^ 2 / ((m:ℚ) * (m + 2))):= by
  rcases hdelta with rfl | rfl
  · exact d54 m hm
  · rw [d48 5 3 (m + 1) (by norm_num) (by norm_num) (by omega),
      d48 5 3 m (by norm_num) (by norm_num) (by omega)]
    have hmul:= mul_le_mul_of_nonneg_left (d54 m hm)
      (show (0:ℚ) ≤ (3:ℚ) ^ 2 / ((8:ℚ) * (2:ℚ)) by norm_num)
    convert hmul using 1 <;> norm_num [mul_assoc] <;> rfl
theorem d61 (delta m:ℕ)
    (hdelta:delta = 0 ∨ delta = 1) (hm:1 ≤ m):
    d44 5 3 delta m <
      (2 * d44 5 3 delta 1 / beta 5 3) * beta 5 3 ^ m:= by
  exact d141 (by norm_num [beta]) (d45 5 3 delta 1)
    (fun n hn => d51 delta n hdelta hn) hm
end Math.B699.N8
namespace Math.B699.N13
open Math.B699.N23 Math.B699.N8
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
def d64:Track → ℚ
  | .evenZero => 1
  | .evenOne => 4
  | .oddZero => 1
  | .oddOne => 1
def divisor:Track → ℕ → ℚ
  | .evenZero,k => d134 (8 * k) (2 * k - 1)
  | .evenOne,k => d134 (8 * k - 1) (2 * k)
  | .oddZero,k => d134 (8 * k + 4) (2 * k)
  | .oddOne,k => d134 (8 * k + 3) (2 * k + 1)
def d91:Track → ℚ → ℚ
  | .evenZero,x => (9 * x) * (9 * x + 1) * (9 * x + 2) * (9 * x + 3) * (9 * x + 4) * (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (x)
  | .evenOne,x => (9 * x) * (9 * x + 1) * (9 * x + 2) * (9 * x + 3) * (9 * x + 4) * (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (x + 1)
  | .oddZero,x => (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (9 * x + 9) * (9 * x + 10) * (9 * x + 11) * (9 * x + 12) * (9 * x + 13) * (x + 1)
  | .oddOne,x => (9 * x + 4) * (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (9 * x + 9) * (9 * x + 10) * (9 * x + 11) * (9 * x + 12) * (x + 1)
def d26:Track → ℚ → ℚ
  | .evenZero,x => (8 * x + 1) * (8 * x + 2) * (8 * x + 3) * (8 * x + 4) * (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (8 * x + 8) * (2 * x) * (2 * x + 1)
  | .evenOne,x => (8 * x) * (8 * x + 1) * (8 * x + 2) * (8 * x + 3) * (8 * x + 4) * (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (2 * x + 1) * (2 * x + 2)
  | .oddZero,x => (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (8 * x + 8) * (8 * x + 9) * (8 * x + 10) * (8 * x + 11) * (8 * x + 12) * (2 * x + 1) * (2 * x + 2)
  | .oddOne,x => (8 * x + 4) * (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (8 * x + 8) * (8 * x + 9) * (8 * x + 10) * (8 * x + 11) * (2 * x + 2) * (2 * x + 3)
def ratio (t:Track) (x:ℚ):ℚ:= d91 t x / d26 t x
def d142:ℚ:= 602791 / 500000
def d143:ℚ:= d142 ^ 8
end Math.B699.N13
namespace Math.B699.N13
open Math.B699.N23
open Math.B699.N18
def d90 (t:Track) (k:ℕ):ℚ:=
  divisor t k / (d142 ^ (4 * rho t) * d143 ^ k)
end Math.B699.N13
namespace Math.B699.N8
def d97 (m:ℚ):ℚ:=
  (9 * m + 1) * (9 * m + 2) * (9 * m + 3) * (9 * m + 4) * (9 * m + 5) * (9 * m + 6) * (9 * m + 7) * (9 * m + 8)
def d30 (m:ℚ):ℚ:=
  (4 * m + 1) * (4 * m + 2) * (4 * m + 3) * (4 * m + 1) * (4 * m + 2) * (4 * m + 3)
def d128 (m:ℚ):ℚ:=
  9 * d97 m /
    (1 * 4 ^ 2 * m * (m + 1) * d30 m)
theorem d18 (x:ℚ) (hx:0 ≤ x):
    9 * 65536 * (x + 3) * d97 (x + 1) ≤
      387420489 * 1 * 4 ^ 2 * (x + 2) ^ 3 * d30 (x + 1):= by
  apply sub_nonneg.mp
  calc
    0 ≤ 5184 * (87290032200 + x * (402300498380 + x * (791641303398 + x * (862210695105 + x * (561361285764 + x * (218489584356 + x * (47072918016 + x * 4330889856))))))):= by positivity
    _ = 387420489 * 1 * 4 ^ 2 * (x + 2) ^ 3 * d30 (x + 1) -
        9 * 65536 * (x + 3) * d97 (x + 1):= by
      unfold d97 d30
      ring
theorem d132 (m:ℚ) (hm:1 ≤ m):
    d128 m ≤ beta 5 4 * (m + 1) ^ 2 / (m * (m + 2)):= by
  have hmpos:0 < m:= lt_of_lt_of_le (by norm_num) hm
  have hcert:= d18 (m - 1) (sub_nonneg.mpr hm)
  have hs₁:m - 1 + 1 = m:= by ring
  have hs₂:m - 1 + 2 = m + 1:= by ring
  have hs₃:m - 1 + 3 = m + 2:= by ring
  simp only [hs₁,hs₂,hs₃] at hcert
  have hW:0 < d30 m:= by
    unfold d30
    positivity
  have hbeta:beta 5 4 = (387420489:ℚ) / 65536:= by norm_num [beta]
  rw [hbeta]
  exact d133 (by norm_num) (by norm_num) (by norm_num)
    hmpos hW hcert
theorem d58 (k:ℕ):
    d44 5 4 0 (k + 2) =
      d44 5 4 0 (k + 1) * d128 ((k:ℚ) + 1):= by
  change (((9 * (k + 2)).factorial:ℕ):ℚ) /
      (((((4 * (k + 2)).factorial:ℕ):ℚ) ^ 2) *
        (((1 * (k + 2) - 1).factorial:ℕ):ℚ)) =
    (((9 * (k + 1)).factorial:ℕ):ℚ) /
      (((((4 * (k + 1)).factorial:ℕ):ℚ) ^ 2) *
        (((1 * (k + 1) - 1).factorial:ℕ):ℚ)) * d128 ((k:ℚ) + 1)
  have ha:9 * (k + 2) = 9 * (k + 1) + 9:= by omega
  have hd:4 * (k + 2) = 4 * (k + 1) + 4:= by omega
  have hb:1 * (k + 2) - 1 = (1 * (k + 1) - 1) + 1:= by omega
  have hp:(1 * (k + 1) - 1) + 1 = 1 * (k + 1):= by omega
  rw [ha,hd,hb,d46 (9 * (k + 1)) 9,
    d46 (4 * (k + 1)) 4,
    d46 (1 * (k + 1) - 1) 1,hp]
  simp only [Nat.ascFactorial_succ,Nat.ascFactorial_zero,
    Nat.cast_mul,Nat.cast_add,Nat.cast_one,Nat.cast_ofNat]
  unfold d128 d97 d30
  field_simp
  <;> ring
end Math.B699.N8
namespace Math.B699.N11
open Math.B699.N23 Math.B699.N8
def d142:ℚ:= 1302991 / 1000000
def d143:ℚ:= d142 ^ 5
def divisor (m:ℕ):ℚ:= d134 (5 * m) (4 * m - 1)
def d91 (x:ℚ):ℚ:= (7 * x) * (7 * x + 1) * (7 * x + 2) * (7 * x + 3) * (7 * x + 4) * (7 * x + 5) * (7 * x + 6) * (2 * x) * (2 * x + 1)
def d26 (x:ℚ):ℚ:= (5 * x + 1) * (5 * x + 2) * (5 * x + 3) * (5 * x + 4) * (5 * x + 5) * (4 * x) * (4 * x + 1) * (4 * x + 2) * (4 * x + 3)
def ratio (x:ℚ):ℚ:= d91 x / d26 x
end Math.B699.N11
namespace Math.B699.N11
open Math.B699.N23
open Math.B699.N18
def d90 (m:ℕ):ℚ:= divisor m / d143 ^ m
end Math.B699.N11
namespace Math.B699.N12
open Math.B699.N23 Math.B699.N8
def d91 (x:ℚ):ℚ:= (19 * x) * (19 * x + 1) * (19 * x + 2) * (19 * x + 3) * (19 * x + 4) * (19 * x + 5) * (19 * x + 6) * (19 * x + 7) * (19 * x + 8) * (19 * x + 9) * (19 * x + 10) * (19 * x + 11) * (19 * x + 12) * (19 * x + 13) * (19 * x + 14) * (19 * x + 15) * (19 * x + 16) * (19 * x + 17) * (19 * x + 18) * (4 * x) * (4 * x + 1) * (4 * x + 2) * (4 * x + 3)
def d26 (x:ℚ):ℚ:= (15 * x + 1) * (15 * x + 2) * (15 * x + 3) * (15 * x + 4) * (15 * x + 5) * (15 * x + 6) * (15 * x + 7) * (15 * x + 8) * (15 * x + 9) * (15 * x + 10) * (15 * x + 11) * (15 * x + 12) * (15 * x + 13) * (15 * x + 14) * (15 * x + 15) * (8 * x) * (8 * x + 1) * (8 * x + 2) * (8 * x + 3) * (8 * x + 4) * (8 * x + 5) * (8 * x + 6) * (8 * x + 7)
def ratio (x:ℚ):ℚ:= d91 x / d26 x
end Math.B699.N12
namespace Math.B699.N8
def d95 (m:ℚ):ℚ:=
  (38 * m + 1) * (38 * m + 2) * (38 * m + 3) * (38 * m + 4) * (38 * m + 5) * (38 * m + 6) * (38 * m + 7) * (38 * m + 8) * (38 * m + 9) * (38 * m + 10) * (38 * m + 11) * (38 * m + 12) * (38 * m + 13) * (38 * m + 14) * (38 * m + 15) * (38 * m + 16) * (38 * m + 17) * (38 * m + 18) * (38 * m + 19) * (38 * m + 20) * (38 * m + 21) * (38 * m + 22) * (38 * m + 23) * (38 * m + 24) * (38 * m + 25) * (38 * m + 26) * (38 * m + 27) * (38 * m + 28) * (38 * m + 29) * (38 * m + 30) * (38 * m + 31) * (38 * m + 32) * (38 * m + 33) * (38 * m + 34) * (38 * m + 35) * (38 * m + 36) * (38 * m + 37)
def d28 (m:ℚ):ℚ:=
  (15 * m + 1) * (15 * m + 2) * (15 * m + 3) * (15 * m + 4) * (15 * m + 5) * (15 * m + 6) * (15 * m + 7) * (15 * m + 8) * (15 * m + 9) * (15 * m + 10) * (15 * m + 11) * (15 * m + 12) * (15 * m + 13) * (15 * m + 14) * (15 * m + 1) * (15 * m + 2) * (15 * m + 3) * (15 * m + 4) * (15 * m + 5) * (15 * m + 6) * (15 * m + 7) * (15 * m + 8) * (15 * m + 9) * (15 * m + 10) * (15 * m + 11) * (15 * m + 12) * (15 * m + 13) * (15 * m + 14) * (8 * m + 1) * (8 * m + 2) * (8 * m + 3) * (8 * m + 4) * (8 * m + 5) * (8 * m + 6) * (8 * m + 7)
def d126 (m:ℚ):ℚ:=
  38 * d95 m /
    (8 * 15 ^ 2 * m * (m + 1) * d28 m)
theorem d16 (x:ℚ) (hx:0 ≤ x):
    38 * 191751059232884086668491363525390625 * (x + 3) * d95 (x + 1) ≤
      64129340766667961004998043349750267214506111671353344 * 8 * 15 ^ 2 * (x + 2) ^ 3 * d28 (x + 1):= by
  apply sub_nonneg.mp
  calc
    0 ≤ 174626316288000000 * (1903139924356617609550013200361382898937643300383986979017412859100571622969016320000 + x * (46837993467208038603096777861250221334488908857640263508241456021232936823144838144000 + x * (559788131567413464296497105690984465712244359260129847638238455649584345299853712870400 + x * (4328444185518785535930753384650518437285643772146102187055608854016957306472696498397440 + x * (24338857839565261878908878878095542598351568977914530917269696482529006785994929163551552 + x * (106061896518866727962057687105396804196901853791010798240539857373757664397056611578875600 + x * (372747472443468654370626566767137466251166326958113633603119523522558940318526960163379296 + x * (1085548724163244262452159789475288840187764141713022901525566083866238332755325853488661240 + x * (2671382867940362715416154435391556212966349886525353228733708217715510677322101336885909764 + x * (5636360459533697236956798969444959397665133961915739279301877498049085819521409072153650045 + x * (10310478591224897150892767791897459880819297278341896547582529016361210547249326354546288536 + x * (16494756251619302721954000733016203125186964134294989443620818476690760517552517748946113445 + x * (23236040087401444521521154181839861581137005198758687149507287615379840229234912451585505354 + x * (28977400995329524488394319187585685402040030018316343615948718983634425285062706358398272230 + x * (32126363700934074295148049046940883758573677021107112451744284179051441784757175280930796688 + x * (31766488109105092911457442397776823970174624014277305101665099624500696524479380391795182250 + x * (28081452179251235848034026785807109019802261991652997153559645958270333256339736683675247000 + x * (22229387207884328224482254649227710455214689212206057634720980131378768801680420464360273125 + x * (15772924723685391889300787672217007844986936972989645814542582584561191241346670987825895000 + x * (10034888714302542355373426565679740255339430663493211350367438759530134851140617405001953125 + x * (5722577645771962638124154657918807107778944755816485929234687757102376454259742856207031250 + x * (2922351021180233644983336261465061325419369683611158763201996649940633862594311634156250000 + x * (1334202546145286468608196805136425415173799796335817146113559736893788436278041402156250000 + x * (543281109557060466191960926050655042580230710073624401691266528829305927688733510742187500 + x * (196671858245932795847539889565618887104881122248586698365028367089411775995895578125000000 + x * (63030807700144165826991841057103712591225856915851469119493977238530837133469487304687500 + x * (17787977832667555088890657130227354456153932456485879618781655432672253108480185546875000 + x * (4390390982004785867975436586425463493100364399231488778456605242025096456860961914062500 + x * (939539694778788725761719667314028602563480387214500070145633959615397200131835937500000 + x * (172394229934031447101793413525098865504839126815207649100942900838374503781127929687500 + x * (26730331028129341207591122077155700783906455793374104012444521812735959429931640625000 + x * (3434701706946471130350012883132770040435656312201291499386450946124115371704101562500 + x * (355955395790910354229581083297710653133345675566476856036485183638039398193359375000 + x * (28590427783718254124769297174285091012419172258762592793386501508453369140625000000 + x * (1670073588409406736750880498675591611153794485800277703377644517199707031250000000 + x * (63119693223957421829871365373274823137748846060582519026809667968750000000000000 + x * (1158578637808315100262511269342916831867422391459811349402539062500000000000000))))))))))))))))))))))))))))))))))))):= by positivity
    _ = 64129340766667961004998043349750267214506111671353344 * 8 * 15 ^ 2 * (x + 2) ^ 3 * d28 (x + 1) -
        38 * 191751059232884086668491363525390625 * (x + 3) * d95 (x + 1):= by
      unfold d95 d28
      ring
theorem d130 (m:ℚ) (hm:1 ≤ m):
    d126 m ≤ beta 23 15 * (m + 1) ^ 2 / (m * (m + 2)):= by
  have hmpos:0 < m:= lt_of_lt_of_le (by norm_num) hm
  have hcert:= d16 (m - 1) (sub_nonneg.mpr hm)
  have hs₁:m - 1 + 1 = m:= by ring
  have hs₂:m - 1 + 2 = m + 1:= by ring
  have hs₃:m - 1 + 3 = m + 2:= by ring
  simp only [hs₁,hs₂,hs₃] at hcert
  have hW:0 < d28 m:= by
    unfold d28
    positivity
  have hbeta:beta 23 15 = (64129340766667961004998043349750267214506111671353344:ℚ) / 191751059232884086668491363525390625:= by norm_num [beta]
  rw [hbeta]
  exact d133 (by norm_num) (by norm_num) (by norm_num)
    hmpos hW hcert
theorem d56 (k:ℕ):
    d44 23 15 0 (k + 2) =
      d44 23 15 0 (k + 1) * d126 ((k:ℚ) + 1):= by
  change (((38 * (k + 2)).factorial:ℕ):ℚ) /
      (((((15 * (k + 2)).factorial:ℕ):ℚ) ^ 2) *
        (((8 * (k + 2) - 1).factorial:ℕ):ℚ)) =
    (((38 * (k + 1)).factorial:ℕ):ℚ) /
      (((((15 * (k + 1)).factorial:ℕ):ℚ) ^ 2) *
        (((8 * (k + 1) - 1).factorial:ℕ):ℚ)) * d126 ((k:ℚ) + 1)
  have ha:38 * (k + 2) = 38 * (k + 1) + 38:= by omega
  have hd:15 * (k + 2) = 15 * (k + 1) + 15:= by omega
  have hb:8 * (k + 2) - 1 = (8 * (k + 1) - 1) + 8:= by omega
  have hp:(8 * (k + 1) - 1) + 1 = 8 * (k + 1):= by omega
  rw [ha,hd,hb,d46 (38 * (k + 1)) 38,
    d46 (15 * (k + 1)) 15,
    d46 (8 * (k + 1) - 1) 8,hp]
  simp only [Nat.ascFactorial_succ,Nat.ascFactorial_zero,
    Nat.cast_mul,Nat.cast_add,Nat.cast_one,Nat.cast_ofNat]
  unfold d126 d95 d28
  field_simp
  <;> ring
theorem d53 (m:ℕ) (hm:1 ≤ m):
    d44 23 15 0 (m + 1) ≤ d44 23 15 0 m *
      (beta 23 15 * ((m:ℚ) + 1) ^ 2 / ((m:ℚ) * (m + 2))):= by
  obtain ⟨k,rfl⟩:∃ k,m = k + 1:= Nat.exists_eq_add_of_le' hm
  rw [d56]
  have hk:0 ≤ (k:ℚ):= Nat.cast_nonneg k
  have hratio:= d130 ((k:ℚ) + 1) (by linarith)
  have hmul:= mul_le_mul_of_nonneg_left hratio (d45 23 15 0 (k + 1)).le
  simpa only [Nat.cast_add,Nat.cast_one] using hmul
theorem d50 (delta m:ℕ)
    (hdelta:delta = 0 ∨ delta = 1) (hm:1 ≤ m):
    d44 23 15 delta (m + 1) ≤ d44 23 15 delta m *
      (beta 23 15 * ((m:ℚ) + 1) ^ 2 / ((m:ℚ) * (m + 2))):= by
  rcases hdelta with rfl | rfl
  · exact d53 m hm
  · rw [d48 23 15 (m + 1) (by norm_num) (by norm_num) (by omega),
      d48 23 15 m (by norm_num) (by norm_num) (by omega)]
    have hmul:= mul_le_mul_of_nonneg_left (d53 m hm)
      (show (0:ℚ) ≤ (15:ℚ) ^ 2 / ((38:ℚ) * (8:ℚ)) by norm_num)
    convert hmul using 1 <;> norm_num [mul_assoc] <;> rfl
theorem d60 (delta m:ℕ)
    (hdelta:delta = 0 ∨ delta = 1) (hm:1 ≤ m):
    d44 23 15 delta m <
      (2 * d44 23 15 delta 1 / beta 23 15) * beta 23 15 ^ m:= by
  exact d141 (by norm_num [beta]) (d45 23 15 delta 1)
    (fun n hn => d50 delta n hdelta hn) hm
end Math.B699.N8
namespace Math.B699.N9
open Math.B699.N23 Math.B699.N8
def d91 (x:ℚ):ℚ:= (9 * x) * (9 * x + 1) * (9 * x + 2) * (9 * x + 3) * (9 * x + 4) * (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (2 * x) * (2 * x + 1)
def d26 (x:ℚ):ℚ:= (7 * x + 1) * (7 * x + 2) * (7 * x + 3) * (7 * x + 4) * (7 * x + 5) * (7 * x + 6) * (7 * x + 7) * (4 * x) * (4 * x + 1) * (4 * x + 2) * (4 * x + 3)
def ratio (x:ℚ):ℚ:= d91 x / d26 x
end Math.B699.N9
namespace Math.B699.N8
def d94 (m:ℚ):ℚ:=
  (18 * m + 1) * (18 * m + 2) * (18 * m + 3) * (18 * m + 4) * (18 * m + 5) * (18 * m + 6) * (18 * m + 7) * (18 * m + 8) * (18 * m + 9) * (18 * m + 10) * (18 * m + 11) * (18 * m + 12) * (18 * m + 13) * (18 * m + 14) * (18 * m + 15) * (18 * m + 16) * (18 * m + 17)
def d27 (m:ℚ):ℚ:=
  (7 * m + 1) * (7 * m + 2) * (7 * m + 3) * (7 * m + 4) * (7 * m + 5) * (7 * m + 6) * (7 * m + 1) * (7 * m + 2) * (7 * m + 3) * (7 * m + 4) * (7 * m + 5) * (7 * m + 6) * (4 * m + 1) * (4 * m + 2) * (4 * m + 3)
def d125 (m:ℚ):ℚ:=
  18 * d94 m /
    (4 * 7 ^ 2 * m * (m + 1) * d27 m)
theorem d15 (x:ℚ) (hx:0 ≤ x):
    18 * 678223072849 * (x + 3) * d94 (x + 1) ≤
      153696906544127099904 * 4 * 7 ^ 2 * (x + 2) ^ 3 * d27 (x + 1):= by
  apply sub_nonneg.mp
  calc
    0 ≤ 164602368 * (110241562556209198845066336000 + x * (1187453905002991933641540241200 + x * (5983779524056672196683729952260 + x * (18725305113472259124139253307552 + x * (40729656441097585706093084110059 + x * (65294335350947065759744925165967 + x * (79804742383095184112811595305588 + x * (75858453630510332238821724032106 + x * (56675430893659432955626359692271 + x * (33392517669322858479192878823831 + x * (15464156259855364037691801651054 + x * (5569801509788070352067060767872 + x * (1529548033875043581131775993216 + x * (309597915550113867297439847952 + x * (43560928625433641348263047648 + x * (3806566550301503678085259920 + x * (155634839555301083447505504))))))))))))))))):= by positivity
    _ = 153696906544127099904 * 4 * 7 ^ 2 * (x + 2) ^ 3 * d27 (x + 1) -
        18 * 678223072849 * (x + 3) * d94 (x + 1):= by
      unfold d94 d27
      ring
theorem d129 (m:ℚ) (hm:1 ≤ m):
    d125 m ≤ beta 11 7 * (m + 1) ^ 2 / (m * (m + 2)):= by
  have hmpos:0 < m:= lt_of_lt_of_le (by norm_num) hm
  have hcert:= d15 (m - 1) (sub_nonneg.mpr hm)
  have hs₁:m - 1 + 1 = m:= by ring
  have hs₂:m - 1 + 2 = m + 1:= by ring
  have hs₃:m - 1 + 3 = m + 2:= by ring
  simp only [hs₁,hs₂,hs₃] at hcert
  have hW:0 < d27 m:= by
    unfold d27
    positivity
  have hbeta:beta 11 7 = (153696906544127099904:ℚ) / 678223072849:= by norm_num [beta]
  rw [hbeta]
  exact d133 (by norm_num) (by norm_num) (by norm_num)
    hmpos hW hcert
theorem d55 (k:ℕ):
    d44 11 7 0 (k + 2) =
      d44 11 7 0 (k + 1) * d125 ((k:ℚ) + 1):= by
  change (((18 * (k + 2)).factorial:ℕ):ℚ) /
      (((((7 * (k + 2)).factorial:ℕ):ℚ) ^ 2) *
        (((4 * (k + 2) - 1).factorial:ℕ):ℚ)) =
    (((18 * (k + 1)).factorial:ℕ):ℚ) /
      (((((7 * (k + 1)).factorial:ℕ):ℚ) ^ 2) *
        (((4 * (k + 1) - 1).factorial:ℕ):ℚ)) * d125 ((k:ℚ) + 1)
  have ha:18 * (k + 2) = 18 * (k + 1) + 18:= by omega
  have hd:7 * (k + 2) = 7 * (k + 1) + 7:= by omega
  have hb:4 * (k + 2) - 1 = (4 * (k + 1) - 1) + 4:= by omega
  have hp:(4 * (k + 1) - 1) + 1 = 4 * (k + 1):= by omega
  rw [ha,hd,hb,d46 (18 * (k + 1)) 18,
    d46 (7 * (k + 1)) 7,
    d46 (4 * (k + 1) - 1) 4,hp]
  simp only [Nat.ascFactorial_succ,Nat.ascFactorial_zero,
    Nat.cast_mul,Nat.cast_add,Nat.cast_one,Nat.cast_ofNat]
  unfold d125 d94 d27
  field_simp
  <;> ring
theorem d52 (m:ℕ) (hm:1 ≤ m):
    d44 11 7 0 (m + 1) ≤ d44 11 7 0 m *
      (beta 11 7 * ((m:ℚ) + 1) ^ 2 / ((m:ℚ) * (m + 2))):= by
  obtain ⟨k,rfl⟩:∃ k,m = k + 1:= Nat.exists_eq_add_of_le' hm
  rw [d55]
  have hk:0 ≤ (k:ℚ):= Nat.cast_nonneg k
  have hratio:= d129 ((k:ℚ) + 1) (by linarith)
  have hmul:= mul_le_mul_of_nonneg_left hratio (d45 11 7 0 (k + 1)).le
  simpa only [Nat.cast_add,Nat.cast_one] using hmul
theorem d49 (delta m:ℕ)
    (hdelta:delta = 0 ∨ delta = 1) (hm:1 ≤ m):
    d44 11 7 delta (m + 1) ≤ d44 11 7 delta m *
      (beta 11 7 * ((m:ℚ) + 1) ^ 2 / ((m:ℚ) * (m + 2))):= by
  rcases hdelta with rfl | rfl
  · exact d52 m hm
  · rw [d48 11 7 (m + 1) (by norm_num) (by norm_num) (by omega),
      d48 11 7 m (by norm_num) (by norm_num) (by omega)]
    have hmul:= mul_le_mul_of_nonneg_left (d52 m hm)
      (show (0:ℚ) ≤ (7:ℚ) ^ 2 / ((18:ℚ) * (4:ℚ)) by norm_num)
    convert hmul using 1 <;> norm_num [mul_assoc] <;> rfl
theorem d59 (delta m:ℕ)
    (hdelta:delta = 0 ∨ delta = 1) (hm:1 ≤ m):
    d44 11 7 delta m <
      (2 * d44 11 7 delta 1 / beta 11 7) * beta 11 7 ^ m:= by
  exact d141 (by norm_num [beta]) (d45 11 7 delta 1)
    (fun n hn => d49 delta n hdelta hn) hm
end Math.B699.N8
namespace Math.B699.N6
def d32 (w k:ℕ):ℤ:= (k:ℤ) - (w:ℤ)
@[simp] theorem d33 (w:ℕ):d32 w w = 0:= by
  simp [d32]
end Math.B699.N6
namespace Math.B699.N14
open N4 Polynomial
theorem d24 {n j:ℕ}
    (hn:(2:ℕ) ^ 15360 ≤ n) (hij:11 < j) (hjn:j ≤ n / 2): True := by
  classical
  letI:Infinite ℚ:= Infinite.of_injective (fun n:ℕ => (n:ℚ)) Nat.cast_injective
  have u1 (m:ℕ) (hm:1 ≤ m):
      Math.B699.N8.d44 5 4 0 (m + 1) ≤ Math.B699.N8.d44 5 4 0 m *
        (Math.B699.N8.beta 5 4 * ((m:ℚ) + 1) ^ 2 / ((m:ℚ) * (m + 2))):= by
    obtain ⟨k,rfl⟩:∃ k,m = k + 1:= Nat.exists_eq_add_of_le' hm
    rw [Math.B699.N8.d58]
    have hk:0 ≤ (k:ℚ):= Nat.cast_nonneg k
    have hratio:= Math.B699.N8.d132 ((k:ℚ) + 1) (by linarith)
    have hmul:= mul_le_mul_of_nonneg_left hratio (Math.B699.N8.d45 5 4 0 (k + 1)).le
    simpa only [Nat.cast_add,Nat.cast_one] using hmul
  have u2 (delta m:ℕ)
      (hdelta:delta = 0 ∨ delta = 1) (hm:1 ≤ m):
      Math.B699.N8.d44 5 4 delta (m + 1) ≤ Math.B699.N8.d44 5 4 delta m *
        (Math.B699.N8.beta 5 4 * ((m:ℚ) + 1) ^ 2 / ((m:ℚ) * (m + 2))):= by
    rcases hdelta with rfl | rfl
    · exact u1 m hm
    · rw [Math.B699.N8.d48 5 4 (m + 1) (by norm_num) (by norm_num) (by omega),
        Math.B699.N8.d48 5 4 m (by norm_num) (by norm_num) (by omega)]
      have hmul:= mul_le_mul_of_nonneg_left (u1 m hm)
        (show (0:ℚ) ≤ (4:ℚ) ^ 2 / ((9:ℚ) * (1:ℚ)) by norm_num)
      convert hmul using 1 <;> norm_num [mul_assoc] <;> rfl
  have u0 (delta m:ℕ)
      (hdelta:delta = 0 ∨ delta = 1) (hm:1 ≤ m):
      Math.B699.N8.d44 5 4 delta m <
        (2 * Math.B699.N8.d44 5 4 delta 1 / Math.B699.N8.beta 5 4) * Math.B699.N8.beta 5 4 ^ m:= by
    exact Math.B699.N8.d141 (by norm_num [Math.B699.N8.beta]) (Math.B699.N8.d45 5 4 delta 1)
      (fun n hn => u2 delta n hdelta hn) hm
  let u5 (m:ℚ):ℚ:=
    (5 * m + 1) * (5 * m + 2) * (5 * m + 3) * (5 * m + 4) * (5 * m + 1) * (5 * m + 2) * (5 * m + 3) * (5 * m + 4) * (4 * m + 1) * (4 * m + 2) * (4 * m + 3)
  let u4 (m:ℚ):ℚ:=
    (14 * m + 1) * (14 * m + 2) * (14 * m + 3) * (14 * m + 4) * (14 * m + 5) * (14 * m + 6) * (14 * m + 7) * (14 * m + 8) * (14 * m + 9) * (14 * m + 10) * (14 * m + 11) * (14 * m + 12) * (14 * m + 13)
  let u6 (m:ℚ):ℚ:=
    14 * u4 m /
      (4 * 5 ^ 2 * m * (m + 1) * u5 m)
  have u7 (x:ℚ) (hx:0 ≤ x):
      14 * 9765625 * (x + 3) * u4 (x + 1) ≤
        43406276662336 * 4 * 5 ^ 2 * (x + 2) ^ 3 * u5 (x + 1):= by
    apply sub_nonneg.mp
    calc
      0 ≤ 156800 * (98562781215544167360 + x * (789346936801347608088 + x * (2890477402203689589150 + x * (6399635854652157487167 + x * (9541482199828211005548 + x * (10092262381016943798944 + x * (7765448394674013829828 + x * (4379592135435513341625 + x * (1796862337914711422250 + x * (523028549778973297500 + x * (102526656268974840000 + x * (12152526579556562500 + x * (658696971261875000))))))))))))):= by positivity
      _ = 43406276662336 * 4 * 5 ^ 2 * (x + 2) ^ 3 * u5 (x + 1) -
          14 * 9765625 * (x + 3) * u4 (x + 1):= by
        unfold u4 u5
        ring
  have u8 (m:ℚ) (hm:1 ≤ m):
      u6 m ≤ Math.B699.N8.beta 9 5 * (m + 1) ^ 2 / (m * (m + 2)):= by
    have hmpos:0 < m:= lt_of_lt_of_le (by norm_num) hm
    have hcert:= u7 (m - 1) (sub_nonneg.mpr hm)
    have hs₁:m - 1 + 1 = m:= by ring
    have hs₂:m - 1 + 2 = m + 1:= by ring
    have hs₃:m - 1 + 3 = m + 2:= by ring
    simp only [hs₁,hs₂,hs₃] at hcert
    have hW:0 < u5 m:= by
      unfold u5
      positivity
    have hbeta:Math.B699.N8.beta 9 5 = (43406276662336:ℚ) / 9765625:= by norm_num [Math.B699.N8.beta]
    rw [hbeta]
    exact Math.B699.N8.d133 (by norm_num) (by norm_num) (by norm_num)
      hmpos hW hcert
  have u9 (k:ℕ):
      Math.B699.N8.d44 9 5 0 (k + 2) =
        Math.B699.N8.d44 9 5 0 (k + 1) * u6 ((k:ℚ) + 1):= by
    change (((14 * (k + 2)).factorial:ℕ):ℚ) /
        (((((5 * (k + 2)).factorial:ℕ):ℚ) ^ 2) *
          (((4 * (k + 2) - 1).factorial:ℕ):ℚ)) =
      (((14 * (k + 1)).factorial:ℕ):ℚ) /
        (((((5 * (k + 1)).factorial:ℕ):ℚ) ^ 2) *
          (((4 * (k + 1) - 1).factorial:ℕ):ℚ)) * u6 ((k:ℚ) + 1)
    have ha:14 * (k + 2) = 14 * (k + 1) + 14:= by omega
    have hd:5 * (k + 2) = 5 * (k + 1) + 5:= by omega
    have hb:4 * (k + 2) - 1 = (4 * (k + 1) - 1) + 4:= by omega
    have hp:(4 * (k + 1) - 1) + 1 = 4 * (k + 1):= by omega
    rw [ha,hd,hb,Math.B699.N8.d46 (14 * (k + 1)) 14,
      Math.B699.N8.d46 (5 * (k + 1)) 5,
      Math.B699.N8.d46 (4 * (k + 1) - 1) 4,hp]
    simp only [Nat.ascFactorial_succ,Nat.ascFactorial_zero,
      Nat.cast_mul,Nat.cast_add,Nat.cast_one,Nat.cast_ofNat]
    unfold u6 u4 u5
    field_simp
    <;> ring
  have u10 (m:ℕ) (hm:1 ≤ m):
      Math.B699.N8.d44 9 5 0 (m + 1) ≤ Math.B699.N8.d44 9 5 0 m *
        (Math.B699.N8.beta 9 5 * ((m:ℚ) + 1) ^ 2 / ((m:ℚ) * (m + 2))):= by
    obtain ⟨k,rfl⟩:∃ k,m = k + 1:= Nat.exists_eq_add_of_le' hm
    rw [u9]
    have hk:0 ≤ (k:ℚ):= Nat.cast_nonneg k
    have hratio:= u8 ((k:ℚ) + 1) (by linarith)
    have hmul:= mul_le_mul_of_nonneg_left hratio (Math.B699.N8.d45 9 5 0 (k + 1)).le
    simpa only [Nat.cast_add,Nat.cast_one] using hmul
  have u11 (delta m:ℕ)
      (hdelta:delta = 0 ∨ delta = 1) (hm:1 ≤ m):
      Math.B699.N8.d44 9 5 delta (m + 1) ≤ Math.B699.N8.d44 9 5 delta m *
        (Math.B699.N8.beta 9 5 * ((m:ℚ) + 1) ^ 2 / ((m:ℚ) * (m + 2))):= by
    rcases hdelta with rfl | rfl
    · exact u10 m hm
    · rw [Math.B699.N8.d48 9 5 (m + 1) (by norm_num) (by norm_num) (by omega),
        Math.B699.N8.d48 9 5 m (by norm_num) (by norm_num) (by omega)]
      have hmul:= mul_le_mul_of_nonneg_left (u10 m hm)
        (show (0:ℚ) ≤ (5:ℚ) ^ 2 / ((14:ℚ) * (4:ℚ)) by norm_num)
      convert hmul using 1 <;> norm_num [mul_assoc] <;> rfl
  have u3 (delta m:ℕ)
      (hdelta:delta = 0 ∨ delta = 1) (hm:1 ≤ m):
      Math.B699.N8.d44 9 5 delta m <
        (2 * Math.B699.N8.d44 9 5 delta 1 / Math.B699.N8.beta 9 5) * Math.B699.N8.beta 9 5 ^ m:= by
    exact Math.B699.N8.d141 (by norm_num [Math.B699.N8.beta]) (Math.B699.N8.d45 9 5 delta 1)
      (fun n hn => u11 delta n hdelta hn) hm
  have u12 (c d delta m:ℕ) (hcd:d < c)
      (hdelta:delta ≤ d) (hm:1 ≤ m):
      d * m - delta = (d - delta) + d * (m - 1) ∧
      (c - d) * m + delta - 1 = (c - d - 1 + delta) + (c - d) * (m - 1):= by
    have hm':m = (m - 1) + 1:= by omega
    have hd:d * m = d * (m - 1) + d:= by
      conv_lhs => rw [hm']
      ring
    have hc:(c - d) * m = (c - d) * (m - 1) + (c - d):= by
      conv_lhs => rw [hm']
      ring
    omega
  let u27 (z:ℚ):ℚ[X]:= (1 - X) + Polynomial.C z * X
  let u31 (c d:ℕ) (z:ℚ):ℚ[X]:=
    X ^ (c - d) * (1 - X) ^ d * u27 z ^ d
  let u33 (c d delta:ℕ) (z:ℚ):ℚ[X]:=
    X ^ (c - d - 1 + delta) * (1 - X) ^ (d - delta) * u27 z ^ (d - delta)
  let u893 (A B C:ℕ) (z:ℚ):ℚ[X]:=
    X ^ B * (1 - X) ^ C * (1 - X + Polynomial.C z * X) ^ A
  have u13 (c d delta m:ℕ) (z:ℚ)
      (hcd:d < c) (hdelta:delta ≤ d) (hm:1 ≤ m):
      u893 (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) z =
        u33 c d delta z * u31 c d z ^ (m - 1):= by
    obtain ⟨hd,hb⟩:= u12 c d delta m hcd hdelta hm
    simp only [u893,u33,u31,u27,hd,hb,mul_pow,pow_add,pow_mul]
    ring
  let u28 (z:ℚ):ℚ[X]:= 1 - Polynomial.C z * X
  let u32 (c d:ℕ) (z:ℚ):ℚ[X]:=
    X ^ d * (1 - X) ^ d * u28 z ^ (c - d)
  let u34 (c d delta:ℕ) (z:ℚ):ℚ[X]:=
    X ^ (d - delta) * (1 - X) ^ (d - delta) * u28 z ^ (c - d - 1 + delta)
  let u894 (A B C:ℕ) (z:ℚ):ℚ[X]:=
    X ^ A * (1 - X) ^ C * (1 - Polynomial.C z * X) ^ B
  have u14 (c d delta m:ℕ) (z:ℚ)
      (hcd:d < c) (hdelta:delta ≤ d) (hm:1 ≤ m):
      u894 (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) z =
        u34 c d delta z * u32 c d z ^ (m - 1):= by
    obtain ⟨hd,hb⟩:= u12 c d delta m hcd hdelta hm
    simp only [u894,u34,u32,u28,hd,hb,mul_pow,pow_add,pow_mul]
    ring
  let u144:ℚ[X]:= (1 - X) + Polynomial.C (1 / 2:ℚ) * X
  have u901 (a b:ℕ):
      Math.B699.N21.d10 a (b + 1) = Math.B699.N21.d10 a b - Math.B699.N21.d10 (a + 1) b:= by
    have hleft:a + (b + 1) + 1 = (a + b + 1) + 1:= by
      simp only [Nat.add_assoc]
    have hright:(a + 1) + b + 1 = (a + b + 1) + 1:= by
      simp only [Nat.add_assoc,Nat.add_left_comm,Nat.add_comm]
    have hden:(a:ℚ) + (b:ℚ) + 1 + 1 ≠ 0:= by
      simpa only [Nat.cast_add,Nat.cast_one] using Math.B699.N21.d87 (a + b + 1)
    unfold Math.B699.N21.d10
    rw [hleft,hright]
    simp only [Nat.factorial_succ (a + b + 1),Nat.factorial_succ a,
      Nat.factorial_succ b,Nat.cast_mul,Nat.cast_add,Nat.cast_one]
    field_simp [Math.B699.N21.d43 (a + b + 1),hden] <;> ring
  have u904 (a b:ℕ):
      Math.B699.N21.d8 a (b + 1) =
        Math.B699.N21.d8 a b - Math.B699.N21.d8 (a + 1) b:= by
    unfold Math.B699.N21.d8
    simp only [pow_succ]
    ring
  have u902 (a b:ℕ):
      Math.B699.N21.moment (Math.B699.N21.d8 a b) = Math.B699.N21.d10 a b:= by
    induction b generalizing a with
    | zero =>
        simp only [Math.B699.N21.d8,pow_zero,mul_one,Math.B699.N21.d77,
          Math.B699.N21.d11]
    | succ b ih =>
        rw [u904,Math.B699.N21.d82,ih a,ih (a + 1)]
        exact (u901 a b).symm
  have u915 {ι:Type*} (s:Finset ι) (f:ι → ℚ[X]):
      Math.B699.N21.moment (∑ i ∈ s,f i) = ∑ i ∈ s,Math.B699.N21.moment (f i):= by
    classical
    simpa only [Math.B699.N21.d75] using (map_sum Math.B699.N21.d74 f s)
  have u883 (n:ℕ):(n.factorial:ℚ) ≠ 0:=
    Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero n)
  have u884 (n r:ℕ) (hr:r ≤ n):
      (n.choose r:ℚ) = (n.factorial:ℚ) /
        ((r.factorial:ℚ) * ((n - r).factorial:ℚ)):= by
    apply (eq_div_iff (mul_ne_zero (u883 r)
      (u883 (n - r)))).2
    have h:= Nat.choose_mul_factorial_mul_factorial hr
    have hc:(n.choose r:ℚ) * (r.factorial:ℚ) * ((n - r).factorial:ℚ) =
        (n.factorial:ℚ):= by exact_mod_cast h
    simpa only [mul_assoc] using hc
  have u916 (n:ℕ):(n.factorial:ℚ) ≠ 0:=
    Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero n)
  have u917 (n r:ℕ) (hr:r ≤ n):
      (n.choose r:ℚ) * Math.B699.N21.d10 r (n - r) = 1 / ((n:ℚ) + 1):= by
    rw [u884 n r hr]
    unfold Math.B699.N21.d10
    have htotal:r + (n - r) + 1 = n + 1:= by omega
    rw [htotal,Nat.factorial_succ n]
    have hn:(n:ℚ) + 1 ≠ 0:= by
      have h:((n + 1:ℕ):ℚ) ≠ 0:= Nat.cast_ne_zero.mpr (Nat.succ_ne_zero n)
      simpa only [Nat.cast_add,Nat.cast_one] using h
    simp only [Nat.cast_mul,Nat.cast_add,Nat.cast_one]
    field_simp [u916,hn] <;> ring
  have u918 (n:ℕ) (z:ℚ):
      ((1 - X:ℚ[X]) + Polynomial.C z * X) ^ n =
        ∑ r ∈ Finset.range (n + 1),
          Polynomial.C ((n.choose r:ℚ) * z ^ r) * Math.B699.N21.d8 r (n - r):= by
    classical
    calc
      ((1 - X:ℚ[X]) + Polynomial.C z * X) ^ n =
          (Polynomial.C z * X + (1 - X)) ^ n:= by rw [add_comm]
      _ = ∑ r ∈ Finset.range (n + 1),
          (Polynomial.C z * X) ^ r * (1 - X) ^ (n - r) * (n.choose r:ℚ[X]):=
        add_pow _ _ _
      _ = _:= by
        apply Finset.sum_congr rfl
        intro r hr
        unfold Math.B699.N21.d8
        rw [mul_pow,map_mul,map_pow,map_natCast]
        ring
  have u919 (n:ℕ) (z:ℚ):
      Math.B699.N21.moment (((1 - X:ℚ[X]) + Polynomial.C z * X) ^ n) =
        (1 / ((n:ℚ) + 1)) * ∑ r ∈ Finset.range (n + 1),z ^ r:= by
    classical
    rw [u918,u915]
    simp only [Math.B699.N21.d76,u902]
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro r hr
    have hmass:= u917 n r (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))
    calc
      ((n.choose r:ℚ) * z ^ r) * Math.B699.N21.d10 r (n - r) =
          z ^ r * ((n.choose r:ℚ) * Math.B699.N21.d10 r (n - r)):= by ring
      _ = z ^ r * (1 / ((n:ℚ) + 1)):= by rw [hmass]
      _ = _:= by ring
  have u920 (n:ℕ) (z:ℚ):
      (1 - z) * (∑ r ∈ Finset.range (n + 1),z ^ r) = 1 - z ^ (n + 1):= by
    induction n with
    | zero => simp
    | succ n ih =>
        rw [Finset.sum_range_succ,mul_add,ih]
        simp only [pow_succ]
        ring
  have u921 (n:ℕ) (a z:ℚ):
      Math.B699.N21.moment ((Polynomial.monomial n a).comp (Polynomial.C z * X)) =
        a * z ^ n / ((n:ℚ) + 1):= by
    rw [Polynomial.monomial_comp]
    have hpow:(Polynomial.C z * (X:ℚ[X])) ^ n = Polynomial.C (z ^ n) * X ^ n:= by
      rw [mul_pow,map_pow]
    rw [hpow,← mul_assoc,← map_mul,Math.B699.N21.d76,Math.B699.N21.d77]
    ring
  have u922 (p:ℚ[X]) (z:ℚ):
      Math.B699.N21.moment p = z * Math.B699.N21.moment (p.comp (Polynomial.C z * X)) +
        (1 - z) * Math.B699.N21.moment (p.comp ((1 - X) + Polynomial.C z * X)):= by
    induction p using Polynomial.induction_on' with
    | add p q ihp ihq =>
        simp only [Polynomial.add_comp,Math.B699.N21.d78]
        rw [ihp,ihq]
        ring
    | monomial n a =>
        rw [Math.B699.N21.d79,u921,Polynomial.monomial_comp,
          Math.B699.N21.d76,u919]
        have hsum:z * z ^ n +
            (1 - z) * (∑ r ∈ Finset.range (n + 1),z ^ r) = 1:= by
          rw [← pow_succ',u920]
          ring
        calc
          a / ((n:ℚ) + 1) = (a / ((n:ℚ) + 1)) * 1:= by ring
          _ = (a / ((n:ℚ) + 1)) *
              (z * z ^ n + (1 - z) * (∑ r ∈ Finset.range (n + 1),z ^ r)):= by rw [hsum]
          _ = _:= by ring
  have u145 (p:ℚ[X]):
      Math.B699.N21.moment (p.comp (1 - X)) = Math.B699.N21.moment p:= by
    simpa using (u922 p (0:ℚ)).symm
  have u146:
      u144.comp (1 - X) = Math.B699.N20.d63:= by
    unfold u144 Math.B699.N20.d63
    simp only [Polynomial.add_comp,Polynomial.sub_comp,Polynomial.one_comp,
      Polynomial.X_comp,Polynomial.mul_comp,Polynomial.C_comp]
    have htwo:(Polynomial.C (1 / 2:ℚ):ℚ[X]) + Polynomial.C (1 / 2:ℚ) = 1:= by
      rw [← map_add]
      norm_num
    have hsub:(1:ℚ[X]) - Polynomial.C (1 / 2:ℚ) = Polynomial.C (1 / 2:ℚ):=
      (sub_eq_iff_eq_add).2 htwo.symm
    calc
      (1:ℚ[X]) - (1 - X) + Polynomial.C (1 / 2:ℚ) * (1 - X) =
          Polynomial.C (1 / 2:ℚ) + (1 - Polynomial.C (1 / 2:ℚ)) * X:= by ring
      _ = _:= by rw [hsub]
  have u147 (p:ℚ[X]):
      Math.B699.N21.moment p = (1 / 2:ℚ) * Math.B699.N21.moment (p.comp Math.B699.N20.halfLeft) +
        (1 / 2:ℚ) * Math.B699.N21.moment (p.comp Math.B699.N20.d63):= by
    have hr:Math.B699.N21.moment (p.comp u144) = Math.B699.N21.moment (p.comp Math.B699.N20.d63):= by
      calc
        Math.B699.N21.moment (p.comp u144) =
            Math.B699.N21.moment ((p.comp u144).comp (1 - X)):=
          (u145 (p.comp u144)).symm
        _ = Math.B699.N21.moment (p.comp Math.B699.N20.d63):= by
          rw [Polynomial.comp_assoc,u146]
    have h:= u922 p (1 / 2:ℚ)
    change Math.B699.N21.moment p = (1 / 2:ℚ) * Math.B699.N21.moment (p.comp Math.B699.N20.halfLeft) +
      (1 - (1 / 2:ℚ)) * Math.B699.N21.moment (p.comp u144) at h
    have hhalf:1 - (1 / 2:ℚ) = (1 / 2:ℚ):= by norm_num
    rw [hhalf,hr] at h
    exact h
  have u873 (a b:ℕ):
      0 < Math.B699.N21.moment (Math.B699.N21.d8 a b):= by
    rw [u902]
    unfold Math.B699.N21.d10
    exact div_pos
      (mul_pos (Nat.cast_pos.mpr (Nat.factorial_pos a))
        (Nat.cast_pos.mpr (Nat.factorial_pos b)))
      (Nat.cast_pos.mpr (Nat.factorial_pos (a + b + 1)))
  have u875 {p:ℚ[X]} (hp:Math.B699.N21.d0 p):
      0 ≤ Math.B699.N21.moment p:= by
    induction hp with
    | zero => simp only [Math.B699.N21.d83,le_refl]
    | basis a b => exact (u873 a b).le
    | @add p q hp hq ihp ihq =>
        rw [Math.B699.N21.d78]
        exact add_nonneg ihp ihq
    | @scale c hc p hp ihp =>
        rw [Math.B699.N21.d76]
        exact mul_nonneg hc ihp
  have u903 (a b c d:ℕ):
      Math.B699.N21.d8 a b * Math.B699.N21.d8 c d =
        Math.B699.N21.d8 (a + c) (b + d):= by
    unfold Math.B699.N21.d8
    simp only [pow_add]
    ring
  have u876 (a b:ℕ) {q:ℚ[X]} (hq:Math.B699.N21.d0 q):
      Math.B699.N21.d0 (Math.B699.N21.d8 a b * q):= by
    induction hq with
    | zero => simpa only [mul_zero] using Math.B699.N21.d0.zero
    | basis c d =>
        simpa only [u903] using Math.B699.N21.d0.basis (a + c) (b + d)
    | @add p q hp hq ihp ihq =>
        simpa only [mul_add] using Math.B699.N21.d0.add ihp ihq
    | @scale c hc p hp ihp =>
        have h:= Math.B699.N21.d0.scale c hc ihp
        convert h using 1 <;> ring
  have u877 {p q:ℚ[X]} (hp:Math.B699.N21.d0 p) (hq:Math.B699.N21.d0 q):
      Math.B699.N21.d0 (p * q):= by
    induction hp with
    | zero => simpa only [zero_mul] using Math.B699.N21.d0.zero
    | basis a b => exact u876 a b hq
    | @add p r hp hr ihp ihr =>
        simpa only [add_mul] using Math.B699.N21.d0.add ihp ihr
    | @scale c hc p hp ihp =>
        simpa only [mul_assoc] using Math.B699.N21.d0.scale c hc ihp
  have u874:Math.B699.N21.d0 (1:ℚ[X]):= by
    simpa only [Math.B699.N21.d8,pow_zero,mul_one] using Math.B699.N21.d0.basis 0 0
  have u878 {p:ℚ[X]} (hp:Math.B699.N21.d0 p) (n:ℕ):
      Math.B699.N21.d0 (p ^ n):= by
    induction n with
    | zero => simpa only [pow_zero] using u874
    | succ n ih => simpa only [pow_succ] using u877 ih hp
  have u148 (lam:ℚ) {w f:ℚ[X]}
      (certificate:Math.B699.N20.d1 lam w f) (n:ℕ):
      0 ≤ Math.B699.N21.moment (w * f ^ n):= by
    induction certificate with
    | @leaf w f hw hf hgap =>
        exact u875 (u877 hw (u878 hf n))
    | @split w f left right ihl ihr =>
        have h:= u147 (w * f ^ n)
        simp only [Polynomial.mul_comp,Polynomial.pow_comp] at h
        rw [h]
        exact add_nonneg (mul_nonneg (by norm_num) ihl) (mul_nonneg (by norm_num) ihr)
  have u879 {p q:ℚ[X]} (h:Math.B699.N21.d0 (q - p)):
      Math.B699.N21.moment p ≤ Math.B699.N21.moment q:= by
    have h':0 ≤ Math.B699.N21.moment q - Math.B699.N21.moment p:= by
      simpa only [Math.B699.N21.d82] using u875 h
    exact sub_nonneg.mp h'
  have u880 (F:ℚ[X]) (lam:ℚ) (hlam:0 ≤ lam)
      (hF:Math.B699.N21.d0 F) (hgap:Math.B699.N21.d0 (Polynomial.C lam - F)) (n:ℕ):
      Math.B699.N21.d0 (Polynomial.C (lam ^ n) - F ^ n):= by
    induction n with
    | zero => simpa only [pow_zero,map_one,sub_self] using Math.B699.N21.d0.zero
    | succ n ih =>
        have h:= Math.B699.N21.d0.add (Math.B699.N21.d0.scale lam hlam ih)
          (u877 (u878 hF n) hgap)
        convert h using 1 <;> simp only [pow_succ,map_mul] <;> ring
  have u872 (g F:ℚ[X]) (lam:ℚ) (hlam:0 ≤ lam)
      (hg:Math.B699.N21.d0 g) (hF:Math.B699.N21.d0 F)
      (hgap:Math.B699.N21.d0 (Polynomial.C lam - F)) (n:ℕ):
      Math.B699.N21.moment (g * F ^ n) ≤ lam ^ n * Math.B699.N21.moment g:= by
    have hprod:= u877 hg (u880 F lam hlam hF hgap n)
    have hsub:Math.B699.N21.d0 (Polynomial.C (lam ^ n) * g - g * F ^ n):= by
      convert hprod using 1 <;> ring
    have hle:= u879 hsub
    simpa only [Math.B699.N21.d76] using hle
  have u149 (lam:ℚ) (hlam:0 ≤ lam)
      {w f:ℚ[X]} (certificate:Math.B699.N20.d1 lam w f) (n:ℕ):
      Math.B699.N21.moment (w * f ^ n) ≤ lam ^ n * Math.B699.N21.moment w:= by
    induction certificate with
    | @leaf w f hw hf hgap =>
        exact u872 w f lam hlam hw hf hgap n
    | @split w f left right ihl ihr =>
        have hproduct:Math.B699.N21.moment (w * f ^ n) =
            (1 / 2:ℚ) * Math.B699.N21.moment (w.comp Math.B699.N20.halfLeft * (f.comp Math.B699.N20.halfLeft) ^ n) +
            (1 / 2:ℚ) * Math.B699.N21.moment (w.comp Math.B699.N20.d63 * (f.comp Math.B699.N20.d63) ^ n):= by
          simpa only [Polynomial.mul_comp,Polynomial.pow_comp] using u147 (w * f ^ n)
        have hweight:= u147 w
        calc
          Math.B699.N21.moment (w * f ^ n) =
              (1 / 2:ℚ) * Math.B699.N21.moment (w.comp Math.B699.N20.halfLeft * (f.comp Math.B699.N20.halfLeft) ^ n) +
              (1 / 2:ℚ) * Math.B699.N21.moment (w.comp Math.B699.N20.d63 * (f.comp Math.B699.N20.d63) ^ n):= hproduct
          _ ≤ (1 / 2:ℚ) * (lam ^ n * Math.B699.N21.moment (w.comp Math.B699.N20.halfLeft)) +
              (1 / 2:ℚ) * (lam ^ n * Math.B699.N21.moment (w.comp Math.B699.N20.d63)):=
            add_le_add (mul_le_mul_of_nonneg_left ihl (by norm_num))
              (mul_le_mul_of_nonneg_left ihr (by norm_num))
          _ = lam ^ n * ((1 / 2:ℚ) * Math.B699.N21.moment (w.comp Math.B699.N20.halfLeft) +
              (1 / 2:ℚ) * Math.B699.N21.moment (w.comp Math.B699.N20.d63)):= by ring
          _ = lam ^ n * Math.B699.N21.moment w:= by rw [← hweight]
  have u143 (lam:ℚ) (hlam:0 ≤ lam)
      {w f:ℚ[X]} (certificate:Math.B699.N20.d1 lam w f) (n:ℕ):
      |Math.B699.N21.moment (w * f ^ n)| ≤ lam ^ n * Math.B699.N21.moment w:= by
    rw [abs_of_nonneg (u148 lam certificate n)]
    exact u149 lam hlam certificate n
  have u15 (c d delta m:ℕ) (z lam:ℚ)
      (hcd:d < c) (hdelta:delta ≤ d) (hm:1 ≤ m) (hlam:0 ≤ lam)
      (tree:Math.B699.N20.d1 lam (u33 c d delta z) (u31 c d z)):
      |Math.B699.N21.moment (u893 (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) z)| ≤
        lam ^ (m - 1) * Math.B699.N21.moment (u33 c d delta z):= by
    rw [u13 c d delta m z hcd hdelta hm]
    exact u143 lam hlam tree (m - 1)
  have u16 (c d delta m:ℕ) (z lam:ℚ)
      (hcd:d < c) (hdelta:delta ≤ d) (hm:1 ≤ m) (hlam:0 ≤ lam)
      (tree:Math.B699.N20.d1 lam (u34 c d delta z) (u32 c d z)):
      |Math.B699.N21.moment (u894 (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) z)| ≤
        lam ^ (m - 1) * Math.B699.N21.moment (u34 c d delta z):= by
    rw [u14 c d delta m z hcd hdelta hm]
    exact u143 lam hlam tree (m - 1)
  let u882 (A B C:ℕ):ℚ:=
    ((A + B + C + 1).factorial:ℚ) /
      ((A.factorial:ℚ) * (B.factorial:ℚ) * (C.factorial:ℚ))
  have u17 (A B C:ℕ):0 < u882 A B C:= by
    unfold u882
    exact div_pos (Nat.cast_pos.mpr (Nat.factorial_pos _))
      (mul_pos (mul_pos (Nat.cast_pos.mpr (Nat.factorial_pos _))
        (Nat.cast_pos.mpr (Nat.factorial_pos _))) (Nat.cast_pos.mpr (Nat.factorial_pos _)))
  let u907 (A B C:ℕ) (z:ℚ):ℚ:=
    ∑ r ∈ Finset.range (A + 1),
      ((-1:ℚ) ^ C * ((A + C - r).choose C:ℚ) * ((B + r).choose r:ℚ)) * z ^ r
  have u889 (A B C:ℕ) (z:ℚ):
      u907 A B C z = (Math.B699.N18.d120 A B C).eval₂ (Int.castRingHom ℚ) z:= by
    classical
    unfold u907 Math.B699.N18.d120 Math.B699.N18.d22
    simp only [Polynomial.eval₂_finsetSum,Polynomial.eval₂_monomial]
    apply Finset.sum_congr rfl
    intro r hr
    simp [Math.B699.N18.d117,Math.B699.N18.d118,mul_assoc]
  let u896 (A B C:ℕ) (z:ℚ):ℚ:=
    (-1:ℚ) ^ C * u882 A B C * Math.B699.N21.moment (u893 A B C z)
  have u886 (A B C r:ℕ) (hr:r ≤ A):
      u882 A B C * (A.choose r:ℚ) * Math.B699.N21.d10 (B + r) (A + C - r) =
        ((A + C - r).choose C:ℚ) * ((B + r).choose r:ℚ):= by
    have hC:C ≤ A + C - r:= by omega
    have hrB:r ≤ B + r:= by omega
    rw [u884 A r hr,
      u884 (A + C - r) C hC,
      u884 (B + r) r hrB]
    dsimp [u882,Math.B699.N21.d10]
    have hsub:A + C - r - C = A - r:= by omega
    have hsubB:B + r - r = B:= by omega
    have htotal:B + r + (A + C - r) + 1 = A + B + C + 1:= by omega
    rw [hsub,hsubB,htotal]
    field_simp [u883]
    <;> ring
  have u910 (A B C:ℕ) (z:ℚ):
      u893 A B C z =
        ∑ r ∈ Finset.range (A + 1),
          Polynomial.C ((A.choose r:ℚ) * z ^ r) *
            Math.B699.N21.d8 (B + r) (A + C - r):= by
    simpa only [u893,Math.B699.N21.d8,map_mul,map_pow,map_natCast] using
      (Math.B699.N22.N16.d122 A B C (Polynomial.C z) (X:ℚ[X]))
  have u913 (A B C:ℕ) (z:ℚ):u907 A B C z = u896 A B C z:= by
    classical
    unfold u907 u896
    rw [u910,u915]
    simp only [Math.B699.N21.d76,u902]
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro r hr
    have h:= u886 A B C r (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))
    calc
      ((-1:ℚ) ^ C * ((A + C - r).choose C:ℚ) * ((B + r).choose r:ℚ)) * z ^ r =
          ((-1:ℚ) ^ C * z ^ r) *
            (((A + C - r).choose C:ℚ) * ((B + r).choose r:ℚ)):= by ring
      _ = ((-1:ℚ) ^ C * z ^ r) *
          (u882 A B C * (A.choose r:ℚ) * Math.B699.N21.d10 (B + r) (A + C - r)):= by rw [h]
      _ = _:= by ring
  have u18 (c d delta m:ℕ) (z lam:ℚ)
      (hcd:d < c) (hdelta:delta ≤ d) (hm:1 ≤ m) (hlam:0 ≤ lam)
      (tree:Math.B699.N20.d1 lam (u33 c d delta z) (u31 c d z)):
      |(Math.B699.N18.d120 (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta)).eval₂
          (Int.castRingHom ℚ) z| ≤
        u882 (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) *
          (lam ^ (m - 1) * Math.B699.N21.moment (u33 c d delta z)):= by
    rw [← u889,u913]
    simp only [u896,abs_mul,abs_pow,abs_neg,abs_one,one_pow,one_mul]
    rw [abs_of_pos (u17 _ _ _)]
    exact mul_le_mul_of_nonneg_left
      (u15 c d delta m z lam hcd hdelta hm hlam tree)
      (le_of_lt (u17 _ _ _))
  let u908 (A B C:ℕ) (z:ℚ):ℚ:=
    ∑ r ∈ Finset.range (B + 1),
      ((-1:ℚ) ^ r * ((A + r).choose r:ℚ) *
        ((A + B + C + 1).choose (A + C + r + 1):ℚ)) * z ^ r
  have u890 (A B C:ℕ) (z:ℚ):
      u908 A B C z = (Math.B699.N18.d37 A B C).eval₂ (Int.castRingHom ℚ) z:= by
    classical
    unfold u908 Math.B699.N18.d37 Math.B699.N18.d22
    simp only [Polynomial.eval₂_finsetSum,Polynomial.eval₂_monomial]
    apply Finset.sum_congr rfl
    intro r hr
    simp [Math.B699.N18.d36]
  let u897 (A B C:ℕ) (z:ℚ):ℚ:=
    u882 A B C * Math.B699.N21.moment (u894 A B C z)
  have u887 (A B C r:ℕ) (hr:r ≤ B):
      u882 A B C * (B.choose r:ℚ) * Math.B699.N21.d10 (A + r) C =
        ((A + r).choose r:ℚ) *
          ((A + B + C + 1).choose (A + C + r + 1):ℚ):= by
    have hrA:r ≤ A + r:= by omega
    have hN:A + C + r + 1 ≤ A + B + C + 1:= by omega
    rw [u884 B r hr,
      u884 (A + r) r hrA,
      u884 (A + B + C + 1) (A + C + r + 1) hN]
    dsimp [u882,Math.B699.N21.d10]
    have hsubA:A + r - r = A:= by omega
    have hsub:A + B + C + 1 - (A + C + r + 1) = B - r:= by omega
    have htotal:A + r + C + 1 = A + C + r + 1:= by omega
    rw [hsubA,hsub,htotal]
    field_simp [u883]
    <;> ring
  have u911 (A B C:ℕ) (z:ℚ):
      u894 A B C z =
        ∑ r ∈ Finset.range (B + 1),
          Polynomial.C ((-1:ℚ) ^ r * (B.choose r:ℚ) * z ^ r) *
            Math.B699.N21.d8 (A + r) C:= by
    simpa only [u894,Math.B699.N21.d8,map_mul,map_pow,map_neg,map_one,
      map_natCast] using
      (Math.B699.N22.N16.d39 A B C (Polynomial.C z) (X:ℚ[X]))
  have u914 (A B C:ℕ) (z:ℚ):u908 A B C z = u897 A B C z:= by
    classical
    unfold u908 u897
    rw [u911,u915]
    simp only [Math.B699.N21.d76,u902]
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro r hr
    have h:= u887 A B C r (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))
    calc
      ((-1:ℚ) ^ r * ((A + r).choose r:ℚ) *
          ((A + B + C + 1).choose (A + C + r + 1):ℚ)) * z ^ r =
        ((-1:ℚ) ^ r * z ^ r) *
          (((A + r).choose r:ℚ) * ((A + B + C + 1).choose (A + C + r + 1):ℚ)):= by ring
      _ = ((-1:ℚ) ^ r * z ^ r) *
          (u882 A B C * (B.choose r:ℚ) * Math.B699.N21.d10 (A + r) C):= by rw [h]
      _ = _:= by ring
  have u19 (c d delta m:ℕ) (z lam:ℚ)
      (hcd:d < c) (hdelta:delta ≤ d) (hm:1 ≤ m) (hlam:0 ≤ lam)
      (tree:Math.B699.N20.d1 lam (u34 c d delta z) (u32 c d z)):
      |(Math.B699.N18.d37 (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta)).eval₂
          (Int.castRingHom ℚ) z| ≤
        u882 (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) *
          (lam ^ (m - 1) * Math.B699.N21.moment (u34 c d delta z)):= by
    rw [← u890,u914]
    simp only [u897,abs_mul]
    rw [abs_of_pos (u17 _ _ _)]
    exact mul_le_mul_of_nonneg_left
      (u16 c d delta m z lam hcd hdelta hm hlam tree)
      (le_of_lt (u17 _ _ _))
  have u21:Math.B699.N21.d0 (X:ℚ[X]):= by
    simpa only [Math.B699.N21.d8,pow_one,pow_zero,mul_one] using Math.B699.N21.d0.basis 1 0
  have u22:Math.B699.N21.d0 (1 - X:ℚ[X]):= by
    simpa only [Math.B699.N21.d8,pow_zero,pow_one,one_mul] using Math.B699.N21.d0.basis 0 1
  have u29 (z:ℚ) (hz:0 ≤ z):Math.B699.N21.d0 (u27 z):= by
    exact Math.B699.N21.d0.add u22 (Math.B699.N21.d0.scale z hz u21)
  have u30 (z:ℚ) (hz:z ≤ 1):Math.B699.N21.d0 (u28 z):= by
    have h:u28 z = u27 (1 - z):= by
      unfold u28 u27
      rw [map_sub,map_one]
      ring
    rw [h]
    exact u29 (1 - z) (sub_nonneg.mpr hz)
  have u20 (c d delta:ℕ) (z:ℚ) (hz:z ≤ 1):
      Math.B699.N21.d0 (u34 c d delta z):= by
    exact u877
      (u877 (u878 u21 (d - delta))
        (u878 u22 (d - delta)))
      (u878 (u30 z hz) (c - d - 1 + delta))
  let u23 (a b:ℚ):ℚ[X]:=
    Polynomial.C a * (1 - X) + Polynomial.C b * X
  have u24 (a b:ℚ) (ha:0 ≤ a) (hb:0 ≤ b):
      Math.B699.N21.d0 (u23 a b):= by
    exact Math.B699.N21.d0.add (Math.B699.N21.d0.scale a ha u22)
      (Math.B699.N21.d0.scale b hb u21)
  have u25 (a b:ℚ):
      1 - u23 a b = u23 (1 - a) (1 - b):= by
    unfold u23
    simp only [map_sub,map_one]
    ring
  have u26 {p:ℚ[X]} (hp:Math.B699.N21.d0 p)
      (a b:ℚ) (ha:0 ≤ a) (hab:a ≤ b) (hb:b ≤ 1):
      Math.B699.N21.d0 (p.comp (u23 a b)):= by
    have ht:Math.B699.N21.d0 (u23 a b):= u24 a b ha (ha.trans hab)
    have hcomp:Math.B699.N21.d0 (1 - u23 a b):= by
      rw [u25]
      exact u24 (1 - a) (1 - b)
        (sub_nonneg.mpr (hab.trans hb)) (sub_nonneg.mpr hb)
    induction hp with
    | zero => simpa only [Polynomial.zero_comp] using Math.B699.N21.d0.zero
    | basis i j =>
        simpa only [Math.B699.N21.d8,Polynomial.mul_comp,Polynomial.pow_comp,
          Polynomial.sub_comp,Polynomial.one_comp,Polynomial.X_comp] using
          u877 (u878 ht i) (u878 hcomp j)
    | @add p q hp hq ihp ihq =>
        simpa only [Polynomial.add_comp] using Math.B699.N21.d0.add ihp ihq
    | @scale c hc p hp ih =>
        simpa only [Polynomial.mul_comp,Polynomial.C_comp] using Math.B699.N21.d0.scale c hc ih
  have u35 (c d:ℕ) (z:ℚ) (hz:0 ≤ z):Math.B699.N21.d0 (u31 c d z):= by
    exact u877
      (u877 (u878 u21 (c - d)) (u878 u22 d))
      (u878 (u29 z hz) d)
  have u36 (c d:ℕ) (z:ℚ) (hz:z ≤ 1):Math.B699.N21.d0 (u32 c d z):= by
    exact u877
      (u877 (u878 u21 d) (u878 u22 d))
      (u878 (u30 z hz) (c - d))
  have u37 (c d delta:ℕ) (z:ℚ) (hz:0 ≤ z):
      Math.B699.N21.d0 (u33 c d delta z):= by
    exact u877
      (u877 (u878 u21 (c - d - 1 + delta))
        (u878 u22 (d - delta)))
      (u878 (u29 z hz) (d - delta))
  have u38 {F:ℕ → ℚ} {R:ℚ} {k0:ℕ}
      (hR:0 ≤ R)
      (hstep:∀ k:ℕ,k0 ≤ k →
        F k * (R * (((k:ℚ) + 1) / ((k:ℚ) + 2)) ^ 2) ≤ F (k + 1))
      (n:ℕ):
      F k0 * R ^ n * ((k0:ℚ) + 1) ^ 2 /
        (((k0 + n:ℕ):ℚ) + 1) ^ 2 ≤ F (k0 + n):= by
    induction n with
    | zero =>
        apply le_of_eq
        simp only [pow_zero,mul_one,Nat.add_zero]
        have hk:(k0:ℚ) + 1 ≠ 0:= by positivity
        field_simp
    | succ n ih =>
        have hk:0 < ((k0 + n:ℕ):ℚ) + 1:= by positivity
        have hk2:0 < ((k0 + n:ℕ):ℚ) + 2:= by positivity
        calc
          F k0 * R ^ (n + 1) * ((k0:ℚ) + 1) ^ 2 /
              (((k0 + (n + 1):ℕ):ℚ) + 1) ^ 2 =
            (F k0 * R ^ n * ((k0:ℚ) + 1) ^ 2 /
              (((k0 + n:ℕ):ℚ) + 1) ^ 2) *
              (R * ((((k0 + n:ℕ):ℚ) + 1) / (((k0 + n:ℕ):ℚ) + 2)) ^ 2):= by
                rw [pow_succ]
                simp only [Nat.cast_add,Nat.cast_one] at *
                field_simp
                <;> ring
          _ ≤ F (k0 + n) *
              (R * ((((k0 + n:ℕ):ℚ) + 1) / (((k0 + n:ℕ):ℚ) + 2)) ^ 2):=
            mul_le_mul_of_nonneg_right ih (mul_nonneg hR (sq_nonneg _))
          _ ≤ F (k0 + (n + 1)):= by
            simpa only [Nat.add_assoc] using hstep (k0 + n) (by omega)
  have u39 {F:ℕ → ℚ} {R:ℚ} {K:ℕ}
      (hR:0 ≤ R)
      (hstep:∀ k:ℕ,K ≤ k → F k * R ≤ F (k + 1))
      (n:ℕ):F K * R ^ n ≤ F (K + n):= by
    induction n with
    | zero => simp
    | succ n ih =>
        calc
          F K * R ^ (n + 1) = (F K * R ^ n) * R:= by rw [pow_succ]; ring
          _ ≤ F (K + n) * R:= mul_le_mul_of_nonneg_right ih hR
          _ ≤ F (K + (n + 1)):= by
            simpa only [Nat.add_assoc] using hstep (K + n) (by omega)
  have u40 {R:ℚ} {B:ℕ}
      (hR:1 ≤ R) (hlinear:2 ≤ 1 + (B:ℚ) * (R - 1)):
      2 ≤ R ^ B:= by
    exact hlinear.trans (one_add_mul_sub_le_pow (by linarith:-1 ≤ R) B)
  have u41 {R:ℚ} {B:ℕ}
      (hblock:2 ≤ R ^ B) (t:ℕ):(2:ℚ) ^ t ≤ R ^ (B * t):= by
    rw [pow_mul]
    exact pow_le_pow_left₀ (by norm_num) hblock t
  have u42 {F:ℕ → ℚ} {R:ℚ} {K T B n:ℕ}
      (hR:1 ≤ R) (hF:0 ≤ F K)
      (hstep:∀ k:ℕ,K ≤ k → F k * R ≤ F (k + 1))
      (hbase:1 ≤ F K * (2:ℚ) ^ T)
      (hlinear:2 ≤ 1 + (B:ℚ) * (R - 1))
      (hn:B * (T + 1) ≤ n):1 < F (K + n):= by
    have hp:(2:ℚ) ^ (T + 1) ≤ R ^ n:=
      (u41 (u40 hR hlinear) (T + 1)).trans
        (pow_le_pow_right₀ hR hn)
    have hbound:(2:ℚ) ≤ F (K + n):= by
      calc
        (2:ℚ) = 1 * 2:= by ring
        _ ≤ (F K * (2:ℚ) ^ T) * 2:= mul_le_mul_of_nonneg_right hbase (by norm_num)
        _ = F K * (2:ℚ) ^ (T + 1):= by rw [pow_succ]; ring
        _ ≤ F K * R ^ n:= mul_le_mul_of_nonneg_left hp hF
        _ ≤ F (K + n):= u39 (by linarith) hstep n
    exact lt_of_lt_of_le (by norm_num:(1:ℚ) < 2) hbound
  let u43:ℕ:= 11
  let u44:ℕ:= 7
  let u45:ℚ:= (1:ℚ) / 50
  let u46:ℚ:= (5962730782212565018186393:ℚ) / 79228162514264337593543950336
  let u47:ℚ[X]:= u31 u43 u44 u45
  let u48:ℚ[X]:= u33 u43 u44 0 u45
  let u49:ℚ[X]:= u33 u43 u44 1 u45
  let u50:ℕ:= 11
  let u51:ℕ:= 7
  let u52:ℚ:= (1:ℚ) / 50
  let u53:ℚ:= (4645474555000655291530615:ℚ) / 79228162514264337593543950336
  let u54:ℚ[X]:= u32 u50 u51 u52
  let u55:ℚ[X]:= u34 u50 u51 0 u52
  let u56:ℚ[X]:= u34 u50 u51 1 u52
  have u881 {cs:List (ℕ × ℕ × ℚ)}
      (h:∀ t ∈ cs,0 ≤ t.2.2):Math.B699.N21.d0 (Math.B699.N21.d9 cs):= by
    induction cs with
    | nil => exact Math.B699.N21.d0.zero
    | cons t cs ih =>
      exact Math.B699.N21.d0.add
        (Math.B699.N21.d0.scale t.2.2 (h t (by simp)) (Math.B699.N21.d0.basis t.1 t.2.1))
        (ih (by intro u hu; exact h u (by simp [hu])))
  have u61:
      (Math.B699.N20.d1 u46 (u48) (u47)) ∧
      (Math.B699.N20.d1 u46 (u49) (u47)) ∧
      (Math.B699.N20.d1 u53 (u55) (u54)) ∧
      (Math.B699.N20.d1 u53 (u56) (u54)):= by
    classical
    letI:Infinite ℚ:= Infinite.of_injective (fun n:ℕ => (n:ℚ)) Nat.cast_injective
    let v23:ℚ:= 30948500982134506872478105600000000
    let v24:List (ℕ × ℕ × ℚ):= [
      (0,18,(1814638498047130973254146484375:ℚ)/v23),
      (1,17,(32663492964848357518574636718750:ℚ)/v23),
      (2,16,(277639690201211038907884412109375:ℚ)/v23),
      (3,15,(1480745014406458874175383531250000:ℚ)/v23),
      (4,14,(5552793804024220778157688242187500:ℚ)/v23),
      (5,13,(15547822651267818178841527078125000:ℚ)/v23),
      (6,12,(33686949077746939387489975335937500:ℚ)/v23),
      (7,11,(57747166615258748234754479318750000:ℚ)/v23),
      (8,10,(79387516420491602397525976231281250:ℚ)/v23),
      (9,9,(88154720428250837102079362784552500:ℚ)/v23),
      (10,8,(79221902155244037905571222020260450:ℚ)/v23),
      (11,7,(57443657949114953425212721687286576:ℚ)/v23),
      (12,6,(33330959356706346035889757629212124:ℚ)/v23),
      (13,5,(15251973386491134195078879717916104:ℚ)/v23),
      (14,4,(5377495105790482407882789377158380:ℚ)/v23),
      (15,3,(1408167395035172239282407924916560:ℚ)/v23),
      (16,2,(257642526356597344216017912758847:ℚ)/v23),
      (17,1,(29363342017488929444893281180318:ℚ)/v23),
      (18,0,(1567499747975181831258691233943:ℚ)/v23)
    ]
    let v20:ℚ[X]:= Math.B699.N21.d9 v24
    have v0:Math.B699.N21.d0 v20:= by
      apply u881
      norm_num [v24,v23]
    let v12:ℚ:= (4645474555000655291530615:ℚ) / 79228162514264337593543950336
    let v13:ℚ[X]:= u54
    let v10:ℚ:= (0:ℚ)
    let v11:ℚ:= (1:ℚ) / 4
    let v16:ℚ[X]:= u23 v10 v11
    let v17:ℚ[X]:= v13.comp v16
    let v7:ℕ:= 11
    let v8:ℕ:= 7
    let v9:ℚ:= (1:ℚ) / 50
    have v21:Polynomial.C v12 - v17 = v20:= by
      apply Polynomial.funext
      intro x
      norm_num [v12,v17,v13,u54,u50,u51,u52,
        u32,u28,v7,v8,v9,v16,u23,v10,v11,v20,v24,v23,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v1:Math.B699.N21.d0 (Polynomial.C v12 - v17):= by
      rw [v21]
      exact v0
    have v2:Math.B699.N21.d0 v17:= by
      exact u26 (u36 v7 v8 v9 (by norm_num [v9]))
        v10 v11 (by norm_num [v10]) (by norm_num [v10,v11]) (by norm_num [v11])
    let v14:ℚ[X]:= u55
    let v18:ℚ[X]:= v14.comp v16
    have v3:Math.B699.N21.d0 v18:= by
      exact u26 (u20 v7 v8 0 v9 (by norm_num [v9]))
        v10 v11 (by norm_num [v10]) (by norm_num [v10,v11]) (by norm_num [v11])
    let v15:ℚ[X]:= u56
    let v19:ℚ[X]:= v15.comp v16
    have v4:Math.B699.N21.d0 v19:= by
      exact u26 (u20 v7 v8 1 v9 (by norm_num [v9]))
        v10 v11 (by norm_num [v10]) (by norm_num [v10,v11]) (by norm_num [v11])
    have v5:Math.B699.N20.d1 v12 v18 v17:= by
      exact Math.B699.N20.d1.leaf (lam:= v12) (w:= v18) (f:= v17)
        v3 v2 v1
    have v6:Math.B699.N20.d1 v12 v19 v17:= by
      exact Math.B699.N20.d1.leaf (lam:= v12) (w:= v19) (f:= v17)
        v4 v2 v1
    have v22:v16 = (Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v16,u23,v10,v11,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v48:ℚ:= 30948500982134506872478105600000000
    let v49:List (ℕ × ℕ × ℚ):= [
      (0,18,(1567499747975181831258691233943:ℚ)/v48),
      (1,17,(27640822186585444721538022726302:ℚ)/v48),
      (2,16,(229639809106621831042419600425535:ℚ)/v48),
      (3,15,(1194137211008032093603570123628880:ℚ)/v48),
      (4,14,(4354588680397792967563271581871340:ℚ)/v48),
      (5,13,(11823332887718355125572882428362184:ℚ)/v48),
      (6,12,(24766067460803799946866148379223516:ℚ)/v48),
      (7,11,(40913810583540008154390734760956720:ℚ)/v48),
      (8,10,(54027910984280752813203986336809570:ℚ)/v48),
      (9,9,(57444018204945210777108713217975860:ℚ)/v48),
      (10,8,(49281484957374364037552213586444898:ℚ)/v48),
      (11,7,(34025460020536672603692716360586032:ℚ)/v48),
      (12,6,(18761347587506525680663555978323420:ℚ)/v48),
      (13,5,(8147479616824593971842034637241800:ℚ)/v48),
      (14,4,(2724618236186763139317603516427500:ℚ)/v48),
      (15,3,(676825987710012862370480516850000:ℚ)/v48),
      (16,2,(117573038305517051047804181709375:ℚ)/v48),
      (17,1,(12740907496130692066280492718750:ℚ)/v48),
      (18,0,(647988255489076280963586484375:ℚ)/v48)
    ]
    let v45:ℚ[X]:= Math.B699.N21.d9 v49
    have v25:Math.B699.N21.d0 v45:= by
      apply u881
      norm_num [v49,v48]
    let v37:ℚ:= (4645474555000655291530615:ℚ) / 79228162514264337593543950336
    let v38:ℚ[X]:= u54
    let v35:ℚ:= (1:ℚ) / 4
    let v36:ℚ:= (3:ℚ) / 8
    let v41:ℚ[X]:= u23 v35 v36
    let v42:ℚ[X]:= v38.comp v41
    let v32:ℕ:= 11
    let v33:ℕ:= 7
    let v34:ℚ:= (1:ℚ) / 50
    have v46:Polynomial.C v37 - v42 = v45:= by
      apply Polynomial.funext
      intro x
      norm_num [v37,v42,v38,u54,u50,u51,u52,
        u32,u28,v32,v33,v34,v41,u23,v35,v36,v45,v49,v48,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v26:Math.B699.N21.d0 (Polynomial.C v37 - v42):= by
      rw [v46]
      exact v25
    have v27:Math.B699.N21.d0 v42:= by
      exact u26 (u36 v32 v33 v34 (by norm_num [v34]))
        v35 v36 (by norm_num [v35]) (by norm_num [v35,v36]) (by norm_num [v36])
    let v39:ℚ[X]:= u55
    let v43:ℚ[X]:= v39.comp v41
    have v28:Math.B699.N21.d0 v43:= by
      exact u26 (u20 v32 v33 0 v34 (by norm_num [v34]))
        v35 v36 (by norm_num [v35]) (by norm_num [v35,v36]) (by norm_num [v36])
    let v40:ℚ[X]:= u56
    let v44:ℚ[X]:= v40.comp v41
    have v29:Math.B699.N21.d0 v44:= by
      exact u26 (u20 v32 v33 1 v34 (by norm_num [v34]))
        v35 v36 (by norm_num [v35]) (by norm_num [v35,v36]) (by norm_num [v36])
    have v30:Math.B699.N20.d1 v37 v43 v42:= by
      exact Math.B699.N20.d1.leaf (lam:= v37) (w:= v43) (f:= v42)
        v28 v27 v26
    have v31:Math.B699.N20.d1 v37 v44 v42:= by
      exact Math.B699.N20.d1.leaf (lam:= v37) (w:= v44) (f:= v42)
        v29 v27 v26
    have v47:v41 = ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v41,u23,v35,v36,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v73:ℚ:= 30948500982134506872478105600000000
    let v74:List (ℕ × ℕ × ℚ):= [
      (0,18,(647988255489076280963586484375:ℚ)/v73),
      (1,17,(11125229150139713552876588718750:ℚ)/v73),
      (2,16,(90016645952827448638589410509375:ℚ)/v73),
      (3,15,(456035790078270890123316817650000:ℚ)/v73),
      (4,14,(1620852345984846257937449762827500:ℚ)/v73),
      (5,13,(4291413113712151657549039134342600:ℚ)/v73),
      (6,12,(8770459784997875942390790662677980:ℚ)/v73),
      (7,11,(14145146866249229560880498484040496:ℚ)/v73),
      (8,10,(18248185153829167805562552278680162:ℚ)/v73),
      (9,9,(18968115651752244502594835158394420:ℚ)/v73),
      (10,8,(15921156952662490813700449887683170:ℚ)/v73),
      (11,7,(10763585041174711628728857329783600:ℚ)/v73),
      (12,6,(5816262602135583484085482475251164:ℚ)/v73),
      (13,5,(2477459875576895576596700171369928:ℚ)/v73),
      (14,4,(813349317133092193667862920572140:ℚ)/v73),
      (15,3,(198530203343950571168451171017040:ℚ)/v73),
      (16,2,(33917785838909784653301199176255:ℚ)/v73),
      (17,1,(3618104586248563792608769563294:ℚ)/v73),
      (18,0,(181298833559858069741442066583:ℚ)/v73)
    ]
    let v70:ℚ[X]:= Math.B699.N21.d9 v74
    have v50:Math.B699.N21.d0 v70:= by
      apply u881
      norm_num [v74,v73]
    let v62:ℚ:= (4645474555000655291530615:ℚ) / 79228162514264337593543950336
    let v63:ℚ[X]:= u54
    let v60:ℚ:= (3:ℚ) / 8
    let v61:ℚ:= (7:ℚ) / 16
    let v66:ℚ[X]:= u23 v60 v61
    let v67:ℚ[X]:= v63.comp v66
    let v57:ℕ:= 11
    let v58:ℕ:= 7
    let v59:ℚ:= (1:ℚ) / 50
    have v71:Polynomial.C v62 - v67 = v70:= by
      apply Polynomial.funext
      intro x
      norm_num [v62,v67,v63,u54,u50,u51,u52,
        u32,u28,v57,v58,v59,v66,u23,v60,v61,v70,v74,v73,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v51:Math.B699.N21.d0 (Polynomial.C v62 - v67):= by
      rw [v71]
      exact v50
    have v52:Math.B699.N21.d0 v67:= by
      exact u26 (u36 v57 v58 v59 (by norm_num [v59]))
        v60 v61 (by norm_num [v60]) (by norm_num [v60,v61]) (by norm_num [v61])
    let v64:ℚ[X]:= u55
    let v68:ℚ[X]:= v64.comp v66
    have v53:Math.B699.N21.d0 v68:= by
      exact u26 (u20 v57 v58 0 v59 (by norm_num [v59]))
        v60 v61 (by norm_num [v60]) (by norm_num [v60,v61]) (by norm_num [v61])
    let v65:ℚ[X]:= u56
    let v69:ℚ[X]:= v65.comp v66
    have v54:Math.B699.N21.d0 v69:= by
      exact u26 (u20 v57 v58 1 v59 (by norm_num [v59]))
        v60 v61 (by norm_num [v60]) (by norm_num [v60,v61]) (by norm_num [v61])
    have v55:Math.B699.N20.d1 v62 v68 v67:= by
      exact Math.B699.N20.d1.leaf (lam:= v62) (w:= v68) (f:= v67)
        v53 v52 v51
    have v56:Math.B699.N20.d1 v62 v69 v67:= by
      exact Math.B699.N20.d1.leaf (lam:= v62) (w:= v69) (f:= v67)
        v54 v52 v51
    have v72:v66 = (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v66,u23,v60,v61,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v98:ℚ:= 30948500982134506872478105600000000
    let v99:List (ℕ × ℕ × ℚ):= [
      (0,18,(181298833559858069741442066583:ℚ)/v98),
      (1,17,(3086016212991885986714551016094:ℚ)/v98),
      (2,16,(24760736438039398316054919283263:ℚ)/v98),
      (3,15,(124417425543283750322540506866000:ℚ)/v98),
      (4,14,(438689222206292115654354798521580:ℚ)/v98),
      (5,13,(1152481614841482519294340570316232:ℚ)/v98),
      (6,12,(2337566859270250736573814912148956:ℚ)/v98),
      (7,11,(3742341558892521241367214162170672:ℚ)/v98),
      (8,10,(4793295314152848620527498601718370:ℚ)/v98),
      (9,9,(4947649844114296227708752361768500:ℚ)/v98),
      (10,8,(4124660546519528089869702197361250:ℚ)/v98),
      (11,7,(2770027582983015423273617443550000:ℚ)/v98),
      (12,6,(1487150291056951355435361822337500:ℚ)/v98),
      (13,5,(629456741433131102285516182125000:ℚ)/v98),
      (14,4,(205372860150698866756014342187500:ℚ)/v98),
      (15,3,(49825307913301281598046531250000:ℚ)/v98),
      (16,2,(8461559673242818954914568359375:ℚ)/v98),
      (17,1,(897295777048347143779792968750:ℚ)/v98),
      (18,0,(44699409659918823064498046875:ℚ)/v98)
    ]
    let v95:ℚ[X]:= Math.B699.N21.d9 v99
    have v75:Math.B699.N21.d0 v95:= by
      apply u881
      norm_num [v99,v98]
    let v87:ℚ:= (4645474555000655291530615:ℚ) / 79228162514264337593543950336
    let v88:ℚ[X]:= u54
    let v85:ℚ:= (7:ℚ) / 16
    let v86:ℚ:= (15:ℚ) / 32
    let v91:ℚ[X]:= u23 v85 v86
    let v92:ℚ[X]:= v88.comp v91
    let v82:ℕ:= 11
    let v83:ℕ:= 7
    let v84:ℚ:= (1:ℚ) / 50
    have v96:Polynomial.C v87 - v92 = v95:= by
      apply Polynomial.funext
      intro x
      norm_num [v87,v92,v88,u54,u50,u51,u52,
        u32,u28,v82,v83,v84,v91,u23,v85,v86,v95,v99,v98,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v76:Math.B699.N21.d0 (Polynomial.C v87 - v92):= by
      rw [v96]
      exact v75
    have v77:Math.B699.N21.d0 v92:= by
      exact u26 (u36 v82 v83 v84 (by norm_num [v84]))
        v85 v86 (by norm_num [v85]) (by norm_num [v85,v86]) (by norm_num [v86])
    let v89:ℚ[X]:= u55
    let v93:ℚ[X]:= v89.comp v91
    have v78:Math.B699.N21.d0 v93:= by
      exact u26 (u20 v82 v83 0 v84 (by norm_num [v84]))
        v85 v86 (by norm_num [v85]) (by norm_num [v85,v86]) (by norm_num [v86])
    let v90:ℚ[X]:= u56
    let v94:ℚ[X]:= v90.comp v91
    have v79:Math.B699.N21.d0 v94:= by
      exact u26 (u20 v82 v83 1 v84 (by norm_num [v84]))
        v85 v86 (by norm_num [v85]) (by norm_num [v85,v86]) (by norm_num [v86])
    have v80:Math.B699.N20.d1 v87 v93 v92:= by
      exact Math.B699.N20.d1.leaf (lam:= v87) (w:= v93) (f:= v92)
        v78 v77 v76
    have v81:Math.B699.N20.d1 v87 v94 v92:= by
      exact Math.B699.N20.d1.leaf (lam:= v87) (w:= v94) (f:= v92)
        v79 v77 v76
    have v97:v91 = ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v91,u23,v85,v86,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v123:ℚ:= 2028240960365167042394725128601600000000
    let v124:List (ℕ × ℕ × ℚ):= [
      (0,18,(2929420511472439988354944000000000:ℚ)/v123),
      (1,17,(49691765787435640478207232000000000:ℚ)/v123),
      (2,16,(397321210191631711960415232000000000:ℚ)/v123),
      (3,15,(1989483879813190729796871168000000000:ℚ)/v123),
      (4,14,(6990084763050850677232194585600000000:ℚ)/v123),
      (5,13,(18298129335624495275604747844608000000:ℚ)/v123),
      (6,12,(36979415012924302808940470002329600000:ℚ)/v123),
      (7,11,(58983880870782263601912862567731200000:ℚ)/v123),
      (8,10,(75263159057763882079054937989415680000:ℚ)/v123),
      (9,9,(77386091286726629936910546506200832000:ℚ)/v123),
      (10,8,(64256522752861022153550451085017607680:ℚ)/v123),
      (11,7,(42975247686616849126972097863357638656:ℚ)/v123),
      (12,6,(22973347790872263388655309202639577344:ℚ)/v123),
      (13,5,(9680291816839256652277868215741419264:ℚ)/v123),
      (14,4,(3143570873027117308463968952466358080:ℚ)/v123),
      (15,3,(758886836811999911506752790077352320:ℚ)/v123),
      (16,2,(128202386540024679410945804143231332:ℚ)/v123),
      (17,1,(13519242227750087361004401444895908:ℚ)/v123),
      (18,0,(669453487303715563910791549283713:ℚ)/v123)
    ]
    let v120:ℚ[X]:= Math.B699.N21.d9 v124
    have v100:Math.B699.N21.d0 v120:= by
      apply u881
      norm_num [v124,v123]
    let v112:ℚ:= (4645474555000655291530615:ℚ) / 79228162514264337593543950336
    let v113:ℚ[X]:= u54
    let v110:ℚ:= (15:ℚ) / 32
    let v111:ℚ:= (31:ℚ) / 64
    let v116:ℚ[X]:= u23 v110 v111
    let v117:ℚ[X]:= v113.comp v116
    let v107:ℕ:= 11
    let v108:ℕ:= 7
    let v109:ℚ:= (1:ℚ) / 50
    have v121:Polynomial.C v112 - v117 = v120:= by
      apply Polynomial.funext
      intro x
      norm_num [v112,v117,v113,u54,u50,u51,u52,
        u32,u28,v107,v108,v109,v116,u23,v110,v111,v120,v124,v123,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v101:Math.B699.N21.d0 (Polynomial.C v112 - v117):= by
      rw [v121]
      exact v100
    have v102:Math.B699.N21.d0 v117:= by
      exact u26 (u36 v107 v108 v109 (by norm_num [v109]))
        v110 v111 (by norm_num [v110]) (by norm_num [v110,v111]) (by norm_num [v111])
    let v114:ℚ[X]:= u55
    let v118:ℚ[X]:= v114.comp v116
    have v103:Math.B699.N21.d0 v118:= by
      exact u26 (u20 v107 v108 0 v109 (by norm_num [v109]))
        v110 v111 (by norm_num [v110]) (by norm_num [v110,v111]) (by norm_num [v111])
    let v115:ℚ[X]:= u56
    let v119:ℚ[X]:= v115.comp v116
    have v104:Math.B699.N21.d0 v119:= by
      exact u26 (u20 v107 v108 1 v109 (by norm_num [v109]))
        v110 v111 (by norm_num [v110]) (by norm_num [v110,v111]) (by norm_num [v111])
    have v105:Math.B699.N20.d1 v112 v118 v117:= by
      exact Math.B699.N20.d1.leaf (lam:= v112) (w:= v118) (f:= v117)
        v103 v102 v101
    have v106:Math.B699.N20.d1 v112 v119 v117:= by
      exact Math.B699.N20.d1.leaf (lam:= v112) (w:= v119) (f:= v117)
        v104 v102 v101
    have v122:v116 = (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v116,u23,v110,v111,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v148:ℚ:= 531691198313966349161522824112137830400000000
    let v149:List (ℕ × ℕ × ℚ):= [
      (0,18,(175493214975745212785830539895429660672:ℚ)/v148),
      (1,17,(2966322687069461294635855670991204384768:ℚ)/v148),
      (2,16,(23629560869158030901567900471604859699200:ℚ)/v148),
      (3,15,(117855828791084288390981807441966695710720:ℚ)/v148),
      (4,14,(412380278641805078976422621197886677647360:ℚ)/v148),
      (5,13,(1074793835171857681647217490896859532558336:ℚ)/v148),
      (6,12,(2162064563697292894909035230105104256876544:ℚ)/v148),
      (7,11,(3431679121448404077401313868790986776412160:ℚ)/v148),
      (8,10,(4355929007242353682797498199424496972052480:ℚ)/v148),
      (9,9,(4453796932434413465155204255609466921277440:ℚ)/v148),
      (10,8,(3676034485984162510392772421626175542062592:ℚ)/v148),
      (11,7,(2442757231168443950821910695143751579609088:ℚ)/v148),
      (12,6,(1296780652171464243570164956889479655235840:ℚ)/v148),
      (13,5,(542331020930334802820545187559430350892800:ℚ)/v148),
      (14,4,(174684910532391961672054045949543130120000:ℚ)/v148),
      (15,3,(41797708946414261123822921194947279600000:ℚ)/v148),
      (16,2,(6992984046591550038182411443475964262500:ℚ)/v148),
      (17,1,(729648384465551810078466302000180062500:ℚ)/v148),
      (18,0,(35713562291841995226930962738032890625:ℚ)/v148)
    ]
    let v145:ℚ[X]:= Math.B699.N21.d9 v149
    have v125:Math.B699.N21.d0 v145:= by
      apply u881
      norm_num [v149,v148]
    let v137:ℚ:= (4645474555000655291530615:ℚ) / 79228162514264337593543950336
    let v138:ℚ[X]:= u54
    let v135:ℚ:= (31:ℚ) / 64
    let v136:ℚ:= (63:ℚ) / 128
    let v141:ℚ[X]:= u23 v135 v136
    let v142:ℚ[X]:= v138.comp v141
    let v132:ℕ:= 11
    let v133:ℕ:= 7
    let v134:ℚ:= (1:ℚ) / 50
    have v146:Polynomial.C v137 - v142 = v145:= by
      apply Polynomial.funext
      intro x
      norm_num [v137,v142,v138,u54,u50,u51,u52,
        u32,u28,v132,v133,v134,v141,u23,v135,v136,v145,v149,v148,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v126:Math.B699.N21.d0 (Polynomial.C v137 - v142):= by
      rw [v146]
      exact v125
    have v127:Math.B699.N21.d0 v142:= by
      exact u26 (u36 v132 v133 v134 (by norm_num [v134]))
        v135 v136 (by norm_num [v135]) (by norm_num [v135,v136]) (by norm_num [v136])
    let v139:ℚ[X]:= u55
    let v143:ℚ[X]:= v139.comp v141
    have v128:Math.B699.N21.d0 v143:= by
      exact u26 (u20 v132 v133 0 v134 (by norm_num [v134]))
        v135 v136 (by norm_num [v135]) (by norm_num [v135,v136]) (by norm_num [v136])
    let v140:ℚ[X]:= u56
    let v144:ℚ[X]:= v140.comp v141
    have v129:Math.B699.N21.d0 v144:= by
      exact u26 (u20 v132 v133 1 v134 (by norm_num [v134]))
        v135 v136 (by norm_num [v135]) (by norm_num [v135,v136]) (by norm_num [v136])
    have v130:Math.B699.N20.d1 v137 v143 v142:= by
      exact Math.B699.N20.d1.leaf (lam:= v137) (w:= v143) (f:= v142)
        v128 v127 v126
    have v131:Math.B699.N20.d1 v137 v144 v142:= by
      exact Math.B699.N20.d1.leaf (lam:= v137) (w:= v144) (f:= v142)
        v129 v127 v126
    have v147:v141 = ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v141,u23,v135,v136,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v173:ℚ:= 139379657490816394634598239204052259412377600000000
    let v174:List (ℕ × ℕ × ℚ):= [
      (0,18,(9362096073432627996768590295998894080000000:ℚ)/v173),
      (1,17,(157140120934012149062147202856202539008000000:ℚ)/v173),
      (2,16,(1242463713015551436499488979795186251571200000:ℚ)/v173),
      (3,15,(6147837366042871857565959634551414939648000000:ℚ)/v173),
      (4,14,(21329182541923122483093406853635821968302080000:ℚ)/v173),
      (5,13,(55086262774774560572539718062475347255477862400:ℚ)/v173),
      (6,12,(109732965450796945559352408060699959661605437440:ℚ)/v173),
      (7,11,(172346236802158434511773655300081200720989290496:ℚ)/v173),
      (8,10,(216292982533234710779622203067517460751911729152:ℚ)/v173),
      (9,9,(218452396393035450430262889617237159799289272320:ℚ)/v173),
      (10,8,(177918749393437174988565411787222659944364305920:ℚ)/v173),
      (11,7,(116529383600574100119669219834477411934761789440:ℚ)/v173),
      (12,6,(60893529790463341216574096815076900100022673664:ℚ)/v173),
      (13,5,(25031493287790063898724387273042242771172306688:ℚ)/v173),
      (14,4,(7912028469691031767841628421601775099063877440:ℚ)/v173),
      (15,3,(1854408189379526044249227789266835146456979840:ℚ)/v173),
      (16,2,(303291624425244284340912022619893969098821220:ℚ)/v173),
      (17,1,(30867293536838601215889367028729080575595044:ℚ)/v173),
      (18,0,(1470215165303041176769482550887547358971393:ℚ)/v173)
    ]
    let v170:ℚ[X]:= Math.B699.N21.d9 v174
    have v150:Math.B699.N21.d0 v170:= by
      apply u881
      norm_num [v174,v173]
    let v162:ℚ:= (4645474555000655291530615:ℚ) / 79228162514264337593543950336
    let v163:ℚ[X]:= u54
    let v160:ℚ:= (63:ℚ) / 128
    let v161:ℚ:= (127:ℚ) / 256
    let v166:ℚ[X]:= u23 v160 v161
    let v167:ℚ[X]:= v163.comp v166
    let v157:ℕ:= 11
    let v158:ℕ:= 7
    let v159:ℚ:= (1:ℚ) / 50
    have v171:Polynomial.C v162 - v167 = v170:= by
      apply Polynomial.funext
      intro x
      norm_num [v162,v167,v163,u54,u50,u51,u52,
        u32,u28,v157,v158,v159,v166,u23,v160,v161,v170,v174,v173,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v151:Math.B699.N21.d0 (Polynomial.C v162 - v167):= by
      rw [v171]
      exact v150
    have v152:Math.B699.N21.d0 v167:= by
      exact u26 (u36 v157 v158 v159 (by norm_num [v159]))
        v160 v161 (by norm_num [v160]) (by norm_num [v160,v161]) (by norm_num [v161])
    let v164:ℚ[X]:= u55
    let v168:ℚ[X]:= v164.comp v166
    have v153:Math.B699.N21.d0 v168:= by
      exact u26 (u20 v157 v158 0 v159 (by norm_num [v159]))
        v160 v161 (by norm_num [v160]) (by norm_num [v160,v161]) (by norm_num [v161])
    let v165:ℚ[X]:= u56
    let v169:ℚ[X]:= v165.comp v166
    have v154:Math.B699.N21.d0 v169:= by
      exact u26 (u20 v157 v158 1 v159 (by norm_num [v159]))
        v160 v161 (by norm_num [v160]) (by norm_num [v160,v161]) (by norm_num [v161])
    have v155:Math.B699.N20.d1 v162 v168 v167:= by
      exact Math.B699.N20.d1.leaf (lam:= v162) (w:= v168) (f:= v167)
        v153 v152 v151
    have v156:Math.B699.N20.d1 v162 v169 v167:= by
      exact Math.B699.N20.d1.leaf (lam:= v162) (w:= v169) (f:= v167)
        v154 v152 v151
    have v172:v166 = (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v166,u23,v160,v161,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v198:ℚ:= 139379657490816394634598239204052259412377600000000
    let v199:List (ℕ × ℕ × ℚ):= [
      (0,18,(1470215165303041176769482550887547358971393:ℚ)/v198),
      (1,17,(22060452414070881147812004803222624347375104:ℚ)/v198),
      (2,16,(153575325338193043183596864786284213219082240:ℚ)/v198),
      (3,15,(656680707286344795167323363135061190946848768:ℚ)/v198),
      (4,14,(1923420165257412324198274656313946236791029760:ℚ)/v198),
      (5,13,(4071517028564964244333949795002476428085166080:ℚ)/v198),
      (6,12,(6398121242345553873827958157531018910509301760:ℚ)/v198),
      (7,11,(7539890809206857218448213658906198886234193920:ℚ)/v198),
      (8,10,(6652043671542457938563747283891167892246364160:ℚ)/v198),
      (9,9,(4372655998202778478224199435590988161131479040:ℚ)/v198),
      (10,8,(2217404085413381477350256979281087564596903936:ℚ)/v198),
      (11,7,(1089519731531361551120100068620295255147675648:ℚ)/v198),
      (12,6,(754066637769142458142189893182178819770941440:ℚ)/v198),
      (13,5,(598269963475697902960528202290368270498267136:ℚ)/v198),
      (14,4,(372873373640335334717949245075355244848742400:ℚ)/v198),
      (15,3,(160509619229508499609845750437705196100386816:ℚ)/v198),
      (16,2,(45038904258278581017367639558297848001855488:ℚ)/v198),
      (17,1,(7467475995453249244918117828465569615052800:ℚ)/v198),
      (18,0,(558165176978748078780194444557304763252736:ℚ)/v198)
    ]
    let v195:ℚ[X]:= Math.B699.N21.d9 v199
    have v175:Math.B699.N21.d0 v195:= by
      apply u881
      norm_num [v199,v198]
    let v187:ℚ:= (4645474555000655291530615:ℚ) / 79228162514264337593543950336
    let v188:ℚ[X]:= u54
    let v185:ℚ:= (127:ℚ) / 256
    let v186:ℚ:= (1:ℚ) / 2
    let v191:ℚ[X]:= u23 v185 v186
    let v192:ℚ[X]:= v188.comp v191
    let v182:ℕ:= 11
    let v183:ℕ:= 7
    let v184:ℚ:= (1:ℚ) / 50
    have v196:Polynomial.C v187 - v192 = v195:= by
      apply Polynomial.funext
      intro x
      norm_num [v187,v192,v188,u54,u50,u51,u52,
        u32,u28,v182,v183,v184,v191,u23,v185,v186,v195,v199,v198,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v176:Math.B699.N21.d0 (Polynomial.C v187 - v192):= by
      rw [v196]
      exact v175
    have v177:Math.B699.N21.d0 v192:= by
      exact u26 (u36 v182 v183 v184 (by norm_num [v184]))
        v185 v186 (by norm_num [v185]) (by norm_num [v185,v186]) (by norm_num [v186])
    let v189:ℚ[X]:= u55
    let v193:ℚ[X]:= v189.comp v191
    have v178:Math.B699.N21.d0 v193:= by
      exact u26 (u20 v182 v183 0 v184 (by norm_num [v184]))
        v185 v186 (by norm_num [v185]) (by norm_num [v185,v186]) (by norm_num [v186])
    let v190:ℚ[X]:= u56
    let v194:ℚ[X]:= v190.comp v191
    have v179:Math.B699.N21.d0 v194:= by
      exact u26 (u20 v182 v183 1 v184 (by norm_num [v184]))
        v185 v186 (by norm_num [v185]) (by norm_num [v185,v186]) (by norm_num [v186])
    have v180:Math.B699.N20.d1 v187 v193 v192:= by
      exact Math.B699.N20.d1.leaf (lam:= v187) (w:= v193) (f:= v192)
        v178 v177 v176
    have v181:Math.B699.N20.d1 v187 v194 v192:= by
      exact Math.B699.N20.d1.leaf (lam:= v187) (w:= v194) (f:= v192)
        v179 v177 v176
    have v197:v191 = (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v191,u23,v185,v186,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v223:ℚ:= 30948500982134506872478105600000000
    let v224:List (ℕ × ℕ × ℚ):= [
      (0,18,(123937566205156297356503191:ℚ)/v223),
      (1,17,(75544595807083755451681299102:ℚ)/v223),
      (2,16,(13965786790523949118454820536895:ℚ)/v223),
      (3,15,(212766468115563974963314547319120:ℚ)/v223),
      (4,14,(1528496652975360963290781183519980:ℚ)/v223),
      (5,13,(6702119887010957710163816048524744:ℚ)/v223),
      (6,12,(19954028008744279310615641377498588:ℚ)/v223),
      (7,11,(42698532772668529236680164300673840:ℚ)/v223),
      (8,10,(67999132019260123517016219622933090:ℚ)/v223),
      (9,9,(82537290067384973929770999468779060:ℚ)/v223),
      (10,8,(77723236721344583139723260275032674:ℚ)/v223),
      (11,7,(57526040625089008608648746899198768:ℚ)/v223),
      (12,6,(33686949077746939387489975335937500:ℚ)/v223),
      (13,5,(15547822651267818178841527078125000:ℚ)/v223),
      (14,4,(5552793804024220778157688242187500:ℚ)/v223),
      (15,3,(1480745014406458874175383531250000:ℚ)/v223),
      (16,2,(277639690201211038907884412109375:ℚ)/v223),
      (17,1,(32663492964848357518574636718750:ℚ)/v223),
      (18,0,(1814638498047130973254146484375:ℚ)/v223)
    ]
    let v220:ℚ[X]:= Math.B699.N21.d9 v224
    have v200:Math.B699.N21.d0 v220:= by
      apply u881
      norm_num [v224,v223]
    let v212:ℚ:= (4645474555000655291530615:ℚ) / 79228162514264337593543950336
    let v213:ℚ[X]:= u54
    let v210:ℚ:= (1:ℚ) / 2
    let v211:ℚ:= (1:ℚ)
    let v216:ℚ[X]:= u23 v210 v211
    let v217:ℚ[X]:= v213.comp v216
    let v207:ℕ:= 11
    let v208:ℕ:= 7
    let v209:ℚ:= (1:ℚ) / 50
    have v221:Polynomial.C v212 - v217 = v220:= by
      apply Polynomial.funext
      intro x
      norm_num [v212,v217,v213,u54,u50,u51,u52,
        u32,u28,v207,v208,v209,v216,u23,v210,v211,v220,v224,v223,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v201:Math.B699.N21.d0 (Polynomial.C v212 - v217):= by
      rw [v221]
      exact v200
    have v202:Math.B699.N21.d0 v217:= by
      exact u26 (u36 v207 v208 v209 (by norm_num [v209]))
        v210 v211 (by norm_num [v210]) (by norm_num [v210,v211]) (by norm_num [v211])
    let v214:ℚ[X]:= u55
    let v218:ℚ[X]:= v214.comp v216
    have v203:Math.B699.N21.d0 v218:= by
      exact u26 (u20 v207 v208 0 v209 (by norm_num [v209]))
        v210 v211 (by norm_num [v210]) (by norm_num [v210,v211]) (by norm_num [v211])
    let v215:ℚ[X]:= u56
    let v219:ℚ[X]:= v215.comp v216
    have v204:Math.B699.N21.d0 v219:= by
      exact u26 (u20 v207 v208 1 v209 (by norm_num [v209]))
        v210 v211 (by norm_num [v210]) (by norm_num [v210,v211]) (by norm_num [v211])
    have v205:Math.B699.N20.d1 v212 v218 v217:= by
      exact Math.B699.N20.d1.leaf (lam:= v212) (w:= v218) (f:= v217)
        v203 v202 v201
    have v206:Math.B699.N20.d1 v212 v219 v217:= by
      exact Math.B699.N20.d1.leaf (lam:= v212) (w:= v219) (f:= v217)
        v204 v202 v201
    have v222:v216 = Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v216,u23,v210,v211,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v248:ℚ:= 483570327845851669882470400000000000000
    let v249:List (ℕ × ℕ × ℚ):= [
      (0,18,(36393620496902862659829058837890625:ℚ)/v248),
      (1,17,(655085168944251527876923059082031250:ℚ)/v248),
      (2,16,(5568223936026137986953846002197265625:ℚ)/v248),
      (3,15,(29697194325472735930420512011718750000:ℚ)/v248),
      (4,14,(111246419558451018608734520043945312500:ℚ)/v248),
      (5,13,(310372249646748642952939984123046875000:ℚ)/v248),
      (6,12,(667362251074822725466710106826601562500:ℚ)/v248),
      (7,11,(1129278123742218548844677268681031250000:ℚ)/v248),
      (8,10,(1522842097131282481195594029347777968750:ℚ)/v248),
      (9,9,(1647361320137845447941760345234777227500:ℚ)/v248),
      (10,8,(1432031573053729101292332517128233187950:ℚ)/v248),
      (11,7,(997480999169061997254243815738252816464:ℚ)/v248),
      (12,6,(552392257998121363094197742375365935492:ℚ)/v248),
      (13,5,(239840248936188638956692985624011427704:ℚ)/v248),
      (14,4,(79828157945150185130881948831088623860:ℚ)/v248),
      (15,3,(19648591481080796591968171909572456240:ℚ)/v248),
      (16,2,(3366955665844844236714854233743883481:ℚ)/v248),
      (17,1,(358337830719984506073296383469351058:ℚ)/v248),
      (18,0,(17820454356261328306570684526184001:ℚ)/v248)
    ]
    let v245:ℚ[X]:= Math.B699.N21.d9 v249
    have v225:Math.B699.N21.d0 v245:= by
      apply u881
      norm_num [v249,v248]
    let v237:ℚ:= (5962730782212565018186393:ℚ) / 79228162514264337593543950336
    let v238:ℚ[X]:= u47
    let v235:ℚ:= (0:ℚ)
    let v236:ℚ:= (1:ℚ) / 8
    let v241:ℚ[X]:= u23 v235 v236
    let v242:ℚ[X]:= v238.comp v241
    let v232:ℕ:= 11
    let v233:ℕ:= 7
    let v234:ℚ:= (1:ℚ) / 50
    have v246:Polynomial.C v237 - v242 = v245:= by
      apply Polynomial.funext
      intro x
      norm_num [v237,v242,v238,u47,u43,u44,u45,
        u31,u27,v232,v233,v234,v241,u23,v235,v236,v245,v249,v248,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v226:Math.B699.N21.d0 (Polynomial.C v237 - v242):= by
      rw [v246]
      exact v225
    have v227:Math.B699.N21.d0 v242:= by
      exact u26 (u35 v232 v233 v234 (by norm_num [v234]))
        v235 v236 (by norm_num [v235]) (by norm_num [v235,v236]) (by norm_num [v236])
    let v239:ℚ[X]:= u48
    let v243:ℚ[X]:= v239.comp v241
    have v228:Math.B699.N21.d0 v243:= by
      exact u26 (u37 v232 v233 0 v234 (by norm_num [v234]))
        v235 v236 (by norm_num [v235]) (by norm_num [v235,v236]) (by norm_num [v236])
    let v240:ℚ[X]:= u49
    let v244:ℚ[X]:= v240.comp v241
    have v229:Math.B699.N21.d0 v244:= by
      exact u26 (u37 v232 v233 1 v234 (by norm_num [v234]))
        v235 v236 (by norm_num [v235]) (by norm_num [v235,v236]) (by norm_num [v236])
    have v230:Math.B699.N20.d1 v237 v243 v242:= by
      exact Math.B699.N20.d1.leaf (lam:= v237) (w:= v243) (f:= v242)
        v228 v227 v226
    have v231:Math.B699.N20.d1 v237 v244 v242:= by
      exact Math.B699.N20.d1.leaf (lam:= v237) (w:= v244) (f:= v242)
        v229 v227 v226
    have v247:v241 = ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v241,u23,v235,v236,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v273:ℚ:= 483570327845851669882470400000000000000
    let v274:List (ℕ × ℕ × ℚ):= [
      (0,18,(17820454356261328306570684526184001:ℚ)/v273),
      (1,17,(301983352259063611240760290472292498:ℚ)/v273),
      (2,16,(2407622986924370876281142817340587225:ℚ)/v273),
      (3,15,(11997503256920034573374422428066770736:ℚ)/v273),
      (4,14,(41865556570810213544077815719150207220:ℚ)/v273),
      (5,13,(108613742411088560675264640614546231160:ℚ)/v273),
      (6,12,(217057311971079187810446972875510546820:ℚ)/v273),
      (7,11,(341555862732929871380509071897652981840:ℚ)/v273),
      (8,10,(428882290874538080881719352652208437870:ℚ)/v273),
      (9,9,(432795891211500642278285098027288019180:ℚ)/v273),
      (10,8,(351681425785073274268361429526079765102:ℚ)/v273),
      (11,7,(229458197285403501107467248956664016976:ℚ)/v273),
      (12,6,(119255128231680508104219805689280889220:ℚ)/v273),
      (13,5,(48671343767638961765312376693117636472:ℚ)/v273),
      (14,4,(15244974662922228255089016100404576500:ℚ)/v273),
      (15,3,(3533254667565977037479613917079531312:ℚ)/v273),
      (16,2,(570055775076505817942274747513765081:ℚ)/v273),
      (17,1,(57074240580355383442981602414751890:ℚ)/v273),
      (18,0,(2665613426336925842937560682808897:ℚ)/v273)
    ]
    let v270:ℚ[X]:= Math.B699.N21.d9 v274
    have v250:Math.B699.N21.d0 v270:= by
      apply u881
      norm_num [v274,v273]
    let v262:ℚ:= (5962730782212565018186393:ℚ) / 79228162514264337593543950336
    let v263:ℚ[X]:= u47
    let v260:ℚ:= (1:ℚ) / 8
    let v261:ℚ:= (3:ℚ) / 16
    let v266:ℚ[X]:= u23 v260 v261
    let v267:ℚ[X]:= v263.comp v266
    let v257:ℕ:= 11
    let v258:ℕ:= 7
    let v259:ℚ:= (1:ℚ) / 50
    have v271:Polynomial.C v262 - v267 = v270:= by
      apply Polynomial.funext
      intro x
      norm_num [v262,v267,v263,u47,u43,u44,u45,
        u31,u27,v257,v258,v259,v266,u23,v260,v261,v270,v274,v273,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v251:Math.B699.N21.d0 (Polynomial.C v262 - v267):= by
      rw [v271]
      exact v250
    have v252:Math.B699.N21.d0 v267:= by
      exact u26 (u35 v257 v258 v259 (by norm_num [v259]))
        v260 v261 (by norm_num [v260]) (by norm_num [v260,v261]) (by norm_num [v261])
    let v264:ℚ[X]:= u48
    let v268:ℚ[X]:= v264.comp v266
    have v253:Math.B699.N21.d0 v268:= by
      exact u26 (u37 v257 v258 0 v259 (by norm_num [v259]))
        v260 v261 (by norm_num [v260]) (by norm_num [v260,v261]) (by norm_num [v261])
    let v265:ℚ[X]:= u49
    let v269:ℚ[X]:= v265.comp v266
    have v254:Math.B699.N21.d0 v269:= by
      exact u26 (u37 v257 v258 1 v259 (by norm_num [v259]))
        v260 v261 (by norm_num [v260]) (by norm_num [v260,v261]) (by norm_num [v261])
    have v255:Math.B699.N20.d1 v262 v268 v267:= by
      exact Math.B699.N20.d1.leaf (lam:= v262) (w:= v268) (f:= v267)
        v253 v252 v251
    have v256:Math.B699.N20.d1 v262 v269 v267:= by
      exact Math.B699.N20.d1.leaf (lam:= v262) (w:= v269) (f:= v267)
        v254 v252 v251
    have v272:v266 = (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v266,u23,v260,v261,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v298:ℚ:= 967140655691703339764940800000000000000
    let v299:List (ℕ × ℕ × ℚ):= [
      (0,18,(5331226852673851685875121365617794:ℚ)/v298),
      (1,17,(86868884441838612075646674456928548:ℚ)/v298),
      (2,16,(664909596772164074037617042294634930:ℚ)/v298),
      (3,15,(3174836768701615765285107392892624480:ℚ)/v298),
      (4,14,(10590579812703143045440585956607558120:ℚ)/v298),
      (5,13,(26189642478550947680976491240030445296:ℚ)/v298),
      (6,12,(49713615701204603488037085704430863112:ℚ)/v298),
      (7,11,(73986905677557126354139122044235571360:ℚ)/v298),
      (8,10,(87405687993010673088207901880713968860:ℚ)/v298),
      (9,9,(82448363315930039034398098104945543640:ℚ)/v298),
      (10,8,(62124519504896035339927599784242218716:ℚ)/v298),
      (11,7,(37211900804205069259286263890082896032:ℚ)/v298),
      (12,6,(17532025221708781626279580705038510600:ℚ)/v298),
      (13,5,(6382647644377984956120980724467670000:ℚ)/v298),
      (14,4,(1746517076071909396668884976845625000:ℚ)/v298),
      (15,3,(344105595809732947899454546687500000:ℚ)/v298),
      (16,2,(45528922131388479727258549042968750:ℚ)/v298),
      (17,1,(3567149628954531191118316406250000:ℚ)/v298),
      (18,0,(123263851936751359892535400390625:ℚ)/v298)
    ]
    let v295:ℚ[X]:= Math.B699.N21.d9 v299
    have v275:Math.B699.N21.d0 v295:= by
      apply u881
      norm_num [v299,v298]
    let v287:ℚ:= (5962730782212565018186393:ℚ) / 79228162514264337593543950336
    let v288:ℚ[X]:= u47
    let v285:ℚ:= (3:ℚ) / 16
    let v286:ℚ:= (7:ℚ) / 32
    let v291:ℚ[X]:= u23 v285 v286
    let v292:ℚ[X]:= v288.comp v291
    let v282:ℕ:= 11
    let v283:ℕ:= 7
    let v284:ℚ:= (1:ℚ) / 50
    have v296:Polynomial.C v287 - v292 = v295:= by
      apply Polynomial.funext
      intro x
      norm_num [v287,v292,v288,u47,u43,u44,u45,
        u31,u27,v282,v283,v284,v291,u23,v285,v286,v295,v299,v298,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v276:Math.B699.N21.d0 (Polynomial.C v287 - v292):= by
      rw [v296]
      exact v275
    have v277:Math.B699.N21.d0 v292:= by
      exact u26 (u35 v282 v283 v284 (by norm_num [v284]))
        v285 v286 (by norm_num [v285]) (by norm_num [v285,v286]) (by norm_num [v286])
    let v289:ℚ[X]:= u48
    let v293:ℚ[X]:= v289.comp v291
    have v278:Math.B699.N21.d0 v293:= by
      exact u26 (u37 v282 v283 0 v284 (by norm_num [v284]))
        v285 v286 (by norm_num [v285]) (by norm_num [v285,v286]) (by norm_num [v286])
    let v290:ℚ[X]:= u49
    let v294:ℚ[X]:= v290.comp v291
    have v279:Math.B699.N21.d0 v294:= by
      exact u26 (u37 v282 v283 1 v284 (by norm_num [v284]))
        v285 v286 (by norm_num [v285]) (by norm_num [v285,v286]) (by norm_num [v286])
    have v280:Math.B699.N20.d1 v287 v293 v292:= by
      exact Math.B699.N20.d1.leaf (lam:= v287) (w:= v293) (f:= v292)
        v278 v277 v276
    have v281:Math.B699.N20.d1 v287 v294 v292:= by
      exact Math.B699.N20.d1.leaf (lam:= v287) (w:= v294) (f:= v292)
        v279 v277 v276
    have v297:v291 = ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v291,u23,v285,v286,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v323:ℚ:= 17422457186352049329324779900506532426547200000000000000
    let v324:List (ℕ × ℕ × ℚ):= [
      (0,18,(2220524150602421664363695284473036800000000000000:ℚ)/v323),
      (1,17,(36933107179831823832760102776458969088000000000000:ℚ)/v323),
      (2,16,(289177242760630416064721381491585245511680000000000:ℚ)/v323),
      (3,15,(1415874263143458284010188045024455500496896000000000:ℚ)/v323),
      (4,14,(4856553486965595887129767525605156566933176320000000:ℚ)/v323),
      (5,13,(12388862972619276459421171251119238396794414039040000:ℚ)/v323),
      (6,12,(24349316133136998243490956374997362003085509630361600:ℚ)/v323),
      (7,11,(37685604287602294161572900026433670299947250437062656:ℚ)/v323),
      (8,10,(46539976937120342387719965119097046346655258432765952:ℚ)/v323),
      (9,9,(46179157134738508367821771181024060210621100819742720:ℚ)/v323),
      (10,8,(36881106755611401255813456914662579455086902661611520:ℚ)/v323),
      (11,7,(23635764424598270441785723844319762291740038691553280:ℚ)/v323),
      (12,6,(12054868980194575984327164654932530413489908433813504:ℚ)/v323),
      (13,5,(4822328024663996702066159087644854687043989150629888:ℚ)/v323),
      (14,4,(1478222100116533350735828637061079293576655523594240:ℚ)/v323),
      (15,3,(334646309833436633959922777322407134343310293360640:ℚ)/v323),
      (16,2,(52616773858835304187457848632164470048669742477760:ℚ)/v323),
      (17,1,(5120164949538599497394873267862053323955902429584:ℚ)/v323),
      (18,0,(231755413096222834309037168792712210516366121343:ℚ)/v323)
    ]
    let v320:ℚ[X]:= Math.B699.N21.d9 v324
    have v300:Math.B699.N21.d0 v320:= by
      apply u881
      norm_num [v324,v323]
    let v312:ℚ:= (5962730782212565018186393:ℚ) / 79228162514264337593543950336
    let v313:ℚ[X]:= u47
    let v310:ℚ:= (7:ℚ) / 32
    let v311:ℚ:= (57:ℚ) / 256
    let v316:ℚ[X]:= u23 v310 v311
    let v317:ℚ[X]:= v313.comp v316
    let v307:ℕ:= 11
    let v308:ℕ:= 7
    let v309:ℚ:= (1:ℚ) / 50
    have v321:Polynomial.C v312 - v317 = v320:= by
      apply Polynomial.funext
      intro x
      norm_num [v312,v317,v313,u47,u43,u44,u45,
        u31,u27,v307,v308,v309,v316,u23,v310,v311,v320,v324,v323,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v301:Math.B699.N21.d0 (Polynomial.C v312 - v317):= by
      rw [v321]
      exact v300
    have v302:Math.B699.N21.d0 v317:= by
      exact u26 (u35 v307 v308 v309 (by norm_num [v309]))
        v310 v311 (by norm_num [v310]) (by norm_num [v310,v311]) (by norm_num [v311])
    let v314:ℚ[X]:= u48
    let v318:ℚ[X]:= v314.comp v316
    have v303:Math.B699.N21.d0 v318:= by
      exact u26 (u37 v307 v308 0 v309 (by norm_num [v309]))
        v310 v311 (by norm_num [v310]) (by norm_num [v310,v311]) (by norm_num [v311])
    let v315:ℚ[X]:= u49
    let v319:ℚ[X]:= v315.comp v316
    have v304:Math.B699.N21.d0 v319:= by
      exact u26 (u37 v307 v308 1 v309 (by norm_num [v309]))
        v310 v311 (by norm_num [v310]) (by norm_num [v310,v311]) (by norm_num [v311])
    have v305:Math.B699.N20.d1 v312 v318 v317:= by
      exact Math.B699.N20.d1.leaf (lam:= v312) (w:= v318) (f:= v317)
        v303 v302 v301
    have v306:Math.B699.N20.d1 v312 v319 v317:= by
      exact Math.B699.N20.d1.leaf (lam:= v312) (w:= v319) (f:= v317)
        v304 v302 v301
    have v322:v316 = (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v316,u23,v310,v311,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v348:ℚ:= 4567192616659071619386515102238384436424789196800000000000000
    let v349:List (ℕ × ℕ × ℚ):= [
      (0,18,(60753291010696238677108239575996749713602280513339392:ℚ)/v348),
      (1,17,(969228597022875130959381639586697188989713530609729536:ℚ)/v348),
      (2,16,(7249301685263766170098957903381427939439730206853496832:ℚ)/v348),
      (3,15,(33748162920165987703961550192619342448800273438801920000:ℚ)/v348),
      (4,14,(109476612368877457975899908330368784325790145368227512320:ℚ)/v348),
      (5,13,(262494546799997939898199442699089743221076860322523578368:ℚ)/v348),
      (6,12,(481504908382610205898403594632986156519005273464865931264:ℚ)/v348),
      (7,11,(689918144037727973589998464493515661227550530300152414208:ℚ)/v348),
      (8,10,(781567635236860625686705108310975593034767851971650734080:ℚ)/v348),
      (9,9,(704168954262630066066585079731823895909679507331834624000:ℚ)/v348),
      (10,8,(505176294899857196101230269138918609407631904143129920000:ℚ)/v348),
      (11,7,(287873348308348631333530146259221451739545284402771200000:ℚ)/v348),
      (12,6,(129685046509651810149099183117772956973348505361909600000:ℚ)/v348),
      (13,5,(45963597040127043549137128655416409962722350005836000000:ℚ)/v348),
      (14,4,(12795845787315431263578425330887739036082925366275000000:ℚ)/v348),
      (15,3,(2804386885649149654354424643700587719986563630750000000:ℚ)/v348),
      (16,2,(478817475828990506404131618671617508486950521210937500:ℚ)/v348),
      (17,1,(58673537760764504789162587852423265751501205195312500:ℚ)/v348),
      (18,0,(3826752154251441418094279287331189835694805615234375:ℚ)/v348)
    ]
    let v345:ℚ[X]:= Math.B699.N21.d9 v349
    have v325:Math.B699.N21.d0 v345:= by
      apply u881
      norm_num [v349,v348]
    let v337:ℚ:= (5962730782212565018186393:ℚ) / 79228162514264337593543950336
    let v338:ℚ[X]:= u47
    let v335:ℚ:= (57:ℚ) / 256
    let v336:ℚ:= (115:ℚ) / 512
    let v341:ℚ[X]:= u23 v335 v336
    let v342:ℚ[X]:= v338.comp v341
    let v332:ℕ:= 11
    let v333:ℕ:= 7
    let v334:ℚ:= (1:ℚ) / 50
    have v346:Polynomial.C v337 - v342 = v345:= by
      apply Polynomial.funext
      intro x
      norm_num [v337,v342,v338,u47,u43,u44,u45,
        u31,u27,v332,v333,v334,v341,u23,v335,v336,v345,v349,v348,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v326:Math.B699.N21.d0 (Polynomial.C v337 - v342):= by
      rw [v346]
      exact v325
    have v327:Math.B699.N21.d0 v342:= by
      exact u26 (u35 v332 v333 v334 (by norm_num [v334]))
        v335 v336 (by norm_num [v335]) (by norm_num [v335,v336]) (by norm_num [v336])
    let v339:ℚ[X]:= u48
    let v343:ℚ[X]:= v339.comp v341
    have v328:Math.B699.N21.d0 v343:= by
      exact u26 (u37 v332 v333 0 v334 (by norm_num [v334]))
        v335 v336 (by norm_num [v335]) (by norm_num [v335,v336]) (by norm_num [v336])
    let v340:ℚ[X]:= u49
    let v344:ℚ[X]:= v340.comp v341
    have v329:Math.B699.N21.d0 v344:= by
      exact u26 (u37 v332 v333 1 v334 (by norm_num [v334]))
        v335 v336 (by norm_num [v335]) (by norm_num [v335,v336]) (by norm_num [v336])
    have v330:Math.B699.N20.d1 v337 v343 v342:= by
      exact Math.B699.N20.d1.leaf (lam:= v337) (w:= v343) (f:= v342)
        v328 v327 v326
    have v331:Math.B699.N20.d1 v337 v344 v342:= by
      exact Math.B699.N20.d1.leaf (lam:= v337) (w:= v344) (f:= v342)
        v329 v327 v326
    have v347:v341 = ((((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v341,u23,v335,v336,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v373:ℚ:= 4567192616659071619386515102238384436424789196800000000000000
    let v374:List (ℕ × ℕ × ℚ):= [
      (0,18,(3826752154251441418094279287331189835694805615234375:ℚ)/v373),
      (1,17,(79089539792287386262231466491499568333511796953125000:ℚ)/v373),
      (2,16,(825889510364879491446302555535914652381130581093750000:ℚ)/v373),
      (3,15,(5580405861976065522592794549770923230194888478000000000:ℚ)/v373),
      (4,14,(26670367669348050483780298972799000177673393284400000000:ℚ)/v373),
      (5,13,(94495165460070505568815854367078223249074300884864000000:ℚ)/v373),
      (6,12,(255765696648440825193609539143037781446052924549273600000:ℚ)/v373),
      (7,11,(539781081302492491421771637027453700280711293535027200000:ℚ)/v373),
      (8,10,(900553153719929321330606725196783066792513488846929920000:ℚ)/v373),
      (9,9,(1197692735076785477806122021542187534440498590119755776000:ℚ)/v373),
      (10,8,(1274294523290601887839585078336866826176108424643037102080:ℚ)/v373),
      (11,7,(1083382464850922077691813754864855644810563396601299075072:ℚ)/v373),
      (12,6,(731384201771502758851022308067122524872849933961435021312:ℚ)/v373),
      (13,5,(387155299500857188449573086005831996601469193055442567168:ℚ)/v373),
      (14,4,(157306040485907832327830417640396806787586702861758627840:ℚ)/v373),
      (15,3,(47377495910668742983405577202027857240968599914372136960:ℚ)/v373),
      (16,2,(9967367763229610532649328158767253589052976949694038016:ℚ)/v373),
      (17,1,(1307942181732764675086640376160311785695337874525782016:ℚ)/v373),
      (18,0,(80612073818184013495505051261185523454441098779295744:ℚ)/v373)
    ]
    let v370:ℚ[X]:= Math.B699.N21.d9 v374
    have v350:Math.B699.N21.d0 v370:= by
      apply u881
      norm_num [v374,v373]
    let v362:ℚ:= (5962730782212565018186393:ℚ) / 79228162514264337593543950336
    let v363:ℚ[X]:= u47
    let v360:ℚ:= (115:ℚ) / 512
    let v361:ℚ:= (29:ℚ) / 128
    let v366:ℚ[X]:= u23 v360 v361
    let v367:ℚ[X]:= v363.comp v366
    let v357:ℕ:= 11
    let v358:ℕ:= 7
    let v359:ℚ:= (1:ℚ) / 50
    have v371:Polynomial.C v362 - v367 = v370:= by
      apply Polynomial.funext
      intro x
      norm_num [v362,v367,v363,u47,u43,u44,u45,
        u31,u27,v357,v358,v359,v366,u23,v360,v361,v370,v374,v373,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v351:Math.B699.N21.d0 (Polynomial.C v362 - v367):= by
      rw [v371]
      exact v350
    have v352:Math.B699.N21.d0 v367:= by
      exact u26 (u35 v357 v358 v359 (by norm_num [v359]))
        v360 v361 (by norm_num [v360]) (by norm_num [v360,v361]) (by norm_num [v361])
    let v364:ℚ[X]:= u48
    let v368:ℚ[X]:= v364.comp v366
    have v353:Math.B699.N21.d0 v368:= by
      exact u26 (u37 v357 v358 0 v359 (by norm_num [v359]))
        v360 v361 (by norm_num [v360]) (by norm_num [v360,v361]) (by norm_num [v361])
    let v365:ℚ[X]:= u49
    let v369:ℚ[X]:= v365.comp v366
    have v354:Math.B699.N21.d0 v369:= by
      exact u26 (u37 v357 v358 1 v359 (by norm_num [v359]))
        v360 v361 (by norm_num [v360]) (by norm_num [v360,v361]) (by norm_num [v361])
    have v355:Math.B699.N20.d1 v362 v368 v367:= by
      exact Math.B699.N20.d1.leaf (lam:= v362) (w:= v368) (f:= v367)
        v353 v352 v351
    have v356:Math.B699.N20.d1 v362 v369 v367:= by
      exact Math.B699.N20.d1.leaf (lam:= v362) (w:= v369) (f:= v367)
        v354 v352 v351
    have v372:v366 = ((((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v366,u23,v360,v361,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v398:ℚ:= 66461399789245793645190353014017228800000000000000
    let v399:List (ℕ × ℕ × ℚ):= [
      (0,18,(1173060064585064734208645695779494758672679:ℚ)/v398),
      (1,17,(29443150803934295461642513820922612912812436:ℚ)/v398),
      (2,16,(336421723144123543362924010140772988985844956:ℚ)/v398),
      (3,15,(2335420235471563154953607811374019910904711040:ℚ)/v398),
      (4,14,(11092459555084942308039908087046155207201576640:ℚ)/v398),
      (5,13,(38447554329944458355113184210059727420720825088:ℚ)/v398),
      (6,12,(101150587929913541133432775560950951822640529152:ℚ)/v398),
      (7,11,(207137589894534367159791755481731113344804964352:ℚ)/v398),
      (8,10,(335504651901444211539454551091918788882625200640:ℚ)/v398),
      (9,9,(433868521295880599857204809084430422087572224000:ℚ)/v398),
      (10,8,(449728914239508108365823279196556211190058240000:ℚ)/v398),
      (11,7,(373258077769388891536979888391626512705638400000:ℚ)/v398),
      (12,6,(246471172437121532296994452556350778313676800000:ℚ)/v398),
      (13,5,(127845591650232710856059378883654862908416000000:ℚ)/v398),
      (14,4,(50985072406566304677614640989535268940800000000:ℚ)/v398),
      (15,3,(15094320626333036753173601193249819648000000000:ℚ)/v398),
      (16,2,(3125690237464505911161619758521020800000000000:ℚ)/v398),
      (17,1,(404200832343968673801879605092385280000000000:ℚ)/v398),
      (18,0,(24576294621675801921387278324057600000000000:ℚ)/v398)
    ]
    let v395:ℚ[X]:= Math.B699.N21.d9 v399
    have v375:Math.B699.N21.d0 v395:= by
      apply u881
      norm_num [v399,v398]
    let v387:ℚ:= (5962730782212565018186393:ℚ) / 79228162514264337593543950336
    let v388:ℚ[X]:= u47
    let v385:ℚ:= (29:ℚ) / 128
    let v386:ℚ:= (15:ℚ) / 64
    let v391:ℚ[X]:= u23 v385 v386
    let v392:ℚ[X]:= v388.comp v391
    let v382:ℕ:= 11
    let v383:ℕ:= 7
    let v384:ℚ:= (1:ℚ) / 50
    have v396:Polynomial.C v387 - v392 = v395:= by
      apply Polynomial.funext
      intro x
      norm_num [v387,v392,v388,u47,u43,u44,u45,
        u31,u27,v382,v383,v384,v391,u23,v385,v386,v395,v399,v398,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v376:Math.B699.N21.d0 (Polynomial.C v387 - v392):= by
      rw [v396]
      exact v375
    have v377:Math.B699.N21.d0 v392:= by
      exact u26 (u35 v382 v383 v384 (by norm_num [v384]))
        v385 v386 (by norm_num [v385]) (by norm_num [v385,v386]) (by norm_num [v386])
    let v389:ℚ[X]:= u48
    let v393:ℚ[X]:= v389.comp v391
    have v378:Math.B699.N21.d0 v393:= by
      exact u26 (u37 v382 v383 0 v384 (by norm_num [v384]))
        v385 v386 (by norm_num [v385]) (by norm_num [v385,v386]) (by norm_num [v386])
    let v390:ℚ[X]:= u49
    let v394:ℚ[X]:= v390.comp v391
    have v379:Math.B699.N21.d0 v394:= by
      exact u26 (u37 v382 v383 1 v384 (by norm_num [v384]))
        v385 v386 (by norm_num [v385]) (by norm_num [v385,v386]) (by norm_num [v386])
    have v380:Math.B699.N20.d1 v387 v393 v392:= by
      exact Math.B699.N20.d1.leaf (lam:= v387) (w:= v393) (f:= v392)
        v378 v377 v376
    have v381:Math.B699.N20.d1 v387 v394 v392:= by
      exact Math.B699.N20.d1.leaf (lam:= v387) (w:= v394) (f:= v392)
        v379 v377 v376
    have v397:v391 = ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v391,u23,v385,v386,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v423:ℚ:= 253530120045645880299340641075200000000000000
    let v424:List (ℕ × ℕ × ℚ):= [
      (0,18,(93751123892501075444745171829443359375:ℚ)/v423),
      (1,17,(1978753070383285355190863873727187500000:ℚ)/v423),
      (2,16,(19515356997760002756519476192047500000000:ℚ)/v423),
      (3,15,(119626030385005170374471385419904000000000:ℚ)/v423),
      (4,14,(511220474738570183363215978553651200000000:ℚ)/v423),
      (5,13,(1618780769500913992108165058216394752000000:ℚ)/v423),
      (6,12,(3939109026612973171283414242447412428800000:ℚ)/v423),
      (7,11,(7536696761339811251211119795893829632000000:ℚ)/v423),
      (8,10,(11500491923876699777911572521597580738560000:ℚ)/v423),
      (9,9,(14107817933454691262395159220922028392448000:ℚ)/v423),
      (10,8,(13951973410104548828620613774763418782269440:ℚ)/v423),
      (11,7,(11101583797019957345480623533361905350475776:ℚ)/v423),
      (12,6,(7057066838559109738492743408149757306077184:ℚ)/v423),
      (13,5,(3536388628875031240050589278655988203782144:ℚ)/v423),
      (14,4,(1366644012123507235517609814637077992570880:ℚ)/v423),
      (15,3,(393106940259328023638639593224689827184640:ℚ)/v423),
      (16,2,(79273526215450387436417486612661256323072:ℚ)/v423),
      (17,1,(10003268166400123455239862889077028159488:ℚ)/v423),
      (18,0,(594561719009867611647144331429502517248:ℚ)/v423)
    ]
    let v420:ℚ[X]:= Math.B699.N21.d9 v424
    have v400:Math.B699.N21.d0 v420:= by
      apply u881
      norm_num [v424,v423]
    let v412:ℚ:= (5962730782212565018186393:ℚ) / 79228162514264337593543950336
    let v413:ℚ[X]:= u47
    let v410:ℚ:= (15:ℚ) / 64
    let v411:ℚ:= (1:ℚ) / 4
    let v416:ℚ[X]:= u23 v410 v411
    let v417:ℚ[X]:= v413.comp v416
    let v407:ℕ:= 11
    let v408:ℕ:= 7
    let v409:ℚ:= (1:ℚ) / 50
    have v421:Polynomial.C v412 - v417 = v420:= by
      apply Polynomial.funext
      intro x
      norm_num [v412,v417,v413,u47,u43,u44,u45,
        u31,u27,v407,v408,v409,v416,u23,v410,v411,v420,v424,v423,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v401:Math.B699.N21.d0 (Polynomial.C v412 - v417):= by
      rw [v421]
      exact v400
    have v402:Math.B699.N21.d0 v417:= by
      exact u26 (u35 v407 v408 v409 (by norm_num [v409]))
        v410 v411 (by norm_num [v410]) (by norm_num [v410,v411]) (by norm_num [v411])
    let v414:ℚ[X]:= u48
    let v418:ℚ[X]:= v414.comp v416
    have v403:Math.B699.N21.d0 v418:= by
      exact u26 (u37 v407 v408 0 v409 (by norm_num [v409]))
        v410 v411 (by norm_num [v410]) (by norm_num [v410,v411]) (by norm_num [v411])
    let v415:ℚ[X]:= u49
    let v419:ℚ[X]:= v415.comp v416
    have v404:Math.B699.N21.d0 v419:= by
      exact u26 (u37 v407 v408 1 v409 (by norm_num [v409]))
        v410 v411 (by norm_num [v410]) (by norm_num [v410,v411]) (by norm_num [v411])
    have v405:Math.B699.N20.d1 v412 v418 v417:= by
      exact Math.B699.N20.d1.leaf (lam:= v412) (w:= v418) (f:= v417)
        v403 v402 v401
    have v406:Math.B699.N20.d1 v412 v419 v417:= by
      exact Math.B699.N20.d1.leaf (lam:= v412) (w:= v419) (f:= v417)
        v404 v402 v401
    have v422:v416 = (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v416,u23,v410,v411,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v448:ℚ:= 483570327845851669882470400000000000000
    let v449:List (ℕ × ℕ × ℚ):= [
      (0,18,(1134036481876120780271805441721921:ℚ)/v448),
      (1,17,(41739645680651691208245008835211410:ℚ)/v448),
      (2,16,(626842954979790708342612221846420697:ℚ)/v448),
      (3,15,(5179607279392033819367065321902960432:ℚ)/v448),
      (4,14,(27330900239647265882017318060735840500:ℚ)/v448),
      (5,13,(100315403857169854640902037533210660728:ℚ)/v448),
      (6,12,(270042169732354923206551876805472715140:ℚ)/v448),
      (7,11,(551706936328221916226277461458835828816:ℚ)/v448),
      (8,10,(874755742887039393523846399407771777646:ℚ)/v448),
      (9,9,(1091479846223969674289265666563202269420:ℚ)/v448),
      (10,8,(1079676326551758221504928701969047124590:ℚ)/v448),
      (11,7,(848008280986923198458932900075060162640:ℚ)/v448),
      (12,6,(526590226758974349901520175325414326660:ℚ)/v448),
      (13,5,(255681997347608969940200992112345829240:ℚ)/v448),
      (14,4,(95135428882965496900335791524844650740:ℚ)/v448),
      (15,3,(26221025131696504938825037276790124336:ℚ)/v448),
      (16,2,(5048430212048033060007265397180792025:ℚ)/v448),
      (17,1,(606640131139113576779047149698216082:ℚ)/v448),
      (18,0,(34274669443676417114381656283366977:ℚ)/v448)
    ]
    let v445:ℚ[X]:= Math.B699.N21.d9 v449
    have v425:Math.B699.N21.d0 v445:= by
      apply u881
      norm_num [v449,v448]
    let v437:ℚ:= (5962730782212565018186393:ℚ) / 79228162514264337593543950336
    let v438:ℚ[X]:= u47
    let v435:ℚ:= (1:ℚ) / 4
    let v436:ℚ:= (1:ℚ) / 2
    let v441:ℚ[X]:= u23 v435 v436
    let v442:ℚ[X]:= v438.comp v441
    let v432:ℕ:= 11
    let v433:ℕ:= 7
    let v434:ℚ:= (1:ℚ) / 50
    have v446:Polynomial.C v437 - v442 = v445:= by
      apply Polynomial.funext
      intro x
      norm_num [v437,v442,v438,u47,u43,u44,u45,
        u31,u27,v432,v433,v434,v441,u23,v435,v436,v445,v449,v448,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v426:Math.B699.N21.d0 (Polynomial.C v437 - v442):= by
      rw [v446]
      exact v425
    have v427:Math.B699.N21.d0 v442:= by
      exact u26 (u35 v432 v433 v434 (by norm_num [v434]))
        v435 v436 (by norm_num [v435]) (by norm_num [v435,v436]) (by norm_num [v436])
    let v439:ℚ[X]:= u48
    let v443:ℚ[X]:= v439.comp v441
    have v428:Math.B699.N21.d0 v443:= by
      exact u26 (u37 v432 v433 0 v434 (by norm_num [v434]))
        v435 v436 (by norm_num [v435]) (by norm_num [v435,v436]) (by norm_num [v436])
    let v440:ℚ[X]:= u49
    let v444:ℚ[X]:= v440.comp v441
    have v429:Math.B699.N21.d0 v444:= by
      exact u26 (u37 v432 v433 1 v434 (by norm_num [v434]))
        v435 v436 (by norm_num [v435]) (by norm_num [v435,v436]) (by norm_num [v436])
    have v430:Math.B699.N20.d1 v437 v443 v442:= by
      exact Math.B699.N20.d1.leaf (lam:= v437) (w:= v443) (f:= v442)
        v428 v427 v426
    have v431:Math.B699.N20.d1 v437 v444 v442:= by
      exact Math.B699.N20.d1.leaf (lam:= v437) (w:= v444) (f:= v442)
        v429 v427 v426
    have v447:v441 = (Math.B699.N20.halfLeft).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v441,u23,v435,v436,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v473:ℚ:= 483570327845851669882470400000000000000
    let v474:List (ℕ × ℕ × ℚ):= [
      (0,18,(34274669443676417114381656283366977:ℚ)/v473),
      (1,17,(637551887680299370618515139905384594:ℚ)/v473),
      (2,16,(5512647295944973775069793021701455065:ℚ)/v473),
      (3,15,(29614875814179093919743886818299342640:ℚ)/v473),
      (4,14,(111310283645595198303771750050935587060:ℚ)/v473),
      (5,13,(311808935073107013885284070138154798968:ℚ)/v473),
      (6,12,(675609928622311886833590580380049768836:ℚ)/v473),
      (7,11,(1158190501418194112229377599743994982480:ℚ)/v473),
      (8,10,(1592512042763721481768259082776599493230:ℚ)/v473),
      (9,9,(1769457828491650845702390802310087491820:ℚ)/v473),
      (10,8,(1592512045702602619827038194364280109678:ℚ)/v473),
      (11,7,(1158190578693431865583121509940332425296:ℚ)/v473),
      (12,6,(675611170904504742417066648266601562500:ℚ)/v473),
      (13,5,(311820540417463727269415376123046875000:ℚ)/v473),
      (14,4,(111364478720522759739076920043945312500:ℚ)/v473),
      (15,3,(29697194325472735930420512011718750000:ℚ)/v473),
      (16,2,(5568223936026137986953846002197265625:ℚ)/v473),
      (17,1,(655085168944251527876923059082031250:ℚ)/v473),
      (18,0,(36393620496902862659829058837890625:ℚ)/v473)
    ]
    let v470:ℚ[X]:= Math.B699.N21.d9 v474
    have v450:Math.B699.N21.d0 v470:= by
      apply u881
      norm_num [v474,v473]
    let v462:ℚ:= (5962730782212565018186393:ℚ) / 79228162514264337593543950336
    let v463:ℚ[X]:= u47
    let v460:ℚ:= (1:ℚ) / 2
    let v461:ℚ:= (1:ℚ)
    let v466:ℚ[X]:= u23 v460 v461
    let v467:ℚ[X]:= v463.comp v466
    let v457:ℕ:= 11
    let v458:ℕ:= 7
    let v459:ℚ:= (1:ℚ) / 50
    have v471:Polynomial.C v462 - v467 = v470:= by
      apply Polynomial.funext
      intro x
      norm_num [v462,v467,v463,u47,u43,u44,u45,
        u31,u27,v457,v458,v459,v466,u23,v460,v461,v470,v474,v473,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v451:Math.B699.N21.d0 (Polynomial.C v462 - v467):= by
      rw [v471]
      exact v450
    have v452:Math.B699.N21.d0 v467:= by
      exact u26 (u35 v457 v458 v459 (by norm_num [v459]))
        v460 v461 (by norm_num [v460]) (by norm_num [v460,v461]) (by norm_num [v461])
    let v464:ℚ[X]:= u48
    let v468:ℚ[X]:= v464.comp v466
    have v453:Math.B699.N21.d0 v468:= by
      exact u26 (u37 v457 v458 0 v459 (by norm_num [v459]))
        v460 v461 (by norm_num [v460]) (by norm_num [v460,v461]) (by norm_num [v461])
    let v465:ℚ[X]:= u49
    let v469:ℚ[X]:= v465.comp v466
    have v454:Math.B699.N21.d0 v469:= by
      exact u26 (u37 v457 v458 1 v459 (by norm_num [v459]))
        v460 v461 (by norm_num [v460]) (by norm_num [v460,v461]) (by norm_num [v461])
    have v455:Math.B699.N20.d1 v462 v468 v467:= by
      exact Math.B699.N20.d1.leaf (lam:= v462) (w:= v468) (f:= v467)
        v453 v452 v451
    have v456:Math.B699.N20.d1 v462 v469 v467:= by
      exact Math.B699.N20.d1.leaf (lam:= v462) (w:= v469) (f:= v467)
        v454 v452 v451
    have v472:v466 = Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v466,u23,v460,v461,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v505:Math.B699.N20.d1 u46 ((u49).comp ((((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u47).comp ((((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u46) (w:= ((u49).comp ((((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u47).comp ((((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [v337,u46,v344,v340,v342,v338,v347,Polynomial.comp_assoc] using v331)
        (by simpa only [v362,u46,v369,v365,v367,v363,v372,Polynomial.comp_assoc] using v356)
    have v506:Math.B699.N20.d1 u46 ((u49).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)) ((u47).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u46) (w:= ((u49).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft))) (f:= ((u47).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)))
        (by simpa only [v312,u46,v319,v315,v317,v313,v322,Polynomial.comp_assoc] using v306)
        (by simpa only [Polynomial.comp_assoc] using v505)
    have v507:Math.B699.N20.d1 u46 ((u49).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)) ((u47).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u46) (w:= ((u49).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft))) (f:= ((u47).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)))
        (by simpa only [Polynomial.comp_assoc] using v506)
        (by simpa only [v387,u46,v394,v390,v392,v388,v397,Polynomial.comp_assoc] using v381)
    have v508:Math.B699.N20.d1 u46 ((u49).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u47).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u46) (w:= ((u49).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u47).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [Polynomial.comp_assoc] using v507)
        (by simpa only [v412,u46,v419,v415,v417,v413,v422,Polynomial.comp_assoc] using v406)
    have v509:Math.B699.N20.d1 u46 ((u49).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u47).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u46) (w:= ((u49).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u47).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v287,u46,v294,v290,v292,v288,v297,Polynomial.comp_assoc] using v281)
        (by simpa only [Polynomial.comp_assoc] using v508)
    have v510:Math.B699.N20.d1 u46 ((u49).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u47).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u46) (w:= ((u49).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u47).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [v262,u46,v269,v265,v267,v263,v272,Polynomial.comp_assoc] using v256)
        (by simpa only [Polynomial.comp_assoc] using v509)
    have v511:Math.B699.N20.d1 u46 ((u49).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)) ((u47).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u46) (w:= ((u49).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft))) (f:= ((u47).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)))
        (by simpa only [v237,u46,v244,v240,v242,v238,v247,Polynomial.comp_assoc] using v231)
        (by simpa only [Polynomial.comp_assoc] using v510)
    have v512:Math.B699.N20.d1 u46 ((u49).comp (Math.B699.N20.halfLeft)) ((u47).comp (Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u46) (w:= ((u49).comp (Math.B699.N20.halfLeft))) (f:= ((u47).comp (Math.B699.N20.halfLeft)))
        (by simpa only [Polynomial.comp_assoc] using v511)
        (by simpa only [v437,u46,v444,v440,v442,v438,v447,Polynomial.comp_assoc] using v431)
    have v475:Math.B699.N20.d1 u46 (u49) (u47):= by
      exact Math.B699.N20.d1.split (lam:= u46) (w:= (u49)) (f:= (u47))
        (by simpa only [Polynomial.comp_assoc] using v512)
        (by simpa only [v462,u46,v469,v465,v467,v463,v472,Polynomial.comp_assoc] using v456)
    have v476:Math.B699.N20.d1 u46 (u49) (u47):= by
      exact v475
    have v477:Math.B699.N20.d1 u53 ((u55).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u54).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u53) (w:= ((u55).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u54).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v162,u53,v168,v164,v167,v163,v172,Polynomial.comp_assoc] using v155)
        (by simpa only [v187,u53,v193,v189,v192,v188,v197,Polynomial.comp_assoc] using v180)
    have v478:Math.B699.N20.d1 u53 ((u55).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u54).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u53) (w:= ((u55).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u54).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v137,u53,v143,v139,v142,v138,v147,Polynomial.comp_assoc] using v130)
        (by simpa only [Polynomial.comp_assoc] using v477)
    have v479:Math.B699.N20.d1 u53 ((u55).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u54).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u53) (w:= ((u55).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u54).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v112,u53,v118,v114,v117,v113,v122,Polynomial.comp_assoc] using v105)
        (by simpa only [Polynomial.comp_assoc] using v478)
    have v480:Math.B699.N20.d1 u53 ((u55).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u54).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u53) (w:= ((u55).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u54).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v87,u53,v93,v89,v92,v88,v97,Polynomial.comp_assoc] using v80)
        (by simpa only [Polynomial.comp_assoc] using v479)
    have v481:Math.B699.N20.d1 u53 ((u55).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u54).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u53) (w:= ((u55).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u54).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v62,u53,v68,v64,v67,v63,v72,Polynomial.comp_assoc] using v55)
        (by simpa only [Polynomial.comp_assoc] using v480)
    have v482:Math.B699.N20.d1 u53 ((u55).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u54).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u53) (w:= ((u55).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u54).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [v37,u53,v43,v39,v42,v38,v47,Polynomial.comp_assoc] using v30)
        (by simpa only [Polynomial.comp_assoc] using v481)
    have v483:Math.B699.N20.d1 u53 ((u55).comp (Math.B699.N20.halfLeft)) ((u54).comp (Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u53) (w:= ((u55).comp (Math.B699.N20.halfLeft))) (f:= ((u54).comp (Math.B699.N20.halfLeft)))
        (by simpa only [v12,u53,v18,v14,v17,v13,v22,Polynomial.comp_assoc] using v5)
        (by simpa only [Polynomial.comp_assoc] using v482)
    have v484:Math.B699.N20.d1 u46 ((u48).comp ((((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u47).comp ((((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u46) (w:= ((u48).comp ((((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u47).comp ((((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [v337,u46,v343,v339,v342,v338,v347,Polynomial.comp_assoc] using v330)
        (by simpa only [v362,u46,v368,v364,v367,v363,v372,Polynomial.comp_assoc] using v355)
    have v485:Math.B699.N20.d1 u53 (u55) (u54):= by
      exact Math.B699.N20.d1.split (lam:= u53) (w:= (u55)) (f:= (u54))
        (by simpa only [Polynomial.comp_assoc] using v483)
        (by simpa only [v212,u53,v218,v214,v217,v213,v222,Polynomial.comp_assoc] using v205)
    have v486:Math.B699.N20.d1 u53 (u55) (u54):= by
      exact v485
    have v487:Math.B699.N20.d1 u53 ((u56).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u54).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u53) (w:= ((u56).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u54).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v162,u53,v169,v165,v167,v163,v172,Polynomial.comp_assoc] using v156)
        (by simpa only [v187,u53,v194,v190,v192,v188,v197,Polynomial.comp_assoc] using v181)
    have v488:Math.B699.N20.d1 u53 ((u56).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u54).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u53) (w:= ((u56).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u54).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v137,u53,v144,v140,v142,v138,v147,Polynomial.comp_assoc] using v131)
        (by simpa only [Polynomial.comp_assoc] using v487)
    have v489:Math.B699.N20.d1 u53 ((u56).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u54).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u53) (w:= ((u56).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u54).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v112,u53,v119,v115,v117,v113,v122,Polynomial.comp_assoc] using v106)
        (by simpa only [Polynomial.comp_assoc] using v488)
    have v490:Math.B699.N20.d1 u53 ((u56).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u54).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u53) (w:= ((u56).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u54).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v87,u53,v94,v90,v92,v88,v97,Polynomial.comp_assoc] using v81)
        (by simpa only [Polynomial.comp_assoc] using v489)
    have v491:Math.B699.N20.d1 u53 ((u56).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u54).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u53) (w:= ((u56).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u54).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v62,u53,v69,v65,v67,v63,v72,Polynomial.comp_assoc] using v56)
        (by simpa only [Polynomial.comp_assoc] using v490)
    have v492:Math.B699.N20.d1 u53 ((u56).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u54).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u53) (w:= ((u56).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u54).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [v37,u53,v44,v40,v42,v38,v47,Polynomial.comp_assoc] using v31)
        (by simpa only [Polynomial.comp_assoc] using v491)
    have v493:Math.B699.N20.d1 u53 ((u56).comp (Math.B699.N20.halfLeft)) ((u54).comp (Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u53) (w:= ((u56).comp (Math.B699.N20.halfLeft))) (f:= ((u54).comp (Math.B699.N20.halfLeft)))
        (by simpa only [v12,u53,v19,v15,v17,v13,v22,Polynomial.comp_assoc] using v6)
        (by simpa only [Polynomial.comp_assoc] using v492)
    have v494:Math.B699.N20.d1 u53 (u56) (u54):= by
      exact Math.B699.N20.d1.split (lam:= u53) (w:= (u56)) (f:= (u54))
        (by simpa only [Polynomial.comp_assoc] using v493)
        (by simpa only [v212,u53,v219,v215,v217,v213,v222,Polynomial.comp_assoc] using v206)
    have v495:Math.B699.N20.d1 u46 ((u48).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)) ((u47).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u46) (w:= ((u48).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft))) (f:= ((u47).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)))
        (by simpa only [v312,u46,v318,v314,v317,v313,v322,Polynomial.comp_assoc] using v305)
        (by simpa only [Polynomial.comp_assoc] using v484)
    have v496:Math.B699.N20.d1 u53 (u56) (u54):= by
      exact v494
    have v497:Math.B699.N20.d1 u46 ((u48).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)) ((u47).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u46) (w:= ((u48).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft))) (f:= ((u47).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)))
        (by simpa only [Polynomial.comp_assoc] using v495)
        (by simpa only [v387,u46,v393,v389,v392,v388,v397,Polynomial.comp_assoc] using v380)
    have v498:Math.B699.N20.d1 u46 ((u48).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u47).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u46) (w:= ((u48).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u47).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [Polynomial.comp_assoc] using v497)
        (by simpa only [v412,u46,v418,v414,v417,v413,v422,Polynomial.comp_assoc] using v405)
    have v499:Math.B699.N20.d1 u46 ((u48).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u47).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u46) (w:= ((u48).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u47).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v287,u46,v293,v289,v292,v288,v297,Polynomial.comp_assoc] using v280)
        (by simpa only [Polynomial.comp_assoc] using v498)
    have v500:Math.B699.N20.d1 u46 ((u48).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u47).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u46) (w:= ((u48).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u47).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [v262,u46,v268,v264,v267,v263,v272,Polynomial.comp_assoc] using v255)
        (by simpa only [Polynomial.comp_assoc] using v499)
    have v501:Math.B699.N20.d1 u46 ((u48).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)) ((u47).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u46) (w:= ((u48).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft))) (f:= ((u47).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)))
        (by simpa only [v237,u46,v243,v239,v242,v238,v247,Polynomial.comp_assoc] using v230)
        (by simpa only [Polynomial.comp_assoc] using v500)
    have v502:Math.B699.N20.d1 u46 ((u48).comp (Math.B699.N20.halfLeft)) ((u47).comp (Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u46) (w:= ((u48).comp (Math.B699.N20.halfLeft))) (f:= ((u47).comp (Math.B699.N20.halfLeft)))
        (by simpa only [Polynomial.comp_assoc] using v501)
        (by simpa only [v437,u46,v443,v439,v442,v438,v447,Polynomial.comp_assoc] using v430)
    have v503:Math.B699.N20.d1 u46 (u48) (u47):= by
      exact Math.B699.N20.d1.split (lam:= u46) (w:= (u48)) (f:= (u47))
        (by simpa only [Polynomial.comp_assoc] using v502)
        (by simpa only [v462,u46,v468,v464,v467,v463,v472,Polynomial.comp_assoc] using v455)
    have v504:Math.B699.N20.d1 u46 (u48) (u47):= by
      exact v503
    exact ⟨v504,v476,v486,v496⟩
  have u57:Math.B699.N20.d1 u46 (u49) (u47):= u61.2.1
  have u58:Math.B699.N20.d1 u53 (u55) (u54):= u61.2.2.1
  have u59:Math.B699.N20.d1 u53 (u56) (u54):= u61.2.2.2
  have u60:Math.B699.N20.d1 u46 (u48) (u47):= u61.1
  let u62:ℕ:= 5
  let u63:ℕ:= 3
  let u64:ℚ:= (1:ℚ) / 4375
  let u65:ℚ:= (440758604932333255282947863:ℚ) / 39614081257132168796771975168
  let u66:ℚ[X]:= u31 u62 u63 u64
  let u67:ℚ[X]:= u33 u62 u63 0 u64
  let u68:ℚ[X]:= u33 u62 u63 1 u64
  let u69:ℕ:= 5
  let u70:ℕ:= 3
  let u71:ℚ:= (1:ℚ) / 4375
  let u72:ℚ:= (618834739845914957406423393:ℚ) / 39614081257132168796771975168
  let u73:ℚ[X]:= u32 u69 u70 u71
  let u74:ℚ[X]:= u34 u69 u70 0 u71
  let u75:ℚ[X]:= u34 u69 u70 1 u71
  have u80:
      (Math.B699.N20.d1 u65 (u67) (u66)) ∧
      (Math.B699.N20.d1 u65 (u68) (u66)) ∧
      (Math.B699.N20.d1 u72 (u74) (u73)) ∧
      (Math.B699.N20.d1 u72 (u75) (u73)):= by
    classical
    letI:Infinite ℚ:= Infinite.of_injective (fun n:ℕ => (n:ℚ)) Nat.cast_injective
    let v188:ℕ:= 5
    let v189:ℕ:= 3
    let v190:ℚ:= (1:ℚ) / 4375
    let v191:ℚ:= (3:ℚ) / 8
    let v192:ℚ:= (1:ℚ) / 2
    let v195:ℚ[X]:= u74
    let v197:ℚ[X]:= u23 v191 v192
    let v199:ℚ[X]:= v195.comp v197
    have v0:Math.B699.N21.d0 v199:= by
      exact u26 (u20 v188 v189 0 v190 (by norm_num [v190]))
        v191 v192 (by norm_num [v191]) (by norm_num [v191,v192]) (by norm_num [v192])
    let v196:ℚ[X]:= u75
    let v200:ℚ[X]:= v196.comp v197
    have v1:Math.B699.N21.d0 v200:= by
      exact u26 (u20 v188 v189 1 v190 (by norm_num [v190]))
        v191 v192 (by norm_num [v191]) (by norm_num [v191,v192]) (by norm_num [v192])
    let v193:ℚ:= (618834739845914957406423393:ℚ) / 39614081257132168796771975168
    let v194:ℚ[X]:= u73
    let v198:ℚ[X]:= v194.comp v197
    let v211:ℚ:= 758238274062295418375713587200000000
    let v212:List (ℕ × ℕ × ℚ):= [
      (0,8,(2084540145457547238359989593632625:ℚ)/v211),
      (1,7,(12772741526624938747366693535185800:ℚ)/v211),
      (2,6,(32473806771831151201768512710914140:ℚ)/v211),
      (3,5,(43846850932998388153802434255544504:ℚ)/v211),
      (4,4,(33159833442092111166258963204372710:ℚ)/v211),
      (5,3,(13317908321168107669548495831064760:ℚ)/v211),
      (6,2,(2219472994958227907729262657548380:ℚ)/v211),
      (7,1,(271072778523688323275150556040:ℚ)/v211),
      (8,0,(118499233281928165605428490097:ℚ)/v211)
    ]
    let v201:ℚ[X]:= Math.B699.N21.d9 v212
    have v202:Polynomial.C v193 - v198 = v201:= by
      apply Polynomial.funext
      intro x
      norm_num [v193,v198,v194,u73,u69,u70,u71,
        u32,u28,v188,v189,v190,v197,u23,v191,v192,v201,v212,v211,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v204:Math.B699.N21.d0 v201:= by
      apply u881
      norm_num [v212,v211]
    have v205:Math.B699.N21.d0 (Polynomial.C v193 - v198):= by
      rw [v202]
      exact v204
    have v206:Math.B699.N21.d0 v198:= by
      exact u36 v188 v189 v190 (by norm_num [v190])
        |> fun h => u26 h v191 v192 (by norm_num [v191]) (by norm_num [v191,v192]) (by norm_num [v192])
    have v2:Math.B699.N20.d1 v193 v199 v198:= by
      exact Math.B699.N20.d1.leaf (lam:= v193) (w:= v199) (f:= v198)
        v0 v206 v205
    have v3:Math.B699.N20.d1 v193 v200 v198:= by
      exact Math.B699.N20.d1.leaf (lam:= v193) (w:= v200) (f:= v198)
        v1 v206 v205
    let v4:ℕ:= 5
    let v5:ℕ:= 3
    let v6:ℚ:= (1:ℚ) / 4375
    let v7:ℚ:= (1:ℚ) / 2
    let v61:ℚ:= (440758604932333255282947863:ℚ) / 39614081257132168796771975168
    let v68:ℚ[X]:= u66
    let v56:ℚ:= (0:ℚ)
    let v59:ℚ:= (1:ℚ) / 4
    let v79:ℚ[X]:= u23 v56 v59
    let v80:ℚ[X]:= v68.comp v79
    let v50:ℕ:= 5
    let v51:ℕ:= 3
    let v52:ℚ:= (1:ℚ) / 4375
    let v215:ℚ:= 3317292449022542455393746944000000000000
    let v216:List (ℕ × ℕ × ℚ):= [
      (0,8,(36909228879831617813000760988525390625:ℚ)/v215),
      (1,7,(295273831038652942504006087908203125000:ℚ)/v215),
      (2,6,(826127630571376395301912123678710937500:ℚ)/v215),
      (3,5,(1133892773563883861850814925783021875000:ℚ)/v215),
      (4,4,(834159295571373984129418659786401663750:ℚ)/v215),
      (5,3,(317363445155895638782770632848704237368:ℚ)/v215),
      (6,2,(49297147248269634624366598402114172828:ℚ)/v215),
      (7,1,(14205408044888849452781368760031496:ℚ)/v215),
      (8,0,(369731348118972293105074115177249:ℚ)/v215)
    ]
    let v108:ℚ[X]:= Math.B699.N21.d9 v216
    have v152:Polynomial.C v61 - v80 = v108:= by
      apply Polynomial.funext
      intro x
      norm_num [v61,v80,v68,u66,u62,u63,u64,
        u31,u27,v50,v51,v52,v79,u23,v56,v59,v108,v216,v215,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v179:Math.B699.N21.d0 v108:= by
      apply u881
      norm_num [v216,v215]
    have v8:Math.B699.N21.d0 (Polynomial.C v61 - v80):= by
      rw [v152]
      exact v179
    let v9:ℚ:= (1:ℚ)
    let v10:ℚ:= (618834739845914957406423393:ℚ) / 39614081257132168796771975168
    let v11:ℚ[X]:= u73
    let v12:ℚ[X]:= u74
    let v13:ℚ[X]:= u75
    let v14:ℚ[X]:= u23 v7 v9
    let v15:ℚ[X]:= v11.comp v14
    let v16:ℚ[X]:= v12.comp v14
    let v17:ℚ[X]:= v13.comp v14
    let v213:ℚ:= 758238274062295418375713587200000000
    let v214:List (ℕ × ℕ × ℚ):= [
      (0,8,(118499233281928165605428490097:ℚ)/v213),
      (1,7,(3655678217182373331116537379720:ℚ)/v213),
      (2,6,(35556567193635679874333481385996380:ℚ)/v213),
      (3,5,(213261146823264256539302525698072760:ℚ)/v213),
      (4,4,(497542584887895445248199557617121510:ℚ)/v213),
      (5,3,(568577025464167998841146245723218104:ℚ)/v213),
      (6,2,(331656743386170047485005037185937500:ℚ)/v213),
      (7,1,(94759069538905727852858582053125000:ℚ)/v213),
      (8,0,(11844883692363215981607322756640625:ℚ)/v213)
    ]
    let v18:ℚ[X]:= Math.B699.N21.d9 v214
    have v19:Math.B699.N21.d0 v80:= by
      exact u35 v50 v51 v52 (by norm_num [v52])
        |> fun h => u26 h v56 v59 (by norm_num [v56]) (by norm_num [v56,v59]) (by norm_num [v59])
    have v20:Polynomial.C v10 - v15 = v18:= by
      apply Polynomial.funext
      intro x
      norm_num [v10,v15,v11,u73,u69,u70,u71,
        u32,u28,v4,v5,v6,v14,u23,v7,v9,v18,v214,v213,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v21:v14 = Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v14,u23,v7,v9,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v22:Math.B699.N21.d0 v18:= by
      apply u881
      norm_num [v214,v213]
    have v23:Math.B699.N21.d0 (Polynomial.C v10 - v15):= by
      rw [v20]
      exact v22
    let v76:ℚ[X]:= u67
    let v83:ℚ[X]:= v76.comp v79
    have v24:Math.B699.N21.d0 v83:= by
      exact u26 (u37 v50 v51 0 v52 (by norm_num [v52]))
        v56 v59 (by norm_num [v56]) (by norm_num [v56,v59]) (by norm_num [v59])
    have v25:Math.B699.N21.d0 v15:= by
      exact u36 v4 v5 v6 (by norm_num [v6])
        |> fun h => u26 h v7 v9 (by norm_num [v7]) (by norm_num [v7,v9]) (by norm_num [v9])
    have v26:Math.B699.N21.d0 v16:= by
      exact u26 (u20 v4 v5 0 v6 (by norm_num [v6]))
        v7 v9 (by norm_num [v7]) (by norm_num [v7,v9]) (by norm_num [v9])
    have v27:Math.B699.N21.d0 v17:= by
      exact u26 (u20 v4 v5 1 v6 (by norm_num [v6]))
        v7 v9 (by norm_num [v7]) (by norm_num [v7,v9]) (by norm_num [v9])
    have v28:Math.B699.N20.d1 v10 v16 v15:= by
      exact Math.B699.N20.d1.leaf (lam:= v10) (w:= v16) (f:= v15)
        v26 v25 v23
    have v29:Math.B699.N20.d1 v10 v17 v15:= by
      exact Math.B699.N20.d1.leaf (lam:= v10) (w:= v17) (f:= v15)
        v27 v25 v23
    let v78:ℚ[X]:= u68
    let v85:ℚ[X]:= v78.comp v79
    have v30:Math.B699.N21.d0 v85:= by
      exact u26 (u37 v50 v51 1 v52 (by norm_num [v52]))
        v56 v59 (by norm_num [v56]) (by norm_num [v56,v59]) (by norm_num [v59])
    have v31:Math.B699.N20.d1 v61 v83 v80:= by
      exact Math.B699.N20.d1.leaf (lam:= v61) (w:= v83) (f:= v80)
        v24 v19 v8
    have v32:Math.B699.N20.d1 v61 v85 v80:= by
      exact Math.B699.N20.d1.leaf (lam:= v61) (w:= v85) (f:= v80)
        v30 v19 v8
    let v33:ℕ:= 5
    let v34:ℕ:= 3
    let v35:ℚ:= (1:ℚ) / 4375
    let v36:ℚ:= (1:ℚ) / 4
    let v37:ℚ:= (5:ℚ) / 16
    let v38:ℚ:= (440758604932333255282947863:ℚ) / 39614081257132168796771975168
    let v39:ℚ[X]:= u66
    let v40:ℚ[X]:= u67
    let v41:ℚ[X]:= u68
    let v42:ℚ[X]:= u23 v36 v37
    let v43:ℚ[X]:= v39.comp v42
    let v44:ℚ[X]:= v40.comp v42
    let v45:ℚ[X]:= v41.comp v42
    let v217:ℚ:= 3317292449022542455393746944000000000000
    let v218:List (ℕ × ℕ × ℚ):= [
      (0,8,(369731348118972293105074115177249:ℚ)/v217),
      (1,7,(145961469967510567855398961764616:ℚ)/v217),
      (2,6,(3066173119398862843668300148508571548:ℚ)/v217),
      (3,5,(18073144570397805625582072178467893048:ℚ)/v217),
      (4,4,(44298947152573876250644748998341708550:ℚ)/v217),
      (5,3,(57817636381350243413549991788656947000:ℚ)/v217),
      (6,2,(42389552473714285118364440616295577500:ℚ)/v217),
      (7,1,(16555285804664137647791841254251125000:ℚ)/v217),
      (8,0,(2691169469009177187125260430598990625:ℚ)/v217)
    ]
    let v46:ℚ[X]:= Math.B699.N21.d9 v218
    have v47:Polynomial.C v38 - v43 = v46:= by
      apply Polynomial.funext
      intro x
      norm_num [v38,v43,v39,u66,u62,u63,u64,
        u31,u27,v33,v34,v35,v42,u23,v36,v37,v46,v218,v217,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v48:v42 = (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v42,u23,v36,v37,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v49:Math.B699.N21.d0 v46:= by
      apply u881
      norm_num [v218,v217]
    have v53:Math.B699.N21.d0 (Polynomial.C v38 - v43):= by
      rw [v47]
      exact v49
    have v54:Math.B699.N21.d0 v43:= by
      exact u35 v33 v34 v35 (by norm_num [v35])
        |> fun h => u26 h v36 v37 (by norm_num [v36]) (by norm_num [v36,v37]) (by norm_num [v37])
    have v55:Math.B699.N21.d0 v44:= by
      exact u26 (u37 v33 v34 0 v35 (by norm_num [v35]))
        v36 v37 (by norm_num [v36]) (by norm_num [v36,v37]) (by norm_num [v37])
    have v57:Math.B699.N21.d0 v45:= by
      exact u26 (u37 v33 v34 1 v35 (by norm_num [v35]))
        v36 v37 (by norm_num [v36]) (by norm_num [v36,v37]) (by norm_num [v37])
    have v58:Math.B699.N20.d1 v38 v44 v43:= by
      exact Math.B699.N20.d1.leaf (lam:= v38) (w:= v44) (f:= v43)
        v55 v54 v53
    have v60:Math.B699.N20.d1 v38 v45 v43:= by
      exact Math.B699.N20.d1.leaf (lam:= v38) (w:= v45) (f:= v43)
        v57 v54 v53
    let v62:ℕ:= 5
    let v63:ℕ:= 3
    let v64:ℚ:= (1:ℚ) / 4375
    let v65:ℚ:= (5:ℚ) / 16
    let v66:ℚ:= (3:ℚ) / 8
    let v67:ℚ:= (440758604932333255282947863:ℚ) / 39614081257132168796771975168
    let v69:ℚ[X]:= u66
    let v70:ℚ[X]:= u67
    let v71:ℚ[X]:= u68
    let v72:ℚ[X]:= u23 v65 v66
    let v73:ℚ[X]:= v69.comp v72
    let v74:ℚ[X]:= v70.comp v72
    let v75:ℚ[X]:= v71.comp v72
    let v219:ℚ:= 3317292449022542455393746944000000000000
    let v220:List (ℕ × ℕ × ℚ):= [
      (0,8,(2691169469009177187125260430598990625:ℚ)/v219),
      (1,7,(26503425699482697346212325635332725000:ℚ)/v219),
      (2,6,(112026531737444203007307831283866777500:ℚ)/v219),
      (3,5,(265856907827544995424425303158143283000:ℚ)/v219),
      (4,4,(388125511746248457415587399170061388550:ℚ)/v219),
      (5,3,(357557011042997523340922336122041495352:ℚ)/v219),
      (6,2,(203307348272339034441465616632920258460:ℚ)/v219),
      (7,1,(65325780774702899425247501265449998600:ℚ)/v219),
      (8,0,(9092563347849409659925453311042382625:ℚ)/v219)
    ]
    let v77:ℚ[X]:= Math.B699.N21.d9 v220
    have v81:Polynomial.C v67 - v73 = v77:= by
      apply Polynomial.funext
      intro x
      norm_num [v67,v73,v69,u66,u62,u63,u64,
        u31,u27,v62,v63,v64,v72,u23,v65,v66,v77,v220,v219,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v82:v72 = (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v72,u23,v65,v66,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v84:Math.B699.N21.d0 v77:= by
      apply u881
      norm_num [v220,v219]
    have v86:Math.B699.N21.d0 (Polynomial.C v67 - v73):= by
      rw [v81]
      exact v84
    have v87:Math.B699.N21.d0 v73:= by
      exact u35 v62 v63 v64 (by norm_num [v64])
        |> fun h => u26 h v65 v66 (by norm_num [v65]) (by norm_num [v65,v66]) (by norm_num [v66])
    have v88:Math.B699.N21.d0 v74:= by
      exact u26 (u37 v62 v63 0 v64 (by norm_num [v64]))
        v65 v66 (by norm_num [v65]) (by norm_num [v65,v66]) (by norm_num [v66])
    have v89:Math.B699.N21.d0 v75:= by
      exact u26 (u37 v62 v63 1 v64 (by norm_num [v64]))
        v65 v66 (by norm_num [v65]) (by norm_num [v65,v66]) (by norm_num [v66])
    have v90:Math.B699.N20.d1 v67 v74 v73:= by
      exact Math.B699.N20.d1.leaf (lam:= v67) (w:= v74) (f:= v73)
        v88 v87 v86
    have v91:Math.B699.N20.d1 v67 v75 v73:= by
      exact Math.B699.N20.d1.leaf (lam:= v67) (w:= v75) (f:= v73)
        v89 v87 v86
    let v92:ℕ:= 5
    let v93:ℕ:= 3
    let v94:ℚ:= (1:ℚ) / 4375
    let v95:ℚ:= (3:ℚ) / 8
    let v96:ℚ:= (1:ℚ) / 2
    let v97:ℚ:= (440758604932333255282947863:ℚ) / 39614081257132168796771975168
    let v98:ℚ[X]:= u66
    let v99:ℚ[X]:= u67
    let v100:ℚ[X]:= u68
    let v101:ℚ[X]:= u23 v95 v96
    let v102:ℚ[X]:= v98.comp v101
    let v103:ℚ[X]:= v99.comp v101
    let v104:ℚ[X]:= v100.comp v101
    let v221:ℚ:= 3317292449022542455393746944000000000000
    let v222:List (ℕ × ℕ × ℚ):= [
      (0,8,(9092563347849409659925453311042382625:ℚ)/v221),
      (1,7,(87569958798980032987715876934117185800:ℚ)/v221),
      (2,6,(360872564209885596206681647765461514140:ℚ)/v221),
      (3,5,(832483636375041716121875636549909704504:ℚ)/v221),
      (4,4,(1178243447961023974189693915762754472710:ℚ)/v221),
      (5,3,(1049926567061688469425057340392333864760:ℚ)/v221),
      (6,2,(576403945999552930753732657752502548380:ℚ)/v221),
      (7,1,(178574724488000175941433751503879756040:ℚ)/v221),
      (8,0,(23942167614913024364697160554187320097:ℚ)/v221)
    ]
    let v105:ℚ[X]:= Math.B699.N21.d9 v222
    have v106:Polynomial.C v97 - v102 = v105:= by
      apply Polynomial.funext
      intro x
      norm_num [v97,v102,v98,u66,u62,u63,u64,
        u31,u27,v92,v93,v94,v101,u23,v95,v96,v105,v222,v221,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v107:v101 = ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v101,u23,v95,v96,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v109:Math.B699.N21.d0 v105:= by
      apply u881
      norm_num [v222,v221]
    have v110:Math.B699.N21.d0 (Polynomial.C v97 - v102):= by
      rw [v106]
      exact v109
    have v111:Math.B699.N21.d0 v102:= by
      exact u35 v92 v93 v94 (by norm_num [v94])
        |> fun h => u26 h v95 v96 (by norm_num [v95]) (by norm_num [v95,v96]) (by norm_num [v96])
    have v112:Math.B699.N21.d0 v103:= by
      exact u26 (u37 v92 v93 0 v94 (by norm_num [v94]))
        v95 v96 (by norm_num [v95]) (by norm_num [v95,v96]) (by norm_num [v96])
    have v113:Math.B699.N21.d0 v104:= by
      exact u26 (u37 v92 v93 1 v94 (by norm_num [v94]))
        v95 v96 (by norm_num [v95]) (by norm_num [v95,v96]) (by norm_num [v96])
    have v114:Math.B699.N20.d1 v97 v103 v102:= by
      exact Math.B699.N20.d1.leaf (lam:= v97) (w:= v103) (f:= v102)
        v112 v111 v110
    have v115:Math.B699.N20.d1 v97 v104 v102:= by
      exact Math.B699.N20.d1.leaf (lam:= v97) (w:= v104) (f:= v102)
        v113 v111 v110
    let v116:ℕ:= 5
    let v117:ℕ:= 3
    let v118:ℚ:= (1:ℚ) / 4375
    let v119:ℚ:= (1:ℚ) / 2
    let v120:ℚ:= (1:ℚ)
    let v121:ℚ:= (440758604932333255282947863:ℚ) / 39614081257132168796771975168
    let v122:ℚ[X]:= u66
    let v123:ℚ[X]:= u67
    let v124:ℚ[X]:= u68
    let v125:ℚ[X]:= u23 v119 v120
    let v126:ℚ[X]:= v122.comp v125
    let v127:ℚ[X]:= v123.comp v125
    let v128:ℚ[X]:= v124.comp v125
    let v223:ℚ:= 3317292449022542455393746944000000000000
    let v224:List (ℕ × ℕ × ℚ):= [
      (0,8,(23942167614913024364697160554187320097:ℚ)/v223),
      (1,7,(243387806644520270822151416151973779720:ℚ)/v223),
      (2,6,(981519038111939315547009701427998996380:ℚ)/v223),
      (3,5,(2066845667428145794457251657255608872760:ℚ)/v223),
      (4,4,(2583645989079907815275967250345775221510:ℚ)/v223),
      (5,3,(2066916817265618837370901094257825378104:ℚ)/v223),
      (6,2,(1033458408635285298764021307678710937500:ℚ)/v223),
      (7,1,(295273831038652942504006087908203125000:ℚ)/v223),
      (8,0,(36909228879831617813000760988525390625:ℚ)/v223)
    ]
    let v129:ℚ[X]:= Math.B699.N21.d9 v224
    have v130:Polynomial.C v121 - v126 = v129:= by
      apply Polynomial.funext
      intro x
      norm_num [v121,v126,v122,u66,u62,u63,u64,
        u31,u27,v116,v117,v118,v125,u23,v119,v120,v129,v224,v223,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v131:v125 = Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v125,u23,v119,v120,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v132:Math.B699.N21.d0 v129:= by
      apply u881
      norm_num [v224,v223]
    have v133:Math.B699.N21.d0 (Polynomial.C v121 - v126):= by
      rw [v130]
      exact v132
    have v134:Math.B699.N21.d0 v126:= by
      exact u35 v116 v117 v118 (by norm_num [v118])
        |> fun h => u26 h v119 v120 (by norm_num [v119]) (by norm_num [v119,v120]) (by norm_num [v120])
    have v135:Math.B699.N21.d0 v127:= by
      exact u26 (u37 v116 v117 0 v118 (by norm_num [v118]))
        v119 v120 (by norm_num [v119]) (by norm_num [v119,v120]) (by norm_num [v120])
    have v136:Math.B699.N21.d0 v128:= by
      exact u26 (u37 v116 v117 1 v118 (by norm_num [v118]))
        v119 v120 (by norm_num [v119]) (by norm_num [v119,v120]) (by norm_num [v120])
    have v137:Math.B699.N20.d1 v121 v127 v126:= by
      exact Math.B699.N20.d1.leaf (lam:= v121) (w:= v127) (f:= v126)
        v135 v134 v133
    have v138:Math.B699.N20.d1 v121 v128 v126:= by
      exact Math.B699.N20.d1.leaf (lam:= v121) (w:= v128) (f:= v126)
        v136 v134 v133
    let v139:ℕ:= 5
    let v140:ℕ:= 3
    let v141:ℚ:= (1:ℚ) / 4375
    let v142:ℚ:= (0:ℚ)
    let v143:ℚ:= (1:ℚ) / 4
    let v144:ℚ:= (618834739845914957406423393:ℚ) / 39614081257132168796771975168
    let v145:ℚ[X]:= u73
    let v146:ℚ[X]:= u74
    let v147:ℚ[X]:= u75
    let v148:ℚ[X]:= u23 v142 v143
    let v149:ℚ[X]:= v145.comp v148
    let v150:ℚ[X]:= v146.comp v148
    let v151:ℚ[X]:= v147.comp v148
    let v207:ℚ:= 758238274062295418375713587200000000
    let v208:List (ℕ × ℕ × ℚ):= [
      (0,8,(11844883692363215981607322756640625:ℚ)/v207),
      (1,7,(94759069538905727852858582053125000:ℚ)/v207),
      (2,6,(331656743386170047485005037185937500:ℚ)/v207),
      (3,5,(651466013740116729057889549571875000:ℚ)/v207),
      (4,4,(778791452075393781970676033481963750:ℚ)/v207),
      (5,3,(578164174804532423499171599261917368:ℚ)/v207),
      (6,2,(260021886170266223237558392443252828:ℚ)/v207),
      (7,1,(64773009448057178190038771559791496:ℚ)/v207),
      (8,0,(6847302208023252834919031166267249:ℚ)/v207)
    ]
    let v153:ℚ[X]:= Math.B699.N21.d9 v208
    have v154:Polynomial.C v144 - v149 = v153:= by
      apply Polynomial.funext
      intro x
      norm_num [v144,v149,v145,u73,u69,u70,u71,
        u32,u28,v139,v140,v141,v148,u23,v142,v143,v153,v208,v207,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v155:v148 = (Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v148,u23,v142,v143,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v156:Math.B699.N21.d0 v153:= by
      apply u881
      norm_num [v208,v207]
    have v157:Math.B699.N21.d0 (Polynomial.C v144 - v149):= by
      rw [v154]
      exact v156
    have v158:Math.B699.N21.d0 v149:= by
      exact u36 v139 v140 v141 (by norm_num [v141])
        |> fun h => u26 h v142 v143 (by norm_num [v142]) (by norm_num [v142,v143]) (by norm_num [v143])
    have v159:Math.B699.N21.d0 v150:= by
      exact u26 (u20 v139 v140 0 v141 (by norm_num [v141]))
        v142 v143 (by norm_num [v142]) (by norm_num [v142,v143]) (by norm_num [v143])
    have v160:Math.B699.N21.d0 v151:= by
      exact u26 (u20 v139 v140 1 v141 (by norm_num [v141]))
        v142 v143 (by norm_num [v142]) (by norm_num [v142,v143]) (by norm_num [v143])
    have v161:Math.B699.N20.d1 v144 v150 v149:= by
      exact Math.B699.N20.d1.leaf (lam:= v144) (w:= v150) (f:= v149)
        v159 v158 v157
    have v162:Math.B699.N20.d1 v144 v151 v149:= by
      exact Math.B699.N20.d1.leaf (lam:= v144) (w:= v151) (f:= v149)
        v160 v158 v157
    have v163:v79 = (Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v79,u23,v56,v59,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v164:ℕ:= 5
    let v165:ℕ:= 3
    let v166:ℚ:= (1:ℚ) / 4375
    let v167:ℚ:= (1:ℚ) / 4
    let v168:ℚ:= (3:ℚ) / 8
    let v169:ℚ:= (618834739845914957406423393:ℚ) / 39614081257132168796771975168
    let v170:ℚ[X]:= u73
    let v171:ℚ[X]:= u74
    let v172:ℚ[X]:= u75
    let v173:ℚ[X]:= u23 v167 v168
    let v174:ℚ[X]:= v170.comp v173
    let v175:ℚ[X]:= v171.comp v173
    let v176:ℚ[X]:= v172.comp v173
    let v209:ℚ:= 758238274062295418375713587200000000
    let v210:List (ℕ × ℕ × ℚ):= [
      (0,8,(6847302208023252834919031166267249:ℚ)/v209),
      (1,7,(49781121772250444924008988215311240:ℚ)/v209),
      (2,6,(156327211045731298911585010896744540:ℚ)/v209),
      (3,5,(276656491138576400407140845414015160:ℚ)/v209),
      (4,4,(301437065879447359434859538320292070:ℚ)/v209),
      (5,3,(206802527257461734273892799267233976:ℚ)/v209),
      (6,2,(87123921690327299434953637705166940:ℚ)/v209),
      (7,1,(20579900800695817066393139962936200:ℚ)/v209),
      (8,0,(2084540145457547238359989593632625:ℚ)/v209)
    ]
    let v177:ℚ[X]:= Math.B699.N21.d9 v210
    have v178:Polynomial.C v169 - v174 = v177:= by
      apply Polynomial.funext
      intro x
      norm_num [v169,v174,v170,u73,u69,u70,u71,
        u32,u28,v164,v165,v166,v173,u23,v167,v168,v177,v210,v209,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v180:v173 = ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v173,u23,v167,v168,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v181:Math.B699.N21.d0 v177:= by
      apply u881
      norm_num [v210,v209]
    have v182:Math.B699.N21.d0 (Polynomial.C v169 - v174):= by
      rw [v178]
      exact v181
    have v183:Math.B699.N21.d0 v174:= by
      exact u36 v164 v165 v166 (by norm_num [v166])
        |> fun h => u26 h v167 v168 (by norm_num [v167]) (by norm_num [v167,v168]) (by norm_num [v168])
    have v184:Math.B699.N21.d0 v175:= by
      exact u26 (u20 v164 v165 0 v166 (by norm_num [v166]))
        v167 v168 (by norm_num [v167]) (by norm_num [v167,v168]) (by norm_num [v168])
    have v185:Math.B699.N21.d0 v176:= by
      exact u26 (u20 v164 v165 1 v166 (by norm_num [v166]))
        v167 v168 (by norm_num [v167]) (by norm_num [v167,v168]) (by norm_num [v168])
    have v186:Math.B699.N20.d1 v169 v175 v174:= by
      exact Math.B699.N20.d1.leaf (lam:= v169) (w:= v175) (f:= v174)
        v184 v183 v182
    have v187:Math.B699.N20.d1 v169 v176 v174:= by
      exact Math.B699.N20.d1.leaf (lam:= v169) (w:= v176) (f:= v174)
        v185 v183 v182
    have v203:v197 = ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v197,u23,v191,v192,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v225:Math.B699.N20.d1 u65 ((u67).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)) ((u66).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u65) (w:= ((u67).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft))) (f:= ((u66).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)))
        (by simpa only [v38,u65,v44,v40,v43,v39,v48,Polynomial.comp_assoc] using v58)
        (by simpa only [v67,u65,v74,v70,v73,v69,v82,Polynomial.comp_assoc] using v90)
    have v226:Math.B699.N20.d1 u65 ((u67).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u66).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u65) (w:= ((u67).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u66).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [Polynomial.comp_assoc] using v225)
        (by simpa only [v97,u65,v103,v99,v102,v98,v107,Polynomial.comp_assoc] using v114)
    have v227:Math.B699.N20.d1 u65 ((u67).comp (Math.B699.N20.halfLeft)) ((u66).comp (Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u65) (w:= ((u67).comp (Math.B699.N20.halfLeft))) (f:= ((u66).comp (Math.B699.N20.halfLeft)))
        (by simpa only [v61,u65,v83,v76,v80,v68,v163,Polynomial.comp_assoc] using v31)
        (by simpa only [Polynomial.comp_assoc] using v226)
    have v228:Math.B699.N20.d1 u65 (u67) (u66):= by
      exact Math.B699.N20.d1.split (lam:= u65) (w:= (u67)) (f:= (u66))
        (by simpa only [Polynomial.comp_assoc] using v227)
        (by simpa only [v121,u65,v127,v123,v126,v122,v131,Polynomial.comp_assoc] using v137)
    have v229:Math.B699.N20.d1 u65 (u67) (u66):= by
      exact v228
    have v230:Math.B699.N20.d1 u65 ((u68).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)) ((u66).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u65) (w:= ((u68).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft))) (f:= ((u66).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)))
        (by simpa only [v38,u65,v45,v41,v43,v39,v48,Polynomial.comp_assoc] using v60)
        (by simpa only [v67,u65,v75,v71,v73,v69,v82,Polynomial.comp_assoc] using v91)
    have v231:Math.B699.N20.d1 u65 ((u68).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u66).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u65) (w:= ((u68).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u66).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [Polynomial.comp_assoc] using v230)
        (by simpa only [v97,u65,v104,v100,v102,v98,v107,Polynomial.comp_assoc] using v115)
    have v232:Math.B699.N20.d1 u65 ((u68).comp (Math.B699.N20.halfLeft)) ((u66).comp (Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u65) (w:= ((u68).comp (Math.B699.N20.halfLeft))) (f:= ((u66).comp (Math.B699.N20.halfLeft)))
        (by simpa only [v61,u65,v85,v78,v80,v68,v163,Polynomial.comp_assoc] using v32)
        (by simpa only [Polynomial.comp_assoc] using v231)
    have v233:Math.B699.N20.d1 u65 (u68) (u66):= by
      exact Math.B699.N20.d1.split (lam:= u65) (w:= (u68)) (f:= (u66))
        (by simpa only [Polynomial.comp_assoc] using v232)
        (by simpa only [v121,u65,v128,v124,v126,v122,v131,Polynomial.comp_assoc] using v138)
    have v234:Math.B699.N20.d1 u65 (u68) (u66):= by
      exact v233
    have v235:Math.B699.N20.d1 u72 ((u74).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u73).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u72) (w:= ((u74).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u73).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [v169,u72,v175,v171,v174,v170,v180,Polynomial.comp_assoc] using v186)
        (by simpa only [v193,u72,v199,v195,v198,v194,v203,Polynomial.comp_assoc] using v2)
    have v236:Math.B699.N20.d1 u72 ((u74).comp (Math.B699.N20.halfLeft)) ((u73).comp (Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u72) (w:= ((u74).comp (Math.B699.N20.halfLeft))) (f:= ((u73).comp (Math.B699.N20.halfLeft)))
        (by simpa only [v144,u72,v150,v146,v149,v145,v155,Polynomial.comp_assoc] using v161)
        (by simpa only [Polynomial.comp_assoc] using v235)
    have v237:Math.B699.N20.d1 u72 (u74) (u73):= by
      exact Math.B699.N20.d1.split (lam:= u72) (w:= (u74)) (f:= (u73))
        (by simpa only [Polynomial.comp_assoc] using v236)
        (by simpa only [v10,u72,v16,v12,v15,v11,v21,Polynomial.comp_assoc] using v28)
    have v238:Math.B699.N20.d1 u72 (u74) (u73):= by
      exact v237
    have v239:Math.B699.N20.d1 u72 ((u75).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u73).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u72) (w:= ((u75).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u73).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [v169,u72,v176,v172,v174,v170,v180,Polynomial.comp_assoc] using v187)
        (by simpa only [v193,u72,v200,v196,v198,v194,v203,Polynomial.comp_assoc] using v3)
    have v240:Math.B699.N20.d1 u72 ((u75).comp (Math.B699.N20.halfLeft)) ((u73).comp (Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u72) (w:= ((u75).comp (Math.B699.N20.halfLeft))) (f:= ((u73).comp (Math.B699.N20.halfLeft)))
        (by simpa only [v144,u72,v151,v147,v149,v145,v155,Polynomial.comp_assoc] using v162)
        (by simpa only [Polynomial.comp_assoc] using v239)
    have v241:Math.B699.N20.d1 u72 (u75) (u73):= by
      exact Math.B699.N20.d1.split (lam:= u72) (w:= (u75)) (f:= (u73))
        (by simpa only [Polynomial.comp_assoc] using v240)
        (by simpa only [v10,u72,v17,v13,v15,v11,v21,Polynomial.comp_assoc] using v29)
    have v242:Math.B699.N20.d1 u72 (u75) (u73):= by
      exact v241
    exact ⟨v229,v234,v238,v242⟩
  have u76:Math.B699.N20.d1 u65 (u67) (u66):= u80.1
  have u77:Math.B699.N20.d1 u65 (u68) (u66):= u80.2.1
  have u78:Math.B699.N20.d1 u72 (u74) (u73):= u80.2.2.1
  have u79:Math.B699.N20.d1 u72 (u75) (u73):= u80.2.2.2
  let u81:ℕ:= 9
  let u82:ℕ:= 5
  let u83:ℚ:= (1:ℚ) / 49
  let u84:ℚ:= (19015678853391498507418691:ℚ) / 79228162514264337593543950336
  let u85:ℚ[X]:= u31 u81 u82 u83
  let u86:ℚ[X]:= u33 u81 u82 0 u83
  let u87:ℚ[X]:= u33 u81 u82 1 u83
  let u88:ℕ:= 9
  let u89:ℕ:= 5
  let u90:ℚ:= (1:ℚ) / 49
  let u91:ℚ:= (18567076935738840000672813:ℚ) / 19807040628566084398385987584
  let u92:ℚ[X]:= u32 u88 u89 u90
  let u93:ℚ[X]:= u34 u88 u89 0 u90
  let u94:ℚ[X]:= u34 u88 u89 1 u90
  have u99:
      (Math.B699.N20.d1 u84 (u86) (u85)) ∧
      (Math.B699.N20.d1 u84 (u87) (u85)) ∧
      (Math.B699.N20.d1 u91 (u93) (u92)) ∧
      (Math.B699.N20.d1 u91 (u94) (u92)):= by
    classical
    letI:Infinite ℚ:= Infinite.of_injective (fun n:ℕ => (n:ℚ)) Nat.cast_injective
    let v28:ℚ:= (19015678853391498507418691:ℚ) / 79228162514264337593543950336
    let v30:ℚ[X]:= u85
    let v25:ℚ:= (0:ℚ)
    let v27:ℚ:= (1:ℚ) / 4
    let v38:ℚ[X]:= u23 v25 v27
    let v39:ℚ[X]:= v30.comp v38
    let v20:ℕ:= 9
    let v21:ℕ:= 5
    let v23:ℚ:= (1:ℚ) / 49
    let v46:ℚ:= 22379994934029284813556388163605233664
    let v47:List (ℕ × ℕ × ℚ):= [
      (0,14,(5371458619015798035366223087479059:ℚ)/v46),
      (1,13,(75200420666221172495127123224706826:ℚ)/v46),
      (2,12,(488802734330437621218326300960594369:ℚ)/v46),
      (3,11,(1955210937321750484873305203842377476:ℚ)/v46),
      (4,10,(5289408222423761939598634669302455115:ℚ)/v46),
      (5,9,(10095766091819109588439106703456941718:ℚ)/v46),
      (6,8,(13902548258016995238493327843278770657:ℚ)/v46),
      (7,7,(13963817379845794534417128785869448888:ℚ)/v46),
      (8,6,(10242327799149667736243019691611181537:ℚ)/v46),
      (9,5,(5436316134211852198121096388934317718:ℚ)/v46),
      (10,4,(2042207474845120528300803317455231819:ℚ)/v46),
      (11,3,(521236984068029012487136274613167876:ℚ)/v46),
      (12,2,(84129390440815070990705565822720449:ℚ)/v46),
      (13,1,(7526147938798670594248493498908426:ℚ)/v46),
      (14,0,(278682840884341960113661799639315:ℚ)/v46)
    ]
    let v42:ℚ[X]:= Math.B699.N21.d9 v47
    have v43:Polynomial.C v28 - v39 = v42:= by
      apply Polynomial.funext
      intro x
      norm_num [v28,v39,v30,u85,u81,u82,u83,
        u31,u27,v20,v21,v23,v38,u23,v25,v27,v42,v47,v46,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v45:Math.B699.N21.d0 v42:= by
      apply u881
      norm_num [v47,v46]
    have v0:Math.B699.N21.d0 (Polynomial.C v28 - v39):= by
      rw [v43]
      exact v45
    have v1:Math.B699.N21.d0 v39:= by
      exact u26 (u35 v20 v21 v23 (by norm_num [v23]))
        v25 v27 (by norm_num [v25]) (by norm_num [v25,v27]) (by norm_num [v27])
    let v33:ℚ[X]:= u86
    let v40:ℚ[X]:= v33.comp v38
    have v2:Math.B699.N21.d0 v40:= by
      exact u26 (u37 v20 v21 0 v23 (by norm_num [v23]))
        v25 v27 (by norm_num [v25]) (by norm_num [v25,v27]) (by norm_num [v27])
    let v37:ℚ[X]:= u87
    let v41:ℚ[X]:= v37.comp v38
    have v3:Math.B699.N21.d0 v41:= by
      exact u26 (u37 v20 v21 1 v23 (by norm_num [v23]))
        v25 v27 (by norm_num [v25]) (by norm_num [v25,v27]) (by norm_num [v27])
    have v4:Math.B699.N20.d1 v28 v40 v39:= by
      exact Math.B699.N20.d1.leaf (lam:= v28) (w:= v40) (f:= v39)
        v2 v1 v0
    have v5:Math.B699.N20.d1 v28 v41 v39:= by
      exact Math.B699.N20.d1.leaf (lam:= v28) (w:= v41) (f:= v39)
        v3 v1 v0
    let v6:ℕ:= 9
    let v7:ℕ:= 5
    let v8:ℚ:= (1:ℚ) / 49
    let v9:ℚ:= (1:ℚ) / 4
    let v10:ℚ:= (9:ℚ) / 32
    let v11:ℚ:= (19015678853391498507418691:ℚ) / 79228162514264337593543950336
    let v12:ℚ[X]:= u85
    let v13:ℚ[X]:= u86
    let v14:ℚ[X]:= u87
    let v15:ℚ[X]:= u23 v9 v10
    let v16:ℚ[X]:= v12.comp v15
    let v17:ℚ[X]:= v13.comp v15
    let v18:ℚ[X]:= v14.comp v15
    let v48:ℚ:= 22379994934029284813556388163605233664
    let v49:List (ℕ × ℕ × ℚ):= [
      (0,14,(278682840884341960113661799639315:ℚ)/v48),
      (1,13,(3448486251578552047509111656955658:ℚ)/v48),
      (2,12,(19652207839997737491584889868622273:ℚ)/v48),
      (3,11,(68290426624834849624937350416459524:ℚ)/v48),
      (4,10,(161451498085455898153608805165669195:ℚ)/v48),
      (5,9,(274282707899809297112391070871402134:ℚ)/v48),
      (6,8,(344621725127062015472035039965401569:ℚ)/v48),
      (7,7,(324521010337560543130677980020254392:ℚ)/v48),
      (8,6,(229426527498551290768181576858128865:ℚ)/v48),
      (9,5,(120683627457196132394105737670506134:ℚ)/v48),
      (10,4,(46245476707801484335737366092028747:ℚ)/v48),
      (11,3,(12428552034054300569238018299684612:ℚ)/v48),
      (12,2,(2193678056417877008085063340235201:ℚ)/v48),
      (13,1,(225012665702620138466308337975050:ℚ)/v48),
      (14,0,(10027114565649810879569348339987:ℚ)/v48)
    ]
    let v19:ℚ[X]:= Math.B699.N21.d9 v49
    have v22:Polynomial.C v11 - v16 = v19:= by
      apply Polynomial.funext
      intro x
      norm_num [v11,v16,v12,u85,u81,u82,u83,
        u31,u27,v6,v7,v8,v15,u23,v9,v10,v19,v49,v48,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v24:v15 = ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v15,u23,v9,v10,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v26:Math.B699.N21.d0 v19:= by
      apply u881
      norm_num [v49,v48]
    have v29:Math.B699.N21.d0 (Polynomial.C v11 - v16):= by
      rw [v22]
      exact v26
    have v31:Math.B699.N21.d0 v16:= by
      exact u26 (u35 v6 v7 v8 (by norm_num [v8]))
        v9 v10 (by norm_num [v9]) (by norm_num [v9,v10]) (by norm_num [v10])
    have v32:Math.B699.N21.d0 v17:= by
      exact u26 (u37 v6 v7 0 v8 (by norm_num [v8]))
        v9 v10 (by norm_num [v9]) (by norm_num [v9,v10]) (by norm_num [v10])
    have v34:Math.B699.N21.d0 v18:= by
      exact u26 (u37 v6 v7 1 v8 (by norm_num [v8]))
        v9 v10 (by norm_num [v9]) (by norm_num [v9,v10]) (by norm_num [v10])
    have v35:Math.B699.N20.d1 v11 v17 v16:= by
      exact Math.B699.N20.d1.leaf (lam:= v11) (w:= v17) (f:= v16)
        v32 v31 v29
    have v36:Math.B699.N20.d1 v11 v18 v16:= by
      exact Math.B699.N20.d1.leaf (lam:= v11) (w:= v18) (f:= v16)
        v34 v31 v29
    have v44:v38 = (Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v38,u23,v25,v27,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v78:ℚ:= (19015678853391498507418691:ℚ) / 79228162514264337593543950336
    let v80:ℚ[X]:= u85
    let v75:ℚ:= (9:ℚ) / 32
    let v77:ℚ:= (37:ℚ) / 128
    let v88:ℚ[X]:= u23 v75 v77
    let v89:ℚ[X]:= v80.comp v88
    let v70:ℕ:= 9
    let v71:ℕ:= 5
    let v73:ℚ:= (1:ℚ) / 49
    let v96:ℚ:= 22379994934029284813556388163605233664
    let v97:List (ℕ × ℕ × ℚ):= [
      (0,14,(10027114565649810879569348339987:ℚ)/v96),
      (1,13,(119221338473216655775886511456010:ℚ)/v96),
      (2,12,(648721276412555484924705552832961:ℚ)/v96),
      (3,11,(2135174155749616326983904258320132:ℚ)/v96),
      (4,10,(4731463512462128897375200560913227:ℚ)/v96),
      (5,9,(7429763894617272912308521758570134:ℚ)/v96),
      (6,8,(8465158441769164017853875375100385:ℚ)/v96),
      (7,7,(7034408713931238954516089907619512:ℚ)/v96),
      (8,6,(4213646489301564275239889133949409:ℚ)/v96),
      (9,5,(1759934808828945459852280279545494:ℚ)/v96),
      (10,4,(477658774395334584047290781899595:ℚ)/v96),
      (11,3,(71750905039614227746221595191044:ℚ)/v96),
      (12,2,(3510884395277994577122272057793:ℚ)/v96),
      (13,1,(17460090349267977376023199498:ℚ)/v96),
      (14,0,(84783428578740262627245107475:ℚ)/v96)
    ]
    let v92:ℚ[X]:= Math.B699.N21.d9 v97
    have v93:Polynomial.C v78 - v89 = v92:= by
      apply Polynomial.funext
      intro x
      norm_num [v78,v89,v80,u85,u81,u82,u83,
        u31,u27,v70,v71,v73,v88,u23,v75,v77,v92,v97,v96,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v95:Math.B699.N21.d0 v92:= by
      apply u881
      norm_num [v97,v96]
    have v50:Math.B699.N21.d0 (Polynomial.C v78 - v89):= by
      rw [v93]
      exact v95
    have v51:Math.B699.N21.d0 v89:= by
      exact u26 (u35 v70 v71 v73 (by norm_num [v73]))
        v75 v77 (by norm_num [v75]) (by norm_num [v75,v77]) (by norm_num [v77])
    let v83:ℚ[X]:= u86
    let v90:ℚ[X]:= v83.comp v88
    have v52:Math.B699.N21.d0 v90:= by
      exact u26 (u37 v70 v71 0 v73 (by norm_num [v73]))
        v75 v77 (by norm_num [v75]) (by norm_num [v75,v77]) (by norm_num [v77])
    let v87:ℚ[X]:= u87
    let v91:ℚ[X]:= v87.comp v88
    have v53:Math.B699.N21.d0 v91:= by
      exact u26 (u37 v70 v71 1 v73 (by norm_num [v73]))
        v75 v77 (by norm_num [v75]) (by norm_num [v75,v77]) (by norm_num [v77])
    have v54:Math.B699.N20.d1 v78 v90 v89:= by
      exact Math.B699.N20.d1.leaf (lam:= v78) (w:= v90) (f:= v89)
        v52 v51 v50
    have v55:Math.B699.N20.d1 v78 v91 v89:= by
      exact Math.B699.N20.d1.leaf (lam:= v78) (w:= v91) (f:= v89)
        v53 v51 v50
    let v56:ℕ:= 9
    let v57:ℕ:= 5
    let v58:ℚ:= (1:ℚ) / 49
    let v59:ℚ:= (37:ℚ) / 128
    let v60:ℚ:= (19:ℚ) / 64
    let v61:ℚ:= (19015678853391498507418691:ℚ) / 79228162514264337593543950336
    let v62:ℚ[X]:= u85
    let v63:ℚ[X]:= u86
    let v64:ℚ[X]:= u87
    let v65:ℚ[X]:= u23 v59 v60
    let v66:ℚ[X]:= v62.comp v65
    let v67:ℚ[X]:= v63.comp v65
    let v68:ℚ[X]:= v64.comp v65
    let v98:ℚ:= 22379994934029284813556388163605233664
    let v99:List (ℕ × ℕ × ℚ):= [
      (0,14,(84783428578740262627245107475:ℚ)/v98),
      (1,13,(2356475909855459376186839809802:ℚ)/v98),
      (2,12,(33918090048858482761662887991745:ℚ)/v98),
      (3,11,(253952116279377677933931448919812:ℚ)/v98),
      (4,10,(1143955049275191055992312071822155:ℚ)/v98),
      (5,9,(3419020240924677096430108401153686:ℚ)/v98),
      (6,8,(7184029424312703726808426137309665:ℚ)/v98),
      (7,7,(10968305646217492042283661900293816:ℚ)/v98),
      (8,6,(12367126073867596696956719164084705:ℚ)/v98),
      (9,5,(10328309220642589292476083168032406:ℚ)/v98),
      (10,4,(6324038781190167934836033440291659:ℚ)/v98),
      (11,3,(2764229897371500019354046995785476:ℚ)/v98),
      (12,2,(817866530211014300130528831314369:ℚ)/v98),
      (13,1,(146969611154964939089981106306826:ℚ)/v98),
      (14,0,(12124476166345589195690018679059:ℚ)/v98)
    ]
    let v69:ℚ[X]:= Math.B699.N21.d9 v99
    have v72:Polynomial.C v61 - v66 = v69:= by
      apply Polynomial.funext
      intro x
      norm_num [v61,v66,v62,u85,u81,u82,u83,
        u31,u27,v56,v57,v58,v65,u23,v59,v60,v69,v99,v98,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v74:v65 = ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v65,u23,v59,v60,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v76:Math.B699.N21.d0 v69:= by
      apply u881
      norm_num [v99,v98]
    have v79:Math.B699.N21.d0 (Polynomial.C v61 - v66):= by
      rw [v72]
      exact v76
    have v81:Math.B699.N21.d0 v66:= by
      exact u26 (u35 v56 v57 v58 (by norm_num [v58]))
        v59 v60 (by norm_num [v59]) (by norm_num [v59,v60]) (by norm_num [v60])
    have v82:Math.B699.N21.d0 v67:= by
      exact u26 (u37 v56 v57 0 v58 (by norm_num [v58]))
        v59 v60 (by norm_num [v59]) (by norm_num [v59,v60]) (by norm_num [v60])
    have v84:Math.B699.N21.d0 v68:= by
      exact u26 (u37 v56 v57 1 v58 (by norm_num [v58]))
        v59 v60 (by norm_num [v59]) (by norm_num [v59,v60]) (by norm_num [v60])
    have v85:Math.B699.N20.d1 v61 v67 v66:= by
      exact Math.B699.N20.d1.leaf (lam:= v61) (w:= v67) (f:= v66)
        v82 v81 v79
    have v86:Math.B699.N20.d1 v61 v68 v66:= by
      exact Math.B699.N20.d1.leaf (lam:= v61) (w:= v68) (f:= v66)
        v84 v81 v79
    have v94:v88 = ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v88,u23,v75,v77,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v128:ℚ:= (19015678853391498507418691:ℚ) / 79228162514264337593543950336
    let v130:ℚ[X]:= u85
    let v125:ℚ:= (19:ℚ) / 64
    let v127:ℚ:= (5:ℚ) / 16
    let v138:ℚ[X]:= u23 v125 v127
    let v139:ℚ[X]:= v130.comp v138
    let v120:ℕ:= 9
    let v121:ℕ:= 5
    let v123:ℚ:= (1:ℚ) / 49
    let v146:ℚ:= 22379994934029284813556388163605233664
    let v147:List (ℕ × ℕ × ℚ):= [
      (0,14,(12124476166345589195690018679059:ℚ)/v146),
      (1,13,(215288776676584868039018571906826:ℚ)/v146),
      (2,12,(1737782430993829502773714331474369:ℚ)/v146),
      (3,11,(8472958872687735196871806065993476:ℚ)/v146),
      (4,10,(27944780740524857228118830074403659:ℚ)/v146),
      (5,9,(66088936314488856483343202262922902:ℚ)/v146),
      (6,8,(115788057870651365464852485762503137:ℚ)/v146),
      (7,7,(152899363281979675700734451300345528:ℚ)/v146),
      (8,6,(153118389295614375987020366998983137:ℚ)/v146),
      (9,5,(115846950462899084489117696045823638:ℚ)/v146),
      (10,4,(65243596245601759734677548357753675:ℚ)/v146),
      (11,3,(26543870619023163888535811426510596:ℚ)/v146),
      (12,2,(7379576921418212849115641679288769:ℚ)/v146),
      (13,1,(1255641135460966024970388793474826:ℚ)/v146),
      (14,0,(98701482245320295857053566839059:ℚ)/v146)
    ]
    let v142:ℚ[X]:= Math.B699.N21.d9 v147
    have v143:Polynomial.C v128 - v139 = v142:= by
      apply Polynomial.funext
      intro x
      norm_num [v128,v139,v130,u85,u81,u82,u83,
        u31,u27,v120,v121,v123,v138,u23,v125,v127,v142,v147,v146,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v145:Math.B699.N21.d0 v142:= by
      apply u881
      norm_num [v147,v146]
    have v100:Math.B699.N21.d0 (Polynomial.C v128 - v139):= by
      rw [v143]
      exact v145
    have v101:Math.B699.N21.d0 v139:= by
      exact u26 (u35 v120 v121 v123 (by norm_num [v123]))
        v125 v127 (by norm_num [v125]) (by norm_num [v125,v127]) (by norm_num [v127])
    let v133:ℚ[X]:= u86
    let v140:ℚ[X]:= v133.comp v138
    have v102:Math.B699.N21.d0 v140:= by
      exact u26 (u37 v120 v121 0 v123 (by norm_num [v123]))
        v125 v127 (by norm_num [v125]) (by norm_num [v125,v127]) (by norm_num [v127])
    let v137:ℚ[X]:= u87
    let v141:ℚ[X]:= v137.comp v138
    have v103:Math.B699.N21.d0 v141:= by
      exact u26 (u37 v120 v121 1 v123 (by norm_num [v123]))
        v125 v127 (by norm_num [v125]) (by norm_num [v125,v127]) (by norm_num [v127])
    have v104:Math.B699.N20.d1 v128 v140 v139:= by
      exact Math.B699.N20.d1.leaf (lam:= v128) (w:= v140) (f:= v139)
        v102 v101 v100
    have v105:Math.B699.N20.d1 v128 v141 v139:= by
      exact Math.B699.N20.d1.leaf (lam:= v128) (w:= v141) (f:= v139)
        v103 v101 v100
    let v106:ℕ:= 9
    let v107:ℕ:= 5
    let v108:ℚ:= (1:ℚ) / 49
    let v109:ℚ:= (5:ℚ) / 16
    let v110:ℚ:= (3:ℚ) / 8
    let v111:ℚ:= (19015678853391498507418691:ℚ) / 79228162514264337593543950336
    let v112:ℚ[X]:= u85
    let v113:ℚ[X]:= u86
    let v114:ℚ[X]:= u87
    let v115:ℚ[X]:= u23 v109 v110
    let v116:ℚ[X]:= v112.comp v115
    let v117:ℚ[X]:= v113.comp v115
    let v118:ℚ[X]:= v114.comp v115
    let v148:ℚ:= 22379994934029284813556388163605233664
    let v149:List (ℕ × ℕ × ℚ):= [
      (0,14,(98701482245320295857053566839059:ℚ)/v148),
      (1,13,(1886539215328556610112194504834826:ℚ)/v148),
      (2,12,(16152407630943912168346045124024769:ℚ)/v148),
      (3,11,(82502710510540313011628782894081796:ℚ)/v148),
      (4,10,(282199244163701345887876778277313355:ℚ)/v148),
      (5,9,(686604280477424827868440783060940438:ℚ)/v148),
      (6,8,(1229553368678075083136762454968160737:ℚ)/v148),
      (7,7,(1650836577829115928489875394574329528:ℚ)/v148),
      (8,6,(1673608371042525257756841986354631137:ℚ)/v148),
      (9,5,(1277219912295299477180901887970064022:ℚ)/v148),
      (10,4,(723344524365272762699866798384061259:ℚ)/v148),
      (11,3,(295164125393984016472305456029001476:ℚ)/v148),
      (12,2,(82119106899230726676231535044434369:ℚ)/v148),
      (13,1,(13955308724806221528620255307906826:ℚ)/v148),
      (14,0,(1093730184504652380176483157879059:ℚ)/v148)
    ]
    let v119:ℚ[X]:= Math.B699.N21.d9 v149
    have v122:Polynomial.C v111 - v116 = v119:= by
      apply Polynomial.funext
      intro x
      norm_num [v111,v116,v112,u85,u81,u82,u83,
        u31,u27,v106,v107,v108,v115,u23,v109,v110,v119,v149,v148,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v124:v115 = (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v115,u23,v109,v110,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v126:Math.B699.N21.d0 v119:= by
      apply u881
      norm_num [v149,v148]
    have v129:Math.B699.N21.d0 (Polynomial.C v111 - v116):= by
      rw [v122]
      exact v126
    have v131:Math.B699.N21.d0 v116:= by
      exact u26 (u35 v106 v107 v108 (by norm_num [v108]))
        v109 v110 (by norm_num [v109]) (by norm_num [v109,v110]) (by norm_num [v110])
    have v132:Math.B699.N21.d0 v117:= by
      exact u26 (u37 v106 v107 0 v108 (by norm_num [v108]))
        v109 v110 (by norm_num [v109]) (by norm_num [v109,v110]) (by norm_num [v110])
    have v134:Math.B699.N21.d0 v118:= by
      exact u26 (u37 v106 v107 1 v108 (by norm_num [v108]))
        v109 v110 (by norm_num [v109]) (by norm_num [v109,v110]) (by norm_num [v110])
    have v135:Math.B699.N20.d1 v111 v117 v116:= by
      exact Math.B699.N20.d1.leaf (lam:= v111) (w:= v117) (f:= v116)
        v132 v131 v129
    have v136:Math.B699.N20.d1 v111 v118 v116:= by
      exact Math.B699.N20.d1.leaf (lam:= v111) (w:= v118) (f:= v116)
        v134 v131 v129
    have v144:v138 = (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v138,u23,v125,v127,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v178:ℚ:= (19015678853391498507418691:ℚ) / 79228162514264337593543950336
    let v180:ℚ[X]:= u85
    let v175:ℚ:= (3:ℚ) / 8
    let v177:ℚ:= (1:ℚ) / 2
    let v188:ℚ[X]:= u23 v175 v177
    let v189:ℚ[X]:= v180.comp v188
    let v170:ℕ:= 9
    let v171:ℕ:= 5
    let v173:ℚ:= (1:ℚ) / 49
    let v196:ℚ:= 22379994934029284813556388163605233664
    let v197:List (ℕ × ℕ × ℚ):= [
      (0,14,(1093730184504652380176483157879059:ℚ)/v196),
      (1,13,(18026050299582956910171782015106826:ℚ)/v196),
      (2,12,(135727368171347926837085932463954369:ℚ)/v196),
      (3,11,(619765194021141075790535421500745476:ℚ)/v196),
      (4,10,(1920130422319224786313563596743613259:ℚ)/v196),
      (5,9,(4275390812052381585531282819326359190:ℚ)/v196),
      (6,8,(7063874483525343805282751449655726561:ℚ)/v196),
      (7,7,(8807115656207390415522151773684803256:ℚ)/v196),
      (8,6,(8334428704293943531137165950427124193:ℚ)/v196),
      (9,5,(5962415228343005070476733941699786390:ℚ)/v196),
      (10,4,(3176602122269954472242507596837002059:ℚ)/v196),
      (11,3,(1223007273685747480529370896309577476:ℚ)/v196),
      (12,2,(321856123270755405337276926240594369:ℚ)/v196),
      (13,1,(51853040774913646558614099224706826:ℚ)/v196),
      (14,0,(3860301344497511566983503087479059:ℚ)/v196)
    ]
    let v192:ℚ[X]:= Math.B699.N21.d9 v197
    have v193:Polynomial.C v178 - v189 = v192:= by
      apply Polynomial.funext
      intro x
      norm_num [v178,v189,v180,u85,u81,u82,u83,
        u31,u27,v170,v171,v173,v188,u23,v175,v177,v192,v197,v196,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v195:Math.B699.N21.d0 v192:= by
      apply u881
      norm_num [v197,v196]
    have v150:Math.B699.N21.d0 (Polynomial.C v178 - v189):= by
      rw [v193]
      exact v195
    have v151:Math.B699.N21.d0 v189:= by
      exact u26 (u35 v170 v171 v173 (by norm_num [v173]))
        v175 v177 (by norm_num [v175]) (by norm_num [v175,v177]) (by norm_num [v177])
    let v183:ℚ[X]:= u86
    let v190:ℚ[X]:= v183.comp v188
    have v152:Math.B699.N21.d0 v190:= by
      exact u26 (u37 v170 v171 0 v173 (by norm_num [v173]))
        v175 v177 (by norm_num [v175]) (by norm_num [v175,v177]) (by norm_num [v177])
    let v187:ℚ[X]:= u87
    let v191:ℚ[X]:= v187.comp v188
    have v153:Math.B699.N21.d0 v191:= by
      exact u26 (u37 v170 v171 1 v173 (by norm_num [v173]))
        v175 v177 (by norm_num [v175]) (by norm_num [v175,v177]) (by norm_num [v177])
    have v154:Math.B699.N20.d1 v178 v190 v189:= by
      exact Math.B699.N20.d1.leaf (lam:= v178) (w:= v190) (f:= v189)
        v152 v151 v150
    have v155:Math.B699.N20.d1 v178 v191 v189:= by
      exact Math.B699.N20.d1.leaf (lam:= v178) (w:= v191) (f:= v189)
        v153 v151 v150
    let v156:ℕ:= 9
    let v157:ℕ:= 5
    let v158:ℚ:= (1:ℚ) / 49
    let v159:ℚ:= (1:ℚ) / 2
    let v160:ℚ:= (1:ℚ)
    let v161:ℚ:= (19015678853391498507418691:ℚ) / 79228162514264337593543950336
    let v162:ℚ[X]:= u85
    let v163:ℚ[X]:= u86
    let v164:ℚ[X]:= u87
    let v165:ℚ[X]:= u23 v159 v160
    let v166:ℚ[X]:= v162.comp v165
    let v167:ℚ[X]:= v163.comp v165
    let v168:ℚ[X]:= v164.comp v165
    let v198:ℚ:= 22379994934029284813556388163605233664
    let v199:List (ℕ × ℕ × ℚ):= [
      (0,14,(3860301344497511566983503087479059:ℚ)/v198),
      (1,13,(62808931015171223454388819224706826:ℚ)/v198),
      (2,12,(450092929586377195044234545440594369:ℚ)/v198),
      (3,11,(1899405954347683510465528354741577476:ℚ)/v198),
      (4,10,(5342392113824130547045172503261322059:ℚ)/v198),
      (5,9,(10748027373193631770969180709160957590:ℚ)/v198),
      (6,8,(16130071962675727913059006115203305953:ℚ)/v198),
      (7,7,(18434829883527888029577163122915845816:ℚ)/v198),
      (8,6,(16130489918467671521718178107322061281:ℚ)/v198),
      (9,5,(10753660152793747588232418071334827670:ℚ)/v198),
      (10,4,(5376830077634813833401589310566538059:ℚ)/v198),
      (11,3,(1955210937321750484873305203842377476:ℚ)/v198),
      (12,2,(488802734330437621218326300960594369:ℚ)/v198),
      (13,1,(75200420666221172495127123224706826:ℚ)/v198),
      (14,0,(5371458619015798035366223087479059:ℚ)/v198)
    ]
    let v169:ℚ[X]:= Math.B699.N21.d9 v199
    have v172:Polynomial.C v161 - v166 = v169:= by
      apply Polynomial.funext
      intro x
      norm_num [v161,v166,v162,u85,u81,u82,u83,
        u31,u27,v156,v157,v158,v165,u23,v159,v160,v169,v199,v198,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v174:v165 = Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v165,u23,v159,v160,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v176:Math.B699.N21.d0 v169:= by
      apply u881
      norm_num [v199,v198]
    have v179:Math.B699.N21.d0 (Polynomial.C v161 - v166):= by
      rw [v172]
      exact v176
    have v181:Math.B699.N21.d0 v166:= by
      exact u26 (u35 v156 v157 v158 (by norm_num [v158]))
        v159 v160 (by norm_num [v159]) (by norm_num [v159,v160]) (by norm_num [v160])
    have v182:Math.B699.N21.d0 v167:= by
      exact u26 (u37 v156 v157 0 v158 (by norm_num [v158]))
        v159 v160 (by norm_num [v159]) (by norm_num [v159,v160]) (by norm_num [v160])
    have v184:Math.B699.N21.d0 v168:= by
      exact u26 (u37 v156 v157 1 v158 (by norm_num [v158]))
        v159 v160 (by norm_num [v159]) (by norm_num [v159,v160]) (by norm_num [v160])
    have v185:Math.B699.N20.d1 v161 v167 v166:= by
      exact Math.B699.N20.d1.leaf (lam:= v161) (w:= v167) (f:= v166)
        v182 v181 v179
    have v186:Math.B699.N20.d1 v161 v168 v166:= by
      exact Math.B699.N20.d1.leaf (lam:= v161) (w:= v168) (f:= v166)
        v184 v181 v179
    have v194:v188 = ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v188,u23,v175,v177,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v228:ℚ:= (18567076935738840000672813:ℚ) / 19807040628566084398385987584
    let v230:ℚ[X]:= u92
    let v225:ℚ:= (0:ℚ)
    let v227:ℚ:= (1:ℚ) / 4
    let v238:ℚ[X]:= u23 v225 v227
    let v239:ℚ[X]:= v230.comp v238
    let v220:ℕ:= 9
    let v221:ℕ:= 5
    let v223:ℚ:= (1:ℚ) / 49
    let v246:ℚ:= 114183647622598391905899939610230784
    let v247:List (ℕ × ℕ × ℚ):= [
      (0,14,(107035503686224200574718633055213:ℚ)/v246),
      (1,13,(1498497051607138808046060862772982:ℚ)/v246),
      (2,12,(9740230835446402252299395608024383:ℚ)/v246),
      (3,11,(38960923341785609009197582432097532:ℚ)/v246),
      (4,10,(107142539189910424775293351688268213:ℚ)/v246),
      (5,9,(214173570911439405808491097966760810:ℚ)/v246),
      (6,8,(320565710352395114788763513249447199:ℚ)/v246),
      (7,7,(364392305612365358253630664538267976:ℚ)/v246),
      (8,6,(315538458199850961068818464219446559:ℚ)/v246),
      (9,5,(206755118408139690581417839182467946:ℚ)/v246),
      (10,4,(100739843819597052069640934337931701:ℚ)/v246),
      (11,3,(35340381137635320047800889780229372:ℚ)/v246),
      (12,2,(8427296704247701187768316748043583:ℚ)/v246),
      (13,1,(1221428307508107528651940592948982:ℚ)/v246),
      (14,0,(81110165346823481053675709535213:ℚ)/v246)
    ]
    let v242:ℚ[X]:= Math.B699.N21.d9 v247
    have v243:Polynomial.C v228 - v239 = v242:= by
      apply Polynomial.funext
      intro x
      norm_num [v228,v239,v230,u92,u88,u89,u90,
        u32,u28,v220,v221,v223,v238,u23,v225,v227,v242,v247,v246,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v245:Math.B699.N21.d0 v242:= by
      apply u881
      norm_num [v247,v246]
    have v200:Math.B699.N21.d0 (Polynomial.C v228 - v239):= by
      rw [v243]
      exact v245
    have v201:Math.B699.N21.d0 v239:= by
      exact u26 (u36 v220 v221 v223 (by norm_num [v223]))
        v225 v227 (by norm_num [v225]) (by norm_num [v225,v227]) (by norm_num [v227])
    let v233:ℚ[X]:= u93
    let v240:ℚ[X]:= v233.comp v238
    have v202:Math.B699.N21.d0 v240:= by
      exact u26 (u20 v220 v221 0 v223 (by norm_num [v223]))
        v225 v227 (by norm_num [v225]) (by norm_num [v225,v227]) (by norm_num [v227])
    let v237:ℚ[X]:= u94
    let v241:ℚ[X]:= v237.comp v238
    have v203:Math.B699.N21.d0 v241:= by
      exact u26 (u20 v220 v221 1 v223 (by norm_num [v223]))
        v225 v227 (by norm_num [v225]) (by norm_num [v225,v227]) (by norm_num [v227])
    have v204:Math.B699.N20.d1 v228 v240 v239:= by
      exact Math.B699.N20.d1.leaf (lam:= v228) (w:= v240) (f:= v239)
        v202 v201 v200
    have v205:Math.B699.N20.d1 v228 v241 v239:= by
      exact Math.B699.N20.d1.leaf (lam:= v228) (w:= v241) (f:= v239)
        v203 v201 v200
    let v206:ℕ:= 9
    let v207:ℕ:= 5
    let v208:ℚ:= (1:ℚ) / 49
    let v209:ℚ:= (1:ℚ) / 4
    let v210:ℚ:= (3:ℚ) / 8
    let v211:ℚ:= (18567076935738840000672813:ℚ) / 19807040628566084398385987584
    let v212:ℚ[X]:= u92
    let v213:ℚ[X]:= u93
    let v214:ℚ[X]:= u94
    let v215:ℚ[X]:= u23 v209 v210
    let v216:ℚ[X]:= v212.comp v215
    let v217:ℚ[X]:= v213.comp v215
    let v218:ℚ[X]:= v214.comp v215
    let v248:ℚ:= 114183647622598391905899939610230784
    let v249:List (ℕ × ℕ × ℚ):= [
      (0,14,(81110165346823481053675709535213:ℚ)/v248),
      (1,13,(1092599318529239337801219603764982:ℚ)/v248),
      (2,12,(6805204532619984638325759933093183:ℚ)/v248),
      (3,11,(25968791671646451174215136276403452:ℚ)/v248),
      (4,10,(67809089656809645443086666625051061:ℚ)/v248),
      (5,9,(128126044558261062037234781919630186:ℚ)/v248),
      (6,8,(180600931616976767398584746966367519:ℚ)/v248),
      (7,7,(192851039297770547066505577911492936:ℚ)/v248),
      (8,6,(156709483056794202249037720822070559:ℚ)/v248),
      (9,5,(96393686235711030962044625615049578:ℚ)/v248),
      (10,4,(44162379329746916630921714844953013:ℚ)/v248),
      (11,3,(14606193590181447172310070769505532:ℚ)/v248),
      (12,2,(3294995402416118226707993275864383:ℚ)/v248),
      (13,1,(453565087957088934259203800372982:ℚ)/v248),
      (14,0,(28725999346408621155937346655213:ℚ)/v248)
    ]
    let v219:ℚ[X]:= Math.B699.N21.d9 v249
    have v222:Polynomial.C v211 - v216 = v219:= by
      apply Polynomial.funext
      intro x
      norm_num [v211,v216,v212,u92,u88,u89,u90,
        u32,u28,v206,v207,v208,v215,u23,v209,v210,v219,v249,v248,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v224:v215 = ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v215,u23,v209,v210,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v226:Math.B699.N21.d0 v219:= by
      apply u881
      norm_num [v249,v248]
    have v229:Math.B699.N21.d0 (Polynomial.C v211 - v216):= by
      rw [v222]
      exact v226
    have v231:Math.B699.N21.d0 v216:= by
      exact u26 (u36 v206 v207 v208 (by norm_num [v208]))
        v209 v210 (by norm_num [v209]) (by norm_num [v209,v210]) (by norm_num [v210])
    have v232:Math.B699.N21.d0 v217:= by
      exact u26 (u20 v206 v207 0 v208 (by norm_num [v208]))
        v209 v210 (by norm_num [v209]) (by norm_num [v209,v210]) (by norm_num [v210])
    have v234:Math.B699.N21.d0 v218:= by
      exact u26 (u20 v206 v207 1 v208 (by norm_num [v208]))
        v209 v210 (by norm_num [v209]) (by norm_num [v209,v210]) (by norm_num [v210])
    have v235:Math.B699.N20.d1 v211 v217 v216:= by
      exact Math.B699.N20.d1.leaf (lam:= v211) (w:= v217) (f:= v216)
        v232 v231 v229
    have v236:Math.B699.N20.d1 v211 v218 v216:= by
      exact Math.B699.N20.d1.leaf (lam:= v211) (w:= v218) (f:= v216)
        v234 v231 v229
    have v244:v238 = (Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v238,u23,v225,v227,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v278:ℚ:= (18567076935738840000672813:ℚ) / 19807040628566084398385987584
    let v280:ℚ[X]:= u92
    let v275:ℚ:= (3:ℚ) / 8
    let v277:ℚ:= (7:ℚ) / 16
    let v288:ℚ[X]:= u23 v275 v277
    let v289:ℚ[X]:= v280.comp v288
    let v270:ℕ:= 9
    let v271:ℕ:= 5
    let v273:ℚ:= (1:ℚ) / 49
    let v296:ℚ:= 114183647622598391905899939610230784
    let v297:List (ℕ × ℕ × ℚ):= [
      (0,14,(28725999346408621155937346655213:ℚ)/v296),
      (1,13,(376463442296036577145082379572982:ℚ)/v296),
      (2,12,(2283137609199577629327932992984383:ℚ)/v296),
      (3,11,(8491258840928288232471107778401532:ℚ)/v296),
      (4,10,(21630525230653128012763852686617013:ℚ)/v296),
      (5,9,(39914343933461288386348430430294890:ℚ)/v296),
      (6,8,(55004327456786101286845450604625183:ℚ)/v296),
      (7,7,(57487197898857634847852171472085320:ℚ)/v296),
      (8,6,(45773333010532965388636350527159583:ℚ)/v296),
      (9,5,(27620604707444859141679169630622570:ℚ)/v296),
      (10,4,(12428006891751630347475054990322101:ℚ)/v296),
      (11,3,(4041473627014086727760085749880060:ℚ)/v296),
      (12,2,(897401360653104550808063801234751:ℚ)/v296),
      (13,1,(121718502094024129148547517454070:ℚ)/v296),
      (14,0,(7603393173302205392226886620141:ℚ)/v296)
    ]
    let v292:ℚ[X]:= Math.B699.N21.d9 v297
    have v293:Polynomial.C v278 - v289 = v292:= by
      apply Polynomial.funext
      intro x
      norm_num [v278,v289,v280,u92,u88,u89,u90,
        u32,u28,v270,v271,v273,v288,u23,v275,v277,v292,v297,v296,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v295:Math.B699.N21.d0 v292:= by
      apply u881
      norm_num [v297,v296]
    have v250:Math.B699.N21.d0 (Polynomial.C v278 - v289):= by
      rw [v293]
      exact v295
    have v251:Math.B699.N21.d0 v289:= by
      exact u26 (u36 v270 v271 v273 (by norm_num [v273]))
        v275 v277 (by norm_num [v275]) (by norm_num [v275,v277]) (by norm_num [v277])
    let v283:ℚ[X]:= u93
    let v290:ℚ[X]:= v283.comp v288
    have v252:Math.B699.N21.d0 v290:= by
      exact u26 (u20 v270 v271 0 v273 (by norm_num [v273]))
        v275 v277 (by norm_num [v275]) (by norm_num [v275,v277]) (by norm_num [v277])
    let v287:ℚ[X]:= u94
    let v291:ℚ[X]:= v287.comp v288
    have v253:Math.B699.N21.d0 v291:= by
      exact u26 (u20 v270 v271 1 v273 (by norm_num [v273]))
        v275 v277 (by norm_num [v275]) (by norm_num [v275,v277]) (by norm_num [v277])
    have v254:Math.B699.N20.d1 v278 v290 v289:= by
      exact Math.B699.N20.d1.leaf (lam:= v278) (w:= v290) (f:= v289)
        v252 v251 v250
    have v255:Math.B699.N20.d1 v278 v291 v289:= by
      exact Math.B699.N20.d1.leaf (lam:= v278) (w:= v291) (f:= v289)
        v253 v251 v250
    let v256:ℕ:= 9
    let v257:ℕ:= 5
    let v258:ℚ:= (1:ℚ) / 49
    let v259:ℚ:= (7:ℚ) / 16
    let v260:ℚ:= (15:ℚ) / 32
    let v261:ℚ:= (18567076935738840000672813:ℚ) / 19807040628566084398385987584
    let v262:ℚ[X]:= u92
    let v263:ℚ[X]:= u93
    let v264:ℚ[X]:= u94
    let v265:ℚ[X]:= u23 v259 v260
    let v266:ℚ[X]:= v262.comp v265
    let v267:ℚ[X]:= v263.comp v265
    let v268:ℚ[X]:= v264.comp v265
    let v298:ℚ:= 114183647622598391905899939610230784
    let v299:List (ℕ × ℕ × ℚ):= [
      (0,14,(7603393173302205392226886620141:ℚ)/v298),
      (1,13,(98812005592334248662490860295926:ℚ)/v298),
      (2,12,(594389696980167432562132690605375:ℚ)/v298),
      (3,11,(2193091874213351629231961943069948:ℚ)/v298),
      (4,10,(5543514633918291352090399215315381:ℚ)/v298),
      (5,9,(10152235046383168926437147004883818:ℚ)/v298),
      (6,8,(13887277681283399901811472180559135:ℚ)/v298),
      (7,7,(14409281144660565603053715816390984:ℚ)/v298),
      (8,6,(11391641483834144950865693697228063:ℚ)/v298),
      (9,5,(6825702977472838475585469696693098:ℚ)/v298),
      (10,4,(3049843641838663220626643784165813:ℚ)/v298),
      (11,3,(984872338176761697757778720609532:ℚ)/v298),
      (12,2,(217155524597026947342853942744383:ℚ)/v298),
      (13,1,(29244156177759099343897918772982:ℚ)/v298),
      (14,0,(1813487051783669381039580255213:ℚ)/v298)
    ]
    let v269:ℚ[X]:= Math.B699.N21.d9 v299
    have v272:Polynomial.C v261 - v266 = v269:= by
      apply Polynomial.funext
      intro x
      norm_num [v261,v266,v262,u92,u88,u89,u90,
        u32,u28,v256,v257,v258,v265,u23,v259,v260,v269,v299,v298,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v274:v265 = ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v265,u23,v259,v260,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v276:Math.B699.N21.d0 v269:= by
      apply u881
      norm_num [v299,v298]
    have v279:Math.B699.N21.d0 (Polynomial.C v261 - v266):= by
      rw [v272]
      exact v276
    have v281:Math.B699.N21.d0 v266:= by
      exact u26 (u36 v256 v257 v258 (by norm_num [v258]))
        v259 v260 (by norm_num [v259]) (by norm_num [v259,v260]) (by norm_num [v260])
    have v282:Math.B699.N21.d0 v267:= by
      exact u26 (u20 v256 v257 0 v258 (by norm_num [v258]))
        v259 v260 (by norm_num [v259]) (by norm_num [v259,v260]) (by norm_num [v260])
    have v284:Math.B699.N21.d0 v268:= by
      exact u26 (u20 v256 v257 1 v258 (by norm_num [v258]))
        v259 v260 (by norm_num [v259]) (by norm_num [v259,v260]) (by norm_num [v260])
    have v285:Math.B699.N20.d1 v261 v267 v266:= by
      exact Math.B699.N20.d1.leaf (lam:= v261) (w:= v267) (f:= v266)
        v282 v281 v279
    have v286:Math.B699.N20.d1 v261 v268 v266:= by
      exact Math.B699.N20.d1.leaf (lam:= v261) (w:= v268) (f:= v266)
        v284 v281 v279
    have v294:v288 = (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v288,u23,v275,v277,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v328:ℚ:= (18567076935738840000672813:ℚ) / 19807040628566084398385987584
    let v330:ℚ[X]:= u92
    let v325:ℚ:= (15:ℚ) / 32
    let v327:ℚ:= (31:ℚ) / 64
    let v338:ℚ[X]:= u23 v325 v327
    let v339:ℚ[X]:= v330.comp v338
    let v320:ℕ:= 9
    let v321:ℕ:= 5
    let v323:ℚ:= (1:ℚ) / 49
    let v346:ℚ:= 114183647622598391905899939610230784
    let v347:List (ℕ × ℕ × ℚ):= [
      (0,14,(1813487051783669381039580255213:ℚ)/v346),
      (1,13,(23461149998577507329882225972982:ℚ)/v346),
      (2,12,(140469832268811824000562834904383:ℚ)/v346),
      (3,11,(515784956932402918003202373473532:ℚ)/v346),
      (4,10,(1297212983353466616672854118885813:ℚ)/v346),
      (5,9,(2363199119551313405382470979015530:ℚ)/v346),
      (6,8,(3214757178462898969134217870032159:ℚ)/v346),
      (7,7,(3316072659646947098172645321679176:ℚ)/v346),
      (8,6,(2605264026089981126870212339612959:ℚ)/v346),
      (9,5,(1550601123114907657650031472464746:ℚ)/v346),
      (10,4,(687838903481116407423310176201141:ℚ)/v346),
      (11,3,(220381363508081742509385548682492:ℚ)/v346),
      (12,2,(48176497720220989988651290379583:ℚ)/v346),
      (13,1,(6426957266192005282644484916982:ℚ)/v346),
      (14,0,(394421590142730859414195935213:ℚ)/v346)
    ]
    let v342:ℚ[X]:= Math.B699.N21.d9 v347
    have v343:Polynomial.C v328 - v339 = v342:= by
      apply Polynomial.funext
      intro x
      norm_num [v328,v339,v330,u92,u88,u89,u90,
        u32,u28,v320,v321,v323,v338,u23,v325,v327,v342,v347,v346,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v345:Math.B699.N21.d0 v342:= by
      apply u881
      norm_num [v347,v346]
    have v300:Math.B699.N21.d0 (Polynomial.C v328 - v339):= by
      rw [v343]
      exact v345
    have v301:Math.B699.N21.d0 v339:= by
      exact u26 (u36 v320 v321 v323 (by norm_num [v323]))
        v325 v327 (by norm_num [v325]) (by norm_num [v325,v327]) (by norm_num [v327])
    let v333:ℚ[X]:= u93
    let v340:ℚ[X]:= v333.comp v338
    have v302:Math.B699.N21.d0 v340:= by
      exact u26 (u20 v320 v321 0 v323 (by norm_num [v323]))
        v325 v327 (by norm_num [v325]) (by norm_num [v325,v327]) (by norm_num [v327])
    let v337:ℚ[X]:= u94
    let v341:ℚ[X]:= v337.comp v338
    have v303:Math.B699.N21.d0 v341:= by
      exact u26 (u20 v320 v321 1 v323 (by norm_num [v323]))
        v325 v327 (by norm_num [v325]) (by norm_num [v325,v327]) (by norm_num [v327])
    have v304:Math.B699.N20.d1 v328 v340 v339:= by
      exact Math.B699.N20.d1.leaf (lam:= v328) (w:= v340) (f:= v339)
        v302 v301 v300
    have v305:Math.B699.N20.d1 v328 v341 v339:= by
      exact Math.B699.N20.d1.leaf (lam:= v328) (w:= v341) (f:= v339)
        v303 v301 v300
    let v306:ℕ:= 9
    let v307:ℕ:= 5
    let v308:ℚ:= (1:ℚ) / 49
    let v309:ℚ:= (31:ℚ) / 64
    let v310:ℚ:= (63:ℚ) / 128
    let v311:ℚ:= (18567076935738840000672813:ℚ) / 19807040628566084398385987584
    let v312:ℚ[X]:= u92
    let v313:ℚ[X]:= u93
    let v314:ℚ[X]:= u94
    let v315:ℚ[X]:= u23 v309 v310
    let v316:ℚ[X]:= v312.comp v315
    let v317:ℚ[X]:= v313.comp v315
    let v318:ℚ[X]:= v314.comp v315
    let v348:ℚ:= 1826938361961574270494399033763692544
    let v349:List (ℕ × ℕ × ℚ):= [
      (0,14,(6310745442283693750627134963408:ℚ)/v348),
      (1,13,(81109996158421526502013954895712:ℚ)/v348),
      (2,12,(482225786662517431302971398226928:ℚ)/v348),
      (3,11,(1757247882951690149976700289068992:ℚ)/v348),
      (4,10,(4383226494353782977454161649221456:ℚ)/v348),
      (5,9,(7913769566798690742055635920738976:ℚ)/v348),
      (6,8,(10660266637309166980321837933169904:ℚ)/v348),
      (7,7,(10878354628897106924858755418933376:ℚ)/v348),
      (8,6,(8445576246606789537322212612087984:ℚ)/v348),
      (9,5,(4960901555229526092516037597446368:ℚ)/v348),
      (10,4,(2168641120800484387315075141859808:ℚ)/v348),
      (11,3,(683554070728678946486125878772512:ℚ)/v348),
      (12,2,(146714369317621801055557226657628:ℚ)/v348),
      (13,1,(19173465301560931744985882905212:ℚ)/v348),
      (14,0,(1149765573028505617811846574033:ℚ)/v348)
    ]
    let v319:ℚ[X]:= Math.B699.N21.d9 v349
    have v322:Polynomial.C v311 - v316 = v319:= by
      apply Polynomial.funext
      intro x
      norm_num [v311,v316,v312,u92,u88,u89,u90,
        u32,u28,v306,v307,v308,v315,u23,v309,v310,v319,v349,v348,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v324:v315 = ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v315,u23,v309,v310,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v326:Math.B699.N21.d0 v319:= by
      apply u881
      norm_num [v349,v348]
    have v329:Math.B699.N21.d0 (Polynomial.C v311 - v316):= by
      rw [v322]
      exact v326
    have v331:Math.B699.N21.d0 v316:= by
      exact u26 (u36 v306 v307 v308 (by norm_num [v308]))
        v309 v310 (by norm_num [v309]) (by norm_num [v309,v310]) (by norm_num [v310])
    have v332:Math.B699.N21.d0 v317:= by
      exact u26 (u20 v306 v307 0 v308 (by norm_num [v308]))
        v309 v310 (by norm_num [v309]) (by norm_num [v309,v310]) (by norm_num [v310])
    have v334:Math.B699.N21.d0 v318:= by
      exact u26 (u20 v306 v307 1 v308 (by norm_num [v308]))
        v309 v310 (by norm_num [v309]) (by norm_num [v309,v310]) (by norm_num [v310])
    have v335:Math.B699.N20.d1 v311 v317 v316:= by
      exact Math.B699.N20.d1.leaf (lam:= v311) (w:= v317) (f:= v316)
        v332 v331 v329
    have v336:Math.B699.N20.d1 v311 v318 v316:= by
      exact Math.B699.N20.d1.leaf (lam:= v311) (w:= v318) (f:= v316)
        v334 v331 v329
    have v344:v338 = (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v338,u23,v325,v327,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v378:ℚ:= (18567076935738840000672813:ℚ) / 19807040628566084398385987584
    let v380:ℚ[X]:= u92
    let v375:ℚ:= (63:ℚ) / 128
    let v377:ℚ:= (127:ℚ) / 256
    let v388:ℚ[X]:= u23 v375 v377
    let v389:ℚ[X]:= v380.comp v388
    let v370:ℕ:= 9
    let v371:ℕ:= 5
    let v373:ℚ:= (1:ℚ) / 49
    let v396:ℚ:= 29932558122378432847780233769184338640896
    let v397:List (ℕ × ℕ × ℚ):= [
      (0,14,(18837759148499036042229294268956672:ℚ)/v396),
      (1,13,(238523914368092604031890826888593408:ℚ)/v396),
      (2,12,(1395127201247607046098985523148337152:ℚ)/v396),
      (3,11,(4993611027935406117660001507409092608:ℚ)/v396),
      (4,10,(12212567582199990316334344245371446272:ℚ)/v396),
      (5,9,(21573648601705803398282453489628062720:ℚ)/v396),
      (6,8,(28365638276985585077991373580540689152:ℚ)/v396),
      (7,7,(28175122929897151733561792326607877120:ℚ)/v396),
      (8,6,(21223286321046216072746547885236989632:ℚ)/v396),
      (9,5,(12050551314603248850991163076803304000:ℚ)/v396),
      (10,4,(5070292934322827945757964430039416464:ℚ)/v396),
      (11,3,(1530722783597656019427835371380300640:ℚ)/v396),
      (12,2,(312987802151492390022802311375119724:ℚ)/v396),
      (13,1,(38747306290271665221670627798349340:ℚ)/v396),
      (14,0,(2190001295412504182559956534624769:ℚ)/v396)
    ]
    let v392:ℚ[X]:= Math.B699.N21.d9 v397
    have v393:Polynomial.C v378 - v389 = v392:= by
      apply Polynomial.funext
      intro x
      norm_num [v378,v389,v380,u92,u88,u89,u90,
        u32,u28,v370,v371,v373,v388,u23,v375,v377,v392,v397,v396,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v395:Math.B699.N21.d0 v392:= by
      apply u881
      norm_num [v397,v396]
    have v350:Math.B699.N21.d0 (Polynomial.C v378 - v389):= by
      rw [v393]
      exact v395
    have v351:Math.B699.N21.d0 v389:= by
      exact u26 (u36 v370 v371 v373 (by norm_num [v373]))
        v375 v377 (by norm_num [v375]) (by norm_num [v375,v377]) (by norm_num [v377])
    let v383:ℚ[X]:= u93
    let v390:ℚ[X]:= v383.comp v388
    have v352:Math.B699.N21.d0 v390:= by
      exact u26 (u20 v370 v371 0 v373 (by norm_num [v373]))
        v375 v377 (by norm_num [v375]) (by norm_num [v375,v377]) (by norm_num [v377])
    let v387:ℚ[X]:= u94
    let v391:ℚ[X]:= v387.comp v388
    have v353:Math.B699.N21.d0 v391:= by
      exact u26 (u20 v370 v371 1 v373 (by norm_num [v373]))
        v375 v377 (by norm_num [v375]) (by norm_num [v375,v377]) (by norm_num [v377])
    have v354:Math.B699.N20.d1 v378 v390 v389:= by
      exact Math.B699.N20.d1.leaf (lam:= v378) (w:= v390) (f:= v389)
        v352 v351 v350
    have v355:Math.B699.N20.d1 v378 v391 v389:= by
      exact Math.B699.N20.d1.leaf (lam:= v378) (w:= v391) (f:= v389)
        v353 v351 v350
    let v356:ℕ:= 9
    let v357:ℕ:= 5
    let v358:ℚ:= (1:ℚ) / 49
    let v359:ℚ:= (127:ℚ) / 256
    let v360:ℚ:= (1:ℚ) / 2
    let v361:ℚ:= (18567076935738840000672813:ℚ) / 19807040628566084398385987584
    let v362:ℚ[X]:= u92
    let v363:ℚ[X]:= u93
    let v364:ℚ[X]:= u94
    let v365:ℚ[X]:= u23 v359 v360
    let v366:ℚ[X]:= v362.comp v365
    let v367:ℚ[X]:= v363.comp v365
    let v368:ℚ[X]:= v364.comp v365
    let v398:ℚ:= 29932558122378432847780233769184338640896
    let v399:List (ℕ × ℕ × ℚ):= [
      (0,14,(2190001295412504182559956534624769:ℚ)/v398),
      (1,13,(22572729981278451890008155171144192:ℚ)/v398),
      (2,12,(102718310134580616711190167221452800:ℚ)/v398),
      (3,11,(269108677714613971572777657364905984:ℚ)/v398),
      (4,10,(444395418353483445063263918631419904:ℚ)/v398),
      (5,9,(485885795594410045785485261614350336:ℚ)/v398),
      (6,8,(407076236582293692470856834208235520:ℚ)/v398),
      (7,7,(420489232424725051336000726999498752:ℚ)/v398),
      (8,6,(611380275917008812500507026486198272:ℚ)/v398),
      (9,5,(758283833320095322359989591236673536:ℚ)/v398),
      (10,4,(648684761725686815392691134355734528:ℚ)/v398),
      (11,3,(368151821853554480062882145700413440:ℚ)/v398),
      (12,2,(133666787838001993599307312980033536:ℚ)/v398),
      (13,1,(28285729923451187981409495373316096:ℚ)/v398),
      (14,0,(2666028965660631068176683042603008:ℚ)/v398)
    ]
    let v369:ℚ[X]:= Math.B699.N21.d9 v399
    have v372:Polynomial.C v361 - v366 = v369:= by
      apply Polynomial.funext
      intro x
      norm_num [v361,v366,v362,u92,u88,u89,u90,
        u32,u28,v356,v357,v358,v365,u23,v359,v360,v369,v399,v398,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v374:v365 = (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v365,u23,v359,v360,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v376:Math.B699.N21.d0 v369:= by
      apply u881
      norm_num [v399,v398]
    have v379:Math.B699.N21.d0 (Polynomial.C v361 - v366):= by
      rw [v372]
      exact v376
    have v381:Math.B699.N21.d0 v366:= by
      exact u26 (u36 v356 v357 v358 (by norm_num [v358]))
        v359 v360 (by norm_num [v359]) (by norm_num [v359,v360]) (by norm_num [v360])
    have v382:Math.B699.N21.d0 v367:= by
      exact u26 (u20 v356 v357 0 v358 (by norm_num [v358]))
        v359 v360 (by norm_num [v359]) (by norm_num [v359,v360]) (by norm_num [v360])
    have v384:Math.B699.N21.d0 v368:= by
      exact u26 (u20 v356 v357 1 v358 (by norm_num [v358]))
        v359 v360 (by norm_num [v359]) (by norm_num [v359,v360]) (by norm_num [v360])
    have v385:Math.B699.N20.d1 v361 v367 v366:= by
      exact Math.B699.N20.d1.leaf (lam:= v361) (w:= v367) (f:= v366)
        v382 v381 v379
    have v386:Math.B699.N20.d1 v361 v368 v366:= by
      exact Math.B699.N20.d1.leaf (lam:= v361) (w:= v368) (f:= v366)
        v384 v381 v379
    have v394:v388 = (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v388,u23,v375,v377,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v411:ℚ:= (18567076935738840000672813:ℚ) / 19807040628566084398385987584
    let v412:ℚ[X]:= u92
    let v409:ℚ:= (1:ℚ) / 2
    let v410:ℚ:= (1:ℚ)
    let v415:ℚ[X]:= u23 v409 v410
    let v416:ℚ[X]:= v412.comp v415
    let v406:ℕ:= 9
    let v407:ℕ:= 5
    let v408:ℚ:= (1:ℚ) / 49
    let v423:ℚ:= 114183647622598391905899939610230784
    let v424:List (ℕ × ℕ × ℚ):= [
      (0,14,(10170093405382656357485515757:ℚ)/v423),
      (1,13,(4555797125935927000071236294390:ℚ)/v423),
      (2,12,(593358303403150794588771765130559:ℚ)/v423),
      (3,11,(6746582768986281677394617068967164:ℚ)/v423),
      (4,10,(35273628055114021714067285501143477:ℚ)/v423),
      (5,9,(109020152400407803612205522059776874:ℚ)/v423),
      (6,8,(220244246787289874792044264457878815:ℚ)/v423),
      (7,7,(305804343452053946710260369150648648:ℚ)/v423),
      (8,6,(299933333992261416594101955514449183:ℚ)/v423),
      (9,5,(210999328024029278941907248668201834:ℚ)/v423),
      (10,4,(107142539189910424775293351688268213:ℚ)/v423),
      (11,3,(38960923341785609009197582432097532:ℚ)/v423),
      (12,2,(9740230835446402252299395608024383:ℚ)/v423),
      (13,1,(1498497051607138808046060862772982:ℚ)/v423),
      (14,0,(107035503686224200574718633055213:ℚ)/v423)
    ]
    let v419:ℚ[X]:= Math.B699.N21.d9 v424
    have v420:Polynomial.C v411 - v416 = v419:= by
      apply Polynomial.funext
      intro x
      norm_num [v411,v416,v412,u92,u88,u89,u90,
        u32,u28,v406,v407,v408,v415,u23,v409,v410,v419,v424,v423,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v422:Math.B699.N21.d0 v419:= by
      apply u881
      norm_num [v424,v423]
    have v400:Math.B699.N21.d0 (Polynomial.C v411 - v416):= by
      rw [v420]
      exact v422
    have v401:Math.B699.N21.d0 v416:= by
      exact u26 (u36 v406 v407 v408 (by norm_num [v408]))
        v409 v410 (by norm_num [v409]) (by norm_num [v409,v410]) (by norm_num [v410])
    let v413:ℚ[X]:= u93
    let v417:ℚ[X]:= v413.comp v415
    have v402:Math.B699.N21.d0 v417:= by
      exact u26 (u20 v406 v407 0 v408 (by norm_num [v408]))
        v409 v410 (by norm_num [v409]) (by norm_num [v409,v410]) (by norm_num [v410])
    let v414:ℚ[X]:= u94
    let v418:ℚ[X]:= v414.comp v415
    have v403:Math.B699.N21.d0 v418:= by
      exact u26 (u20 v406 v407 1 v408 (by norm_num [v408]))
        v409 v410 (by norm_num [v409]) (by norm_num [v409,v410]) (by norm_num [v410])
    have v404:Math.B699.N20.d1 v411 v417 v416:= by
      exact Math.B699.N20.d1.leaf (lam:= v411) (w:= v417) (f:= v416)
        v402 v401 v400
    have v405:Math.B699.N20.d1 v411 v418 v416:= by
      exact Math.B699.N20.d1.leaf (lam:= v411) (w:= v418) (f:= v416)
        v403 v401 v400
    have v421:v415 = Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v415,u23,v409,v410,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v456:Math.B699.N20.d1 u91 ((u93).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u92).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u91) (w:= ((u93).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u92).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v378,u91,v390,v383,v389,v380,v394,Polynomial.comp_assoc] using v354)
        (by simpa only [v361,u91,v367,v363,v366,v362,v374,Polynomial.comp_assoc] using v385)
    have v457:Math.B699.N20.d1 u91 ((u93).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u92).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u91) (w:= ((u93).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u92).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v311,u91,v317,v313,v316,v312,v324,Polynomial.comp_assoc] using v335)
        (by simpa only [Polynomial.comp_assoc] using v456)
    have v458:Math.B699.N20.d1 u91 ((u93).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u92).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u91) (w:= ((u93).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u92).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v328,u91,v340,v333,v339,v330,v344,Polynomial.comp_assoc] using v304)
        (by simpa only [Polynomial.comp_assoc] using v457)
    have v425:Math.B699.N20.d1 u91 ((u93).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u92).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u91) (w:= ((u93).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u92).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v261,u91,v267,v263,v266,v262,v274,Polynomial.comp_assoc] using v285)
        (by simpa only [Polynomial.comp_assoc] using v458)
    have v426:Math.B699.N20.d1 u91 ((u93).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u92).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u91) (w:= ((u93).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u92).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v278,u91,v290,v283,v289,v280,v294,Polynomial.comp_assoc] using v254)
        (by simpa only [Polynomial.comp_assoc] using v425)
    have v427:Math.B699.N20.d1 u91 ((u93).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u92).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u91) (w:= ((u93).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u92).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [v211,u91,v217,v213,v216,v212,v224,Polynomial.comp_assoc] using v235)
        (by simpa only [Polynomial.comp_assoc] using v426)
    have v428:Math.B699.N20.d1 u91 ((u93).comp (Math.B699.N20.halfLeft)) ((u92).comp (Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u91) (w:= ((u93).comp (Math.B699.N20.halfLeft))) (f:= ((u92).comp (Math.B699.N20.halfLeft)))
        (by simpa only [v228,u91,v240,v233,v239,v230,v244,Polynomial.comp_assoc] using v204)
        (by simpa only [Polynomial.comp_assoc] using v427)
    have v429:Math.B699.N20.d1 u91 (u93) (u92):= by
      exact Math.B699.N20.d1.split (lam:= u91) (w:= (u93)) (f:= (u92))
        (by simpa only [Polynomial.comp_assoc] using v428)
        (by simpa only [v411,u91,v417,v413,v416,v412,v421,Polynomial.comp_assoc] using v404)
    have v430:Math.B699.N20.d1 u91 (u93) (u92):= by
      exact v429
    have v431:Math.B699.N20.d1 u91 ((u94).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u92).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u91) (w:= ((u94).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u92).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v378,u91,v391,v387,v389,v380,v394,Polynomial.comp_assoc] using v355)
        (by simpa only [v361,u91,v368,v364,v366,v362,v374,Polynomial.comp_assoc] using v386)
    have v432:Math.B699.N20.d1 u91 ((u94).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u92).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u91) (w:= ((u94).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u92).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v311,u91,v318,v314,v316,v312,v324,Polynomial.comp_assoc] using v336)
        (by simpa only [Polynomial.comp_assoc] using v431)
    have v433:Math.B699.N20.d1 u84 ((u86).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)) ((u85).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u84) (w:= ((u86).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft))) (f:= ((u85).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)))
        (by simpa only [v78,u84,v90,v83,v89,v80,v94,Polynomial.comp_assoc] using v54)
        (by simpa only [v61,u84,v67,v63,v66,v62,v74,Polynomial.comp_assoc] using v85)
    have v434:Math.B699.N20.d1 u91 ((u94).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u92).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u91) (w:= ((u94).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u92).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v328,u91,v341,v337,v339,v330,v344,Polynomial.comp_assoc] using v305)
        (by simpa only [Polynomial.comp_assoc] using v432)
    have v435:Math.B699.N20.d1 u91 ((u94).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u92).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u91) (w:= ((u94).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u92).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v261,u91,v268,v264,v266,v262,v274,Polynomial.comp_assoc] using v286)
        (by simpa only [Polynomial.comp_assoc] using v434)
    have v436:Math.B699.N20.d1 u91 ((u94).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u92).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u91) (w:= ((u94).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u92).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v278,u91,v291,v287,v289,v280,v294,Polynomial.comp_assoc] using v255)
        (by simpa only [Polynomial.comp_assoc] using v435)
    have v437:Math.B699.N20.d1 u91 ((u94).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u92).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u91) (w:= ((u94).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u92).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [v211,u91,v218,v214,v216,v212,v224,Polynomial.comp_assoc] using v236)
        (by simpa only [Polynomial.comp_assoc] using v436)
    have v438:Math.B699.N20.d1 u91 ((u94).comp (Math.B699.N20.halfLeft)) ((u92).comp (Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u91) (w:= ((u94).comp (Math.B699.N20.halfLeft))) (f:= ((u92).comp (Math.B699.N20.halfLeft)))
        (by simpa only [v228,u91,v241,v237,v239,v230,v244,Polynomial.comp_assoc] using v205)
        (by simpa only [Polynomial.comp_assoc] using v437)
    have v439:Math.B699.N20.d1 u91 (u94) (u92):= by
      exact Math.B699.N20.d1.split (lam:= u91) (w:= (u94)) (f:= (u92))
        (by simpa only [Polynomial.comp_assoc] using v438)
        (by simpa only [v411,u91,v418,v414,v416,v412,v421,Polynomial.comp_assoc] using v405)
    have v440:Math.B699.N20.d1 u91 (u94) (u92):= by
      exact v439
    have v441:Math.B699.N20.d1 u84 ((u86).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u85).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u84) (w:= ((u86).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u85).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [Polynomial.comp_assoc] using v433)
        (by simpa only [v128,u84,v140,v133,v139,v130,v144,Polynomial.comp_assoc] using v104)
    have v442:Math.B699.N20.d1 u84 ((u86).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)) ((u85).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u84) (w:= ((u86).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft))) (f:= ((u85).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)))
        (by simpa only [v11,u84,v17,v13,v16,v12,v24,Polynomial.comp_assoc] using v35)
        (by simpa only [Polynomial.comp_assoc] using v441)
    have v443:Math.B699.N20.d1 u84 ((u86).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)) ((u85).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u84) (w:= ((u86).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft))) (f:= ((u85).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)))
        (by simpa only [Polynomial.comp_assoc] using v442)
        (by simpa only [v111,u84,v117,v113,v116,v112,v124,Polynomial.comp_assoc] using v135)
    have v444:Math.B699.N20.d1 u84 ((u86).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u85).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u84) (w:= ((u86).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u85).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [Polynomial.comp_assoc] using v443)
        (by simpa only [v178,u84,v190,v183,v189,v180,v194,Polynomial.comp_assoc] using v154)
    have v445:Math.B699.N20.d1 u84 ((u86).comp (Math.B699.N20.halfLeft)) ((u85).comp (Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u84) (w:= ((u86).comp (Math.B699.N20.halfLeft))) (f:= ((u85).comp (Math.B699.N20.halfLeft)))
        (by simpa only [v28,u84,v40,v33,v39,v30,v44,Polynomial.comp_assoc] using v4)
        (by simpa only [Polynomial.comp_assoc] using v444)
    have v446:Math.B699.N20.d1 u84 (u86) (u85):= by
      exact Math.B699.N20.d1.split (lam:= u84) (w:= (u86)) (f:= (u85))
        (by simpa only [Polynomial.comp_assoc] using v445)
        (by simpa only [v161,u84,v167,v163,v166,v162,v174,Polynomial.comp_assoc] using v185)
    have v447:Math.B699.N20.d1 u84 (u86) (u85):= by
      exact v446
    have v448:Math.B699.N20.d1 u84 ((u87).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)) ((u85).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u84) (w:= ((u87).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft))) (f:= ((u85).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)))
        (by simpa only [v78,u84,v91,v87,v89,v80,v94,Polynomial.comp_assoc] using v55)
        (by simpa only [v61,u84,v68,v64,v66,v62,v74,Polynomial.comp_assoc] using v86)
    have v449:Math.B699.N20.d1 u84 ((u87).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u85).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u84) (w:= ((u87).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u85).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [Polynomial.comp_assoc] using v448)
        (by simpa only [v128,u84,v141,v137,v139,v130,v144,Polynomial.comp_assoc] using v105)
    have v450:Math.B699.N20.d1 u84 ((u87).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)) ((u85).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u84) (w:= ((u87).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft))) (f:= ((u85).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)))
        (by simpa only [v11,u84,v18,v14,v16,v12,v24,Polynomial.comp_assoc] using v36)
        (by simpa only [Polynomial.comp_assoc] using v449)
    have v451:Math.B699.N20.d1 u84 ((u87).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)) ((u85).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u84) (w:= ((u87).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft))) (f:= ((u85).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)))
        (by simpa only [Polynomial.comp_assoc] using v450)
        (by simpa only [v111,u84,v118,v114,v116,v112,v124,Polynomial.comp_assoc] using v136)
    have v452:Math.B699.N20.d1 u84 ((u87).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u85).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u84) (w:= ((u87).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u85).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [Polynomial.comp_assoc] using v451)
        (by simpa only [v178,u84,v191,v187,v189,v180,v194,Polynomial.comp_assoc] using v155)
    have v453:Math.B699.N20.d1 u84 ((u87).comp (Math.B699.N20.halfLeft)) ((u85).comp (Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u84) (w:= ((u87).comp (Math.B699.N20.halfLeft))) (f:= ((u85).comp (Math.B699.N20.halfLeft)))
        (by simpa only [v28,u84,v41,v37,v39,v30,v44,Polynomial.comp_assoc] using v5)
        (by simpa only [Polynomial.comp_assoc] using v452)
    have v454:Math.B699.N20.d1 u84 (u87) (u85):= by
      exact Math.B699.N20.d1.split (lam:= u84) (w:= (u87)) (f:= (u85))
        (by simpa only [Polynomial.comp_assoc] using v453)
        (by simpa only [v161,u84,v168,v164,v166,v162,v174,Polynomial.comp_assoc] using v186)
    have v455:Math.B699.N20.d1 u84 (u87) (u85):= by
      exact v454
    exact ⟨v447,v455,v430,v440⟩
  have u95:Math.B699.N20.d1 u91 (u93) (u92):= u99.2.2.1
  have u96:Math.B699.N20.d1 u91 (u94) (u92):= u99.2.2.2
  have u97:Math.B699.N20.d1 u84 (u86) (u85):= u99.1
  have u98:Math.B699.N20.d1 u84 (u87) (u85):= u99.2.1
  let u100:ℕ:= 23
  let u101:ℕ:= 15
  let u102:ℚ:= (1:ℚ) / 9
  let u103:ℚ:= (50045175481493571025:ℚ) / 9903520314283042199192993792
  let u104:ℚ[X]:= u31 u100 u101 u102
  let u105:ℚ[X]:= u33 u100 u101 0 u102
  let u106:ℚ[X]:= u33 u100 u101 1 u102
  let u107:ℕ:= 23
  let u108:ℕ:= 15
  exact True.intro
end Math.B699.N14
end Contribution.B699ProfilingAboveGlobal100Endpoint256

#check Contribution.B699ProfilingAboveGlobal100Endpoint256.Math.B699.N14.d24
#print axioms Contribution.B699ProfilingAboveGlobal100Endpoint256.Math.B699.N14.d24
