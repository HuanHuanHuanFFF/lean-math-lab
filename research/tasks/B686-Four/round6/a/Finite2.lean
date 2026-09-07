import research.tasks.«B686-Four».round5.worker.ContactFinite
set_option maxRecDepth 200000
set_option maxHeartbeats 6000000
namespace B686Round6A
open B686Round4K5Finite

def cutoff2 (d : ℕ) : ℕ :=
  312981296038 * d / 100000000000 - 3

theorem signs2_28000 : ∀ t : Fin 200,
    4 * product 5 (cutoff2 (t.val + 28000)) <
      product 5 (cutoff2 (t.val + 28000) + (t.val + 28000)) ∧
    product 5 (cutoff2 (t.val + 28000) + 1 + (t.val + 28000)) <
      4 * product 5 (cutoff2 (t.val + 28000) + 1) := by
  decide

theorem signs2_28200 : ∀ t : Fin 200,
    4 * product 5 (cutoff2 (t.val + 28200)) <
      product 5 (cutoff2 (t.val + 28200) + (t.val + 28200)) ∧
    product 5 (cutoff2 (t.val + 28200) + 1 + (t.val + 28200)) <
      4 * product 5 (cutoff2 (t.val + 28200) + 1) := by
  decide

theorem signs2_28400 : ∀ t : Fin 200,
    4 * product 5 (cutoff2 (t.val + 28400)) <
      product 5 (cutoff2 (t.val + 28400) + (t.val + 28400)) ∧
    product 5 (cutoff2 (t.val + 28400) + 1 + (t.val + 28400)) <
      4 * product 5 (cutoff2 (t.val + 28400) + 1) := by
  decide

theorem signs2_28600 : ∀ t : Fin 200,
    4 * product 5 (cutoff2 (t.val + 28600)) <
      product 5 (cutoff2 (t.val + 28600) + (t.val + 28600)) ∧
    product 5 (cutoff2 (t.val + 28600) + 1 + (t.val + 28600)) <
      4 * product 5 (cutoff2 (t.val + 28600) + 1) := by
  decide

theorem signs2_28800 : ∀ t : Fin 200,
    4 * product 5 (cutoff2 (t.val + 28800)) <
      product 5 (cutoff2 (t.val + 28800) + (t.val + 28800)) ∧
    product 5 (cutoff2 (t.val + 28800) + 1 + (t.val + 28800)) <
      4 * product 5 (cutoff2 (t.val + 28800) + 1) := by
  decide

theorem signs2_29000 : ∀ t : Fin 200,
    4 * product 5 (cutoff2 (t.val + 29000)) <
      product 5 (cutoff2 (t.val + 29000) + (t.val + 29000)) ∧
    product 5 (cutoff2 (t.val + 29000) + 1 + (t.val + 29000)) <
      4 * product 5 (cutoff2 (t.val + 29000) + 1) := by
  decide

theorem signs2_29200 : ∀ t : Fin 200,
    4 * product 5 (cutoff2 (t.val + 29200)) <
      product 5 (cutoff2 (t.val + 29200) + (t.val + 29200)) ∧
    product 5 (cutoff2 (t.val + 29200) + 1 + (t.val + 29200)) <
      4 * product 5 (cutoff2 (t.val + 29200) + 1) := by
  decide

theorem signs2_29400 : ∀ t : Fin 200,
    4 * product 5 (cutoff2 (t.val + 29400)) <
      product 5 (cutoff2 (t.val + 29400) + (t.val + 29400)) ∧
    product 5 (cutoff2 (t.val + 29400) + 1 + (t.val + 29400)) <
      4 * product 5 (cutoff2 (t.val + 29400) + 1) := by
  decide

theorem signs2_29600 : ∀ t : Fin 200,
    4 * product 5 (cutoff2 (t.val + 29600)) <
      product 5 (cutoff2 (t.val + 29600) + (t.val + 29600)) ∧
    product 5 (cutoff2 (t.val + 29600) + 1 + (t.val + 29600)) <
      4 * product 5 (cutoff2 (t.val + 29600) + 1) := by
  decide

