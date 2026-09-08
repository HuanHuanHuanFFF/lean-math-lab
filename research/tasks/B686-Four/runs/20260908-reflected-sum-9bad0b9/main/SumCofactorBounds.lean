import research.tasks.«B686-Four».runs.«20260908-reflected-sum-9bad0b9».main.SumPrimePowerExclusion

/-! Uniform reflected-sum cofactor bounds. B is the complete complementary
factor S / p^v_p(S), not the smooth part of either S or the distance. -/
namespace B686Reflected
open Finset B686Target B686ReflectedA
set_option maxHeartbeats 1600000

theorem original_sum_cofactor_length_bound (k n m p B : ℕ)
    (hk : 2≤k) (hsep : n+k≤m) (heq : product k m=4*product k n)
    (hp : p.Prime)
    (hfactor : reflectedSum k n m=B*p^(padicValNat p (reflectedSum k n m))) :
    k≤2*(reflectedCoefficient k)*B := by
  have : Fact p.Prime := ⟨hp⟩
  let S := reflectedSum k n m
  let a := padicValNat p S
  let c := reflectedCoefficient k
  let e := padicValNat p c
  let L := Nat.log p k
  have hS : 0<S := by dsimp [S, reflectedSum]; omega
  have hB : 0<B := by
    change S=B*p^a at hfactor
    by_contra h
    have hb : B=0 := Nat.eq_zero_of_not_pos h
    rw [hb, zero_mul] at hfactor
    omega
  have hc := (coefficient_prime_and_le_five k).1.pos
  have hpe : p^e≤c := Nat.le_of_dvd hc pow_padicValNat_dvd
  have hpL : p^L≤k := Nat.pow_log_le_self p (by omega)
  have hsize := reflected_sum_size k n m hk hsep heq
  by_cases hhigh : L+e<a
  · obtain ⟨i, hi, hvi, _, _⟩ := original_high_contact_nat k n m p hp hk hsep heq hhigh
    let q := p^(a-e)
    have he : e≤a := by omega
    have hpa : p^a=q*p^e := by dsimp [q]; rw [← pow_add, Nat.sub_add_cancel he]
    have hqz : q∣n+i := by
      dsimp [q, a, S, e, c]
      rw [← hvi]
      exact pow_padicValNat_dvd
    have hqS : q∣S := by
      change S=B*p^a at hfactor
      rw [hfactor, hpa]
      exact dvd_mul_of_dvd_right (dvd_mul_right q (p^e)) B
    have hqd : q∣S-2*(n+i) := Nat.dvd_sub hqS (dvd_mul_of_dvd_right hqz 2)
    have hw := reflected_delta_window k n m i hk hsep hi
    have hqle : q≤S-2*(n+i) := Nat.le_of_dvd hw.1 hqd
    have hqu : q<2*(m-n) := lt_of_le_of_lt hqle hw.2
    have hSb : S≤B*q*c := by
      change S=B*p^a at hfactor
      rw [hfactor, hpa]
      simpa only [mul_assoc] using Nat.mul_le_mul_left (B*q) hpe
    have hSc : S<2*c*B*(m-n) := by
      have hm := Nat.mul_lt_mul_of_pos_left hqu (show 0<B*c by exact Nat.mul_pos hB hc)
      nlinarith only [hm, hSb]
    have hgrow : (k-1)*(m-n)<S := by dsimp [S]; omega
    have hg : (k-1)*(m-n)<2*c*B*(m-n) := lt_trans hgrow hSc
    have hn := Nat.lt_of_mul_lt_mul_right hg
    change k≤2*c*B
    omega
  · have hlow : a≤L+e := by omega
    have hpow := Nat.pow_le_pow_right hp.pos hlow
    rw [pow_add] at hpow
    have hab : p^a≤k*c := le_trans hpow (Nat.mul_le_mul hpL hpe)
    have hsbound : S≤B*(k*c) := by
      change S=B*p^a at hfactor
      rw [hfactor]
      exact Nat.mul_le_mul_left B hab
    have hh : k<c*B := by
      by_contra! hnot
      have ht := Nat.mul_le_mul_left k hnot
      nlinarith [hsize.2]
    change k≤2*c*B
    nlinarith

