import research.tasks.«B686-Four».round5.worker.ContactFinite
set_option maxRecDepth 200000
set_option maxHeartbeats 6000000
namespace B686Round6A
open B686Round4K5Finite

def cutoff6 (d : ℕ) : ℕ :=
  312981296038 * d / 100000000000 - 3

theorem signs6_44000 : ∀ t : Fin 200,
    4 * product 5 (cutoff6 (t.val + 44000)) <
      product 5 (cutoff6 (t.val + 44000) + (t.val + 44000)) ∧
    product 5 (cutoff6 (t.val + 44000) + 1 + (t.val + 44000)) <
      4 * product 5 (cutoff6 (t.val + 44000) + 1) := by
  decide

theorem signs6_44200 : ∀ t : Fin 200,
    4 * product 5 (cutoff6 (t.val + 44200)) <
      product 5 (cutoff6 (t.val + 44200) + (t.val + 44200)) ∧
    product 5 (cutoff6 (t.val + 44200) + 1 + (t.val + 44200)) <
      4 * product 5 (cutoff6 (t.val + 44200) + 1) := by
  decide

theorem signs6_44400 : ∀ t : Fin 200,
    4 * product 5 (cutoff6 (t.val + 44400)) <
      product 5 (cutoff6 (t.val + 44400) + (t.val + 44400)) ∧
    product 5 (cutoff6 (t.val + 44400) + 1 + (t.val + 44400)) <
      4 * product 5 (cutoff6 (t.val + 44400) + 1) := by
  decide

theorem signs6_44600 : ∀ t : Fin 200,
    4 * product 5 (cutoff6 (t.val + 44600)) <
      product 5 (cutoff6 (t.val + 44600) + (t.val + 44600)) ∧
    product 5 (cutoff6 (t.val + 44600) + 1 + (t.val + 44600)) <
      4 * product 5 (cutoff6 (t.val + 44600) + 1) := by
  decide

theorem signs6_44800 : ∀ t : Fin 200,
    4 * product 5 (cutoff6 (t.val + 44800)) <
      product 5 (cutoff6 (t.val + 44800) + (t.val + 44800)) ∧
    product 5 (cutoff6 (t.val + 44800) + 1 + (t.val + 44800)) <
      4 * product 5 (cutoff6 (t.val + 44800) + 1) := by
  decide

theorem signs6_45000 : ∀ t : Fin 200,
    4 * product 5 (cutoff6 (t.val + 45000)) <
      product 5 (cutoff6 (t.val + 45000) + (t.val + 45000)) ∧
    product 5 (cutoff6 (t.val + 45000) + 1 + (t.val + 45000)) <
      4 * product 5 (cutoff6 (t.val + 45000) + 1) := by
  decide

theorem signs6_45200 : ∀ t : Fin 200,
    4 * product 5 (cutoff6 (t.val + 45200)) <
      product 5 (cutoff6 (t.val + 45200) + (t.val + 45200)) ∧
    product 5 (cutoff6 (t.val + 45200) + 1 + (t.val + 45200)) <
      4 * product 5 (cutoff6 (t.val + 45200) + 1) := by
  decide

theorem signs6_45400 : ∀ t : Fin 200,
    4 * product 5 (cutoff6 (t.val + 45400)) <
      product 5 (cutoff6 (t.val + 45400) + (t.val + 45400)) ∧
    product 5 (cutoff6 (t.val + 45400) + 1 + (t.val + 45400)) <
      4 * product 5 (cutoff6 (t.val + 45400) + 1) := by
  decide

theorem signs6_45600 : ∀ t : Fin 200,
    4 * product 5 (cutoff6 (t.val + 45600)) <
      product 5 (cutoff6 (t.val + 45600) + (t.val + 45600)) ∧
    product 5 (cutoff6 (t.val + 45600) + 1 + (t.val + 45600)) <
      4 * product 5 (cutoff6 (t.val + 45600) + 1) := by
  decide

theorem signs6_45800 : ∀ t : Fin 200,
    4 * product 5 (cutoff6 (t.val + 45800)) <
      product 5 (cutoff6 (t.val + 45800) + (t.val + 45800)) ∧
    product 5 (cutoff6 (t.val + 45800) + 1 + (t.val + 45800)) <
      4 * product 5 (cutoff6 (t.val + 45800) + 1) := by
  decide

