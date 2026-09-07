import research.tasks.«B686-Four».round4.worker.K5PrimeClasses

set_option maxRecDepth 100000
set_option maxHeartbeats 5000000

namespace B686Round4SmallPrime
open B686Round4K5

def residueQuartic (p a b c e f t : ℤ) : ℤ :=
  p * (a*t^4+b*t^3+c*t^2+e*t) + f

theorem quartic_mod (p a b c e f t : ℤ) :
    residueQuartic p a b c e f t % p = f % p := by
  simp [residueQuartic, Int.add_emod, Int.mul_emod]

theorem quartic_shift (p a b c e f t D : ℤ) :
    p*D ∣ residueQuartic p a b c e f (t+D) - residueQuartic p a b c e f t := by
  refine ⟨a*(4*t^3+6*t^2*D+4*t*D^2+D^3)+b*(3*t^2+3*t*D+D^2)+c*(2*t+D)+e, ?_⟩
  unfold residueQuartic
  ring

theorem two_cofactor_data_residue (r : ℕ) (hr : r < 8) (t D : ℤ) :
    ∃ i : ℕ, i ∈ Finset.Icc 1 5 ∧ ∃ c u v : ℤ, c ≠ 0 ∧
      p5 (8*t+r) = c*((8*t+r+i)*u) ∧
      p5 (8*t+r+8*D) = c*((8*t+r+8*D+i)*v) ∧
      u % 2 ≠ 0 ∧ v % 2 ≠ 0 ∧ 8*D ∣ 4*(v-u) := by
  have hcases : r = 0 ∨ r = 1 ∨ r = 2 ∨ r = 3 ∨ r = 4 ∨ r = 5 ∨ r = 6 ∨ r = 7 := by omega
  rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · refine ⟨4, by decide, 2, residueQuartic 2 1024 1408 656 122 15 t, residueQuartic 2 1024 1408 656 122 15 (t+D), by decide, ?_, ?_, ?_, ?_, ?_⟩
    · unfold p5 residueQuartic; ring
    · unfold p5 residueQuartic; ring
    · rw [quartic_mod]; decide
    · rw [quartic_mod]; decide
    · have h := mul_dvd_mul (dvd_refl (4 : ℤ)) (quartic_shift 2 1024 1408 656 122 15 t D)
      have hid : (4 : ℤ) * (2 * D) = 8 * D := by ring
      rwa [hid] at h
  · refine ⟨3, by decide, 4, residueQuartic 2 512 1024 728 216 45 t, residueQuartic 2 512 1024 728 216 45 (t+D), by decide, ?_, ?_, ?_, ?_, ?_⟩
    · unfold p5 residueQuartic; ring
    · unfold p5 residueQuartic; ring
    · rw [quartic_mod]; decide
    · rw [quartic_mod]; decide
    · have h := mul_dvd_mul (dvd_refl (4 : ℤ)) (quartic_shift 2 512 1024 728 216 45 t D)
      have hid : (4 : ℤ) * (2 * D) = 8 * D := by ring
      rwa [hid] at h
  · refine ⟨2, by decide, 2, residueQuartic 2 1024 2688 2576 1062 315 t, residueQuartic 2 1024 2688 2576 1062 315 (t+D), by decide, ?_, ?_, ?_, ?_, ?_⟩
    · unfold p5 residueQuartic; ring
    · unfold p5 residueQuartic; ring
    · rw [quartic_mod]; decide
    · rw [quartic_mod]; decide
    · have h := mul_dvd_mul (dvd_refl (4 : ℤ)) (quartic_shift 2 1024 2688 2576 1062 315 t D)
      have hid : (4 : ℤ) * (2 * D) = 8 * D := by ring
      rwa [hid] at h
  · refine ⟨5, by decide, 8, residueQuartic 2 256 704 716 319 105 t, residueQuartic 2 256 704 716 319 105 (t+D), by decide, ?_, ?_, ?_, ?_, ?_⟩
    · unfold p5 residueQuartic; ring
    · unfold p5 residueQuartic; ring
    · rw [quartic_mod]; decide
    · rw [quartic_mod]; decide
    · have h := mul_dvd_mul (dvd_refl (4 : ℤ)) (quartic_shift 2 256 704 716 319 105 t D)
      have hid : (4 : ℤ) * (2 * D) = 8 * D := by ring
      rwa [hid] at h
  · refine ⟨4, by decide, 2, residueQuartic 2 1024 3456 4304 2346 945 t, residueQuartic 2 1024 3456 4304 2346 945 (t+D), by decide, ?_, ?_, ?_, ?_, ?_⟩
    · unfold p5 residueQuartic; ring
    · unfold p5 residueQuartic; ring
    · rw [quartic_mod]; decide
    · rw [quartic_mod]; decide
    · have h := mul_dvd_mul (dvd_refl (4 : ℤ)) (quartic_shift 2 1024 3456 4304 2346 945 t D)
      have hid : (4 : ℤ) * (2 * D) = 8 * D := by ring
      rwa [hid] at h
  · refine ⟨3, by decide, 4, residueQuartic 2 512 2048 3032 1968 945 t, residueQuartic 2 512 2048 3032 1968 945 (t+D), by decide, ?_, ?_, ?_, ?_, ?_⟩
    · unfold p5 residueQuartic; ring
    · unfold p5 residueQuartic; ring
    · rw [quartic_mod]; decide
    · rw [quartic_mod]; decide
    · have h := mul_dvd_mul (dvd_refl (4 : ℤ)) (quartic_shift 2 512 2048 3032 1968 945 t D)
      have hid : (4 : ℤ) * (2 * D) = 8 * D := by ring
      rwa [hid] at h
  · refine ⟨2, by decide, 2, residueQuartic 2 1024 4736 8144 6166 3465 t, residueQuartic 2 1024 4736 8144 6166 3465 (t+D), by decide, ?_, ?_, ?_, ?_, ?_⟩
    · unfold p5 residueQuartic; ring
    · unfold p5 residueQuartic; ring
    · rw [quartic_mod]; decide
    · rw [quartic_mod]; decide
    · have h := mul_dvd_mul (dvd_refl (4 : ℤ)) (quartic_shift 2 1024 4736 8144 6166 3465 t D)
      have hid : (4 : ℤ) * (2 * D) = 8 * D := by ring
      rwa [hid] at h
  · refine ⟨1, by decide, 8, residueQuartic 2 256 1344 2636 2289 1485 t, residueQuartic 2 256 1344 2636 2289 1485 (t+D), by decide, ?_, ?_, ?_, ?_, ?_⟩
    · unfold p5 residueQuartic; ring
    · unfold p5 residueQuartic; ring
    · rw [quartic_mod]; decide
    · rw [quartic_mod]; decide
    · have h := mul_dvd_mul (dvd_refl (4 : ℤ)) (quartic_shift 2 256 1344 2636 2289 1485 t D)
      have hid : (4 : ℤ) * (2 * D) = 8 * D := by ring
      rwa [hid] at h

