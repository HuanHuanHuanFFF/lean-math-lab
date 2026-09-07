import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

/-!
Reusable integer square-gap criterion for B686 / Four.
Draft only: NOT KERNEL-CHECKED in the 2026-09-07 Work environment.
No assertion is made about arbitrary k, nor about the unbuilt dependencies.
The quantities wn, wm may be instantiated by L^2 * P_k(n), L^2 * P_k(m).
-/

namespace B686OddLatticeGap

theorem intervals_from_remainder (a w e g : ℤ)
    (hid : a ^ 2 = w + e) (he : 0 < e)
    (hgap : 0 < 4 * g * a - g ^ 2 - 4 * e) :
    (2 * a - g) ^ 2 < 4 * w ∧ w < a ^ 2 := by
  have hw : w = a ^ 2 - e := by omega
  have hring : 4 * w - (2 * a - g) ^ 2 =
      4 * g * a - g ^ 2 - 4 * e := by
    rw [hw]
    ring
  constructor <;> omega

theorem scaled_odd_separation (an am g bn bm : ℤ)
    (hg : 0 < g) (hn : an = g * bn) (hm : am = g * bm)
    (hodd : ∃ z : ℤ, bm = 2 * z + 1) :
    am ≤ 2 * an - g ∨ 2 * an + g ≤ am := by
  obtain ⟨z, hz⟩ := hodd
  have hcases : bm ≤ 2 * bn - 1 ∨ 2 * bn + 1 ≤ bm := by omega
  rcases hcases with hleft | hright
  · left
    calc
      am = g * bm := hm
      _ ≤ g * (2 * bn - 1) := mul_le_mul_of_nonneg_left hleft (le_of_lt hg)
      _ = 2 * an - g := by rw [hn]; ring
  · right
    calc
      2 * an + g = g * (2 * bn + 1) := by rw [hn]; ring
      _ ≤ g * bm := mul_le_mul_of_nonneg_left hright (le_of_lt hg)
      _ = am := hm.symm

theorem not_four_of_intervals (an am wn wm g bn bm : ℤ)
    (hg : 0 < g) (han : g ≤ an) (ham : g ≤ am)
    (hn : an = g * bn) (hm : am = g * bm)
    (hodd : ∃ z : ℤ, bm = 2 * z + 1)
    (hnlo : (2 * an - g) ^ 2 < 4 * wn) (hnhi : wn < an ^ 2)
    (hmlo : (2 * am - g) ^ 2 < 4 * wm) (hmhi : wm < am ^ 2) :
    wm ≠ 4 * wn := by
  intro heq
  rcases scaled_odd_separation an am g bn bm hg hn hm hodd with hleft | hright
  · have hs : am ^ 2 ≤ (2 * an - g) ^ 2 :=
      pow_le_pow_left₀ (by omega) hleft 2
    omega
  · have hle : 4 * an ≤ 2 * am - g := by omega
    have hs : (4 * an) ^ 2 ≤ (2 * am - g) ^ 2 :=
      pow_le_pow_left₀ (by omega) hle 2
    have hring : (4 * an) ^ 2 = 16 * an ^ 2 := by ring
    omega

theorem not_four_of_remainders (an am wn wm en em g bn bm : ℤ)
    (hg : 0 < g) (han : g ≤ an) (ham : g ≤ am)
    (hn : an = g * bn) (hm : am = g * bm)
    (hodd : ∃ z : ℤ, bm = 2 * z + 1)
    (hin : an ^ 2 = wn + en) (him : am ^ 2 = wm + em)
    (hen : 0 < en) (hem : 0 < em)
    (hgn : 0 < 4 * g * an - g ^ 2 - 4 * en)
    (hgm : 0 < 4 * g * am - g ^ 2 - 4 * em) : wm ≠ 4 * wn := by
  obtain ⟨hnlo, hnhi⟩ := intervals_from_remainder an wn en g hin hen hgn
  obtain ⟨hmlo, hmhi⟩ := intervals_from_remainder am wm em g him hem hgm
  exact not_four_of_intervals an am wn wm g bn bm hg han ham hn hm hodd
    hnlo hnhi hmlo hmhi

#print axioms intervals_from_remainder
#print axioms scaled_odd_separation
#print axioms not_four_of_intervals
#print axioms not_four_of_remainders

end B686OddLatticeGap
