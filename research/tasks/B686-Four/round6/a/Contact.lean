import research.tasks.«B686-Four».round5.main.ContactOriginal

namespace B686Round6A
open B686Round4Shift B686Round5Contact

def auxiliary123 (z d : ℤ) : ℤ :=
  - 1231151400 * d ^ 3 - 2341701900 * d ^ 4 + 1922752090 * d ^ 5 - 443214504 * z - 843012684 * z * d - 213936678 * z * d ^ 2 - 1393759710 * z * d ^ 3 + 1795094470 * z * d ^ 4 + 81099792 * z ^ 2 + 126852966 * z ^ 2 * d - 99037701 * z ^ 2 * d ^ 2 + 583742610 * z ^ 2 * d ^ 3 + 45630702 * z ^ 3 + 100492650 * z ^ 3 * d + 38990369 * z ^ 3 * d ^ 2 - 7805970 * z ^ 4 - 16369632 * z ^ 4 * d

def quotient123_1 (y d : ℤ) : ℤ :=
  - 185221334016 - 375974343360 * d + 88120999008 * d ^ 2 - 15366522960 * d ^ 3 + 898515520 * d ^ 4 + 15782185152 * y + 30676036176 * y * d - 16066847736 * y * d ^ 2 + 4270845960 * y * d ^ 3 - 1353745872 * y ^ 2 - 2483540892 * y ^ 2 * d + 2220381766 * y ^ 2 * d ^ 2 + 117097020 * y ^ 3 + 198873357 * y ^ 3 * d - 10234181 * y ^ 4
def residual123_1 (u v q : ℤ) : ℤ :=
  2276529917760 * v ^ 6 - 3101850420480 * v ^ 7 * q - 2960358696000 * v ^ 8 * q ^ 2 + 305495276800 * v ^ 9 * q ^ 3 + 6698181600 * u * v ^ 5 + 375278698080 * u * v ^ 6 * q + 1002301193760 * u * v ^ 7 * q ^ 2 + 1829464144800 * u * v ^ 8 * q ^ 3 - 510110874720 * u ^ 2 * v ^ 4 + 4297210108200 * u ^ 2 * v ^ 5 * q + 5826538984320 * u ^ 2 * v ^ 6 * q ^ 2 + 2728388207640 * u ^ 2 * v ^ 7 * q ^ 3 - 1546125281640 * u ^ 3 * v ^ 3 + 1220842744740 * u ^ 3 * v ^ 4 * q + 4073781535800 * u ^ 3 * v ^ 5 * q ^ 2 + 1890287095900 * u ^ 3 * v ^ 6 * q ^ 3 - 536135781060 * u ^ 4 * v ^ 2 - 747879161040 * u ^ 4 * v ^ 3 * q + 933023987160 * u ^ 4 * v ^ 4 * q ^ 2 + 694957380000 * u ^ 4 * v ^ 5 * q ^ 3 - 30470392890 * u ^ 5 * v - 314061007878 * u ^ 5 * v ^ 2 * q - 70054304880 * u ^ 5 * v ^ 3 * q ^ 2 + 123393070500 * u ^ 5 * v ^ 4 * q ^ 3 + 1760774058 * u ^ 6 - 18814916871 * u ^ 6 * v * q - 53229334764 * u ^ 6 * v ^ 2 * q ^ 2 + 1637252120 * u ^ 6 * v ^ 3 * q ^ 3 + 1064602287 * u ^ 7 * q - 3482659818 * u ^ 7 * v * q ^ 2 - 2629749006 * u ^ 7 * v ^ 2 * q ^ 3 + 189928410 * u ^ 8 * q ^ 2 - 198873357 * u ^ 8 * v * q ^ 3 + 10234181 * u ^ 9 * q ^ 3

set_option maxHeartbeats 0 in
theorem identity123_1 (u v q : ℤ) :
    279936 * auxiliary123 (6 + q * u) (q * v) =
      quotient123_1 (q * u) (q * v) * curve (6 + q * u) (q * v) +
        q ^ 6 * residual123_1 u v q := by
  unfold auxiliary123 quotient123_1 curve residual123_1
  ring

theorem contact123_1 (z d q : ℤ) (hy : q ∣ z - (6)) (hd : q ∣ d)
    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) : q ^ 6 ∣ auxiliary123 z d := by
  have hK : IsCoprime q (279936 : ℤ) :=
    (hc.pow_right (n := 30)).of_isCoprime_of_dvd_right (by norm_num : (279936 : ℤ) ∣ 6 ^ 30)
  apply (hK.pow_left (m := 6)).dvd_of_dvd_mul_left
  obtain ⟨u, hu⟩ := hy
  obtain ⟨v, rfl⟩ := hd
  have hz : z = 6 + q * u := by omega
  subst z
  try simp only [zero_add] at hcurve
  refine ⟨residual123_1 u v q, ?_⟩
  simpa only [hcurve, mul_zero, zero_add] using identity123_1 u v q

def quotient123_2 (y d : ℤ) : ℤ :=
  - 31130527824 - 62171021232 * d + 20967814872 * d ^ 2 - 5125725360 * d ^ 3 + 274887160 * d ^ 4 + 3589100280 * y + 6662206584 * y * d - 5354877780 * y * d ^ 2 + 1995113160 * y * d ^ 3 - 420481044 * y ^ 2 - 699297732 * y ^ 2 * d + 1048343842 * y ^ 2 * d ^ 2 + 50335470 * y ^ 3 + 70875174 * y ^ 3 * d - 6195389 * y ^ 4
def residual123_2 (u v q : ℤ) : ℤ :=
  519707629440 * v ^ 6 + 918041546880 * v ^ 7 * q - 1396388800800 * v ^ 8 * q ^ 2 + 93461634400 * v ^ 9 * q ^ 3 - 419482800 * u * v ^ 5 + 117656960400 * u * v ^ 6 * q - 1129755922800 * u * v ^ 7 * q ^ 2 + 793791081600 * u * v ^ 8 * q ^ 3 + 36475142400 * u ^ 2 * v ^ 4 - 282632859000 * u ^ 2 * v ^ 5 * q + 302053442040 * u ^ 2 * v ^ 6 * q ^ 2 + 1249361865480 * u ^ 2 * v ^ 7 * q ^ 3 + 254202795720 * u ^ 3 * v ^ 3 - 91415304720 * u ^ 3 * v ^ 4 * q + 512960509200 * u ^ 3 * v ^ 5 * q ^ 2 + 874420091200 * u ^ 3 * v ^ 6 * q ^ 3 + 90696194910 * u ^ 4 * v ^ 2 + 10849967100 * u ^ 4 * v ^ 3 * q + 117610734180 * u ^ 4 * v ^ 4 * q ^ 2 + 317134435620 * u ^ 4 * v ^ 5 * q ^ 3 + 3274468902 * u ^ 5 * v + 10135896318 * u ^ 5 * v ^ 2 * q - 24625191480 * u ^ 5 * v ^ 3 * q ^ 2 + 53231837940 * u ^ 5 * v ^ 4 * q ^ 3 - 383358285 * u ^ 6 + 637876566 * u ^ 6 * v * q - 10587201090 * u ^ 6 * v ^ 2 * q ^ 2 - 399184000 * u ^ 6 * v ^ 3 * q ^ 3 - 55758501 * u ^ 7 * q - 363829878 * u ^ 7 * v * q ^ 2 - 1296159402 * u ^ 7 * v ^ 2 * q ^ 3 + 42595365 * u ^ 8 * q ^ 2 - 70875174 * u ^ 8 * v * q ^ 3 + 6195389 * u ^ 9 * q ^ 3

