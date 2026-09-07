import research.tasks.«B686-Four».round5.worker.ContactFinite
set_option maxRecDepth 200000
set_option maxHeartbeats 6000000
namespace B686Round6A
open B686Round4K5Finite

def cutoff7 (d : ℕ) : ℕ :=
  312981296038 * d / 100000000000 - 3

theorem signs7_48000 : ∀ t : Fin 200,
    4 * product 5 (cutoff7 (t.val + 48000)) <
      product 5 (cutoff7 (t.val + 48000) + (t.val + 48000)) ∧
    product 5 (cutoff7 (t.val + 48000) + 1 + (t.val + 48000)) <
      4 * product 5 (cutoff7 (t.val + 48000) + 1) := by
  decide

theorem signs7_48200 : ∀ t : Fin 200,
    4 * product 5 (cutoff7 (t.val + 48200)) <
      product 5 (cutoff7 (t.val + 48200) + (t.val + 48200)) ∧
    product 5 (cutoff7 (t.val + 48200) + 1 + (t.val + 48200)) <
      4 * product 5 (cutoff7 (t.val + 48200) + 1) := by
  decide

theorem signs7_48400 : ∀ t : Fin 200,
    4 * product 5 (cutoff7 (t.val + 48400)) <
      product 5 (cutoff7 (t.val + 48400) + (t.val + 48400)) ∧
    product 5 (cutoff7 (t.val + 48400) + 1 + (t.val + 48400)) <
      4 * product 5 (cutoff7 (t.val + 48400) + 1) := by
  decide

theorem signs7_48600 : ∀ t : Fin 200,
    4 * product 5 (cutoff7 (t.val + 48600)) <
      product 5 (cutoff7 (t.val + 48600) + (t.val + 48600)) ∧
    product 5 (cutoff7 (t.val + 48600) + 1 + (t.val + 48600)) <
      4 * product 5 (cutoff7 (t.val + 48600) + 1) := by
  decide

theorem signs7_48800 : ∀ t : Fin 200,
    4 * product 5 (cutoff7 (t.val + 48800)) <
      product 5 (cutoff7 (t.val + 48800) + (t.val + 48800)) ∧
    product 5 (cutoff7 (t.val + 48800) + 1 + (t.val + 48800)) <
      4 * product 5 (cutoff7 (t.val + 48800) + 1) := by
  decide

theorem signs7_49000 : ∀ t : Fin 200,
    4 * product 5 (cutoff7 (t.val + 49000)) <
      product 5 (cutoff7 (t.val + 49000) + (t.val + 49000)) ∧
    product 5 (cutoff7 (t.val + 49000) + 1 + (t.val + 49000)) <
      4 * product 5 (cutoff7 (t.val + 49000) + 1) := by
  decide

theorem signs7_49200 : ∀ t : Fin 200,
    4 * product 5 (cutoff7 (t.val + 49200)) <
      product 5 (cutoff7 (t.val + 49200) + (t.val + 49200)) ∧
    product 5 (cutoff7 (t.val + 49200) + 1 + (t.val + 49200)) <
      4 * product 5 (cutoff7 (t.val + 49200) + 1) := by
  decide

theorem signs7_49400 : ∀ t : Fin 200,
    4 * product 5 (cutoff7 (t.val + 49400)) <
      product 5 (cutoff7 (t.val + 49400) + (t.val + 49400)) ∧
    product 5 (cutoff7 (t.val + 49400) + 1 + (t.val + 49400)) <
      4 * product 5 (cutoff7 (t.val + 49400) + 1) := by
  decide

theorem signs7_49600 : ∀ t : Fin 200,
    4 * product 5 (cutoff7 (t.val + 49600)) <
      product 5 (cutoff7 (t.val + 49600) + (t.val + 49600)) ∧
    product 5 (cutoff7 (t.val + 49600) + 1 + (t.val + 49600)) <
      4 * product 5 (cutoff7 (t.val + 49600) + 1) := by
  decide

theorem signs7_49800 : ∀ t : Fin 200,
    4 * product 5 (cutoff7 (t.val + 49800)) <
      product 5 (cutoff7 (t.val + 49800) + (t.val + 49800)) ∧
    product 5 (cutoff7 (t.val + 49800) + 1 + (t.val + 49800)) <
      4 * product 5 (cutoff7 (t.val + 49800) + 1) := by
  decide

theorem not_four_block7 (n d : ℕ) (hl : 48000 ≤ d) (hu : d < 50000) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  by_cases hb48000 : d < 48200
  ·
    have h := signs7_48000 ⟨d - 48000, by omega⟩
    have he : d - 48000 + 48000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff7 d) n h.1 h.2
  by_cases hb48200 : d < 48400
  ·
    have h := signs7_48200 ⟨d - 48200, by omega⟩
    have he : d - 48200 + 48200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff7 d) n h.1 h.2
  by_cases hb48400 : d < 48600
  ·
    have h := signs7_48400 ⟨d - 48400, by omega⟩
    have he : d - 48400 + 48400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff7 d) n h.1 h.2
  by_cases hb48600 : d < 48800
  ·
    have h := signs7_48600 ⟨d - 48600, by omega⟩
    have he : d - 48600 + 48600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff7 d) n h.1 h.2
  by_cases hb48800 : d < 49000
  ·
    have h := signs7_48800 ⟨d - 48800, by omega⟩
    have he : d - 48800 + 48800 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff7 d) n h.1 h.2
  by_cases hb49000 : d < 49200
  ·
    have h := signs7_49000 ⟨d - 49000, by omega⟩
    have he : d - 49000 + 49000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff7 d) n h.1 h.2
  by_cases hb49200 : d < 49400
  ·
    have h := signs7_49200 ⟨d - 49200, by omega⟩
    have he : d - 49200 + 49200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff7 d) n h.1 h.2
  by_cases hb49400 : d < 49600
  ·
    have h := signs7_49400 ⟨d - 49400, by omega⟩
    have he : d - 49400 + 49400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff7 d) n h.1 h.2
  by_cases hb49600 : d < 49800
  ·
    have h := signs7_49600 ⟨d - 49600, by omega⟩
    have he : d - 49600 + 49600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff7 d) n h.1 h.2
  have h := signs7_49800 ⟨d - 49800, by omega⟩
  have he : d - 49800 + 49800 = d := by omega
  simp only [he] at h
  exact not_four_of_adjacent_signs 5 d (cutoff7 d) n h.1 h.2

/-- info: 'B686Round6A.not_four_block7' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_block7
end B686Round6A
