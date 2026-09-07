import research.tasks.«B686-Four».round5.worker.ContactFinite
set_option maxRecDepth 200000
set_option maxHeartbeats 6000000
namespace B686Round6A
open B686Round4K5Finite

def cutoff1 (d : ℕ) : ℕ :=
  312981296038 * d / 100000000000 - 3

theorem signs1_24000 : ∀ t : Fin 200,
    4 * product 5 (cutoff1 (t.val + 24000)) <
      product 5 (cutoff1 (t.val + 24000) + (t.val + 24000)) ∧
    product 5 (cutoff1 (t.val + 24000) + 1 + (t.val + 24000)) <
      4 * product 5 (cutoff1 (t.val + 24000) + 1) := by
  decide

theorem signs1_24200 : ∀ t : Fin 200,
    4 * product 5 (cutoff1 (t.val + 24200)) <
      product 5 (cutoff1 (t.val + 24200) + (t.val + 24200)) ∧
    product 5 (cutoff1 (t.val + 24200) + 1 + (t.val + 24200)) <
      4 * product 5 (cutoff1 (t.val + 24200) + 1) := by
  decide

theorem signs1_24400 : ∀ t : Fin 200,
    4 * product 5 (cutoff1 (t.val + 24400)) <
      product 5 (cutoff1 (t.val + 24400) + (t.val + 24400)) ∧
    product 5 (cutoff1 (t.val + 24400) + 1 + (t.val + 24400)) <
      4 * product 5 (cutoff1 (t.val + 24400) + 1) := by
  decide

theorem signs1_24600 : ∀ t : Fin 200,
    4 * product 5 (cutoff1 (t.val + 24600)) <
      product 5 (cutoff1 (t.val + 24600) + (t.val + 24600)) ∧
    product 5 (cutoff1 (t.val + 24600) + 1 + (t.val + 24600)) <
      4 * product 5 (cutoff1 (t.val + 24600) + 1) := by
  decide

theorem signs1_24800 : ∀ t : Fin 200,
    4 * product 5 (cutoff1 (t.val + 24800)) <
      product 5 (cutoff1 (t.val + 24800) + (t.val + 24800)) ∧
    product 5 (cutoff1 (t.val + 24800) + 1 + (t.val + 24800)) <
      4 * product 5 (cutoff1 (t.val + 24800) + 1) := by
  decide

theorem signs1_25000 : ∀ t : Fin 200,
    4 * product 5 (cutoff1 (t.val + 25000)) <
      product 5 (cutoff1 (t.val + 25000) + (t.val + 25000)) ∧
    product 5 (cutoff1 (t.val + 25000) + 1 + (t.val + 25000)) <
      4 * product 5 (cutoff1 (t.val + 25000) + 1) := by
  decide

theorem signs1_25200 : ∀ t : Fin 200,
    4 * product 5 (cutoff1 (t.val + 25200)) <
      product 5 (cutoff1 (t.val + 25200) + (t.val + 25200)) ∧
    product 5 (cutoff1 (t.val + 25200) + 1 + (t.val + 25200)) <
      4 * product 5 (cutoff1 (t.val + 25200) + 1) := by
  decide

theorem signs1_25400 : ∀ t : Fin 200,
    4 * product 5 (cutoff1 (t.val + 25400)) <
      product 5 (cutoff1 (t.val + 25400) + (t.val + 25400)) ∧
    product 5 (cutoff1 (t.val + 25400) + 1 + (t.val + 25400)) <
      4 * product 5 (cutoff1 (t.val + 25400) + 1) := by
  decide

theorem signs1_25600 : ∀ t : Fin 200,
    4 * product 5 (cutoff1 (t.val + 25600)) <
      product 5 (cutoff1 (t.val + 25600) + (t.val + 25600)) ∧
    product 5 (cutoff1 (t.val + 25600) + 1 + (t.val + 25600)) <
      4 * product 5 (cutoff1 (t.val + 25600) + 1) := by
  decide

theorem signs1_25800 : ∀ t : Fin 200,
    4 * product 5 (cutoff1 (t.val + 25800)) <
      product 5 (cutoff1 (t.val + 25800) + (t.val + 25800)) ∧
    product 5 (cutoff1 (t.val + 25800) + 1 + (t.val + 25800)) <
      4 * product 5 (cutoff1 (t.val + 25800) + 1) := by
  decide