set_option maxHeartbeats 0 in
theorem identity123_2 (u v q : ℤ) :
    34992 * auxiliary123 (3 + q * u) (q * v) =
      quotient123_2 (q * u) (q * v) * curve (3 + q * u) (q * v) +
        q ^ 6 * residual123_2 u v q := by
  unfold auxiliary123 quotient123_2 curve residual123_2
  ring

theorem contact123_2 (z d q : ℤ) (hy : q ∣ z - (3)) (hd : q ∣ d)
    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) : q ^ 6 ∣ auxiliary123 z d := by
  have hK : IsCoprime q (34992 : ℤ) :=
    (hc.pow_right (n := 30)).of_isCoprime_of_dvd_right (by norm_num : (34992 : ℤ) ∣ 6 ^ 30)
  apply (hK.pow_left (m := 6)).dvd_of_dvd_mul_left
  obtain ⟨u, hu⟩ := hy
  obtain ⟨v, rfl⟩ := hd
  have hz : z = 3 + q * u := by omega
  subst z
  try simp only [zero_add] at hcurve
  refine ⟨residual123_2 u v q, ?_⟩
  simpa only [hcurve, mul_zero, zero_add] using identity123_2 u v q

def quotient123_3 (y d : ℤ) : ℤ :=
  - 886429008 - 1686025368 * d + 1049508324 * d ^ 2 - 428031540 * d ^ 3 - 12804940 * d ^ 4 + 162199584 * y + 253705932 * y * d - 468408042 * y * d ^ 2 + 285946200 * y * d ^ 3 - 31853736 * y ^ 2 - 33184890 * y ^ 2 * d + 167399663 * y ^ 2 * d ^ 2 + 6915780 * y ^ 3 + 2497671 * y ^ 3 * d - 1688238 * y ^ 4
def residual123_3 (u v q : ℤ) : ℤ :=
  - 188020239120 * v ^ 6 + 368357276160 * v ^ 7 * q - 145530723600 * v ^ 8 * q ^ 2 - 4353679600 * v ^ 9 * q ^ 3 - 278526600 * u * v ^ 5 + 276616600560 * u * v ^ 6 * q - 339031981080 * u * v ^ 7 * q ^ 2 + 91843633200 * u * v ^ 8 * q ^ 3 + 13725495360 * u ^ 2 * v ^ 4 + 557241300 * u ^ 2 * v ^ 5 * q - 293620548240 * u ^ 2 * v ^ 6 * q ^ 2 + 174452301420 * u ^ 2 * v ^ 7 * q ^ 3 - 42566878620 * u ^ 3 * v ^ 3 - 13876993980 * u ^ 3 * v ^ 4 * q - 122389158600 * u ^ 3 * v ^ 5 * q ^ 2 + 127834109000 * u ^ 3 * v ^ 6 * q ^ 3 - 18324899730 * u ^ 4 * v ^ 2 + 16815740940 * u ^ 4 * v ^ 3 * q - 22468672080 * u ^ 4 * v ^ 4 * q ^ 2 + 45392801500 * u ^ 4 * v ^ 5 * q ^ 3 + 192705318 * u ^ 5 * v + 6120975591 * u ^ 5 * v ^ 2 * q + 483791940 * u ^ 5 * v ^ 3 * q ^ 2 + 6499265700 * u ^ 5 * v ^ 4 * q ^ 3 + 149010516 * u ^ 6 - 141310737 * u ^ 6 * v * q + 745039242 * u ^ 6 * v ^ 2 * q ^ 2 - 523686960 * u ^ 6 * v ^ 3 * q ^ 3 - 44116974 * u ^ 7 * q + 33184890 * u ^ 7 * v * q ^ 2 - 234929183 * u ^ 7 * v ^ 2 * q ^ 3 - 6915780 * u ^ 8 * q ^ 2 - 2497671 * u ^ 8 * v * q ^ 3 + 1688238 * u ^ 9 * q ^ 3

set_option maxHeartbeats 0 in
theorem identity123_3 (u v q : ℤ) :
    648 * auxiliary123 (0 + q * u) (q * v) =
      quotient123_3 (q * u) (q * v) * curve (0 + q * u) (q * v) +
        q ^ 6 * residual123_3 u v q := by
  unfold auxiliary123 quotient123_3 curve residual123_3
  ring

theorem contact123_3 (z d q : ℤ) (hy : q ∣ z - (0)) (hd : q ∣ d)
    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) : q ^ 6 ∣ auxiliary123 z d := by
  have hK : IsCoprime q (648 : ℤ) :=
    (hc.pow_right (n := 30)).of_isCoprime_of_dvd_right (by norm_num : (648 : ℤ) ∣ 6 ^ 30)
  apply (hK.pow_left (m := 6)).dvd_of_dvd_mul_left
  obtain ⟨u, hu⟩ := hy
  obtain ⟨v, rfl⟩ := hd
  have hz : z = 0 + q * u := by omega
  subst z
  try simp only [zero_add] at hcurve
  refine ⟨residual123_3 u v q, ?_⟩
  simpa only [hcurve, mul_zero, zero_add] using identity123_3 u v q

theorem three_position_contact123 (n d P Q R : ℤ)
    (heq : product 5 (n + d) = 4 * product 5 n)
    (hd : d = P * Q * R) (hP : P ∣ n + 1) (hQ : Q ∣ n + 2) (hR : R ∣ n + 3)
    (hPQ : IsCoprime P Q) (hPR : IsCoprime P R) (hQR : IsCoprime Q R)
    (hP6 : IsCoprime P (6 : ℤ)) (hQ6 : IsCoprime Q (6 : ℤ))
    (hR6 : IsCoprime R (6 : ℤ)) : d ^ 6 ∣ auxiliary123 (3 * (n + 3) - d) d := by
  have hPd : P ∣ d := by rw [hd]; exact dvd_mul_of_dvd_left (dvd_mul_right P Q) R
  have hQd : Q ∣ d := by rw [hd]; exact dvd_mul_of_dvd_left (dvd_mul_left Q P) R
  have hRd : R ∣ d := by rw [hd]; exact dvd_mul_left R (P * Q)
  have hp : P ∣ 3 * (n + 3) - d - (6) := by
    have hid : 3 * (n + 3) - d - (6) = 3 * (n + 1) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hP 3) hPd
  have hq : Q ∣ 3 * (n + 3) - d - (3) := by
    have hid : 3 * (n + 3) - d - (3) = 3 * (n + 2) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hQ 3) hQd
  have hr : R ∣ 3 * (n + 3) - d - (0) := by
    have hid : 3 * (n + 3) - d - (0) = 3 * (n + 3) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hR 3) hRd
  have hc := curve_of_original n d heq
  have hp6 := contact123_1 _ _ _ hp hPd hP6 hc
  have hq6 := contact123_2 _ _ _ hq hQd hQ6 hc
  have hr6 := contact123_3 _ _ _ hr hRd hR6 hc
  rw [hd] at hp6 hq6 hr6 ⊢
  rw [mul_pow, mul_pow]
  exact (hPR.pow.mul_left hQR.pow).mul_dvd ((hPQ.pow).mul_dvd hp6 hq6) hr6

