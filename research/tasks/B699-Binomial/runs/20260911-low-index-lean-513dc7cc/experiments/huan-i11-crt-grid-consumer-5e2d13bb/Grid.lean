import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-crt-grid-consumer-5e2d13bb».HeightCap

/-! UNCOMPILED CANDIDATE. Rectangular blocks are checked by finite list all.
Appending row/column blocks reuses checked proofs; the complete rectangle
1..amax by 1..bmax has a proved coverage theorem, not a maximum premise. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.CRTGrid

def blockCheck (p q H M T aStart aCount bStart bCount : ℕ)
    (data : ℕ → ℕ → CellData) : Bool :=
  (List.range' aStart aCount).all (fun a =>
    (List.range' bStart bCount).all (fun b =>
      cellCheck (p ^ a) (q ^ b) (heightCap H M (p ^ a)) (heightCap H M (q ^ b)) T (data a b)))

def rectangleCheck (p q H M T amax bmax : ℕ) (data : ℕ → ℕ → CellData) : Bool :=
  blockCheck p q H M T 1 amax 1 bmax data

theorem blockCheck_cell {p q H M T aStart aCount bStart bCount a b : ℕ}
    {data : ℕ → ℕ → CellData}
    (hcheck : blockCheck p q H M T aStart aCount bStart bCount data = true)
    (ha0 : aStart ≤ a) (ha1 : a < aStart + aCount)
    (hb0 : bStart ≤ b) (hb1 : b < bStart + bCount) :
    cellCheck (p ^ a) (q ^ b) (heightCap H M (p ^ a)) (heightCap H M (q ^ b)) T (data a b) = true := by
  unfold blockCheck at hcheck
  have haMem : a ∈ List.range' aStart aCount := List.mem_range'_1.mpr ⟨ha0, ha1⟩
  have hbMem : b ∈ List.range' bStart bCount := List.mem_range'_1.mpr ⟨hb0, hb1⟩
  exact (List.all_eq_true.mp ((List.all_eq_true.mp hcheck) a haMem)) b hbMem

