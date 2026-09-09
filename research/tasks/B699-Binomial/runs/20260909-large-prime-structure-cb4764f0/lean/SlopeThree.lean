import research.tasks.«B699-Binomial».runs.«20260909-large-prime-structure-cb4764f0».lean.PrimePowerTransfer

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LargePrimeStructure

/-- The exact primitive nonzero support for the slope n=3j. -/
def slopeThreeKernel (i : ℕ) : ℕ :=
  ((Finset.Ioc i (2 * i - 5)).filter Nat.Prime).prod id

/-- The number of possible zero-cell child residues, ceil(i/3). -/
def slopeThreeZ (i : ℕ) : ℕ := (i + 2) / 3

/-- The third Vandermonde index, including h=0 when i=4. -/
def slopeThreeH (i : ℕ) : ℕ := i - 2 * slopeThreeZ i

/-- Three times a dominated remainder either equals the original remainder,
or differs by exactly one modulus. -/
theorem slope_three_mod_split {a b Q : ℕ}
    (haQ : a < Q) (hb : b ≤ a) (hmod : (3 * b) % Q = a) :
    3 * b = a ∨ 3 * b = a + Q := by
  have hdiv := Nat.mod_add_div (3 * b) Q
  rw [hmod] at hdiv
  have hprod : Q * ((3 * b) / Q) < Q * 2 := by omega
  have hquot : (3 * b) / Q < 2 := by
    by_contra h
    have hm := Nat.mul_le_mul_left Q (show 2 ≤ (3 * b) / Q by omega)
    omega
  have hcases : (3 * b) / Q = 0 ∨ (3 * b) / Q = 1 :=
    Nat.le_one_iff_eq_zero_or_eq_one.mp (Nat.le_of_lt_succ hquot)
  rcases hcases with hzero | hone
  · left
    simp only [hzero, Nat.mul_zero, Nat.add_zero] at hdiv
    exact hdiv.symm
  · right
    simp only [hone, Nat.mul_one] at hdiv
    exact hdiv.symm

/-- A nonzero cell can contain only one prime p>i, and p<=2i-5.
The complete numerator exponent excludes the prime=i boundary. -/
theorem slope_three_nonzero_prime {i p e a b : ℕ}
    (hi : 3 ≤ i) (hp : p.Prime) (hpi : i ≤ p) (he : 0 < e)
    (ha : a < i) (hb : b ≤ a)
    (hnz : 3 * b = a + p ^ (e + if p = i then 1 else 0)) :
    e = 1 ∧ i < p ∧ p ≤ 2 * i - 5 := by
  have hsmall : p ^ (e + if p = i then 1 else 0) ≤ 2 * i - 2 := by omega
  have hexp : e + (if p = i then 1 else 0) = 1 := by
    by_contra h
    have htwo : 2 ≤ e + (if p = i then 1 else 0) := by omega
    have hpow : p ^ 2 ≤ p ^ (e + if p = i then 1 else 0) :=
      pow_le_pow_right' hp.one_lt.le htwo
    have hsquare : i * i ≤ p * p := Nat.mul_le_mul hpi hpi
    have hlow : 3 * i ≤ i * i := Nat.mul_le_mul_right i hi
    simp only [pow_two] at hpow
    omega
  have hne : p ≠ i := by
    intro h
    simp only [h, ↓reduceIte] at hexp
    omega
  have heone : e = 1 := by
    simpa only [hne, ↓reduceIte, Nat.add_zero] using hexp
  have hprimeEq : 3 * b = a + p := by
    simpa only [heone, hne, ↓reduceIte, Nat.add_zero, pow_one] using hnz
  have hba : b < a := by
    by_contra h
    have hbeq : b = a := by omega
    obtain ⟨t, ht⟩ := hp.odd_of_ne_two (by omega : p ≠ 2)
    omega
  exact ⟨heone, by omega, by omega⟩