def auxiliary134 (z d : ℤ) : ℤ :=
  1036800 * d ^ 3 - 5100 * d ^ 4 + 565870 * d ^ 5 + 373248 * z - 1836 * z * d + 966798 * z * d ^ 2 + 378750 * z * d ^ 3 - 57430 * z * d ^ 4 + 52488 * z ^ 2 - 126918 * z ^ 2 * d + 135753 * z ^ 2 * d ^ 2 - 183150 * z ^ 2 * d ^ 3 - 22356 * z ^ 3 - 21000 * z ^ 3 * d - 37331 * z ^ 3 * d ^ 2 + 540 * z ^ 4 + 7034 * z ^ 4 * d

def quotient134_1 (y d : ℤ) : ℤ :=
  - 5038848 + 12184128 * d - 11191968 * d ^ 2 + 6602160 * d ^ 3 - 607360 * d ^ 4 + 2255040 * y - 3050928 * y * d + 5209800 * y * d ^ 2 - 4716120 * y * d ^ 3 - 799632 * y ^ 2 + 932772 * y ^ 2 * d - 2075322 * y ^ 2 * d ^ 2 + 270540 * y ^ 3 - 303907 * y ^ 3 * d - 90513 * y ^ 4
def residual134_1 (u v q : ℤ) : ℤ :=
  14252708160 * v ^ 6 + 9005806080 * v ^ 7 * q + 714187200 * v ^ 8 * q ^ 2 - 206502400 * v ^ 9 * q ^ 3 + 3645842400 * u * v ^ 5 - 8771438880 * u * v ^ 6 * q - 8798047200 * u * v ^ 7 * q ^ 2 - 1858572000 * u * v ^ 8 * q ^ 3 + 1171130400 * u ^ 2 * v ^ 4 - 15085459800 * u ^ 2 * v ^ 5 * q - 13160108160 * u ^ 2 * v ^ 6 * q ^ 2 - 2807851880 * u ^ 2 * v ^ 7 * q ^ 3 + 4698852120 * u ^ 3 * v ^ 3 - 4290253020 * u ^ 3 * v ^ 4 * q - 7352430600 * u ^ 3 * v ^ 5 * q ^ 2 - 1942482020 * u ^ 3 * v ^ 6 * q ^ 3 + 1544694300 * u ^ 4 * v ^ 2 + 607440960 * u ^ 4 * v ^ 3 * q - 1924907400 * u ^ 4 * v ^ 4 * q ^ 2 - 762124560 * u ^ 4 * v ^ 5 * q ^ 3 + 195794982 * u ^ 5 * v + 329288778 * u ^ 5 * v ^ 2 * q - 209743920 * u ^ 5 * v ^ 3 * q ^ 2 - 181202380 * u ^ 5 * v ^ 4 * q ^ 3 + 58706370 * u ^ 6 + 70798473 * u ^ 6 * v * q + 2702100 * u ^ 6 * v ^ 2 * q ^ 2 - 25542760 * u ^ 6 * v ^ 3 * q ^ 3 + 21195027 * u ^ 7 * q + 8184438 * u ^ 7 * v * q ^ 2 - 1545198 * u ^ 7 * v ^ 2 * q ^ 3 + 2444850 * u ^ 8 * q ^ 2 + 303907 * u ^ 8 * v * q ^ 3 + 90513 * u ^ 9 * q ^ 3

set_option maxHeartbeats 0 in
theorem identity134_1 (u v q : ℤ) :
    10368 * auxiliary134 (6 + q * u) (q * v) =
      quotient134_1 (q * u) (q * v) * curve (6 + q * u) (q * v) +
        q ^ 6 * residual134_1 u v q := by
  unfold auxiliary134 quotient134_1 curve residual134_1
  ring

theorem contact134_1 (z d q : ℤ) (hy : q ∣ z - (6)) (hd : q ∣ d)
    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) : q ^ 6 ∣ auxiliary134 z d := by
  have hK : IsCoprime q (10368 : ℤ) :=
    (hc.pow_right (n := 30)).of_isCoprime_of_dvd_right (by norm_num : (10368 : ℤ) ∣ 6 ^ 30)
  apply (hK.pow_left (m := 6)).dvd_of_dvd_mul_left
  obtain ⟨u, hu⟩ := hy
  obtain ⟨v, rfl⟩ := hd
  have hz : z = 6 + q * u := by omega
  subst z
  try simp only [zero_add] at hcurve
  refine ⟨residual134_1 u v q, ?_⟩
  simpa only [hcurve, mul_zero, zero_add] using identity134_1 u v q

def quotient134_3 (y d : ℤ) : ℤ :=
  746496 - 3672 * d + 689436 * d ^ 2 + 472020 * d ^ 3 + 408860 * d ^ 4 + 104976 * y - 253836 * y * d + 96546 * y * d ^ 2 + 353760 * y * d ^ 3 + 58968 * y ^ 2 - 42510 * y ^ 2 * d + 14973 * y ^ 2 * d ^ 2 + 15660 * y ^ 3 - 21187 * y ^ 3 * d + 5886 * y ^ 4
def residual134_3 (u v q : ℤ) : ℤ :=
  - 426066480 * v ^ 6 - 133565760 * v ^ 7 * q + 160486800 * v ^ 8 * q ^ 2 + 139012400 * v ^ 9 * q ^ 3 - 307632600 * u * v ^ 5 - 335909520 * u * v ^ 6 * q + 231074040 * u * v ^ 7 * q ^ 2 + 291999600 * u * v ^ 8 * q ^ 3 + 29479680 * u ^ 2 * v ^ 4 - 153180900 * u ^ 2 * v ^ 5 * q + 120499920 * u ^ 2 * v ^ 6 * q ^ 2 + 235442020 * u ^ 2 * v ^ 7 * q ^ 3 + 50950620 * u ^ 3 * v ^ 3 + 30958380 * u ^ 3 * v ^ 4 * q + 25660200 * u ^ 3 * v ^ 5 * q ^ 2 + 86191480 * u ^ 3 * v ^ 6 * q ^ 3 + 87210 * u ^ 4 * v ^ 2 + 23702940 * u ^ 4 * v ^ 3 * q + 1937040 * u ^ 4 * v ^ 4 * q ^ 2 + 10247700 * u ^ 4 * v ^ 5 * q ^ 3 - 1909278 * u ^ 5 * v - 835371 * u ^ 5 * v ^ 2 * q + 959580 * u ^ 5 * v ^ 3 * q ^ 2 - 1575220 * u ^ 5 * v ^ 4 * q ^ 3 + 599724 * u ^ 6 - 699579 * u ^ 6 * v * q + 529854 * u ^ 6 * v ^ 2 * q ^ 2 - 24040 * u ^ 6 * v ^ 3 * q ^ 3 + 205902 * u ^ 7 * q + 42510 * u ^ 7 * v * q ^ 2 + 220467 * u ^ 7 * v ^ 2 * q ^ 3 - 15660 * u ^ 8 * q ^ 2 + 21187 * u ^ 8 * v * q ^ 3 - 5886 * u ^ 9 * q ^ 3

set_option maxHeartbeats 0 in
theorem identity134_3 (u v q : ℤ) :
    648 * auxiliary134 (0 + q * u) (q * v) =
      quotient134_3 (q * u) (q * v) * curve (0 + q * u) (q * v) +
        q ^ 6 * residual134_3 u v q := by
  unfold auxiliary134 quotient134_3 curve residual134_3
  ring

