import research.tasks.«B686-Four».round5.worker.ContactFinite
set_option maxRecDepth 200000
set_option maxHeartbeats 6000000
namespace B686Round6A
open B686Round4K5Finite

def cutoff4 (d : ℕ) : ℕ :=
  312981296038 * d / 100000000000 - 3

theorem signs4_36000 : ∀ t : Fin 200,
    4 * product 5 (cutoff4 (t.val + 36000)) <
      product 5 (cutoff4 (t.val + 36000) + (t.val + 36000)) ∧
    product 5 (cutoff4 (t.val + 36000) + 1 + (t.val + 36000)) <
      4 * product 5 (cutoff4 (t.val + 36000) + 1) := by
  decide

theorem signs4_36200 : ∀ t : Fin 200,
    4 * product 5 (cutoff4 (t.val + 36200)) <
      product 5 (cutoff4 (t.val + 36200) + (t.val + 36200)) ∧
    product 5 (cutoff4 (t.val + 36200) + 1 + (t.val + 36200)) <
      4 * product 5 (cutoff4 (t.val + 36200) + 1) := by
  decide

theorem signs4_36400 : ∀ t : Fin 200,
    4 * product 5 (cutoff4 (t.val + 36400)) <
      product 5 (cutoff4 (t.val + 36400) + (t.val + 36400)) ∧
    product 5 (cutoff4 (t.val + 36400) + 1 + (t.val + 36400)) <
      4 * product 5 (cutoff4 (t.val + 36400) + 1) := by
  decide

theorem signs4_36600 : ∀ t : Fin 200,
    4 * product 5 (cutoff4 (t.val + 36600)) <
      product 5 (cutoff4 (t.val + 36600) + (t.val + 36600)) ∧
    product 5 (cutoff4 (t.val + 36600) + 1 + (t.val + 36600)) <
      4 * product 5 (cutoff4 (t.val + 36600) + 1) := by
  decide

theorem signs4_36800 : ∀ t : Fin 200,
    4 * product 5 (cutoff4 (t.val + 36800)) <
      product 5 (cutoff4 (t.val + 36800) + (t.val + 36800)) ∧
    product 5 (cutoff4 (t.val + 36800) + 1 + (t.val + 36800)) <
      4 * product 5 (cutoff4 (t.val + 36800) + 1) := by
  decide

theorem signs4_37000 : ∀ t : Fin 200,
    4 * product 5 (cutoff4 (t.val + 37000)) <
      product 5 (cutoff4 (t.val + 37000) + (t.val + 37000)) ∧
    product 5 (cutoff4 (t.val + 37000) + 1 + (t.val + 37000)) <
      4 * product 5 (cutoff4 (t.val + 37000) + 1) := by
  decide

theorem signs4_37200 : ∀ t : Fin 200,
    4 * product 5 (cutoff4 (t.val + 37200)) <
      product 5 (cutoff4 (t.val + 37200) + (t.val + 37200)) ∧
    product 5 (cutoff4 (t.val + 37200) + 1 + (t.val + 37200)) <
      4 * product 5 (cutoff4 (t.val + 37200) + 1) := by
  decide

theorem signs4_37400 : ∀ t : Fin 200,
    4 * product 5 (cutoff4 (t.val + 37400)) <
      product 5 (cutoff4 (t.val + 37400) + (t.val + 37400)) ∧
    product 5 (cutoff4 (t.val + 37400) + 1 + (t.val + 37400)) <
      4 * product 5 (cutoff4 (t.val + 37400) + 1) := by
  decide

theorem signs4_37600 : ∀ t : Fin 200,
    4 * product 5 (cutoff4 (t.val + 37600)) <
      product 5 (cutoff4 (t.val + 37600) + (t.val + 37600)) ∧
    product 5 (cutoff4 (t.val + 37600) + 1 + (t.val + 37600)) <
      4 * product 5 (cutoff4 (t.val + 37600) + 1) := by
  decide

theorem signs4_37800 : ∀ t : Fin 200,
    4 * product 5 (cutoff4 (t.val + 37800)) <
      product 5 (cutoff4 (t.val + 37800) + (t.val + 37800)) ∧
    product 5 (cutoff4 (t.val + 37800) + 1 + (t.val + 37800)) <
      4 * product 5 (cutoff4 (t.val + 37800) + 1) := by
  decide

