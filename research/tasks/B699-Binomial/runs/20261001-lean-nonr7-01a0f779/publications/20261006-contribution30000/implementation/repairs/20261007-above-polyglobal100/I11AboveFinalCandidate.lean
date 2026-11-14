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
namespace Contribution.B699I11AboveFinalCandidate
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 10000000
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
namespace Math.B699.N22
end Math.B699.N22
namespace Math.B699.N22.N16
end Math.B699.N22.N16
namespace Math.B699.N23
end Math.B699.N23
namespace B699
theorem d110 {n k p e:ℕ}
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
def d109 (threshold a:ℕ):ℕ:=
  (a.primeFactors.filter (fun p ↦ threshold ≤ p)).prod (fun p ↦ p ^ a.factorization p)
end N3
namespace N4
theorem d115 {n i p e:ℕ}
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
theorem d113 (s:Finset ℕ) (f:ℕ → ℕ) (B:ℕ):
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
    d5 n i j = N3.d109 i (n.choose i):= by
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
  unfold d5 N3.d109
  rw [hsets]
end N4
namespace N4
def d137 (n i:ℕ):ℕ:=
  ((n.choose i).primeFactors.filter (fun p ↦ p < i)).prod
    (fun p ↦ p ^ (n.choose i).factorization p)
theorem d138 {n i:ℕ} (hin:i ≤ n):
    d137 n i * N3.d109 i (n.choose i) = n.choose i:= by
  classical
  unfold d137 N3.d109
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
def d85 (n i r:ℕ):ℕ:=
  ∏ h ∈ Finset.Icc 1 (i - r - 1),(n - i + h).choose h
def d146 (n i j r s:ℕ):ℕ:=
  d19 j s * d19 (n - j) s * d85 n i r
theorem d141 {j k Q:ℕ} (hQ:0 < Q)
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
theorem d116 {n i j p e:ℕ}
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
  have ha:a < i:= d115 hp hpi (by omega) he heval
  have hb:b ≤ a:= by
    by_contra h
    apply havoid
    apply B699.d110 hp (by omega)
      (by omega:1 ≤ e + if p = i then 1 else 0)
    change a < b
    omega
  have hsum:b + c = a:= by
    have hn:j + (n - j) = n:= by omega
    simpa only [hn] using d141 (j:= j) (k:= n - j) hQ
      (by simpa only [hn] using hb)
  have hpow:p ^ e ∣ Q:= Nat.pow_dvd_pow p (by omega)
  have hd:∀ N:ℕ,Q ∣ N - N % Q:= by
    intro N
    refine ⟨N / Q,?_⟩
    have hm:= Nat.mod_add_div N Q
    omega
  exact ⟨a,b,c,ha,hsum,hpow.trans (hd n),hpow.trans (hd j),
    hpow.trans (hd (n - j))⟩
theorem d112 {N h b p e:ℕ}
    (hp:p.Prime) (hhp:h < p) (hhN:h ≤ N)
    (hbh:b < h) (hdiv:p ^ e ∣ N - b):
    p ^ e ∣ N.choose h:= by
  have hd:p ^ e ∣ N.descFactorial h:=
    d35 hhN (by omega) (Nat.sub_le N b) hdiv
  rw [Nat.descFactorial_eq_factorial_mul_choose] at hd
  exact ((hp.coprime_factorial_of_lt hhp).pow_left e).dvd_of_dvd_mul_left hd
theorem d111 {N i s b p e:ℕ}
    (hp:p.Prime) (hpi:i ≤ p) (hsi:s < i) (hiN:i ≤ N)
    (hdiv:p ^ e ∣ N - b):
    p ^ (e * (s - b)) ∣ d19 N s:= by
  have hlocal:∀ h ∈ Finset.Icc (b + 1) s,p ^ e ∣ N.choose h:= by
    intro h hh
    obtain ⟨hlo,hhi⟩:= Finset.mem_Icc.mp hh
    exact d112 hp (by omega) (by omega) (by omega) hdiv
  have hd:= Finset.prod_dvd_prod_of_dvd (s:= Finset.Icc (b + 1) s)
    (fun _ ↦ p ^ e) (fun h ↦ N.choose h) hlocal
  have hsub:Finset.Icc (b + 1) s ⊆ Finset.Icc 1 s:= by
    intro h hh
    simp only [Finset.mem_Icc] at hh ⊢
    omega
  have hd2:= hd.trans (Finset.prod_dvd_prod_of_subset _ _ _ hsub)
  simpa only [Finset.prod_const,Nat.card_Icc,Nat.add_sub_add_right,← pow_mul,
    d19] using hd2
theorem d114 {n i r a p e:ℕ}
    (hp:p.Prime) (hpi:i ≤ p) (hin:i ≤ n) (ha:a < i)
    (hdiv:p ^ e ∣ n - a):
    p ^ (e * (a - r)) ∣ d85 n i r:= by
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
  simpa only [Finset.prod_const,hcard,← pow_mul,d85] using hd2
theorem d148 (a b c r s:ℕ) (hsplit:b + c = a):
    2 * s - r ≤ (s - b) + (s - c) + (a - r):= by
  omega
theorem d117 {n i j r s p e:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2)
    (hsi:s < i) (hp:p.Prime) (hpi:i ≤ p) (he:0 < e)
    (heval:e ≤ (n.choose i).factorization p)
    (havoid:¬ p ∣ n.choose j):
    p ^ (e * (2 * s - r)) ∣ d146 n i j r s:= by
  obtain ⟨a,b,c,ha,hsum,hn,hj,hk⟩:=
    d116 hi hij hjn hp hpi he heval havoid
  have hleft:= d111 hp hpi hsi (by omega:i ≤ j) hj
  have hright:= d111 hp hpi hsi (by omega:i ≤ n - j) hk
  have hmother:= d114 (r:= r) hp hpi (by omega:i ≤ n) ha hn
  have hmul:= Nat.mul_dvd_mul (Nat.mul_dvd_mul hleft hright) hmother
  have hcover:= d148 a b c r s hsum
  have hexp:e * (2 * s - r) ≤ e * (s - b) + e * (s - c) + e * (a - r):= by
    simpa only [Nat.mul_add] using Nat.mul_le_mul_left e hcover
  have hpow:= Nat.pow_dvd_pow p hexp
  apply hpow.trans
  simpa only [pow_add,d146] using hmul
theorem d3 {n i j r s:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i):
    d5 n i j ^ (2 * s - r) ∣ d146 n i j r s:= by
  classical
  unfold d5
  rw [← Finset.prod_pow]
  simp_rw [← pow_mul]
  apply d113
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
    exact d117 hi hij hjn hsi hprime hpi he le_rfl havoid
theorem d4 {n i j r s:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
    (hno:¬ Common n i j):
    N3.d109 i (n.choose i) ^ (2 * s - r) ∣
      d146 n i j r s:= by
  rw [← d6 hno]
  exact d3 hi hij hjn hsi
theorem d20 {N i s:ℕ} (hsi:s < i) (hiN:i ≤ N):
    0 < d19 N s:= by
  unfold d19
  apply Finset.prod_pos
  intro h hh
  have:= (Finset.mem_Icc.mp hh).2
  exact Nat.choose_pos (by omega)
theorem d86 {n i r:ℕ} (hin:i ≤ n):
    0 < d85 n i r:= by
  unfold d85
  apply Finset.prod_pos
  intro h _
  exact Nat.choose_pos (by omega)
end N5
namespace N5
open N4
def d152 (s:ℕ):ℕ:= ∑ h ∈ Finset.Icc 1 s,h
def d151 (s:ℕ):ℕ:= ∏ h ∈ Finset.Icc 1 s,h.factorial
def d150 (i r s:ℕ):ℕ:=
  2 * d152 s + d152 (i - r - 1)
def d149 (i r s:ℕ):ℕ:=
  2 ^ (2 * d152 s) * (d151 s) ^ 2 *
    d151 (i - r - 1)
theorem d21 (N s:ℕ):
    d151 s * d19 N s ≤ N ^ d152 s:= by
  unfold d151 d19
  calc
    _ = ∏ h ∈ Finset.Icc 1 s,h.factorial * N.choose h:=
      (Finset.prod_mul_distrib).symm
    _ ≤ ∏ h ∈ Finset.Icc 1 s,N ^ h:= by
      apply Finset.prod_le_prod (fun _ _ ↦ Nat.zero_le _)
      intro h _
      rw [← Nat.descFactorial_eq_factorial_mul_choose]
      exact Nat.descFactorial_le_pow N h
    _ = _:= by rw [Finset.prod_pow_eq_pow_sum] <;> rfl
theorem d87 {n i r:ℕ} (hin:i ≤ n):
    d151 (i - r - 1) * d85 n i r ≤
      n ^ d152 (i - r - 1):= by
  unfold d151 d85
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
theorem d147 {n i j r s:ℕ}
    (hin:i ≤ n) (hjn:j ≤ n):
    d149 i r s * d146 n i j r s ≤
      n ^ d150 i r s:= by
  let T:= d152 s
  let L:= i - r - 1
  let B:= d151 s
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
  have hm:= d87 (r:= r) hin
  calc
    d149 i r s * d146 n i j r s =
        (2 ^ (2 * T) * (B ^ 2 * (d19 j s * d19 (n - j) s))) *
          (d151 L * d85 n i r):= by
      unfold d149 d146
      dsimp only [T,B,L]
      ring
    _ ≤ n ^ (2 * T) * n ^ d152 L:= Nat.mul_le_mul hchildren hm
    _ = n ^ d150 i r s:= by
      rw [← pow_add] <;> rfl
theorem d90 {n i j r s:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
    (hno:¬ Common n i j):
    d149 i r s * N3.d109 i (n.choose i) ^ (2 * s - r) ≤
      n ^ d150 i r s:= by
  have hZ:0 < d146 n i j r s:= by
    unfold d146
    exact Nat.mul_pos (Nat.mul_pos
      (d20 hsi (by omega:i ≤ j))
      (d20 hsi (by omega:i ≤ n - j)))
      (d86 (by omega:i ≤ n))
  have hv:= Nat.le_of_dvd hZ
    (d4 hi hij hjn hsi hno)
  exact (Nat.mul_le_mul_left (d149 i r s) hv).trans
    (d147 (by omega) (by omega))
end N5
namespace Math.B699.N6
def d105 (Q v:ℕ) (d:ℤ):ℕ:=
  let r:= Int.toNat (((v:ℤ) * d) % (Q:ℤ))
  if r = 0 then Q else r
@[simp] theorem d106 (Q v:ℕ):d105 Q v 0 = Q:= by
  simp [d105]
end Math.B699.N6
namespace N5
open N4
theorem d140 (n i:ℕ):
    d137 n i = ((Finset.range i).filter Nat.Prime).prod
      (fun p ↦ p ^ (n.choose i).factorization p):= by
  classical
  unfold d137
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
theorem d154 (s:ℕ):0 < d151 s:= by
  unfold d151
  apply Finset.prod_pos
  intro h _
  exact Nat.factorial_pos h
theorem d153 (i r s:ℕ):0 < d149 i r s:= by
  unfold d149
  exact Nat.mul_pos
    (Nat.mul_pos (Nat.pow_pos (by decide:0 < 2))
      (Nat.pow_pos (d154 s)))
    (d154 _)
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
theorem d107 {n i:ℕ} (hn:0 < n) (hin:i ≤ n)
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
theorem d89 {n i j r s:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
    (hlarge:i * (i - 1) ≤ n) (hno:¬ Common n i j):
    d149 i r s * n ^ (i * (2 * s - r)) ≤
      (2 * i.factorial) ^ (2 * s - r) *
        (d137 n i) ^ (2 * s - r) * n ^ d150 i r s:= by
  have hn:0 < n:= by omega
  have hin:i ≤ n:= by omega
  have hhalf:= d107 hn hin hlarge
  have hv:= d90 (r:= r) hi hij hjn hsi hno
  have hdesc:n.descFactorial i =
      i.factorial * (d137 n i * N3.d109 i (n.choose i)):= by
    rw [d138 hin,Nat.descFactorial_eq_factorial_mul_choose]
  calc
    _ = d149 i r s * (n ^ i) ^ (2 * s - r):= by rw [← pow_mul]
    _ ≤ d149 i r s * (2 * n.descFactorial i) ^ (2 * s - r):=
      Nat.mul_le_mul_left _ (Nat.pow_le_pow_left hhalf _)
    _ = (2 * i.factorial) ^ (2 * s - r) * (d137 n i) ^ (2 * s - r) *
        (d149 i r s *
          N3.d109 i (n.choose i) ^ (2 * s - r)):= by
      rw [hdesc]
      simp only [mul_pow]
      ring
    _ ≤ _:= Nat.mul_le_mul_left _ hv
end N5
namespace N5.N15
open N4
def d108 (n p:ℕ):ℕ:= p ^ (n.choose 11).factorization p
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
theorem d139 (k n p:ℕ) (hk:1 ≤ k) (hp:p.Prime):
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
private theorem d136 {n i:ℕ} (hin:i ≤ n):
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
    N1.d139 i (n - i) p hi hp
  have hjBounds:= Finset.mem_Icc.mp hj
  have hchoose:n.choose i ≠ 0:= (Nat.choose_pos hin).ne'
  have hfactorial:i.factorial = i * (i - 1).factorial:= by
    simpa only [show i - 1 + 1 = i by omega] using Nat.factorial_succ (i - 1)
  have hfactorization:i.factorial.factorization p =
      i.factorization p + (i - 1).factorial.factorization p:= by
    rw [hfactorial,Nat.factorization_mul (by omega:i ≠ 0)
      (Nat.factorial_ne_zero (i - 1)),Finsupp.add_apply]
  rw [d136 hin,
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
  equation:cofactor * d108 n p = n - offset
end N5.N15
namespace Math.B699.N21
open Polynomial
noncomputable def moment (p:ℚ[X]):ℚ:=
  p.sum fun n a => a / ((n:ℚ) + 1)
@[simp] theorem d84:moment (0:ℚ[X]) = 0:= by
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
private theorem d88 (n:ℕ):(n:ℚ) + 1 ≠ 0:= by
  have h:((n + 1:ℕ):ℚ) ≠ 0:= Nat.cast_ne_zero.mpr (Nat.succ_ne_zero n)
  simpa only [Nat.cast_add,Nat.cast_one] using h
@[simp] theorem d11 (a:ℕ):
    d10 a 0 = 1 / ((a:ℚ) + 1):= by
  unfold d10
  simp only [Nat.add_zero,Nat.factorial_zero,Nat.cast_one,mul_one]
  rw [Nat.factorial_succ]
  simp only [Nat.cast_mul,Nat.cast_add,Nat.cast_one]
  field_simp [d43 a,d88 a] <;> ring
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
namespace Math.B699.N22
open Polynomial Math.B699.N21
open scoped BigOperators
theorem d83 {ι:Type*} (s:Finset ι) (f:ι → ℚ[X]):
    moment (∑ i ∈ s,f i) = ∑ i ∈ s,moment (f i):= by
  classical
  simpa only [d75] using (map_sum d74 f s)
end Math.B699.N22
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
theorem d124 (p Z N alpha a b u v:ℕ)
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
  exact ⟨d124 p Z N alpha a b u v hb hv hp hZ hrate,
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
def d99 (A B C r:ℕ):ℤ:=
  (-1:ℤ) ^ (C + r) * ((A + B + C + 1).choose r:ℤ) *
    ((A + C - r).choose A:ℤ)
def d119 (A B C r:ℕ):ℕ:=
  (A + C - r).choose C * (B + r).choose r
def d118 (A B C r:ℕ):ℤ:=
  (-1:ℤ) ^ C * (d119 A B C r:ℤ)
def d36 (A B C r:ℕ):ℤ:=
  (-1:ℤ) ^ r * ((A + r).choose r:ℤ) *
    ((A + B + C + 1).choose (A + C + r + 1):ℤ)
noncomputable def d101 (A B C:ℕ):ℤ[X]:=
  d22 C (d99 A B C)
noncomputable def d121 (A B C:ℕ):ℤ[X]:=
  d22 A (d118 A B C)
noncomputable def d37 (A B C:ℕ):ℤ[X]:=
  d22 B (d36 A B C)
def qContent (A B C:ℕ):ℕ:=
  (Finset.range (A + 1)).gcd (d119 A B C)
@[simp] theorem d102 (A B C:ℕ):
    (d101 A B C).coeff 0 = (-1:ℤ) ^ C * ((A + C).choose A:ℤ):= by
  simp [d101,d23,d99]
@[simp] theorem d122 (A B C:ℕ):
    (d121 A B C).coeff 0 = (-1:ℤ) ^ C * ((A + C).choose C:ℤ):= by
  simp [d121,d23,d118,d119]
@[simp] theorem d38 (A B C:ℕ):
    (d37 A B C).coeff 0 =
      ((A + B + C + 1).choose (A + C + 1):ℤ):= by
  simp [d37,d23,d36]
def d120 (A B C r:ℕ):ℤ:=
  d118 A B C r / (qContent A B C:ℤ)
end Math.B699.N18
namespace Math.B699.N19
open scoped BigOperators
open Math.B699.N18
def d100 (u B r:ℕ):ℤ:=
  d99 u B u r / (qContent u B u:ℤ)
end Math.B699.N19
namespace Math.B699.N22.N16
variable {R:Type*} [CommRing R]
open scoped BigOperators
private theorem d104 (C r:ℕ) (hr:r ≤ C):
    (-1:R) ^ (C - r) = (-1:R) ^ (C + r):= by
  conv_lhs => rw [neg_one_pow_eq_pow_mod_two]
  conv_rhs => rw [neg_one_pow_eq_pow_mod_two]
  congr 1
  omega
theorem d103 (A B C:ℕ) (z u:R):
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
  rw [neg_pow,d104 C r hle,hexp,pow_add]
  ring
theorem d123 (A B C:ℕ) (z u:R):
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
def d135 (u v:ℕ):ℚ:=
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
theorem d134
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
theorem d145
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
theorem d142
    {F:ℕ → ℚ} {B:ℚ} (hB:0 < B) (hF:0 < F 1)
    (hstep:∀ m:ℕ,1 ≤ m →
      F (m + 1) ≤ F m * (B * ((m:ℚ) + 1) ^ 2 / ((m:ℚ) * (m + 2))))
    {m:ℕ} (hm:1 ≤ m):
    F m < (2 * F 1 / B) * B ^ m:= by
  have hmQ:0 < (m:ℚ):= Nat.cast_pos.mpr (by omega)
  have hpos:0 < (2 * F 1 / B) * B ^ m:= by positivity
  calc
    F m ≤ (2 * F 1 / B) * B ^ m * (m:ℚ) / ((m:ℚ) + 1):=
      d145 hB hstep hm
    _ < (2 * F 1 / B) * B ^ m:= by
      apply (div_lt_iff₀ (show 0 < (m:ℚ) + 1 by positivity)).2
      nlinarith
end Math.B699.N8
namespace Math.B699.N10
open Math.B699.N23
open Math.B699.N8
def d94 (x:ℚ):ℚ:=
  (4 * x) * (4 * x + 1) * (4 * x + 2) * (4 * x + 3) * x
def d93 (x:ℚ):ℚ:=
  (4 * x) * (4 * x + 1) * (4 * x + 2) * (4 * x + 3) * (x + 1)
def d26 (x:ℚ):ℚ:=
  (3 * x + 1) * (3 * x + 2) * (3 * x + 3) * (2 * x) * (2 * x + 1)
def d125 (x:ℚ):ℚ:= d94 x / d26 x
def ratioOne (x:ℚ):ℚ:= d93 x / d26 x
end Math.B699.N10
namespace Math.B699.N8
def d97 (m:ℚ):ℚ:=
  (8 * m + 1) * (8 * m + 2) * (8 * m + 3) * (8 * m + 4) * (8 * m + 5) * (8 * m + 6) * (8 * m + 7)
def d29 (m:ℚ):ℚ:=
  (3 * m + 1) * (3 * m + 2) * (3 * m + 1) * (3 * m + 2) * (2 * m + 1)
def d128 (m:ℚ):ℚ:=
  8 * d97 m /
    (2 * 3 ^ 2 * m * (m + 1) * d29 m)
theorem d17 (x:ℚ) (hx:0 ≤ x):
    8 * 729 * (x + 3) * d97 (x + 1) ≤
      4194304 * 2 * 3 ^ 2 * (x + 2) ^ 3 * d29 (x + 1):= by
  apply sub_nonneg.mp
  calc
    0 ≤ 1152 * (136578525 + x * (531865645 + x * (860032554 + x * (739144464 + x * (356098016 + x * (91183104 + x * 9695232)))))):= by positivity
    _ = 4194304 * 2 * 3 ^ 2 * (x + 2) ^ 3 * d29 (x + 1) -
        8 * 729 * (x + 3) * d97 (x + 1):= by
      unfold d97 d29
      ring
theorem d132 (m:ℚ) (hm:1 ≤ m):
    d128 m ≤ beta 5 3 * (m + 1) ^ 2 / (m * (m + 2)):= by
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
  exact d134 (by norm_num) (by norm_num) (by norm_num)
    hmpos hW hcert
theorem d57 (k:ℕ):
    d44 5 3 0 (k + 2) =
      d44 5 3 0 (k + 1) * d128 ((k:ℚ) + 1):= by
  change (((8 * (k + 2)).factorial:ℕ):ℚ) /
      (((((3 * (k + 2)).factorial:ℕ):ℚ) ^ 2) *
        (((2 * (k + 2) - 1).factorial:ℕ):ℚ)) =
    (((8 * (k + 1)).factorial:ℕ):ℚ) /
      (((((3 * (k + 1)).factorial:ℕ):ℚ) ^ 2) *
        (((2 * (k + 1) - 1).factorial:ℕ):ℚ)) * d128 ((k:ℚ) + 1)
  have ha:8 * (k + 2) = 8 * (k + 1) + 8:= by omega
  have hd:3 * (k + 2) = 3 * (k + 1) + 3:= by omega
  have hb:2 * (k + 2) - 1 = (2 * (k + 1) - 1) + 2:= by omega
  have hp:(2 * (k + 1) - 1) + 1 = 2 * (k + 1):= by omega
  rw [ha,hd,hb,d46 (8 * (k + 1)) 8,
    d46 (3 * (k + 1)) 3,
    d46 (2 * (k + 1) - 1) 2,hp]
  simp only [Nat.ascFactorial_succ,Nat.ascFactorial_zero,
    Nat.cast_mul,Nat.cast_add,Nat.cast_one,Nat.cast_ofNat]
  unfold d128 d97 d29
  field_simp
  <;> ring
theorem d54 (m:ℕ) (hm:1 ≤ m):
    d44 5 3 0 (m + 1) ≤ d44 5 3 0 m *
      (beta 5 3 * ((m:ℚ) + 1) ^ 2 / ((m:ℚ) * (m + 2))):= by
  obtain ⟨k,rfl⟩:∃ k,m = k + 1:= Nat.exists_eq_add_of_le' hm
  rw [d57]
  have hk:0 ≤ (k:ℚ):= Nat.cast_nonneg k
  have hratio:= d132 ((k:ℚ) + 1) (by linarith)
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
  exact d142 (by norm_num [beta]) (d45 5 3 delta 1)
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
  | .evenZero,k => d135 (8 * k) (2 * k - 1)
  | .evenOne,k => d135 (8 * k - 1) (2 * k)
  | .oddZero,k => d135 (8 * k + 4) (2 * k)
  | .oddOne,k => d135 (8 * k + 3) (2 * k + 1)
def d92:Track → ℚ → ℚ
  | .evenZero,x => (9 * x) * (9 * x + 1) * (9 * x + 2) * (9 * x + 3) * (9 * x + 4) * (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (x)
  | .evenOne,x => (9 * x) * (9 * x + 1) * (9 * x + 2) * (9 * x + 3) * (9 * x + 4) * (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (x + 1)
  | .oddZero,x => (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (9 * x + 9) * (9 * x + 10) * (9 * x + 11) * (9 * x + 12) * (9 * x + 13) * (x + 1)
  | .oddOne,x => (9 * x + 4) * (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (9 * x + 9) * (9 * x + 10) * (9 * x + 11) * (9 * x + 12) * (x + 1)
def d26:Track → ℚ → ℚ
  | .evenZero,x => (8 * x + 1) * (8 * x + 2) * (8 * x + 3) * (8 * x + 4) * (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (8 * x + 8) * (2 * x) * (2 * x + 1)
  | .evenOne,x => (8 * x) * (8 * x + 1) * (8 * x + 2) * (8 * x + 3) * (8 * x + 4) * (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (2 * x + 1) * (2 * x + 2)
  | .oddZero,x => (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (8 * x + 8) * (8 * x + 9) * (8 * x + 10) * (8 * x + 11) * (8 * x + 12) * (2 * x + 1) * (2 * x + 2)
  | .oddOne,x => (8 * x + 4) * (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (8 * x + 8) * (8 * x + 9) * (8 * x + 10) * (8 * x + 11) * (2 * x + 2) * (2 * x + 3)
def ratio (t:Track) (x:ℚ):ℚ:= d92 t x / d26 t x
def d143:ℚ:= 602791 / 500000
def d144:ℚ:= d143 ^ 8
end Math.B699.N13
namespace Math.B699.N13
open Math.B699.N23
open Math.B699.N18
def d91 (t:Track) (k:ℕ):ℚ:=
  divisor t k / (d143 ^ (4 * rho t) * d144 ^ k)
end Math.B699.N13
namespace Math.B699.N8
def d98 (m:ℚ):ℚ:=
  (9 * m + 1) * (9 * m + 2) * (9 * m + 3) * (9 * m + 4) * (9 * m + 5) * (9 * m + 6) * (9 * m + 7) * (9 * m + 8)
def d30 (m:ℚ):ℚ:=
  (4 * m + 1) * (4 * m + 2) * (4 * m + 3) * (4 * m + 1) * (4 * m + 2) * (4 * m + 3)
def d129 (m:ℚ):ℚ:=
  9 * d98 m /
    (1 * 4 ^ 2 * m * (m + 1) * d30 m)
theorem d18 (x:ℚ) (hx:0 ≤ x):
    9 * 65536 * (x + 3) * d98 (x + 1) ≤
      387420489 * 1 * 4 ^ 2 * (x + 2) ^ 3 * d30 (x + 1):= by
  apply sub_nonneg.mp
  calc
    0 ≤ 5184 * (87290032200 + x * (402300498380 + x * (791641303398 + x * (862210695105 + x * (561361285764 + x * (218489584356 + x * (47072918016 + x * 4330889856))))))):= by positivity
    _ = 387420489 * 1 * 4 ^ 2 * (x + 2) ^ 3 * d30 (x + 1) -
        9 * 65536 * (x + 3) * d98 (x + 1):= by
      unfold d98 d30
      ring
theorem d133 (m:ℚ) (hm:1 ≤ m):
    d129 m ≤ beta 5 4 * (m + 1) ^ 2 / (m * (m + 2)):= by
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
  exact d134 (by norm_num) (by norm_num) (by norm_num)
    hmpos hW hcert
theorem d58 (k:ℕ):
    d44 5 4 0 (k + 2) =
      d44 5 4 0 (k + 1) * d129 ((k:ℚ) + 1):= by
  change (((9 * (k + 2)).factorial:ℕ):ℚ) /
      (((((4 * (k + 2)).factorial:ℕ):ℚ) ^ 2) *
        (((1 * (k + 2) - 1).factorial:ℕ):ℚ)) =
    (((9 * (k + 1)).factorial:ℕ):ℚ) /
      (((((4 * (k + 1)).factorial:ℕ):ℚ) ^ 2) *
        (((1 * (k + 1) - 1).factorial:ℕ):ℚ)) * d129 ((k:ℚ) + 1)
  have ha:9 * (k + 2) = 9 * (k + 1) + 9:= by omega
  have hd:4 * (k + 2) = 4 * (k + 1) + 4:= by omega
  have hb:1 * (k + 2) - 1 = (1 * (k + 1) - 1) + 1:= by omega
  have hp:(1 * (k + 1) - 1) + 1 = 1 * (k + 1):= by omega
  rw [ha,hd,hb,d46 (9 * (k + 1)) 9,
    d46 (4 * (k + 1)) 4,
    d46 (1 * (k + 1) - 1) 1,hp]
  simp only [Nat.ascFactorial_succ,Nat.ascFactorial_zero,
    Nat.cast_mul,Nat.cast_add,Nat.cast_one,Nat.cast_ofNat]
  unfold d129 d98 d30
  field_simp
  <;> ring
end Math.B699.N8
namespace Math.B699.N11
open Math.B699.N23 Math.B699.N8
def d143:ℚ:= 1302991 / 1000000
def d144:ℚ:= d143 ^ 5
def divisor (m:ℕ):ℚ:= d135 (5 * m) (4 * m - 1)
def d92 (x:ℚ):ℚ:= (7 * x) * (7 * x + 1) * (7 * x + 2) * (7 * x + 3) * (7 * x + 4) * (7 * x + 5) * (7 * x + 6) * (2 * x) * (2 * x + 1)
def d26 (x:ℚ):ℚ:= (5 * x + 1) * (5 * x + 2) * (5 * x + 3) * (5 * x + 4) * (5 * x + 5) * (4 * x) * (4 * x + 1) * (4 * x + 2) * (4 * x + 3)
def ratio (x:ℚ):ℚ:= d92 x / d26 x
end Math.B699.N11
namespace Math.B699.N11
open Math.B699.N23
open Math.B699.N18
def d91 (m:ℕ):ℚ:= divisor m / d144 ^ m
end Math.B699.N11
namespace Math.B699.N12
open Math.B699.N23 Math.B699.N8
def d92 (x:ℚ):ℚ:= (19 * x) * (19 * x + 1) * (19 * x + 2) * (19 * x + 3) * (19 * x + 4) * (19 * x + 5) * (19 * x + 6) * (19 * x + 7) * (19 * x + 8) * (19 * x + 9) * (19 * x + 10) * (19 * x + 11) * (19 * x + 12) * (19 * x + 13) * (19 * x + 14) * (19 * x + 15) * (19 * x + 16) * (19 * x + 17) * (19 * x + 18) * (4 * x) * (4 * x + 1) * (4 * x + 2) * (4 * x + 3)
def d26 (x:ℚ):ℚ:= (15 * x + 1) * (15 * x + 2) * (15 * x + 3) * (15 * x + 4) * (15 * x + 5) * (15 * x + 6) * (15 * x + 7) * (15 * x + 8) * (15 * x + 9) * (15 * x + 10) * (15 * x + 11) * (15 * x + 12) * (15 * x + 13) * (15 * x + 14) * (15 * x + 15) * (8 * x) * (8 * x + 1) * (8 * x + 2) * (8 * x + 3) * (8 * x + 4) * (8 * x + 5) * (8 * x + 6) * (8 * x + 7)
def ratio (x:ℚ):ℚ:= d92 x / d26 x
end Math.B699.N12
namespace Math.B699.N8
def d96 (m:ℚ):ℚ:=
  (38 * m + 1) * (38 * m + 2) * (38 * m + 3) * (38 * m + 4) * (38 * m + 5) * (38 * m + 6) * (38 * m + 7) * (38 * m + 8) * (38 * m + 9) * (38 * m + 10) * (38 * m + 11) * (38 * m + 12) * (38 * m + 13) * (38 * m + 14) * (38 * m + 15) * (38 * m + 16) * (38 * m + 17) * (38 * m + 18) * (38 * m + 19) * (38 * m + 20) * (38 * m + 21) * (38 * m + 22) * (38 * m + 23) * (38 * m + 24) * (38 * m + 25) * (38 * m + 26) * (38 * m + 27) * (38 * m + 28) * (38 * m + 29) * (38 * m + 30) * (38 * m + 31) * (38 * m + 32) * (38 * m + 33) * (38 * m + 34) * (38 * m + 35) * (38 * m + 36) * (38 * m + 37)
def d28 (m:ℚ):ℚ:=
  (15 * m + 1) * (15 * m + 2) * (15 * m + 3) * (15 * m + 4) * (15 * m + 5) * (15 * m + 6) * (15 * m + 7) * (15 * m + 8) * (15 * m + 9) * (15 * m + 10) * (15 * m + 11) * (15 * m + 12) * (15 * m + 13) * (15 * m + 14) * (15 * m + 1) * (15 * m + 2) * (15 * m + 3) * (15 * m + 4) * (15 * m + 5) * (15 * m + 6) * (15 * m + 7) * (15 * m + 8) * (15 * m + 9) * (15 * m + 10) * (15 * m + 11) * (15 * m + 12) * (15 * m + 13) * (15 * m + 14) * (8 * m + 1) * (8 * m + 2) * (8 * m + 3) * (8 * m + 4) * (8 * m + 5) * (8 * m + 6) * (8 * m + 7)
def d127 (m:ℚ):ℚ:=
  38 * d96 m /
    (8 * 15 ^ 2 * m * (m + 1) * d28 m)
theorem d16 (x:ℚ) (hx:0 ≤ x):
    38 * 191751059232884086668491363525390625 * (x + 3) * d96 (x + 1) ≤
      64129340766667961004998043349750267214506111671353344 * 8 * 15 ^ 2 * (x + 2) ^ 3 * d28 (x + 1):= by
  apply sub_nonneg.mp
  calc
    0 ≤ 174626316288000000 * (1903139924356617609550013200361382898937643300383986979017412859100571622969016320000 + x * (46837993467208038603096777861250221334488908857640263508241456021232936823144838144000 + x * (559788131567413464296497105690984465712244359260129847638238455649584345299853712870400 + x * (4328444185518785535930753384650518437285643772146102187055608854016957306472696498397440 + x * (24338857839565261878908878878095542598351568977914530917269696482529006785994929163551552 + x * (106061896518866727962057687105396804196901853791010798240539857373757664397056611578875600 + x * (372747472443468654370626566767137466251166326958113633603119523522558940318526960163379296 + x * (1085548724163244262452159789475288840187764141713022901525566083866238332755325853488661240 + x * (2671382867940362715416154435391556212966349886525353228733708217715510677322101336885909764 + x * (5636360459533697236956798969444959397665133961915739279301877498049085819521409072153650045 + x * (10310478591224897150892767791897459880819297278341896547582529016361210547249326354546288536 + x * (16494756251619302721954000733016203125186964134294989443620818476690760517552517748946113445 + x * (23236040087401444521521154181839861581137005198758687149507287615379840229234912451585505354 + x * (28977400995329524488394319187585685402040030018316343615948718983634425285062706358398272230 + x * (32126363700934074295148049046940883758573677021107112451744284179051441784757175280930796688 + x * (31766488109105092911457442397776823970174624014277305101665099624500696524479380391795182250 + x * (28081452179251235848034026785807109019802261991652997153559645958270333256339736683675247000 + x * (22229387207884328224482254649227710455214689212206057634720980131378768801680420464360273125 + x * (15772924723685391889300787672217007844986936972989645814542582584561191241346670987825895000 + x * (10034888714302542355373426565679740255339430663493211350367438759530134851140617405001953125 + x * (5722577645771962638124154657918807107778944755816485929234687757102376454259742856207031250 + x * (2922351021180233644983336261465061325419369683611158763201996649940633862594311634156250000 + x * (1334202546145286468608196805136425415173799796335817146113559736893788436278041402156250000 + x * (543281109557060466191960926050655042580230710073624401691266528829305927688733510742187500 + x * (196671858245932795847539889565618887104881122248586698365028367089411775995895578125000000 + x * (63030807700144165826991841057103712591225856915851469119493977238530837133469487304687500 + x * (17787977832667555088890657130227354456153932456485879618781655432672253108480185546875000 + x * (4390390982004785867975436586425463493100364399231488778456605242025096456860961914062500 + x * (939539694778788725761719667314028602563480387214500070145633959615397200131835937500000 + x * (172394229934031447101793413525098865504839126815207649100942900838374503781127929687500 + x * (26730331028129341207591122077155700783906455793374104012444521812735959429931640625000 + x * (3434701706946471130350012883132770040435656312201291499386450946124115371704101562500 + x * (355955395790910354229581083297710653133345675566476856036485183638039398193359375000 + x * (28590427783718254124769297174285091012419172258762592793386501508453369140625000000 + x * (1670073588409406736750880498675591611153794485800277703377644517199707031250000000 + x * (63119693223957421829871365373274823137748846060582519026809667968750000000000000 + x * (1158578637808315100262511269342916831867422391459811349402539062500000000000000))))))))))))))))))))))))))))))))))))):= by positivity
    _ = 64129340766667961004998043349750267214506111671353344 * 8 * 15 ^ 2 * (x + 2) ^ 3 * d28 (x + 1) -
        38 * 191751059232884086668491363525390625 * (x + 3) * d96 (x + 1):= by
      unfold d96 d28
      ring
theorem d131 (m:ℚ) (hm:1 ≤ m):
    d127 m ≤ beta 23 15 * (m + 1) ^ 2 / (m * (m + 2)):= by
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
  exact d134 (by norm_num) (by norm_num) (by norm_num)
    hmpos hW hcert
theorem d56 (k:ℕ):
    d44 23 15 0 (k + 2) =
      d44 23 15 0 (k + 1) * d127 ((k:ℚ) + 1):= by
  change (((38 * (k + 2)).factorial:ℕ):ℚ) /
      (((((15 * (k + 2)).factorial:ℕ):ℚ) ^ 2) *
        (((8 * (k + 2) - 1).factorial:ℕ):ℚ)) =
    (((38 * (k + 1)).factorial:ℕ):ℚ) /
      (((((15 * (k + 1)).factorial:ℕ):ℚ) ^ 2) *
        (((8 * (k + 1) - 1).factorial:ℕ):ℚ)) * d127 ((k:ℚ) + 1)
  have ha:38 * (k + 2) = 38 * (k + 1) + 38:= by omega
  have hd:15 * (k + 2) = 15 * (k + 1) + 15:= by omega
  have hb:8 * (k + 2) - 1 = (8 * (k + 1) - 1) + 8:= by omega
  have hp:(8 * (k + 1) - 1) + 1 = 8 * (k + 1):= by omega
  rw [ha,hd,hb,d46 (38 * (k + 1)) 38,
    d46 (15 * (k + 1)) 15,
    d46 (8 * (k + 1) - 1) 8,hp]
  simp only [Nat.ascFactorial_succ,Nat.ascFactorial_zero,
    Nat.cast_mul,Nat.cast_add,Nat.cast_one,Nat.cast_ofNat]
  unfold d127 d96 d28
  field_simp
  <;> ring
theorem d53 (m:ℕ) (hm:1 ≤ m):
    d44 23 15 0 (m + 1) ≤ d44 23 15 0 m *
      (beta 23 15 * ((m:ℚ) + 1) ^ 2 / ((m:ℚ) * (m + 2))):= by
  obtain ⟨k,rfl⟩:∃ k,m = k + 1:= Nat.exists_eq_add_of_le' hm
  rw [d56]
  have hk:0 ≤ (k:ℚ):= Nat.cast_nonneg k
  have hratio:= d131 ((k:ℚ) + 1) (by linarith)
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
  exact d142 (by norm_num [beta]) (d45 23 15 delta 1)
    (fun n hn => d50 delta n hdelta hn) hm
end Math.B699.N8
namespace Math.B699.N9
open Math.B699.N23 Math.B699.N8
def d92 (x:ℚ):ℚ:= (9 * x) * (9 * x + 1) * (9 * x + 2) * (9 * x + 3) * (9 * x + 4) * (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (2 * x) * (2 * x + 1)
def d26 (x:ℚ):ℚ:= (7 * x + 1) * (7 * x + 2) * (7 * x + 3) * (7 * x + 4) * (7 * x + 5) * (7 * x + 6) * (7 * x + 7) * (4 * x) * (4 * x + 1) * (4 * x + 2) * (4 * x + 3)
def ratio (x:ℚ):ℚ:= d92 x / d26 x
end Math.B699.N9
namespace Math.B699.N8
def d95 (m:ℚ):ℚ:=
  (18 * m + 1) * (18 * m + 2) * (18 * m + 3) * (18 * m + 4) * (18 * m + 5) * (18 * m + 6) * (18 * m + 7) * (18 * m + 8) * (18 * m + 9) * (18 * m + 10) * (18 * m + 11) * (18 * m + 12) * (18 * m + 13) * (18 * m + 14) * (18 * m + 15) * (18 * m + 16) * (18 * m + 17)
def d27 (m:ℚ):ℚ:=
  (7 * m + 1) * (7 * m + 2) * (7 * m + 3) * (7 * m + 4) * (7 * m + 5) * (7 * m + 6) * (7 * m + 1) * (7 * m + 2) * (7 * m + 3) * (7 * m + 4) * (7 * m + 5) * (7 * m + 6) * (4 * m + 1) * (4 * m + 2) * (4 * m + 3)
def d126 (m:ℚ):ℚ:=
  18 * d95 m /
    (4 * 7 ^ 2 * m * (m + 1) * d27 m)
theorem d15 (x:ℚ) (hx:0 ≤ x):
    18 * 678223072849 * (x + 3) * d95 (x + 1) ≤
      153696906544127099904 * 4 * 7 ^ 2 * (x + 2) ^ 3 * d27 (x + 1):= by
  apply sub_nonneg.mp
  calc
    0 ≤ 164602368 * (110241562556209198845066336000 + x * (1187453905002991933641540241200 + x * (5983779524056672196683729952260 + x * (18725305113472259124139253307552 + x * (40729656441097585706093084110059 + x * (65294335350947065759744925165967 + x * (79804742383095184112811595305588 + x * (75858453630510332238821724032106 + x * (56675430893659432955626359692271 + x * (33392517669322858479192878823831 + x * (15464156259855364037691801651054 + x * (5569801509788070352067060767872 + x * (1529548033875043581131775993216 + x * (309597915550113867297439847952 + x * (43560928625433641348263047648 + x * (3806566550301503678085259920 + x * (155634839555301083447505504))))))))))))))))):= by positivity
    _ = 153696906544127099904 * 4 * 7 ^ 2 * (x + 2) ^ 3 * d27 (x + 1) -
        18 * 678223072849 * (x + 3) * d95 (x + 1):= by
      unfold d95 d27
      ring
theorem d130 (m:ℚ) (hm:1 ≤ m):
    d126 m ≤ beta 11 7 * (m + 1) ^ 2 / (m * (m + 2)):= by
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
  exact d134 (by norm_num) (by norm_num) (by norm_num)
    hmpos hW hcert
theorem d55 (k:ℕ):
    d44 11 7 0 (k + 2) =
      d44 11 7 0 (k + 1) * d126 ((k:ℚ) + 1):= by
  change (((18 * (k + 2)).factorial:ℕ):ℚ) /
      (((((7 * (k + 2)).factorial:ℕ):ℚ) ^ 2) *
        (((4 * (k + 2) - 1).factorial:ℕ):ℚ)) =
    (((18 * (k + 1)).factorial:ℕ):ℚ) /
      (((((7 * (k + 1)).factorial:ℕ):ℚ) ^ 2) *
        (((4 * (k + 1) - 1).factorial:ℕ):ℚ)) * d126 ((k:ℚ) + 1)
  have ha:18 * (k + 2) = 18 * (k + 1) + 18:= by omega
  have hd:7 * (k + 2) = 7 * (k + 1) + 7:= by omega
  have hb:4 * (k + 2) - 1 = (4 * (k + 1) - 1) + 4:= by omega
  have hp:(4 * (k + 1) - 1) + 1 = 4 * (k + 1):= by omega
  rw [ha,hd,hb,d46 (18 * (k + 1)) 18,
    d46 (7 * (k + 1)) 7,
    d46 (4 * (k + 1) - 1) 4,hp]
  simp only [Nat.ascFactorial_succ,Nat.ascFactorial_zero,
    Nat.cast_mul,Nat.cast_add,Nat.cast_one,Nat.cast_ofNat]
  unfold d126 d95 d27
  field_simp
  <;> ring
theorem d52 (m:ℕ) (hm:1 ≤ m):
    d44 11 7 0 (m + 1) ≤ d44 11 7 0 m *
      (beta 11 7 * ((m:ℚ) + 1) ^ 2 / ((m:ℚ) * (m + 2))):= by
  obtain ⟨k,rfl⟩:∃ k,m = k + 1:= Nat.exists_eq_add_of_le' hm
  rw [d55]
  have hk:0 ≤ (k:ℚ):= Nat.cast_nonneg k
  have hratio:= d130 ((k:ℚ) + 1) (by linarith)
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
  exact d142 (by norm_num [beta]) (d45 11 7 delta 1)
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
    (hn:(2:ℕ) ^ 15360 ≤ n) (hij:11 < j) (hjn:j ≤ n / 2):
    ∃ p:ℕ,Nat.Prime p ∧ 11 ≤ p ∧ p ∣ n.choose 11 ∧ p ∣ n.choose j:= by
  classical
  letI:Infinite ℚ:= Infinite.of_injective (fun n:ℕ => (n:ℚ)) Nat.cast_injective
  have u1 (m:ℕ) (hm:1 ≤ m):
      Math.B699.N8.d44 5 4 0 (m + 1) ≤ Math.B699.N8.d44 5 4 0 m *
        (Math.B699.N8.beta 5 4 * ((m:ℚ) + 1) ^ 2 / ((m:ℚ) * (m + 2))):= by
    obtain ⟨k,rfl⟩:∃ k,m = k + 1:= Nat.exists_eq_add_of_le' hm
    rw [Math.B699.N8.d58]
    have hk:0 ≤ (k:ℚ):= Nat.cast_nonneg k
    have hratio:= Math.B699.N8.d133 ((k:ℚ) + 1) (by linarith)
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
    exact Math.B699.N8.d142 (by norm_num [Math.B699.N8.beta]) (Math.B699.N8.d45 5 4 delta 1)
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
    exact Math.B699.N8.d134 (by norm_num) (by norm_num) (by norm_num)
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
    exact Math.B699.N8.d142 (by norm_num [Math.B699.N8.beta]) (Math.B699.N8.d45 9 5 delta 1)
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
      simpa only [Nat.cast_add,Nat.cast_one] using Math.B699.N21.d88 (a + b + 1)
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
  have u915 (n:ℕ):(n.factorial:ℚ) ≠ 0:=
    Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero n)
  have u916 (n r:ℕ) (hr:r ≤ n):
      (n.choose r:ℚ) * Math.B699.N21.d10 r (n - r) = 1 / ((n:ℚ) + 1):= by
    rw [u884 n r hr]
    unfold Math.B699.N21.d10
    have htotal:r + (n - r) + 1 = n + 1:= by omega
    rw [htotal,Nat.factorial_succ n]
    have hn:(n:ℚ) + 1 ≠ 0:= by
      have h:((n + 1:ℕ):ℚ) ≠ 0:= Nat.cast_ne_zero.mpr (Nat.succ_ne_zero n)
      simpa only [Nat.cast_add,Nat.cast_one] using h
    simp only [Nat.cast_mul,Nat.cast_add,Nat.cast_one]
    field_simp [u915,hn] <;> ring
  have u917 (n:ℕ) (z:ℚ):
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
  have u918 (n:ℕ) (z:ℚ):
      Math.B699.N21.moment (((1 - X:ℚ[X]) + Polynomial.C z * X) ^ n) =
        (1 / ((n:ℚ) + 1)) * ∑ r ∈ Finset.range (n + 1),z ^ r:= by
    classical
    rw [u917,Math.B699.N22.d83]
    simp only [Math.B699.N21.d76,u902]
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro r hr
    have hmass:= u916 n r (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))
    calc
      ((n.choose r:ℚ) * z ^ r) * Math.B699.N21.d10 r (n - r) =
          z ^ r * ((n.choose r:ℚ) * Math.B699.N21.d10 r (n - r)):= by ring
      _ = z ^ r * (1 / ((n:ℚ) + 1)):= by rw [hmass]
      _ = _:= by ring
  have u919 (n:ℕ) (z:ℚ):
      (1 - z) * (∑ r ∈ Finset.range (n + 1),z ^ r) = 1 - z ^ (n + 1):= by
    induction n with
    | zero => simp
    | succ n ih =>
        rw [Finset.sum_range_succ,mul_add,ih]
        simp only [pow_succ]
        ring
  have u920 (n:ℕ) (a z:ℚ):
      Math.B699.N21.moment ((Polynomial.monomial n a).comp (Polynomial.C z * X)) =
        a * z ^ n / ((n:ℚ) + 1):= by
    rw [Polynomial.monomial_comp]
    have hpow:(Polynomial.C z * (X:ℚ[X])) ^ n = Polynomial.C (z ^ n) * X ^ n:= by
      rw [mul_pow,map_pow]
    rw [hpow,← mul_assoc,← map_mul,Math.B699.N21.d76,Math.B699.N21.d77]
    ring
  have u921 (p:ℚ[X]) (z:ℚ):
      Math.B699.N21.moment p = z * Math.B699.N21.moment (p.comp (Polynomial.C z * X)) +
        (1 - z) * Math.B699.N21.moment (p.comp ((1 - X) + Polynomial.C z * X)):= by
    induction p using Polynomial.induction_on' with
    | add p q ihp ihq =>
        simp only [Polynomial.add_comp,Math.B699.N21.d78]
        rw [ihp,ihq]
        ring
    | monomial n a =>
        rw [Math.B699.N21.d79,u920,Polynomial.monomial_comp,
          Math.B699.N21.d76,u918]
        have hsum:z * z ^ n +
            (1 - z) * (∑ r ∈ Finset.range (n + 1),z ^ r) = 1:= by
          rw [← pow_succ',u919]
          ring
        calc
          a / ((n:ℚ) + 1) = (a / ((n:ℚ) + 1)) * 1:= by ring
          _ = (a / ((n:ℚ) + 1)) *
              (z * z ^ n + (1 - z) * (∑ r ∈ Finset.range (n + 1),z ^ r)):= by rw [hsum]
          _ = _:= by ring
  have u145 (p:ℚ[X]):
      Math.B699.N21.moment (p.comp (1 - X)) = Math.B699.N21.moment p:= by
    simpa using (u921 p (0:ℚ)).symm
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
    have h:= u921 p (1 / 2:ℚ)
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
    | zero => simp only [Math.B699.N21.d84,le_refl]
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
      u907 A B C z = (Math.B699.N18.d121 A B C).eval₂ (Int.castRingHom ℚ) z:= by
    classical
    unfold u907 Math.B699.N18.d121 Math.B699.N18.d22
    simp only [Polynomial.eval₂_finsetSum,Polynomial.eval₂_monomial]
    apply Finset.sum_congr rfl
    intro r hr
    simp [Math.B699.N18.d118,Math.B699.N18.d119,mul_assoc]
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
      (Math.B699.N22.N16.d123 A B C (Polynomial.C z) (X:ℚ[X]))
  have u913 (A B C:ℕ) (z:ℚ):u907 A B C z = u896 A B C z:= by
    classical
    unfold u907 u896
    rw [u910,Math.B699.N22.d83]
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
      |(Math.B699.N18.d121 (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta)).eval₂
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
    rw [u911,Math.B699.N22.d83]
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
  let u109:ℚ:= (1:ℚ) / 9
  let u110:ℚ:= (46880976166089921083:ℚ) / 79228162514264337593543950336
  let u111:ℚ[X]:= u32 u107 u108 u109
  let u112:ℚ[X]:= u34 u107 u108 0 u109
  let u113:ℚ[X]:= u34 u107 u108 1 u109
  have u118:
      (Math.B699.N20.d1 u103 (u105) (u104)) ∧
      (Math.B699.N20.d1 u103 (u106) (u104)) ∧
      (Math.B699.N20.d1 u110 (u112) (u111)) ∧
      (Math.B699.N20.d1 u110 (u113) (u111)):= by
    classical
    letI:Infinite ℚ:= Infinite.of_injective (fun n:ℕ => (n:ℚ)) Nat.cast_injective
    let v3:ℕ:= 23
    let v4:ℕ:= 15
    let v7:ℚ:= (1:ℚ) / 9
    let v11:ℚ:= (0:ℚ)
    let v13:ℚ:= (1:ℚ) / 4
    let v14:ℚ:= (46880976166089921083:ℚ) / 79228162514264337593543950336
    let v15:ℚ[X]:= u111
    let v18:ℚ[X]:= u23 v11 v13
    let v19:ℚ[X]:= v15.comp v18
    let v23:ℚ:= 3410512607094195460639097831351648256
    let v24:List (ℕ × ℕ × ℚ):= [
      (0,38,(2018072301229322493771918843:ℚ)/v23),
      (1,37,(76686747446714254763332916034:ℚ)/v23),
      (2,36,(1418704827764213713121658946629:ℚ)/v23),
      (3,35,(17024457933170564557459907359548:ℚ)/v23),
      (4,34,(148964006915242439877774189396045:ℚ)/v23),
      (5,33,(1012955247023648591168864487893106:ℚ)/v23),
      (6,32,(5571253858630067251428754683412083:ℚ)/v23),
      (7,31,(25468589068023164577960021409883808:ℚ)/v23),
      (8,30,(98690782638589762739595082963299756:ℚ)/v23),
      (9,29,(328969275461965875798650276544332520:ℚ)/v23),
      (10,28,(954010898839701039816085801978564308:ℚ)/v23),
      (11,27,(2428391378864693555895491132309072784:ℚ)/v23),
      (12,26,(5463880602445560500764855047695413764:ℚ)/v23),
      (13,25,(10927761204891121001529710095390827528:ℚ)/v23),
      (14,24,(19513859294448430359874482313197906300:ℚ)/v23),
      (15,23,(31222174867941201193801657687320445536:ℚ)/v23),
      (16,22,(44881876316793699364703056557844070250:ℚ)/v23),
      (17,21,(58082427703299282823854023281525005660:ℚ)/v23),
      (18,20,(67762829783722131546467902148230936470:ℚ)/v23),
      (19,19,(71329284737946344534037935759903912040:ℚ)/v23),
      (20,18,(67762791848701803302406976696911296406:ℚ)/v23),
      (21,17,(58082326589840692868183965375059336540:ℚ)/v23),
      (22,16,(44881673018396313097786458787221995370:ℚ)/v23),
      (23,15,(31221840113470534783134852021598175840:ℚ)/v23),
      (24,14,(19513400405849644886473267364602440060:ℚ)/v23),
      (25,13,(10927233178014638193242126283496317960:ℚ)/v23),
      (26,12,(5463368068841961904770816054306583044:ℚ)/v23),
      (27,11,(2427970715039669125071139065667480464:ℚ)/v23),
      (28,10,(953718956704108910928296248590470868:ℚ)/v23),
      (29,9,(328798359428098501185338523999093480:ℚ)/v23),
      (30,8,(98606787867487532593653032873307564:ℚ)/v23),
      (31,7,(25434213731076774184489362960639648:ℚ)/v23),
      (32,6,(5559675960772344245134084136058483:ℚ)/v23),
      (33,5,(1009800580581674138271487855061106:ℚ)/v23),
      (34,4,(148285852418019655824205062996045:ℚ)/v23),
      (35,3,(16913735984034016773611152159548:ℚ)/v23),
      (36,2,(1405800673746213308903802946629:ℚ)/v23),
      (37,1,(75730320091415153026372916034:ℚ)/v23),
      (38,0,(1984190765363463626571918843:ℚ)/v23)
    ]
    let v22:ℚ[X]:= Math.B699.N21.d9 v24
    have v0:Polynomial.C v14 - v19 = v22:= by
      apply Polynomial.funext
      intro x
      norm_num [v14,v19,v15,u111,u107,u108,u109,
        u32,u28,v3,v4,v7,v18,u23,v11,v13,v22,v24,v23,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v1:v18 = (Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v18,u23,v11,v13,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v2:Math.B699.N21.d0 v22:= by
      apply u881
      norm_num [v24,v23]
    have v5:Math.B699.N21.d0 (Polynomial.C v14 - v19):= by
      rw [v0]
      exact v2
    have v6:Math.B699.N21.d0 v19:= by
      exact u26 (u36 v3 v4 v7 (by norm_num [v7]))
        v11 v13 (by norm_num [v11]) (by norm_num [v11,v13]) (by norm_num [v13])
    let v16:ℚ[X]:= u112
    let v20:ℚ[X]:= v16.comp v18
    have v8:Math.B699.N21.d0 v20:= by
      exact u26 (u20 v3 v4 0 v7 (by norm_num [v7]))
        v11 v13 (by norm_num [v11]) (by norm_num [v11,v13]) (by norm_num [v13])
    let v17:ℚ[X]:= u113
    let v21:ℚ[X]:= v17.comp v18
    have v9:Math.B699.N21.d0 v21:= by
      exact u26 (u20 v3 v4 1 v7 (by norm_num [v7]))
        v11 v13 (by norm_num [v11]) (by norm_num [v11,v13]) (by norm_num [v13])
    have v10:Math.B699.N20.d1 v14 v20 v19:= by
      exact Math.B699.N20.d1.leaf (lam:= v14) (w:= v20) (f:= v19)
        v8 v6 v5
    have v12:Math.B699.N20.d1 v14 v21 v19:= by
      exact Math.B699.N20.d1.leaf (lam:= v14) (w:= v21) (f:= v19)
        v9 v6 v5
    let v28:ℕ:= 23
    let v29:ℕ:= 15
    let v32:ℚ:= (1:ℚ) / 9
    let v36:ℚ:= (1:ℚ) / 4
    let v38:ℚ:= (3:ℚ) / 8
    let v39:ℚ:= (46880976166089921083:ℚ) / 79228162514264337593543950336
    let v40:ℚ[X]:= u111
    let v43:ℚ[X]:= u23 v36 v38
    let v44:ℚ[X]:= v40.comp v43
    let v48:ℚ:= 894045416874100774833775661901846480420864
    let v49:List (ℕ × ℕ × ℚ):= [
      (0,38,(520143703995439808924069093179392:ℚ)/v48),
      (1,37,(19722066612718102171199187460816896:ℚ)/v48),
      (2,36,(363967946165699588148228245849112576:ℚ)/v48),
      (3,35,(4355794441371039514606285818310950912:ℚ)/v48),
      (4,34,(37999016201865164847590999325683220480:ℚ)/v48),
      (5,33,(257538091826307052392147269784464523264:ℚ)/v48),
      (6,32,(1411290541143513263685156393352346468352:ℚ)/v48),
      (7,31,(6425706591603369892533200084268830687232:ℚ)/v48),
      (8,30,(24789797974371149714798781902483830603776:ℚ)/v48),
      (9,29,(82233168330806857947582196160734376755200:ℚ)/v48),
      (10,28,(237214738680316757728491143468131430694912:ℚ)/v48),
      (11,27,(600331185502891957814308715663219685851136:ℚ)/v48),
      (12,26,(1342239046395571381769590821330332031123456:ℚ)/v48),
      (13,25,(2666082735869822937299900548491924310327296:ℚ)/v48),
      (14,24,(4725424923230406306720239599917604782735360:ℚ)/v48),
      (15,23,(7499655073132441888349579667482710586163200:ℚ)/v48),
      (16,22,(10686558407904674434568908022280819564871680:ℚ)/v48),
      (17,21,(13699073803528020529148356056396601507184640:ℚ)/v48),
      (18,20,(15819417588685647511818155499347887095545856:ℚ)/v48),
      (19,19,(16469249939707695258406556673965169070571520:ℚ)/v48),
      (20,18,(15461079234595534604446655135002145461370880:ℚ)/v48),
      (21,17,(13084324982207444215246291961369999848243200:ℚ)/v48),
      (22,16,(9973136214003306843220602542237677303234560:ℚ)/v48),
      (23,15,(6836808093328302729802236451134180040900608:ℚ)/v48),
      (24,14,(4206463101302735772268355583995924540620800:ℚ)/v48),
      (25,13,(2316441274974041937642395592283199437996032:ℚ)/v48),
      (26,12,(1137673747497830306415543302475090937430016:ℚ)/v48),
      (27,11,(496076957690304754654608442509917115088896:ℚ)/v48),
      (28,10,(190968377588499201080854671173255117156352:ℚ)/v48),
      (29,9,(64443774715125709994106259596569664122880:ℚ)/v48),
      (30,8,(18894466476587458166241832930622851236864:ℚ)/v48),
      (31,7,(4758659262674206153410567494640580964352:ℚ)/v48),
      (32,6,(1014418561512698648942689550151502085952:ℚ)/v48),
      (33,5,(179462835360058418572596256221125379264:ℚ)/v48),
      (34,4,(25638515137914164268968297726130570480:ℚ)/v48),
      (35,3,(2841776916036990628167786712673850912:ℚ)/v48),
      (36,2,(229277457709547290708777712709800076:ℚ)/v48),
      (37,1,(11977274936114964438944646870504396:ℚ)/v48),
      (38,0,(304036376283540453142947699820017:ℚ)/v48)
    ]
    let v47:ℚ[X]:= Math.B699.N21.d9 v49
    have v25:Polynomial.C v39 - v44 = v47:= by
      apply Polynomial.funext
      intro x
      norm_num [v39,v44,v40,u111,u107,u108,u109,
        u32,u28,v28,v29,v32,v43,u23,v36,v38,v47,v49,v48,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v26:v43 = ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v43,u23,v36,v38,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v27:Math.B699.N21.d0 v47:= by
      apply u881
      norm_num [v49,v48]
    have v30:Math.B699.N21.d0 (Polynomial.C v39 - v44):= by
      rw [v25]
      exact v27
    have v31:Math.B699.N21.d0 v44:= by
      exact u26 (u36 v28 v29 v32 (by norm_num [v32]))
        v36 v38 (by norm_num [v36]) (by norm_num [v36,v38]) (by norm_num [v38])
    let v41:ℚ[X]:= u112
    let v45:ℚ[X]:= v41.comp v43
    have v33:Math.B699.N21.d0 v45:= by
      exact u26 (u20 v28 v29 0 v32 (by norm_num [v32]))
        v36 v38 (by norm_num [v36]) (by norm_num [v36,v38]) (by norm_num [v38])
    let v42:ℚ[X]:= u113
    let v46:ℚ[X]:= v42.comp v43
    have v34:Math.B699.N21.d0 v46:= by
      exact u26 (u20 v28 v29 1 v32 (by norm_num [v32]))
        v36 v38 (by norm_num [v36]) (by norm_num [v36,v38]) (by norm_num [v38])
    have v35:Math.B699.N20.d1 v39 v45 v44:= by
      exact Math.B699.N20.d1.leaf (lam:= v39) (w:= v45) (f:= v44)
        v33 v31 v30
    have v37:Math.B699.N20.d1 v39 v46 v44:= by
      exact Math.B699.N20.d1.leaf (lam:= v39) (w:= v46) (f:= v44)
        v34 v31 v30
    let v53:ℕ:= 23
    let v54:ℕ:= 15
    let v57:ℚ:= (1:ℚ) / 9
    let v61:ℚ:= (3:ℚ) / 8
    let v63:ℚ:= (7:ℚ) / 16
    let v64:ℚ:= (46880976166089921083:ℚ) / 79228162514264337593543950336
    let v65:ℚ[X]:= u111
    let v68:ℚ[X]:= u23 v61 v63
    let v69:ℚ[X]:= v65.comp v68
    let v73:ℚ:= 245753332903228760148436883460427762906900172548079616
    let v74:List (ℕ × ℕ × ℚ):= [
      (0,38,(83572882747658001237886770160985478474498048:ℚ)/v73),
      (1,37,(3117510183950449700592497993157448182030925824:ℚ)/v73),
      (2,36,(56586234844302373813809918897655991367572127744:ℚ)/v73),
      (3,35,(665870290757271190458457431712385176410865532928:ℚ)/v73),
      (4,34,(5710256424127071747708563777733286709595073413120:ℚ)/v73),
      (5,33,(38034391728796178990420730360824050663326499209216:ℚ)/v73),
      (6,32,(204785229550044730904581117672371375644135745650688:ℚ)/v73),
      (7,31,(915905756596415386201340482176282945460990837260288:ℚ)/v73),
      (8,30,(3470215639642710435850971236032793948073729894383616:ℚ)/v73),
      (9,29,(11303049833307748044910585022856093796000863061278720:ℚ)/v73),
      (10,28,(32009064117900799787429687217727768056506234896908288:ℚ)/v73),
      (11,27,(79511270156672220126099085965847613507886438703693824:ℚ)/v73),
      (12,26,(174463434112935915883067907334171036854268738198831104:ℚ)/v73),
      (13,25,(340033668006328158327082798265952954821664305691230208:ℚ)/v73),
      (14,24,(591298523524125268418629531326831764289907174303334400:ℚ)/v73),
      (15,23,(920610178429267415415010261646547211688035368069758976:ℚ)/v73),
      (16,22,(1286764275024023562336326047974983986572302434122596352:ℚ)/v73),
      (17,21,(1617872637287701736895665560627991111819758275246686208:ℚ)/v73),
      (18,20,(1832349244731735044893041618500234940731767778048999424:ℚ)/v73),
      (19,19,(1870837982816491718904852635736882865803356408716984320:ℚ)/v73),
      (20,18,(1722399926434663448668350639675507910444277238870835200:ℚ)/v73),
      (21,17,(1429459330689324417279548418867389701880056321128529920:ℚ)/v73),
      (22,16,(1068513671674577616088714710205429777838124788709457920:ℚ)/v73),
      (23,15,(718353305667771538854546280359756632342812956258467840:ℚ)/v73),
      (24,14,(433464416694782886999515580777103939295735426662072320:ℚ)/v73),
      (25,13,(234116032451502045784705409283681710378945529098993664:ℚ)/v73),
      (26,12,(112779245879250319539851878636426996035965480232861696:ℚ)/v73),
      (27,11,(48238760738855702317471441102625534246967000854003712:ℚ)/v73),
      (28,10,(18217292381684837285168043831743838392100864678162432:ℚ)/v73),
      (29,9,(6031474103388198298020329209906281532462020580700160:ℚ)/v73),
      (30,8,(1735189284271485758303244498794672475572325382505472:ℚ)/v73),
      (31,7,(428864829803501529147306709054226003636542573178880:ℚ)/v73),
      (32,6,(89729288794109253431161333135480230604401771157056:ℚ)/v73),
      (33,5,(15582371752923090670374307428127470208953975218880:ℚ)/v73),
      (34,4,(2185532315179339889103859225657629808057424461680:ℚ)/v73),
      (35,3,(237861895671125415694025802162753311642852852640:ℚ)/v73),
      (36,2,(18846605449997277875814417896695613098933458108:ℚ)/v73),
      (37,1,(967015473781781176773380308814884190430949260:ℚ)/v73),
      (38,0,(24114089024227171216545117428777378479740801:ℚ)/v73)
    ]
    let v72:ℚ[X]:= Math.B699.N21.d9 v74
    have v50:Polynomial.C v64 - v69 = v72:= by
      apply Polynomial.funext
      intro x
      norm_num [v64,v69,v65,u111,u107,u108,u109,
        u32,u28,v53,v54,v57,v68,u23,v61,v63,v72,v74,v73,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v51:v68 = (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v68,u23,v61,v63,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v52:Math.B699.N21.d0 v72:= by
      apply u881
      norm_num [v74,v73]
    have v55:Math.B699.N21.d0 (Polynomial.C v64 - v69):= by
      rw [v50]
      exact v52
    have v56:Math.B699.N21.d0 v69:= by
      exact u26 (u36 v53 v54 v57 (by norm_num [v57]))
        v61 v63 (by norm_num [v61]) (by norm_num [v61,v63]) (by norm_num [v63])
    let v66:ℚ[X]:= u112
    let v70:ℚ[X]:= v66.comp v68
    have v58:Math.B699.N21.d0 v70:= by
      exact u26 (u20 v53 v54 0 v57 (by norm_num [v57]))
        v61 v63 (by norm_num [v61]) (by norm_num [v61,v63]) (by norm_num [v63])
    let v67:ℚ[X]:= u113
    let v71:ℚ[X]:= v67.comp v68
    have v59:Math.B699.N21.d0 v71:= by
      exact u26 (u20 v53 v54 1 v57 (by norm_num [v57]))
        v61 v63 (by norm_num [v61]) (by norm_num [v61,v63]) (by norm_num [v63])
    have v60:Math.B699.N20.d1 v64 v70 v69:= by
      exact Math.B699.N20.d1.leaf (lam:= v64) (w:= v70) (f:= v69)
        v58 v56 v55
    have v62:Math.B699.N20.d1 v64 v71 v69:= by
      exact Math.B699.N20.d1.leaf (lam:= v64) (w:= v71) (f:= v69)
        v59 v56 v55
    let v78:ℕ:= 23
    let v79:ℕ:= 15
    let v82:ℚ:= (1:ℚ) / 9
    let v86:ℚ:= (7:ℚ) / 16
    let v88:ℚ:= (15:ℚ) / 32
    let v89:ℚ:= (46880976166089921083:ℚ) / 79228162514264337593543950336
    let v90:ℚ[X]:= u111
    let v93:ℚ[X]:= u23 v86 v88
    let v94:ℚ[X]:= v90.comp v93
    let v98:ℚ:= 67552161772951568489226529278892835318757000565168572052751253504
    let v99:List (ℕ × ℕ × ℚ):= [
      (0,38,(6628430318840848131177844061765020789446460086518022144:ℚ)/v98),
      (1,37,(244914933466130084441295088169236325288740601957594431488:ℚ)/v98),
      (2,36,(4403388015317366903251678936401150655443579807661345996800:ℚ)/v98),
      (3,35,(51326406348042707751777992445650759012926413659722437623808:ℚ)/v98),
      (4,34,(436001198389225740956135565852770384888635122135526507806720:ℚ)/v98),
      (5,33,(2876700179759467942712319574026673804553475718042203709243392:ℚ)/v98),
      (6,32,(15342895253647731608680089431778140897376100602359062053519360:ℚ)/v98),
      (7,31,(67975711470791795277589169686302012621465276540924915433340928:ℚ)/v98),
      (8,30,(255127061313363406050045157034053116556556005965069638789234688:ℚ)/v98),
      (9,29,(823179553966860261398458304567784978981034846362146256464117760:ℚ)/v98),
      (10,28,(2309252353039621742177074575540214872193386249098572137114894336:ℚ)/v98),
      (11,27,(5682322929644700982449681612772892562118763613241797805237862400:ℚ)/v98),
      (12,26,(12350891379796534751966057898123997167835464504848116563610435584:ℚ)/v98),
      (13,25,(23845625555647636512291603388365973440865915180820562408703524864:ℚ)/v98),
      (14,24,(41075321086032222911979149729597746768723423987193342412214763520:ℚ)/v98),
      (15,23,(63347546076780961563067236643095356722295616566044015894043033600:ℚ)/v98),
      (16,22,(87704759919073339799541732172387076776071345760053955223491706880:ℚ)/v98),
      (17,21,(109226126244086657041492736827853622103003591081415190977729003520:ℚ)/v98),
      (18,20,(122527543519415240996655808343119799474701834047506551106583920640:ℚ)/v98),
      (19,19,(123904549602720654584628937288253221177731282277598463183091138560:ℚ)/v98),
      (20,18,(112976940693298354655289788182117406971426395738414566768135110656:ℚ)/v98),
      (21,17,(92855575158679201929149894176734674267451056165530039836882763776:ℚ)/v98),
      (22,16,(68733493892443518142091207977829260554877917749273810182124470272:ℚ)/v98),
      (23,15,(45755801137395502741556150652449018534921025789400579079880572928:ℚ)/v98),
      (24,14,(27336581837902531822237325862878070067807389673657755315766886400:ℚ)/v98),
      (25,13,(14617143002662878269001032743497439640505572182423821479385956352:ℚ)/v98),
      (26,12,(6970331816655492504424159101437198338424557629506576695104946176:ℚ)/v98),
      (27,11,(2950934651606260362148187603367642403254362748080556254949113856:ℚ)/v98),
      (28,10,(1102874364792541920866548449294429879605795001505817562415951872:ℚ)/v98),
      (29,9,(361307266615084426341208319910850662170464571685692556527431680:ℚ)/v98),
      (30,8,(102833663000218320676002941616973023566844093845804128286229504:ℚ)/v98),
      (31,7,(25139663781897867772767891609149953159494029186989796770639872:ℚ)/v98),
      (32,6,(5201510582932451284027265943142138704511464476204739418577472:ℚ)/v98),
      (33,5,(893058692485587222600774436439148884750737721146857110195904:ℚ)/v98),
      (34,4,(123804957477717328247919480031485105374166162664100172455280:ℚ)/v98),
      (35,3,(13314052374475137876139221307909072017120117332281314352032:ℚ)/v98),
      (36,2,(1042027170674335333828615767351791553952227541112961091836:ℚ)/v98),
      (37,1,(52793449531120607429167147780700145153061785832568209356:ℚ)/v98),
      (38,0,(1299394496377220490980804429946158037616239277216535937:ℚ)/v98)
    ]
    let v97:ℚ[X]:= Math.B699.N21.d9 v99
    have v75:Polynomial.C v89 - v94 = v97:= by
      apply Polynomial.funext
      intro x
      norm_num [v89,v94,v90,u111,u107,u108,u109,
        u32,u28,v78,v79,v82,v93,u23,v86,v88,v97,v99,v98,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v76:v93 = ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v93,u23,v86,v88,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v77:Math.B699.N21.d0 v97:= by
      apply u881
      norm_num [v99,v98]
    have v80:Math.B699.N21.d0 (Polynomial.C v89 - v94):= by
      rw [v75]
      exact v77
    have v81:Math.B699.N21.d0 v94:= by
      exact u26 (u36 v78 v79 v82 (by norm_num [v82]))
        v86 v88 (by norm_num [v86]) (by norm_num [v86,v88]) (by norm_num [v88])
    let v91:ℚ[X]:= u112
    let v95:ℚ[X]:= v91.comp v93
    have v83:Math.B699.N21.d0 v95:= by
      exact u26 (u20 v78 v79 0 v82 (by norm_num [v82]))
        v86 v88 (by norm_num [v86]) (by norm_num [v86,v88]) (by norm_num [v88])
    let v92:ℚ[X]:= u113
    let v96:ℚ[X]:= v92.comp v93
    have v84:Math.B699.N21.d0 v96:= by
      exact u26 (u20 v78 v79 1 v82 (by norm_num [v82]))
        v86 v88 (by norm_num [v86]) (by norm_num [v86,v88]) (by norm_num [v88])
    have v85:Math.B699.N20.d1 v89 v95 v94:= by
      exact Math.B699.N20.d1.leaf (lam:= v89) (w:= v95) (f:= v94)
        v83 v81 v80
    have v87:Math.B699.N20.d1 v89 v96 v94:= by
      exact Math.B699.N20.d1.leaf (lam:= v89) (w:= v96) (f:= v94)
        v84 v81 v80
    let v103:ℕ:= 23
    let v104:ℕ:= 15
    let v107:ℚ:= (1:ℚ) / 9
    let v111:ℚ:= (15:ℚ) / 32
    let v113:ℚ:= (31:ℚ) / 64
    let v114:ℚ:= (46880976166089921083:ℚ) / 79228162514264337593543950336
    let v115:ℚ[X]:= u111
    let v118:ℚ[X]:= u23 v111 v113
    let v119:ℚ[X]:= v115.comp v118
    let v123:ℚ:= 18568596837691415299400452581659596210097603379100962156389518119851865931776
    let v124:List (ℕ × ℕ × ℚ):= [
      (0,38,(357174839458723359241191551385002995994194271625964784628717846528:ℚ)/v123),
      (1,37,(13103089395413166096270237269402575462393768381296421815891278168064:ℚ)/v123),
      (2,36,(233867721045029933268541787084228677268778745384472225993988646109184:ℚ)/v123),
      (3,35,(2705713562849214225131020375523695558923775287620820396407863753310208:ℚ)/v123),
      (4,34,(22809453303374019262924409228439138902636328218916873157336807841464320:ℚ)/v123),
      (5,33,(149324884790478849659064845623299805266711373396922144029613813321957376:ℚ)/v123),
      (6,32,(790086620808237060086246516913775240540733146714129218649270853270765568:ℚ)/v123),
      (7,31,(3471884339005883932444261443537710876965749350806274754013160910952071168:ℚ)/v123),
      (8,30,(12921737912903281396877709654352753858303974627973884733935685045139275776:ℚ)/v123),
      (9,29,(41334701561313500823914555542165732727823299235184545768737981408917585920:ℚ)/v123),
      (10,28,(114932808214590879564697719407259800392855282370870543690208679122507399168:ℚ)/v123),
      (11,27,(280246784460073717796167234346615389791856846730071842447779310723152216064:ℚ)/v123),
      (12,26,(603444660185021628555339158954891123451625818253411845690268669088989446144:ℚ)/v123),
      (13,25,(1153842698599292523977238317526526084507747034023481808372514098181243404288:ℚ)/v123),
      (14,24,(1967810432076413201768855044349885689901174660702869814995007615344312320000:ℚ)/v123),
      (15,23,(3003673865008793334562802984794544248606384653329150260145832624940872892416:ℚ)/v123),
      (16,22,(4114460791907102364965304282708465662809541978586677700180618950784350945280:ℚ)/v123),
      (17,21,(5067784051563073094591342467973954524886296386813227062030923337232768040960:ℚ)/v123),
      (18,20,(5620177855594942200223016756860848663051901247260512830537647926528882769920:ℚ)/v123),
      (19,19,(5616142931405408559327063076227740174598838162696937877413403865557541847040:ℚ)/v123),
      (20,18,(5057905400347212963249214854603681662457373466515867039573419221423120449536:ℚ)/v123),
      (21,17,(4103916953357971347101119737104303826954473313117243242040082193887560990720:ℚ)/v123),
      (22,16,(2997306331412795080143828296931148575520867405139470544816371732243432734720:ℚ)/v123),
      (23,15,(1967544211792546950087171426319173310731758312928175712804684795479552163840:ℚ)/v123),
      (24,14,(1158406039707943983518561058960876367466205375984574925928947839154040668160:ℚ)/v123),
      (25,13,(609981994112195128600558905487081383453105136292628983140229533604351508480:ℚ)/v123),
      (26,12,(286233284350311623538236786915379950828514121412832516548435768005991645184:ℚ)/v123),
      (27,11,(119147397055163017703833910427691681179309595230074605678340690595659218944:ℚ)/v123),
      (28,10,(43744577431996792882636712332179918530919796399154604469567527013345456128:ℚ)/v123),
      (29,9,(14064631425992992222256141429230167902105242911767859606369027774940999680:ℚ)/v123),
      (30,8,(3924479677983169920031176679286232897410009255106911616087849082583860224:ℚ)/v123),
      (31,7,(939506765212563793853921498173362629174433922003513428419697713769934848:ℚ)/v123),
      (32,6,(190113941341184307107961073285929297269732729946580075462714444937583168:ℚ)/v123),
      (33,5,(31879015891770381663537471032655215194103167557719093061642469295261376:ℚ)/v123),
      (34,4,(4309622271563234808877493079752535644158122049148479725734252754814320:ℚ)/v123),
      (35,3,(451185904491303771371580218667140774521171664831945186399197197410208:ℚ)/v123),
      (36,2,(34313083477641407442102972606287102746645485394449162487875510546684:ℚ)/v123),
      (37,1,(1685782496069790792051771198070559114738818395076052606490477855564:ℚ)/v123),
      (38,0,(40143205274113295623280672895933594946570470031613018048230737153:ℚ)/v123)
    ]
    let v122:ℚ[X]:= Math.B699.N21.d9 v124
    have v100:Polynomial.C v114 - v119 = v122:= by
      apply Polynomial.funext
      intro x
      norm_num [v114,v119,v115,u111,u107,u108,u109,
        u32,u28,v103,v104,v107,v118,u23,v111,v113,v122,v124,v123,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v101:v118 = (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v118,u23,v111,v113,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v102:Math.B699.N21.d0 v122:= by
      apply u881
      norm_num [v124,v123]
    have v105:Math.B699.N21.d0 (Polynomial.C v114 - v119):= by
      rw [v100]
      exact v102
    have v106:Math.B699.N21.d0 v119:= by
      exact u26 (u36 v103 v104 v107 (by norm_num [v107]))
        v111 v113 (by norm_num [v111]) (by norm_num [v111,v113]) (by norm_num [v113])
    let v116:ℚ[X]:= u112
    let v120:ℚ[X]:= v116.comp v118
    have v108:Math.B699.N21.d0 v120:= by
      exact u26 (u20 v103 v104 0 v107 (by norm_num [v107]))
        v111 v113 (by norm_num [v111]) (by norm_num [v111,v113]) (by norm_num [v113])
    let v117:ℚ[X]:= u113
    let v121:ℚ[X]:= v117.comp v118
    have v109:Math.B699.N21.d0 v121:= by
      exact u26 (u20 v103 v104 1 v107 (by norm_num [v107]))
        v111 v113 (by norm_num [v111]) (by norm_num [v111,v113]) (by norm_num [v113])
    have v110:Math.B699.N20.d1 v114 v120 v119:= by
      exact Math.B699.N20.d1.leaf (lam:= v114) (w:= v120) (f:= v119)
        v108 v106 v105
    have v112:Math.B699.N20.d1 v114 v121 v119:= by
      exact Math.B699.N20.d1.leaf (lam:= v114) (w:= v121) (f:= v119)
        v109 v106 v105
    let v128:ℕ:= 23
    let v129:ℕ:= 15
    let v132:ℚ:= (1:ℚ) / 9
    let v136:ℚ:= (31:ℚ) / 64
    let v138:ℚ:= (63:ℚ) / 128
    let v139:ℚ:= (46880976166089921083:ℚ) / 79228162514264337593543950336
    let v140:ℚ[X]:= u111
    let v143:ℚ[X]:= u23 v136 v138
    let v144:ℚ[X]:= v140.comp v143
    let v148:ℚ:= 5104097033631593526456255503732911048123824094797934230004903536765643042659487180652544
    let v149:List (ℕ × ℕ × ℚ):= [
      (0,38,(11034480243771604486449307284282137707726786313288063913280561070982857490432:ℚ)/v148),
      (1,37,(397273191853733456194033106097272578996812849024304334972122869844115944636416:ℚ)/v148),
      (2,36,(6952850164078676097195538084419548659661215005408772501241536831398273871773696:ℚ)/v148),
      (3,35,(78805605494321528562202714592204365049352413667494157525090955258333879024484352:ℚ)/v148),
      (4,34,(650203111682978913400401958415624225787579653284083862909246095566901977630638080:ℚ)/v148),
      (5,33,(4161681826059595511122078871549482831648907146085331652113781183687046889360850944:ℚ)/v148),
      (6,32,(21504116206726576453268191434287201116597235142501646057356206412509660453422497792:ℚ)/v148),
      (7,31,(92170125593253121246626164260977416498059569308997705129162767522152110740578762752:ℚ)/v148),
      (8,30,(334154593222539815386151264647664957888273375691929306019871974930918148109852737536:ℚ)/v148),
      (9,29,(1039721531323025765461290190789971477112602568972585061673914117625064560069810585600:ℚ)/v148),
      (10,28,(2807636488154591996002370185081487488816566007062385218608344432957891553466569981952:ℚ)/v148),
      (11,27,(6637262978922779974730405490384307474369291636311407183651957828211403471426374598656:ℚ)/v148),
      (12,26,(13830071145336087981105120348111851136372518563774648940246922821948743760726024257536:ℚ)/v148),
      (13,25,(25537607573114849154136406598892534571830694860809205132048562566079308845559364714496:ℚ)/v148),
      (14,24,(41964480375653326982171043900973185653846972570717326035456403767067185094847323176960:ℚ)/v148),
      (15,23,(61564785640982241785608349735336496933155632444618846837481724685943860842287071232000:ℚ)/v148),
      (16,22,(80829936849595678305105286362503559463715082174144847025074613476483300131747429089280:ℚ)/v148),
      (17,21,(95130694962248871654796670161903640986592358519342307156203282789002383863776469319680:ℚ)/v148),
      (18,20,(100462225600274744246318299847028294121385469578932186269850939605993827355592067383296:ℚ)/v148),
      (19,19,(95228149038082105812437873501567188982267170810097241173456419318718936158911772753920:ℚ)/v148),
      (20,18,(80999491652059289846719736026105622108515765989711696699944074937057244484443981742080:ℚ)/v148),
      (21,17,(61766228646496449432465919076891324575926232181195418887911392609637342477172460748800:ℚ)/v148),
      (22,16,(42157913127035128089299591811516513582463341373303814985710290295925001237180083732480:ℚ)/v148),
      (23,15,(25695635485571441303079743386997012667857247875903213776362269709218443732133140758528:ℚ)/v148),
      (24,14,(13942262283477751195153097579448819202245539654964251290593575408994233055145500672000:ℚ)/v148),
      (25,13,(6707133228677259124054339572594564066638165067901307026811040881382352434242088271872:ℚ)/v148),
      (26,12,(2845942280429006829423293111012084198053410903774665686979289788583642553905266343936:ℚ)/v148),
      (27,11,(1058207238905131945316793000378950661136893775144309353529145870342078665210127548416:ℚ)/v148),
      (28,10,(341985423614057185806698372668976487750051862379952574182360587390302136714791022592:ℚ)/v148),
      (29,9,(95067168583754363928508918592244489248555855706039402782030481383505042898244628480:ℚ)/v148),
      (30,8,(22433071571324887844088967179387047482159604106791100143931912787543352099281388544:ℚ)/v148),
      (31,7,(4417192469444671217259713493752034158873309508844766962060080020876428185569390592:ℚ)/v148),
      (32,6,(709644257656295025703134458164749070734055747279189927612450731165097026968304192:ℚ)/v148),
      (33,5,(90279089990603417898456232080289208324978836515039275650239284974346543937418944:ℚ)/v148),
      (34,4,(8741552471844545626665737194955011985127135919838323630667009042481009999988080:ℚ)/v148),
      (35,3,(613725740191989846738110342025326157787518129281584856544205606489278151784352:ℚ)/v148),
      (36,2,(30113988254540126063174523550501377158217562198764516615535135014091864211196:ℚ)/v148),
      (37,1,(1089898513655740112852187517834265303510855912502427890475420315474164323916:ℚ)/v148),
      (38,0,(30285556056207379869400721337373617654991735672662872594880520998870381057:ℚ)/v148)
    ]
    let v147:ℚ[X]:= Math.B699.N21.d9 v149
    have v125:Polynomial.C v139 - v144 = v147:= by
      apply Polynomial.funext
      intro x
      norm_num [v139,v144,v140,u111,u107,u108,u109,
        u32,u28,v128,v129,v132,v143,u23,v136,v138,v147,v149,v148,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v126:v143 = ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v143,u23,v136,v138,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v127:Math.B699.N21.d0 v147:= by
      apply u881
      norm_num [v149,v148]
    have v130:Math.B699.N21.d0 (Polynomial.C v139 - v144):= by
      rw [v125]
      exact v127
    have v131:Math.B699.N21.d0 v144:= by
      exact u26 (u36 v128 v129 v132 (by norm_num [v132]))
        v136 v138 (by norm_num [v136]) (by norm_num [v136,v138]) (by norm_num [v138])
    let v141:ℚ[X]:= u112
    let v145:ℚ[X]:= v141.comp v143
    have v133:Math.B699.N21.d0 v145:= by
      exact u26 (u20 v128 v129 0 v132 (by norm_num [v132]))
        v136 v138 (by norm_num [v136]) (by norm_num [v136,v138]) (by norm_num [v138])
    let v142:ℚ[X]:= u113
    let v146:ℚ[X]:= v142.comp v143
    have v134:Math.B699.N21.d0 v146:= by
      exact u26 (u20 v128 v129 1 v132 (by norm_num [v132]))
        v136 v138 (by norm_num [v136]) (by norm_num [v136,v138]) (by norm_num [v138])
    have v135:Math.B699.N20.d1 v139 v145 v144:= by
      exact Math.B699.N20.d1.leaf (lam:= v139) (w:= v145) (f:= v144)
        v133 v131 v130
    have v137:Math.B699.N20.d1 v139 v146 v144:= by
      exact Math.B699.N20.d1.leaf (lam:= v139) (w:= v146) (f:= v144)
        v134 v131 v130
    let v153:ℕ:= 23
    let v154:ℕ:= 15
    let v157:ℚ:= (1:ℚ) / 9
    let v161:ℚ:= (63:ℚ) / 128
    let v163:ℚ:= (1:ℚ) / 2
    let v164:ℚ:= (46880976166089921083:ℚ) / 79228162514264337593543950336
    let v165:ℚ[X]:= u111
    let v168:ℚ[X]:= u23 v161 v163
    let v169:ℚ[X]:= v165.comp v168
    let v173:ℚ:= 5104097033631593526456255503732911048123824094797934230004903536765643042659487180652544
    let v174:List (ℕ × ℕ × ℚ):= [
      (0,38,(30285556056207379869400721337373617654991735672662872594880520998870381057:ℚ)/v173),
      (1,37,(1211803746616020757222267303806129638268515998619950426735499280439984636416:ℚ)/v173),
      (2,36,(34624481874070509904867475631460357544250985385112850457158056717827215773696:ℚ)/v173),
      (3,35,(694903380877331221798343687716960937351308455199664385231100995273926589284352:ℚ)/v173),
      (4,34,(9688362575628732540262864420159457507725759588704806921226720534374857656238080:ℚ)/v173),
      (5,33,(98323630681803187478492054339956811456188328461906284388713333785828392062418944:ℚ)/v173),
      (6,32,(762708789201768054929616793082724676419709752192055721281187952220248796343304192:ℚ)/v173),
      (7,31,(4700007064218035724662735701074369668881328231952765546501833426036582529569390592:ℚ)/v173),
      (8,30,(23684493376222517951971478572859474481744698751706734864126294513899231273281388544:ℚ)/v173),
      (9,29,(99755438232120652780223029643743214292052833857226919369206681633243763480964628480:ℚ)/v173),
      (10,28,(357075271207868147988222290660050538575972238780700451918285157116740686573671022592:ℚ)/v173),
      (11,27,(1100405899335717344933347966226055006489773815399800678498165576660552103159362748416:ℚ)/v173),
      (12,26,(2949376515875597385472069695070636517854171505687413942311558483468244265040856743936:ℚ)/v173),
      (13,25,(6930896871355133308566055378366389710787963968734911515537902584202496828748827983872:ℚ)/v173),
      (14,24,(14371855662057674884493599975402926210426233969706648085459077757935542967805673472000:ℚ)/v173),
      (15,23,(26430741851457270238368187303058784399569958699405405669723326962633276313658785267712:ℚ)/v173),
      (16,22,(43282864750767404566688911298063241166945322069345366021497680086666511793115168243712:ℚ)/v173),
      (17,21,(63309779636847137192608062826254700896616399187207561469902118935264021414536758165504:ℚ)/v173),
      (18,20,(82901939563584850582251905633299291541730885506892822162081479247968888882338920923136:ℚ)/v173),
      (19,19,(97336914498531382881634296321061700591465201767153711881569624879379248495174552125440:ℚ)/v173),
      (20,18,(102565628503008052039494700189127352582951289158781762976822146540579375808178334728192:ℚ)/v173),
      (21,17,(97018664122134019052492154610907372238894956712668207571077425276378972496328017313792:ℚ)/v173),
      (22,16,(82353953432374820224843673785750279721073211417748858430105786043936411252638848385024:ℚ)/v173),
      (23,15,(62669848321535601616992482989223818677505900077783052723614685854024371021525775548416:ℚ)/v173),
      (24,14,(42682910387791059155061575389021480558820270916636751444711787525499318065606437109760:ℚ)/v173),
      (25,13,(25955311962209426816069798391968017721421696367270736773560024879485035908154074857472:ℚ)/v173),
      (26,12,(14046528930423210446111474931239897998754842933586426706341397490845970126425844350976:ℚ)/v173),
      (27,11,(6736806811020770271668688757459992006361700927033372201174268961467893909887370919936:ℚ)/v173),
      (28,10,(2848038991933829465364479679199734338845864606019347470408964330080438101607230472192:ℚ)/v173),
      (29,9,(1054094494351345465603222576185890434037238520928176565696748276767911068121075548160:ℚ)/v173),
      (30,8,(338596988546231329868556056493116168850424322364693315185644255356903986810937409536:ℚ)/v173),
      (31,7,(93349744897176161572600368816279575290099833274346686049509545480831976165745885184:ℚ)/v173),
      (32,6,(21769309719133017330640975732268998400847221493614119484569737352724594460811329536:ℚ)/v173),
      (33,5,(4211178582488263397132797036083397471590870017356189650408287374439787531211898880:ℚ)/v173),
      (34,4,(657667124595313482779196990853101784919594452126759553841588566595731247291432960:ℚ)/v173),
      (35,3,(79679419712217398002192980566446318683973738426071618598597715056678112507985920:ℚ)/v173),
      (36,2,(7027368485774161231331223053602388775146466316835464657851789800202317347160064:ℚ)/v173),
      (37,1,(401391372411877828216287954554245894043378400993666848963692149229085138092032:ℚ)/v173),
      (38,0,(11145178681341488438557296459200082199855766443299372330652760401037634830336:ℚ)/v173)
    ]
    let v172:ℚ[X]:= Math.B699.N21.d9 v174
    have v150:Polynomial.C v164 - v169 = v172:= by
      apply Polynomial.funext
      intro x
      norm_num [v164,v169,v165,u111,u107,u108,u109,
        u32,u28,v153,v154,v157,v168,u23,v161,v163,v172,v174,v173,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v151:v168 = ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v168,u23,v161,v163,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v152:Math.B699.N21.d0 v172:= by
      apply u881
      norm_num [v174,v173]
    have v155:Math.B699.N21.d0 (Polynomial.C v164 - v169):= by
      rw [v150]
      exact v152
    have v156:Math.B699.N21.d0 v169:= by
      exact u26 (u36 v153 v154 v157 (by norm_num [v157]))
        v161 v163 (by norm_num [v161]) (by norm_num [v161,v163]) (by norm_num [v163])
    let v166:ℚ[X]:= u112
    let v170:ℚ[X]:= v166.comp v168
    have v158:Math.B699.N21.d0 v170:= by
      exact u26 (u20 v153 v154 0 v157 (by norm_num [v157]))
        v161 v163 (by norm_num [v161]) (by norm_num [v161,v163]) (by norm_num [v163])
    let v167:ℚ[X]:= u113
    let v171:ℚ[X]:= v167.comp v168
    have v159:Math.B699.N21.d0 v171:= by
      exact u26 (u20 v153 v154 1 v157 (by norm_num [v157]))
        v161 v163 (by norm_num [v161]) (by norm_num [v161,v163]) (by norm_num [v163])
    have v160:Math.B699.N20.d1 v164 v170 v169:= by
      exact Math.B699.N20.d1.leaf (lam:= v164) (w:= v170) (f:= v169)
        v158 v156 v155
    have v162:Math.B699.N20.d1 v164 v171 v169:= by
      exact Math.B699.N20.d1.leaf (lam:= v164) (w:= v171) (f:= v169)
        v159 v156 v155
    let v178:ℕ:= 23
    let v179:ℕ:= 15
    let v182:ℚ:= (1:ℚ) / 9
    let v186:ℚ:= (1:ℚ) / 2
    let v188:ℚ:= (1:ℚ)
    let v189:ℚ:= (46880976166089921083:ℚ) / 79228162514264337593543950336
    let v190:ℚ[X]:= u111
    let v193:ℚ[X]:= u23 v186 v188
    let v194:ℚ[X]:= v190.comp v193
    let v198:ℚ:= 3410512607094195460639097831351648256
    let v199:List (ℕ × ℕ × ℚ):= [
      (0,38,(7447110066790350676831739:ℚ)/v198),
      (1,37,(1229166743085107275411411778:ℚ)/v198),
      (2,36,(70208427928050113703546340421:ℚ)/v198),
      (3,35,(1757532444401722668863018709820:ℚ)/v198),
      (4,34,(26075047809226310753593993330765:ℚ)/v198),
      (5,33,(264764701126623610403065257158770:ℚ)/v198),
      (6,32,(1992681123880032947069620754660979:ℚ)/v198),
      (7,31,(11682745884979484041871890108868256:ℚ)/v198),
      (8,30,(55182941429614772622207210375556524:ℚ)/v198),
      (9,29,(215157393648538345848222584374379240:ℚ)/v198),
      (10,28,(705302677891275328715929419801693908:ℚ)/v198),
      (11,27,(1972191071146520927287933983471922064:ℚ)/v198),
      (12,26,(4759918607378186544220099733561848324:ℚ)/v198),
      (13,25,(10014044128075109690516123456972088328:ℚ)/v198),
      (14,24,(18518775187969760204531663695912233340:ℚ)/v198),
      (15,23,(30317491537864758889943905152009650784:ℚ)/v198),
      (16,22,(44200774578181568945641669951685001066:ℚ)/v198),
      (17,21,(57662841948850906501316135041404902748:ℚ)/v198),
      (18,20,(67554942417482151655829610278178944918:ℚ)/v198),
      (19,19,(71248513805539928259130981746895712360:ℚ)/v198),
      (20,18,(67739133362221240040191517715716536214:ℚ)/v198),
      (21,17,(58077495190576892798792828817582988636:ℚ)/v198),
      (22,16,(44881227340124072974257743008314031978:ℚ)/v198),
      (23,15,(31222134306298281272458323806614078048:ℚ)/v198),
      (24,14,(19513859294448430359874482313197906300:ℚ)/v198),
      (25,13,(10927761204891121001529710095390827528:ℚ)/v198),
      (26,12,(5463880602445560500764855047695413764:ℚ)/v198),
      (27,11,(2428391378864693555895491132309072784:ℚ)/v198),
      (28,10,(954010898839701039816085801978564308:ℚ)/v198),
      (29,9,(328969275461965875798650276544332520:ℚ)/v198),
      (30,8,(98690782638589762739595082963299756:ℚ)/v198),
      (31,7,(25468589068023164577960021409883808:ℚ)/v198),
      (32,6,(5571253858630067251428754683412083:ℚ)/v198),
      (33,5,(1012955247023648591168864487893106:ℚ)/v198),
      (34,4,(148964006915242439877774189396045:ℚ)/v198),
      (35,3,(17024457933170564557459907359548:ℚ)/v198),
      (36,2,(1418704827764213713121658946629:ℚ)/v198),
      (37,1,(76686747446714254763332916034:ℚ)/v198),
      (38,0,(2018072301229322493771918843:ℚ)/v198)
    ]
    let v197:ℚ[X]:= Math.B699.N21.d9 v199
    have v175:Polynomial.C v189 - v194 = v197:= by
      apply Polynomial.funext
      intro x
      norm_num [v189,v194,v190,u111,u107,u108,u109,
        u32,u28,v178,v179,v182,v193,u23,v186,v188,v197,v199,v198,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v176:v193 = Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v193,u23,v186,v188,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v177:Math.B699.N21.d0 v197:= by
      apply u881
      norm_num [v199,v198]
    have v180:Math.B699.N21.d0 (Polynomial.C v189 - v194):= by
      rw [v175]
      exact v177
    have v181:Math.B699.N21.d0 v194:= by
      exact u26 (u36 v178 v179 v182 (by norm_num [v182]))
        v186 v188 (by norm_num [v186]) (by norm_num [v186,v188]) (by norm_num [v188])
    let v191:ℚ[X]:= u112
    let v195:ℚ[X]:= v191.comp v193
    have v183:Math.B699.N21.d0 v195:= by
      exact u26 (u20 v178 v179 0 v182 (by norm_num [v182]))
        v186 v188 (by norm_num [v186]) (by norm_num [v186,v188]) (by norm_num [v188])
    let v192:ℚ[X]:= u113
    let v196:ℚ[X]:= v192.comp v193
    have v184:Math.B699.N21.d0 v196:= by
      exact u26 (u20 v178 v179 1 v182 (by norm_num [v182]))
        v186 v188 (by norm_num [v186]) (by norm_num [v186,v188]) (by norm_num [v188])
    have v185:Math.B699.N20.d1 v189 v195 v194:= by
      exact Math.B699.N20.d1.leaf (lam:= v189) (w:= v195) (f:= v194)
        v183 v181 v180
    have v187:Math.B699.N20.d1 v189 v196 v194:= by
      exact Math.B699.N20.d1.leaf (lam:= v189) (w:= v196) (f:= v194)
        v184 v181 v180
    let v203:ℕ:= 23
    let v204:ℕ:= 15
    let v207:ℚ:= (1:ℚ) / 9
    let v211:ℚ:= (0:ℚ)
    let v213:ℚ:= (1:ℚ) / 8
    let v214:ℚ:= (50045175481493571025:ℚ) / 9903520314283042199192993792
    let v215:ℚ[X]:= u104
    let v218:ℚ[X]:= u23 v211 v213
    let v219:ℚ[X]:= v215.comp v218
    let v223:ℚ:= 2039047009230089621022190639415270213419008
    let v224:List (ℕ × ℕ × ℚ):= [
      (0,38,(10303857835760082203207535303945225:ℚ)/v223),
      (1,37,(391546597758883123721886341549918550:ℚ)/v223),
      (2,36,(7243612058539337788854897318673493175:ℚ)/v223),
      (3,35,(86923344702472053466258767824081918100:ℚ)/v223),
      (4,34,(760579266146630467829764218460716783375:ℚ)/v223),
      (5,33,(5171939009797087181242396685532874126950:ℚ)/v223),
      (6,32,(28445664553883979496833181770430807698225:ℚ)/v223),
      (7,31,(130037323674898191985523116664826549477600:ℚ)/v223),
      (8,30,(503894507703557828461761236653653666336612:ℚ)/v223),
      (9,29,(1679645548476304038931363854074061673061880:ℚ)/v223),
      (10,28,(4870940293619629328743197003140585560566300:ℚ)/v223),
      (11,27,(12398523289579844011371281847875341628566320:ℚ)/v223),
      (12,26,(27895423919354735971313062966932349267292460:ℚ)/v223),
      (13,25,(55785636646557574000789833839255379685565016:ℚ)/v223),
      (14,24,(99599751171410574590314872166606439775411540:ℚ)/v223),
      (15,23,(159311251175103140312815670437781557702517280:ℚ)/v223),
      (16,22,(228897168879721662346049551185016582428318990:ℚ)/v223),
      (17,21,(295995505777936662542235966403600452111040500:ℚ)/v223),
      (18,20,(344943382988144419805518586853626747386462194:ℚ)/v223),
      (19,19,(362525635053613164982096459705479450828403320:ℚ)/v223),
      (20,18,(343655266717527996691858444510843449909837810:ℚ)/v223),
      (21,17,(293714429748799221563288909150375928288509940:ℚ)/v223),
      (22,16,(226113622180508987246367286678564816976502030:ℚ)/v223),
      (23,15,(156550490350325665183561372184867652189774368:ℚ)/v223),
      (24,14,(97266223190474066820621952010103312573209940:ℚ)/v223),
      (25,13,(54075413599690216205281746355685558019318360:ℚ)/v223),
      (26,12,(26802248969321178370854201412576851521515820:ℚ)/v223),
      (27,11,(11788845191127387004952065674476145430063920:ℚ)/v223),
      (28,10,(4575093025011780003626660756563351579748892:ℚ)/v223),
      (29,9,(1555388781154175236339124676172861160939000:ℚ)/v223),
      (30,8,(459064205050533304976123280127213237210980:ℚ)/v223),
      (31,7,(116285642323906579836681750596440667693280:ℚ)/v223),
      (32,6,(24908441299036258018625963536827043965745:ℚ)/v223),
      (33,5,(4423265171298328118600749431200560952934:ℚ)/v223),
      (34,4,(633607450582842857187278474075659687695:ℚ)/v223),
      (35,3,(70334328016751248182252262522063952020:ℚ)/v223),
      (36,2,(5676139212681243775416954529994222775:ℚ)/v223),
      (37,1,(296212720991937687166786079754160470:ℚ)/v223),
      (38,0,(7501392167020478818910624720972809:ℚ)/v223)
    ]
    let v222:ℚ[X]:= Math.B699.N21.d9 v224
    have v200:Polynomial.C v214 - v219 = v222:= by
      apply Polynomial.funext
      intro x
      norm_num [v214,v219,v215,u104,u100,u101,u102,
        u31,u27,v203,v204,v207,v218,u23,v211,v213,v222,v224,v223,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v201:v218 = ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v218,u23,v211,v213,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v202:Math.B699.N21.d0 v222:= by
      apply u881
      norm_num [v224,v223]
    have v205:Math.B699.N21.d0 (Polynomial.C v214 - v219):= by
      rw [v200]
      exact v202
    have v206:Math.B699.N21.d0 v219:= by
      exact u26 (u35 v203 v204 v207 (by norm_num [v207]))
        v211 v213 (by norm_num [v211]) (by norm_num [v211,v213]) (by norm_num [v213])
    let v216:ℚ[X]:= u105
    let v220:ℚ[X]:= v216.comp v218
    have v208:Math.B699.N21.d0 v220:= by
      exact u26 (u37 v203 v204 0 v207 (by norm_num [v207]))
        v211 v213 (by norm_num [v211]) (by norm_num [v211,v213]) (by norm_num [v213])
    let v217:ℚ[X]:= u106
    let v221:ℚ[X]:= v217.comp v218
    have v209:Math.B699.N21.d0 v221:= by
      exact u26 (u37 v203 v204 1 v207 (by norm_num [v207]))
        v211 v213 (by norm_num [v211]) (by norm_num [v211,v213]) (by norm_num [v213])
    have v210:Math.B699.N20.d1 v214 v220 v219:= by
      exact Math.B699.N20.d1.leaf (lam:= v214) (w:= v220) (f:= v219)
        v208 v206 v205
    have v212:Math.B699.N20.d1 v214 v221 v219:= by
      exact Math.B699.N20.d1.leaf (lam:= v214) (w:= v221) (f:= v219)
        v209 v206 v205
    let v228:ℕ:= 23
    let v229:ℕ:= 15
    let v232:ℚ:= (1:ℚ) / 9
    let v236:ℚ:= (1:ℚ) / 8
    let v238:ℚ:= (3:ℚ) / 16
    let v239:ℚ:= (50045175481493571025:ℚ) / 9903520314283042199192993792
    let v240:ℚ[X]:= u104
    let v243:ℚ[X]:= u23 v236 v238
    let v244:ℚ[X]:= v240.comp v243
    let v248:ℚ:= 33407746199225788350827571436179787176657027072
    let v249:List (ℕ × ℕ × ℚ):= [
      (0,38,(122902809264463524969031675428418502656:ℚ)/v248),
      (1,37,(4578885517708467389964493934073772081152:ℚ)/v248),
      (2,36,(82976093893897134027371406487049720414208:ℚ)/v248),
      (3,35,(974431752179173548494794503406167863394304:ℚ)/v248),
      (4,34,(8336058260813777694099231015698536920760320:ℚ)/v248),
      (5,33,(55365982286429459678831465806067932702801920:ℚ)/v248),
      (6,32,(297124745453276889720410389227043160656199680:ℚ)/v248),
      (7,31,(1323948012702558652045517630405092157179822080:ℚ)/v248),
      (8,30,(4995243885272459398687332356276648911581020160:ℚ)/v248),
      (9,29,(16194581822356600272329339010855628617381969920:ℚ)/v248),
      (10,28,(45625546468127229591320779525228214987956617216:ℚ)/v248),
      (11,27,(112695097659660683829388576721699140733397368832:ℚ)/v248),
      (12,26,(245750800437485053484329950531302253754300694528:ℚ)/v248),
      (13,25,(475764402623616359182330553911233613919696584704:ℚ)/v248),
      (14,24,(821322142740855339769198235431838477845198602240:ℚ)/v248),
      (15,23,(1268725989032889159881321529452424272879423062016:ℚ)/v248),
      (16,22,(1758392538236967748879204211720669614026948575232:ℚ)/v248),
      (17,21,(2190864794392155913668377405521551952516497604608:ℚ)/v248),
      (18,20,(2457270757651846491069066891556576158510821965824:ℚ)/v248),
      (19,19,(2482917022353600964229459665883020318685522165760:ℚ)/v248),
      (20,18,(2260668013857348467948994000272819055071790661632:ℚ)/v248),
      (21,17,(1854101768159545245793495026478679932486069714944:ℚ)/v248),
      (22,16,(1368574965789336218163994011844051226161779081216:ℚ)/v248),
      (23,15,(907831791918011387912999626110213130425194446848:ℚ)/v248),
      (24,14,(540050521396411742174505103804709381733194956800:ℚ)/v248),
      (25,13,(287304077818471896369949883203561197722779238400:ℚ)/v248),
      (26,12,(136196181681709070007002040814246611388116787200:ℚ)/v248),
      (27,11,(57270334731307093632708921422809108967894323200:ℚ)/v248),
      (28,10,(21240413150180996580898805212557715014192998400:ℚ)/v248),
      (29,9,(6898715971227476979608584621716190363552896000:ℚ)/v248),
      (30,8,(1944674414730856491614414991859590473433868800:ℚ)/v248),
      (31,7,(470361174850758989650599103397720538390998400:ℚ)/v248),
      (32,6,(96177711357314234667210822146022877702718400:ℚ)/v248),
      (33,5,(16299691572937399506293287895126854383448800:ℚ)/v248),
      (34,4,(2227607227000845418666167832895551747566000:ℚ)/v248),
      (35,3,(235841350559283677072313456628986661775400:ℚ)/v248),
      (36,2,(18145219518005015161277800017803738741700:ℚ)/v248),
      (37,1,(902302797596549427822932039985603804450:ℚ)/v248),
      (38,0,(21760219542163860430059715725746769525:ℚ)/v248)
    ]
    let v247:ℚ[X]:= Math.B699.N21.d9 v249
    have v225:Polynomial.C v239 - v244 = v247:= by
      apply Polynomial.funext
      intro x
      norm_num [v239,v244,v240,u104,u100,u101,u102,
        u31,u27,v228,v229,v232,v243,u23,v236,v238,v247,v249,v248,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v226:v243 = (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v243,u23,v236,v238,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v227:Math.B699.N21.d0 v247:= by
      apply u881
      norm_num [v249,v248]
    have v230:Math.B699.N21.d0 (Polynomial.C v239 - v244):= by
      rw [v225]
      exact v227
    have v231:Math.B699.N21.d0 v244:= by
      exact u26 (u35 v228 v229 v232 (by norm_num [v232]))
        v236 v238 (by norm_num [v236]) (by norm_num [v236,v238]) (by norm_num [v238])
    let v241:ℚ[X]:= u105
    let v245:ℚ[X]:= v241.comp v243
    have v233:Math.B699.N21.d0 v245:= by
      exact u26 (u37 v228 v229 0 v232 (by norm_num [v232]))
        v236 v238 (by norm_num [v236]) (by norm_num [v236,v238]) (by norm_num [v238])
    let v242:ℚ[X]:= u106
    let v246:ℚ[X]:= v242.comp v243
    have v234:Math.B699.N21.d0 v246:= by
      exact u26 (u37 v228 v229 1 v232 (by norm_num [v232]))
        v236 v238 (by norm_num [v236]) (by norm_num [v236,v238]) (by norm_num [v238])
    have v235:Math.B699.N20.d1 v239 v245 v244:= by
      exact Math.B699.N20.d1.leaf (lam:= v239) (w:= v245) (f:= v244)
        v233 v231 v230
    have v237:Math.B699.N20.d1 v239 v246 v244:= by
      exact Math.B699.N20.d1.leaf (lam:= v239) (w:= v246) (f:= v244)
        v234 v231 v230
    let v253:ℕ:= 23
    let v254:ℕ:= 15
    let v257:ℚ:= (1:ℚ) / 9
    let v261:ℚ:= (3:ℚ) / 16
    let v263:ℚ:= (7:ℚ) / 32
    let v264:ℚ:= (50045175481493571025:ℚ) / 9903520314283042199192993792
    let v265:ℚ[X]:= u104
    let v268:ℚ[X]:= u23 v261 v263
    let v269:ℚ[X]:= v265.comp v268
    let v273:ℚ:= 9183051350959555935143820406623739974398854776500904787968
    let v274:List (ℕ × ℕ × ℚ):= [
      (0,38,(5981403602391927911693758359624913938401565081600:ℚ)/v273),
      (1,37,(216928453119812300728240047600420649659259473100800:ℚ)/v273),
      (2,36,(3825373990603309488602477422843362844296300252364800:ℚ)/v273),
      (3,35,(43698994056468997663357220054114290331235603028377600:ℚ)/v273),
      (4,34,(363495713303605711471039189447001597347303526498304000:ℚ)/v273),
      (5,33,(2346401063178373185270710592687357185128977900188467200:ℚ)/v273),
      (6,32,(12232115765128741147883644826891667046737025171036569600:ℚ)/v273),
      (7,31,(52917401947176103850145413636956443644541151026452889600:ℚ)/v273),
      (8,30,(193725315906016503240836554520942320530476868784304947200:ℚ)/v273),
      (9,29,(608992577821521503862747456118942142636788263445069824000:ℚ)/v273),
      (10,28,(1662430489652075303275054012636337989907764205080648089600:ℚ)/v273),
      (11,27,(3975399319710784864251302945030349568504747546473450700800:ℚ)/v273),
      (12,26,(8385342141571716188752432051329277766467978711433792716800:ℚ)/v273),
      (13,25,(15686853061629701416671580583077920015455273585691171225600:ℚ)/v273),
      (14,24,(26139446339512154131015337640572060630063768538425642188800:ℚ)/v273),
      (15,23,(38927608148839483152623265710707596260849182293276770697216:ℚ)/v273),
      (16,22,(51942300068464359978355377113361742460713253290228964130816:ℚ)/v273),
      (17,21,(62212457580649758201138946047321827923576807150176574636032:ℚ)/v273),
      (18,20,(66963115701846606198694811309340856117688143071270622199808:ℚ)/v273),
      (19,19,(64810136625013761889624535744043363621206038078762065592320:ℚ)/v273),
      (20,18,(56401822880467241180771502217999362970791553943689845276672:ℚ)/v273),
      (21,17,(44109136870731505941077582878261300114956008648759146708992:ℚ)/v273),
      (22,16,(30962292113476651818063180086025654583951598760286255448064:ℚ)/v273),
      (23,15,(19472289359235848702245375263979564171248889567873624702976:ℚ)/v273),
      (24,14,(10944398491369946561695164702166763315968903875407486976000:ℚ)/v273),
      (25,13,(5479412787662644759670861323342772085266272484443756953600:ℚ)/v273),
      (26,12,(2433507115247384073340708581981722472297024441551312076800:ℚ)/v273),
      (27,11,(953714141273020158792077579605075347510814373155818700800:ℚ)/v273),
      (28,10,(327689948787904198488239811571151521659332871023214489600:ℚ)/v273),
      (29,9,(97913318213964009987413166643548531367137882518349824000:ℚ)/v273),
      (30,8,(25184365255092880863376272410896614983421649505504947200:ℚ)/v273),
      (31,7,(5504478812995120015177251237699387913155482130452889600:ℚ)/v273),
      (32,6,(1005408782783365323844867614295256578542654294161569600:ℚ)/v273),
      (33,5,(150105614907031405686267866658530881397181817688467200:ℚ)/v273),
      (34,4,(17769607790535634679723189232665194718856155404554000:ℚ)/v273),
      (35,3,(1596241784727511156952446056959100845066540528377600:ℚ)/v273),
      (36,2,(101575523313240921729049912524953772840221150802300:ℚ)/v273),
      (37,1,(4047818331857617203682732284996170730060254350800:ℚ)/v273),
      (38,0,(75291093264468711097423377628082218156203753475:ℚ)/v273)
    ]
    let v272:ℚ[X]:= Math.B699.N21.d9 v274
    have v250:Polynomial.C v264 - v269 = v272:= by
      apply Polynomial.funext
      intro x
      norm_num [v264,v269,v265,u104,u100,u101,u102,
        u31,u27,v253,v254,v257,v268,u23,v261,v263,v272,v274,v273,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v251:v268 = ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v268,u23,v261,v263,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v252:Math.B699.N21.d0 v272:= by
      apply u881
      norm_num [v274,v273]
    have v255:Math.B699.N21.d0 (Polynomial.C v264 - v269):= by
      rw [v250]
      exact v252
    have v256:Math.B699.N21.d0 v269:= by
      exact u26 (u35 v253 v254 v257 (by norm_num [v257]))
        v261 v263 (by norm_num [v261]) (by norm_num [v261,v263]) (by norm_num [v263])
    let v266:ℚ[X]:= u105
    let v270:ℚ[X]:= v266.comp v268
    have v258:Math.B699.N21.d0 v270:= by
      exact u26 (u37 v253 v254 0 v257 (by norm_num [v257]))
        v261 v263 (by norm_num [v261]) (by norm_num [v261,v263]) (by norm_num [v263])
    let v267:ℚ[X]:= u106
    let v271:ℚ[X]:= v267.comp v268
    have v259:Math.B699.N21.d0 v271:= by
      exact u26 (u37 v253 v254 1 v257 (by norm_num [v257]))
        v261 v263 (by norm_num [v261]) (by norm_num [v261,v263]) (by norm_num [v263])
    have v260:Math.B699.N20.d1 v264 v270 v269:= by
      exact Math.B699.N20.d1.leaf (lam:= v264) (w:= v270) (f:= v269)
        v258 v256 v255
    have v262:Math.B699.N20.d1 v264 v271 v269:= by
      exact Math.B699.N20.d1.leaf (lam:= v264) (w:= v271) (f:= v269)
        v259 v256 v255
    let v278:ℕ:= 23
    let v279:ℕ:= 15
    let v282:ℚ:= (1:ℚ) / 9
    let v286:ℚ:= (7:ℚ) / 32
    let v288:ℚ:= (57:ℚ) / 256
    let v289:ℚ:= (50045175481493571025:ℚ) / 9903520314283042199192993792
    let v290:ℚ[X]:= u104
    let v293:ℚ[X]:= u23 v286 v288
    let v294:ℚ[X]:= v290.comp v293
    let v298:ℚ:= 190724514725405228575319921331514826741669990678684224110565027065159616703953162038738419712
    let v299:List (ℕ × ℕ × ℚ):= [
      (0,38,(1563734828131014434122261446361038246809535799718747633080818523927265258399334400:ℚ)/v298),
      (1,37,(56340926698388870964127538891225042702569447602515046857071103909236079819174707200:ℚ)/v298),
      (2,36,(986845585760266957218380755629211659691515360128981776647815422320867476654732083200:ℚ)/v298),
      (3,35,(11195042223652240158467128002896436253136888848505321954561625067850409719856784998400:ℚ)/v298),
      (4,34,(92455671835043197673930292504109293198639748921660434927440881743691085048746868736000:ℚ)/v298),
      (5,33,(592387884969006418429565224368960403911726974334226612428021915370699378331478707404800:ℚ)/v298),
      (6,32,(3064448325101762690623910602423848851324218438627550767775885614070366580823132890726400:ℚ)/v298),
      (7,31,(13151012550564898949567900428501139757828215515447352587870682974377889740905750357606400:ℚ)/v298),
      (8,30,(47742432775174013289651171738830068944925149710368047258333727479686427962009782635724800:ℚ)/v298),
      (9,29,(148770786612041140081975254387369843143122737657175394493933117176925154162859275452416000:ℚ)/v298),
      (10,28,(402389769978462481129864223767405816728892673525795545836266732486813484155663418812006400:ℚ)/v298),
      (11,27,(952949730188035454418392700779020777671787886356241808018765818676433577647601999885107200:ℚ)/v298),
      (12,26,(1989567191622882569396367915621339225987166689893803371102131047372548129634390587421491200:ℚ)/v298),
      (13,25,(3681767344562016967729360210856096782436999190247041931423115405034069700461376047572582400:ℚ)/v298),
      (14,24,(6064582561767357922688651978173467262266093508693618553606112347169113800290631812120576000:ℚ)/v298),
      (15,23,(8920927261123508163935987163607383617327447821312804393732450208383343281854971184139993088:ℚ)/v298),
      (16,22,(11747396528410757324248387847125424837167049521661709389439231009712099152528458745378766848:ℚ)/v298),
      (17,21,(13871910140180630253989549068402861094713975997679377147698781027417688236534406092156829696:ℚ)/v298),
      (18,20,(14704320908086076503887326120889607293231259146680588030306602319630446672176221275243413504:ℚ)/v298),
      (19,19,(13997368745057164705382853612830830456604704630743477820266242407373107958487667880975400960:ℚ)/v298),
      (20,18,(11963390619757615909865549110257278008503380839542375727658404123638117627472539047436484608:ℚ)/v298),
      (21,17,(9173098827268485433296579275218569902159455190899682830605232773068621993391755251540819968:ℚ)/v298),
      (22,16,(6300904725348887185309888124054683869368614068720182701178686594000938254449745268704280576:ℚ)/v298),
      (23,15,(3868923961516136949918544221722992154625019083747543950334675844241147784504396682912333824:ℚ)/v298),
      (24,14,(2117519347119011188600242255701308981995062826813034320851369123492377919217013719973232640:ℚ)/v298),
      (25,13,(1029188398551969759468214782144250304393324709836961298014517404220980976369397998918041600:ℚ)/v298),
      (26,12,(442124367409468533787639684498083338029643249747507566033721164080884371704286059178229760:ℚ)/v298),
      (27,11,(166885427645286108172380010892547216534744048490277454222443183081710642594623225153454080:ℚ)/v298),
      (28,10,(54946569170084778770167153535045423825031863548748908301335811045076281290647927993139200:ℚ)/v298),
      (29,9,(15637575212748021727600371620902465229863646435674546312710256405296783048573020610232320:ℚ)/v298),
      (30,8,(3803654692003538323754931011256826496263581482013097208505001476090362661173391249113088:ℚ)/v298),
      (31,7,(779665690780876859489145219549880324092325272931353354124077043595674744261851488452608:ℚ)/v298),
      (32,6,(132314214517229953855597552364494137361951678130891158859525020499714882922415248900096:ℚ)/v298),
      (33,5,(18182812332555517823139226872261248933157395242304608200389768298989457174285331267584:ℚ)/v298),
      (34,4,(1968491550676059532643533230302265443533708019160295394893770736754424558594086277120:ℚ)/v298),
      (35,3,(162439969297474002326436563526673215804034804900696743173097288004925759256686794752:ℚ)/v298),
      (36,2,(9832451099728532544724202267594317982054167354909106015858090250220697374342823232:ℚ)/v298),
      (37,1,(412640048975260548139915828871858881449355547727439128157551219903972113892182544:ℚ)/v298),
      (38,0,(9871643619357932812664949523853509534162563499387293106406221322259859025286351:ℚ)/v298)
    ]
    let v297:ℚ[X]:= Math.B699.N21.d9 v299
    have v275:Polynomial.C v289 - v294 = v297:= by
      apply Polynomial.funext
      intro x
      norm_num [v289,v294,v290,u104,u100,u101,u102,
        u31,u27,v278,v279,v282,v293,u23,v286,v288,v297,v299,v298,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v276:v293 = (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v293,u23,v286,v288,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v277:Math.B699.N21.d0 v297:= by
      apply u881
      norm_num [v299,v298]
    have v280:Math.B699.N21.d0 (Polynomial.C v289 - v294):= by
      rw [v275]
      exact v277
    have v281:Math.B699.N21.d0 v294:= by
      exact u26 (u35 v278 v279 v282 (by norm_num [v282]))
        v286 v288 (by norm_num [v286]) (by norm_num [v286,v288]) (by norm_num [v288])
    let v291:ℚ[X]:= u105
    let v295:ℚ[X]:= v291.comp v293
    have v283:Math.B699.N21.d0 v295:= by
      exact u26 (u37 v278 v279 0 v282 (by norm_num [v282]))
        v286 v288 (by norm_num [v286]) (by norm_num [v286,v288]) (by norm_num [v288])
    let v292:ℚ[X]:= u106
    let v296:ℚ[X]:= v292.comp v293
    have v284:Math.B699.N21.d0 v296:= by
      exact u26 (u37 v278 v279 1 v282 (by norm_num [v282]))
        v286 v288 (by norm_num [v286]) (by norm_num [v286,v288]) (by norm_num [v288])
    have v285:Math.B699.N20.d1 v289 v295 v294:= by
      exact Math.B699.N20.d1.leaf (lam:= v289) (w:= v295) (f:= v294)
        v283 v281 v280
    have v287:Math.B699.N20.d1 v289 v296 v294:= by
      exact Math.B699.N20.d1.leaf (lam:= v289) (w:= v296) (f:= v294)
        v284 v281 v280
    let v303:ℕ:= 23
    let v304:ℕ:= 15
    let v307:ℚ:= (1:ℚ) / 9
    let v311:ℚ:= (57:ℚ) / 256
    let v313:ℚ:= (29:ℚ) / 128
    let v314:ℚ:= (50045175481493571025:ℚ) / 9903520314283042199192993792
    let v315:ℚ[X]:= u104
    let v318:ℚ[X]:= u23 v311 v313
    let v319:ℚ[X]:= v315.comp v318
    let v323:ℚ:= 190724514725405228575319921331514826741669990678684224110565027065159616703953162038738419712
    let v324:List (ℕ × ℕ × ℚ):= [
      (0,38,(9871643619357932812664949523853509534162563499387293106406221322259859025286351:ℚ)/v323),
      (1,37,(337604866095942345622620334941007843146999278225995147929321600587777172029580132:ℚ)/v323),
      (2,36,(7056149333193759051584268992152829564866985383355678747413594335521484525426533988:ℚ)/v323),
      (3,35,(112440903996114410310102345091311270164345150953510689722111824783456106185747437024:ℚ)/v323),
      (4,34,(1384571007073078679190607560750022481363186559061222976855967808176656097656050239120:ℚ)/v323),
      (5,33,(13211861779593161763286033439193778586394973651108503664885735718277188693361900179520:ℚ)/v323),
      (6,32,(99438833279530599011352225704536683656214282880150322468577956968104956581213358316480:ℚ)/v323),
      (7,31,(603882946422988325342974207167358561618009020612751685343776299918864879853045117767680:ℚ)/v323),
      (8,30,(3022810803159531688339430772915311968463144036369056283586005824075362249483771070479360:ℚ)/v323),
      (9,29,(12699009526681972764675461088233276884098752975303896390885140443597691452559542017413120:ℚ)/v323),
      (10,28,(45439556096316764868724223736348200974650647987118314418084111363004068482827286157889536:ℚ)/v323),
      (11,27,(140145145448870516796305447647435761240440735344578673828667081074334517520125275917811712:ℚ)/v323),
      (12,26,(376160107954041820441925852707548247015312964082020802988607929484114575682575757872939008:ℚ)/v323),
      (13,25,(885481701294275930859730040080443328352712126419466224794848291564119779138742398589927424:ℚ)/v323),
      (14,24,(1839515350809464083704372153654219457505156662870180384144494360428691758393907162062192640:ℚ)/v323),
      (15,23,(3389290904967702920233706203023587061436474120823394593670803118044694385746446837099790336:ℚ)/v323),
      (16,22,(5560423351317524722230789276958913183276967394292070660515645622647214308487730287282880512:ℚ)/v323),
      (17,21,(8147506458415578906985225786451525847971513360919773745748351305149207309612521146941964288:ℚ)/v323),
      (18,20,(10686692279502784577244689438393831548685354046940755537076039220467282783419090839778361344:ℚ)/v323),
      (19,19,(12567258049591753331298418592715819677543617083883130398215370481517135385537538901996994560:ℚ)/v323),
      (20,18,(13261974305352168384675976715134471080212004109124813515428059206915317046183312307018268672:ℚ)/v323),
      (21,17,(12562174993598756557217669585329424174354225113470484314106740303227992261760049604359880704:ℚ)/v323),
      (22,16,(10677231077379043250553275674541072635963187152213960183893653321662902492087589129710206976:ℚ)/v323),
      (23,15,(8135062975791345979736880896859062015888760460718471269069410194990715517550314294595289088:ℚ)/v323),
      (24,14,(5546896171510842753400554374595727917023560354486331035691030300571623257413640894650777600:ℚ)/v323),
      (25,13,(3376633319101583943028807089818829477312930327301157012497954956942508264039052736882278400:ℚ)/v323),
      (26,12,(1829188292180137928047936122092346980307225003467471742483390082842887128752600311345971200:ℚ)/v323),
      (27,11,(878107052763076994347109099559272994241149270256390365807606395618729864903405304230707200:ℚ)/v323),
      (28,10,(371550212356110761652914606352585916120327665481928053851541791913002822676116748527206400:ℚ)/v323),
      (29,9,(137627572015279970011844429911196324121550415301361190119979027888733274401559246012416000:ℚ)/v323),
      (30,8,(44242653525003044390909708195656184643005221077372416409485554752731346340545104235724800:ℚ)/v323),
      (31,7,(12206266489422682553676259385407069064152645588923599056708149786819964437028118357606400:ℚ)/v323),
      (32,6,(2848439231377587266857347120119255841301888705690404287919429157602722206766172890726400:ℚ)/v323),
      (33,5,(551367127348594957035132552864172916311384730720881501247065670773136822570838707404800:ℚ)/v323),
      (34,4,(86159235483051835488091605218816211129666636405723506218749591252850013432746868736000:ℚ)/v323),
      (35,3,(10444438572456426363868933169357161230036185997185993234876414625643341559856784998400:ℚ)/v323),
      (36,2,(921638702691677919016621448043957336281471822931293598727019396060182676654732083200:ℚ)/v323),
      (37,1,(52668607478978383740105787950898498923190133977446603323772903169396079819174707200:ℚ)/v323),
      (38,0,(1463101145721810989715008459892344313850803499502237355097798270743265258399334400:ℚ)/v323)
    ]
    let v322:ℚ[X]:= Math.B699.N21.d9 v324
    have v300:Polynomial.C v314 - v319 = v322:= by
      apply Polynomial.funext
      intro x
      norm_num [v314,v319,v315,u104,u100,u101,u102,
        u31,u27,v303,v304,v307,v318,u23,v311,v313,v322,v324,v323,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v301:v318 = (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v318,u23,v311,v313,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v302:Math.B699.N21.d0 v322:= by
      apply u881
      norm_num [v324,v323]
    have v305:Math.B699.N21.d0 (Polynomial.C v314 - v319):= by
      rw [v300]
      exact v302
    have v306:Math.B699.N21.d0 v319:= by
      exact u26 (u35 v303 v304 v307 (by norm_num [v307]))
        v311 v313 (by norm_num [v311]) (by norm_num [v311,v313]) (by norm_num [v313])
    let v316:ℚ[X]:= u105
    let v320:ℚ[X]:= v316.comp v318
    have v308:Math.B699.N21.d0 v320:= by
      exact u26 (u37 v303 v304 0 v307 (by norm_num [v307]))
        v311 v313 (by norm_num [v311]) (by norm_num [v311,v313]) (by norm_num [v313])
    let v317:ℚ[X]:= u106
    let v321:ℚ[X]:= v317.comp v318
    have v309:Math.B699.N21.d0 v321:= by
      exact u26 (u37 v303 v304 1 v307 (by norm_num [v307]))
        v311 v313 (by norm_num [v311]) (by norm_num [v311,v313]) (by norm_num [v313])
    have v310:Math.B699.N20.d1 v314 v320 v319:= by
      exact Math.B699.N20.d1.leaf (lam:= v314) (w:= v320) (f:= v319)
        v308 v306 v305
    have v312:Math.B699.N20.d1 v314 v321 v319:= by
      exact Math.B699.N20.d1.leaf (lam:= v314) (w:= v321) (f:= v319)
        v309 v306 v305
    let v328:ℕ:= 23
    let v329:ℕ:= 15
    let v332:ℚ:= (1:ℚ) / 9
    let v336:ℚ:= (29:ℚ) / 128
    let v338:ℚ:= (15:ℚ) / 64
    let v339:ℚ:= (50045175481493571025:ℚ) / 9903520314283042199192993792
    let v340:ℚ[X]:= u104
    let v343:ℚ[X]:= u23 v336 v338
    let v344:ℚ[X]:= v340.comp v343
    let v348:ℚ:= 693851742563875554243422525656623572073549405754180858313939196032732494873755648
    let v349:List (ℕ × ℕ × ℚ):= [
      (0,38,(5322730960767552422894399423575466476361920284042707335530570237981975:ℚ)/v348),
      (1,37,(223576773912390073191270452392674101911730143868633065116603380469096300:ℚ)/v348),
      (2,36,(4551711388250291266339843397200547980580127078001839264231467458111875300:ℚ)/v348),
      (3,35,(59861554067570681862735804939293751509569949469822367867917661430936253600:ℚ)/v348),
      (4,34,(571870312963546568257992698866398099906642019982989799005855067964051594000:ℚ)/v348),
      (5,33,(4230759475734263818604867119120563165836636881456785948226431799595863339200:ℚ)/v348),
      (6,32,(25233211960681887784460328224763111212801651236169940594408937188638810865600:ℚ)/v348),
      (7,31,(124708061610110868649489770351041808647756092796270687039973798195107135385600:ℚ)/v348),
      (8,30,(520960119452016776522993450524532733449855666037677714451608861189487549619200:ℚ)/v348),
      (9,29,(1867114882379274840103149612387401042406722571628431970056864235747804952064000:ℚ)/v348),
      (10,28,(5807382797137283279965212863567305144144695556785337184191957096723246732185600:ℚ)/v348),
      (11,27,(15817879788238876476905722922662101966547784588442257024384039877692397436108800:ℚ)/v348),
      (12,26,(38000202272728734725033724437375224199115560182999015852892086492165169321164800:ℚ)/v348),
      (13,25,(80980419533625260775954258747665393159113251971748837516746028858127159949721600:ℚ)/v348),
      (14,24,(153785987925720225210663000404756645231606022923360281774796389402632513419673600:ℚ)/v348),
      (15,23,(261197860918174390329242630389107585665348352477479603329883686080013638134923264:ℚ)/v348),
      (16,22,(397889140318068133957851479312279963935828997923346761456288039948854065326325760:ℚ)/v348),
      (17,21,(544769090636948472580822896939780282488646953864967782398743548967265564038266880:ℚ)/v348),
      (18,20,(671374786284905505547262301121738343090275535908389088252489698201787365796085760:ℚ)/v348),
      (19,19,(745436675669892802834959890034817768627461194363302464181424288181216956865576960:ℚ)/v348),
      (20,18,(745931800402822541736673882501701339511677177382000879994936532448578066337234944:ℚ)/v348),
      (21,17,(672577144435025191157647381512759475480479663486053905039536604155403498023813120:ℚ)/v348),
      (22,16,(546022623691398515902467829722782854097159508677365643695606840705248305212293120:ℚ)/v348),
      (23,15,(398587074559031226359547742950864752235719431781516231279287877102147444397834240:ℚ)/v348),
      (24,14,(261111307815916052715933398742977972747665284367757519569780004454251292461629440:ℚ)/v348),
      (25,13,(153094819035479625693854234216006789717086185763783599226954156667881292990251008:ℚ)/v348),
      (26,12,(80061272080805700640008328859001391907434474996112900947928117968488400221634560:ℚ)/v348),
      (27,11,(37178913906960884191104385703162467577267007790077993486489520119152659629342720:ℚ)/v348),
      (28,10,(15246534799210896751564659618914132379689604395349762931926613385227302642647040:ℚ)/v348),
      (29,9,(5482936526573347908790442292027831706174384142560309049280204961617761104035840:ℚ)/v348),
      (30,8,(1713921717382892366455313919010027756465315413161043039275040262744675662692352:ℚ)/v348),
      (31,7,(460476472663861700162683123762959851628877729355038242450407947365822203166720:ℚ)/v348),
      (32,6,(104782722693071808821245817420717016107861696837124215584995313981839114240000:ℚ)/v348),
      (33,5,(19802530372412804925874707194078173208357621521285865264789615483253109555200:ℚ)/v348),
      (34,4,(3024668414615738167173878446378718546679438407132245857465777064450719744000:ℚ)/v348),
      (35,3,(358773272282167214065128693053804586209282832022362228073309651634592153600:ℚ)/v348),
      (36,2,(31008801917785819840898262713550258172848609674355335030892949198916812800:ℚ)/v348),
      (37,1,(1737264766358020039732144511393534055997857042082674899662137142856908800:ℚ)/v348),
      (38,0,(47353493206173505945161038794586734918219149771778315434023534041497600:ℚ)/v348)
    ]
    let v347:ℚ[X]:= Math.B699.N21.d9 v349
    have v325:Polynomial.C v339 - v344 = v347:= by
      apply Polynomial.funext
      intro x
      norm_num [v339,v344,v340,u104,u100,u101,u102,
        u31,u27,v328,v329,v332,v343,u23,v336,v338,v347,v349,v348,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v326:v343 = ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v343,u23,v336,v338,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v327:Math.B699.N21.d0 v347:= by
      apply u881
      norm_num [v349,v348]
    have v330:Math.B699.N21.d0 (Polynomial.C v339 - v344):= by
      rw [v325]
      exact v327
    have v331:Math.B699.N21.d0 v344:= by
      exact u26 (u35 v328 v329 v332 (by norm_num [v332]))
        v336 v338 (by norm_num [v336]) (by norm_num [v336,v338]) (by norm_num [v338])
    let v341:ℚ[X]:= u105
    let v345:ℚ[X]:= v341.comp v343
    have v333:Math.B699.N21.d0 v345:= by
      exact u26 (u37 v328 v329 0 v332 (by norm_num [v332]))
        v336 v338 (by norm_num [v336]) (by norm_num [v336,v338]) (by norm_num [v338])
    let v342:ℚ[X]:= u106
    let v346:ℚ[X]:= v342.comp v343
    have v334:Math.B699.N21.d0 v346:= by
      exact u26 (u37 v328 v329 1 v332 (by norm_num [v332]))
        v336 v338 (by norm_num [v336]) (by norm_num [v336,v338]) (by norm_num [v338])
    have v335:Math.B699.N20.d1 v339 v345 v344:= by
      exact Math.B699.N20.d1.leaf (lam:= v339) (w:= v345) (f:= v344)
        v333 v331 v330
    have v337:Math.B699.N20.d1 v339 v346 v344:= by
      exact Math.B699.N20.d1.leaf (lam:= v339) (w:= v346) (f:= v344)
        v334 v331 v330
    let v353:ℕ:= 23
    let v354:ℕ:= 15
    let v357:ℚ:= (1:ℚ) / 9
    let v361:ℚ:= (15:ℚ) / 64
    let v363:ℚ:= (1:ℚ) / 4
    let v364:ℚ:= (50045175481493571025:ℚ) / 9903520314283042199192993792
    let v365:ℚ[X]:= u104
    let v368:ℚ[X]:= u23 v361 v363
    let v369:ℚ[X]:= v365.comp v368
    let v373:ℚ:= 2524217934711034301448025964988568637904061345595185624238871954849792
    let v374:List (ℕ × ℕ × ℚ):= [
      (0,38,(172271004725820624826741691484446109527995394352831919364775:ℚ)/v373),
      (1,37,(6998629734108324913119101983450744841980009331809481082580200:ℚ)/v373),
      (2,36,(138126710426595682867958609779404447499265137452708274030171200:ℚ)/v373),
      (3,35,(1764732899328897541924713272449292575353460722810234709497254400:ℚ)/v373),
      (4,34,(16408990362197732718560966888982829378638107611081253319000576000:ℚ)/v373),
      (5,33,(118359861804369328787365000372720841730824437356528742469622988800:ℚ)/v373),
      (6,32,(689351210395618156104559423473063959953546024246539726706527436800:ℚ)/v373),
      (7,31,(3331681988862009666293125369128496378521408104169250518610854543360:ℚ)/v373),
      (8,30,(13628222049990345557838192743477932265285292367636243354584694652928:ℚ)/v373),
      (9,29,(47883684906987108463401957213930143715317583389353301317399452057600:ℚ)/v373),
      (10,28,(146167682239359726397318874971013041607792548922942485740420983685120:ℚ)/v373),
      (11,27,(391117396847966376812610349828291764613707056954416061521674947788800:ℚ)/v373),
      (12,26,(923913389296664180162813913254151566220808340008476645545287184547840:ℚ)/v373),
      (13,25,(1937665742723985411937776097907779039004193202038337541695116568166400:ℚ)/v373),
      (14,24,(3624162391589910201871672603409966393461733615524079666187748811735040:ℚ)/v373),
      (15,23,(6066879969501380504133068113563973630770855982194550704728270123827200:ℚ)/v373),
      (16,22,(9114909762172732895844567633942721689025336084328165584445321112453120:ℚ)/v373),
      (17,21,(12315888264153656979819958888690126919150554988485269237597227534254080:ℚ)/v373),
      (18,20,(14987549064839160920166599909940420559959157568035758673954232214749184:ℚ)/v373),
      (19,19,(16440707711731465612234651643178906384030091182798814953086689424179200:ℚ)/v373),
      (20,18,(16261812871089316886428701670760085629675988902758911851428753692426240:ℚ)/v373),
      (21,17,(14500180049243617465925747219363258984799366585965629933667268899635200:ℚ)/v373),
      (22,16,(11646392569829877195500802247486933791879573619539692625538916108206080:ℚ)/v373),
      (23,15,(8414519565841078840012124936732970904447776523906295598704591110144000:ℚ)/v373),
      (24,14,(5457851666963670817126687653131175625312573199615424515220933212897280:ℚ)/v373),
      (25,13,(3169573053474623641043200922206883654622991455597706970022252694732800:ℚ)/v373),
      (26,12,(1642297245152168830948497025606102820756513600231485340740769745469440:ℚ)/v373),
      (27,11,(755876760640346557049893069396307449687687204894345572299896761876480:ℚ)/v373),
      (28,10,(307311184336650060162077705909425508182346950656316715329742526480384:ℚ)/v373),
      (29,9,(109595763298008015086924529202169374054994998949231515112322996633600:ℚ)/v373),
      (30,8,(33982734361859913899619927743178448315001314614211973782782156472320:ℚ)/v373),
      (31,7,(9058756630066204977753460838221059434979640583293183892800929792000:ℚ)/v373),
      (32,6,(2045717516669001351233300112154659507511325409445588779724009635840:ℚ)/v373),
      (33,5,(383766423060970563534081933037199485855437814197371577920441548800:ℚ)/v373),
      (34,4,(58197541470088981069748778838790059358062970768040771377682186240:ℚ)/v373),
      (35,3,(6855087108329128159546106928685620881697296935573545274677657600:ℚ)/v373),
      (36,2,(588470708052700338924517426731015597421968782011622706873630720:ℚ)/v373),
      (37,1,(32751377289647120430440539524666464041976030267961479905935360:ℚ)/v373),
      (38,0,(886976384526706629322413663146486370949577277551025038819328:ℚ)/v373)
    ]
    let v372:ℚ[X]:= Math.B699.N21.d9 v374
    have v350:Polynomial.C v364 - v369 = v372:= by
      apply Polynomial.funext
      intro x
      norm_num [v364,v369,v365,u104,u100,u101,u102,
        u31,u27,v353,v354,v357,v368,u23,v361,v363,v372,v374,v373,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v351:v368 = (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v368,u23,v361,v363,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v352:Math.B699.N21.d0 v372:= by
      apply u881
      norm_num [v374,v373]
    have v355:Math.B699.N21.d0 (Polynomial.C v364 - v369):= by
      rw [v350]
      exact v352
    have v356:Math.B699.N21.d0 v369:= by
      exact u26 (u35 v353 v354 v357 (by norm_num [v357]))
        v361 v363 (by norm_num [v361]) (by norm_num [v361,v363]) (by norm_num [v363])
    let v366:ℚ[X]:= u105
    let v370:ℚ[X]:= v366.comp v368
    have v358:Math.B699.N21.d0 v370:= by
      exact u26 (u37 v353 v354 0 v357 (by norm_num [v357]))
        v361 v363 (by norm_num [v361]) (by norm_num [v361,v363]) (by norm_num [v363])
    let v367:ℚ[X]:= u106
    let v371:ℚ[X]:= v367.comp v368
    have v359:Math.B699.N21.d0 v371:= by
      exact u26 (u37 v353 v354 1 v357 (by norm_num [v357]))
        v361 v363 (by norm_num [v361]) (by norm_num [v361,v363]) (by norm_num [v363])
    have v360:Math.B699.N20.d1 v364 v370 v369:= by
      exact Math.B699.N20.d1.leaf (lam:= v364) (w:= v370) (f:= v369)
        v358 v356 v355
    have v362:Math.B699.N20.d1 v364 v371 v369:= by
      exact Math.B699.N20.d1.leaf (lam:= v364) (w:= v371) (f:= v369)
        v359 v356 v355
    let v378:ℕ:= 23
    let v379:ℕ:= 15
    let v382:ℚ:= (1:ℚ) / 9
    let v386:ℚ:= (1:ℚ) / 4
    let v388:ℚ:= (1:ℚ) / 2
    let v389:ℚ:= (50045175481493571025:ℚ) / 9903520314283042199192993792
    let v390:ℚ[X]:= u104
    let v393:ℚ[X]:= u23 v386 v388
    let v394:ℚ[X]:= v390.comp v393
    let v398:ℚ:= 2039047009230089621022190639415270213419008
    let v399:List (ℕ × ℕ × ℚ):= [
      (0,38,(716493817453975593347680047295497:ℚ)/v398),
      (1,37,(39553375943930352474174512841492822:ℚ)/v398),
      (2,36,(1004064247196977834714200090452929719:ℚ)/v398),
      (3,35,(15761704141353432959085612739904411796:ℚ)/v398),
      (4,34,(173489825210462485627041697769172883215:ℚ)/v398),
      (5,33,(1437023027297278287671303529804545373798:ℚ)/v398),
      (6,32,(9373013635885849926668864036114999700273:ℚ)/v398),
      (7,31,(49681768110947840707390222270801644593376:ℚ)/v398),
      (8,30,(218980719725718726247552147974924893982564:ℚ)/v398),
      (9,29,(816708269096963029827069935937594846207480:ℚ)/v398),
      (10,28,(2612482600915707432031017699286841203452444:ℚ)/v398),
      (11,27,(7244567589806679536069291495539210018450224:ℚ)/v398),
      (12,26,(17565810388933216768899426686335086277767468:ℚ)/v398),
      (13,25,(37499632340323143360654363479172882475672152:ℚ)/v398),
      (14,24,(70879582416639880949937569910956583227694420:ℚ)/v398),
      (15,23,(119154538726113425229392053392395992788853280:ℚ)/v398),
      (16,22,(178795406144690538576625188662612268201958670:ℚ)/v398),
      (17,21,(240144833965474271794461435426111273477865460:ℚ)/v398),
      (18,20,(289312510491134125656286110052700896591478770:ℚ)/v398),
      (19,19,(313083924526710229594777107033323519204323960:ℚ)/v398),
      (20,18,(304585066549888334302534703726563073200619506:ℚ)/v398),
      (21,17,(266443184642049751180003582768088142673870836:ℚ)/v398),
      (22,16,(209498454494440806464013676686917364379180302:ℚ)/v398),
      (23,15,(147910189047621522890816257603838642699854368:ℚ)/v398),
      (24,14,(93611181687152988273395673977856189343145300:ℚ)/v398),
      (25,13,(52981261987931098640641374535758916828160600:ℚ)/v398),
      (26,12,(26728393221945861908392498851093653462528300:ℚ)/v398),
      (27,11,(11968729060419156550399972828578115183274800:ℚ)/v398),
      (28,10,(4731600578469501853493622273501676562115100:ℚ)/v398),
      (29,9,(1640145149361586714691890115207363837419000:ℚ)/v398),
      (30,8,(494187140820656982988307846755870079225700:ℚ)/v398),
      (31,7,(127992056472796600700480330065914549477600:ℚ)/v398),
      (32,6,(28081559997781945663174575874750807698225:ℚ)/v398),
      (33,5,(5118229695761799014628791268572874126950:ℚ)/v398),
      (34,4,(754190334461129845775929466460716783375:ℚ)/v398),
      (35,3,(86334432578062861125737807824081918100:ℚ)/v398),
      (36,2,(7204140709965211813712497318673493175:ℚ)/v398),
      (37,1,(389835229900482335241886341549918550:ℚ)/v398),
      (38,0,(10267829038741118235207535303945225:ℚ)/v398)
    ]
    let v397:ℚ[X]:= Math.B699.N21.d9 v399
    have v375:Polynomial.C v389 - v394 = v397:= by
      apply Polynomial.funext
      intro x
      norm_num [v389,v394,v390,u104,u100,u101,u102,
        u31,u27,v378,v379,v382,v393,u23,v386,v388,v397,v399,v398,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v376:v393 = (Math.B699.N20.halfLeft).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v393,u23,v386,v388,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v377:Math.B699.N21.d0 v397:= by
      apply u881
      norm_num [v399,v398]
    have v380:Math.B699.N21.d0 (Polynomial.C v389 - v394):= by
      rw [v375]
      exact v377
    have v381:Math.B699.N21.d0 v394:= by
      exact u26 (u35 v378 v379 v382 (by norm_num [v382]))
        v386 v388 (by norm_num [v386]) (by norm_num [v386,v388]) (by norm_num [v388])
    let v391:ℚ[X]:= u105
    let v395:ℚ[X]:= v391.comp v393
    have v383:Math.B699.N21.d0 v395:= by
      exact u26 (u37 v378 v379 0 v382 (by norm_num [v382]))
        v386 v388 (by norm_num [v386]) (by norm_num [v386,v388]) (by norm_num [v388])
    let v392:ℚ[X]:= u106
    let v396:ℚ[X]:= v392.comp v393
    have v384:Math.B699.N21.d0 v396:= by
      exact u26 (u37 v378 v379 1 v382 (by norm_num [v382]))
        v386 v388 (by norm_num [v386]) (by norm_num [v386,v388]) (by norm_num [v388])
    have v385:Math.B699.N20.d1 v389 v395 v394:= by
      exact Math.B699.N20.d1.leaf (lam:= v389) (w:= v395) (f:= v394)
        v383 v381 v380
    have v387:Math.B699.N20.d1 v389 v396 v394:= by
      exact Math.B699.N20.d1.leaf (lam:= v389) (w:= v396) (f:= v394)
        v384 v381 v380
    let v403:ℕ:= 23
    let v404:ℕ:= 15
    let v407:ℚ:= (1:ℚ) / 9
    let v411:ℚ:= (1:ℚ) / 2
    let v413:ℚ:= (1:ℚ)
    let v414:ℚ:= (50045175481493571025:ℚ) / 9903520314283042199192993792
    let v415:ℚ[X]:= u104
    let v418:ℚ[X]:= u23 v411 v413
    let v419:ℚ[X]:= v415.comp v418
    let v423:ℚ:= 2039047009230089621022190639415270213419008
    let v424:List (ℕ × ℕ × ℚ):= [
      (0,38,(10267829038741118235207535303945225:ℚ)/v423),
      (1,37,(390862050615522808329886341549918550:ℚ)/v423),
      (2,36,(7237696130068823905309297318673493175:ℚ)/v423),
      (3,35,(86892545845628362307853647824081918100:ℚ)/v423),
      (4,34,(760471366240626946083262586460716783375:ℚ)/v423),
      (5,33,(5171669615817890091026085164252874126950:ℚ)/v423),
      (6,32,(28445168688697445582332531008190807698225:ℚ)/v423),
      (7,31,(130036635724222175449285799897082549477600:ℚ)/v423),
      (8,30,(503893898177017732675269731382814079225700:ℚ)/v423),
      (9,29,(1679648161203787827412117577889086717419000:ℚ)/v423),
      (10,28,(4870981025585392223555278485309788382915100:ℚ)/v423),
      (11,27,(12398861585680891269188955148969320866474800:ℚ)/v423),
      (12,26,(27897438936542122745631206028099115785728300:ℚ)/v423),
      (13,25,(55794878010519910453861634067252598750208600:ℚ)/v423),
      (14,24,(99633710774355845620569858846309949606927700:ℚ)/v423),
      (15,23,(159413937248991707532528415349887028177887776:ℚ)/v423),
      (16,22,(229157534797391148631825389927593669601156366:ℚ)/v423),
      (17,21,(296556809738110507988509954945528147128090612:ℚ)/v423),
      (18,20,(345982944694501326435703725593432517400461298:ℚ)/v423),
      (19,19,(364192573362636846669692825906767828013478520:ℚ)/v423),
      (20,18,(345982944694505299509321356249813458763513842:ℚ)/v423),
      (21,17,(296556809738147416284959743701736215331733492:ℚ)/v423),
      (22,16,(229157534797659367790157364205675155920149774:ℚ)/v423),
      (23,15,(159413937250545647174677698383749617224999456:ℚ)/v423),
      (24,14,(99633710781591029484362456149158296574172500:ℚ)/v423),
      (25,13,(55794878037690976511242975443528646081536600:ℚ)/v423),
      (26,12,(27897439018845488255621487721764323040768300:ℚ)/v423),
      (27,11,(12398861786153550335831772320784143573674800:ℚ)/v423),
      (28,10,(4870981415988894774791053411736627832515100:ℚ)/v423),
      (29,9,(1679648764134101646479673590254009597419000:ℚ)/v423),
      (30,8,(503894629240230493943902077076202879225700:ℚ)/v423),
      (31,7,(130037323674898191985523116664826549477600:ℚ)/v423),
      (32,6,(28445664553883979496833181770430807698225:ℚ)/v423),
      (33,5,(5171939009797087181242396685532874126950:ℚ)/v423),
      (34,4,(760579266146630467829764218460716783375:ℚ)/v423),
      (35,3,(86923344702472053466258767824081918100:ℚ)/v423),
      (36,2,(7243612058539337788854897318673493175:ℚ)/v423),
      (37,1,(391546597758883123721886341549918550:ℚ)/v423),
      (38,0,(10303857835760082203207535303945225:ℚ)/v423)
    ]
    let v422:ℚ[X]:= Math.B699.N21.d9 v424
    have v400:Polynomial.C v414 - v419 = v422:= by
      apply Polynomial.funext
      intro x
      norm_num [v414,v419,v415,u104,u100,u101,u102,
        u31,u27,v403,v404,v407,v418,u23,v411,v413,v422,v424,v423,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v401:v418 = Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v418,u23,v411,v413,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v402:Math.B699.N21.d0 v422:= by
      apply u881
      norm_num [v424,v423]
    have v405:Math.B699.N21.d0 (Polynomial.C v414 - v419):= by
      rw [v400]
      exact v402
    have v406:Math.B699.N21.d0 v419:= by
      exact u26 (u35 v403 v404 v407 (by norm_num [v407]))
        v411 v413 (by norm_num [v411]) (by norm_num [v411,v413]) (by norm_num [v413])
    let v416:ℚ[X]:= u105
    let v420:ℚ[X]:= v416.comp v418
    have v408:Math.B699.N21.d0 v420:= by
      exact u26 (u37 v403 v404 0 v407 (by norm_num [v407]))
        v411 v413 (by norm_num [v411]) (by norm_num [v411,v413]) (by norm_num [v413])
    let v417:ℚ[X]:= u106
    let v421:ℚ[X]:= v417.comp v418
    have v409:Math.B699.N21.d0 v421:= by
      exact u26 (u37 v403 v404 1 v407 (by norm_num [v407]))
        v411 v413 (by norm_num [v411]) (by norm_num [v411,v413]) (by norm_num [v413])
    have v410:Math.B699.N20.d1 v414 v420 v419:= by
      exact Math.B699.N20.d1.leaf (lam:= v414) (w:= v420) (f:= v419)
        v408 v406 v405
    have v412:Math.B699.N20.d1 v414 v421 v419:= by
      exact Math.B699.N20.d1.leaf (lam:= v414) (w:= v421) (f:= v419)
        v409 v406 v405
    have v458:Math.B699.N20.d1 u110 ((u112).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u111).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u110) (w:= ((u112).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u111).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v139,u110,v145,v141,v144,v140,v126,Polynomial.comp_assoc] using v135)
        (by simpa only [v164,u110,v170,v166,v169,v165,v151,Polynomial.comp_assoc] using v160)
    have v425:Math.B699.N20.d1 u110 ((u112).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u111).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u110) (w:= ((u112).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u111).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v114,u110,v120,v116,v119,v115,v101,Polynomial.comp_assoc] using v110)
        (by simpa only [Polynomial.comp_assoc] using v458)
    have v426:Math.B699.N20.d1 u110 ((u112).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u111).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u110) (w:= ((u112).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u111).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v89,u110,v95,v91,v94,v90,v76,Polynomial.comp_assoc] using v85)
        (by simpa only [Polynomial.comp_assoc] using v425)
    have v427:Math.B699.N20.d1 u110 ((u112).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u111).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u110) (w:= ((u112).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u111).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v64,u110,v70,v66,v69,v65,v51,Polynomial.comp_assoc] using v60)
        (by simpa only [Polynomial.comp_assoc] using v426)
    have v428:Math.B699.N20.d1 u110 ((u112).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u111).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u110) (w:= ((u112).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u111).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [v39,u110,v45,v41,v44,v40,v26,Polynomial.comp_assoc] using v35)
        (by simpa only [Polynomial.comp_assoc] using v427)
    have v429:Math.B699.N20.d1 u110 ((u112).comp (Math.B699.N20.halfLeft)) ((u111).comp (Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u110) (w:= ((u112).comp (Math.B699.N20.halfLeft))) (f:= ((u111).comp (Math.B699.N20.halfLeft)))
        (by simpa only [v14,u110,v20,v16,v19,v15,v1,Polynomial.comp_assoc] using v10)
        (by simpa only [Polynomial.comp_assoc] using v428)
    have v430:Math.B699.N20.d1 u110 (u112) (u111):= by
      exact Math.B699.N20.d1.split (lam:= u110) (w:= (u112)) (f:= (u111))
        (by simpa only [Polynomial.comp_assoc] using v429)
        (by simpa only [v189,u110,v195,v191,v194,v190,v176,Polynomial.comp_assoc] using v185)
    have v431:Math.B699.N20.d1 u110 (u112) (u111):= by
      exact v430
    have v432:Math.B699.N20.d1 u110 ((u113).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u111).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u110) (w:= ((u113).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u111).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v139,u110,v146,v142,v144,v140,v126,Polynomial.comp_assoc] using v137)
        (by simpa only [v164,u110,v171,v167,v169,v165,v151,Polynomial.comp_assoc] using v162)
    have v433:Math.B699.N20.d1 u103 ((u105).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)) ((u104).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u103) (w:= ((u105).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft))) (f:= ((u104).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)))
        (by simpa only [v289,u103,v295,v291,v294,v290,v276,Polynomial.comp_assoc] using v285)
        (by simpa only [v314,u103,v320,v316,v319,v315,v301,Polynomial.comp_assoc] using v310)
    have v434:Math.B699.N20.d1 u110 ((u113).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u111).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u110) (w:= ((u113).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u111).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v114,u110,v121,v117,v119,v115,v101,Polynomial.comp_assoc] using v112)
        (by simpa only [Polynomial.comp_assoc] using v432)
    have v435:Math.B699.N20.d1 u110 ((u113).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u111).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u110) (w:= ((u113).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u111).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v89,u110,v96,v92,v94,v90,v76,Polynomial.comp_assoc] using v87)
        (by simpa only [Polynomial.comp_assoc] using v434)
    have v436:Math.B699.N20.d1 u110 ((u113).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u111).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u110) (w:= ((u113).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u111).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v64,u110,v71,v67,v69,v65,v51,Polynomial.comp_assoc] using v62)
        (by simpa only [Polynomial.comp_assoc] using v435)
    have v437:Math.B699.N20.d1 u110 ((u113).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u111).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u110) (w:= ((u113).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u111).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [v39,u110,v46,v42,v44,v40,v26,Polynomial.comp_assoc] using v37)
        (by simpa only [Polynomial.comp_assoc] using v436)
    have v438:Math.B699.N20.d1 u110 ((u113).comp (Math.B699.N20.halfLeft)) ((u111).comp (Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u110) (w:= ((u113).comp (Math.B699.N20.halfLeft))) (f:= ((u111).comp (Math.B699.N20.halfLeft)))
        (by simpa only [v14,u110,v21,v17,v19,v15,v1,Polynomial.comp_assoc] using v12)
        (by simpa only [Polynomial.comp_assoc] using v437)
    have v439:Math.B699.N20.d1 u110 (u113) (u111):= by
      exact Math.B699.N20.d1.split (lam:= u110) (w:= (u113)) (f:= (u111))
        (by simpa only [Polynomial.comp_assoc] using v438)
        (by simpa only [v189,u110,v196,v192,v194,v190,v176,Polynomial.comp_assoc] using v187)
    have v440:Math.B699.N20.d1 u110 (u113) (u111):= by
      exact v439
    have v441:Math.B699.N20.d1 u103 ((u105).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)) ((u104).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u103) (w:= ((u105).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft))) (f:= ((u104).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)))
        (by simpa only [Polynomial.comp_assoc] using v433)
        (by simpa only [v339,u103,v345,v341,v344,v340,v326,Polynomial.comp_assoc] using v335)
    have v442:Math.B699.N20.d1 u103 ((u105).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u104).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u103) (w:= ((u105).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u104).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [Polynomial.comp_assoc] using v441)
        (by simpa only [v364,u103,v370,v366,v369,v365,v351,Polynomial.comp_assoc] using v360)
    have v443:Math.B699.N20.d1 u103 ((u105).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u104).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u103) (w:= ((u105).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u104).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v264,u103,v270,v266,v269,v265,v251,Polynomial.comp_assoc] using v260)
        (by simpa only [Polynomial.comp_assoc] using v442)
    have v444:Math.B699.N20.d1 u103 ((u105).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u104).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u103) (w:= ((u105).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u104).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [v239,u103,v245,v241,v244,v240,v226,Polynomial.comp_assoc] using v235)
        (by simpa only [Polynomial.comp_assoc] using v443)
    have v445:Math.B699.N20.d1 u103 ((u105).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)) ((u104).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u103) (w:= ((u105).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft))) (f:= ((u104).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)))
        (by simpa only [v214,u103,v220,v216,v219,v215,v201,Polynomial.comp_assoc] using v210)
        (by simpa only [Polynomial.comp_assoc] using v444)
    have v446:Math.B699.N20.d1 u103 ((u105).comp (Math.B699.N20.halfLeft)) ((u104).comp (Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u103) (w:= ((u105).comp (Math.B699.N20.halfLeft))) (f:= ((u104).comp (Math.B699.N20.halfLeft)))
        (by simpa only [Polynomial.comp_assoc] using v445)
        (by simpa only [v389,u103,v395,v391,v394,v390,v376,Polynomial.comp_assoc] using v385)
    have v447:Math.B699.N20.d1 u103 (u105) (u104):= by
      exact Math.B699.N20.d1.split (lam:= u103) (w:= (u105)) (f:= (u104))
        (by simpa only [Polynomial.comp_assoc] using v446)
        (by simpa only [v414,u103,v420,v416,v419,v415,v401,Polynomial.comp_assoc] using v410)
    have v448:Math.B699.N20.d1 u103 (u105) (u104):= by
      exact v447
    have v449:Math.B699.N20.d1 u103 ((u106).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)) ((u104).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u103) (w:= ((u106).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft))) (f:= ((u104).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)))
        (by simpa only [v289,u103,v296,v292,v294,v290,v276,Polynomial.comp_assoc] using v287)
        (by simpa only [v314,u103,v321,v317,v319,v315,v301,Polynomial.comp_assoc] using v312)
    have v450:Math.B699.N20.d1 u103 ((u106).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)) ((u104).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u103) (w:= ((u106).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft))) (f:= ((u104).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)))
        (by simpa only [Polynomial.comp_assoc] using v449)
        (by simpa only [v339,u103,v346,v342,v344,v340,v326,Polynomial.comp_assoc] using v337)
    have v451:Math.B699.N20.d1 u103 ((u106).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u104).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u103) (w:= ((u106).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u104).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [Polynomial.comp_assoc] using v450)
        (by simpa only [v364,u103,v371,v367,v369,v365,v351,Polynomial.comp_assoc] using v362)
    have v452:Math.B699.N20.d1 u103 ((u106).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u104).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u103) (w:= ((u106).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u104).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v264,u103,v271,v267,v269,v265,v251,Polynomial.comp_assoc] using v262)
        (by simpa only [Polynomial.comp_assoc] using v451)
    have v453:Math.B699.N20.d1 u103 ((u106).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u104).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u103) (w:= ((u106).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u104).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [v239,u103,v246,v242,v244,v240,v226,Polynomial.comp_assoc] using v237)
        (by simpa only [Polynomial.comp_assoc] using v452)
    have v454:Math.B699.N20.d1 u103 ((u106).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)) ((u104).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u103) (w:= ((u106).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft))) (f:= ((u104).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)))
        (by simpa only [v214,u103,v221,v217,v219,v215,v201,Polynomial.comp_assoc] using v212)
        (by simpa only [Polynomial.comp_assoc] using v453)
    have v455:Math.B699.N20.d1 u103 ((u106).comp (Math.B699.N20.halfLeft)) ((u104).comp (Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u103) (w:= ((u106).comp (Math.B699.N20.halfLeft))) (f:= ((u104).comp (Math.B699.N20.halfLeft)))
        (by simpa only [Polynomial.comp_assoc] using v454)
        (by simpa only [v389,u103,v396,v392,v394,v390,v376,Polynomial.comp_assoc] using v387)
    have v456:Math.B699.N20.d1 u103 (u106) (u104):= by
      exact Math.B699.N20.d1.split (lam:= u103) (w:= (u106)) (f:= (u104))
        (by simpa only [Polynomial.comp_assoc] using v455)
        (by simpa only [v414,u103,v421,v417,v419,v415,v401,Polynomial.comp_assoc] using v412)
    have v457:Math.B699.N20.d1 u103 (u106) (u104):= by
      exact v456
    exact ⟨v448,v457,v431,v440⟩
  have u114:Math.B699.N20.d1 u110 (u112) (u111):= u118.2.2.1
  have u115:Math.B699.N20.d1 u110 (u113) (u111):= u118.2.2.2
  have u116:Math.B699.N20.d1 u103 (u105) (u104):= u118.1
  have u117:Math.B699.N20.d1 u103 (u106) (u104):= u118.2.1
  let u119:ℕ:= 5
  let u120:ℕ:= 4
  let u121:ℚ:= (3:ℚ) / 128
  let u122:ℚ:= (3471657440109699659204039683:ℚ) / 79228162514264337593543950336
  let u123:ℚ[X]:= u31 u119 u120 u121
  let u124:ℚ[X]:= u33 u119 u120 0 u121
  let u125:ℚ[X]:= u33 u119 u120 1 u121
  let u126:ℕ:= 5
  let u127:ℕ:= 4
  let u128:ℚ:= (3:ℚ) / 128
  let u129:ℚ:= (305863978762465520211566521:ℚ) / 79228162514264337593543950336
  let u130:ℚ[X]:= u32 u126 u127 u128
  let u131:ℚ[X]:= u34 u126 u127 0 u128
  let u132:ℚ[X]:= u34 u126 u127 1 u128
  have u137:
      (Math.B699.N20.d1 u122 (u124) (u123)) ∧
      (Math.B699.N20.d1 u122 (u125) (u123)) ∧
      (Math.B699.N20.d1 u129 (u131) (u130)) ∧
      (Math.B699.N20.d1 u129 (u132) (u130)):= by
    classical
    letI:Infinite ℚ:= Infinite.of_injective (fun n:ℕ => (n:ℚ)) Nat.cast_injective
    let v469:ℚ:= 79228162514264337593543950336
    let v470:List (ℕ × ℕ × ℚ):= [
      (0,9,(22915097440490794778006531:ℚ)/v469),
      (1,8,(646302633863094209753068571:ℚ)/v469),
      (2,7,(6315886506046601549967052908:ℚ)/v469),
      (3,6,(26661969551795591217400025340:ℚ)/v469),
      (4,5,(61089346061790075214171527546:ℚ)/v469),
      (5,4,(84134804573804827854675695994:ℚ)/v469),
      (6,3,(72107184896878154575463878908:ℚ)/v469),
      (7,2,(37838004543365295999474782316:ℚ)/v469),
      (8,1,(11171769284969757016056345627:ℚ)/v469),
      (9,0,(1426020007425357869133239299:ℚ)/v469)
    ]
    let v434:ℚ[X]:= Math.B699.N21.d9 v470
    have v0:Math.B699.N21.d0 v434:= by
      apply u881
      norm_num [v470,v469]
    let v426:ℚ:= (3471657440109699659204039683:ℚ) / 79228162514264337593543950336
    let v427:ℚ[X]:= u123
    let v424:ℚ:= (1:ℚ) / 8
    let v425:ℚ:= (1:ℚ) / 4
    let v430:ℚ[X]:= u23 v424 v425
    let v431:ℚ[X]:= v427.comp v430
    let v421:ℕ:= 5
    let v422:ℕ:= 4
    let v423:ℚ:= (3:ℚ) / 128
    have v435:Polynomial.C v426 - v431 = v434:= by
      apply Polynomial.funext
      intro x
      norm_num [v426,v431,v427,u123,u119,u120,u121,
        u31,u27,v421,v422,v423,v430,u23,v424,v425,v434,v470,v469,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v1:Math.B699.N21.d0 (Polynomial.C v426 - v431):= by
      rw [v435]
      exact v0
    have v2:Math.B699.N21.d0 v431:= by
      exact u26 (u35 v421 v422 v423 (by norm_num [v423]))
        v424 v425 (by norm_num [v424]) (by norm_num [v424,v425]) (by norm_num [v425])
    let v428:ℚ[X]:= u124
    let v432:ℚ[X]:= v428.comp v430
    have v3:Math.B699.N21.d0 v432:= by
      exact u26 (u37 v421 v422 0 v423 (by norm_num [v423]))
        v424 v425 (by norm_num [v424]) (by norm_num [v424,v425]) (by norm_num [v425])
    let v429:ℚ[X]:= u125
    let v433:ℚ[X]:= v429.comp v430
    have v4:Math.B699.N21.d0 v433:= by
      exact u26 (u37 v421 v422 1 v423 (by norm_num [v423]))
        v424 v425 (by norm_num [v424]) (by norm_num [v424,v425]) (by norm_num [v425])
    have v5:Math.B699.N20.d1 v426 v432 v431:= by
      exact Math.B699.N20.d1.leaf (lam:= v426) (w:= v432) (f:= v431)
        v3 v2 v1
    have v6:Math.B699.N20.d1 v426 v433 v431:= by
      exact Math.B699.N20.d1.leaf (lam:= v426) (w:= v433) (f:= v431)
        v4 v2 v1
    let v7:ℕ:= 5
    let v8:ℕ:= 4
    let v9:ℚ:= (3:ℚ) / 128
    let v10:ℚ:= (1:ℚ) / 4
    let v11:ℚ:= (1:ℚ) / 2
    let v12:ℚ:= (3471657440109699659204039683:ℚ) / 79228162514264337593543950336
    let v13:ℚ[X]:= u123
    let v14:ℚ[X]:= u124
    let v15:ℚ[X]:= u125
    let v16:ℚ[X]:= u23 v10 v11
    let v17:ℚ[X]:= v13.comp v16
    let v294:ℚ:= (3471657440109699659204039683:ℚ) / 79228162514264337593543950336
    let v295:ℚ[X]:= u123
    let v277:ℚ:= (0:ℚ)
    let v290:ℚ:= (1:ℚ) / 16
    let v312:ℚ[X]:= u23 v277 v290
    let v313:ℚ[X]:= v295.comp v312
    let v213:ℕ:= 5
    let v232:ℕ:= 4
    let v254:ℚ:= (3:ℚ) / 128
    let v455:ℚ:= 79228162514264337593543950336
    let v456:List (ℕ × ℕ × ℚ):= [
      (0,9,(3471657440109699659204039683:ℚ)/v455),
      (1,8,(26293156803845775833239860251:ℚ)/v455),
      (2,7,(87812452445717028384178753644:ℚ)/v455),
      (3,6,(169569032783523327727530184956:ℚ)/v455),
      (4,5,(208405982520537271110555457914:ℚ)/v455),
      (5,4,(168833072792296894463676832122:ℚ)/v455),
      (6,3,(90015091346454684239248527612:ℚ)/v455),
      (7,2,(30403941736921434228733562988:ℚ)/v455),
      (8,1,(5892355187708056186663941147:ℚ)/v455),
      (9,0,(498334822890731326670279683:ℚ)/v455)
    ]
    let v340:ℚ[X]:= Math.B699.N21.d9 v456
    have v385:Polynomial.C v294 - v313 = v340:= by
      apply Polynomial.funext
      intro x
      norm_num [v294,v313,v295,u123,u119,u120,u121,
        u31,u27,v213,v232,v254,v312,u23,v277,v290,v340,v456,v455,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v411:Math.B699.N21.d0 v340:= by
      apply u881
      norm_num [v456,v455]
    have v18:Math.B699.N21.d0 (Polynomial.C v294 - v313):= by
      rw [v385]
      exact v411
    let v19:ℚ[X]:= v14.comp v16
    let v20:ℚ[X]:= v15.comp v16
    let v471:ℚ:= 79228162514264337593543950336
    let v472:List (ℕ × ℕ × ℚ):= [
      (0,9,(1426020007425357869133239299:ℚ)/v471),
      (1,8,(16159001630545148434484769819:ℚ)/v471),
      (2,7,(77137574900728796826364072044:ℚ)/v471),
      (3,6,(205176559683613738453959217404:ℚ)/v471),
      (4,5,(338783560849243958230399113594:ℚ)/v471),
      (5,4,(363408404820850889824927537530:ℚ)/v471),
      (6,3,(254996832077617459698350985468:ℚ)/v471),
      (7,2,(113436229648576701821535178860:ℚ)/v471),
      (8,1,(29138372620574590784617788443:ℚ)/v471),
      (9,0,(3301889794096740873958495235:ℚ)/v471)
    ]
    let v21:ℚ[X]:= Math.B699.N21.d9 v472
    have v22:Polynomial.C v12 - v17 = v21:= by
      apply Polynomial.funext
      intro x
      norm_num [v12,v17,v13,u123,u119,u120,u121,
        u31,u27,v7,v8,v9,v16,u23,v10,v11,v21,v472,v471,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v23:Math.B699.N21.d0 v313:= by
      exact u26 (u35 v213 v232 v254 (by norm_num [v254]))
        v277 v290 (by norm_num [v277]) (by norm_num [v277,v290]) (by norm_num [v290])
    have v24:v16 = (Math.B699.N20.halfLeft).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v16,u23,v10,v11,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v25:Math.B699.N21.d0 v21:= by
      apply u881
      norm_num [v472,v471]
    have v26:Math.B699.N21.d0 (Polynomial.C v12 - v17):= by
      rw [v22]
      exact v25
    have v27:Math.B699.N21.d0 v17:= by
      exact u26 (u35 v7 v8 v9 (by norm_num [v9]))
        v10 v11 (by norm_num [v10]) (by norm_num [v10,v11]) (by norm_num [v11])
    let v303:ℚ[X]:= u124
    let v314:ℚ[X]:= v303.comp v312
    have v28:Math.B699.N21.d0 v314:= by
      exact u26 (u37 v213 v232 0 v254 (by norm_num [v254]))
        v277 v290 (by norm_num [v277]) (by norm_num [v277,v290]) (by norm_num [v290])
    have v29:Math.B699.N21.d0 v19:= by
      exact u26 (u37 v7 v8 0 v9 (by norm_num [v9]))
        v10 v11 (by norm_num [v10]) (by norm_num [v10,v11]) (by norm_num [v11])
    have v30:Math.B699.N21.d0 v20:= by
      exact u26 (u37 v7 v8 1 v9 (by norm_num [v9]))
        v10 v11 (by norm_num [v10]) (by norm_num [v10,v11]) (by norm_num [v11])
    have v31:Math.B699.N20.d1 v12 v19 v17:= by
      exact Math.B699.N20.d1.leaf (lam:= v12) (w:= v19) (f:= v17)
        v29 v27 v26
    have v32:Math.B699.N20.d1 v12 v20 v17:= by
      exact Math.B699.N20.d1.leaf (lam:= v12) (w:= v20) (f:= v17)
        v30 v27 v26
    let v33:ℕ:= 5
    let v310:ℚ[X]:= u125
    let v317:ℚ[X]:= v310.comp v312
    have v34:Math.B699.N21.d0 v317:= by
      exact u26 (u37 v213 v232 1 v254 (by norm_num [v254]))
        v277 v290 (by norm_num [v277]) (by norm_num [v277,v290]) (by norm_num [v290])
    let v35:ℕ:= 4
    let v36:ℚ:= (3:ℚ) / 128
    let v37:ℚ:= (1:ℚ) / 2
    let v38:ℚ:= (1:ℚ)
    let v39:ℚ:= (3471657440109699659204039683:ℚ) / 79228162514264337593543950336
    let v40:ℚ[X]:= u123
    let v41:ℚ[X]:= u124
    let v42:ℚ[X]:= u125
    let v43:ℚ[X]:= u23 v37 v38
    let v44:ℚ[X]:= v40.comp v43
    let v45:ℚ[X]:= v41.comp v43
    let v46:ℚ[X]:= v42.comp v43
    let v473:ℚ:= 79228162514264337593543950336
    let v474:List (ℕ × ℕ × ℚ):= [
      (0,9,(3301889794096740873958495235:ℚ)/v473),
      (1,8,(30874279199462822027643794459:ℚ)/v473),
      (2,7,(124915326094070492787039326316:ℚ)/v473),
      (3,6,(291614886101317822112648958204:ℚ)/v473),
      (4,5,(437428706214461444653104028026:ℚ)/v473),
      (5,4,(437428835959635887089235319162:ℚ)/v473),
      (6,3,(291619224969214771373139333372:ℚ)/v473),
      (7,2,(124979667843949187731345428588:ℚ)/v473),
      (8,1,(31244916960987296932836357147:ℚ)/v473),
      (9,0,(3471657440109699659204039683:ℚ)/v473)
    ]
    let v47:ℚ[X]:= Math.B699.N21.d9 v474
    have v48:Math.B699.N20.d1 v294 v314 v313:= by
      exact Math.B699.N20.d1.leaf (lam:= v294) (w:= v314) (f:= v313)
        v28 v23 v18
    have v49:Polynomial.C v39 - v44 = v47:= by
      apply Polynomial.funext
      intro x
      norm_num [v39,v44,v40,u123,u119,u120,u121,
        u31,u27,v33,v35,v36,v43,u23,v37,v38,v47,v474,v473,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v50:v43 = Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v43,u23,v37,v38,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v51:Math.B699.N21.d0 v47:= by
      apply u881
      norm_num [v474,v473]
    have v52:Math.B699.N20.d1 v294 v317 v313:= by
      exact Math.B699.N20.d1.leaf (lam:= v294) (w:= v317) (f:= v313)
        v34 v23 v18
    have v53:Math.B699.N21.d0 (Polynomial.C v39 - v44):= by
      rw [v49]
      exact v51
    have v54:Math.B699.N21.d0 v44:= by
      exact u26 (u35 v33 v35 v36 (by norm_num [v36]))
        v37 v38 (by norm_num [v37]) (by norm_num [v37,v38]) (by norm_num [v38])
    have v55:Math.B699.N21.d0 v45:= by
      exact u26 (u37 v33 v35 0 v36 (by norm_num [v36]))
        v37 v38 (by norm_num [v37]) (by norm_num [v37,v38]) (by norm_num [v38])
    have v56:Math.B699.N21.d0 v46:= by
      exact u26 (u37 v33 v35 1 v36 (by norm_num [v36]))
        v37 v38 (by norm_num [v37]) (by norm_num [v37,v38]) (by norm_num [v38])
    have v57:Math.B699.N20.d1 v39 v45 v44:= by
      exact Math.B699.N20.d1.leaf (lam:= v39) (w:= v45) (f:= v44)
        v55 v54 v53
    have v58:Math.B699.N20.d1 v39 v46 v44:= by
      exact Math.B699.N20.d1.leaf (lam:= v39) (w:= v46) (f:= v44)
        v56 v54 v53
    let v59:ℕ:= 5
    let v60:ℕ:= 4
    let v61:ℚ:= (3:ℚ) / 128
    let v62:ℚ:= (0:ℚ)
    let v63:ℚ:= (1:ℚ) / 4
    let v64:ℚ:= (305863978762465520211566521:ℚ) / 79228162514264337593543950336
    let v65:ℚ[X]:= u130
    let v66:ℚ[X]:= u131
    let v67:ℚ[X]:= u132
    let v68:ℚ[X]:= u23 v62 v63
    let v69:ℚ[X]:= v65.comp v68
    let v70:ℚ[X]:= v66.comp v68
    let v71:ℚ[X]:= v67.comp v68
    let v437:ℚ:= 79228162514264337593543950336
    let v438:List (ℕ × ℕ × ℚ):= [
      (0,9,(305863978762465520211566521:ℚ)/v437),
      (1,8,(2752775808862189681904098689:ℚ)/v437),
      (2,7,(11011103235448758727616394756:ℚ)/v437),
      (3,6,(25692574216047103697771587764:ℚ)/v437),
      (4,5,(38229376314249310477932600590:ℚ)/v437),
      (5,4,(37302734673514697215520316686:ℚ)/v437),
      (6,3,(23725047444624294715937286324:ℚ)/v437),
      (7,2,(9450455560189998377394140676:ℚ)/v437),
      (8,1,(2135656956880784445378305409:ℚ)/v437),
      (9,0,(208514754901349218953830329:ℚ)/v437)
    ]
    let v72:ℚ[X]:= Math.B699.N21.d9 v438
    have v73:Polynomial.C v64 - v69 = v72:= by
      apply Polynomial.funext
      intro x
      norm_num [v64,v69,v65,u130,u126,u127,u128,
        u32,u28,v59,v60,v61,v68,u23,v62,v63,v72,v438,v437,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v74:v68 = (Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v68,u23,v62,v63,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v75:Math.B699.N21.d0 v72:= by
      apply u881
      norm_num [v438,v437]
    have v76:Math.B699.N21.d0 (Polynomial.C v64 - v69):= by
      rw [v73]
      exact v75
    have v77:Math.B699.N21.d0 v69:= by
      exact u26 (u36 v59 v60 v61 (by norm_num [v61]))
        v62 v63 (by norm_num [v62]) (by norm_num [v62,v63]) (by norm_num [v63])
    have v78:Math.B699.N21.d0 v70:= by
      exact u26 (u20 v59 v60 0 v61 (by norm_num [v61]))
        v62 v63 (by norm_num [v62]) (by norm_num [v62,v63]) (by norm_num [v63])
    have v79:Math.B699.N21.d0 v71:= by
      exact u26 (u20 v59 v60 1 v61 (by norm_num [v61]))
        v62 v63 (by norm_num [v62]) (by norm_num [v62,v63]) (by norm_num [v63])
    have v80:Math.B699.N20.d1 v64 v70 v69:= by
      exact Math.B699.N20.d1.leaf (lam:= v64) (w:= v70) (f:= v69)
        v78 v77 v76
    have v81:Math.B699.N20.d1 v64 v71 v69:= by
      exact Math.B699.N20.d1.leaf (lam:= v64) (w:= v71) (f:= v69)
        v79 v77 v76
    let v82:ℕ:= 5
    let v83:ℕ:= 4
    let v84:ℚ:= (3:ℚ) / 128
    let v85:ℚ:= (1:ℚ) / 4
    let v86:ℚ:= (3:ℚ) / 8
    let v87:ℚ:= (305863978762465520211566521:ℚ) / 79228162514264337593543950336
    let v88:ℚ[X]:= u130
    let v89:ℚ[X]:= u131
    let v90:ℚ[X]:= u132
    let v91:ℚ[X]:= u23 v85 v86
    let v92:ℚ[X]:= v88.comp v91
    let v93:ℚ[X]:= v89.comp v91
    let v94:ℚ[X]:= v90.comp v91
    let v439:ℚ:= 79228162514264337593543950336
    let v440:List (ℕ × ℕ × ℚ):= [
      (0,9,(208514754901349218953830329:ℚ)/v439),
      (1,8,(1747120712727822233187556737:ℚ)/v439),
      (2,7,(6438367295772079657338959364:ℚ)/v439),
      (3,6,(13682553787708502445161736372:ℚ)/v439),
      (4,5,(18461015704100695805433519374:ℚ)/v439),
      (5,4,(16382517599975075261693336846:ℚ)/v439),
      (6,3,(9551433343878287809600579764:ℚ)/v439),
      (7,2,(3523984867671710191593354756:ℚ)/v439),
      (8,1,(745741230604975294908898689:ℚ)/v439),
      (9,0,(68895375009335709881966521:ℚ)/v439)
    ]
    let v95:ℚ[X]:= Math.B699.N21.d9 v440
    have v96:Polynomial.C v87 - v92 = v95:= by
      apply Polynomial.funext
      intro x
      norm_num [v87,v92,v88,u130,u126,u127,u128,
        u32,u28,v82,v83,v84,v91,u23,v85,v86,v95,v440,v439,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v97:v91 = ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v91,u23,v85,v86,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v98:ℕ:= 5
    have v99:Math.B699.N21.d0 v95:= by
      apply u881
      norm_num [v440,v439]
    let v100:ℕ:= 4
    let v101:ℚ:= (3:ℚ) / 128
    have v102:Math.B699.N21.d0 (Polynomial.C v87 - v92):= by
      rw [v96]
      exact v99
    let v103:ℚ:= (1:ℚ) / 16
    have v104:Math.B699.N21.d0 v92:= by
      exact u26 (u36 v82 v83 v84 (by norm_num [v84]))
        v85 v86 (by norm_num [v85]) (by norm_num [v85,v86]) (by norm_num [v86])
    have v105:Math.B699.N21.d0 v93:= by
      exact u26 (u20 v82 v83 0 v84 (by norm_num [v84]))
        v85 v86 (by norm_num [v85]) (by norm_num [v85,v86]) (by norm_num [v86])
    let v106:ℚ:= (3:ℚ) / 32
    have v107:Math.B699.N21.d0 v94:= by
      exact u26 (u20 v82 v83 1 v84 (by norm_num [v84]))
        v85 v86 (by norm_num [v85]) (by norm_num [v85,v86]) (by norm_num [v86])
    have v108:Math.B699.N20.d1 v87 v93 v92:= by
      exact Math.B699.N20.d1.leaf (lam:= v87) (w:= v93) (f:= v92)
        v105 v104 v102
    have v109:Math.B699.N20.d1 v87 v94 v92:= by
      exact Math.B699.N20.d1.leaf (lam:= v87) (w:= v94) (f:= v92)
        v107 v104 v102
    let v110:ℚ:= (3471657440109699659204039683:ℚ) / 79228162514264337593543950336
    let v111:ℚ[X]:= u123
    let v112:ℕ:= 5
    let v113:ℕ:= 4
    let v114:ℚ:= (3:ℚ) / 128
    let v115:ℚ:= (3:ℚ) / 8
    let v116:ℚ:= (7:ℚ) / 16
    let v117:ℚ:= (305863978762465520211566521:ℚ) / 79228162514264337593543950336
    let v118:ℚ[X]:= u130
    let v119:ℚ[X]:= u124
    let v120:ℚ[X]:= u131
    let v121:ℚ[X]:= u132
    let v122:ℚ[X]:= u23 v115 v116
    let v123:ℚ[X]:= v118.comp v122
    let v124:ℚ[X]:= v120.comp v122
    let v125:ℚ[X]:= v121.comp v122
    let v126:ℚ[X]:= u125
    let v441:ℚ:= 79228162514264337593543950336
    let v442:List (ℕ × ℕ × ℚ):= [
      (0,9,(68895375009335709881966521:ℚ)/v441),
      (1,8,(557216947323544435952098689:ℚ)/v441),
      (2,7,(1987074209044268278884234756:ℚ)/v441),
      (3,6,(4097521160743405238639683764:ℚ)/v441),
      (4,5,(5379707129417295628320152846:ℚ)/v441),
      (5,4,(4658898791479798528506371342:ℚ)/v441),
      (6,3,(2658290023288400305109625012:ℚ)/v441),
      (7,2,(962448857877484369497191940:ℚ)/v441),
      (8,1,(200371850660411323065998721:ℚ)/v441),
      (9,0,(18252830022500270430855097:ℚ)/v441)
    ]
    let v127:ℚ[X]:= Math.B699.N21.d9 v442
    let v128:ℚ[X]:= u23 v103 v106
    let v129:ℚ[X]:= v111.comp v128
    let v130:ℚ[X]:= v119.comp v128
    have v131:Polynomial.C v117 - v123 = v127:= by
      apply Polynomial.funext
      intro x
      norm_num [v117,v123,v118,u130,u126,u127,u128,
        u32,u28,v112,v113,v114,v122,u23,v115,v116,v127,v442,v441,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v132:v122 = (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v122,u23,v115,v116,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v133:ℚ[X]:= v126.comp v128
    have v134:Math.B699.N21.d0 v127:= by
      apply u881
      norm_num [v442,v441]
    have v135:Math.B699.N21.d0 (Polynomial.C v117 - v123):= by
      rw [v131]
      exact v134
    have v136:Math.B699.N21.d0 v123:= by
      exact u26 (u36 v112 v113 v114 (by norm_num [v114]))
        v115 v116 (by norm_num [v115]) (by norm_num [v115,v116]) (by norm_num [v116])
    have v137:Math.B699.N21.d0 v124:= by
      exact u26 (u20 v112 v113 0 v114 (by norm_num [v114]))
        v115 v116 (by norm_num [v115]) (by norm_num [v115,v116]) (by norm_num [v116])
    have v138:Math.B699.N21.d0 v125:= by
      exact u26 (u20 v112 v113 1 v114 (by norm_num [v114]))
        v115 v116 (by norm_num [v115]) (by norm_num [v115,v116]) (by norm_num [v116])
    have v139:Math.B699.N20.d1 v117 v124 v123:= by
      exact Math.B699.N20.d1.leaf (lam:= v117) (w:= v124) (f:= v123)
        v137 v136 v135
    have v140:Math.B699.N20.d1 v117 v125 v123:= by
      exact Math.B699.N20.d1.leaf (lam:= v117) (w:= v125) (f:= v123)
        v138 v136 v135
    let v141:ℕ:= 5
    let v142:ℕ:= 4
    let v143:ℚ:= (3:ℚ) / 128
    let v144:ℚ:= (7:ℚ) / 16
    let v145:ℚ:= (15:ℚ) / 32
    let v146:ℚ:= (305863978762465520211566521:ℚ) / 79228162514264337593543950336
    let v147:ℚ[X]:= u130
    let v148:ℚ[X]:= u131
    let v149:ℚ[X]:= u132
    let v150:ℚ[X]:= u23 v144 v145
    let v151:ℚ[X]:= v147.comp v150
    let v152:ℚ[X]:= v148.comp v150
    let v153:ℚ[X]:= v149.comp v150
    let v443:ℚ:= 79228162514264337593543950336
    let v444:List (ℕ × ℕ × ℚ):= [
      (0,9,(18252830022500270430855097:ℚ)/v443),
      (1,8,(146227279973547989283544449:ℚ)/v443),
      (2,7,(516860342329425058877568516:ℚ)/v443),
      (3,6,(1057106014593216422359886004:ℚ)/v443),
      (4,5,(1377416095139311150813715726:ℚ)/v443),
      (5,4,(1184548396170295267250969870:ℚ)/v443),
      (6,3,(671530965918734747678828724:ℚ)/v443),
      (7,2,(241678484790857418837489156:ℚ)/v443),
      (8,1,(50033641577177364826594689:ℚ)/v443),
      (9,0,(4533699459284271453806521:ℚ)/v443)
    ]
    let v154:ℚ[X]:= Math.B699.N21.d9 v444
    have v155:Polynomial.C v146 - v151 = v154:= by
      apply Polynomial.funext
      intro x
      norm_num [v146,v151,v147,u130,u126,u127,u128,
        u32,u28,v141,v142,v143,v150,u23,v144,v145,v154,v444,v443,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v457:ℚ:= 79228162514264337593543950336
    let v458:List (ℕ × ℕ × ℚ):= [
      (0,9,(498334822890731326670279683:ℚ)/v457),
      (1,8,(3781342515170844816716805147:ℚ)/v457),
      (2,7,(12611974962131258897492398188:ℚ)/v457),
      (3,6,(24227194517830490551629680892:ℚ)/v457),
      (4,5,(29479410965155413321802635642:ℚ)/v457),
      (5,4,(23504356623344446915791870330:ℚ)/v457),
      (6,3,(12243142361502000894618145020:ℚ)/v457),
      (7,2,(4003416580632775266772242540:ℚ)/v457),
      (8,1,(742846832268291980877575195:ℚ)/v457),
      (9,0,(59399706967090870550434819:ℚ)/v457)
    ]
    let v156:ℚ[X]:= Math.B699.N21.d9 v458
    have v157:v150 = ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v150,u23,v144,v145,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v158:Math.B699.N21.d0 v154:= by
      apply u881
      norm_num [v444,v443]
    have v159:Math.B699.N21.d0 (Polynomial.C v146 - v151):= by
      rw [v155]
      exact v158
    have v160:Math.B699.N21.d0 v151:= by
      exact u26 (u36 v141 v142 v143 (by norm_num [v143]))
        v144 v145 (by norm_num [v144]) (by norm_num [v144,v145]) (by norm_num [v145])
    have v161:Math.B699.N21.d0 v152:= by
      exact u26 (u20 v141 v142 0 v143 (by norm_num [v143]))
        v144 v145 (by norm_num [v144]) (by norm_num [v144,v145]) (by norm_num [v145])
    have v162:Math.B699.N21.d0 v153:= by
      exact u26 (u20 v141 v142 1 v143 (by norm_num [v143]))
        v144 v145 (by norm_num [v144]) (by norm_num [v144,v145]) (by norm_num [v145])
    have v163:Math.B699.N20.d1 v146 v152 v151:= by
      exact Math.B699.N20.d1.leaf (lam:= v146) (w:= v152) (f:= v151)
        v161 v160 v159
    have v164:Math.B699.N20.d1 v146 v153 v151:= by
      exact Math.B699.N20.d1.leaf (lam:= v146) (w:= v153) (f:= v151)
        v162 v160 v159
    let v165:ℕ:= 5
    let v166:ℕ:= 4
    let v167:ℚ:= (3:ℚ) / 128
    let v168:ℚ:= (15:ℚ) / 32
    let v169:ℚ:= (31:ℚ) / 64
    let v170:ℚ:= (305863978762465520211566521:ℚ) / 79228162514264337593543950336
    let v171:ℚ[X]:= u130
    let v172:ℚ[X]:= u131
    let v173:ℚ[X]:= u132
    let v174:ℚ[X]:= u23 v168 v169
    let v175:ℚ[X]:= v171.comp v174
    let v176:ℚ[X]:= v172.comp v174
    let v177:ℚ[X]:= v173.comp v174
    let v445:ℚ:= 79228162514264337593543950336
    let v446:List (ℕ × ℕ × ℚ):= [
      (0,9,(4533699459284271453806521:ℚ)/v445),
      (1,8,(36188121911748982213090689:ℚ)/v445),
      (2,7,(127447427936676153508132356:ℚ)/v445),
      (3,6,(259708738862162846104971444:ℚ)/v445),
      (4,5,(337143453241763800565980430:ℚ)/v445),
      (5,4,(288823746172386016518511886:ℚ)/v445),
      (6,3,(163079325323658461060819124:ℚ)/v445),
      (7,2,(58440702101359546209039876:ℚ)/v445),
      (8,1,(12043264488866157305437569:ℚ)/v445),
      (9,0,(1085861402591555927777209:ℚ)/v445)
    ]
    let v178:ℚ[X]:= Math.B699.N21.d9 v446
    have v179:Polynomial.C v170 - v175 = v178:= by
      apply Polynomial.funext
      intro x
      norm_num [v170,v175,v171,u130,u126,u127,u128,
        u32,u28,v165,v166,v167,v174,u23,v168,v169,v178,v446,v445,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v180:v174 = (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v174,u23,v168,v169,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v181:Math.B699.N21.d0 v178:= by
      apply u881
      norm_num [v446,v445]
    have v182:Math.B699.N21.d0 (Polynomial.C v170 - v175):= by
      rw [v179]
      exact v181
    have v183:Math.B699.N21.d0 v175:= by
      exact u26 (u36 v165 v166 v167 (by norm_num [v167]))
        v168 v169 (by norm_num [v168]) (by norm_num [v168,v169]) (by norm_num [v169])
    have v184:Math.B699.N21.d0 v176:= by
      exact u26 (u20 v165 v166 0 v167 (by norm_num [v167]))
        v168 v169 (by norm_num [v168]) (by norm_num [v168,v169]) (by norm_num [v169])
    have v185:Math.B699.N21.d0 v177:= by
      exact u26 (u20 v165 v166 1 v167 (by norm_num [v167]))
        v168 v169 (by norm_num [v168]) (by norm_num [v168,v169]) (by norm_num [v169])
    have v186:Math.B699.N20.d1 v170 v176 v175:= by
      exact Math.B699.N20.d1.leaf (lam:= v170) (w:= v176) (f:= v175)
        v184 v183 v182
    have v187:Math.B699.N20.d1 v170 v177 v175:= by
      exact Math.B699.N20.d1.leaf (lam:= v170) (w:= v177) (f:= v175)
        v185 v183 v182
    let v188:ℕ:= 5
    let v189:ℕ:= 4
    let v190:ℚ:= (3:ℚ) / 128
    let v191:ℚ:= (31:ℚ) / 64
    let v192:ℚ:= (63:ℚ) / 128
    let v193:ℚ:= (305863978762465520211566521:ℚ) / 79228162514264337593543950336
    let v194:ℚ[X]:= u130
    let v195:ℚ[X]:= u131
    let v196:ℚ[X]:= u132
    let v197:ℚ[X]:= u23 v191 v192
    let v198:ℚ[X]:= v194.comp v197
    let v199:ℚ[X]:= v195.comp v197
    let v200:ℚ[X]:= v196.comp v197
    have v201:Polynomial.C v110 - v129 = v156:= by
      apply Polynomial.funext
      intro x
      norm_num [v110,v129,v111,u123,u119,u120,u121,
        u31,u27,v98,v100,v101,v128,u23,v103,v106,v156,v458,v457,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    let v447:ℚ:= 79228162514264337593543950336
    let v448:List (ℕ × ℕ × ℚ):= [
      (0,9,(1085861402591555927777209:ℚ)/v447),
      (1,8,(8637496690552926372273537:ℚ)/v447),
      (2,7,(30305362202058972869588484:ℚ)/v447),
      (3,6,(61500803586033651569682612:ℚ)/v447),
      (4,5,(79473384699204869000305934:ℚ)/v447),
      (5,4,(67736314972251651449855246:ℚ)/v447),
      (6,3,(38027264416567709948995764:ℚ)/v447),
      (7,2,(13539406018803759327114756:ℚ)/v447),
      (8,1,(2769862183774066313698689:ℚ)/v447),
      (9,0,(247713636555185542766521:ℚ)/v447)
    ]
    let v202:ℚ[X]:= Math.B699.N21.d9 v448
    have v203:Polynomial.C v193 - v198 = v202:= by
      apply Polynomial.funext
      intro x
      norm_num [v193,v198,v194,u130,u126,u127,u128,
        u32,u28,v188,v189,v190,v197,u23,v191,v192,v202,v448,v447,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v204:v197 = ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v197,u23,v191,v192,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v205:Math.B699.N21.d0 v202:= by
      apply u881
      norm_num [v448,v447]
    have v206:Math.B699.N21.d0 (Polynomial.C v193 - v198):= by
      rw [v203]
      exact v205
    have v207:Math.B699.N21.d0 v198:= by
      exact u26 (u36 v188 v189 v190 (by norm_num [v190]))
        v191 v192 (by norm_num [v191]) (by norm_num [v191,v192]) (by norm_num [v192])
    have v208:Math.B699.N21.d0 v199:= by
      exact u26 (u20 v188 v189 0 v190 (by norm_num [v190]))
        v191 v192 (by norm_num [v191]) (by norm_num [v191,v192]) (by norm_num [v192])
    have v209:Math.B699.N21.d0 v200:= by
      exact u26 (u20 v188 v189 1 v190 (by norm_num [v190]))
        v191 v192 (by norm_num [v191]) (by norm_num [v191,v192]) (by norm_num [v192])
    have v210:Math.B699.N20.d1 v193 v199 v198:= by
      exact Math.B699.N20.d1.leaf (lam:= v193) (w:= v199) (f:= v198)
        v208 v207 v206
    have v211:v128 = ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v128,u23,v103,v106,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v212:Math.B699.N20.d1 v193 v200 v198:= by
      exact Math.B699.N20.d1.leaf (lam:= v193) (w:= v200) (f:= v198)
        v209 v207 v206
    let v214:ℕ:= 5
    let v215:ℕ:= 4
    let v216:ℚ:= (3:ℚ) / 128
    let v217:ℚ:= (63:ℚ) / 128
    let v218:ℚ:= (127:ℚ) / 256
    let v219:ℚ:= (305863978762465520211566521:ℚ) / 79228162514264337593543950336
    let v220:ℚ[X]:= u130
    let v221:ℚ[X]:= u131
    let v222:ℚ[X]:= u132
    let v223:ℚ[X]:= u23 v217 v218
    let v224:ℚ[X]:= v220.comp v223
    let v225:ℚ[X]:= v221.comp v223
    let v226:ℚ[X]:= v222.comp v223
    let v449:ℚ:= 79228162514264337593543950336
    let v450:List (ℕ × ℕ × ℚ):= [
      (0,9,(247713636555185542766521:ℚ)/v449),
      (1,8,(1959203001607971670498689:ℚ)/v449),
      (2,7,(6830482963026570913674756:ℚ)/v449),
      (3,6,(13763689921800916982851764:ℚ)/v449),
      (4,5,(17645440365236173022207246:ℚ)/v449),
      (5,4,(14906464795787392922197262:ℚ)/v449),
      (6,3,(8285772880565088656320692:ℚ)/v449),
      (7,2,(2917733786840388068865540:ℚ)/v449),
      (8,1,(589766362440821475286401:ℚ)/v449),
      (9,0,(52084701787169966235577:ℚ)/v449)
    ]
    let v227:ℚ[X]:= Math.B699.N21.d9 v450
    have v228:Math.B699.N21.d0 v156:= by
      apply u881
      norm_num [v458,v457]
    have v229:Polynomial.C v219 - v224 = v227:= by
      apply Polynomial.funext
      intro x
      norm_num [v219,v224,v220,u130,u126,u127,u128,
        u32,u28,v214,v215,v216,v223,u23,v217,v218,v227,v450,v449,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v230:v223 = (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v223,u23,v217,v218,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v231:Math.B699.N21.d0 v227:= by
      apply u881
      norm_num [v450,v449]
    have v233:Math.B699.N21.d0 (Polynomial.C v219 - v224):= by
      rw [v229]
      exact v231
    have v234:Math.B699.N21.d0 v224:= by
      exact u26 (u36 v214 v215 v216 (by norm_num [v216]))
        v217 v218 (by norm_num [v217]) (by norm_num [v217,v218]) (by norm_num [v218])
    have v235:Math.B699.N21.d0 v225:= by
      exact u26 (u20 v214 v215 0 v216 (by norm_num [v216]))
        v217 v218 (by norm_num [v217]) (by norm_num [v217,v218]) (by norm_num [v218])
    have v236:Math.B699.N21.d0 v226:= by
      exact u26 (u20 v214 v215 1 v216 (by norm_num [v216]))
        v217 v218 (by norm_num [v217]) (by norm_num [v217,v218]) (by norm_num [v218])
    have v237:Math.B699.N20.d1 v219 v225 v224:= by
      exact Math.B699.N20.d1.leaf (lam:= v219) (w:= v225) (f:= v224)
        v235 v234 v233
    have v238:Math.B699.N20.d1 v219 v226 v224:= by
      exact Math.B699.N20.d1.leaf (lam:= v219) (w:= v226) (f:= v224)
        v236 v234 v233
    let v239:ℕ:= 5
    let v240:ℕ:= 4
    let v241:ℚ:= (3:ℚ) / 128
    let v242:ℚ:= (127:ℚ) / 256
    let v243:ℚ:= (1:ℚ) / 2
    let v244:ℚ:= (305863978762465520211566521:ℚ) / 79228162514264337593543950336
    let v245:ℚ[X]:= u130
    let v246:ℚ[X]:= u131
    let v247:ℚ[X]:= u132
    let v248:ℚ[X]:= u23 v242 v243
    let v249:ℚ[X]:= v245.comp v248
    let v250:ℚ[X]:= v246.comp v248
    let v251:ℚ[X]:= v247.comp v248
    let v451:ℚ:= 79228162514264337593543950336
    let v452:List (ℕ × ℕ × ℚ):= [
      (0,9,(52084701787169966235577:ℚ)/v451),
      (1,8,(347758269728237916953985:ℚ)/v451),
      (2,7,(981669045139719602206212:ℚ)/v451),
      (3,6,(1509587142806556386027700:ℚ)/v451),
      (4,5,(1354256753045557833669902:ℚ)/v451),
      (5,4,(705486746190347643952398:ℚ)/v451),
      (6,3,(212053885484038015707316:ℚ)/v451),
      (7,2,(54869227548837687227908:ℚ)/v451),
      (8,1,(23383400781833226853761:ℚ)/v451),
      (9,0,(5746399964339010903993:ℚ)/v451)
    ]
    let v252:ℚ[X]:= Math.B699.N21.d9 v452
    have v253:Polynomial.C v244 - v249 = v252:= by
      apply Polynomial.funext
      intro x
      norm_num [v244,v249,v245,u130,u126,u127,u128,
        u32,u28,v239,v240,v241,v248,u23,v242,v243,v252,v452,v451,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v255:v248 = (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v248,u23,v242,v243,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v256:Math.B699.N21.d0 v252:= by
      apply u881
      norm_num [v452,v451]
    have v257:Math.B699.N21.d0 (Polynomial.C v244 - v249):= by
      rw [v253]
      exact v256
    have v258:Math.B699.N21.d0 v249:= by
      exact u26 (u36 v239 v240 v241 (by norm_num [v241]))
        v242 v243 (by norm_num [v242]) (by norm_num [v242,v243]) (by norm_num [v243])
    have v259:Math.B699.N21.d0 v250:= by
      exact u26 (u20 v239 v240 0 v241 (by norm_num [v241]))
        v242 v243 (by norm_num [v242]) (by norm_num [v242,v243]) (by norm_num [v243])
    have v260:Math.B699.N21.d0 v251:= by
      exact u26 (u20 v239 v240 1 v241 (by norm_num [v241]))
        v242 v243 (by norm_num [v242]) (by norm_num [v242,v243]) (by norm_num [v243])
    have v261:Math.B699.N20.d1 v244 v250 v249:= by
      exact Math.B699.N20.d1.leaf (lam:= v244) (w:= v250) (f:= v249)
        v259 v258 v257
    have v262:Math.B699.N20.d1 v244 v251 v249:= by
      exact Math.B699.N20.d1.leaf (lam:= v244) (w:= v251) (f:= v249)
        v260 v258 v257
    let v263:ℕ:= 5
    let v264:ℕ:= 4
    let v265:ℚ:= (3:ℚ) / 128
    let v266:ℚ:= (1:ℚ) / 2
    let v267:ℚ:= (1:ℚ)
    let v268:ℚ:= (305863978762465520211566521:ℚ) / 79228162514264337593543950336
    let v269:ℚ[X]:= u130
    let v270:ℚ[X]:= u131
    let v271:ℚ[X]:= u132
    let v272:ℚ[X]:= u23 v266 v267
    let v273:ℚ[X]:= v269.comp v272
    have v274:Math.B699.N21.d0 (Polynomial.C v110 - v129):= by
      rw [v201]
      exact v228
    let v275:ℚ[X]:= v270.comp v272
    let v276:ℚ[X]:= v271.comp v272
    let v453:ℚ:= 79228162514264337593543950336
    let v454:List (ℕ × ℕ × ℚ):= [
      (0,9,(5746399964339010903993:ℚ)/v453),
      (1,8,(3678495058522938622254465:ℚ)/v453),
      (2,7,(1252654019519472029388142084:ℚ)/v453),
      (3,6,(8651555862759290851113330868:ℚ)/v453),
      (4,5,(23973723049353603249797373198:ℚ)/v453),
      (5,4,(33703158045612138847832677646:ℚ)/v453),
      (6,3,(25692574216047103697771587764:ℚ)/v453),
      (7,2,(11011103235448758727616394756:ℚ)/v453),
      (8,1,(2752775808862189681904098689:ℚ)/v453),
      (9,0,(305863978762465520211566521:ℚ)/v453)
    ]
    let v278:ℚ[X]:= Math.B699.N21.d9 v454
    have v279:Polynomial.C v268 - v273 = v278:= by
      apply Polynomial.funext
      intro x
      norm_num [v268,v273,v269,u130,u126,u127,u128,
        u32,u28,v263,v264,v265,v272,u23,v266,v267,v278,v454,v453,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v280:Math.B699.N21.d0 v129:= by
      exact u26 (u35 v98 v100 v101 (by norm_num [v101]))
        v103 v106 (by norm_num [v103]) (by norm_num [v103,v106]) (by norm_num [v106])
    have v281:v272 = Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v272,u23,v266,v267,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v282:Math.B699.N21.d0 v278:= by
      apply u881
      norm_num [v454,v453]
    have v283:Math.B699.N21.d0 (Polynomial.C v268 - v273):= by
      rw [v279]
      exact v282
    have v284:Math.B699.N21.d0 v273:= by
      exact u26 (u36 v263 v264 v265 (by norm_num [v265]))
        v266 v267 (by norm_num [v266]) (by norm_num [v266,v267]) (by norm_num [v267])
    have v285:Math.B699.N21.d0 v130:= by
      exact u26 (u37 v98 v100 0 v101 (by norm_num [v101]))
        v103 v106 (by norm_num [v103]) (by norm_num [v103,v106]) (by norm_num [v106])
    have v286:Math.B699.N21.d0 v275:= by
      exact u26 (u20 v263 v264 0 v265 (by norm_num [v265]))
        v266 v267 (by norm_num [v266]) (by norm_num [v266,v267]) (by norm_num [v267])
    have v287:Math.B699.N21.d0 v276:= by
      exact u26 (u20 v263 v264 1 v265 (by norm_num [v265]))
        v266 v267 (by norm_num [v266]) (by norm_num [v266,v267]) (by norm_num [v267])
    have v288:Math.B699.N20.d1 v268 v275 v273:= by
      exact Math.B699.N20.d1.leaf (lam:= v268) (w:= v275) (f:= v273)
        v286 v284 v283
    have v289:Math.B699.N20.d1 v268 v276 v273:= by
      exact Math.B699.N20.d1.leaf (lam:= v268) (w:= v276) (f:= v273)
        v287 v284 v283
    have v291:Math.B699.N21.d0 v133:= by
      exact u26 (u37 v98 v100 1 v101 (by norm_num [v101]))
        v103 v106 (by norm_num [v103]) (by norm_num [v103,v106]) (by norm_num [v106])
    have v292:Math.B699.N20.d1 v110 v130 v129:= by
      exact Math.B699.N20.d1.leaf (lam:= v110) (w:= v130) (f:= v129)
        v285 v280 v274
    have v293:Math.B699.N20.d1 v110 v133 v129:= by
      exact Math.B699.N20.d1.leaf (lam:= v110) (w:= v133) (f:= v129)
        v291 v280 v274
    let v296:ℕ:= 5
    let v297:ℕ:= 4
    let v298:ℚ:= (3:ℚ) / 128
    let v299:ℚ:= (3:ℚ) / 32
    let v300:ℚ:= (7:ℚ) / 64
    let v301:ℚ:= (3471657440109699659204039683:ℚ) / 79228162514264337593543950336
    let v302:ℚ[X]:= u123
    let v304:ℚ[X]:= u124
    let v305:ℚ[X]:= u125
    let v306:ℚ[X]:= u23 v299 v300
    let v307:ℚ[X]:= v302.comp v306
    let v308:ℚ[X]:= v304.comp v306
    let v309:ℚ[X]:= v305.comp v306
    let v459:ℚ:= 79228162514264337593543950336
    let v460:List (ℕ × ℕ × ℚ):= [
      (0,9,(59399706967090870550434819:ℚ)/v459),
      (1,8,(430472627921580761992082459:ℚ)/v459),
      (2,7,(1355149415882802446012829804:ℚ)/v459),
      (3,6,(2418717437692349366854521084:ℚ)/v459),
      (4,5,(2676407923273431623966447994:ℚ)/v459),
      (5,4,(1882783663668329364961155450:ℚ)/v459),
      (6,3,(828066441400975383768109308:ℚ)/v459),
      (7,2,(214108611716368045586829420:ℚ)/v459),
      (8,1,(28555313181133195901776923:ℚ)/v459),
      (9,0,(1496459706801980805010435:ℚ)/v459)
    ]
    let v311:ℚ[X]:= Math.B699.N21.d9 v460
    have v315:Polynomial.C v301 - v307 = v311:= by
      apply Polynomial.funext
      intro x
      norm_num [v301,v307,v302,u123,u119,u120,u121,
        u31,u27,v296,v297,v298,v306,u23,v299,v300,v311,v460,v459,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v316:v306 = (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v306,u23,v299,v300,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v318:Math.B699.N21.d0 v311:= by
      apply u881
      norm_num [v460,v459]
    have v319:Math.B699.N21.d0 (Polynomial.C v301 - v307):= by
      rw [v315]
      exact v318
    have v320:Math.B699.N21.d0 v307:= by
      exact u26 (u35 v296 v297 v298 (by norm_num [v298]))
        v299 v300 (by norm_num [v299]) (by norm_num [v299,v300]) (by norm_num [v300])
    have v321:Math.B699.N21.d0 v308:= by
      exact u26 (u37 v296 v297 0 v298 (by norm_num [v298]))
        v299 v300 (by norm_num [v299]) (by norm_num [v299,v300]) (by norm_num [v300])
    have v322:Math.B699.N21.d0 v309:= by
      exact u26 (u37 v296 v297 1 v298 (by norm_num [v298]))
        v299 v300 (by norm_num [v299]) (by norm_num [v299,v300]) (by norm_num [v300])
    have v323:Math.B699.N20.d1 v301 v308 v307:= by
      exact Math.B699.N20.d1.leaf (lam:= v301) (w:= v308) (f:= v307)
        v321 v320 v319
    have v324:Math.B699.N20.d1 v301 v309 v307:= by
      exact Math.B699.N20.d1.leaf (lam:= v301) (w:= v309) (f:= v307)
        v322 v320 v319
    let v325:ℕ:= 5
    let v326:ℕ:= 4
    let v327:ℚ:= (3:ℚ) / 128
    let v328:ℚ:= (7:ℚ) / 64
    let v329:ℚ:= (57:ℚ) / 512
    let v330:ℚ:= (3471657440109699659204039683:ℚ) / 79228162514264337593543950336
    let v331:ℚ[X]:= u123
    let v332:ℚ[X]:= u124
    let v333:ℚ[X]:= u125
    let v334:ℚ[X]:= u23 v328 v329
    let v335:ℚ[X]:= v331.comp v334
    let v336:ℚ[X]:= v332.comp v334
    let v337:ℚ[X]:= v333.comp v334
    let v461:ℚ:= 649037107316853453566312041152512
    let v462:List (ℕ × ℕ × ℚ):= [
      (0,9,(12258997918121826754645483520:ℚ)/v461),
      (1,8,(94881713223503103287365951488:ℚ)/v461),
      (2,7,(322790728666797307912872886272:ℚ)/v461),
      (3,6,(632552518522339516137457287168:ℚ)/v461),
      (4,5,(785452256456556836922790920192:ℚ)/v461),
      (5,4,(639562819119856208449401544704:ℚ)/v461),
      (6,3,(340723694417948947003623696384:ℚ)/v461),
      (7,2,(114270212062226145356149092096:ℚ)/v461),
      (8,1,(21862070058630426715783577224:ℚ)/v461),
      (9,0,(1820484590130372079098547511:ℚ)/v461)
    ]
    let v338:ℚ[X]:= Math.B699.N21.d9 v462
    have v339:Polynomial.C v330 - v335 = v338:= by
      apply Polynomial.funext
      intro x
      norm_num [v330,v335,v331,u123,u119,u120,u121,
        u31,u27,v325,v326,v327,v334,u23,v328,v329,v338,v462,v461,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v341:v334 = ((((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v334,u23,v328,v329,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v342:Math.B699.N21.d0 v338:= by
      apply u881
      norm_num [v462,v461]
    have v343:Math.B699.N21.d0 (Polynomial.C v330 - v335):= by
      rw [v339]
      exact v342
    have v344:Math.B699.N21.d0 v335:= by
      exact u26 (u35 v325 v326 v327 (by norm_num [v327]))
        v328 v329 (by norm_num [v328]) (by norm_num [v328,v329]) (by norm_num [v329])
    have v345:Math.B699.N21.d0 v336:= by
      exact u26 (u37 v325 v326 0 v327 (by norm_num [v327]))
        v328 v329 (by norm_num [v328]) (by norm_num [v328,v329]) (by norm_num [v329])
    have v346:Math.B699.N21.d0 v337:= by
      exact u26 (u37 v325 v326 1 v327 (by norm_num [v327]))
        v328 v329 (by norm_num [v328]) (by norm_num [v328,v329]) (by norm_num [v329])
    have v347:Math.B699.N20.d1 v330 v336 v335:= by
      exact Math.B699.N20.d1.leaf (lam:= v330) (w:= v336) (f:= v335)
        v345 v344 v343
    have v348:Math.B699.N20.d1 v330 v337 v335:= by
      exact Math.B699.N20.d1.leaf (lam:= v330) (w:= v337) (f:= v335)
        v346 v344 v343
    let v349:ℕ:= 5
    let v350:ℕ:= 4
    let v351:ℚ:= (3:ℚ) / 128
    let v352:ℚ:= (57:ℚ) / 512
    let v353:ℚ:= (29:ℚ) / 256
    let v354:ℚ:= (3471657440109699659204039683:ℚ) / 79228162514264337593543950336
    let v355:ℚ[X]:= u123
    let v356:ℚ[X]:= u124
    let v357:ℚ[X]:= u125
    let v358:ℚ[X]:= u23 v352 v353
    let v359:ℚ[X]:= v355.comp v358
    let v360:ℚ[X]:= v356.comp v358
    let v361:ℚ[X]:= v357.comp v358
    let v463:ℚ:= 649037107316853453566312041152512
    let v464:List (ℕ × ℕ × ℚ):= [
      (0,9,(1820484590130372079098547511:ℚ)/v463),
      (1,8,(10906652563716270707990277974:ℚ)/v463),
      (2,7,(26626872102912897293802698096:ℚ)/v463),
      (3,6,(33873072454219332968926871264:ℚ)/v463),
      (4,5,(25465846767863997114070109984:ℚ)/v463),
      (5,4,(17089048827971428323285604160:ℚ)/v463),
      (6,3,(17070491114098660144512899840:ℚ)/v463),
      (7,2,(14555048861624642981451630080:ℚ)/v463),
      (8,1,(6644775057001567847889923840:ℚ)/v463),
      (9,0,(1204646924475819497475655168:ℚ)/v463)
    ]
    let v362:ℚ[X]:= Math.B699.N21.d9 v464
    have v363:Polynomial.C v354 - v359 = v362:= by
      apply Polynomial.funext
      intro x
      norm_num [v354,v359,v355,u123,u119,u120,u121,
        u31,u27,v349,v350,v351,v358,u23,v352,v353,v362,v464,v463,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v364:v358 = ((((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v358,u23,v352,v353,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v365:Math.B699.N21.d0 v362:= by
      apply u881
      norm_num [v464,v463]
    have v366:Math.B699.N21.d0 (Polynomial.C v354 - v359):= by
      rw [v363]
      exact v365
    have v367:Math.B699.N21.d0 v359:= by
      exact u26 (u35 v349 v350 v351 (by norm_num [v351]))
        v352 v353 (by norm_num [v352]) (by norm_num [v352,v353]) (by norm_num [v353])
    have v368:Math.B699.N21.d0 v360:= by
      exact u26 (u37 v349 v350 0 v351 (by norm_num [v351]))
        v352 v353 (by norm_num [v352]) (by norm_num [v352,v353]) (by norm_num [v353])
    have v369:Math.B699.N21.d0 v361:= by
      exact u26 (u37 v349 v350 1 v351 (by norm_num [v351]))
        v352 v353 (by norm_num [v352]) (by norm_num [v352,v353]) (by norm_num [v353])
    have v370:Math.B699.N20.d1 v354 v360 v359:= by
      exact Math.B699.N20.d1.leaf (lam:= v354) (w:= v360) (f:= v359)
        v368 v367 v366
    have v371:Math.B699.N20.d1 v354 v361 v359:= by
      exact Math.B699.N20.d1.leaf (lam:= v354) (w:= v361) (f:= v359)
        v369 v367 v366
    let v372:ℕ:= 5
    let v373:ℕ:= 4
    let v374:ℚ:= (3:ℚ) / 128
    let v375:ℚ:= (29:ℚ) / 256
    let v376:ℚ:= (15:ℚ) / 128
    let v377:ℚ:= (3471657440109699659204039683:ℚ) / 79228162514264337593543950336
    let v378:ℚ[X]:= u123
    let v379:ℚ[X]:= u124
    let v380:ℚ[X]:= u125
    let v381:ℚ[X]:= u23 v375 v376
    let v382:ℚ[X]:= v378.comp v381
    let v383:ℚ[X]:= v379.comp v381
    let v384:ℚ[X]:= v380.comp v381
    let v465:ℚ:= 1267650600228229401496703205376
    let v466:List (ℕ × ℕ × ℚ):= [
      (0,9,(2352826024366834956007139:ℚ)/v465),
      (1,8,(37570150091492169406372738:ℚ)/v465),
      (2,7,(253079289532400063299223536:ℚ)/v465),
      (3,6,(916470256730564754343941472:ℚ)/v465),
      (4,5,(1991636209048903331167092544:ℚ)/v465),
      (5,4,(2735447857537020278104306528:ℚ)/v465),
      (6,3,(2403350359869083961625933504:ℚ)/v465),
      (7,2,(1314074788411170050187716800:ℚ)/v465),
      (8,1,(408361162287877037974695088:ℚ)/v465),
      (9,0,(55216793992383976736473648:ℚ)/v465)
    ]
    let v386:ℚ[X]:= Math.B699.N21.d9 v466
    have v387:Polynomial.C v377 - v382 = v386:= by
      apply Polynomial.funext
      intro x
      norm_num [v377,v382,v378,u123,u119,u120,u121,
        u31,u27,v372,v373,v374,v381,u23,v375,v376,v386,v466,v465,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v388:v381 = (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v381,u23,v375,v376,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v389:Math.B699.N21.d0 v386:= by
      apply u881
      norm_num [v466,v465]
    have v390:Math.B699.N21.d0 (Polynomial.C v377 - v382):= by
      rw [v387]
      exact v389
    have v391:Math.B699.N21.d0 v382:= by
      exact u26 (u35 v372 v373 v374 (by norm_num [v374]))
        v375 v376 (by norm_num [v375]) (by norm_num [v375,v376]) (by norm_num [v376])
    have v392:Math.B699.N21.d0 v383:= by
      exact u26 (u37 v372 v373 0 v374 (by norm_num [v374]))
        v375 v376 (by norm_num [v375]) (by norm_num [v375,v376]) (by norm_num [v376])
    have v393:Math.B699.N21.d0 v384:= by
      exact u26 (u37 v372 v373 1 v374 (by norm_num [v374]))
        v375 v376 (by norm_num [v375]) (by norm_num [v375,v376]) (by norm_num [v376])
    have v394:Math.B699.N20.d1 v377 v383 v382:= by
      exact Math.B699.N20.d1.leaf (lam:= v377) (w:= v383) (f:= v382)
        v392 v391 v390
    have v395:v312 = (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft:= by
      apply Polynomial.funext
      intro x
      norm_num [v312,u23,v277,v290,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v396:Math.B699.N20.d1 v377 v384 v382:= by
      exact Math.B699.N20.d1.leaf (lam:= v377) (w:= v384) (f:= v382)
        v393 v391 v390
    let v397:ℕ:= 5
    let v398:ℕ:= 4
    let v399:ℚ:= (3:ℚ) / 128
    let v400:ℚ:= (15:ℚ) / 128
    let v401:ℚ:= (1:ℚ) / 8
    let v402:ℚ:= (3471657440109699659204039683:ℚ) / 79228162514264337593543950336
    let v403:ℚ[X]:= u123
    let v404:ℚ[X]:= u124
    let v405:ℚ[X]:= u125
    let v406:ℚ[X]:= u23 v400 v401
    let v407:ℚ[X]:= v403.comp v406
    let v408:ℚ[X]:= v404.comp v406
    let v409:ℚ[X]:= v405.comp v406
    let v467:ℚ:= 79228162514264337593543950336
    let v468:List (ℕ × ℕ × ℚ):= [
      (0,9,(3451049624523998546029603:ℚ)/v467),
      (1,8,(42133194576163330995962395:ℚ)/v467),
      (2,7,(221575288584936927536435308:ℚ)/v467),
      (3,6,(660821395576402788864790780:ℚ)/v467),
      (4,5,(1236481166626218478401280378:ℚ)/v467),
      (5,4,(1510728548076191274097236346:ℚ)/v467),
      (6,3,(1208966065517240900007792892:ℚ)/v467),
      (7,2,(612607039341921944898162796:ℚ)/v467),
      (8,1,(178731704658249836955120667:ℚ)/v467),
      (9,0,(22915097440490794778006531:ℚ)/v467)
    ]
    let v410:ℚ[X]:= Math.B699.N21.d9 v468
    have v412:Polynomial.C v402 - v407 = v410:= by
      apply Polynomial.funext
      intro x
      norm_num [v402,v407,v403,u123,u119,u120,u121,
        u31,u27,v397,v398,v399,v406,u23,v400,v401,v410,v468,v467,Math.B699.N21.d9,
        Math.B699.N21.d8,Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_pow,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v413:v406 = ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v406,u23,v400,v401,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v414:Math.B699.N21.d0 v410:= by
      apply u881
      norm_num [v468,v467]
    have v415:Math.B699.N21.d0 (Polynomial.C v402 - v407):= by
      rw [v412]
      exact v414
    have v416:Math.B699.N21.d0 v407:= by
      exact u26 (u35 v397 v398 v399 (by norm_num [v399]))
        v400 v401 (by norm_num [v400]) (by norm_num [v400,v401]) (by norm_num [v401])
    have v417:Math.B699.N21.d0 v408:= by
      exact u26 (u37 v397 v398 0 v399 (by norm_num [v399]))
        v400 v401 (by norm_num [v400]) (by norm_num [v400,v401]) (by norm_num [v401])
    have v418:Math.B699.N21.d0 v409:= by
      exact u26 (u37 v397 v398 1 v399 (by norm_num [v399]))
        v400 v401 (by norm_num [v400]) (by norm_num [v400,v401]) (by norm_num [v401])
    have v419:Math.B699.N20.d1 v402 v408 v407:= by
      exact Math.B699.N20.d1.leaf (lam:= v402) (w:= v408) (f:= v407)
        v417 v416 v415
    have v420:Math.B699.N20.d1 v402 v409 v407:= by
      exact Math.B699.N20.d1.leaf (lam:= v402) (w:= v409) (f:= v407)
        v418 v416 v415
    have v436:v430 = ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63:= by
      apply Polynomial.funext
      intro x
      norm_num [v430,u23,v424,v425,Math.B699.N20.halfLeft,Math.B699.N20.d63,
        Polynomial.eval_comp,Polynomial.eval_add,Polynomial.eval_sub,
        Polynomial.eval_mul,Polynomial.eval_C,Polynomial.eval_X] <;> ring
    have v505:Math.B699.N20.d1 u122 ((u125).comp ((((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)) ((u123).comp ((((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u122) (w:= ((u125).comp ((((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft))) (f:= ((u123).comp ((((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)))
        (by simpa only [v330,u122,v337,v333,v335,v331,v341,Polynomial.comp_assoc] using v348)
        (by simpa only [v354,u122,v361,v357,v359,v355,v364,Polynomial.comp_assoc] using v371)
    have v506:Math.B699.N20.d1 u122 ((u125).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)) ((u123).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u122) (w:= ((u125).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft))) (f:= ((u123).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)))
        (by simpa only [Polynomial.comp_assoc] using v505)
        (by simpa only [v377,u122,v384,v380,v382,v378,v388,Polynomial.comp_assoc] using v396)
    have v507:Math.B699.N20.d1 u122 ((u125).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u123).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u122) (w:= ((u125).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u123).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [Polynomial.comp_assoc] using v506)
        (by simpa only [v402,u122,v409,v405,v407,v403,v413,Polynomial.comp_assoc] using v420)
    have v508:Math.B699.N20.d1 u122 ((u125).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u123).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u122) (w:= ((u125).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u123).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v301,u122,v309,v305,v307,v302,v316,Polynomial.comp_assoc] using v324)
        (by simpa only [Polynomial.comp_assoc] using v507)
    have v509:Math.B699.N20.d1 u122 ((u125).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u123).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u122) (w:= ((u125).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u123).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [v110,u122,v133,v126,v129,v111,v211,Polynomial.comp_assoc] using v293)
        (by simpa only [Polynomial.comp_assoc] using v508)
    have v510:Math.B699.N20.d1 u122 ((u125).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)) ((u123).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u122) (w:= ((u125).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft))) (f:= ((u123).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)))
        (by simpa only [v294,u122,v317,v310,v313,v295,v395,Polynomial.comp_assoc] using v52)
        (by simpa only [Polynomial.comp_assoc] using v509)
    have v511:Math.B699.N20.d1 u122 ((u125).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)) ((u123).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u122) (w:= ((u125).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft))) (f:= ((u123).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)))
        (by simpa only [Polynomial.comp_assoc] using v510)
        (by simpa only [v426,u122,v433,v429,v431,v427,v436,Polynomial.comp_assoc] using v6)
    have v512:Math.B699.N20.d1 u122 ((u125).comp (Math.B699.N20.halfLeft)) ((u123).comp (Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u122) (w:= ((u125).comp (Math.B699.N20.halfLeft))) (f:= ((u123).comp (Math.B699.N20.halfLeft)))
        (by simpa only [Polynomial.comp_assoc] using v511)
        (by simpa only [v12,u122,v20,v15,v17,v13,v24,Polynomial.comp_assoc] using v32)
    have v475:Math.B699.N20.d1 u122 (u125) (u123):= by
      exact Math.B699.N20.d1.split (lam:= u122) (w:= (u125)) (f:= (u123))
        (by simpa only [Polynomial.comp_assoc] using v512)
        (by simpa only [v39,u122,v46,v42,v44,v40,v50,Polynomial.comp_assoc] using v58)
    have v476:Math.B699.N20.d1 u122 (u125) (u123):= by
      exact v475
    have v477:Math.B699.N20.d1 u129 ((u131).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u130).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u129) (w:= ((u131).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u130).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v219,u129,v225,v221,v224,v220,v230,Polynomial.comp_assoc] using v237)
        (by simpa only [v244,u129,v250,v246,v249,v245,v255,Polynomial.comp_assoc] using v261)
    have v478:Math.B699.N20.d1 u129 ((u131).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u130).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u129) (w:= ((u131).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u130).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v193,u129,v199,v195,v198,v194,v204,Polynomial.comp_assoc] using v210)
        (by simpa only [Polynomial.comp_assoc] using v477)
    have v479:Math.B699.N20.d1 u129 ((u131).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u130).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u129) (w:= ((u131).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u130).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v170,u129,v176,v172,v175,v171,v180,Polynomial.comp_assoc] using v186)
        (by simpa only [Polynomial.comp_assoc] using v478)
    have v480:Math.B699.N20.d1 u129 ((u131).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u130).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u129) (w:= ((u131).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u130).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v146,u129,v152,v148,v151,v147,v157,Polynomial.comp_assoc] using v163)
        (by simpa only [Polynomial.comp_assoc] using v479)
    have v481:Math.B699.N20.d1 u129 ((u131).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u130).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u129) (w:= ((u131).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u130).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v117,u129,v124,v120,v123,v118,v132,Polynomial.comp_assoc] using v139)
        (by simpa only [Polynomial.comp_assoc] using v480)
    have v482:Math.B699.N20.d1 u129 ((u131).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u130).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u129) (w:= ((u131).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u130).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [v87,u129,v93,v89,v92,v88,v97,Polynomial.comp_assoc] using v108)
        (by simpa only [Polynomial.comp_assoc] using v481)
    have v483:Math.B699.N20.d1 u129 ((u131).comp (Math.B699.N20.halfLeft)) ((u130).comp (Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u129) (w:= ((u131).comp (Math.B699.N20.halfLeft))) (f:= ((u130).comp (Math.B699.N20.halfLeft)))
        (by simpa only [v64,u129,v70,v66,v69,v65,v74,Polynomial.comp_assoc] using v80)
        (by simpa only [Polynomial.comp_assoc] using v482)
    have v484:Math.B699.N20.d1 u122 ((u124).comp ((((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)) ((u123).comp ((((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u122) (w:= ((u124).comp ((((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft))) (f:= ((u123).comp ((((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)))
        (by simpa only [v330,u122,v336,v332,v335,v331,v341,Polynomial.comp_assoc] using v347)
        (by simpa only [v354,u122,v360,v356,v359,v355,v364,Polynomial.comp_assoc] using v370)
    have v485:Math.B699.N20.d1 u129 (u131) (u130):= by
      exact Math.B699.N20.d1.split (lam:= u129) (w:= (u131)) (f:= (u130))
        (by simpa only [Polynomial.comp_assoc] using v483)
        (by simpa only [v268,u129,v275,v270,v273,v269,v281,Polynomial.comp_assoc] using v288)
    have v486:Math.B699.N20.d1 u129 (u131) (u130):= by
      exact v485
    have v487:Math.B699.N20.d1 u129 ((u132).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u130).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u129) (w:= ((u132).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u130).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v219,u129,v226,v222,v224,v220,v230,Polynomial.comp_assoc] using v238)
        (by simpa only [v244,u129,v251,v247,v249,v245,v255,Polynomial.comp_assoc] using v262)
    have v488:Math.B699.N20.d1 u129 ((u132).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u130).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u129) (w:= ((u132).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u130).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v193,u129,v200,v196,v198,v194,v204,Polynomial.comp_assoc] using v212)
        (by simpa only [Polynomial.comp_assoc] using v487)
    have v489:Math.B699.N20.d1 u129 ((u132).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u130).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u129) (w:= ((u132).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u130).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v170,u129,v177,v173,v175,v171,v180,Polynomial.comp_assoc] using v187)
        (by simpa only [Polynomial.comp_assoc] using v488)
    have v490:Math.B699.N20.d1 u129 ((u132).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u130).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u129) (w:= ((u132).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u130).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v146,u129,v153,v149,v151,v147,v157,Polynomial.comp_assoc] using v164)
        (by simpa only [Polynomial.comp_assoc] using v489)
    have v491:Math.B699.N20.d1 u129 ((u132).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u130).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u129) (w:= ((u132).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u130).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v117,u129,v125,v121,v123,v118,v132,Polynomial.comp_assoc] using v140)
        (by simpa only [Polynomial.comp_assoc] using v490)
    have v492:Math.B699.N20.d1 u129 ((u132).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u130).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u129) (w:= ((u132).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u130).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [v87,u129,v94,v90,v92,v88,v97,Polynomial.comp_assoc] using v109)
        (by simpa only [Polynomial.comp_assoc] using v491)
    have v493:Math.B699.N20.d1 u129 ((u132).comp (Math.B699.N20.halfLeft)) ((u130).comp (Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u129) (w:= ((u132).comp (Math.B699.N20.halfLeft))) (f:= ((u130).comp (Math.B699.N20.halfLeft)))
        (by simpa only [v64,u129,v71,v67,v69,v65,v74,Polynomial.comp_assoc] using v81)
        (by simpa only [Polynomial.comp_assoc] using v492)
    have v494:Math.B699.N20.d1 u129 (u132) (u130):= by
      exact Math.B699.N20.d1.split (lam:= u129) (w:= (u132)) (f:= (u130))
        (by simpa only [Polynomial.comp_assoc] using v493)
        (by simpa only [v268,u129,v276,v271,v273,v269,v281,Polynomial.comp_assoc] using v289)
    have v495:Math.B699.N20.d1 u122 ((u124).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)) ((u123).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u122) (w:= ((u124).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft))) (f:= ((u123).comp (((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.halfLeft)))
        (by simpa only [Polynomial.comp_assoc] using v484)
        (by simpa only [v377,u122,v383,v379,v382,v378,v388,Polynomial.comp_assoc] using v394)
    have v496:Math.B699.N20.d1 u129 (u132) (u130):= by
      exact v494
    have v497:Math.B699.N20.d1 u122 ((u124).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u123).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u122) (w:= ((u124).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u123).comp ((((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [Polynomial.comp_assoc] using v495)
        (by simpa only [v402,u122,v408,v404,v407,v403,v413,Polynomial.comp_assoc] using v419)
    have v498:Math.B699.N20.d1 u122 ((u124).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)) ((u123).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u122) (w:= ((u124).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63))) (f:= ((u123).comp (((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63).comp Math.B699.N20.d63)))
        (by simpa only [v301,u122,v308,v304,v307,v302,v316,Polynomial.comp_assoc] using v323)
        (by simpa only [Polynomial.comp_assoc] using v497)
    have v499:Math.B699.N20.d1 u122 ((u124).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)) ((u123).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)):= by
      exact Math.B699.N20.d1.split (lam:= u122) (w:= ((u124).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63))) (f:= ((u123).comp ((((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.d63)))
        (by simpa only [v110,u122,v130,v119,v129,v111,v211,Polynomial.comp_assoc] using v292)
        (by simpa only [Polynomial.comp_assoc] using v498)
    have v500:Math.B699.N20.d1 u122 ((u124).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)) ((u123).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u122) (w:= ((u124).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft))) (f:= ((u123).comp (((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)))
        (by simpa only [v294,u122,v314,v303,v313,v295,v395,Polynomial.comp_assoc] using v48)
        (by simpa only [Polynomial.comp_assoc] using v499)
    have v501:Math.B699.N20.d1 u122 ((u124).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)) ((u123).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u122) (w:= ((u124).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft))) (f:= ((u123).comp ((Math.B699.N20.halfLeft).comp Math.B699.N20.halfLeft)))
        (by simpa only [Polynomial.comp_assoc] using v500)
        (by simpa only [v426,u122,v432,v428,v431,v427,v436,Polynomial.comp_assoc] using v5)
    have v502:Math.B699.N20.d1 u122 ((u124).comp (Math.B699.N20.halfLeft)) ((u123).comp (Math.B699.N20.halfLeft)):= by
      exact Math.B699.N20.d1.split (lam:= u122) (w:= ((u124).comp (Math.B699.N20.halfLeft))) (f:= ((u123).comp (Math.B699.N20.halfLeft)))
        (by simpa only [Polynomial.comp_assoc] using v501)
        (by simpa only [v12,u122,v19,v14,v17,v13,v24,Polynomial.comp_assoc] using v31)
    have v503:Math.B699.N20.d1 u122 (u124) (u123):= by
      exact Math.B699.N20.d1.split (lam:= u122) (w:= (u124)) (f:= (u123))
        (by simpa only [Polynomial.comp_assoc] using v502)
        (by simpa only [v39,u122,v45,v41,v44,v40,v50,Polynomial.comp_assoc] using v57)
    have v504:Math.B699.N20.d1 u122 (u124) (u123):= by
      exact v503
    exact ⟨v504,v476,v486,v496⟩
  have u133:Math.B699.N20.d1 u122 (u125) (u123):= u137.2.1
  have u134:Math.B699.N20.d1 u129 (u131) (u130):= u137.2.2.1
  have u135:Math.B699.N20.d1 u129 (u132) (u130):= u137.2.2.2
  have u136:Math.B699.N20.d1 u122 (u124) (u123):= u137.1
  let u138 (c d delta m:ℕ) (z:ℚ):ℚ:=
    (Math.B699.N18.d121 (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta)).eval₂
      (Int.castRingHom ℚ) z
  let u139 (c d delta m:ℕ) (z:ℚ):ℚ:=
    (Math.B699.N18.d37 (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta)).eval₂
      (Int.castRingHom ℚ) z
  have u140 (c d delta m:ℕ)
      (hcd:d < c) (hdelta:delta ≤ d) (hm:1 ≤ m):
      u882 (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) =
        Math.B699.N8.d44 c d delta m:= by
    have hm':m = (m - 1) + 1:= by omega
    have hd:d * m = d * (m - 1) + d:= by
      conv_lhs => rw [hm']
      ring
    have he:(c - d) * m = (c - d) * (m - 1) + (c - d):= by
      conv_lhs => rw [hm']
      ring
    have hc:c = d + (c - d):= by omega
    have htotal:(c + d) * m = d * m + (c - d) * m + d * m:= by
      conv_lhs => rw [hc]
      ring
    have hsum:d * m - delta + ((c - d) * m + delta - 1) +
        (d * m - delta) + 1 = (c + d) * m - delta:= by omega
    unfold u882 Math.B699.N8.d44
    rw [hsum]
    congr 1
    ring
  have u141 (c d delta:ℕ) (z:ℚ)
      (hcd:d < c) (hdelta:delta ≤ d) (hz:0 ≤ z):
      |u138 c d delta 1 z| = Math.B699.N8.d44 c d delta 1 * Math.B699.N21.moment (u33 c d delta z):= by
    unfold u138
    rw [← u889,u913]
    simp only [u896,abs_mul,abs_pow,abs_neg,abs_one,one_pow,one_mul]
    rw [abs_of_pos (u17 _ _ _)]
    rw [u13 c d delta 1 z hcd hdelta (by omega)]
    simp only [Nat.sub_self,pow_zero,mul_one]
    rw [abs_of_nonneg (u875 (u37 c d delta z hz))]
    have hp:u882 (d - delta) (c - d + delta - 1) (d - delta) =
        Math.B699.N8.d44 c d delta 1:= by
      simpa only [Nat.mul_one] using u140 c d delta 1 hcd hdelta (by omega)
    rw [hp]
  have u142 (c d delta:ℕ) (z:ℚ)
      (hcd:d < c) (hdelta:delta ≤ d) (hz:z ≤ 1):
      |u139 c d delta 1 z| = Math.B699.N8.d44 c d delta 1 * Math.B699.N21.moment (u34 c d delta z):= by
    unfold u139
    rw [← u890,u914]
    simp only [u897,abs_mul]
    rw [abs_of_pos (u17 _ _ _)]
    rw [u14 c d delta 1 z hcd hdelta (by omega)]
    simp only [Nat.sub_self,pow_zero,mul_one]
    rw [abs_of_nonneg (u875 (u20 c d delta z hz))]
    have hp:u882 (d - delta) (c - d + delta - 1) (d - delta) =
        Math.B699.N8.d44 c d delta 1:= by
      simpa only [Nat.mul_one] using u140 c d delta 1 hcd hdelta (by omega)
    rw [hp]
  let u1008 (n:ℕ) (a:ℕ → ℤ) (x y:ℤ):ℤ:=
    ∑ r ∈ Finset.range (n + 1),a r * x ^ r * y ^ (n - r)
  have u150 (n:ℕ) (a:ℕ → ℤ) (x y:ℤ) (hy:y ≠ 0):
      (u1008 n a x y:ℚ) =
        (y:ℚ) ^ n * (Math.B699.N18.d22 n a).eval₂ (Int.castRingHom ℚ)
          ((x:ℚ) / (y:ℚ)):= by
    classical
    have hyq:(y:ℚ) ≠ 0:= Int.cast_ne_zero.mpr hy
    simp only [u1008,Math.B699.N18.d22,Int.cast_sum,Int.cast_mul,
      Int.cast_pow,Polynomial.eval₂_finsetSum,Polynomial.eval₂_monomial,
      Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro r hr
    have hle:r ≤ n:= Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
    have hpow:(y:ℚ) ^ n = (y:ℚ) ^ (n - r) * (y:ℚ) ^ r:= by
      rw [← pow_add,Nat.sub_add_cancel hle]
    change (a r:ℚ) * (x:ℚ) ^ r * (y:ℚ) ^ (n - r) =
      (y:ℚ) ^ n * ((a r:ℚ) * ((x:ℚ) / (y:ℚ)) ^ r)
    rw [hpow,div_pow]
    field_simp [hyq]
    <;> ring
  have u151 (A B C:ℕ) (x y:ℤ) (hy:y ≠ 0):
      (u1008 C (Math.B699.N18.d99 A B C) x y:ℚ) =
        (y:ℚ) ^ C * (Math.B699.N18.d101 A B C).eval₂ (Int.castRingHom ℚ)
          ((x:ℚ) / (y:ℚ)):= by
    simpa only [Math.B699.N18.d101] using
      u150 C (Math.B699.N18.d99 A B C) x y hy
  have u152 (A B C:ℕ) (x y:ℤ) (hy:y ≠ 0):
      (u1008 A (Math.B699.N18.d118 A B C) x y:ℚ) =
        (y:ℚ) ^ A * (Math.B699.N18.d121 A B C).eval₂ (Int.castRingHom ℚ)
          ((x:ℚ) / (y:ℚ)):= by
    simpa only [Math.B699.N18.d121] using
      u150 A (Math.B699.N18.d118 A B C) x y hy
  let u942 (u B:ℕ) (x y:ℤ):ℤ:=
    u1008 u (Math.B699.N19.d100 u B) x y
  let u945 (a b k:ℕ):ℕ:=
    ∑ r ∈ Finset.range (k + 1),a.multichoose r * b.multichoose (k - r)
  have u946 (b k:ℕ):
      u945 0 b k = b.multichoose k:= by
    simp [u945,Finset.sum_range_succ']
  have u947 (a b k:ℕ):
      u945 a b (k + 1) = b.multichoose (k + 1) +
        ∑ r ∈ Finset.range (k + 1),a.multichoose (r + 1) * b.multichoose (k - r):= by
    unfold u945
    rw [Finset.sum_range_succ']
    simp only [Nat.multichoose_zero_right,Nat.sub_zero,one_mul,Nat.add_sub_add_right]
    omega
  have u948 (a b k:ℕ):
      u945 (a + 1) b (k + 1) =
        u945 a b (k + 1) + u945 (a + 1) b k:= by
    rw [u947 (a + 1) b k,u947 a b k]
    simp_rw [Nat.multichoose_succ_succ,Nat.add_mul]
    rw [Finset.sum_add_distrib]
    unfold u945
    omega
  have u949 (a b k:ℕ):
      (∑ r ∈ Finset.range (k + 1),a.multichoose r * b.multichoose (k - r)) =
        (a + b).multichoose k:= by
    change u945 a b k = (a + b).multichoose k
    induction a generalizing k with
    | zero => simpa only [Nat.zero_add] using u946 b k
    | succ a ha =>
      induction k with
      | zero => simp [u945]
      | succ k hk =>
        rw [u948,ha,hk]
        simpa only [Nat.add_assoc,Nat.add_left_comm,Nat.add_comm] using
          (Nat.multichoose_succ_succ (a + b) k).symm
  have u950 (u B k:ℕ) (hk:k ≤ u):
      (∑ r ∈ Finset.range (k + 1),(B + r).choose r * (2 * u - r).choose (k - r)) =
        (2 * u + B + 1).choose k:= by
    calc
      (∑ r ∈ Finset.range (k + 1),(B + r).choose r * (2 * u - r).choose (k - r)) =
          ∑ r ∈ Finset.range (k + 1),
            (B + 1).multichoose r * (2 * u - k + 1).multichoose (k - r):= by
        apply Finset.sum_congr rfl
        intro r hr
        have hle:r ≤ k:= Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
        rw [Nat.multichoose_eq,Nat.multichoose_eq]
        congr 2 <;> omega
      _ = (B + 1 + (2 * u - k + 1)).multichoose k:= u949 _ _ _
      _ = (2 * u + B + 1).choose k:= by
        rw [Nat.multichoose_eq]
        congr 1
        omega
  have u951 (u k r:ℕ) (hk:k ≤ u) (hr:r ≤ k):
      (2 * u - r).choose u * (u - r).choose (k - r) =
        (2 * u - k).choose u * (2 * u - r).choose (k - r):= by
    have hu:u ≤ 2 * u - r:= by omega
    rw [← Nat.choose_symm hu]
    have hfirst:2 * u - r - u = u - r:= by omega
    rw [hfirst,Nat.choose_mul (show k - r ≤ u - r by omega)]
    have htop:2 * u - r - (k - r) = 2 * u - k:= by omega
    have hbottom:u - r - (k - r) = u - k:= by omega
    rw [htop,hbottom]
    have hsym:(2 * u - k).choose (u - k) = (2 * u - k).choose u:= by
      have hs:= (Nat.choose_symm (show u ≤ 2 * u - k by omega))
      have hh:2 * u - k - u = u - k:= by omega
      simpa only [hh] using hs
    rw [hsym]
    exact Nat.mul_comm _ _
  have u939 (u B k:ℕ) (hk:k ≤ u):
      (∑ r ∈ Finset.range (k + 1),
        (2 * u - r).choose u * (B + r).choose r * (u - r).choose (k - r)) =
        (2 * u - k).choose u * (2 * u + B + 1).choose k:= by
    calc
      (∑ r ∈ Finset.range (k + 1),
          (2 * u - r).choose u * (B + r).choose r * (u - r).choose (k - r)) =
        ∑ r ∈ Finset.range (k + 1),
          (2 * u - k).choose u * ((B + r).choose r * (2 * u - r).choose (k - r)):= by
        apply Finset.sum_congr rfl
        intro r hr
        have hle:r ≤ k:= Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
        calc
          (2 * u - r).choose u * (B + r).choose r * (u - r).choose (k - r) =
            ((2 * u - r).choose u * (u - r).choose (k - r)) * (B + r).choose r:= by ring
          _ = ((2 * u - k).choose u * (2 * u - r).choose (k - r)) * (B + r).choose r:= by
            rw [u951 u k r hk hle]
          _ = (2 * u - k).choose u * ((B + r).choose r * (2 * u - r).choose (k - r)):= by ring
      _ = (2 * u - k).choose u *
        (∑ r ∈ Finset.range (k + 1),(B + r).choose r * (2 * u - r).choose (k - r)):= by
        rw [Finset.mul_sum]
      _ = (2 * u - k).choose u * (2 * u + B + 1).choose k:= by
        rw [u950 u B k hk]
  have u940 (u B k:ℕ) (hk:k ≤ u):
      Math.B699.N18.d99 u B u k = (-1:ℤ) ^ k *
        ∑ r ∈ Finset.range (k + 1),Math.B699.N18.d118 u B u r * ((u - r).choose (k - r):ℤ):= by
    have hz:
        (∑ r ∈ Finset.range (k + 1),
          ((2 * u - r).choose u:ℤ) * ((B + r).choose r:ℤ) *
            ((u - r).choose (k - r):ℤ)) =
          ((2 * u - k).choose u:ℤ) * ((2 * u + B + 1).choose k:ℤ):= by
      exact_mod_cast u939 u B k hk
    have hN:u + B + u + 1 = 2 * u + B + 1:= by omega
    have hU:u + u = 2 * u:= by omega
    calc
      Math.B699.N18.d99 u B u k = (-1:ℤ) ^ (u + k) *
          (((2 * u - k).choose u:ℤ) * ((2 * u + B + 1).choose k:ℤ)):= by
        simp only [Math.B699.N18.d99,hN,hU]
        ring
      _ = (-1:ℤ) ^ k * ((-1:ℤ) ^ u *
          ∑ r ∈ Finset.range (k + 1),
            ((2 * u - r).choose u:ℤ) * ((B + r).choose r:ℤ) *
              ((u - r).choose (k - r):ℤ)):= by
        rw [hz,pow_add]
        ring
      _ = (-1:ℤ) ^ k *
          ∑ r ∈ Finset.range (k + 1),Math.B699.N18.d118 u B u r * ((u - r).choose (k - r):ℤ):= by
        rw [Finset.mul_sum]
        congr 1
        apply Finset.sum_congr rfl
        intro r hr
        simp only [Math.B699.N18.d118,Math.B699.N18.d119,hU,Nat.cast_mul]
        ring
  have u1013 (A B C r:ℕ) (hr:r ≤ A):
      Math.B699.N18.qContent A B C ∣ Math.B699.N18.d119 A B C r:= by
    exact Finset.gcd_dvd (Finset.mem_range.mpr (Nat.lt_succ_iff.mpr hr))
  have u1014 (A B C r:ℕ) (hr:r ≤ A):
      (Math.B699.N18.qContent A B C:ℤ) ∣ Math.B699.N18.d118 A B C r:= by
    obtain ⟨k,hk⟩:= u1013 A B C r hr
    refine ⟨(-1:ℤ) ^ C * (k:ℤ),?_⟩
    simp only [Math.B699.N18.d118,hk,Nat.cast_mul]
    ring
  have u941 (u B k:ℕ) (hk:k ≤ u):
      (Math.B699.N18.qContent u B u:ℤ) ∣ Math.B699.N18.d99 u B u k:= by
    rw [u940 u B k hk]
    apply dvd_mul_of_dvd_right
    apply Finset.dvd_sum
    intro r hr
    have hrk:r ≤ k:= Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
    exact dvd_mul_of_dvd_left (u1014 u B u r (hrk.trans hk)) _
  have u943 (u B r:ℕ) (hr:r ≤ u):
      (Math.B699.N18.qContent u B u:ℤ) * Math.B699.N19.d100 u B r = Math.B699.N18.d99 u B u r:= by
    rw [Math.B699.N19.d100,mul_comm]
    exact Int.ediv_mul_cancel (u941 u B r hr)
  have u944 (u B:ℕ) (x y:ℤ):
      (Math.B699.N18.qContent u B u:ℤ) * u942 u B x y =
        u1008 u (Math.B699.N18.d99 u B u) x y:= by
    classical
    simp only [u942,u1008,Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro r hr
    rw [← mul_assoc,← mul_assoc,u943 u B r
      (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))]
  have u153 (u v:ℕ) (x y:ℤ):
      (Math.B699.N18.qContent u v u:ℚ) * (u942 u v x y:ℚ) =
        (u1008 u (Math.B699.N18.d99 u v u) x y:ℚ):= by
    have h:= congrArg (fun k:ℤ => (k:ℚ))
      (u944 u v x y)
    simpa only [Int.cast_mul,Int.cast_natCast] using h
  let u1010 (A B C:ℕ) (x y:ℤ):ℤ:=
    u1008 A (Math.B699.N18.d120 A B C) x y
  have u1011 (A B C r:ℕ) (hr:r ≤ A):
      (Math.B699.N18.qContent A B C:ℤ) * Math.B699.N18.d120 A B C r = Math.B699.N18.d118 A B C r:= by
    rw [Math.B699.N18.d120,mul_comm]
    exact Int.ediv_mul_cancel (u1014 A B C r hr)
  have u1012 (A B C:ℕ) (x y:ℤ):
      (Math.B699.N18.qContent A B C:ℤ) * u1010 A B C x y =
        u1008 A (Math.B699.N18.d118 A B C) x y:= by
    classical
    simp only [u1010,u1008,Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro r hr
    rw [← mul_assoc,← mul_assoc,u1011 A B C r
      (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))]
  have u154 (A B C:ℕ) (x y:ℤ):
      (Math.B699.N18.qContent A B C:ℚ) * (u1010 A B C x y:ℚ) =
        (u1008 A (Math.B699.N18.d118 A B C) x y:ℚ):= by
    have h:= congrArg (fun k:ℤ => (k:ℚ))
      (u1012 A B C x y)
    simpa only [Int.cast_mul,Int.cast_natCast] using h
  let u906 (A B C:ℕ) (z:ℚ):ℚ:=
    ∑ r ∈ Finset.range (C + 1),
      ((-1:ℚ) ^ (C + r) * ((A + B + C + 1).choose r:ℚ) *
        ((A + C - r).choose A:ℚ)) * z ^ r
  have u888 (A B C:ℕ) (z:ℚ):
      u906 A B C z = (Math.B699.N18.d101 A B C).eval₂ (Int.castRingHom ℚ) z:= by
    classical
    unfold u906 Math.B699.N18.d101 Math.B699.N18.d22
    simp only [Polynomial.eval₂_finsetSum,Polynomial.eval₂_monomial]
    apply Finset.sum_congr rfl
    intro r hr
    simp [Math.B699.N18.d99]
  let u892 (A B C:ℕ) (z:ℚ):ℚ[X]:=
    X ^ A * (1 - X) ^ B * (Polynomial.C z - X) ^ C
  let u895 (A B C:ℕ) (z:ℚ):ℚ:=
    u882 A B C * Math.B699.N21.moment (u892 A B C z)
  have u898 (A B C:ℕ) (z:ℚ):
      (u892 A B C z).comp (Polynomial.C z * X) =
        Polynomial.C (z ^ (A + C)) * u894 A B C z:= by
    simp only [u892,Polynomial.mul_comp,Polynomial.pow_comp,
      Polynomial.sub_comp,Polynomial.X_comp,Polynomial.C_comp,Polynomial.one_comp]
    have h:Polynomial.C z - Polynomial.C z * (X:ℚ[X]) =
        Polynomial.C z * (1 - X):= by ring
    rw [h]
    unfold u894
    simp only [mul_pow,Polynomial.C_mul,Polynomial.C_pow,pow_add]
    ring
  have u899 (A B C:ℕ) (z:ℚ):
      (u892 A B C z).comp ((1 - X) + Polynomial.C z * X) =
        Polynomial.C ((-1:ℚ) ^ C * (1 - z) ^ (B + C)) * u893 A B C z:= by
    simp only [u892,Polynomial.mul_comp,Polynomial.pow_comp,
      Polynomial.sub_comp,Polynomial.X_comp,Polynomial.C_comp,Polynomial.one_comp]
    have h1:(1:ℚ[X]) - ((1 - X) + Polynomial.C z * X) =
        Polynomial.C (1 - z) * X:= by
      simp only [map_sub,map_one]
      ring
    have h2:Polynomial.C z - ((1 - X:ℚ[X]) + Polynomial.C z * X) =
        Polynomial.C (-(1 - z)) * (1 - X):= by
      simp only [map_neg,map_sub,map_one]
      ring
    have hneg:(Polynomial.C (-(1 - z)):ℚ[X]) =
        Polynomial.C (-1) * Polynomial.C (1 - z):= by
      rw [← Polynomial.C_mul,neg_one_mul]
    rw [h1,h2,hneg]
    unfold u893
    simp only [mul_pow,Polynomial.C_mul,Polynomial.C_pow,pow_add]
    ring
  have u900 (A B C:ℕ) (z:ℚ):
      u895 A B C z - (1 - z) ^ (B + C + 1) * u896 A B C z =
        z ^ (A + C + 1) * u897 A B C z:= by
    have h:= u921 (u892 A B C z) z
    simp only [u898,u899,Math.B699.N21.d76] at h
    unfold u895 u896 u897
    rw [h]
    simp only [pow_succ]
    ring
  have u885 (A B C r:ℕ) (hr:r ≤ C):
      u882 A B C * (C.choose r:ℚ) * Math.B699.N21.d10 (A + C - r) B =
        ((A + B + C + 1).choose r:ℚ) * ((A + C - r).choose A:ℚ):= by
    have hrN:r ≤ A + B + C + 1:= by omega
    have hA:A ≤ A + C - r:= by omega
    rw [u884 C r hr,
      u884 (A + B + C + 1) r hrN,
      u884 (A + C - r) A hA]
    dsimp [u882,Math.B699.N21.d10]
    have hsub:A + C - r - A = C - r:= by omega
    have htotal:A + C - r + B + 1 = A + B + C + 1 - r:= by omega
    rw [hsub,htotal]
    field_simp [u883]
    <;> ring
  have u909 (A B C:ℕ) (z:ℚ):
      u892 A B C z =
        ∑ r ∈ Finset.range (C + 1),
          Polynomial.C ((-1:ℚ) ^ (C + r) * (C.choose r:ℚ) * z ^ r) *
            Math.B699.N21.d8 (A + C - r) B:= by
    simpa only [u892,Math.B699.N21.d8,map_mul,map_pow,map_neg,map_one,
      map_natCast] using
      (Math.B699.N22.N16.d103 A B C (Polynomial.C z) (X:ℚ[X]))
  have u912 (A B C:ℕ) (z:ℚ):u906 A B C z = u895 A B C z:= by
    classical
    unfold u906 u895
    rw [u909,Math.B699.N22.d83]
    simp only [Math.B699.N21.d76,u902]
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro r hr
    have h:= u885 A B C r (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))
    calc
      ((-1:ℚ) ^ (C + r) * ((A + B + C + 1).choose r:ℚ) *
          ((A + C - r).choose A:ℚ)) * z ^ r =
        ((-1:ℚ) ^ (C + r) * z ^ r) *
          (((A + B + C + 1).choose r:ℚ) * ((A + C - r).choose A:ℚ)):= by ring
      _ = ((-1:ℚ) ^ (C + r) * z ^ r) *
          (u882 A B C * (C.choose r:ℚ) * Math.B699.N21.d10 (A + C - r) B):= by rw [h]
      _ = _:= by ring
  have u905 (A B C:ℕ) (z:ℚ):
      u906 A B C z - (1 - z) ^ (B + C + 1) * u907 A B C z =
        z ^ (A + C + 1) * u908 A B C z:= by
    rw [u912,u913,u914]
    exact u900 A B C z
  have u891 (A B C:ℕ) (z:ℚ):
      (Math.B699.N18.d101 A B C).eval₂ (Int.castRingHom ℚ) z -
          (1 - z) ^ (B + C + 1) * (Math.B699.N18.d121 A B C).eval₂ (Int.castRingHom ℚ) z =
        z ^ (A + C + 1) * (Math.B699.N18.d37 A B C).eval₂ (Int.castRingHom ℚ) z:= by
    rw [← u888,← u889,← u890]
    exact u905 A B C z
  have u156 (u v:ℕ) (x y:ℤ) (hy:y ≠ 0):
      (y:ℚ) ^ (u + v + 1) * (u1008 u (Math.B699.N18.d99 u v u) x y:ℚ) -
          ((y - x:ℤ):ℚ) ^ (u + v + 1) *
            (u1008 u (Math.B699.N18.d118 u v u) x y:ℚ) =
        (y:ℚ) ^ v * (x:ℚ) ^ (2 * u + 1) *
          (Math.B699.N18.d37 u v u).eval₂ (Int.castRingHom ℚ) ((x:ℚ) / (y:ℚ)):= by
    let z:ℚ:= (x:ℚ) / (y:ℚ)
    let pEval:ℚ:= (Math.B699.N18.d101 u v u).eval₂ (Int.castRingHom ℚ) z
    let qEval:ℚ:= (Math.B699.N18.d121 u v u).eval₂ (Int.castRingHom ℚ) z
    let eEval:ℚ:= (Math.B699.N18.d37 u v u).eval₂ (Int.castRingHom ℚ) z
    have hyq:(y:ℚ) ≠ 0:= Int.cast_ne_zero.mpr hy
    have hyz:(y:ℚ) * z = (x:ℚ):= by
      dsimp [z]
      field_simp [hyq]
      <;> ring
    have hbase:(y:ℚ) * (1 - z) = (y:ℚ) - (x:ℚ):= by
      calc
        (y:ℚ) * (1 - z) = (y:ℚ) - (y:ℚ) * z:= by ring
        _ = (y:ℚ) - (x:ℚ):= by rw [hyz]
    have hquotient_pow:
        (y:ℚ) ^ (u + v + 1) * (1 - z) ^ (u + v + 1) =
          ((y:ℚ) - (x:ℚ)) ^ (u + v + 1):= by
      rw [← mul_pow,hbase]
    have hsource:pEval - (1 - z) ^ (u + v + 1) * qEval =
        z ^ (2 * u + 1) * eEval:= by
      have hvu:v + u + 1 = u + v + 1:= by omega
      have huu:u + u + 1 = 2 * u + 1:= by omega
      dsimp only [pEval,qEval,eEval]
      simpa only [hvu,huu] using u891 u v u z
    have hy_powers:
        (y:ℚ) ^ u * (y:ℚ) ^ (u + v + 1) =
          (y:ℚ) ^ v * (y:ℚ) ^ (2 * u + 1):= by
      rw [← pow_add,← pow_add]
      congr 1
      omega
    have hyz_pow:(y:ℚ) ^ (2 * u + 1) * z ^ (2 * u + 1) =
        (x:ℚ) ^ (2 * u + 1):= by
      rw [← mul_pow,hyz]
    rw [u151 u v u x y hy,
      u152 u v u x y hy]
    simp only [Int.cast_sub]
    change (y:ℚ) ^ (u + v + 1) * ((y:ℚ) ^ u * pEval) -
        ((y:ℚ) - (x:ℚ)) ^ (u + v + 1) * ((y:ℚ) ^ u * qEval) =
      (y:ℚ) ^ v * (x:ℚ) ^ (2 * u + 1) * eEval
    calc
      (y:ℚ) ^ (u + v + 1) * ((y:ℚ) ^ u * pEval) -
          ((y:ℚ) - (x:ℚ)) ^ (u + v + 1) * ((y:ℚ) ^ u * qEval) =
        (y:ℚ) ^ u * ((y:ℚ) ^ (u + v + 1) * pEval -
          ((y:ℚ) - (x:ℚ)) ^ (u + v + 1) * qEval):= by ring
      _ = (y:ℚ) ^ u * ((y:ℚ) ^ (u + v + 1) *
          (pEval - (1 - z) ^ (u + v + 1) * qEval)):= by
        congr 1
        calc
          (y:ℚ) ^ (u + v + 1) * pEval -
              ((y:ℚ) - (x:ℚ)) ^ (u + v + 1) * qEval =
            (y:ℚ) ^ (u + v + 1) * pEval -
              ((y:ℚ) ^ (u + v + 1) * (1 - z) ^ (u + v + 1)) * qEval:= by
            rw [hquotient_pow]
          _ = (y:ℚ) ^ (u + v + 1) *
              (pEval - (1 - z) ^ (u + v + 1) * qEval):= by ring
      _ = (y:ℚ) ^ u * ((y:ℚ) ^ (u + v + 1) *
          (z ^ (2 * u + 1) * eEval)):= by rw [hsource]
      _ = ((y:ℚ) ^ u * (y:ℚ) ^ (u + v + 1)) *
          z ^ (2 * u + 1) * eEval:= by ring
      _ = ((y:ℚ) ^ v * (y:ℚ) ^ (2 * u + 1)) *
          z ^ (2 * u + 1) * eEval:= by rw [hy_powers]
      _ = (y:ℚ) ^ v * ((y:ℚ) ^ (2 * u + 1) * z ^ (2 * u + 1)) *
          eEval:= by ring
      _ = (y:ℚ) ^ v * (x:ℚ) ^ (2 * u + 1) * eEval:= by rw [hyz_pow]
  have u157 (u v:ℕ) (x y:ℤ) (hy:y ≠ 0):
      (Math.B699.N18.qContent u v u:ℚ) *
        ((y:ℚ) ^ (u + v + 1) * (u942 u v x y:ℚ) -
          ((y - x:ℤ):ℚ) ^ (u + v + 1) *
            (u1010 u v u x y:ℚ)) =
        (y:ℚ) ^ v * (x:ℚ) ^ (2 * u + 1) *
          (Math.B699.N18.d37 u v u).eval₂ (Int.castRingHom ℚ) ((x:ℚ) / (y:ℚ)):= by
    calc
      (Math.B699.N18.qContent u v u:ℚ) *
          ((y:ℚ) ^ (u + v + 1) * (u942 u v x y:ℚ) -
            ((y - x:ℤ):ℚ) ^ (u + v + 1) *
              (u1010 u v u x y:ℚ)) =
        (y:ℚ) ^ (u + v + 1) *
            ((Math.B699.N18.qContent u v u:ℚ) * (u942 u v x y:ℚ)) -
          ((y - x:ℤ):ℚ) ^ (u + v + 1) *
            ((Math.B699.N18.qContent u v u:ℚ) * (u1010 u v u x y:ℚ)):= by ring
      _ = (y:ℚ) ^ (u + v + 1) *
            (u1008 u (Math.B699.N18.d99 u v u) x y:ℚ) -
          ((y - x:ℤ):ℚ) ^ (u + v + 1) *
            (u1008 u (Math.B699.N18.d118 u v u) x y:ℚ):= by
        rw [u153 u v x y,
          u154 u v u x y]
      _ = (y:ℚ) ^ v * (x:ℚ) ^ (2 * u + 1) *
          (Math.B699.N18.d37 u v u).eval₂ (Int.castRingHom ℚ) ((x:ℚ) / (y:ℚ)):=
        u156 u v x y hy
  have u155 (u v:ℕ) (x y:ℤ) (hy:y ≠ 0):
      (Math.B699.N18.qContent u v u:ℚ) *
        ((y ^ (u + v + 1) * u942 u v x y -
            (y - x) ^ (u + v + 1) * u1010 u v u x y:ℤ):ℚ) =
        (y:ℚ) ^ v * (x:ℚ) ^ (2 * u + 1) *
          (Math.B699.N18.d37 u v u).eval₂ (Int.castRingHom ℚ) ((x:ℚ) / (y:ℚ)):= by
    simpa only [Int.cast_sub,Int.cast_mul,Int.cast_pow] using
      u157 u v x y hy
  let u166 (n:ℕ):ℕ:= (n + 1) / 2
  have u168 {n H:ℕ} (h:2 * H ≤ n):
      H ≤ u166 n:= by
    dsimp only [u166]
    omega
  have u169 {n k:ℕ} (h:(2:ℕ) ^ (k + 1) ≤ n):
      (2:ℕ) ^ k ≤ u166 n:= by
    apply u168
    calc
      2 * (2:ℕ) ^ k = (2:ℕ) ^ (k + 1):= by
        rw [Nat.pow_succ]
        exact Nat.mul_comm _ _
      _ ≤ n:= h
  have u170 {n k:ℕ} (hk:5 ≤ k) (hn:(2:ℕ) ^ k ≤ n):
      20 ≤ n:= by
    have h32:32 ≤ (2:ℕ) ^ k:= by
      change (2:ℕ) ^ 5 ≤ (2:ℕ) ^ k
      exact Nat.pow_le_pow_right (by decide) hk
    exact Nat.le_trans (by decide:20 ≤ 32) (Nat.le_trans h32 hn)
  have u171 {n a b:ℕ} (ha:a < 11) (hb:b < 11):
      |((n - a:ℕ):ℤ) - ((n - b:ℕ):ℤ)| ≤ 10:= by
    apply abs_le.mpr
    constructor <;> omega
  have u167 {n a:ℕ} (hn:20 ≤ n) (ha:a < 11):
      u166 n ≤ n - a ∧ n - a ≤ 2 * u166 n:= by
    dsimp only [u166]
    omega
  have u172 {n p:ℕ} (hn:20 ≤ n) (window:N5.N15.d2 n p):
      u166 n ≤ p ^ (n.choose 11).factorization p * window.cofactor ∧
        p ^ (n.choose 11).factorization p * window.cofactor ≤ 2 * u166 n:= by
    have hrepr:p ^ (n.choose 11).factorization p * window.cofactor = n - window.offset:= by
      simpa only [N5.N15.d108,Nat.mul_comm] using window.equation
    rw [hrepr]
    exact u167 hn window.offset_lt
  let u400:ℕ:= 2 ^ 15359
  let u406 (row:Bool):ℕ:= if row then 0 else 1
  let u399:ℕ:= 5726930071079973414170
  let u401:ℕ:= 213
  let u519:ℕ:= 1694801261684299070333536458252484608
  let u520:ℕ:= 1476369155193264712520030439541015625
  let u528:ℚ:= (u519:ℚ) / (u520:ℚ)
  let u543:ℚ:= (1273397 / 1000000:ℚ) ^ 3
  let u556:ℚ:= 440758604932333255282947863 / 39614081257132168796771975168
  let u558:ℚ:= Math.B699.N8.beta 5 3 * u556
  let u569:ℚ:= (625:ℚ) ^ 5 * u543
  let u570 (BQ:ℚ):ℚ:= (2:ℚ) ^ 5 * (4375:ℚ) ^ 3 * BQ
  let u571 (BQ:ℚ):ℚ:= u569 / u570 BQ
  have u514:u571 u558 = u528:= by
    norm_num [u571,u569,u570,u543,u558,Math.B699.N8.beta,u556,
      u528,u519,u520]
  have u526:u520 ≤ u519:= by decide
  have u525:0 < u520:= by decide
  have u529:(0:ℚ) < (u520:ℚ):= by
    exact_mod_cast u525
  have u530:(1:ℚ) ≤ u528:= by
    unfold u528
    apply (le_div_iff₀ u529).mpr
    have h:(u520:ℚ) ≤ (u519:ℚ):= by
      exact_mod_cast u526
    simpa only [one_mul] using h
  have u527:2 * u520 ^ 6 ≤ u519 ^ 6:= by decide
  have u531:(2:ℚ) ≤ u528 ^ 6:= by
    unfold u528
    rw [div_pow]
    apply (le_div_iff₀ (pow_pos u529 6)).mpr
    exact_mod_cast u527
  have u532:(48:ℚ) < u528 ^ 213:= by
    have h64:(64:ℚ) ≤ u528 ^ 36:= by
      calc
        (64:ℚ) = (2:ℚ) ^ 6:= by norm_num
        _ ≤ (u528 ^ 6) ^ 6:=
          pow_le_pow_left₀ (by norm_num:(0:ℚ) ≤ 2) u531 6
        _ = u528 ^ 36:= by rw [← pow_mul]
    exact lt_of_lt_of_le (by norm_num:(48:ℚ) < 64)
      (le_trans h64 (pow_le_pow_right₀ u530 (by decide:36 ≤ 213)))
  have u515:(48:ℚ) < u571 u558 ^ 213:= by
    rw [u514]
    exact u532
  let u518:ℕ:= 5726930071079973414170
  have u524:u518 ^ 8 ≤ (2:ℕ) ^ 579:= by decide
  have u533 (k:ℕ):(2:ℕ) ^ (k + 2) = 4 * (2:ℕ) ^ k:= by
    calc
      (2:ℕ) ^ (k + 2) = (2:ℕ) ^ k * 2 ^ 2:= Nat.pow_add 2 k 2
      _ = (2:ℕ) ^ k * 4:= by rw [show (2:ℕ) ^ 2 = 4 by decide]
      _ = 4 * (2:ℕ) ^ k:= Nat.mul_comm _ _
  have u534:u518 ^ (213 - 1) ≤ 4 * (2:ℕ) ^ 15359:= by
    have h:= Math.B699.N7.d7 u518 212 1 1 15361 579 8
      (by decide)
      (by
        set_option exponentiation.threshold 579 in
          exact u524)
      (by decide)
    have h212:u518 ^ 212 ≤ (2:ℕ) ^ 15361:= by
      simpa only [Nat.pow_one] using h
    calc
      u518 ^ (213 - 1) = u518 ^ 212:= rfl
      _ ≤ (2:ℕ) ^ 15361:= h212
      _ = 4 * (2:ℕ) ^ 15359:= u533 15359
  have u521:(5:ℕ) ^ 512 ≤ 2 ^ 1189:= by decide
  have u523:(2:ℕ) ^ 289 ≤ u518 ^ 4:= by decide
  have u535:(5:ℕ) ^ 20000 ≤ u518 ^ 646 ∧
      ((5:ℕ) ^ 20000) ^ 213 ≤ ((2:ℕ) ^ 15359) ^ 646 ∧
      (4:ℕ) ^ 646 * (5 ^ 20000) ^ (213 + 1) ≤ u518 ^ (646 * 213):= by
    exact Math.B699.N7.d25 5 u518 20000 646 213 15359 1189 512 289 4
      (by decide) (by decide)
      (by
        set_option exponentiation.threshold 1189 in
          exact u521)
      (by
        set_option exponentiation.threshold 289 in
          exact u523)
      (by decide) (by decide) (by decide)
  have u537:(5:ℕ) ^ 20000 ≤ u518 ^ 646:= u535.1
  have u538:((5:ℕ) ^ 20000) ^ 213 ≤ ((2:ℕ) ^ 15359) ^ 646:= u535.2.1
  have u539:(4:ℕ) ^ 646 * (5 ^ 20000) ^ (213 + 1) ≤
      u518 ^ (646 * 213):= u535.2.2
  have u522:(3:ℕ) ^ 128 ≤ 2 ^ 203:= by decide
  have u536:(3:ℕ) ^ 35000 ≤ u518 ^ 772 ∧
      ((3:ℕ) ^ 35000) ^ 213 ≤ ((2:ℕ) ^ 15359) ^ 772 ∧
      (4:ℕ) ^ 772 * (3 ^ 35000) ^ (213 + 1) ≤ u518 ^ (772 * 213):= by
    exact Math.B699.N7.d25 3 u518 35000 772 213 15359 203 128 289 4
      (by decide) (by decide) u522
      (by
        set_option exponentiation.threshold 289 in
          exact u523)
      (by decide) (by decide) (by decide)
  have u540:(3:ℕ) ^ 35000 ≤ u518 ^ 772:= u536.1
  have u541:((3:ℕ) ^ 35000) ^ 213 ≤ ((2:ℕ) ^ 15359) ^ 772:= u536.2.1
  have u542:(4:ℕ) ^ 772 * (3 ^ 35000) ^ (213 + 1) ≤
      u518 ^ (772 * 213):= u536.2.2
  have u516:
      (48:ℚ) < u571 u558 ^ 213 ∧
      u399 ^ (u401 - 1) ≤ 4 * u400 ∧
      (5:ℕ) ^ 20000 ≤ u399 ^ 646 ∧
      ((5:ℕ) ^ 20000) ^ u401 ≤ u400 ^ 646 ∧
      (4:ℕ) ^ 646 * (5 ^ 20000) ^ (u401 + 1) ≤ u399 ^ (646 * u401) ∧
      (3:ℕ) ^ 35000 ≤ u399 ^ 772 ∧
      ((3:ℕ) ^ 35000) ^ u401 ≤ u400 ^ 772 ∧
      (4:ℕ) ^ 772 * (3 ^ 35000) ^ (u401 + 1) ≤ u399 ^ (772 * u401):= by
    have h:= And.intro u515
      (And.intro u534
        (And.intro u537
          (And.intro u538
            (And.intro u539
              (And.intro u540 (And.intro u541 u542))))))
    simpa only [u399,u518,u401,u400] using h
  let u557:ℚ:= 618834739845914957406423393 / 39614081257132168796771975168
  let u559:ℚ:= Math.B699.N8.beta 5 3 * u557
  have u560:0 < u556 ∧ 0 < u557 ∧ 0 < u558 ∧ 0 < u559:= by
    norm_num [u556,u557,u558,u559,Math.B699.N8.beta]
  have u407 (row:Bool):u406 row = 0 ∨ u406 row = 1:= by
    cases row <;> simp [u406]
  let u544 (m:ℕ) (row:Bool):ℚ:=
    u138 5 3 (u406 row) m (1 / 4375)
  let u545 (m:ℕ) (row:Bool):ℚ:=
    u139 5 3 (u406 row) m (1 / 4375)
  have u561 (F K Math.B699.N8.beta lam weight:ℚ) (m:ℕ)
      (hm:1 ≤ m) (hbeta:0 ≤ Math.B699.N8.beta) (hlam:0 ≤ lam) (hweight:0 ≤ weight)
      (hF:F ≤ K * Math.B699.N8.beta ^ m) (hcap:K * weight ≤ lam):
      F * (lam ^ (m - 1) * weight) ≤ (Math.B699.N8.beta * lam) ^ m:= by
    calc
      _ ≤ (K * Math.B699.N8.beta ^ m) * (lam ^ (m - 1) * weight):=
        mul_le_mul_of_nonneg_right hF (mul_nonneg (pow_nonneg hlam _) hweight)
      _ = (Math.B699.N8.beta ^ m * lam ^ (m - 1)) * (K * weight):= by ring
      _ ≤ (Math.B699.N8.beta ^ m * lam ^ (m - 1)) * lam:=
        mul_le_mul_of_nonneg_left hcap (mul_nonneg (pow_nonneg hbeta _) (pow_nonneg hlam _))
      _ = (Math.B699.N8.beta * lam) ^ m:= by
        simp only [mul_pow]
        rw [mul_assoc,← pow_succ,Nat.sub_add_cancel hm]
  have u562 (delta m:ℕ) (hdelta:delta = 0 ∨ delta = 1)
      (hm:1 ≤ m) (lam:ℚ) (hlam:0 < lam)
      (tree:Math.B699.N20.d1 lam (u33 5 3 delta (1 / 4375)) (u31 5 3 (1 / 4375)))
      (hcap:2 * |u138 5 3 delta 1 (1 / 4375)| ≤ Math.B699.N8.beta 5 3 * lam):
      |u138 5 3 delta m (1 / 4375)| ≤ (Math.B699.N8.beta 5 3 * lam) ^ m:= by
    have hd:delta ≤ 3:= by rcases hdelta with h | h <;> omega
    have hb:0 < Math.B699.N8.beta 5 3:= by norm_num [Math.B699.N8.beta]
    have hw:0 ≤ Math.B699.N21.moment (u33 5 3 delta (1 / 4375)):=
      u875 (u37 5 3 delta (1 / 4375) (by norm_num))
    have heq:(2 * Math.B699.N8.d44 5 3 delta 1 / Math.B699.N8.beta 5 3) *
        Math.B699.N21.moment (u33 5 3 delta (1 / 4375)) =
        2 * |u138 5 3 delta 1 (1 / 4375)| / Math.B699.N8.beta 5 3:= by
      rw [u141 5 3 delta (1 / 4375) (by decide) hd (by norm_num)]
      ring
    have hcap':(2 * Math.B699.N8.d44 5 3 delta 1 / Math.B699.N8.beta 5 3) *
        Math.B699.N21.moment (u33 5 3 delta (1 / 4375)) ≤ lam:= by
      rw [heq]
      exact (div_le_iff₀ hb).mpr (by simpa only [mul_comm lam (Math.B699.N8.beta 5 3)] using hcap)
    have hsource:= u18 5 3 delta m (1 / 4375) lam
      (by decide) hd hm (le_of_lt hlam) tree
    rw [u140 5 3 delta m (by decide) hd hm] at hsource
    exact le_trans hsource (u561 _ _ _ _ _ m hm (le_of_lt hb)
      (le_of_lt hlam) hw (le_of_lt (Math.B699.N8.d61 delta m hdelta hm)) hcap')
  have u563 (delta m:ℕ) (hdelta:delta = 0 ∨ delta = 1)
      (hm:1 ≤ m) (lam:ℚ) (hlam:0 < lam)
      (tree:Math.B699.N20.d1 lam (u34 5 3 delta (1 / 4375)) (u32 5 3 (1 / 4375)))
      (hcap:2 * |u139 5 3 delta 1 (1 / 4375)| ≤ Math.B699.N8.beta 5 3 * lam):
      |u139 5 3 delta m (1 / 4375)| ≤ (Math.B699.N8.beta 5 3 * lam) ^ m:= by
    have hd:delta ≤ 3:= by rcases hdelta with h | h <;> omega
    have hb:0 < Math.B699.N8.beta 5 3:= by norm_num [Math.B699.N8.beta]
    have hw:0 ≤ Math.B699.N21.moment (u34 5 3 delta (1 / 4375)):=
      u875 (u20 5 3 delta (1 / 4375) (by norm_num))
    have heq:(2 * Math.B699.N8.d44 5 3 delta 1 / Math.B699.N8.beta 5 3) *
        Math.B699.N21.moment (u34 5 3 delta (1 / 4375)) =
        2 * |u139 5 3 delta 1 (1 / 4375)| / Math.B699.N8.beta 5 3:= by
      rw [u142 5 3 delta (1 / 4375) (by decide) hd (by norm_num)]
      ring
    have hcap':(2 * Math.B699.N8.d44 5 3 delta 1 / Math.B699.N8.beta 5 3) *
        Math.B699.N21.moment (u34 5 3 delta (1 / 4375)) ≤ lam:= by
      rw [heq]
      exact (div_le_iff₀ hb).mpr (by simpa only [mul_comm lam (Math.B699.N8.beta 5 3)] using hcap)
    have hsource:= u19 5 3 delta m (1 / 4375) lam
      (by decide) hd hm (le_of_lt hlam) tree
    rw [u140 5 3 delta m (by decide) hd hm] at hsource
    exact le_trans hsource (u561 _ _ _ _ _ m hm (le_of_lt hb)
      (le_of_lt hlam) hw (le_of_lt (Math.B699.N8.d61 delta m hdelta hm)) hcap')
  have u564
      (qt:∀ row:Bool,Math.B699.N20.d1 u556 (u33 5 3 (u406 row) (1 / 4375))
        (u31 5 3 (1 / 4375)))
      (et:∀ row:Bool,Math.B699.N20.d1 u557 (u34 5 3 (u406 row) (1 / 4375))
        (u32 5 3 (1 / 4375)))
      (qc:∀ row:Bool,2 * |u138 5 3 (u406 row) 1 (1 / 4375)| ≤ u558)
      (ec:∀ row:Bool,2 * |u139 5 3 (u406 row) 1 (1 / 4375)| ≤ u559):
      (∀ m:ℕ,129 ≤ m → ∀ row:Bool,|u544 m row| ≤ u558 ^ m) ∧
        (∀ m:ℕ,129 ≤ m → ∀ row:Bool,|u545 m row| ≤ u559 ^ m):= by
    constructor
    · intro m hm row
      exact u562 (u406 row) m (u407 row) (by omega)
        u556 u560.1 (qt row) (qc row)
    · intro m hm row
      exact u563 (u406 row) m (u407 row) (by omega)
        u557 u560.2.1 (et row) (ec row)
  have u392 (p:ℤ) (e k:ℕ) (A:ℤ) (hke:k ≤ e):
      p ^ k * (p ^ (e - k) * A) = p ^ e * A:= by
    have hexp:k + (e - k) = e:= by omega
    rw [← mul_assoc,← pow_add,hexp]
  let u1005 (u v:ℕ) (x y:ℤ) (upper:Bool):ℤ:=
    if upper then u942 u v x y else u942 (u - 1) (v + 1) x y
  let u1006 (u v:ℕ) (x y:ℤ) (upper:Bool):ℤ:=
    if upper then u1010 u v u x y else u1010 (u - 1) (v + 1) (u - 1) x y
  have u868
      {P₀ Q₀ P₁ Q₁ u v:ℤ}
      (hdet:P₀ * Q₁ - P₁ * Q₀ ≠ 0) (hv:v ≠ 0):
      Q₀ * u - P₀ * v ≠ 0 ∨ Q₁ * u - P₁ * v ≠ 0:= by
    by_cases h₀:Q₀ * u - P₀ * v = 0
    · right
      intro h₁
      have hprod:(P₀ * Q₁ - P₁ * Q₀) * v = 0:= by
        calc
          (P₀ * Q₁ - P₁ * Q₀) * v =
              Q₀ * (Q₁ * u - P₁ * v) - Q₁ * (Q₀ * u - P₀ * v):= by ring
          _ = 0:= by rw [h₀,h₁]; ring
      exact (mul_ne_zero hdet hv) hprod
    · exact Or.inl h₀
  have u869
      {r s P Q u v D:ℤ}
      (hr:0 ≤ r) (hcross:Q * u - P * v ≠ 0)
      (hgap:|r * u - s * v| ≤ D):
      r ≤ |Q| * D + |r * P - s * Q| * |v|:= by
    calc
      r = r * 1:= by ring
      _ ≤ r * |Q * u - P * v|:=
        mul_le_mul_of_nonneg_left (Int.one_le_abs hcross) hr
      _ = |r * (Q * u - P * v)|:= by rw [abs_mul,abs_of_nonneg hr]
      _ = |Q * (r * u - s * v) - (r * P - s * Q) * v|:= by
        congr 1
        ring
      _ ≤ |Q * (r * u - s * v)| + |(r * P - s * Q) * v|:= by
        simpa only [sub_eq_add_neg,abs_neg] using
          (abs_add_le (Q * (r * u - s * v)) (-((r * P - s * Q) * v)))
      _ = |Q| * |r * u - s * v| + |r * P - s * Q| * |v|:= by
        rw [abs_mul,abs_mul]
      _ ≤ |Q| * D + |r * P - s * Q| * |v|:=
        add_le_add (mul_le_mul_of_nonneg_left hgap (abs_nonneg Q)) (le_refl _)
  have u870
      {ι:Type*} (P Q:ι → ℤ) (i₀ i₁:ι)
      {r s u v D:ℤ}
      (hr:0 ≤ r) (hv:v ≠ 0)
      (hdet:P i₀ * Q i₁ - P i₁ * Q i₀ ≠ 0)
      (hgap:|r * u - s * v| ≤ D):
      ∃ i,(i = i₀ ∨ i = i₁) ∧ Q i * u - P i * v ≠ 0 ∧
        r ≤ |Q i| * D + |r * P i - s * Q i| * |v|:= by
    rcases u868 (u:= u) hdet hv with h₀ | h₁
    · exact ⟨i₀,Or.inl rfl,h₀,u869 hr h₀ hgap⟩
    · exact ⟨i₁,Or.inr rfl,h₁,u869 hr h₁ hgap⟩
  have u871
      {ι:Type*} (P Q:ι → ℤ) (i₀ i₁:ι)
      {r s a b u v D:ℤ}
      (hr:0 ≤ r) (ha:a ≠ 0) (hb:0 < b) (hv:v ≠ 0)
      (hdet:P i₀ * Q i₁ - P i₁ * Q i₀ ≠ 0)
      (hgap:|r * u - s * v| ≤ D):
      ∃ i,(i = i₀ ∨ i = i₁) ∧ b * Q i * u - a * P i * v ≠ 0 ∧
        r ≤ b * D * |Q i| + |r * a * P i - s * b * Q i| * |v|:= by
    have hscaled:
        (a * P i₀) * (b * Q i₁) - (a * P i₁) * (b * Q i₀) ≠ 0:= by
      have hid:
          (a * P i₀) * (b * Q i₁) - (a * P i₁) * (b * Q i₀) =
            a * b * (P i₀ * Q i₁ - P i₁ * Q i₀):= by ring
      rw [hid]
      exact mul_ne_zero (mul_ne_zero ha (ne_of_gt hb)) hdet
    obtain ⟨i,hi,hcross,hbound⟩:=
      u870 (fun j => a * P j) (fun j => b * Q j)
        i₀ i₁ hr hv hscaled hgap
    refine ⟨i,hi,hcross,?_⟩
    simpa only [abs_mul,abs_of_pos hb,mul_assoc,mul_left_comm,mul_comm] using hbound
  let u1002 (u v:ℕ) (x y:ℤ):ℤ:=
    u942 u v x y * u1010 (u - 1) (v + 1) (u - 1) x y -
      u942 (u - 1) (v + 1) x y * u1010 u v u x y
  let u979 (u v:ℕ):ℕ:=
    (2 * u + v).choose (2 * u - 1) * (2 * u).choose u
  let u980 (u v:ℕ):ℤ:=
    (-1:ℤ) ^ (u + 1) * (u979 u v:ℤ)
  have u968 (u v:ℕ) (hu:1 ≤ u):u980 u v ≠ 0:= by
    have ha:(2 * u + v).choose (2 * u - 1) ≠ 0:= Nat.ne_of_gt (Nat.choose_pos (by omega))
    have hb:(2 * u).choose u ≠ 0:= Nat.ne_of_gt (Nat.choose_pos (by omega))
    have hm:u979 u v ≠ 0:= Nat.mul_ne_zero ha hb
    exact mul_ne_zero (pow_ne_zero _ (by norm_num)) (Nat.cast_ne_zero.mpr hm)
  let u985 (u v:ℕ) (x y:ℤ):ℤ:=
    u1008 u (Math.B699.N18.d99 u v u) x y *
        u1008 (u - 1) (Math.B699.N18.d118 (u - 1) (v + 1) (u - 1)) x y -
      u1008 (u - 1) (Math.B699.N18.d99 (u - 1) (v + 1) (u - 1)) x y *
        u1008 u (Math.B699.N18.d118 u v u) x y
  let u977 (u v:ℕ):ℤ[X]:=
    Math.B699.N18.d101 u v u * Math.B699.N18.d121 (u - 1) (v + 1) (u - 1) -
      Math.B699.N18.d101 (u - 1) (v + 1) (u - 1) * Math.B699.N18.d121 u v u
  let u954 (u:ℕ):ℤ:= (u:ℤ) * ((u:ℤ) - 1)
  let u956 (u v:ℕ):ℤ:= ((v:ℤ) + 2) * (2 * (u:ℤ) + (v:ℤ))
  have u965 (u:ℕ) (hu:2 ≤ u):u954 u ≠ 0:= by
    have hui:(2:ℤ) ≤ (u:ℤ):= by exact_mod_cast hu
    unfold u954
    exact mul_ne_zero (by omega) (by omega)
  have u923 (u v r:ℕ) (hr:r ≤ u):
      (Math.B699.N18.d121 u v u).coeff r = (-1:ℤ) ^ u * (Math.B699.N18.d119 u v u r:ℤ):= by
    rw [Math.B699.N18.d121,Math.B699.N18.d23,if_pos hr]
    rfl
  have u929 (n k:ℕ) (hn:1 ≤ n):
      (n - 1).choose k * n = n.choose k * (n - k):= by
    have h:= Nat.choose_mul_succ_eq (n - 1) k
    rwa [Nat.sub_add_cancel hn] at h
  have u931 (n k:ℕ) (hk:1 ≤ k) (hkn:k ≤ n):
      (n - 1).choose (k - 1) * n = n.choose k * k:= by
    have hn:1 ≤ n:= hk.trans hkn
    have h:= Nat.add_one_mul_choose_eq (n - 1) (k - 1)
    rw [Nat.sub_add_cancel hn,Nat.sub_add_cancel hk] at h
    calc
      (n - 1).choose (k - 1) * n = n * (n - 1).choose (k - 1):= by ring
      _ = n.choose k * k:= h
  have u934 (n k:ℕ)
      (hn:2 ≤ n) (hk:1 ≤ k) (hkn:k ≤ n):
      (n - 2).choose (k - 1) * n * (n - 1) = n.choose k * k * (n - k):= by
    have h0:= u931 n k hk hkn
    have h1:= u929 (n - 1) (k - 1) (by omega)
    have hnsub:n - 1 - 1 = n - 2:= by omega
    have hdiff:n - 1 - (k - 1) = n - k:= by omega
    rw [hnsub,hdiff] at h1
    calc
      (n - 2).choose (k - 1) * n * (n - 1) =
          n * ((n - 2).choose (k - 1) * (n - 1)):= by ring
      _ = n * ((n - 1).choose (k - 1) * (n - k)):= by rw [h1]
      _ = ((n - 1).choose (k - 1) * n) * (n - k):= by ring
      _ = n.choose k * k * (n - k):= by rw [h0]
  have u936 (u v r:ℕ):
      Math.B699.N18.d119 u v u r = (2 * u - r).choose u * (v + r).choose r:= by
    simp only [Math.B699.N18.d119,two_mul]
  have u924 (u v r:ℕ) (hu:2 ≤ u) (hr:r ≤ u):
      Math.B699.N18.d119 (u - 1) (v + 1) (u - 1) r * (2 * u - r) * (2 * u - r - 1) * (v + 1) =
        Math.B699.N18.d119 u v u r * u * (u - r) * (v + r + 1):= by
    by_cases heq:r = u
    · subst r
      have hz:(u - 1 + (u - 1) - u).choose (u - 1) = 0:=
        Nat.choose_eq_zero_of_lt (by omega)
      simp [Math.B699.N18.d119,hz]
    · have hcentral:= u934 (2 * u - r) u (by omega) (by omega) (by omega)
      have hdiff:2 * u - r - u = u - r:= by omega
      rw [hdiff] at hcentral
      have houter:= u929 (v + r + 1) r (by omega)
      have hone:v + r + 1 - 1 = v + r:= by omega
      have hv:v + r + 1 - r = v + 1:= by omega
      rw [hone,hv] at houter
      have houter':(v + 1 + r).choose r * (v + 1) = (v + r).choose r * (v + r + 1):= by
        have ht:v + 1 + r = v + r + 1:= by omega
        simpa only [ht] using houter.symm
      rw [u936,u936]
      have hprev:2 * (u - 1) - r = 2 * u - r - 2:= by omega
      rw [hprev]
      calc
        (2 * u - r - 2).choose (u - 1) * (v + 1 + r).choose r *
            (2 * u - r) * (2 * u - r - 1) * (v + 1) =
          ((2 * u - r - 2).choose (u - 1) * (2 * u - r) * (2 * u - r - 1)) *
            ((v + 1 + r).choose r * (v + 1)):= by ring
        _ = ((2 * u - r).choose u * u * (u - r)) *
            ((v + r).choose r * (v + r + 1)):= by rw [hcentral,houter']
        _ = (2 * u - r).choose u * (v + r).choose r * u * (u - r) * (v + r + 1):= by ring
  have u932 (n k:ℕ) (hk:1 ≤ k) (hkn:k ≤ n):
      n.choose (k - 1) * (n - k + 1) = n.choose k * k:= by
    have h:= Nat.choose_succ_right_eq n (k - 1)
    rw [Nat.sub_add_cancel hk] at h
    have hsub:n - (k - 1) = n - k + 1:= by omega
    rw [hsub] at h
    exact h.symm
  have u925 (u v r:ℕ) (hu:2 ≤ u) (hr:r ≤ u) (hr1:1 ≤ r):
      Math.B699.N18.d119 (u - 1) (v + 1) (u - 1) (r - 1) * (2 * u - r) * (v + 1) =
        Math.B699.N18.d119 u v u r * u * r:= by
    have hcentral:= u931 (2 * u - r) u (by omega) (by omega)
    have houter:= u932 (v + r) r hr1 (by omega)
    have hv:v + r - r + 1 = v + 1:= by omega
    rw [hv] at houter
    rw [u936,u936]
    have hprev:2 * (u - 1) - (r - 1) = 2 * u - r - 1:= by omega
    have hsum:v + 1 + (r - 1) = v + r:= by omega
    rw [hprev,hsum]
    calc
      (2 * u - r - 1).choose (u - 1) * (v + r).choose (r - 1) * (2 * u - r) * (v + 1) =
        ((2 * u - r - 1).choose (u - 1) * (2 * u - r)) *
          ((v + r).choose (r - 1) * (v + 1)):= by ring
      _ = ((2 * u - r).choose u * u) * ((v + r).choose r * r):= by rw [hcentral,houter]
      _ = (2 * u - r).choose u * (v + r).choose r * u * r:= by ring
  have u933 (n k:ℕ) (hk:2 ≤ k) (hkn:k ≤ n):
      (n - 2).choose (k - 2) * n * (n - 1) = n.choose k * k * (k - 1):= by
    have h0:= u931 n k (by omega) hkn
    have h1:= u931 (n - 1) (k - 1) (by omega) (by omega)
    have hnsub:n - 1 - 1 = n - 2:= by omega
    have hksub:k - 1 - 1 = k - 2:= by omega
    rw [hnsub,hksub] at h1
    calc
      (n - 2).choose (k - 2) * n * (n - 1) =
          n * ((n - 2).choose (k - 2) * (n - 1)):= by ring
      _ = n * ((n - 1).choose (k - 1) * (k - 1)):= by rw [h1]
      _ = ((n - 1).choose (k - 1) * n) * (k - 1):= by ring
      _ = n.choose k * k * (k - 1):= by rw [h0]
  have u935 (n k:ℕ) (hk:2 ≤ k) (hkn:k ≤ n):
      n.choose (k - 2) * (n - k + 1) * (n - k + 2) = n.choose k * k * (k - 1):= by
    have h0:= u932 n k (by omega) hkn
    have h1:= u932 n (k - 1) (by omega) (by omega)
    have hksub:k - 1 - 1 = k - 2:= by omega
    have hdiff:n - (k - 1) + 1 = n - k + 2:= by omega
    rw [hksub,hdiff] at h1
    calc
      n.choose (k - 2) * (n - k + 1) * (n - k + 2) =
          (n.choose (k - 2) * (n - k + 2)) * (n - k + 1):= by ring
      _ = (n.choose (k - 1) * (k - 1)) * (n - k + 1):= by rw [h1]
      _ = (n.choose (k - 1) * (n - k + 1)) * (k - 1):= by ring
      _ = n.choose k * k * (k - 1):= by rw [h0]
  have u926 (u v r:ℕ) (hu:2 ≤ u) (hr:r ≤ u) (hr2:2 ≤ r):
      Math.B699.N18.d119 (u - 2) (v + 2) (u - 2) (r - 2) *
          (2 * u - r) * (2 * u - r - 1) * (v + 1) * (v + 2) =
        Math.B699.N18.d119 u v u r * u * (u - 1) * r * (r - 1):= by
    have hcentral:= u933 (2 * u - r) u hu (by omega)
    have houter:= u935 (v + r) r hr2 (by omega)
    have hv1:v + r - r + 1 = v + 1:= by omega
    have hv2:v + r - r + 2 = v + 2:= by omega
    rw [hv1,hv2] at houter
    rw [u936,u936]
    have hprev:2 * (u - 2) - (r - 2) = 2 * u - r - 2:= by omega
    have hsum:v + 2 + (r - 2) = v + r:= by omega
    rw [hprev,hsum]
    calc
      (2 * u - r - 2).choose (u - 2) * (v + r).choose (r - 2) *
          (2 * u - r) * (2 * u - r - 1) * (v + 1) * (v + 2) =
        ((2 * u - r - 2).choose (u - 2) * (2 * u - r) * (2 * u - r - 1)) *
          ((v + r).choose (r - 2) * (v + 1) * (v + 2)):= by ring
      _ = ((2 * u - r).choose u * u * (u - 1)) *
          ((v + r).choose r * r * (r - 1)):= by rw [hcentral,houter]
      _ = (2 * u - r).choose u * (v + r).choose r * u * (u - 1) * r * (r - 1):= by ring
  let u955 (u:ℕ):ℤ:= ((u:ℤ) - 1) * (2 * (u:ℤ) - 1)
  let u957 (u v r:ℕ):ℤ:= Math.B699.N18.d119 u v u r
  let u958 (u v r:ℕ):ℤ:= Math.B699.N18.d119 (u - 1) (v + 1) (u - 1) r
  let u959 (u v r:ℕ):ℤ:=
    if 1 ≤ r then (Math.B699.N18.d119 (u - 1) (v + 1) (u - 1) (r - 1):ℤ) else 0
  let u960 (u v r:ℕ):ℤ:=
    if 2 ≤ r then (Math.B699.N18.d119 (u - 2) (v + 2) (u - 2) (r - 2):ℤ) else 0
  have u966 (U V R cur a b c:ℤ)
      (hU:2 ≤ U) (hV:0 ≤ V) (hR:R ≤ U)
      (ha:a * (2 * U - R) * (2 * U - R - 1) * (V + 1) =
        cur * U * (U - R) * (V + R + 1))
      (hb:b * (2 * U - R) * (V + 1) = cur * U * R)
      (hc:c * (2 * U - R) * (2 * U - R - 1) * (V + 1) * (V + 2) =
        cur * U * (U - 1) * R * (R - 1)):
      U * (U - 1) * cur + ((U - 1) * (2 * U - 1)) * b =
        2 * ((U - 1) * (2 * U - 1)) * a + ((V + 2) * (2 * U + V)) * c:= by
    let L:ℤ:= 2 * U - R
    let D:ℤ:= L * (L - 1) * (V + 1) * (V + 2)
    have hL:0 < L:= by dsimp [L]; omega
    have hL1:0 < L - 1:= by dsimp [L]; omega
    have hV1:0 < V + 1:= by omega
    have hV2:0 < V + 2:= by omega
    have hD:D ≠ 0:= ne_of_gt (mul_pos (mul_pos (mul_pos hL hL1) hV1) hV2)
    have hda:D * a = cur * U * (U - R) * (V + R + 1) * (V + 2):= by
      calc
        D * a = (a * (2 * U - R) * (2 * U - R - 1) * (V + 1)) * (V + 2):= by dsimp [D,L]; ring
        _ = cur * U * (U - R) * (V + R + 1) * (V + 2):= by rw [ha]
    have hdb:D * b = cur * U * R * (L - 1) * (V + 2):= by
      calc
        D * b = (b * (2 * U - R) * (V + 1)) * (L - 1) * (V + 2):= by dsimp [D,L]; ring
        _ = cur * U * R * (L - 1) * (V + 2):= by rw [hb]
    have hdc:D * c = cur * U * (U - 1) * R * (R - 1):= by
      calc
        D * c = c * (2 * U - R) * (2 * U - R - 1) * (V + 1) * (V + 2):= by dsimp [D,L]; ring
        _ = cur * U * (U - 1) * R * (R - 1):= hc
    apply mul_left_cancel₀ hD
    calc
      D * (U * (U - 1) * cur + ((U - 1) * (2 * U - 1)) * b) =
        D * U * (U - 1) * cur + ((U - 1) * (2 * U - 1)) * (D * b):= by ring
      _ = D * U * (U - 1) * cur +
        ((U - 1) * (2 * U - 1)) * (cur * U * R * (L - 1) * (V + 2)):= by rw [hdb]
      _ = 2 * ((U - 1) * (2 * U - 1)) * (cur * U * (U - R) * (V + R + 1) * (V + 2)) +
        ((V + 2) * (2 * U + V)) * (cur * U * (U - 1) * R * (R - 1)):= by dsimp [D,L]; ring
      _ = 2 * ((U - 1) * (2 * U - 1)) * (D * a) + ((V + 2) * (2 * U + V)) * (D * c):= by
        rw [hda,hdc]
      _ = D * (2 * ((U - 1) * (2 * U - 1)) * a + ((V + 2) * (2 * U + V)) * c):= by ring
  have u952 (u v r:ℕ) (hu:2 ≤ u) (hr:r ≤ u):
      u954 u * u957 u v r + u955 u * u959 u v r =
        2 * u955 u * u958 u v r + u956 u v * u960 u v r:= by
    have hL:r ≤ 2 * u:= by omega
    have hL1:1 ≤ 2 * u - r:= by omega
    have hU1:1 ≤ u:= by omega
    unfold u954 u955 u956
    apply u966 (u:ℤ) (v:ℤ) (r:ℤ)
    · exact_mod_cast hu
    · exact_mod_cast Nat.zero_le v
    · exact_mod_cast hr
    · have hc:= congrArg (fun n:ℕ => (n:ℤ)) (u924 u v r hu hr)
      simpa only [u957,u958,Nat.cast_mul,Nat.cast_add,Nat.cast_sub hL,
        Nat.cast_sub hL1,Nat.cast_sub hr,Nat.cast_one,Nat.cast_ofNat] using hc
    · by_cases hr1:1 ≤ r
      · have hc:= congrArg (fun n:ℕ => (n:ℤ)) (u925 u v r hu hr hr1)
        simpa only [u957,u959,if_pos hr1,Nat.cast_mul,Nat.cast_add,
          Nat.cast_sub hL,Nat.cast_one,Nat.cast_ofNat] using hc
      · have hz:r = 0:= by omega
        subst r
        simp [u957,u959]
    · by_cases hr2:2 ≤ r
      · have hr1:1 ≤ r:= by omega
        have hc:= congrArg (fun n:ℕ => (n:ℤ)) (u926 u v r hu hr hr2)
        simpa only [u957,u960,if_pos hr2,Nat.cast_mul,Nat.cast_add,
          Nat.cast_sub hL,Nat.cast_sub hL1,Nat.cast_sub hU1,Nat.cast_sub hr1,
          Nat.cast_one,Nat.cast_ofNat] using hc
      · have hz:r = 0 ∨ r = 1:= by omega
        rcases hz with hz | hz <;> subst r <;> simp [u957,u960]
  have u991 (F:ℤ[X]) (r:ℕ):
      ((C (2:ℤ) - X) * F).coeff r =
        2 * F.coeff r - (if 1 ≤ r then F.coeff (r - 1) else 0):= by
    rw [sub_mul,Polynomial.coeff_sub,Polynomial.coeff_C_mul]
    have hx:(X * F).coeff r = if 1 ≤ r then F.coeff (r - 1) else 0:= by
      simpa only [pow_one] using Polynomial.coeff_X_pow_mul' F 1 r
    rw [hx]
  have u995 (u v r:ℕ) (hr:u < r):
      (Math.B699.N18.d121 u v u).coeff r = 0:= by
    simp only [Math.B699.N18.d121,Math.B699.N18.d23,if_neg (not_le.mpr hr)]
  have u994 (u r:ℕ) (hu:1 ≤ u):
      (-1:ℤ) ^ (u - 1 + r) = -((-1:ℤ) ^ (u + r)):= by
    have he:u + r = (u - 1 + r) + 1:= by omega
    rw [he,pow_succ]
    ring
  have u997 (u v r:ℕ) (hu:2 ≤ u) (hr:r ≤ u):
      (Math.B699.N18.d121 (u - 1) (v + 1) (u - 1)).coeff r =
        -((-1:ℤ) ^ u) * u958 u v r:= by
    by_cases hm:r ≤ u - 1
    · have hs:(-1:ℤ) ^ (u - 1) = -((-1:ℤ) ^ u):= by
        simpa only [Nat.add_zero] using u994 u 0 (by omega)
      simpa only [u958,hs] using
        (u923 (u - 1) (v + 1) r hm)
    · have he:r = u:= by omega
      subst r
      have hz:Math.B699.N18.d119 (u - 1) (v + 1) (u - 1) u = 0:= by
        have hc:(u - 1 + (u - 1) - u).choose (u - 1) = 0:=
          Nat.choose_eq_zero_of_lt (by omega)
        simp [Math.B699.N18.d119,hc]
      rw [u995 _ _ _ (by omega)]
      simp [u958,hz]
  have u999 (u v r:ℕ) (hu:2 ≤ u) (hr:r ≤ u):
      (if 1 ≤ r then (Math.B699.N18.d121 (u - 1) (v + 1) (u - 1)).coeff (r - 1) else 0) =
        -((-1:ℤ) ^ u) * u959 u v r:= by
    by_cases hs:1 ≤ r
    · simp only [u959,if_pos hs]
      rw [u923 _ _ _ (by omega)]
      have hp:(-1:ℤ) ^ (u - 1) = -((-1:ℤ) ^ u):= by
        simpa only [Nat.add_zero] using u994 u 0 (by omega)
      rw [hp]
    · simp [u959,hs]
  have u1001 (u v r:ℕ) (hu:2 ≤ u) (hr:r ≤ u):
      (if 2 ≤ r then (Math.B699.N18.d121 (u - 2) (v + 2) (u - 2)).coeff (r - 2) else 0) =
        (-1:ℤ) ^ u * u960 u v r:= by
    by_cases hs:2 ≤ r
    · simp only [u960,if_pos hs]
      rw [u923 _ _ _ (by omega)]
      have hp:(-1:ℤ) ^ (u - 2) = (-1:ℤ) ^ u:= by
        rw [neg_one_pow_eq_pow_mod_two (u - 2),neg_one_pow_eq_pow_mod_two u]
        congr 1
        omega
      rw [hp]
    · simp [u960,hs]
  have u992 (u v:ℕ) (hu:2 ≤ u):
      C (u954 u) * Math.B699.N18.d121 u v u =
        -(C (u955 u) * ((C (2:ℤ) - X) * Math.B699.N18.d121 (u - 1) (v + 1) (u - 1))) +
          C (u956 u v) * (X ^ 2 * Math.B699.N18.d121 (u - 2) (v + 2) (u - 2)):= by
    apply Polynomial.ext
    intro r
    simp only [Polynomial.coeff_C_mul,Polynomial.coeff_add,Polynomial.coeff_neg,
      u991,Polynomial.coeff_X_pow_mul']
    by_cases hr:r ≤ u
    · rw [u923 u v r hr,
        u997 u v r hu hr,u999 u v r hu hr,u1001 u v r hu hr]
      have hm:= u952 u v r hu hr
      dsimp [u957] at hm
      linear_combination ((-1:ℤ) ^ u) * hm
    · have hr1:1 ≤ r:= by omega
      have hr2:2 ≤ r:= by omega
      rw [u995 u v r (by omega),u995 (u - 1) (v + 1) r (by omega),
        if_pos hr1,u995 (u - 1) (v + 1) (r - 1) (by omega),
        if_pos hr2,u995 (u - 2) (v + 2) (r - 2) (by omega)]
      ring
  let u937 (u v r:ℕ):ℕ:=
    (2 * u + v + 1).choose r * (2 * u - r).choose u
  have u938 (u v r:ℕ):
      Math.B699.N18.d99 u v u r = (-1:ℤ) ^ (u + r) * (u937 u v r:ℤ):= by
    have htop:u + v + u + 1 = 2 * u + v + 1:= by omega
    have hdouble:u + u = 2 * u:= by omega
    simp only [Math.B699.N18.d99,u937,htop,hdouble,Nat.cast_mul]
    ring
  have u922 (u v r:ℕ) (hr:r ≤ u):
      (Math.B699.N18.d101 u v u).coeff r = (-1:ℤ) ^ (u + r) * (u937 u v r:ℤ):= by
    rw [Math.B699.N18.d101,Math.B699.N18.d23,if_pos hr]
    exact u938 u v r
  have u927 (u v r:ℕ) (hu:2 ≤ u) (hr:r ≤ u):
      u937 (u - 1) (v + 1) r *
          (2 * u + v + 1) * (2 * u - r) * (2 * u - r - 1) =
        u937 u v r * u * (u - r) * (2 * u + v + 1 - r):= by
    by_cases heq:r = u
    · subst r
      have hz:(2 * (u - 1) - u).choose (u - 1) = 0:=
        Nat.choose_eq_zero_of_lt (by omega)
      simp [u937,hz]
    · have hcentral:= u934 (2 * u - r) u (by omega) (by omega) (by omega)
      have hdiff:2 * u - r - u = u - r:= by omega
      rw [hdiff] at hcentral
      have houter:= u929 (2 * u + v + 1) r (by omega)
      unfold u937
      have hN:2 * (u - 1) + (v + 1) + 1 = 2 * u + v + 1 - 1:= by omega
      have hL:2 * (u - 1) - r = 2 * u - r - 2:= by omega
      rw [hN,hL]
      calc
        (2 * u + v + 1 - 1).choose r * (2 * u - r - 2).choose (u - 1) *
            (2 * u + v + 1) * (2 * u - r) * (2 * u - r - 1) =
          ((2 * u + v + 1 - 1).choose r * (2 * u + v + 1)) *
            ((2 * u - r - 2).choose (u - 1) * (2 * u - r) * (2 * u - r - 1)):= by ring
        _ = ((2 * u + v + 1).choose r * (2 * u + v + 1 - r)) *
            ((2 * u - r).choose u * u * (u - r)):= by rw [houter,hcentral]
        _ = (2 * u + v + 1).choose r * (2 * u - r).choose u *
            u * (u - r) * (2 * u + v + 1 - r):= by ring
  have u928 (u v r:ℕ) (hu:2 ≤ u) (hr:r ≤ u) (hr1:1 ≤ r):
      u937 (u - 1) (v + 1) (r - 1) * (2 * u + v + 1) * (2 * u - r) =
        u937 u v r * u * r:= by
    have hcentral:= u931 (2 * u - r) u (by omega) (by omega)
    have houter:= u931 (2 * u + v + 1) r hr1 (by omega)
    unfold u937
    have hN:2 * (u - 1) + (v + 1) + 1 = 2 * u + v + 1 - 1:= by omega
    have hL:2 * (u - 1) - (r - 1) = 2 * u - r - 1:= by omega
    rw [hN,hL]
    calc
      (2 * u + v + 1 - 1).choose (r - 1) * (2 * u - r - 1).choose (u - 1) *
          (2 * u + v + 1) * (2 * u - r) =
        ((2 * u + v + 1 - 1).choose (r - 1) * (2 * u + v + 1)) *
          ((2 * u - r - 1).choose (u - 1) * (2 * u - r)):= by ring
      _ = ((2 * u + v + 1).choose r * r) * ((2 * u - r).choose u * u):= by rw [houter,hcentral]
      _ = (2 * u + v + 1).choose r * (2 * u - r).choose u * u * r:= by ring
  have u930 (u v r:ℕ) (hu:2 ≤ u) (hr:r ≤ u) (hr2:2 ≤ r):
      u937 (u - 2) (v + 2) (r - 2) *
          (2 * u + v + 1) * (2 * u + v + 1 - 1) * (2 * u - r) * (2 * u - r - 1) =
        u937 u v r * u * (u - 1) * r * (r - 1):= by
    have hcentral:= u933 (2 * u - r) u hu (by omega)
    have houter:= u933 (2 * u + v + 1) r hr2 (by omega)
    unfold u937
    have hN:2 * (u - 2) + (v + 2) + 1 = 2 * u + v + 1 - 2:= by omega
    have hL:2 * (u - 2) - (r - 2) = 2 * u - r - 2:= by omega
    rw [hN,hL]
    calc
      (2 * u + v + 1 - 2).choose (r - 2) * (2 * u - r - 2).choose (u - 2) *
          (2 * u + v + 1) * (2 * u + v + 1 - 1) * (2 * u - r) * (2 * u - r - 1) =
        ((2 * u + v + 1 - 2).choose (r - 2) * (2 * u + v + 1) * (2 * u + v + 1 - 1)) *
          ((2 * u - r - 2).choose (u - 2) * (2 * u - r) * (2 * u - r - 1)):= by ring
      _ = ((2 * u + v + 1).choose r * r * (r - 1)) *
          ((2 * u - r).choose u * u * (u - 1)):= by rw [houter,hcentral]
      _ = (2 * u + v + 1).choose r * (2 * u - r).choose u * u * (u - 1) * r * (r - 1):= by ring
  let u961 (u v r:ℕ):ℤ:= u937 u v r
  let u962 (u v r:ℕ):ℤ:= u937 (u - 1) (v + 1) r
  let u963 (u v r:ℕ):ℤ:=
    if 1 ≤ r then (u937 (u - 1) (v + 1) (r - 1):ℤ) else 0
  let u964 (u v r:ℕ):ℤ:=
    if 2 ≤ r then (u937 (u - 2) (v + 2) (r - 2):ℤ) else 0
  have u967 (U V R cur a b c:ℤ)
      (hU:2 ≤ U) (hV:0 ≤ V) (hR:R ≤ U)
      (ha:a * (2 * U + V + 1) * (2 * U - R) * (2 * U - R - 1) =
        cur * U * (U - R) * (2 * U + V + 1 - R))
      (hb:b * (2 * U + V + 1) * (2 * U - R) = cur * U * R)
      (hc:c * (2 * U + V + 1) * (2 * U + V) * (2 * U - R) * (2 * U - R - 1) =
        cur * U * (U - 1) * R * (R - 1)):
      U * (U - 1) * cur = 2 * ((U - 1) * (2 * U - 1)) * a +
        ((U - 1) * (2 * U - 1)) * b + ((V + 2) * (2 * U + V)) * c:= by
    let N:ℤ:= 2 * U + V + 1
    let L:ℤ:= 2 * U - R
    let D:ℤ:= N * (N - 1) * L * (L - 1)
    have hN:0 < N:= by dsimp [N]; omega
    have hN1:0 < N - 1:= by dsimp [N]; omega
    have hL:0 < L:= by dsimp [L]; omega
    have hL1:0 < L - 1:= by dsimp [L]; omega
    have hD:D ≠ 0:= ne_of_gt (mul_pos (mul_pos (mul_pos hN hN1) hL) hL1)
    have hda:D * a = cur * U * (U - R) * (N - R) * (N - 1):= by
      calc
        D * a = (a * (2 * U + V + 1) * (2 * U - R) * (2 * U - R - 1)) * (N - 1):= by dsimp [D,N,L]; ring
        _ = cur * U * (U - R) * (N - R) * (N - 1):= by rw [ha]
    have hdb:D * b = cur * U * R * (N - 1) * (L - 1):= by
      calc
        D * b = (b * (2 * U + V + 1) * (2 * U - R)) * (N - 1) * (L - 1):= by dsimp [D,N,L]; ring
        _ = cur * U * R * (N - 1) * (L - 1):= by rw [hb]
    have hdc:D * c = cur * U * (U - 1) * R * (R - 1):= by
      calc
        D * c = c * (2 * U + V + 1) * (2 * U + V) * (2 * U - R) * (2 * U - R - 1):= by dsimp [D,N,L]; ring
        _ = cur * U * (U - 1) * R * (R - 1):= hc
    apply mul_left_cancel₀ hD
    calc
      D * (U * (U - 1) * cur) =
        2 * ((U - 1) * (2 * U - 1)) * (cur * U * (U - R) * (N - R) * (N - 1)) +
          ((U - 1) * (2 * U - 1)) * (cur * U * R * (N - 1) * (L - 1)) +
            ((V + 2) * (2 * U + V)) * (cur * U * (U - 1) * R * (R - 1)):= by dsimp [D,N,L]; ring
      _ = 2 * ((U - 1) * (2 * U - 1)) * (D * a) +
          ((U - 1) * (2 * U - 1)) * (D * b) + ((V + 2) * (2 * U + V)) * (D * c):= by
        rw [hda,hdb,hdc]
      _ = D * (2 * ((U - 1) * (2 * U - 1)) * a +
          ((U - 1) * (2 * U - 1)) * b + ((V + 2) * (2 * U + V)) * c):= by ring
  have u953 (u v r:ℕ) (hu:2 ≤ u) (hr:r ≤ u):
      u954 u * u961 u v r = 2 * u955 u * u962 u v r +
        u955 u * u963 u v r + u956 u v * u964 u v r:= by
    have hL:r ≤ 2 * u:= by omega
    have hL1:1 ≤ 2 * u - r:= by omega
    have hU1:1 ≤ u:= by omega
    have hN:1 ≤ 2 * u + v + 1:= by omega
    have hNr:r ≤ 2 * u + v + 1:= by omega
    unfold u954 u955 u956
    apply u967 (u:ℤ) (v:ℤ) (r:ℤ)
    · exact_mod_cast hu
    · exact_mod_cast Nat.zero_le v
    · exact_mod_cast hr
    · have hc:= congrArg (fun n:ℕ => (n:ℤ)) (u927 u v r hu hr)
      simpa only [u961,u962,Nat.cast_mul,Nat.cast_add,
        Nat.cast_sub hL,Nat.cast_sub hL1,Nat.cast_sub hr,Nat.cast_sub hNr,
        Nat.cast_one,Nat.cast_ofNat] using hc
    · by_cases hr1:1 ≤ r
      · have hc:= congrArg (fun n:ℕ => (n:ℤ)) (u928 u v r hu hr hr1)
        simpa only [u961,u963,if_pos hr1,Nat.cast_mul,Nat.cast_add,
          Nat.cast_sub hL,Nat.cast_one,Nat.cast_ofNat] using hc
      · have hz:r = 0:= by omega
        subst r
        simp [u961,u963]
    · by_cases hr2:2 ≤ r
      · have hr1:1 ≤ r:= by omega
        have hc:= congrArg (fun n:ℕ => (n:ℤ)) (u930 u v r hu hr hr2)
        simpa only [u961,u964,if_pos hr2,Nat.cast_mul,Nat.cast_add,
          Nat.cast_sub hN,Nat.cast_sub hL,Nat.cast_sub hL1,Nat.cast_sub hU1,
          Nat.cast_sub hr1,Nat.cast_one,Nat.cast_ofNat,add_sub_cancel_right] using hc
      · have hz:r = 0 ∨ r = 1:= by omega
        rcases hz with hz | hz <;> subst r <;> simp [u961,u964]
  have u990 (u v r:ℕ) (hu:2 ≤ u) (hr:r ≤ u):
      (if 2 ≤ r then (Math.B699.N18.d101 (u - 2) (v + 2) (u - 2)).coeff (r - 2) else 0) =
        (-1:ℤ) ^ (u + r) * u964 u v r:= by
    by_cases hs:2 ≤ r
    · simp only [u964,if_pos hs]
      rw [u922 _ _ _ (by omega)]
      have hp:(-1:ℤ) ^ (u - 2 + (r - 2)) = (-1:ℤ) ^ (u + r):= by
        rw [neg_one_pow_eq_pow_mod_two (u - 2 + (r - 2)),
          neg_one_pow_eq_pow_mod_two (u + r)]
        congr 1
        omega
      rw [hp]
    · simp [u964,hs]
  have u996 (u v r:ℕ) (hr:u < r):
      (Math.B699.N18.d101 u v u).coeff r = 0:= by
    simp only [Math.B699.N18.d101,Math.B699.N18.d23,if_neg (not_le.mpr hr)]
  have u998 (u v r:ℕ) (hu:2 ≤ u) (hr:r ≤ u):
      (Math.B699.N18.d101 (u - 1) (v + 1) (u - 1)).coeff r =
        -((-1:ℤ) ^ (u + r)) * u962 u v r:= by
    by_cases hm:r ≤ u - 1
    · simpa only [u962,u994 u r (by omega)] using
        (u922 (u - 1) (v + 1) r hm)
    · have he:r = u:= by omega
      subst r
      have hz:u937 (u - 1) (v + 1) u = 0:= by
        have hc:(2 * (u - 1) - u).choose (u - 1) = 0:= Nat.choose_eq_zero_of_lt (by omega)
        simp [u937,hc]
      rw [u996 _ _ _ (by omega)]
      simp [u962,hz]
  have u1000 (u v r:ℕ) (hu:2 ≤ u) (hr:r ≤ u):
      (if 1 ≤ r then (Math.B699.N18.d101 (u - 1) (v + 1) (u - 1)).coeff (r - 1) else 0) =
        (-1:ℤ) ^ (u + r) * u963 u v r:= by
    by_cases hs:1 ≤ r
    · simp only [u963,if_pos hs]
      rw [u922 _ _ _ (by omega)]
      have hp:(-1:ℤ) ^ (u - 1 + (r - 1)) = (-1:ℤ) ^ (u + r):= by
        rw [neg_one_pow_eq_pow_mod_two (u - 1 + (r - 1)),
          neg_one_pow_eq_pow_mod_two (u + r)]
        congr 1
        omega
      rw [hp]
    · simp [u963,hs]
  have u993 (u v:ℕ) (hu:2 ≤ u):
      C (u954 u) * Math.B699.N18.d101 u v u =
        -(C (u955 u) * ((C (2:ℤ) - X) * Math.B699.N18.d101 (u - 1) (v + 1) (u - 1))) +
          C (u956 u v) * (X ^ 2 * Math.B699.N18.d101 (u - 2) (v + 2) (u - 2)):= by
    apply Polynomial.ext
    intro r
    simp only [Polynomial.coeff_C_mul,Polynomial.coeff_add,Polynomial.coeff_neg,
      u991,Polynomial.coeff_X_pow_mul']
    by_cases hr:r ≤ u
    · rw [u922 u v r hr,
        u998 u v r hu hr,u1000 u v r hu hr,u990 u v r hu hr]
      have hm:= u953 u v r hu hr
      dsimp [u961] at hm
      linear_combination ((-1:ℤ) ^ (u + r)) * hm
    · have hr1:1 ≤ r:= by omega
      have hr2:2 ≤ r:= by omega
      rw [u996 u v r (by omega),u996 (u - 1) (v + 1) r (by omega),
        if_pos hr1,u996 (u - 1) (v + 1) (r - 1) (by omega),
        if_pos hr2,u996 (u - 2) (v + 2) (r - 2) (by omega)]
      ring
  have u969 (u v:ℕ) (hu:2 ≤ u):
      C (u954 u) * u977 u v =
        -(C (u956 u v) * (X ^ 2 * u977 (u - 1) (v + 1))):= by
    have hp:= u993 u v hu
    have hq:= u992 u v hu
    have hs:u - 1 - 1 = u - 2:= by omega
    have hv:v + 1 + 1 = v + 2:= by omega
    unfold u977
    rw [hs,hv]
    linear_combination
      (Math.B699.N18.d121 (u - 1) (v + 1) (u - 1)) * hp -
        (Math.B699.N18.d101 (u - 1) (v + 1) (u - 1)) * hq
  have u970 (v:ℕ):Math.B699.N18.d101 0 v 0 = 1:= by
    simp [Math.B699.N18.d101,Math.B699.N18.d22,Math.B699.N18.d99]
  have u971 (v:ℕ):Math.B699.N18.d121 0 v 0 = 1:= by
    simp [Math.B699.N18.d121,Math.B699.N18.d22,Math.B699.N18.d118,Math.B699.N18.d119]
  have u972 (v:ℕ):
      Math.B699.N18.d101 1 v 1 = C (-2:ℤ) + C ((v:ℤ) + 3) * X:= by
    norm_num [Math.B699.N18.d101,Math.B699.N18.d22,Finset.sum_range_succ,Math.B699.N18.d99,
      Nat.choose_one_right,← Polynomial.C_mul_X_pow_eq_monomial,map_add,map_mul,map_neg]
    <;> ring
  have u973 (v:ℕ):
      Math.B699.N18.d121 1 v 1 = C (-2:ℤ) - C ((v:ℤ) + 1) * X:= by
    norm_num [Math.B699.N18.d121,Math.B699.N18.d22,Finset.sum_range_succ,Math.B699.N18.d118,Math.B699.N18.d119,
      Nat.choose_one_right,← Polynomial.C_mul_X_pow_eq_monomial,map_add,map_mul,map_neg]
    <;> ring
  have u974 (v:ℕ):u980 1 v = 2 * ((v:ℤ) + 2):= by
    norm_num [u980,u979,Nat.choose_one_right]
    <;> ring
  have u975 (v:ℕ):
      u977 1 v = C (u980 1 v) * X ^ (2 * 1 - 1):= by
    simp only [u977,Nat.sub_self,u972,u973,
      u970,u971,u974]
    norm_num [map_add,map_mul]
    <;> ring
  have u981 (n k:ℕ) (hk:1 ≤ k) (hkn:k ≤ n):
      (n - 1).choose (k - 1) * n = n.choose k * k:= by
    have hn:1 ≤ n:= hk.trans hkn
    have h:= Nat.add_one_mul_choose_eq (n - 1) (k - 1)
    rw [Nat.sub_add_cancel hn,Nat.sub_add_cancel hk] at h
    calc
      (n - 1).choose (k - 1) * n = n * (n - 1).choose (k - 1):= by ring
      _ = n.choose k * k:= h
  have u982 (n k:ℕ) (hk:1 ≤ k) (hkn:k ≤ n):
      n.choose (k - 1) * (n - k + 1) = n.choose k * k:= by
    have h:= Nat.choose_succ_right_eq n (k - 1)
    rw [Nat.sub_add_cancel hk] at h
    have hd:n - (k - 1) = n - k + 1:= by omega
    rw [hd] at h
    exact h.symm
  have u983 (u v:ℕ) (hu:2 ≤ u):
      u * (u - 1) * u979 u v =
        (v + 2) * (2 * u + v) * u979 (u - 1) (v + 1):= by
    have ha0:= u981 (2 * u + v) (2 * u - 1) (by omega) (by omega)
    have ha1:= u982 (2 * u + v - 1) (2 * u - 1 - 1) (by omega) (by omega)
    have hkm1:2 * u - 1 - 1 = 2 * u - 2:= by omega
    have hkm2:2 * u - 1 - 1 - 1 = 2 * u - 3:= by omega
    have hfactor:2 * u + v - 1 - (2 * u - 1 - 1) + 1 = v + 2:= by omega
    rw [hkm1] at ha0
    rw [hkm2,hfactor,hkm1] at ha1
    have ha:(2 * u + v - 1).choose (2 * u - 3) * (2 * u + v) * (v + 2) =
        (2 * u + v).choose (2 * u - 1) * (2 * u - 1) * (2 * u - 2):= by
      calc
        (2 * u + v - 1).choose (2 * u - 3) * (2 * u + v) * (v + 2) =
          ((2 * u + v - 1).choose (2 * u - 3) * (v + 2)) * (2 * u + v):= by ring
        _ = ((2 * u + v - 1).choose (2 * u - 2) * (2 * u - 2)) * (2 * u + v):= by rw [ha1]
        _ = ((2 * u + v - 1).choose (2 * u - 2) * (2 * u + v)) * (2 * u - 2):= by ring
        _ = (2 * u + v).choose (2 * u - 1) * (2 * u - 1) * (2 * u - 2):= by rw [ha0]
    have hb0:= u981 (2 * u - 1) u (by omega) (by omega)
    have hnn:2 * u - 1 - 1 = 2 * u - 2:= by omega
    rw [hnn] at hb0
    have hb1:= Nat.choose_mul_succ_eq (2 * u - 1) u
    have hns:2 * u - 1 + 1 = 2 * u:= by omega
    have hdiff:2 * u - u = u:= by omega
    rw [hns,hdiff] at hb1
    have hb:(2 * u - 2).choose (u - 1) * 2 * (2 * u - 1) = (2 * u).choose u * u:= by
      calc
        (2 * u - 2).choose (u - 1) * 2 * (2 * u - 1) =
          ((2 * u - 2).choose (u - 1) * (2 * u - 1)) * 2:= by ring
        _ = ((2 * u - 1).choose u * u) * 2:= by rw [hb0]
        _ = (2 * u - 1).choose u * (2 * u):= by ring
        _ = (2 * u).choose u * u:= hb1
    have htop:2 * (u - 1) + (v + 1) = 2 * u + v - 1:= by omega
    have hbottom:2 * (u - 1) - 1 = 2 * u - 3:= by omega
    have hcentral:2 * (u - 1) = 2 * u - 2:= by omega
    unfold u979
    rw [htop,hbottom,hcentral]
    symm
    calc
      (v + 2) * (2 * u + v) *
          ((2 * u + v - 1).choose (2 * u - 3) * (2 * u - 2).choose (u - 1)) =
        ((2 * u + v - 1).choose (2 * u - 3) * (2 * u + v) * (v + 2)) *
          (2 * u - 2).choose (u - 1):= by ring
      _ = ((2 * u + v).choose (2 * u - 1) * (2 * u - 1) * (2 * u - 2)) *
          (2 * u - 2).choose (u - 1):= by rw [ha]
      _ = (2 * u + v).choose (2 * u - 1) * (u - 1) *
          ((2 * u - 2).choose (u - 1) * 2 * (2 * u - 1)):= by rw [← hcentral]; ring
      _ = (2 * u + v).choose (2 * u - 1) * (u - 1) * ((2 * u).choose u * u):= by rw [hb]
      _ = u * (u - 1) * ((2 * u + v).choose (2 * u - 1) * (2 * u).choose u):= by ring
  have u984 (u v:ℕ) (hu:2 ≤ u):
      u954 u * u980 u v =
        -(u956 u v) * u980 (u - 1) (v + 1):= by
    have hu1:1 ≤ u:= by omega
    have hc:= congrArg (fun n:ℕ => (n:ℤ)) (u983 u v hu)
    simp only [Nat.cast_mul,Nat.cast_add,Nat.cast_sub hu1,Nat.cast_one,Nat.cast_ofNat] at hc
    unfold u954 u956 u980
    rw [Nat.sub_add_cancel hu1,pow_succ]
    linear_combination -((-1:ℤ) ^ u) * hc
  have u976 (t v:ℕ):
      u977 (t + 1) v = C (u980 (t + 1) v) * X ^ (2 * (t + 1) - 1):= by
    induction t generalizing v with
    | zero => simpa using u975 v
    | succ t ih =>
      let u:ℕ:= t + 2
      change u977 u v = C (u980 u v) * X ^ (2 * u - 1)
      have hu:2 ≤ u:= by dsimp [u]; omega
      have hs:u - 1 = t + 1:= by dsimp [u]
      have hprev:u977 (u - 1) (v + 1) =
          C (u980 (u - 1) (v + 1)) * X ^ (2 * (u - 1) - 1):= by
        simpa only [hs] using ih (v + 1)
      have hrec:= u969 u v hu
      rw [hprev] at hrec
      have hscale:(C (u954 u):ℤ[X]) ≠ 0:= Polynomial.C_ne_zero.mpr (u965 u hu)
      have hmatch:C (u954 u) * (C (u980 u v) * X ^ (2 * u - 1)) =
          -(C (u956 u v) * (X ^ 2 *
            (C (u980 (u - 1) (v + 1)) * X ^ (2 * (u - 1) - 1)))):= by
        calc
          C (u954 u) * (C (u980 u v) * X ^ (2 * u - 1)) =
            C (u954 u * u980 u v) * X ^ (2 * u - 1):= by simp only [map_mul]; ring
          _ = C (-(u956 u v) * u980 (u - 1) (v + 1)) * X ^ (2 * u - 1):= by
            rw [u984 u v hu]
          _ = -(C (u956 u v) * (X ^ 2 *
              (C (u980 (u - 1) (v + 1)) * X ^ (2 * (u - 1) - 1)))):= by
            have he:2 * u - 1 = 2 + (2 * (u - 1) - 1):= by omega
            rw [he,pow_add]
            simp only [map_mul,map_neg]
            ring
      apply mul_left_cancel₀ hscale
      exact hrec.trans hmatch.symm
  have u978 (u v:ℕ) (hu:1 ≤ u):
      u977 u v = C (u980 u v) * X ^ (2 * u - 1):= by
    simpa only [Nat.sub_add_cancel hu] using u976 (u - 1) v
  have u1009 (n:ℕ) (a:ℕ → ℤ) (x y:ℤ) (hy:y ≠ 0):
      (u1008 n a x y:ℝ) =
        (y:ℝ) ^ n * (Math.B699.N18.d22 n a).eval₂ (Int.castRingHom ℝ)
          ((x:ℝ) / (y:ℝ)):= by
    classical
    have hyr:(y:ℝ) ≠ 0:= Int.cast_ne_zero.mpr hy
    simp only [u1008,Math.B699.N18.d22,Int.cast_sum,Int.cast_mul,
      Int.cast_pow,Polynomial.eval₂_finsetSum,Polynomial.eval₂_monomial,
      Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro r hr
    have hle:r ≤ n:= Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
    have hpow:(y:ℝ) ^ n = (y:ℝ) ^ (n - r) * (y:ℝ) ^ r:= by
      rw [← pow_add,Nat.sub_add_cancel hle]
    change (a r:ℝ) * (x:ℝ) ^ r * (y:ℝ) ^ (n - r) =
      (y:ℝ) ^ n * ((a r:ℝ) * ((x:ℝ) / (y:ℝ)) ^ r)
    rw [hpow,div_pow]
    field_simp
    <;> ring
  have u986 (u v:ℕ) (x y:ℤ) (hy:y ≠ 0):
      (u1008 u (Math.B699.N18.d99 u v u) x y:ℝ) =
        (y:ℝ) ^ u * (Math.B699.N18.d101 u v u).eval₂ (Int.castRingHom ℝ) ((x:ℝ) / (y:ℝ)):= by
    simpa only [Math.B699.N18.d101] using u1009 u (Math.B699.N18.d99 u v u) x y hy
  have u987 (u v:ℕ) (x y:ℤ) (hy:y ≠ 0):
      (u1008 u (Math.B699.N18.d118 u v u) x y:ℝ) =
        (y:ℝ) ^ u * (Math.B699.N18.d121 u v u).eval₂ (Int.castRingHom ℝ) ((x:ℝ) / (y:ℝ)):= by
    simpa only [Math.B699.N18.d121] using u1009 u (Math.B699.N18.d118 u v u) x y hy
  have u988 (u v:ℕ) (hu:1 ≤ u)
      (x y:ℤ) (hy:y ≠ 0):
      u985 u v x y = u980 u v * x ^ (2 * u - 1):= by
    let z:ℝ:= (x:ℝ) / (y:ℝ)
    have hyr:(y:ℝ) ≠ 0:= Int.cast_ne_zero.mpr hy
    have hp:= congrArg (fun P:ℤ[X] => P.eval₂ (Int.castRingHom ℝ) z)
      (u978 u v hu)
    have heval:
        (Math.B699.N18.d101 u v u).eval₂ (Int.castRingHom ℝ) z *
            (Math.B699.N18.d121 (u - 1) (v + 1) (u - 1)).eval₂ (Int.castRingHom ℝ) z -
          (Math.B699.N18.d101 (u - 1) (v + 1) (u - 1)).eval₂ (Int.castRingHom ℝ) z *
            (Math.B699.N18.d121 u v u).eval₂ (Int.castRingHom ℝ) z =
          (u980 u v:ℝ) * z ^ (2 * u - 1):= by
      simpa only [u977,Polynomial.eval₂_sub,Polynomial.eval₂_mul,
        Polynomial.eval₂_C,Polynomial.eval₂_X_pow,Int.coe_castRingHom] using hp
    have hreal:(u985 u v x y:ℝ) =
        (u980 u v:ℝ) * (x:ℝ) ^ (2 * u - 1):= by
      calc
        (u985 u v x y:ℝ) =
          (y:ℝ) ^ u * (y:ℝ) ^ (u - 1) *
            ((Math.B699.N18.d101 u v u).eval₂ (Int.castRingHom ℝ) z *
                (Math.B699.N18.d121 (u - 1) (v + 1) (u - 1)).eval₂ (Int.castRingHom ℝ) z -
              (Math.B699.N18.d101 (u - 1) (v + 1) (u - 1)).eval₂ (Int.castRingHom ℝ) z *
                (Math.B699.N18.d121 u v u).eval₂ (Int.castRingHom ℝ) z):= by
          simp only [u985,Int.cast_sub,Int.cast_mul]
          rw [u986 u v x y hy,u987 (u - 1) (v + 1) x y hy,
            u986 (u - 1) (v + 1) x y hy,u987 u v x y hy]
          dsimp [z]
          ring
        _ = (y:ℝ) ^ (2 * u - 1) * ((u980 u v:ℝ) * z ^ (2 * u - 1)):= by
          rw [← pow_add,show u + (u - 1) = 2 * u - 1 by omega,heval]
        _ = (u980 u v:ℝ) * (x:ℝ) ^ (2 * u - 1):= by
          dsimp [z]
          rw [div_pow]
          have hyp:(y:ℝ) ^ (2 * u - 1) ≠ 0:= pow_ne_zero _ hyr
          field_simp
          <;> ring
    exact_mod_cast hreal
  have u989 (u v:ℕ) (hu:1 ≤ u)
      {x y:ℤ} (hx:x ≠ 0) (hy:y ≠ 0):u985 u v x y ≠ 0:= by
    rw [u988 u v hu x y hy]
    exact mul_ne_zero (u968 u v hu) (pow_ne_zero _ hx)
  have u1003 (u v:ℕ) (x y:ℤ):
      (Math.B699.N18.qContent u v u:ℤ) * (Math.B699.N18.qContent (u - 1) (v + 1) (u - 1):ℤ) *
        u1002 u v x y = u985 u v x y:= by
    unfold u1002 u985
    calc
      (Math.B699.N18.qContent u v u:ℤ) * (Math.B699.N18.qContent (u - 1) (v + 1) (u - 1):ℤ) *
          (u942 u v x y * u1010 (u - 1) (v + 1) (u - 1) x y -
            u942 (u - 1) (v + 1) x y * u1010 u v u x y) =
        ((Math.B699.N18.qContent u v u:ℤ) * u942 u v x y) *
            ((Math.B699.N18.qContent (u - 1) (v + 1) (u - 1):ℤ) * u1010 (u - 1) (v + 1) (u - 1) x y) -
          ((Math.B699.N18.qContent (u - 1) (v + 1) (u - 1):ℤ) * u942 (u - 1) (v + 1) x y) *
            ((Math.B699.N18.qContent u v u:ℤ) * u1010 u v u x y):= by ring
      _ = u1008 u (Math.B699.N18.d99 u v u) x y *
            u1008 (u - 1) (Math.B699.N18.d118 (u - 1) (v + 1) (u - 1)) x y -
          u1008 (u - 1) (Math.B699.N18.d99 (u - 1) (v + 1) (u - 1)) x y *
            u1008 u (Math.B699.N18.d118 u v u) x y:= by
        rw [u944,u1012,
          u944,u1012]
  have u1004 (u v:ℕ) (hu:1 ≤ u) {x y:ℤ}
      (hx:x ≠ 0) (hy:y ≠ 0):u1002 u v x y ≠ 0:= by
    have hraw:= u989 u v hu hx hy
    intro hz
    have hs:= u1003 u v x y
    rw [hz,mul_zero] at hs
    exact hraw hs.symm
  have u1007 (u v:ℕ) (hu:1 ≤ u) (x y:ℤ)
      {r s a b U V D:ℤ}
      (hx:x ≠ 0) (hy:y ≠ 0)
      (hr:0 ≤ r) (ha:a ≠ 0) (hb:0 < b) (hV:V ≠ 0)
      (hgap:|r * U - s * V| ≤ D):
      ∃ row:Bool,
        b * u1006 u v x y row * U - a * u1005 u v x y row * V ≠ 0 ∧
        r ≤ b * D * |u1006 u v x y row| +
          |r * a * u1005 u v x y row - s * b * u1006 u v x y row| * |V|:= by
    have hn:= u1004 u v hu hx hy
    have hd:u1005 u v x y true * u1006 u v x y false -
        u1005 u v x y false * u1006 u v x y true ≠ 0:= by
      simpa [u1005,u1006,u1002] using hn
    obtain ⟨row,_,hc,hbnd⟩:=
      u871
        (u1005 u v x y) (u1006 u v x y) true false hr ha hb hV hd hgap
    exact ⟨row,hc,hbnd⟩
  have u393 (m e f A C:ℕ)
      (hm:1 ≤ m) (he:20 * m ≤ e) (hf:35 * m ≤ f) (hC:1 ≤ C)
      (hgap:|(5:ℤ) ^ e * (A:ℤ) - (3:ℤ) ^ f * (C:ℤ)| ≤ 24):
      ∃ row:Bool,
        (2:ℤ) ^ (5 * m) * u1006 (3 * m) (2 * m - 1) 1 4375 row *
            ((5:ℤ) ^ (e - 20 * m) * (A:ℤ)) -
          (7:ℤ) ^ (5 * m) * u1005 (3 * m) (2 * m - 1) 1 4375 row *
            ((3:ℤ) ^ (f - 35 * m) * (C:ℤ)) ≠ 0 ∧
        (625:ℤ) ^ (5 * m) ≤
          (2:ℤ) ^ (5 * m) * 24 * |u1006 (3 * m) (2 * m - 1) 1 4375 row| +
          |(4375:ℤ) ^ (5 * m) * u1005 (3 * m) (2 * m - 1) 1 4375 row -
            (4374:ℤ) ^ (5 * m) * u1006 (3 * m) (2 * m - 1) 1 4375 row| *
            |(3:ℤ) ^ (f - 35 * m) * (C:ℤ)|:= by
    have hp:(625:ℤ) ^ (5 * m) = (5:ℤ) ^ (20 * m):= by
      calc
        _ = ((5:ℤ) ^ 4) ^ (5 * m):= by norm_num
        _ = (5:ℤ) ^ (20 * m):= by rw [← pow_mul]; congr 1 <;> ring
    have hq:(2187:ℤ) ^ (5 * m) = (3:ℤ) ^ (35 * m):= by
      calc
        _ = ((3:ℤ) ^ 7) ^ (5 * m):= by norm_num
        _ = (3:ℤ) ^ (35 * m):= by rw [← pow_mul]; congr 1 <;> ring
    have hgap':|(625:ℤ) ^ (5 * m) * ((5:ℤ) ^ (e - 20 * m) * (A:ℤ)) -
        (2187:ℤ) ^ (5 * m) * ((3:ℤ) ^ (f - 35 * m) * (C:ℤ))| ≤ 24:= by
      rw [hp,hq,u392 5 e (20 * m) A he,
        u392 3 f (35 * m) C hf]
      exact hgap
    have hV:(3:ℤ) ^ (f - 35 * m) * (C:ℤ) ≠ 0:= by
      apply mul_ne_zero (pow_ne_zero _ (by decide:(3:ℤ) ≠ 0))
      exact_mod_cast (by omega:C ≠ 0)
    obtain ⟨row,hnonzero,hlower⟩:= u1007
      (3 * m) (2 * m - 1) (by omega) 1 4375
      (r:= (625:ℤ) ^ (5 * m)) (s:= (2187:ℤ) ^ (5 * m))
      (a:= (7:ℤ) ^ (5 * m)) (b:= (2:ℤ) ^ (5 * m))
      (U:= (5:ℤ) ^ (e - 20 * m) * (A:ℤ))
      (V:= (3:ℤ) ^ (f - 35 * m) * (C:ℤ)) (D:= 24)
      (by decide) (by decide) (pow_nonneg (by decide) _)
      (pow_ne_zero _ (by decide)) (pow_pos (by decide) _) hV hgap'
    have hra:(625:ℤ) ^ (5 * m) * (7:ℤ) ^ (5 * m) =
        (4375:ℤ) ^ (5 * m):= by rw [← mul_pow]; norm_num
    have hsb:(2187:ℤ) ^ (5 * m) * (2:ℤ) ^ (5 * m) =
        (4374:ℤ) ^ (5 * m):= by rw [← mul_pow]; norm_num
    exact ⟨row,hnonzero,by simpa only [hra,hsb] using hlower⟩
  have u398 (p e k A:ℕ) (hke:k ≤ e):
      p ^ k * (p ^ (e - k) * A) = p ^ e * A:= by
    have hexp:k + (e - k) = e:= by omega
    rw [← Nat.mul_assoc,← Nat.pow_add,hexp]
  have u402:1 < u399:= by decide
  let u403 (Y:ℕ):ℕ:= Math.B699.N7.d65 u399 Y u402
  have u404 (Y:ℕ) (hY:u400 ≤ Y)
      (hprevious:u399 ^ (u401 - 1) ≤ 4 * u400):
      129 ≤ u403 Y:= by
    have h:= Math.B699.N7.d67 u399 u400 Y u401
      u402 hY (by decide) hprevious
    change u401 ≤ u403 Y at h
    dsimp only [u401] at h
    omega
  have u396 (p e A Y k T weight:ℕ)
      (hp:0 < p) (hweight:weight ≤ T)
      (hwindow:Y ≤ p ^ e * A) (hsmall:A ^ T < Y ^ weight)
      (hcapacity:(p ^ k) ^ T ≤ Y ^ (T - weight)):k < e:= by
    apply Nat.lt_of_not_ge
    intro he
    have hupper:(p ^ e) ^ T ≤ Y ^ (T - weight):=
      Nat.le_trans (Nat.pow_le_pow_left (Nat.pow_le_pow_right hp he) T) hcapacity
    have hsmallPower:(p ^ e * A) ^ T < Y ^ T:= by
      calc
        _ = (p ^ e) ^ T * A ^ T:= Nat.mul_pow _ _ _
        _ < (p ^ e) ^ T * Y ^ weight:=
          Nat.mul_lt_mul_of_pos_left hsmall (Nat.pow_pos (Nat.pow_pos hp))
        _ ≤ Y ^ (T - weight) * Y ^ weight:= Nat.mul_le_mul_right _ hupper
        _ = Y ^ T:= by
          rw [← Nat.pow_add]
          congr 1
          omega
    exact Nat.not_lt_of_ge (Nat.pow_le_pow_left hwindow T) hsmallPower
  have u397
      (p k T weight Z M Y0 Y e A:ℕ) (hp:0 < p) (hweight:weight ≤ T)
      (hZ:1 < Z) (hY0:0 < Y0) (hY:Y0 ≤ Y) (hM:0 < M)
      (hprevious:Z ^ (M - 1) ≤ 4 * Y0)
      (hrate:p ^ (k * T) ≤ Z ^ (T - weight))
      (hbase:(p ^ (k * T)) ^ M ≤ Y0 ^ (T - weight))
      (hlookahead:4 ^ (T - weight) * (p ^ (k * T)) ^ (M + 1) ≤
        Z ^ ((T - weight) * M))
      (hwindow:Y ≤ p ^ e * A) (hsmall:A ^ T < Y ^ weight):
      k * Math.B699.N7.d65 Z Y hZ < e:= by
    have hcap:= Math.B699.N7.d66 Z (p ^ (k * T)) (T - weight) M Y0 Y
      hZ hY0 hY hM hprevious hrate hbase hlookahead
    have heq:(p ^ (k * Math.B699.N7.d65 Z Y hZ)) ^ T =
        (p ^ (k * T)) ^ Math.B699.N7.d65 Z Y hZ:= by
      simp only [← Nat.pow_mul]
      congr 1
      ring
    exact u396 p e A Y (k * Math.B699.N7.d65 Z Y hZ) T weight
      hp hweight hwindow hsmall (by rw [heq]; exact hcap)
  have u405 (Y e f A C:ℕ)
      (hY:u400 ≤ Y)
      (hprevious:u399 ^ (u401 - 1) ≤ 4 * u400)
      (hrateP:5 ^ 20000 ≤ u399 ^ 646)
      (hbaseP:(5 ^ 20000) ^ u401 ≤ u400 ^ 646)
      (hlookP:4 ^ 646 * (5 ^ 20000) ^ (u401 + 1) ≤
        u399 ^ (646 * u401))
      (hrateQ:3 ^ 35000 ≤ u399 ^ 772)
      (hbaseQ:(3 ^ 35000) ^ u401 ≤ u400 ^ 772)
      (hlookQ:4 ^ 772 * (3 ^ 35000) ^ (u401 + 1) ≤
        u399 ^ (772 * u401))
      (hwindowP:Y ≤ 5 ^ e * A) (hwindowQ:Y ≤ 3 ^ f * C)
      (hsmallP:A ^ 1000 < Y ^ 354) (hsmallQ:C ^ 1000 < Y ^ 228):
      20 * u403 Y < e ∧ 35 * u403 Y < f:= by
    have hY0:0 < u400:= Nat.pow_pos (by decide:0 < (2:ℕ))
    have hM:0 < u401:= by decide
    constructor
    · have hP:= u397 5 20 1000 354 u399 u401
        u400 Y e A (by decide) (by decide) u402 hY0 hY hM
      simp only [show 20 * 1000 = 20000 by decide,
        show 1000 - 354 = 646 by decide] at hP
      exact hP hprevious hrateP hbaseP hlookP hwindowP hsmallP
    · have hQ:= u397 3 35 1000 228 u399 u401
        u400 Y f C (by decide) (by decide) u402 hY0 hY hM
      simp only [show 35 * 1000 = 35000 by decide,
        show 1000 - 228 = 772 by decide] at hQ
      exact hQ hprevious hrateQ hbaseQ hlookQ hwindowQ hsmallQ
  let u547 (m:ℕ) (row:Bool):ℤ:= u1006 (3 * m) (2 * m - 1) 1 4375 row
  let u548 (m:ℕ) (row:Bool):ℤ:=
    (4375:ℤ) ^ (5 * m) * u1005 (3 * m) (2 * m - 1) 1 4375 row -
      (4374:ℤ) ^ (5 * m) * u547 m row
  let u572:ℚ:= ((625:ℚ) * 2187) ^ 5 * u543
  let u573 (BE:ℚ):ℚ:= (4375:ℚ) ^ 2 * BE
  let u574 (BE:ℚ):ℚ:= u572 / u573 BE
  have u568 (a b r:ℚ)
      (ha:2 * a < r) (hb:2 * b < r):a + b < r:= by linarith
  have u549:0 < u543:= by norm_num [u543]
  let u546 (m:ℕ) (row:Bool):ℚ:=
    (Math.B699.N18.qContent (3 * m - u406 row) (2 * m + u406 row - 1)
      (3 * m - u406 row):ℚ)
  let u204 (m:ℕ):ℚ:= Math.B699.N23.d135 (3 * m) (2 * m - 1)
  let u205 (m:ℕ):ℚ:= Math.B699.N23.d135 (3 * m - 1) (2 * m)
  let u206:ℚ:= 1273397 / 1000000
  let u208:ℚ:= u206 ^ 3
  have u215:0 < u208:= by norm_num [u208,u206]
  let u207:ℚ:= 1318089 / 1000000
  let u209:ℚ:= u207 ^ 3
  let u211:ℚ:= u209 / u208
  have u217:1 ≤ u211:= by
    norm_num [u211,u209,u208,u207,u206]
  have u218:(2:ℚ) ≤ 1 + 10 * (u211 - 1):= by
    norm_num [u211,u209,u208,u207,u206]
  let u239 (m:ℕ):ℚ:= u204 m / u208 ^ m
  have u221:u204 1 = 1:= by
    norm_num [u204,Math.B699.N23.d135,Math.B699.N23.d42,Math.B699.N23.d41,Nat.factorial]
  have u246:u239 1 = 1 / u208:= by
    simp only [u239,u221,pow_one]
  have u1016 (u v:ℕ):0 < Math.B699.N23.d42 u v:= by
    exact Nat.mul_pos (Nat.factorial_pos _) (Nat.factorial_pos _)
  have u1017 (u v:ℕ):0 < Math.B699.N23.d41 u v:= by
    exact Nat.mul_pos (Nat.factorial_pos _) (Nat.factorial_pos _)
  have u1020 (u v:ℕ):0 < Math.B699.N23.d135 u v:= by
    apply div_pos
    · exact_mod_cast u1016 u v
    · exact_mod_cast u1017 u v
  have u212 (m:ℕ):0 < u204 m:=
    u1020 _ _
  let u210:ℚ:= 64 / 27
  have u216:u208 ≤ u210:= by
    norm_num [u208,u206,u210]
  have u219 (m:ℕ) (hm:1 ≤ m):
      u204 m =
        (((4 * m - 1).factorial:ℕ):ℚ) * (((m - 1).factorial:ℕ):ℚ) /
          ((((3 * m).factorial:ℕ):ℚ) * (((2 * m - 1).factorial:ℕ):ℚ)):= by
    have hf:(2 * m - 1) / 2 = m - 1:= by omega
    have hn:3 * m + (m - 1) = 4 * m - 1:= by omega
    simp only [u204,Math.B699.N23.d135,Math.B699.N23.d42,Math.B699.N23.d41,
      hf,hn,Nat.cast_mul]
  have u223 (k:ℕ):
      u204 (k + 2) = u204 (k + 1) * Math.B699.N10.d125 ((k:ℚ) + 1):= by
    rw [u219 (k + 2) (by omega),u219 (k + 1) (by omega)]
    have hn:4 * (k + 2) - 1 = (4 * (k + 1) - 1) + 4:= by omega
    have hf:k + 2 - 1 = (k + 1 - 1) + 1:= by omega
    have hu:3 * (k + 2) = 3 * (k + 1) + 3:= by omega
    have hv:2 * (k + 2) - 1 = (2 * (k + 1) - 1) + 2:= by omega
    have hn1:(4 * (k + 1) - 1) + 1 = 4 * (k + 1):= by omega
    have hf1:(k + 1 - 1) + 1 = k + 1:= by omega
    have hv1:(2 * (k + 1) - 1) + 1 = 2 * (k + 1):= by omega
    rw [hn,hf,hu,hv,Math.B699.N8.d46 (4 * (k + 1) - 1) 4,
      Math.B699.N8.d46 (k + 1 - 1) 1,Math.B699.N8.d46 (3 * (k + 1)) 3,
      Math.B699.N8.d46 (2 * (k + 1) - 1) 2,hn1,hf1,hv1]
    simp only [Nat.ascFactorial_succ,Nat.ascFactorial_zero,
      Nat.cast_mul,Nat.cast_add,Nat.cast_one,Nat.cast_ofNat]
    unfold Math.B699.N10.d125 Math.B699.N10.d94 Math.B699.N10.d26
    field_simp
    <;> ring
  have u202 (m:ℕ) (hm:1 ≤ m):
      u204 (m + 1) = u204 m * Math.B699.N10.d125 (m:ℚ):= by
    obtain ⟨k,rfl⟩:∃ k,m = k + 1:= Nat.exists_eq_add_of_le' hm
    simpa only [Nat.cast_add,Nat.cast_one] using u223 k
  have u214 (x:ℚ) (hx:0 < x):0 < Math.B699.N10.d26 x:= by
    unfold Math.B699.N10.d26
    positivity
  have u232 (x:ℚ) (hx:0 ≤ x):
      64 * Math.B699.N10.d26 (x + 1) * (x + 2) ^ 2 ≤
        27 * Math.B699.N10.d94 (x + 1) * (x + 3) ^ 2:= by
    apply sub_nonneg.mp
    calc
      0 ≤ 24 * (825 + x * (5326 + x * (12310 + x * (13836 + x * (8177 + x * (2438 + x * 288)))))):= by positivity
      _ = 27 * Math.B699.N10.d94 (x + 1) * (x + 3) ^ 2 -
          64 * Math.B699.N10.d26 (x + 1) * (x + 2) ^ 2:= by
        unfold Math.B699.N10.d94 Math.B699.N10.d26
        ring
  have u229 (m:ℚ) (hm:1 ≤ m):
      u210 * ((m + 1) / (m + 2)) ^ 2 ≤ Math.B699.N10.d125 m:= by
    have hmpos:0 < m:= lt_of_lt_of_le (by norm_num) hm
    have hden:0 < Math.B699.N10.d26 m:= u214 m hmpos
    have hmp:m + 2 ≠ 0:= ne_of_gt (by positivity:0 < m + 2)
    have hcert:= u232 (m - 1) (sub_nonneg.mpr hm)
    have hs1:m - 1 + 1 = m:= by ring
    have hs2:m - 1 + 2 = m + 1:= by ring
    have hs3:m - 1 + 3 = m + 2:= by ring
    simp only [hs1,hs2,hs3] at hcert
    apply sub_nonneg.mp
    have hid:Math.B699.N10.d125 m - u210 * ((m + 1) / (m + 2)) ^ 2 =
        (27 * Math.B699.N10.d94 m * (m + 2) ^ 2 - 64 * Math.B699.N10.d26 m * (m + 1) ^ 2) /
          (27 * Math.B699.N10.d26 m * (m + 2) ^ 2):= by
      unfold Math.B699.N10.d125 u210
      field_simp [ne_of_gt hden,hmp]
      <;> ring
    rw [hid]
    exact div_nonneg (sub_nonneg.mpr hcert) (by positivity)
  have u230 (m:ℕ) (hm:1 ≤ m):
      u204 m * (u210 * (((m:ℚ) + 1) / ((m:ℚ) + 2)) ^ 2) ≤
        u204 (m + 1):= by
    rw [u202 m hm]
    exact mul_le_mul_of_nonneg_left (u229 (m:ℚ) (by exact_mod_cast hm))
      (u212 m).le
  have u248 (m:ℕ) (hm:1 ≤ m):
      u239 m * (1 * (((m:ℚ) + 1) / ((m:ℚ) + 2)) ^ 2) ≤
        u239 (m + 1):= by
    have hcoef:= mul_le_mul_of_nonneg_right u216
      (sq_nonneg ((((m:ℚ) + 1) / ((m:ℚ) + 2))))
    have hstep:u204 m *
        (u208 * (((m:ℚ) + 1) / ((m:ℚ) + 2)) ^ 2) ≤ u204 (m + 1):=
      (mul_le_mul_of_nonneg_left hcoef (u212 m).le).trans
        (u230 m hm)
    have ht:u208 ≠ 0:= ne_of_gt u215
    have hp:u208 ^ m ≠ 0:= pow_ne_zero _ ht
    have hd:(m:ℚ) + 2 ≠ 0:= by positivity
    calc
      _ = (u204 m *
          (u208 * (((m:ℚ) + 1) / ((m:ℚ) + 2)) ^ 2)) / u208 ^ (m + 1):= by
        unfold u239
        rw [pow_succ]
        field_simp [ht,hp,hd]
        <;> ring
      _ ≤ u204 (m + 1) / u208 ^ (m + 1):=
        div_le_div_of_nonneg_right hstep (pow_pos u215 (m + 1)).le
      _ = u239 (m + 1):= rfl
  have u234:1 ≤ u239 29 * (2:ℚ) ^ 9:= by
    have h:= u38 (F:= u239) (R:= 1) (k0:= 1)
      (by norm_num) (fun k hk => u248 k hk) 28
    have hsmall:u239 1 * 4 / 900 ≤ u239 29:= by
      convert h using 1 <;> norm_num
    have hc:(1:ℚ) ≤ (u239 1 * 4 / 900) * (2:ℚ) ^ 9:= by
      rw [u246]
      norm_num [u208,u206]
    exact hc.trans (mul_le_mul_of_nonneg_right hsmall (by norm_num))
  have u244 (m:ℕ):0 < u239 m:=
    div_pos (u212 m) (pow_pos u215 m)
  have u231 (x:ℚ) (hx:0 ≤ x):
      2289993275428338969 * Math.B699.N10.d26 (x + 29) ≤
        1000000000000000000 * Math.B699.N10.d94 (x + 29):= by
    apply sub_nonneg.mp
    calc
      0 ≤ 2 * (1535690967499923506020080 + x * (3444096040212671766946486 + x * (451094264364845154769405 + x * (22726360010714951687520 + x * (512203561213280111915 + x * 4340363126869695674))))):= by positivity
      _ = 1000000000000000000 * Math.B699.N10.d94 (x + 29) -
          2289993275428338969 * Math.B699.N10.d26 (x + 29):= by
        unfold Math.B699.N10.d94 Math.B699.N10.d26
        ring
  have u233 (m:ℚ) (hm:29 ≤ m):
      u209 ≤ Math.B699.N10.d125 m:= by
    have hden:0 < Math.B699.N10.d26 m:= u214 m (by linarith)
    have hcert:= u231 (m - 29) (sub_nonneg.mpr hm)
    have hs:m - 29 + 29 = m:= by ring
    simp only [hs] at hcert
    have hmid:u209 = (2289993275428338969:ℚ) / 1000000000000000000:= by
      norm_num [u209,u207]
    rw [hmid,Math.B699.N10.d125]
    apply (div_le_div_iff₀ (by norm_num) hden).2
    nlinarith only [hcert]
  have u225 (m:ℕ) (hm:29 ≤ m):
      u204 m * u209 ≤ u204 (m + 1):= by
    rw [u202 m (by omega)]
    exact mul_le_mul_of_nonneg_left (u233 (m:ℚ) (by exact_mod_cast hm))
      (u212 m).le
  have u249 (m:ℕ) (hm:29 ≤ m):
      u239 m * u211 ≤ u239 (m + 1):= by
    have ht:u208 ≠ 0:= ne_of_gt u215
    have hp:u208 ^ m ≠ 0:= pow_ne_zero _ ht
    calc
      _ = (u204 m * u209) / u208 ^ (m + 1):= by
        unfold u239 u211
        rw [pow_succ]
        field_simp [ht,hp]
        <;> ring
      _ ≤ u204 (m + 1) / u208 ^ (m + 1):=
        div_le_div_of_nonneg_right (u225 m hm)
          (pow_pos u215 (m + 1)).le
      _ = u239 (m + 1):= rfl
  have u236 (m:ℕ) (hm:129 ≤ m):1 < u239 m:= by
    have hn:10 * (9 + 1) ≤ m - 29:= by omega
    have h:= u42 (F:= u239) (R:= u211)
      (K:= 29) (T:= 9) (B:= 10) (n:= m - 29)
      u217 (u244 29).le
      (fun k hk => u249 k hk)
      u234 u218 hn
    have hindex:29 + (m - 29) = m:= by omega
    simpa only [hindex] using h
  have u238 (m:ℕ) (hm:129 ≤ m):
      u206 ^ (3 * m) < u204 m:= by
    have h:= u236 m hm
    change 1 < u204 m / u208 ^ m at h
    have hmul:= (lt_div_iff₀ (pow_pos u215 m)).mp h
    simpa only [one_mul,u208,pow_mul] using hmul
  let u241 (m:ℕ):ℚ:= u205 m / u208 ^ m
  have u222:u205 1 = 3 / 2:= by
    norm_num [u205,Math.B699.N23.d135,Math.B699.N23.d42,Math.B699.N23.d41,Nat.factorial]
  have u247:u241 1 = (3 / 2:ℚ) / u208:= by
    simp only [u241,u222,pow_one]
  have u235:1 ≤ u241 1 * (2:ℚ) ^ 1:= by
    rw [u247]
    norm_num [u208,u206]
  have u213 (m:ℕ):0 < u205 m:=
    u1020 _ _
  have u245 (m:ℕ):0 < u241 m:=
    div_pos (u213 m) (pow_pos u215 m)
  have u220 (m:ℕ) (hm:1 ≤ m):
      u205 m =
        (((4 * m - 1).factorial:ℕ):ℚ) * ((m.factorial:ℕ):ℚ) /
          ((((3 * m - 1).factorial:ℕ):ℚ) * (((2 * m).factorial:ℕ):ℚ)):= by
    have hf:(2 * m) / 2 = m:= by omega
    have hn:3 * m - 1 + m = 4 * m - 1:= by omega
    simp only [u205,Math.B699.N23.d135,Math.B699.N23.d42,Math.B699.N23.d41,
      hf,hn,Nat.cast_mul]
  have u224 (k:ℕ):
      u205 (k + 2) = u205 (k + 1) * Math.B699.N10.ratioOne ((k:ℚ) + 1):= by
    rw [u220 (k + 2) (by omega),u220 (k + 1) (by omega)]
    have hn:4 * (k + 2) - 1 = (4 * (k + 1) - 1) + 4:= by omega
    have hf:k + 2 = (k + 1) + 1:= by omega
    have hu:3 * (k + 2) - 1 = (3 * (k + 1) - 1) + 3:= by omega
    have hv:2 * (k + 2) = 2 * (k + 1) + 2:= by omega
    have hn1:(4 * (k + 1) - 1) + 1 = 4 * (k + 1):= by omega
    have hu1:(3 * (k + 1) - 1) + 1 = 3 * (k + 1):= by omega
    rw [hn,hf,hu,hv,Math.B699.N8.d46 (4 * (k + 1) - 1) 4,
      Math.B699.N8.d46 (k + 1) 1,Math.B699.N8.d46 (3 * (k + 1) - 1) 3,
      Math.B699.N8.d46 (2 * (k + 1)) 2,hn1,hu1]
    simp only [Nat.ascFactorial_succ,Nat.ascFactorial_zero,
      Nat.cast_mul,Nat.cast_add,Nat.cast_one,Nat.cast_ofNat]
    unfold Math.B699.N10.ratioOne Math.B699.N10.d93 Math.B699.N10.d26
    field_simp
    <;> ring
  have u203 (m:ℕ) (hm:1 ≤ m):
      u205 (m + 1) = u205 m * Math.B699.N10.ratioOne (m:ℚ):= by
    obtain ⟨k,rfl⟩:∃ k,m = k + 1:= Nat.exists_eq_add_of_le' hm
    simpa only [Nat.cast_add,Nat.cast_one] using u224 k
  have u226 (x:ℚ) (hx:0 ≤ x):
      2289993275428338969 * Math.B699.N10.d26 (x + 1) ≤
        1000000000000000000 * Math.B699.N10.d93 (x + 1):= by
    apply sub_nonneg.mp
    calc
      0 ≤ 2 * (15602420845797971160 + x * (72868513307722865246 + x * (121061801623265109405 + x * (92008069485993237200 + x * (32552723451522717555 + x * 4340363126869695674))))):= by positivity
      _ = 1000000000000000000 * Math.B699.N10.d93 (x + 1) -
          2289993275428338969 * Math.B699.N10.d26 (x + 1):= by
        unfold Math.B699.N10.d93 Math.B699.N10.d26
        ring
  have u227 (m:ℚ) (hm:1 ≤ m):
      u209 ≤ Math.B699.N10.ratioOne m:= by
    have hden:0 < Math.B699.N10.d26 m:= u214 m (by linarith)
    have hcert:= u226 (m - 1) (sub_nonneg.mpr hm)
    have hs:m - 1 + 1 = m:= by ring
    simp only [hs] at hcert
    have hmid:u209 = (2289993275428338969:ℚ) / 1000000000000000000:= by
      norm_num [u209,u207]
    rw [hmid,Math.B699.N10.ratioOne]
    apply (div_le_div_iff₀ (by norm_num) hden).2
    nlinarith only [hcert]
  have u228 (m:ℕ) (hm:1 ≤ m):
      u205 m * u209 ≤ u205 (m + 1):= by
    rw [u203 m (by omega)]
    exact mul_le_mul_of_nonneg_left (u227 (m:ℚ) (by exact_mod_cast hm))
      (u213 m).le
  have u250 (m:ℕ) (hm:1 ≤ m):
      u241 m * u211 ≤ u241 (m + 1):= by
    have ht:u208 ≠ 0:= ne_of_gt u215
    have hp:u208 ^ m ≠ 0:= pow_ne_zero _ ht
    calc
      _ = (u205 m * u209) / u208 ^ (m + 1):= by
        unfold u241 u211
        rw [pow_succ]
        field_simp [ht,hp]
        <;> ring
      _ ≤ u205 (m + 1) / u208 ^ (m + 1):=
        div_le_div_of_nonneg_right (u228 m hm)
          (pow_pos u215 (m + 1)).le
      _ = u241 (m + 1):= rfl
  have u237 (m:ℕ) (hm:21 ≤ m):1 < u241 m:= by
    have hn:10 * (1 + 1) ≤ m - 1:= by omega
    have h:= u42 (F:= u241) (R:= u211)
      (K:= 1) (T:= 1) (B:= 10) (n:= m - 1)
      u217 (u245 1).le
      (fun k hk => u250 k hk)
      u235 u218 hn
    have hindex:1 + (m - 1) = m:= by omega
    simpa only [hindex] using h
  have u240 (m:ℕ) (hm:21 ≤ m):
      u206 ^ (3 * m) < u205 m:= by
    have h:= u237 m hm
    change 1 < u205 m / u208 ^ m at h
    have hmul:= (lt_div_iff₀ (pow_pos u215 m)).mp h
    simpa only [one_mul,u208,pow_mul] using hmul
  have u242 (delta m:ℕ)
      (hdelta:delta = 0 ∨ delta = 1) (hm:129 ≤ m):
      (1273397 / 1000000:ℚ) ^ (3 * m) <
        Math.B699.N23.d135 (3 * m - delta) (2 * m + delta - 1):= by
    rcases hdelta with rfl | rfl
    · simpa only [u206,u204,Nat.sub_zero,Nat.add_zero] using u238 m hm
    · simpa only [u206,u205,Nat.add_sub_cancel] using u240 m (by omega)
  have u1015 (A B C:ℕ):0 < Math.B699.N18.qContent A B C:= by
    have hd:= u1013 A B C 0 (Nat.zero_le A)
    have hp:0 < Math.B699.N18.d119 A B C 0:= by
      simpa [Math.B699.N18.d119] using (Nat.choose_pos (show C ≤ A + C by omega))
    apply Nat.pos_of_ne_zero
    intro hz
    rw [hz] at hd
    have hzero:Math.B699.N18.d119 A B C 0 = 0:= Nat.zero_dvd.mp hd
    omega
  have u1018 (u v h:ℕ) (hh:h ≤ u):
      ((u - h) ! * h !) * (Math.B699.N23.d41 u v * Math.B699.N18.d119 u v u h) =
        (u + u - h) ! * (v + h) !:= by
    have hfirst:= Nat.choose_mul_factorial_mul_factorial
      (n:= u + u - h) (k:= u) (by omega:u ≤ u + u - h)
    have hsecond:= Nat.choose_mul_factorial_mul_factorial
      (n:= v + h) (k:= h) (by omega:h ≤ v + h)
    have hsubfirst:u + u - h - u = u - h:= by omega
    have hsubsecond:v + h - h = v:= by omega
    rw [hsubfirst] at hfirst
    rw [hsubsecond] at hsecond
    calc
      _ = ((u + u - h).choose u * u ! * (u - h) !) *
          ((v + h).choose h * h ! * v !):= by
        dsimp [Math.B699.N23.d41,Math.B699.N18.d119]
        ring
      _ = _:= by rw [hfirst,hsecond]
  have u1028 (a b n:ℕ) (hn:0 < n):
      (2 * a + b) / n =
        2 * (a / n) + b / n + (2 * (a % n) + b % n) / n:= by
    have heq:2 * a + b =
        n * (2 * (a / n) + b / n) + (2 * (a % n) + b % n):= by
      calc
        2 * a + b =
            2 * (n * (a / n) + a % n) + (n * (b / n) + b % n):= by
          simp only [Nat.div_add_mod]
        _ = _:= by
          simp only [Nat.mul_add,Nat.add_mul]
          ac_rfl
    rw [heq,Nat.mul_add_div hn]
  have u1029 (a b f n:ℕ) (hn:0 < n):
      (a + b + f) / n =
        a / n + b / n + f / n + (a % n + b % n + f % n) / n:= by
    have heq:a + b + f =
        n * (a / n + b / n + f / n) + (a % n + b % n + f % n):= by
      calc
        a + b + f = (n * (a / n) + a % n) +
            (n * (b / n) + b % n) + (n * (f / n) + f % n):= by
          simp only [Nat.div_add_mod]
        _ = _:= by
          simp only [Nat.mul_add,Nat.add_mul]
          ac_rfl
    rw [heq,Nat.mul_add_div hn]
  have u1030 (A B F n:ℕ):
      (A + B + F) / n ≤ (2 * A + B) / n + (2 * F + B) / n:= by
    by_cases h:A ≤ F
    · have hnum:A + B + F ≤ 2 * F + B:= by omega
      have hdiv:(A + B + F) / n ≤ (2 * F + B) / n:= Nat.div_le_div_right hnum
      exact Nat.le_trans hdiv (Nat.le_add_left _ _)
    · have hnum:A + B + F ≤ 2 * A + B:= by omega
      have hdiv:(A + B + F) / n ≤ (2 * A + B) / n:= Nat.div_le_div_right hnum
      exact Nat.le_trans hdiv (Nat.le_add_right _ _)
  have u1031 (a b f n:ℕ) (hn:0 < n):
      a / n + b / n + (a + b + f) / n + f / n ≤
        (2 * a + b) / n + (2 * f + b) / n:= by
    rw [u1028 a b n hn,
      u1028 f b n hn,
      u1029 a b f n hn]
    have hres:= u1030 (a % n) (b % n) (f % n) n
    omega
  have u1025 (a b f p:ℕ) (hp:p.Prime):
      (a !).factorization p + (b !).factorization p +
          ((a + b + f) !).factorization p + (f !).factorization p ≤
        ((2 * a + b) !).factorization p + ((2 * f + b) !).factorization p:= by
    let bound:= 2 * a + 2 * b + 2 * f
    let cutoff:= Nat.log p bound + 1
    have hlog (k:ℕ) (hk:k ≤ bound):Nat.log p k < cutoff:= by
      exact (Nat.log_mono_right hk).trans_lt (Nat.lt_add_one _)
    have ha:a ≤ bound:= by dsimp [bound]; omega
    have hb:b ≤ bound:= by dsimp [bound]; omega
    have haf:a + b + f ≤ bound:= by dsimp [bound]; omega
    have hf:f ≤ bound:= by dsimp [bound]; omega
    have ha2:2 * a + b ≤ bound:= by dsimp [bound]; omega
    have hf2:2 * f + b ≤ bound:= by dsimp [bound]; omega
    rw [Nat.factorization_factorial hp (hlog a ha),
      Nat.factorization_factorial hp (hlog b hb),
      Nat.factorization_factorial hp (hlog (a + b + f) haf),
      Nat.factorization_factorial hp (hlog f hf),
      Nat.factorization_factorial hp (hlog (2 * a + b) ha2),
      Nat.factorization_factorial hp (hlog (2 * f + b) hf2)]
    have hsum:
        (∑ i ∈ Finset.Ico 1 cutoff,
          (a / p ^ i + b / p ^ i + (a + b + f) / p ^ i + f / p ^ i)) ≤
        ∑ i ∈ Finset.Ico 1 cutoff,
          ((2 * a + b) / p ^ i + (2 * f + b) / p ^ i):= by
      apply Finset.sum_le_sum
      intro i hi
      exact u1031 a b f (p ^ i) (pow_pos hp.pos i)
    simpa only [Finset.sum_add_distrib] using hsum
  have u1026 (a b f:ℕ):
      a ! * b ! * (a + b + f) ! * f ! ∣ (2 * a + b) ! * (2 * f + b) !:= by
    have hden:a ! * b ! * (a + b + f) ! * f ! ≠ 0:=
      mul_ne_zero (mul_ne_zero
        (mul_ne_zero (Nat.factorial_ne_zero a) (Nat.factorial_ne_zero b))
        (Nat.factorial_ne_zero (a + b + f))) (Nat.factorial_ne_zero f)
    have hnum:(2 * a + b) ! * (2 * f + b) ! ≠ 0:=
      mul_ne_zero (Nat.factorial_ne_zero (2 * a + b))
        (Nat.factorial_ne_zero (2 * f + b))
    apply (Nat.factorization_le_iff_dvd hden hnum).mp
    intro p
    by_cases hp:p.Prime
    · rw [Nat.factorization_mul
          (mul_ne_zero (mul_ne_zero (Nat.factorial_ne_zero a) (Nat.factorial_ne_zero b))
            (Nat.factorial_ne_zero (a + b + f))) (Nat.factorial_ne_zero f),
        Nat.factorization_mul (mul_ne_zero (Nat.factorial_ne_zero a) (Nat.factorial_ne_zero b))
          (Nat.factorial_ne_zero (a + b + f)),
        Nat.factorization_mul (Nat.factorial_ne_zero a) (Nat.factorial_ne_zero b),
        Nat.factorization_mul (Nat.factorial_ne_zero (2 * a + b))
          (Nat.factorial_ne_zero (2 * f + b))]
      simpa only [Finsupp.add_apply] using u1025 a b f p hp
    · simp only [Nat.factorization_eq_zero_of_not_prime _ hp,le_refl]
  have u1027 (a b f v:ℕ) (hv:2 * f ≤ v):
      a ! * b ! * (a + b + f) ! * f ! ∣ (2 * a + b) ! * (v + b) !:= by
    apply (u1026 a b f).trans
    exact Nat.mul_dvd_mul_left _
      (Nat.factorial_dvd_factorial (show 2 * f + b ≤ v + b by omega))
  have u1019
      (u v h:ℕ) (hh:h ≤ u):
      Math.B699.N23.d42 u v ∣ Math.B699.N23.d41 u v * Math.B699.N18.d119 u v u h:= by
    have hraw:= u1027
      (u - h) h (v / 2) v (by omega:2 * (v / 2) ≤ v)
    have hsum:u - h + h + v / 2 = u + v / 2:= by omega
    have htwice:2 * (u - h) + h = u + u - h:= by omega
    rw [hsum,htwice] at hraw
    have hscaled:
        ((u - h) ! * h !) * Math.B699.N23.d42 u v ∣
          (u + u - h) ! * (v + h) !:= by
      simpa only [Math.B699.N23.d42,Nat.mul_assoc] using hraw
    rw [← u1018 u v h hh] at hscaled
    exact (Nat.mul_dvd_mul_iff_left
      (Nat.mul_pos (Nat.factorial_pos (u - h)) (Nat.factorial_pos h))).mp hscaled
  have u1021 (u v:ℕ):
      Math.B699.N23.d42 u v ∣ Math.B699.N23.d41 u v * Math.B699.N18.qContent u v u:= by
    have hd:Math.B699.N23.d42 u v ∣
        (Finset.range (u + 1)).gcd
          (fun h => Math.B699.N23.d41 u v * Math.B699.N18.d119 u v u h):= by
      apply Finset.dvd_gcd
      intro h hh
      exact u1019 u v h
        (Nat.lt_succ_iff.mp (Finset.mem_range.mp hh))
    simpa [Finset.gcd_mul_left,Math.B699.N18.qContent] using hd
  have u1022 (N V q:ℕ)
      (hN:0 < N) (hV:0 < V) (hq:0 < q) (hd:N ∣ V * q):
      ∃ k:ℕ,0 < k ∧ (q:ℚ) / ((N:ℚ) / (V:ℚ)) = (k:ℚ):= by
    obtain ⟨k,hk⟩:= hd
    have hkpos:0 < k:= by
      apply Nat.pos_of_ne_zero
      intro hz
      rw [hz,Nat.mul_zero] at hk
      have hprod:0 < V * q:= Nat.mul_pos hV hq
      omega
    refine ⟨k,hkpos,?_⟩
    have hNc:(N:ℚ) ≠ 0:= by exact_mod_cast (Nat.ne_of_gt hN)
    have hVc:(V:ℚ) ≠ 0:= by exact_mod_cast (Nat.ne_of_gt hV)
    have hkc:(V:ℚ) * (q:ℚ) = (N:ℚ) * (k:ℚ):= by
      exact_mod_cast hk
    field_simp [hNc,hVc]
    nlinarith only [hkc]
  have u1023 (u v:ℕ):
      ∃ k:ℕ,0 < k ∧ (Math.B699.N18.qContent u v u:ℚ) / Math.B699.N23.d135 u v = (k:ℚ):= by
    exact u1022
      (Math.B699.N23.d42 u v) (Math.B699.N23.d41 u v) (Math.B699.N18.qContent u v u)
      (u1016 u v) (u1017 u v)
      (u1015 u v u) (u1021 u v)
  have u1024 (u v:ℕ):
      Math.B699.N23.d135 u v ≤ (Math.B699.N18.qContent u v u:ℚ):= by
    obtain ⟨k,hk,heq⟩:= u1023 u v
    have hD:= u1020 u v
    have hk1:(1:ℚ) ≤ (k:ℚ):= by
      exact_mod_cast (show 1 ≤ k by omega)
    have hmul:(Math.B699.N18.qContent u v u:ℚ) = (k:ℚ) * Math.B699.N23.d135 u v:=
      (div_eq_iff (ne_of_gt hD)).mp heq
    calc
      Math.B699.N23.d135 u v = 1 * Math.B699.N23.d135 u v:= by ring
      _ ≤ (k:ℚ) * Math.B699.N23.d135 u v:=
        mul_le_mul_of_nonneg_right hk1 (le_of_lt hD)
      _ = (Math.B699.N18.qContent u v u:ℚ):= hmul.symm
  have u243 (delta m:ℕ)
      (hdelta:delta = 0 ∨ delta = 1) (hm:129 ≤ m):
      (1273397 / 1000000:ℚ) ^ (3 * m) <
        (Math.B699.N18.qContent (3 * m - delta) (2 * m + delta - 1) (3 * m - delta):ℚ):= by
    exact (u242 delta m hdelta hm).trans_le
      (u1024 (3 * m - delta) (2 * m + delta - 1))
  have u395 (m:ℕ) (hm:129 ≤ m) (row:Bool):
      (1273397 / 1000000:ℚ) ^ (3 * m) <
        (Math.B699.N18.qContent (3 * m - u406 row) (2 * m + u406 row - 1)
          (3 * m - u406 row):ℚ):= by
    exact u243 (u406 row) m (u407 row) hm
  have u550 (m:ℕ) (hm:129 ≤ m) (row:Bool):
      u543 ^ m ≤ u546 m row:= by
    simpa only [u543,u546,← pow_mul] using
      (le_of_lt (u395 m hm row))
  have u409 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      u1005 (3 * m) (2 * m - 1) 1 4375 row =
        u942 (3 * m - u406 row) (2 * m + u406 row - 1) 1 4375 ∧
      u1006 (3 * m) (2 * m - 1) 1 4375 row =
        u1010 (3 * m - u406 row) (2 * m + u406 row - 1)
          (3 * m - u406 row) 1 4375:= by
    have hv:2 * m - 1 + 1 = 2 * m:= by omega
    cases row <;> simp [u406,u1005,u1006,hv]
  have u551 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      u546 m row * (u547 m row:ℚ) =
        (4375:ℚ) ^ (3 * m - u406 row) * u544 m row:= by
    have hq:= (u409 m hm row).2
    change (Math.B699.N18.qContent (3 * m - u406 row) (2 * m + u406 row - 1)
        (3 * m - u406 row):ℚ) *
        (u1006 (3 * m) (2 * m - 1) 1 4375 row:ℚ) = _
    rw [hq,u154]
    have h:= u152 (3 * m - u406 row)
      (2 * m + u406 row - 1) (3 * m - u406 row) 1 4375 (by decide)
    simpa only [u544,u138,Int.cast_one,Int.cast_ofNat] using h
  have u565 (g l t x v H:ℚ)
      (hl:0 ≤ l) (hgl:l ≤ g) (ht:0 ≤ t)
      (hid:g * x = t * v) (hv:|v| ≤ H):l * |x| ≤ t * H:= by
    have hg:0 ≤ g:= le_trans hl hgl
    have habs:g * |x| = t * |v|:= by
      simpa only [abs_mul,abs_of_nonneg hg,abs_of_nonneg ht] using congrArg abs hid
    calc
      l * |x| ≤ g * |x|:= mul_le_mul_of_nonneg_right hgl (abs_nonneg x)
      _ = t * |v|:= habs
      _ ≤ t * H:= mul_le_mul_of_nonneg_left hv ht
  have u553 (m:ℕ) (hm:129 ≤ m) (row:Bool)
      (BQ:ℚ) (hBQ:0 ≤ BQ) (hQ:|u544 m row| ≤ BQ ^ m):
      u543 ^ m * |(u547 m row:ℚ)| ≤ ((4375:ℚ) ^ 3 * BQ) ^ m:= by
    have h:= u565 (u546 m row) (u543 ^ m)
      ((4375:ℚ) ^ (3 * m - u406 row)) (u547 m row) (u544 m row) (BQ ^ m)
      (le_of_lt (pow_pos u549 m)) (u550 m hm row)
      (pow_nonneg (by norm_num) _) (u551 m (by omega) row) hQ
    calc
      _ ≤ (4375:ℚ) ^ (3 * m - u406 row) * BQ ^ m:= h
      _ ≤ (4375:ℚ) ^ (3 * m) * BQ ^ m:=
        mul_le_mul_of_nonneg_right
          (pow_le_pow_right₀ (by norm_num:(1:ℚ) ≤ 4375) (Nat.sub_le _ _))
          (pow_nonneg hBQ m)
      _ = ((4375:ℚ) ^ 3 * BQ) ^ m:= by rw [mul_pow,← pow_mul]
  have u566 (l r k x D:ℚ)
      (hl:0 < l) (hk:0 ≤ k) (hbound:l * x ≤ D)
      (hsmall:k * D < r * l):k * x < r:= by
    apply (Rat.mul_lt_mul_left hl).mp
    calc
      l * (k * x) = k * (l * x):= by ring
      _ ≤ k * D:= mul_le_mul_of_nonneg_left hbound hk
      _ < l * r:= by simpa only [mul_comm l r] using hsmall
  have u567 (N D:ℚ) (hD:D ≠ 0) (m:ℕ):
      (N / D) ^ m * D ^ m = N ^ m:= by
    rw [← mul_pow,div_mul_cancel₀ _ hD]
  have u575 (m:ℕ) (hm:129 ≤ m) (row:Bool)
      (BQ:ℚ) (hBQ:0 < BQ) (hQ:|u544 m row| ≤ BQ ^ m)
      (hA:(48:ℚ) < u571 BQ ^ m):
      2 * ((2:ℚ) ^ (5 * m) * 24 * |(u547 m row:ℚ)|) < (625:ℚ) ^ (5 * m):= by
    have hden:0 < u570 BQ:= by unfold u570; positivity
    have hnum:(48:ℚ) * u570 BQ ^ m < u569 ^ m:= by
      calc
        _ < u571 BQ ^ m * u570 BQ ^ m:=
          mul_lt_mul_of_pos_right hA (pow_pos hden m)
        _ = u569 ^ m:= u567 u569 (u570 BQ) (ne_of_gt hden) m
    have hsmall:((48:ℚ) * 2 ^ (5 * m)) * ((4375:ℚ) ^ 3 * BQ) ^ m <
        (625:ℚ) ^ (5 * m) * u543 ^ m:= by
      calc
        _ = (48:ℚ) * u570 BQ ^ m:= by
          simp only [u570,mul_pow,← pow_mul]
          ring
        _ < u569 ^ m:= hnum
        _ = (625:ℚ) ^ (5 * m) * u543 ^ m:= by
          simp only [u569,mul_pow,← pow_mul]
    have h:= u566 (u543 ^ m) ((625:ℚ) ^ (5 * m))
      ((48:ℚ) * 2 ^ (5 * m)) |(u547 m row:ℚ)| (((4375:ℚ) ^ 3 * BQ) ^ m)
      (pow_pos u549 m) (by positivity)
      (u553 m hm row BQ (le_of_lt hBQ) hQ) hsmall
    nlinarith [h]
  have u408 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      (3 * m - u406 row) + (2 * m + u406 row - 1) + 1 = 5 * m:= by
    cases row <;> simp [u406] <;> omega
  have u394 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      (Math.B699.N18.qContent (3 * m - u406 row) (2 * m + u406 row - 1)
          (3 * m - u406 row):ℚ) *
        (((4375:ℤ) ^ (5 * m) * u1005 (3 * m) (2 * m - 1) 1 4375 row -
          (4374:ℤ) ^ (5 * m) * u1006 (3 * m) (2 * m - 1) 1 4375 row:ℤ):ℚ) =
        (4375:ℚ) ^ (2 * m + u406 row - 1) *
          (Math.B699.N18.d37 (3 * m - u406 row) (2 * m + u406 row - 1)
            (3 * m - u406 row)).eval₂ (Int.castRingHom ℚ) (1 / 4375):= by
    obtain ⟨hp,hq⟩:= u409 m hm row
    rw [hp,hq]
    have h:= u155 (3 * m - u406 row)
      (2 * m + u406 row - 1) 1 4375 (by decide)
    simpa only [u408 m hm row,show (4375:ℤ) - 1 = 4374 by decide,
      Int.cast_one,Int.cast_ofNat,one_pow,mul_one] using h
  have u552 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      u546 m row * (u548 m row:ℚ) =
        (4375:ℚ) ^ (2 * m + u406 row - 1) * u545 m row:= by
    simpa only [u546,u548,u547,u545,u139] using
      u394 m hm row
  have u554 (m:ℕ) (hm:129 ≤ m) (row:Bool)
      (BE:ℚ) (hBE:0 ≤ BE) (hE:|u545 m row| ≤ BE ^ m):
      u543 ^ m * |(u548 m row:ℚ)| ≤ ((4375:ℚ) ^ 2 * BE) ^ m:= by
    have hv:2 * m + u406 row - 1 ≤ 2 * m:= by
      rcases u407 row with h | h <;> rw [h] <;> omega
    have h:= u565 (u546 m row) (u543 ^ m)
      ((4375:ℚ) ^ (2 * m + u406 row - 1)) (u548 m row) (u545 m row) (BE ^ m)
      (le_of_lt (pow_pos u549 m)) (u550 m hm row)
      (pow_nonneg (by norm_num) _) (u552 m (by omega) row) hE
    calc
      _ ≤ (4375:ℚ) ^ (2 * m + u406 row - 1) * BE ^ m:= h
      _ ≤ (4375:ℚ) ^ (2 * m) * BE ^ m:=
        mul_le_mul_of_nonneg_right
          (pow_le_pow_right₀ (by norm_num:(1:ℚ) ≤ 4375) hv) (pow_nonneg hBE m)
      _ = ((4375:ℚ) ^ 2 * BE) ^ m:= by rw [mul_pow,← pow_mul]
  have u576 (m:ℕ) (hm:129 ≤ m) (row:Bool)
      (BE:ℚ) (hBE:0 < BE) (hE:|u545 m row| ≤ BE ^ m)
      (V Nq:ℕ) (hNV:(2187:ℚ) ^ (5 * m) * (V:ℚ) = (Nq:ℚ))
      (hNsmall:2 * (Nq:ℚ) < u574 BE ^ m):
      2 * (|(u548 m row:ℚ)| * (V:ℚ)) < (625:ℚ) ^ (5 * m):= by
    have hden:0 < u573 BE:= by unfold u573; positivity
    have hsmall:(2 * (V:ℚ)) * u573 BE ^ m <
        (625:ℚ) ^ (5 * m) * u543 ^ m:= by
      apply (Rat.mul_lt_mul_right (pow_pos (by norm_num:(0:ℚ) < 2187) (5 * m))).mp
      calc
        (2 * (V:ℚ)) * u573 BE ^ m * (2187:ℚ) ^ (5 * m) =
            (2 * (Nq:ℚ)) * u573 BE ^ m:= by rw [← hNV]; ring
        _ < u574 BE ^ m * u573 BE ^ m:=
          mul_lt_mul_of_pos_right hNsmall (pow_pos hden m)
        _ = u572 ^ m:= u567 u572 (u573 BE) (ne_of_gt hden) m
        _ = ((625:ℚ) ^ (5 * m) * u543 ^ m) * (2187:ℚ) ^ (5 * m):= by
          simp only [u572,mul_pow,← pow_mul]
          ring
    have h:= u566 (u543 ^ m) ((625:ℚ) ^ (5 * m))
      (2 * (V:ℚ)) |(u548 m row:ℚ)| (u573 BE ^ m)
      (pow_pos u549 m) (by positivity)
      (u554 m hm row BE (le_of_lt hBE) hE) hsmall
    nlinarith [h]
  have u577 (m:ℕ) (hm:129 ≤ m) (row:Bool)
      (BQ BE:ℚ) (hBQ:0 < BQ) (hBE:0 < BE)
      (hQ:|u544 m row| ≤ BQ ^ m) (hE:|u545 m row| ≤ BE ^ m)
      (hA:(48:ℚ) < u571 BQ ^ m)
      (V Nq:ℕ) (hNV:(2187:ℚ) ^ (5 * m) * (V:ℚ) = (Nq:ℚ))
      (hNsmall:2 * (Nq:ℚ) < u574 BE ^ m):
      (2:ℤ) ^ (5 * m) * 24 * |u547 m row| + |u548 m row| * (V:ℤ) <
        (625:ℤ) ^ (5 * m):= by
    have h:= u568
      ((2:ℚ) ^ (5 * m) * 24 * |(u547 m row:ℚ)|)
      (|(u548 m row:ℚ)| * (V:ℚ)) ((625:ℚ) ^ (5 * m))
      (u575 m hm row BQ hBQ hQ hA)
      (u576 m hm row BE hBE hE V Nq hNV hNsmall)
    exact_mod_cast h
  have u578
      (BQ BE:ℚ) (hBQ:0 < BQ) (hBE:0 < BE)
      (hQ:∀ m:ℕ,129 ≤ m → ∀ row:Bool,|u544 m row| ≤ BQ ^ m)
      (hE:∀ m:ℕ,129 ≤ m → ∀ row:Bool,|u545 m row| ≤ BE ^ m)
      (hAone:1 ≤ u571 BQ) (hAbase:(48:ℚ) < u571 BQ ^ 213)
      (hW:(u399:ℚ) ≤ u574 BE)
      (hprevious:u399 ^ (u401 - 1) ≤ 4 * u400)
      (hrateP:(5:ℕ) ^ 20000 ≤ u399 ^ 646)
      (hbaseP:((5:ℕ) ^ 20000) ^ u401 ≤ u400 ^ 646)
      (hlookP:(4:ℕ) ^ 646 * (5 ^ 20000) ^ (u401 + 1) ≤
        u399 ^ (646 * u401))
      (hrateQ:(3:ℕ) ^ 35000 ≤ u399 ^ 772)
      (hbaseQ:((3:ℕ) ^ 35000) ^ u401 ≤ u400 ^ 772)
      (hlookQ:(4:ℕ) ^ 772 * (3 ^ 35000) ^ (u401 + 1) ≤
        u399 ^ (772 * u401))
      (Y e f A C:ℕ) (hY:u400 ≤ Y) (hC:1 ≤ C)
      (hwindowP:Y ≤ 5 ^ e * A) (hwindowQ:Y ≤ 3 ^ f * C)
      (hupperQ:3 ^ f * C ≤ 2 * Y)
      (hgap:|(5:ℤ) ^ e * (A:ℤ) - (3:ℤ) ^ f * (C:ℤ)| ≤ 24):
      Y ^ 354 ≤ A ^ 1000 ∨ Y ^ 228 ≤ C ^ 1000:= by
    by_cases hP:Y ^ 354 ≤ A ^ 1000
    · exact Or.inl hP
    by_cases hQcofactor:Y ^ 228 ≤ C ^ 1000
    · exact Or.inr hQcofactor
    exfalso
    have hsmallP:A ^ 1000 < Y ^ 354:= Nat.lt_of_not_ge hP
    have hsmallQ:C ^ 1000 < Y ^ 228:= Nat.lt_of_not_ge hQcofactor
    let m:= u403 Y
    obtain ⟨he,hf⟩:= u405 Y e f A C hY hprevious
      hrateP hbaseP hlookP hrateQ hbaseQ hlookQ hwindowP hwindowQ hsmallP hsmallQ
    change 20 * m < e at he
    change 35 * m < f at hf
    have hm:129 ≤ m:= u404 Y hY hprevious
    have hmM:213 ≤ m:= by
      have h:= Math.B699.N7.d67 u399 u400 Y u401
        u402 hY (by decide) hprevious
      exact h
    have hAm:(48:ℚ) < u571 BQ ^ m:=
      lt_of_lt_of_le hAbase (pow_le_pow_right₀ hAone hmM)
    have hthreshold:(4:ℚ) * (Y:ℚ) < (u399:ℚ) ^ m:= by
      have h:= Math.B699.N7.d71 u399 Y u402
      change 4 * Y < u399 ^ m at h
      exact_mod_cast h
    have hWm:(4:ℚ) * (Y:ℚ) < u574 BE ^ m:=
      lt_of_lt_of_le hthreshold (pow_le_pow_left₀ (Nat.cast_nonneg u399) hW m)
    let V:ℕ:= 3 ^ (f - 35 * m) * C
    let Nq:ℕ:= 3 ^ f * C
    have hNVnat:(2187:ℕ) ^ (5 * m) * V = Nq:= by
      have hpow:(2187:ℕ) ^ (5 * m) = (3:ℕ) ^ (35 * m):= by
        calc
          _ = ((3:ℕ) ^ 7) ^ (5 * m):= by norm_num
          _ = (3:ℕ) ^ (35 * m):= by rw [← Nat.pow_mul]; congr 1 <;> ring
      dsimp only [V,Nq]
      rw [hpow]
      exact u398 3 f (35 * m) C (Nat.le_of_lt hf)
    have hNV:(2187:ℚ) ^ (5 * m) * (V:ℚ) = (Nq:ℚ):= by exact_mod_cast hNVnat
    have hNsmall:2 * (Nq:ℚ) < u574 BE ^ m:= by
      have hN:(Nq:ℚ) ≤ 2 * (Y:ℚ):= by exact_mod_cast hupperQ
      linarith
    obtain ⟨row,_,hlower⟩:= u393 m e f A C
      (by omega) (Nat.le_of_lt he) (Nat.le_of_lt hf) hC hgap
    have hVcast:(3:ℤ) ^ (f - 35 * m) * (C:ℤ) = (V:ℤ):= by
      dsimp only [V]
      simp only [Nat.cast_mul,Nat.cast_pow,Nat.cast_ofNat]
    have hVabs:|(3:ℤ) ^ (f - 35 * m) * (C:ℤ)| = (V:ℤ):= by
      rw [hVcast,abs_of_nonneg (Int.natCast_nonneg V)]
    have hlow:(625:ℤ) ^ (5 * m) ≤
        (2:ℤ) ^ (5 * m) * 24 * |u547 m row| + |u548 m row| * (V:ℤ):= by
      simpa only [u547,u548,hVabs] using hlower
    have hstrict:= u577 m hm row BQ BE hBQ hBE
      (hQ m hm row) (hE m hm row) hAm V Nq hNV hNsmall
    exact (not_lt_of_ge hlow) hstrict
  have u579 (row:Bool):
      2 * |u138 5 3 (u406 row) 1 (1 / 4375)| ≤ u558:= by
    cases row <;>
      norm_num [u138,u406,u558,Math.B699.N8.beta,u556,Math.B699.N18.d121,
        Math.B699.N18.d22,Math.B699.N18.d118,Math.B699.N18.d119,Finset.sum_range_succ,
        Polynomial.eval₂_finsetSum,Polynomial.eval₂_monomial,Nat.choose]
  have u580 (row:Bool):
      2 * |u139 5 3 (u406 row) 1 (1 / 4375)| ≤ u559:= by
    cases row <;>
      norm_num [u139,u406,u559,Math.B699.N8.beta,u557,Math.B699.N18.d37,
        Math.B699.N18.d22,Math.B699.N18.d36,Finset.sum_range_succ,
        Polynomial.eval₂_finsetSum,Polynomial.eval₂_monomial,Nat.choose]
  have u581:1 ≤ u571 u558:= by
    norm_num [u571,u569,u570,u543,u558,Math.B699.N8.beta,u556]
  have u582:(u399:ℚ) ≤ u574 u559:= by
    norm_num [u399,u574,u572,u573,u543,u559,Math.B699.N8.beta,u557]
  have u555
      (qt:∀ row:Bool,Math.B699.N20.d1 u556 (u33 5 3 (u406 row) (1 / 4375))
        (u31 5 3 (1 / 4375)))
      (et:∀ row:Bool,Math.B699.N20.d1 u557 (u34 5 3 (u406 row) (1 / 4375))
        (u32 5 3 (1 / 4375)))
      (hAbase:(48:ℚ) < u571 u558 ^ 213)
      (hprevious:u399 ^ (u401 - 1) ≤ 4 * u400)
      (hrateP:(5:ℕ) ^ 20000 ≤ u399 ^ 646)
      (hbaseP:((5:ℕ) ^ 20000) ^ u401 ≤ u400 ^ 646)
      (hlookP:(4:ℕ) ^ 646 * (5 ^ 20000) ^ (u401 + 1) ≤
        u399 ^ (646 * u401))
      (hrateQ:(3:ℕ) ^ 35000 ≤ u399 ^ 772)
      (hbaseQ:((3:ℕ) ^ 35000) ^ u401 ≤ u400 ^ 772)
      (hlookQ:(4:ℕ) ^ 772 * (3 ^ 35000) ^ (u401 + 1) ≤
        u399 ^ (772 * u401))
      (Y e f A C:ℕ) (hY:u400 ≤ Y) (hC:1 ≤ C)
      (hwindowP:Y ≤ 5 ^ e * A) (hwindowQ:Y ≤ 3 ^ f * C)
      (hupperQ:3 ^ f * C ≤ 2 * Y)
      (hgap:|(5:ℤ) ^ e * (A:ℤ) - (3:ℤ) ^ f * (C:ℤ)| ≤ 24):
      Y ^ 354 ≤ A ^ 1000 ∨ Y ^ 228 ≤ C ^ 1000:= by
    obtain ⟨hQ,hE⟩:= u564 qt et
      u579 u580
    exact u578 u558 u559
      u560.2.2.1 u560.2.2.2 hQ hE
      u581 hAbase u582
      hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
      Y e f A C hY hC hwindowP hwindowQ hupperQ hgap
  have u517
      (qt:∀ row:Bool,Math.B699.N20.d1 u556 (u33 5 3 (u406 row) (1 / 4375))
        (u31 5 3 (1 / 4375)))
      (et:∀ row:Bool,Math.B699.N20.d1 u557 (u34 5 3 (u406 row) (1 / 4375))
        (u32 5 3 (1 / 4375)))
      (Y e f A C:ℕ) (hY:u400 ≤ Y) (hC:1 ≤ C)
      (hwindowP:Y ≤ 5 ^ e * A) (hwindowQ:Y ≤ 3 ^ f * C)
      (hupperQ:3 ^ f * C ≤ 2 * Y)
      (hgap:|(5:ℤ) ^ e * (A:ℤ) - (3:ℤ) ^ f * (C:ℤ)| ≤ 24):
      Y ^ 354 ≤ A ^ 1000 ∨ Y ^ 228 ≤ C ^ 1000:= by
    obtain ⟨hA,hprevious,hrateP,hbaseP,hlookP,hrateQ,hbaseQ,hlookQ⟩:=
      u516
    exact u555 qt et hA
      hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
      Y e f A C hY hC hwindowP hwindowQ hupperQ hgap
  have u677 {C A n Y weight exponent:ℕ}
      (hproduct:C * A ≤ n) (hcofactor:Y ^ weight ≤ C ^ exponent):
      A ^ exponent * Y ^ weight ≤ n ^ exponent:= by
    calc
      A ^ exponent * Y ^ weight ≤ A ^ exponent * C ^ exponent:=
        Nat.mul_le_mul_left _ hcofactor
      _ = (C * A) ^ exponent:= by
        simpa only [Nat.mul_pow] using Nat.mul_comm (A ^ exponent) (C ^ exponent)
      _ ≤ n ^ exponent:= Nat.pow_le_pow_left hproduct exponent
  have u678 {n p Y weight:ℕ} (window:N5.N15.d2 n p)
      (hcofactor:Y ^ weight ≤ window.cofactor ^ 1000):
      (N5.N15.d108 n p) ^ 1000 * Y ^ weight ≤ n ^ 1000:= by
    have hproduct:window.cofactor * N5.N15.d108 n p ≤ n:= by
      rw [window.equation]
      exact Nat.sub_le n window.offset
    exact u677 hproduct hcofactor
  have u173
      (qt:∀ row:Bool,Math.B699.N20.d1 u556 (u33 5 3 (u406 row) (1 / 4375))
        (u31 5 3 (1 / 4375)))
      (et:∀ row:Bool,Math.B699.N20.d1 u557 (u34 5 3 (u406 row) (1 / 4375))
        (u32 5 3 (1 / 4375)))
      {n:ℕ} (hn:20 ≤ n) (hY:u400 ≤ u166 n)
      (wp:N5.N15.d2 n 5) (wq:N5.N15.d2 n 3):
      (N5.N15.d108 n 5) ^ 1000 * (u166 n) ^ 354 ≤ n ^ 1000 ∨
        (N5.N15.d108 n 3) ^ 1000 * (u166 n) ^ 228 ≤ n ^ 1000:= by
    have hpBounds:= u172 hn wp
    have hqBounds:= u172 hn wq
    have hpNat:(5:ℕ) ^ (n.choose 11).factorization 5 * wp.cofactor = n - wp.offset:= by
      simpa only [N5.N15.d108,Nat.mul_comm] using wp.equation
    have hqNat:(3:ℕ) ^ (n.choose 11).factorization 3 * wq.cofactor = n - wq.offset:= by
      simpa only [N5.N15.d108,Nat.mul_comm] using wq.equation
    have hpInt:(5:ℤ) ^ (n.choose 11).factorization 5 * (wp.cofactor:ℤ) =
        ((n - wp.offset:ℕ):ℤ):= by exact_mod_cast hpNat
    have hqInt:(3:ℤ) ^ (n.choose 11).factorization 3 * (wq.cofactor:ℤ) =
        ((n - wq.offset:ℕ):ℤ):= by exact_mod_cast hqNat
    have hgap:|(5:ℤ) ^ (n.choose 11).factorization 5 * (wp.cofactor:ℤ) -
        (3:ℤ) ^ (n.choose 11).factorization 3 * (wq.cofactor:ℤ)| ≤ 24:= by
      rw [hpInt,hqInt]
      exact le_trans (u171 wp.offset_lt wq.offset_lt) (by decide:(10:ℤ) ≤ 24)
    have hcof:= u517 qt et (u166 n)
      ((n.choose 11).factorization 5) ((n.choose 11).factorization 3) wp.cofactor wq.cofactor
      hY wq.cofactor_pos hpBounds.1 hqBounds.1 hqBounds.2 hgap
    rcases hcof with hP | hQ
    · exact Or.inl (u678 wp hP)
    · exact Or.inr (u678 wq hQ)
  have u676 {n p:ℕ} (hn:11 ≤ n) (hp:p.Prime):
      Nonempty (N5.N15.d2 n p):= by
    obtain ⟨a,ha,hraw⟩:= N5.d13 (by decide:1 ≤ 11) hn hp
    have hsubpower:N5.N15.d108 n p ∣
        p ^ ((n.choose 11).factorization p + (11:ℕ).factorization p):= by
      unfold N5.N15.d108
      exact Nat.pow_dvd_pow p (by omega)
    have hdiv:N5.N15.d108 n p ∣ n - a:= Nat.dvd_trans hsubpower hraw
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
      C * N5.N15.d108 n p = N5.N15.d108 n p * C:= Nat.mul_comm _ _
      _ = n - a:= Eq.symm hC
  have u158
      (qt:∀ row:Bool,Math.B699.N20.d1 u556 (u33 5 3 (u406 row) (1 / 4375))
        (u31 5 3 (1 / 4375)))
      (et:∀ row:Bool,Math.B699.N20.d1 u557 (u34 5 3 (u406 row) (1 / 4375))
        (u32 5 3 (1 / 4375)))
      {n:ℕ} (hn:(2:ℕ) ^ 15360 ≤ n):
      (N5.N15.d108 n 5) ^ 1000 * ((n + 1) / 2) ^ 354 ≤ n ^ 1000 ∨
        (N5.N15.d108 n 3) ^ 1000 * ((n + 1) / 2) ^ 228 ≤ n ^ 1000:= by
    have hn20:20 ≤ n:= u170 (k:= 15360) (by decide:5 ≤ 15360) hn
    have hn11:11 ≤ n:= Nat.le_trans (by decide:11 ≤ 20) hn20
    have hY:u400 ≤ u166 n:= by
      change (2:ℕ) ^ 15359 ≤ u166 n
      exact u169 (k:= 15359) hn
    obtain ⟨wp⟩:= u676 (p:= 5) hn11 (by decide:Nat.Prime 5)
    obtain ⟨wq⟩:= u676 (p:= 3) hn11 (by decide:Nat.Prime 3)
    exact u173 qt et hn20 hY wp wq
  have u159:u65 = u556:= rfl
  have u160:u72 = u557:= rfl
  have u161:u406 false = 1:= rfl
  have u162:u406 true = 0:= rfl
  have u163 (row:Bool):
      Math.B699.N20.d1 u556 (u33 5 3 (u406 row) (1 / 4375)) (u31 5 3 (1 / 4375)):= by
    cases row with
    | false =>
      simpa only [u161,u159,
        u68,
        u66,
        u62,
        u63,
        u64] using
          u77
    | true =>
      simpa only [u162,u159,
        u67,
        u66,
        u62,
        u63,
        u64] using
          u76
  have u164 (row:Bool):
      Math.B699.N20.d1 u557 (u34 5 3 (u406 row) (1 / 4375)) (u32 5 3 (1 / 4375)):= by
    cases row with
    | false =>
      simpa only [u161,u160,
        u75,
        u73,
        u69,
        u70,
        u71] using
          u79
    | true =>
      simpa only [u162,u160,
        u74,
        u73,
        u69,
        u70,
        u71] using
          u78
  have u165 {n:ℕ} (hn:(2:ℕ) ^ 15360 ≤ n):
      (N5.N15.d108 n 5) ^ 1000 * ((n + 1) / 2) ^ 354 ≤ n ^ 1000 ∨
        (N5.N15.d108 n 3) ^ 1000 * ((n + 1) / 2) ^ 228 ≤ n ^ 1000:= by
    exact u158
      u163 u164 hn
  let u174:ℚ:= 1303943 / 1000000
  let u175:ℚ:= 661613 / 500000
  let u176:ℚ:= u174 ^ 7
  let u177:ℚ:= u175 ^ 7
  let u178:ℚ:= 387420489 / 52706752
  let u179:ℚ:= u177 / u176
  let u180 (m:ℕ):ℚ:= Math.B699.N23.d135 (7 * m) (4 * m - 1)
  have u181:0 < u176:= by norm_num [u176,u174]
  have u182:u176 ≤ u178:= by
    norm_num [u176,u174,u178]
  have u183:1 ≤ u179:= by
    norm_num [u179,u177,u176,u175,u174]
  have u184:(2:ℚ) ≤ 1 + 10 * (u179 - 1):= by
    norm_num [u179,u177,u176,u175,u174]
  have u185 (m:ℕ):0 < u180 m:= u1020 _ _
  have u186 (x:ℚ) (hx:1 ≤ x):0 < Math.B699.N9.d26 x:= by
    have hxpos:0 < x:= by linarith
    unfold Math.B699.N9.d26
    positivity
  have u187 (m:ℕ) (hm:1 ≤ m):
      u180 m =
        (((9 * m - 1).factorial:ℕ):ℚ) * (((2 * m - 1).factorial:ℕ):ℚ) /
          ((((7 * m).factorial:ℕ):ℚ) * (((4 * m - 1).factorial:ℕ):ℚ)):= by
    have hf:(4 * m - 1) / 2 = 2 * m - 1:= by omega
    have hn:7 * m + (2 * m - 1) = 9 * m - 1:= by omega
    simp only [u180,Math.B699.N23.d135,Math.B699.N23.d42,Math.B699.N23.d41,
      hf,hn,Nat.cast_mul]
  have u188:u180 1 = (4 / 3:ℚ):= by
    norm_num [u180,Math.B699.N23.d135,Math.B699.N23.d42,Math.B699.N23.d41,Nat.factorial]
  have u189 (k:ℕ):
      u180 (k + 2) = u180 (k + 1) * Math.B699.N9.ratio ((k:ℚ) + 1):= by
    rw [u187 (k + 2) (by omega),u187 (k + 1) (by omega)]
    have hn:9 * (k + 2) - 1 = (9 * (k + 1) - 1) + 9:= by omega
    have hf:2 * (k + 2) - 1 = (2 * (k + 1) - 1) + 2:= by omega
    have hu:7 * (k + 2) = (7 * (k + 1)) + 7:= by omega
    have hv:4 * (k + 2) - 1 = (4 * (k + 1) - 1) + 4:= by omega
    have hn1:(9 * (k + 1) - 1) + 1 = 9 * (k + 1):= by omega
    have hf1:(2 * (k + 1) - 1) + 1 = 2 * (k + 1):= by omega
    have hv1:(4 * (k + 1) - 1) + 1 = 4 * (k + 1):= by omega
    rw [hn,hf,hu,hv,
      Math.B699.N8.d46 (9 * (k + 1) - 1) 9,
      Math.B699.N8.d46 (2 * (k + 1) - 1) 2,
      Math.B699.N8.d46 (7 * (k + 1)) 7,
      Math.B699.N8.d46 (4 * (k + 1) - 1) 4,
      hn1,hf1,hv1]
    simp only [Nat.ascFactorial_succ,Nat.ascFactorial_zero,
      Nat.cast_mul,Nat.cast_add,Nat.cast_one,Nat.cast_ofNat]
    unfold Math.B699.N9.ratio Math.B699.N9.d92 Math.B699.N9.d26
    field_simp
    <;> ring
  have u190 (m:ℕ) (hm:1 ≤ m):
      u180 (m + 1) = u180 m * Math.B699.N9.ratio (m:ℚ):= by
    obtain ⟨k,rfl⟩:∃ k,m = k + 1:= Nat.exists_eq_add_of_le' hm
    simpa only [Nat.cast_add,Nat.cast_one] using u189 k
  have u271 (u r:ℕ) (hu:1 ≤ u):
      Math.B699.N23.d135 (u - 1) (2 * r + 2) =
        ((u:ℚ) / 2) * Math.B699.N23.d135 u (2 * r + 1):= by
    obtain ⟨k,rfl⟩:∃ k,u = k + 1:= Nat.exists_eq_add_of_le' hu
    have hf₀:(2 * r + 1) / 2 = r:= by omega
    have hf₁:(2 * r + 2) / 2 = r + 1:= by omega
    have hs:k + (r + 1) = (k + 1) + r:= by omega
    simp only [Math.B699.N23.d135,Math.B699.N23.d42,Math.B699.N23.d41,
      Nat.add_sub_cancel,hf₀,hf₁,hs,Nat.cast_mul]
    have he:2 * r + 2 = (2 * r + 1) + 1:= by omega
    rw [he,Math.B699.N8.d46 r 1,Math.B699.N8.d46 (2 * r + 1) 1,
      Math.B699.N8.d46 k 1]
    simp only [Nat.ascFactorial_succ,Nat.ascFactorial_zero,
      Nat.cast_mul,Nat.cast_add,Nat.cast_one,Nat.cast_ofNat]
    have hkfac:(((k.factorial:ℕ):ℚ)) ≠ 0:= by positivity
    have hrfac:((((2 * r + 1).factorial:ℕ):ℚ)) ≠ 0:= by positivity
    have hk:(k:ℚ) + 1 ≠ 0:= by positivity
    have hr:(2:ℚ) * (r:ℚ) + 1 + 1 ≠ 0:= by positivity
    field_simp [hkfac,hrfac,hk,hr]
    <;> ring
  have u272 (u r:ℕ) (hu:2 ≤ u):
      Math.B699.N23.d135 u (2 * r + 1) ≤ Math.B699.N23.d135 (u - 1) (2 * r + 2):= by
    rw [u271 u r (by omega)]
    have huQ:(2:ℚ) ≤ (u:ℚ):= by exact_mod_cast hu
    have hfactor:(1:ℚ) ≤ (u:ℚ) / 2:= by linarith
    calc
      Math.B699.N23.d135 u (2 * r + 1) = 1 * Math.B699.N23.d135 u (2 * r + 1):= by ring
      _ ≤ ((u:ℚ) / 2) * Math.B699.N23.d135 u (2 * r + 1):=
        mul_le_mul_of_nonneg_right hfactor (u1020 u (2 * r + 1)).le
  have u191 (m:ℕ) (hm:1 ≤ m):
      u180 m ≤ Math.B699.N23.d135 (7 * m - 1) (4 * m):= by
    have ho:2 * (2 * m - 1) + 1 = 4 * m - 1:= by omega
    have he:2 * (2 * m - 1) + 2 = 4 * m:= by omega
    simpa only [u180,ho,he] using
      u272 (7 * m) (2 * m - 1) (by omega)
  have u197 (x:ℚ) (hx:0 ≤ x):
      387420489 * Math.B699.N9.d26 (x + 1) * (x + 1 + 1) ^ 2 ≤
        52706752 * Math.B699.N9.d92 (x + 1) * (x + 1 + 2) ^ 2:= by
    apply sub_nonneg.mp
    calc
      0 ≤ 4536 * (571279688179200 + x * (5934921560683200 + x * (26936135959813584 + x * (71559088294961936 + x * (124901934643076944 + x * (151647147732416264 + x * (131763299733050175 + x * (82743696764446194 + x * (37332814565395314 + x * (11816367156466236 + x * (2492541097896591 + x * (314790947074170 + x * (18006768636192))))))))))))):= by positivity
      _ = 52706752 * Math.B699.N9.d92 (x + 1) * (x + 1 + 2) ^ 2 -
          387420489 * Math.B699.N9.d26 (x + 1) * (x + 1 + 1) ^ 2:= by
        unfold Math.B699.N9.d92 Math.B699.N9.d26
        ring
  have u195 (x:ℚ) (hx:1 ≤ x):
      u178 * ((x + 1) / (x + 2)) ^ 2 ≤ Math.B699.N9.ratio x:= by
    have hden:0 < Math.B699.N9.d26 x:= u186 x hx
    have hmp:x + 2 ≠ 0:= ne_of_gt (by linarith:0 < x + 2)
    have hcert:= u197 (x - 1) (sub_nonneg.mpr hx)
    have hs:x - 1 + 1 = x:= by ring
    simp only [hs] at hcert
    apply sub_nonneg.mp
    have hid:Math.B699.N9.ratio x - u178 * ((x + 1) / (x + 2)) ^ 2 =
        (52706752 * Math.B699.N9.d92 x * (x + 2) ^ 2 -
          387420489 * Math.B699.N9.d26 x * (x + 1) ^ 2) /
        (52706752 * Math.B699.N9.d26 x * (x + 2) ^ 2):= by
      unfold Math.B699.N9.ratio u178
      field_simp [ne_of_gt hden,hmp]
      <;> ring
    rw [hid]
    exact div_nonneg (sub_nonneg.mpr hcert) (by positivity)
  have u192 (m:ℕ) (hm:1 ≤ m):
      u180 m * (u178 * (((m:ℚ) + 1) / ((m:ℚ) + 2)) ^ 2) ≤
        u180 (m + 1):= by
    rw [u190 m hm]
    exact mul_le_mul_of_nonneg_left
      (u195 (m:ℚ) (by exact_mod_cast hm)) (u185 m).le
  have u196 (x:ℚ) (hx:0 ≤ x):
      55491723087196612863957753449053588269317 * Math.B699.N9.d26 (x + 29) ≤
        7812500000000000000000000000000000000000 * Math.B699.N9.d92 (x + 29):= by
    apply sub_nonneg.mp
    calc
      0 ≤ 8 * (7226922109881597675097176658131795123943811901394182301267200 + x * (27470616272461130970033763513756302700742427915613684210908720 + x * (8869771132277227839753459159696462573549848852666728374459756 + x * (1331986364630748629761904640454340638664406932807116962664668 + x * (119553505316649887308347454466135408059785281327731882861325 + x * (7066475413858819755314416877775885677586635089542271657390 + x * (286909942587512814512888046278346880179486389133278213298 + x * (8097674766300859918165425475593863949542129385748834824 + x * (156815644956091775986989408432421804955947190060513925 + x * (1993736292936908766563111796085322943816865422485790 + x * (15025443763197996025012612215962134889492696719696 + x * (50967041751476875269684475241793944189499835808)))))))))))):= by positivity
      _ = 7812500000000000000000000000000000000000 * Math.B699.N9.d92 (x + 29) -
          55491723087196612863957753449053588269317 * Math.B699.N9.d26 (x + 29):= by
        unfold Math.B699.N9.d92 Math.B699.N9.d26
        ring
  have u193 (x:ℚ) (hx:29 ≤ x):u177 ≤ Math.B699.N9.ratio x:= by
    have hden:0 < Math.B699.N9.d26 x:= u186 x (by linarith)
    have hcert:= u196 (x - 29) (sub_nonneg.mpr hx)
    have hs:x - 29 + 29 = x:= by ring
    simp only [hs] at hcert
    have hmid:u177 =
        (55491723087196612863957753449053588269317:ℚ) / 7812500000000000000000000000000000000000:= by
      norm_num [u177,u175]
    rw [hmid,Math.B699.N9.ratio]
    apply (div_le_div_iff₀ (by norm_num) hden).2
    simpa only [mul_comm (Math.B699.N9.d92 x) (7812500000000000000000000000000000000000:ℚ)] using hcert
  have u194 (m:ℕ) (hm:29 ≤ m):
      u180 m * u177 ≤ u180 (m + 1):= by
    rw [u190 m (by omega)]
    exact mul_le_mul_of_nonneg_left
      (u193 (m:ℚ) (by exact_mod_cast hm)) (u185 m).le
  have u198:
      1 ≤ (u180 1 / u176 * 4 / ((29:ℚ) + 1) ^ 2) * (2:ℚ) ^ 11:= by
    rw [u188]
    norm_num [u176,u174]
  let u251 (F:ℕ → ℚ) (rate:ℚ) (m:ℕ):ℚ:= F m / rate ^ m
  have u252 (F:ℕ → ℚ) (rate:ℚ) (m:ℕ)
      (hrate:0 < rate) (hF:0 < F m):0 < u251 F rate m:=
    div_pos hF (pow_pos hrate m)
  have u253 (F:ℕ → ℚ) (rate inf:ℚ) (m:ℕ)
      (hrate:0 < rate) (hri:rate ≤ inf) (hF:0 ≤ F m)
      (hstep:F m * (inf * (((m:ℚ) + 1) / ((m:ℚ) + 2)) ^ 2) ≤ F (m + 1)):
      u251 F rate m * (1 * (((m:ℚ) + 1) / ((m:ℚ) + 2)) ^ 2) ≤
        u251 F rate (m + 1):= by
    have hcoef:= mul_le_mul_of_nonneg_right hri
      (sq_nonneg ((((m:ℚ) + 1) / ((m:ℚ) + 2))))
    have hsmall:F m * (rate * (((m:ℚ) + 1) / ((m:ℚ) + 2)) ^ 2) ≤ F (m + 1):=
      (mul_le_mul_of_nonneg_left hcoef hF).trans hstep
    have ht:rate ≠ 0:= ne_of_gt hrate
    have hp:rate ^ m ≠ 0:= pow_ne_zero _ ht
    have hd:(m:ℚ) + 2 ≠ 0:= by positivity
    calc
      _ = (F m * (rate * (((m:ℚ) + 1) / ((m:ℚ) + 2)) ^ 2)) / rate ^ (m + 1):= by
        unfold u251
        rw [pow_succ rate m]
        field_simp [ht,hp,hd]
        <;> ring
      _ ≤ F (m + 1) / rate ^ (m + 1):=
        div_le_div_of_nonneg_right hsmall (pow_pos hrate _).le
      _ = u251 F rate (m + 1):= rfl
  have u254 (F:ℕ → ℚ) (rate mid:ℚ) (m:ℕ)
      (hrate:0 < rate) (hstep:F m * mid ≤ F (m + 1)):
      u251 F rate m * (mid / rate) ≤ u251 F rate (m + 1):= by
    have ht:rate ≠ 0:= ne_of_gt hrate
    have hp:rate ^ m ≠ 0:= pow_ne_zero _ ht
    calc
      _ = (F m * mid) / rate ^ (m + 1):= by
        unfold u251
        rw [pow_succ rate m]
        field_simp [ht,hp]
        <;> ring
      _ ≤ F (m + 1) / rate ^ (m + 1):=
        div_le_div_of_nonneg_right hstep (pow_pos hrate _).le
      _ = u251 F rate (m + 1):= rfl
  have u255 (F:ℕ → ℚ) (rate inf mid:ℚ) (K loss B m:ℕ)
      (hrate:0 < rate) (hri:rate ≤ inf) (hF:∀ k:ℕ,0 < F k) (hK:1 ≤ K)
      (hrough:∀ k:ℕ,1 ≤ k →
        F k * (inf * (((k:ℚ) + 1) / ((k:ℚ) + 2)) ^ 2) ≤ F (k + 1))
      (hmiddle:∀ k:ℕ,K ≤ k → F k * mid ≤ F (k + 1))
      (hR:1 ≤ mid / rate)
      (hlinear:2 ≤ 1 + (B:ℚ) * (mid / rate - 1))
      (hbase:1 ≤ (F 1 / rate * 4 / ((K:ℚ) + 1) ^ 2) * (2:ℚ) ^ loss)
      (hm:K + B * (loss + 1) ≤ m):rate ^ m < F m:= by
    have hraw:= u38
      (F:= u251 F rate) (R:= 1) (k0:= 1) (by norm_num)
      (fun k hk => u253 F rate inf k hrate hri (hF k).le (hrough k hk))
      (K - 1)
    have hindexK:1 + (K - 1) = K:= by omega
    have htel:F 1 / rate * 4 / ((K:ℚ) + 1) ^ 2 ≤ u251 F rate K:= by
      simpa only [one_pow,mul_one,hindexK,u251,pow_one,Nat.cast_one,
        show ((1:ℚ) + 1) ^ 2 = 4 by norm_num] using hraw
    have hbaseN:1 ≤ u251 F rate K * (2:ℚ) ^ loss:=
      hbase.trans (mul_le_mul_of_nonneg_right htel (by positivity))
    have hn:B * (loss + 1) ≤ m - K:= by omega
    have h:= u42 (F:= u251 F rate) (R:= mid / rate)
      (K:= K) (T:= loss) (B:= B) (n:= m - K)
      hR (u252 F rate K hrate (hF K)).le
      (fun k hk => u254 F rate mid k hrate (hmiddle k hk))
      hbaseN hlinear hn
    have hindex:K + (m - K) = m:= by omega
    have hgt:1 < u251 F rate m:= by simpa only [hindex] using h
    change 1 < F m / rate ^ m at hgt
    have hmul:= (lt_div_iff₀ (pow_pos hrate m)).mp hgt
    simpa only [one_mul] using hmul
  have u199 (m:ℕ) (hm:149 ≤ m):u174 ^ (7 * m) < u180 m:= by
    have h:= u255
      u180 u176 u178 u177 29 11 10 m
      u181 u182 u185 (by decide)
      (fun k hk => u192 k hk) (fun k hk => u194 k hk)
      u183 u184 u198 (by omega)
    simpa only [u176,← pow_mul] using h
  have u200 (delta m:ℕ)
      (hdelta:delta = 0 ∨ delta = 1) (hm:149 ≤ m):
      (1303943 / 1000000:ℚ) ^ (7 * m) < Math.B699.N23.d135 (7 * m - delta) (4 * m + delta - 1):= by
    rcases hdelta with rfl | rfl
    · simpa only [u174,u180,Nat.sub_zero,Nat.add_zero] using u199 m hm
    · have h:= (u199 m hm).trans_le (u191 m (by omega))
      simpa only [u174,Nat.add_sub_cancel] using h
  have u201 (delta m:ℕ)
      (hdelta:delta = 0 ∨ delta = 1) (hm:149 ≤ m):
      (1303943 / 1000000:ℚ) ^ (7 * m) <
        (Math.B699.N18.qContent (7 * m - delta) (4 * m + delta - 1) (7 * m - delta):ℚ):= by
    exact (u200 delta m hdelta hm).trans_le
      (u1024 (7 * m - delta) (4 * m + delta - 1))
  let u256:ℚ:= 660547 / 500000
  let u257:ℚ:= u256 ^ 5
  let u258:ℚ:= 823543 / 200000
  let u259:ℚ:= u257 / Math.B699.N11.d144
  have u260:0 < Math.B699.N11.d144:= by norm_num [Math.B699.N11.d144,Math.B699.N11.d143]
  have u261:Math.B699.N11.d144 ≤ u258:= by
    norm_num [Math.B699.N11.d144,Math.B699.N11.d143,u258]
  have u262:1 ≤ u259:= by
    norm_num [u259,u257,Math.B699.N11.d144,u256,Math.B699.N11.d143]
  have u263:(2:ℚ) ≤ 1 + 15 * (u259 - 1):= by
    norm_num [u259,u257,Math.B699.N11.d144,u256,Math.B699.N11.d143]
  have u264 (m:ℕ):0 < Math.B699.N11.divisor m:= u1020 _ _
  have u265 (x:ℚ) (hx:1 ≤ x):0 < Math.B699.N11.d26 x:= by
    have hxpos:0 < x:= by linarith
    unfold Math.B699.N11.d26
    positivity
  have u266 (m:ℕ) (hm:1 ≤ m):
      Math.B699.N11.divisor m =
        (((7 * m - 1).factorial:ℕ):ℚ) * (((2 * m - 1).factorial:ℕ):ℚ) /
          ((((5 * m).factorial:ℕ):ℚ) * (((4 * m - 1).factorial:ℕ):ℚ)):= by
    have hf:(4 * m - 1) / 2 = 2 * m - 1:= by omega
    have hn:5 * m + (2 * m - 1) = 7 * m - 1:= by omega
    simp only [Math.B699.N11.divisor,Math.B699.N23.d135,Math.B699.N23.d42,Math.B699.N23.d41,
      hf,hn,Nat.cast_mul]
  have u267:Math.B699.N11.divisor 1 = 1:= by
    norm_num [Math.B699.N11.divisor,Math.B699.N23.d135,Math.B699.N23.d42,Math.B699.N23.d41,Nat.factorial]
  have u268 (k:ℕ):
      Math.B699.N11.divisor (k + 2) = Math.B699.N11.divisor (k + 1) * Math.B699.N11.ratio ((k:ℚ) + 1):= by
    rw [u266 (k + 2) (by omega),u266 (k + 1) (by omega)]
    have hn:7 * (k + 2) - 1 = (7 * (k + 1) - 1) + 7:= by omega
    have hf:2 * (k + 2) - 1 = (2 * (k + 1) - 1) + 2:= by omega
    have hu:5 * (k + 2) = (5 * (k + 1)) + 5:= by omega
    have hv:4 * (k + 2) - 1 = (4 * (k + 1) - 1) + 4:= by omega
    have hn1:(7 * (k + 1) - 1) + 1 = 7 * (k + 1):= by omega
    have hf1:(2 * (k + 1) - 1) + 1 = 2 * (k + 1):= by omega
    have hv1:(4 * (k + 1) - 1) + 1 = 4 * (k + 1):= by omega
    rw [hn,hf,hu,hv,
      Math.B699.N8.d46 (7 * (k + 1) - 1) 7,
      Math.B699.N8.d46 (2 * (k + 1) - 1) 2,
      Math.B699.N8.d46 (5 * (k + 1)) 5,
      Math.B699.N8.d46 (4 * (k + 1) - 1) 4,
      hn1,hf1,hv1]
    simp only [Nat.ascFactorial_succ,Nat.ascFactorial_zero,
      Nat.cast_mul,Nat.cast_add,Nat.cast_one,Nat.cast_ofNat]
    unfold Math.B699.N11.ratio Math.B699.N11.d92 Math.B699.N11.d26
    field_simp
    <;> ring
  have u269 (m:ℕ) (hm:1 ≤ m):
      Math.B699.N11.divisor (m + 1) = Math.B699.N11.divisor m * Math.B699.N11.ratio (m:ℚ):= by
    obtain ⟨k,rfl⟩:∃ k,m = k + 1:= Nat.exists_eq_add_of_le' hm
    simpa only [Nat.cast_add,Nat.cast_one] using u268 k
  have u270 (m:ℕ) (hm:1 ≤ m):
      Math.B699.N11.divisor m ≤ Math.B699.N23.d135 (5 * m - 1) (4 * m):= by
    have ho:2 * (2 * m - 1) + 1 = 4 * m - 1:= by omega
    have he:2 * (2 * m - 1) + 2 = 4 * m:= by omega
    simpa only [Math.B699.N11.divisor,ho,he] using
      u272 (5 * m) (2 * m - 1) (by omega)
  have u278 (x:ℚ) (hx:0 ≤ x):
      823543 * Math.B699.N11.d26 (x + 1) * (x + 1 + 1) ^ 2 ≤
        200000 * Math.B699.N11.d92 (x + 1) * (x + 1 + 2) ^ 2:= by
    apply sub_nonneg.mp
    calc
      0 ≤ 280 * (34743116160 + x * (311831874288 + x * (1182975546528 + x * (2545550033552 + x * (3476878706540 + x * (3169740079477 + x * (1961292435907 + x * (815487285193 + x * (218446881625 + x * (34080394250 + x * (2352980000))))))))))):= by positivity
      _ = 200000 * Math.B699.N11.d92 (x + 1) * (x + 1 + 2) ^ 2 -
          823543 * Math.B699.N11.d26 (x + 1) * (x + 1 + 1) ^ 2:= by
        unfold Math.B699.N11.d92 Math.B699.N11.d26
        ring
  have u276 (x:ℚ) (hx:1 ≤ x):
      u258 * ((x + 1) / (x + 2)) ^ 2 ≤ Math.B699.N11.ratio x:= by
    have hden:0 < Math.B699.N11.d26 x:= u265 x hx
    have hmp:x + 2 ≠ 0:= ne_of_gt (by linarith:0 < x + 2)
    have hcert:= u278 (x - 1) (sub_nonneg.mpr hx)
    have hs:x - 1 + 1 = x:= by ring
    simp only [hs] at hcert
    apply sub_nonneg.mp
    have hid:Math.B699.N11.ratio x - u258 * ((x + 1) / (x + 2)) ^ 2 =
        (200000 * Math.B699.N11.d92 x * (x + 2) ^ 2 -
          823543 * Math.B699.N11.d26 x * (x + 1) ^ 2) /
        (200000 * Math.B699.N11.d26 x * (x + 2) ^ 2):= by
      unfold Math.B699.N11.ratio u258
      field_simp [ne_of_gt hden,hmp]
      <;> ring
    rw [hid]
    exact div_nonneg (sub_nonneg.mpr hcert) (by positivity)
  have u273 (m:ℕ) (hm:1 ≤ m):
      Math.B699.N11.divisor m * (u258 * (((m:ℚ) + 1) / ((m:ℚ) + 2)) ^ 2) ≤
        Math.B699.N11.divisor (m + 1):= by
    rw [u269 m hm]
    exact mul_le_mul_of_nonneg_left
      (u276 (m:ℚ) (by exact_mod_cast hm)) (u264 m).le
  have u277 (x:ℚ) (hx:0 ≤ x):
      125753077556736983843483347507 * Math.B699.N11.d26 (x + 44) ≤
        31250000000000000000000000000 * Math.B699.N11.d92 (x + 44):= by
    apply sub_nonneg.mp
    calc
      0 ≤ 40 * (888990068964266031222412587094676826041752320 + x * (1049907701632704461760931593102015037856855496 + x * (172804445017786172780861565916462523721247850 + x * (13184792740869286998683247713790279231268815 + x * (583821996052614144233518347071584266586965 + x * (16260558498122644149413365137112662146499 + x * (290787678779857519193466249948595121625 + x * (3256172179982886255755021529086472750 + x * (20859812833036759413698386468930000 + x * (58510323865260323130333049860000)))))))))):= by positivity
      _ = 31250000000000000000000000000 * Math.B699.N11.d92 (x + 44) -
          125753077556736983843483347507 * Math.B699.N11.d26 (x + 44):= by
        unfold Math.B699.N11.d92 Math.B699.N11.d26
        ring
  have u274 (x:ℚ) (hx:44 ≤ x):u257 ≤ Math.B699.N11.ratio x:= by
    have hden:0 < Math.B699.N11.d26 x:= u265 x (by linarith)
    have hcert:= u277 (x - 44) (sub_nonneg.mpr hx)
    have hs:x - 44 + 44 = x:= by ring
    simp only [hs] at hcert
    have hmid:u257 =
        (125753077556736983843483347507:ℚ) / 31250000000000000000000000000:= by
      norm_num [u257,u256]
    rw [hmid,Math.B699.N11.ratio]
    apply (div_le_div_iff₀ (by norm_num) hden).2
    simpa only [mul_comm (Math.B699.N11.d92 x) (31250000000000000000000000000:ℚ)] using hcert
  have u275 (m:ℕ) (hm:44 ≤ m):
      Math.B699.N11.divisor m * u257 ≤ Math.B699.N11.divisor (m + 1):= by
    rw [u269 m (by omega)]
    exact mul_le_mul_of_nonneg_left
      (u274 (m:ℚ) (by exact_mod_cast hm)) (u264 m).le
  have u279 (m:ℕ):0 < Math.B699.N11.d91 m:=
    div_pos (u264 m) (pow_pos u260 m)
  have u280 (m:ℕ) (hm:1 ≤ m):
      Math.B699.N11.d91 m * (1 * (((m:ℚ) + 1) / ((m:ℚ) + 2)) ^ 2) ≤
        Math.B699.N11.d91 (m + 1):= by
    have hcoef:= mul_le_mul_of_nonneg_right u261
      (sq_nonneg ((((m:ℚ) + 1) / ((m:ℚ) + 2))))
    have hstep:Math.B699.N11.divisor m *
        (Math.B699.N11.d144 * (((m:ℚ) + 1) / ((m:ℚ) + 2)) ^ 2) ≤ Math.B699.N11.divisor (m + 1):=
      (mul_le_mul_of_nonneg_left hcoef (u264 m).le).trans (u273 m hm)
    have ht:Math.B699.N11.d144 ≠ 0:= ne_of_gt u260
    have hp:Math.B699.N11.d144 ^ m ≠ 0:= pow_ne_zero _ ht
    have hd:(m:ℚ) + 2 ≠ 0:= by positivity
    calc
      _ = (Math.B699.N11.divisor m * (Math.B699.N11.d144 * (((m:ℚ) + 1) / ((m:ℚ) + 2)) ^ 2)) /
          Math.B699.N11.d144 ^ (m + 1):= by
        unfold Math.B699.N11.d91
        rw [pow_succ Math.B699.N11.d144 m]
        field_simp [ht,hp,hd]
        <;> ring
      _ ≤ Math.B699.N11.divisor (m + 1) / Math.B699.N11.d144 ^ (m + 1):=
        div_le_div_of_nonneg_right hstep (pow_pos u260 _).le
      _ = Math.B699.N11.d91 (m + 1):= rfl
  have u281 (m:ℕ) (hm:44 ≤ m):
      Math.B699.N11.d91 m * u259 ≤ Math.B699.N11.d91 (m + 1):= by
    have ht:Math.B699.N11.d144 ≠ 0:= ne_of_gt u260
    have hp:Math.B699.N11.d144 ^ m ≠ 0:= pow_ne_zero _ ht
    calc
      _ = (Math.B699.N11.divisor m * u257) / Math.B699.N11.d144 ^ (m + 1):= by
        unfold Math.B699.N11.d91 u259
        rw [pow_succ Math.B699.N11.d144 m]
        field_simp [ht,hp]
        <;> ring
      _ ≤ Math.B699.N11.divisor (m + 1) / Math.B699.N11.d144 ^ (m + 1):=
        div_le_div_of_nonneg_right (u275 m hm) (pow_pos u260 _).le
      _ = Math.B699.N11.d91 (m + 1):= rfl
  have u282:
      1 ≤ (Math.B699.N11.d91 1 * ((1:ℚ) + 1) ^ 2 / ((44:ℚ) + 1) ^ 2) * (2:ℚ) ^ 11:= by
    rw [Math.B699.N11.d91,u267]
    norm_num [Math.B699.N11.d144,Math.B699.N11.d143]
  have u283:1 ≤ Math.B699.N11.d91 44 * (2:ℚ) ^ 11:= by
    have h:= u38 (F:= Math.B699.N11.d91) (R:= 1) (k0:= 1)
      (by norm_num) (fun m hm => u280 m hm) 43
    have htel:Math.B699.N11.d91 1 * ((1:ℚ) + 1) ^ 2 / ((44:ℚ) + 1) ^ 2 ≤ Math.B699.N11.d91 44:= by
      simpa only [one_pow,mul_one,Nat.cast_one,Nat.cast_ofNat,
        show (1:ℕ) + 43 = 44 by decide] using h
    exact u282.trans (mul_le_mul_of_nonneg_right htel (by positivity))
  have u284 (m:ℕ) (hm:224 ≤ m):1 < Math.B699.N11.d91 m:= by
    have hn:15 * (11 + 1) ≤ m - 44:= by omega
    have h:= u42 (F:= Math.B699.N11.d91) (R:= u259)
      (K:= 44) (T:= 11) (B:= 15) (n:= m - 44)
      u262 (u279 44).le
      (fun k hk => u281 k hk)
      u283 u263 hn
    have hindex:44 + (m - 44) = m:= by omega
    simpa only [hindex] using h
  have u285 (m:ℕ) (hm:224 ≤ m):Math.B699.N11.d143 ^ (5 * m) < Math.B699.N11.divisor m:= by
    have h:= u284 m hm
    change 1 < Math.B699.N11.divisor m / Math.B699.N11.d144 ^ m at h
    have hmul:= (lt_div_iff₀ (pow_pos u260 m)).mp h
    simpa only [one_mul,Math.B699.N11.d144,← pow_mul] using hmul
  have u286 (delta m:ℕ)
      (hdelta:delta = 0 ∨ delta = 1) (hm:224 ≤ m):
      (1302991 / 1000000:ℚ) ^ (5 * m) <
        Math.B699.N23.d135 (5 * m - delta) (4 * m + delta - 1):= by
    rcases hdelta with rfl | rfl
    · simpa only [Math.B699.N11.d143,Math.B699.N11.divisor,Nat.sub_zero,Nat.add_zero] using u285 m hm
    · have h:= (u285 m hm).trans_le (u270 m (by omega))
      simpa only [Math.B699.N11.d143,Nat.add_sub_cancel] using h
  have u287 (delta m:ℕ)
      (hdelta:delta = 0 ∨ delta = 1) (hm:224 ≤ m):
      (1302991 / 1000000:ℚ) ^ (5 * m) <
        (Math.B699.N18.qContent (5 * m - delta) (4 * m + delta - 1) (5 * m - delta):ℚ):= by
    exact (u286 delta m hdelta hm).trans_le
      (u1024 (5 * m - delta) (4 * m + delta - 1))
  let u288:ℚ:= 41069 / 31250
  let u289:ℚ:= 132309 / 100000
  let u290:ℚ:= u288 ^ 15
  let u291:ℚ:= u289 ^ 15
  let u292:ℚ:= 1978419655660313589123979 / 28697814000000000000000
  let u293:ℚ:= u291 / u290
  let u294 (m:ℕ):ℚ:= Math.B699.N23.d135 (15 * m) (8 * m - 1)
  have u295:0 < u290:= by norm_num [u290,u288]
  have u296:u290 ≤ u292:= by
    norm_num [u290,u288,u292]
  have u297:1 ≤ u293:= by
    norm_num [u293,u291,u290,u289,u288]
  have u298:(2:ℚ) ≤ 1 + 10 * (u293 - 1):= by
    norm_num [u293,u291,u290,u289,u288]
  have u299 (m:ℕ):0 < u294 m:= u1020 _ _
  have u300 (x:ℚ) (hx:1 ≤ x):0 < Math.B699.N12.d26 x:= by
    have hxpos:0 < x:= by linarith
    unfold Math.B699.N12.d26
    positivity
  have u301 (m:ℕ) (hm:1 ≤ m):
      u294 m =
        (((19 * m - 1).factorial:ℕ):ℚ) * (((4 * m - 1).factorial:ℕ):ℚ) /
          ((((15 * m).factorial:ℕ):ℚ) * (((8 * m - 1).factorial:ℕ):ℚ)):= by
    have hf:(8 * m - 1) / 2 = 4 * m - 1:= by omega
    have hn:15 * m + (4 * m - 1) = 19 * m - 1:= by omega
    simp only [u294,Math.B699.N23.d135,Math.B699.N23.d42,Math.B699.N23.d41,
      hf,hn,Nat.cast_mul]
  have u302:u294 1 = (204 / 35:ℚ):= by
    norm_num [u294,Math.B699.N23.d135,Math.B699.N23.d42,Math.B699.N23.d41,Nat.factorial]
  have u303 (k:ℕ):
      u294 (k + 2) = u294 (k + 1) * Math.B699.N12.ratio ((k:ℚ) + 1):= by
    rw [u301 (k + 2) (by omega),u301 (k + 1) (by omega)]
    have hn:19 * (k + 2) - 1 = (19 * (k + 1) - 1) + 19:= by omega
    have hf:4 * (k + 2) - 1 = (4 * (k + 1) - 1) + 4:= by omega
    have hu:15 * (k + 2) = (15 * (k + 1)) + 15:= by omega
    have hv:8 * (k + 2) - 1 = (8 * (k + 1) - 1) + 8:= by omega
    have hn1:(19 * (k + 1) - 1) + 1 = 19 * (k + 1):= by omega
    have hf1:(4 * (k + 1) - 1) + 1 = 4 * (k + 1):= by omega
    have hv1:(8 * (k + 1) - 1) + 1 = 8 * (k + 1):= by omega
    rw [hn,hf,hu,hv,
      Math.B699.N8.d46 (19 * (k + 1) - 1) 19,
      Math.B699.N8.d46 (4 * (k + 1) - 1) 4,
      Math.B699.N8.d46 (15 * (k + 1)) 15,
      Math.B699.N8.d46 (8 * (k + 1) - 1) 8,
      hn1,hf1,hv1]
    simp only [Nat.ascFactorial_succ,Nat.ascFactorial_zero,
      Nat.cast_mul,Nat.cast_add,Nat.cast_one,Nat.cast_ofNat]
    unfold Math.B699.N12.ratio Math.B699.N12.d92 Math.B699.N12.d26
    field_simp
    <;> ring
  have u304 (m:ℕ) (hm:1 ≤ m):
      u294 (m + 1) = u294 m * Math.B699.N12.ratio (m:ℚ):= by
    obtain ⟨k,rfl⟩:∃ k,m = k + 1:= Nat.exists_eq_add_of_le' hm
    simpa only [Nat.cast_add,Nat.cast_one] using u303 k
  have u305 (m:ℕ) (hm:1 ≤ m):
      u294 m ≤ Math.B699.N23.d135 (15 * m - 1) (8 * m):= by
    have ho:2 * (4 * m - 1) + 1 = 8 * m - 1:= by omega
    have he:2 * (4 * m - 1) + 2 = 8 * m:= by omega
    simpa only [u294,ho,he] using
      u272 (15 * m) (4 * m - 1) (by omega)
  have u311 (x:ℚ) (hx:0 ≤ x):
      1978419655660313589123979 * Math.B699.N12.d26 (x + 1) * (x + 1 + 1) ^ 2 ≤
        28697814000000000000000 * Math.B699.N12.d92 (x + 1) * (x + 1 + 2) ^ 2:= by
    apply sub_nonneg.mp
    calc
      0 ≤ 73872000 * (675699554996971565817227337458512392536064000 + x * (12551477065389233118015181024412561499697766400 + x * (110178114840236997968340549856127000382194365440 + x * (609560653394404120004625125147521983558653458944 + x * (2390103497679252740344983664920562906954790475456 + x * (7077408119955490412436529713096863298710595158720 + x * (16460769599474269447505914331622525471627569133392 + x * (30867904973236140454589702237327885264342754008544 + x * (47525472821924305526767448926575800967220466463700 + x * (60850184241810051987891010188112425397077203391532 + x * (65371811112000024055786247925977557949072311904823 + x * (59278105501151188553971960361026950330786610678042 + x * (45528523158101676541447168356012321068845797642124 + x * (29656186885900832892732356824045172779859052946128 + x * (16369386797407212401800809438192359084950326382250 + x * (7633621787592381729509256026047702357160988693500 + x * (2991209102674909950479524161502716024468976215000 + x * (976659006833281014421583207116803376572278872500 + x * (262502917384596113582178616572331821035137734375 + x * (57075485231761043250711072287042955153777656250 + x * (9788018845466899461166733318513665134093750000 + x * (1274257858279675397507418298317645062587500000 + x * (118336394800617475432417352309796300000000000 + x * (6983008256194585323836436789006600000000000 + x * (196755709047723548840727302688000000000000))))))))))))))))))))))))):= by positivity
      _ = 28697814000000000000000 * Math.B699.N12.d92 (x + 1) * (x + 1 + 2) ^ 2 -
          1978419655660313589123979 * Math.B699.N12.d26 (x + 1) * (x + 1 + 1) ^ 2:= by
        unfold Math.B699.N12.d92 Math.B699.N12.d26
        ring
  have u309 (x:ℚ) (hx:1 ≤ x):
      u292 * ((x + 1) / (x + 2)) ^ 2 ≤ Math.B699.N12.ratio x:= by
    have hden:0 < Math.B699.N12.d26 x:= u300 x hx
    have hmp:x + 2 ≠ 0:= ne_of_gt (by linarith:0 < x + 2)
    have hcert:= u311 (x - 1) (sub_nonneg.mpr hx)
    have hs:x - 1 + 1 = x:= by ring
    simp only [hs] at hcert
    apply sub_nonneg.mp
    have hid:Math.B699.N12.ratio x - u292 * ((x + 1) / (x + 2)) ^ 2 =
        (28697814000000000000000 * Math.B699.N12.d92 x * (x + 2) ^ 2 -
          1978419655660313589123979 * Math.B699.N12.d26 x * (x + 1) ^ 2) /
        (28697814000000000000000 * Math.B699.N12.d26 x * (x + 2) ^ 2):= by
      unfold Math.B699.N12.ratio u292
      field_simp [ne_of_gt hden,hmp]
      <;> ring
    rw [hid]
    exact div_nonneg (sub_nonneg.mpr hcert) (by positivity)
  have u306 (m:ℕ) (hm:1 ≤ m):
      u294 m * (u292 * (((m:ℚ) + 1) / ((m:ℚ) + 2)) ^ 2) ≤
        u294 (m + 1):= by
    rw [u304 m hm]
    exact mul_le_mul_of_nonneg_left
      (u309 (m:ℚ) (by exact_mod_cast hm)) (u299 m).le
  have u310 (x:ℚ) (hx:0 ≤ x):
      66656238986904247241148750605161976377727974838251688265049756597279540249149 * Math.B699.N12.d26 (x + 30) ≤
        1000000000000000000000000000000000000000000000000000000000000000000000000000 * Math.B699.N12.d92 (x + 30):= by
    apply sub_nonneg.mp
    calc
      0 ≤ 16000 * (372420896844984971058405833797184070374088400228185973465179278571759700483743740212333817487108338549142221615562047359222579200 + x * (734198576596523963923182577474492579869770988152507804454379118891411859092272411315420887464078238264882142882010248653991249920 + x * (428564677072324184820080674549187660383862036107426690297028317275262565789267548769907828191349196714461137772523614190810526976 + x * (136006763921231157095427600930607496707409171552666426329333431037107418324788053360483789632570857337023100155801996252432704640 + x * (28477827570402163342658762611858698495771636923743531486641901095721427172147231709213090035591803852176668459822187115956668912 + x * (4319452851297762231007442870775706572479275750840313010176055903489376603298501956722059928377631542149190916579162141988658976 + x * (500858885812157820427191344927689586256538605480268649614889893898097996024744640022444288351732653375684650987822634249319736 + x * (45941603371224223508628875968174226377221200474949491709600447541161334832921692728009419949959058777407643777603635909914104 + x * (3410595470091701375724006145306316144917952257369562601487935279960726228047941294615458118873868682114619013531453600317263 + x * (208155181828818474651061631122304867491382424489806268592630015294590340445748357678531075274755644061214984948225597966454 + x * (10556105937209507718749847479650739205231623071489696445992976263253524356547830059273641269269868724089222098340891857988 + x * (447892251472968288898805428105718507734840557729989814137864511531836454352325659779582448824221630292275859863740936456 + x * (15961097609144600712416134656087321868192069493468503315392420486713962700964138741144819103320014047734682079150294250 + x * (478260184365543283129166310680058090950699719829803293436685125903529360265107669432785386274940004813591303973744500 + x * (12032038929628559872299368198552021734851503743830140996477747255799566074172450730582544296868814208092989398337500 + x * (253078512103494405415401517919609538845355947093907960658399250115595293684060024372927448140247223610376559870000 + x * (4417786801481382227824664318521352452376273375476611773520479589670613854291738496804054062645420932242053359375 + x * (63278559139486963085923049570449266669660310953491518584663961046308673655656484244602735757907252379949843750 + x * (731366820327909923054148430786671903082056421919642312720752734670763905884670744870464467644057303443750000 + x * (6654194031828095566420676305576868889341824071131354042251093093900223677194773558065541738453383612500000 + x * (45892097463861955569076769343627609486937936392742457515524704658833101624655894806617466514100000000000 + x * (225542297961420249834674832827139066900967114352555735629053279780349750613314802761807764200000000000 + x * (703868678359400211217480730778766794732120609597821358976143970797411069103559204949936000000000000 + x * (1048500916393393055799664140810786592633101367922767439737910150815981566790533435424000000000000)))))))))))))))))))))))):= by positivity
      _ = 1000000000000000000000000000000000000000000000000000000000000000000000000000 * Math.B699.N12.d92 (x + 30) -
          66656238986904247241148750605161976377727974838251688265049756597279540249149 * Math.B699.N12.d26 (x + 30):= by
        unfold Math.B699.N12.d92 Math.B699.N12.d26
        ring
  have u307 (x:ℚ) (hx:30 ≤ x):u291 ≤ Math.B699.N12.ratio x:= by
    have hden:0 < Math.B699.N12.d26 x:= u300 x (by linarith)
    have hcert:= u310 (x - 30) (sub_nonneg.mpr hx)
    have hs:x - 30 + 30 = x:= by ring
    simp only [hs] at hcert
    have hmid:u291 =
        (66656238986904247241148750605161976377727974838251688265049756597279540249149:ℚ) / 1000000000000000000000000000000000000000000000000000000000000000000000000000:= by
      norm_num [u291,u289]
    rw [hmid,Math.B699.N12.ratio]
    apply (div_le_div_iff₀ (by norm_num) hden).2
    simpa only [mul_comm (Math.B699.N12.d92 x) (1000000000000000000000000000000000000000000000000000000000000000000000000000:ℚ)] using hcert
  have u308 (m:ℕ) (hm:30 ≤ m):
      u294 m * u291 ≤ u294 (m + 1):= by
    rw [u304 m (by omega)]
    exact mul_le_mul_of_nonneg_left
      (u307 (m:ℚ) (by exact_mod_cast hm)) (u299 m).le
  have u312:
      1 ≤ (u294 1 / u290 * 4 / ((30:ℚ) + 1) ^ 2) * (2:ℚ) ^ 12:= by
    rw [u302]
    norm_num [u290,u288]
  have u313 (m:ℕ) (hm:160 ≤ m):u288 ^ (15 * m) < u294 m:= by
    have h:= u255
      u294 u290 u292 u291 30 12 10 m
      u295 u296 u299 (by decide)
      (fun k hk => u306 k hk) (fun k hk => u308 k hk)
      u297 u298 u312 (by omega)
    simpa only [u290,← pow_mul] using h
  have u314 (delta m:ℕ)
      (hdelta:delta = 0 ∨ delta = 1) (hm:160 ≤ m):
      (41069 / 31250:ℚ) ^ (15 * m) < Math.B699.N23.d135 (15 * m - delta) (8 * m + delta - 1):= by
    rcases hdelta with rfl | rfl
    · simpa only [u288,u294,Nat.sub_zero,Nat.add_zero] using u313 m hm
    · have h:= (u313 m hm).trans_le (u305 m (by omega))
      simpa only [u288,Nat.add_sub_cancel] using h
  have u315 (delta m:ℕ)
      (hdelta:delta = 0 ∨ delta = 1) (hm:160 ≤ m):
      (41069 / 31250:ℚ) ^ (15 * m) <
        (Math.B699.N18.qContent (15 * m - delta) (8 * m + delta - 1) (15 * m - delta):ℚ):= by
    exact (u314 delta m hdelta hm).trans_le
      (u1024 (15 * m - delta) (8 * m + delta - 1))
  have u316 (t:Math.B699.N13.Track) (k:ℕ):
      Math.B699.N13.divisor t k = Math.B699.N23.d135 (4 * (2 * k + Math.B699.N13.rho t) - Math.B699.N13.delta t)
        (2 * k + Math.B699.N13.rho t + Math.B699.N13.delta t - 1):= by
    cases t <;> dsimp only [Math.B699.N13.divisor,Math.B699.N13.rho,Math.B699.N13.delta] <;> congr 1 <;> omega
  have u317 (k:ℕ) (hk:1 ≤ k):
      Math.B699.N13.divisor .evenZero k =
        (((9 * k - 1).factorial:ℕ):ℚ) * (((k - 1).factorial:ℕ):ℚ) /
          ((((8 * k).factorial:ℕ):ℚ) * (((2 * k - 1).factorial:ℕ):ℚ)):= by
    have hf:(2 * k - 1) / 2 = k - 1:= by omega
    have hn:(8 * k) + (k - 1) = 9 * k - 1:= by omega
    simp only [Math.B699.N13.divisor,Math.B699.N23.d135,Math.B699.N23.d42,Math.B699.N23.d41,
      hf,hn,Nat.cast_mul]
  have u318 (k:ℕ) (hk:1 ≤ k):
      Math.B699.N13.divisor .evenOne k =
        (((9 * k - 1).factorial:ℕ):ℚ) * (((k).factorial:ℕ):ℚ) /
          ((((8 * k - 1).factorial:ℕ):ℚ) * (((2 * k).factorial:ℕ):ℚ)):= by
    have hf:(2 * k) / 2 = k:= by omega
    have hn:(8 * k - 1) + (k) = 9 * k - 1:= by omega
    simp only [Math.B699.N13.divisor,Math.B699.N23.d135,Math.B699.N23.d42,Math.B699.N23.d41,
      hf,hn,Nat.cast_mul]
  have u319 (k:ℕ) (hk:0 ≤ k):
      Math.B699.N13.divisor .oddZero k =
        (((9 * k + 4).factorial:ℕ):ℚ) * (((k).factorial:ℕ):ℚ) /
          ((((8 * k + 4).factorial:ℕ):ℚ) * (((2 * k).factorial:ℕ):ℚ)):= by
    have hf:(2 * k) / 2 = k:= by omega
    have hn:(8 * k + 4) + (k) = 9 * k + 4:= by omega
    simp only [Math.B699.N13.divisor,Math.B699.N23.d135,Math.B699.N23.d42,Math.B699.N23.d41,
      hf,hn,Nat.cast_mul]
  have u320 (k:ℕ) (hk:0 ≤ k):
      Math.B699.N13.divisor .oddOne k =
        (((9 * k + 3).factorial:ℕ):ℚ) * (((k).factorial:ℕ):ℚ) /
          ((((8 * k + 3).factorial:ℕ):ℚ) * (((2 * k + 1).factorial:ℕ):ℚ)):= by
    have hf:(2 * k + 1) / 2 = k:= by omega
    have hn:(8 * k + 3) + (k) = 9 * k + 3:= by omega
    simp only [Math.B699.N13.divisor,Math.B699.N23.d135,Math.B699.N23.d42,Math.B699.N23.d41,
      hf,hn,Nat.cast_mul]
  have u321 (t:Math.B699.N13.Track):Math.B699.N13.divisor t (Math.B699.N13.kMin t) = Math.B699.N13.d64 t:= by
    cases t <;> norm_num [Math.B699.N13.divisor,Math.B699.N13.kMin,Math.B699.N13.d64,Math.B699.N23.d135,
      Math.B699.N23.d42,Math.B699.N23.d41,Nat.factorial]
  have u322 (k:ℕ):
      Math.B699.N13.divisor .evenZero (k + 2) = Math.B699.N13.divisor .evenZero (k + 1) * Math.B699.N13.ratio .evenZero ((k:ℚ) + 1):= by
    rw [u317 (k + 2) (by omega),u317 (k + 1) (by omega)]
    have hn:9 * (k + 2) - 1 = (9 * (k + 1) - 1) + 9:= by omega
    have hf:(k + 2) - 1 = ((k + 1) - 1) + 1:= by omega
    have hu:8 * (k + 2) = (8 * (k + 1)) + 8:= by omega
    have hv:2 * (k + 2) - 1 = (2 * (k + 1) - 1) + 2:= by omega
    have hn1:(9 * (k + 1) - 1) + 1 = 9 * (k + 1):= by omega
    have hf1:((k + 1) - 1) + 1 = (k + 1):= by omega
    have hv1:(2 * (k + 1) - 1) + 1 = 2 * (k + 1):= by omega
    rw [hn,
      hf,
      hu,
      hv,
      Math.B699.N8.d46 (9 * (k + 1) - 1) 9,
      Math.B699.N8.d46 ((k + 1) - 1) 1,
      Math.B699.N8.d46 (8 * (k + 1)) 8,
      Math.B699.N8.d46 (2 * (k + 1) - 1) 2,
      hn1,
      hf1,
      hv1]
    simp only [Nat.ascFactorial_succ,Nat.ascFactorial_zero,
      Nat.cast_mul,Nat.cast_add,Nat.cast_one,Nat.cast_ofNat]
    unfold Math.B699.N13.ratio Math.B699.N13.d92 Math.B699.N13.d26
    field_simp
    <;> ring
  have u323 (k:ℕ):
      Math.B699.N13.divisor .evenOne (k + 2) = Math.B699.N13.divisor .evenOne (k + 1) * Math.B699.N13.ratio .evenOne ((k:ℚ) + 1):= by
    rw [u318 (k + 2) (by omega),u318 (k + 1) (by omega)]
    have hn:9 * (k + 2) - 1 = (9 * (k + 1) - 1) + 9:= by omega
    have hf:(k + 2) = ((k + 1)) + 1:= by omega
    have hu:8 * (k + 2) - 1 = (8 * (k + 1) - 1) + 8:= by omega
    have hv:2 * (k + 2) = (2 * (k + 1)) + 2:= by omega
    have hn1:(9 * (k + 1) - 1) + 1 = 9 * (k + 1):= by omega
    have hu1:(8 * (k + 1) - 1) + 1 = 8 * (k + 1):= by omega
    rw [hn,
      hf,
      hu,
      hv,
      Math.B699.N8.d46 (9 * (k + 1) - 1) 9,
      Math.B699.N8.d46 ((k + 1)) 1,
      Math.B699.N8.d46 (8 * (k + 1) - 1) 8,
      Math.B699.N8.d46 (2 * (k + 1)) 2,
      hn1,
      hu1]
    simp only [Nat.ascFactorial_succ,Nat.ascFactorial_zero,
      Nat.cast_mul,Nat.cast_add,Nat.cast_one,Nat.cast_ofNat]
    unfold Math.B699.N13.ratio Math.B699.N13.d92 Math.B699.N13.d26
    field_simp
    <;> ring
  have u324 (k:ℕ):
      Math.B699.N13.divisor .oddZero (k + 1) = Math.B699.N13.divisor .oddZero k * Math.B699.N13.ratio .oddZero (k:ℚ):= by
    rw [u319 (k + 1) (by omega),u319 k (by omega)]
    have hn:9 * (k + 1) + 4 = (9 * k + 4) + 9:= by omega
    have hf:(k + 1) = (k) + 1:= by omega
    have hu:8 * (k + 1) + 4 = (8 * k + 4) + 8:= by omega
    have hv:2 * (k + 1) = (2 * k) + 2:= by omega
    rw [hn,
      hf,
      hu,
      hv,
      Math.B699.N8.d46 (9 * k + 4) 9,
      Math.B699.N8.d46 (k) 1,
      Math.B699.N8.d46 (8 * k + 4) 8,
      Math.B699.N8.d46 (2 * k) 2]
    simp only [Nat.ascFactorial_succ,Nat.ascFactorial_zero,
      Nat.cast_mul,Nat.cast_add,Nat.cast_one,Nat.cast_ofNat]
    unfold Math.B699.N13.ratio Math.B699.N13.d92 Math.B699.N13.d26
    field_simp
    <;> ring
  have u325 (k:ℕ):
      Math.B699.N13.divisor .oddOne (k + 1) = Math.B699.N13.divisor .oddOne k * Math.B699.N13.ratio .oddOne (k:ℚ):= by
    rw [u320 (k + 1) (by omega),u320 k (by omega)]
    have hn:9 * (k + 1) + 3 = (9 * k + 3) + 9:= by omega
    have hf:(k + 1) = (k) + 1:= by omega
    have hu:8 * (k + 1) + 3 = (8 * k + 3) + 8:= by omega
    have hv:2 * (k + 1) + 1 = (2 * k + 1) + 2:= by omega
    rw [hn,
      hf,
      hu,
      hv,
      Math.B699.N8.d46 (9 * k + 3) 9,
      Math.B699.N8.d46 (k) 1,
      Math.B699.N8.d46 (8 * k + 3) 8,
      Math.B699.N8.d46 (2 * k + 1) 2]
    simp only [Nat.ascFactorial_succ,Nat.ascFactorial_zero,
      Nat.cast_mul,Nat.cast_add,Nat.cast_one,Nat.cast_ofNat]
    unfold Math.B699.N13.ratio Math.B699.N13.d92 Math.B699.N13.d26
    field_simp
    <;> ring
  have u326 (t:Math.B699.N13.Track) (k:ℕ) (hk:Math.B699.N13.kMin t ≤ k):
      Math.B699.N13.divisor t (k + 1) = Math.B699.N13.divisor t k * Math.B699.N13.ratio t (k:ℚ):= by
    cases t
    · obtain ⟨j,rfl⟩:∃ j,k = j + 1:= Nat.exists_eq_add_of_le' hk
      simpa only [Nat.cast_add,Nat.cast_one] using u322 j
    · obtain ⟨j,rfl⟩:∃ j,k = j + 1:= Nat.exists_eq_add_of_le' hk
      simpa only [Nat.cast_add,Nat.cast_one] using u323 j
    · exact u324 k
    · exact u325 k
  let u327:ℚ:= 1235039 / 1000000
  let u328:ℚ:= u327 ^ 8
  let u329:ℚ:= 387420489 / 67108864
  let u330:ℚ:= u328 / Math.B699.N13.d144
  have u331:0 < Math.B699.N13.d143:= by norm_num [Math.B699.N13.d143]
  have u332:0 < Math.B699.N13.d144:= by norm_num [Math.B699.N13.d144,Math.B699.N13.d143]
  have u333:Math.B699.N13.d144 ≤ u329:= by
    norm_num [Math.B699.N13.d144,Math.B699.N13.d143,u329]
  have u334:1 ≤ u330:= by
    norm_num [u330,u328,Math.B699.N13.d144,u327,Math.B699.N13.d143]
  have u335:(2:ℚ) ≤ 1 + 5 * (u330 - 1):= by
    norm_num [u330,u328,Math.B699.N13.d144,u327,Math.B699.N13.d143]
  have u336 (t:Math.B699.N13.Track):Math.B699.N13.kMin t ≤ Math.B699.N13.cutoff t:= by cases t <;> decide
  have u337 (t:Math.B699.N13.Track) (k:ℕ):0 < Math.B699.N13.divisor t k:= by
    cases t <;> exact u1020 _ _
  have u338 (t:Math.B699.N13.Track) (x:ℚ) (hx:(Math.B699.N13.kMin t:ℚ) ≤ x):
      0 < Math.B699.N13.d26 t x:= by
    cases t <;> simp only [Math.B699.N13.kMin,Nat.cast_zero,Nat.cast_one] at hx
    · have hpos:0 < x:= by linarith
      unfold Math.B699.N13.d26
      positivity
    · have hpos:0 < x:= by linarith
      unfold Math.B699.N13.d26
      positivity
    · unfold Math.B699.N13.d26
      positivity
    · unfold Math.B699.N13.d26
      positivity
  have u344 (t:Math.B699.N13.Track) (x:ℚ) (hx:0 ≤ x):
      387420489 * Math.B699.N13.d26 t (x + (Math.B699.N13.kMin t:ℚ)) * (x + (Math.B699.N13.kMin t:ℚ) + 1) ^ 2 ≤
        67108864 * Math.B699.N13.d92 t (x + (Math.B699.N13.kMin t:ℚ)) * (x + (Math.B699.N13.kMin t:ℚ) + 2) ^ 2:= by
    cases t <;> simp only [Math.B699.N13.kMin,Nat.cast_zero,Nat.cast_one]
    · apply sub_nonneg.mp
      calc
        0 ≤ 20736 * (24263350511400 + x * (242777113253700 + x * (1033716033970858 + x * (2524411128531755 + x * (3973462600211233 + x * (4261694937172776 + x * (3192124902952356 + x * (1674717415752384 + x * (604329429638592 + x * (143052330369024 + x * (20010434420736 + x * (1253826625536)))))))))))):= by positivity
        _ = 67108864 * Math.B699.N13.d92 .evenZero (x + 1) * (x + 1 + 2) ^ 2 -
            387420489 * Math.B699.N13.d26 .evenZero (x + 1) * (x + 1 + 1) ^ 2:= by
          unfold Math.B699.N13.d92 Math.B699.N13.d26
          ring
    · apply sub_nonneg.mp
      calc
        0 ≤ 20736 * (281211446716200 + x * (2083020128933700 + x * (6966620453921450 + x * (13886565142317867 + x * (18330264815295265 + x * (16824035069070120 + x * (10955864659676580 + x * (5061831722156736 + x * (1626012377357760 + x * (345847177543680 + x * (43833140305920 + x * (2507653251072)))))))))))):= by positivity
        _ = 67108864 * Math.B699.N13.d92 .evenOne (x + 1) * (x + 1 + 2) ^ 2 -
            387420489 * Math.B699.N13.d26 .evenOne (x + 1) * (x + 1 + 1) ^ 2:= by
          unfold Math.B699.N13.d92 Math.B699.N13.d26
          ring
    · apply sub_nonneg.mp
      calc
        0 ≤ 20736 * (2613014201875 + x * (30059191750260 + x * (155530009153318 + x * (477933347740812 + x * (969447703495915 + x * (1363309493026680 + x * (1356630018031764 + x * (955489636118016 + x * (466881158208960 + x * (150763944591360 + x * (28961363386368 + x * (2507653251072)))))))))))):= by positivity
        _ = 67108864 * Math.B699.N13.d92 .oddZero (x + 0) * (x + 0 + 2) ^ 2 -
            387420489 * Math.B699.N13.d26 .oddZero (x + 0) * (x + 0 + 1) ^ 2:= by
          unfold Math.B699.N13.d92 Math.B699.N13.d26
          ring
    · apply sub_nonneg.mp
      calc
        0 ≤ 20736 * (287692064275 + x * (4064657165940 + x * (25292075863846 + x * (91894917569676 + x * (217310178493675 + x * (352020572471160 + x * (399314332221588 + x * (317635104665088 + x * (173822833483200 + x * (62376907161600 + x * (13218873532416 + x * (1253826625536)))))))))))):= by positivity
        _ = 67108864 * Math.B699.N13.d92 .oddOne (x + 0) * (x + 0 + 2) ^ 2 -
            387420489 * Math.B699.N13.d26 .oddOne (x + 0) * (x + 0 + 1) ^ 2:= by
          unfold Math.B699.N13.d92 Math.B699.N13.d26
          ring
  have u342 (t:Math.B699.N13.Track) (x:ℚ) (hx:(Math.B699.N13.kMin t:ℚ) ≤ x):
      u329 * ((x + 1) / (x + 2)) ^ 2 ≤ Math.B699.N13.ratio t x:= by
    have hden:0 < Math.B699.N13.d26 t x:= u338 t x hx
    have hx0:0 ≤ x:= le_trans (Nat.cast_nonneg _) hx
    have hmp:x + 2 ≠ 0:= ne_of_gt (by linarith:0 < x + 2)
    have hcert:= u344 t (x - (Math.B699.N13.kMin t:ℚ)) (sub_nonneg.mpr hx)
    have hs:x - (Math.B699.N13.kMin t:ℚ) + (Math.B699.N13.kMin t:ℚ) = x:= by ring
    simp only [hs] at hcert
    apply sub_nonneg.mp
    have hid:Math.B699.N13.ratio t x - u329 * ((x + 1) / (x + 2)) ^ 2 =
        (67108864 * Math.B699.N13.d92 t x * (x + 2) ^ 2 -
          387420489 * Math.B699.N13.d26 t x * (x + 1) ^ 2) /
        (67108864 * Math.B699.N13.d26 t x * (x + 2) ^ 2):= by
      unfold Math.B699.N13.ratio u329
      field_simp [ne_of_gt hden,hmp]
      <;> ring
    rw [hid]
    exact div_nonneg (sub_nonneg.mpr hcert) (by positivity)
  have u339 (t:Math.B699.N13.Track) (k:ℕ) (hk:Math.B699.N13.kMin t ≤ k):
      Math.B699.N13.divisor t k * (u329 * (((k:ℚ) + 1) / ((k:ℚ) + 2)) ^ 2) ≤
        Math.B699.N13.divisor t (k + 1):= by
    rw [u326 t k hk]
    exact mul_le_mul_of_nonneg_left
      (u342 t (k:ℚ) (by exact_mod_cast hk)) (u337 t k).le
  have u343 (t:Math.B699.N13.Track) (x:ℚ) (hx:0 ≤ x):
      5413091590980161748469798877616017917092297780481 * Math.B699.N13.d26 t (x + (Math.B699.N13.cutoff t:ℚ)) ≤
        1000000000000000000000000000000000000000000000000 * Math.B699.N13.d92 t (x + (Math.B699.N13.cutoff t:ℚ)):= by
    cases t <;> simp only [Math.B699.N13.cutoff,Nat.cast_zero,Nat.cast_one,Nat.cast_ofNat]
    · apply sub_nonneg.mp
      calc
        0 ≤ 256 * (7642594268262588524703707747581488570059128670741711743572133200 + x * (12489408185551690524412584511824350903355160039547169816312344805 + x * (5563670642460919695073211199964689529881137503187585696424789321 + x * (1250179026357213779777890221231468289356325001998481197644405960 + x * (170065066762123898263031146509787890596985340701215754040332100 + x * (15110951798131466346778068630269129287427354166517443203791680 + x * (902565301599461670575068275737284931713355423895170085624768 + x * (36114701181445680057032272401465331629537756674256222781440 + x * (931844525345161625835793162261140079017098957676019507200 + x * (14054686231350918970506952099327388858389853954542141440 + x * (94351803130346478609133043026226599141756690633588736))))))))))):= by positivity
        _ = 1000000000000000000000000000000000000000000000000 * Math.B699.N13.d92 .evenZero (x + 16) -
            5413091590980161748469798877616017917092297780481 * Math.B699.N13.d26 .evenZero (x + 16):= by
          unfold Math.B699.N13.d92 Math.B699.N13.d26
          ring
    · apply sub_nonneg.mp
      calc
        0 ≤ 256 * (3084018106760625790848035580602347689635910549123005850 + x * (23259991115004030757515010554804208042889777491859138175 + x * (77541535920391966898001943202483394381340735868437856121 + x * (150711327626051822855414990492022151742924371235027919960 + x * (189370046181709120734965322564371696228180575650825948100 + x * (160896032394758065502000959996550749429502210661496666560 + x * (93691178295542426801339341864399191891627642832740293568 + x * (36946089639342281144522509058599248032239078321789501440 + x * (9447587514576910734826689492486899444755166477916364800 + x * (1415277046955197179136995645393398987126350359503831040 + x * (94351803130346478609133043026226599141756690633588736))))))))))):= by positivity
        _ = 1000000000000000000000000000000000000000000000000 * Math.B699.N13.d92 .evenOne (x + 1) -
            5413091590980161748469798877616017917092297780481 * Math.B699.N13.d26 .evenOne (x + 1):= by
          unfold Math.B699.N13.d92 Math.B699.N13.d26
          ring
    · apply sub_nonneg.mp
      calc
        0 ≤ 256 * (169476193676418279369846610007722406277383468578500075 + x * (1599483961942247962515004046914457304796914630896474430 + x * (6714697330938548038973886038903339135922785386037122671 + x * (16559249571812852078755917204233182907359019947207641040 + x * (26667828660881992745150541406443564694410479903510538100 + x * (29447775347799147729596198507232412365966953149609272960 + x * (22712653764091388840103803519798654640985911841667218368 + x * (12159468495738715638311716251798842150229215286154690560 + x * (4350487655877733813062955822261653243031352629776998400 + x * (943518031303464786091330430262265991417566906335887360 + x * (94351803130346478609133043026226599141756690633588736))))))))))):= by positivity
        _ = 1000000000000000000000000000000000000000000000000 * Math.B699.N13.d92 .oddZero (x + 0) -
            5413091590980161748469798877616017917092297780481 * Math.B699.N13.d26 .oddZero (x + 0):= by
          unfold Math.B699.N13.d92 Math.B699.N13.d26
          ring
    · apply sub_nonneg.mp
      calc
        0 ≤ 256 * (3149544096945003945981416195545085436934436472615834260435040000 + x * (8038471699138458207788044990800398681115162979954625757459406560 + x * (3981814064310372988300491815509012642164853553029659445142004471 + x * (952754056206966669233543174650378769999551091313440792679927040 + x * (136078189955992102589929120436552273862520908770858190594402100 + x * (12614670987127929507073556376354207874442033003433999259822080 + x * (783429772950280897123397296342131033204193610329047315807168 + x * (32528411715166642877244525325669324414207743178783520194560 + x * (869786008529728575852864624548211878394689377650207744000 + x * (13582927215699186577461286884196255862681070501374197760 + x * (94351803130346478609133043026226599141756690633588736))))))))))):= by positivity
        _ = 1000000000000000000000000000000000000000000000000 * Math.B699.N13.d92 .oddOne (x + 15) -
            5413091590980161748469798877616017917092297780481 * Math.B699.N13.d26 .oddOne (x + 15):= by
          unfold Math.B699.N13.d92 Math.B699.N13.d26
          ring
  have u340 (t:Math.B699.N13.Track) (x:ℚ) (hx:(Math.B699.N13.cutoff t:ℚ) ≤ x):
      u328 ≤ Math.B699.N13.ratio t x:= by
    have hstart:(Math.B699.N13.kMin t:ℚ) ≤ (Math.B699.N13.cutoff t:ℚ):= by
      exact_mod_cast u336 t
    have hden:0 < Math.B699.N13.d26 t x:= u338 t x (hstart.trans hx)
    have hcert:= u343 t (x - (Math.B699.N13.cutoff t:ℚ)) (sub_nonneg.mpr hx)
    have hs:x - (Math.B699.N13.cutoff t:ℚ) + (Math.B699.N13.cutoff t:ℚ) = x:= by ring
    simp only [hs] at hcert
    have hmid:u328 = (5413091590980161748469798877616017917092297780481:ℚ) / 1000000000000000000000000000000000000000000000000:= by
      norm_num [u328,u327]
    rw [hmid,Math.B699.N13.ratio]
    apply (div_le_div_iff₀ (by norm_num) hden).2
    simpa only [mul_comm (Math.B699.N13.d92 t x) (1000000000000000000000000000000000000000000000000:ℚ)] using hcert
  have u341 (t:Math.B699.N13.Track) (k:ℕ) (hk:Math.B699.N13.cutoff t ≤ k):
      Math.B699.N13.divisor t k * u328 ≤ Math.B699.N13.divisor t (k + 1):= by
    rw [u326 t k ((u336 t).trans hk)]
    exact mul_le_mul_of_nonneg_left
      (u340 t (k:ℚ) (by exact_mod_cast hk)) (u337 t k).le
  have u345 (t:Math.B699.N13.Track) (k:ℕ) (hm:141 ≤ 2 * k + Math.B699.N13.rho t):
      Math.B699.N13.cutoff t + 5 * (Math.B699.N13.loss t + 1) ≤ k:= by
    cases t <;> simp only [Math.B699.N13.rho,Math.B699.N13.cutoff,Math.B699.N13.loss] at * <;> omega
  have u346 (d m:ℕ) (hd:d = 0 ∨ d = 1) (hm:1 ≤ m):
      ∃ t:Math.B699.N13.Track,∃ k:ℕ,Math.B699.N13.kMin t ≤ k ∧ d = Math.B699.N13.delta t ∧ m = 2 * k + Math.B699.N13.rho t:= by
    have hmod:m % 2 = 0 ∨ m % 2 = 1:= by omega
    have hdiv:= Nat.mod_add_div m 2
    rcases hd with rfl | rfl
    · rcases hmod with hz | ho
      · refine ⟨.evenZero,m / 2,?_,rfl,?_⟩ <;> simp only [Math.B699.N13.kMin,Math.B699.N13.rho] <;> omega
      · refine ⟨.oddZero,m / 2,?_,rfl,?_⟩ <;> simp only [Math.B699.N13.kMin,Math.B699.N13.rho] <;> omega
    · rcases hmod with hz | ho
      · refine ⟨.evenOne,m / 2,?_,rfl,?_⟩ <;> simp only [Math.B699.N13.kMin,Math.B699.N13.rho] <;> omega
      · refine ⟨.oddOne,m / 2,?_,rfl,?_⟩ <;> simp only [Math.B699.N13.kMin,Math.B699.N13.rho] <;> omega
  have u349 (t:Math.B699.N13.Track) (k:ℕ):0 < Math.B699.N13.d91 t k:=
    div_pos (u337 t k)
      (mul_pos (pow_pos u331 _) (pow_pos u332 _))
  have u351 (t:Math.B699.N13.Track) (k:ℕ) (hk:Math.B699.N13.cutoff t ≤ k):
      Math.B699.N13.d91 t k * u330 ≤ Math.B699.N13.d91 t (k + 1):= by
    have ht:Math.B699.N13.d144 ≠ 0:= ne_of_gt u332
    have hp:Math.B699.N13.d144 ^ k ≠ 0:= pow_ne_zero _ ht
    have hs:Math.B699.N13.d143 ^ (4 * Math.B699.N13.rho t) ≠ 0:=
      pow_ne_zero _ (ne_of_gt u331)
    calc
      _ = (Math.B699.N13.divisor t k * u328) /
          (Math.B699.N13.d143 ^ (4 * Math.B699.N13.rho t) * Math.B699.N13.d144 ^ (k + 1)):= by
        unfold Math.B699.N13.d91 u330
        rw [pow_succ Math.B699.N13.d144 k]
        field_simp [ht,hp,hs]
        <;> ring
      _ ≤ Math.B699.N13.divisor t (k + 1) / (Math.B699.N13.d143 ^ (4 * Math.B699.N13.rho t) * Math.B699.N13.d144 ^ (k + 1)):=
        div_le_div_of_nonneg_right (u341 t k hk)
          (mul_pos (pow_pos u331 _) (pow_pos u332 _)).le
      _ = Math.B699.N13.d91 t (k + 1):= rfl
  have u350 (t:Math.B699.N13.Track) (k:ℕ) (hk:Math.B699.N13.kMin t ≤ k):
      Math.B699.N13.d91 t k * (1 * (((k:ℚ) + 1) / ((k:ℚ) + 2)) ^ 2) ≤
        Math.B699.N13.d91 t (k + 1):= by
    have hcoef:= mul_le_mul_of_nonneg_right u333
      (sq_nonneg ((((k:ℚ) + 1) / ((k:ℚ) + 2))))
    have hstep:Math.B699.N13.divisor t k *
        (Math.B699.N13.d144 * (((k:ℚ) + 1) / ((k:ℚ) + 2)) ^ 2) ≤ Math.B699.N13.divisor t (k + 1):=
      (mul_le_mul_of_nonneg_left hcoef (u337 t k).le).trans
        (u339 t k hk)
    have ht:Math.B699.N13.d144 ≠ 0:= ne_of_gt u332
    have hp:Math.B699.N13.d144 ^ k ≠ 0:= pow_ne_zero _ ht
    have hs:Math.B699.N13.d143 ^ (4 * Math.B699.N13.rho t) ≠ 0:=
      pow_ne_zero _ (ne_of_gt u331)
    have hd:(k:ℚ) + 2 ≠ 0:= by positivity
    calc
      _ = (Math.B699.N13.divisor t k * (Math.B699.N13.d144 * (((k:ℚ) + 1) / ((k:ℚ) + 2)) ^ 2)) /
          (Math.B699.N13.d143 ^ (4 * Math.B699.N13.rho t) * Math.B699.N13.d144 ^ (k + 1)):= by
        unfold Math.B699.N13.d91
        rw [pow_succ Math.B699.N13.d144 k]
        field_simp [ht,hp,hs,hd]
        <;> ring
      _ ≤ Math.B699.N13.divisor t (k + 1) / (Math.B699.N13.d143 ^ (4 * Math.B699.N13.rho t) * Math.B699.N13.d144 ^ (k + 1)):=
        div_le_div_of_nonneg_right hstep
          (mul_pos (pow_pos u331 _) (pow_pos u332 _)).le
      _ = Math.B699.N13.d91 t (k + 1):= rfl
  have u352 (t:Math.B699.N13.Track):
      1 ≤ (Math.B699.N13.d91 t (Math.B699.N13.kMin t) * ((Math.B699.N13.kMin t:ℚ) + 1) ^ 2 /
        ((Math.B699.N13.cutoff t:ℚ) + 1) ^ 2) * (2:ℚ) ^ Math.B699.N13.loss t:= by
    rw [Math.B699.N13.d91,u321]
    cases t <;> norm_num [Math.B699.N13.d64,Math.B699.N13.kMin,Math.B699.N13.cutoff,Math.B699.N13.loss,Math.B699.N13.rho,Math.B699.N13.d144,Math.B699.N13.d143]
  have u353 (t:Math.B699.N13.Track):
      1 ≤ Math.B699.N13.d91 t (Math.B699.N13.cutoff t) * (2:ℚ) ^ Math.B699.N13.loss t:= by
    have hstart:= u336 t
    have hindex:Math.B699.N13.kMin t + (Math.B699.N13.cutoff t - Math.B699.N13.kMin t) = Math.B699.N13.cutoff t:= by omega
    have h:= u38 (F:= Math.B699.N13.d91 t) (R:= 1) (k0:= Math.B699.N13.kMin t)
      (by norm_num) (fun k hk => u350 t k hk) (Math.B699.N13.cutoff t - Math.B699.N13.kMin t)
    have htel:Math.B699.N13.d91 t (Math.B699.N13.kMin t) * ((Math.B699.N13.kMin t:ℚ) + 1) ^ 2 /
        ((Math.B699.N13.cutoff t:ℚ) + 1) ^ 2 ≤ Math.B699.N13.d91 t (Math.B699.N13.cutoff t):= by
      simpa only [one_pow,mul_one,hindex] using h
    exact (u352 t).trans
      (mul_le_mul_of_nonneg_right htel (by positivity))
  have u354 (t:Math.B699.N13.Track) (k:ℕ)
      (hk:Math.B699.N13.cutoff t + 5 * (Math.B699.N13.loss t + 1) ≤ k):1 < Math.B699.N13.d91 t k:= by
    have hn:5 * (Math.B699.N13.loss t + 1) ≤ k - Math.B699.N13.cutoff t:= by omega
    have h:= u42 (F:= Math.B699.N13.d91 t) (R:= u330)
      (K:= Math.B699.N13.cutoff t) (T:= Math.B699.N13.loss t) (B:= 5) (n:= k - Math.B699.N13.cutoff t)
      u334 (u349 t (Math.B699.N13.cutoff t)).le
      (fun j hj => u351 t j hj)
      (u353 t) u335 hn
    have hindex:Math.B699.N13.cutoff t + (k - Math.B699.N13.cutoff t) = k:= by omega
    simpa only [hindex] using h
  have u355 (t:Math.B699.N13.Track) (k:ℕ)
      (hk:Math.B699.N13.cutoff t + 5 * (Math.B699.N13.loss t + 1) ≤ k):
      Math.B699.N13.d143 ^ (4 * (2 * k + Math.B699.N13.rho t)) < Math.B699.N13.divisor t k:= by
    have h:= u354 t k hk
    change 1 < Math.B699.N13.divisor t k / (Math.B699.N13.d143 ^ (4 * Math.B699.N13.rho t) * Math.B699.N13.d144 ^ k) at h
    have hmul:= (lt_div_iff₀
      (mul_pos (pow_pos u331 _) (pow_pos u332 _))).mp h
    have hden:Math.B699.N13.d143 ^ (4 * Math.B699.N13.rho t) * Math.B699.N13.d144 ^ k =
        Math.B699.N13.d143 ^ (4 * (2 * k + Math.B699.N13.rho t)):= by
      rw [Math.B699.N13.d144,← pow_mul,← pow_add]
      congr 1
      ring
    simpa only [one_mul,hden] using hmul
  have u347 (d m:ℕ)
      (hd:d = 0 ∨ d = 1) (hm:141 ≤ m):
      (602791 / 500000:ℚ) ^ (4 * m) <
        Math.B699.N23.d135 (4 * m - d) (m + d - 1):= by
    obtain ⟨t,k,_hk,hdrep,hmrep⟩:= u346 d m hd (by omega)
    have hlarge:141 ≤ 2 * k + Math.B699.N13.rho t:= by omega
    have h:= u355 t k (u345 t k hlarge)
    rw [u316] at h
    change Math.B699.N13.d143 ^ (4 * m) < Math.B699.N23.d135 (4 * m - d) (m + d - 1)
    rw [hdrep,hmrep]
    exact h
  have u348 (d m:ℕ)
      (hd:d = 0 ∨ d = 1) (hm:141 ≤ m):
      (602791 / 500000:ℚ) ^ (4 * m) <
        (Math.B699.N18.qContent (4 * m - d) (m + d - 1) (4 * m - d):ℚ):= by
    exact (u347 d m hd hm).trans_le
      (u1024 (4 * m - d) (m + d - 1))
  let u501 (n k:ℕ):ℕ:=
    if k ≤ n then n.factorial / (k.factorial * (n - k).factorial) else 0
  let u503 (A B C r:ℕ):ℤ:=
    (-1:ℤ) ^ r * (u501 (A + r) r:ℤ) *
      (u501 (A + B + C + 1) (A + C + r + 1):ℤ)
  have u358:u503 15 7 15 0 = (12620256:ℤ):= by
    norm_num [u503,u501]
  have u359:u503 15 7 15 1 = (-44170896:ℤ):= by
    norm_num [u503,u501]
  have u360:u503 15 7 15 2 = (68264112:ℤ):= by
    norm_num [u503,u501]
  have u361:u503 15 7 15 3 = (-60233040:ℤ):= by
    norm_num [u503,u501]
  have u362:u503 15 7 15 4 = (32697936:ℤ):= by
    norm_num [u503,u501]
  have u363:u503 15 7 15 5 = (-10899312:ℤ):= by
    norm_num [u503,u501]
  have u364:u503 15 7 15 6 = (2062032:ℤ):= by
    norm_num [u503,u501]
  have u365:u503 15 7 15 7 = (-170544:ℤ):= by
    norm_num [u503,u501]
  have u366 {R:Type u} [Semiring R]
      (n:ℕ) (a:ℕ → ℤ) (f:ℤ →+* R) (z:R):
      (Math.B699.N18.d22 n a).eval₂ f z =
        ∑ r ∈ Finset.range (n + 1),f (a r) * z ^ r:= by
    classical
    simp only [Math.B699.N18.d22,Polynomial.eval₂_finsetSum,
      Polynomial.eval₂_monomial]
  have u367 {R:Type u} [Semiring R]
      (a:ℕ → ℤ) (f:ℤ →+* R) (z:R):
      (Math.B699.N18.d22 7 a).eval₂ f z =
        f (a 0) * z ^ 0 +
        f (a 1) * z ^ 1 +
        f (a 2) * z ^ 2 +
        f (a 3) * z ^ 3 +
        f (a 4) * z ^ 4 +
        f (a 5) * z ^ 5 +
        f (a 6) * z ^ 6 +
        f (a 7) * z ^ 7:= by
    rw [u366]
    simp only [Finset.sum_range_succ,Finset.sum_range_zero,zero_add]
  have u368 {R:Type u} [Semiring R]
      (a:ℕ → ℤ) (f:ℤ →+* R) (z:R)
      (c0 c1 c2 c3 c4 c5 c6 c7:ℤ)
      (h0:a 0 = c0) (h1:a 1 = c1) (h2:a 2 = c2) (h3:a 3 = c3)
      (h4:a 4 = c4) (h5:a 5 = c5) (h6:a 6 = c6) (h7:a 7 = c7):
      (Math.B699.N18.d22 7 a).eval₂ f z =
        f c0 * z ^ 0 +
        f c1 * z ^ 1 +
        f c2 * z ^ 2 +
        f c3 * z ^ 3 +
        f c4 * z ^ 4 +
        f c5 * z ^ 5 +
        f c6 * z ^ 6 +
        f c7 * z ^ 7:= by
    rw [u367,h0,h1,h2,h3,h4,h5,h6,h7]
  let u369:ℚ:=
      (Int.castRingHom ℚ) (12620256:ℤ) * (1 / 9:ℚ) ^ 0 +
      (Int.castRingHom ℚ) (-44170896:ℤ) * (1 / 9:ℚ) ^ 1 +
      (Int.castRingHom ℚ) (68264112:ℤ) * (1 / 9:ℚ) ^ 2 +
      (Int.castRingHom ℚ) (-60233040:ℤ) * (1 / 9:ℚ) ^ 3 +
      (Int.castRingHom ℚ) (32697936:ℤ) * (1 / 9:ℚ) ^ 4 +
      (Int.castRingHom ℚ) (-10899312:ℤ) * (1 / 9:ℚ) ^ 5 +
      (Int.castRingHom ℚ) (2062032:ℤ) * (1 / 9:ℚ) ^ 6 +
      (Int.castRingHom ℚ) (-170544:ℤ) * (1 / 9:ℚ) ^ 7
  have u370:
      u369 = (13515592997264:ℚ) / 1594323:= by
    norm_num [u369,Int.coe_castRingHom]
  have u357:
      (Math.B699.N18.d22 7 (u503 15 7 15)).eval₂
        (Int.castRingHom ℚ) (1 / 9) = (13515592997264:ℚ) / 1594323:= by
    have hstage:
        (Math.B699.N18.d22 7 (u503 15 7 15)).eval₂
          (Int.castRingHom ℚ) (1 / 9) = u369:=
      u368
        (u503 15 7 15) (Int.castRingHom ℚ) (1 / 9)
        12620256 (-44170896) 68264112 (-60233040) 32697936 (-10899312) 2062032 (-170544)
        u358 u359 u360 u361 u362 u363 u364 u365
    exact Eq.trans hstage u370
  have u502 (n k:ℕ):Nat.choose n k = u501 n k:= by
    by_cases hk:k ≤ n
    · simpa only [u501,if_pos hk] using
        (Nat.choose_eq_factorial_div_factorial hk)
    · simp only [u501,if_neg hk]
      exact Nat.choose_eq_zero_of_lt (Nat.lt_of_not_ge hk)
  have u504 (A B C:ℕ):
      Math.B699.N18.d36 A B C = u503 A B C:= by
    funext r
    simp only [Math.B699.N18.d36,u503,u502]
  have u505 (c d delta m:ℕ) (z:ℚ):
      u139 c d delta m z =
        (Math.B699.N18.d22 ((c - d) * m + delta - 1)
          (u503 (d * m - delta) ((c - d) * m + delta - 1)
            (d * m - delta))).eval₂ (Int.castRingHom ℚ) z:= by
    simp only [u139,Math.B699.N18.d37,u504]
  have u356:
      u139 23 15 0 1 (1 / 9) = (13515592997264:ℚ) / 1594323:= by
    have hfast:u139 23 15 0 1 (1 / 9) =
        (Math.B699.N18.d22 7 (u503 15 7 15)).eval₂
          (Int.castRingHom ℚ) (1 / 9):=
      u505 23 15 0 1 (1 / 9)
    exact Eq.trans hfast u357
  have u379:u503 14 8 14 0 = (38608020:ℤ):= by
    norm_num [u503,u501]
  have u380:u503 14 8 14 2 = (278974080:ℤ):= by
    norm_num [u503,u501]
  have u381:u503 14 8 14 3 = (-296409960:ℤ):= by
    norm_num [u503,u501]
  have u382:u503 14 8 14 4 = (202097700:ℤ):= by
    norm_num [u503,u501]
  have u383:u503 14 8 14 5 = (-90349560:ℤ):= by
    norm_num [u503,u501]
  have u384:u503 14 8 14 6 = (25814160:ℤ):= by
    norm_num [u503,u501]
  have u385:u503 14 8 14 7 = (-4302360:ℤ):= by
    norm_num [u503,u501]
  have u386:u503 14 8 14 8 = (319770:ℤ):= by
    norm_num [u503,u501]
  have u387:u503 14 8 14 1 = (-154432080:ℤ):= by
    norm_num [u503,u501]
  have u388 {R:Type u} [Semiring R]
      (a:ℕ → ℤ) (f:ℤ →+* R) (z:R):
      (Math.B699.N18.d22 8 a).eval₂ f z =
        f (a 0) * z ^ 0 +
        f (a 1) * z ^ 1 +
        f (a 2) * z ^ 2 +
        f (a 3) * z ^ 3 +
        f (a 4) * z ^ 4 +
        f (a 5) * z ^ 5 +
        f (a 6) * z ^ 6 +
        f (a 7) * z ^ 7 +
        f (a 8) * z ^ 8:= by
    rw [u366]
    simp only [Finset.sum_range_succ,Finset.sum_range_zero,zero_add]
  have u389 {R:Type u} [Semiring R]
      (a:ℕ → ℤ) (f:ℤ →+* R) (z:R)
      (c0 c1 c2 c3 c4 c5 c6 c7 c8:ℤ)
      (h0:a 0 = c0) (h1:a 1 = c1) (h2:a 2 = c2) (h3:a 3 = c3)
      (h4:a 4 = c4) (h5:a 5 = c5) (h6:a 6 = c6) (h7:a 7 = c7)
      (h8:a 8 = c8):
      (Math.B699.N18.d22 8 a).eval₂ f z =
        f c0 * z ^ 0 +
        f c1 * z ^ 1 +
        f c2 * z ^ 2 +
        f c3 * z ^ 3 +
        f c4 * z ^ 4 +
        f c5 * z ^ 5 +
        f c6 * z ^ 6 +
        f c7 * z ^ 7 +
        f c8 * z ^ 8:= by
    rw [u388,h0,h1,h2,h3,h4,h5,h6,h7,h8]
  let u391:ℚ:=
      (Int.castRingHom ℚ) (38608020:ℤ) * (1 / 9:ℚ) ^ 0 +
      (Int.castRingHom ℚ) (-154432080:ℤ) * (1 / 9:ℚ) ^ 1 +
      (Int.castRingHom ℚ) (278974080:ℤ) * (1 / 9:ℚ) ^ 2 +
      (Int.castRingHom ℚ) (-296409960:ℤ) * (1 / 9:ℚ) ^ 3 +
      (Int.castRingHom ℚ) (202097700:ℤ) * (1 / 9:ℚ) ^ 4 +
      (Int.castRingHom ℚ) (-90349560:ℤ) * (1 / 9:ℚ) ^ 5 +
      (Int.castRingHom ℚ) (25814160:ℤ) * (1 / 9:ℚ) ^ 6 +
      (Int.castRingHom ℚ) (-4302360:ℤ) * (1 / 9:ℚ) ^ 7 +
      (Int.castRingHom ℚ) (319770:ℤ) * (1 / 9:ℚ) ^ 8
  have u390:
      u391 = (117258057456010:ℚ) / 4782969:= by
    norm_num [u391,Int.coe_castRingHom]
  have u378:
      (Math.B699.N18.d22 8 (u503 14 8 14)).eval₂
        (Int.castRingHom ℚ) (1 / 9) = (117258057456010:ℚ) / 4782969:= by
    have hstage:
        (Math.B699.N18.d22 8 (u503 14 8 14)).eval₂
          (Int.castRingHom ℚ) (1 / 9) = u391:=
      u389
        (u503 14 8 14) (Int.castRingHom ℚ) (1 / 9)
        38608020 (-154432080) 278974080 (-296409960) 202097700 (-90349560) 25814160 (-4302360) 319770
        u379 u387 u380 u381 u382 u383 u384 u385 u386
    exact Eq.trans hstage u390
  have u371:
      u139 23 15 1 1 (1 / 9) = (117258057456010:ℚ) / 4782969:= by
    have hfast:u139 23 15 1 1 (1 / 9) =
        (Math.B699.N18.d22 8 (u503 14 8 14)).eval₂
          (Int.castRingHom ℚ) (1 / 9):=
      u505 23 15 1 1 (1 / 9)
    exact Eq.trans hfast u378
  let u694:ℚ:= 46880976166089921083 / 79228162514264337593543950336
  let u696:ℚ:= Math.B699.N8.beta 23 15 * u694
  have u372:
      2 * |(13515592997264:ℚ) / 1594323| ≤ u696:= by
    norm_num [u696,Math.B699.N8.beta,
      u694]
  have u373:
      2 * |(117258057456010:ℚ) / 4782969| ≤ u696:= by
    norm_num [u696,Math.B699.N8.beta,
      u694]
  have u374:
      u139 23 15 0 1 (1 / 9) = (13515592997264:ℚ) / 1594323:=
    u356
  have u375:
      2 * |u139 23 15 0 1 (1 / 9)| ≤ u696:= by
    calc
      _ = 2 * |(13515592997264:ℚ) / 1594323|:=
        congrArg (fun x:ℚ => 2 * |x|) u374
      _ ≤ u696:= u372
  have u376:
      2 * |u139 23 15 1 1 (1 / 9)| ≤ u696:= by
    calc
      _ = 2 * |(117258057456010:ℚ) / 4782969|:=
        congrArg (fun x:ℚ => 2 * |x|) u371
      _ ≤ u696:= u373
  let u724 (row:Bool):ℕ:= if row then 0 else 1
  have u377 (row:Bool):
      2 * |u139 23 15 (u724 row) 1 (1 / 9)| ≤
        u696:= by
    cases row
    · exact u376
    · exact u375
  let u410:ℚ:= (1303943 / 1000000:ℚ) ^ 7
  let u455 (row:Bool):ℕ:= if row then 0 else 1
  let u411 (m:ℕ) (row:Bool):ℚ:=
    u138 11 7 (u455 row) m (1 / 50)
  let u412 (m:ℕ) (row:Bool):ℚ:=
    u139 11 7 (u455 row) m (1 / 50)
  let u413 (m:ℕ) (row:Bool):ℚ:=
    (Math.B699.N18.qContent (7 * m - u455 row) (4 * m + u455 row - 1)
      (7 * m - u455 row):ℚ)
  let u414 (m:ℕ) (row:Bool):ℤ:= u1006 (7 * m) (4 * m - 1) 1 50 row
  let u415 (m:ℕ) (row:Bool):ℤ:=
    (50:ℤ) ^ (11 * m) * u1005 (7 * m) (4 * m - 1) 1 50 row -
      (49:ℤ) ^ (11 * m) * u414 m row
  have u416:0 < u410:= by norm_num [u410]
  have u456 (row:Bool):u455 row = 0 ∨ u455 row = 1:= by
    cases row <;> simp [u455]
  have u417 (m:ℕ) (hm:149 ≤ m) (row:Bool):
      u410 ^ m ≤ u413 m row:= by
    have h:= u201
      (u455 row) m (u456 row) hm
    simpa only [u410,u413,← pow_mul] using le_of_lt h
  have u458 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      u1005 (7 * m) (4 * m - 1) 1 50 row =
        u942 (7 * m - u455 row) (4 * m + u455 row - 1) 1 50 ∧
      u1006 (7 * m) (4 * m - 1) 1 50 row =
        u1010 (7 * m - u455 row) (4 * m + u455 row - 1)
          (7 * m - u455 row) 1 50:= by
    have hv:4 * m - 1 + 1 = 4 * m:= by omega
    cases row <;> simp [u455,u1005,u1006,hv]
  have u459 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      (Math.B699.N18.qContent (7 * m - u455 row) (4 * m + u455 row - 1)
          (7 * m - u455 row):ℚ) *
        (u1006 (7 * m) (4 * m - 1) 1 50 row:ℚ) =
      (50:ℚ) ^ (7 * m - u455 row) *
        u138 11 7 (u455 row) m (1 / 50):= by
    have hq:= (u458 m hm row).2
    rw [hq,u154]
    have h:= u152 (7 * m - u455 row)
      (4 * m + u455 row - 1) (7 * m - u455 row) 1 50 (by decide)
    simpa only [u138,show (11:ℕ) - 7 = 4 by decide,one_mul,
      Int.cast_one,Int.cast_ofNat] using h
  have u418 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      u413 m row * (u414 m row:ℚ) =
        (50:ℚ) ^ (7 * m - u455 row) * u411 m row:= by
    simpa only [u413,u414,u411] using
      u459 m hm row
  have u457 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      (7 * m - u455 row) + (4 * m + u455 row - 1) + 1 = 11 * m:= by
    rcases u456 row with h | h <;> rw [h] <;> omega
  have u460 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      (Math.B699.N18.qContent (7 * m - u455 row) (4 * m + u455 row - 1)
          (7 * m - u455 row):ℚ) *
        (((50:ℤ) ^ (11 * m) * u1005 (7 * m) (4 * m - 1) 1 50 row -
          (49:ℤ) ^ (11 * m) * u1006 (7 * m) (4 * m - 1) 1 50 row:ℤ):ℚ) =
      (50:ℚ) ^ (4 * m + u455 row - 1) *
        (1:ℚ) ^ (2 * (7 * m - u455 row) + 1) *
        u139 11 7 (u455 row) m (1 / 50):= by
    obtain ⟨hp,hq⟩:= u458 m hm row
    rw [hp,hq]
    have h:= u155 (7 * m - u455 row)
      (4 * m + u455 row - 1) 1 50 (by decide)
    simpa only [u457 m hm row,show (50:ℤ) - 1 = 49 by decide,
      Int.cast_one,Int.cast_ofNat,u139,show (11:ℕ) - 7 = 4 by decide,one_mul] using h
  have u419 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      u413 m row * (u415 m row:ℚ) =
        (50:ℚ) ^ (4 * m + u455 row - 1) * u412 m row:= by
    simpa only [u413,u415,u414,u412,one_pow,mul_one] using
      u460 m hm row
  have u420 (m:ℕ) (hm:149 ≤ m) (row:Bool)
      (BQ:ℚ) (hBQ:0 ≤ BQ) (hQ:|u411 m row| ≤ BQ ^ m):
      u410 ^ m * |(u414 m row:ℚ)| ≤ ((50:ℚ) ^ 7 * BQ) ^ m:= by
    have h:= u565
      (u413 m row) (u410 ^ m) ((50:ℚ) ^ (7 * m - u455 row))
      (u414 m row) (u411 m row) (BQ ^ m)
      (le_of_lt (pow_pos u416 m)) (u417 m hm row)
      (pow_nonneg (by norm_num) _) (u418 m (by omega) row) hQ
    calc
      _ ≤ (50:ℚ) ^ (7 * m - u455 row) * BQ ^ m:= h
      _ ≤ (50:ℚ) ^ (7 * m) * BQ ^ m:=
        mul_le_mul_of_nonneg_right
          (pow_le_pow_right₀ (by norm_num:(1:ℚ) ≤ 50) (Nat.sub_le _ _))
          (pow_nonneg hBQ m)
      _ = ((50:ℚ) ^ 7 * BQ) ^ m:= by rw [mul_pow,← pow_mul]
  have u421 (m:ℕ) (hm:149 ≤ m) (row:Bool)
      (BE:ℚ) (hBE:0 ≤ BE) (hE:|u412 m row| ≤ BE ^ m):
      u410 ^ m * |(u415 m row:ℚ)| ≤ ((50:ℚ) ^ 4 * BE) ^ m:= by
    have h:= u565
      (u413 m row) (u410 ^ m) ((50:ℚ) ^ (4 * m + u455 row - 1))
      (u415 m row) (u412 m row) (BE ^ m)
      (le_of_lt (pow_pos u416 m)) (u417 m hm row)
      (by positivity) (u419 m (by omega) row) hE
    have hexp:4 * m + u455 row - 1 ≤ 4 * m:= by
      rcases u456 row with hr | hr <;> rw [hr] <;> omega
    calc
      _ ≤ (50:ℚ) ^ (4 * m + u455 row - 1) * BE ^ m:= h
      _ ≤ (50:ℚ) ^ (4 * m) * BE ^ m:=
        mul_le_mul_of_nonneg_right
          (pow_le_pow_right₀ (by norm_num:(1:ℚ) ≤ 50) hexp) (pow_nonneg hBE m)
      _ = ((50:ℚ) ^ 4 * BE) ^ m:= by rw [mul_pow,← pow_mul]
  have u422 (m e f A C:ℕ)
      (hm:1 ≤ m) (he:22 * m ≤ e) (hf:22 * m ≤ f) (hC:1 ≤ C)
      (hgap:|(5:ℤ) ^ e * (A:ℤ) - (7:ℤ) ^ f * (C:ℤ)| ≤ 24):
      ∃ row:Bool,(25:ℤ) ^ (11 * m) ≤
        24 * |u414 m row| +
          |u415 m row| * |(7:ℤ) ^ (f - 22 * m) * (C:ℤ)|:= by
    have hp:(25:ℕ) ^ (11 * m) = (5:ℕ) ^ (22 * m):= by
      calc
        _ = ((5:ℕ) ^ 2) ^ (11 * m):= by norm_num
        _ = (5:ℕ) ^ (22 * m):= by rw [← Nat.pow_mul]; congr 1 <;> ring
    have hq:(49:ℕ) ^ (11 * m) = (7:ℕ) ^ (22 * m):= by
      calc
        _ = ((7:ℕ) ^ 2) ^ (11 * m):= by norm_num
        _ = (7:ℕ) ^ (22 * m):= by rw [← Nat.pow_mul]; congr 1 <;> ring
    have hPnat:(25:ℕ) ^ (11 * m) * (5 ^ (e - 22 * m) * A) = 5 ^ e * A:= by
      rw [hp]
      exact u398 5 e (22 * m) A he
    have hQnat:(49:ℕ) ^ (11 * m) * (7 ^ (f - 22 * m) * C) = 7 ^ f * C:= by
      rw [hq]
      exact u398 7 f (22 * m) C hf
    have hPint:(25:ℤ) ^ (11 * m) * ((5:ℤ) ^ (e - 22 * m) * (A:ℤ)) =
        (5:ℤ) ^ e * (A:ℤ):= by exact_mod_cast hPnat
    have hQint:(49:ℤ) ^ (11 * m) * ((7:ℤ) ^ (f - 22 * m) * (C:ℤ)) =
        (7:ℤ) ^ f * (C:ℤ):= by exact_mod_cast hQnat
    have hgap':|(25:ℤ) ^ (11 * m) * ((5:ℤ) ^ (e - 22 * m) * (A:ℤ)) -
        (49:ℤ) ^ (11 * m) * ((7:ℤ) ^ (f - 22 * m) * (C:ℤ))| ≤ 24:= by
      rw [hPint,hQint]
      exact hgap
    have hV:(7:ℤ) ^ (f - 22 * m) * (C:ℤ) ≠ 0:= by
      apply mul_ne_zero (pow_ne_zero _ (by decide:(7:ℤ) ≠ 0))
      exact_mod_cast (by omega:C ≠ 0)
    obtain ⟨row,_hne,hlower⟩:= u1007
      (7 * m) (4 * m - 1) (by omega) 1 50
      (r:= (25:ℤ) ^ (11 * m)) (s:= (49:ℤ) ^ (11 * m))
      (a:= (2:ℤ) ^ (11 * m)) (b:= 1)
      (U:= (5:ℤ) ^ (e - 22 * m) * (A:ℤ))
      (V:= (7:ℤ) ^ (f - 22 * m) * (C:ℤ)) (D:= 24)
      (by decide) (by decide) (pow_nonneg (by decide) _)
      (pow_ne_zero _ (by decide)) (by decide) hV hgap'
    have hra:(25:ℤ) ^ (11 * m) * (2:ℤ) ^ (11 * m) = (50:ℤ) ^ (11 * m):= by
      rw [← mul_pow]
      norm_num
    exact ⟨row,by simpa only [u414,u415,hra,mul_one,one_mul] using hlower⟩
  let u424:ℚ:= 5962730782212565018186393 / 79228162514264337593543950336
  let u425:ℚ:= 4645474555000655291530615 / 79228162514264337593543950336
  let u426:ℚ:= Math.B699.N8.beta 11 7 * u424
  let u427:ℚ:= Math.B699.N8.beta 11 7 * u425
  have u428:0 < u424 ∧ 0 < u425 ∧ 0 < u426 ∧ 0 < u427:= by
    norm_num [u424,u425,u426,u427,Math.B699.N8.beta]
  have u429 (F K Math.B699.N8.beta lam weight:ℚ) (m:ℕ)
      (hm:1 ≤ m) (hbeta:0 ≤ Math.B699.N8.beta) (hlam:0 ≤ lam) (hweight:0 ≤ weight)
      (hF:F ≤ K * Math.B699.N8.beta ^ m) (hcap:K * weight ≤ lam):
      F * (lam ^ (m - 1) * weight) ≤ (Math.B699.N8.beta * lam) ^ m:= by
    calc
      _ ≤ (K * Math.B699.N8.beta ^ m) * (lam ^ (m - 1) * weight):=
        mul_le_mul_of_nonneg_right hF (mul_nonneg (pow_nonneg hlam _) hweight)
      _ = (Math.B699.N8.beta ^ m * lam ^ (m - 1)) * (K * weight):= by ring
      _ ≤ (Math.B699.N8.beta ^ m * lam ^ (m - 1)) * lam:=
        mul_le_mul_of_nonneg_left hcap (mul_nonneg (pow_nonneg hbeta _) (pow_nonneg hlam _))
      _ = (Math.B699.N8.beta * lam) ^ m:= by
        simp only [mul_pow]
        rw [mul_assoc,← pow_succ,Nat.sub_add_cancel hm]
  have u430 (delta m:ℕ) (hdelta:delta = 0 ∨ delta = 1)
      (hm:1 ≤ m) (lam:ℚ) (hlam:0 < lam)
      (tree:Math.B699.N20.d1 lam (u33 11 7 delta (1 / 50)) (u31 11 7 (1 / 50)))
      (hcap:2 * |u138 11 7 delta 1 (1 / 50)| ≤ Math.B699.N8.beta 11 7 * lam):
      |u138 11 7 delta m (1 / 50)| ≤ (Math.B699.N8.beta 11 7 * lam) ^ m:= by
    have hd:delta ≤ 7:= by rcases hdelta with h | h <;> omega
    have hb:0 < Math.B699.N8.beta 11 7:= by norm_num [Math.B699.N8.beta]
    have hw:0 ≤ Math.B699.N21.moment (u33 11 7 delta (1 / 50)):=
      u875 (u37 11 7 delta (1 / 50) (by norm_num))
    have heq:(2 * Math.B699.N8.d44 11 7 delta 1 / Math.B699.N8.beta 11 7) *
        Math.B699.N21.moment (u33 11 7 delta (1 / 50)) =
        2 * |u138 11 7 delta 1 (1 / 50)| / Math.B699.N8.beta 11 7:= by
      rw [u141 11 7 delta (1 / 50) (by decide) hd (by norm_num)]
      ring
    have hcap':(2 * Math.B699.N8.d44 11 7 delta 1 / Math.B699.N8.beta 11 7) *
        Math.B699.N21.moment (u33 11 7 delta (1 / 50)) ≤ lam:= by
      rw [heq]
      exact (div_le_iff₀ hb).mpr (by simpa only [mul_comm lam (Math.B699.N8.beta 11 7)] using hcap)
    have hsource:= u18 11 7 delta m (1 / 50) lam
      (by decide) hd hm (le_of_lt hlam) tree
    rw [u140 11 7 delta m (by decide) hd hm] at hsource
    exact le_trans hsource (u429 _ _ _ _ _ m hm (le_of_lt hb)
      (le_of_lt hlam) hw (le_of_lt (Math.B699.N8.d59 delta m hdelta hm)) hcap')
  have u431 (delta m:ℕ) (hdelta:delta = 0 ∨ delta = 1)
      (hm:1 ≤ m) (lam:ℚ) (hlam:0 < lam)
      (tree:Math.B699.N20.d1 lam (u34 11 7 delta (1 / 50)) (u32 11 7 (1 / 50)))
      (hcap:2 * |u139 11 7 delta 1 (1 / 50)| ≤ Math.B699.N8.beta 11 7 * lam):
      |u139 11 7 delta m (1 / 50)| ≤ (Math.B699.N8.beta 11 7 * lam) ^ m:= by
    have hd:delta ≤ 7:= by rcases hdelta with h | h <;> omega
    have hb:0 < Math.B699.N8.beta 11 7:= by norm_num [Math.B699.N8.beta]
    have hw:0 ≤ Math.B699.N21.moment (u34 11 7 delta (1 / 50)):=
      u875 (u20 11 7 delta (1 / 50) (by norm_num))
    have heq:(2 * Math.B699.N8.d44 11 7 delta 1 / Math.B699.N8.beta 11 7) *
        Math.B699.N21.moment (u34 11 7 delta (1 / 50)) =
        2 * |u139 11 7 delta 1 (1 / 50)| / Math.B699.N8.beta 11 7:= by
      rw [u142 11 7 delta (1 / 50) (by decide) hd (by norm_num)]
      ring
    have hcap':(2 * Math.B699.N8.d44 11 7 delta 1 / Math.B699.N8.beta 11 7) *
        Math.B699.N21.moment (u34 11 7 delta (1 / 50)) ≤ lam:= by
      rw [heq]
      exact (div_le_iff₀ hb).mpr (by simpa only [mul_comm lam (Math.B699.N8.beta 11 7)] using hcap)
    have hsource:= u19 11 7 delta m (1 / 50) lam
      (by decide) hd hm (le_of_lt hlam) tree
    rw [u140 11 7 delta m (by decide) hd hm] at hsource
    exact le_trans hsource (u429 _ _ _ _ _ m hm (le_of_lt hb)
      (le_of_lt hlam) hw (le_of_lt (Math.B699.N8.d59 delta m hdelta hm)) hcap')
  have u432
      (qt:∀ row:Bool,Math.B699.N20.d1 u424 (u33 11 7 (u455 row) (1 / 50))
        (u31 11 7 (1 / 50)))
      (et:∀ row:Bool,Math.B699.N20.d1 u425 (u34 11 7 (u455 row) (1 / 50))
        (u32 11 7 (1 / 50)))
      (qc:∀ row:Bool,2 * |u138 11 7 (u455 row) 1 (1 / 50)| ≤ u426)
      (ec:∀ row:Bool,2 * |u139 11 7 (u455 row) 1 (1 / 50)| ≤ u427):
      (∀ m:ℕ,149 ≤ m → ∀ row:Bool,|u411 m row| ≤ u426 ^ m) ∧
        (∀ m:ℕ,149 ≤ m → ∀ row:Bool,|u412 m row| ≤ u427 ^ m):= by
    constructor
    · intro m hm row
      exact u430 (u455 row) m (u456 row) (by omega)
        u424 u428.1 (qt row) (qc row)
    · intro m hm row
      exact u431 (u455 row) m (u456 row) (by omega)
        u425 u428.2.1 (et row) (ec row)
  let u433:ℕ:= 2 ^ 15359
  let u434:ℕ:= 194
  let u440:ℕ:= 719422706382292314227864
  let u441 (BQ:ℚ):ℚ:= (50:ℚ) ^ 7 * BQ
  let u449:ℚ:= (25:ℚ) ^ 11 * u410
  let u442 (BQ:ℚ):ℚ:= u449 / u441 BQ
  have u435:1 < u440:= by decide
  let u436 (Y:ℕ):ℕ:= Math.B699.N7.d65 u440 Y u435
  have u437 (Y:ℕ) (hY:u433 ≤ Y)
      (hprevious:u440 ^ (u434 - 1) ≤ 4 * u433):
      u434 ≤ u436 Y:= by
    exact Math.B699.N7.d67 u440 u433 Y u434
      u435 hY (by decide) hprevious
  have u438 (Y:ℕ) (hY:u433 ≤ Y)
      (hprevious:u440 ^ (u434 - 1) ≤ 4 * u433):
      149 ≤ u436 Y:= by
    have h:= u437 Y hY hprevious
    dsimp only [u434] at h
    omega
  have u439 (Y e f A C:ℕ)
      (hY:u433 ≤ Y)
      (hprevious:u440 ^ (u434 - 1) ≤ 4 * u433)
      (hrateP:5 ^ 22000 ≤ u440 ^ 648)
      (hbaseP:(5 ^ 22000) ^ u434 ≤ u433 ^ 648)
      (hlookP:4 ^ 648 * (5 ^ 22000) ^ (u434 + 1) ≤ u440 ^ (648 * u434))
      (hrateQ:7 ^ 22000 ≤ u440 ^ 784)
      (hbaseQ:(7 ^ 22000) ^ u434 ≤ u433 ^ 784)
      (hlookQ:4 ^ 784 * (7 ^ 22000) ^ (u434 + 1) ≤ u440 ^ (784 * u434))
      (hwindowP:Y ≤ 5 ^ e * A) (hwindowQ:Y ≤ 7 ^ f * C)
      (hsmallP:A ^ 1000 < Y ^ 352) (hsmallQ:C ^ 1000 < Y ^ 216):
      22 * u436 Y < e ∧ 22 * u436 Y < f:= by
    have hY0:0 < u433:= Nat.pow_pos (by decide:0 < (2:ℕ))
    have hM:0 < u434:= by decide
    constructor
    · have hP:= u397
        5 22 1000 352 u440 u434 u433 Y e A
        (by decide) (by decide) u435 hY0 hY hM
      simp only [show 22 * 1000 = 22000 by decide,
        show 1000 - 352 = 648 by decide] at hP
      exact hP hprevious hrateP hbaseP hlookP hwindowP hsmallP
    · have hQ:= u397
        7 22 1000 216 u440 u434 u433 Y f C
        (by decide) (by decide) u435 hY0 hY hM
      simp only [show 22 * 1000 = 22000 by decide,
        show 1000 - 216 = 784 by decide] at hQ
      exact hQ hprevious hrateQ hbaseQ hlookQ hwindowQ hsmallQ
  let u443:ℚ:= ((25:ℚ) * 49) ^ 11 * u410
  let u444 (BE:ℚ):ℚ:= (50:ℚ) ^ 4 * BE
  let u445 (BE:ℚ):ℚ:= u443 / u444 BE
  have u446 (m:ℕ) (hm:149 ≤ m) (row:Bool)
      (BQ:ℚ) (hBQ:0 < BQ) (hQ:|u411 m row| ≤ BQ ^ m)
      (hA:(48:ℚ) < u442 BQ ^ m):
      2 * (24 * |(u414 m row:ℚ)|) < (25:ℚ) ^ (11 * m):= by
    have hden:0 < u441 BQ:= by unfold u441; positivity
    have hnum:(48:ℚ) * u441 BQ ^ m < u449 ^ m:= by
      calc
        _ < u442 BQ ^ m * u441 BQ ^ m:=
          mul_lt_mul_of_pos_right hA (pow_pos hden m)
        _ = u449 ^ m:=
          u567 u449 (u441 BQ)
            (ne_of_gt hden) m
    have hsmall:(48:ℚ) * ((50:ℚ) ^ 7 * BQ) ^ m <
        (25:ℚ) ^ (11 * m) * u410 ^ m:= by
      calc
        _ < u449 ^ m:= hnum
        _ = (25:ℚ) ^ (11 * m) * u410 ^ m:= by
          simp only [u449,mul_pow,← pow_mul]
    have h:= u566
      (u410 ^ m) ((25:ℚ) ^ (11 * m)) 48 |(u414 m row:ℚ)|
      (((50:ℚ) ^ 7 * BQ) ^ m) (pow_pos u416 m) (by norm_num)
      (u420 m hm row BQ hBQ.le hQ) hsmall
    nlinarith only [h]
  have u447 (m:ℕ) (hm:149 ≤ m) (row:Bool)
      (BE:ℚ) (hBE:0 < BE) (hE:|u412 m row| ≤ BE ^ m)
      (V Nq:ℕ) (hNV:(49:ℚ) ^ (11 * m) * (V:ℚ) = (Nq:ℚ))
      (hNsmall:2 * (Nq:ℚ) < u445 BE ^ m):
      2 * (|(u415 m row:ℚ)| * (V:ℚ)) < (25:ℚ) ^ (11 * m):= by
    have hden:0 < u444 BE:= by unfold u444; positivity
    have hsmall:(2 * (V:ℚ)) * u444 BE ^ m <
        (25:ℚ) ^ (11 * m) * u410 ^ m:= by
      apply (Rat.mul_lt_mul_right
        (pow_pos (by norm_num:(0:ℚ) < 49) (11 * m))).mp
      calc
        (2 * (V:ℚ)) * u444 BE ^ m * (49:ℚ) ^ (11 * m) =
            (2 * (Nq:ℚ)) * u444 BE ^ m:= by rw [← hNV]; ring
        _ < u445 BE ^ m * u444 BE ^ m:=
          mul_lt_mul_of_pos_right hNsmall (pow_pos hden m)
        _ = u443 ^ m:=
          u567 u443 (u444 BE)
            (ne_of_gt hden) m
        _ = ((25:ℚ) ^ (11 * m) * u410 ^ m) * (49:ℚ) ^ (11 * m):= by
          simp only [u443,mul_pow,← pow_mul]
          ring
    have h:= u566
      (u410 ^ m) ((25:ℚ) ^ (11 * m)) (2 * (V:ℚ))
      |(u415 m row:ℚ)| (u444 BE ^ m)
      (pow_pos u416 m) (by positivity)
      (u421 m hm row BE hBE.le hE) hsmall
    nlinarith only [h]
  have u448 (m:ℕ) (hm:149 ≤ m) (row:Bool)
      (BQ BE:ℚ) (hBQ:0 < BQ) (hBE:0 < BE)
      (hQ:|u411 m row| ≤ BQ ^ m) (hE:|u412 m row| ≤ BE ^ m)
      (hA:(48:ℚ) < u442 BQ ^ m)
      (V Nq:ℕ) (hNV:(49:ℚ) ^ (11 * m) * (V:ℚ) = (Nq:ℚ))
      (hNsmall:2 * (Nq:ℚ) < u445 BE ^ m):
      24 * |u414 m row| + |u415 m row| * (V:ℤ) < (25:ℤ) ^ (11 * m):= by
    have h:= u568
      (24 * |(u414 m row:ℚ)|) (|(u415 m row:ℚ)| * (V:ℚ))
      ((25:ℚ) ^ (11 * m))
      (u446 m hm row BQ hBQ hQ hA)
      (u447 m hm row BE hBE hE V Nq hNV hNsmall)
    exact_mod_cast h
  have u450
      (BQ BE:ℚ) (hBQ:0 < BQ) (hBE:0 < BE)
      (hQ:∀ m:ℕ,149 ≤ m → ∀ row:Bool,|u411 m row| ≤ BQ ^ m)
      (hE:∀ m:ℕ,149 ≤ m → ∀ row:Bool,|u412 m row| ≤ BE ^ m)
      (hAone:1 ≤ u442 BQ) (hAbase:(48:ℚ) < u442 BQ ^ 194)
      (hW:(u440:ℚ) ≤ u445 BE)
      (hprevious:u440 ^ (u434 - 1) ≤ 4 * u433)
      (hrateP:5 ^ 22000 ≤ u440 ^ 648)
      (hbaseP:(5 ^ 22000) ^ u434 ≤ u433 ^ 648)
      (hlookP:4 ^ 648 * (5 ^ 22000) ^ (u434 + 1) ≤ u440 ^ (648 * u434))
      (hrateQ:7 ^ 22000 ≤ u440 ^ 784)
      (hbaseQ:(7 ^ 22000) ^ u434 ≤ u433 ^ 784)
      (hlookQ:4 ^ 784 * (7 ^ 22000) ^ (u434 + 1) ≤ u440 ^ (784 * u434))
      (Y e f A C:ℕ) (hY:u433 ≤ Y) (hC:1 ≤ C)
      (hwindowP:Y ≤ 5 ^ e * A) (hwindowQ:Y ≤ 7 ^ f * C)
      (hupperQ:7 ^ f * C ≤ 2 * Y)
      (hgap:|(5:ℤ) ^ e * (A:ℤ) - (7:ℤ) ^ f * (C:ℤ)| ≤ 24):
      Y ^ 352 ≤ A ^ 1000 ∨ Y ^ 216 ≤ C ^ 1000:= by
    by_cases hP:Y ^ 352 ≤ A ^ 1000
    · exact Or.inl hP
    by_cases hQcofactor:Y ^ 216 ≤ C ^ 1000
    · exact Or.inr hQcofactor
    exfalso
    have hsmallP:A ^ 1000 < Y ^ 352:= Nat.lt_of_not_ge hP
    have hsmallQ:C ^ 1000 < Y ^ 216:= Nat.lt_of_not_ge hQcofactor
    let m:= u436 Y
    obtain ⟨he,hf⟩:= u439 Y e f A C hY hprevious
      hrateP hbaseP hlookP hrateQ hbaseQ hlookQ hwindowP hwindowQ hsmallP hsmallQ
    change 22 * m < e at he
    change 22 * m < f at hf
    have hm:149 ≤ m:= u438 Y hY hprevious
    have hmM:194 ≤ m:= u437 Y hY hprevious
    have hAm:(48:ℚ) < u442 BQ ^ m:=
      lt_of_lt_of_le hAbase (pow_le_pow_right₀ hAone hmM)
    have hthreshold:(4:ℚ) * (Y:ℚ) < (u440:ℚ) ^ m:= by
      have h:= Math.B699.N7.d71 u440 Y u435
      change 4 * Y < u440 ^ m at h
      exact_mod_cast h
    have hWm:(4:ℚ) * (Y:ℚ) < u445 BE ^ m:=
      lt_of_lt_of_le hthreshold (pow_le_pow_left₀ (Nat.cast_nonneg u440) hW m)
    let V:ℕ:= 7 ^ (f - 22 * m) * C
    let Nq:ℕ:= 7 ^ f * C
    have hNVnat:(49:ℕ) ^ (11 * m) * V = Nq:= by
      have hpow:(49:ℕ) ^ (11 * m) = (7:ℕ) ^ (22 * m):= by
        calc
          _ = ((7:ℕ) ^ 2) ^ (11 * m):= by norm_num
          _ = (7:ℕ) ^ (22 * m):= by rw [← Nat.pow_mul]; congr 1 <;> ring
      dsimp only [V,Nq]
      rw [hpow]
      exact u398 7 f (22 * m) C (Nat.le_of_lt hf)
    have hNV:(49:ℚ) ^ (11 * m) * (V:ℚ) = (Nq:ℚ):= by exact_mod_cast hNVnat
    have hNsmall:2 * (Nq:ℚ) < u445 BE ^ m:= by
      have hN:(Nq:ℚ) ≤ 2 * (Y:ℚ):= by exact_mod_cast hupperQ
      linarith
    obtain ⟨row,hlower⟩:= u422 m e f A C
      (by omega) (Nat.le_of_lt he) (Nat.le_of_lt hf) hC hgap
    have hVcast:(7:ℤ) ^ (f - 22 * m) * (C:ℤ) = (V:ℤ):= by
      dsimp only [V]
      simp only [Nat.cast_mul,Nat.cast_pow,Nat.cast_ofNat]
    have hVabs:|(7:ℤ) ^ (f - 22 * m) * (C:ℤ)| = (V:ℤ):= by
      rw [hVcast,abs_of_nonneg (Int.natCast_nonneg V)]
    have hlow:(25:ℤ) ^ (11 * m) ≤
        24 * |u414 m row| + |u415 m row| * (V:ℤ):= by
      simpa only [hVabs] using hlower
    have hstrict:= u448 m hm row BQ BE hBQ hBE
      (hQ m hm row) (hE m hm row) hAm V Nq hNV hNsmall
    exact (not_lt_of_ge hlow) hstrict
  have u451 (row:Bool):
      2 * |u138 11 7 (u455 row) 1 (1 / 50)| ≤ u426:= by
    cases row <;>
      norm_num [u138,u455,u426,Math.B699.N8.beta,u424,Math.B699.N18.d121,
        Math.B699.N18.d22,Math.B699.N18.d118,Math.B699.N18.d119,Finset.sum_range_succ,
        Polynomial.eval₂_finsetSum,Polynomial.eval₂_monomial,Nat.choose]
  have u452 (row:Bool):
      2 * |u139 11 7 (u455 row) 1 (1 / 50)| ≤ u427:= by
    cases row <;>
      norm_num [u139,u455,u427,Math.B699.N8.beta,u425,Math.B699.N18.d37,
        Math.B699.N18.d22,Math.B699.N18.d36,Finset.sum_range_succ,
        Polynomial.eval₂_finsetSum,Polynomial.eval₂_monomial,Nat.choose]
  have u453:1 ≤ u442 u426:= by
    norm_num [u442,u449,u441,u410,u426,Math.B699.N8.beta,u424]
  have u454:(u440:ℚ) ≤ u445 u427:= by
    norm_num [u440,u445,u443,u444,u410,u427,Math.B699.N8.beta,u425]
  have u423
      (qt:∀ row:Bool,Math.B699.N20.d1 u424 (u33 11 7 (u455 row) (1 / 50))
        (u31 11 7 (1 / 50)))
      (et:∀ row:Bool,Math.B699.N20.d1 u425 (u34 11 7 (u455 row) (1 / 50))
        (u32 11 7 (1 / 50)))
      (hAbase:(48:ℚ) < u442 u426 ^ 194)
      (hprevious:u440 ^ (u434 - 1) ≤ 4 * u433)
      (hrateP:5 ^ 22000 ≤ u440 ^ 648)
      (hbaseP:(5 ^ 22000) ^ u434 ≤ u433 ^ 648)
      (hlookP:4 ^ 648 * (5 ^ 22000) ^ (u434 + 1) ≤ u440 ^ (648 * u434))
      (hrateQ:7 ^ 22000 ≤ u440 ^ 784)
      (hbaseQ:(7 ^ 22000) ^ u434 ≤ u433 ^ 784)
      (hlookQ:4 ^ 784 * (7 ^ 22000) ^ (u434 + 1) ≤ u440 ^ (784 * u434))
      (Y e f A C:ℕ) (hY:u433 ≤ Y) (hC:1 ≤ C)
      (hwindowP:Y ≤ 5 ^ e * A) (hwindowQ:Y ≤ 7 ^ f * C)
      (hupperQ:7 ^ f * C ≤ 2 * Y)
      (hgap:|(5:ℤ) ^ e * (A:ℤ) - (7:ℤ) ^ f * (C:ℤ)| ≤ 24):
      Y ^ 352 ≤ A ^ 1000 ∨ Y ^ 216 ≤ C ^ 1000:= by
    obtain ⟨hQ,hE⟩:= u432 qt et
      u451 u452
    exact u450 u426 u427
      u428.2.2.1 u428.2.2.2 hQ hE
      u453 hAbase u454
      hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
      Y e f A C hY hC hwindowP hwindowQ hupperQ hgap
  have u461:u46 = u424:= rfl
  have u462:u53 = u425:= rfl
  have u463:u455 false = 1:= rfl
  have u464:u455 true = 0:= rfl
  have u465 (row:Bool):
      Math.B699.N20.d1 u424 (u33 11 7 (u455 row) (1 / 50)) (u31 11 7 (1 / 50)):= by
    cases row with
    | false =>
      simpa only [u463,u461,
        u49,
        u47,
        u43,
        u44,
        u45] using
          u57
    | true =>
      simpa only [u464,u461,
        u48,
        u47,
        u43,
        u44,
        u45] using
          u60
  have u466 (row:Bool):
      Math.B699.N20.d1 u425 (u34 11 7 (u455 row) (1 / 50)) (u32 11 7 (1 / 50)):= by
    cases row with
    | false =>
      simpa only [u463,u462,
        u56,
        u54,
        u50,
        u51,
        u52] using
          u59
    | true =>
      simpa only [u464,u462,
        u55,
        u54,
        u50,
        u51,
        u52] using
          u58
  let u476:ℕ:= 597437736012881227951062430964110589645194856223359405848312938496
  let u477:ℕ:= 520943374216082296273222463705031396332518779672682285308837890625
  let u478:ℚ:= (u476:ℚ) / (u477:ℚ)
  have u468:u442 u426 = u478:= by
    norm_num [u442,u449,u441,u410,u426,Math.B699.N8.beta,u424,
      u478,u476,u477]
  have u480:u477 ≤ u476:= by decide
  have u479:0 < u477:= by decide
  have u482:(0:ℚ) < (u477:ℚ):= by
    exact_mod_cast u479
  have u483:(1:ℚ) ≤ u478:= by
    unfold u478
    apply (le_div_iff₀ u482).mpr
    have h:(u477:ℚ) ≤ (u476:ℚ):= by
      exact_mod_cast u480
    simpa only [one_mul] using h
  have u481:
      2 * u477 ^ 32 ≤ u476 ^ 32:= by decide
  have u484:(2:ℚ) ≤ u478 ^ 32:= by
    unfold u478
    rw [div_pow]
    apply (le_div_iff₀ (pow_pos u482 32)).mpr
    exact_mod_cast u481
  have u485:(48:ℚ) < u478 ^ 194:= by
    have h64:(64:ℚ) ≤ u478 ^ 192:= by
      calc
        (64:ℚ) = (2:ℚ) ^ 6:= by norm_num
        _ ≤ (u478 ^ 32) ^ 6:=
          pow_le_pow_left₀ (by norm_num:(0:ℚ) ≤ 2) u484 6
        _ = u478 ^ 192:= by rw [← pow_mul]
    exact lt_of_lt_of_le (by norm_num:(48:ℚ) < 64)
      (h64.trans (pow_le_pow_right₀ u483 (by decide:192 ≤ 194)))
  have u469:(48:ℚ) < u442 u426 ^ 194:= by
    rw [u468]
    exact u485
  let u489:ℕ:= 719422706382292314227864
  have u486:u489 ^ 1024 ≤ (2:ℕ) ^ 81154:= by
    set_option exponentiation.threshold 81154 in decide
  have u500 (k:ℕ):(2:ℕ) ^ (k + 2) = 4 * (2:ℕ) ^ k:= by
    calc
      (2:ℕ) ^ (k + 2) = (2:ℕ) ^ k * 2 ^ 2:= Nat.pow_add 2 k 2
      _ = (2:ℕ) ^ k * 4:= by rw [show (2:ℕ) ^ 2 = 4 by decide]
      _ = 4 * (2:ℕ) ^ k:= Nat.mul_comm _ _
  have u491:u489 ^ (194 - 1) ≤ 4 * (2:ℕ) ^ 15359:= by
    have h:= Math.B699.N7.d7 u489 1 1 193 15361 81154 1024
      (by decide)
      (by set_option exponentiation.threshold 81154 in exact u486)
      (by decide)
    have hpred:u489 ^ 193 ≤ (2:ℕ) ^ 15361:= by
      simpa only [Nat.pow_one] using h
    calc
      u489 ^ (194 - 1) = u489 ^ 193:= rfl
      _ ≤ (2:ℕ) ^ 15361:= hpred
      _ = 4 * (2:ℕ) ^ 15359:= u500 15359
  have u487:(5:ℕ) ^ 4096 ≤ (2:ℕ) ^ 9511:= by
    set_option exponentiation.threshold 9511 in decide
  have u490:(2:ℕ) ^ 81153 ≤ u489 ^ 1024:= by
    set_option exponentiation.threshold 81154 in decide
  have u492:(5:ℕ) ^ 22000 ≤ u489 ^ 648 ∧
      ((5:ℕ) ^ 22000) ^ 194 ≤ ((2:ℕ) ^ 15359) ^ 648 ∧
      (4:ℕ) ^ 648 * (5 ^ 22000) ^ (194+1) ≤ u489 ^ (648*194):= by
    exact Math.B699.N7.d25 5 u489 22000 648 194 15359
      9511 4096 81153 1024
      (by decide) (by decide)
      (by set_option exponentiation.threshold 9511 in exact u487)
      (by set_option exponentiation.threshold 81154 in exact u490)
      (by decide) (by decide) (by decide)
  have u494:(5:ℕ) ^ 22000 ≤ u489 ^ 648:= u492.1
  have u495:((5:ℕ) ^ 22000) ^ 194 ≤ ((2:ℕ)^ 15359) ^ 648:= u492.2.1
  have u496:(4:ℕ) ^ 648 * (5 ^ 22000) ^ (194+1) ≤ u489 ^ (648*194):= u492.2.2
  have u488:(7:ℕ) ^ 256 ≤ (2:ℕ) ^ 719:= by
    set_option exponentiation.threshold 719 in decide +kernel
  have u493:(7:ℕ) ^ 22000 ≤ u489 ^ 784 ∧
      ((7:ℕ) ^ 22000) ^ 194 ≤ ((2:ℕ) ^ 15359) ^ 784 ∧
      (4:ℕ) ^ 784 * (7 ^ 22000) ^ (194+1) ≤ u489 ^ (784*194):= by
    exact Math.B699.N7.d25 7 u489 22000 784 194 15359
      719 256 81153 1024
      (by decide) (by decide)
      (by set_option exponentiation.threshold 719 in exact u488)
      (by set_option exponentiation.threshold 81154 in exact u490)
      (by decide) (by decide) (by decide)
  have u497:(7:ℕ) ^ 22000 ≤ u489 ^ 784:= u493.1
  have u498:((7:ℕ) ^ 22000) ^ 194 ≤ ((2:ℕ)^ 15359) ^ 784:= u493.2.1
  have u499:(4:ℕ) ^ 784 * (7 ^ 22000) ^ (194+1) ≤ u489 ^ (784*194):= u493.2.2
  have u470:
      (48:ℚ) < u442 u426 ^ 194 ∧
      u440 ^ (u434 - 1) ≤ 4 * u433 ∧
      (5:ℕ) ^ 22000 ≤ u440 ^ 648 ∧
      ((5:ℕ) ^ 22000) ^ u434 ≤ u433 ^ 648 ∧
      (4:ℕ) ^ 648 * (5 ^ 22000) ^ (u434 + 1) ≤ u440 ^ (648 * u434) ∧
      (7:ℕ) ^ 22000 ≤ u440 ^ 784 ∧
      ((7:ℕ) ^ 22000) ^ u434 ≤ u433 ^ 784 ∧
      (4:ℕ) ^ 784 * (7 ^ 22000) ^ (u434 + 1) ≤ u440 ^ (784 * u434):= by
    have h:= And.intro u469
      (And.intro u491
        (And.intro u494
          (And.intro u495
            (And.intro u496
              (And.intro u497
                (And.intro u498
                  u499))))))
    simpa only [u440,u489,
      u434,u433] using h
  have u471
      (qt:∀ row:Bool,Math.B699.N20.d1 u424 (u33 11 7 (u455 row) (1 / 50))
        (u31 11 7 (1 / 50)))
      (et:∀ row:Bool,Math.B699.N20.d1 u425 (u34 11 7 (u455 row) (1 / 50))
        (u32 11 7 (1 / 50)))
      (Y e f A C:ℕ) (hY:u433 ≤ Y) (hC:1 ≤ C)
      (hwindowP:Y ≤ 5 ^ e * A) (hwindowQ:Y ≤ 7 ^ f * C)
      (hupperQ:7 ^ f * C ≤ 2 * Y)
      (hgap:|(5:ℤ) ^ e * (A:ℤ) - (7:ℤ) ^ f * (C:ℤ)| ≤ 24):
      Y ^ 352 ≤ A ^ 1000 ∨ Y ^ 216 ≤ C ^ 1000:= by
    obtain ⟨hA,hprevious,hrateP,hbaseP,hlookP,hrateQ,hbaseQ,hlookQ⟩:=
      u470
    exact u423 qt et hA
      hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
      Y e f A C hY hC hwindowP hwindowQ hupperQ hgap
  have u467
      (Y e f A C:ℕ) (hY:u433 ≤ Y) (hC:1 ≤ C)
      (hwindowP:Y ≤ 5 ^ e * A) (hwindowQ:Y ≤ 7 ^ f * C)
      (hupperQ:7 ^ f * C ≤ 2 * Y)
      (hgap:|(5:ℤ) ^ e * (A:ℤ) - (7:ℤ) ^ f * (C:ℤ)| ≤ 24):
      Y ^ 352 ≤ A ^ 1000 ∨ Y ^ 216 ≤ C ^ 1000:= by
    exact u471 u465 u466
      Y e f A C hY hC hwindowP hwindowQ hupperQ hgap
  have u472 {n a b:ℕ} (ha:a < 11) (hb:b < 11):
      |((n - a:ℕ):ℤ) - ((n - b:ℕ):ℤ)| ≤ 10:= by
    apply abs_le.mpr
    constructor <;> omega
  have u473 {n p:ℕ} (hn:20 ≤ n) (window:N5.N15.d2 n p):
      u166 n ≤ p ^ ((n.choose 11).factorization p) * window.cofactor ∧
        p ^ ((n.choose 11).factorization p) * window.cofactor ≤ 2 * u166 n:= by
    have hrepr:p ^ ((n.choose 11).factorization p) * window.cofactor = n - window.offset:= by
      simpa only [N5.N15.d108,Nat.mul_comm] using window.equation
    simpa only [← hrepr] using u167 hn window.offset_lt
  have u474 {n:ℕ}
      (hn:20 ≤ n) (hY:u433 ≤ u166 n)
      (wp:N5.N15.d2 n 5) (wq:N5.N15.d2 n 7):
      (N5.N15.d108 n 5) ^ 1000 * (u166 n) ^ 352 ≤ n ^ 1000 ∨
        (N5.N15.d108 n 7) ^ 1000 * (u166 n) ^ 216 ≤ n ^ 1000:= by
    have hpBounds:= u473 hn wp
    have hqBounds:= u473 hn wq
    have hpNat:(5:ℕ) ^ ((n.choose 11).factorization 5) * wp.cofactor = n - wp.offset:= by
      simpa only [N5.N15.d108,Nat.mul_comm] using wp.equation
    have hqNat:(7:ℕ) ^ ((n.choose 11).factorization 7) * wq.cofactor = n - wq.offset:= by
      simpa only [N5.N15.d108,Nat.mul_comm] using wq.equation
    have hpInt:(5:ℤ) ^ ((n.choose 11).factorization 5) * (wp.cofactor:ℤ) =
        ((n - wp.offset:ℕ):ℤ):= by exact_mod_cast hpNat
    have hqInt:(7:ℤ) ^ ((n.choose 11).factorization 7) * (wq.cofactor:ℤ) =
        ((n - wq.offset:ℕ):ℤ):= by exact_mod_cast hqNat
    have hgap:|(5:ℤ) ^ ((n.choose 11).factorization 5) * (wp.cofactor:ℤ) -
        (7:ℤ) ^ ((n.choose 11).factorization 7) * (wq.cofactor:ℤ)| ≤ 24:= by
      rw [hpInt,hqInt]
      exact le_trans (u472 wp.offset_lt wq.offset_lt)
        (by decide:(10:ℤ) ≤ 24)
    have hcof:= u467 (u166 n)
      ((n.choose 11).factorization 5) ((n.choose 11).factorization 7)
      wp.cofactor wq.cofactor hY wq.cofactor_pos
      hpBounds.1 hqBounds.1 hqBounds.2 hgap
    rcases hcof with hP | hQ
    · exact Or.inl (u678 wp hP)
    · exact Or.inr (u678 wq hQ)
  have u475 {n:ℕ} (hn:(2:ℕ) ^ 15360 ≤ n):
      (N5.N15.d108 n 5) ^ 1000 * ((n + 1) / 2) ^ 352 ≤ n ^ 1000 ∨
        (N5.N15.d108 n 7) ^ 1000 * ((n + 1) / 2) ^ 216 ≤ n ^ 1000:= by
    have hlarge:20 ≤ n:=
      u170 (by decide:5 ≤ 15360) hn
    have hn11:11 ≤ n:= Nat.le_trans (by decide:11 ≤ 20) hlarge
    have hY:u433 ≤ u166 n:= by
      have h:= u169 (n:= n) (k:= 15359)
      simp only [show 15359 + 1 = 15360 by decide] at h
      simpa only [u433] using h hn
    obtain ⟨wp⟩:= u676 (n:= n) (p:= 5) hn11 (by decide:Nat.Prime 5)
    obtain ⟨wq⟩:= u676 (n:= n) (p:= 7) hn11 (by decide:Nat.Prime 7)
    simpa only [u166] using u474 hlarge hY wp wq
  have u506 (row:Bool):
      2 * |u139 23 15 (u724 row) 1 (1 / 9)| ≤
        u696:=
    u377 row
  have u510 {n p:ℕ} (window:N5.N15.d2 n p):
      N5.N15.d108 n p ≤ n:= by
    calc
      N5.N15.d108 n p = 1 * N5.N15.d108 n p:= by rw [one_mul]
      _ ≤ window.cofactor * N5.N15.d108 n p:=
        Nat.mul_le_mul_right _ window.cofactor_pos
      _ = n - window.offset:= window.equation
      _ ≤ n:= Nat.sub_le _ _
  have u511 {n p:ℕ} (hn:11 ≤ n) (hp:p.Prime):
      N5.N15.d108 n p ≤ n:= by
    obtain ⟨window⟩:= u676 (n:= n) (p:= p) hn hp
    exact u510 window
  have u512 {n:ℕ} (hn:1 ≤ n):1 ≤ u166 n:= by
    dsimp only [u166]
    omega
  let u606:ℕ:= 2 ^ 15359
  let u597:ℚ:= 19015678853391498507418691 / 79228162514264337593543950336
  let u628 (row:Bool):ℕ:= if row then 0 else 1
  have u634:u84 = u597:= rfl
  have u636:u628 false = 1:= rfl
  have u637:u628 true = 0:= rfl
  have u638 (row:Bool):
      Math.B699.N20.d1 u597 (u33 9 5 (u628 row) (1 / 49)) (u31 9 5 (1 / 49)):= by
    cases row with
    | false =>
      simpa only [u636,u634,
        u87,
        u85,
        u81,
        u82,
        u83] using
          u98
    | true =>
      simpa only [u637,u634,
        u86,
        u85,
        u81,
        u82,
        u83] using
          u97
  let u598:ℚ:= 18567076935738840000672813 / 19807040628566084398385987584
  have u635:u91 = u598:= rfl
  have u639 (row:Bool):
      Math.B699.N20.d1 u598 (u34 9 5 (u628 row) (1 / 49)) (u32 9 5 (1 / 49)):= by
    cases row with
    | false =>
      simpa only [u636,u635,
        u94,
        u92,
        u88,
        u89,
        u90] using
          u96
    | true =>
      simpa only [u637,u635,
        u93,
        u92,
        u88,
        u89,
        u90] using
          u95
  let u599:ℚ:= Math.B699.N8.beta 9 5 * u597
  let u600:ℚ:= Math.B699.N8.beta 9 5 * u598
  have u601:0 < u597 ∧ 0 < u598 ∧ 0 < u599 ∧ 0 < u600:= by
    norm_num [u597,u598,u599,u600,Math.B699.N8.beta]
  let u584 (m:ℕ) (row:Bool):ℚ:=
    u138 9 5 (u628 row) m (1 / 49)
  let u585 (m:ℕ) (row:Bool):ℚ:=
    u139 9 5 (u628 row) m (1 / 49)
  have u602 (F K Math.B699.N8.beta lam weight:ℚ) (m:ℕ)
      (hm:1 ≤ m) (hbeta:0 ≤ Math.B699.N8.beta) (hlam:0 ≤ lam) (hweight:0 ≤ weight)
      (hF:F ≤ K * Math.B699.N8.beta ^ m) (hcap:K * weight ≤ lam):
      F * (lam ^ (m - 1) * weight) ≤ (Math.B699.N8.beta * lam) ^ m:= by
    calc
      _ ≤ (K * Math.B699.N8.beta ^ m) * (lam ^ (m - 1) * weight):=
        mul_le_mul_of_nonneg_right hF (mul_nonneg (pow_nonneg hlam _) hweight)
      _ = (Math.B699.N8.beta ^ m * lam ^ (m - 1)) * (K * weight):= by ring
      _ ≤ (Math.B699.N8.beta ^ m * lam ^ (m - 1)) * lam:=
        mul_le_mul_of_nonneg_left hcap (mul_nonneg (pow_nonneg hbeta _) (pow_nonneg hlam _))
      _ = (Math.B699.N8.beta * lam) ^ m:= by
        simp only [mul_pow]
        rw [mul_assoc,← pow_succ,Nat.sub_add_cancel hm]
  have u603 (delta m:ℕ) (hdelta:delta = 0 ∨ delta = 1)
      (hm:1 ≤ m) (lam:ℚ) (hlam:0 < lam)
      (tree:Math.B699.N20.d1 lam (u33 9 5 delta (1 / 49)) (u31 9 5 (1 / 49)))
      (hcap:2 * |u138 9 5 delta 1 (1 / 49)| ≤ Math.B699.N8.beta 9 5 * lam):
      |u138 9 5 delta m (1 / 49)| ≤ (Math.B699.N8.beta 9 5 * lam) ^ m:= by
    have hd:delta ≤ 5:= by rcases hdelta with h | h <;> omega
    have hb:0 < Math.B699.N8.beta 9 5:= by norm_num [Math.B699.N8.beta]
    have hw:0 ≤ Math.B699.N21.moment (u33 9 5 delta (1 / 49)):=
      u875 (u37 9 5 delta (1 / 49) (by norm_num))
    have heq:(2 * Math.B699.N8.d44 9 5 delta 1 / Math.B699.N8.beta 9 5) *
        Math.B699.N21.moment (u33 9 5 delta (1 / 49)) =
        2 * |u138 9 5 delta 1 (1 / 49)| / Math.B699.N8.beta 9 5:= by
      rw [u141 9 5 delta (1 / 49) (by decide) hd (by norm_num)]
      ring
    have hcap':(2 * Math.B699.N8.d44 9 5 delta 1 / Math.B699.N8.beta 9 5) *
        Math.B699.N21.moment (u33 9 5 delta (1 / 49)) ≤ lam:= by
      rw [heq]
      exact (div_le_iff₀ hb).mpr (by simpa only [mul_comm lam (Math.B699.N8.beta 9 5)] using hcap)
    have hsource:= u18 9 5 delta m (1 / 49) lam
      (by decide) hd hm (le_of_lt hlam) tree
    rw [u140 9 5 delta m (by decide) hd hm] at hsource
    exact le_trans hsource (u602 _ _ _ _ _ m hm (le_of_lt hb)
      (le_of_lt hlam) hw (le_of_lt (u3 delta m hdelta hm)) hcap')
  have u604 (delta m:ℕ) (hdelta:delta = 0 ∨ delta = 1)
      (hm:1 ≤ m) (lam:ℚ) (hlam:0 < lam)
      (tree:Math.B699.N20.d1 lam (u34 9 5 delta (1 / 49)) (u32 9 5 (1 / 49)))
      (hcap:2 * |u139 9 5 delta 1 (1 / 49)| ≤ Math.B699.N8.beta 9 5 * lam):
      |u139 9 5 delta m (1 / 49)| ≤ (Math.B699.N8.beta 9 5 * lam) ^ m:= by
    have hd:delta ≤ 5:= by rcases hdelta with h | h <;> omega
    have hb:0 < Math.B699.N8.beta 9 5:= by norm_num [Math.B699.N8.beta]
    have hw:0 ≤ Math.B699.N21.moment (u34 9 5 delta (1 / 49)):=
      u875 (u20 9 5 delta (1 / 49) (by norm_num))
    have heq:(2 * Math.B699.N8.d44 9 5 delta 1 / Math.B699.N8.beta 9 5) *
        Math.B699.N21.moment (u34 9 5 delta (1 / 49)) =
        2 * |u139 9 5 delta 1 (1 / 49)| / Math.B699.N8.beta 9 5:= by
      rw [u142 9 5 delta (1 / 49) (by decide) hd (by norm_num)]
      ring
    have hcap':(2 * Math.B699.N8.d44 9 5 delta 1 / Math.B699.N8.beta 9 5) *
        Math.B699.N21.moment (u34 9 5 delta (1 / 49)) ≤ lam:= by
      rw [heq]
      exact (div_le_iff₀ hb).mpr (by simpa only [mul_comm lam (Math.B699.N8.beta 9 5)] using hcap)
    have hsource:= u19 9 5 delta m (1 / 49) lam
      (by decide) hd hm (le_of_lt hlam) tree
    rw [u140 9 5 delta m (by decide) hd hm] at hsource
    exact le_trans hsource (u602 _ _ _ _ _ m hm (le_of_lt hb)
      (le_of_lt hlam) hw (le_of_lt (u3 delta m hdelta hm)) hcap')
  have u629 (row:Bool):u628 row = 0 ∨ u628 row = 1:= by
    cases row <;> simp [u628]
  have u605
      (qt:∀ row:Bool,Math.B699.N20.d1 u597 (u33 9 5 (u628 row) (1 / 49))
        (u31 9 5 (1 / 49)))
      (et:∀ row:Bool,Math.B699.N20.d1 u598 (u34 9 5 (u628 row) (1 / 49))
        (u32 9 5 (1 / 49)))
      (qc:∀ row:Bool,2 * |u138 9 5 (u628 row) 1 (1 / 49)| ≤ u599)
      (ec:∀ row:Bool,2 * |u139 9 5 (u628 row) 1 (1 / 49)| ≤ u600):
      (∀ m:ℕ,224 ≤ m → ∀ row:Bool,|u584 m row| ≤ u599 ^ m) ∧
        (∀ m:ℕ,224 ≤ m → ∀ row:Bool,|u585 m row| ≤ u600 ^ m):= by
    constructor
    · intro m hm row
      exact u603 (u628 row) m (u629 row) (by omega)
        u597 u601.1 (qt row) (qc row)
    · intro m hm row
      exact u604 (u628 row) m (u629 row) (by omega)
        u598 u601.2.1 (et row) (ec row)
  let u607:ℕ:= 285
  let u613:ℕ:= 17498099772305953
  let u583:ℚ:= (1302991 / 1000000:ℚ) ^ 5
  let u614:ℚ:= (49:ℚ) ^ 9 * u583
  let u615 (BQ:ℚ):ℚ:= (3:ℚ) ^ 9 * (49:ℚ) ^ 5 * BQ
  let u616 (BQ:ℚ):ℚ:= u614 / u615 BQ
  let u587 (m:ℕ) (row:Bool):ℤ:= u1006 (5 * m) (4 * m - 1) 1 49 row
  let u588 (m:ℕ) (row:Bool):ℤ:=
    (49:ℤ) ^ (9 * m) * u1005 (5 * m) (4 * m - 1) 1 49 row -
      (48:ℤ) ^ (9 * m) * u587 m row
  have u595 (m e f A C:ℕ)
      (hm:1 ≤ m) (he:18 * m ≤ e) (hf:36 * m ≤ f) (hC:1 ≤ C)
      (hgap:|(7:ℤ) ^ e * (A:ℤ) - (2:ℤ) ^ f * (C:ℤ)| ≤ 24):
      ∃ row:Bool,(49:ℤ) ^ (9 * m) ≤
        (3:ℤ) ^ (9 * m) * 24 * |u587 m row| +
          |u588 m row| * |(2:ℤ) ^ (f - 36 * m) * (C:ℤ)|:= by
    have hp:(49:ℕ) ^ (9 * m) = (7:ℕ) ^ (18 * m):= by
      calc
        _ = ((7:ℕ) ^ 2) ^ (9 * m):= by norm_num
        _ = (7:ℕ) ^ (18 * m):= by rw [← Nat.pow_mul]; congr 1 <;> ring
    have hq:(16:ℕ) ^ (9 * m) = (2:ℕ) ^ (36 * m):= by
      calc
        _ = ((2:ℕ) ^ 4) ^ (9 * m):= by norm_num
        _ = (2:ℕ) ^ (36 * m):= by rw [← Nat.pow_mul]; congr 1 <;> ring
    have hPnat:(49:ℕ) ^ (9 * m) * (7 ^ (e - 18 * m) * A) = 7 ^ e * A:= by
      rw [hp]
      exact u398 7 e (18 * m) A he
    have hQnat:(16:ℕ) ^ (9 * m) * (2 ^ (f - 36 * m) * C) = 2 ^ f * C:= by
      rw [hq]
      exact u398 2 f (36 * m) C hf
    have hPint:(49:ℤ) ^ (9 * m) * ((7:ℤ) ^ (e - 18 * m) * (A:ℤ)) =
        (7:ℤ) ^ e * (A:ℤ):= by exact_mod_cast hPnat
    have hQint:(16:ℤ) ^ (9 * m) * ((2:ℤ) ^ (f - 36 * m) * (C:ℤ)) =
        (2:ℤ) ^ f * (C:ℤ):= by exact_mod_cast hQnat
    have hgap':|(49:ℤ) ^ (9 * m) * ((7:ℤ) ^ (e - 18 * m) * (A:ℤ)) -
        (16:ℤ) ^ (9 * m) * ((2:ℤ) ^ (f - 36 * m) * (C:ℤ))| ≤ 24:= by
      rw [hPint,hQint]
      exact hgap
    have hV:(2:ℤ) ^ (f - 36 * m) * (C:ℤ) ≠ 0:= by
      apply mul_ne_zero (pow_ne_zero _ (by decide:(2:ℤ) ≠ 0))
      exact_mod_cast (by omega:C ≠ 0)
    obtain ⟨row,_hne,hlower⟩:= u1007
      (5 * m) (4 * m - 1) (by omega) 1 49
      (r:= (49:ℤ) ^ (9 * m)) (s:= (16:ℤ) ^ (9 * m))
      (a:= 1) (b:= (3:ℤ) ^ (9 * m))
      (U:= (7:ℤ) ^ (e - 18 * m) * (A:ℤ))
      (V:= (2:ℤ) ^ (f - 36 * m) * (C:ℤ)) (D:= 24)
      (by decide) (by decide) (pow_nonneg (by decide) _)
      (by decide) (pow_pos (by decide) _) hV hgap'
    have hsb:(16:ℤ) ^ (9 * m) * (3:ℤ) ^ (9 * m) = (48:ℤ) ^ (9 * m):= by
      rw [← mul_pow]
      norm_num
    exact ⟨row,by simpa only [u587,u588,mul_one,hsb] using hlower⟩
  have u608:1 < u613:= by decide
  let u609 (Y:ℕ):ℕ:= Math.B699.N7.d65 u613 Y u608
  have u610 (Y:ℕ) (hY:u606 ≤ Y)
      (hprevious:u613 ^ (u607 - 1) ≤ 4 * u606):
      u607 ≤ u609 Y:= by
    exact Math.B699.N7.d67 u613 u606 Y u607
      u608 hY (by decide) hprevious
  have u611 (Y:ℕ) (hY:u606 ≤ Y)
      (hprevious:u613 ^ (u607 - 1) ≤ 4 * u606):
      224 ≤ u609 Y:= by
    have h:= u610 Y hY hprevious
    dsimp only [u607] at h
    omega
  have u612 (Y e f A C:ℕ)
      (hY:u606 ≤ Y)
      (hprevious:u613 ^ (u607 - 1) ≤ 4 * u606)
      (hrateP:7 ^ 18000 ≤ u613 ^ 940)
      (hbaseP:(7 ^ 18000) ^ u607 ≤ u606 ^ 940)
      (hlookP:4 ^ 940 * (7 ^ 18000) ^ (u607 + 1) ≤ u613 ^ (940 * u607))
      (hrateQ:2 ^ 36000 ≤ u613 ^ 670)
      (hbaseQ:(2 ^ 36000) ^ u607 ≤ u606 ^ 670)
      (hlookQ:4 ^ 670 * (2 ^ 36000) ^ (u607 + 1) ≤ u613 ^ (670 * u607))
      (hwindowP:Y ≤ 7 ^ e * A) (hwindowQ:Y ≤ 2 ^ f * C)
      (hsmallP:A ^ 1000 < Y ^ 60) (hsmallQ:C ^ 1000 < Y ^ 330):
      18 * u609 Y < e ∧ 36 * u609 Y < f:= by
    have hY0:0 < u606:= Nat.pow_pos (by decide:0 < (2:ℕ))
    have hM:0 < u607:= by decide
    constructor
    · have hP:= u397
        7 18 1000 60 u613 u607 u606 Y e A
        (by decide) (by decide) u608 hY0 hY hM
      simp only [show 18 * 1000 = 18000 by decide,
        show 1000 - 60 = 940 by decide] at hP
      exact hP hprevious hrateP hbaseP hlookP hwindowP hsmallP
    · have hQ:= u397
        2 36 1000 330 u613 u607 u606 Y f C
        (by decide) (by decide) u608 hY0 hY hM
      simp only [show 36 * 1000 = 36000 by decide,
        show 1000 - 330 = 670 by decide] at hQ
      exact hQ hprevious hrateQ hbaseQ hlookQ hwindowQ hsmallQ
  let u617:ℚ:= ((49:ℚ) * 16) ^ 9 * u583
  let u618 (BE:ℚ):ℚ:= (49:ℚ) ^ 4 * BE
  let u619 (BE:ℚ):ℚ:= u617 / u618 BE
  have u589:0 < u583:= by norm_num [u583]
  let u586 (m:ℕ) (row:Bool):ℚ:=
    (Math.B699.N18.qContent (5 * m - u628 row) (4 * m + u628 row - 1)
      (5 * m - u628 row):ℚ)
  have u590 (m:ℕ) (hm:224 ≤ m) (row:Bool):
      u583 ^ m ≤ u586 m row:= by
    have h:= u287
      (u628 row) m (u629 row) hm
    simpa only [u583,u586,← pow_mul] using le_of_lt h
  have u631 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      u1005 (5 * m) (4 * m - 1) 1 49 row =
        u942 (5 * m - u628 row) (4 * m + u628 row - 1) 1 49 ∧
      u1006 (5 * m) (4 * m - 1) 1 49 row =
        u1010 (5 * m - u628 row) (4 * m + u628 row - 1)
          (5 * m - u628 row) 1 49:= by
    have hv:4 * m - 1 + 1 = 4 * m:= by omega
    cases row <;> simp [u628,u1005,u1006,hv]
  have u632 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      (Math.B699.N18.qContent (5 * m - u628 row) (4 * m + u628 row - 1)
          (5 * m - u628 row):ℚ) *
        (u1006 (5 * m) (4 * m - 1) 1 49 row:ℚ) =
      (49:ℚ) ^ (5 * m - u628 row) *
        u138 9 5 (u628 row) m (1 / 49):= by
    have hq:= (u631 m hm row).2
    rw [hq,u154]
    have h:= u152 (5 * m - u628 row)
      (4 * m + u628 row - 1) (5 * m - u628 row) 1 49 (by decide)
    simpa only [u138,show (9:ℕ) - 5 = 4 by decide,one_mul,
      Int.cast_one,Int.cast_ofNat] using h
  have u591 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      u586 m row * (u587 m row:ℚ) =
        (49:ℚ) ^ (5 * m - u628 row) * u584 m row:= by
    simpa only [u586,u587,u584] using
      u632 m hm row
  have u593 (m:ℕ) (hm:224 ≤ m) (row:Bool)
      (BQ:ℚ) (hBQ:0 ≤ BQ) (hQ:|u584 m row| ≤ BQ ^ m):
      u583 ^ m * |(u587 m row:ℚ)| ≤ ((49:ℚ) ^ 5 * BQ) ^ m:= by
    have h:= u565
      (u586 m row) (u583 ^ m) ((49:ℚ) ^ (5 * m - u628 row))
      (u587 m row) (u584 m row) (BQ ^ m)
      (le_of_lt (pow_pos u589 m)) (u590 m hm row)
      (pow_nonneg (by norm_num) _) (u591 m (by omega) row) hQ
    calc
      _ ≤ (49:ℚ) ^ (5 * m - u628 row) * BQ ^ m:= h
      _ ≤ (49:ℚ) ^ (5 * m) * BQ ^ m:=
        mul_le_mul_of_nonneg_right
          (pow_le_pow_right₀ (by norm_num:(1:ℚ) ≤ 49) (Nat.sub_le _ _))
          (pow_nonneg hBQ m)
      _ = ((49:ℚ) ^ 5 * BQ) ^ m:= by rw [mul_pow,← pow_mul]
  have u620 (m:ℕ) (hm:224 ≤ m) (row:Bool)
      (BQ:ℚ) (hBQ:0 < BQ) (hQ:|u584 m row| ≤ BQ ^ m)
      (hA:(48:ℚ) < u616 BQ ^ m):
      2 * ((3:ℚ) ^ (9 * m) * 24 * |(u587 m row:ℚ)|) < (49:ℚ) ^ (9 * m):= by
    have hden:0 < u615 BQ:= by unfold u615; positivity
    have hnum:(48:ℚ) * u615 BQ ^ m < u614 ^ m:= by
      calc
        _ < u616 BQ ^ m * u615 BQ ^ m:=
          mul_lt_mul_of_pos_right hA (pow_pos hden m)
        _ = u614 ^ m:= u567 u614 (u615 BQ) (ne_of_gt hden) m
    have hsmall:((48:ℚ) * 3 ^ (9 * m)) * ((49:ℚ) ^ 5 * BQ) ^ m <
        (49:ℚ) ^ (9 * m) * u583 ^ m:= by
      calc
        _ = (48:ℚ) * u615 BQ ^ m:= by
          simp only [u615,mul_pow,← pow_mul]
          ring
        _ < u614 ^ m:= hnum
        _ = (49:ℚ) ^ (9 * m) * u583 ^ m:= by
          simp only [u614,mul_pow,← pow_mul]
    have h:= u566 (u583 ^ m) ((49:ℚ) ^ (9 * m))
      ((48:ℚ) * 3 ^ (9 * m)) |(u587 m row:ℚ)| (((49:ℚ) ^ 5 * BQ) ^ m)
      (pow_pos u589 m) (by positivity)
      (u593 m hm row BQ (le_of_lt hBQ) hQ) hsmall
    nlinarith [h]
  have u630 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      (5 * m - u628 row) + (4 * m + u628 row - 1) + 1 = 9 * m:= by
    rcases u629 row with h | h <;> rw [h] <;> omega
  have u633 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      (Math.B699.N18.qContent (5 * m - u628 row) (4 * m + u628 row - 1)
          (5 * m - u628 row):ℚ) *
        (((49:ℤ) ^ (9 * m) * u1005 (5 * m) (4 * m - 1) 1 49 row -
          (48:ℤ) ^ (9 * m) * u1006 (5 * m) (4 * m - 1) 1 49 row:ℤ):ℚ) =
      (49:ℚ) ^ (4 * m + u628 row - 1) *
        (1:ℚ) ^ (2 * (5 * m - u628 row) + 1) *
        u139 9 5 (u628 row) m (1 / 49):= by
    obtain ⟨hp,hq⟩:= u631 m hm row
    rw [hp,hq]
    have h:= u155 (5 * m - u628 row)
      (4 * m + u628 row - 1) 1 49 (by decide)
    simpa only [u630 m hm row,show (49:ℤ) - 1 = 48 by decide,
      Int.cast_one,Int.cast_ofNat,u139,show (9:ℕ) - 5 = 4 by decide,one_mul] using h
  have u592 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      u586 m row * (u588 m row:ℚ) =
        (49:ℚ) ^ (4 * m + u628 row - 1) * u585 m row:= by
    simpa only [u586,u588,u587,u585,one_pow,mul_one] using
      u633 m hm row
  have u594 (m:ℕ) (hm:224 ≤ m) (row:Bool)
      (BE:ℚ) (hBE:0 ≤ BE) (hE:|u585 m row| ≤ BE ^ m):
      u583 ^ m * |(u588 m row:ℚ)| ≤ ((49:ℚ) ^ 4 * BE) ^ m:= by
    have h:= u565
      (u586 m row) (u583 ^ m) ((49:ℚ) ^ (4 * m + u628 row - 1))
      (u588 m row) (u585 m row) (BE ^ m)
      (le_of_lt (pow_pos u589 m)) (u590 m hm row)
      (by positivity) (u592 m (by omega) row) hE
    have hexp:4 * m + u628 row - 1 ≤ 4 * m:= by
      rcases u629 row with hr | hr <;> rw [hr] <;> omega
    calc
      _ ≤ (49:ℚ) ^ (4 * m + u628 row - 1) * BE ^ m:= h
      _ ≤ (49:ℚ) ^ (4 * m) * BE ^ m:=
        mul_le_mul_of_nonneg_right
          (pow_le_pow_right₀ (by norm_num:(1:ℚ) ≤ 49) hexp) (pow_nonneg hBE m)
      _ = ((49:ℚ) ^ 4 * BE) ^ m:= by rw [mul_pow,← pow_mul]
  have u621 (m:ℕ) (hm:224 ≤ m) (row:Bool)
      (BE:ℚ) (hBE:0 < BE) (hE:|u585 m row| ≤ BE ^ m)
      (V Nq:ℕ) (hNV:(16:ℚ) ^ (9 * m) * (V:ℚ) = (Nq:ℚ))
      (hNsmall:2 * (Nq:ℚ) < u619 BE ^ m):
      2 * (|(u588 m row:ℚ)| * (V:ℚ)) < (49:ℚ) ^ (9 * m):= by
    have hden:0 < u618 BE:= by unfold u618; positivity
    have hsmall:(2 * (V:ℚ)) * u618 BE ^ m <
        (49:ℚ) ^ (9 * m) * u583 ^ m:= by
      apply (Rat.mul_lt_mul_right (pow_pos (by norm_num:(0:ℚ) < 16) (9 * m))).mp
      calc
        (2 * (V:ℚ)) * u618 BE ^ m * (16:ℚ) ^ (9 * m) =
            (2 * (Nq:ℚ)) * u618 BE ^ m:= by rw [← hNV]; ring
        _ < u619 BE ^ m * u618 BE ^ m:=
          mul_lt_mul_of_pos_right hNsmall (pow_pos hden m)
        _ = u617 ^ m:= u567 u617 (u618 BE) (ne_of_gt hden) m
        _ = ((49:ℚ) ^ (9 * m) * u583 ^ m) * (16:ℚ) ^ (9 * m):= by
          simp only [u617,mul_pow,← pow_mul]
          ring
    have h:= u566 (u583 ^ m) ((49:ℚ) ^ (9 * m))
      (2 * (V:ℚ)) |(u588 m row:ℚ)| (u618 BE ^ m)
      (pow_pos u589 m) (by positivity)
      (u594 m hm row BE (le_of_lt hBE) hE) hsmall
    nlinarith [h]
  have u622 (m:ℕ) (hm:224 ≤ m) (row:Bool)
      (BQ BE:ℚ) (hBQ:0 < BQ) (hBE:0 < BE)
      (hQ:|u584 m row| ≤ BQ ^ m) (hE:|u585 m row| ≤ BE ^ m)
      (hA:(48:ℚ) < u616 BQ ^ m)
      (V Nq:ℕ) (hNV:(16:ℚ) ^ (9 * m) * (V:ℚ) = (Nq:ℚ))
      (hNsmall:2 * (Nq:ℚ) < u619 BE ^ m):
      (3:ℤ) ^ (9 * m) * 24 * |u587 m row| + |u588 m row| * (V:ℤ) <
        (49:ℤ) ^ (9 * m):= by
    have h:= u568
      ((3:ℚ) ^ (9 * m) * 24 * |(u587 m row:ℚ)|)
      (|(u588 m row:ℚ)| * (V:ℚ)) ((49:ℚ) ^ (9 * m))
      (u620 m hm row BQ hBQ hQ hA)
      (u621 m hm row BE hBE hE V Nq hNV hNsmall)
    exact_mod_cast h
  have u623
      (BQ BE:ℚ) (hBQ:0 < BQ) (hBE:0 < BE)
      (hQ:∀ m:ℕ,224 ≤ m → ∀ row:Bool,|u584 m row| ≤ BQ ^ m)
      (hE:∀ m:ℕ,224 ≤ m → ∀ row:Bool,|u585 m row| ≤ BE ^ m)
      (hAone:1 ≤ u616 BQ) (hAbase:(48:ℚ) < u616 BQ ^ 285)
      (hW:(u613:ℚ) ≤ u619 BE)
      (hprevious:u613 ^ (u607 - 1) ≤ 4 * u606)
      (hrateP:7 ^ 18000 ≤ u613 ^ 940)
      (hbaseP:(7 ^ 18000) ^ u607 ≤ u606 ^ 940)
      (hlookP:4 ^ 940 * (7 ^ 18000) ^ (u607 + 1) ≤ u613 ^ (940 * u607))
      (hrateQ:2 ^ 36000 ≤ u613 ^ 670)
      (hbaseQ:(2 ^ 36000) ^ u607 ≤ u606 ^ 670)
      (hlookQ:4 ^ 670 * (2 ^ 36000) ^ (u607 + 1) ≤ u613 ^ (670 * u607))
      (Y e f A C:ℕ) (hY:u606 ≤ Y) (hC:1 ≤ C)
      (hwindowP:Y ≤ 7 ^ e * A) (hwindowQ:Y ≤ 2 ^ f * C)
      (hupperQ:2 ^ f * C ≤ 2 * Y)
      (hgap:|(7:ℤ) ^ e * (A:ℤ) - (2:ℤ) ^ f * (C:ℤ)| ≤ 24):
      Y ^ 60 ≤ A ^ 1000 ∨ Y ^ 330 ≤ C ^ 1000:= by
    by_cases hP:Y ^ 60 ≤ A ^ 1000
    · exact Or.inl hP
    by_cases hQcofactor:Y ^ 330 ≤ C ^ 1000
    · exact Or.inr hQcofactor
    exfalso
    have hsmallP:A ^ 1000 < Y ^ 60:= Nat.lt_of_not_ge hP
    have hsmallQ:C ^ 1000 < Y ^ 330:= Nat.lt_of_not_ge hQcofactor
    let m:= u609 Y
    obtain ⟨he,hf⟩:= u612 Y e f A C hY hprevious
      hrateP hbaseP hlookP hrateQ hbaseQ hlookQ hwindowP hwindowQ hsmallP hsmallQ
    change 18 * m < e at he
    change 36 * m < f at hf
    have hm:224 ≤ m:= u611 Y hY hprevious
    have hmM:285 ≤ m:= u610 Y hY hprevious
    have hAm:(48:ℚ) < u616 BQ ^ m:=
      lt_of_lt_of_le hAbase (pow_le_pow_right₀ hAone hmM)
    have hthreshold:(4:ℚ) * (Y:ℚ) < (u613:ℚ) ^ m:= by
      have h:= Math.B699.N7.d71 u613 Y u608
      change 4 * Y < u613 ^ m at h
      exact_mod_cast h
    have hWm:(4:ℚ) * (Y:ℚ) < u619 BE ^ m:=
      lt_of_lt_of_le hthreshold (pow_le_pow_left₀ (Nat.cast_nonneg u613) hW m)
    let V:ℕ:= 2 ^ (f - 36 * m) * C
    let Nq:ℕ:= 2 ^ f * C
    have hNVnat:(16:ℕ) ^ (9 * m) * V = Nq:= by
      have hpow:(16:ℕ) ^ (9 * m) = (2:ℕ) ^ (36 * m):= by
        calc
          _ = ((2:ℕ) ^ 4) ^ (9 * m):= by norm_num
          _ = (2:ℕ) ^ (36 * m):= by rw [← Nat.pow_mul]; congr 1 <;> ring
      dsimp only [V,Nq]
      rw [hpow]
      exact u398 2 f (36 * m) C (Nat.le_of_lt hf)
    have hNV:(16:ℚ) ^ (9 * m) * (V:ℚ) = (Nq:ℚ):= by exact_mod_cast hNVnat
    have hNsmall:2 * (Nq:ℚ) < u619 BE ^ m:= by
      have hN:(Nq:ℚ) ≤ 2 * (Y:ℚ):= by exact_mod_cast hupperQ
      linarith
    obtain ⟨row,hlower⟩:= u595 m e f A C
      (by omega) (Nat.le_of_lt he) (Nat.le_of_lt hf) hC hgap
    have hVcast:(2:ℤ) ^ (f - 36 * m) * (C:ℤ) = (V:ℤ):= by
      dsimp only [V]
      simp only [Nat.cast_mul,Nat.cast_pow,Nat.cast_ofNat]
    have hVabs:|(2:ℤ) ^ (f - 36 * m) * (C:ℤ)| = (V:ℤ):= by
      rw [hVcast,abs_of_nonneg (Int.natCast_nonneg V)]
    have hlow:(49:ℤ) ^ (9 * m) ≤
        (3:ℤ) ^ (9 * m) * 24 * |u587 m row| + |u588 m row| * (V:ℤ):= by
      simpa only [hVabs] using hlower
    have hstrict:= u622 m hm row BQ BE hBQ hBE
      (hQ m hm row) (hE m hm row) hAm V Nq hNV hNsmall
    exact (not_lt_of_ge hlow) hstrict
  have u624 (row:Bool):
      2 * |u138 9 5 (u628 row) 1 (1 / 49)| ≤ u599:= by
    cases row <;>
      norm_num [u138,u628,u599,Math.B699.N8.beta,u597,Math.B699.N18.d121,
        Math.B699.N18.d22,Math.B699.N18.d118,Math.B699.N18.d119,Finset.sum_range_succ,
        Polynomial.eval₂_finsetSum,Polynomial.eval₂_monomial,Nat.choose]
  have u625 (row:Bool):
      2 * |u139 9 5 (u628 row) 1 (1 / 49)| ≤ u600:= by
    cases row <;>
      norm_num [u139,u628,u600,Math.B699.N8.beta,u598,Math.B699.N18.d37,
        Math.B699.N18.d22,Math.B699.N18.d36,Finset.sum_range_succ,
        Polynomial.eval₂_finsetSum,Polynomial.eval₂_monomial,Nat.choose]
  have u626:1 ≤ u616 u599:= by
    norm_num [u616,u614,u615,u583,u599,Math.B699.N8.beta,u597]
  have u627:(u613:ℚ) ≤ u619 u600:= by
    norm_num [u613,u619,u617,u618,u583,u600,Math.B699.N8.beta,u598]
  have u596
      (qt:∀ row:Bool,Math.B699.N20.d1 u597 (u33 9 5 (u628 row) (1 / 49))
        (u31 9 5 (1 / 49)))
      (et:∀ row:Bool,Math.B699.N20.d1 u598 (u34 9 5 (u628 row) (1 / 49))
        (u32 9 5 (1 / 49)))
      (hAbase:(48:ℚ) < u616 u599 ^ 285)
      (hprevious:u613 ^ (u607 - 1) ≤ 4 * u606)
      (hrateP:7 ^ 18000 ≤ u613 ^ 940)
      (hbaseP:(7 ^ 18000) ^ u607 ≤ u606 ^ 940)
      (hlookP:4 ^ 940 * (7 ^ 18000) ^ (u607 + 1) ≤ u613 ^ (940 * u607))
      (hrateQ:2 ^ 36000 ≤ u613 ^ 670)
      (hbaseQ:(2 ^ 36000) ^ u607 ≤ u606 ^ 670)
      (hlookQ:4 ^ 670 * (2 ^ 36000) ^ (u607 + 1) ≤ u613 ^ (670 * u607))
      (Y e f A C:ℕ) (hY:u606 ≤ Y) (hC:1 ≤ C)
      (hwindowP:Y ≤ 7 ^ e * A) (hwindowQ:Y ≤ 2 ^ f * C)
      (hupperQ:2 ^ f * C ≤ 2 * Y)
      (hgap:|(7:ℤ) ^ e * (A:ℤ) - (2:ℤ) ^ f * (C:ℤ)| ≤ 24):
      Y ^ 60 ≤ A ^ 1000 ∨ Y ^ 330 ≤ C ^ 1000:= by
    obtain ⟨hQ,hE⟩:= u605 qt et
      u624 u625
    exact u623 u599 u600
      u601.2.2.1 u601.2.2.2 hQ hE
      u626 hAbase u627
      hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
      Y e f A C hY hC hwindowP hwindowQ hupperQ hgap
  let u649:ℕ:= 4330188673454998956186527952585840960990059954176
  let u650:ℕ:= 4199440704612936599415011687195348453521728515625
  let u651:ℚ:= (u649:ℚ) / (u650:ℚ)
  have u641:u616 u599 = u651:= by
    norm_num [u616,u614,u615,u583,u599,Math.B699.N8.beta,u597,
      u651,u649,u650]
  have u653:u650 ≤ u649:= by decide
  have u652:0 < u650:= by decide
  have u655:(0:ℚ) < (u650:ℚ):= by
    exact_mod_cast u652
  have u656:(1:ℚ) ≤ u651:= by
    unfold u651
    apply (le_div_iff₀ u655).mpr
    have h:(u650:ℚ) ≤ (u649:ℚ):= by
      exact_mod_cast u653
    simpa only [one_mul] using h
  have u654:
      2 * u650 ^ 32 ≤ u649 ^ 32:= by decide
  have u657:(2:ℚ) ≤ u651 ^ 32:= by
    unfold u651
    rw [div_pow]
    apply (le_div_iff₀ (pow_pos u655 32)).mpr
    exact_mod_cast u654
  have u658:(48:ℚ) < u651 ^ 285:= by
    have h64:(64:ℚ) ≤ u651 ^ 192:= by
      calc
        (64:ℚ) = (2:ℚ) ^ 6:= by norm_num
        _ ≤ (u651 ^ 32) ^ 6:=
          pow_le_pow_left₀ (by norm_num:(0:ℚ) ≤ 2) u657 6
        _ = u651 ^ 192:= by rw [← pow_mul]
    exact lt_of_lt_of_le (by norm_num:(48:ℚ) < 64)
      (h64.trans (pow_le_pow_right₀ u656 (by decide:192 ≤ 285)))
  have u642:(48:ℚ) < u616 u599 ^ 285:= by
    rw [u641]
    exact u658
  let u659:ℕ:= 17498099772305953
  have u661:u659 ^ 256 ≤ (2:ℕ) ^ 13814:= by
    set_option exponentiation.threshold 13814 in
      decide
  have u664 (k:ℕ):(2:ℕ) ^ (k + 2) = 4 * (2:ℕ) ^ k:= by
    calc
      (2:ℕ) ^ (k + 2) = (2:ℕ) ^ k * 2 ^ 2:= Nat.pow_add 2 k 2
      _ = (2:ℕ) ^ k * 4:= by rw [show (2:ℕ) ^ 2 = 4 by decide]
      _ = 4 * (2:ℕ) ^ k:= Nat.mul_comm _ _
  have u665:u659 ^ (285 - 1) ≤ 4 * (2:ℕ) ^ 15359:= by
    have h:= Math.B699.N7.d7 u659 1 1 284 15361 13814 256
      (by decide)
      (by
        set_option exponentiation.threshold 13814 in
          exact u661)
      (by decide)
    have h284:u659 ^ 284 ≤ (2:ℕ) ^ 15361:= by
      simpa only [Nat.pow_one] using h
    calc
      u659 ^ (285 - 1) = u659 ^ 284:= rfl
      _ ≤ (2:ℕ) ^ 15361:= h284
      _ = 4 * (2:ℕ) ^ 15359:= u664 15359
  have u660:(2:ℕ) ^ 13813 ≤ u659 ^ 256:= by
    set_option exponentiation.threshold 13814 in
      decide
  have u662:(7:ℕ) ^ 4096 ≤ (2:ℕ) ^ 11499:= by
    set_option exponentiation.threshold 11499 in
      decide
  have u666:(7:ℕ) ^ 18000 ≤ u659 ^ 940 ∧
      ((7:ℕ) ^ 18000) ^ 285 ≤ ((2:ℕ) ^ 15359) ^ 940 ∧
      (4:ℕ) ^ 940 * (7 ^ 18000) ^ (285 + 1) ≤
        u659 ^ (940 * 285):= by
    exact Math.B699.N7.d25 7 u659 18000 940 285 15359
      11499 4096 13813 256
      (by decide) (by decide)
      (by
        set_option exponentiation.threshold 11499 in
          exact u662)
      (by
        set_option exponentiation.threshold 13814 in
          exact u660)
      (by decide) (by decide) (by decide)
  have u668:(7:ℕ) ^ 18000 ≤ u659 ^ 940:= u666.1
  have u669:((7:ℕ) ^ 18000) ^ 285 ≤ ((2:ℕ) ^ 15359) ^ 940:=
    u666.2.1
  have u670:(4:ℕ) ^ 940 * (7 ^ 18000) ^ (285 + 1) ≤
      u659 ^ (940 * 285):= u666.2.2
  have u663:(2:ℕ) ^ 1 ≤ (2:ℕ) ^ 1:= by
    decide
  have u667:(2:ℕ) ^ 36000 ≤ u659 ^ 670 ∧
      ((2:ℕ) ^ 36000) ^ 285 ≤ ((2:ℕ) ^ 15359) ^ 670 ∧
      (4:ℕ) ^ 670 * (2 ^ 36000) ^ (285 + 1) ≤
        u659 ^ (670 * 285):= by
    exact Math.B699.N7.d25 2 u659 36000 670 285 15359
      1 1 13813 256
      (by decide) (by decide)
      (by
        set_option exponentiation.threshold 1 in
          exact u663)
      (by
        set_option exponentiation.threshold 13814 in
          exact u660)
      (by decide) (by decide) (by decide)
  have u671:(2:ℕ) ^ 36000 ≤ u659 ^ 670:= u667.1
  have u672:((2:ℕ) ^ 36000) ^ 285 ≤ ((2:ℕ) ^ 15359) ^ 670:=
    u667.2.1
  have u673:(4:ℕ) ^ 670 * (2 ^ 36000) ^ (285 + 1) ≤
      u659 ^ (670 * 285):= u667.2.2
  have u643:
      (48:ℚ) < u616 u599 ^ 285 ∧
      u613 ^ (u607 - 1) ≤ 4 * u606 ∧
      (7:ℕ) ^ 18000 ≤ u613 ^ 940 ∧
      ((7:ℕ) ^ 18000) ^ u607 ≤ u606 ^ 940 ∧
      (4:ℕ) ^ 940 * (7 ^ 18000) ^ (u607 + 1) ≤ u613 ^ (940 * u607) ∧
      (2:ℕ) ^ 36000 ≤ u613 ^ 670 ∧
      ((2:ℕ) ^ 36000) ^ u607 ≤ u606 ^ 670 ∧
      (4:ℕ) ^ 670 * (2 ^ 36000) ^ (u607 + 1) ≤ u613 ^ (670 * u607):= by
    have h:= And.intro u642
      (And.intro u665
        (And.intro u668
          (And.intro u669
            (And.intro u670
              (And.intro u671
                (And.intro u672
                  u673))))))
    simpa only [u613,u659,
      u607,u606] using h
  have u644
      (qt:∀ row:Bool,Math.B699.N20.d1 u597 (u33 9 5 (u628 row) (1 / 49))
        (u31 9 5 (1 / 49)))
      (et:∀ row:Bool,Math.B699.N20.d1 u598 (u34 9 5 (u628 row) (1 / 49))
        (u32 9 5 (1 / 49)))
      (Y e f A C:ℕ) (hY:u606 ≤ Y) (hC:1 ≤ C)
      (hwindowP:Y ≤ 7 ^ e * A) (hwindowQ:Y ≤ 2 ^ f * C)
      (hupperQ:2 ^ f * C ≤ 2 * Y)
      (hgap:|(7:ℤ) ^ e * (A:ℤ) - (2:ℤ) ^ f * (C:ℤ)| ≤ 24):
      Y ^ 60 ≤ A ^ 1000 ∨ Y ^ 330 ≤ C ^ 1000:= by
    obtain ⟨hA,hprevious,hrateP,hbaseP,hlookP,hrateQ,hbaseQ,hlookQ⟩:=
      u643
    exact u596 qt et hA
      hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
      Y e f A C hY hC hwindowP hwindowQ hupperQ hgap
  have u640
      (Y e f A C:ℕ) (hY:u606 ≤ Y) (hC:1 ≤ C)
      (hwindowP:Y ≤ 7 ^ e * A) (hwindowQ:Y ≤ 2 ^ f * C)
      (hupperQ:2 ^ f * C ≤ 2 * Y)
      (hgap:|(7:ℤ) ^ e * (A:ℤ) - (2:ℤ) ^ f * (C:ℤ)| ≤ 24):
      Y ^ 60 ≤ A ^ 1000 ∨ Y ^ 330 ≤ C ^ 1000:= by
    exact u644 u638 u639
      Y e f A C hY hC hwindowP hwindowQ hupperQ hgap
  have u645 {n a b:ℕ} (ha:a < 11) (hb:b < 11):
      |((n - a:ℕ):ℤ) - ((n - b:ℕ):ℤ)| ≤ 10:= by
    apply abs_le.mpr
    constructor <;> omega
  have u646 {n p:ℕ} (hn:20 ≤ n) (window:N5.N15.d2 n p):
      u166 n ≤ p ^ ((n.choose 11).factorization p) * window.cofactor ∧
        p ^ ((n.choose 11).factorization p) * window.cofactor ≤ 2 * u166 n:= by
    have hrepr:p ^ ((n.choose 11).factorization p) * window.cofactor = n - window.offset:= by
      simpa only [N5.N15.d108,Nat.mul_comm] using window.equation
    simpa only [← hrepr] using u167 hn window.offset_lt
  have u647 {n:ℕ}
      (hn:20 ≤ n) (hY:u606 ≤ u166 n)
      (wp:N5.N15.d2 n 7) (wq:N5.N15.d2 n 2):
      (N5.N15.d108 n 7) ^ 1000 * (u166 n) ^ 60 ≤ n ^ 1000 ∨
        (N5.N15.d108 n 2) ^ 1000 * (u166 n) ^ 330 ≤ n ^ 1000:= by
    have hpBounds:= u646 hn wp
    have hqBounds:= u646 hn wq
    have hpNat:(7:ℕ) ^ ((n.choose 11).factorization 7) * wp.cofactor = n - wp.offset:= by
      simpa only [N5.N15.d108,Nat.mul_comm] using wp.equation
    have hqNat:(2:ℕ) ^ ((n.choose 11).factorization 2) * wq.cofactor = n - wq.offset:= by
      simpa only [N5.N15.d108,Nat.mul_comm] using wq.equation
    have hpInt:(7:ℤ) ^ ((n.choose 11).factorization 7) * (wp.cofactor:ℤ) =
        ((n - wp.offset:ℕ):ℤ):= by exact_mod_cast hpNat
    have hqInt:(2:ℤ) ^ ((n.choose 11).factorization 2) * (wq.cofactor:ℤ) =
        ((n - wq.offset:ℕ):ℤ):= by exact_mod_cast hqNat
    have hgap:|(7:ℤ) ^ ((n.choose 11).factorization 7) * (wp.cofactor:ℤ) -
        (2:ℤ) ^ ((n.choose 11).factorization 2) * (wq.cofactor:ℤ)| ≤ 24:= by
      rw [hpInt,hqInt]
      exact le_trans (u645 wp.offset_lt wq.offset_lt)
        (by decide:(10:ℤ) ≤ 24)
    have hcof:= u640 (u166 n)
      ((n.choose 11).factorization 7) ((n.choose 11).factorization 2)
      wp.cofactor wq.cofactor hY wq.cofactor_pos
      hpBounds.1 hqBounds.1 hqBounds.2 hgap
    rcases hcof with hP | hQ
    · exact Or.inl (u678 wp hP)
    · exact Or.inr (u678 wq hQ)
  have u648 {n:ℕ} (hn:(2:ℕ) ^ 15360 ≤ n):
      (N5.N15.d108 n 7) ^ 1000 * ((n + 1) / 2) ^ 60 ≤ n ^ 1000 ∨
        (N5.N15.d108 n 2) ^ 1000 * ((n + 1) / 2) ^ 330 ≤ n ^ 1000:= by
    have hlarge:20 ≤ n:=
      u170 (by decide:5 ≤ 15360) hn
    have hn11:11 ≤ n:= Nat.le_trans (by decide:11 ≤ 20) hlarge
    have hY:u606 ≤ u166 n:= by
      have h:= u169 (n:= n) (k:= 15359)
      simp only [show 15359 + 1 = 15360 by decide] at h
      simpa only [u606] using h hn
    obtain ⟨wp⟩:= u676 (n:= n) (p:= 7) hn11 (by decide:Nat.Prime 7)
    obtain ⟨wq⟩:= u676 (n:= n) (p:= 2) hn11 (by decide:Nat.Prime 2)
    simpa only [u166] using u647 hlarge hY wp wq
  let u702:ℕ:= 2 ^ 15359
  let u693:ℚ:= 50045175481493571025 / 9903520314283042199192993792
  have u730:u103 = u693:= rfl
  have u732:u724 false = 1:= rfl
  have u733:u724 true = 0:= rfl
  have u734 (row:Bool):
      Math.B699.N20.d1 u693 (u33 23 15 (u724 row) (1 / 9)) (u31 23 15 (1 / 9)):= by
    cases row with
    | false =>
      simpa only [u732,u730,
        u106,
        u104,
        u100,
        u101,
        u102] using
          u117
    | true =>
      simpa only [u733,u730,
        u105,
        u104,
        u100,
        u101,
        u102] using
          u116
  have u731:u110 = u694:= rfl
  have u735 (row:Bool):
      Math.B699.N20.d1 u694 (u34 23 15 (u724 row) (1 / 9)) (u32 23 15 (1 / 9)):= by
    cases row with
    | false =>
      simpa only [u732,u731,
        u113,
        u111,
        u107,
        u108,
        u109] using
          u115
    | true =>
      simpa only [u733,u731,
        u112,
        u111,
        u107,
        u108,
        u109] using
          u114
  let u695:ℚ:= Math.B699.N8.beta 23 15 * u693
  have u697:0 < u693 ∧ 0 < u694 ∧ 0 < u695 ∧ 0 < u696:= by
    norm_num [u693,u694,u695,u696,Math.B699.N8.beta]
  let u680 (m:ℕ) (row:Bool):ℚ:=
    u138 23 15 (u724 row) m (1 / 9)
  let u681 (m:ℕ) (row:Bool):ℚ:=
    u139 23 15 (u724 row) m (1 / 9)
  have u698 (F K Math.B699.N8.beta lam weight:ℚ) (m:ℕ)
      (hm:1 ≤ m) (hbeta:0 ≤ Math.B699.N8.beta) (hlam:0 ≤ lam) (hweight:0 ≤ weight)
      (hF:F ≤ K * Math.B699.N8.beta ^ m) (hcap:K * weight ≤ lam):
      F * (lam ^ (m - 1) * weight) ≤ (Math.B699.N8.beta * lam) ^ m:= by
    calc
      _ ≤ (K * Math.B699.N8.beta ^ m) * (lam ^ (m - 1) * weight):=
        mul_le_mul_of_nonneg_right hF (mul_nonneg (pow_nonneg hlam _) hweight)
      _ = (Math.B699.N8.beta ^ m * lam ^ (m - 1)) * (K * weight):= by ring
      _ ≤ (Math.B699.N8.beta ^ m * lam ^ (m - 1)) * lam:=
        mul_le_mul_of_nonneg_left hcap (mul_nonneg (pow_nonneg hbeta _) (pow_nonneg hlam _))
      _ = (Math.B699.N8.beta * lam) ^ m:= by
        simp only [mul_pow]
        rw [mul_assoc,← pow_succ,Nat.sub_add_cancel hm]
  have u699 (delta m:ℕ) (hdelta:delta = 0 ∨ delta = 1)
      (hm:1 ≤ m) (lam:ℚ) (hlam:0 < lam)
      (tree:Math.B699.N20.d1 lam (u33 23 15 delta (1 / 9)) (u31 23 15 (1 / 9)))
      (hcap:2 * |u138 23 15 delta 1 (1 / 9)| ≤ Math.B699.N8.beta 23 15 * lam):
      |u138 23 15 delta m (1 / 9)| ≤ (Math.B699.N8.beta 23 15 * lam) ^ m:= by
    have hd:delta ≤ 15:= by rcases hdelta with h | h <;> omega
    have hb:0 < Math.B699.N8.beta 23 15:= by norm_num [Math.B699.N8.beta]
    have hw:0 ≤ Math.B699.N21.moment (u33 23 15 delta (1 / 9)):=
      u875 (u37 23 15 delta (1 / 9) (by norm_num))
    have heq:(2 * Math.B699.N8.d44 23 15 delta 1 / Math.B699.N8.beta 23 15) *
        Math.B699.N21.moment (u33 23 15 delta (1 / 9)) =
        2 * |u138 23 15 delta 1 (1 / 9)| / Math.B699.N8.beta 23 15:= by
      rw [u141 23 15 delta (1 / 9) (by decide) hd (by norm_num)]
      ring
    have hcap':(2 * Math.B699.N8.d44 23 15 delta 1 / Math.B699.N8.beta 23 15) *
        Math.B699.N21.moment (u33 23 15 delta (1 / 9)) ≤ lam:= by
      rw [heq]
      exact (div_le_iff₀ hb).mpr (by simpa only [mul_comm lam (Math.B699.N8.beta 23 15)] using hcap)
    have hsource:= u18 23 15 delta m (1 / 9) lam
      (by decide) hd hm (le_of_lt hlam) tree
    rw [u140 23 15 delta m (by decide) hd hm] at hsource
    exact le_trans hsource (u698 _ _ _ _ _ m hm (le_of_lt hb)
      (le_of_lt hlam) hw (le_of_lt (Math.B699.N8.d60 delta m hdelta hm)) hcap')
  have u700 (delta m:ℕ) (hdelta:delta = 0 ∨ delta = 1)
      (hm:1 ≤ m) (lam:ℚ) (hlam:0 < lam)
      (tree:Math.B699.N20.d1 lam (u34 23 15 delta (1 / 9)) (u32 23 15 (1 / 9)))
      (hcap:2 * |u139 23 15 delta 1 (1 / 9)| ≤ Math.B699.N8.beta 23 15 * lam):
      |u139 23 15 delta m (1 / 9)| ≤ (Math.B699.N8.beta 23 15 * lam) ^ m:= by
    have hd:delta ≤ 15:= by rcases hdelta with h | h <;> omega
    have hb:0 < Math.B699.N8.beta 23 15:= by norm_num [Math.B699.N8.beta]
    have hw:0 ≤ Math.B699.N21.moment (u34 23 15 delta (1 / 9)):=
      u875 (u20 23 15 delta (1 / 9) (by norm_num))
    have heq:(2 * Math.B699.N8.d44 23 15 delta 1 / Math.B699.N8.beta 23 15) *
        Math.B699.N21.moment (u34 23 15 delta (1 / 9)) =
        2 * |u139 23 15 delta 1 (1 / 9)| / Math.B699.N8.beta 23 15:= by
      rw [u142 23 15 delta (1 / 9) (by decide) hd (by norm_num)]
      ring
    have hcap':(2 * Math.B699.N8.d44 23 15 delta 1 / Math.B699.N8.beta 23 15) *
        Math.B699.N21.moment (u34 23 15 delta (1 / 9)) ≤ lam:= by
      rw [heq]
      exact (div_le_iff₀ hb).mpr (by simpa only [mul_comm lam (Math.B699.N8.beta 23 15)] using hcap)
    have hsource:= u19 23 15 delta m (1 / 9) lam
      (by decide) hd hm (le_of_lt hlam) tree
    rw [u140 23 15 delta m (by decide) hd hm] at hsource
    exact le_trans hsource (u698 _ _ _ _ _ m hm (le_of_lt hb)
      (le_of_lt hlam) hw (le_of_lt (Math.B699.N8.d60 delta m hdelta hm)) hcap')
  have u725 (row:Bool):u724 row = 0 ∨ u724 row = 1:= by
    cases row <;> simp [u724]
  have u701
      (qt:∀ row:Bool,Math.B699.N20.d1 u693 (u33 23 15 (u724 row) (1 / 9))
        (u31 23 15 (1 / 9)))
      (et:∀ row:Bool,Math.B699.N20.d1 u694 (u34 23 15 (u724 row) (1 / 9))
        (u32 23 15 (1 / 9)))
      (qc:∀ row:Bool,2 * |u138 23 15 (u724 row) 1 (1 / 9)| ≤ u695)
      (ec:∀ row:Bool,2 * |u139 23 15 (u724 row) 1 (1 / 9)| ≤ u696):
      (∀ m:ℕ,160 ≤ m → ∀ row:Bool,|u680 m row| ≤ u695 ^ m) ∧
        (∀ m:ℕ,160 ≤ m → ∀ row:Bool,|u681 m row| ≤ u696 ^ m):= by
    constructor
    · intro m hm row
      exact u699 (u724 row) m (u725 row) (by omega)
        u693 u697.1 (qt row) (qc row)
    · intro m hm row
      exact u700 (u724 row) m (u725 row) (by omega)
        u694 u697.2.1 (et row) (ec row)
  let u703:ℕ:= 162
  let u709:ℕ:= 37002653975761602583641821923
  let u710 (BQ:ℚ):ℚ:= (9:ℚ) ^ 15 * BQ
  let u679:ℚ:= (41069 / 31250:ℚ) ^ 15
  let u718:ℚ:= (9:ℚ) ^ 23 * u679
  let u711 (BQ:ℚ):ℚ:= u718 / u710 BQ
  let u683 (m:ℕ) (row:Bool):ℤ:= u1006 (15 * m) (8 * m - 1) 1 9 row
  let u684 (m:ℕ) (row:Bool):ℤ:=
    (9:ℤ) ^ (23 * m) * u1005 (15 * m) (8 * m - 1) 1 9 row -
      (8:ℤ) ^ (23 * m) * u683 m row
  have u691 (m e f A C:ℕ)
      (hm:1 ≤ m) (he:46 * m ≤ e) (hf:69 * m ≤ f) (hC:1 ≤ C)
      (hgap:|(3:ℤ) ^ e * (A:ℤ) - (2:ℤ) ^ f * (C:ℤ)| ≤ 24):
      ∃ row:Bool,(9:ℤ) ^ (23 * m) ≤
        24 * |u683 m row| +
          |u684 m row| * |(2:ℤ) ^ (f - 69 * m) * (C:ℤ)|:= by
    have hp:(9:ℕ) ^ (23 * m) = (3:ℕ) ^ (46 * m):= by
      calc
        _ = ((3:ℕ) ^ 2) ^ (23 * m):= by norm_num
        _ = (3:ℕ) ^ (46 * m):= by rw [← Nat.pow_mul]; congr 1 <;> ring
    have hq:(8:ℕ) ^ (23 * m) = (2:ℕ) ^ (69 * m):= by
      calc
        _ = ((2:ℕ) ^ 3) ^ (23 * m):= by norm_num
        _ = (2:ℕ) ^ (69 * m):= by rw [← Nat.pow_mul]; congr 1 <;> ring
    have hPnat:(9:ℕ) ^ (23 * m) * (3 ^ (e - 46 * m) * A) = 3 ^ e * A:= by
      rw [hp]
      exact u398 3 e (46 * m) A he
    have hQnat:(8:ℕ) ^ (23 * m) * (2 ^ (f - 69 * m) * C) = 2 ^ f * C:= by
      rw [hq]
      exact u398 2 f (69 * m) C hf
    have hPint:(9:ℤ) ^ (23 * m) * ((3:ℤ) ^ (e - 46 * m) * (A:ℤ)) =
        (3:ℤ) ^ e * (A:ℤ):= by exact_mod_cast hPnat
    have hQint:(8:ℤ) ^ (23 * m) * ((2:ℤ) ^ (f - 69 * m) * (C:ℤ)) =
        (2:ℤ) ^ f * (C:ℤ):= by exact_mod_cast hQnat
    have hgap':|(9:ℤ) ^ (23 * m) * ((3:ℤ) ^ (e - 46 * m) * (A:ℤ)) -
        (8:ℤ) ^ (23 * m) * ((2:ℤ) ^ (f - 69 * m) * (C:ℤ))| ≤ 24:= by
      rw [hPint,hQint]
      exact hgap
    have hV:(2:ℤ) ^ (f - 69 * m) * (C:ℤ) ≠ 0:= by
      apply mul_ne_zero (pow_ne_zero _ (by decide:(2:ℤ) ≠ 0))
      exact_mod_cast (by omega:C ≠ 0)
    obtain ⟨row,_hne,hlower⟩:= u1007
      (15 * m) (8 * m - 1) (by omega) 1 9
      (r:= (9:ℤ) ^ (23 * m)) (s:= (8:ℤ) ^ (23 * m))
      (a:= 1) (b:= 1)
      (U:= (3:ℤ) ^ (e - 46 * m) * (A:ℤ))
      (V:= (2:ℤ) ^ (f - 69 * m) * (C:ℤ)) (D:= 24)
      (by decide) (by decide) (pow_nonneg (by decide) _)
      (by decide) (by decide) hV hgap'
    exact ⟨row,by simpa only [u683,u684,mul_one,one_mul] using hlower⟩
  have u704:1 < u709:= by decide
  let u705 (Y:ℕ):ℕ:= Math.B699.N7.d65 u709 Y u704
  have u706 (Y:ℕ) (hY:u702 ≤ Y)
      (hprevious:u709 ^ (u703 - 1) ≤ 4 * u702):
      u703 ≤ u705 Y:= by
    exact Math.B699.N7.d67 u709 u702 Y u703
      u704 hY (by decide) hprevious
  have u707 (Y:ℕ) (hY:u702 ≤ Y)
      (hprevious:u709 ^ (u703 - 1) ≤ 4 * u702):
      160 ≤ u705 Y:= by
    have h:= u706 Y hY hprevious
    dsimp only [u703] at h
    omega
  have u708 (Y e f A C:ℕ)
      (hY:u702 ≤ Y)
      (hprevious:u709 ^ (u703 - 1) ≤ 4 * u702)
      (hrateP:3 ^ 46000 ≤ u709 ^ 774)
      (hbaseP:(3 ^ 46000) ^ u703 ≤ u702 ^ 774)
      (hlookP:4 ^ 774 * (3 ^ 46000) ^ (u703 + 1) ≤ u709 ^ (774 * u703))
      (hrateQ:2 ^ 69000 ≤ u709 ^ 732)
      (hbaseQ:(2 ^ 69000) ^ u703 ≤ u702 ^ 732)
      (hlookQ:4 ^ 732 * (2 ^ 69000) ^ (u703 + 1) ≤ u709 ^ (732 * u703))
      (hwindowP:Y ≤ 3 ^ e * A) (hwindowQ:Y ≤ 2 ^ f * C)
      (hsmallP:A ^ 1000 < Y ^ 226) (hsmallQ:C ^ 1000 < Y ^ 268):
      46 * u705 Y < e ∧ 69 * u705 Y < f:= by
    have hY0:0 < u702:= Nat.pow_pos (by decide:0 < (2:ℕ))
    have hM:0 < u703:= by decide
    constructor
    · have hP:= u397
        3 46 1000 226 u709 u703 u702 Y e A
        (by decide) (by decide) u704 hY0 hY hM
      simp only [show 46 * 1000 = 46000 by decide,
        show 1000 - 226 = 774 by decide] at hP
      exact hP hprevious hrateP hbaseP hlookP hwindowP hsmallP
    · have hQ:= u397
        2 69 1000 268 u709 u703 u702 Y f C
        (by decide) (by decide) u704 hY0 hY hM
      simp only [show 69 * 1000 = 69000 by decide,
        show 1000 - 268 = 732 by decide] at hQ
      exact hQ hprevious hrateQ hbaseQ hlookQ hwindowQ hsmallQ
  let u712:ℚ:= ((9:ℚ) * 8) ^ 23 * u679
  let u713 (BE:ℚ):ℚ:= (9:ℚ) ^ 8 * BE
  let u714 (BE:ℚ):ℚ:= u712 / u713 BE
  have u685:0 < u679:= by norm_num [u679]
  let u682 (m:ℕ) (row:Bool):ℚ:=
    (Math.B699.N18.qContent (15 * m - u724 row) (8 * m + u724 row - 1)
      (15 * m - u724 row):ℚ)
  have u686 (m:ℕ) (hm:160 ≤ m) (row:Bool):
      u679 ^ m ≤ u682 m row:= by
    have h:= u315
      (u724 row) m (u725 row) hm
    simpa only [u679,u682,← pow_mul] using le_of_lt h
  have u727 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      u1005 (15 * m) (8 * m - 1) 1 9 row =
        u942 (15 * m - u724 row) (8 * m + u724 row - 1) 1 9 ∧
      u1006 (15 * m) (8 * m - 1) 1 9 row =
        u1010 (15 * m - u724 row) (8 * m + u724 row - 1)
          (15 * m - u724 row) 1 9:= by
    have hv:8 * m - 1 + 1 = 8 * m:= by omega
    cases row <;> simp [u724,u1005,u1006,hv]
  have u728 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      (Math.B699.N18.qContent (15 * m - u724 row) (8 * m + u724 row - 1)
          (15 * m - u724 row):ℚ) *
        (u1006 (15 * m) (8 * m - 1) 1 9 row:ℚ) =
      (9:ℚ) ^ (15 * m - u724 row) *
        u138 23 15 (u724 row) m (1 / 9):= by
    have hq:= (u727 m hm row).2
    rw [hq,u154]
    have h:= u152 (15 * m - u724 row)
      (8 * m + u724 row - 1) (15 * m - u724 row) 1 9 (by decide)
    simpa only [u138,show (23:ℕ) - 15 = 8 by decide,one_mul,
      Int.cast_one,Int.cast_ofNat] using h
  have u687 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      u682 m row * (u683 m row:ℚ) =
        (9:ℚ) ^ (15 * m - u724 row) * u680 m row:= by
    simpa only [u682,u683,u680] using
      u728 m hm row
  have u689 (m:ℕ) (hm:160 ≤ m) (row:Bool)
      (BQ:ℚ) (hBQ:0 ≤ BQ) (hQ:|u680 m row| ≤ BQ ^ m):
      u679 ^ m * |(u683 m row:ℚ)| ≤ ((9:ℚ) ^ 15 * BQ) ^ m:= by
    have h:= u565
      (u682 m row) (u679 ^ m) ((9:ℚ) ^ (15 * m - u724 row))
      (u683 m row) (u680 m row) (BQ ^ m)
      (le_of_lt (pow_pos u685 m)) (u686 m hm row)
      (pow_nonneg (by norm_num) _) (u687 m (by omega) row) hQ
    calc
      _ ≤ (9:ℚ) ^ (15 * m - u724 row) * BQ ^ m:= h
      _ ≤ (9:ℚ) ^ (15 * m) * BQ ^ m:=
        mul_le_mul_of_nonneg_right
          (pow_le_pow_right₀ (by norm_num:(1:ℚ) ≤ 9) (Nat.sub_le _ _))
          (pow_nonneg hBQ m)
      _ = ((9:ℚ) ^ 15 * BQ) ^ m:= by rw [mul_pow,← pow_mul]
  have u715 (m:ℕ) (hm:160 ≤ m) (row:Bool)
      (BQ:ℚ) (hBQ:0 < BQ) (hQ:|u680 m row| ≤ BQ ^ m)
      (hA:(48:ℚ) < u711 BQ ^ m):
      2 * (24 * |(u683 m row:ℚ)|) < (9:ℚ) ^ (23 * m):= by
    have hden:0 < u710 BQ:= by unfold u710; positivity
    have hnum:(48:ℚ) * u710 BQ ^ m < u718 ^ m:= by
      calc
        _ < u711 BQ ^ m * u710 BQ ^ m:=
          mul_lt_mul_of_pos_right hA (pow_pos hden m)
        _ = u718 ^ m:=
          u567 u718 (u710 BQ)
            (ne_of_gt hden) m
    have hsmall:(48:ℚ) * ((9:ℚ) ^ 15 * BQ) ^ m <
        (9:ℚ) ^ (23 * m) * u679 ^ m:= by
      calc
        _ < u718 ^ m:= hnum
        _ = (9:ℚ) ^ (23 * m) * u679 ^ m:= by
          simp only [u718,mul_pow,← pow_mul]
    have h:= u566
      (u679 ^ m) ((9:ℚ) ^ (23 * m)) 48 |(u683 m row:ℚ)|
      (((9:ℚ) ^ 15 * BQ) ^ m) (pow_pos u685 m) (by norm_num)
      (u689 m hm row BQ hBQ.le hQ) hsmall
    nlinarith only [h]
  have u726 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      (15 * m - u724 row) + (8 * m + u724 row - 1) + 1 = 23 * m:= by
    rcases u725 row with h | h <;> rw [h] <;> omega
  have u729 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      (Math.B699.N18.qContent (15 * m - u724 row) (8 * m + u724 row - 1)
          (15 * m - u724 row):ℚ) *
        (((9:ℤ) ^ (23 * m) * u1005 (15 * m) (8 * m - 1) 1 9 row -
          (8:ℤ) ^ (23 * m) * u1006 (15 * m) (8 * m - 1) 1 9 row:ℤ):ℚ) =
      (9:ℚ) ^ (8 * m + u724 row - 1) *
        (1:ℚ) ^ (2 * (15 * m - u724 row) + 1) *
        u139 23 15 (u724 row) m (1 / 9):= by
    obtain ⟨hp,hq⟩:= u727 m hm row
    rw [hp,hq]
    have h:= u155 (15 * m - u724 row)
      (8 * m + u724 row - 1) 1 9 (by decide)
    simpa only [u726 m hm row,show (9:ℤ) - 1 = 8 by decide,
      Int.cast_one,Int.cast_ofNat,u139,show (23:ℕ) - 15 = 8 by decide,one_mul] using h
  have u688 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      u682 m row * (u684 m row:ℚ) =
        (9:ℚ) ^ (8 * m + u724 row - 1) * u681 m row:= by
    simpa only [u682,u684,u683,u681,one_pow,mul_one] using
      u729 m hm row
  have u690 (m:ℕ) (hm:160 ≤ m) (row:Bool)
      (BE:ℚ) (hBE:0 ≤ BE) (hE:|u681 m row| ≤ BE ^ m):
      u679 ^ m * |(u684 m row:ℚ)| ≤ ((9:ℚ) ^ 8 * BE) ^ m:= by
    have h:= u565
      (u682 m row) (u679 ^ m) ((9:ℚ) ^ (8 * m + u724 row - 1))
      (u684 m row) (u681 m row) (BE ^ m)
      (le_of_lt (pow_pos u685 m)) (u686 m hm row)
      (by positivity) (u688 m (by omega) row) hE
    have hexp:8 * m + u724 row - 1 ≤ 8 * m:= by
      rcases u725 row with hr | hr <;> rw [hr] <;> omega
    calc
      _ ≤ (9:ℚ) ^ (8 * m + u724 row - 1) * BE ^ m:= h
      _ ≤ (9:ℚ) ^ (8 * m) * BE ^ m:=
        mul_le_mul_of_nonneg_right
          (pow_le_pow_right₀ (by norm_num:(1:ℚ) ≤ 9) hexp) (pow_nonneg hBE m)
      _ = ((9:ℚ) ^ 8 * BE) ^ m:= by rw [mul_pow,← pow_mul]
  have u716 (m:ℕ) (hm:160 ≤ m) (row:Bool)
      (BE:ℚ) (hBE:0 < BE) (hE:|u681 m row| ≤ BE ^ m)
      (V Nq:ℕ) (hNV:(8:ℚ) ^ (23 * m) * (V:ℚ) = (Nq:ℚ))
      (hNsmall:2 * (Nq:ℚ) < u714 BE ^ m):
      2 * (|(u684 m row:ℚ)| * (V:ℚ)) < (9:ℚ) ^ (23 * m):= by
    have hden:0 < u713 BE:= by unfold u713; positivity
    have hsmall:(2 * (V:ℚ)) * u713 BE ^ m <
        (9:ℚ) ^ (23 * m) * u679 ^ m:= by
      apply (Rat.mul_lt_mul_right
        (pow_pos (by norm_num:(0:ℚ) < 8) (23 * m))).mp
      calc
        (2 * (V:ℚ)) * u713 BE ^ m * (8:ℚ) ^ (23 * m) =
            (2 * (Nq:ℚ)) * u713 BE ^ m:= by rw [← hNV]; ring
        _ < u714 BE ^ m * u713 BE ^ m:=
          mul_lt_mul_of_pos_right hNsmall (pow_pos hden m)
        _ = u712 ^ m:=
          u567 u712 (u713 BE)
            (ne_of_gt hden) m
        _ = ((9:ℚ) ^ (23 * m) * u679 ^ m) * (8:ℚ) ^ (23 * m):= by
          simp only [u712,mul_pow,← pow_mul]
          ring
    have h:= u566
      (u679 ^ m) ((9:ℚ) ^ (23 * m)) (2 * (V:ℚ))
      |(u684 m row:ℚ)| (u713 BE ^ m)
      (pow_pos u685 m) (by positivity)
      (u690 m hm row BE hBE.le hE) hsmall
    nlinarith only [h]
  have u717 (m:ℕ) (hm:160 ≤ m) (row:Bool)
      (BQ BE:ℚ) (hBQ:0 < BQ) (hBE:0 < BE)
      (hQ:|u680 m row| ≤ BQ ^ m) (hE:|u681 m row| ≤ BE ^ m)
      (hA:(48:ℚ) < u711 BQ ^ m)
      (V Nq:ℕ) (hNV:(8:ℚ) ^ (23 * m) * (V:ℚ) = (Nq:ℚ))
      (hNsmall:2 * (Nq:ℚ) < u714 BE ^ m):
      24 * |u683 m row| + |u684 m row| * (V:ℤ) < (9:ℤ) ^ (23 * m):= by
    have h:= u568
      (24 * |(u683 m row:ℚ)|) (|(u684 m row:ℚ)| * (V:ℚ))
      ((9:ℚ) ^ (23 * m))
      (u715 m hm row BQ hBQ hQ hA)
      (u716 m hm row BE hBE hE V Nq hNV hNsmall)
    exact_mod_cast h
  have u719
      (BQ BE:ℚ) (hBQ:0 < BQ) (hBE:0 < BE)
      (hQ:∀ m:ℕ,160 ≤ m → ∀ row:Bool,|u680 m row| ≤ BQ ^ m)
      (hE:∀ m:ℕ,160 ≤ m → ∀ row:Bool,|u681 m row| ≤ BE ^ m)
      (hAone:1 ≤ u711 BQ) (hAbase:(48:ℚ) < u711 BQ ^ 162)
      (hW:(u709:ℚ) ≤ u714 BE)
      (hprevious:u709 ^ (u703 - 1) ≤ 4 * u702)
      (hrateP:3 ^ 46000 ≤ u709 ^ 774)
      (hbaseP:(3 ^ 46000) ^ u703 ≤ u702 ^ 774)
      (hlookP:4 ^ 774 * (3 ^ 46000) ^ (u703 + 1) ≤ u709 ^ (774 * u703))
      (hrateQ:2 ^ 69000 ≤ u709 ^ 732)
      (hbaseQ:(2 ^ 69000) ^ u703 ≤ u702 ^ 732)
      (hlookQ:4 ^ 732 * (2 ^ 69000) ^ (u703 + 1) ≤ u709 ^ (732 * u703))
      (Y e f A C:ℕ) (hY:u702 ≤ Y) (hC:1 ≤ C)
      (hwindowP:Y ≤ 3 ^ e * A) (hwindowQ:Y ≤ 2 ^ f * C)
      (hupperQ:2 ^ f * C ≤ 2 * Y)
      (hgap:|(3:ℤ) ^ e * (A:ℤ) - (2:ℤ) ^ f * (C:ℤ)| ≤ 24):
      Y ^ 226 ≤ A ^ 1000 ∨ Y ^ 268 ≤ C ^ 1000:= by
    by_cases hP:Y ^ 226 ≤ A ^ 1000
    · exact Or.inl hP
    by_cases hQcofactor:Y ^ 268 ≤ C ^ 1000
    · exact Or.inr hQcofactor
    exfalso
    have hsmallP:A ^ 1000 < Y ^ 226:= Nat.lt_of_not_ge hP
    have hsmallQ:C ^ 1000 < Y ^ 268:= Nat.lt_of_not_ge hQcofactor
    let m:= u705 Y
    obtain ⟨he,hf⟩:= u708 Y e f A C hY hprevious
      hrateP hbaseP hlookP hrateQ hbaseQ hlookQ hwindowP hwindowQ hsmallP hsmallQ
    change 46 * m < e at he
    change 69 * m < f at hf
    have hm:160 ≤ m:= u707 Y hY hprevious
    have hmM:162 ≤ m:= u706 Y hY hprevious
    have hAm:(48:ℚ) < u711 BQ ^ m:=
      lt_of_lt_of_le hAbase (pow_le_pow_right₀ hAone hmM)
    have hthreshold:(4:ℚ) * (Y:ℚ) < (u709:ℚ) ^ m:= by
      have h:= Math.B699.N7.d71 u709 Y u704
      change 4 * Y < u709 ^ m at h
      exact_mod_cast h
    have hWm:(4:ℚ) * (Y:ℚ) < u714 BE ^ m:=
      lt_of_lt_of_le hthreshold (pow_le_pow_left₀ (Nat.cast_nonneg u709) hW m)
    let V:ℕ:= 2 ^ (f - 69 * m) * C
    let Nq:ℕ:= 2 ^ f * C
    have hNVnat:(8:ℕ) ^ (23 * m) * V = Nq:= by
      have hpow:(8:ℕ) ^ (23 * m) = (2:ℕ) ^ (69 * m):= by
        calc
          _ = ((2:ℕ) ^ 3) ^ (23 * m):= by norm_num
          _ = (2:ℕ) ^ (69 * m):= by rw [← Nat.pow_mul]; congr 1 <;> ring
      dsimp only [V,Nq]
      rw [hpow]
      exact u398 2 f (69 * m) C (Nat.le_of_lt hf)
    have hNV:(8:ℚ) ^ (23 * m) * (V:ℚ) = (Nq:ℚ):= by exact_mod_cast hNVnat
    have hNsmall:2 * (Nq:ℚ) < u714 BE ^ m:= by
      have hN:(Nq:ℚ) ≤ 2 * (Y:ℚ):= by exact_mod_cast hupperQ
      linarith
    obtain ⟨row,hlower⟩:= u691 m e f A C
      (by omega) (Nat.le_of_lt he) (Nat.le_of_lt hf) hC hgap
    have hVcast:(2:ℤ) ^ (f - 69 * m) * (C:ℤ) = (V:ℤ):= by
      dsimp only [V]
      simp only [Nat.cast_mul,Nat.cast_pow,Nat.cast_ofNat]
    have hVabs:|(2:ℤ) ^ (f - 69 * m) * (C:ℤ)| = (V:ℤ):= by
      rw [hVcast,abs_of_nonneg (Int.natCast_nonneg V)]
    have hlow:(9:ℤ) ^ (23 * m) ≤
        24 * |u683 m row| + |u684 m row| * (V:ℤ):= by
      simpa only [hVabs] using hlower
    have hstrict:= u717 m hm row BQ BE hBQ hBE
      (hQ m hm row) (hE m hm row) hAm V Nq hNV hNsmall
    exact (not_lt_of_ge hlow) hstrict
  have u720 (row:Bool):
      2 * |u138 23 15 (u724 row) 1 (1 / 9)| ≤ u695:= by
    cases row <;>
      norm_num [u138,u724,u695,Math.B699.N8.beta,u693,Math.B699.N18.d121,
        Math.B699.N18.d22,Math.B699.N18.d118,Math.B699.N18.d119,Finset.sum_range_succ,
        Polynomial.eval₂_finsetSum,Polynomial.eval₂_monomial,Nat.choose]
  have u721 (row:Bool):
      2 * |u139 23 15 (u724 row) 1 (1 / 9)| ≤ u696:= by
    exact u506 row
  have u722:1 ≤ u711 u695:= by
    norm_num [u711,u718,u710,u679,u695,Math.B699.N8.beta,u693]
  have u723:(u709:ℚ) ≤ u714 u696:= by
    norm_num [u709,u714,u712,u713,u679,u696,Math.B699.N8.beta,u694]
  have u692
      (qt:∀ row:Bool,Math.B699.N20.d1 u693 (u33 23 15 (u724 row) (1 / 9))
        (u31 23 15 (1 / 9)))
      (et:∀ row:Bool,Math.B699.N20.d1 u694 (u34 23 15 (u724 row) (1 / 9))
        (u32 23 15 (1 / 9)))
      (hAbase:(48:ℚ) < u711 u695 ^ 162)
      (hprevious:u709 ^ (u703 - 1) ≤ 4 * u702)
      (hrateP:3 ^ 46000 ≤ u709 ^ 774)
      (hbaseP:(3 ^ 46000) ^ u703 ≤ u702 ^ 774)
      (hlookP:4 ^ 774 * (3 ^ 46000) ^ (u703 + 1) ≤ u709 ^ (774 * u703))
      (hrateQ:2 ^ 69000 ≤ u709 ^ 732)
      (hbaseQ:(2 ^ 69000) ^ u703 ≤ u702 ^ 732)
      (hlookQ:4 ^ 732 * (2 ^ 69000) ^ (u703 + 1) ≤ u709 ^ (732 * u703))
      (Y e f A C:ℕ) (hY:u702 ≤ Y) (hC:1 ≤ C)
      (hwindowP:Y ≤ 3 ^ e * A) (hwindowQ:Y ≤ 2 ^ f * C)
      (hupperQ:2 ^ f * C ≤ 2 * Y)
      (hgap:|(3:ℤ) ^ e * (A:ℤ) - (2:ℤ) ^ f * (C:ℤ)| ≤ 24):
      Y ^ 226 ≤ A ^ 1000 ∨ Y ^ 268 ≤ C ^ 1000:= by
    obtain ⟨hQ,hE⟩:= u701 qt et
      u720 u721
    exact u719 u695 u696
      u697.2.2.1 u697.2.2.2 hQ hE
      u722 hAbase u723
      hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
      Y e f A C hY hC hwindowP hwindowQ hupperQ hgap
  let u745:ℕ:= 260741021762686709558443326807297290925847691799460950272067512220746702090113368004486096757194589047867047936
  let u746:ℕ:= 169902321422021445630803623539282409499132587269699763049402987792287945956193340180107043124735355377197265625
  let u747:ℚ:= (u745:ℚ) / (u746:ℚ)
  have u737:u711 u695 = u747:= by
    norm_num [u711,u718,u710,u679,u695,Math.B699.N8.beta,u693,
      u747,u745,u746]
  have u749:u746 ≤ u745:= by decide
  have u748:0 < u746:= by decide
  have u751:(0:ℚ) < (u746:ℚ):= by
    exact_mod_cast u748
  have u752:(1:ℚ) ≤ u747:= by
    unfold u747
    apply (le_div_iff₀ u751).mpr
    have h:(u746:ℚ) ≤ (u745:ℚ):= by
      exact_mod_cast u749
    simpa only [one_mul] using h
  have u750:
      64 * u746 ^ 32 ≤ u745 ^ 32:= by decide
  have u753:(64:ℚ) ≤ u747 ^ 32:= by
    unfold u747
    rw [div_pow]
    apply (le_div_iff₀ (pow_pos u751 32)).mpr
    exact_mod_cast u750
  have u754:(48:ℚ) < u747 ^ 162:= by
    exact lt_of_lt_of_le (by norm_num:(48:ℚ) < 64)
      (u753.trans
        (pow_le_pow_right₀ u752 (by decide:32 ≤ 162)))
  have u738:(48:ℚ) < u711 u695 ^ 162:= by
    rw [u737]
    exact u754
  let u758:ℕ:= 37002653975761602583641821923
  have u755:u758 ^ 8 ≤ (2:ℕ) ^ 760:= by
    set_option exponentiation.threshold 760 in decide
  have u769 (k:ℕ):(2:ℕ) ^ (k + 2) = 4 * (2:ℕ) ^ k:= by
    calc
      (2:ℕ) ^ (k + 2) = (2:ℕ) ^ k * 2 ^ 2:= Nat.pow_add 2 k 2
      _ = (2:ℕ) ^ k * 4:= by rw [show (2:ℕ) ^ 2 = 4 by decide]
      _ = 4 * (2:ℕ) ^ k:= Nat.mul_comm _ _
  have u760:u758 ^ (162 - 1) ≤ 4 * (2:ℕ) ^ 15359:= by
    have h:= Math.B699.N7.d7 u758 1 1 161 15361 760 8
      (by decide)
      (by set_option exponentiation.threshold 760 in exact u755)
      (by decide)
    have hpred:u758 ^ 161 ≤ (2:ℕ) ^ 15361:= by
      simpa only [Nat.pow_one] using h
    calc
      u758 ^ (162 - 1) = u758 ^ 161:= rfl
      _ ≤ (2:ℕ) ^ 15361:= hpred
      _ = 4 * (2:ℕ) ^ 15359:= u769 15359
  have u756:(3:ℕ) ^ 128 ≤ (2:ℕ) ^ 203:= by
    set_option exponentiation.threshold 203 in decide
  have u759:(2:ℕ) ^ 759 ≤ u758 ^ 8:= by
    set_option exponentiation.threshold 760 in decide
  have u761:(3:ℕ) ^ 46000 ≤ u758 ^ 774 ∧
      ((3:ℕ) ^ 46000) ^ 162 ≤ ((2:ℕ) ^ 15359) ^ 774 ∧
      (4:ℕ) ^ 774 * (3 ^ 46000) ^ (162+1) ≤ u758 ^ (774*162):= by
    exact Math.B699.N7.d25 3 u758 46000 774 162 15359
      203 128 759 8
      (by decide) (by decide)
      (by set_option exponentiation.threshold 203 in exact u756)
      (by set_option exponentiation.threshold 760 in exact u759)
      (by decide) (by decide) (by decide)
  have u763:(3:ℕ) ^ 46000 ≤ u758 ^ 774:= u761.1
  have u764:((3:ℕ) ^ 46000) ^ 162 ≤ ((2:ℕ)^ 15359) ^ 774:= u761.2.1
  have u765:(4:ℕ) ^ 774 * (3 ^ 46000) ^ (162+1) ≤ u758 ^ (774*162):= u761.2.2
  have u757:(2:ℕ) ^ 1 ≤ (2:ℕ) ^ 1:= by decide
  have u762:(2:ℕ) ^ 69000 ≤ u758 ^ 732 ∧
      ((2:ℕ) ^ 69000) ^ 162 ≤ ((2:ℕ) ^ 15359) ^ 732 ∧
      (4:ℕ) ^ 732 * (2 ^ 69000) ^ (162+1) ≤ u758 ^ (732*162):= by
    exact Math.B699.N7.d25 2 u758 69000 732 162 15359
      1 1 759 8
      (by decide) (by decide)
      (by set_option exponentiation.threshold 1 in exact u757)
      (by set_option exponentiation.threshold 760 in exact u759)
      (by decide) (by decide) (by decide)
  have u766:(2:ℕ) ^ 69000 ≤ u758 ^ 732:= u762.1
  have u767:((2:ℕ) ^ 69000) ^ 162 ≤ ((2:ℕ)^ 15359) ^ 732:= u762.2.1
  have u768:(4:ℕ) ^ 732 * (2 ^ 69000) ^ (162+1) ≤ u758 ^ (732*162):= u762.2.2
  have u739:
      (48:ℚ) < u711 u695 ^ 162 ∧
      u709 ^ (u703 - 1) ≤ 4 * u702 ∧
      (3:ℕ) ^ 46000 ≤ u709 ^ 774 ∧
      ((3:ℕ) ^ 46000) ^ u703 ≤ u702 ^ 774 ∧
      (4:ℕ) ^ 774 * (3 ^ 46000) ^ (u703 + 1) ≤ u709 ^ (774 * u703) ∧
      (2:ℕ) ^ 69000 ≤ u709 ^ 732 ∧
      ((2:ℕ) ^ 69000) ^ u703 ≤ u702 ^ 732 ∧
      (4:ℕ) ^ 732 * (2 ^ 69000) ^ (u703 + 1) ≤ u709 ^ (732 * u703):= by
    have h:= And.intro u738
      (And.intro u760
        (And.intro u763
          (And.intro u764
            (And.intro u765
              (And.intro u766
                (And.intro u767
                  u768))))))
    simpa only [u709,u758,
      u703,u702] using h
  have u740
      (qt:∀ row:Bool,Math.B699.N20.d1 u693 (u33 23 15 (u724 row) (1 / 9))
        (u31 23 15 (1 / 9)))
      (et:∀ row:Bool,Math.B699.N20.d1 u694 (u34 23 15 (u724 row) (1 / 9))
        (u32 23 15 (1 / 9)))
      (Y e f A C:ℕ) (hY:u702 ≤ Y) (hC:1 ≤ C)
      (hwindowP:Y ≤ 3 ^ e * A) (hwindowQ:Y ≤ 2 ^ f * C)
      (hupperQ:2 ^ f * C ≤ 2 * Y)
      (hgap:|(3:ℤ) ^ e * (A:ℤ) - (2:ℤ) ^ f * (C:ℤ)| ≤ 24):
      Y ^ 226 ≤ A ^ 1000 ∨ Y ^ 268 ≤ C ^ 1000:= by
    obtain ⟨hA,hprevious,hrateP,hbaseP,hlookP,hrateQ,hbaseQ,hlookQ⟩:=
      u739
    exact u692 qt et hA
      hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
      Y e f A C hY hC hwindowP hwindowQ hupperQ hgap
  have u736
      (Y e f A C:ℕ) (hY:u702 ≤ Y) (hC:1 ≤ C)
      (hwindowP:Y ≤ 3 ^ e * A) (hwindowQ:Y ≤ 2 ^ f * C)
      (hupperQ:2 ^ f * C ≤ 2 * Y)
      (hgap:|(3:ℤ) ^ e * (A:ℤ) - (2:ℤ) ^ f * (C:ℤ)| ≤ 24):
      Y ^ 226 ≤ A ^ 1000 ∨ Y ^ 268 ≤ C ^ 1000:= by
    exact u740 u734 u735
      Y e f A C hY hC hwindowP hwindowQ hupperQ hgap
  have u741 {n a b:ℕ} (ha:a < 11) (hb:b < 11):
      |((n - a:ℕ):ℤ) - ((n - b:ℕ):ℤ)| ≤ 10:= by
    apply abs_le.mpr
    constructor <;> omega
  have u742 {n p:ℕ} (hn:20 ≤ n) (window:N5.N15.d2 n p):
      u166 n ≤ p ^ ((n.choose 11).factorization p) * window.cofactor ∧
        p ^ ((n.choose 11).factorization p) * window.cofactor ≤ 2 * u166 n:= by
    have hrepr:p ^ ((n.choose 11).factorization p) * window.cofactor = n - window.offset:= by
      simpa only [N5.N15.d108,Nat.mul_comm] using window.equation
    simpa only [← hrepr] using u167 hn window.offset_lt
  have u743 {n:ℕ}
      (hn:20 ≤ n) (hY:u702 ≤ u166 n)
      (wp:N5.N15.d2 n 3) (wq:N5.N15.d2 n 2):
      (N5.N15.d108 n 3) ^ 1000 * (u166 n) ^ 226 ≤ n ^ 1000 ∨
        (N5.N15.d108 n 2) ^ 1000 * (u166 n) ^ 268 ≤ n ^ 1000:= by
    have hpBounds:= u742 hn wp
    have hqBounds:= u742 hn wq
    have hpNat:(3:ℕ) ^ ((n.choose 11).factorization 3) * wp.cofactor = n - wp.offset:= by
      simpa only [N5.N15.d108,Nat.mul_comm] using wp.equation
    have hqNat:(2:ℕ) ^ ((n.choose 11).factorization 2) * wq.cofactor = n - wq.offset:= by
      simpa only [N5.N15.d108,Nat.mul_comm] using wq.equation
    have hpInt:(3:ℤ) ^ ((n.choose 11).factorization 3) * (wp.cofactor:ℤ) =
        ((n - wp.offset:ℕ):ℤ):= by exact_mod_cast hpNat
    have hqInt:(2:ℤ) ^ ((n.choose 11).factorization 2) * (wq.cofactor:ℤ) =
        ((n - wq.offset:ℕ):ℤ):= by exact_mod_cast hqNat
    have hgap:|(3:ℤ) ^ ((n.choose 11).factorization 3) * (wp.cofactor:ℤ) -
        (2:ℤ) ^ ((n.choose 11).factorization 2) * (wq.cofactor:ℤ)| ≤ 24:= by
      rw [hpInt,hqInt]
      exact le_trans (u741 wp.offset_lt wq.offset_lt)
        (by decide:(10:ℤ) ≤ 24)
    have hcof:= u736 (u166 n)
      ((n.choose 11).factorization 3) ((n.choose 11).factorization 2)
      wp.cofactor wq.cofactor hY wq.cofactor_pos
      hpBounds.1 hqBounds.1 hqBounds.2 hgap
    rcases hcof with hP | hQ
    · exact Or.inl (u678 wp hP)
    · exact Or.inr (u678 wq hQ)
  have u744 {n:ℕ} (hn:(2:ℕ) ^ 15360 ≤ n):
      (N5.N15.d108 n 3) ^ 1000 * ((n + 1) / 2) ^ 226 ≤ n ^ 1000 ∨
        (N5.N15.d108 n 2) ^ 1000 * ((n + 1) / 2) ^ 268 ≤ n ^ 1000:= by
    have hlarge:20 ≤ n:=
      u170 (by decide:5 ≤ 15360) hn
    have hn11:11 ≤ n:= Nat.le_trans (by decide:11 ≤ 20) hlarge
    have hY:u702 ≤ u166 n:= by
      have h:= u169 (n:= n) (k:= 15359)
      simp only [show 15359 + 1 = 15360 by decide] at h
      simpa only [u702] using h hn
    obtain ⟨wp⟩:= u676 (n:= n) (p:= 3) hn11 (by decide:Nat.Prime 3)
    obtain ⟨wq⟩:= u676 (n:= n) (p:= 2) hn11 (by decide:Nat.Prime 2)
    simpa only [u166] using u743 hlarge hY wp wq
  let u800:ℕ:= 2 ^ 15359
  let u770 (row:Bool):ℕ:= if row then 0 else 1
  let u791:ℚ:= 3471657440109699659204039683 / 79228162514264337593543950336
  have u822:u122 = u791:= rfl
  have u824:u770 false = 1:= rfl
  have u825:u770 true = 0:= rfl
  have u826 (row:Bool):
      Math.B699.N20.d1 u791 (u33 5 4 (u770 row) (3 / 128)) (u31 5 4 (3 / 128)):= by
    cases row with
    | false =>
      simpa only [u824,u822,
        u125,
        u123,
        u119,
        u120,
        u121] using
          u133
    | true =>
      simpa only [u825,u822,
        u124,
        u123,
        u119,
        u120,
        u121] using
          u136
  let u792:ℚ:= 305863978762465520211566521 / 79228162514264337593543950336
  have u823:u129 = u792:= rfl
  have u827 (row:Bool):
      Math.B699.N20.d1 u792 (u34 5 4 (u770 row) (3 / 128)) (u32 5 4 (3 / 128)):= by
    cases row with
    | false =>
      simpa only [u824,u823,
        u132,
        u130,
        u126,
        u127,
        u128] using
          u135
    | true =>
      simpa only [u825,u823,
        u131,
        u130,
        u126,
        u127,
        u128] using
          u134
  let u793:ℚ:= Math.B699.N8.beta 5 4 * u791
  let u794:ℚ:= Math.B699.N8.beta 5 4 * u792
  have u795:0 < u791 ∧ 0 < u792 ∧ 0 < u793 ∧ 0 < u794:= by
    norm_num [u791,u792,u793,u794,Math.B699.N8.beta]
  have u771 (row:Bool):u770 row = 0 ∨ u770 row = 1:= by
    cases row <;> simp [u770]
  let u778 (m:ℕ) (row:Bool):ℚ:=
    u138 5 4 (u770 row) m (3 / 128)
  let u779 (m:ℕ) (row:Bool):ℚ:=
    u139 5 4 (u770 row) m (3 / 128)
  have u796 (F K Math.B699.N8.beta lam weight:ℚ) (m:ℕ)
      (hm:1 ≤ m) (hbeta:0 ≤ Math.B699.N8.beta) (hlam:0 ≤ lam) (hweight:0 ≤ weight)
      (hF:F ≤ K * Math.B699.N8.beta ^ m) (hcap:K * weight ≤ lam):
      F * (lam ^ (m - 1) * weight) ≤ (Math.B699.N8.beta * lam) ^ m:= by
    calc
      _ ≤ (K * Math.B699.N8.beta ^ m) * (lam ^ (m - 1) * weight):=
        mul_le_mul_of_nonneg_right hF (mul_nonneg (pow_nonneg hlam _) hweight)
      _ = (Math.B699.N8.beta ^ m * lam ^ (m - 1)) * (K * weight):= by ring
      _ ≤ (Math.B699.N8.beta ^ m * lam ^ (m - 1)) * lam:=
        mul_le_mul_of_nonneg_left hcap (mul_nonneg (pow_nonneg hbeta _) (pow_nonneg hlam _))
      _ = (Math.B699.N8.beta * lam) ^ m:= by
        simp only [mul_pow]
        rw [mul_assoc,← pow_succ,Nat.sub_add_cancel hm]
  have u797 (delta m:ℕ) (hdelta:delta = 0 ∨ delta = 1)
      (hm:1 ≤ m) (lam:ℚ) (hlam:0 < lam)
      (tree:Math.B699.N20.d1 lam (u33 5 4 delta (3 / 128)) (u31 5 4 (3 / 128)))
      (hcap:2 * |u138 5 4 delta 1 (3 / 128)| ≤ Math.B699.N8.beta 5 4 * lam):
      |u138 5 4 delta m (3 / 128)| ≤ (Math.B699.N8.beta 5 4 * lam) ^ m:= by
    have hd:delta ≤ 4:= by rcases hdelta with h | h <;> omega
    have hb:0 < Math.B699.N8.beta 5 4:= by norm_num [Math.B699.N8.beta]
    have hw:0 ≤ Math.B699.N21.moment (u33 5 4 delta (3 / 128)):=
      u875 (u37 5 4 delta (3 / 128) (by norm_num))
    have heq:(2 * Math.B699.N8.d44 5 4 delta 1 / Math.B699.N8.beta 5 4) *
        Math.B699.N21.moment (u33 5 4 delta (3 / 128)) =
        2 * |u138 5 4 delta 1 (3 / 128)| / Math.B699.N8.beta 5 4:= by
      rw [u141 5 4 delta (3 / 128) (by decide) hd (by norm_num)]
      ring
    have hcap':(2 * Math.B699.N8.d44 5 4 delta 1 / Math.B699.N8.beta 5 4) *
        Math.B699.N21.moment (u33 5 4 delta (3 / 128)) ≤ lam:= by
      rw [heq]
      exact (div_le_iff₀ hb).mpr (by simpa only [mul_comm lam (Math.B699.N8.beta 5 4)] using hcap)
    have hsource:= u18 5 4 delta m (3 / 128) lam
      (by decide) hd hm (le_of_lt hlam) tree
    rw [u140 5 4 delta m (by decide) hd hm] at hsource
    exact le_trans hsource (u796 _ _ _ _ _ m hm (le_of_lt hb)
      (le_of_lt hlam) hw (le_of_lt (u0 delta m hdelta hm)) hcap')
  have u798 (delta m:ℕ) (hdelta:delta = 0 ∨ delta = 1)
      (hm:1 ≤ m) (lam:ℚ) (hlam:0 < lam)
      (tree:Math.B699.N20.d1 lam (u34 5 4 delta (3 / 128)) (u32 5 4 (3 / 128)))
      (hcap:2 * |u139 5 4 delta 1 (3 / 128)| ≤ Math.B699.N8.beta 5 4 * lam):
      |u139 5 4 delta m (3 / 128)| ≤ (Math.B699.N8.beta 5 4 * lam) ^ m:= by
    have hd:delta ≤ 4:= by rcases hdelta with h | h <;> omega
    have hb:0 < Math.B699.N8.beta 5 4:= by norm_num [Math.B699.N8.beta]
    have hw:0 ≤ Math.B699.N21.moment (u34 5 4 delta (3 / 128)):=
      u875 (u20 5 4 delta (3 / 128) (by norm_num))
    have heq:(2 * Math.B699.N8.d44 5 4 delta 1 / Math.B699.N8.beta 5 4) *
        Math.B699.N21.moment (u34 5 4 delta (3 / 128)) =
        2 * |u139 5 4 delta 1 (3 / 128)| / Math.B699.N8.beta 5 4:= by
      rw [u142 5 4 delta (3 / 128) (by decide) hd (by norm_num)]
      ring
    have hcap':(2 * Math.B699.N8.d44 5 4 delta 1 / Math.B699.N8.beta 5 4) *
        Math.B699.N21.moment (u34 5 4 delta (3 / 128)) ≤ lam:= by
      rw [heq]
      exact (div_le_iff₀ hb).mpr (by simpa only [mul_comm lam (Math.B699.N8.beta 5 4)] using hcap)
    have hsource:= u19 5 4 delta m (3 / 128) lam
      (by decide) hd hm (le_of_lt hlam) tree
    rw [u140 5 4 delta m (by decide) hd hm] at hsource
    exact le_trans hsource (u796 _ _ _ _ _ m hm (le_of_lt hb)
      (le_of_lt hlam) hw (le_of_lt (u0 delta m hdelta hm)) hcap')
  have u799
      (qt:∀ row:Bool,Math.B699.N20.d1 u791 (u33 5 4 (u770 row) (3 / 128))
        (u31 5 4 (3 / 128)))
      (et:∀ row:Bool,Math.B699.N20.d1 u792 (u34 5 4 (u770 row) (3 / 128))
        (u32 5 4 (3 / 128)))
      (qc:∀ row:Bool,2 * |u138 5 4 (u770 row) 1 (3 / 128)| ≤ u793)
      (ec:∀ row:Bool,2 * |u139 5 4 (u770 row) 1 (3 / 128)| ≤ u794):
      (∀ m:ℕ,141 ≤ m → ∀ row:Bool,|u778 m row| ≤ u793 ^ m) ∧
        (∀ m:ℕ,141 ≤ m → ∀ row:Bool,|u779 m row| ≤ u794 ^ m):= by
    constructor
    · intro m hm row
      exact u797 (u770 row) m (u771 row) (by omega)
        u791 u795.1 (qt row) (qc row)
    · intro m hm row
      exact u798 (u770 row) m (u771 row) (by omega)
        u792 u795.2.1 (et row) (ec row)
  let u801:ℕ:= 329
  let u807:ℕ:= 115572769905797
  let u777:ℚ:= (602791 / 500000:ℚ) ^ 4
  let u808:ℚ:= (128:ℚ) ^ 5 * u777
  let u809 (BQ:ℚ):ℚ:= (128:ℚ) ^ 4 * BQ
  let u810 (BQ:ℚ):ℚ:= u808 / u809 BQ
  let u781 (m:ℕ) (row:Bool):ℤ:= u1006 (4 * m) (m - 1) 3 128 row
  let u782 (m:ℕ) (row:Bool):ℤ:=
    (128:ℤ) ^ (5 * m) * u1005 (4 * m) (m - 1) 3 128 row -
      (125:ℤ) ^ (5 * m) * u781 m row
  have u789 (m e f A C:ℕ)
      (hm:1 ≤ m) (he:35 * m ≤ e) (hf:15 * m ≤ f) (hC:1 ≤ C)
      (hgap:|(2:ℤ) ^ e * (A:ℤ) - (5:ℤ) ^ f * (C:ℤ)| ≤ 24):
      ∃ row:Bool,(128:ℤ) ^ (5 * m) ≤
        24 * |u781 m row| +
          |u782 m row| * |(5:ℤ) ^ (f - 15 * m) * (C:ℤ)|:= by
    have hp:(128:ℕ) ^ (5 * m) = (2:ℕ) ^ (35 * m):= by
      calc
        _ = ((2:ℕ) ^ 7) ^ (5 * m):= by norm_num
        _ = (2:ℕ) ^ (35 * m):= by rw [← Nat.pow_mul]; congr 1 <;> ring
    have hq:(125:ℕ) ^ (5 * m) = (5:ℕ) ^ (15 * m):= by
      calc
        _ = ((5:ℕ) ^ 3) ^ (5 * m):= by norm_num
        _ = (5:ℕ) ^ (15 * m):= by rw [← Nat.pow_mul]; congr 1 <;> ring
    have hPnat:(128:ℕ) ^ (5 * m) * (2 ^ (e - 35 * m) * A) = 2 ^ e * A:= by
      rw [hp]
      exact u398 2 e (35 * m) A he
    have hQnat:(125:ℕ) ^ (5 * m) * (5 ^ (f - 15 * m) * C) = 5 ^ f * C:= by
      rw [hq]
      exact u398 5 f (15 * m) C hf
    have hPint:(128:ℤ) ^ (5 * m) * ((2:ℤ) ^ (e - 35 * m) * (A:ℤ)) =
        (2:ℤ) ^ e * (A:ℤ):= by exact_mod_cast hPnat
    have hQint:(125:ℤ) ^ (5 * m) * ((5:ℤ) ^ (f - 15 * m) * (C:ℤ)) =
        (5:ℤ) ^ f * (C:ℤ):= by exact_mod_cast hQnat
    have hgap':|(128:ℤ) ^ (5 * m) * ((2:ℤ) ^ (e - 35 * m) * (A:ℤ)) -
        (125:ℤ) ^ (5 * m) * ((5:ℤ) ^ (f - 15 * m) * (C:ℤ))| ≤ 24:= by
      rw [hPint,hQint]
      exact hgap
    have hV:(5:ℤ) ^ (f - 15 * m) * (C:ℤ) ≠ 0:= by
      apply mul_ne_zero (pow_ne_zero _ (by decide:(5:ℤ) ≠ 0))
      exact_mod_cast (by omega:C ≠ 0)
    obtain ⟨row,_hne,hlower⟩:= u1007
      (4 * m) (m - 1) (by omega) 3 128
      (r:= (128:ℤ) ^ (5 * m)) (s:= (125:ℤ) ^ (5 * m))
      (a:= 1) (b:= 1)
      (U:= (2:ℤ) ^ (e - 35 * m) * (A:ℤ))
      (V:= (5:ℤ) ^ (f - 15 * m) * (C:ℤ)) (D:= 24)
      (by decide) (by decide) (pow_nonneg (by decide) _)
      (by decide) (by decide) hV hgap'
    exact ⟨row,by simpa only [u781,u782,one_mul,mul_one] using hlower⟩
  have u802:1 < u807:= by decide
  let u803 (Y:ℕ):ℕ:= Math.B699.N7.d65 u807 Y u802
  have u804 (Y:ℕ) (hY:u800 ≤ Y)
      (hprevious:u807 ^ (u801 - 1) ≤ 4 * u800):
      u801 ≤ u803 Y:= by
    exact Math.B699.N7.d67 u807 u800 Y u801
      u802 hY (by decide) hprevious
  have u805 (Y:ℕ) (hY:u800 ≤ Y)
      (hprevious:u807 ^ (u801 - 1) ≤ 4 * u800):
      141 ≤ u803 Y:= by
    have h:= u804 Y hY hprevious
    dsimp only [u801] at h
    omega
  have u806 (Y e f A C:ℕ)
      (hY:u800 ≤ Y)
      (hprevious:u807 ^ (u801 - 1) ≤ 4 * u800)
      (hrateP:2 ^ 35000 ≤ u807 ^ 752)
      (hbaseP:(2 ^ 35000) ^ u801 ≤ u800 ^ 752)
      (hlookP:4 ^ 752 * (2 ^ 35000) ^ (u801 + 1) ≤ u807 ^ (752 * u801))
      (hrateQ:5 ^ 15000 ≤ u807 ^ 748)
      (hbaseQ:(5 ^ 15000) ^ u801 ≤ u800 ^ 748)
      (hlookQ:4 ^ 748 * (5 ^ 15000) ^ (u801 + 1) ≤ u807 ^ (748 * u801))
      (hwindowP:Y ≤ 2 ^ e * A) (hwindowQ:Y ≤ 5 ^ f * C)
      (hsmallP:A ^ 1000 < Y ^ 248) (hsmallQ:C ^ 1000 < Y ^ 252):
      35 * u803 Y < e ∧ 15 * u803 Y < f:= by
    have hY0:0 < u800:= Nat.pow_pos (by decide:0 < (2:ℕ))
    have hM:0 < u801:= by decide
    constructor
    · have hP:= u397
        2 35 1000 248 u807 u801 u800 Y e A
        (by decide) (by decide) u802 hY0 hY hM
      simp only [show 35 * 1000 = 35000 by decide,
        show 1000 - 248 = 752 by decide] at hP
      exact hP hprevious hrateP hbaseP hlookP hwindowP hsmallP
    · have hQ:= u397
        5 15 1000 252 u807 u801 u800 Y f C
        (by decide) (by decide) u802 hY0 hY hM
      simp only [show 15 * 1000 = 15000 by decide,
        show 1000 - 252 = 748 by decide] at hQ
      exact hQ hprevious hrateQ hbaseQ hlookQ hwindowQ hsmallQ
  let u811:ℚ:= ((128:ℚ) * 125) ^ 5 * u777
  let u812 (BE:ℚ):ℚ:= (128:ℚ) * 3 ^ 8 * BE
  let u813 (BE:ℚ):ℚ:= u811 / u812 BE
  have u783:0 < u777:= by norm_num [u777]
  let u780 (m:ℕ) (row:Bool):ℚ:=
    (Math.B699.N18.qContent (4 * m - u770 row) (m + u770 row - 1)
      (4 * m - u770 row):ℚ)
  have u784 (m:ℕ) (hm:141 ≤ m) (row:Bool):
      u777 ^ m ≤ u780 m row:= by
    have h:= u348
      (u770 row) m (u771 row) hm
    simpa only [u777,u780,← pow_mul] using le_of_lt h
  have u773 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      u1005 (4 * m) (m - 1) 3 128 row =
        u942 (4 * m - u770 row) (m + u770 row - 1) 3 128 ∧
      u1006 (4 * m) (m - 1) 3 128 row =
        u1010 (4 * m - u770 row) (m + u770 row - 1)
          (4 * m - u770 row) 3 128:= by
    have hv:m - 1 + 1 = m:= by omega
    cases row <;> simp [u770,u1005,u1006,hv]
  have u774 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      (Math.B699.N18.qContent (4 * m - u770 row) (m + u770 row - 1)
          (4 * m - u770 row):ℚ) *
        (u1006 (4 * m) (m - 1) 3 128 row:ℚ) =
      (128:ℚ) ^ (4 * m - u770 row) *
        u138 5 4 (u770 row) m (3 / 128):= by
    have hq:= (u773 m hm row).2
    rw [hq,u154]
    have h:= u152 (4 * m - u770 row)
      (m + u770 row - 1) (4 * m - u770 row) 3 128 (by decide)
    simpa only [u138,show (5:ℕ) - 4 = 1 by decide,one_mul,
      Int.cast_ofNat] using h
  have u785 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      u780 m row * (u781 m row:ℚ) =
        (128:ℚ) ^ (4 * m - u770 row) * u778 m row:= by
    simpa only [u780,u781,u778] using
      u774 m hm row
  have u787 (m:ℕ) (hm:141 ≤ m) (row:Bool)
      (BQ:ℚ) (hBQ:0 ≤ BQ) (hQ:|u778 m row| ≤ BQ ^ m):
      u777 ^ m * |(u781 m row:ℚ)| ≤ ((128:ℚ) ^ 4 * BQ) ^ m:= by
    have h:= u565
      (u780 m row) (u777 ^ m) ((128:ℚ) ^ (4 * m - u770 row))
      (u781 m row) (u778 m row) (BQ ^ m)
      (le_of_lt (pow_pos u783 m)) (u784 m hm row)
      (pow_nonneg (by norm_num) _) (u785 m (by omega) row) hQ
    calc
      _ ≤ (128:ℚ) ^ (4 * m - u770 row) * BQ ^ m:= h
      _ ≤ (128:ℚ) ^ (4 * m) * BQ ^ m:=
        mul_le_mul_of_nonneg_right
          (pow_le_pow_right₀ (by norm_num:(1:ℚ) ≤ 128) (Nat.sub_le _ _))
          (pow_nonneg hBQ m)
      _ = ((128:ℚ) ^ 4 * BQ) ^ m:= by rw [mul_pow,← pow_mul]
  have u814 (m:ℕ) (hm:141 ≤ m) (row:Bool)
      (BQ:ℚ) (hBQ:0 < BQ) (hQ:|u778 m row| ≤ BQ ^ m)
      (hA:(48:ℚ) < u810 BQ ^ m):
      2 * (24 * |(u781 m row:ℚ)|) < (128:ℚ) ^ (5 * m):= by
    have hden:0 < u809 BQ:= by unfold u809; positivity
    have hnum:(48:ℚ) * u809 BQ ^ m < u808 ^ m:= by
      calc
        _ < u810 BQ ^ m * u809 BQ ^ m:=
          mul_lt_mul_of_pos_right hA (pow_pos hden m)
        _ = u808 ^ m:=
          u567 u808 (u809 BQ)
            (ne_of_gt hden) m
    have hsmall:(48:ℚ) * ((128:ℚ) ^ 4 * BQ) ^ m <
        (128:ℚ) ^ (5 * m) * u777 ^ m:= by
      calc
        _ < u808 ^ m:= hnum
        _ = (128:ℚ) ^ (5 * m) * u777 ^ m:= by
          simp only [u808,mul_pow,← pow_mul]
    have h:= u566
      (u777 ^ m) ((128:ℚ) ^ (5 * m)) 48 |(u781 m row:ℚ)|
      (((128:ℚ) ^ 4 * BQ) ^ m) (pow_pos u783 m) (by norm_num)
      (u787 m hm row BQ hBQ.le hQ) hsmall
    nlinarith only [h]
  have u776 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      (128:ℚ) ^ (m + u770 row - 1) *
        (3:ℚ) ^ (2 * (4 * m - u770 row) + 1) ≤
      ((128:ℚ) * 3 ^ 8) ^ m:= by
    have hbase:((128:ℚ) * 3 ^ 8) ^ m = (128:ℚ) ^ m * 3 ^ (8 * m):= by
      rw [mul_pow,← pow_mul]
    rw [hbase]
    rcases u771 row with h | h
    · rw [h]
      simp only [Nat.add_zero,Nat.sub_zero]
      have he:2 * (4 * m) + 1 = 8 * m + 1:= by omega
      rw [he,pow_succ]
      calc
        (128:ℚ) ^ (m - 1) * (3 ^ (8 * m) * 3) =
            ((128:ℚ) ^ (m - 1) * 3) * 3 ^ (8 * m):= by ring
        _ ≤ ((128:ℚ) ^ (m - 1) * 128) * 3 ^ (8 * m):=
          mul_le_mul_of_nonneg_right
            (mul_le_mul_of_nonneg_left (by norm_num:(3:ℚ) ≤ 128)
              (pow_nonneg (by norm_num:(0:ℚ) ≤ 128) (m - 1)))
            (pow_nonneg (by norm_num:(0:ℚ) ≤ 3) (8 * m))
        _ = (128:ℚ) ^ m * 3 ^ (8 * m):= by
          rw [← pow_succ,Nat.sub_add_cancel hm]
    · rw [h]
      have hv:m + 1 - 1 = m:= by omega
      rw [hv]
      exact mul_le_mul_of_nonneg_left
        (pow_le_pow_right₀ (by norm_num:(1:ℚ) ≤ 3)
          (by omega:2 * (4 * m - 1) + 1 ≤ 8 * m))
        (pow_nonneg (by norm_num:(0:ℚ) ≤ 128) m)
  have u772 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      (4 * m - u770 row) + (m + u770 row - 1) + 1 = 5 * m:= by
    rcases u771 row with h | h <;> rw [h] <;> omega
  have u775 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      (Math.B699.N18.qContent (4 * m - u770 row) (m + u770 row - 1)
          (4 * m - u770 row):ℚ) *
        (((128:ℤ) ^ (5 * m) * u1005 (4 * m) (m - 1) 3 128 row -
          (125:ℤ) ^ (5 * m) * u1006 (4 * m) (m - 1) 3 128 row:ℤ):ℚ) =
      (128:ℚ) ^ (m + u770 row - 1) *
        (3:ℚ) ^ (2 * (4 * m - u770 row) + 1) *
        u139 5 4 (u770 row) m (3 / 128):= by
    obtain ⟨hp,hq⟩:= u773 m hm row
    rw [hp,hq]
    have h:= u155 (4 * m - u770 row)
      (m + u770 row - 1) 3 128 (by decide)
    simpa only [u772 m hm row,show (128:ℤ) - 3 = 125 by decide,
      Int.cast_ofNat,u139,show (5:ℕ) - 4 = 1 by decide,one_mul] using h
  have u786 (m:ℕ) (hm:1 ≤ m) (row:Bool):
      u780 m row * (u782 m row:ℚ) =
        (128:ℚ) ^ (m + u770 row - 1) *
          (3:ℚ) ^ (2 * (4 * m - u770 row) + 1) * u779 m row:= by
    simpa only [u780,u782,u781,u779] using
      u775 m hm row
  have u788 (m:ℕ) (hm:141 ≤ m) (row:Bool)
      (BE:ℚ) (hBE:0 ≤ BE) (hE:|u779 m row| ≤ BE ^ m):
      u777 ^ m * |(u782 m row:ℚ)| ≤ ((128:ℚ) * 3 ^ 8 * BE) ^ m:= by
    have h:= u565
      (u780 m row) (u777 ^ m)
      ((128:ℚ) ^ (m + u770 row - 1) *
        (3:ℚ) ^ (2 * (4 * m - u770 row) + 1))
      (u782 m row) (u779 m row) (BE ^ m)
      (le_of_lt (pow_pos u783 m)) (u784 m hm row)
      (by positivity) (u786 m (by omega) row) hE
    calc
      _ ≤ ((128:ℚ) ^ (m + u770 row - 1) *
            (3:ℚ) ^ (2 * (4 * m - u770 row) + 1)) * BE ^ m:= h
      _ ≤ ((128:ℚ) * 3 ^ 8) ^ m * BE ^ m:=
        mul_le_mul_of_nonneg_right
          (u776 m (by omega) row) (pow_nonneg hBE m)
      _ = ((128:ℚ) * 3 ^ 8 * BE) ^ m:= by rw [← mul_pow]
  have u815 (m:ℕ) (hm:141 ≤ m) (row:Bool)
      (BE:ℚ) (hBE:0 < BE) (hE:|u779 m row| ≤ BE ^ m)
      (V Nq:ℕ) (hNV:(125:ℚ) ^ (5 * m) * (V:ℚ) = (Nq:ℚ))
      (hNsmall:2 * (Nq:ℚ) < u813 BE ^ m):
      2 * (|(u782 m row:ℚ)| * (V:ℚ)) < (128:ℚ) ^ (5 * m):= by
    have hden:0 < u812 BE:= by unfold u812; positivity
    have hsmall:(2 * (V:ℚ)) * u812 BE ^ m <
        (128:ℚ) ^ (5 * m) * u777 ^ m:= by
      apply (Rat.mul_lt_mul_right
        (pow_pos (by norm_num:(0:ℚ) < 125) (5 * m))).mp
      calc
        (2 * (V:ℚ)) * u812 BE ^ m * (125:ℚ) ^ (5 * m) =
            (2 * (Nq:ℚ)) * u812 BE ^ m:= by rw [← hNV]; ring
        _ < u813 BE ^ m * u812 BE ^ m:=
          mul_lt_mul_of_pos_right hNsmall (pow_pos hden m)
        _ = u811 ^ m:=
          u567 u811 (u812 BE)
            (ne_of_gt hden) m
        _ = ((128:ℚ) ^ (5 * m) * u777 ^ m) * (125:ℚ) ^ (5 * m):= by
          simp only [u811,mul_pow,← pow_mul]
          ring
    have h:= u566
      (u777 ^ m) ((128:ℚ) ^ (5 * m)) (2 * (V:ℚ))
      |(u782 m row:ℚ)| (u812 BE ^ m)
      (pow_pos u783 m) (by positivity)
      (u788 m hm row BE hBE.le hE) hsmall
    nlinarith only [h]
  have u816 (m:ℕ) (hm:141 ≤ m) (row:Bool)
      (BQ BE:ℚ) (hBQ:0 < BQ) (hBE:0 < BE)
      (hQ:|u778 m row| ≤ BQ ^ m) (hE:|u779 m row| ≤ BE ^ m)
      (hA:(48:ℚ) < u810 BQ ^ m)
      (V Nq:ℕ) (hNV:(125:ℚ) ^ (5 * m) * (V:ℚ) = (Nq:ℚ))
      (hNsmall:2 * (Nq:ℚ) < u813 BE ^ m):
      24 * |u781 m row| + |u782 m row| * (V:ℤ) < (128:ℤ) ^ (5 * m):= by
    have h:= u568
      (24 * |(u781 m row:ℚ)|) (|(u782 m row:ℚ)| * (V:ℚ))
      ((128:ℚ) ^ (5 * m))
      (u814 m hm row BQ hBQ hQ hA)
      (u815 m hm row BE hBE hE V Nq hNV hNsmall)
    exact_mod_cast h
  have u817
      (BQ BE:ℚ) (hBQ:0 < BQ) (hBE:0 < BE)
      (hQ:∀ m:ℕ,141 ≤ m → ∀ row:Bool,|u778 m row| ≤ BQ ^ m)
      (hE:∀ m:ℕ,141 ≤ m → ∀ row:Bool,|u779 m row| ≤ BE ^ m)
      (hAone:1 ≤ u810 BQ) (hAbase:(48:ℚ) < u810 BQ ^ 329)
      (hW:(u807:ℚ) ≤ u813 BE)
      (hprevious:u807 ^ (u801 - 1) ≤ 4 * u800)
      (hrateP:2 ^ 35000 ≤ u807 ^ 752)
      (hbaseP:(2 ^ 35000) ^ u801 ≤ u800 ^ 752)
      (hlookP:4 ^ 752 * (2 ^ 35000) ^ (u801 + 1) ≤ u807 ^ (752 * u801))
      (hrateQ:5 ^ 15000 ≤ u807 ^ 748)
      (hbaseQ:(5 ^ 15000) ^ u801 ≤ u800 ^ 748)
      (hlookQ:4 ^ 748 * (5 ^ 15000) ^ (u801 + 1) ≤ u807 ^ (748 * u801))
      (Y e f A C:ℕ) (hY:u800 ≤ Y) (hC:1 ≤ C)
      (hwindowP:Y ≤ 2 ^ e * A) (hwindowQ:Y ≤ 5 ^ f * C)
      (hupperQ:5 ^ f * C ≤ 2 * Y)
      (hgap:|(2:ℤ) ^ e * (A:ℤ) - (5:ℤ) ^ f * (C:ℤ)| ≤ 24):
      Y ^ 248 ≤ A ^ 1000 ∨ Y ^ 252 ≤ C ^ 1000:= by
    by_cases hP:Y ^ 248 ≤ A ^ 1000
    · exact Or.inl hP
    by_cases hQcofactor:Y ^ 252 ≤ C ^ 1000
    · exact Or.inr hQcofactor
    exfalso
    have hsmallP:A ^ 1000 < Y ^ 248:= Nat.lt_of_not_ge hP
    have hsmallQ:C ^ 1000 < Y ^ 252:= Nat.lt_of_not_ge hQcofactor
    let m:= u803 Y
    obtain ⟨he,hf⟩:= u806 Y e f A C hY hprevious
      hrateP hbaseP hlookP hrateQ hbaseQ hlookQ hwindowP hwindowQ hsmallP hsmallQ
    change 35 * m < e at he
    change 15 * m < f at hf
    have hm:141 ≤ m:= u805 Y hY hprevious
    have hmM:329 ≤ m:= u804 Y hY hprevious
    have hAm:(48:ℚ) < u810 BQ ^ m:=
      lt_of_lt_of_le hAbase (pow_le_pow_right₀ hAone hmM)
    have hthreshold:(4:ℚ) * (Y:ℚ) < (u807:ℚ) ^ m:= by
      have h:= Math.B699.N7.d71 u807 Y u802
      change 4 * Y < u807 ^ m at h
      exact_mod_cast h
    have hWm:(4:ℚ) * (Y:ℚ) < u813 BE ^ m:=
      lt_of_lt_of_le hthreshold (pow_le_pow_left₀ (Nat.cast_nonneg u807) hW m)
    let V:ℕ:= 5 ^ (f - 15 * m) * C
    let Nq:ℕ:= 5 ^ f * C
    have hNVnat:(125:ℕ) ^ (5 * m) * V = Nq:= by
      have hpow:(125:ℕ) ^ (5 * m) = (5:ℕ) ^ (15 * m):= by
        calc
          _ = ((5:ℕ) ^ 3) ^ (5 * m):= by norm_num
          _ = (5:ℕ) ^ (15 * m):= by rw [← Nat.pow_mul]; congr 1 <;> ring
      dsimp only [V,Nq]
      rw [hpow]
      exact u398 5 f (15 * m) C (Nat.le_of_lt hf)
    have hNV:(125:ℚ) ^ (5 * m) * (V:ℚ) = (Nq:ℚ):= by exact_mod_cast hNVnat
    have hNsmall:2 * (Nq:ℚ) < u813 BE ^ m:= by
      have hN:(Nq:ℚ) ≤ 2 * (Y:ℚ):= by exact_mod_cast hupperQ
      linarith
    obtain ⟨row,hlower⟩:= u789 m e f A C
      (by omega) (Nat.le_of_lt he) (Nat.le_of_lt hf) hC hgap
    have hVcast:(5:ℤ) ^ (f - 15 * m) * (C:ℤ) = (V:ℤ):= by
      dsimp only [V]
      simp only [Nat.cast_mul,Nat.cast_pow,Nat.cast_ofNat]
    have hVabs:|(5:ℤ) ^ (f - 15 * m) * (C:ℤ)| = (V:ℤ):= by
      rw [hVcast,abs_of_nonneg (Int.natCast_nonneg V)]
    have hlow:(128:ℤ) ^ (5 * m) ≤
        24 * |u781 m row| + |u782 m row| * (V:ℤ):= by
      simpa only [hVabs] using hlower
    have hstrict:= u816 m hm row BQ BE hBQ hBE
      (hQ m hm row) (hE m hm row) hAm V Nq hNV hNsmall
    exact (not_lt_of_ge hlow) hstrict
  have u818 (row:Bool):
      2 * |u138 5 4 (u770 row) 1 (3 / 128)| ≤ u793:= by
    cases row <;>
      norm_num [u138,u770,u793,Math.B699.N8.beta,u791,Math.B699.N18.d121,
        Math.B699.N18.d22,Math.B699.N18.d118,Math.B699.N18.d119,Finset.sum_range_succ,
        Polynomial.eval₂_finsetSum,Polynomial.eval₂_monomial,Nat.choose]
  have u819 (row:Bool):
      2 * |u139 5 4 (u770 row) 1 (3 / 128)| ≤ u794:= by
    cases row <;>
      norm_num [u139,u770,u794,Math.B699.N8.beta,u792,Math.B699.N18.d37,
        Math.B699.N18.d22,Math.B699.N18.d36,Finset.sum_range_succ,
        Polynomial.eval₂_finsetSum,Polynomial.eval₂_monomial,Nat.choose]
  have u820:1 ≤ u810 u793:= by
    norm_num [u810,u808,u809,u777,u793,Math.B699.N8.beta,u791]
  have u821:(u807:ℚ) ≤ u813 u794:= by
    norm_num [u807,u813,u811,u812,u777,u794,Math.B699.N8.beta,u792]
  have u790
      (qt:∀ row:Bool,Math.B699.N20.d1 u791 (u33 5 4 (u770 row) (3 / 128))
        (u31 5 4 (3 / 128)))
      (et:∀ row:Bool,Math.B699.N20.d1 u792 (u34 5 4 (u770 row) (3 / 128))
        (u32 5 4 (3 / 128)))
      (hAbase:(48:ℚ) < u810 u793 ^ 329)
      (hprevious:u807 ^ (u801 - 1) ≤ 4 * u800)
      (hrateP:2 ^ 35000 ≤ u807 ^ 752)
      (hbaseP:(2 ^ 35000) ^ u801 ≤ u800 ^ 752)
      (hlookP:4 ^ 752 * (2 ^ 35000) ^ (u801 + 1) ≤ u807 ^ (752 * u801))
      (hrateQ:5 ^ 15000 ≤ u807 ^ 748)
      (hbaseQ:(5 ^ 15000) ^ u801 ≤ u800 ^ 748)
      (hlookQ:4 ^ 748 * (5 ^ 15000) ^ (u801 + 1) ≤ u807 ^ (748 * u801))
      (Y e f A C:ℕ) (hY:u800 ≤ Y) (hC:1 ≤ C)
      (hwindowP:Y ≤ 2 ^ e * A) (hwindowQ:Y ≤ 5 ^ f * C)
      (hupperQ:5 ^ f * C ≤ 2 * Y)
      (hgap:|(2:ℤ) ^ e * (A:ℤ) - (5:ℤ) ^ f * (C:ℤ)| ≤ 24):
      Y ^ 248 ≤ A ^ 1000 ∨ Y ^ 252 ≤ C ^ 1000:= by
    obtain ⟨hQ,hE⟩:= u799 qt et
      u818 u819
    exact u817 u793 u794
      u795.2.2.1 u795.2.2.2 hQ hE
      u820 hAbase u821
      hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
      Y e f A C hY hC hwindowP hwindowQ hupperQ hgap
  let u837:ℕ:= 83682878107040006334695941930360399789273674382573568
  let u838:ℕ:= 80167724078165772891757631585792600333690643310546875
  let u839:ℚ:= (u837:ℚ) / (u838:ℚ)
  have u829:u810 u793 = u839:= by
    norm_num [u810,u808,u809,u777,u793,Math.B699.N8.beta,u791,
      u839,u837,u838]
  have u841:u838 ≤ u837:= by decide
  have u840:0 < u838:= by decide
  have u843:(0:ℚ) < (u838:ℚ):= by
    exact_mod_cast u840
  have u844:(1:ℚ) ≤ u839:= by
    unfold u839
    apply (le_div_iff₀ u843).mpr
    have h:(u838:ℚ) ≤ (u837:ℚ):= by
      exact_mod_cast u841
    simpa only [one_mul] using h
  have u842:
      2 * u838 ^ 32 ≤ u837 ^ 32:= by decide
  have u845:(2:ℚ) ≤ u839 ^ 32:= by
    unfold u839
    rw [div_pow]
    apply (le_div_iff₀ (pow_pos u843 32)).mpr
    exact_mod_cast u842
  have u846:(48:ℚ) < u839 ^ 329:= by
    have h64:(64:ℚ) ≤ u839 ^ 192:= by
      calc
        (64:ℚ) = (2:ℚ) ^ 6:= by norm_num
        _ ≤ (u839 ^ 32) ^ 6:=
          pow_le_pow_left₀ (by norm_num:(0:ℚ) ≤ 2) u845 6
        _ = u839 ^ 192:= by rw [← pow_mul]
    exact lt_of_lt_of_le (by norm_num:(48:ℚ) < 64)
      (h64.trans (pow_le_pow_right₀ u844 (by decide:192 ≤ 329)))
  have u830:(48:ℚ) < u810 u793 ^ 329:= by
    rw [u829]
    exact u846
  let u847:ℕ:= 115572769905797
  have u849:u847 ^ 256 ≤ (2:ℕ) ^ 11960:= by
    set_option exponentiation.threshold 11960 in
      decide
  have u852 (k:ℕ):(2:ℕ) ^ (k + 2) = 4 * (2:ℕ) ^ k:= by
    calc
      (2:ℕ) ^ (k + 2) = (2:ℕ) ^ k * 2 ^ 2:= Nat.pow_add 2 k 2
      _ = (2:ℕ) ^ k * 4:= by rw [show (2:ℕ) ^ 2 = 4 by decide]
      _ = 4 * (2:ℕ) ^ k:= Nat.mul_comm _ _
  have u853:u847 ^ (329 - 1) ≤ 4 * (2:ℕ) ^ 15359:= by
    have h:= Math.B699.N7.d7 u847 1 1 328 15361 11960 256
      (by decide)
      (by
        set_option exponentiation.threshold 11960 in
          exact u849)
      (by decide)
    have h328:u847 ^ 328 ≤ (2:ℕ) ^ 15361:= by
      simpa only [Nat.pow_one] using h
    calc
      u847 ^ (329 - 1) = u847 ^ 328:= rfl
      _ ≤ (2:ℕ) ^ 15361:= h328
      _ = 4 * (2:ℕ) ^ 15359:= u852 15359
  have u848:(2:ℕ) ^ 11959 ≤ u847 ^ 256:= by
    set_option exponentiation.threshold 11960 in
      decide
  have u851:(2:ℕ) ^ 1 ≤ (2:ℕ) ^ 1:= by
    decide
  have u854:(2:ℕ) ^ 35000 ≤ u847 ^ 752 ∧
      ((2:ℕ) ^ 35000) ^ 329 ≤ ((2:ℕ) ^ 15359) ^ 752 ∧
      (4:ℕ) ^ 752 * (2 ^ 35000) ^ (329 + 1) ≤
        u847 ^ (752 * 329):= by
    exact Math.B699.N7.d25 2 u847 35000 752 329 15359
      1 1 11959 256
      (by decide) (by decide)
      (by
        set_option exponentiation.threshold 1 in
          exact u851)
      (by
        set_option exponentiation.threshold 11960 in
          exact u848)
      (by decide) (by decide) (by decide)
  have u856:(2:ℕ) ^ 35000 ≤ u847 ^ 752:= u854.1
  have u857:((2:ℕ) ^ 35000) ^ 329 ≤ ((2:ℕ) ^ 15359) ^ 752:=
    u854.2.1
  have u858:(4:ℕ) ^ 752 * (2 ^ 35000) ^ (329 + 1) ≤
      u847 ^ (752 * 329):= u854.2.2
  have u850:(5:ℕ) ^ 4096 ≤ (2:ℕ) ^ 9511:= by
    set_option exponentiation.threshold 9511 in
      decide
  have u855:(5:ℕ) ^ 15000 ≤ u847 ^ 748 ∧
      ((5:ℕ) ^ 15000) ^ 329 ≤ ((2:ℕ) ^ 15359) ^ 748 ∧
      (4:ℕ) ^ 748 * (5 ^ 15000) ^ (329 + 1) ≤
        u847 ^ (748 * 329):= by
    exact Math.B699.N7.d25 5 u847 15000 748 329 15359
      9511 4096 11959 256
      (by decide) (by decide)
      (by
        set_option exponentiation.threshold 9511 in
          exact u850)
      (by
        set_option exponentiation.threshold 11960 in
          exact u848)
      (by decide) (by decide) (by decide)
  have u859:(5:ℕ) ^ 15000 ≤ u847 ^ 748:= u855.1
  have u860:((5:ℕ) ^ 15000) ^ 329 ≤ ((2:ℕ) ^ 15359) ^ 748:=
    u855.2.1
  have u861:(4:ℕ) ^ 748 * (5 ^ 15000) ^ (329 + 1) ≤
      u847 ^ (748 * 329):= u855.2.2
  have u831:
      (48:ℚ) < u810 u793 ^ 329 ∧
      u807 ^ (u801 - 1) ≤ 4 * u800 ∧
      (2:ℕ) ^ 35000 ≤ u807 ^ 752 ∧
      ((2:ℕ) ^ 35000) ^ u801 ≤ u800 ^ 752 ∧
      (4:ℕ) ^ 752 * (2 ^ 35000) ^ (u801 + 1) ≤ u807 ^ (752 * u801) ∧
      (5:ℕ) ^ 15000 ≤ u807 ^ 748 ∧
      ((5:ℕ) ^ 15000) ^ u801 ≤ u800 ^ 748 ∧
      (4:ℕ) ^ 748 * (5 ^ 15000) ^ (u801 + 1) ≤ u807 ^ (748 * u801):= by
    have h:= And.intro u830
      (And.intro u853
        (And.intro u856
          (And.intro u857
            (And.intro u858
              (And.intro u859
                (And.intro u860
                  u861))))))
    simpa only [u807,u847,
      u801,u800] using h
  have u832
      (qt:∀ row:Bool,Math.B699.N20.d1 u791 (u33 5 4 (u770 row) (3 / 128))
        (u31 5 4 (3 / 128)))
      (et:∀ row:Bool,Math.B699.N20.d1 u792 (u34 5 4 (u770 row) (3 / 128))
        (u32 5 4 (3 / 128)))
      (Y e f A C:ℕ) (hY:u800 ≤ Y) (hC:1 ≤ C)
      (hwindowP:Y ≤ 2 ^ e * A) (hwindowQ:Y ≤ 5 ^ f * C)
      (hupperQ:5 ^ f * C ≤ 2 * Y)
      (hgap:|(2:ℤ) ^ e * (A:ℤ) - (5:ℤ) ^ f * (C:ℤ)| ≤ 24):
      Y ^ 248 ≤ A ^ 1000 ∨ Y ^ 252 ≤ C ^ 1000:= by
    obtain ⟨hA,hprevious,hrateP,hbaseP,hlookP,hrateQ,hbaseQ,hlookQ⟩:=
      u831
    exact u790 qt et hA
      hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
      Y e f A C hY hC hwindowP hwindowQ hupperQ hgap
  have u828
      (Y e f A C:ℕ) (hY:u800 ≤ Y) (hC:1 ≤ C)
      (hwindowP:Y ≤ 2 ^ e * A) (hwindowQ:Y ≤ 5 ^ f * C)
      (hupperQ:5 ^ f * C ≤ 2 * Y)
      (hgap:|(2:ℤ) ^ e * (A:ℤ) - (5:ℤ) ^ f * (C:ℤ)| ≤ 24):
      Y ^ 248 ≤ A ^ 1000 ∨ Y ^ 252 ≤ C ^ 1000:= by
    exact u832 u826 u827
      Y e f A C hY hC hwindowP hwindowQ hupperQ hgap
  have u833 {n a b:ℕ} (ha:a < 11) (hb:b < 11):
      |((n - a:ℕ):ℤ) - ((n - b:ℕ):ℤ)| ≤ 10:= by
    apply abs_le.mpr
    constructor <;> omega
  have u834 {n p:ℕ} (hn:20 ≤ n) (window:N5.N15.d2 n p):
      u166 n ≤ p ^ ((n.choose 11).factorization p) * window.cofactor ∧
        p ^ ((n.choose 11).factorization p) * window.cofactor ≤ 2 * u166 n:= by
    have hrepr:p ^ ((n.choose 11).factorization p) * window.cofactor = n - window.offset:= by
      simpa only [N5.N15.d108,Nat.mul_comm] using window.equation
    simpa only [← hrepr] using u167 hn window.offset_lt
  have u835 {n:ℕ}
      (hn:20 ≤ n) (hY:u800 ≤ u166 n)
      (wp:N5.N15.d2 n 2) (wq:N5.N15.d2 n 5):
      (N5.N15.d108 n 2) ^ 1000 * (u166 n) ^ 248 ≤ n ^ 1000 ∨
        (N5.N15.d108 n 5) ^ 1000 * (u166 n) ^ 252 ≤ n ^ 1000:= by
    have hpBounds:= u834 hn wp
    have hqBounds:= u834 hn wq
    have hpNat:(2:ℕ) ^ ((n.choose 11).factorization 2) * wp.cofactor = n - wp.offset:= by
      simpa only [N5.N15.d108,Nat.mul_comm] using wp.equation
    have hqNat:(5:ℕ) ^ ((n.choose 11).factorization 5) * wq.cofactor = n - wq.offset:= by
      simpa only [N5.N15.d108,Nat.mul_comm] using wq.equation
    have hpInt:(2:ℤ) ^ ((n.choose 11).factorization 2) * (wp.cofactor:ℤ) =
        ((n - wp.offset:ℕ):ℤ):= by exact_mod_cast hpNat
    have hqInt:(5:ℤ) ^ ((n.choose 11).factorization 5) * (wq.cofactor:ℤ) =
        ((n - wq.offset:ℕ):ℤ):= by exact_mod_cast hqNat
    have hgap:|(2:ℤ) ^ ((n.choose 11).factorization 2) * (wp.cofactor:ℤ) -
        (5:ℤ) ^ ((n.choose 11).factorization 5) * (wq.cofactor:ℤ)| ≤ 24:= by
      rw [hpInt,hqInt]
      exact le_trans (u833 wp.offset_lt wq.offset_lt)
        (by decide:(10:ℤ) ≤ 24)
    have hcof:= u828 (u166 n)
      ((n.choose 11).factorization 2) ((n.choose 11).factorization 5)
      wp.cofactor wq.cofactor hY wq.cofactor_pos
      hpBounds.1 hqBounds.1 hqBounds.2 hgap
    rcases hcof with hP | hQ
    · exact Or.inl (u678 wp hP)
    · exact Or.inr (u678 wq hQ)
  have u836 {n:ℕ} (hn:(2:ℕ) ^ 15360 ≤ n):
      (N5.N15.d108 n 2) ^ 1000 * ((n + 1) / 2) ^ 248 ≤ n ^ 1000 ∨
        (N5.N15.d108 n 5) ^ 1000 * ((n + 1) / 2) ^ 252 ≤ n ^ 1000:= by
    have hlarge:20 ≤ n:=
      u170 (by decide:5 ≤ 15360) hn
    have hn11:11 ≤ n:= Nat.le_trans (by decide:11 ≤ 20) hlarge
    have hY:u800 ≤ u166 n:= by
      have h:= u169 (n:= n) (k:= 15359)
      simp only [show 15359 + 1 = 15360 by decide] at h
      simpa only [u800] using h hn
    obtain ⟨wp⟩:= u676 (n:= n) (p:= 2) hn11 (by decide:Nat.Prime 2)
    obtain ⟨wq⟩:= u676 (n:= n) (p:= 5) hn11 (by decide:Nat.Prime 5)
    simpa only [u166] using u835 hlarge hY wp wq
  have u862 {n Y A:ℕ} (hA:A ≤ n):
      A ^ 1000 * Y ^ 0 ≤ n ^ 1000:= by
    simpa only [pow_zero,mul_one] using Nat.pow_le_pow_left hA 1000
  have u863 {n Y A2 A3 A5 A7:ℕ}
      (w2 w3 w5 w7:ℕ) (hY:1 ≤ Y) (hsum:640 ≤ w2 + w3 + w5 + w7)
      (h2:A2 ^ 1000 * Y ^ w2 ≤ n ^ 1000)
      (h3:A3 ^ 1000 * Y ^ w3 ≤ n ^ 1000)
      (h5:A5 ^ 1000 * Y ^ w5 ≤ n ^ 1000)
      (h7:A7 ^ 1000 * Y ^ w7 ≤ n ^ 1000):
      (A2 * A3 * A5 * A7) ^ 1000 * Y ^ 640 ≤ n ^ 4000:= by
    have hYpow:Y ^ 640 ≤ Y ^ (w2 + w3 + w5 + w7):=
      pow_le_pow_right' hY hsum
    calc
      (A2 * A3 * A5 * A7) ^ 1000 * Y ^ 640 ≤
          (A2 * A3 * A5 * A7) ^ 1000 * Y ^ (w2 + w3 + w5 + w7):=
        Nat.mul_le_mul_left _ hYpow
      _ = (A2 ^ 1000 * Y ^ w2 * (A3 ^ 1000 * Y ^ w3)) *
          (A5 ^ 1000 * Y ^ w5 * (A7 ^ 1000 * Y ^ w7)):= by
        simp only [mul_pow,pow_add]
        ring
      _ ≤ (n ^ 1000 * n ^ 1000) * (n ^ 1000 * n ^ 1000):=
        Nat.mul_le_mul (Nat.mul_le_mul h2 h3) (Nat.mul_le_mul h5 h7)
      _ = n ^ ((1000 + 1000) + (1000 + 1000)):= by
        simp only [pow_add]
      _ = n ^ 4000:= by rfl
  have u864 {n Y A2 A3 A5 A7:ℕ}
      (hY:1 ≤ Y) (h2n:A2 ≤ n) (h3n:A3 ≤ n)
      (h5n:A5 ≤ n) (h7n:A7 ≤ n)
      (h25:A2 ^ 1000 * Y ^ 248 ≤ n ^ 1000 ∨ A5 ^ 1000 * Y ^ 252 ≤ n ^ 1000)
      (h72:A7 ^ 1000 * Y ^ 60 ≤ n ^ 1000 ∨ A2 ^ 1000 * Y ^ 330 ≤ n ^ 1000)
      (h32:A3 ^ 1000 * Y ^ 226 ≤ n ^ 1000 ∨ A2 ^ 1000 * Y ^ 268 ≤ n ^ 1000)
      (h53:A5 ^ 1000 * Y ^ 354 ≤ n ^ 1000 ∨ A3 ^ 1000 * Y ^ 228 ≤ n ^ 1000)
      (h57:A5 ^ 1000 * Y ^ 352 ≤ n ^ 1000 ∨ A7 ^ 1000 * Y ^ 216 ≤ n ^ 1000):
      (A2 * A3 * A5 * A7) ^ 1000 * Y ^ 640 ≤ n ^ 4000:= by
    have h2zero:A2 ^ 1000 * Y ^ 0 ≤ n ^ 1000:= u862 (Y:= Y) h2n
    have h3zero:A3 ^ 1000 * Y ^ 0 ≤ n ^ 1000:= u862 (Y:= Y) h3n
    have h5zero:A5 ^ 1000 * Y ^ 0 ≤ n ^ 1000:= u862 (Y:= Y) h5n
    have h7zero:A7 ^ 1000 * Y ^ 0 ≤ n ^ 1000:= u862 (Y:= Y) h7n
    rcases h25 with h25 | h25
    · rcases h72 with h72 | h72
      · rcases h32 with h32 | h32
        · rcases h53 with h53 | h53
          · rcases h57 with h57 | h57
            · exact u863 248 226 354 60 hY (by decide) h25 h32 h53 h72
            · exact u863 248 226 354 216 hY (by decide) h25 h32 h53 h57
          · rcases h57 with h57 | h57
            · exact u863 248 228 352 60 hY (by decide) h25 h53 h57 h72
            · exact u863 248 228 0 216 hY (by decide) h25 h53 h5zero h57
        · rcases h53 with h53 | h53
          · rcases h57 with h57 | h57
            · exact u863 268 0 354 60 hY (by decide) h32 h3zero h53 h72
            · exact u863 268 0 354 216 hY (by decide) h32 h3zero h53 h57
          · rcases h57 with h57 | h57
            · exact u863 268 228 352 60 hY (by decide) h32 h53 h57 h72
            · exact u863 268 228 0 216 hY (by decide) h32 h53 h5zero h57
      · rcases h32 with h32 | h32
        · rcases h53 with h53 | h53
          · rcases h57 with h57 | h57
            · exact u863 330 226 354 0 hY (by decide) h72 h32 h53 h7zero
            · exact u863 330 226 354 216 hY (by decide) h72 h32 h53 h57
          · rcases h57 with h57 | h57
            · exact u863 330 228 352 0 hY (by decide) h72 h53 h57 h7zero
            · exact u863 330 228 0 216 hY (by decide) h72 h53 h5zero h57
        · rcases h53 with h53 | h53
          · rcases h57 with h57 | h57
            · exact u863 330 0 354 0 hY (by decide) h72 h3zero h53 h7zero
            · exact u863 330 0 354 216 hY (by decide) h72 h3zero h53 h57
          · rcases h57 with h57 | h57
            · exact u863 330 228 352 0 hY (by decide) h72 h53 h57 h7zero
            · exact u863 330 228 0 216 hY (by decide) h72 h53 h5zero h57
    · rcases h72 with h72 | h72
      · rcases h32 with h32 | h32
        · rcases h53 with h53 | h53
          · rcases h57 with h57 | h57
            · exact u863 0 226 354 60 hY (by decide) h2zero h32 h53 h72
            · exact u863 0 226 354 216 hY (by decide) h2zero h32 h53 h57
          · rcases h57 with h57 | h57
            · exact u863 0 228 352 60 hY (by decide) h2zero h53 h57 h72
            · exact u863 0 228 252 216 hY (by decide) h2zero h53 h25 h57
        · rcases h53 with h53 | h53
          · rcases h57 with h57 | h57
            · exact u863 268 0 354 60 hY (by decide) h32 h3zero h53 h72
            · exact u863 268 0 354 216 hY (by decide) h32 h3zero h53 h57
          · rcases h57 with h57 | h57
            · exact u863 268 228 352 60 hY (by decide) h32 h53 h57 h72
            · exact u863 268 228 252 216 hY (by decide) h32 h53 h25 h57
      · rcases h32 with h32 | h32
        · rcases h53 with h53 | h53
          · rcases h57 with h57 | h57
            · exact u863 330 226 354 0 hY (by decide) h72 h32 h53 h7zero
            · exact u863 330 226 354 216 hY (by decide) h72 h32 h53 h57
          · rcases h57 with h57 | h57
            · exact u863 330 228 352 0 hY (by decide) h72 h53 h57 h7zero
            · exact u863 330 228 252 216 hY (by decide) h72 h53 h25 h57
        · rcases h53 with h53 | h53
          · rcases h57 with h57 | h57
            · exact u863 330 0 354 0 hY (by decide) h72 h3zero h53 h7zero
            · exact u863 330 0 354 216 hY (by decide) h72 h3zero h53 h57
          · rcases h57 with h57 | h57
            · exact u863 330 228 352 0 hY (by decide) h72 h53 h57 h7zero
            · exact u863 330 228 252 216 hY (by decide) h72 h53 h25 h57
  have u508 {n:ℕ} (hheight:(2:ℕ) ^ 15360 ≤ n):
      (N5.N15.d108 n 2 * N5.N15.d108 n 3 * N5.N15.d108 n 5 *
        N5.N15.d108 n 7) ^ 1000 * (u166 n) ^ 640 ≤ n ^ 4000:= by
    have hn20:20 ≤ n:=
      u170 (by decide:5 ≤ 15360) hheight
    have hn11:11 ≤ n:= Nat.le_trans (by decide:11 ≤ 20) hn20
    have hn1:1 ≤ n:= Nat.le_trans (by decide:1 ≤ 20) hn20
    have hY:1 ≤ u166 n:= u512 hn1
    have h2n:N5.N15.d108 n 2 ≤ n:= u511 hn11 (by decide)
    have h3n:N5.N15.d108 n 3 ≤ n:= u511 hn11 (by decide)
    have h5n:N5.N15.d108 n 5 ≤ n:= u511 hn11 (by decide)
    have h7n:N5.N15.d108 n 7 ≤ n:= u511 hn11 (by decide)
    have h25:= u836
      (n:= n) hheight
    have h72:= u648
      (n:= n) hheight
    have h32:= u744
      (n:= n) hheight
    have h53:= u165
      (n:= n) hheight
    have h57:= u475
      (n:= n) hheight
    exact u864
      hY h2n h3n h5n h7n
      (by simpa only [u166] using h25)
      (by simpa only [u166] using h72)
      (by simpa only [u166] using h32)
      (by simpa only [u166] using h53)
      (by simpa only [u166] using h57)
  have u674:
      (Finset.range 11).filter Nat.Prime = ({2,3,5,7}:Finset ℕ):= by decide
  have u675 (n:ℕ):
      N4.d137 n 11 =
        N5.N15.d108 n 2 * N5.N15.d108 n 3 * N5.N15.d108 n 5 * N5.N15.d108 n 7:= by
    rw [N5.d140,u674]
    simp [N5.N15.d108,Nat.mul_assoc]
  have u509 {n:ℕ} (hheight:(2:ℕ) ^ 15360 ≤ n):
      (N4.d137 n 11) ^ 1000 * (u166 n) ^ 640 ≤ n ^ 4000:= by
    rw [u675 n]
    exact u508 hheight
  have u513 (n:ℕ):n ≤ 2 * u166 n:= by
    dsimp only [u166]
    omega
  have u865 {n Y U C:ℕ}
      (hn:0 < n) (hnY:n ≤ 2 * Y)
      (hbase:n ^ 121 ≤ C * U ^ 11 * n ^ 84)
      (hproduct:U ^ 1000 * Y ^ 640 ≤ n ^ 4000):
      n ^ 40 ≤ C ^ 1000 * 2 ^ 7040:= by
    have hb:n ^ 121000 ≤ C ^ 1000 * U ^ 11000 * n ^ 84000:= by
      simpa only [mul_pow,← pow_mul] using Nat.pow_le_pow_left hbase 1000
    have hp:U ^ 11000 * Y ^ 7040 ≤ n ^ 44000:= by
      simpa only [mul_pow,← pow_mul] using Nat.pow_le_pow_left hproduct 11
    have hy:n ^ 7040 ≤ 2 ^ 7040 * Y ^ 7040:= by
      simpa only [mul_pow] using Nat.pow_le_pow_left hnY 7040
    have hcombined:n ^ 121000 * Y ^ 7040 ≤ C ^ 1000 * n ^ 128000:= by
      calc
        n ^ 121000 * Y ^ 7040 ≤
            (C ^ 1000 * U ^ 11000 * n ^ 84000) * Y ^ 7040:=
          Nat.mul_le_mul_right _ hb
        _ = (C ^ 1000 * n ^ 84000) * (U ^ 11000 * Y ^ 7040):= by ring
        _ ≤ (C ^ 1000 * n ^ 84000) * n ^ 44000:= Nat.mul_le_mul_left _ hp
        _ = C ^ 1000 * n ^ 128000:= by
          rw [mul_assoc,← pow_add]
    have hbig:n ^ 128040 ≤ (C ^ 1000 * 2 ^ 7040) * n ^ 128000:= by
      calc
        n ^ 128040 = n ^ 121000 * n ^ 7040:= by rw [← pow_add]
        _ ≤ n ^ 121000 * (2 ^ 7040 * Y ^ 7040):= Nat.mul_le_mul_left _ hy
        _ = 2 ^ 7040 * (n ^ 121000 * Y ^ 7040):= by ring
        _ ≤ 2 ^ 7040 * (C ^ 1000 * n ^ 128000):=
          Nat.mul_le_mul_left _ hcombined
        _ = (C ^ 1000 * 2 ^ 7040) * n ^ 128000:= by ring
    have hcancel:n ^ 40 * n ^ 128000 ≤ (C ^ 1000 * 2 ^ 7040) * n ^ 128000:= by
      simpa only [← pow_add] using hbig
    exact Nat.le_of_mul_le_mul_right hcancel (Nat.pow_pos hn)
  have u866:
      ((2 * Nat.factorial 11) ^ 11) ^ 1000 * 2 ^ 7040 < (2:ℕ) ^ 304040:= by
    have hfactorial:2 * Nat.factorial 11 < (2:ℕ) ^ 27:= by decide
    have hp:(2 * Nat.factorial 11) ^ 11000 < ((2:ℕ) ^ 27) ^ 11000:=
      Nat.pow_lt_pow_left hfactorial (by decide:11000 ≠ 0)
    calc
      ((2 * Nat.factorial 11) ^ 11) ^ 1000 * 2 ^ 7040 =
          (2 * Nat.factorial 11) ^ 11000 * 2 ^ 7040:= by rw [← pow_mul]
      _ < ((2:ℕ) ^ 27) ^ 11000 * 2 ^ 7040:=
        Nat.mul_lt_mul_of_pos_right hp (Nat.pow_pos (by decide:0 < 2))
      _ = (2:ℕ) ^ (27 * 11000 + 7040):= by rw [← pow_mul,← pow_add]
      _ = (2:ℕ) ^ 304040:= by rfl
  have u867 {n j Y:ℕ}
      (hheight:(2:ℕ) ^ 15360 ≤ n) (hij:11 < j) (hjn:j ≤ n / 2)
      (hnY:n ≤ 2 * Y)
      (hproduct:(N4.d137 n 11) ^ 1000 * Y ^ 640 ≤ n ^ 4000)
      (hno:¬ N4.Common n 11 j):False:= by
    have hn:0 < n:= (Nat.pow_pos (by decide:0 < 2)).trans_le hheight
    have hsmall:110 ≤ (2:ℕ) ^ 7:= by decide
    have hpow:(2:ℕ) ^ 7 ≤ 2 ^ 15360:=
      pow_le_pow_right' (by decide:1 ≤ (2:ℕ)) (by decide:7 ≤ 15360)
    have hlarge:11 * (11 - 1) ≤ n:= hsmall.trans (hpow.trans hheight)
    have hd:N5.d150 11 3 7 = 84:= by decide
    have hcounter:N5.d149 11 3 7 * n ^ 121 ≤
        (2 * Nat.factorial 11) ^ 11 * (N4.d137 n 11) ^ 11 * n ^ 84:= by
      have h:= N5.d89 (i:= 11) (r:= 3) (s:= 7)
        (by decide) hij hjn (by decide) hlarge hno
      simpa only [hd] using h
    have hK:1 ≤ N5.d149 11 3 7:= N5.d153 11 3 7
    have hbase:n ^ 121 ≤
        (2 * Nat.factorial 11) ^ 11 * (N4.d137 n 11) ^ 11 * n ^ 84:= by
      calc
        n ^ 121 = 1 * n ^ 121:= by ring
        _ ≤ N5.d149 11 3 7 * n ^ 121:= Nat.mul_le_mul_right _ hK
        _ ≤ (2 * Nat.factorial 11) ^ 11 * (N4.d137 n 11) ^ 11 * n ^ 84:= hcounter
    have hbound:n ^ 40 ≤ ((2 * Nat.factorial 11) ^ 11) ^ 1000 * 2 ^ 7040:=
      u865 (U:= N4.d137 n 11)
        (C:= (2 * Nat.factorial 11) ^ 11) hn hnY hbase hproduct
    have hupper:n ^ 40 < (2:ℕ) ^ 304040:= hbound.trans_lt u866
    have hlower:(2:ℕ) ^ 614400 ≤ n ^ 40:= by
      simpa only [← pow_mul] using Nat.pow_le_pow_left hheight 40
    have horder:(2:ℕ) ^ 304040 ≤ 2 ^ 614400:=
      pow_le_pow_right' (by decide:1 ≤ (2:ℕ)) (by decide:304040 ≤ 614400)
    exact (not_lt_of_ge (horder.trans hlower)) hupper
  have u507 {n j:ℕ}
      (hij:11 < j) (hjn:j ≤ n / 2) (hno:¬ N4.Common n 11 j):
      n < (2:ℕ) ^ 15360:= by
    by_contra hnot
    have hheight:(2:ℕ) ^ 15360 ≤ n:= Nat.le_of_not_gt hnot
    exact u867
      (n:= n) (j:= j) (Y:= u166 n)
      hheight hij hjn (u513 n)
      (u509 hheight) hno
  have hc:N4.Common n 11 j:= by
    classical
    by_contra hno
    exact Nat.not_le_of_gt (u507 hij hjn hno) hn
  obtain ⟨p,hp,hpi,hg⟩:= hc
  exact ⟨p,hp,hpi,dvd_trans hg (Nat.gcd_dvd_left _ _),dvd_trans hg (Nat.gcd_dvd_right _ _)⟩
end Math.B699.N14
namespace Math.B699.N14
open N4
end Math.B699.N14
end Contribution.B699I11AboveFinalCandidate

#check (Contribution.B699I11AboveFinalCandidate.Math.B699.N14.d24 : ∀ {n j : Nat}, (2 : Nat) ^ 15360 ≤ n → 11 < j → j ≤ n / 2 → ∃ p : Nat, Nat.Prime p ∧ 11 ≤ p ∧ p ∣ Nat.choose n 11 ∧ p ∣ Nat.choose n j)
#print axioms Contribution.B699I11AboveFinalCandidate.Math.B699.N14.d24