theorem contact134_3 (z d q : ℤ) (hy : q ∣ z - (0)) (hd : q ∣ d)
    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) : q ^ 6 ∣ auxiliary134 z d := by
  have hK : IsCoprime q (648 : ℤ) :=
    (hc.pow_right (n := 30)).of_isCoprime_of_dvd_right (by norm_num : (648 : ℤ) ∣ 6 ^ 30)
  apply (hK.pow_left (m := 6)).dvd_of_dvd_mul_left
  obtain ⟨u, hu⟩ := hy
  obtain ⟨v, rfl⟩ := hd
  have hz : z = 0 + q * u := by omega
  subst z
  try simp only [zero_add] at hcurve
  refine ⟨residual134_3 u v q, ?_⟩
  simpa only [hcurve, mul_zero, zero_add] using identity134_3 u v q

def quotient134_4 (y d : ℤ) : ℤ :=
  804816 + 756000 * d + 417276 * d ^ 2 - 117240 * d ^ 3 + 893060 * d ^ 4 - 153576 * y - 379224 * y * d + 175614 * y * d ^ 2 + 235500 * y * d ^ 3 + 70308 * y ^ 2 + 105204 * y ^ 2 * d - 98427 * y ^ 2 * d ^ 2 - 20250 * y ^ 3 - 38602 * y ^ 3 * d + 7281 * y ^ 4
def residual134_4 (u v q : ℤ) : ℤ :=
  108008640 * v ^ 6 + 1093350240 * v ^ 7 * q - 1165117200 * v ^ 8 * q ^ 2 + 303640400 * v ^ 9 * q ^ 3 + 464308200 * u * v ^ 5 + 659936520 * u * v ^ 6 * q - 1357934040 * u * v ^ 7 * q ^ 2 + 455155200 * u * v ^ 8 * q ^ 3 + 318760920 * u ^ 2 * v ^ 4 - 314415900 * u ^ 2 * v ^ 5 * q - 394004340 * u ^ 2 * v ^ 6 * q ^ 2 + 244056820 * u ^ 2 * v ^ 7 * q ^ 3 + 42899220 * u ^ 3 * v ^ 3 - 321655320 * u ^ 3 * v ^ 4 * q + 149704800 * u ^ 3 * v ^ 5 * q ^ 2 + 28358380 * u ^ 3 * v ^ 6 * q ^ 3 - 26813025 * u ^ 4 * v ^ 2 - 41329080 * u ^ 4 * v ^ 3 * q + 105538320 * u ^ 4 * v ^ 4 * q ^ 2 - 24002700 * u ^ 4 * v ^ 5 * q ^ 3 - 5967270 * u ^ 5 * v + 20680209 * u ^ 5 * v ^ 2 * q + 8967420 * u ^ 5 * v ^ 3 * q ^ 2 - 9492520 * u ^ 5 * v ^ 4 * q ^ 3 + 1136511 * u ^ 6 + 3694374 * u ^ 6 * v * q - 5083179 * u ^ 6 * v ^ 2 * q ^ 2 - 323380 * u ^ 6 * v ^ 3 * q ^ 3 - 701703 * u ^ 7 * q - 684234 * u ^ 7 * v * q ^ 2 + 389667 * u ^ 7 * v ^ 2 * q ^ 3 + 129465 * u ^ 8 * q ^ 2 + 38602 * u ^ 8 * v * q ^ 3 - 7281 * u ^ 9 * q ^ 3

set_option maxHeartbeats 0 in
theorem identity134_4 (u v q : ℤ) :
    648 * auxiliary134 (-3 + q * u) (q * v) =
      quotient134_4 (q * u) (q * v) * curve (-3 + q * u) (q * v) +
        q ^ 6 * residual134_4 u v q := by
  unfold auxiliary134 quotient134_4 curve residual134_4
  ring

theorem contact134_4 (z d q : ℤ) (hy : q ∣ z - (-3)) (hd : q ∣ d)
    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) : q ^ 6 ∣ auxiliary134 z d := by
  have hK : IsCoprime q (648 : ℤ) :=
    (hc.pow_right (n := 30)).of_isCoprime_of_dvd_right (by norm_num : (648 : ℤ) ∣ 6 ^ 30)
  apply (hK.pow_left (m := 6)).dvd_of_dvd_mul_left
  obtain ⟨u, hu⟩ := hy
  obtain ⟨v, rfl⟩ := hd
  have hz : z = -3 + q * u := by omega
  subst z
  try simp only [zero_add] at hcurve
  refine ⟨residual134_4 u v q, ?_⟩
  simpa only [hcurve, mul_zero, zero_add] using identity134_4 u v q

theorem three_position_contact134 (n d P Q R : ℤ)
    (heq : product 5 (n + d) = 4 * product 5 n)
    (hd : d = P * Q * R) (hP : P ∣ n + 1) (hQ : Q ∣ n + 3) (hR : R ∣ n + 4)
    (hPQ : IsCoprime P Q) (hPR : IsCoprime P R) (hQR : IsCoprime Q R)
    (hP6 : IsCoprime P (6 : ℤ)) (hQ6 : IsCoprime Q (6 : ℤ))
    (hR6 : IsCoprime R (6 : ℤ)) : d ^ 6 ∣ auxiliary134 (3 * (n + 3) - d) d := by
  have hPd : P ∣ d := by rw [hd]; exact dvd_mul_of_dvd_left (dvd_mul_right P Q) R
  have hQd : Q ∣ d := by rw [hd]; exact dvd_mul_of_dvd_left (dvd_mul_left Q P) R
  have hRd : R ∣ d := by rw [hd]; exact dvd_mul_left R (P * Q)
  have hp : P ∣ 3 * (n + 3) - d - (6) := by
    have hid : 3 * (n + 3) - d - (6) = 3 * (n + 1) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hP 3) hPd
  have hq : Q ∣ 3 * (n + 3) - d - (0) := by
    have hid : 3 * (n + 3) - d - (0) = 3 * (n + 3) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hQ 3) hQd
  have hr : R ∣ 3 * (n + 3) - d - (-3) := by
    have hid : 3 * (n + 3) - d - (-3) = 3 * (n + 4) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hR 3) hRd
  have hc := curve_of_original n d heq
  have hp6 := contact134_1 _ _ _ hp hPd hP6 hc
  have hq6 := contact134_3 _ _ _ hq hQd hQ6 hc
  have hr6 := contact134_4 _ _ _ hr hRd hR6 hc
  rw [hd] at hp6 hq6 hr6 ⊢
  rw [mul_pow, mul_pow]
  exact (hPR.pow.mul_left hQR.pow).mul_dvd ((hPQ.pow).mul_dvd hp6 hq6) hr6

def auxiliary235 (z d : ℤ) : ℤ :=
  - 1036800 * d ^ 3 - 5100 * d ^ 4 - 565870 * d ^ 5 - 373248 * z - 1836 * z * d - 966798 * z * d ^ 2 + 378750 * z * d ^ 3 + 57430 * z * d ^ 4 + 52488 * z ^ 2 + 126918 * z ^ 2 * d + 135753 * z ^ 2 * d ^ 2 + 183150 * z ^ 2 * d ^ 3 + 22356 * z ^ 3 - 21000 * z ^ 3 * d + 37331 * z ^ 3 * d ^ 2 + 540 * z ^ 4 - 7034 * z ^ 4 * d

