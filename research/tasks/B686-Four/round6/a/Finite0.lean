import research.tasks.«B686-Four».round5.worker.ContactFinite
set_option maxRecDepth 200000
set_option maxHeartbeats 6000000
namespace B686Round6A
open B686Round4K5Finite

def cutoff0 (d : ℕ) : ℕ :=
  312981296038 * d / 100000000000 - 3

theorem signs0_20000 : ∀ t : Fin 200,
    4 * product 5 (cutoff0 (t.val + 20000)) <
      product 5 (cutoff0 (t.val + 20000) + (t.val + 20000)) ∧
    product 5 (cutoff0 (t.val + 20000) + 1 + (t.val + 20000)) <
      4 * product 5 (cutoff0 (t.val + 20000) + 1) := by
  decide

theorem signs0_20200 : ∀ t : Fin 200,
    4 * product 5 (cutoff0 (t.val + 20200)) <
      product 5 (cutoff0 (t.val + 20200) + (t.val + 20200)) ∧
    product 5 (cutoff0 (t.val + 20200) + 1 + (t.val + 20200)) <
      4 * product 5 (cutoff0 (t.val + 20200) + 1) := by
  decide

theorem signs0_20400 : ∀ t : Fin 200,
    4 * product 5 (cutoff0 (t.val + 20400)) <
      product 5 (cutoff0 (t.val + 20400) + (t.val + 20400)) ∧
    product 5 (cutoff0 (t.val + 20400) + 1 + (t.val + 20400)) <
      4 * product 5 (cutoff0 (t.val + 20400) + 1) := by
  decide

theorem signs0_20600 : ∀ t : Fin 200,
    4 * product 5 (cutoff0 (t.val + 20600)) <
      product 5 (cutoff0 (t.val + 20600) + (t.val + 20600)) ∧
    product 5 (cutoff0 (t.val + 20600) + 1 + (t.val + 20600)) <
      4 * product 5 (cutoff0 (t.val + 20600) + 1) := by
  decide

theorem signs0_20800 : ∀ t : Fin 200,
    4 * product 5 (cutoff0 (t.val + 20800)) <
      product 5 (cutoff0 (t.val + 20800) + (t.val + 20800)) ∧
    product 5 (cutoff0 (t.val + 20800) + 1 + (t.val + 20800)) <
      4 * product 5 (cutoff0 (t.val + 20800) + 1) := by
  decide

theorem signs0_21000 : ∀ t : Fin 200,
    4 * product 5 (cutoff0 (t.val + 21000)) <
      product 5 (cutoff0 (t.val + 21000) + (t.val + 21000)) ∧
    product 5 (cutoff0 (t.val + 21000) + 1 + (t.val + 21000)) <
      4 * product 5 (cutoff0 (t.val + 21000) + 1) := by
  decide

theorem signs0_21200 : ∀ t : Fin 200,
    4 * product 5 (cutoff0 (t.val + 21200)) <
      product 5 (cutoff0 (t.val + 21200) + (t.val + 21200)) ∧
    product 5 (cutoff0 (t.val + 21200) + 1 + (t.val + 21200)) <
      4 * product 5 (cutoff0 (t.val + 21200) + 1) := by
  decide

theorem signs0_21400 : ∀ t : Fin 200,
    4 * product 5 (cutoff0 (t.val + 21400)) <
      product 5 (cutoff0 (t.val + 21400) + (t.val + 21400)) ∧
    product 5 (cutoff0 (t.val + 21400) + 1 + (t.val + 21400)) <
      4 * product 5 (cutoff0 (t.val + 21400) + 1) := by
  decide

theorem signs0_21600 : ∀ t : Fin 200,
    4 * product 5 (cutoff0 (t.val + 21600)) <
      product 5 (cutoff0 (t.val + 21600) + (t.val + 21600)) ∧
    product 5 (cutoff0 (t.val + 21600) + 1 + (t.val + 21600)) <
      4 * product 5 (cutoff0 (t.val + 21600) + 1) := by
  decide

theorem signs0_21800 : ∀ t : Fin 200,
    4 * product 5 (cutoff0 (t.val + 21800)) <
      product 5 (cutoff0 (t.val + 21800) + (t.val + 21800)) ∧
    product 5 (cutoff0 (t.val + 21800) + 1 + (t.val + 21800)) <
      4 * product 5 (cutoff0 (t.val + 21800) + 1) := by
  decide

