import research.tasks.«B699-Binomial».runs.«20260908-external-reductions-b3c1b7».lean.Consumer
import Mathlib.Data.Nat.Choose.Dvd
import Mathlib.Data.Nat.Choose.Vandermonde

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699Size

/-- The complete exceptional set in EEES 1978, printed page 258. -/
def eeesExceptionalPairs : Finset (ℕ × ℕ) :=
  {(8, 3), (9, 4), (10, 5), (12, 5), (21, 7), (21, 8),
    (30, 7), (33, 13), (33, 14), (36, 13), (36, 17), (56, 13)}

def EEESException (n i : ℕ) : Prop := (n, i) ∈ eeesExceptionalPairs

/-- The complementary complete prime-power part, with primes strictly below `i`. -/
def smallPrimePart (i a : ℕ) : ℕ :=
  (a.primeFactors.filter (fun p ↦ p < i)).prod (fun p ↦ p ^ a.factorization p)

/-- External theory, retained as a proposition parameter, never a project axiom.
This is the nonexceptional `u < v` form of the EEES theorem. Both factors are
the actual complete prime-power products; `p = i` belongs to the large part. -/
def EEES1978 : Prop :=
  ∀ n i : ℕ, 1 ≤ i → 2 * i ≤ n → ¬ EEESException n i →
    smallPrimePart i (n.choose i) < B699BridgeAudit.primePart i (n.choose i)

theorem prime_part_split {i a : ℕ} (ha : a ≠ 0) :
    smallPrimePart i a * B699BridgeAudit.primePart i a = a := by
  simpa only [smallPrimePart, B699BridgeAudit.primePart, not_lt] using
    (Finset.prod_filter_mul_prod_filter_not a.primeFactors (fun p : ℕ ↦ p < i)
      (fun p ↦ p ^ a.factorization p)).trans
      (Nat.prod_primeFactors_pow_factorization ha).symm

/-- A top-interval prime works simultaneously for every legal second index. -/
theorem top_prime_common {n i j p : ℕ}
    (hp : p.Prime) (htop : n - i < p) (hpn : p ≤ n)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ q : ℕ, q.Prime ∧ i ≤ q ∧ q ∣ Nat.gcd (n.choose i) (n.choose j) := by
  have hjp : j < p := by omega
  have hip : i < p := hij.trans hjp
  have htopj : n - j < p := by omega
  exact ⟨p, hp, hip.le, Nat.dvd_gcd
    (hp.dvd_choose hip htop hpn) (hp.dvd_choose hjp htopj hpn)⟩

theorem exceptional_top_prime {n i : ℕ} (hex : EEESException n i) :
    ∃ p : ℕ, p.Prime ∧ n - i < p ∧ p ≤ n := by
  simp only [EEESException, eeesExceptionalPairs, Finset.mem_insert,
    Finset.mem_singleton, Prod.mk.injEq] at hex
  rcases hex with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ |
    ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ |
    ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
  · exact ⟨7, by decide⟩
  · exact ⟨7, by decide⟩
  · exact ⟨7, by decide⟩
  · exact ⟨11, by decide⟩
  · exact ⟨19, by decide⟩
  · exact ⟨19, by decide⟩
  · exact ⟨29, by decide⟩
  · exact ⟨31, by decide⟩
  · exact ⟨31, by decide⟩
  · exact ⟨31, by decide⟩
  · exact ⟨31, by decide⟩
  · exact ⟨53, by decide⟩

/-- All twelve rows, with the entire legal `j` range and no external theory. -/
theorem exceptional_common {n i j : ℕ} (hex : EEESException n i)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  obtain ⟨p, hp, htop, hpn⟩ := exceptional_top_prime hex
  exact top_prime_common hp htop hpn hij hjn

/-- Unimodality restricted to the increasing half of a binomial row. -/
theorem choose_right_mono {n a b : ℕ} (hab : a ≤ b) (hb : b ≤ n / 2) :
    n.choose a ≤ n.choose b := by
  induction hab with
  | refl => exact le_rfl
  | @step b hab ih =>
    exact (ih (by omega)).trans (Nat.choose_le_succ_of_lt_half_left (by omega))