theorem signs4_38000 : ∀ t : Fin 200,
    4 * product 5 (cutoff4 (t.val + 38000)) <
      product 5 (cutoff4 (t.val + 38000) + (t.val + 38000)) ∧
    product 5 (cutoff4 (t.val + 38000) + 1 + (t.val + 38000)) <
      4 * product 5 (cutoff4 (t.val + 38000) + 1) := by
  decide

theorem signs4_38200 : ∀ t : Fin 200,
    4 * product 5 (cutoff4 (t.val + 38200)) <
      product 5 (cutoff4 (t.val + 38200) + (t.val + 38200)) ∧
    product 5 (cutoff4 (t.val + 38200) + 1 + (t.val + 38200)) <
      4 * product 5 (cutoff4 (t.val + 38200) + 1) := by
  decide

theorem signs4_38400 : ∀ t : Fin 200,
    4 * product 5 (cutoff4 (t.val + 38400)) <
      product 5 (cutoff4 (t.val + 38400) + (t.val + 38400)) ∧
    product 5 (cutoff4 (t.val + 38400) + 1 + (t.val + 38400)) <
      4 * product 5 (cutoff4 (t.val + 38400) + 1) := by
  decide

theorem signs4_38600 : ∀ t : Fin 200,
    4 * product 5 (cutoff4 (t.val + 38600)) <
      product 5 (cutoff4 (t.val + 38600) + (t.val + 38600)) ∧
    product 5 (cutoff4 (t.val + 38600) + 1 + (t.val + 38600)) <
      4 * product 5 (cutoff4 (t.val + 38600) + 1) := by
  decide

theorem signs4_38800 : ∀ t : Fin 200,
    4 * product 5 (cutoff4 (t.val + 38800)) <
      product 5 (cutoff4 (t.val + 38800) + (t.val + 38800)) ∧
    product 5 (cutoff4 (t.val + 38800) + 1 + (t.val + 38800)) <
      4 * product 5 (cutoff4 (t.val + 38800) + 1) := by
  decide

theorem signs4_39000 : ∀ t : Fin 200,
    4 * product 5 (cutoff4 (t.val + 39000)) <
      product 5 (cutoff4 (t.val + 39000) + (t.val + 39000)) ∧
    product 5 (cutoff4 (t.val + 39000) + 1 + (t.val + 39000)) <
      4 * product 5 (cutoff4 (t.val + 39000) + 1) := by
  decide

theorem signs4_39200 : ∀ t : Fin 200,
    4 * product 5 (cutoff4 (t.val + 39200)) <
      product 5 (cutoff4 (t.val + 39200) + (t.val + 39200)) ∧
    product 5 (cutoff4 (t.val + 39200) + 1 + (t.val + 39200)) <
      4 * product 5 (cutoff4 (t.val + 39200) + 1) := by
  decide

theorem signs4_39400 : ∀ t : Fin 200,
    4 * product 5 (cutoff4 (t.val + 39400)) <
      product 5 (cutoff4 (t.val + 39400) + (t.val + 39400)) ∧
    product 5 (cutoff4 (t.val + 39400) + 1 + (t.val + 39400)) <
      4 * product 5 (cutoff4 (t.val + 39400) + 1) := by
  decide

theorem signs4_39600 : ∀ t : Fin 200,
    4 * product 5 (cutoff4 (t.val + 39600)) <
      product 5 (cutoff4 (t.val + 39600) + (t.val + 39600)) ∧
    product 5 (cutoff4 (t.val + 39600) + 1 + (t.val + 39600)) <
      4 * product 5 (cutoff4 (t.val + 39600) + 1) := by
  decide

theorem signs4_39800 : ∀ t : Fin 200,
    4 * product 5 (cutoff4 (t.val + 39800)) <
      product 5 (cutoff4 (t.val + 39800) + (t.val + 39800)) ∧
    product 5 (cutoff4 (t.val + 39800) + 1 + (t.val + 39800)) <
      4 * product 5 (cutoff4 (t.val + 39800) + 1) := by
  decide