theorem signs2_29800 : ∀ t : Fin 200,
    4 * product 5 (cutoff2 (t.val + 29800)) <
      product 5 (cutoff2 (t.val + 29800) + (t.val + 29800)) ∧
    product 5 (cutoff2 (t.val + 29800) + 1 + (t.val + 29800)) <
      4 * product 5 (cutoff2 (t.val + 29800) + 1) := by
  decide

theorem signs2_30000 : ∀ t : Fin 200,
    4 * product 5 (cutoff2 (t.val + 30000)) <
      product 5 (cutoff2 (t.val + 30000) + (t.val + 30000)) ∧
    product 5 (cutoff2 (t.val + 30000) + 1 + (t.val + 30000)) <
      4 * product 5 (cutoff2 (t.val + 30000) + 1) := by
  decide

theorem signs2_30200 : ∀ t : Fin 200,
    4 * product 5 (cutoff2 (t.val + 30200)) <
      product 5 (cutoff2 (t.val + 30200) + (t.val + 30200)) ∧
    product 5 (cutoff2 (t.val + 30200) + 1 + (t.val + 30200)) <
      4 * product 5 (cutoff2 (t.val + 30200) + 1) := by
  decide

theorem signs2_30400 : ∀ t : Fin 200,
    4 * product 5 (cutoff2 (t.val + 30400)) <
      product 5 (cutoff2 (t.val + 30400) + (t.val + 30400)) ∧
    product 5 (cutoff2 (t.val + 30400) + 1 + (t.val + 30400)) <
      4 * product 5 (cutoff2 (t.val + 30400) + 1) := by
  decide

theorem signs2_30600 : ∀ t : Fin 200,
    4 * product 5 (cutoff2 (t.val + 30600)) <
      product 5 (cutoff2 (t.val + 30600) + (t.val + 30600)) ∧
    product 5 (cutoff2 (t.val + 30600) + 1 + (t.val + 30600)) <
      4 * product 5 (cutoff2 (t.val + 30600) + 1) := by
  decide

theorem signs2_30800 : ∀ t : Fin 200,
    4 * product 5 (cutoff2 (t.val + 30800)) <
      product 5 (cutoff2 (t.val + 30800) + (t.val + 30800)) ∧
    product 5 (cutoff2 (t.val + 30800) + 1 + (t.val + 30800)) <
      4 * product 5 (cutoff2 (t.val + 30800) + 1) := by
  decide

theorem signs2_31000 : ∀ t : Fin 200,
    4 * product 5 (cutoff2 (t.val + 31000)) <
      product 5 (cutoff2 (t.val + 31000) + (t.val + 31000)) ∧
    product 5 (cutoff2 (t.val + 31000) + 1 + (t.val + 31000)) <
      4 * product 5 (cutoff2 (t.val + 31000) + 1) := by
  decide

theorem signs2_31200 : ∀ t : Fin 200,
    4 * product 5 (cutoff2 (t.val + 31200)) <
      product 5 (cutoff2 (t.val + 31200) + (t.val + 31200)) ∧
    product 5 (cutoff2 (t.val + 31200) + 1 + (t.val + 31200)) <
      4 * product 5 (cutoff2 (t.val + 31200) + 1) := by
  decide

theorem signs2_31400 : ∀ t : Fin 200,
    4 * product 5 (cutoff2 (t.val + 31400)) <
      product 5 (cutoff2 (t.val + 31400) + (t.val + 31400)) ∧
    product 5 (cutoff2 (t.val + 31400) + 1 + (t.val + 31400)) <
      4 * product 5 (cutoff2 (t.val + 31400) + 1) := by
  decide

theorem signs2_31600 : ∀ t : Fin 200,
    4 * product 5 (cutoff2 (t.val + 31600)) <
      product 5 (cutoff2 (t.val + 31600) + (t.val + 31600)) ∧
    product 5 (cutoff2 (t.val + 31600) + 1 + (t.val + 31600)) <
      4 * product 5 (cutoff2 (t.val + 31600) + 1) := by
  decide

theorem signs2_31800 : ∀ t : Fin 200,
    4 * product 5 (cutoff2 (t.val + 31800)) <
      product 5 (cutoff2 (t.val + 31800) + (t.val + 31800)) ∧
    product 5 (cutoff2 (t.val + 31800) + 1 + (t.val + 31800)) <
      4 * product 5 (cutoff2 (t.val + 31800) + 1) := by
  decide