/-- A Vandermonde term gives the square lower bound, including odd `i`.
This is a purely combinatorial theorem and does not use EEES. -/
theorem vandermonde_lower_bound {n i j : ℕ}
    (hij : i < j) (hjn : j ≤ n / 2) (hregion : 2 * j ≤ 3 * i) :
    (j.choose i) ^ 2 ≤ n.choose i := by
  have hra : j - i ≤ i / 2 := by omega
  have hab : i / 2 ≤ i - i / 2 := by omega
  have hbj : i - i / 2 ≤ j / 2 := by omega
  have hleft : j.choose i ≤ j.choose (i / 2) := by
    rw [← Nat.choose_symm hij.le]
    exact choose_right_mono hra (hab.trans hbj)
  have hright : j.choose i ≤ j.choose (i - i / 2) := by
    rw [← Nat.choose_symm hij.le]
    exact choose_right_mono (hra.trans hab) hbj
  have hterm :
      j.choose (i / 2) * j.choose (i - i / 2) ≤ (j + j).choose i := by
    rw [Nat.add_choose_eq]
    apply Finset.single_le_sum
      (f := fun ij : ℕ × ℕ ↦ j.choose ij.1 * j.choose ij.2)
      (a := (i / 2, i - i / 2)) (fun _ _ ↦ Nat.zero_le _)
    exact Finset.mem_antidiagonal.mpr (by omega)
  calc
    (j.choose i) ^ 2 = j.choose i * j.choose i := by rw [pow_two]
    _ ≤ j.choose (i / 2) * j.choose (i - i / 2) := Nat.mul_le_mul hleft hright
    _ ≤ (j + j).choose i := hterm
    _ ≤ n.choose i := Nat.choose_le_choose i (by omega)

/-- The actual prime-power size inequality under the precise external input. -/
theorem eees_prime_part_size (heees : EEES1978) {n i : ℕ}
    (hi : 1 ≤ i) (hin : 2 * i ≤ n) (hex : ¬ EEESException n i) :
    n.choose i < (B699BridgeAudit.primePart i (n.choose i)) ^ 2 := by
  have hsmall := heees n i hi hin hex
  have hpos : 0 < B699BridgeAudit.primePart i (n.choose i) := by omega
  calc
    n.choose i = smallPrimePart i (n.choose i) *
        B699BridgeAudit.primePart i (n.choose i) :=
      (prime_part_split (Nat.choose_pos (by omega)).ne').symm
    _ < B699BridgeAudit.primePart i (n.choose i) *
        B699BridgeAudit.primePart i (n.choose i) :=
      Nat.mul_lt_mul_of_pos_right hsmall hpos
    _ = (B699BridgeAudit.primePart i (n.choose i)) ^ 2 := by rw [pow_two]

/-- Every original counterexample is nonexceptional and obeys these actual bounds. -/
theorem counterexample_bounds (heees : EEES1978) {n i j : ℕ}
    (hi : 1 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hnone : ¬ ∃ p : ℕ, p.Prime ∧ i ≤ p ∧
      p ∣ Nat.gcd (n.choose i) (n.choose j)) :
    n.choose i < (B699BridgeAudit.primePart i (n.choose i)) ^ 2 ∧
      B699BridgeAudit.primePart i (n.choose i) ≤ j.choose i := by
  have hex : ¬ EEESException n i := fun h ↦ hnone (exceptional_common h hij hjn)
  refine ⟨eees_prime_part_size heees hi (by omega) hex, ?_⟩
  exact Nat.le_of_dvd (Nat.choose_pos hij.le)
    (B699ExternalRecovery.original_counterexample_prime_part_transfer hi hij hjn hnone)

/-- The square obstruction holds for all original counterexamples, with no exception premise. -/
theorem counterexample_size (heees : EEES1978) {n i j : ℕ}
    (hi : 1 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hnone : ¬ ∃ p : ℕ, p.Prime ∧ i ≤ p ∧
      p ∣ Nat.gcd (n.choose i) (n.choose j)) :
    n.choose i < (j.choose i) ^ 2 := by
  obtain ⟨hlt, hle⟩ := counterexample_bounds heees hi hij hjn hnone
  exact hlt.trans_le (Nat.pow_le_pow_left hle 2)

/-- The surviving region of any original counterexample remains unbounded. -/
theorem counterexample_separation (heees : EEES1978) {n i j : ℕ}
    (hi : 1 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hnone : ¬ ∃ p : ℕ, p.Prime ∧ i ≤ p ∧
      p ∣ Nat.gcd (n.choose i) (n.choose j)) :
    3 * i < 2 * j := by
  by_contra h
  exact (counterexample_size heees hi hij hjn hnone).not_ge
    (vandermonde_lower_bound hij hjn (by omega))

/-- Original B699 gcd consumer on the full region `2*j ≤ 3*i`, conditional on EEES. -/
theorem common_of_twice_j_le_three_i (heees : EEES1978) {n i j : ℕ}
    (hi : 1 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hregion : 2 * j ≤ 3 * i) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  by_contra hnone
  exact (counterexample_separation heees hi hij hjn hnone).not_ge hregion

end B699Size
