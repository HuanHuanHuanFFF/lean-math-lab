import research.tasks.«B686-Four».round5.main.ContactOriginal

namespace B686Round5Contact
open B686Round4Shift

def combination (z d : ℤ) : ℤ :=
  36372240 + 5574096 * d + 131316174 * d ^ 2 - 18468090 * d ^ 3 + 37841040 * d ^ 4 - 35457080 * d ^ 5 - 8019000 * z - 17391510 * z * d - 21435129 * z * d ^ 2 - 29058600 * z * d ^ 3 - 2740440 * z * d ^ 4 - 3715200 * z ^ 2 + 2124405 * z ^ 2 * d - 11355486 * z ^ 2 * d ^ 2 + 7843190 * z ^ 2 * d ^ 3 + 891000 * z ^ 3 + 1932390 * z ^ 3 * d + 1721681 * z ^ 3 * d ^ 2 - 36240 * z ^ 4 - 304861 * z ^ 4 * d

def quotientH1 (y d : ℤ) : ℤ :=
  131362560 - 497071296 * d + 436444128 * d ^ 2 - 149334000 * d ^ 3 + 6868400 * d ^ 4 - 43277760 * y + 36467856 * y * d - 104161032 * y * d ^ 2 + 57262000 * y * d ^ 3 + 8994960 * y ^ 2 - 2213196 * y ^ 2 * d + 19566034 * y ^ 2 * d ^ 2 - 1647660 * y ^ 3 + 46801 * y ^ 3 * d + 286985 * y ^ 4
def residualH1 (u v q : ℤ) : ℤ :=
  27120121920 * v ^ 6 - 184659756480 * v ^ 7 * q - 33465192000 * v ^ 8 * q ^ 2 + 2335256000 * v ^ 9 * q ^ 3 + 4398300000 * u * v ^ 5 - 38468643840 * u * v ^ 6 * q + 62649369120 * u * v ^ 7 * q ^ 2 + 22353808000 * u * v ^ 8 * q ^ 3 - 4448584800 * u ^ 2 * v ^ 4 + 82295775000 * u ^ 2 * v ^ 5 * q + 117313533600 * u ^ 2 * v ^ 6 * q ^ 2 + 32076171560 * u ^ 2 * v ^ 7 * q ^ 3 - 29450547000 * u ^ 3 * v ^ 3 + 16160411700 * u ^ 3 * v ^ 4 * q + 60009747000 * u ^ 3 * v ^ 5 * q ^ 2 + 19960782620 * u ^ 3 * v ^ 6 * q ^ 3 - 6629919660 * u ^ 4 * v ^ 2 - 13862775600 * u ^ 4 * v ^ 3 * q + 9415919400 * u ^ 4 * v ^ 4 * q ^ 2 + 6320918120 * u ^ 4 * v ^ 5 * q ^ 3 + 37011006 * u ^ 5 * v - 3216627378 * u ^ 5 * v ^ 2 * q - 1264125120 * u ^ 5 * v ^ 3 * q ^ 2 + 905666860 * u ^ 5 * v ^ 4 * q ^ 3 - 94987890 * u ^ 6 + 15185709 * u ^ 6 * v * q - 342097188 * u ^ 6 * v ^ 2 * q ^ 2 + 2007040 * u ^ 6 * v ^ 3 * q ^ 3 - 49965435 * u ^ 7 * q + 809166 * u ^ 7 * v * q ^ 2 - 8086634 * u ^ 7 * v ^ 2 * q ^ 3 - 6961890 * u ^ 8 * q ^ 2 - 46801 * u ^ 8 * v * q ^ 3 - 286985 * u ^ 9 * q ^ 3

set_option maxHeartbeats 0 in
theorem identityH1 (u v q : ℤ) :
    20736 * combination (6 + q * u) (q * v) =
      quotientH1 (q * u) (q * v) * curve (6 + q * u) (q * v) +
        q ^ 6 * residualH1 u v q := by
  unfold combination quotientH1 curve residualH1
  ring

theorem contact_combination1 (z d q : ℤ) (hy : q ∣ z - (6)) (hd : q ∣ d)
    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) : q ^ 6 ∣ combination z d := by
  have hK := coprime_denominator q 20736 hc (by norm_num)
  apply (hK.pow_left (m := 6)).dvd_of_dvd_mul_left
  obtain ⟨u, hu⟩ := hy
  obtain ⟨v, rfl⟩ := hd
  have hz : z = 6 + q * u := by omega
  subst z
  refine ⟨residualH1 u v q, ?_⟩
  simpa only [hcurve, mul_zero, zero_add] using identityH1 u v q