def quotient235_2 (y d : ℤ) : ℤ :=
  - 804816 + 756000 * d - 417276 * d ^ 2 - 117240 * d ^ 3 - 893060 * d ^ 4 - 153576 * y + 379224 * y * d + 175614 * y * d ^ 2 - 235500 * y * d ^ 3 - 70308 * y ^ 2 + 105204 * y ^ 2 * d + 98427 * y ^ 2 * d ^ 2 - 20250 * y ^ 3 + 38602 * y ^ 3 * d - 7281 * y ^ 4
def residual235_2 (u v q : ℤ) : ℤ :=
  108008640 * v ^ 6 - 1093350240 * v ^ 7 * q - 1165117200 * v ^ 8 * q ^ 2 - 303640400 * v ^ 9 * q ^ 3 + 464308200 * u * v ^ 5 - 659936520 * u * v ^ 6 * q - 1357934040 * u * v ^ 7 * q ^ 2 - 455155200 * u * v ^ 8 * q ^ 3 + 318760920 * u ^ 2 * v ^ 4 + 314415900 * u ^ 2 * v ^ 5 * q - 394004340 * u ^ 2 * v ^ 6 * q ^ 2 - 244056820 * u ^ 2 * v ^ 7 * q ^ 3 + 42899220 * u ^ 3 * v ^ 3 + 321655320 * u ^ 3 * v ^ 4 * q + 149704800 * u ^ 3 * v ^ 5 * q ^ 2 - 28358380 * u ^ 3 * v ^ 6 * q ^ 3 - 26813025 * u ^ 4 * v ^ 2 + 41329080 * u ^ 4 * v ^ 3 * q + 105538320 * u ^ 4 * v ^ 4 * q ^ 2 + 24002700 * u ^ 4 * v ^ 5 * q ^ 3 - 5967270 * u ^ 5 * v - 20680209 * u ^ 5 * v ^ 2 * q + 8967420 * u ^ 5 * v ^ 3 * q ^ 2 + 9492520 * u ^ 5 * v ^ 4 * q ^ 3 + 1136511 * u ^ 6 - 3694374 * u ^ 6 * v * q - 5083179 * u ^ 6 * v ^ 2 * q ^ 2 + 323380 * u ^ 6 * v ^ 3 * q ^ 3 + 701703 * u ^ 7 * q - 684234 * u ^ 7 * v * q ^ 2 - 389667 * u ^ 7 * v ^ 2 * q ^ 3 + 129465 * u ^ 8 * q ^ 2 - 38602 * u ^ 8 * v * q ^ 3 + 7281 * u ^ 9 * q ^ 3

set_option maxHeartbeats 0 in
theorem identity235_2 (u v q : ℤ) :
    648 * auxiliary235 (3 + q * u) (q * v) =
      quotient235_2 (q * u) (q * v) * curve (3 + q * u) (q * v) +
        q ^ 6 * residual235_2 u v q := by
  unfold auxiliary235 quotient235_2 curve residual235_2
  ring

theorem contact235_2 (z d q : ℤ) (hy : q ∣ z - (3)) (hd : q ∣ d)
    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) : q ^ 6 ∣ auxiliary235 z d := by
  have hK : IsCoprime q (648 : ℤ) :=
    (hc.pow_right (n := 30)).of_isCoprime_of_dvd_right (by norm_num : (648 : ℤ) ∣ 6 ^ 30)
  apply (hK.pow_left (m := 6)).dvd_of_dvd_mul_left
  obtain ⟨u, hu⟩ := hy
  obtain ⟨v, rfl⟩ := hd
  have hz : z = 3 + q * u := by omega
  subst z
  try simp only [zero_add] at hcurve
  refine ⟨residual235_2 u v q, ?_⟩
  simpa only [hcurve, mul_zero, zero_add] using identity235_2 u v q

def quotient235_3 (y d : ℤ) : ℤ :=
  - 746496 - 3672 * d - 689436 * d ^ 2 + 472020 * d ^ 3 - 408860 * d ^ 4 + 104976 * y + 253836 * y * d + 96546 * y * d ^ 2 - 353760 * y * d ^ 3 - 58968 * y ^ 2 - 42510 * y ^ 2 * d - 14973 * y ^ 2 * d ^ 2 + 15660 * y ^ 3 + 21187 * y ^ 3 * d - 5886 * y ^ 4
def residual235_3 (u v q : ℤ) : ℤ :=
  - 426066480 * v ^ 6 + 133565760 * v ^ 7 * q + 160486800 * v ^ 8 * q ^ 2 - 139012400 * v ^ 9 * q ^ 3 - 307632600 * u * v ^ 5 + 335909520 * u * v ^ 6 * q + 231074040 * u * v ^ 7 * q ^ 2 - 291999600 * u * v ^ 8 * q ^ 3 + 29479680 * u ^ 2 * v ^ 4 + 153180900 * u ^ 2 * v ^ 5 * q + 120499920 * u ^ 2 * v ^ 6 * q ^ 2 - 235442020 * u ^ 2 * v ^ 7 * q ^ 3 + 50950620 * u ^ 3 * v ^ 3 - 30958380 * u ^ 3 * v ^ 4 * q + 25660200 * u ^ 3 * v ^ 5 * q ^ 2 - 86191480 * u ^ 3 * v ^ 6 * q ^ 3 + 87210 * u ^ 4 * v ^ 2 - 23702940 * u ^ 4 * v ^ 3 * q + 1937040 * u ^ 4 * v ^ 4 * q ^ 2 - 10247700 * u ^ 4 * v ^ 5 * q ^ 3 - 1909278 * u ^ 5 * v + 835371 * u ^ 5 * v ^ 2 * q + 959580 * u ^ 5 * v ^ 3 * q ^ 2 + 1575220 * u ^ 5 * v ^ 4 * q ^ 3 + 599724 * u ^ 6 + 699579 * u ^ 6 * v * q + 529854 * u ^ 6 * v ^ 2 * q ^ 2 + 24040 * u ^ 6 * v ^ 3 * q ^ 3 - 205902 * u ^ 7 * q + 42510 * u ^ 7 * v * q ^ 2 - 220467 * u ^ 7 * v ^ 2 * q ^ 3 - 15660 * u ^ 8 * q ^ 2 - 21187 * u ^ 8 * v * q ^ 3 + 5886 * u ^ 9 * q ^ 3

set_option maxHeartbeats 0 in
theorem identity235_3 (u v q : ℤ) :
    648 * auxiliary235 (0 + q * u) (q * v) =
      quotient235_3 (q * u) (q * v) * curve (0 + q * u) (q * v) +
        q ^ 6 * residual235_3 u v q := by
  unfold auxiliary235 quotient235_3 curve residual235_3
  ring

theorem contact235_3 (z d q : ℤ) (hy : q ∣ z - (0)) (hd : q ∣ d)
    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) : q ^ 6 ∣ auxiliary235 z d := by
  have hK : IsCoprime q (648 : ℤ) :=
    (hc.pow_right (n := 30)).of_isCoprime_of_dvd_right (by norm_num : (648 : ℤ) ∣ 6 ^ 30)
  apply (hK.pow_left (m := 6)).dvd_of_dvd_mul_left
  obtain ⟨u, hu⟩ := hy
  obtain ⟨v, rfl⟩ := hd
  have hz : z = 0 + q * u := by omega
  subst z
  try simp only [zero_add] at hcurve
  refine ⟨residual235_3 u v q, ?_⟩
  simpa only [hcurve, mul_zero, zero_add] using identity235_3 u v q

