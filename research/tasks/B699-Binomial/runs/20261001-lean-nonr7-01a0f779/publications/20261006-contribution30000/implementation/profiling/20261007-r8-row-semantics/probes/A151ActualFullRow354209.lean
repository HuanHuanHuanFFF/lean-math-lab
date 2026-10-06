import Lean.Elab.Tactic.Omega
import Mathlib.Algebra.BigOperators.Associated
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Algebra.BigOperators.Ring.Nat
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Ring.Abs
import Mathlib.Data.Finset.Max
import Mathlib.Data.List.Basic
import Mathlib.Data.List.Range
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Data.Nat.Choose.Factorization
import Mathlib.Data.Nat.Dist
import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Data.Nat.GCD.BigOperators
import Mathlib.Data.Nat.Log
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Nat.Prime.Defs
import Mathlib.Data.Nat.Prime.Factorial
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Tactic.IntervalCases
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import Mathlib.Data.Int.GCD
namespace Contribution.B699ProfilingA151ActualFullRow354209
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
namespace N5.N8.N7
end N5.N8.N7
namespace N6
end N6
namespace B699
theorem d81 {n k p e:ℕ}
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
theorem d29 {n i j p ei ej:ℕ}
    (hp:p.Prime) (hpi:i ≤ p) (hin:i ≤ n) (hjn:j ≤ n)
    (hei:1 ≤ ei) (hej:1 ≤ ej)
    (hmi:n % p ^ ei < i % p ^ ei)
    (hmj:n % p ^ ej < j % p ^ ej):Common n i j:= by
  exact ⟨p,hp,hpi,Nat.dvd_gcd
    (B699.d81 hp hin hei hmi)
    (B699.d81 hp hjn hej hmj)⟩
theorem d32 {n i j p:ℕ}
    (_hi:1 ≤ i) (hij:i < j) (hjn:j ≤ n / 2)
    (hp:p.Prime) (hlo:n - i < p) (hpn:p ≤ n):Common n i j:= by
  have hi:i ≤ n:= by omega
  have hj:j ≤ n:= by omega
  have hip:i < p:= by omega
  have hjp:j < p:= by omega
  have hn2:n < 2 * p:= by omega
  have hnmod:n % p = n - p:= by
    rw [Nat.mod_eq_sub_mod hpn,Nat.mod_eq_of_lt (by omega)]
  apply d29 hp hip.le hi hj (ei:= 1) (ej:= 1) (by decide) (by decide)
  · simpa [hnmod,Nat.mod_eq_of_lt hip] using (show n - p < i by omega)
  · simpa [hnmod,Nat.mod_eq_of_lt hjp] using (show n - p < j by omega)
end N4
namespace N3
def d80 (threshold a:ℕ):ℕ:=
  (a.primeFactors.filter (fun p ↦ threshold ≤ p)).prod (fun p ↦ p ^ a.factorization p)
end N3
namespace N4
theorem d86 {n i p e:ℕ}
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
theorem d42 {N k t Q:ℕ}
    (hk:k ≤ N) (hlo:N - k < t) (hhi:t ≤ N) (hQt:Q ∣ t):
    Q ∣ N.descFactorial k:= by
  rw [Nat.descFactorial_eq_prod_range]
  have hmem:N - t ∈ Finset.range k:= Finset.mem_range.mpr (by omega)
  have hd:= Finset.dvd_prod_of_mem (fun r:ℕ ↦ N - r) hmem
  have heq:N - (N - t) = t:= by omega
  rw [heq] at hd
  exact hQt.trans hd
theorem d84 (s:Finset ℕ) (f:ℕ → ℕ) (B:ℕ):
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
def d16 (n i j:ℕ):ℕ:=
  ((n.choose i).primeFactors.filter (fun p ↦ i ≤ p ∧ ¬ p ∣ n.choose j)).prod
    (fun p ↦ p ^ (n.choose i).factorization p)
theorem d17 {n i j:ℕ}
    (hno:¬ Common n i j):
    d16 n i j = N3.d80 i (n.choose i):= by
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
  unfold d16 N3.d80
  rw [hsets]
end N4
namespace N4
def d91 (i:ℕ):ℕ:= ((Finset.range i).filter Nat.Prime).card
def d92 (n i:ℕ):ℕ:=
  ((n.choose i).primeFactors.filter (fun p ↦ p < i)).prod
    (fun p ↦ p ^ (n.choose i).factorization p)
theorem d94 {n i:ℕ} (hin:i ≤ n):
    d92 n i * N3.d80 i (n.choose i) = n.choose i:= by
  classical
  unfold d92 N3.d80
  calc
    _ = (n.choose i).primeFactors.prod (fun p ↦ p ^ (n.choose i).factorization p):= by
      simpa only [Nat.not_lt] using Finset.prod_filter_mul_prod_filter_not
        (n.choose i).primeFactors (fun p ↦ p < i)
        (fun p ↦ p ^ (n.choose i).factorization p)
    _ = n.choose i:=
      (Nat.prod_primeFactors_pow_factorization (Nat.ne_of_gt (Nat.choose_pos hin))).symm