def quotientH2 (y d : ℤ) : ℤ :=
  45752040 - 65720079 * d + 117181161 * d ^ 2 - 72839250 * d ^ 3 + 1713800 * d ^ 4 - 23269680 * y + 4515183 * y * d - 49605516 * y * d ^ 2 + 51692250 * y * d ^ 3 + 8647560 * y ^ 2 + 427329 * y ^ 2 * d + 17431853 * y ^ 2 * d ^ 2 - 2981520 * y ^ 3 - 357153 * y ^ 3 * d + 1004840 * y ^ 4
def residualH2 (u v q : ℤ) : ℤ :=
  58822659000 * v ^ 6 - 50393440260 * v ^ 7 * q - 22605957000 * v ^ 8 * q ^ 2 + 582692000 * v ^ 9 * q ^ 3 - 1099575000 * u * v ^ 5 - 51710323320 * u * v ^ 6 * q + 19730434560 * u * v ^ 7 * q ^ 2 + 18295161000 * u * v ^ 8 * q ^ 3 - 2138400 * u ^ 2 * v ^ 4 - 13335052500 * u ^ 2 * v ^ 5 * q + 49354927920 * u ^ 2 * v ^ 6 * q ^ 2 + 27980335020 * u ^ 2 * v ^ 7 * q ^ 3 + 12716271000 * u ^ 3 * v ^ 3 - 2865006000 * u ^ 3 * v ^ 4 * q + 25408509000 * u ^ 3 * v ^ 5 * q ^ 2 + 17606948240 * u ^ 3 * v ^ 6 * q ^ 3 + 2857530960 * u ^ 4 * v ^ 2 - 2035935360 * u ^ 4 * v ^ 3 * q + 3936281640 * u ^ 4 * v ^ 4 * q ^ 2 + 5745701940 * u ^ 4 * v ^ 5 * q ^ 3 - 69453126 * u ^ 5 * v - 342363006 * u ^ 5 * v ^ 2 * q - 204522420 * u ^ 5 * v ^ 3 * q ^ 2 + 1046162520 * u ^ 5 * v ^ 4 * q ^ 3 + 163378080 * u ^ 6 + 5146767 * u ^ 6 * v * q + 30609321 * u ^ 6 * v ^ 2 * q ^ 2 + 134989630 * u ^ 6 * v ^ 3 * q ^ 3 - 9142560 * u ^ 7 * q + 4929966 * u ^ 7 * v * q ^ 2 + 22761747 * u ^ 7 * v ^ 2 * q ^ 3 - 12091080 * u ^ 8 * q ^ 2 + 357153 * u ^ 8 * v * q ^ 3 - 1004840 * u ^ 9 * q ^ 3

set_option maxHeartbeats 0 in
theorem identityH2 (u v q : ℤ) :
    2187 * combination (3 + q * u) (q * v) =
      quotientH2 (q * u) (q * v) * curve (3 + q * u) (q * v) +
        q ^ 6 * residualH2 u v q := by
  unfold combination quotientH2 curve residualH2
  ring

theorem contact_combination2 (z d q : ℤ) (hy : q ∣ z - (3)) (hd : q ∣ d)
    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) : q ^ 6 ∣ combination z d := by
  have hK := coprime_denominator q 2187 hc (by norm_num)
  apply (hK.pow_left (m := 6)).dvd_of_dvd_mul_left
  obtain ⟨u, hu⟩ := hy
  obtain ⟨v, rfl⟩ := hd
  have hz : z = 3 + q * u := by omega
  subst z
  refine ⟨residualH2 u v q, ?_⟩
  simpa only [hcurve, mul_zero, zero_add] using identityH2 u v q

def quotientH4 (y d : ℤ) : ℤ :=
  - 7040520 - 9160263 * d - 8070129 * d ^ 2 + 1827750 * d ^ 3 - 8595400 * d ^ 4 + 326160 * y + 2743749 * y * d - 2475000 * y * d ^ 2 - 4351250 * y * d ^ 3 - 782280 * y ^ 2 - 1017807 * y ^ 2 * d - 71681 * y ^ 2 * d ^ 2 + 36240 * y ^ 3 + 304861 * y ^ 3 * d - 86920 * y ^ 4