/-- A complete actual prime power transfers to the exact slope-three kernel
or to the zero-cell child binomial. -/
theorem prime_power_slope_three_dvd {i j p e : ℕ}
    (hi : 3 ≤ i) (hij : i < j) (hp : p.Prime) (hpi : i ≤ p) (he : 0 < e)
    (heval : e ≤ ((3 * j).choose i).factorization p)
    (havoid : ¬ p ∣ (3 * j).choose j) :
    p ^ e ∣ slopeThreeKernel i * j.choose (slopeThreeZ i) := by
  let Q := p ^ (e + if p = i then 1 else 0)
  let a := (3 * j) % Q
  let b := j % Q
  have ha : a < i := prime_power_numerator_mod_lt hp hpi (by omega) he heval
  have haQ : a < Q := Nat.mod_lt _ (pow_pos hp.pos _)
  have hb : b ≤ a := by
    by_contra h
    apply havoid
    apply B699.prime_dvd_choose_of_mod_lt hp (by omega : j ≤ 3 * j)
      (by omega : 1 ≤ e + if p = i then 1 else 0)
    change a < b
    omega
  have hmod : (3 * b) % Q = a := by
    simp [a, b, Nat.mul_mod]
  rcases slope_three_mod_split haQ hb hmod with hzero | hnonzero
  · have hbz : b < slopeThreeZ i := by
      unfold slopeThreeZ
      omega
    have hzlt : slopeThreeZ i < i := by unfold slopeThreeZ; omega
    have hzj : slopeThreeZ i ≤ j := by omega
    have hQterm : Q ∣ j - b := by
      refine ⟨j / Q, ?_⟩
      have hm := Nat.mod_add_div j Q
      change j - j % Q = Q * (j / Q)
      omega
    have hdesc : Q ∣ j.descFactorial (slopeThreeZ i) :=
      dvd_descFactorial_of_interval hzj (by omega) (Nat.sub_le j b) hQterm
    have hcop : Q.Coprime (slopeThreeZ i).factorial :=
      (hp.coprime_factorial_of_lt (hzlt.trans_le hpi)).pow_left _
    rw [Nat.descFactorial_eq_factorial_mul_choose] at hdesc
    have hchoose : Q ∣ j.choose (slopeThreeZ i) := hcop.dvd_of_dvd_mul_left hdesc
    have hpow : p ^ e ∣ Q := Nat.pow_dvd_pow p (by omega)
    exact dvd_mul_of_dvd_right (hpow.trans hchoose) _
  · obtain ⟨heone, hip, hpbound⟩ :=
      slope_three_nonzero_prime hi hp hpi he ha hb hnonzero
    have hmem : p ∈ (Finset.Ioc i (2 * i - 5)).filter Nat.Prime :=
      Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr ⟨hip, hpbound⟩, hp⟩
    have hkernel : p ∣ slopeThreeKernel i := Finset.dvd_prod_of_mem id hmem
    simpa only [heone, pow_one] using dvd_mul_of_dvd_left hkernel (j.choose (slopeThreeZ i))

/-- Actual unconditional avoiding-part transfer for every legal n=3j input. -/
theorem actual_avoiding_part_slope_three_transfer {i j : ℕ}
    (hi : 3 ≤ i) (hij : i < j) :
    avoidingPart (3 * j) i j ∣ slopeThreeKernel i * j.choose (slopeThreeZ i) := by
  classical
  unfold avoidingPart
  apply prime_power_finset_prod_dvd
  · intro p hp
    exact Nat.prime_of_mem_primeFactors (Finset.mem_filter.mp hp).1
  · intro p hp
    obtain ⟨hmem, hpi, havoid⟩ := Finset.mem_filter.mp hp
    have hprime := Nat.prime_of_mem_primeFactors hmem
    have hchoose : (3 * j).choose i ≠ 0 := Nat.ne_of_gt (Nat.choose_pos (by omega))
    have he : 0 < ((3 * j).choose i).factorization p := by
      have hh := (hprime.dvd_iff_one_le_factorization hchoose).mp
        (Nat.dvd_of_mem_primeFactors hmem)
      omega
    exact prime_power_slope_three_dvd hi hij hprime hpi he le_rfl havoid

/-- Under the original noCommon condition this is the accepted full primePart. -/
theorem actual_prime_part_slope_three_transfer {i j : ℕ}
    (hi : 3 ≤ i) (hij : i < j) (hno : ¬ Common (3 * j) i j) :
    B699BridgeAudit.primePart i ((3 * j).choose i) ∣
      slopeThreeKernel i * j.choose (slopeThreeZ i) := by
  rw [← avoidingPart_eq_primePart_of_noCommon hno]
  exact actual_avoiding_part_slope_three_transfer hi hij

/-- The three allocated indices sum to i, even at the boundary i=4. -/
theorem slope_three_index_decomposition {i : ℕ} (hi : 3 ≤ i) :
    2 * slopeThreeZ i + slopeThreeH i = i := by
  unfold slopeThreeH slopeThreeZ
  omega

/-- The needed single-term Vandermonde bound follows directly from Pascal. -/
theorem choose_product_le_choose_sum (m n a b : ℕ) :
    m.choose a * n.choose b ≤ (m + n).choose (a + b) := by
  induction m generalizing a with
  | zero => cases a <;> simp
  | succ m ih =>
      cases a with
      | zero =>
          simp only [Nat.choose_zero_right, Nat.one_mul, Nat.zero_add]
          exact Nat.choose_le_choose b (by omega)
      | succ a =>
          calc
            _ = m.choose a * n.choose b + m.choose (a + 1) * n.choose b := by
              rw [Nat.choose_succ_succ, Nat.add_mul]
            _ ≤ (m + n).choose (a + b) + (m + n).choose (a + 1 + b) :=
              Nat.add_le_add (ih a) (ih (a + 1))
            _ = (m + 1 + n).choose (a + 1 + b) := by
              rw [show m + 1 + n = (m + n) + 1 by omega,
                show a + 1 + b = (a + b) + 1 by omega, Nat.choose_succ_succ]
