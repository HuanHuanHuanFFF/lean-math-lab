import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.QuarticScaling
import Mathlib.Data.Nat.Choose.Dvd
import Mathlib.Tactic.NormNum

namespace B699.SmoothWindow

/-- Reproved from Nat.choose_mul; source: fixed B699Height.CoefficientContent. -/
theorem choose_mul_complement_comm (a b c : ℕ) :
    a.choose b * (a-b).choose c = a.choose c * (a-c).choose b := by
  calc
    _ = a.choose (b+c) * (b+c).choose b := by
      rw [Nat.choose_mul (by omega : b ≤ b+c), Nat.add_sub_cancel_left]
    _ = a.choose (b+c) * (b+c).choose c := by rw [Nat.choose_symm_add]
    _ = _ := by
      rw [Nat.choose_mul (by omega : c ≤ b+c), Nat.add_sub_cancel_right]

theorem coefficient_identity {n i j r : ℕ}
    (hri : r ≤ i) (hij : i ≤ j) (hjn : j ≤ n) :
    n.choose j * j.choose r * (n-j).choose (i-r) =
      n.choose i * i.choose r * (n-i).choose (j-r) := by
  have hnrj : n-r-(j-r) = n-j := by omega
  have hnri : n-r-(i-r) = n-i := by omega
  have hswap : (n-r).choose (j-r) * (n-j).choose (i-r) =
      (n-r).choose (i-r) * (n-i).choose (j-r) := by
    simpa only [hnrj, hnri] using choose_mul_complement_comm (n-r) (j-r) (i-r)
  rw [Nat.choose_mul (hri.trans hij), Nat.choose_mul hri]
  simpa only [mul_assoc] using congrArg (fun t ↦ n.choose r * t) hswap

theorem divisor_dvd_coefficient {n i j r V : ℕ}
    (hri : r ≤ i) (hij : i ≤ j) (hjn : j ≤ n)
    (hV : V ∣ n.choose i) (hc : V.Coprime (n.choose j)) :
    V ∣ j.choose r * (n-j).choose (i-r) := by
  apply hc.dvd_of_dvd_mul_left
  rw [← mul_assoc, coefficient_identity hri hij hjn]
  exact dvd_mul_of_dvd_left (dvd_mul_of_dvd_left hV _) _

theorem choose_two_scaled (n : ℕ) (hn : 4 ≤ n) :
    (2:ℤ) * (n.choose 2:ℤ) = n*(n-1) := by
  have h := congrArg (fun t:ℕ ↦ (t:ℤ)) (Nat.descFactorial_eq_factorial_mul_choose n 2)
  norm_num [Nat.descFactorial, Nat.factorial, Nat.cast_sub (by omega : 1 ≤ n)] at h
  nlinarith only [h]

theorem choose_three_scaled (n : ℕ) (hn : 4 ≤ n) :
    (6:ℤ) * (n.choose 3:ℤ) = n*(n-1)*(n-2) := by
  have h := congrArg (fun t:ℕ ↦ (t:ℤ)) (Nat.descFactorial_eq_factorial_mul_choose n 3)
  norm_num [Nat.descFactorial, Nat.factorial, Nat.cast_sub (by omega : 1 ≤ n),
    Nat.cast_sub (by omega : 2 ≤ n)] at h
  nlinarith only [h]

theorem choose_four_scaled (n : ℕ) (hn : 4 ≤ n) :
    (24:ℤ) * (n.choose 4:ℤ) = fallingFour n := by
  have h := congrArg (fun t:ℕ ↦ (t:ℤ)) (Nat.descFactorial_eq_factorial_mul_choose n 4)
  norm_num [Nat.descFactorial, Nat.factorial, Nat.cast_sub (by omega : 1 ≤ n),
    Nat.cast_sub (by omega : 2 ≤ n), Nat.cast_sub (by omega : 3 ≤ n)] at h
  simp only [fallingFour]
  nlinarith only [h]

def actualI (j k : ℕ) : ℤ :=
  quarticI (j.choose 4) ((j.choose 3:ℤ)*k) ((j.choose 2:ℤ)*(k.choose 2))
    ((j:ℤ)*k.choose 3) (k.choose 4)
def actualJ (j k : ℕ) : ℤ :=
  quarticJ (j.choose 4) ((j.choose 3:ℤ)*k) ((j.choose 2:ℤ)*(k.choose 2))
    ((j:ℤ)*k.choose 3) (k.choose 4)
def actualW (j k : ℕ) : ℤ :=
  quarticW (j.choose 4) ((j.choose 3:ℤ)*k) ((j.choose 2:ℤ)*(k.choose 2))
    ((j:ℤ)*k.choose 3) (k.choose 4)