theorem blockCheck_append_rows {p q H M T aStart leftCount rightCount bStart bCount : ℕ}
    {data : ℕ → ℕ → CellData}
    (hl : blockCheck p q H M T aStart leftCount bStart bCount data = true)
    (hr : blockCheck p q H M T (aStart + leftCount) rightCount bStart bCount data = true) :
    blockCheck p q H M T aStart (leftCount + rightCount) bStart bCount data = true := by
  unfold blockCheck at hl hr ⊢
  rw [← List.range'_append_1 (s := aStart) (m := leftCount) (n := rightCount), List.all_append]
  exact Bool.and_eq_true_iff.mpr ⟨hl, hr⟩

theorem blockCheck_append_columns {p q H M T aStart aCount bStart leftCount rightCount : ℕ}
    {data : ℕ → ℕ → CellData}
    (hl : blockCheck p q H M T aStart aCount bStart leftCount data = true)
    (hr : blockCheck p q H M T aStart aCount (bStart + leftCount) rightCount data = true) :
    blockCheck p q H M T aStart aCount bStart (leftCount + rightCount) data = true := by
  unfold blockCheck at hl hr ⊢
  apply List.all_eq_true.mpr
  intro a ha
  rw [← List.range'_append_1 (s := bStart) (m := leftCount) (n := rightCount), List.all_append]
  exact Bool.and_eq_true_iff.mpr
    ⟨(List.all_eq_true.mp hl) a ha, (List.all_eq_true.mp hr) a ha⟩

theorem blockCheck_mono_target {p q H M T T' aStart aCount bStart bCount : ℕ}
    {data : ℕ → ℕ → CellData}
    (hcheck : blockCheck p q H M T aStart aCount bStart bCount data = true) (hT : T ≤ T') :
    blockCheck p q H M T' aStart aCount bStart bCount data = true := by
  unfold blockCheck at hcheck ⊢
  apply List.all_eq_true.mpr
  intro a ha
  apply List.all_eq_true.mpr
  intro b hb
  exact cellCheck_mono_target
    ((List.all_eq_true.mp ((List.all_eq_true.mp hcheck) a ha)) b hb) hT

/-- Existing blocks remain reusable after extending a total certificate function,
provided its values on the already checked rectangle are unchanged. -/
theorem blockCheck_transfer_data {p q H M T aStart aCount bStart bCount : ℕ}
    {data data' : ℕ → ℕ → CellData}
    (hcheck : blockCheck p q H M T aStart aCount bStart bCount data = true)
    (hdata : ∀ a, aStart ≤ a → a < aStart + aCount →
      ∀ b, bStart ≤ b → b < bStart + bCount → data a b = data' a b) :
    blockCheck p q H M T aStart aCount bStart bCount data' = true := by
  unfold blockCheck at hcheck ⊢
  apply List.all_eq_true.mpr
  intro a ha
  apply List.all_eq_true.mpr
  intro b hb
  have haBounds := List.mem_range'_1.mp ha
  have hbBounds := List.mem_range'_1.mp hb
  rw [← hdata a haBounds.1 haBounds.2 b hbBounds.1 hbBounds.2]
  exact (List.all_eq_true.mp ((List.all_eq_true.mp hcheck) a ha)) b hb

theorem rectangleCheck_sound {p q H M T amax bmax a b A C n : ℕ} {d : ℤ}
    {data : ℕ → ℕ → CellData}
    (hcheck : rectangleCheck p q H M T amax bmax data = true)
    (ha0 : 1 ≤ a) (ha1 : a ≤ amax) (hb0 : 1 ≤ b) (hb1 : b ≤ bmax)
    (hdlo : -10 ≤ d) (hdhi : d ≤ 10) (hA : 1 ≤ A) (hC : 1 ≤ C)
    (hAcap : A ≤ heightCap H M (p ^ a)) (hCcap : C ≤ heightCap H M (q ^ b))
    (heq : ((p ^ a : ℕ) : ℤ) * (A : ℤ) - ((q ^ b : ℕ) : ℤ) * (C : ℤ) = d)
    (hn : n ≤ min (p ^ a * A) (q ^ b * C) + 10) : n ≤ T := by
  unfold rectangleCheck at hcheck
  have hcell := blockCheck_cell hcheck ha0 (by omega) hb0 (by omega)
  exact cellCheck_sound hcell hdlo hdhi hA hC hAcap hCcap heq hn

theorem exponent_le_of_pow_lt {p a amax H : ℕ} (hp : 1 < p)
    (hcut : H ≤ p ^ (amax + 1)) (hsmall : p ^ a < H) : a ≤ amax := by
  apply Nat.le_of_not_gt
  intro hnot
  have hpower : p ^ (amax + 1) ≤ p ^ a := Nat.pow_le_pow_right (by omega) (by omega)
  exact Nat.not_le_of_gt hsmall (Nat.le_trans hcut hpower)

/-- Every positive exponent solution from actual windows is covered once the
complete rectangle and the two cutoff powers are checked. No H/M or noCommon
premise is silently supplied; the outer six-pair consumer must obtain its windows. -/
theorem grid_windows_sound {p q H M T amax bmax a b A C n r s : ℕ}
    {data : ℕ → ℕ → CellData}
    (hcheck : rectangleCheck p q H M T amax bmax data = true)
    (hp : 1 < p) (hq : 1 < q)
    (hcutP : H ≤ p ^ (amax + 1)) (hcutQ : H ≤ q ^ (bmax + 1))
    (ha : 1 ≤ a) (hb : 1 ≤ b) (hnH : n < H)
    (hr : r < 11) (hs : s < 11) (hA : 1 ≤ A) (hC : 1 ≤ C)
    (hAM : A ≤ M) (hCM : C ≤ M)
    (hP : n - r = p ^ a * A) (hQ : n - s = q ^ b * C) : n ≤ T := by
  have hPAH := power_lt_height_of_window hA hnH hP
  have hQCH := power_lt_height_of_window hC hnH hQ
  have haMax := exponent_le_of_pow_lt hp hcutP hPAH
  have hbMax := exponent_le_of_pow_lt hq hcutQ hQCH
  have hAcap := height_cap_of_window (Nat.pow_pos (by omega : 0 < p)) hAM hnH hP
  have hCcap := height_cap_of_window (Nat.pow_pos (by omega : 0 < q)) hCM hnH hQ
  obtain ⟨hdlo, hdhi, hn⟩ := integer_window_links hr hs
  have hPi : ((n - r : ℕ) : ℤ) = ((p ^ a : ℕ) : ℤ) * (A : ℤ) := by exact_mod_cast hP
  have hQi : ((n - s : ℕ) : ℤ) = ((q ^ b : ℕ) : ℤ) * (C : ℤ) := by exact_mod_cast hQ
  apply rectangleCheck_sound hcheck ha haMax hb hbMax hdlo hdhi hA hC hAcap hCcap
  · rw [hPi, hQi]
  · simpa only [hP, hQ] using hn


/-- The same fixed p,q grid also handles a window pair supplied in reverse
order: cofactors, offsets and exponent roles are swapped together. -/
theorem grid_windows_sound_swapped {p q H M T amax bmax a b A C n r s : ℕ}
    {data : ℕ → ℕ → CellData}
    (hcheck : rectangleCheck p q H M T amax bmax data = true)
    (hp : 1 < p) (hq : 1 < q)
    (hcutP : H ≤ p ^ (amax + 1)) (hcutQ : H ≤ q ^ (bmax + 1))
    (ha : 1 ≤ a) (hb : 1 ≤ b) (hnH : n < H)
    (hr : r < 11) (hs : s < 11) (hA : 1 ≤ A) (hC : 1 ≤ C)
    (hAM : A ≤ M) (hCM : C ≤ M)
    (hP : n - r = q ^ b * A) (hQ : n - s = p ^ a * C) : n ≤ T := by
  exact grid_windows_sound hcheck hp hq hcutP hcutQ ha hb hnH
    hs hr hC hA hCM hAM hQ hP

end Math.B699.CRTGrid
#print axioms Math.B699.CRTGrid.blockCheck_cell
#print axioms Math.B699.CRTGrid.blockCheck_append_rows
#print axioms Math.B699.CRTGrid.blockCheck_append_columns
#print axioms Math.B699.CRTGrid.blockCheck_mono_target
#print axioms Math.B699.CRTGrid.blockCheck_transfer_data
#print axioms Math.B699.CRTGrid.rectangleCheck_sound
#print axioms Math.B699.CRTGrid.exponent_le_of_pow_lt
#print axioms Math.B699.CRTGrid.grid_windows_sound

#print axioms Math.B699.CRTGrid.grid_windows_sound_swapped
