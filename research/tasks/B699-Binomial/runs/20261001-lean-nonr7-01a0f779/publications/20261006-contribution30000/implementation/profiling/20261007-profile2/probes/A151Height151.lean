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
namespace Contribution.B699ProfilingA151Height151
set_option profiler true
set_option profiler.threshold 100
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 400000
set_option exponentiation.threshold 1000000
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
def d92 (i:ℕ):ℕ:= ((Finset.range i).filter Nat.Prime).card
def d93 (n i:ℕ):ℕ:=
  ((n.choose i).primeFactors.filter (fun p ↦ p < i)).prod
    (fun p ↦ p ^ (n.choose i).factorization p)
theorem d95 {n i:ℕ} (hin:i ≤ n):
    d93 n i * N3.d80 i (n.choose i) = n.choose i:= by
  classical
  unfold d93 N3.d80
  calc
    _ = (n.choose i).primeFactors.prod (fun p ↦ p ^ (n.choose i).factorization p):= by
      simpa only [Nat.not_lt] using Finset.prod_filter_mul_prod_filter_not
        (n.choose i).primeFactors (fun p ↦ p < i)
        (fun p ↦ p ^ (n.choose i).factorization p)
    _ = n.choose i:=
      (Nat.prod_primeFactors_pow_factorization (Nat.ne_of_gt (Nat.choose_pos hin))).symm
theorem d94 {n i:ℕ} (hn:0 < n):
    d93 n i ≤ n ^ d92 i:= by
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
def d100 (n i j r s:ℕ):ℕ:=
  d22 j s * d22 (n - j) s * d65 n i r
theorem d98 {j k Q:ℕ} (hQ:0 < Q)
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
    simpa only [hn] using d98 (j:= j) (k:= n - j) hQ
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
theorem d102 (a b c r s:ℕ) (hsplit:b + c = a):
    2 * s - r ≤ (s - b) + (s - c) + (a - r):= by
  omega
theorem d88 {n i j r s p e:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2)
    (hsi:s < i) (hp:p.Prime) (hpi:i ≤ p) (he:0 < e)
    (heval:e ≤ (n.choose i).factorization p)
    (havoid:¬ p ∣ n.choose j):
    p ^ (e * (2 * s - r)) ∣ d100 n i j r s:= by
  obtain ⟨a,b,c,ha,hsum,hn,hj,hk⟩:=
    d87 hi hij hjn hp hpi he heval havoid
  have hleft:= d82 hp hpi hsi (by omega:i ≤ j) hj
  have hright:= d82 hp hpi hsi (by omega:i ≤ n - j) hk
  have hmother:= d85 (r:= r) hp hpi (by omega:i ≤ n) ha hn
  have hmul:= Nat.mul_dvd_mul (Nat.mul_dvd_mul hleft hright) hmother
  have hcover:= d102 a b c r s hsum
  have hexp:e * (2 * s - r) ≤ e * (s - b) + e * (s - c) + e * (a - r):= by
    simpa only [Nat.mul_add] using Nat.mul_le_mul_left e hcover
  have hpow:= Nat.pow_dvd_pow p hexp
  apply hpow.trans
  simpa only [pow_add,d100] using hmul
theorem d14 {n i j r s:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i):
    d16 n i j ^ (2 * s - r) ∣ d100 n i j r s:= by
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
      d100 n i j r s:= by
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
def d108 (s:ℕ):ℕ:= ∑ h ∈ Finset.Icc 1 s,h
def d107 (s:ℕ):ℕ:= ∏ h ∈ Finset.Icc 1 s,h.factorial
def d106 (i r s:ℕ):ℕ:=
  2 * d108 s + d108 (i - r - 1)
def d105 (i r s:ℕ):ℕ:=
  2 ^ (2 * d108 s) * (d107 s) ^ 2 *
    d107 (i - r - 1)