def quotient235_5 (y d : ℤ) : ℤ :=
  5038848 + 12184128 * d + 11191968 * d ^ 2 + 6602160 * d ^ 3 + 607360 * d ^ 4 + 2255040 * y + 3050928 * y * d + 5209800 * y * d ^ 2 + 4716120 * y * d ^ 3 + 799632 * y ^ 2 + 932772 * y ^ 2 * d + 2075322 * y ^ 2 * d ^ 2 + 270540 * y ^ 3 + 303907 * y ^ 3 * d + 90513 * y ^ 4
def residual235_5 (u v q : ℤ) : ℤ :=
  14252708160 * v ^ 6 - 9005806080 * v ^ 7 * q + 714187200 * v ^ 8 * q ^ 2 + 206502400 * v ^ 9 * q ^ 3 + 3645842400 * u * v ^ 5 + 8771438880 * u * v ^ 6 * q - 8798047200 * u * v ^ 7 * q ^ 2 + 1858572000 * u * v ^ 8 * q ^ 3 + 1171130400 * u ^ 2 * v ^ 4 + 15085459800 * u ^ 2 * v ^ 5 * q - 13160108160 * u ^ 2 * v ^ 6 * q ^ 2 + 2807851880 * u ^ 2 * v ^ 7 * q ^ 3 + 4698852120 * u ^ 3 * v ^ 3 + 4290253020 * u ^ 3 * v ^ 4 * q - 7352430600 * u ^ 3 * v ^ 5 * q ^ 2 + 1942482020 * u ^ 3 * v ^ 6 * q ^ 3 + 1544694300 * u ^ 4 * v ^ 2 - 607440960 * u ^ 4 * v ^ 3 * q - 1924907400 * u ^ 4 * v ^ 4 * q ^ 2 + 762124560 * u ^ 4 * v ^ 5 * q ^ 3 + 195794982 * u ^ 5 * v - 329288778 * u ^ 5 * v ^ 2 * q - 209743920 * u ^ 5 * v ^ 3 * q ^ 2 + 181202380 * u ^ 5 * v ^ 4 * q ^ 3 + 58706370 * u ^ 6 - 70798473 * u ^ 6 * v * q + 2702100 * u ^ 6 * v ^ 2 * q ^ 2 + 25542760 * u ^ 6 * v ^ 3 * q ^ 3 - 21195027 * u ^ 7 * q + 8184438 * u ^ 7 * v * q ^ 2 + 1545198 * u ^ 7 * v ^ 2 * q ^ 3 + 2444850 * u ^ 8 * q ^ 2 - 303907 * u ^ 8 * v * q ^ 3 - 90513 * u ^ 9 * q ^ 3

set_option maxHeartbeats 0 in
theorem identity235_5 (u v q : ℤ) :
    10368 * auxiliary235 (-6 + q * u) (q * v) =
      quotient235_5 (q * u) (q * v) * curve (-6 + q * u) (q * v) +
        q ^ 6 * residual235_5 u v q := by
  unfold auxiliary235 quotient235_5 curve residual235_5
  ring

theorem contact235_5 (z d q : ℤ) (hy : q ∣ z - (-6)) (hd : q ∣ d)
    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) : q ^ 6 ∣ auxiliary235 z d := by
  have hK : IsCoprime q (10368 : ℤ) :=
    (hc.pow_right (n := 30)).of_isCoprime_of_dvd_right (by norm_num : (10368 : ℤ) ∣ 6 ^ 30)
  apply (hK.pow_left (m := 6)).dvd_of_dvd_mul_left
  obtain ⟨u, hu⟩ := hy
  obtain ⟨v, rfl⟩ := hd
  have hz : z = -6 + q * u := by omega
  subst z
  try simp only [zero_add] at hcurve
  refine ⟨residual235_5 u v q, ?_⟩
  simpa only [hcurve, mul_zero, zero_add] using identity235_5 u v q

theorem three_position_contact235 (n d P Q R : ℤ)
    (heq : product 5 (n + d) = 4 * product 5 n)
    (hd : d = P * Q * R) (hP : P ∣ n + 2) (hQ : Q ∣ n + 3) (hR : R ∣ n + 5)
    (hPQ : IsCoprime P Q) (hPR : IsCoprime P R) (hQR : IsCoprime Q R)
    (hP6 : IsCoprime P (6 : ℤ)) (hQ6 : IsCoprime Q (6 : ℤ))
    (hR6 : IsCoprime R (6 : ℤ)) : d ^ 6 ∣ auxiliary235 (3 * (n + 3) - d) d := by
  have hPd : P ∣ d := by rw [hd]; exact dvd_mul_of_dvd_left (dvd_mul_right P Q) R
  have hQd : Q ∣ d := by rw [hd]; exact dvd_mul_of_dvd_left (dvd_mul_left Q P) R
  have hRd : R ∣ d := by rw [hd]; exact dvd_mul_left R (P * Q)
  have hp : P ∣ 3 * (n + 3) - d - (3) := by
    have hid : 3 * (n + 3) - d - (3) = 3 * (n + 2) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hP 3) hPd
  have hq : Q ∣ 3 * (n + 3) - d - (0) := by
    have hid : 3 * (n + 3) - d - (0) = 3 * (n + 3) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hQ 3) hQd
  have hr : R ∣ 3 * (n + 3) - d - (-6) := by
    have hid : 3 * (n + 3) - d - (-6) = 3 * (n + 5) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hR 3) hRd
  have hc := curve_of_original n d heq
  have hp6 := contact235_2 _ _ _ hp hPd hP6 hc
  have hq6 := contact235_3 _ _ _ hq hQd hQ6 hc
  have hr6 := contact235_5 _ _ _ hr hRd hR6 hc
  rw [hd] at hp6 hq6 hr6 ⊢
  rw [mul_pow, mul_pow]
  exact (hPR.pow.mul_left hQR.pow).mul_dvd ((hPQ.pow).mul_dvd hp6 hq6) hr6

def auxiliary345 (z d : ℤ) : ℤ :=
  1231151400 * d ^ 3 - 2341701900 * d ^ 4 - 1922752090 * d ^ 5 + 443214504 * z - 843012684 * z * d + 213936678 * z * d ^ 2 - 1393759710 * z * d ^ 3 - 1795094470 * z * d ^ 4 + 81099792 * z ^ 2 - 126852966 * z ^ 2 * d - 99037701 * z ^ 2 * d ^ 2 - 583742610 * z ^ 2 * d ^ 3 - 45630702 * z ^ 3 + 100492650 * z ^ 3 * d - 38990369 * z ^ 3 * d ^ 2 - 7805970 * z ^ 4 + 16369632 * z ^ 4 * d

def quotient345_3 (y d : ℤ) : ℤ :=
  886429008 - 1686025368 * d - 1049508324 * d ^ 2 - 428031540 * d ^ 3 + 12804940 * d ^ 4 + 162199584 * y - 253705932 * y * d - 468408042 * y * d ^ 2 - 285946200 * y * d ^ 3 + 31853736 * y ^ 2 - 33184890 * y ^ 2 * d - 167399663 * y ^ 2 * d ^ 2 + 6915780 * y ^ 3 - 2497671 * y ^ 3 * d + 1688238 * y ^ 4
