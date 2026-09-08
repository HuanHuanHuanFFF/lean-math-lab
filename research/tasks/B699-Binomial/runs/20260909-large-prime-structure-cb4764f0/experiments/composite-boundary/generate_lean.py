"""Generate untrusted residue-certificate data; Lean independently checks every entry and coverage."""
import json
from pathlib import Path

base = Path(__file__).resolve().parent
run = base.parent.parent
rows = json.loads((base / "result.json").read_text(encoding="utf-8-sig"))["residue_certificates"]
entries = ",\n".join(
    "  ⟨" + ", ".join(str(record[key]) for key in ("n", "i", "j", "p", "e_i", "e_j")) + "⟩"
    for record in rows
)
row_pairs = sorted({(record["n"], record["i"]) for record in rows})
row_entries = ", ".join(f"({n}, {i})" for n, i in row_pairs)
row_coverage_lemmas = "\n".join(
    f"""private theorem rowCoverage_{n}_{i} :
    rowCheckBool ({n}, {i}) = true := by
  decide
"""
    for n, i in row_pairs
)
row_coverage_names = ",\n    ".join(f"rowCoverage_{n}_{i}" for n, i in row_pairs)
prefix = """import research.tasks.«B699-Binomial».runs.«20260909-large-prime-structure-cb4764f0».lean.GapBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace B699LargePrimeStructure

private structure CarryCertificate where
  n : ℕ
  i : ℕ
  j : ℕ
  p : ℕ
  ei : ℕ
  ej : ℕ
  deriving DecidableEq

/-- Generated candidate data; both its validity and exhaustive bounded coverage
are checked by kernel reduction below. No binomial oracle is trusted by Lean. -/
private def lowCertificates : List CarryCertificate := [
"""
suffix = """
]

private def CertificateValid (c : CarryCertificate) : Prop :=
  c.p.Prime ∧ c.i ≤ c.p ∧ c.i ≤ c.n ∧ c.j ≤ c.n ∧
  1 ≤ c.ei ∧ 1 ≤ c.ej ∧
  c.n % c.p ^ c.ei < c.i % c.p ^ c.ei ∧
  c.n % c.p ^ c.ej < c.j % c.p ^ c.ej

private instance (c : CarryCertificate) : Decidable (CertificateValid c) := by
  unfold CertificateValid
  infer_instance

/-- A closed Boolean predicate keeps the certificate audit out of the generic
bounded-existential Decidable instance. -/
private def CertificateValidBool (c : CarryCertificate) : Bool :=
  decide (CertificateValid c)

private def FoundCertificate (n i j : ℕ) : Prop :=
  ∃ c ∈ lowCertificates, c.n = n ∧ c.i = i ∧ c.j = j

private def FoundCertificateBool (n i j : ℕ) : Bool :=
  List.any lowCertificates (fun c =>
    decide (c.n = n ∧ c.i = i ∧ c.j = j))

private def RelevantLowRow (n i : ℕ) : Prop :=
  3 ≤ i ∧ 3 * i + 2 ≤ n ∧ ∀ a ∈ Finset.range i, ¬ Nat.Prime (n - a)

private def RelevantLowRowBool (n i : ℕ) : Bool :=
  decide (3 ≤ i) &&
    decide (3 * i + 2 ≤ n) &&
    List.all (List.range i) (fun a => decide (¬ Nat.Prime (n - a)))

private def lowRows : List (ℕ × ℕ) := [ROWS_DATA]

private def LowRowListedBool (n i : ℕ) : Bool :=
  List.any lowRows (fun row => decide (row = (n, i)))

private def LegalDefectBool (row : ℕ × ℕ) (j : ℕ) : Bool :=
  decide (row.2 < j ∧ 2 * j ≤ row.1 ∧ row.2 ≤ row.1 - 2 * j ∧
    50 * (row.1 - 2 * j) ≤ 171 * row.2 + 50)

private theorem low_certificates_valid_bool :
    List.all lowCertificates CertificateValidBool = true := by
  decide

private theorem low_certificates_valid :
    ∀ c ∈ lowCertificates, CertificateValid c := by
  have hall := List.all_eq_true.mp low_certificates_valid_bool
  intro c hc
  have hvalid := hall c hc
  unfold CertificateValidBool at hvalid
  exact of_decide_eq_true hvalid

private theorem low_rows_cover_bool :
    List.all (List.range 101) (fun n =>
      List.all (List.range 33) (fun i =>
        (!(RelevantLowRowBool n i)) || LowRowListedBool n i)) = true := by
  decide

private theorem relevantLowRowBool_of_prop {n i : ℕ}
    (h : RelevantLowRow n i) : RelevantLowRowBool n i = true := by
  simp only [RelevantLowRowBool, Bool.and_eq_true, List.all_eq_true,
    decide_eq_true_eq]
  refine ⟨⟨h.1, h.2.1⟩, ?_⟩
  intro a ha
  exact h.2.2 a (Finset.mem_range.mpr (List.mem_range.mp ha))

private theorem low_rows_cover :
    ∀ n ∈ Finset.range 101, ∀ i ∈ Finset.range 33, RelevantLowRow n i →
      (n, i) ∈ lowRows := by
  intro n hn i hi hrow
  have houter := List.all_eq_true.mp low_rows_cover_bool
  have hinner := List.all_eq_true.mp
    (houter n (List.mem_range.mpr (Finset.mem_range.mp hn)))
  have hlisted := hinner i (List.mem_range.mpr (Finset.mem_range.mp hi))
  have hrow_bool := relevantLowRowBool_of_prop hrow
  have hlisted_bool : LowRowListedBool n i = true := by
    simpa [hrow_bool] using hlisted
  obtain ⟨row, hmem, hroweq⟩ := List.any_eq_true.mp hlisted_bool
  have hroweq' : row = (n, i) := of_decide_eq_true hroweq
  simpa [hroweq'] using hmem

private theorem LegalDefectBool_of_prop {row : ℕ × ℕ} {j : ℕ}
    (h : row.2 < j ∧ 2 * j ≤ row.1 ∧ row.2 ≤ row.1 - 2 * j ∧
      50 * (row.1 - 2 * j) ≤ 171 * row.2 + 50) :
    LegalDefectBool row j = true := by
  simpa only [LegalDefectBool, decide_eq_true_eq] using h

private def rowCheckBool (row : ℕ × ℕ) : Bool :=
  List.all (List.range 51) (fun j =>
    (!(LegalDefectBool row j)) || FoundCertificateBool row.1 row.2 j)

ROW_COVERAGE_LEMMAS

private theorem low_certificates_cover_bool :
    List.all lowRows rowCheckBool = true := by
  simp only [lowRows, List.all_cons, List.all_nil,
    ROW_COVERAGE_NAMES,
    Bool.true_and]

private theorem low_certificates_cover :
    ∀ row ∈ lowRows, ∀ j ∈ Finset.range 51,
      row.2 < j → 2 * j ≤ row.1 → row.2 ≤ row.1 - 2 * j →
      50 * (row.1 - 2 * j) ≤ 171 * row.2 + 50 →
      FoundCertificate row.1 row.2 j := by
  intro row hrow j hj hij h2j hrowd hband
  have houter := List.all_eq_true.mp low_certificates_cover_bool
  have hinner := List.all_eq_true.mp (houter row hrow)
  have hlisted := hinner j (List.mem_range.mpr (Finset.mem_range.mp hj))
  have hlegal : LegalDefectBool row j = true :=
    LegalDefectBool_of_prop ⟨hij, h2j, hrowd, hband⟩
  have hfound : FoundCertificateBool row.1 row.2 j = true := by
    simpa [hlegal] using hlisted
  obtain ⟨c, hc, hmatch⟩ := List.any_eq_true.mp hfound
  exact ⟨c, hc, of_decide_eq_true hmatch⟩

/-- The finite lower-domain obligation created by the newly used composite-window
source. This checks the entire stated finite region, not just listed witnesses. -/
theorem common_low_composite_boundary {n i j d : ℕ}
    (hi : 3 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hnj : n = 2 * j + d) (hdi : i ≤ d) (hband : 50 * d ≤ 171 * i + 50)
    (hn : n ≤ 100) (hcomp : ∀ a < i, ¬ Nat.Prime (n - a)) : Common n i j := by
  have hn101 : n < 101 := by omega
  have hi33 : i < 33 := by omega
  have hj51 : j < 51 := by omega
  have hrow : RelevantLowRow n i := by
    refine ⟨hi, by omega, ?_⟩
    intro a ha
    exact hcomp a (Finset.mem_range.mp ha)
  have hlisted := low_rows_cover n (Finset.mem_range.mpr hn101)
    i (Finset.mem_range.mpr hi33) hrow
  obtain ⟨c, hc, hcn, hci, hcj⟩ := low_certificates_cover (n, i) hlisted
    j (Finset.mem_range.mpr hj51) hij (by omega) (by omega) (by omega)
  obtain ⟨hp, hpi, hin, hjn', hei, hej, hmi, hmj⟩ := low_certificates_valid c hc
  simpa only [hcn, hci, hcj] using
    (common_of_mod_certificate hp hpi hin hjn' hei hej hmi hmj)

end B699LargePrimeStructure

#print axioms B699LargePrimeStructure.common_low_composite_boundary
"""
suffix = suffix.replace("ROWS_DATA", row_entries)
suffix = suffix.replace("ROW_COVERAGE_LEMMAS", row_coverage_lemmas.rstrip())
suffix = suffix.replace("ROW_COVERAGE_NAMES", row_coverage_names)
(run / "lean" / "FiniteBoundary.lean").write_text(
    prefix + entries + suffix, encoding="utf-8"
)
print(json.dumps({"records": len(rows), "rows": len(row_pairs), "output": "lean/FiniteBoundary.lean", "trusted_generator": False}))