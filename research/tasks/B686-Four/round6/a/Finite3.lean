import research.tasks.«B686-Four».round5.worker.ContactFinite
set_option maxRecDepth 200000
set_option maxHeartbeats 6000000
namespace B686Round6A
open B686Round4K5Finite

def cutoff3 (d : ℕ) : ℕ :=
  312981296038 * d / 100000000000 - 3

theorem signs3_32000 : ∀ t : Fin 200,
    4 * product 5 (cutoff3 (t.val + 32000)) <
      product 5 (cutoff3 (t.val + 32000) + (t.val + 32000)) ∧
    product 5 (cutoff3 (t.val + 32000) + 1 + (t.val + 32000)) <
      4 * product 5 (cutoff3 (t.val + 32000) + 1) := by
  decide

theorem signs3_32200 : ∀ t : Fin 200,
    4 * product 5 (cutoff3 (t.val + 32200)) <
      product 5 (cutoff3 (t.val + 32200) + (t.val + 32200)) ∧
    product 5 (cutoff3 (t.val + 32200) + 1 + (t.val + 32200)) <
      4 * product 5 (cutoff3 (t.val + 32200) + 1) := by
  decide

theorem signs3_32400 : ∀ t : Fin 200,
    4 * product 5 (cutoff3 (t.val + 32400)) <
      product 5 (cutoff3 (t.val + 32400) + (t.val + 32400)) ∧
    product 5 (cutoff3 (t.val + 32400) + 1 + (t.val + 32400)) <
      4 * product 5 (cutoff3 (t.val + 32400) + 1) := by
  decide

theorem signs3_32600 : ∀ t : Fin 200,
    4 * product 5 (cutoff3 (t.val + 32600)) <
      product 5 (cutoff3 (t.val + 32600) + (t.val + 32600)) ∧
    product 5 (cutoff3 (t.val + 32600) + 1 + (t.val + 32600)) <
      4 * product 5 (cutoff3 (t.val + 32600) + 1) := by
  decide

theorem signs3_32800 : ∀ t : Fin 200,
    4 * product 5 (cutoff3 (t.val + 32800)) <
      product 5 (cutoff3 (t.val + 32800) + (t.val + 32800)) ∧
    product 5 (cutoff3 (t.val + 32800) + 1 + (t.val + 32800)) <
      4 * product 5 (cutoff3 (t.val + 32800) + 1) := by
  decide

theorem signs3_33000 : ∀ t : Fin 200,
    4 * product 5 (cutoff3 (t.val + 33000)) <
      product 5 (cutoff3 (t.val + 33000) + (t.val + 33000)) ∧
    product 5 (cutoff3 (t.val + 33000) + 1 + (t.val + 33000)) <
      4 * product 5 (cutoff3 (t.val + 33000) + 1) := by
  decide

theorem signs3_33200 : ∀ t : Fin 200,
    4 * product 5 (cutoff3 (t.val + 33200)) <
      product 5 (cutoff3 (t.val + 33200) + (t.val + 33200)) ∧
    product 5 (cutoff3 (t.val + 33200) + 1 + (t.val + 33200)) <
      4 * product 5 (cutoff3 (t.val + 33200) + 1) := by
  decide

theorem signs3_33400 : ∀ t : Fin 200,
    4 * product 5 (cutoff3 (t.val + 33400)) <
      product 5 (cutoff3 (t.val + 33400) + (t.val + 33400)) ∧
    product 5 (cutoff3 (t.val + 33400) + 1 + (t.val + 33400)) <
      4 * product 5 (cutoff3 (t.val + 33400) + 1) := by
  decide

theorem signs3_33600 : ∀ t : Fin 200,
    4 * product 5 (cutoff3 (t.val + 33600)) <
      product 5 (cutoff3 (t.val + 33600) + (t.val + 33600)) ∧
    product 5 (cutoff3 (t.val + 33600) + 1 + (t.val + 33600)) <
      4 * product 5 (cutoff3 (t.val + 33600) + 1) := by
  decide

theorem signs3_33800 : ∀ t : Fin 200,
    4 * product 5 (cutoff3 (t.val + 33800)) <
      product 5 (cutoff3 (t.val + 33800) + (t.val + 33800)) ∧
    product 5 (cutoff3 (t.val + 33800) + 1 + (t.val + 33800)) <
      4 * product 5 (cutoff3 (t.val + 33800) + 1) := by
  decide

