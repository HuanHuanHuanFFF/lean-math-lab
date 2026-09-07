import research.tasks.«B686-Four».round5.worker.ContactFinite
set_option maxRecDepth 200000
set_option maxHeartbeats 6000000
namespace B686Round6A
open B686Round4K5Finite

def cutoff5 (d : ℕ) : ℕ :=
  312981296038 * d / 100000000000 - 3

theorem signs5_40000 : ∀ t : Fin 200,
    4 * product 5 (cutoff5 (t.val + 40000)) <
      product 5 (cutoff5 (t.val + 40000) + (t.val + 40000)) ∧
    product 5 (cutoff5 (t.val + 40000) + 1 + (t.val + 40000)) <
      4 * product 5 (cutoff5 (t.val + 40000) + 1) := by
  decide

theorem signs5_40200 : ∀ t : Fin 200,
    4 * product 5 (cutoff5 (t.val + 40200)) <
      product 5 (cutoff5 (t.val + 40200) + (t.val + 40200)) ∧
    product 5 (cutoff5 (t.val + 40200) + 1 + (t.val + 40200)) <
      4 * product 5 (cutoff5 (t.val + 40200) + 1) := by
  decide

theorem signs5_40400 : ∀ t : Fin 200,
    4 * product 5 (cutoff5 (t.val + 40400)) <
      product 5 (cutoff5 (t.val + 40400) + (t.val + 40400)) ∧
    product 5 (cutoff5 (t.val + 40400) + 1 + (t.val + 40400)) <
      4 * product 5 (cutoff5 (t.val + 40400) + 1) := by
  decide

theorem signs5_40600 : ∀ t : Fin 200,
    4 * product 5 (cutoff5 (t.val + 40600)) <
      product 5 (cutoff5 (t.val + 40600) + (t.val + 40600)) ∧
    product 5 (cutoff5 (t.val + 40600) + 1 + (t.val + 40600)) <
      4 * product 5 (cutoff5 (t.val + 40600) + 1) := by
  decide

theorem signs5_40800 : ∀ t : Fin 200,
    4 * product 5 (cutoff5 (t.val + 40800)) <
      product 5 (cutoff5 (t.val + 40800) + (t.val + 40800)) ∧
    product 5 (cutoff5 (t.val + 40800) + 1 + (t.val + 40800)) <
      4 * product 5 (cutoff5 (t.val + 40800) + 1) := by
  decide

theorem signs5_41000 : ∀ t : Fin 200,
    4 * product 5 (cutoff5 (t.val + 41000)) <
      product 5 (cutoff5 (t.val + 41000) + (t.val + 41000)) ∧
    product 5 (cutoff5 (t.val + 41000) + 1 + (t.val + 41000)) <
      4 * product 5 (cutoff5 (t.val + 41000) + 1) := by
  decide

theorem signs5_41200 : ∀ t : Fin 200,
    4 * product 5 (cutoff5 (t.val + 41200)) <
      product 5 (cutoff5 (t.val + 41200) + (t.val + 41200)) ∧
    product 5 (cutoff5 (t.val + 41200) + 1 + (t.val + 41200)) <
      4 * product 5 (cutoff5 (t.val + 41200) + 1) := by
  decide

theorem signs5_41400 : ∀ t : Fin 200,
    4 * product 5 (cutoff5 (t.val + 41400)) <
      product 5 (cutoff5 (t.val + 41400) + (t.val + 41400)) ∧
    product 5 (cutoff5 (t.val + 41400) + 1 + (t.val + 41400)) <
      4 * product 5 (cutoff5 (t.val + 41400) + 1) := by
  decide

theorem signs5_41600 : ∀ t : Fin 200,
    4 * product 5 (cutoff5 (t.val + 41600)) <
      product 5 (cutoff5 (t.val + 41600) + (t.val + 41600)) ∧
    product 5 (cutoff5 (t.val + 41600) + 1 + (t.val + 41600)) <
      4 * product 5 (cutoff5 (t.val + 41600) + 1) := by
  decide

theorem signs5_41800 : ∀ t : Fin 200,
    4 * product 5 (cutoff5 (t.val + 41800)) <
      product 5 (cutoff5 (t.val + 41800) + (t.val + 41800)) ∧
    product 5 (cutoff5 (t.val + 41800) + 1 + (t.val + 41800)) <
      4 * product 5 (cutoff5 (t.val + 41800) + 1) := by
  decide