theorem signs1_26000 : ∀ t : Fin 200,
    4 * product 5 (cutoff1 (t.val + 26000)) <
      product 5 (cutoff1 (t.val + 26000) + (t.val + 26000)) ∧
    product 5 (cutoff1 (t.val + 26000) + 1 + (t.val + 26000)) <
      4 * product 5 (cutoff1 (t.val + 26000) + 1) := by
  decide

theorem signs1_26200 : ∀ t : Fin 200,
    4 * product 5 (cutoff1 (t.val + 26200)) <
      product 5 (cutoff1 (t.val + 26200) + (t.val + 26200)) ∧
    product 5 (cutoff1 (t.val + 26200) + 1 + (t.val + 26200)) <
      4 * product 5 (cutoff1 (t.val + 26200) + 1) := by
  decide

theorem signs1_26400 : ∀ t : Fin 200,
    4 * product 5 (cutoff1 (t.val + 26400)) <
      product 5 (cutoff1 (t.val + 26400) + (t.val + 26400)) ∧
    product 5 (cutoff1 (t.val + 26400) + 1 + (t.val + 26400)) <
      4 * product 5 (cutoff1 (t.val + 26400) + 1) := by
  decide

theorem signs1_26600 : ∀ t : Fin 200,
    4 * product 5 (cutoff1 (t.val + 26600)) <
      product 5 (cutoff1 (t.val + 26600) + (t.val + 26600)) ∧
    product 5 (cutoff1 (t.val + 26600) + 1 + (t.val + 26600)) <
      4 * product 5 (cutoff1 (t.val + 26600) + 1) := by
  decide

theorem signs1_26800 : ∀ t : Fin 200,
    4 * product 5 (cutoff1 (t.val + 26800)) <
      product 5 (cutoff1 (t.val + 26800) + (t.val + 26800)) ∧
    product 5 (cutoff1 (t.val + 26800) + 1 + (t.val + 26800)) <
      4 * product 5 (cutoff1 (t.val + 26800) + 1) := by
  decide

theorem signs1_27000 : ∀ t : Fin 200,
    4 * product 5 (cutoff1 (t.val + 27000)) <
      product 5 (cutoff1 (t.val + 27000) + (t.val + 27000)) ∧
    product 5 (cutoff1 (t.val + 27000) + 1 + (t.val + 27000)) <
      4 * product 5 (cutoff1 (t.val + 27000) + 1) := by
  decide

theorem signs1_27200 : ∀ t : Fin 200,
    4 * product 5 (cutoff1 (t.val + 27200)) <
      product 5 (cutoff1 (t.val + 27200) + (t.val + 27200)) ∧
    product 5 (cutoff1 (t.val + 27200) + 1 + (t.val + 27200)) <
      4 * product 5 (cutoff1 (t.val + 27200) + 1) := by
  decide

theorem signs1_27400 : ∀ t : Fin 200,
    4 * product 5 (cutoff1 (t.val + 27400)) <
      product 5 (cutoff1 (t.val + 27400) + (t.val + 27400)) ∧
    product 5 (cutoff1 (t.val + 27400) + 1 + (t.val + 27400)) <
      4 * product 5 (cutoff1 (t.val + 27400) + 1) := by
  decide

theorem signs1_27600 : ∀ t : Fin 200,
    4 * product 5 (cutoff1 (t.val + 27600)) <
      product 5 (cutoff1 (t.val + 27600) + (t.val + 27600)) ∧
    product 5 (cutoff1 (t.val + 27600) + 1 + (t.val + 27600)) <
      4 * product 5 (cutoff1 (t.val + 27600) + 1) := by
  decide

theorem signs1_27800 : ∀ t : Fin 200,
    4 * product 5 (cutoff1 (t.val + 27800)) <
      product 5 (cutoff1 (t.val + 27800) + (t.val + 27800)) ∧
    product 5 (cutoff1 (t.val + 27800) + 1 + (t.val + 27800)) <
      4 * product 5 (cutoff1 (t.val + 27800) + 1) := by
  decide