theorem signs3_34000 : ∀ t : Fin 200,
    4 * product 5 (cutoff3 (t.val + 34000)) <
      product 5 (cutoff3 (t.val + 34000) + (t.val + 34000)) ∧
    product 5 (cutoff3 (t.val + 34000) + 1 + (t.val + 34000)) <
      4 * product 5 (cutoff3 (t.val + 34000) + 1) := by
  decide

theorem signs3_34200 : ∀ t : Fin 200,
    4 * product 5 (cutoff3 (t.val + 34200)) <
      product 5 (cutoff3 (t.val + 34200) + (t.val + 34200)) ∧
    product 5 (cutoff3 (t.val + 34200) + 1 + (t.val + 34200)) <
      4 * product 5 (cutoff3 (t.val + 34200) + 1) := by
  decide

theorem signs3_34400 : ∀ t : Fin 200,
    4 * product 5 (cutoff3 (t.val + 34400)) <
      product 5 (cutoff3 (t.val + 34400) + (t.val + 34400)) ∧
    product 5 (cutoff3 (t.val + 34400) + 1 + (t.val + 34400)) <
      4 * product 5 (cutoff3 (t.val + 34400) + 1) := by
  decide

theorem signs3_34600 : ∀ t : Fin 200,
    4 * product 5 (cutoff3 (t.val + 34600)) <
      product 5 (cutoff3 (t.val + 34600) + (t.val + 34600)) ∧
    product 5 (cutoff3 (t.val + 34600) + 1 + (t.val + 34600)) <
      4 * product 5 (cutoff3 (t.val + 34600) + 1) := by
  decide

theorem signs3_34800 : ∀ t : Fin 200,
    4 * product 5 (cutoff3 (t.val + 34800)) <
      product 5 (cutoff3 (t.val + 34800) + (t.val + 34800)) ∧
    product 5 (cutoff3 (t.val + 34800) + 1 + (t.val + 34800)) <
      4 * product 5 (cutoff3 (t.val + 34800) + 1) := by
  decide

theorem signs3_35000 : ∀ t : Fin 200,
    4 * product 5 (cutoff3 (t.val + 35000)) <
      product 5 (cutoff3 (t.val + 35000) + (t.val + 35000)) ∧
    product 5 (cutoff3 (t.val + 35000) + 1 + (t.val + 35000)) <
      4 * product 5 (cutoff3 (t.val + 35000) + 1) := by
  decide

theorem signs3_35200 : ∀ t : Fin 200,
    4 * product 5 (cutoff3 (t.val + 35200)) <
      product 5 (cutoff3 (t.val + 35200) + (t.val + 35200)) ∧
    product 5 (cutoff3 (t.val + 35200) + 1 + (t.val + 35200)) <
      4 * product 5 (cutoff3 (t.val + 35200) + 1) := by
  decide

theorem signs3_35400 : ∀ t : Fin 200,
    4 * product 5 (cutoff3 (t.val + 35400)) <
      product 5 (cutoff3 (t.val + 35400) + (t.val + 35400)) ∧
    product 5 (cutoff3 (t.val + 35400) + 1 + (t.val + 35400)) <
      4 * product 5 (cutoff3 (t.val + 35400) + 1) := by
  decide

theorem signs3_35600 : ∀ t : Fin 200,
    4 * product 5 (cutoff3 (t.val + 35600)) <
      product 5 (cutoff3 (t.val + 35600) + (t.val + 35600)) ∧
    product 5 (cutoff3 (t.val + 35600) + 1 + (t.val + 35600)) <
      4 * product 5 (cutoff3 (t.val + 35600) + 1) := by
  decide

theorem signs3_35800 : ∀ t : Fin 200,
    4 * product 5 (cutoff3 (t.val + 35800)) <
      product 5 (cutoff3 (t.val + 35800) + (t.val + 35800)) ∧
    product 5 (cutoff3 (t.val + 35800) + 1 + (t.val + 35800)) <
      4 * product 5 (cutoff3 (t.val + 35800) + 1) := by
  decide