theorem signs6_46000 : ∀ t : Fin 200,
    4 * product 5 (cutoff6 (t.val + 46000)) <
      product 5 (cutoff6 (t.val + 46000) + (t.val + 46000)) ∧
    product 5 (cutoff6 (t.val + 46000) + 1 + (t.val + 46000)) <
      4 * product 5 (cutoff6 (t.val + 46000) + 1) := by
  decide

theorem signs6_46200 : ∀ t : Fin 200,
    4 * product 5 (cutoff6 (t.val + 46200)) <
      product 5 (cutoff6 (t.val + 46200) + (t.val + 46200)) ∧
    product 5 (cutoff6 (t.val + 46200) + 1 + (t.val + 46200)) <
      4 * product 5 (cutoff6 (t.val + 46200) + 1) := by
  decide

theorem signs6_46400 : ∀ t : Fin 200,
    4 * product 5 (cutoff6 (t.val + 46400)) <
      product 5 (cutoff6 (t.val + 46400) + (t.val + 46400)) ∧
    product 5 (cutoff6 (t.val + 46400) + 1 + (t.val + 46400)) <
      4 * product 5 (cutoff6 (t.val + 46400) + 1) := by
  decide

theorem signs6_46600 : ∀ t : Fin 200,
    4 * product 5 (cutoff6 (t.val + 46600)) <
      product 5 (cutoff6 (t.val + 46600) + (t.val + 46600)) ∧
    product 5 (cutoff6 (t.val + 46600) + 1 + (t.val + 46600)) <
      4 * product 5 (cutoff6 (t.val + 46600) + 1) := by
  decide

theorem signs6_46800 : ∀ t : Fin 200,
    4 * product 5 (cutoff6 (t.val + 46800)) <
      product 5 (cutoff6 (t.val + 46800) + (t.val + 46800)) ∧
    product 5 (cutoff6 (t.val + 46800) + 1 + (t.val + 46800)) <
      4 * product 5 (cutoff6 (t.val + 46800) + 1) := by
  decide

theorem signs6_47000 : ∀ t : Fin 200,
    4 * product 5 (cutoff6 (t.val + 47000)) <
      product 5 (cutoff6 (t.val + 47000) + (t.val + 47000)) ∧
    product 5 (cutoff6 (t.val + 47000) + 1 + (t.val + 47000)) <
      4 * product 5 (cutoff6 (t.val + 47000) + 1) := by
  decide

theorem signs6_47200 : ∀ t : Fin 200,
    4 * product 5 (cutoff6 (t.val + 47200)) <
      product 5 (cutoff6 (t.val + 47200) + (t.val + 47200)) ∧
    product 5 (cutoff6 (t.val + 47200) + 1 + (t.val + 47200)) <
      4 * product 5 (cutoff6 (t.val + 47200) + 1) := by
  decide

theorem signs6_47400 : ∀ t : Fin 200,
    4 * product 5 (cutoff6 (t.val + 47400)) <
      product 5 (cutoff6 (t.val + 47400) + (t.val + 47400)) ∧
    product 5 (cutoff6 (t.val + 47400) + 1 + (t.val + 47400)) <
      4 * product 5 (cutoff6 (t.val + 47400) + 1) := by
  decide

theorem signs6_47600 : ∀ t : Fin 200,
    4 * product 5 (cutoff6 (t.val + 47600)) <
      product 5 (cutoff6 (t.val + 47600) + (t.val + 47600)) ∧
    product 5 (cutoff6 (t.val + 47600) + 1 + (t.val + 47600)) <
      4 * product 5 (cutoff6 (t.val + 47600) + 1) := by
  decide

theorem signs6_47800 : ∀ t : Fin 200,
    4 * product 5 (cutoff6 (t.val + 47800)) <
      product 5 (cutoff6 (t.val + 47800) + (t.val + 47800)) ∧
    product 5 (cutoff6 (t.val + 47800) + 1 + (t.val + 47800)) <
      4 * product 5 (cutoff6 (t.val + 47800) + 1) := by
  decide