theorem not_four_block4 (n d : ℕ) (hl : 36000 ≤ d) (hu : d < 40000) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  by_cases hb36000 : d < 36200
  ·
    have h := signs4_36000 ⟨d - 36000, by omega⟩
    have he : d - 36000 + 36000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff4 d) n h.1 h.2
  by_cases hb36200 : d < 36400
  ·
    have h := signs4_36200 ⟨d - 36200, by omega⟩
    have he : d - 36200 + 36200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff4 d) n h.1 h.2
  by_cases hb36400 : d < 36600
  ·
    have h := signs4_36400 ⟨d - 36400, by omega⟩
    have he : d - 36400 + 36400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff4 d) n h.1 h.2
  by_cases hb36600 : d < 36800
  ·
    have h := signs4_36600 ⟨d - 36600, by omega⟩
    have he : d - 36600 + 36600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff4 d) n h.1 h.2
  by_cases hb36800 : d < 37000
  ·
    have h := signs4_36800 ⟨d - 36800, by omega⟩
    have he : d - 36800 + 36800 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff4 d) n h.1 h.2
  by_cases hb37000 : d < 37200
  ·
    have h := signs4_37000 ⟨d - 37000, by omega⟩
    have he : d - 37000 + 37000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff4 d) n h.1 h.2
  by_cases hb37200 : d < 37400
  ·
    have h := signs4_37200 ⟨d - 37200, by omega⟩
    have he : d - 37200 + 37200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff4 d) n h.1 h.2
  by_cases hb37400 : d < 37600
  ·
    have h := signs4_37400 ⟨d - 37400, by omega⟩
    have he : d - 37400 + 37400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff4 d) n h.1 h.2
  by_cases hb37600 : d < 37800
  ·
    have h := signs4_37600 ⟨d - 37600, by omega⟩
    have he : d - 37600 + 37600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff4 d) n h.1 h.2
  by_cases hb37800 : d < 38000
  ·
    have h := signs4_37800 ⟨d - 37800, by omega⟩
    have he : d - 37800 + 37800 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff4 d) n h.1 h.2
  by_cases hb38000 : d < 38200
  ·
    have h := signs4_38000 ⟨d - 38000, by omega⟩
    have he : d - 38000 + 38000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff4 d) n h.1 h.2
  by_cases hb38200 : d < 38400
  ·
    have h := signs4_38200 ⟨d - 38200, by omega⟩
    have he : d - 38200 + 38200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff4 d) n h.1 h.2
  by_cases hb38400 : d < 38600
  ·
    have h := signs4_38400 ⟨d - 38400, by omega⟩
    have he : d - 38400 + 38400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff4 d) n h.1 h.2
  by_cases hb38600 : d < 38800
  ·
    have h := signs4_38600 ⟨d - 38600, by omega⟩
    have he : d - 38600 + 38600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff4 d) n h.1 h.2
  by_cases hb38800 : d < 39000
  ·
    have h := signs4_38800 ⟨d - 38800, by omega⟩
    have he : d - 38800 + 38800 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff4 d) n h.1 h.2
  by_cases hb39000 : d < 39200
  ·
    have h := signs4_39000 ⟨d - 39000, by omega⟩
    have he : d - 39000 + 39000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff4 d) n h.1 h.2
  by_cases hb39200 : d < 39400
  ·
    have h := signs4_39200 ⟨d - 39200, by omega⟩
    have he : d - 39200 + 39200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff4 d) n h.1 h.2
  by_cases hb39400 : d < 39600
  ·
    have h := signs4_39400 ⟨d - 39400, by omega⟩
    have he : d - 39400 + 39400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff4 d) n h.1 h.2
  by_cases hb39600 : d < 39800
  ·
    have h := signs4_39600 ⟨d - 39600, by omega⟩
    have he : d - 39600 + 39600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff4 d) n h.1 h.2
  have h := signs4_39800 ⟨d - 39800, by omega⟩
  have he : d - 39800 + 39800 = d := by omega
  simp only [he] at h
  exact not_four_of_adjacent_signs 5 d (cutoff4 d) n h.1 h.2

/-- info: 'B686Round6A.not_four_block4' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_block4
end B686Round6A