theorem scaled_coefficients (j k : ℕ) (hj : 4 ≤ j) (hk : 4 ≤ k) :
    fallingFour j = 24*(j.choose 4:ℤ) ∧
    scaledB j k = 24*((j.choose 3:ℤ)*k) ∧
    scaledC j k = 24*((j.choose 2:ℤ)*(k.choose 2)) ∧
    scaledD j k = 24*((j:ℤ)*k.choose 3) ∧
    fallingFour k = 24*(k.choose 4:ℤ) := by
  refine ⟨(choose_four_scaled j hj).symm, ?_, ?_, ?_, (choose_four_scaled k hk).symm⟩
  · have h := congrArg (fun t:ℤ ↦ 4*t*k) (choose_three_scaled j hj)
    simp only [scaledB]
    nlinarith only [h]
  · have h := congrArg (fun t:ℤ ↦ 6*t) (congrArg₂ (fun a b:ℤ ↦ a*b)
      (choose_two_scaled j hj) (choose_two_scaled k hk))
    simp only [scaledC]
    nlinarith only [h]
  · have h := congrArg (fun t:ℤ ↦ 4*(j:ℤ)*t) (choose_three_scaled k hk)
    simp only [scaledD]
    nlinarith only [h]

theorem actual_I_identity (j k : ℕ) (hj : 4 ≤ j) (hk : 4 ≤ k) :
    8*actualI j k = (j:ℤ)*k*(j-1)*(k-1)*(j+k-3)*(j+k-2) := by
  obtain ⟨ha,hb,hc,hd,he⟩ := scaled_coefficients j k hj hk
  have h := scaled_I_identity (j:ℤ) (k:ℤ)
  rw [ha,hb,hc,hd,he] at h
  rw [quarticI_scale] at h
  change (24:ℤ)^2 * actualI j k = _ at h
  nlinarith only [h]

theorem actual_J_identity (j k : ℕ) (hj : 4 ≤ j) (hk : 4 ≤ k) :
    16*actualJ j k = -(j:ℤ)^2*k^2*(j-1)*(k-1)*(j+k-3)^2*(j+k-2) := by
  obtain ⟨ha,hb,hc,hd,he⟩ := scaled_coefficients j k hj hk
  have h := scaled_J_identity (j:ℤ) (k:ℤ)
  rw [ha,hb,hc,hd,he] at h
  rw [quarticJ_scale] at h
  change (24:ℤ)^3 * actualJ j k = _ at h
  nlinarith only [h]

theorem actual_W_identity (j k : ℕ) (hj : 4 ≤ j) (hk : 4 ≤ k) :
    256*actualW j k = -(j:ℤ)^3*k^3*(j-1)^2*(k-1)^2*(j+k-3)^3*(j+k-2)^2*
      discriminantQ j k := by
  have hw := scaled_W_identity (j:ℤ) (k:ℤ)
  obtain ⟨ha,hb,hc,hd,he⟩ := scaled_coefficients j k hj hk
  rw [ha,hb,hc,hd,he] at hw
  rw [quarticW_scale] at hw
  change (24:ℤ)^6 * actualW j k = _ at hw
  nlinarith only [hw]

theorem divisor_dvd_actual_invariants {n j V : ℕ}
    (hj : 5 ≤ j) (hjn : j ≤ n) (hV : V ∣ n.choose 4)
    (hc : V.Coprime (n.choose j)) :
    (V:ℤ)^2 ∣ actualI j (n-j) ∧ (V:ℤ)^3 ∣ actualJ j (n-j) ∧
    (V:ℤ)^6 ∣ actualW j (n-j) := by
  have hr (r:ℕ) (hr: r ≤ 4) :
      (V:ℤ) ∣ (j.choose r:ℤ) * ((n-j).choose (4-r):ℤ) := by
    exact_mod_cast divisor_dvd_coefficient hr (by omega : 4 ≤ j) hjn hV hc
  have ha : (V:ℤ) ∣ (j.choose 4:ℤ) := by simpa using hr 4 (by omega)
  have hb : (V:ℤ) ∣ (j.choose 3:ℤ)*(n-j:ℕ) := by simpa using hr 3 (by omega)
  have hcc : (V:ℤ) ∣ (j.choose 2:ℤ)*((n-j).choose 2:ℤ) := by simpa using hr 2 (by omega)
  have hd : (V:ℤ) ∣ (j:ℤ)*((n-j).choose 3:ℤ) := by simpa using hr 1 (by omega)
  have he : (V:ℤ) ∣ ((n-j).choose 4:ℤ) := by simpa using hr 0 (by omega)
  exact ⟨quarticI_dvd ha hb hcc hd he, quarticJ_dvd ha hb hcc hd he,
    quarticW_dvd ha hb hcc hd he⟩

end B699.SmoothWindow

