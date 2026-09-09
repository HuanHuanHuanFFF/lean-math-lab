import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.SmallPowerIntervals
import Mathlib.Data.List.Range
import Mathlib.Data.Nat.Log

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex
open B699LargePrimeStructure

/-- A computable list of prime-coloured intervals for one layer. Each triple is
(p, lower, upper), with products associated to the right. Empty clipped intervals
may remain. No loop ranges over the ambient upper endpoint. -/
def powerIntervalList (i M lo upper : ℕ) : List (ℕ × ℕ × ℕ) :=
  (List.range i).flatMap fun p ↦
    if p.Prime then
      (List.range (Nat.log p upper + 1)).flatMap fun h ↦
        if i.factorization p < h then
          let Q := p ^ h
          let amin := max 1 ((lo - i) / Q)
          let amax := min (M / p ^ i.factorization p) ((upper - 1) / Q)
          (List.range' amin (amax + 1 - amin)).map fun A ↦
            (p, max lo (A * Q), min (upper - 1) (A * Q + i - 1))
        else []
    else []

/-- Every allowed prime, exponent and cofactor contributes its explicit tuple
to the computable list, independently of whether the clipped interval is empty. -/
theorem power_interval_mem_of_bounds {i M lo upper p h A : ℕ}
    (hp : p.Prime) (hpi : p < i) (hh : h < Nat.log p upper + 1)
    (hindex : i.factorization p < h)
    (hAlo : max 1 ((lo - i) / p ^ h) ≤ A)
    (hAhi : A ≤ min (M / p ^ i.factorization p) ((upper - 1) / p ^ h)) :
    (p, max lo (A * p ^ h), min (upper - 1) (A * p ^ h + i - 1)) ∈
      powerIntervalList i M lo upper := by
  unfold powerIntervalList
  apply List.mem_flatMap.mpr
  refine ⟨p, List.mem_range.mpr hpi, ?_⟩
  rw [if_pos hp]
  apply List.mem_flatMap.mpr
  refine ⟨h, List.mem_range.mpr hh, ?_⟩
  rw [if_pos hindex]
  dsimp only
  apply List.mem_map.mpr
  refine ⟨A, ?_, rfl⟩
  apply List.mem_range'_1.mpr
  exact ⟨hAlo, by omega⟩

/-- The actual full-power interval representation lies in the finite list.
The logarithmic exponent cutoff and both cofactor bounds are proved here. -/
theorem power_interval_list_complete {n i M lo upper p e a A : ℕ}
    (hp : p.Prime) (hpi : p < i) (_hilo : i ≤ lo)
    (hlon : lo ≤ n) (hnupper : n < upper) (he : 0 < e)
    (ha : a < i) (hA : 1 ≤ A)
    (hbound : A * p ^ i.factorization p ≤ M)
    (hrepr : n = A * p ^ (e + i.factorization p) + a) :
    ∃ I ∈ powerIntervalList i M lo upper,
      I.1 = p ∧ I.2.1 ≤ n ∧ n ≤ I.2.2 := by
  let h := e + i.factorization p
  let Q := p ^ h
  have hrepr' : n = A * Q + a := hrepr
  have hQpos : 0 < Q := pow_pos hp.pos h
  have hQle : Q ≤ n := interval_power_le_of_representation hA hrepr'
  have hhlog : h ≤ Nat.log p upper :=
    Nat.le_log_of_pow_le hp.one_lt (hQle.trans hnupper.le)
  have hh : h < Nat.log p upper + 1 := by omega
  have hindex : i.factorization p < h := by dsimp only [h]; omega
  have hloProd : lo - i ≤ Q * A := by
    calc
      lo - i ≤ A * Q := by omega
      _ = Q * A := Nat.mul_comm A Q
  have hAlo : max 1 ((lo - i) / Q) ≤ A :=
    max_le hA (Nat.div_le_of_le_mul hloProd)
  have hMdiv : A ≤ M / p ^ i.factorization p :=
    (Nat.le_div_iff_mul_le (pow_pos hp.pos _)).mpr hbound
  have hUpperDiv : A ≤ (upper - 1) / Q :=
    (Nat.le_div_iff_mul_le hQpos).mpr (by omega)
  have hAhi : A ≤ min (M / p ^ i.factorization p) ((upper - 1) / Q) :=
    le_min hMdiv hUpperDiv
  have hmem : (p, max lo (A * Q), min (upper - 1) (A * Q + i - 1)) ∈
      powerIntervalList i M lo upper :=
    power_interval_mem_of_bounds hp hpi hh hindex hAlo hAhi
  refine ⟨(p, max lo (A * Q), min (upper - 1) (A * Q + i - 1)),
    hmem, rfl, ?_, ?_⟩
  · change max lo (A * Q) ≤ n
    exact max_le hlon (by omega)
  · change n ≤ min (upper - 1) (A * Q + i - 1)
    exact le_min (by omega) (by omega)

/-- The actual small-part inequality supplies two list members of different
prime colours that both contain n. No list-completeness premise is assumed. -/
theorem exists_two_colours_in_power_interval_list {n i M lo upper : ℕ}
    (hi : 2 ≤ i) (hin : i ≤ n) (hcount : 2 ≤ smallPrimeCount i)
    (hn : 0 < n) (hM : 0 < M) (hMn : M < n)
    (hU : n ^ smallPrimeCount i ≤
      M ^ (smallPrimeCount i - 1) * smallPrimePart n i)
    (hilo : i ≤ lo) (hlon : lo ≤ n) (hnupper : n < upper) :
    ∃ I ∈ powerIntervalList i M lo upper,
      ∃ J ∈ powerIntervalList i M lo upper,
        I.1 ≠ J.1 ∧ I.2.1 ≤ n ∧ n ≤ I.2.2 ∧ J.2.1 ≤ n ∧ n ≤ J.2.2 := by
  obtain ⟨p, q, hp, hpi, hq, hqi, hpq, hpInterval, hqInterval⟩ :=
    exists_two_small_prime_power_intervals hi hin hcount hn hM hMn hU
  obtain ⟨hep, a, ha, A, hA, hAbound, hreprp⟩ := hpInterval
  obtain ⟨heq, b, hb, B, hB, hBbound, hreprq⟩ := hqInterval
  obtain ⟨I, hI, hIp, hIlo, hIhi⟩ :=
    power_interval_list_complete hp hpi hilo hlon hnupper hep ha hA hAbound hreprp
  obtain ⟨J, hJ, hJq, hJlo, hJhi⟩ :=
    power_interval_list_complete hq hqi hilo hlon hnupper heq hb hB hBbound hreprq
  have hcolours : I.1 ≠ J.1 := by
    simpa only [hIp, hJq] using hpq
  exact ⟨I, hI, J, hJ, hcolours, hIlo, hIhi, hJlo, hJhi⟩

end B699LowIndex

#print axioms B699LowIndex.power_interval_mem_of_bounds
#print axioms B699LowIndex.power_interval_list_complete
#print axioms B699LowIndex.exists_two_colours_in_power_interval_list