theorem signs0_22000 : ∀ t : Fin 200,
    4 * product 5 (cutoff0 (t.val + 22000)) <
      product 5 (cutoff0 (t.val + 22000) + (t.val + 22000)) ∧
    product 5 (cutoff0 (t.val + 22000) + 1 + (t.val + 22000)) <
      4 * product 5 (cutoff0 (t.val + 22000) + 1) := by
  decide

theorem signs0_22200 : ∀ t : Fin 200,
    4 * product 5 (cutoff0 (t.val + 22200)) <
      product 5 (cutoff0 (t.val + 22200) + (t.val + 22200)) ∧
    product 5 (cutoff0 (t.val + 22200) + 1 + (t.val + 22200)) <
      4 * product 5 (cutoff0 (t.val + 22200) + 1) := by
  decide

theorem signs0_22400 : ∀ t : Fin 200,
    4 * product 5 (cutoff0 (t.val + 22400)) <
      product 5 (cutoff0 (t.val + 22400) + (t.val + 22400)) ∧
    product 5 (cutoff0 (t.val + 22400) + 1 + (t.val + 22400)) <
      4 * product 5 (cutoff0 (t.val + 22400) + 1) := by
  decide

theorem signs0_22600 : ∀ t : Fin 200,
    4 * product 5 (cutoff0 (t.val + 22600)) <
      product 5 (cutoff0 (t.val + 22600) + (t.val + 22600)) ∧
    product 5 (cutoff0 (t.val + 22600) + 1 + (t.val + 22600)) <
      4 * product 5 (cutoff0 (t.val + 22600) + 1) := by
  decide

theorem signs0_22800 : ∀ t : Fin 200,
    4 * product 5 (cutoff0 (t.val + 22800)) <
      product 5 (cutoff0 (t.val + 22800) + (t.val + 22800)) ∧
    product 5 (cutoff0 (t.val + 22800) + 1 + (t.val + 22800)) <
      4 * product 5 (cutoff0 (t.val + 22800) + 1) := by
  decide

theorem signs0_23000 : ∀ t : Fin 200,
    4 * product 5 (cutoff0 (t.val + 23000)) <
      product 5 (cutoff0 (t.val + 23000) + (t.val + 23000)) ∧
    product 5 (cutoff0 (t.val + 23000) + 1 + (t.val + 23000)) <
      4 * product 5 (cutoff0 (t.val + 23000) + 1) := by
  decide

theorem signs0_23200 : ∀ t : Fin 200,
    4 * product 5 (cutoff0 (t.val + 23200)) <
      product 5 (cutoff0 (t.val + 23200) + (t.val + 23200)) ∧
    product 5 (cutoff0 (t.val + 23200) + 1 + (t.val + 23200)) <
      4 * product 5 (cutoff0 (t.val + 23200) + 1) := by
  decide

theorem signs0_23400 : ∀ t : Fin 200,
    4 * product 5 (cutoff0 (t.val + 23400)) <
      product 5 (cutoff0 (t.val + 23400) + (t.val + 23400)) ∧
    product 5 (cutoff0 (t.val + 23400) + 1 + (t.val + 23400)) <
      4 * product 5 (cutoff0 (t.val + 23400) + 1) := by
  decide

theorem signs0_23600 : ∀ t : Fin 200,
    4 * product 5 (cutoff0 (t.val + 23600)) <
      product 5 (cutoff0 (t.val + 23600) + (t.val + 23600)) ∧
    product 5 (cutoff0 (t.val + 23600) + 1 + (t.val + 23600)) <
      4 * product 5 (cutoff0 (t.val + 23600) + 1) := by
  decide

theorem signs0_23800 : ∀ t : Fin 200,
    4 * product 5 (cutoff0 (t.val + 23800)) <
      product 5 (cutoff0 (t.val + 23800) + (t.val + 23800)) ∧
    product 5 (cutoff0 (t.val + 23800) + 1 + (t.val + 23800)) <
      4 * product 5 (cutoff0 (t.val + 23800) + 1) := by
  decide