theorem signs5_42000 : ∀ t : Fin 200,
    4 * product 5 (cutoff5 (t.val + 42000)) <
      product 5 (cutoff5 (t.val + 42000) + (t.val + 42000)) ∧
    product 5 (cutoff5 (t.val + 42000) + 1 + (t.val + 42000)) <
      4 * product 5 (cutoff5 (t.val + 42000) + 1) := by
  decide

theorem signs5_42200 : ∀ t : Fin 200,
    4 * product 5 (cutoff5 (t.val + 42200)) <
      product 5 (cutoff5 (t.val + 42200) + (t.val + 42200)) ∧
    product 5 (cutoff5 (t.val + 42200) + 1 + (t.val + 42200)) <
      4 * product 5 (cutoff5 (t.val + 42200) + 1) := by
  decide

theorem signs5_42400 : ∀ t : Fin 200,
    4 * product 5 (cutoff5 (t.val + 42400)) <
      product 5 (cutoff5 (t.val + 42400) + (t.val + 42400)) ∧
    product 5 (cutoff5 (t.val + 42400) + 1 + (t.val + 42400)) <
      4 * product 5 (cutoff5 (t.val + 42400) + 1) := by
  decide

theorem signs5_42600 : ∀ t : Fin 200,
    4 * product 5 (cutoff5 (t.val + 42600)) <
      product 5 (cutoff5 (t.val + 42600) + (t.val + 42600)) ∧
    product 5 (cutoff5 (t.val + 42600) + 1 + (t.val + 42600)) <
      4 * product 5 (cutoff5 (t.val + 42600) + 1) := by
  decide

theorem signs5_42800 : ∀ t : Fin 200,
    4 * product 5 (cutoff5 (t.val + 42800)) <
      product 5 (cutoff5 (t.val + 42800) + (t.val + 42800)) ∧
    product 5 (cutoff5 (t.val + 42800) + 1 + (t.val + 42800)) <
      4 * product 5 (cutoff5 (t.val + 42800) + 1) := by
  decide

theorem signs5_43000 : ∀ t : Fin 200,
    4 * product 5 (cutoff5 (t.val + 43000)) <
      product 5 (cutoff5 (t.val + 43000) + (t.val + 43000)) ∧
    product 5 (cutoff5 (t.val + 43000) + 1 + (t.val + 43000)) <
      4 * product 5 (cutoff5 (t.val + 43000) + 1) := by
  decide

theorem signs5_43200 : ∀ t : Fin 200,
    4 * product 5 (cutoff5 (t.val + 43200)) <
      product 5 (cutoff5 (t.val + 43200) + (t.val + 43200)) ∧
    product 5 (cutoff5 (t.val + 43200) + 1 + (t.val + 43200)) <
      4 * product 5 (cutoff5 (t.val + 43200) + 1) := by
  decide

theorem signs5_43400 : ∀ t : Fin 200,
    4 * product 5 (cutoff5 (t.val + 43400)) <
      product 5 (cutoff5 (t.val + 43400) + (t.val + 43400)) ∧
    product 5 (cutoff5 (t.val + 43400) + 1 + (t.val + 43400)) <
      4 * product 5 (cutoff5 (t.val + 43400) + 1) := by
  decide

theorem signs5_43600 : ∀ t : Fin 200,
    4 * product 5 (cutoff5 (t.val + 43600)) <
      product 5 (cutoff5 (t.val + 43600) + (t.val + 43600)) ∧
    product 5 (cutoff5 (t.val + 43600) + 1 + (t.val + 43600)) <
      4 * product 5 (cutoff5 (t.val + 43600) + 1) := by
  decide

theorem signs5_43800 : ∀ t : Fin 200,
    4 * product 5 (cutoff5 (t.val + 43800)) <
      product 5 (cutoff5 (t.val + 43800) + (t.val + 43800)) ∧
    product 5 (cutoff5 (t.val + 43800) + 1 + (t.val + 43800)) <
      4 * product 5 (cutoff5 (t.val + 43800) + 1) := by
  decide

