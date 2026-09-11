import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

namespace B699.SmoothWindow

def quarticI (a b c d e : ℤ) : ℤ := 12*a*e - 3*b*d + c^2
def quarticJ (a b c d e : ℤ) : ℤ :=
  72*a*c*e + 9*b*c*d - 27*a*d^2 - 27*b^2*e - 2*c^3
def quarticW (a b c d e : ℤ) : ℤ :=
  2 * (quarticI a b c d e)^3 - (quarticJ a b c d e)^2

theorem quarticI_dvd {D a b c d e : ℤ}
    (ha : D ∣ a) (hb : D ∣ b) (hc : D ∣ c) (hd : D ∣ d) (he : D ∣ e) :
    D^2 ∣ quarticI a b c d e := by
  obtain ⟨a', rfl⟩ := ha
  obtain ⟨b', rfl⟩ := hb
  obtain ⟨c', rfl⟩ := hc
  obtain ⟨d', rfl⟩ := hd
  obtain ⟨e', rfl⟩ := he
  refine ⟨quarticI a' b' c' d' e', ?_⟩
  simp only [quarticI]
  ring

theorem quarticJ_dvd {D a b c d e : ℤ}
    (ha : D ∣ a) (hb : D ∣ b) (hc : D ∣ c) (hd : D ∣ d) (he : D ∣ e) :
    D^3 ∣ quarticJ a b c d e := by
  obtain ⟨a', rfl⟩ := ha
  obtain ⟨b', rfl⟩ := hb
  obtain ⟨c', rfl⟩ := hc
  obtain ⟨d', rfl⟩ := hd
  obtain ⟨e', rfl⟩ := he
  refine ⟨quarticJ a' b' c' d' e', ?_⟩
  simp only [quarticJ]
  ring

theorem quarticW_dvd {D a b c d e : ℤ}
    (ha : D ∣ a) (hb : D ∣ b) (hc : D ∣ c) (hd : D ∣ d) (he : D ∣ e) :
    D^6 ∣ quarticW a b c d e := by
  obtain ⟨u, hu⟩ := quarticI_dvd ha hb hc hd he
  obtain ⟨v, hv⟩ := quarticJ_dvd ha hb hc hd he
  refine ⟨2*u^3-v^2, ?_⟩
  simp only [quarticW, hu, hv]
  ring

def fallingFour (x : ℤ) := x*(x-1)*(x-2)*(x-3)
def scaledB (x y : ℤ) := 4*x*(x-1)*(x-2)*y
def scaledC (x y : ℤ) := 6*x*(x-1)*y*(y-1)
def scaledD (x y : ℤ) := 4*x*y*(y-1)*(y-2)
def discriminantQ (x y : ℤ) := x^2+x*y+y^2-3*x-3*y+2

theorem scaled_I_identity (x y : ℤ) :
    quarticI (fallingFour x) (scaledB x y) (scaledC x y) (scaledD x y)
      (fallingFour y) =
    72*x*y*(x-1)*(y-1)*(x+y-3)*(x+y-2) := by
  simp only [quarticI, fallingFour, scaledB, scaledC, scaledD]
  ring

theorem scaled_J_identity (x y : ℤ) :
    quarticJ (fallingFour x) (scaledB x y) (scaledC x y) (scaledD x y)
      (fallingFour y) =
    -864*x^2*y^2*(x-1)*(y-1)*(x+y-3)^2*(x+y-2) := by
  simp only [quarticJ, fallingFour, scaledB, scaledC, scaledD]
  ring

theorem scaled_W_identity (x y : ℤ) :
    quarticW (fallingFour x) (scaledB x y) (scaledC x y) (scaledD x y)
      (fallingFour y) =
    -746496*x^3*y^3*(x-1)^2*(y-1)^2*(x+y-3)^3*(x+y-2)^2*discriminantQ x y := by
  rw [quarticW, scaled_I_identity, scaled_J_identity]
  simp only [discriminantQ]
  ring

theorem discriminantQ_pos {x y : ℤ} (hx : 5 ≤ x) (hy : 5 ≤ y) :
    0 < discriminantQ x y := by
  have hx0 : 0 < x := by omega
  have hy0 : 0 < y := by omega
  have hx3 : 0 < x-3 := by omega
  have hy3 : 0 < y-3 := by omega
  have heq : discriminantQ x y = x*(x-3)+y*(y-3)+x*y+2 := by
    simp only [discriminantQ]; ring
  rw [heq]
  positivity

theorem scaled_I_pos {x y : ℤ} (hx : 5 ≤ x) (hy : 5 ≤ y) :
    0 < quarticI (fallingFour x) (scaledB x y) (scaledC x y) (scaledD x y)
      (fallingFour y) := by
  rw [scaled_I_identity]
  have : 0 < x := by omega
  have : 0 < y := by omega
  have : 0 < x-1 := by omega
  have : 0 < y-1 := by omega
  have : 0 < x+y-3 := by omega
  have : 0 < x+y-2 := by omega
  positivity

theorem scaled_W_neg {x y : ℤ} (hx : 5 ≤ x) (hy : 5 ≤ y) :
    quarticW (fallingFour x) (scaledB x y) (scaledC x y) (scaledD x y)
      (fallingFour y) < 0 := by
  rw [scaled_W_identity]
  have : 0 < x := by omega
  have : 0 < y := by omega
  have : 0 < x-1 := by omega
  have : 0 < y-1 := by omega
  have : 0 < x+y-3 := by omega
  have : 0 < x+y-2 := by omega
  have : 0 < discriminantQ x y := discriminantQ_pos hx hy
  have h : 0 < 746496*x^3*y^3*(x-1)^2*(y-1)^2*(x+y-3)^3*(x+y-2)^2*discriminantQ x y := by
    positivity
  nlinarith only [h]

end B699.SmoothWindow


#print axioms B699.SmoothWindow.quarticI_dvd
#print axioms B699.SmoothWindow.quarticJ_dvd
#print axioms B699.SmoothWindow.quarticW_dvd
#print axioms B699.SmoothWindow.scaled_I_identity
#print axioms B699.SmoothWindow.scaled_J_identity
#print axioms B699.SmoothWindow.scaled_W_identity
#print axioms B699.SmoothWindow.discriminantQ_pos
#print axioms B699.SmoothWindow.scaled_I_pos
#print axioms B699.SmoothWindow.scaled_W_neg