theorem not_four_block0 (n d : ℕ) (hl : 20000 ≤ d) (hu : d < 24000) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  by_cases hb20000 : d < 20200
  ·
    have h := signs0_20000 ⟨d - 20000, by omega⟩
    have he : d - 20000 + 20000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff0 d) n h.1 h.2
  by_cases hb20200 : d < 20400
  ·
    have h := signs0_20200 ⟨d - 20200, by omega⟩
    have he : d - 20200 + 20200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff0 d) n h.1 h.2
  by_cases hb20400 : d < 20600
  ·
    have h := signs0_20400 ⟨d - 20400, by omega⟩
    have he : d - 20400 + 20400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff0 d) n h.1 h.2
  by_cases hb20600 : d < 20800
  ·
    have h := signs0_20600 ⟨d - 20600, by omega⟩
    have he : d - 20600 + 20600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff0 d) n h.1 h.2
  by_cases hb20800 : d < 21000
  ·
    have h := signs0_20800 ⟨d - 20800, by omega⟩
    have he : d - 20800 + 20800 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff0 d) n h.1 h.2
  by_cases hb21000 : d < 21200
  ·
    have h := signs0_21000 ⟨d - 21000, by omega⟩
    have he : d - 21000 + 21000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff0 d) n h.1 h.2
  by_cases hb21200 : d < 21400
  ·
    have h := signs0_21200 ⟨d - 21200, by omega⟩
    have he : d - 21200 + 21200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff0 d) n h.1 h.2
  by_cases hb21400 : d < 21600
  ·
    have h := signs0_21400 ⟨d - 21400, by omega⟩
    have he : d - 21400 + 21400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff0 d) n h.1 h.2
  by_cases hb21600 : d < 21800
  ·
    have h := signs0_21600 ⟨d - 21600, by omega⟩
    have he : d - 21600 + 21600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff0 d) n h.1 h.2
  by_cases hb21800 : d < 22000
  ·
    have h := signs0_21800 ⟨d - 21800, by omega⟩
    have he : d - 21800 + 21800 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff0 d) n h.1 h.2
  by_cases hb22000 : d < 22200
  ·
    have h := signs0_22000 ⟨d - 22000, by omega⟩
    have he : d - 22000 + 22000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff0 d) n h.1 h.2
  by_cases hb22200 : d < 22400
  ·
    have h := signs0_22200 ⟨d - 22200, by omega⟩
    have he : d - 22200 + 22200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff0 d) n h.1 h.2
  by_cases hb22400 : d < 22600
  ·
    have h := signs0_22400 ⟨d - 22400, by omega⟩
    have he : d - 22400 + 22400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff0 d) n h.1 h.2
  by_cases hb22600 : d < 22800
  ·
    have h := signs0_22600 ⟨d - 22600, by omega⟩
    have he : d - 22600 + 22600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff0 d) n h.1 h.2
  by_cases hb22800 : d < 23000
  ·
    have h := signs0_22800 ⟨d - 22800, by omega⟩
    have he : d - 22800 + 22800 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff0 d) n h.1 h.2
  by_cases hb23000 : d < 23200
  ·
    have h := signs0_23000 ⟨d - 23000, by omega⟩
    have he : d - 23000 + 23000 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff0 d) n h.1 h.2
  by_cases hb23200 : d < 23400
  ·
    have h := signs0_23200 ⟨d - 23200, by omega⟩
    have he : d - 23200 + 23200 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff0 d) n h.1 h.2
  by_cases hb23400 : d < 23600
  ·
    have h := signs0_23400 ⟨d - 23400, by omega⟩
    have he : d - 23400 + 23400 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff0 d) n h.1 h.2
  by_cases hb23600 : d < 23800
  ·
    have h := signs0_23600 ⟨d - 23600, by omega⟩
    have he : d - 23600 + 23600 = d := by omega
    simp only [he] at h
    exact not_four_of_adjacent_signs 5 d (cutoff0 d) n h.1 h.2
  have h := signs0_23800 ⟨d - 23800, by omega⟩
  have he : d - 23800 + 23800 = d := by omega
  simp only [he] at h
  exact not_four_of_adjacent_signs 5 d (cutoff0 d) n h.1 h.2

/-- info: 'B686Round6A.not_four_block0' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_block0
end B686Round6A