def residualH4 (u v q : ℤ) : ℤ :=
  4057332120 * v ^ 6 - 12782668860 * v ^ 7 * q + 11451639000 * v ^ 8 * q ^ 2 - 2922436000 * v ^ 9 * q ^ 3 - 1099575000 * u * v ^ 5 - 10089020520 * u * v ^ 6 * q + 15723210000 * u * v ^ 7 * q ^ 2 - 5089493000 * u * v ^ 8 * q ^ 3 - 2227500000 * u ^ 2 * v ^ 4 + 452632500 * u ^ 2 * v ^ 5 * q + 7386157680 * u ^ 2 * v ^ 6 * q ^ 2 - 3570976540 * u ^ 2 * v ^ 7 * q ^ 3 - 197397000 * u ^ 3 * v ^ 3 + 2586553200 * u ^ 3 * v ^ 4 * q + 431295000 * u ^ 3 * v ^ 5 * q ^ 2 - 1140519280 * u ^ 3 * v ^ 6 * q ^ 3 + 267300000 * u ^ 4 * v ^ 2 + 585835920 * u ^ 4 * v ^ 3 * q - 646780440 * u ^ 4 * v ^ 4 * q ^ 2 - 89897380 * u ^ 4 * v ^ 5 * q ^ 3 + 54961578 * u ^ 5 * v - 117103626 * u ^ 5 * v ^ 2 * q - 106006740 * u ^ 5 * v ^ 3 * q ^ 2 + 30193960 * u ^ 5 * v ^ 4 * q ^ 3 - 1956960 * u ^ 6 - 31729599 * u ^ 6 * v * q + 34140585 * u ^ 6 * v ^ 2 * q ^ 2 - 838310 * u ^ 6 * v ^ 3 * q ^ 3 + 5237280 * u ^ 7 * q + 5590722 * u ^ 7 * v * q ^ 2 - 3405119 * u ^ 7 * v ^ 2 * q ^ 3 - 1340040 * u ^ 8 * q ^ 2 - 304861 * u ^ 8 * v * q ^ 3 + 86920 * u ^ 9 * q ^ 3

set_option maxHeartbeats 0 in
theorem identityH4 (u v q : ℤ) :
    81 * combination (-3 + q * u) (q * v) =
      quotientH4 (q * u) (q * v) * curve (-3 + q * u) (q * v) +
        q ^ 6 * residualH4 u v q := by
  unfold combination quotientH4 curve residualH4
  ring

theorem contact_combination4 (z d q : ℤ) (hy : q ∣ z - (-3)) (hd : q ∣ d)
    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) : q ^ 6 ∣ combination z d := by
  have hK := coprime_denominator q 81 hc (by norm_num)
  apply (hK.pow_left (m := 6)).dvd_of_dvd_mul_left
  obtain ⟨u, hu⟩ := hy
  obtain ⟨v, rfl⟩ := hd
  have hz : z = -3 + q * u := by omega
  subst z
  refine ⟨residualH4 u v q, ?_⟩
  simpa only [hcurve, mul_zero, zero_add] using identityH4 u v q

theorem three_position_combination (n d P Q R : ℤ)
    (heq : product 5 (n + d) = 4 * product 5 n)
    (hd : d = P * Q * R) (hP : P ∣ n + 1) (hQ : Q ∣ n + 2) (hR : R ∣ n + 4)
    (hPQ : IsCoprime P Q) (hPR : IsCoprime P R) (hQR : IsCoprime Q R)
    (hP6 : IsCoprime P (6 : ℤ)) (hQ6 : IsCoprime Q (6 : ℤ))
    (hR6 : IsCoprime R (6 : ℤ)) : d ^ 6 ∣ combination (3 * (n + 3) - d) d := by
  have hPd : P ∣ d := by rw [hd]; exact dvd_mul_of_dvd_left (dvd_mul_right P Q) R
  have hQd : Q ∣ d := by rw [hd]; exact dvd_mul_of_dvd_left (dvd_mul_left Q P) R
  have hRd : R ∣ d := by rw [hd]; exact dvd_mul_left R (P * Q)
  have hp : P ∣ 3 * (n + 3) - d - 6 := by
    have hid : 3 * (n + 3) - d - 6 = 3 * (n + 1) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hP 3) hPd
  have hq : Q ∣ 3 * (n + 3) - d - 3 := by
    have hid : 3 * (n + 3) - d - 3 = 3 * (n + 2) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hQ 3) hQd
  have hr : R ∣ 3 * (n + 3) - d - (-3) := by
    have hid : 3 * (n + 3) - d - (-3) = 3 * (n + 4) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hR 3) hRd
  have hc := curve_of_original n d heq
  have hp6 := contact_combination1 _ _ _ hp hPd hP6 hc
  have hq6 := contact_combination2 _ _ _ hq hQd hQ6 hc
  have hr6 := contact_combination4 _ _ _ hr hRd hR6 hc
  rw [hd] at hp6 hq6 hr6 ⊢
  rw [mul_pow, mul_pow]
  exact (hPR.pow.mul_left hQR.pow).mul_dvd ((hPQ.pow).mul_dvd hp6 hq6) hr6


/-- info: 'B686Round5Contact.identityH1' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms identityH1
/-- info: 'B686Round5Contact.contact_combination1' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms contact_combination1
/-- info: 'B686Round5Contact.identityH2' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms identityH2
/-- info: 'B686Round5Contact.contact_combination2' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms contact_combination2
/-- info: 'B686Round5Contact.identityH4' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms identityH4
/-- info: 'B686Round5Contact.contact_combination4' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms contact_combination4
/-- info: 'B686Round5Contact.three_position_combination' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms three_position_combination
end B686Round5Contact