def residual345_3 (u v q : ℤ) : ℤ :=
  - 188020239120 * v ^ 6 - 368357276160 * v ^ 7 * q - 145530723600 * v ^ 8 * q ^ 2 + 4353679600 * v ^ 9 * q ^ 3 - 278526600 * u * v ^ 5 - 276616600560 * u * v ^ 6 * q - 339031981080 * u * v ^ 7 * q ^ 2 - 91843633200 * u * v ^ 8 * q ^ 3 + 13725495360 * u ^ 2 * v ^ 4 - 557241300 * u ^ 2 * v ^ 5 * q - 293620548240 * u ^ 2 * v ^ 6 * q ^ 2 - 174452301420 * u ^ 2 * v ^ 7 * q ^ 3 - 42566878620 * u ^ 3 * v ^ 3 + 13876993980 * u ^ 3 * v ^ 4 * q - 122389158600 * u ^ 3 * v ^ 5 * q ^ 2 - 127834109000 * u ^ 3 * v ^ 6 * q ^ 3 - 18324899730 * u ^ 4 * v ^ 2 - 16815740940 * u ^ 4 * v ^ 3 * q - 22468672080 * u ^ 4 * v ^ 4 * q ^ 2 - 45392801500 * u ^ 4 * v ^ 5 * q ^ 3 + 192705318 * u ^ 5 * v - 6120975591 * u ^ 5 * v ^ 2 * q + 483791940 * u ^ 5 * v ^ 3 * q ^ 2 - 6499265700 * u ^ 5 * v ^ 4 * q ^ 3 + 149010516 * u ^ 6 + 141310737 * u ^ 6 * v * q + 745039242 * u ^ 6 * v ^ 2 * q ^ 2 + 523686960 * u ^ 6 * v ^ 3 * q ^ 3 + 44116974 * u ^ 7 * q + 33184890 * u ^ 7 * v * q ^ 2 + 234929183 * u ^ 7 * v ^ 2 * q ^ 3 - 6915780 * u ^ 8 * q ^ 2 + 2497671 * u ^ 8 * v * q ^ 3 - 1688238 * u ^ 9 * q ^ 3

set_option maxHeartbeats 0 in
theorem identity345_3 (u v q : ℤ) :
    648 * auxiliary345 (0 + q * u) (q * v) =
      quotient345_3 (q * u) (q * v) * curve (0 + q * u) (q * v) +
        q ^ 6 * residual345_3 u v q := by
  unfold auxiliary345 quotient345_3 curve residual345_3
  ring

theorem contact345_3 (z d q : ℤ) (hy : q ∣ z - (0)) (hd : q ∣ d)
    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) : q ^ 6 ∣ auxiliary345 z d := by
  have hK : IsCoprime q (648 : ℤ) :=
    (hc.pow_right (n := 30)).of_isCoprime_of_dvd_right (by norm_num : (648 : ℤ) ∣ 6 ^ 30)
  apply (hK.pow_left (m := 6)).dvd_of_dvd_mul_left
  obtain ⟨u, hu⟩ := hy
  obtain ⟨v, rfl⟩ := hd
  have hz : z = 0 + q * u := by omega
  subst z
  try simp only [zero_add] at hcurve
  refine ⟨residual345_3 u v q, ?_⟩
  simpa only [hcurve, mul_zero, zero_add] using identity345_3 u v q

def quotient345_4 (y d : ℤ) : ℤ :=
  31130527824 - 62171021232 * d - 20967814872 * d ^ 2 - 5125725360 * d ^ 3 - 274887160 * d ^ 4 + 3589100280 * y - 6662206584 * y * d - 5354877780 * y * d ^ 2 - 1995113160 * y * d ^ 3 + 420481044 * y ^ 2 - 699297732 * y ^ 2 * d - 1048343842 * y ^ 2 * d ^ 2 + 50335470 * y ^ 3 - 70875174 * y ^ 3 * d + 6195389 * y ^ 4
def residual345_4 (u v q : ℤ) : ℤ :=
  519707629440 * v ^ 6 - 918041546880 * v ^ 7 * q - 1396388800800 * v ^ 8 * q ^ 2 - 93461634400 * v ^ 9 * q ^ 3 - 419482800 * u * v ^ 5 - 117656960400 * u * v ^ 6 * q - 1129755922800 * u * v ^ 7 * q ^ 2 - 793791081600 * u * v ^ 8 * q ^ 3 + 36475142400 * u ^ 2 * v ^ 4 + 282632859000 * u ^ 2 * v ^ 5 * q + 302053442040 * u ^ 2 * v ^ 6 * q ^ 2 - 1249361865480 * u ^ 2 * v ^ 7 * q ^ 3 + 254202795720 * u ^ 3 * v ^ 3 + 91415304720 * u ^ 3 * v ^ 4 * q + 512960509200 * u ^ 3 * v ^ 5 * q ^ 2 - 874420091200 * u ^ 3 * v ^ 6 * q ^ 3 + 90696194910 * u ^ 4 * v ^ 2 - 10849967100 * u ^ 4 * v ^ 3 * q + 117610734180 * u ^ 4 * v ^ 4 * q ^ 2 - 317134435620 * u ^ 4 * v ^ 5 * q ^ 3 + 3274468902 * u ^ 5 * v - 10135896318 * u ^ 5 * v ^ 2 * q - 24625191480 * u ^ 5 * v ^ 3 * q ^ 2 - 53231837940 * u ^ 5 * v ^ 4 * q ^ 3 - 383358285 * u ^ 6 - 637876566 * u ^ 6 * v * q - 10587201090 * u ^ 6 * v ^ 2 * q ^ 2 + 399184000 * u ^ 6 * v ^ 3 * q ^ 3 + 55758501 * u ^ 7 * q - 363829878 * u ^ 7 * v * q ^ 2 + 1296159402 * u ^ 7 * v ^ 2 * q ^ 3 + 42595365 * u ^ 8 * q ^ 2 + 70875174 * u ^ 8 * v * q ^ 3 - 6195389 * u ^ 9 * q ^ 3

set_option maxHeartbeats 0 in
theorem identity345_4 (u v q : ℤ) :
    34992 * auxiliary345 (-3 + q * u) (q * v) =
      quotient345_4 (q * u) (q * v) * curve (-3 + q * u) (q * v) +
        q ^ 6 * residual345_4 u v q := by
  unfold auxiliary345 quotient345_4 curve residual345_4
  ring

theorem contact345_4 (z d q : ℤ) (hy : q ∣ z - (-3)) (hd : q ∣ d)
    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) : q ^ 6 ∣ auxiliary345 z d := by
  have hK : IsCoprime q (34992 : ℤ) :=
    (hc.pow_right (n := 30)).of_isCoprime_of_dvd_right (by norm_num : (34992 : ℤ) ∣ 6 ^ 30)
  apply (hK.pow_left (m := 6)).dvd_of_dvd_mul_left
  obtain ⟨u, hu⟩ := hy
  obtain ⟨v, rfl⟩ := hd
  have hz : z = -3 + q * u := by omega
  subst z
  try simp only [zero_add] at hcurve
  refine ⟨residual345_4 u v q, ?_⟩
  simpa only [hcurve, mul_zero, zero_add] using identity345_4 u v q

def quotient345_5 (y d : ℤ) : ℤ :=
  185221334016 - 375974343360 * d - 88120999008 * d ^ 2 - 15366522960 * d ^ 3 - 898515520 * d ^ 4 + 15782185152 * y - 30676036176 * y * d - 16066847736 * y * d ^ 2 - 4270845960 * y * d ^ 3 + 1353745872 * y ^ 2 - 2483540892 * y ^ 2 * d - 2220381766 * y ^ 2 * d ^ 2 + 117097020 * y ^ 3 - 198873357 * y ^ 3 * d + 10234181 * y ^ 4