theorem d24 (N s:ℕ):
    d107 s * d22 N s ≤ N ^ d108 s:= by
  unfold d107 d22
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
    d107 (i - r - 1) * d65 n i r ≤
      n ^ d108 (i - r - 1):= by
  unfold d107 d65
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
theorem d101 {n i j r s:ℕ}
    (hin:i ≤ n) (hjn:j ≤ n):
    d105 i r s * d100 n i j r s ≤
      n ^ d106 i r s:= by
  let T:= d108 s
  let L:= i - r - 1
  let B:= d107 s
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
    d105 i r s * d100 n i j r s =
        (2 ^ (2 * T) * (B ^ 2 * (d22 j s * d22 (n - j) s))) *
          (d107 L * d65 n i r):= by
      unfold d105 d100
      dsimp only [T,B,L]
      ring
    _ ≤ n ^ (2 * T) * n ^ d108 L:= Nat.mul_le_mul hchildren hm
    _ = n ^ d106 i r s:= by
      rw [← pow_add]
      rfl
theorem d71 {n i j r s:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
    (hno:¬ Common n i j):
    d105 i r s * N3.d80 i (n.choose i) ^ (2 * s - r) ≤
      n ^ d106 i r s:= by
  have hZ:0 < d100 n i j r s:= by
    unfold d100
    exact Nat.mul_pos (Nat.mul_pos
      (d23 hsi (by omega:i ≤ j))
      (d23 hsi (by omega:i ≤ n - j)))
      (d66 (by omega:i ≤ n))
  have hv:= Nat.le_of_dvd hZ
    (d15 hi hij hjn hsi hno)
  exact (Nat.mul_le_mul_left (d105 i r s) hv).trans
    (d101 (by omega) (by omega))
theorem d31 {n i j r s:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
    (hcompare:n ^ d106 i r s <
      d105 i r s * N3.d80 i (n.choose i) ^ (2 * s - r)):
    ∃ p:ℕ,p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j):= by
  by_contra hno
  exact (Nat.not_le_of_gt hcompare) (d71 hi hij hjn hsi hno)
end N5
namespace N6
lemma d99 {N r:ℕ} (hr:r ≤ N + 1):
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
        Nat.mul_le_mul_right _ (d99 (by omega))
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
  d92 i * (2 * s - r) + d106 i r s
theorem d70 {n i j r s:ℕ}
    (hi:2 ≤ i) (hij:i < j) (hjn:j ≤ n / 2) (hsi:s < i)
    (hno:¬ Common n i j):
    d105 i r s * (n.choose i) ^ (2 * s - r) ≤
      n ^ d60 i r s:= by
  have hn:0 < n:= by omega
  have hu:= d94 (i:= i) hn
  have hv:= d71 (r:= r) hi hij hjn hsi hno
  calc
    _ = d105 i r s *
        (d93 n i * N3.d80 i (n.choose i)) ^
          (2 * s - r):= by
      rw [d95 (by omega:i ≤ n)]
    _ = (d93 n i) ^ (2 * s - r) *
        (d105 i r s *
          N3.d80 i (n.choose i) ^ (2 * s - r)):= by
      rw [mul_pow]
      ring
    _ ≤ (n ^ d92 i) ^ (2 * s - r) * n ^ d106 i r s:=
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
      d105 i r s * (N.descFactorial i) ^ (2 * s - r)):
    ∃ p:ℕ,p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j):= by
  have hpoint:N ^ d60 i r s <
      d105 i r s * (N.choose i) ^ (2 * s - r):= by
    by_contra h
    have hle:d105 i r s * (N.choose i) ^ (2 * s - r) ≤
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
          (d105 i r s * (N.choose i) ^ (2 * s - r)) ≤
        n ^ (i * (2 * s - r)) * N ^ d60 i r s:= by
    calc
      _ = d105 i r s *
          (n ^ (i * (2 * s - r)) * (N.choose i) ^ (2 * s - r)):= by ring
      _ ≤ d105 i r s *
          (N ^ (i * (2 * s - r)) * (n.choose i) ^ (2 * s - r)):=
        Nat.mul_le_mul_left _ hratio
      _ = N ^ (i * (2 * s - r)) *
          (d105 i r s * (n.choose i) ^ (2 * s - r)):= by ring
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
    d105 row.i row.r row.s *
      row.n0.descFactorial row.i ^ (2 * row.s - row.r)
instance (row:d6):Decidable (d8 row):= by
  unfold d8
  infer_instance
def d61 (row:d6):Bool:=
  decide (d8 row)
theorem profilingHeight151 : List.all d57 d61 = true := by
  decide +kernel
end N5
end Contribution.B699ProfilingA151Height151

#check Contribution.B699ProfilingA151Height151.N5.profilingHeight151
#print axioms Contribution.B699ProfilingA151Height151.N5.profilingHeight151
