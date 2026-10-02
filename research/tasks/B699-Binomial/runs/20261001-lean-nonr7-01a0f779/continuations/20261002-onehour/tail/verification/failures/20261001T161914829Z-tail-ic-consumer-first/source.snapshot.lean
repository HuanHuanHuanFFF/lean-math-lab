import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».tail.NormalizationFromWindows
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».tail.ElementaryCount
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».tail.IntegerCountBridge

/-!
Paper prime-optimization section 3: a genuine original noCommon input and
the displayed integer certificate give a uniform height on its full interval.
The actual pi(b)<=T row bound is explicit; the 115 sieve bounds are not assumed
to have been checked merely because this general consumer compiles.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 1600000
open Real
namespace B699ContinuationIC

theorem row_height {n i j a b T q k : Nat}
    (hi : 1000 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (ha : a ≤ i) (hb : i ≤ b) (hbk : b < 2 ^ k) (hq : 12 ≤ q)
    (hcount : Nat.primeCounting b ≤ T)
    (hcert : 100 * (3 * (q + k) * T + 5 * q + 9 * k) ≤ (100 * q - 1) * a)
    (hno : ¬ B699LargePrimeStructure.Common n i j) : n < 2 ^ q * i := by
  by_contra h
  have hn : 2 ^ q * i ≤ n := by omega
  have hip : (0 : ℝ) < i := by exact_mod_cast (show 0 < i by omega)
  have hpq : (4096 : Nat) ≤ 2 ^ q := by
    change 2 ^ 12 ≤ 2 ^ q
    exact pow_le_pow_right' (by decide : (1 : Nat) ≤ 2) hq
  have hn4096 : 4096 * i ≤ n := (Nat.mul_le_mul_right i hpq).trans hn
  have hnr : (4096 : ℝ) * i ≤ n := by exact_mod_cast hn4096
  have hnp : (0 : ℝ) < n := by nlinarith
  have hX : (2 : ℝ) ^ q ≤ (n : ℝ) / i := by
    apply (le_div_iff₀ hip).mpr
    exact_mod_cast hn
  have hZ := Real.log_le_log (by positivity : (0 : ℝ) < 2 ^ q) hX
  rw [Real.log_pow] at hZ
  have hik : (i : ℝ) ≤ (2 : ℝ) ^ k := by
    exact_mod_cast (hb.trans hbk.le)
  have hL := Real.log_le_log hip hik
  rw [Real.log_pow] at hL
  have hsmall : ((i : ℝ) - 1) / n ≤ 1 / 4096 := by
    apply (div_le_iff₀ hnp).mpr
    nlinarith [hnr]
  have hE := B699TailIC.neg_log_one_sub_le_4095 hsmall
  let t := Nat.primeCounting (i - 1)
  have ht : t ≤ T :=
    (Nat.monotone_primeCounting (show i - 1 ≤ b by omega)).trans hcount
  have hleft : 3 * (q + k) * t + 5 * q + 9 * k ≤
      3 * (q + k) * T + 5 * q + 9 * k :=
    Nat.add_le_add_right (Nat.add_le_add_right
      (Nat.mul_le_mul_left (3 * (q + k)) ht) (5 * q)) (9 * k)
  have hNat := (Nat.mul_le_mul_left 100 hleft).trans
    (hcert.trans (Nat.mul_le_mul_left (100 * q - 1) ha))
  have hsub : ((100 * q - 1 : Nat) : ℝ) = 100 * (q : ℝ) - 1 := by
    rw [Nat.cast_sub (by omega : 1 ≤ 100 * q), Nat.cast_mul]
    norm_num
  have hIC : (100 : ℝ) * (3 * ((q : ℝ) + k) * t + 5 * q + 9 * k) ≤
      (100 * (q : ℝ) - 1) * i := by
    have hc : (100 : ℝ) * (3 * ((q : ℝ) + k) * t + 5 * q + 9 * k) ≤
        ((100 * q - 1 : Nat) : ℝ) * i := by exact_mod_cast hNat
    rwa [hsub] at hc
  have hA := B699TailWindows.noCommon_normalized_1000 hi hij hjn hno
  unfold B699TailWindows.Normalized at hA
  change (1 / 3 - 5 / (3 * (i : ℝ)) - (t : ℝ) / i) * log ((n : ℝ) / i) ≤
    (t : ℝ) / i * log (i : ℝ) + 3 * log (i : ℝ) / i -
      log (1 - ((i : ℝ) - 1) / n) at hA
  have hA' := mul_le_mul_of_nonneg_right hA (by positivity : (0 : ℝ) ≤ 3 * i)
  have hAm : ((i : ℝ) - 5 - 3 * t) * log ((n : ℝ) / i) ≤
      (3 * t + 9) * log (i : ℝ) + 3 * i * (-log (1 - ((i : ℝ) - 1) / n)) := by
    convert hA' using 1 <;> field_simp [hip.ne'] <;> ring
  exact B699TailIC.ic_real_obstruction hip (by positivity)
    (by exact_mod_cast hq) (by positivity) B699TailCount.log_two_lower hIC hZ hL hE hAm

/-- Actual original same-prime consumer, conditional on only the displayed row certificate. -/
theorem row_common {n i j a b T q k : Nat}
    (hi : 1000 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (ha : a ≤ i) (hb : i ≤ b) (hbk : b < 2 ^ k) (hq : 12 ≤ q)
    (hcount : Nat.primeCounting b ≤ T)
    (hcert : 100 * (3 * (q + k) * T + 5 * q + 9 * k) ≤ (100 * q - 1) * a)
    (hn : 2 ^ q * i ≤ n) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  by_contra hno
  have hnoG : ¬ B699LargePrimeStructure.Common n i j := by
    rintro ⟨p, hp, hip, hpg⟩
    exact hno ⟨p, hp, hip, Nat.dvd_trans hpg (Nat.gcd_dvd_left _ _),
      Nat.dvd_trans hpg (Nat.gcd_dvd_right _ _)⟩
  have hheight := row_height hi hij hjn ha hb hbk hq hcount hcert hnoG
  omega

end B699ContinuationIC
#check @B699ContinuationIC.row_height
#check @B699ContinuationIC.row_common
#print axioms B699ContinuationIC.row_height
#print axioms B699ContinuationIC.row_common