def residual345_5 (u v q : ℤ) : ℤ :=
  2276529917760 * v ^ 6 + 3101850420480 * v ^ 7 * q - 2960358696000 * v ^ 8 * q ^ 2 - 305495276800 * v ^ 9 * q ^ 3 + 6698181600 * u * v ^ 5 - 375278698080 * u * v ^ 6 * q + 1002301193760 * u * v ^ 7 * q ^ 2 - 1829464144800 * u * v ^ 8 * q ^ 3 - 510110874720 * u ^ 2 * v ^ 4 - 4297210108200 * u ^ 2 * v ^ 5 * q + 5826538984320 * u ^ 2 * v ^ 6 * q ^ 2 - 2728388207640 * u ^ 2 * v ^ 7 * q ^ 3 - 1546125281640 * u ^ 3 * v ^ 3 - 1220842744740 * u ^ 3 * v ^ 4 * q + 4073781535800 * u ^ 3 * v ^ 5 * q ^ 2 - 1890287095900 * u ^ 3 * v ^ 6 * q ^ 3 - 536135781060 * u ^ 4 * v ^ 2 + 747879161040 * u ^ 4 * v ^ 3 * q + 933023987160 * u ^ 4 * v ^ 4 * q ^ 2 - 694957380000 * u ^ 4 * v ^ 5 * q ^ 3 - 30470392890 * u ^ 5 * v + 314061007878 * u ^ 5 * v ^ 2 * q - 70054304880 * u ^ 5 * v ^ 3 * q ^ 2 - 123393070500 * u ^ 5 * v ^ 4 * q ^ 3 + 1760774058 * u ^ 6 + 18814916871 * u ^ 6 * v * q - 53229334764 * u ^ 6 * v ^ 2 * q ^ 2 - 1637252120 * u ^ 6 * v ^ 3 * q ^ 3 - 1064602287 * u ^ 7 * q - 3482659818 * u ^ 7 * v * q ^ 2 + 2629749006 * u ^ 7 * v ^ 2 * q ^ 3 + 189928410 * u ^ 8 * q ^ 2 + 198873357 * u ^ 8 * v * q ^ 3 - 10234181 * u ^ 9 * q ^ 3

set_option maxHeartbeats 0 in
theorem identity345_5 (u v q : ℤ) :
    279936 * auxiliary345 (-6 + q * u) (q * v) =
      quotient345_5 (q * u) (q * v) * curve (-6 + q * u) (q * v) +
        q ^ 6 * residual345_5 u v q := by
  unfold auxiliary345 quotient345_5 curve residual345_5
  ring

theorem contact345_5 (z d q : ℤ) (hy : q ∣ z - (-6)) (hd : q ∣ d)
    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) : q ^ 6 ∣ auxiliary345 z d := by
  have hK : IsCoprime q (279936 : ℤ) :=
    (hc.pow_right (n := 30)).of_isCoprime_of_dvd_right (by norm_num : (279936 : ℤ) ∣ 6 ^ 30)
  apply (hK.pow_left (m := 6)).dvd_of_dvd_mul_left
  obtain ⟨u, hu⟩ := hy
  obtain ⟨v, rfl⟩ := hd
  have hz : z = -6 + q * u := by omega
  subst z
  try simp only [zero_add] at hcurve
  refine ⟨residual345_5 u v q, ?_⟩
  simpa only [hcurve, mul_zero, zero_add] using identity345_5 u v q

theorem three_position_contact345 (n d P Q R : ℤ)
    (heq : product 5 (n + d) = 4 * product 5 n)
    (hd : d = P * Q * R) (hP : P ∣ n + 3) (hQ : Q ∣ n + 4) (hR : R ∣ n + 5)
    (hPQ : IsCoprime P Q) (hPR : IsCoprime P R) (hQR : IsCoprime Q R)
    (hP6 : IsCoprime P (6 : ℤ)) (hQ6 : IsCoprime Q (6 : ℤ))
    (hR6 : IsCoprime R (6 : ℤ)) : d ^ 6 ∣ auxiliary345 (3 * (n + 3) - d) d := by
  have hPd : P ∣ d := by rw [hd]; exact dvd_mul_of_dvd_left (dvd_mul_right P Q) R
  have hQd : Q ∣ d := by rw [hd]; exact dvd_mul_of_dvd_left (dvd_mul_left Q P) R
  have hRd : R ∣ d := by rw [hd]; exact dvd_mul_left R (P * Q)
  have hp : P ∣ 3 * (n + 3) - d - (0) := by
    have hid : 3 * (n + 3) - d - (0) = 3 * (n + 3) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hP 3) hPd
  have hq : Q ∣ 3 * (n + 3) - d - (-3) := by
    have hid : 3 * (n + 3) - d - (-3) = 3 * (n + 4) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hQ 3) hQd
  have hr : R ∣ 3 * (n + 3) - d - (-6) := by
    have hid : 3 * (n + 3) - d - (-6) = 3 * (n + 5) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hR 3) hRd
  have hc := curve_of_original n d heq
  have hp6 := contact345_3 _ _ _ hp hPd hP6 hc
  have hq6 := contact345_4 _ _ _ hq hQd hQ6 hc
  have hr6 := contact345_5 _ _ _ hr hRd hR6 hc
  rw [hd] at hp6 hq6 hr6 ⊢
  rw [mul_pow, mul_pow]
  exact (hPR.pow.mul_left hQR.pow).mul_dvd ((hPQ.pow).mul_dvd hp6 hq6) hr6

/-- info: 'B686Round6A.identity123_1' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms identity123_1
/-- info: 'B686Round6A.contact123_1' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms contact123_1
/-- info: 'B686Round6A.identity123_2' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms identity123_2
/-- info: 'B686Round6A.contact123_2' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms contact123_2
/-- info: 'B686Round6A.identity123_3' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms identity123_3
/-- info: 'B686Round6A.contact123_3' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms contact123_3
/-- info: 'B686Round6A.three_position_contact123' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms three_position_contact123
/-- info: 'B686Round6A.identity134_1' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms identity134_1
/-- info: 'B686Round6A.contact134_1' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms contact134_1
/-- info: 'B686Round6A.identity134_3' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms identity134_3
/-- info: 'B686Round6A.contact134_3' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms contact134_3
/-- info: 'B686Round6A.identity134_4' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms identity134_4
/-- info: 'B686Round6A.contact134_4' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms contact134_4
/-- info: 'B686Round6A.three_position_contact134' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms three_position_contact134
/-- info: 'B686Round6A.identity235_2' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms identity235_2
/-- info: 'B686Round6A.contact235_2' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms contact235_2
/-- info: 'B686Round6A.identity235_3' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms identity235_3
/-- info: 'B686Round6A.contact235_3' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms contact235_3
/-- info: 'B686Round6A.identity235_5' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms identity235_5
/-- info: 'B686Round6A.contact235_5' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms contact235_5
/-- info: 'B686Round6A.three_position_contact235' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms three_position_contact235
/-- info: 'B686Round6A.identity345_3' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms identity345_3
/-- info: 'B686Round6A.contact345_3' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms contact345_3
/-- info: 'B686Round6A.identity345_4' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms identity345_4
/-- info: 'B686Round6A.contact345_4' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms contact345_4
/-- info: 'B686Round6A.identity345_5' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms identity345_5
/-- info: 'B686Round6A.contact345_5' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms contact345_5
/-- info: 'B686Round6A.three_position_contact345' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms three_position_contact345
end B686Round6A