theorem two_cofactor_data (n d : ℤ) (hd : 8 ∣ d) :
    ∃ i : ℕ, i ∈ Finset.Icc 1 5 ∧ ∃ c u v : ℤ, c ≠ 0 ∧
      p5 n = c*((n+i)*u) ∧ p5 (n+d) = c*((n+d+i)*v) ∧
      u % 2 ≠ 0 ∧ v % 2 ≠ 0 ∧ d ∣ 4*(v-u) := by
  obtain ⟨D, hD⟩ := hd
  let r : ℕ := (n % 8).toNat
  have hr : r < 8 := by dsimp [r]; omega
  have hr' : (r : ℤ) = n % 8 := by dsimp [r]; omega
  have hn : 8*(n/8)+r = n := by omega
  have h := two_cofactor_data_residue r hr (n/8) D
  rw [hn, ← hD] at h
  exact h

/-- info: 'B686Round4SmallPrime.two_cofactor_data' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms two_cofactor_data

theorem three_cofactor_data_residue (r : ℕ) (hr : r < 9) (t D : ℤ) :
    ∃ i : ℕ, i ∈ Finset.Icc 1 5 ∧ ∃ c u v : ℤ, c ≠ 0 ∧
      p5 (9*t+r) = c*((9*t+r+i)*u) ∧
      p5 (9*t+r+9*D) = c*((9*t+r+9*D+i)*v) ∧
      u % 3 ≠ 0 ∧ v % 3 ≠ 0 ∧ 9*D ∣ 3*(v-u) := by
  have hcases : r = 0 ∨ r = 1 ∨ r = 2 ∨ r = 3 ∨ r = 4 ∨ r = 5 ∨ r = 6 ∨ r = 7 ∨ r = 8 := by omega
  rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · refine ⟨3, by decide, 1, residueQuartic 3 2187 2916 1323 234 40 t, residueQuartic 3 2187 2916 1323 234 40 (t+D), by decide, ?_, ?_, ?_, ?_, ?_⟩
    · unfold p5 residueQuartic; ring
    · unfold p5 residueQuartic; ring
    · rw [quartic_mod]; decide
    · rw [quartic_mod]; decide
    · have h := mul_dvd_mul (dvd_refl (3 : ℤ)) (quartic_shift 3 2187 2916 1323 234 40 t D)
      have hid : (3 : ℤ) * (3 * D) = 9 * D := by ring
      rwa [hid] at h
  · refine ⟨2, by decide, 3, residueQuartic 3 729 1377 936 268 80 t, residueQuartic 3 729 1377 936 268 80 (t+D), by decide, ?_, ?_, ?_, ?_, ?_⟩
    · unfold p5 residueQuartic; ring
    · unfold p5 residueQuartic; ring
    · rw [quartic_mod]; decide
    · rw [quartic_mod]; decide
    · have h := mul_dvd_mul (dvd_refl (3 : ℤ)) (quartic_shift 3 729 1377 936 268 80 t D)
      have hid : (3 : ℤ) * (3 * D) = 9 * D := by ring
      rwa [hid] at h
  · refine ⟨1, by decide, 3, residueQuartic 3 729 1782 1611 638 280 t, residueQuartic 3 729 1782 1611 638 280 (t+D), by decide, ?_, ?_, ?_, ?_, ?_⟩
    · unfold p5 residueQuartic; ring
    · unfold p5 residueQuartic; ring
    · rw [quartic_mod]; decide
    · rw [quartic_mod]; decide
    · have h := mul_dvd_mul (dvd_refl (3 : ℤ)) (quartic_shift 3 729 1782 1611 638 280 t D)
      have hid : (3 : ℤ) * (3 * D) = 9 * D := by ring
      rwa [hid] at h
  · refine ⟨3, by decide, 1, residueQuartic 3 2187 5832 5697 2412 1120 t, residueQuartic 3 2187 5832 5697 2412 1120 (t+D), by decide, ?_, ?_, ?_, ?_, ?_⟩
    · unfold p5 residueQuartic; ring
    · unfold p5 residueQuartic; ring
    · rw [quartic_mod]; decide
    · rw [quartic_mod]; decide
    · have h := mul_dvd_mul (dvd_refl (3 : ℤ)) (quartic_shift 3 2187 5832 5697 2412 1120 t D)
      have hid : (3 : ℤ) * (3 * D) = 9 * D := by ring
      rwa [hid] at h
  · refine ⟨5, by decide, 3, residueQuartic 3 729 2106 2259 1066 560 t, residueQuartic 3 729 2106 2259 1066 560 (t+D), by decide, ?_, ?_, ?_, ?_, ?_⟩
    · unfold p5 residueQuartic; ring
    · unfold p5 residueQuartic; ring
    · rw [quartic_mod]; decide
    · rw [quartic_mod]; decide
    · have h := mul_dvd_mul (dvd_refl (3 : ℤ)) (quartic_shift 3 729 2106 2259 1066 560 t D)
      have hid : (3 : ℤ) * (3 * D) = 9 * D := by ring
      rwa [hid] at h
  · refine ⟨4, by decide, 3, residueQuartic 3 729 2511 3204 1796 1120 t, residueQuartic 3 729 2511 3204 1796 1120 (t+D), by decide, ?_, ?_, ?_, ?_, ?_⟩
    · unfold p5 residueQuartic; ring
    · unfold p5 residueQuartic; ring
    · rw [quartic_mod]; decide
    · rw [quartic_mod]; decide
    · have h := mul_dvd_mul (dvd_refl (3 : ℤ)) (quartic_shift 3 729 2511 3204 1796 1120 t D)
      have hid : (3 : ℤ) * (3 * D) = 9 * D := by ring
      rwa [hid] at h
  · refine ⟨3, by decide, 1, residueQuartic 3 2187 8748 12987 8478 6160 t, residueQuartic 3 2187 8748 12987 8478 6160 (t+D), by decide, ?_, ?_, ?_, ?_, ?_⟩
    · unfold p5 residueQuartic; ring
    · unfold p5 residueQuartic; ring
    · rw [quartic_mod]; decide
    · rw [quartic_mod]; decide
    · have h := mul_dvd_mul (dvd_refl (3 : ℤ)) (quartic_shift 3 2187 8748 12987 8478 6160 t D)
      have hid : (3 : ℤ) * (3 * D) = 9 * D := by ring
      rwa [hid] at h
  · refine ⟨2, by decide, 3, residueQuartic 3 729 3321 5634 4216 3520 t, residueQuartic 3 729 3321 5634 4216 3520 (t+D), by decide, ?_, ?_, ?_, ?_, ?_⟩
    · unfold p5 residueQuartic; ring
    · unfold p5 residueQuartic; ring
    · rw [quartic_mod]; decide
    · rw [quartic_mod]; decide
    · have h := mul_dvd_mul (dvd_refl (3 : ℤ)) (quartic_shift 3 729 3321 5634 4216 3520 t D)
      have hid : (3 : ℤ) * (3 * D) = 9 * D := by ring
      rwa [hid] at h
  · refine ⟨1, by decide, 3, residueQuartic 3 729 3726 7119 6026 5720 t, residueQuartic 3 729 3726 7119 6026 5720 (t+D), by decide, ?_, ?_, ?_, ?_, ?_⟩
    · unfold p5 residueQuartic; ring
    · unfold p5 residueQuartic; ring
    · rw [quartic_mod]; decide
    · rw [quartic_mod]; decide
    · have h := mul_dvd_mul (dvd_refl (3 : ℤ)) (quartic_shift 3 729 3726 7119 6026 5720 t D)
      have hid : (3 : ℤ) * (3 * D) = 9 * D := by ring
      rwa [hid] at h

theorem three_cofactor_data (n d : ℤ) (hd : 9 ∣ d) :
    ∃ i : ℕ, i ∈ Finset.Icc 1 5 ∧ ∃ c u v : ℤ, c ≠ 0 ∧
      p5 n = c*((n+i)*u) ∧ p5 (n+d) = c*((n+d+i)*v) ∧
      u % 3 ≠ 0 ∧ v % 3 ≠ 0 ∧ d ∣ 3*(v-u) := by
  obtain ⟨D, hD⟩ := hd
  let r : ℕ := (n % 9).toNat
  have hr : r < 9 := by dsimp [r]; omega
  have hr' : (r : ℤ) = n % 9 := by dsimp [r]; omega
  have hn : 9*(n/9)+r = n := by omega
  have h := three_cofactor_data_residue r hr (n/9) D
  rw [hn, ← hD] at h
  exact h

/-- info: 'B686Round4SmallPrime.three_cofactor_data' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms three_cofactor_data

end B686Round4SmallPrime