/-- The decisive three-block term has two identical zero-cell factors. -/
theorem slope_three_vandermonde {i j : ℕ} (hi : 3 ≤ i) :
    (j.choose (slopeThreeZ i)) ^ 2 * j.choose (slopeThreeH i) ≤ (3 * j).choose i := by
  have hfirst : j.choose (slopeThreeZ i) * j.choose (slopeThreeZ i) ≤
      (2 * j).choose (2 * slopeThreeZ i) := by
    simpa only [two_mul] using
      choose_product_le_choose_sum j j (slopeThreeZ i) (slopeThreeZ i)
  have hsecond : (2 * j).choose (2 * slopeThreeZ i) * j.choose (slopeThreeH i) ≤
      (3 * j).choose i := by
    have hh := choose_product_le_choose_sum (2 * j) j (2 * slopeThreeZ i) (slopeThreeH i)
    simpa only [show 2 * j + j = 3 * j by omega, slope_three_index_decomposition hi] using hh
  calc
    _ = (j.choose (slopeThreeZ i) * j.choose (slopeThreeZ i)) *
        j.choose (slopeThreeH i) := by rw [pow_two]
    _ ≤ (2 * j).choose (2 * slopeThreeZ i) * j.choose (slopeThreeH i) :=
      Nat.mul_le_mul_right _ hfirst
    _ ≤ _ := hsecond

/-- K3 is a positive product, including the empty-kernel cases. -/
theorem slope_three_kernel_pos (i : ℕ) : 0 < slopeThreeKernel i := by
  unfold slopeThreeKernel
  apply Finset.prod_pos
  intro p hp
  exact (Finset.mem_filter.mp hp).2.pos

/-- Conditional EEES consumer: square dominance is an explicit arithmetic premise.
No external theorem or target conjecture is introduced as an axiom. -/
theorem noCommon_slope_three_choose_lt_kernel_sq {i j : ℕ}
    (hi : 3 ≤ i) (hij : i < j) (hno : ¬ Common (3 * j) i j)
    (hdominance : (3 * j).choose i <
      (B699BridgeAudit.primePart i ((3 * j).choose i)) ^ 2) :
    j.choose (slopeThreeH i) < (slopeThreeKernel i) ^ 2 := by
  have hzj : slopeThreeZ i ≤ j := by unfold slopeThreeZ; omega
  have hchoose : 0 < j.choose (slopeThreeZ i) := Nat.choose_pos hzj
  have hdiv := actual_prime_part_slope_three_transfer hi hij hno
  have hlarge := Nat.le_of_dvd (Nat.mul_pos (slope_three_kernel_pos i) hchoose) hdiv
  have hsq : (B699BridgeAudit.primePart i ((3 * j).choose i)) ^ 2 ≤
      (slopeThreeKernel i * j.choose (slopeThreeZ i)) ^ 2 := by
    simpa only [pow_two] using Nat.mul_le_mul hlarge hlarge
  have hbound : (j.choose (slopeThreeZ i)) ^ 2 * j.choose (slopeThreeH i) <
      (j.choose (slopeThreeZ i)) ^ 2 * (slopeThreeKernel i) ^ 2 := by
    calc
      _ ≤ (3 * j).choose i := slope_three_vandermonde hi
      _ < (B699BridgeAudit.primePart i ((3 * j).choose i)) ^ 2 := hdominance
      _ ≤ (slopeThreeKernel i * j.choose (slopeThreeZ i)) ^ 2 := hsq
      _ = _ := by ring
  by_contra h
  have hle : (slopeThreeKernel i) ^ 2 ≤ j.choose (slopeThreeH i) := by omega
  have hm := Nat.mul_le_mul_left ((j.choose (slopeThreeZ i)) ^ 2) hle
  omega

/-- The zero third index at i=4 is retained by the exact definitions. -/
example : slopeThreeZ 4 = 2 ∧ slopeThreeH 4 = 0 ∧ slopeThreeKernel 4 = 1 := by
  decide

end B699LargePrimeStructure

#print axioms B699LargePrimeStructure.slope_three_mod_split
#print axioms B699LargePrimeStructure.slope_three_nonzero_prime
#print axioms B699LargePrimeStructure.prime_power_slope_three_dvd
#print axioms B699LargePrimeStructure.actual_avoiding_part_slope_three_transfer
#print axioms B699LargePrimeStructure.actual_prime_part_slope_three_transfer
#print axioms B699LargePrimeStructure.slope_three_index_decomposition
#print axioms B699LargePrimeStructure.choose_product_le_choose_sum
#print axioms B699LargePrimeStructure.slope_three_vandermonde
#print axioms B699LargePrimeStructure.slope_three_kernel_pos
#print axioms B699LargePrimeStructure.noCommon_slope_three_choose_lt_kernel_sq