theorem not_four_block1 (n d : ℕ) (hl : 24000 ≤ d) (hu : d < 28000) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  by_cases hb24000 : d < 24200
  ·
    have h := signs1_24000 ⟨d - 24000, by omega⟩
    have he : d - 24000 + 24000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff1 d) n h.1 h.2
  by_cases hb24200 : d < 24400
  ·
    have h := signs1_24200 ⟨d - 24200, by omega⟩
    have he : d - 24200 + 24200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff1 d) n h.1 h.2
  by_cases hb24400 : d < 24600
  ·
    have h := signs1_24400 ⟨d - 24400, by omega⟩
    have he : d - 24400 + 24400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff1 d) n h.1 h.2
  by_cases hb24600 : d < 24800
  ·
    have h := signs1_24600 ⟨d - 24600, by omega⟩
    have he : d - 24600 + 24600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff1 d) n h.1 h.2
  by_cases hb24800 : d < 25000
  ·
    have h := signs1_24800 ⟨d - 24800, by omega⟩
    have he : d - 24800 + 24800 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff1 d) n h.1 h.2
  by_cases hb25000 : d < 25200
  ·
    have h := signs1_25000 ⟨d - 25000, by omega⟩
    have he : d - 25000 + 25000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff1 d) n h.1 h.2
  by_cases hb25200 : d < 25400
  ·
    have h := signs1_25200 ⟨d - 25200, by omega⟩
    have he : d - 25200 + 25200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff1 d) n h.1 h.2
  by_cases hb25400 : d < 25600
  ·
    have h := signs1_25400 ⟨d - 25400, by omega⟩
    have he : d - 25400 + 25400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff1 d) n h.1 h.2
  by_cases hb25600 : d < 25800
  ·
    have h := signs1_25600 ⟨d - 25600, by omega⟩
    have he : d - 25600 + 25600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff1 d) n h.1 h.2
  by_cases hb25800 : d < 26000
  ·
    have h := signs1_25800 ⟨d - 25800, by omega⟩
    have he : d - 25800 + 25800 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff1 d) n h.1 h.2
  by_cases hb26000 : d < 26200
  ·
    have h := signs1_26000 ⟨d - 26000, by omega⟩
    have he : d - 26000 + 26000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff1 d) n h.1 h.2
  by_cases hb26200 : d < 26400
  ·
    have h := signs1_26200 ⟨d - 26200, by omega⟩
    have he : d - 26200 + 26200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff1 d) n h.1 h.2
  by_cases hb26400 : d < 26600
  ·
    have h := signs1_26400 ⟨d - 26400, by omega⟩
    have he : d - 26400 + 26400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff1 d) n h.1 h.2
  by_cases hb26600 : d < 26800
  ·
    have h := signs1_26600 ⟨d - 26600, by omega⟩
    have he : d - 26600 + 26600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff1 d) n h.1 h.2
  by_cases hb26800 : d < 27000
  ·
    have h := signs1_26800 ⟨d - 26800, by omega⟩
    have he : d - 26800 + 26800 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff1 d) n h.1 h.2
  by_cases hb27000 : d < 27200
  ·
    have h := signs1_27000 ⟨d - 27000, by omega⟩
    have he : d - 27000 + 27000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff1 d) n h.1 h.2
  by_cases hb27200 : d < 27400
  ·
    have h := signs1_27200 ⟨d - 27200, by omega⟩
    have he : d - 27200 + 27200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff1 d) n h.1 h.2
  by_cases hb27400 : d < 27600
  ·
    have h := signs1_27400 ⟨d - 27400, by omega⟩
    have he : d - 27400 + 27400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff1 d) n h.1 h.2
  by_cases hb27600 : d < 27800
  ·
    have h := signs1_27600 ⟨d - 27600, by omega⟩
    have he : d - 27600 + 27600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff1 d) n h.1 h.2
  have h := signs1_27800 ⟨d - 27800, by omega⟩
  have he : d - 27800 + 27800 = d := by omega
  simp only [he] at h
  exact not_four_of_adjacent_signs 5 d (cutoff1 d) n h.1 h.2

/-- info: 'B686Round6A.not_four_block1' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_block1
end B686Round6A
