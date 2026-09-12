import research.tasks.«B699-Binomial».runs.«20260911-smooth-window-lean-894d6b50».lean.WindowPrimary
import Mathlib.NumberTheory.Multiplicity

namespace B699.SmoothWindow

theorem neighbor_product (x : ℕ) (hx : 1 ≤ x) :
    (x-1)*(x+1) = x^2-1 := by
  have hs : 1 ≤ x^2 := by nlinarith
  nlinarith only [Nat.sub_add_cancel hx, Nat.sub_add_cancel hs]

theorem factorization_four_power_sub_one {t : ℕ} (ht : 1 ≤ t) :
    (4^t-1).factorization 3 = 1 + t.factorization 3 := by
  letI : Fact (Nat.Prime 3) := ⟨by decide⟩
  have h := padicValNat.pow_sub_pow (p:=3) (x:=4) (y:=1)
    (by decide : Odd 3) (by decide) (by decide) (by decide) (by omega : t ≠ 0)
  simp only [one_pow] at h
  change padicValNat 3 (4^t-1) = padicValNat 3 3 + padicValNat 3 t at h
  rw [← Nat.factorization_def _ (by decide : Nat.Prime 3),
    ← Nat.factorization_def _ (by decide : Nat.Prime 3),
    ← Nat.factorization_def _ (by decide : Nat.Prime 3)] at h
  simpa only [Nat.Prime.factorization_self (by decide : Nat.Prime 3)] using h

theorem factorization_nine_power_sub_one {t : ℕ} (ht : 1 ≤ t) :
    (9^t-1).factorization 2 = 3 + t.factorization 2 := by
  letI : Fact (Nat.Prime 2) := ⟨by decide⟩
  have heven : Even (2*t) := ⟨t,by omega⟩
  have h := padicValNat.pow_two_sub_one (x:=3) (n:=2*t)
    (by decide) (by decide) (by omega) heven
  have hp : (3:ℕ)^(2*t) = 9^t := by rw [pow_mul]; norm_num
  rw [hp] at h
  change padicValNat 2 (9^t-1) + 1 = padicValNat 2 4 + padicValNat 2 2 + padicValNat 2 (2*t) at h
  simp only [← Nat.factorization_def _ (by decide : Nat.Prime 2)] at h
  have h4 : (4:ℕ).factorization 2 = 2 := by
    simpa using Nat.factorization_pow_self (n:=2) (by decide : Nat.Prime 2)
  have h2 : (2:ℕ).factorization 2 = 1 := Nat.Prime.factorization_self (by decide)
  have hmul : (2*t).factorization 2 = 1 + t.factorization 2 := by
    simp [Nat.factorization_mul (by decide : 2 ≠ 0) (by omega : t ≠ 0), h2]
  omega

theorem three_part_two_power_neighbors {t : ℕ} (ht : 1 ≤ t) :
    ordProj[3] (2^t-1) ≤ 3*t ∧ ordProj[3] (2^t+1) ≤ 3*t := by
  have hx : 2 ≤ 2^t := by simpa using Nat.pow_le_pow_right (by decide : 0 < 2) ht
  have he : (2^t-1)*(2^t+1) = 4^t-1 := by
    rw [neighbor_product _ (by omega),← pow_mul, Nat.mul_comm t 2, pow_mul]
    norm_num
  have hp := congrArg (fun x:ℕ ↦ ordProj[3] x) he
  rw [Nat.ordProj_mul 3 (by omega : 2^t-1 ≠ 0) (by omega : 2^t+1 ≠ 0)] at hp
  change ordProj[3] (2^t-1)*ordProj[3] (2^t+1) = 3^((4^t-1).factorization 3) at hp
  rw [factorization_four_power_sub_one ht,pow_add] at hp
  have hleft := Nat.ordProj_pos (2^t-1) 3
  have hright := Nat.ordProj_pos (2^t+1) 3
  have hle := Nat.ordProj_le 3 (by omega : t ≠ 0)
  change 3^t.factorization 3 ≤ t at hle
  constructor <;> nlinarith only [hp,hleft,hright,hle]

theorem two_part_three_power_neighbors {t : ℕ} (ht : 1 ≤ t) :
    ordProj[2] (3^t-1) ≤ 4*t ∧ ordProj[2] (3^t+1) ≤ 4*t := by
  have hx : 3 ≤ 3^t := by simpa using Nat.pow_le_pow_right (by decide : 0 < 3) ht
  have he : (3^t-1)*(3^t+1) = 9^t-1 := by
    rw [neighbor_product _ (by omega),← pow_mul, Nat.mul_comm t 2, pow_mul]
    norm_num
  have hp := congrArg (fun x:ℕ ↦ ordProj[2] x) he
  rw [Nat.ordProj_mul 2 (by omega : 3^t-1 ≠ 0) (by omega : 3^t+1 ≠ 0)] at hp
  change ordProj[2] (3^t-1)*ordProj[2] (3^t+1) = 2^((9^t-1).factorization 2) at hp
  rw [factorization_nine_power_sub_one ht,pow_add] at hp
  have hmod : 3^t % 2 = 1 := by norm_num [Nat.pow_mod]
  have hdivleft : 2 ∣ 3^t-1 := by omega
  have hdivright : 2 ∣ 3^t+1 := by omega
  have hleft : 2 ≤ ordProj[2] (3^t-1) :=
    Nat.le_of_dvd (Nat.ordProj_pos _ _) (Nat.dvd_ordProj_of_dvd (by omega) (by decide) hdivleft)
  have hright : 2 ≤ ordProj[2] (3^t+1) :=
    Nat.le_of_dvd (Nat.ordProj_pos _ _) (Nat.dvd_ordProj_of_dvd (by omega) (by decide) hdivright)
  have hle := Nat.ordProj_le 2 (by omega : t ≠ 0)
  change 2^t.factorization 2 ≤ t at hle
  constructor <;> nlinarith only [hp,hleft,hright,hle]

end B699.SmoothWindow