theorem not_four_block2 (n d : ℕ) (hl : 28000 ≤ d) (hu : d < 32000) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  by_cases hb28000 : d < 28200
  ·
    have h := signs2_28000 ⟨d - 28000, by omega⟩
    have he : d - 28000 + 28000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff2 d) n h.1 h.2
  by_cases hb28200 : d < 28400
  ·
    have h := signs2_28200 ⟨d - 28200, by omega⟩
    have he : d - 28200 + 28200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff2 d) n h.1 h.2
  by_cases hb28400 : d < 28600
  ·
    have h := signs2_28400 ⟨d - 28400, by omega⟩
    have he : d - 28400 + 28400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff2 d) n h.1 h.2
  by_cases hb28600 : d < 28800
  ·
    have h := signs2_28600 ⟨d - 28600, by omega⟩
    have he : d - 28600 + 28600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff2 d) n h.1 h.2
  by_cases hb28800 : d < 29000
  ·
    have h := signs2_28800 ⟨d - 28800, by omega⟩
    have he : d - 28800 + 28800 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff2 d) n h.1 h.2
  by_cases hb29000 : d < 29200
  ·
    have h := signs2_29000 ⟨d - 29000, by omega⟩
    have he : d - 29000 + 29000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff2 d) n h.1 h.2
  by_cases hb29200 : d < 29400
  ·
    have h := signs2_29200 ⟨d - 29200, by omega⟩
    have he : d - 29200 + 29200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff2 d) n h.1 h.2
  by_cases hb29400 : d < 29600
  ·
    have h := signs2_29400 ⟨d - 29400, by omega⟩
    have he : d - 29400 + 29400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff2 d) n h.1 h.2
  by_cases hb29600 : d < 29800
  ·
    have h := signs2_29600 ⟨d - 29600, by omega⟩
    have he : d - 29600 + 29600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff2 d) n h.1 h.2
  by_cases hb29800 : d < 30000
  ·
    have h := signs2_29800 ⟨d - 29800, by omega⟩
    have he : d - 29800 + 29800 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff2 d) n h.1 h.2
  by_cases hb30000 : d < 30200
  ·
    have h := signs2_30000 ⟨d - 30000, by omega⟩
    have he : d - 30000 + 30000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff2 d) n h.1 h.2
  by_cases hb30200 : d < 30400
  ·
    have h := signs2_30200 ⟨d - 30200, by omega⟩
    have he : d - 30200 + 30200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff2 d) n h.1 h.2
  by_cases hb30400 : d < 30600
  ·
    have h := signs2_30400 ⟨d - 30400, by omega⟩
    have he : d - 30400 + 30400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff2 d) n h.1 h.2
  by_cases hb30600 : d < 30800
  ·
    have h := signs2_30600 ⟨d - 30600, by omega⟩
    have he : d - 30600 + 30600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff2 d) n h.1 h.2
  by_cases hb30800 : d < 31000
  ·
    have h := signs2_30800 ⟨d - 30800, by omega⟩
    have he : d - 30800 + 30800 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff2 d) n h.1 h.2
  by_cases hb31000 : d < 31200
  ·
    have h := signs2_31000 ⟨d - 31000, by omega⟩
    have he : d - 31000 + 31000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff2 d) n h.1 h.2
  by_cases hb31200 : d < 31400
  ·
    have h := signs2_31200 ⟨d - 31200, by omega⟩
    have he : d - 31200 + 31200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff2 d) n h.1 h.2
  by_cases hb31400 : d < 31600
  ·
    have h := signs2_31400 ⟨d - 31400, by omega⟩
    have he : d - 31400 + 31400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff2 d) n h.1 h.2
  by_cases hb31600 : d < 31800
  ·
    have h := signs2_31600 ⟨d - 31600, by omega⟩
    have he : d - 31600 + 31600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff2 d) n h.1 h.2
  have h := signs2_31800 ⟨d - 31800, by omega⟩
  have he : d - 31800 + 31800 = d := by omega
  simp only [he] at h
  exact not_four_of_adjacent_signs 5 d (cutoff2 d) n h.1 h.2

/-- info: 'B686Round6A.not_four_block2' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_block2
end B686Round6A