theorem original_sum_cofactor_height_bound (k n m p B : ℕ)
    (hk : 2≤k) (hsep : n+k≤m) (heq : product k m=4*product k n)
    (hp : p.Prime)
    (hfactor : reflectedSum k n m=B*p^(padicValNat p (reflectedSum k n m))) :
    reflectedSum k n m<4*(reflectedCoefficient k)*k*B^2 := by
  have : Fact p.Prime := ⟨hp⟩
  let S := reflectedSum k n m
  let a := padicValNat p S
  let c := reflectedCoefficient k
  let e := padicValNat p c
  let L := Nat.log p k
  have hS : 0<S := by dsimp [S, reflectedSum]; omega
  have hB : 0<B := by
    change S=B*p^a at hfactor
    by_contra h
    have hb : B=0 := Nat.eq_zero_of_not_pos h
    rw [hb, zero_mul] at hfactor
    omega
  have hc := (coefficient_prime_and_le_five k).1.pos
  have hck : 0<c*k := Nat.mul_pos hc (by omega)
  have hpe : p^e≤c := Nat.le_of_dvd hc pow_padicValNat_dvd
  have hpL : p^L≤k := Nat.pow_log_le_self p (by omega)
  by_cases hhigh : L+e<a
  · obtain ⟨i, hi, _, hT, hdiv⟩ := original_high_contact_sharp_nat k n m p hp hk hsep heq hhigh
    let T := (reflectedContact k n m i).natAbs
    have hle : p^(2*a-e-L+padicValNat p 4)≤T := Nat.le_of_dvd hT hdiv
    have hexp : 2*a≤(e+L)+(2*a-e-L+padicValNat p 4) := by omega
    have hp2 : (p^a)^2≤p^(e+L)*p^(2*a-e-L+padicValNat p 4) := by
      rw [← pow_mul, ← pow_add]
      apply Nat.pow_le_pow_right hp.pos
      omega
    have hpowcoeff : p^(e+L)≤c*k := by rw [pow_add]; exact Nat.mul_le_mul hpe hpL
    have hcontact : (p^a)^2≤c*k*T := le_trans hp2 (Nat.mul_le_mul hpowcoeff hle)
    have hw := contact_magnitude_lt k n m i hk hsep heq hi
    have hTupper : T<4*S := by change 2*T<5*S at hw; omega
    have hupper : (p^a)^2<4*c*k*S := by
      have ht := Nat.mul_lt_mul_of_pos_left hTupper hck
      nlinarith only [hcontact, ht]
    have hx : S^2<(4*c*k*B^2)*S := by
      calc
        S^2=B^2*(p^a)^2 := by change S=B*p^a at hfactor; rw [hfactor]; ring
        _ < B^2*(4*c*k*S) := Nat.mul_lt_mul_of_pos_left hupper (pow_pos hB 2)
        _ = _ := by ring
    rw [pow_two] at hx
    exact Nat.lt_of_mul_lt_mul_right hx
  · have hlow : a≤L+e := by omega
    have hpow := Nat.pow_le_pow_right hp.pos hlow
    rw [pow_add] at hpow
    have hab : p^a≤k*c := le_trans hpow (Nat.mul_le_mul hpL hpe)
    have hsbound : S≤B*(k*c) := by
      change S=B*p^a at hfactor
      rw [hfactor]
      exact Nat.mul_le_mul_left B hab
    have hBB : B≤B^2 := by nlinarith
    have hh := Nat.mul_le_mul_left (c*k) hBB
    change S<4*c*k*B^2
    nlinarith [Nat.mul_pos hck (pow_pos hB 2)]

/-- For fixed B, the original variables k,n,m and S are bounded. An auxiliary
prime not dividing S is unrestricted; bounding it additionally requires p | S.
The complementary factor B remains unrestricted across the full problem. -/
theorem original_sum_cofactor_bounds (k n m p B : ℕ)
    (hk : 2≤k) (hsep : n+k≤m) (heq : product k m=4*product k n)
    (hp : p.Prime)
    (hfactor : reflectedSum k n m=B*p^(padicValNat p (reflectedSum k n m))) :
    k≤10*B ∧ reflectedSum k n m<200*B^3 ∧ m<200*B^3 := by
  have hl := original_sum_cofactor_length_bound k n m p B hk hsep heq hp hfactor
  have hh := original_sum_cofactor_height_bound k n m p B hk hsep heq hp hfactor
  have hc := (coefficient_prime_and_le_five k).2
  have hkB : k≤10*B := by nlinarith
  have hbound : 4*(reflectedCoefficient k)*k*B^2≤200*B^3 := by
    calc
      _ ≤ 4*5*(10*B)*B^2 := by gcongr
      _ = _ := by ring
  have hS := lt_of_lt_of_le hh hbound
  refine ⟨hkB, hS, ?_⟩
  unfold reflectedSum at hS
  omega

/-- Source-only version: the complete complementary factor is computed from
the reflected sum itself, with no factorization certificate supplied. -/
theorem original_sum_quotient_bounds (k n m p : ℕ)
    (hk : 2≤k) (hsep : n+k≤m) (heq : product k m=4*product k n)
    (hp : p.Prime) :
    let B := reflectedSum k n m / p^(padicValNat p (reflectedSum k n m))
    k≤10*B ∧ reflectedSum k n m<200*B^3 ∧ m<200*B^3 := by
  apply original_sum_cofactor_bounds k n m p _ hk hsep heq hp
  exact (Nat.div_mul_cancel pow_padicValNat_dvd).symm

/-- info: 'B686Reflected.original_sum_cofactor_length_bound' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_sum_cofactor_length_bound
/-- info: 'B686Reflected.original_sum_cofactor_height_bound' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_sum_cofactor_height_bound
/-- info: 'B686Reflected.original_sum_cofactor_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_sum_cofactor_bounds
/-- info: 'B686Reflected.original_sum_quotient_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_sum_quotient_bounds

end B686Reflected