theorem d93 {n i:ℕ} (hn:0 < n):
    d92 n i ≤ n ^ d91 i:= by
  classical
  let S:= (n.choose i).primeFactors.filter (fun p ↦ p < i)
  have hsub:S ⊆ (Finset.range i).filter Nat.Prime:= by
    intro p hp
    obtain ⟨hmem,hpi⟩:= Finset.mem_filter.mp hp
    exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr hpi,
      Nat.prime_of_mem_primeFactors hmem⟩
  have hprod:S.prod (fun p ↦ p ^ (n.choose i).factorization p) ≤ n ^ S.card:=
    Finset.prod_le_pow_card S _ n (fun _ _ ↦ Nat.pow_factorization_choose_le hn)
  exact hprod.trans (pow_le_pow_right' (by omega:1 ≤ n) (Finset.card_le_card hsub))
end N4
namespace N5
open N4
def d22 (N s:ℕ):ℕ:=
  ∏ h ∈ Finset.Icc 1 s,N.choose h
def d65 (n i r:ℕ):ℕ:=
  ∏ h ∈ Finset.Icc 1 (i - r - 1),(n - i + h).choose h
def d99 (n i j r s:ℕ):ℕ:=
  d22 j s * d22 (n - j) s * d65 n i r
theorem d97 {j k Q:ℕ} (hQ:0 < Q)
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
theorem d87 {n i j p e:ℕ}
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
  have ha:a < i:= d86 hp hpi (by omega) he heval
  have hb:b ≤ a:= by
    by_contra h
    apply havoid
    apply B699.d81 hp (by omega)
      (by omega:1 ≤ e + if p = i then 1 else 0)
    change a < b
    omega
  have hsum:b + c = a:= by
    have hn:j + (n - j) = n:= by omega
    simpa only [hn] using d97 (j:= j) (k:= n - j) hQ
      (by simpa only [hn] using hb)
  have hpow:p ^ e ∣ Q:= Nat.pow_dvd_pow p (by omega)
  have hd:∀ N:ℕ,Q ∣ N - N % Q:= by
    intro N
    refine ⟨N / Q,?_⟩
    have hm:= Nat.mod_add_div N Q
    omega
  exact ⟨a,b,c,ha,hsum,hpow.trans (hd n),hpow.trans (hd j),
    hpow.trans (hd (n - j))⟩
theorem d83 {N h b p e:ℕ}
    (hp:p.Prime) (hhp:h < p) (hhN:h ≤ N)
    (hbh:b < h) (hdiv:p ^ e ∣ N - b):
    p ^ e ∣ N.choose h:= by
  have hd:p ^ e ∣ N.descFactorial h:=
    d42 hhN (by omega) (Nat.sub_le N b) hdiv
  rw [Nat.descFactorial_eq_factorial_mul_choose] at hd
  exact ((hp.coprime_factorial_of_lt hhp).pow_left e).dvd_of_dvd_mul_left hd
theorem d82 {N i s b p e:ℕ}
    (hp:p.Prime) (hpi:i ≤ p) (hsi:s < i) (hiN:i ≤ N)
    (hdiv:p ^ e ∣ N - b):
    p ^ (e * (s - b)) ∣ d22 N s:= by
  have hlocal:∀ h ∈ Finset.Icc (b + 1) s,p ^ e ∣ N.choose h:= by
    intro h hh
    obtain ⟨hlo,hhi⟩:= Finset.mem_Icc.mp hh
    exact d83 hp (by omega) (by omega) (by omega) hdiv
  have hd:= Finset.prod_dvd_prod_of_dvd (s:= Finset.Icc (b + 1) s)
    (fun _ ↦ p ^ e) (fun h ↦ N.choose h) hlocal
  have hsub:Finset.Icc (b + 1) s ⊆ Finset.Icc 1 s:= by
    intro h hh
    simp only [Finset.mem_Icc] at hh ⊢
    omega
  have hd2:= hd.trans (Finset.prod_dvd_prod_of_subset _ _ _ hsub)
  simpa only [Finset.prod_const,Nat.card_Icc,Nat.add_sub_add_right,← pow_mul,
    d22] using hd2
theorem d85 {n i r a p e:ℕ}
    (hp:p.Prime) (hpi:i ≤ p) (hin:i ≤ n) (ha:a < i)
    (hdiv:p ^ e ∣ n - a):
    p ^ (e * (a - r)) ∣ d65 n i r:= by
  have hlocal:∀ h ∈ Finset.Icc (i - a) (i - r - 1),
      p ^ e ∣ (n - i + h).choose h:= by
    intro h hh
    obtain ⟨hlo,hhi⟩:= Finset.mem_Icc.mp hh
    have hhN:h ≤ n - i + h:= by omega
    have hd:p ^ e ∣ (n - i + h).descFactorial h:=
      d42 hhN (by omega) (by omega) hdiv
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
  simpa only [Finset.prod_const,hcard,← pow_mul,d65] using hd2
theorem d101 (a b c r s:ℕ) (hsplit:b + c = a):
    2 * s - r ≤ (s - b) + (s - c) + (a - r):= by
  omega
theorem d88 {n i j r s p e:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2)
    (hsi:s < i) (hp:p.Prime) (hpi:i ≤ p) (he:0 < e)
    (heval:e ≤ (n.choose i).factorization p)
    (havoid:¬ p ∣ n.choose j):
    p ^ (e * (2 * s - r)) ∣ d99 n i j r s:= by
  obtain ⟨a,b,c,ha,hsum,hn,hj,hk⟩:=
    d87 hi hij hjn hp hpi he heval havoid
  have hleft:= d82 hp hpi hsi (by omega:i ≤ j) hj
  have hright:= d82 hp hpi hsi (by omega:i ≤ n - j) hk
  have hmother:= d85 (r:= r) hp hpi (by omega:i ≤ n) ha hn
  have hmul:= Nat.mul_dvd_mul (Nat.mul_dvd_mul hleft hright) hmother
  have hcover:= d101 a b c r s hsum
  have hexp:e * (2 * s - r) ≤ e * (s - b) + e * (s - c) + e * (a - r):= by
    simpa only [Nat.mul_add] using Nat.mul_le_mul_left e hcover
  have hpow:= Nat.pow_dvd_pow p hexp
  apply hpow.trans
  simpa only [pow_add,d99] using hmul
theorem d14 {n i j r s:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i):
    d16 n i j ^ (2 * s - r) ∣ d99 n i j r s:= by
  classical
  unfold d16
  rw [← Finset.prod_pow]
  simp_rw [← pow_mul]
  apply d84
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
    exact d88 hi hij hjn hsi hprime hpi he le_rfl havoid
theorem d15 {n i j r s:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
    (hno:¬ Common n i j):
    N3.d80 i (n.choose i) ^ (2 * s - r) ∣
      d99 n i j r s:= by
  rw [← d17 hno]
  exact d14 hi hij hjn hsi
theorem d23 {N i s:ℕ} (hsi:s < i) (hiN:i ≤ N):
    0 < d22 N s:= by
  unfold d22
  apply Finset.prod_pos
  intro h hh
  have:= (Finset.mem_Icc.mp hh).2
  exact Nat.choose_pos (by omega)
theorem d66 {n i r:ℕ} (hin:i ≤ n):
    0 < d65 n i r:= by
  unfold d65
  apply Finset.prod_pos
  intro h _
  exact Nat.choose_pos (by omega)
end N5
namespace N5
open N4
def d107 (s:ℕ):ℕ:= ∑ h ∈ Finset.Icc 1 s,h
def d106 (s:ℕ):ℕ:= ∏ h ∈ Finset.Icc 1 s,h.factorial
def d105 (i r s:ℕ):ℕ:=
  2 * d107 s + d107 (i - r - 1)
def d104 (i r s:ℕ):ℕ:=
  2 ^ (2 * d107 s) * (d106 s) ^ 2 *
    d106 (i - r - 1)
theorem d24 (N s:ℕ):
    d106 s * d22 N s ≤ N ^ d107 s:= by
  unfold d106 d22
  calc
    _ = ∏ h ∈ Finset.Icc 1 s,h.factorial * N.choose h:=
      (Finset.prod_mul_distrib).symm
    _ ≤ ∏ h ∈ Finset.Icc 1 s,N ^ h:= by
      apply Finset.prod_le_prod (fun _ _ ↦ Nat.zero_le _)
      intro h _
      rw [← Nat.descFactorial_eq_factorial_mul_choose]
      exact Nat.descFactorial_le_pow N h
    _ = _:= by rw [Finset.prod_pow_eq_pow_sum]; rfl
theorem d67 {n i r:ℕ} (hin:i ≤ n):
    d106 (i - r - 1) * d65 n i r ≤
      n ^ d107 (i - r - 1):= by
  unfold d106 d65
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
theorem d53 (j k:ℕ):
    4 * (j * k) ≤ (j + k) ^ 2:= by
  rcases le_total j k with h | h
  · have he:k = j + (k - j):= by omega
    rw [he]
    nlinarith
  · have he:j = k + (j - k):= by omega
    rw [he]
    nlinarith
theorem d100 {n i j r s:ℕ}
    (hin:i ≤ n) (hjn:j ≤ n):
    d104 i r s * d99 n i j r s ≤
      n ^ d105 i r s:= by
  let T:= d107 s
  let L:= i - r - 1
  let B:= d106 s
  have hx:= d24 j s
  have hy:= d24 (n - j) s
  have hc:B ^ 2 * (d22 j s * d22 (n - j) s) ≤
      (j * (n - j)) ^ T:= by
    calc
      _ = (B * d22 j s) * (B * d22 (n - j) s):= by ring
      _ ≤ j ^ T * (n - j) ^ T:= Nat.mul_le_mul hx hy
      _ = _:= (mul_pow _ _ _).symm
  have hjk:4 * (j * (n - j)) ≤ n ^ 2:= by
    have hn:j + (n - j) = n:= by omega
    simpa only [hn] using d53 j (n - j)
  have hchildren:
      2 ^ (2 * T) * (B ^ 2 * (d22 j s * d22 (n - j) s)) ≤
        n ^ (2 * T):= by
    calc
      _ ≤ 2 ^ (2 * T) * (j * (n - j)) ^ T:= Nat.mul_le_mul_left _ hc
      _ = (4 * (j * (n - j))) ^ T:= by
        rw [show (4:ℕ) = 2 ^ 2 by decide]
        simp only [mul_pow,pow_mul]
      _ ≤ (n ^ 2) ^ T:= Nat.pow_le_pow_left hjk T
      _ = _:= by rw [← pow_mul]
  have hm:= d67 (r:= r) hin
  calc
    d104 i r s * d99 n i j r s =
        (2 ^ (2 * T) * (B ^ 2 * (d22 j s * d22 (n - j) s))) *
          (d106 L * d65 n i r):= by
      unfold d104 d99
      dsimp only [T,B,L]
      ring
    _ ≤ n ^ (2 * T) * n ^ d107 L:= Nat.mul_le_mul hchildren hm
    _ = n ^ d105 i r s:= by
      rw [← pow_add]
      rfl
theorem d71 {n i j r s:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
    (hno:¬ Common n i j):
    d104 i r s * N3.d80 i (n.choose i) ^ (2 * s - r) ≤
      n ^ d105 i r s:= by
  have hZ:0 < d99 n i j r s:= by
    unfold d99
    exact Nat.mul_pos (Nat.mul_pos
      (d23 hsi (by omega:i ≤ j))
      (d23 hsi (by omega:i ≤ n - j)))
      (d66 (by omega:i ≤ n))
  have hv:= Nat.le_of_dvd hZ
    (d15 hi hij hjn hsi hno)
  exact (Nat.mul_le_mul_left (d104 i r s) hv).trans
    (d100 (by omega) (by omega))
theorem d31 {n i j r s:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
    (hcompare:n ^ d105 i r s <
      d104 i r s * N3.d80 i (n.choose i) ^ (2 * s - r)):
    ∃ p:ℕ,p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j):= by
  by_contra hno
  exact (Nat.not_le_of_gt hcompare) (d71 hi hij hjn hsi hno)
end N5
namespace N6
lemma d98 {N r:ℕ} (hr:r ≤ N + 1):
    (N + 1) ^ r * (N + 1 - r) ≤ N ^ r * (N + 1):= by
  induction r with
  | zero => simp
  | succ r ih =>
      have hr':r ≤ N + 1:= by omega
      have ih':= ih hr'
      have hsub:N + 1 - (r + 1) = N - r:= by omega
      have hsub2:N + 1 - r = N - r + 1:= by omega
      have hmul_step:(N + 1) * (N - r) ≤ N * (N + 1 - r):= by
        rw [hsub2,Nat.mul_add,Nat.mul_one,Nat.succ_mul]
        exact Nat.add_le_add_left (Nat.sub_le N r) (N * (N - r))
      calc
        (N + 1) ^ (r + 1) * (N + 1 - (r + 1))
            = (N + 1) ^ r * ((N + 1) * (N - r)):= by
              rw [pow_succ,hsub]
              ring
        _ ≤ (N + 1) ^ r * (N * (N + 1 - r)):=
              Nat.mul_le_mul_left _ hmul_step
        _ = ((N + 1) ^ r * (N + 1 - r)) * N:= by ring
        _ ≤ (N ^ r * (N + 1)) * N:= Nat.mul_le_mul_right _ ih'
        _ = N ^ (r + 1) * (N + 1):= by
              rw [pow_succ]
              ring
theorem d25 {n i j:ℕ} (hij:i ≤ j) (hjn:j ≤ n):
    n ^ i * j.choose i ≤ j ^ i * n.choose i:= by
  refine Nat.le_induction (m:= j)
    (P:= fun N _ ↦ N ^ i * j.choose i ≤ j ^ i * N.choose i) ?_ ?_ n hjn
  · exact le_rfl
  · intro N hjN ih
    have hsub_pos:0 < N + 1 - i:= by omega
    refine Nat.le_of_mul_le_mul_right ?_ hsub_pos
    calc
      (N + 1) ^ i * j.choose i * (N + 1 - i) =
          ((N + 1) ^ i * (N + 1 - i)) * j.choose i:= by ring
      _ ≤ (N ^ i * (N + 1)) * j.choose i:=
        Nat.mul_le_mul_right _ (d98 (by omega))
      _ = (N ^ i * j.choose i) * (N + 1):= by ring
      _ ≤ (j ^ i * N.choose i) * (N + 1):= Nat.mul_le_mul_right _ ih
      _ = j ^ i * (N.choose i * (N + 1)):= by ring
      _ = j ^ i * ((N + 1).choose i * (N + 1 - i)):= by
        rw [Nat.choose_mul_succ_eq]
      _ = (j ^ i * (N + 1).choose i) * (N + 1 - i):= by ring
end N6
namespace N5
open N4
def d60 (i r s:ℕ):ℕ:=
  d91 i * (2 * s - r) + d105 i r s
theorem d70 {n i j r s:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
    (hno:¬ Common n i j):
    d104 i r s * (n.choose i) ^ (2 * s - r) ≤
      n ^ d60 i r s:= by
  have hn:0 < n:= by omega
  have hu:= d93 (i:= i) hn
  have hv:= d71 (r:= r) hi hij hjn hsi hno
  calc
    _ = d104 i r s *
        (d92 n i * N3.d80 i (n.choose i)) ^
          (2 * s - r):= by
      rw [d94 (by omega:i ≤ n)]
    _ = (d92 n i) ^ (2 * s - r) *
        (d104 i r s *
          N3.d80 i (n.choose i) ^ (2 * s - r)):= by
      rw [mul_pow]
      ring
    _ ≤ (n ^ d91 i) ^ (2 * s - r) * n ^ d105 i r s:=
      Nat.mul_le_mul (Nat.pow_le_pow_left hu _) hv
    _ = _:= by rw [← pow_mul,← pow_add]; rfl
theorem d77 {N n a b:ℕ} (hNn:N ≤ n) (hab:a ≤ b):
    N ^ b * n ^ a ≤ n ^ b * N ^ a:= by
  have hN:N ^ b = N ^ a * N ^ (b - a):= by
    rw [← pow_add,Nat.add_sub_of_le hab]
  have hn:n ^ b = n ^ a * n ^ (b - a):= by
    rw [← pow_add,Nat.add_sub_of_le hab]
  calc
    _ = N ^ (b - a) * (N ^ a * n ^ a):= by rw [hN]; ring
    _ ≤ n ^ (b - a) * (N ^ a * n ^ a):=
      Nat.mul_le_mul_right _ (Nat.pow_le_pow_left hNn _)
    _ = _:= by rw [hn]; ring
theorem d27 {N n i j r s:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
    (hiN:i ≤ N) (hNn:N ≤ n)
    (hdegree:d60 i r s ≤ i * (2 * s - r))
    (hcertificate:i.factorial ^ (2 * s - r) * N ^ d60 i r s <
      d104 i r s * (N.descFactorial i) ^ (2 * s - r)):
    ∃ p:ℕ,p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j):= by
  have hpoint:N ^ d60 i r s <
      d104 i r s * (N.choose i) ^ (2 * s - r):= by
    by_contra h
    have hle:d104 i r s * (N.choose i) ^ (2 * s - r) ≤
        N ^ d60 i r s:= by omega
    have hm:= Nat.mul_le_mul_left (i.factorial ^ (2 * s - r)) hle
    apply (Nat.not_le_of_gt hcertificate)
    simpa only [Nat.descFactorial_eq_factorial_mul_choose,mul_pow,
      Nat.mul_assoc,Nat.mul_left_comm,Nat.mul_comm] using hm
  by_contra hno
  have hn:0 < n:= by omega
  have hsize:= d70 (r:= r) hi hij hjn hsi hno
  have hr:= Nat.pow_le_pow_left
    (N6.d25 (n:= n) hiN hNn) (2 * s - r)
  have hratio:n ^ (i * (2 * s - r)) * (N.choose i) ^ (2 * s - r) ≤
      N ^ (i * (2 * s - r)) * (n.choose i) ^ (2 * s - r):= by
    simpa only [mul_pow,← pow_mul] using hr
  have hbound:
      n ^ (i * (2 * s - r)) *
          (d104 i r s * (N.choose i) ^ (2 * s - r)) ≤
        n ^ (i * (2 * s - r)) * N ^ d60 i r s:= by
    calc
      _ = d104 i r s *
          (n ^ (i * (2 * s - r)) * (N.choose i) ^ (2 * s - r)):= by ring
      _ ≤ d104 i r s *
          (N ^ (i * (2 * s - r)) * (n.choose i) ^ (2 * s - r)):=
        Nat.mul_le_mul_left _ hratio
      _ = N ^ (i * (2 * s - r)) *
          (d104 i r s * (n.choose i) ^ (2 * s - r)):= by ring
      _ ≤ N ^ (i * (2 * s - r)) * n ^ d60 i r s:=
        Nat.mul_le_mul_left _ hsize
      _ ≤ _:= d77 hNn hdegree
  have hstrict:= Nat.mul_lt_mul_of_pos_left hpoint
    (Nat.pow_pos hn:0 < n ^ (i * (2 * s - r)))
  exact (Nat.not_le_of_gt hstrict) hbound
end N5
namespace N5
structure d6 where
  i:ℕ
  r:ℕ
  s:ℕ
  n0Power10:ℕ
deriving Repr,DecidableEq
def d6.n0 (datum:d6):ℕ:=
  10 ^ datum.n0Power10
def d57:List d6:= [
  { i:= 29,r:= 9,s:= 19,n0Power10:= 37 },
  { i:= 35,r:= 11,s:= 23,n0Power10:= 49 },
  { i:= 36,r:= 11,s:= 24,n0Power10:= 26 },
  { i:= 37,r:= 12,s:= 25,n0Power10:= 18 },
  { i:= 38,r:= 12,s:= 25,n0Power10:= 54 },
  { i:= 39,r:= 12,s:= 26,n0Power10:= 29 },
  { i:= 40,r:= 13,s:= 27,n0Power10:= 20 },
  { i:= 41,r:= 13,s:= 28,n0Power10:= 16 },
  { i:= 42,r:= 13,s:= 28,n0Power10:= 31 },
  { i:= 43,r:= 14,s:= 29,n0Power10:= 22 },
  { i:= 44,r:= 14,s:= 29,n0Power10:= 66 },
  { i:= 45,r:= 14,s:= 30,n0Power10:= 34 },
  { i:= 46,r:= 15,s:= 31,n0Power10:= 24 },
  { i:= 47,r:= 15,s:= 32,n0Power10:= 19 },
  { i:= 48,r:= 15,s:= 32,n0Power10:= 37 },
  { i:= 49,r:= 16,s:= 33,n0Power10:= 26 },
  { i:= 50,r:= 16,s:= 34,n0Power10:= 20 },
  { i:= 51,r:= 16,s:= 35,n0Power10:= 17 },
  { i:= 52,r:= 17,s:= 35,n0Power10:= 14 },
  { i:= 53,r:= 17,s:= 36,n0Power10:= 13 },
  { i:= 54,r:= 17,s:= 37,n0Power10:= 18 },
  { i:= 55,r:= 18,s:= 37,n0Power10:= 15 },
  { i:= 56,r:= 18,s:= 38,n0Power10:= 13 },
  { i:= 57,r:= 18,s:= 39,n0Power10:= 12 },
  { i:= 58,r:= 19,s:= 40,n0Power10:= 11 },
  { i:= 59,r:= 19,s:= 41,n0Power10:= 10 },
  { i:= 60,r:= 19,s:= 41,n0Power10:= 13 },
  { i:= 61,r:= 20,s:= 42,n0Power10:= 12 },
  { i:= 62,r:= 20,s:= 42,n0Power10:= 15 },
  { i:= 63,r:= 20,s:= 43,n0Power10:= 14 },
  { i:= 64,r:= 21,s:= 44,n0Power10:= 12 },
  { i:= 65,r:= 21,s:= 45,n0Power10:= 11 },
  { i:= 66,r:= 21,s:= 45,n0Power10:= 11 },
  { i:= 67,r:= 22,s:= 46,n0Power10:= 10 },
  { i:= 68,r:= 22,s:= 47,n0Power10:= 12 },
  { i:= 69,r:= 22,s:= 47,n0Power10:= 11 },
  { i:= 70,r:= 23,s:= 48,n0Power10:= 11 },
  { i:= 71,r:= 23,s:= 49,n0Power10:= 10 },
  { i:= 72,r:= 23,s:= 49,n0Power10:= 12 },
  { i:= 73,r:= 24,s:= 50,n0Power10:= 11 },
  { i:= 74,r:= 24,s:= 51,n0Power10:= 13 },
  { i:= 75,r:= 24,s:= 51,n0Power10:= 13 },
  { i:= 76,r:= 25,s:= 52,n0Power10:= 12 },
  { i:= 77,r:= 25,s:= 53,n0Power10:= 11 },
  { i:= 78,r:= 25,s:= 54,n0Power10:= 10 },
  { i:= 79,r:= 26,s:= 55,n0Power10:= 10 },
  { i:= 80,r:= 26,s:= 55,n0Power10:= 12 },
  { i:= 81,r:= 26,s:= 56,n0Power10:= 11 },
  { i:= 82,r:= 27,s:= 57,n0Power10:= 10 },
  { i:= 83,r:= 27,s:= 57,n0Power10:= 10 },
  { i:= 84,r:= 27,s:= 58,n0Power10:= 11 },
  { i:= 85,r:= 28,s:= 59,n0Power10:= 11 },
  { i:= 86,r:= 28,s:= 59,n0Power10:= 10 },
  { i:= 87,r:= 28,s:= 60,n0Power10:= 10 },
  { i:= 88,r:= 29,s:= 61,n0Power10:= 9 },
  { i:= 89,r:= 29,s:= 62,n0Power10:= 9 },
  { i:= 90,r:= 29,s:= 62,n0Power10:= 10 },
  { i:= 91,r:= 30,s:= 63,n0Power10:= 10 },
  { i:= 92,r:= 30,s:= 64,n0Power10:= 9 },
  { i:= 93,r:= 30,s:= 65,n0Power10:= 9 },
  { i:= 94,r:= 31,s:= 65,n0Power10:= 9 },
  { i:= 95,r:= 31,s:= 66,n0Power10:= 9 },
  { i:= 96,r:= 31,s:= 67,n0Power10:= 8 },
  { i:= 97,r:= 32,s:= 68,n0Power10:= 8 },
  { i:= 98,r:= 32,s:= 68,n0Power10:= 9 },
  { i:= 99,r:= 32,s:= 69,n0Power10:= 9 },
  { i:= 100,r:= 33,s:= 70,n0Power10:= 8 },
  { i:= 101,r:= 33,s:= 71,n0Power10:= 8 },
  { i:= 102,r:= 33,s:= 71,n0Power10:= 9 },
  { i:= 103,r:= 34,s:= 72,n0Power10:= 9 },
  { i:= 104,r:= 34,s:= 72,n0Power10:= 10 },
  { i:= 105,r:= 34,s:= 73,n0Power10:= 9 },
  { i:= 106,r:= 35,s:= 74,n0Power10:= 9 },
  { i:= 107,r:= 35,s:= 75,n0Power10:= 9 },
  { i:= 108,r:= 35,s:= 75,n0Power10:= 10 },
  { i:= 109,r:= 36,s:= 76,n0Power10:= 9 },
  { i:= 110,r:= 36,s:= 76,n0Power10:= 10 },
  { i:= 111,r:= 36,s:= 77,n0Power10:= 10 },
  { i:= 112,r:= 37,s:= 78,n0Power10:= 10 },
  { i:= 113,r:= 37,s:= 79,n0Power10:= 9 },
  { i:= 114,r:= 37,s:= 79,n0Power10:= 10 },
  { i:= 115,r:= 38,s:= 80,n0Power10:= 10 },
  { i:= 116,r:= 38,s:= 81,n0Power10:= 10 },
  { i:= 117,r:= 38,s:= 81,n0Power10:= 9 },
  { i:= 118,r:= 39,s:= 82,n0Power10:= 9 },
  { i:= 119,r:= 39,s:= 83,n0Power10:= 9 },
  { i:= 120,r:= 39,s:= 84,n0Power10:= 9 },
  { i:= 121,r:= 40,s:= 85,n0Power10:= 8 },
  { i:= 122,r:= 40,s:= 86,n0Power10:= 8 },
  { i:= 123,r:= 40,s:= 86,n0Power10:= 8 },
  { i:= 124,r:= 41,s:= 87,n0Power10:= 8 },
  { i:= 125,r:= 41,s:= 88,n0Power10:= 8 },
  { i:= 126,r:= 41,s:= 89,n0Power10:= 8 },
  { i:= 127,r:= 42,s:= 90,n0Power10:= 8 },
  { i:= 128,r:= 42,s:= 90,n0Power10:= 8 },
  { i:= 129,r:= 42,s:= 91,n0Power10:= 8 },
  { i:= 130,r:= 43,s:= 92,n0Power10:= 8 },
  { i:= 131,r:= 43,s:= 92,n0Power10:= 8 },
  { i:= 132,r:= 43,s:= 93,n0Power10:= 8 },
  { i:= 133,r:= 44,s:= 94,n0Power10:= 8 },
  { i:= 134,r:= 44,s:= 94,n0Power10:= 8 },
  { i:= 135,r:= 44,s:= 95,n0Power10:= 8 },
  { i:= 136,r:= 45,s:= 96,n0Power10:= 8 },
  { i:= 137,r:= 45,s:= 97,n0Power10:= 7 },
  { i:= 138,r:= 45,s:= 97,n0Power10:= 8 },
  { i:= 139,r:= 46,s:= 98,n0Power10:= 8 },
  { i:= 140,r:= 46,s:= 98,n0Power10:= 8 },
  { i:= 141,r:= 46,s:= 99,n0Power10:= 8 },
  { i:= 142,r:= 47,s:= 100,n0Power10:= 8 },
  { i:= 143,r:= 47,s:= 101,n0Power10:= 8 },
  { i:= 144,r:= 47,s:= 102,n0Power10:= 8 },
  { i:= 145,r:= 48,s:= 102,n0Power10:= 8 },
  { i:= 146,r:= 48,s:= 103,n0Power10:= 7 },
  { i:= 147,r:= 48,s:= 104,n0Power10:= 7 },
  { i:= 148,r:= 49,s:= 105,n0Power10:= 7 },
  { i:= 149,r:= 49,s:= 106,n0Power10:= 7 },
  { i:= 150,r:= 49,s:= 106,n0Power10:= 8 },
  { i:= 151,r:= 50,s:= 107,n0Power10:= 7 },
  { i:= 152,r:= 50,s:= 107,n0Power10:= 8 },
  { i:= 153,r:= 50,s:= 108,n0Power10:= 8 },
  { i:= 154,r:= 51,s:= 109,n0Power10:= 8 },
  { i:= 155,r:= 51,s:= 110,n0Power10:= 8 },
  { i:= 156,r:= 51,s:= 111,n0Power10:= 7 },
  { i:= 157,r:= 52,s:= 111,n0Power10:= 7 },
  { i:= 158,r:= 52,s:= 112,n0Power10:= 8 },
  { i:= 159,r:= 52,s:= 112,n0Power10:= 8 },
  { i:= 160,r:= 53,s:= 113,n0Power10:= 8 },
  { i:= 161,r:= 53,s:= 114,n0Power10:= 7 },
  { i:= 162,r:= 53,s:= 115,n0Power10:= 7 },
  { i:= 163,r:= 54,s:= 116,n0Power10:= 7 },
  { i:= 164,r:= 54,s:= 116,n0Power10:= 8 },
  { i:= 165,r:= 54,s:= 117,n0Power10:= 7 },
  { i:= 166,r:= 55,s:= 118,n0Power10:= 7 },
  { i:= 167,r:= 55,s:= 119,n0Power10:= 7 },
  { i:= 168,r:= 55,s:= 119,n0Power10:= 8 },
  { i:= 169,r:= 56,s:= 120,n0Power10:= 8 },
  { i:= 170,r:= 56,s:= 121,n0Power10:= 7 },
  { i:= 171,r:= 56,s:= 121,n0Power10:= 7 },
  { i:= 172,r:= 57,s:= 122,n0Power10:= 7 },
  { i:= 173,r:= 57,s:= 123,n0Power10:= 7 },
  { i:= 174,r:= 57,s:= 123,n0Power10:= 8 },
  { i:= 175,r:= 58,s:= 124,n0Power10:= 7 },
  { i:= 176,r:= 58,s:= 125,n0Power10:= 7 },
  { i:= 177,r:= 58,s:= 126,n0Power10:= 7 },
  { i:= 178,r:= 59,s:= 127,n0Power10:= 7 },
  { i:= 179,r:= 59,s:= 128,n0Power10:= 7 },
  { i:= 180,r:= 59,s:= 128,n0Power10:= 7 },
  { i:= 181,r:= 60,s:= 129,n0Power10:= 7 },
  { i:= 182,r:= 60,s:= 129,n0Power10:= 8 },
  { i:= 183,r:= 60,s:= 130,n0Power10:= 8 },
  { i:= 184,r:= 61,s:= 130,n0Power10:= 7 }
]
end N5
namespace N5
open N4
def d8 (row:d6):Prop:=
  2 ≤ row.i ∧
  row.r < row.i ∧
  0 < row.s ∧
  row.s < row.i ∧
  0 < 2 * row.s - row.r ∧
  row.i ≤ row.n0 ∧
  d60 row.i row.r row.s ≤ row.i * (2 * row.s - row.r) ∧
  row.i.factorial ^ (2 * row.s - row.r) *
      row.n0 ^ d60 row.i row.r row.s <
    d104 row.i row.r row.s *
      row.n0.descFactorial row.i ^ (2 * row.s - row.r)
instance (row:d6):Decidable (d8 row):= by
  unfold d8
  infer_instance
def d61 (row:d6):Bool:=
  decide (d8 row)
theorem d58:
    List.all d57 d61 = true:= by
  decide +kernel
theorem d59 {row:d6}
    (hrow:row ∈ d57):d8 row:= by
  have hall:= List.all_eq_true.mp d58
  have hcheck:= hall row hrow
  exact of_decide_eq_true (by simpa [d61] using hcheck)
theorem d30
    {row:d6} (hrow:row ∈ d57)
    {n j:ℕ} (hij:row.i < j) (hjn:j ≤ n / 2)
    (hNn:row.n0 ≤ n):
    ∃ p:ℕ,p.Prime ∧ row.i ≤ p ∧
      p ∣ Nat.gcd (n.choose row.i) (n.choose j):= by
  have hvalid:= d59 hrow
  rcases hvalid with ⟨hi,_,_,hsi,_,hiN,hdegree,hcertificate⟩
  exact d27
    (N:= row.n0) (n:= n) (i:= row.i) (j:= j)
    (r:= row.r) (s:= row.s) hi hij hjn hsi hiN hNn hdegree hcertificate
end N5
namespace N5
open N4
theorem d68 {S:Finset ℕ} {g:ℕ → ℕ} {n:ℕ}
    (hn:0 < n) (hS:S.Nonempty) (hg:∀ p ∈ S,g p < n):
    S.prod g < n ^ S.card:= by
  have hle:S.prod g ≤ (n - 1) ^ S.card:=
    Finset.prod_le_pow_card S g (n - 1) (by
      intro p hp
      have:= hg p hp
      omega)
  have hcard:S.card ≠ 0:= Nat.ne_of_gt (Finset.card_pos.mpr hS)
  exact hle.trans_lt (Nat.pow_lt_pow_left (by omega:n - 1 < n) hcard)
theorem d89 {S:Finset ℕ} {f:ℕ → ℕ}
    {n M p:ℕ} (hn:0 < n) (ht:2 ≤ S.card) (hp:p ∈ S)
    (hfp:f p ≤ n) (hsmall:∀ q ∈ S.erase p,M * f q < n):
    M ^ (S.card - 1) * S.prod f < n ^ S.card:= by
  have hcard:(S.erase p).card = S.card - 1:= Finset.card_erase_of_mem hp
  have hnonempty:(S.erase p).Nonempty:=
    Finset.card_pos.mp (by omega)
  have hrest:(S.erase p).prod (fun q ↦ M * f q) < n ^ (S.card - 1):= by
    simpa only [hcard] using d68 hn hnonempty hsmall
  have hsplit:M ^ (S.card - 1) * S.prod f =
      f p * (S.erase p).prod (fun q ↦ M * f q):= by
    rw [← Finset.mul_prod_erase S f hp]
    simp only [Finset.prod_mul_distrib,Finset.prod_const,hcard]
    ring
  calc
    M ^ (S.card - 1) * S.prod f =
        f p * (S.erase p).prod (fun q ↦ M * f q):= hsplit
    _ ≤ n * (S.erase p).prod (fun q ↦ M * f q):=
      Nat.mul_le_mul_right _ hfp
    _ < n * n ^ (S.card - 1):= Nat.mul_lt_mul_of_pos_left hrest hn
    _ = n ^ S.card:= by
      rw [← pow_succ',Nat.sub_add_cancel (by omega:1 ≤ S.card)]
theorem d45 {S:Finset ℕ} {f:ℕ → ℕ}
    {n M:ℕ} (hn:0 < n) (_hM:0 < M) (ht:2 ≤ S.card)
    (hf:∀ p ∈ S,f p ≤ n)
    (hprod:n ^ S.card ≤ M ^ (S.card - 1) * S.prod f):
    ∃ p ∈ S,∃ q ∈ S,p ≠ q ∧ n ≤ M * f p ∧ n ≤ M * f q:= by
  classical
  by_contra htwo
  have hS:S.Nonempty:= Finset.card_pos.mp (by omega)
  have hdistinguished:∃ p ∈ S,∀ q ∈ S.erase p,M * f q < n:= by
    by_cases hlarge:∃ p ∈ S,n ≤ M * f p
    · obtain ⟨p,hp,hpbig⟩:= hlarge
      refine ⟨p,hp,?_⟩
      intro q hq
      by_contra hqsmall
      have hqS:q ∈ S:= Finset.mem_of_mem_erase hq
      have hpq:p ≠ q:= Ne.symm (Finset.mem_erase.mp hq).1
      exact htwo ⟨p,hp,q,hqS,hpq,hpbig,by omega⟩
    · obtain ⟨p,hp⟩:= hS
      refine ⟨p,hp,?_⟩
      intro q hq
      by_contra hqsmall
      exact hlarge ⟨q,Finset.mem_of_mem_erase hq,by omega⟩
  obtain ⟨p,hp,hsmall⟩:= hdistinguished
  exact (Nat.not_le_of_gt
    (d89 hn ht hp (hf p hp) hsmall)) hprod
theorem d96 (n i:ℕ):
    d92 n i = ((Finset.range i).filter Nat.Prime).prod
      (fun p ↦ p ^ (n.choose i).factorization p):= by
  classical
  unfold d92
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
theorem d46 {n i M:ℕ}
    (_hi:2 ≤ i) (_hin:i ≤ n) (hcount:2 ≤ d91 i)
    (hn:0 < n) (hM:0 < M)
    (hU:n ^ d91 i ≤
      M ^ (d91 i - 1) * d92 n i):
    ∃ p q:ℕ,p.Prime ∧ p < i ∧ q.Prime ∧ q < i ∧ p ≠ q ∧
      n ≤ M * p ^ (n.choose i).factorization p ∧
      n ≤ M * q ^ (n.choose i).factorization q:= by
  classical
  let S:= (Finset.range i).filter Nat.Prime
  let f:ℕ → ℕ:= fun p ↦ p ^ (n.choose i).factorization p
  have hcard:S.card = d91 i:= rfl
  have hfull:S.prod f = d92 n i:=
    (d96 n i).symm
  have hprod:n ^ S.card ≤ M ^ (S.card - 1) * S.prod f:= by
    simpa only [hcard,hfull] using hU
  obtain ⟨p,hp,q,hq,hpq,hpbig,hqbig⟩:=
    d45 (S:= S) (f:= f) hn hM
      (by simpa only [hcard] using hcount)
      (fun _ _ ↦ Nat.pow_factorization_choose_le hn) hprod
  obtain ⟨hpRange,hpPrime⟩:= Finset.mem_filter.mp hp
  obtain ⟨hqRange,hqPrime⟩:= Finset.mem_filter.mp hq
  exact ⟨p,q,hpPrime,Finset.mem_range.mp hpRange,hqPrime,
    Finset.mem_range.mp hqRange,hpq,hpbig,hqbig⟩
end N5
namespace N5
open N4
theorem d109 (s:ℕ):0 < d106 s:= by
  unfold d106
  apply Finset.prod_pos
  intro h _
  exact Nat.factorial_pos h
theorem d108 (i r s:ℕ):0 < d104 i r s:= by
  unfold d104
  exact Nat.mul_pos
    (Nat.mul_pos (Nat.pow_pos (by decide:0 < 2))
      (Nat.pow_pos (d109 s)))
    (d109 _)
theorem d40 (n:ℕ):
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
theorem d75 {n i:ℕ} (hn:0 < n) (hin:i ≤ n)
    (hlarge:i * (i - 1) ≤ n):
    n ^ i ≤ 2 * n.descFactorial i:= by
  have he:= d40 n i hin
  have hs:2 * (∑ a ∈ Finset.range i,a) ≤ n:= by
    have hsum:= Finset.sum_range_id_mul_two i
    nlinarith
  have hm:= Nat.mul_le_mul_right (n ^ i) hs
  rw [pow_succ'] at he
  have hmul:n * n ^ i ≤ n * (2 * n.descFactorial i):= by
    nlinarith
  exact Nat.le_of_mul_le_mul_left hmul hn
theorem d69 {n i j r s:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
    (hlarge:i * (i - 1) ≤ n) (hno:¬ Common n i j):
    d104 i r s * n ^ (i * (2 * s - r)) ≤
      (2 * i.factorial) ^ (2 * s - r) *
        (d92 n i) ^ (2 * s - r) * n ^ d105 i r s:= by
  have hn:0 < n:= by omega
  have hin:i ≤ n:= by omega
  have hhalf:= d75 hn hin hlarge
  have hv:= d71 (r:= r) hi hij hjn hsi hno
  have hdesc:n.descFactorial i =
      i.factorial * (d92 n i * N3.d80 i (n.choose i)):= by
    rw [d94 hin,Nat.descFactorial_eq_factorial_mul_choose]
  calc
    _ = d104 i r s * (n ^ i) ^ (2 * s - r):= by rw [← pow_mul]
    _ ≤ d104 i r s * (2 * n.descFactorial i) ^ (2 * s - r):=
      Nat.mul_le_mul_left _ (Nat.pow_le_pow_left hhalf _)
    _ = (2 * i.factorial) ^ (2 * s - r) * (d92 n i) ^ (2 * s - r) *
        (d104 i r s *
          N3.d80 i (n.choose i) ^ (2 * s - r)):= by
      rw [hdesc]
      simp only [mul_pow]
      ring
    _ ≤ _:= Nat.mul_le_mul_left _ hv
theorem d72 {n i j r s H M d:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
    (hlambda:0 < 2 * s - r)
    (hH:i * (i - 1) ≤ H) (hHn:H ≤ n)
    (hexponent:i * (2 * s - r) = d60 i r s + d)
    (hcertificate:(2 * i.factorial) ^ (2 * s - r) ≤
      d104 i r s * M ^ ((2 * s - r) * (d91 i - 1)) * H ^ d)
    (hno:¬ Common n i j):
    n ^ d91 i ≤ M ^ (d91 i - 1) * d92 n i:= by
  have hn:0 < n:= by omega
  have hbase:= d69 (r:= r) hi hij hjn hsi
    (hH.trans hHn) hno
  have hcert:(2 * i.factorial) ^ (2 * s - r) ≤
      d104 i r s * M ^ ((2 * s - r) * (d91 i - 1)) * n ^ d:=
    hcertificate.trans (Nat.mul_le_mul_left _ (Nat.pow_le_pow_left hHn d))
  have hMpow:M ^ ((2 * s - r) * (d91 i - 1)) =
      (M ^ (d91 i - 1)) ^ (2 * s - r):= by
    rw [← pow_mul,Nat.mul_comm]
  have hbound:
      d104 i r s * n ^ (i * (2 * s - r)) ≤
        d104 i r s * n ^ (d105 i r s + d) *
          (M ^ (d91 i - 1) * d92 n i) ^ (2 * s - r):= by
    calc
      _ ≤ (2 * i.factorial) ^ (2 * s - r) *
          (d92 n i) ^ (2 * s - r) * n ^ d105 i r s:= hbase
      _ ≤ (d104 i r s * M ^ ((2 * s - r) * (d91 i - 1)) *
            n ^ d) * (d92 n i) ^ (2 * s - r) * n ^ d105 i r s:=
        Nat.mul_le_mul_right _ (Nat.mul_le_mul_right _ hcert)
      _ = _:= by
        rw [hMpow]
        simp only [mul_pow,pow_add]
        ring
  have hnpow:n ^ (i * (2 * s - r)) =
      n ^ (d105 i r s + d) * (n ^ d91 i) ^ (2 * s - r):= by
    rw [← pow_mul,← pow_add]
    congr 1
    unfold d60 at hexponent
    omega
  have hmul:
      (d104 i r s * n ^ (d105 i r s + d)) *
          (n ^ d91 i) ^ (2 * s - r) ≤
        (d104 i r s * n ^ (d105 i r s + d)) *
          (M ^ (d91 i - 1) * d92 n i) ^ (2 * s - r):= by
    simpa only [hnpow,Nat.mul_assoc] using hbound
  have hpowers:= Nat.le_of_mul_le_mul_left hmul
    (Nat.mul_pos (d108 i r s) (Nat.pow_pos hn))
  by_contra h
  have hlt:M ^ (d91 i - 1) * d92 n i <
      n ^ d91 i:= by omega
  exact (Nat.not_le_of_gt (Nat.pow_lt_pow_left hlt hlambda.ne')) hpowers
end N5
namespace N0
def product (k t:ℕ):ℕ:= ∏ i ∈ Finset.Icc 1 k,(t + i)
end N0
namespace N1
open N0
theorem d41 (k j:ℕ) (hj:j ∈ Finset.Icc 1 k):
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
theorem d95 (k n p:ℕ) (hk:1 ≤ k) (hp:p.Prime):
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
  rw [d41 k j hj] at hprod
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
private theorem d90 {n i:ℕ} (hin:i ≤ n):
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
theorem d18 {n i p:ℕ}
    (hi:1 ≤ i) (hin:i ≤ n) (hp:p.Prime):
    ∃ a < i,(n.choose i).factorization p + i.factorization p ≤
      (n - a).factorization p:= by
  obtain ⟨j,hj,hbound⟩:=
    N1.d95 i (n - i) p hi hp
  have hjBounds:= Finset.mem_Icc.mp hj
  have hchoose:n.choose i ≠ 0:= (Nat.choose_pos hin).ne'
  have hfactorial:i.factorial = i * (i - 1).factorial:= by
    simpa only [show i - 1 + 1 = i by omega] using Nat.factorial_succ (i - 1)
  have hfactorization:i.factorial.factorization p =
      i.factorization p + (i - 1).factorial.factorization p:= by
    rw [hfactorial,Nat.factorization_mul (by omega:i ≠ 0)
      (Nat.factorial_ne_zero (i - 1)),Finsupp.add_apply]
  rw [d90 hin,
    Nat.descFactorial_eq_factorial_mul_choose,
    Nat.factorization_mul (Nat.factorial_ne_zero i) hchoose,
    Finsupp.add_apply,hfactorization] at hbound
  have hposition:n - i + j = n - (i - j):= by omega
  rw [hposition] at hbound
  exact ⟨i - j,by omega,by omega⟩
theorem d20 {n i p:ℕ}
    (hi:1 ≤ i) (hin:i ≤ n) (hp:p.Prime):
    ∃ a < i,p ^ ((n.choose i).factorization p + i.factorization p) ∣ n - a:= by
  obtain ⟨a,ha,hval⟩:= d18 hi hin hp
  exact ⟨a,ha,(hp.pow_dvd_iff_le_factorization (by omega:n - a ≠ 0)).2 hval⟩
end N5
namespace N5
open N4
theorem d43 {n i a p e M:ℕ}
    (_hi:1 ≤ i) (hin:i ≤ n) (ha:a < i) (hp:0 < p)
    (hlarge:n ≤ M * p ^ e)
    (hdiv:p ^ (e + i.factorization p) ∣ n - a):
    ∃ A:ℕ,1 ≤ A ∧ A * p ^ i.factorization p ≤ M ∧
      n = A * p ^ (e + i.factorization p) + a:= by
  obtain ⟨A,hAeq⟩:= hdiv
  have hA:1 ≤ A:= by
    by_contra h
    have hzero:A = 0:= by omega
    rw [hzero,Nat.mul_zero] at hAeq
    omega
  have hrepr:n = A * p ^ (e + i.factorization p) + a:= by
    calc
      n = (n - a) + a:= (Nat.sub_add_cancel (by omega:a ≤ n)).symm
      _ = p ^ (e + i.factorization p) * A + a:= by rw [hAeq]
      _ = A * p ^ (e + i.factorization p) + a:= by ac_rfl
  have hmul:(A * p ^ i.factorization p) * p ^ e ≤ M * p ^ e:= by
    calc
      (A * p ^ i.factorization p) * p ^ e =
          A * p ^ (e + i.factorization p):= by rw [pow_add]; ring
      _ ≤ n:= by omega
      _ ≤ M * p ^ e:= hlarge
  have hbound:A * p ^ i.factorization p ≤ M:=
    Nat.le_of_mul_le_mul_right hmul (pow_pos hp e)
  exact ⟨A,hA,hbound,hrepr⟩
theorem d63 {n a A Q:ℕ}
    (hA:1 ≤ A) (hrepr:n = A * Q + a):Q ≤ n:= by
  have hQ:Q ≤ A * Q:= by
    simpa only [one_mul] using Nat.mul_le_mul_right Q hA
  omega
theorem d19 {n i p M:ℕ}
    (hi:1 ≤ i) (hin:i ≤ n) (hp:p.Prime) (hMn:M < n)
    (hlarge:n ≤ M * p ^ (n.choose i).factorization p):
    0 < (n.choose i).factorization p ∧
      ∃ a < i,∃ A:ℕ,1 ≤ A ∧ A * p ^ i.factorization p ≤ M ∧
        n = A * p ^ ((n.choose i).factorization p + i.factorization p) + a:= by
  have he:0 < (n.choose i).factorization p:= by
    by_contra h
    have hzero:(n.choose i).factorization p = 0:= by omega
    rw [hzero,pow_zero,mul_one] at hlarge
    omega
  obtain ⟨a,ha,hdiv⟩:= d20 hi hin hp
  obtain ⟨A,hA,hbound,hrepr⟩:=
    d43 hi hin ha hp.pos hlarge hdiv
  exact ⟨he,a,ha,A,hA,hbound,hrepr⟩
theorem d47 {n i M:ℕ}
    (hi:2 ≤ i) (hin:i ≤ n) (hcount:2 ≤ d91 i)
    (hn:0 < n) (hM:0 < M) (hMn:M < n)
    (hU:n ^ d91 i ≤
      M ^ (d91 i - 1) * d92 n i):
    ∃ p q:ℕ,p.Prime ∧ p < i ∧ q.Prime ∧ q < i ∧ p ≠ q ∧
      (0 < (n.choose i).factorization p ∧
        ∃ a < i,∃ A:ℕ,1 ≤ A ∧ A * p ^ i.factorization p ≤ M ∧
          n = A * p ^ ((n.choose i).factorization p + i.factorization p) + a) ∧
      (0 < (n.choose i).factorization q ∧
        ∃ b < i,∃ B:ℕ,1 ≤ B ∧ B * q ^ i.factorization q ≤ M ∧
          n = B * q ^ ((n.choose i).factorization q + i.factorization q) + b):= by
  obtain ⟨p,q,hp,hpi,hq,hqi,hpq,hpbig,hqbig⟩:=
    d46 hi hin hcount hn hM hU
  have hi1:1 ≤ i:= by omega
  exact ⟨p,q,hp,hpi,hq,hqi,hpq,
    d19 hi1 hin hp hMn hpbig,
    d19 hi1 hin hq hMn hqbig⟩
end N5
namespace N5
open N4
def d76 (i M lo upper:ℕ):List (ℕ × ℕ × ℕ):=
  (List.range i).flatMap fun p ↦
    if p.Prime then
      (List.range (Nat.log p upper + 1)).flatMap fun h ↦
        if i.factorization p < h then
          let Q:= p ^ h
          let amin:= max 1 ((lo - i) / Q)
          let amax:= min (M / p ^ i.factorization p) ((upper - 1) / Q)
          (List.range' amin (amax + 1 - amin)).map fun A ↦
            (p,max lo (A * Q),min (upper - 1) (A * Q + i - 1))
        else []
    else []
theorem d79 {i M lo upper p h A:ℕ}
    (hp:p.Prime) (hpi:p < i) (hh:h < Nat.log p upper + 1)
    (hindex:i.factorization p < h)
    (hAlo:max 1 ((lo - i) / p ^ h) ≤ A)
    (hAhi:A ≤ min (M / p ^ i.factorization p) ((upper - 1) / p ^ h)):
    (p,max lo (A * p ^ h),min (upper - 1) (A * p ^ h + i - 1)) ∈
      d76 i M lo upper:= by
  unfold d76
  apply List.mem_flatMap.mpr
  refine ⟨p,List.mem_range.mpr hpi,?_⟩
  rw [if_pos hp]
  apply List.mem_flatMap.mpr
  refine ⟨h,List.mem_range.mpr hh,?_⟩
  rw [if_pos hindex]
  dsimp only
  apply List.mem_map.mpr
  refine ⟨A,?_,rfl⟩
  apply List.mem_range'_1.mpr
  exact ⟨hAlo,by omega⟩
theorem d78 {n i M lo upper p e a A:ℕ}
    (hp:p.Prime) (hpi:p < i) (_hilo:i ≤ lo)
    (hlon:lo ≤ n) (hnupper:n < upper) (he:0 < e)
    (ha:a < i) (hA:1 ≤ A)
    (hbound:A * p ^ i.factorization p ≤ M)
    (hrepr:n = A * p ^ (e + i.factorization p) + a):
    ∃ I ∈ d76 i M lo upper,
      I.1 = p ∧ I.2.1 ≤ n ∧ n ≤ I.2.2:= by
  let h:= e + i.factorization p
  let Q:= p ^ h
  have hrepr':n = A * Q + a:= hrepr
  have hQpos:0 < Q:= pow_pos hp.pos h
  have hQle:Q ≤ n:= d63 hA hrepr'
  have hhlog:h ≤ Nat.log p upper:=
    Nat.le_log_of_pow_le hp.one_lt (hQle.trans hnupper.le)
  have hh:h < Nat.log p upper + 1:= by omega
  have hindex:i.factorization p < h:= by dsimp only [h]; omega
  have hloProd:lo - i ≤ Q * A:= by
    calc
      lo - i ≤ A * Q:= by omega
      _ = Q * A:= Nat.mul_comm A Q
  have hAlo:max 1 ((lo - i) / Q) ≤ A:=
    max_le hA (Nat.div_le_of_le_mul hloProd)
  have hMdiv:A ≤ M / p ^ i.factorization p:=
    (Nat.le_div_iff_mul_le (pow_pos hp.pos _)).mpr hbound
  have hUpperDiv:A ≤ (upper - 1) / Q:=
    (Nat.le_div_iff_mul_le hQpos).mpr (by omega)
  have hAhi:A ≤ min (M / p ^ i.factorization p) ((upper - 1) / Q):=
    le_min hMdiv hUpperDiv
  have hmem:(p,max lo (A * Q),min (upper - 1) (A * Q + i - 1)) ∈
      d76 i M lo upper:=
    d79 hp hpi hh hindex hAlo hAhi
  refine ⟨(p,max lo (A * Q),min (upper - 1) (A * Q + i - 1)),
    hmem,rfl,?_,?_⟩
  · change max lo (A * Q) ≤ n
    exact max_le hlon (by omega)
  · change n ≤ min (upper - 1) (A * Q + i - 1)
    exact le_min (by omega) (by omega)
theorem d44 {n i M lo upper:ℕ}
    (hi:2 ≤ i) (hin:i ≤ n) (hcount:2 ≤ d91 i)
    (hn:0 < n) (hM:0 < M) (hMn:M < n)
    (hU:n ^ d91 i ≤
      M ^ (d91 i - 1) * d92 n i)
    (hilo:i ≤ lo) (hlon:lo ≤ n) (hnupper:n < upper):
    ∃ I ∈ d76 i M lo upper,
      ∃ J ∈ d76 i M lo upper,
        I.1 ≠ J.1 ∧ I.2.1 ≤ n ∧ n ≤ I.2.2 ∧ J.2.1 ≤ n ∧ n ≤ J.2.2:= by
  obtain ⟨p,q,hp,hpi,hq,hqi,hpq,hpInterval,hqInterval⟩:=
    d47 hi hin hcount hn hM hMn hU
  obtain ⟨hep,a,ha,A,hA,hAbound,hreprp⟩:= hpInterval
  obtain ⟨heq,b,hb,B,hB,hBbound,hreprq⟩:= hqInterval
  obtain ⟨I,hI,hIp,hIlo,hIhi⟩:=
    d78 hp hpi hilo hlon hnupper hep ha hA hAbound hreprp
  obtain ⟨J,hJ,hJq,hJlo,hJhi⟩:=
    d78 hq hqi hilo hlon hnupper heq hb hB hBbound hreprq
  have hcolours:I.1 ≠ J.1:= by
    simpa only [hIp,hJq] using hpq
  exact ⟨I,hI,J,hJ,hcolours,hIlo,hIhi,hJlo,hJhi⟩
end N5
namespace N5
open N4
theorem d64 {n i D:ℕ}
    (hin:i ≤ n) (hD:D ∣ n.choose i)
    (hcop:D.Coprime (i - 1).factorial):
    D ∣ N3.d80 i (n.choose i):= by
  classical
  have hcopSmall:D.Coprime (d92 n i):= by
    unfold d92
    apply Nat.Coprime.prod_right
    intro p hp
    obtain ⟨hmem,hpi⟩:= Finset.mem_filter.mp hp
    have hprime:= Nat.prime_of_mem_primeFactors hmem
    have hpfact:p ∣ (i - 1).factorial:=
      hprime.dvd_factorial.mpr (by omega)
    exact (hcop.of_dvd_right hpfact).pow_right _
  apply hcopSmall.dvd_of_dvd_mul_left
  rw [d94 hin]
  exact hD
theorem d28 {n i j r s D:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
    (_hDpos:0 < D) (hcop:D.Coprime (i - 1).factorial)
    (hnum:i.factorial * D ∣ n.descFactorial i)
    (hcompare:n ^ d105 i r s <
      d104 i r s * D ^ (2 * s - r)):
    ∃ p:ℕ,p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j):= by
  have hin:i ≤ n:= by omega
  have hDchoose:D ∣ n.choose i:= by
    apply Nat.dvd_of_mul_dvd_mul_left (Nat.factorial_pos i)
    simpa only [Nat.descFactorial_eq_factorial_mul_choose] using hnum
  have hDprime:= d64 hin hDchoose hcop
  have hprimePos:0 < N3.d80 i (n.choose i):= by
    by_contra h
    have hzero:N3.d80 i (n.choose i) = 0:= by omega
    have hsplit:= d94 hin
    rw [hzero,Nat.mul_zero] at hsplit
    have hchoose:= Nat.choose_pos hin
    omega
  have hDle:= Nat.le_of_dvd hprimePos hDprime
  apply d31 hi hij hjn hsi
  exact hcompare.trans_le (Nat.mul_le_mul_left _ (Nat.pow_le_pow_left hDle _))
inductive d11 where
  | topPrime (p:ℕ)
  | largeDivisor (D:ℕ)
  deriving DecidableEq,Repr
structure d5 where
  lower:ℕ
  upper:ℕ
  witness:d11
  deriving DecidableEq,Repr
def d54 (g:d5):ℕ × ℕ:= (g.lower,g.upper)
def d55 (i r s:ℕ) (g:d5):Bool:=
  match g.witness with
  | .topPrime p =>
      decide (g.lower ≤ g.upper ∧ p.Prime ∧ p ≤ g.lower ∧ g.upper < p + i)
  | .largeDivisor D =>
      decide (g.lower = g.upper ∧ 0 < D ∧ D.Coprime (i - 1).factorial ∧
        i.factorial * D ∣ g.lower.descFactorial i ∧
        g.lower ^ d105 i r s < d104 i r s * D ^ (2 * s - r))
theorem d56 {i r s:ℕ} {g:d5}
    (hi:2 ≤ i) (hsi:s < i) (hcheck:d55 i r s g = true)
    {n j:ℕ} (hlo:g.lower ≤ n) (hup:n ≤ g.upper)
    (hij:i < j) (hjn:j ≤ n / 2):Common n i j:= by
  cases hw:g.witness with
  | topPrime p =>
      have hc:g.lower ≤ g.upper ∧ p.Prime ∧ p ≤ g.lower ∧ g.upper < p + i:=
        of_decide_eq_true (by simpa only [d55,hw] using hcheck)
      obtain ⟨_,hp,hplower,hupper⟩:= hc
      exact d32 (by omega) hij hjn hp (by omega) (by omega)
  | largeDivisor D =>
      have hc:g.lower = g.upper ∧ 0 < D ∧ D.Coprime (i - 1).factorial ∧
          i.factorial * D ∣ g.lower.descFactorial i ∧
          g.lower ^ d105 i r s < d104 i r s * D ^ (2 * s - r):=
        of_decide_eq_true (by simpa only [d55,hw] using hcheck)
      obtain ⟨heq,hDpos,hcop,hnum,hcompare⟩:= hc
      have hn:n = g.lower:= by omega
      subst n
      exact d28 hi hij hjn hsi hDpos hcop hnum hcompare
end N5
namespace N5
abbrev d10:= ℕ × ℕ
abbrev d1:= ℕ × ℕ × ℕ
def d62 (n:ℕ) (I:d10):Prop:=
  I.1 ≤ n ∧ n ≤ I.2
def d34 (lo hi:ℕ):List d10 → Bool
  | [] => decide (hi < lo)
  | (a,b)::rest =>
      if hi < lo then true
      else if b < lo then d34 lo hi rest
      else if lo < a then false
      else if hi ≤ b then true
      else d34 (b + 1) hi rest
theorem d35 (cover:List d10):
    ∀ lo hi n:ℕ,d34 lo hi cover = true → lo ≤ n → n ≤ hi →
      ∃ I ∈ cover,d62 n I:= by
  induction cover with
  | nil =>
      intro lo hi n hcheck hlo hhi
      simp only [d34,decide_eq_true_eq] at hcheck
      omega
  | cons I rest ih =>
      obtain ⟨a,b⟩:= I
      intro lo hi n hcheck hlo hhi
      by_cases hempty:hi < lo
      · omega
      by_cases hbefore:b < lo
      · have hr:d34 lo hi rest = true:= by
          simpa only [d34,if_neg hempty,if_pos hbefore] using hcheck
        obtain ⟨J,hJ,hnJ⟩:= ih lo hi n hr hlo hhi
        exact ⟨J,List.mem_cons_of_mem _ hJ,hnJ⟩
      by_cases hgap:lo < a
      · simp only [d34,if_neg hempty,if_neg hbefore,if_pos hgap,
          Bool.false_eq_true] at hcheck
      by_cases hdone:hi ≤ b
      · refine ⟨(a,b),List.mem_cons_self,?_⟩
        unfold d62
        dsimp only
        omega
      by_cases hnhead:n ≤ b
      · refine ⟨(a,b),List.mem_cons_self,?_⟩
        unfold d62
        dsimp only
        omega
      · have hr:d34 (b + 1) hi rest = true:= by
          simpa only [d34,if_neg hempty,if_neg hbefore,if_neg hgap,
            if_neg hdone] using hcheck
        obtain ⟨J,hJ,hnJ⟩:= ih (b + 1) hi n hr (by omega) hhi
        exact ⟨J,List.mem_cons_of_mem _ hJ,hnJ⟩
def d73 (intervals:List d1) (cover:List d10):Bool:=
  intervals.all fun I =>
    intervals.all fun J =>
      if I.1 = J.1 then true
      else d34 (max I.2.1 J.2.1) (min I.2.2 J.2.2) cover
theorem d74 {intervals:List d1}
    {cover:List d10} {I J:d1} {n:ℕ}
    (hcheck:d73 intervals cover = true)
    (hI:I ∈ intervals) (hJ:J ∈ intervals) (hcolours:I.1 ≠ J.1)
    (hIlow:I.2.1 ≤ n) (hIhigh:n ≤ I.2.2)
    (hJlow:J.2.1 ≤ n) (hJhigh:n ≤ J.2.2):
    ∃ K ∈ cover,d62 n K:= by
  unfold d73 at hcheck
  have hrow:= List.all_eq_true.mp hcheck I hI
  have hpair:= List.all_eq_true.mp hrow J hJ
  have hc:d34 (max I.2.1 J.2.1) (min I.2.2 J.2.2) cover = true:= by
    simpa only [if_neg hcolours] using hpair
  exact d35 cover _ _ n hc (by omega) (by omega)
end N5
namespace N5
def d102 (p:ℕ):Bool:=
  decide (2 ≤ p) &&
    (List.range (Nat.sqrt p + 1)).all
      (fun d => if d < 2 then true else decide (p % d ≠ 0))
theorem d103 {p:ℕ} (hcheck:d102 p = true):
    p.Prime:= by
  have hc:= hcheck
  simp only [d102,Bool.and_eq_true,decide_eq_true_eq] at hc
  refine Nat.prime_def_le_sqrt.mpr ⟨hc.1,?_⟩
  intro d hd hsqrt
  have hmem:d ∈ List.range (Nat.sqrt p + 1):= List.mem_range.mpr (by omega)
  have htest:= List.all_eq_true.mp hc.2 d hmem
  have hnot:¬ d < 2:= by omega
  simp only [if_neg hnot,decide_eq_true_eq] at htest
  exact fun hdiv => htest (Nat.mod_eq_zero_of_dvd hdiv)
end N5
namespace N5
open N4
structure d2 where
  lower:ℕ
  upper:ℕ
  M:ℕ
  deriving DecidableEq,Repr
def d2.bounds (layer:d2):d10:=
  (layer.lower,layer.upper - 1)
structure d4 where
  height:d6
  goods:List d5
  layers:List d2
  deriving DecidableEq,Repr
def d9 (height:d6) (layer:d2):Prop:=
  2 ≤ d91 height.i ∧
  0 < layer.M ∧
  layer.M < layer.lower ∧
  height.i * (height.i - 1) ≤ layer.lower ∧
  height.i ≤ layer.lower ∧
  layer.lower < layer.upper ∧
  layer.upper ≤ height.n0 ∧
  (2 * height.i.factorial) ^ (2 * height.s - height.r) ≤
    d104 height.i height.r height.s *
      layer.M ^ ((2 * height.s - height.r) * (d91 height.i - 1)) *
      layer.lower ^ (height.i * (2 * height.s - height.r) -
        d60 height.i height.r height.s)
instance (height:d6) (layer:d2):
    Decidable (d9 height layer):= by
  unfold d9
  infer_instance
def d13 (i M lo upper:ℕ):List d1:=
  (d76 i M lo upper).filter (fun I => decide (I.2.1 ≤ I.2.2))
def d36 (height:d6) (goods:List d5)
    (layer:d2):Bool:=
  decide (d9 height layer) &&
    d73 (d13 height.i layer.M layer.lower layer.upper)
      (goods.map d54)
def d52 (row:d4):Bool:=
  decide (row.height ∈ d57) &&
  row.goods.all (d55 row.height.i row.height.r row.height.s) &&
  d34 (2 * row.height.i + 2) (row.height.i * (row.height.i - 1) - 1)
    (row.goods.map d54) &&
  d34 (row.height.i * (row.height.i - 1)) (row.height.n0 - 1)
    (row.layers.map d2.bounds) &&
  row.layers.all (d36 row.height row.goods)
theorem d21 {i r s:ℕ} {goods:List d5}
    (hi:2 ≤ i) (hsi:s < i)
    (hgoods:goods.all (d55 i r s) = true)
    {n j:ℕ} (hij:i < j) (hjn:j ≤ n / 2)
    {I:d10} (hI:I ∈ goods.map d54) (hIn:d62 n I):
    Common n i j:= by
  obtain ⟨g,hg,heq⟩:= List.mem_map.mp hI
  rw [← heq] at hIn
  have hcheck:= List.all_eq_true.mp hgoods g hg
  exact d56 hi hsi hcheck hIn.1 hIn.2 hij hjn
theorem d37 {height:d6}
    {goods:List d5} {layer:d2}
    (hregistered:height ∈ d57)
    (hgoods:goods.all (d55 height.i height.r height.s) = true)
    (hcheck:d36 height goods layer = true)
    {n j:ℕ} (hlo:layer.lower ≤ n) (hup:n ≤ layer.upper - 1)
    (hij:height.i < j) (hjn:j ≤ n / 2):Common n height.i j:= by
  have hv:= d59 hregistered
  obtain ⟨hi,_,_,hsi,hlambda,_,hdegree,_⟩:= hv
  have hc:= hcheck
  simp only [d36,Bool.and_eq_true] at hc
  have hmeta:d9 height layer:= of_decide_eq_true hc.1
  obtain ⟨hcount,hM,hMH,hH,hilo,hinterval,_,hcertificate⟩:= hmeta
  have hupper:n < layer.upper:= by omega
  have hexponent:height.i * (2 * height.s - height.r) =
      d60 height.i height.r height.s +
        (height.i * (2 * height.s - height.r) -
          d60 height.i height.r height.s):=
    (Nat.add_sub_of_le hdegree).symm
  by_contra hno
  have hU:= d72
    (r:= height.r) (s:= height.s) (H:= layer.lower) (M:= layer.M)
    hi hij hjn hsi hlambda hH hlo hexponent hcertificate hno
  obtain ⟨I,hI,J,hJ,hcolours,hIlo,hIhi,hJlo,hJhi⟩:=
    d44 hi (by omega) hcount (by omega)
      hM (by omega) hU hilo hlo hupper
  have hIactive:I ∈ d13 height.i layer.M layer.lower layer.upper:= by
    simp only [d13,List.mem_filter,decide_eq_true_eq]
    exact ⟨hI,hIlo.trans hIhi⟩
  have hJactive:J ∈ d13 height.i layer.M layer.lower layer.upper:= by
    simp only [d13,List.mem_filter,decide_eq_true_eq]
    exact ⟨hJ,hJlo.trans hJhi⟩
  obtain ⟨K,hK,hnK⟩:=
    d74 hc.2 hIactive hJactive hcolours hIlo hIhi hJlo hJhi
  exact hno (d21 hi hsi hgoods hij hjn hK hnK)
theorem d26 {row:d4}
    (hcheck:d52 row = true) {n j:ℕ}
    (hij:row.height.i < j) (hjn:j ≤ n / 2):
    ∃ p:ℕ,p.Prime ∧ row.height.i ≤ p ∧
      p ∣ Nat.gcd (n.choose row.height.i) (n.choose j):= by
  have hc:= hcheck
  simp only [d52,Bool.and_eq_true,decide_eq_true_eq,and_assoc] at hc
  obtain ⟨hregistered,hgoods,hsmall,hlayercover,hlayers⟩:= hc
  have hv:= d59 hregistered
  obtain ⟨hi,_,_,hsi,_,_,_,_⟩:= hv
  by_cases htail:row.height.n0 ≤ n
  · exact d30 hregistered hij hjn htail
  by_cases hlow:n < row.height.i * (row.height.i - 1)
  · obtain ⟨I,hI,hIn⟩:=
      d35 (row.goods.map d54)
        (2 * row.height.i + 2) (row.height.i * (row.height.i - 1) - 1) n
        hsmall (by omega) (by omega)
    exact d21 hi hsi hgoods hij hjn hI hIn
  · obtain ⟨I,hI,hIn⟩:=
      d35 (row.layers.map d2.bounds)
        (row.height.i * (row.height.i - 1)) (row.height.n0 - 1) n
        hlayercover (by omega) (by omega)
    obtain ⟨layer,hLayer,heq⟩:= List.mem_map.mp hI
    rw [← heq] at hIn
    have hLayerCheck:= List.all_eq_true.mp hlayers layer hLayer
    exact d37 hregistered hgoods hLayerCheck hIn.1 hIn.2 hij hjn
end N5
namespace N5
def d38 (divisors:List ℕ) (previous:ℕ) (codes:List ℕ):List d5:=
  match codes with
  | [] => []
  | code::rest =>
      let payload:= code / 2
      let index:= payload % 1369
      let width:= (payload / 1369) % 1369
      let lo:= previous + payload / 1874161
      let witness:= if code % 2 = 0 then d11.topPrime (lo - index)
        else d11.largeDivisor (divisors[index]?.getD 0)
      ⟨lo,lo + width,witness⟩::d38 divisors lo rest
termination_by structural codes
end N5
namespace N5
def d39 (stop lower:ℕ) (indices:List ℕ):List d2:=
  match indices with
  | [] => []
  | index::rest =>
      let upper:= min (2 * lower) stop
      ⟨lower,upper,index⟩::d39 stop upper rest
termination_by structural indices
end N5
namespace N5
def d50 (i r s:ℕ) (g:d5):Bool:=
  match g.witness with
  | .topPrime p => decide (g.lower ≤ g.upper ∧ p ≤ g.lower ∧ g.upper < p + i) && d102 p
  | .largeDivisor _ => d55 i r s g
end N5
namespace N5
theorem d51 {i r s:ℕ} {g:d5}
    (h:d50 i r s g = true):d55 i r s g = true:= by
  cases hw:g.witness with
  | largeDivisor D => simpa only [d50,hw] using h
  | topPrime p =>
    have hc:(decide (g.lower ≤ g.upper ∧ p ≤ g.lower ∧ g.upper < p + i) && d102 p) = true:= by
      simpa only [d50,hw] using h
    obtain ⟨hb,hp⟩:= Bool.and_eq_true_iff.mp hc
    obtain ⟨hlo,hplower,hupper⟩:= of_decide_eq_true hb
    simp only [d55,hw,decide_eq_true_eq]
    exact ⟨hlo,d103 hp,hplower,hupper⟩
end N5
namespace N5
def d48 (row:d4):Bool:=
  decide (row.height ∈ d57) &&
  row.goods.all (d50 row.height.i row.height.r row.height.s) &&
  d34 (2 * row.height.i + 2) (row.height.i * (row.height.i - 1) - 1)
    (row.goods.map d54) &&
  d34 (row.height.i * (row.height.i - 1)) (row.height.n0 - 1)
    (row.layers.map d2.bounds) &&
  row.layers.all (d36 row.height row.goods)
end N5
namespace N5
theorem d49 {row:d4}
    (h:d48 row = true):d52 row = true:= by
  unfold d48 at h
  unfold d52
  simp only [Bool.and_eq_true,and_assoc] at h ⊢
  refine ⟨h.1,?_,h.2.2.1,h.2.2.2.1,h.2.2.2.2⟩
  apply List.all_eq_true.mpr
  intro g hg
  exact d51 (List.all_eq_true.mp h.2.1 g hg)
end N5
namespace N5
structure d0 where
  row:d4
  checked:d52 row = true
end N5
namespace N5.N8.N7
def profilingRow : N5.d4 := { height:= { i:= 44,r:= 14,s:= 29,n0Power10:= 66 },goods:= N5.d38 [10043284475396850876113164237332660150614874788659569251777115293107166683579801494461919968002247363569864717630636698195278591166228672827,980565441030043368105691041937020667411134090054061833393523086816826989231751084175096347161492195681691986301169043963041885838639133409,291154584830857301130969299739904714004132058864147777056268672404996357059634213612339300878148439929350488819117196624179944992014465037,744618175904405185300547755628794620412444069229575745700590170005272153199424169449540151033951170452623494079227795275756528591774288613] 0 [337463978,161290108,157541786,157530842,142543026,150045142,157547258,165038430,157541786,157541786,157536314,150050614,165032958,150050614,165038430,157525370,135051854,157525370,135051854,157519898,127560682,165032958,150050614,165038430,157525370,135046382,150050614,165032958,150050614,165038430,157541786,157536314,150034198,142543026,150050614,165032958,150050614,165038430,157503482,105037918,120053094,150050614,165022014,135051854,157541786,157536314,150034198,142548498,157525370,134988884,127538794,135057326,165022014,134986142,116307508,153686682,33833480,138704342,30003008,63814584,131237820,108739684,303709928,135024478,168789488,161290108,157536306,228746224,138737214,224965036,142521138,120022972,356200112,157432264,112553714,146211942,52490206,127467634,56328884,146209208,101292332,123746652,333715656,161227158,93749154,142449928,56304260,112485258,191268476,146195530,26347780,153727764,195025006,157530842,142482790,344930526,120009278,322462482,149941106,86301770,149941100,41327388,135008050,307463722,142469096,269975030,135035438,134969730,348599436,438633104,112504428,318618328,67541018,101248538,93823048,161177874,112556450,150012294,479785224,11343548,138726250,74993824,63836472,161191556,284888904,41313708,116200720,33743130,127467592,82520608,108739718,123809624,161177850,138791968,146203724,187522890,149941146,30098838,157432278,371155100,101286838,142543026,149941098,164967262,599843782,157432270,101319692,161177874,247490570,142441720,213758408,146195526,487328458,67486236,209941646,509867638,134961496,307367888,52588770,157476074,131257020,93738168,907115848,63836472,161177866,14996054,86266180,434887518,116230846,288719376,138800176,157481550,787191448,521115336,685970310,333704712,146195530,33770530,153686690,382402802,104994090,269884668,596098196,161177846,161287372,153686694,629723588,120009318,90017230,820981100,138750916,431144664,566073294,251247100,153686682,382372660,809711506,138704396,322454274,138764602,438578350,858428724,416145908,116206204,82558918,225011582,157429528,749710998,67576586,150020496,434879310,104953028,476146420,153686690,925950532,161177850,251241628,146195510,273660424,48791168,329898898,142449934,952112128,453626378,123722046,101248504,296142092,273726080,506086476,228746224,138704366,1128258614,341204092,149932884,224899332,569807938,288730320,153686694,835974388,138791966,1214530270,817213606,146195528,146195522,116302036,146220168,1139580246,161177864,33841688,149941114,940856204,138704358,33849896,161177862,599761658,131300796,153686686,3680920690,97502926,1431922018,90019964,2492738184,146195542,2713809774,869701078,127497712,2560106666,45064744,581020032,1154516036,1866771146,149941098,1334405398,202510702,1915502068,153686686,2560213452,153711348,1165763786,1982870564,3002485342,1788061856,157465130,1154488656,52555930,701023840,1589367952,862190726,3823389748,2421525538,153719554,2991188340,67538250,3088724118,149941114,798461062,2428912666,2991229416,1806792512,1844190854,2653877690,3152451064,157432266,2920057836,161218948,2728852362,2852533284,637274986,1019560014,3463509806,86219620,1645628356,161177850,1788009844,3523474720,3602159354,3602205894,12661897466,93757346,656027552,15293252334,352350492,2488924162,1401929952,4790448622,18902894636,149932884,6151026530,712230490,5708713644,29986577,3748325,3748327,3748329,18741686694,108715028,6192282708,247465932,6053624926,5779942652,5704948836,12834281910,28341073606,8366276656,14914636230,32010724686,78736670,8921052930,196644572812,257127474716,405568500660,1228328870466,11623620480,104955802],layers:= N5.d39 (10 ^ 66) 1892 [46,45,44,43,43,42,41,40,40,39,38,38,37,36,36,35,34,34,33,33,32,31,31,30,30,29,29,28,28,27,27,26,26,25,25,24,24,24,23,23,22,22,22,21,21,20,20,20,19,19,19,18,18,18,17,17,17,17,16,16,16,15,15,15,15,14,14,14,14,13,13,13,13,12,12,12,12,12,11,11,11,11,11,11,10,10,10,10,10,9,9,9,9,9,9,9,8,8,8,8,8,8,8,7,7,7,7,7,7,7,7,7,6,6,6,6,6,6,6,6,6,6,5,5,5,5,5,5,5,5,5,5,5,5,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] }
#check profilingRow
theorem profilingFullRow : N5.d48 profilingRow = true := by
  decide +kernel
end N5.N8.N7
end Contribution.B699ProfilingA151ActualFullRow354209

#check Contribution.B699ProfilingA151ActualFullRow354209.N5.N8.N7.profilingFullRow
#print axioms Contribution.B699ProfilingA151ActualFullRow354209.N5.N8.N7.profilingFullRow
