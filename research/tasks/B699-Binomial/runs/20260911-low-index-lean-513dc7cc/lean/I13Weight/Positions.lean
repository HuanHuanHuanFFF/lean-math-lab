import Lean.Elab.Tactic.Omega
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WinAssign.Assignment
import research.tasks.«B699-Binomial».runs.«20260909-large-prime-structure-cb4764f0».lean.PrimePowerTransfer

/-! UNCOMPILED. Construct and align the actual transferred positions. Only the
numerator-modulus theorem and the carry criterion are used; no lower bound on
n-2*j is introduced. Complete exponents and p=13 are retained. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I13WeightedTransfer
open Math.B699.WindowPrimeAssignment B699LargePrimeStructure

theorem original_index_le {n j : ℕ} (hij : 13 < j) (hjn : j ≤ n / 2) : 13 ≤ n := by
  omega

theorem mod_eq_of_window_dvd (n p a : ℕ) (ha : a < p) (han : a ≤ n)
    (hdiv : p ∣ n - a) : n % p = a := by
  have hzero : (n - a) % p = 0 := Nat.mod_eq_zero_of_dvd hdiv
  calc
    n % p = ((n - a) + a) % p := by rw [Nat.sub_add_cancel han]
    _ = ((n - a) % p + a % p) % p := Nat.add_mod _ _ _
    _ = a := by simp only [hzero, Nat.mod_eq_of_lt ha, Nat.zero_add]

theorem unique_window_position (n k p a r : ℕ) (hkn : k ≤ n) (hkp : k ≤ p)
    (ha : a < k) (hr : r < k) (hpa : p ∣ n - a) (hpr : p ∣ n - r) : a = r := by
  have hma := mod_eq_of_window_dvd n p a (lt_of_lt_of_le ha hkp) (by omega) hpa
  have hmr := mod_eq_of_window_dvd n p r (lt_of_lt_of_le hr hkp) (by omega) hpr
  exact hma.symm.trans hmr

theorem actual_transferred_positions (n j p : ℕ)
    (hij : 13 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 13 j)
    (hmem : p ∈ primeSupport n 13) (hpi : 13 ≤ p) :
    ∃ b c : ℕ, b < 13 ∧ c < 13 ∧
      b + c = assignedIndex n 13 (by decide) (original_index_le hij hjn) p ∧
      primeComponent n 13 p ∣ j - b ∧ primeComponent n 13 p ∣ (n - j) - c := by
  have hn : 13 ≤ n := original_index_le hij hjn
  have hjn' : j ≤ n := hjn.trans (Nat.div_le_self n 2)
  have hp : p.Prime := supported_prime n 13 p hmem
  let e : ℕ := (n.choose 13).factorization p
  have he : 0 < e := supported_exponent_pos n 13 p hmem
  have havoid : ¬ p ∣ n.choose j := by
    intro hpj
    apply hno
    exact ⟨p, hp, hpi, Nat.dvd_gcd
      (Nat.dvd_of_mem_primeFactors (by simpa only [primeSupport] using hmem)) hpj⟩
  let Q : ℕ := p ^ (e + if p = 13 then 1 else 0)
  let a : ℕ := n % Q
  let b : ℕ := j % Q
  let c : ℕ := a - b
  have ha : a < 13 := prime_power_numerator_mod_lt hp hpi hn he le_rfl
  have hb : b ≤ a := by
    by_contra h
    apply havoid
    apply B699.prime_dvd_choose_of_mod_lt hp hjn'
      (by omega : 1 ≤ e + (if p = 13 then 1 else 0))
    change a < b
    omega
  have hQn : Q ∣ n - a := Nat.dvd_sub_mod (n := Q) n
  have hQj : Q ∣ j - b := Nat.dvd_sub_mod (n := Q) j
  have hQk : Q ∣ (n - j) - c := by
    have h := Nat.dvd_sub hQn hQj
    have hs : (n - a) - (j - b) = (n - j) - c := by
      dsimp only [c]
      omega
    simpa only [hs] using h
  have hpQ : p ∣ Q := by
    simpa only [Q, Nat.pow_one] using
      Nat.pow_dvd_pow p (show 1 ≤ e + (if p = 13 then 1 else 0) by omega)
  have hpX : p ∣ primeComponent n 13 p := by
    simpa only [primeComponent, e, Nat.pow_one] using
      Nat.pow_dvd_pow p (show 1 ≤ e by omega)
  have hXQ : primeComponent n 13 p ∣ Q := by
    simpa only [primeComponent, e, Q] using
      Nat.pow_dvd_pow p (show e ≤ e + (if p = 13 then 1 else 0) by omega)
  let r : ℕ := assignedIndex n 13 (by decide) hn p
  have hr : r < 13 := (assigned_index_spec n 13 (by decide) hn p hp).1
  have hpr : p ∣ n - r := hpX.trans (component_dvd_assigned_window n 13 (by decide) hn p hp)
  have har : a = r := unique_window_position n 13 p a r hn hpi ha hr (hpQ.trans hQn) hpr
  refine ⟨b, c, by omega, ?_, ?_, hXQ.trans hQj, hXQ.trans hQk⟩
  · dsimp only [c]
    omega
  · change b + c = r
    dsimp only [c]
    omega

end Math.B699.I13WeightedTransfer