theorem not_four_block5 (n d : ℕ) (hl : 40000 ≤ d) (hu : d < 44000) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  by_cases hb40000 : d < 40200
  ·
    have h := signs5_40000 ⟨d - 40000, by omega⟩
    have he : d - 40000 + 40000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff5 d) n h.1 h.2
  by_cases hb40200 : d < 40400
  ·
    have h := signs5_40200 ⟨d - 40200, by omega⟩
    have he : d - 40200 + 40200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff5 d) n h.1 h.2
  by_cases hb40400 : d < 40600
  ·
    have h := signs5_40400 ⟨d - 40400, by omega⟩
    have he : d - 40400 + 40400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff5 d) n h.1 h.2
  by_cases hb40600 : d < 40800
  ·
    have h := signs5_40600 ⟨d - 40600, by omega⟩
    have he : d - 40600 + 40600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff5 d) n h.1 h.2
  by_cases hb40800 : d < 41000
  ·
    have h := signs5_40800 ⟨d - 40800, by omega⟩
    have he : d - 40800 + 40800 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff5 d) n h.1 h.2
  by_cases hb41000 : d < 41200
  ·
    have h := signs5_41000 ⟨d - 41000, by omega⟩
    have he : d - 41000 + 41000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff5 d) n h.1 h.2
  by_cases hb41200 : d < 41400
  ·
    have h := signs5_41200 ⟨d - 41200, by omega⟩
    have he : d - 41200 + 41200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff5 d) n h.1 h.2
  by_cases hb41400 : d < 41600
  ·
    have h := signs5_41400 ⟨d - 41400, by omega⟩
    have he : d - 41400 + 41400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff5 d) n h.1 h.2
  by_cases hb41600 : d < 41800
  ·
    have h := signs5_41600 ⟨d - 41600, by omega⟩
    have he : d - 41600 + 41600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff5 d) n h.1 h.2
  by_cases hb41800 : d < 42000
  ·
    have h := signs5_41800 ⟨d - 41800, by omega⟩
    have he : d - 41800 + 41800 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff5 d) n h.1 h.2
  by_cases hb42000 : d < 42200
  ·
    have h := signs5_42000 ⟨d - 42000, by omega⟩
    have he : d - 42000 + 42000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff5 d) n h.1 h.2
  by_cases hb42200 : d < 42400
  ·
    have h := signs5_42200 ⟨d - 42200, by omega⟩
    have he : d - 42200 + 42200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff5 d) n h.1 h.2
  by_cases hb42400 : d < 42600
  ·
    have h := signs5_42400 ⟨d - 42400, by omega⟩
    have he : d - 42400 + 42400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff5 d) n h.1 h.2
  by_cases hb42600 : d < 42800
  ·
    have h := signs5_42600 ⟨d - 42600, by omega⟩
    have he : d - 42600 + 42600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff5 d) n h.1 h.2
  by_cases hb42800 : d < 43000
  ·
    have h := signs5_42800 ⟨d - 42800, by omega⟩
    have he : d - 42800 + 42800 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff5 d) n h.1 h.2
  by_cases hb43000 : d < 43200
  ·
    have h := signs5_43000 ⟨d - 43000, by omega⟩
    have he : d - 43000 + 43000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff5 d) n h.1 h.2
  by_cases hb43200 : d < 43400
  ·
    have h := signs5_43200 ⟨d - 43200, by omega⟩
    have he : d - 43200 + 43200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff5 d) n h.1 h.2
  by_cases hb43400 : d < 43600
  ·
    have h := signs5_43400 ⟨d - 43400, by omega⟩
    have he : d - 43400 + 43400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff5 d) n h.1 h.2
  by_cases hb43600 : d < 43800
  ·
    have h := signs5_43600 ⟨d - 43600, by omega⟩
    have he : d - 43600 + 43600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff5 d) n h.1 h.2
  have h := signs5_43800 ⟨d - 43800, by omega⟩
  have he : d - 43800 + 43800 = d := by omega
  simp only [he] at h
  exact not_four_of_adjacent_signs 5 d (cutoff5 d) n h.1 h.2

/-- info: 'B686Round6A.not_four_block5' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_block5
end B686Round6A