theorem not_four_block6 (n d : ℕ) (hl : 44000 ≤ d) (hu : d < 48000) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  by_cases hb44000 : d < 44200
  ·
    have h := signs6_44000 ⟨d - 44000, by omega⟩
    have he : d - 44000 + 44000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff6 d) n h.1 h.2
  by_cases hb44200 : d < 44400
  ·
    have h := signs6_44200 ⟨d - 44200, by omega⟩
    have he : d - 44200 + 44200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff6 d) n h.1 h.2
  by_cases hb44400 : d < 44600
  ·
    have h := signs6_44400 ⟨d - 44400, by omega⟩
    have he : d - 44400 + 44400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff6 d) n h.1 h.2
  by_cases hb44600 : d < 44800
  ·
    have h := signs6_44600 ⟨d - 44600, by omega⟩
    have he : d - 44600 + 44600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff6 d) n h.1 h.2
  by_cases hb44800 : d < 45000
  ·
    have h := signs6_44800 ⟨d - 44800, by omega⟩
    have he : d - 44800 + 44800 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff6 d) n h.1 h.2
  by_cases hb45000 : d < 45200
  ·
    have h := signs6_45000 ⟨d - 45000, by omega⟩
    have he : d - 45000 + 45000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff6 d) n h.1 h.2
  by_cases hb45200 : d < 45400
  ·
    have h := signs6_45200 ⟨d - 45200, by omega⟩
    have he : d - 45200 + 45200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff6 d) n h.1 h.2
  by_cases hb45400 : d < 45600
  ·
    have h := signs6_45400 ⟨d - 45400, by omega⟩
    have he : d - 45400 + 45400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff6 d) n h.1 h.2
  by_cases hb45600 : d < 45800
  ·
    have h := signs6_45600 ⟨d - 45600, by omega⟩
    have he : d - 45600 + 45600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff6 d) n h.1 h.2
  by_cases hb45800 : d < 46000
  ·
    have h := signs6_45800 ⟨d - 45800, by omega⟩
    have he : d - 45800 + 45800 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff6 d) n h.1 h.2
  by_cases hb46000 : d < 46200
  ·
    have h := signs6_46000 ⟨d - 46000, by omega⟩
    have he : d - 46000 + 46000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff6 d) n h.1 h.2
  by_cases hb46200 : d < 46400
  ·
    have h := signs6_46200 ⟨d - 46200, by omega⟩
    have he : d - 46200 + 46200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff6 d) n h.1 h.2
  by_cases hb46400 : d < 46600
  ·
    have h := signs6_46400 ⟨d - 46400, by omega⟩
    have he : d - 46400 + 46400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff6 d) n h.1 h.2
  by_cases hb46600 : d < 46800
  ·
    have h := signs6_46600 ⟨d - 46600, by omega⟩
    have he : d - 46600 + 46600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff6 d) n h.1 h.2
  by_cases hb46800 : d < 47000
  ·
    have h := signs6_46800 ⟨d - 46800, by omega⟩
    have he : d - 46800 + 46800 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff6 d) n h.1 h.2
  by_cases hb47000 : d < 47200
  ·
    have h := signs6_47000 ⟨d - 47000, by omega⟩
    have he : d - 47000 + 47000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff6 d) n h.1 h.2
  by_cases hb47200 : d < 47400
  ·
    have h := signs6_47200 ⟨d - 47200, by omega⟩
    have he : d - 47200 + 47200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff6 d) n h.1 h.2
  by_cases hb47400 : d < 47600
  ·
    have h := signs6_47400 ⟨d - 47400, by omega⟩
    have he : d - 47400 + 47400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff6 d) n h.1 h.2
  by_cases hb47600 : d < 47800
  ·
    have h := signs6_47600 ⟨d - 47600, by omega⟩
    have he : d - 47600 + 47600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff6 d) n h.1 h.2
  have h := signs6_47800 ⟨d - 47800, by omega⟩
  have he : d - 47800 + 47800 = d := by omega
  simp only [he] at h
  exact not_four_of_adjacent_signs 5 d (cutoff6 d) n h.1 h.2

/-- info: 'B686Round6A.not_four_block6' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_block6
end B686Round6A
