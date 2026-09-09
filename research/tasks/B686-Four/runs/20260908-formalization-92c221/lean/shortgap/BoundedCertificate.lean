import research.tasks.«B686-Four».lean.Round3SmallGapCertificates

/-! Exact cutoffs extending the original all-start certificate to k=70.
Python supplies only data. The Lean kernel checks every strict sign and the
existing antitonicity theorem covers every natural starting point. -/
namespace B686ShortGapCertificate
open Finset B686Round3SmallGap

def cutoffTable : List (List ℕ) :=
  [[326, 342, 357, 372, 388, 403, 419, 434],
   [358, 374, 390, 406, 422, 438, 454, 470],
   [391, 408, 424, 441, 458, 475, 492, 508],
   [425, 443, 460, 478, 495, 513, 530, 548],
   [461, 479, 497, 516, 534, 552, 570, 589],
   [498, 517, 536, 555, 574, 593, 612, 631],
   [537, 556, 576, 596, 616, 635, 655, 675],
   [577, 597, 618, 638, 659, 679, 699, 720],
   [618, 640, 661, 682, 703, 724, 745, 766],
   [661, 683, 705, 727, 749, 771, 793, 814],
   [706, 728, 751, 774, 796, 819, 841, 864],
   [752, 775, 798, 822, 845, 868, 892, 915],
   [799, 823, 847, 871, 895, 919, 943, 967],
   [848, 873, 897, 922, 947, 972, 996, 1021],
   [898, 924, 949, 975, 1000, 1025, 1051, 1076],
   [950, 976, 1002, 1028, 1055, 1081, 1107, 1133],
   [1003, 1030, 1057, 1084, 1111, 1137, 1164, 1191],
   [1057, 1085, 1113, 1140, 1168, 1196, 1223, 1251],
   [1113, 1142, 1170, 1198, 1227, 1255, 1284, 1312],
   [1171, 1200, 1229, 1258, 1287, 1316, 1345, 1374],
   [1230, 1259, 1289, 1319, 1349, 1379, 1408, 1438],
   [1290, 1321, 1351, 1382, 1412, 1443, 1473, 1504],
   [1352, 1383, 1414, 1445, 1477, 1508, 1539, 1570],
   [1415, 1447, 1479, 1511, 1543, 1575, 1607, 1639],
   [1480, 1512, 1545, 1578, 1610, 1643, 1676, 1708],
   [1546, 1579, 1612, 1646, 1679, 1713, 1746, 1780],
   [1613, 1647, 1681, 1716, 1750, 1784, 1818, 1852],
   [1682, 1717, 1752, 1787, 1822, 1856, 1891, 1926],
   [1753, 1788, 1824, 1859, 1895, 1930, 1966, 2002],
   [1824, 1861, 1897, 1933, 1970, 2006, 2042, 2078],
   [1898, 1935, 1972, 2009, 2046, 2083, 2120, 2157],
   [1972, 2010, 2048, 2086, 2123, 2161, 2199, 2237],
   [2049, 2087, 2126, 2164, 2202, 2241, 2279, 2318],
   [2126, 2165, 2205, 2244, 2283, 2322, 2361, 2401],
   [2205, 2245, 2285, 2325, 2365, 2405, 2445, 2485],
   [2286, 2327, 2367, 2408, 2448, 2489, 2530, 2570],
   [2368, 2409, 2451, 2492, 2533, 2575, 2616, 2657],
   [2451, 2493, 2535, 2577, 2619, 2662, 2704, 2746],
   [2536, 2579, 2622, 2664, 2707, 2750, 2793, 2836],
   [2622, 2666, 2709, 2753, 2796, 2840, 2883, 2927],
   [2710, 2754, 2799, 2843, 2887, 2931, 2975, 3020],
   [2799, 2844, 2889, 2934, 2979, 3024, 3069, 3114],
   [2890, 2936, 2981, 3027, 3073, 3118, 3164, 3210],
   [2982, 3028, 3075, 3121, 3167, 3214, 3260, 3307],
   [3075, 3123, 3170, 3217, 3264, 3311, 3358, 3405],
   [3170, 3218, 3266, 3314, 3362, 3410, 3457, 3505],
   [3267, 3315, 3364, 3412, 3461, 3510, 3558, 3607],
   [3365, 3414, 3463, 3512, 3562, 3611, 3660, 3709],
   [3464, 3514, 3564, 3614, 3664, 3714, 3764, 3814]]

def cutoff (k h : ℕ) : ℕ := (cutoffTable.getD (k-22) []).getD h 0

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem sign_certificates : ∀ k ∈ Icc 22 70, ∀ h ∈ Icc 0 7,
    4 * product k (cutoff k h) < product k (cutoff k h + (k+h)) ∧
      product k (cutoff k h + 1 + (k+h)) < 4 * product k (cutoff k h + 1) := by
  decide +kernel

theorem no_small_gap_k_le70 (k h n : ℕ) (hk : 2≤k) (hk70 : k≤70) (hh : h≤7) :
    product k (n+k+h) ≠ 4 * product k n := by
  by_cases hk21 : k≤21
  · exact no_small_gap_k_le21 k h n hk hk21 hh
  · obtain ⟨hl,hu⟩ := sign_certificates k (mem_Icc.mpr ⟨by omega,hk70⟩)
      h (mem_Icc.mpr ⟨Nat.zero_le _,hh⟩)
    simpa only [Nat.add_assoc] using not_four_of_adjacent_signs k (k+h) (cutoff k h) n hl hu

/-- info: 'B686ShortGapCertificate.sign_certificates' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms sign_certificates
/-- info: 'B686ShortGapCertificate.no_small_gap_k_le70' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms no_small_gap_k_le70
end B686ShortGapCertificate