theorem not_four_block3 (n d : ℕ) (hl : 32000 ≤ d) (hu : d < 36000) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  by_cases hb32000 : d < 32200
  ·
    have h := signs3_32000 ⟨d - 32000, by omega⟩
    have he : d - 32000 + 32000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff3 d) n h.1 h.2
  by_cases hb32200 : d < 32400
  ·
    have h := signs3_32200 ⟨d - 32200, by omega⟩
    have he : d - 32200 + 32200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff3 d) n h.1 h.2
  by_cases hb32400 : d < 32600
  ·
    have h := signs3_32400 ⟨d - 32400, by omega⟩
    have he : d - 32400 + 32400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff3 d) n h.1 h.2
  by_cases hb32600 : d < 32800
  ·
    have h := signs3_32600 ⟨d - 32600, by omega⟩
    have he : d - 32600 + 32600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff3 d) n h.1 h.2
  by_cases hb32800 : d < 33000
  ·
    have h := signs3_32800 ⟨d - 32800, by omega⟩
    have he : d - 32800 + 32800 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff3 d) n h.1 h.2
  by_cases hb33000 : d < 33200
  ·
    have h := signs3_33000 ⟨d - 33000, by omega⟩
    have he : d - 33000 + 33000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff3 d) n h.1 h.2
  by_cases hb33200 : d < 33400
  ·
    have h := signs3_33200 ⟨d - 33200, by omega⟩
    have he : d - 33200 + 33200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff3 d) n h.1 h.2
  by_cases hb33400 : d < 33600
  ·
    have h := signs3_33400 ⟨d - 33400, by omega⟩
    have he : d - 33400 + 33400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff3 d) n h.1 h.2
  by_cases hb33600 : d < 33800
  ·
    have h := signs3_33600 ⟨d - 33600, by omega⟩
    have he : d - 33600 + 33600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff3 d) n h.1 h.2
  by_cases hb33800 : d < 34000
  ·
    have h := signs3_33800 ⟨d - 33800, by omega⟩
    have he : d - 33800 + 33800 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff3 d) n h.1 h.2
  by_cases hb34000 : d < 34200
  ·
    have h := signs3_34000 ⟨d - 34000, by omega⟩
    have he : d - 34000 + 34000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff3 d) n h.1 h.2
  by_cases hb34200 : d < 34400
  ·
    have h := signs3_34200 ⟨d - 34200, by omega⟩
    have he : d - 34200 + 34200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff3 d) n h.1 h.2
  by_cases hb34400 : d < 34600
  ·
    have h := signs3_34400 ⟨d - 34400, by omega⟩
    have he : d - 34400 + 34400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff3 d) n h.1 h.2
  by_cases hb34600 : d < 34800
  ·
    have h := signs3_34600 ⟨d - 34600, by omega⟩
    have he : d - 34600 + 34600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff3 d) n h.1 h.2
  by_cases hb34800 : d < 35000
  ·
    have h := signs3_34800 ⟨d - 34800, by omega⟩
    have he : d - 34800 + 34800 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff3 d) n h.1 h.2
  by_cases hb35000 : d < 35200
  ·
    have h := signs3_35000 ⟨d - 35000, by omega⟩
    have he : d - 35000 + 35000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff3 d) n h.1 h.2
  by_cases hb35200 : d < 35400
  ·
    have h := signs3_35200 ⟨d - 35200, by omega⟩
    have he : d - 35200 + 35200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff3 d) n h.1 h.2
  by_cases hb35400 : d < 35600
  ·
    have h := signs3_35400 ⟨d - 35400, by omega⟩
    have he : d - 35400 + 35400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff3 d) n h.1 h.2
  by_cases hb35600 : d < 35800
  ·
    have h := signs3_35600 ⟨d - 35600, by omega⟩
    have he : d - 35600 + 35600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff3 d) n h.1 h.2
  have h := signs3_35800 ⟨d - 35800, by omega⟩
  have he : d - 35800 + 35800 = d := by omega
  simp only [he] at h
  exact not_four_of_adjacent_signs 5 d (cutoff3 d) n h.1 h.2

/-- info: 'B686Round6A.not_four_block3' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_block3
end B686Round6A
