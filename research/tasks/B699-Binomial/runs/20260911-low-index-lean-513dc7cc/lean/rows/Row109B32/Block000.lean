import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row109_height : HeightCertificateDatum := { i := 109, r := 36, s := 76, n0Power10 := 9 }

def row109_goods : List GoodSegment := [
  { lower := 220, upper := 319, witness := RowWitness.topPrime 211 },
  { lower := 320, upper := 425, witness := RowWitness.topPrime 317 },
  { lower := 426, upper := 529, witness := RowWitness.topPrime 421 },
  { lower := 530, upper := 631, witness := RowWitness.topPrime 523 },
  { lower := 632, upper := 739, witness := RowWitness.topPrime 631 },
  { lower := 740, upper := 847, witness := RowWitness.topPrime 739 },
  { lower := 848, upper := 947, witness := RowWitness.topPrime 839 },
  { lower := 948, upper := 1055, witness := RowWitness.topPrime 947 },
  { lower := 1056, upper := 1159, witness := RowWitness.topPrime 1051 },
  { lower := 1160, upper := 1261, witness := RowWitness.topPrime 1153 },
  { lower := 1262, upper := 1367, witness := RowWitness.topPrime 1259 },
  { lower := 1368, upper := 1475, witness := RowWitness.topPrime 1367 },
  { lower := 1476, upper := 1579, witness := RowWitness.topPrime 1471 },
  { lower := 1580, upper := 1687, witness := RowWitness.topPrime 1579 },
  { lower := 1688, upper := 1777, witness := RowWitness.topPrime 1669 },
  { lower := 1778, upper := 1885, witness := RowWitness.topPrime 1777 },
  { lower := 1886, upper := 1987, witness := RowWitness.topPrime 1879 },
  { lower := 1988, upper := 2095, witness := RowWitness.topPrime 1987 },
  { lower := 2096, upper := 2197, witness := RowWitness.topPrime 2089 },
  { lower := 2198, upper := 2287, witness := RowWitness.topPrime 2179 },
  { lower := 2288, upper := 2395, witness := RowWitness.topPrime 2287 },
  { lower := 2396, upper := 2501, witness := RowWitness.topPrime 2393 },
  { lower := 2502, upper := 2585, witness := RowWitness.topPrime 2477 },
  { lower := 2586, upper := 2687, witness := RowWitness.topPrime 2579 },
  { lower := 2688, upper := 2795, witness := RowWitness.topPrime 2687 },
  { lower := 2796, upper := 2899, witness := RowWitness.topPrime 2791 },
  { lower := 2900, upper := 3005, witness := RowWitness.topPrime 2897 },
  { lower := 3006, upper := 3109, witness := RowWitness.topPrime 3001 },
  { lower := 3110, upper := 3217, witness := RowWitness.topPrime 3109 },
  { lower := 3218, upper := 3325, witness := RowWitness.topPrime 3217 },
  { lower := 3326, upper := 3431, witness := RowWitness.topPrime 3323 },
  { lower := 3432, upper := 3521, witness := RowWitness.topPrime 3413 },
  { lower := 3522, upper := 3625, witness := RowWitness.topPrime 3517 },
  { lower := 3626, upper := 3731, witness := RowWitness.topPrime 3623 },
  { lower := 3732, upper := 3835, witness := RowWitness.topPrime 3727 },
  { lower := 3836, upper := 3941, witness := RowWitness.topPrime 3833 },
  { lower := 3942, upper := 4039, witness := RowWitness.topPrime 3931 },
  { lower := 4040, upper := 4135, witness := RowWitness.topPrime 4027 },
  { lower := 4136, upper := 4241, witness := RowWitness.topPrime 4133 },
  { lower := 4242, upper := 4349, witness := RowWitness.topPrime 4241 },
  { lower := 4350, upper := 4457, witness := RowWitness.topPrime 4349 },
  { lower := 4458, upper := 4565, witness := RowWitness.topPrime 4457 },
  { lower := 4566, upper := 4669, witness := RowWitness.topPrime 4561 },
  { lower := 4670, upper := 4771, witness := RowWitness.topPrime 4663 },
  { lower := 4772, upper := 4867, witness := RowWitness.topPrime 4759 },
  { lower := 4868, upper := 4969, witness := RowWitness.topPrime 4861 },
  { lower := 4970, upper := 5077, witness := RowWitness.topPrime 4969 },
  { lower := 5078, upper := 5185, witness := RowWitness.topPrime 5077 },
  { lower := 5186, upper := 5287, witness := RowWitness.topPrime 5179 },
  { lower := 5288, upper := 5389, witness := RowWitness.topPrime 5281 },
  { lower := 5390, upper := 5495, witness := RowWitness.topPrime 5387 },
  { lower := 5496, upper := 5591, witness := RowWitness.topPrime 5483 },
  { lower := 5592, upper := 5699, witness := RowWitness.topPrime 5591 },
  { lower := 5700, upper := 5801, witness := RowWitness.topPrime 5693 },
  { lower := 5802, upper := 5909, witness := RowWitness.topPrime 5801 },
  { lower := 5910, upper := 6011, witness := RowWitness.topPrime 5903 },
  { lower := 6012, upper := 6119, witness := RowWitness.topPrime 6011 },
  { lower := 6120, upper := 6221, witness := RowWitness.topPrime 6113 },
  { lower := 6222, upper := 6329, witness := RowWitness.topPrime 6221 },
  { lower := 6330, upper := 6437, witness := RowWitness.topPrime 6329 },
  { lower := 6438, upper := 6535, witness := RowWitness.topPrime 6427 },
  { lower := 6536, upper := 6637, witness := RowWitness.topPrime 6529 },
  { lower := 6638, upper := 6745, witness := RowWitness.topPrime 6637 },
  { lower := 6746, upper := 6845, witness := RowWitness.topPrime 6737 },
  { lower := 6846, upper := 6949, witness := RowWitness.topPrime 6841 },
  { lower := 6950, upper := 7057, witness := RowWitness.topPrime 6949 },
  { lower := 7058, upper := 7165, witness := RowWitness.topPrime 7057 },
  { lower := 7166, upper := 7267, witness := RowWitness.topPrime 7159 },
  { lower := 7268, upper := 7361, witness := RowWitness.topPrime 7253 },
  { lower := 7362, upper := 7459, witness := RowWitness.topPrime 7351 },
  { lower := 7460, upper := 7567, witness := RowWitness.topPrime 7459 },
  { lower := 7568, upper := 7669, witness := RowWitness.topPrime 7561 },
  { lower := 7670, upper := 7777, witness := RowWitness.topPrime 7669 },
  { lower := 7778, upper := 7867, witness := RowWitness.topPrime 7759 },
  { lower := 7868, upper := 7975, witness := RowWitness.topPrime 7867 },
  { lower := 7976, upper := 8071, witness := RowWitness.topPrime 7963 },
  { lower := 8072, upper := 8177, witness := RowWitness.topPrime 8069 },
  { lower := 8178, upper := 8279, witness := RowWitness.topPrime 8171 },
  { lower := 8280, upper := 8381, witness := RowWitness.topPrime 8273 },
  { lower := 8382, upper := 8485, witness := RowWitness.topPrime 8377 },
  { lower := 8486, upper := 8575, witness := RowWitness.topPrime 8467 },
  { lower := 8576, upper := 8681, witness := RowWitness.topPrime 8573 },
  { lower := 8682, upper := 8789, witness := RowWitness.topPrime 8681 },
  { lower := 8790, upper := 8891, witness := RowWitness.topPrime 8783 },
  { lower := 8892, upper := 8995, witness := RowWitness.topPrime 8887 },
  { lower := 8996, upper := 9079, witness := RowWitness.topPrime 8971 },
  { lower := 9080, upper := 9175, witness := RowWitness.topPrime 9067 },
  { lower := 9176, upper := 9281, witness := RowWitness.topPrime 9173 },
  { lower := 9282, upper := 9389, witness := RowWitness.topPrime 9281 },
  { lower := 9390, upper := 9485, witness := RowWitness.topPrime 9377 },
  { lower := 9486, upper := 9587, witness := RowWitness.topPrime 9479 },
  { lower := 9588, upper := 9695, witness := RowWitness.topPrime 9587 },
  { lower := 9696, upper := 9797, witness := RowWitness.topPrime 9689 },
  { lower := 9798, upper := 9899, witness := RowWitness.topPrime 9791 },
  { lower := 9900, upper := 9995, witness := RowWitness.topPrime 9887 },
  { lower := 9996, upper := 10081, witness := RowWitness.topPrime 9973 },
  { lower := 10082, upper := 10187, witness := RowWitness.topPrime 10079 },
  { lower := 10188, upper := 10289, witness := RowWitness.topPrime 10181 },
  { lower := 10290, upper := 10397, witness := RowWitness.topPrime 10289 },
  { lower := 10398, upper := 10499, witness := RowWitness.topPrime 10391 },
  { lower := 10500, upper := 10607, witness := RowWitness.topPrime 10499 },
  { lower := 10608, upper := 10715, witness := RowWitness.topPrime 10607 },
  { lower := 10716, upper := 10819, witness := RowWitness.topPrime 10711 },
  { lower := 10820, upper := 10907, witness := RowWitness.topPrime 10799 },
  { lower := 10908, upper := 11011, witness := RowWitness.topPrime 10903 },
  { lower := 11012, upper := 11111, witness := RowWitness.topPrime 11003 },
  { lower := 11112, upper := 11201, witness := RowWitness.topPrime 11093 },
  { lower := 11202, upper := 11305, witness := RowWitness.topPrime 11197 },
  { lower := 11306, upper := 11407, witness := RowWitness.topPrime 11299 },
  { lower := 11408, upper := 11507, witness := RowWitness.topPrime 11399 },
  { lower := 11508, upper := 11611, witness := RowWitness.topPrime 11503 },
  { lower := 11612, upper := 11705, witness := RowWitness.topPrime 11597 },
  { lower := 11706, upper := 11772, witness := RowWitness.topPrime 11701 },
  { lower := 11774, upper := 11851, witness := RowWitness.topPrime 11743 },
  { lower := 11852, upper := 11884, witness := RowWitness.topPrime 11839 },
  { lower := 11979, upper := 11983, witness := RowWitness.topPrime 11971 },
  { lower := 12005, upper := 12087, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12409, witness := RowWitness.topPrime 12301 },
  { lower := 12410, upper := 12429, witness := RowWitness.topPrime 12409 },
  { lower := 12482, upper := 12587, witness := RowWitness.topPrime 12479 },
  { lower := 12588, upper := 12601, witness := RowWitness.topPrime 12583 },
  { lower := 12696, upper := 12723, witness := RowWitness.topPrime 12689 },
  { lower := 12800, upper := 12804, witness := RowWitness.topPrime 12799 },
  { lower := 13125, upper := 13229, witness := RowWitness.topPrime 13121 },
  { lower := 13230, upper := 13337, witness := RowWitness.topPrime 13229 },
  { lower := 13338, upper := 13418, witness := RowWitness.topPrime 13337 },
  { lower := 13454, upper := 13559, witness := RowWitness.topPrime 13451 },
  { lower := 13560, upper := 13564, witness := RowWitness.topPrime 13553 },
  { lower := 13718, upper := 13819, witness := RowWitness.topPrime 13711 },
  { lower := 13820, upper := 13886, witness := RowWitness.topPrime 13807 },
  { lower := 13924, upper := 13959, witness := RowWitness.topPrime 13921 },
  { lower := 14336, upper := 14435, witness := RowWitness.topPrime 14327 },
  { lower := 14436, upper := 14514, witness := RowWitness.topPrime 14431 },
  { lower := 14641, upper := 14688, witness := RowWitness.topPrime 14639 },
  { lower := 14739, upper := 14749, witness := RowWitness.topPrime 14737 },
  { lower := 14792, upper := 14847, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14900, witness := RowWitness.topPrime 14879 },
  { lower := 15059, upper := 15108, witness := RowWitness.topPrime 15053 },
  { lower := 15123, upper := 15229, witness := RowWitness.topPrime 15121 },
  { lower := 15230, upper := 15237, witness := RowWitness.topPrime 15227 },
  { lower := 15360, upper := 15467, witness := RowWitness.topPrime 15359 },
  { lower := 15468, upper := 15487, witness := RowWitness.topPrime 15467 },
  { lower := 15979, upper := 16081, witness := RowWitness.topPrime 15973 },
  { lower := 16082, upper := 16095, witness := RowWitness.topPrime 16073 },
  { lower := 16384, upper := 16489, witness := RowWitness.topPrime 16381 },
  { lower := 16490, upper := 16492, witness := RowWitness.topPrime 16487 },
  { lower := 16807, upper := 16895, witness := RowWitness.topPrime 16787 },
  { lower := 16896, upper := 16928, witness := RowWitness.topPrime 16889 },
  { lower := 17303, upper := 17407, witness := RowWitness.topPrime 17299 },
  { lower := 17408, upper := 17509, witness := RowWitness.topPrime 17401 },
  { lower := 17510, upper := 17516, witness := RowWitness.topPrime 17509 },
  { lower := 17576, upper := 17604, witness := RowWitness.topPrime 17573 },
  { lower := 17661, upper := 17767, witness := RowWitness.topPrime 17659 },
  { lower := 17768, upper := 17769, witness := RowWitness.topPrime 17761 },
  { lower := 18259, upper := 18333, witness := RowWitness.topPrime 18257 },
  { lower := 18490, upper := 18589, witness := RowWitness.topPrime 18481 },
  { lower := 18590, upper := 18599, witness := RowWitness.topPrime 18587 },
  { lower := 18605, upper := 18610, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18713, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18742, witness := RowWitness.topPrime 18719 },
  { lower := 18750, upper := 18857, witness := RowWitness.topPrime 18749 },
  { lower := 18858, upper := 18858, witness := RowWitness.topPrime 18839 },
  { lower := 19208, upper := 19315, witness := RowWitness.topPrime 19207 },
  { lower := 19316, upper := 19316, witness := RowWitness.topPrime 19309 },
  { lower := 19663, upper := 19769, witness := RowWitness.topPrime 19661 },
  { lower := 19770, upper := 19771, witness := RowWitness.topPrime 19763 },
  { lower := 19773, upper := 19791, witness := RowWitness.topPrime 19763 },
  { lower := 19881, upper := 19881, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 19989, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20269, witness := RowWitness.topPrime 20161 },
  { lower := 20270, upper := 20289, witness := RowWitness.topPrime 20269 },
  { lower := 20402, upper := 20447, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20510, witness := RowWitness.topPrime 20479 },
  { lower := 20535, upper := 20641, witness := RowWitness.topPrime 20533 },
  { lower := 20642, upper := 20643, witness := RowWitness.topPrime 20641 },
  { lower := 20667, upper := 20685, witness := RowWitness.topPrime 20663 },
  { lower := 21218, upper := 21250, witness := RowWitness.topPrime 21211 },
  { lower := 21296, upper := 21391, witness := RowWitness.topPrime 21283 },
  { lower := 21392, upper := 21404, witness := RowWitness.topPrime 21391 },
  { lower := 21609, upper := 21612, witness := RowWitness.topPrime 21601 },
  { lower := 21870, upper := 21971, witness := RowWitness.topPrime 21863 },
  { lower := 21972, upper := 22012, witness := RowWitness.topPrime 21961 },
  { lower := 22103, upper := 22201, witness := RowWitness.topPrime 22093 },
  { lower := 22202, upper := 22211, witness := RowWitness.topPrime 22193 },
  { lower := 22472, upper := 22577, witness := RowWitness.topPrime 22469 },
  { lower := 22578, upper := 22580, witness := RowWitness.topPrime 22573 },
  { lower := 22627, upper := 22636, witness := RowWitness.topPrime 22621 },
  { lower := 24010, upper := 24115, witness := RowWitness.topPrime 24007 },
  { lower := 24116, upper := 24145, witness := RowWitness.topPrime 24113 },
  { lower := 24334, upper := 24437, witness := RowWitness.topPrime 24329 },
  { lower := 24438, upper := 24475, witness := RowWitness.topPrime 24421 },
  { lower := 24576, upper := 24679, witness := RowWitness.topPrime 24571 },
  { lower := 24680, upper := 24684, witness := RowWitness.topPrime 24677 },
  { lower := 25000, upper := 25072, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25297, witness := RowWitness.topPrime 25189 },
  { lower := 25298, upper := 25369, witness := RowWitness.topPrime 25261 },
  { lower := 25370, upper := 25389, witness := RowWitness.topPrime 25367 },
  { lower := 26047, upper := 26119, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26472, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26519, witness := RowWitness.topPrime 26501 },
  { lower := 26624, upper := 26705, witness := RowWitness.topPrime 26597 },
  { lower := 26706, upper := 26732, witness := RowWitness.topPrime 26701 },
  { lower := 26934, upper := 27004, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27488, witness := RowWitness.topPrime 27431 },
  { lower := 28125, upper := 28198, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28233, witness := RowWitness.topPrime 28219 },
  { lower := 28577, upper := 28669, witness := RowWitness.topPrime 28573 },
  { lower := 28672, upper := 28685, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28780, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28825, witness := RowWitness.topPrime 28807 },
  { lower := 29584, upper := 29586, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29876, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30354, witness := RowWitness.topPrime 30253 },
  { lower := 30618, upper := 30701, witness := RowWitness.topPrime 30593 },
  { lower := 30702, upper := 30711, witness := RowWitness.topPrime 30697 },
  { lower := 30720, upper := 30726, witness := RowWitness.topPrime 30713 },
  { lower := 30758, upper := 30828, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 31007, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31301, witness := RowWitness.topPrime 31193 },
  { lower := 31302, upper := 31321, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31358, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31505, witness := RowWitness.topPrime 31397 },
  { lower := 31506, upper := 31531, witness := RowWitness.topPrime 31489 },
  { lower := 31974, upper := 32047, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32876, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33727, witness := RowWitness.topPrime 33619 },
  { lower := 33728, upper := 33728, witness := RowWitness.topPrime 33721 },
  { lower := 34347, upper := 34445, witness := RowWitness.topPrime 34337 },
  { lower := 34446, upper := 34499, witness := RowWitness.topPrime 34439 },
  { lower := 34816, upper := 34915, witness := RowWitness.topPrime 34807 },
  { lower := 34916, upper := 34918, witness := RowWitness.topPrime 34913 },
  { lower := 35152, upper := 35239, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35395, witness := RowWitness.topPrime 35339 },
  { lower := 36015, upper := 36020, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36605, witness := RowWitness.topPrime 36497 },
  { lower := 36606, upper := 36609, witness := RowWitness.topPrime 36599 },
  { lower := 37210, upper := 37287, witness := RowWitness.topPrime 37201 },
  { lower := 37303, upper := 37318, witness := RowWitness.topPrime 37277 },
  { lower := 37349, upper := 37411, witness := RowWitness.topPrime 37339 },
  { lower := 37446, upper := 37457, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37601, witness := RowWitness.topPrime 37493 },
  { lower := 37602, upper := 37608, witness := RowWitness.topPrime 37591 },
  { lower := 37636, upper := 37661, witness := RowWitness.topPrime 37633 },
  { lower := 39326, upper := 39431, witness := RowWitness.topPrime 39323 },
  { lower := 39432, upper := 39434, witness := RowWitness.topPrime 39419 },
  { lower := 39605, upper := 39654, witness := RowWitness.topPrime 39581 },
  { lower := 40401, upper := 40436, witness := RowWitness.topPrime 40387 },
  { lower := 40817, upper := 40912, witness := RowWitness.topPrime 40813 },
  { lower := 40960, upper := 41039, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41851, witness := RowWitness.topPrime 41771 },
  { lower := 43740, upper := 43829, witness := RowWitness.topPrime 43721 },
  { lower := 43830, upper := 43848, witness := RowWitness.topPrime 43801 },
  { lower := 43940, upper := 44031, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44288, witness := RowWitness.topPrime 44207 },
  { lower := 44944, upper := 44998, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48069, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48776, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48842, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49238, witness := RowWitness.topPrime 49139 },
  { lower := 50000, upper := 50036, witness := RowWitness.topPrime 49999 },
  { lower := 50421, upper := 50518, witness := RowWitness.topPrime 50417 },
  { lower := 53125, upper := 53153, witness := RowWitness.topPrime 53117 },
  { lower := 53290, upper := 53356, witness := RowWitness.topPrime 53281 },
  { lower := 55451, upper := 55549, witness := RowWitness.topPrime 55441 },
  { lower := 55550, upper := 55555, witness := RowWitness.topPrime 55547 },
  { lower := 57344, upper := 57353, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58672, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59064, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59644, witness := RowWitness.topPrime 59581 },
  { lower := 62500, upper := 62518, witness := RowWitness.topPrime 62497 },
  { lower := 63948, upper := 63977, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65629, witness := RowWitness.topPrime 65521 },
  { lower := 65630, upper := 65644, witness := RowWitness.topPrime 65629 },
  { lower := 67335, upper := 67336, witness := RowWitness.topPrime 67307 },
  { lower := 68651, upper := 68747, witness := RowWitness.topPrime 68639 },
  { lower := 68748, upper := 68759, witness := RowWitness.topPrime 68743 },
  { lower := 68782, upper := 68802, witness := RowWitness.topPrime 68777 },
  { lower := 68890, upper := 68890, witness := RowWitness.topPrime 68881 },
  { lower := 68921, upper := 68998, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73275, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73803, witness := RowWitness.topPrime 73727 },
  { lower := 85264, upper := 85277, witness := RowWitness.topPrime 85259 },
  { lower := 85293, upper := 85367, witness := RowWitness.topPrime 85259 },
  { lower := 85368, upper := 85372, witness := RowWitness.topPrime 85363 },
  { lower := 85697, upper := 85791, witness := RowWitness.topPrime 85691 },
  { lower := 91854, upper := 91917, witness := RowWitness.topPrime 91841 },
  { lower := 103041, upper := 103081, witness := RowWitness.topPrime 103007 },
  { lower := 122412, upper := 122425, witness := RowWitness.topPrime 122401 },
  { lower := 131769, upper := 131834, witness := RowWitness.topPrime 131759 },
  { lower := 137842, upper := 137889, witness := RowWitness.topPrime 137831 },
  { lower := 137917, upper := 137950, witness := RowWitness.topPrime 137911 },
  { lower := 142814, upper := 142913, witness := RowWitness.topPrime 142811 },
  { lower := 146410, upper := 146442, witness := RowWitness.topPrime 146407 },
  { lower := 148877, upper := 148945, witness := RowWitness.topPrime 148873 },
  { lower := 148955, upper := 148985, witness := RowWitness.topPrime 148949 },
  { lower := 327701, upper := 327788, witness := RowWitness.topPrime 327689 }
]

def row109_layers : List CoverLayer := [
  { lower := 11772, upper := 23544, M := 25 },
  { lower := 23544, upper := 47088, M := 20 },
  { lower := 47088, upper := 94176, M := 17 },
  { lower := 94176, upper := 188352, M := 14 },
  { lower := 188352, upper := 376704, M := 11 },
  { lower := 376704, upper := 753408, M := 9 },
  { lower := 753408, upper := 1506816, M := 8 },
  { lower := 1506816, upper := 3013632, M := 6 },
  { lower := 3013632, upper := 6027264, M := 5 },
  { lower := 6027264, upper := 12054528, M := 4 },
  { lower := 12054528, upper := 24109056, M := 4 },
  { lower := 24109056, upper := 48218112, M := 3 },
  { lower := 48218112, upper := 96436224, M := 3 },
  { lower := 96436224, upper := 192872448, M := 2 },
  { lower := 192872448, upper := 385744896, M := 2 },
  { lower := 385744896, upper := 771489792, M := 2 },
  { lower := 771489792, upper := 1000000000, M := 1 }
]

def row109 : FiniteCoverRow := {
  height := row109_height,
  goods := row109_goods,
  layers := row109_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_good000_checked :
    goodSegmentCheck 109 36 76
      { lower := 220, upper := 319, witness := RowWitness.topPrime 211 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good001_checked :
    goodSegmentCheck 109 36 76
      { lower := 320, upper := 425, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good002_checked :
    goodSegmentCheck 109 36 76
      { lower := 426, upper := 529, witness := RowWitness.topPrime 421 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good003_checked :
    goodSegmentCheck 109 36 76
      { lower := 530, upper := 631, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good004_checked :
    goodSegmentCheck 109 36 76
      { lower := 632, upper := 739, witness := RowWitness.topPrime 631 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good005_checked :
    goodSegmentCheck 109 36 76
      { lower := 740, upper := 847, witness := RowWitness.topPrime 739 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good006_checked :
    goodSegmentCheck 109 36 76
      { lower := 848, upper := 947, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good007_checked :
    goodSegmentCheck 109 36 76
      { lower := 948, upper := 1055, witness := RowWitness.topPrime 947 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good008_checked :
    goodSegmentCheck 109 36 76
      { lower := 1056, upper := 1159, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good009_checked :
    goodSegmentCheck 109 36 76
      { lower := 1160, upper := 1261, witness := RowWitness.topPrime 1153 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good010_checked :
    goodSegmentCheck 109 36 76
      { lower := 1262, upper := 1367, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good011_checked :
    goodSegmentCheck 109 36 76
      { lower := 1368, upper := 1475, witness := RowWitness.topPrime 1367 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good012_checked :
    goodSegmentCheck 109 36 76
      { lower := 1476, upper := 1579, witness := RowWitness.topPrime 1471 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good013_checked :
    goodSegmentCheck 109 36 76
      { lower := 1580, upper := 1687, witness := RowWitness.topPrime 1579 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good014_checked :
    goodSegmentCheck 109 36 76
      { lower := 1688, upper := 1777, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good015_checked :
    goodSegmentCheck 109 36 76
      { lower := 1778, upper := 1885, witness := RowWitness.topPrime 1777 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_good016_checked :
    goodSegmentCheck 109 36 76
      { lower := 1886, upper := 1987, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good017_checked :
    goodSegmentCheck 109 36 76
      { lower := 1988, upper := 2095, witness := RowWitness.topPrime 1987 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good018_checked :
    goodSegmentCheck 109 36 76
      { lower := 2096, upper := 2197, witness := RowWitness.topPrime 2089 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good019_checked :
    goodSegmentCheck 109 36 76
      { lower := 2198, upper := 2287, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good020_checked :
    goodSegmentCheck 109 36 76
      { lower := 2288, upper := 2395, witness := RowWitness.topPrime 2287 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good021_checked :
    goodSegmentCheck 109 36 76
      { lower := 2396, upper := 2501, witness := RowWitness.topPrime 2393 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good022_checked :
    goodSegmentCheck 109 36 76
      { lower := 2502, upper := 2585, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good023_checked :
    goodSegmentCheck 109 36 76
      { lower := 2586, upper := 2687, witness := RowWitness.topPrime 2579 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good024_checked :
    goodSegmentCheck 109 36 76
      { lower := 2688, upper := 2795, witness := RowWitness.topPrime 2687 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good025_checked :
    goodSegmentCheck 109 36 76
      { lower := 2796, upper := 2899, witness := RowWitness.topPrime 2791 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good026_checked :
    goodSegmentCheck 109 36 76
      { lower := 2900, upper := 3005, witness := RowWitness.topPrime 2897 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good027_checked :
    goodSegmentCheck 109 36 76
      { lower := 3006, upper := 3109, witness := RowWitness.topPrime 3001 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good028_checked :
    goodSegmentCheck 109 36 76
      { lower := 3110, upper := 3217, witness := RowWitness.topPrime 3109 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good029_checked :
    goodSegmentCheck 109 36 76
      { lower := 3218, upper := 3325, witness := RowWitness.topPrime 3217 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good030_checked :
    goodSegmentCheck 109 36 76
      { lower := 3326, upper := 3431, witness := RowWitness.topPrime 3323 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good031_checked :
    goodSegmentCheck 109 36 76
      { lower := 3432, upper := 3521, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_good032_checked :
    goodSegmentCheck 109 36 76
      { lower := 3522, upper := 3625, witness := RowWitness.topPrime 3517 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good033_checked :
    goodSegmentCheck 109 36 76
      { lower := 3626, upper := 3731, witness := RowWitness.topPrime 3623 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good034_checked :
    goodSegmentCheck 109 36 76
      { lower := 3732, upper := 3835, witness := RowWitness.topPrime 3727 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good035_checked :
    goodSegmentCheck 109 36 76
      { lower := 3836, upper := 3941, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good036_checked :
    goodSegmentCheck 109 36 76
      { lower := 3942, upper := 4039, witness := RowWitness.topPrime 3931 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good037_checked :
    goodSegmentCheck 109 36 76
      { lower := 4040, upper := 4135, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good038_checked :
    goodSegmentCheck 109 36 76
      { lower := 4136, upper := 4241, witness := RowWitness.topPrime 4133 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good039_checked :
    goodSegmentCheck 109 36 76
      { lower := 4242, upper := 4349, witness := RowWitness.topPrime 4241 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good040_checked :
    goodSegmentCheck 109 36 76
      { lower := 4350, upper := 4457, witness := RowWitness.topPrime 4349 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good041_checked :
    goodSegmentCheck 109 36 76
      { lower := 4458, upper := 4565, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good042_checked :
    goodSegmentCheck 109 36 76
      { lower := 4566, upper := 4669, witness := RowWitness.topPrime 4561 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good043_checked :
    goodSegmentCheck 109 36 76
      { lower := 4670, upper := 4771, witness := RowWitness.topPrime 4663 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good044_checked :
    goodSegmentCheck 109 36 76
      { lower := 4772, upper := 4867, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good045_checked :
    goodSegmentCheck 109 36 76
      { lower := 4868, upper := 4969, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good046_checked :
    goodSegmentCheck 109 36 76
      { lower := 4970, upper := 5077, witness := RowWitness.topPrime 4969 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good047_checked :
    goodSegmentCheck 109 36 76
      { lower := 5078, upper := 5185, witness := RowWitness.topPrime 5077 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_good048_checked :
    goodSegmentCheck 109 36 76
      { lower := 5186, upper := 5287, witness := RowWitness.topPrime 5179 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good049_checked :
    goodSegmentCheck 109 36 76
      { lower := 5288, upper := 5389, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good050_checked :
    goodSegmentCheck 109 36 76
      { lower := 5390, upper := 5495, witness := RowWitness.topPrime 5387 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good051_checked :
    goodSegmentCheck 109 36 76
      { lower := 5496, upper := 5591, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good052_checked :
    goodSegmentCheck 109 36 76
      { lower := 5592, upper := 5699, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good053_checked :
    goodSegmentCheck 109 36 76
      { lower := 5700, upper := 5801, witness := RowWitness.topPrime 5693 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good054_checked :
    goodSegmentCheck 109 36 76
      { lower := 5802, upper := 5909, witness := RowWitness.topPrime 5801 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good055_checked :
    goodSegmentCheck 109 36 76
      { lower := 5910, upper := 6011, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good056_checked :
    goodSegmentCheck 109 36 76
      { lower := 6012, upper := 6119, witness := RowWitness.topPrime 6011 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good057_checked :
    goodSegmentCheck 109 36 76
      { lower := 6120, upper := 6221, witness := RowWitness.topPrime 6113 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good058_checked :
    goodSegmentCheck 109 36 76
      { lower := 6222, upper := 6329, witness := RowWitness.topPrime 6221 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good059_checked :
    goodSegmentCheck 109 36 76
      { lower := 6330, upper := 6437, witness := RowWitness.topPrime 6329 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good060_checked :
    goodSegmentCheck 109 36 76
      { lower := 6438, upper := 6535, witness := RowWitness.topPrime 6427 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good061_checked :
    goodSegmentCheck 109 36 76
      { lower := 6536, upper := 6637, witness := RowWitness.topPrime 6529 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good062_checked :
    goodSegmentCheck 109 36 76
      { lower := 6638, upper := 6745, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good063_checked :
    goodSegmentCheck 109 36 76
      { lower := 6746, upper := 6845, witness := RowWitness.topPrime 6737 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_good064_checked :
    goodSegmentCheck 109 36 76
      { lower := 6846, upper := 6949, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good065_checked :
    goodSegmentCheck 109 36 76
      { lower := 6950, upper := 7057, witness := RowWitness.topPrime 6949 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good066_checked :
    goodSegmentCheck 109 36 76
      { lower := 7058, upper := 7165, witness := RowWitness.topPrime 7057 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good067_checked :
    goodSegmentCheck 109 36 76
      { lower := 7166, upper := 7267, witness := RowWitness.topPrime 7159 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good068_checked :
    goodSegmentCheck 109 36 76
      { lower := 7268, upper := 7361, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good069_checked :
    goodSegmentCheck 109 36 76
      { lower := 7362, upper := 7459, witness := RowWitness.topPrime 7351 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good070_checked :
    goodSegmentCheck 109 36 76
      { lower := 7460, upper := 7567, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good071_checked :
    goodSegmentCheck 109 36 76
      { lower := 7568, upper := 7669, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good072_checked :
    goodSegmentCheck 109 36 76
      { lower := 7670, upper := 7777, witness := RowWitness.topPrime 7669 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good073_checked :
    goodSegmentCheck 109 36 76
      { lower := 7778, upper := 7867, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good074_checked :
    goodSegmentCheck 109 36 76
      { lower := 7868, upper := 7975, witness := RowWitness.topPrime 7867 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good075_checked :
    goodSegmentCheck 109 36 76
      { lower := 7976, upper := 8071, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good076_checked :
    goodSegmentCheck 109 36 76
      { lower := 8072, upper := 8177, witness := RowWitness.topPrime 8069 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good077_checked :
    goodSegmentCheck 109 36 76
      { lower := 8178, upper := 8279, witness := RowWitness.topPrime 8171 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good078_checked :
    goodSegmentCheck 109 36 76
      { lower := 8280, upper := 8381, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good079_checked :
    goodSegmentCheck 109 36 76
      { lower := 8382, upper := 8485, witness := RowWitness.topPrime 8377 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_good080_checked :
    goodSegmentCheck 109 36 76
      { lower := 8486, upper := 8575, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good081_checked :
    goodSegmentCheck 109 36 76
      { lower := 8576, upper := 8681, witness := RowWitness.topPrime 8573 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good082_checked :
    goodSegmentCheck 109 36 76
      { lower := 8682, upper := 8789, witness := RowWitness.topPrime 8681 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good083_checked :
    goodSegmentCheck 109 36 76
      { lower := 8790, upper := 8891, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good084_checked :
    goodSegmentCheck 109 36 76
      { lower := 8892, upper := 8995, witness := RowWitness.topPrime 8887 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good085_checked :
    goodSegmentCheck 109 36 76
      { lower := 8996, upper := 9079, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good086_checked :
    goodSegmentCheck 109 36 76
      { lower := 9080, upper := 9175, witness := RowWitness.topPrime 9067 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good087_checked :
    goodSegmentCheck 109 36 76
      { lower := 9176, upper := 9281, witness := RowWitness.topPrime 9173 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good088_checked :
    goodSegmentCheck 109 36 76
      { lower := 9282, upper := 9389, witness := RowWitness.topPrime 9281 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good089_checked :
    goodSegmentCheck 109 36 76
      { lower := 9390, upper := 9485, witness := RowWitness.topPrime 9377 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good090_checked :
    goodSegmentCheck 109 36 76
      { lower := 9486, upper := 9587, witness := RowWitness.topPrime 9479 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good091_checked :
    goodSegmentCheck 109 36 76
      { lower := 9588, upper := 9695, witness := RowWitness.topPrime 9587 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good092_checked :
    goodSegmentCheck 109 36 76
      { lower := 9696, upper := 9797, witness := RowWitness.topPrime 9689 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good093_checked :
    goodSegmentCheck 109 36 76
      { lower := 9798, upper := 9899, witness := RowWitness.topPrime 9791 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good094_checked :
    goodSegmentCheck 109 36 76
      { lower := 9900, upper := 9995, witness := RowWitness.topPrime 9887 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good095_checked :
    goodSegmentCheck 109 36 76
      { lower := 9996, upper := 10081, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_good096_checked :
    goodSegmentCheck 109 36 76
      { lower := 10082, upper := 10187, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good097_checked :
    goodSegmentCheck 109 36 76
      { lower := 10188, upper := 10289, witness := RowWitness.topPrime 10181 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good098_checked :
    goodSegmentCheck 109 36 76
      { lower := 10290, upper := 10397, witness := RowWitness.topPrime 10289 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good099_checked :
    goodSegmentCheck 109 36 76
      { lower := 10398, upper := 10499, witness := RowWitness.topPrime 10391 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good100_checked :
    goodSegmentCheck 109 36 76
      { lower := 10500, upper := 10607, witness := RowWitness.topPrime 10499 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good101_checked :
    goodSegmentCheck 109 36 76
      { lower := 10608, upper := 10715, witness := RowWitness.topPrime 10607 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good102_checked :
    goodSegmentCheck 109 36 76
      { lower := 10716, upper := 10819, witness := RowWitness.topPrime 10711 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good103_checked :
    goodSegmentCheck 109 36 76
      { lower := 10820, upper := 10907, witness := RowWitness.topPrime 10799 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good104_checked :
    goodSegmentCheck 109 36 76
      { lower := 10908, upper := 11011, witness := RowWitness.topPrime 10903 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good105_checked :
    goodSegmentCheck 109 36 76
      { lower := 11012, upper := 11111, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good106_checked :
    goodSegmentCheck 109 36 76
      { lower := 11112, upper := 11201, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good107_checked :
    goodSegmentCheck 109 36 76
      { lower := 11202, upper := 11305, witness := RowWitness.topPrime 11197 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good108_checked :
    goodSegmentCheck 109 36 76
      { lower := 11306, upper := 11407, witness := RowWitness.topPrime 11299 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good109_checked :
    goodSegmentCheck 109 36 76
      { lower := 11408, upper := 11507, witness := RowWitness.topPrime 11399 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good110_checked :
    goodSegmentCheck 109 36 76
      { lower := 11508, upper := 11611, witness := RowWitness.topPrime 11503 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good111_checked :
    goodSegmentCheck 109 36 76
      { lower := 11612, upper := 11705, witness := RowWitness.topPrime 11597 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_good112_checked :
    goodSegmentCheck 109 36 76
      { lower := 11706, upper := 11772, witness := RowWitness.topPrime 11701 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good113_checked :
    goodSegmentCheck 109 36 76
      { lower := 11774, upper := 11851, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good114_checked :
    goodSegmentCheck 109 36 76
      { lower := 11852, upper := 11884, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good115_checked :
    goodSegmentCheck 109 36 76
      { lower := 11979, upper := 11983, witness := RowWitness.topPrime 11971 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good116_checked :
    goodSegmentCheck 109 36 76
      { lower := 12005, upper := 12087, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good117_checked :
    goodSegmentCheck 109 36 76
      { lower := 12321, upper := 12409, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good118_checked :
    goodSegmentCheck 109 36 76
      { lower := 12410, upper := 12429, witness := RowWitness.topPrime 12409 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good119_checked :
    goodSegmentCheck 109 36 76
      { lower := 12482, upper := 12587, witness := RowWitness.topPrime 12479 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good120_checked :
    goodSegmentCheck 109 36 76
      { lower := 12588, upper := 12601, witness := RowWitness.topPrime 12583 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good121_checked :
    goodSegmentCheck 109 36 76
      { lower := 12696, upper := 12723, witness := RowWitness.topPrime 12689 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good122_checked :
    goodSegmentCheck 109 36 76
      { lower := 12800, upper := 12804, witness := RowWitness.topPrime 12799 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good123_checked :
    goodSegmentCheck 109 36 76
      { lower := 13125, upper := 13229, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good124_checked :
    goodSegmentCheck 109 36 76
      { lower := 13230, upper := 13337, witness := RowWitness.topPrime 13229 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good125_checked :
    goodSegmentCheck 109 36 76
      { lower := 13338, upper := 13418, witness := RowWitness.topPrime 13337 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good126_checked :
    goodSegmentCheck 109 36 76
      { lower := 13454, upper := 13559, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good127_checked :
    goodSegmentCheck 109 36 76
      { lower := 13560, upper := 13564, witness := RowWitness.topPrime 13553 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_good128_checked :
    goodSegmentCheck 109 36 76
      { lower := 13718, upper := 13819, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good129_checked :
    goodSegmentCheck 109 36 76
      { lower := 13820, upper := 13886, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good130_checked :
    goodSegmentCheck 109 36 76
      { lower := 13924, upper := 13959, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good131_checked :
    goodSegmentCheck 109 36 76
      { lower := 14336, upper := 14435, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good132_checked :
    goodSegmentCheck 109 36 76
      { lower := 14436, upper := 14514, witness := RowWitness.topPrime 14431 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good133_checked :
    goodSegmentCheck 109 36 76
      { lower := 14641, upper := 14688, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good134_checked :
    goodSegmentCheck 109 36 76
      { lower := 14739, upper := 14749, witness := RowWitness.topPrime 14737 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good135_checked :
    goodSegmentCheck 109 36 76
      { lower := 14792, upper := 14847, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good136_checked :
    goodSegmentCheck 109 36 76
      { lower := 14884, upper := 14900, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good137_checked :
    goodSegmentCheck 109 36 76
      { lower := 15059, upper := 15108, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good138_checked :
    goodSegmentCheck 109 36 76
      { lower := 15123, upper := 15229, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good139_checked :
    goodSegmentCheck 109 36 76
      { lower := 15230, upper := 15237, witness := RowWitness.topPrime 15227 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good140_checked :
    goodSegmentCheck 109 36 76
      { lower := 15360, upper := 15467, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good141_checked :
    goodSegmentCheck 109 36 76
      { lower := 15468, upper := 15487, witness := RowWitness.topPrime 15467 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good142_checked :
    goodSegmentCheck 109 36 76
      { lower := 15979, upper := 16081, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good143_checked :
    goodSegmentCheck 109 36 76
      { lower := 16082, upper := 16095, witness := RowWitness.topPrime 16073 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_good144_checked :
    goodSegmentCheck 109 36 76
      { lower := 16384, upper := 16489, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good145_checked :
    goodSegmentCheck 109 36 76
      { lower := 16490, upper := 16492, witness := RowWitness.topPrime 16487 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good146_checked :
    goodSegmentCheck 109 36 76
      { lower := 16807, upper := 16895, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good147_checked :
    goodSegmentCheck 109 36 76
      { lower := 16896, upper := 16928, witness := RowWitness.topPrime 16889 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good148_checked :
    goodSegmentCheck 109 36 76
      { lower := 17303, upper := 17407, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good149_checked :
    goodSegmentCheck 109 36 76
      { lower := 17408, upper := 17509, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good150_checked :
    goodSegmentCheck 109 36 76
      { lower := 17510, upper := 17516, witness := RowWitness.topPrime 17509 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good151_checked :
    goodSegmentCheck 109 36 76
      { lower := 17576, upper := 17604, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good152_checked :
    goodSegmentCheck 109 36 76
      { lower := 17661, upper := 17767, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good153_checked :
    goodSegmentCheck 109 36 76
      { lower := 17768, upper := 17769, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good154_checked :
    goodSegmentCheck 109 36 76
      { lower := 18259, upper := 18333, witness := RowWitness.topPrime 18257 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good155_checked :
    goodSegmentCheck 109 36 76
      { lower := 18490, upper := 18589, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good156_checked :
    goodSegmentCheck 109 36 76
      { lower := 18590, upper := 18599, witness := RowWitness.topPrime 18587 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good157_checked :
    goodSegmentCheck 109 36 76
      { lower := 18605, upper := 18610, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good158_checked :
    goodSegmentCheck 109 36 76
      { lower := 18634, upper := 18713, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good159_checked :
    goodSegmentCheck 109 36 76
      { lower := 18723, upper := 18742, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_good160_checked :
    goodSegmentCheck 109 36 76
      { lower := 18750, upper := 18857, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good161_checked :
    goodSegmentCheck 109 36 76
      { lower := 18858, upper := 18858, witness := RowWitness.topPrime 18839 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good162_checked :
    goodSegmentCheck 109 36 76
      { lower := 19208, upper := 19315, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good163_checked :
    goodSegmentCheck 109 36 76
      { lower := 19316, upper := 19316, witness := RowWitness.topPrime 19309 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good164_checked :
    goodSegmentCheck 109 36 76
      { lower := 19663, upper := 19769, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good165_checked :
    goodSegmentCheck 109 36 76
      { lower := 19770, upper := 19771, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good166_checked :
    goodSegmentCheck 109 36 76
      { lower := 19773, upper := 19791, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good167_checked :
    goodSegmentCheck 109 36 76
      { lower := 19881, upper := 19881, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good168_checked :
    goodSegmentCheck 109 36 76
      { lower := 19965, upper := 19989, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good169_checked :
    goodSegmentCheck 109 36 76
      { lower := 20172, upper := 20269, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good170_checked :
    goodSegmentCheck 109 36 76
      { lower := 20270, upper := 20289, witness := RowWitness.topPrime 20269 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good171_checked :
    goodSegmentCheck 109 36 76
      { lower := 20402, upper := 20447, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good172_checked :
    goodSegmentCheck 109 36 76
      { lower := 20480, upper := 20510, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good173_checked :
    goodSegmentCheck 109 36 76
      { lower := 20535, upper := 20641, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good174_checked :
    goodSegmentCheck 109 36 76
      { lower := 20642, upper := 20643, witness := RowWitness.topPrime 20641 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good175_checked :
    goodSegmentCheck 109 36 76
      { lower := 20667, upper := 20685, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_good176_checked :
    goodSegmentCheck 109 36 76
      { lower := 21218, upper := 21250, witness := RowWitness.topPrime 21211 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good177_checked :
    goodSegmentCheck 109 36 76
      { lower := 21296, upper := 21391, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good178_checked :
    goodSegmentCheck 109 36 76
      { lower := 21392, upper := 21404, witness := RowWitness.topPrime 21391 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good179_checked :
    goodSegmentCheck 109 36 76
      { lower := 21609, upper := 21612, witness := RowWitness.topPrime 21601 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good180_checked :
    goodSegmentCheck 109 36 76
      { lower := 21870, upper := 21971, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good181_checked :
    goodSegmentCheck 109 36 76
      { lower := 21972, upper := 22012, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good182_checked :
    goodSegmentCheck 109 36 76
      { lower := 22103, upper := 22201, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good183_checked :
    goodSegmentCheck 109 36 76
      { lower := 22202, upper := 22211, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good184_checked :
    goodSegmentCheck 109 36 76
      { lower := 22472, upper := 22577, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good185_checked :
    goodSegmentCheck 109 36 76
      { lower := 22578, upper := 22580, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good186_checked :
    goodSegmentCheck 109 36 76
      { lower := 22627, upper := 22636, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good187_checked :
    goodSegmentCheck 109 36 76
      { lower := 24010, upper := 24115, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good188_checked :
    goodSegmentCheck 109 36 76
      { lower := 24116, upper := 24145, witness := RowWitness.topPrime 24113 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good189_checked :
    goodSegmentCheck 109 36 76
      { lower := 24334, upper := 24437, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good190_checked :
    goodSegmentCheck 109 36 76
      { lower := 24438, upper := 24475, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good191_checked :
    goodSegmentCheck 109 36 76
      { lower := 24576, upper := 24679, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_good192_checked :
    goodSegmentCheck 109 36 76
      { lower := 24680, upper := 24684, witness := RowWitness.topPrime 24677 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good193_checked :
    goodSegmentCheck 109 36 76
      { lower := 25000, upper := 25072, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good194_checked :
    goodSegmentCheck 109 36 76
      { lower := 25215, upper := 25297, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good195_checked :
    goodSegmentCheck 109 36 76
      { lower := 25298, upper := 25369, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good196_checked :
    goodSegmentCheck 109 36 76
      { lower := 25370, upper := 25389, witness := RowWitness.topPrime 25367 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good197_checked :
    goodSegmentCheck 109 36 76
      { lower := 26047, upper := 26119, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good198_checked :
    goodSegmentCheck 109 36 76
      { lower := 26411, upper := 26472, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good199_checked :
    goodSegmentCheck 109 36 76
      { lower := 26508, upper := 26519, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good200_checked :
    goodSegmentCheck 109 36 76
      { lower := 26624, upper := 26705, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good201_checked :
    goodSegmentCheck 109 36 76
      { lower := 26706, upper := 26732, witness := RowWitness.topPrime 26701 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good202_checked :
    goodSegmentCheck 109 36 76
      { lower := 26934, upper := 27004, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good203_checked :
    goodSegmentCheck 109 36 76
      { lower := 27436, upper := 27488, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good204_checked :
    goodSegmentCheck 109 36 76
      { lower := 28125, upper := 28198, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good205_checked :
    goodSegmentCheck 109 36 76
      { lower := 28227, upper := 28233, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good206_checked :
    goodSegmentCheck 109 36 76
      { lower := 28577, upper := 28669, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good207_checked :
    goodSegmentCheck 109 36 76
      { lower := 28672, upper := 28685, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_good208_checked :
    goodSegmentCheck 109 36 76
      { lower := 28717, upper := 28780, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good209_checked :
    goodSegmentCheck 109 36 76
      { lower := 28812, upper := 28825, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good210_checked :
    goodSegmentCheck 109 36 76
      { lower := 29584, upper := 29586, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good211_checked :
    goodSegmentCheck 109 36 76
      { lower := 29791, upper := 29876, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good212_checked :
    goodSegmentCheck 109 36 76
      { lower := 30258, upper := 30354, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good213_checked :
    goodSegmentCheck 109 36 76
      { lower := 30618, upper := 30701, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good214_checked :
    goodSegmentCheck 109 36 76
      { lower := 30702, upper := 30711, witness := RowWitness.topPrime 30697 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good215_checked :
    goodSegmentCheck 109 36 76
      { lower := 30720, upper := 30726, witness := RowWitness.topPrime 30713 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good216_checked :
    goodSegmentCheck 109 36 76
      { lower := 30758, upper := 30828, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good217_checked :
    goodSegmentCheck 109 36 76
      { lower := 30926, upper := 31007, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good218_checked :
    goodSegmentCheck 109 36 76
      { lower := 31213, upper := 31301, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good219_checked :
    goodSegmentCheck 109 36 76
      { lower := 31302, upper := 31321, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good220_checked :
    goodSegmentCheck 109 36 76
      { lower := 31329, upper := 31358, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good221_checked :
    goodSegmentCheck 109 36 76
      { lower := 31423, upper := 31505, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good222_checked :
    goodSegmentCheck 109 36 76
      { lower := 31506, upper := 31531, witness := RowWitness.topPrime 31489 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good223_checked :
    goodSegmentCheck 109 36 76
      { lower := 31974, upper := 32047, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_good224_checked :
    goodSegmentCheck 109 36 76
      { lower := 32805, upper := 32876, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good225_checked :
    goodSegmentCheck 109 36 76
      { lower := 33620, upper := 33727, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good226_checked :
    goodSegmentCheck 109 36 76
      { lower := 33728, upper := 33728, witness := RowWitness.topPrime 33721 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good227_checked :
    goodSegmentCheck 109 36 76
      { lower := 34347, upper := 34445, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good228_checked :
    goodSegmentCheck 109 36 76
      { lower := 34446, upper := 34499, witness := RowWitness.topPrime 34439 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good229_checked :
    goodSegmentCheck 109 36 76
      { lower := 34816, upper := 34915, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good230_checked :
    goodSegmentCheck 109 36 76
      { lower := 34916, upper := 34918, witness := RowWitness.topPrime 34913 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good231_checked :
    goodSegmentCheck 109 36 76
      { lower := 35152, upper := 35239, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good232_checked :
    goodSegmentCheck 109 36 76
      { lower := 35344, upper := 35395, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good233_checked :
    goodSegmentCheck 109 36 76
      { lower := 36015, upper := 36020, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good234_checked :
    goodSegmentCheck 109 36 76
      { lower := 36517, upper := 36605, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good235_checked :
    goodSegmentCheck 109 36 76
      { lower := 36606, upper := 36609, witness := RowWitness.topPrime 36599 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good236_checked :
    goodSegmentCheck 109 36 76
      { lower := 37210, upper := 37287, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good237_checked :
    goodSegmentCheck 109 36 76
      { lower := 37303, upper := 37318, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good238_checked :
    goodSegmentCheck 109 36 76
      { lower := 37349, upper := 37411, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good239_checked :
    goodSegmentCheck 109 36 76
      { lower := 37446, upper := 37457, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_good240_checked :
    goodSegmentCheck 109 36 76
      { lower := 37500, upper := 37601, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good241_checked :
    goodSegmentCheck 109 36 76
      { lower := 37602, upper := 37608, witness := RowWitness.topPrime 37591 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good242_checked :
    goodSegmentCheck 109 36 76
      { lower := 37636, upper := 37661, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good243_checked :
    goodSegmentCheck 109 36 76
      { lower := 39326, upper := 39431, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good244_checked :
    goodSegmentCheck 109 36 76
      { lower := 39432, upper := 39434, witness := RowWitness.topPrime 39419 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good245_checked :
    goodSegmentCheck 109 36 76
      { lower := 39605, upper := 39654, witness := RowWitness.topPrime 39581 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good246_checked :
    goodSegmentCheck 109 36 76
      { lower := 40401, upper := 40436, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good247_checked :
    goodSegmentCheck 109 36 76
      { lower := 40817, upper := 40912, witness := RowWitness.topPrime 40813 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good248_checked :
    goodSegmentCheck 109 36 76
      { lower := 40960, upper := 41039, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good249_checked :
    goodSegmentCheck 109 36 76
      { lower := 41772, upper := 41851, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good250_checked :
    goodSegmentCheck 109 36 76
      { lower := 43740, upper := 43829, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good251_checked :
    goodSegmentCheck 109 36 76
      { lower := 43830, upper := 43848, witness := RowWitness.topPrime 43801 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good252_checked :
    goodSegmentCheck 109 36 76
      { lower := 43940, upper := 44031, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good253_checked :
    goodSegmentCheck 109 36 76
      { lower := 44217, upper := 44288, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good254_checked :
    goodSegmentCheck 109 36 76
      { lower := 44944, upper := 44998, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good255_checked :
    goodSegmentCheck 109 36 76
      { lower := 48013, upper := 48069, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_good256_checked :
    goodSegmentCheck 109 36 76
      { lower := 48734, upper := 48776, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good257_checked :
    goodSegmentCheck 109 36 76
      { lower := 48778, upper := 48842, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good258_checked :
    goodSegmentCheck 109 36 76
      { lower := 49152, upper := 49238, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good259_checked :
    goodSegmentCheck 109 36 76
      { lower := 50000, upper := 50036, witness := RowWitness.topPrime 49999 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good260_checked :
    goodSegmentCheck 109 36 76
      { lower := 50421, upper := 50518, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good261_checked :
    goodSegmentCheck 109 36 76
      { lower := 53125, upper := 53153, witness := RowWitness.topPrime 53117 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good262_checked :
    goodSegmentCheck 109 36 76
      { lower := 53290, upper := 53356, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good263_checked :
    goodSegmentCheck 109 36 76
      { lower := 55451, upper := 55549, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good264_checked :
    goodSegmentCheck 109 36 76
      { lower := 55550, upper := 55555, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good265_checked :
    goodSegmentCheck 109 36 76
      { lower := 57344, upper := 57353, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good266_checked :
    goodSegmentCheck 109 36 76
      { lower := 58619, upper := 58672, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good267_checked :
    goodSegmentCheck 109 36 76
      { lower := 59049, upper := 59064, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good268_checked :
    goodSegmentCheck 109 36 76
      { lower := 59582, upper := 59644, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good269_checked :
    goodSegmentCheck 109 36 76
      { lower := 62500, upper := 62518, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good270_checked :
    goodSegmentCheck 109 36 76
      { lower := 63948, upper := 63977, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good271_checked :
    goodSegmentCheck 109 36 76
      { lower := 65536, upper := 65629, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good264_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good265_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good266_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good267_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good268_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good269_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good270_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good271_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_good272_checked :
    goodSegmentCheck 109 36 76
      { lower := 65630, upper := 65644, witness := RowWitness.topPrime 65629 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good273_checked :
    goodSegmentCheck 109 36 76
      { lower := 67335, upper := 67336, witness := RowWitness.topPrime 67307 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good274_checked :
    goodSegmentCheck 109 36 76
      { lower := 68651, upper := 68747, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good275_checked :
    goodSegmentCheck 109 36 76
      { lower := 68748, upper := 68759, witness := RowWitness.topPrime 68743 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good276_checked :
    goodSegmentCheck 109 36 76
      { lower := 68782, upper := 68802, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good277_checked :
    goodSegmentCheck 109 36 76
      { lower := 68890, upper := 68890, witness := RowWitness.topPrime 68881 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good278_checked :
    goodSegmentCheck 109 36 76
      { lower := 68921, upper := 68998, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good279_checked :
    goodSegmentCheck 109 36 76
      { lower := 73205, upper := 73275, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good280_checked :
    goodSegmentCheck 109 36 76
      { lower := 73728, upper := 73803, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good281_checked :
    goodSegmentCheck 109 36 76
      { lower := 85264, upper := 85277, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good282_checked :
    goodSegmentCheck 109 36 76
      { lower := 85293, upper := 85367, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good283_checked :
    goodSegmentCheck 109 36 76
      { lower := 85368, upper := 85372, witness := RowWitness.topPrime 85363 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good284_checked :
    goodSegmentCheck 109 36 76
      { lower := 85697, upper := 85791, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good285_checked :
    goodSegmentCheck 109 36 76
      { lower := 91854, upper := 91917, witness := RowWitness.topPrime 91841 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good286_checked :
    goodSegmentCheck 109 36 76
      { lower := 103041, upper := 103081, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good287_checked :
    goodSegmentCheck 109 36 76
      { lower := 122412, upper := 122425, witness := RowWitness.topPrime 122401 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good272_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good273_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good274_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good275_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good276_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good277_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good278_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good279_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good280_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good281_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good282_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good283_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good284_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good285_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good286_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good287_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_good288_checked :
    goodSegmentCheck 109 36 76
      { lower := 131769, upper := 131834, witness := RowWitness.topPrime 131759 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good289_checked :
    goodSegmentCheck 109 36 76
      { lower := 137842, upper := 137889, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good290_checked :
    goodSegmentCheck 109 36 76
      { lower := 137917, upper := 137950, witness := RowWitness.topPrime 137911 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good291_checked :
    goodSegmentCheck 109 36 76
      { lower := 142814, upper := 142913, witness := RowWitness.topPrime 142811 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good292_checked :
    goodSegmentCheck 109 36 76
      { lower := 146410, upper := 146442, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good293_checked :
    goodSegmentCheck 109 36 76
      { lower := 148877, upper := 148945, witness := RowWitness.topPrime 148873 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good294_checked :
    goodSegmentCheck 109 36 76
      { lower := 148955, upper := 148985, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row109_good295_checked :
    goodSegmentCheck 109 36 76
      { lower := 327701, upper := 327788, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 109) (r := 36) (s := 76) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good288_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good289_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good290_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good291_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good292_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good293_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good294_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_good295_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_goods_checked :
    row109.goods.all (goodSegmentCheck row109.height.i row109.height.r row109.height.s) = true := by
  change row109_goods.all (goodSegmentCheck 109 36 76) = true
  simp only [row109_goods, List.all_cons, List.all_nil,
    row109_good000_checked,
    row109_good001_checked,
    row109_good002_checked,
    row109_good003_checked,
    row109_good004_checked,
    row109_good005_checked,
    row109_good006_checked,
    row109_good007_checked,
    row109_good008_checked,
    row109_good009_checked,
    row109_good010_checked,
    row109_good011_checked,
    row109_good012_checked,
    row109_good013_checked,
    row109_good014_checked,
    row109_good015_checked,
    row109_good016_checked,
    row109_good017_checked,
    row109_good018_checked,
    row109_good019_checked,
    row109_good020_checked,
    row109_good021_checked,
    row109_good022_checked,
    row109_good023_checked,
    row109_good024_checked,
    row109_good025_checked,
    row109_good026_checked,
    row109_good027_checked,
    row109_good028_checked,
    row109_good029_checked,
    row109_good030_checked,
    row109_good031_checked,
    row109_good032_checked,
    row109_good033_checked,
    row109_good034_checked,
    row109_good035_checked,
    row109_good036_checked,
    row109_good037_checked,
    row109_good038_checked,
    row109_good039_checked,
    row109_good040_checked,
    row109_good041_checked,
    row109_good042_checked,
    row109_good043_checked,
    row109_good044_checked,
    row109_good045_checked,
    row109_good046_checked,
    row109_good047_checked,
    row109_good048_checked,
    row109_good049_checked,
    row109_good050_checked,
    row109_good051_checked,
    row109_good052_checked,
    row109_good053_checked,
    row109_good054_checked,
    row109_good055_checked,
    row109_good056_checked,
    row109_good057_checked,
    row109_good058_checked,
    row109_good059_checked,
    row109_good060_checked,
    row109_good061_checked,
    row109_good062_checked,
    row109_good063_checked,
    row109_good064_checked,
    row109_good065_checked,
    row109_good066_checked,
    row109_good067_checked,
    row109_good068_checked,
    row109_good069_checked,
    row109_good070_checked,
    row109_good071_checked,
    row109_good072_checked,
    row109_good073_checked,
    row109_good074_checked,
    row109_good075_checked,
    row109_good076_checked,
    row109_good077_checked,
    row109_good078_checked,
    row109_good079_checked,
    row109_good080_checked,
    row109_good081_checked,
    row109_good082_checked,
    row109_good083_checked,
    row109_good084_checked,
    row109_good085_checked,
    row109_good086_checked,
    row109_good087_checked,
    row109_good088_checked,
    row109_good089_checked,
    row109_good090_checked,
    row109_good091_checked,
    row109_good092_checked,
    row109_good093_checked,
    row109_good094_checked,
    row109_good095_checked,
    row109_good096_checked,
    row109_good097_checked,
    row109_good098_checked,
    row109_good099_checked,
    row109_good100_checked,
    row109_good101_checked,
    row109_good102_checked,
    row109_good103_checked,
    row109_good104_checked,
    row109_good105_checked,
    row109_good106_checked,
    row109_good107_checked,
    row109_good108_checked,
    row109_good109_checked,
    row109_good110_checked,
    row109_good111_checked,
    row109_good112_checked,
    row109_good113_checked,
    row109_good114_checked,
    row109_good115_checked,
    row109_good116_checked,
    row109_good117_checked,
    row109_good118_checked,
    row109_good119_checked,
    row109_good120_checked,
    row109_good121_checked,
    row109_good122_checked,
    row109_good123_checked,
    row109_good124_checked,
    row109_good125_checked,
    row109_good126_checked,
    row109_good127_checked,
    row109_good128_checked,
    row109_good129_checked,
    row109_good130_checked,
    row109_good131_checked,
    row109_good132_checked,
    row109_good133_checked,
    row109_good134_checked,
    row109_good135_checked,
    row109_good136_checked,
    row109_good137_checked,
    row109_good138_checked,
    row109_good139_checked,
    row109_good140_checked,
    row109_good141_checked,
    row109_good142_checked,
    row109_good143_checked,
    row109_good144_checked,
    row109_good145_checked,
    row109_good146_checked,
    row109_good147_checked,
    row109_good148_checked,
    row109_good149_checked,
    row109_good150_checked,
    row109_good151_checked,
    row109_good152_checked,
    row109_good153_checked,
    row109_good154_checked,
    row109_good155_checked,
    row109_good156_checked,
    row109_good157_checked,
    row109_good158_checked,
    row109_good159_checked,
    row109_good160_checked,
    row109_good161_checked,
    row109_good162_checked,
    row109_good163_checked,
    row109_good164_checked,
    row109_good165_checked,
    row109_good166_checked,
    row109_good167_checked,
    row109_good168_checked,
    row109_good169_checked,
    row109_good170_checked,
    row109_good171_checked,
    row109_good172_checked,
    row109_good173_checked,
    row109_good174_checked,
    row109_good175_checked,
    row109_good176_checked,
    row109_good177_checked,
    row109_good178_checked,
    row109_good179_checked,
    row109_good180_checked,
    row109_good181_checked,
    row109_good182_checked,
    row109_good183_checked,
    row109_good184_checked,
    row109_good185_checked,
    row109_good186_checked,
    row109_good187_checked,
    row109_good188_checked,
    row109_good189_checked,
    row109_good190_checked,
    row109_good191_checked,
    row109_good192_checked,
    row109_good193_checked,
    row109_good194_checked,
    row109_good195_checked,
    row109_good196_checked,
    row109_good197_checked,
    row109_good198_checked,
    row109_good199_checked,
    row109_good200_checked,
    row109_good201_checked,
    row109_good202_checked,
    row109_good203_checked,
    row109_good204_checked,
    row109_good205_checked,
    row109_good206_checked,
    row109_good207_checked,
    row109_good208_checked,
    row109_good209_checked,
    row109_good210_checked,
    row109_good211_checked,
    row109_good212_checked,
    row109_good213_checked,
    row109_good214_checked,
    row109_good215_checked,
    row109_good216_checked,
    row109_good217_checked,
    row109_good218_checked,
    row109_good219_checked,
    row109_good220_checked,
    row109_good221_checked,
    row109_good222_checked,
    row109_good223_checked,
    row109_good224_checked,
    row109_good225_checked,
    row109_good226_checked,
    row109_good227_checked,
    row109_good228_checked,
    row109_good229_checked,
    row109_good230_checked,
    row109_good231_checked,
    row109_good232_checked,
    row109_good233_checked,
    row109_good234_checked,
    row109_good235_checked,
    row109_good236_checked,
    row109_good237_checked,
    row109_good238_checked,
    row109_good239_checked,
    row109_good240_checked,
    row109_good241_checked,
    row109_good242_checked,
    row109_good243_checked,
    row109_good244_checked,
    row109_good245_checked,
    row109_good246_checked,
    row109_good247_checked,
    row109_good248_checked,
    row109_good249_checked,
    row109_good250_checked,
    row109_good251_checked,
    row109_good252_checked,
    row109_good253_checked,
    row109_good254_checked,
    row109_good255_checked,
    row109_good256_checked,
    row109_good257_checked,
    row109_good258_checked,
    row109_good259_checked,
    row109_good260_checked,
    row109_good261_checked,
    row109_good262_checked,
    row109_good263_checked,
    row109_good264_checked,
    row109_good265_checked,
    row109_good266_checked,
    row109_good267_checked,
    row109_good268_checked,
    row109_good269_checked,
    row109_good270_checked,
    row109_good271_checked,
    row109_good272_checked,
    row109_good273_checked,
    row109_good274_checked,
    row109_good275_checked,
    row109_good276_checked,
    row109_good277_checked,
    row109_good278_checked,
    row109_good279_checked,
    row109_good280_checked,
    row109_good281_checked,
    row109_good282_checked,
    row109_good283_checked,
    row109_good284_checked,
    row109_good285_checked,
    row109_good286_checked,
    row109_good287_checked,
    row109_good288_checked,
    row109_good289_checked,
    row109_good290_checked,
    row109_good291_checked,
    row109_good292_checked,
    row109_good293_checked,
    row109_good294_checked,
    row109_good295_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_registered :
    decide (row109.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row109_small_checked :
    coverCheck (2 * row109.height.i + 2) (row109.height.i * (row109.height.i - 1) - 1)
      (row109.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row109_layerCover_checked :
    coverCheck (row109.height.i * (row109.height.i - 1)) (row109.height.n0 - 1)
      (row109.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row109_bounds : List NatInterval :=
  [(220, 319), (320, 425), (426, 529), (530, 631), (632, 739), (740, 847), (848, 947), (948, 1055), (1056, 1159), (1160, 1261), (1262, 1367), (1368, 1475), (1476, 1579), (1580, 1687), (1688, 1777), (1778, 1885), (1886, 1987), (1988, 2095), (2096, 2197), (2198, 2287), (2288, 2395), (2396, 2501), (2502, 2585), (2586, 2687), (2688, 2795), (2796, 2899), (2900, 3005), (3006, 3109), (3110, 3217), (3218, 3325), (3326, 3431), (3432, 3521), (3522, 3625), (3626, 3731), (3732, 3835), (3836, 3941), (3942, 4039), (4040, 4135), (4136, 4241), (4242, 4349), (4350, 4457), (4458, 4565), (4566, 4669), (4670, 4771), (4772, 4867), (4868, 4969), (4970, 5077), (5078, 5185), (5186, 5287), (5288, 5389), (5390, 5495), (5496, 5591), (5592, 5699), (5700, 5801), (5802, 5909), (5910, 6011), (6012, 6119), (6120, 6221), (6222, 6329), (6330, 6437), (6438, 6535), (6536, 6637), (6638, 6745), (6746, 6845), (6846, 6949), (6950, 7057), (7058, 7165), (7166, 7267), (7268, 7361), (7362, 7459), (7460, 7567), (7568, 7669), (7670, 7777), (7778, 7867), (7868, 7975), (7976, 8071), (8072, 8177), (8178, 8279), (8280, 8381), (8382, 8485), (8486, 8575), (8576, 8681), (8682, 8789), (8790, 8891), (8892, 8995), (8996, 9079), (9080, 9175), (9176, 9281), (9282, 9389), (9390, 9485), (9486, 9587), (9588, 9695), (9696, 9797), (9798, 9899), (9900, 9995), (9996, 10081), (10082, 10187), (10188, 10289), (10290, 10397), (10398, 10499), (10500, 10607), (10608, 10715), (10716, 10819), (10820, 10907), (10908, 11011), (11012, 11111), (11112, 11201), (11202, 11305), (11306, 11407), (11408, 11507), (11508, 11611), (11612, 11705), (11706, 11772), (11774, 11851), (11852, 11884), (11979, 11983), (12005, 12087), (12321, 12409), (12410, 12429), (12482, 12587), (12588, 12601), (12696, 12723), (12800, 12804), (13125, 13229), (13230, 13337), (13338, 13418), (13454, 13559), (13560, 13564), (13718, 13819), (13820, 13886), (13924, 13959), (14336, 14435), (14436, 14514), (14641, 14688), (14739, 14749), (14792, 14847), (14884, 14900), (15059, 15108), (15123, 15229), (15230, 15237), (15360, 15467), (15468, 15487), (15979, 16081), (16082, 16095), (16384, 16489), (16490, 16492), (16807, 16895), (16896, 16928), (17303, 17407), (17408, 17509), (17510, 17516), (17576, 17604), (17661, 17767), (17768, 17769), (18259, 18333), (18490, 18589), (18590, 18599), (18605, 18610), (18634, 18713), (18723, 18742), (18750, 18857), (18858, 18858), (19208, 19315), (19316, 19316), (19663, 19769), (19770, 19771), (19773, 19791), (19881, 19881), (19965, 19989), (20172, 20269), (20270, 20289), (20402, 20447), (20480, 20510), (20535, 20641), (20642, 20643), (20667, 20685), (21218, 21250), (21296, 21391), (21392, 21404), (21609, 21612), (21870, 21971), (21972, 22012), (22103, 22201), (22202, 22211), (22472, 22577), (22578, 22580), (22627, 22636), (24010, 24115), (24116, 24145), (24334, 24437), (24438, 24475), (24576, 24679), (24680, 24684), (25000, 25072), (25215, 25297), (25298, 25369), (25370, 25389), (26047, 26119), (26411, 26472), (26508, 26519), (26624, 26705), (26706, 26732), (26934, 27004), (27436, 27488), (28125, 28198), (28227, 28233), (28577, 28669), (28672, 28685), (28717, 28780), (28812, 28825), (29584, 29586), (29791, 29876), (30258, 30354), (30618, 30701), (30702, 30711), (30720, 30726), (30758, 30828), (30926, 31007), (31213, 31301), (31302, 31321), (31329, 31358), (31423, 31505), (31506, 31531), (31974, 32047), (32805, 32876), (33620, 33727), (33728, 33728), (34347, 34445), (34446, 34499), (34816, 34915), (34916, 34918), (35152, 35239), (35344, 35395), (36015, 36020), (36517, 36605), (36606, 36609), (37210, 37287), (37303, 37318), (37349, 37411), (37446, 37457), (37500, 37601), (37602, 37608), (37636, 37661), (39326, 39431), (39432, 39434), (39605, 39654), (40401, 40436), (40817, 40912), (40960, 41039), (41772, 41851), (43740, 43829), (43830, 43848), (43940, 44031), (44217, 44288), (44944, 44998), (48013, 48069), (48734, 48776), (48778, 48842), (49152, 49238), (50000, 50036), (50421, 50518), (53125, 53153), (53290, 53356), (55451, 55549), (55550, 55555), (57344, 57353), (58619, 58672), (59049, 59064), (59582, 59644), (62500, 62518), (63948, 63977), (65536, 65629), (65630, 65644), (67335, 67336), (68651, 68747), (68748, 68759), (68782, 68802), (68890, 68890), (68921, 68998), (73205, 73275), (73728, 73803), (85264, 85277), (85293, 85367), (85368, 85372), (85697, 85791), (91854, 91917), (103041, 103081), (122412, 122425), (131769, 131834), (137842, 137889), (137917, 137950), (142814, 142913), (146410, 146442), (148877, 148945), (148955, 148985), (327701, 327788)]

theorem row109_bounds_eq : row109.goods.map goodSegmentBounds = row109_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row109_layer000_intervals : List ColouredInterval :=
  [(2, 11776, 11884), (2, 12288, 12396), (2, 12800, 12908), (2, 12288, 12396), (2, 13312, 13420), (2, 14336, 14444), (2, 15360, 15468), (2, 16384, 16492), (2, 17408, 17516), (2, 18432, 18540), (2, 19456, 19564), (2, 20480, 20588), (2, 21504, 21612), (2, 22528, 22636), (2, 12288, 12396), (2, 14336, 14444), (2, 16384, 16492), (2, 18432, 18540), (2, 20480, 20588), (2, 22528, 22636), (2, 12288, 12396), (2, 16384, 16492), (2, 20480, 20588), (2, 16384, 16492), (2, 16384, 16492), (3, 11772, 11772), (3, 12393, 12501), (3, 13122, 13230), (3, 13851, 13959), (3, 14580, 14688), (3, 15309, 15417), (3, 16038, 16146), (3, 16767, 16875), (3, 17496, 17604), (3, 18225, 18333), (3, 13122, 13230), (3, 15309, 15417), (3, 17496, 17604), (3, 19683, 19791), (3, 21870, 21978), (3, 13122, 13230), (3, 19683, 19791), (3, 19683, 19791), (5, 11875, 11983), (5, 12500, 12608), (5, 13125, 13233), (5, 13750, 13858), (5, 14375, 14483), (5, 15000, 15108), (5, 15625, 15733), (5, 12500, 12608), (5, 15625, 15733), (5, 18750, 18858), (5, 21875, 21983), (5, 15625, 15733), (7, 12005, 12113), (7, 14406, 14514), (7, 16807, 16915), (7, 19208, 19316), (7, 21609, 21717), (7, 16807, 16915), (11, 11979, 12087), (11, 13310, 13418), (11, 14641, 14749), (11, 15972, 16080), (11, 17303, 17411), (11, 18634, 18742), (11, 19965, 20073), (11, 21296, 21404), (11, 22627, 22735), (11, 14641, 14749), (13, 13182, 13290), (13, 15379, 15487), (13, 17576, 17684), (13, 19773, 19881), (13, 21970, 22078), (17, 14739, 14847), (17, 19652, 19760), (19, 13718, 13826), (19, 20577, 20685), (23, 12167, 12275), (23, 12696, 12804), (23, 13225, 13333), (23, 12167, 12275), (29, 11774, 11882), (29, 12615, 12723), (29, 13456, 13564), (29, 14297, 14405), (29, 15138, 15246), (29, 15979, 16087), (29, 16820, 16928), (29, 17661, 17769), (29, 18502, 18610), (29, 19343, 19451), (29, 20184, 20292), (29, 21025, 21133), (31, 12493, 12601), (31, 13454, 13562), (31, 14415, 14523), (31, 15376, 15484), (31, 16337, 16445), (31, 17298, 17406), (31, 18259, 18367), (31, 19220, 19328), (31, 20181, 20289), (31, 21142, 21250), (31, 22103, 22211), (31, 23064, 23172), (37, 12321, 12429), (37, 13690, 13798), (37, 15059, 15167), (37, 16428, 16536), (37, 17797, 17905), (37, 19166, 19274), (37, 20535, 20643), (37, 21904, 22012), (37, 23273, 23381), (41, 11772, 11875), (41, 13448, 13556), (41, 15129, 15237), (41, 16810, 16918), (41, 18491, 18599), (41, 20172, 20280), (41, 21853, 21961), (41, 23534, 23543), (43, 12943, 13051), (43, 14792, 14900), (43, 16641, 16749), (43, 18490, 18598), (43, 20339, 20447), (43, 22188, 22296), (47, 13254, 13362), (47, 15463, 15571), (47, 17672, 17780), (47, 19881, 19989), (47, 22090, 22198), (53, 14045, 14153), (53, 16854, 16962), (53, 19663, 19771), (53, 22472, 22580), (59, 13924, 14032), (59, 17405, 17513), (59, 20886, 20994), (61, 14884, 14992), (61, 18605, 18713), (61, 22326, 22434), (67, 13467, 13575), (67, 17956, 18064), (67, 22445, 22553), (71, 15123, 15231), (71, 20164, 20272), (73, 15987, 16095), (73, 21316, 21424), (79, 12482, 12590), (79, 18723, 18831), (83, 13778, 13886), (83, 20667, 20775), (89, 15842, 15950), (97, 18818, 18926), (101, 20402, 20510), (103, 21218, 21326), (107, 22898, 23006)]

def row109_layer000_block000 : List ColouredInterval :=
  [(2, 11776, 11884), (2, 12288, 12396), (2, 12800, 12908), (2, 12288, 12396), (2, 13312, 13420), (2, 14336, 14444), (2, 15360, 15468), (2, 16384, 16492), (2, 17408, 17516), (2, 18432, 18540), (2, 19456, 19564), (2, 20480, 20588)]

def row109_layer000_block001 : List ColouredInterval :=
  [(2, 21504, 21612), (2, 22528, 22636), (2, 12288, 12396), (2, 14336, 14444), (2, 16384, 16492), (2, 18432, 18540), (2, 20480, 20588), (2, 22528, 22636), (2, 12288, 12396), (2, 16384, 16492), (2, 20480, 20588), (2, 16384, 16492)]

def row109_layer000_block002 : List ColouredInterval :=
  [(2, 16384, 16492), (3, 11772, 11772), (3, 12393, 12501), (3, 13122, 13230), (3, 13851, 13959), (3, 14580, 14688), (3, 15309, 15417), (3, 16038, 16146), (3, 16767, 16875), (3, 17496, 17604), (3, 18225, 18333), (3, 13122, 13230)]

def row109_layer000_block003 : List ColouredInterval :=
  [(3, 15309, 15417), (3, 17496, 17604), (3, 19683, 19791), (3, 21870, 21978), (3, 13122, 13230), (3, 19683, 19791), (3, 19683, 19791), (5, 11875, 11983), (5, 12500, 12608), (5, 13125, 13233), (5, 13750, 13858), (5, 14375, 14483)]

def row109_layer000_block004 : List ColouredInterval :=
  [(5, 15000, 15108), (5, 15625, 15733), (5, 12500, 12608), (5, 15625, 15733), (5, 18750, 18858), (5, 21875, 21983), (5, 15625, 15733), (7, 12005, 12113), (7, 14406, 14514), (7, 16807, 16915), (7, 19208, 19316), (7, 21609, 21717)]

def row109_layer000_block005 : List ColouredInterval :=
  [(7, 16807, 16915), (11, 11979, 12087), (11, 13310, 13418), (11, 14641, 14749), (11, 15972, 16080), (11, 17303, 17411), (11, 18634, 18742), (11, 19965, 20073), (11, 21296, 21404), (11, 22627, 22735), (11, 14641, 14749), (13, 13182, 13290)]

def row109_layer000_block006 : List ColouredInterval :=
  [(13, 15379, 15487), (13, 17576, 17684), (13, 19773, 19881), (13, 21970, 22078), (17, 14739, 14847), (17, 19652, 19760), (19, 13718, 13826), (19, 20577, 20685), (23, 12167, 12275), (23, 12696, 12804), (23, 13225, 13333), (23, 12167, 12275)]

def row109_layer000_block007 : List ColouredInterval :=
  [(29, 11774, 11882), (29, 12615, 12723), (29, 13456, 13564), (29, 14297, 14405), (29, 15138, 15246), (29, 15979, 16087), (29, 16820, 16928), (29, 17661, 17769), (29, 18502, 18610), (29, 19343, 19451), (29, 20184, 20292), (29, 21025, 21133)]

def row109_layer000_block008 : List ColouredInterval :=
  [(31, 12493, 12601), (31, 13454, 13562), (31, 14415, 14523), (31, 15376, 15484), (31, 16337, 16445), (31, 17298, 17406), (31, 18259, 18367), (31, 19220, 19328), (31, 20181, 20289), (31, 21142, 21250), (31, 22103, 22211), (31, 23064, 23172)]

def row109_layer000_block009 : List ColouredInterval :=
  [(37, 12321, 12429), (37, 13690, 13798), (37, 15059, 15167), (37, 16428, 16536), (37, 17797, 17905), (37, 19166, 19274), (37, 20535, 20643), (37, 21904, 22012), (37, 23273, 23381), (41, 11772, 11875), (41, 13448, 13556), (41, 15129, 15237)]

def row109_layer000_block010 : List ColouredInterval :=
  [(41, 16810, 16918), (41, 18491, 18599), (41, 20172, 20280), (41, 21853, 21961), (41, 23534, 23543), (43, 12943, 13051), (43, 14792, 14900), (43, 16641, 16749), (43, 18490, 18598), (43, 20339, 20447), (43, 22188, 22296), (47, 13254, 13362)]

def row109_layer000_block011 : List ColouredInterval :=
  [(47, 15463, 15571), (47, 17672, 17780), (47, 19881, 19989), (47, 22090, 22198), (53, 14045, 14153), (53, 16854, 16962), (53, 19663, 19771), (53, 22472, 22580), (59, 13924, 14032), (59, 17405, 17513), (59, 20886, 20994), (61, 14884, 14992)]

def row109_layer000_block012 : List ColouredInterval :=
  [(61, 18605, 18713), (61, 22326, 22434), (67, 13467, 13575), (67, 17956, 18064), (67, 22445, 22553), (71, 15123, 15231), (71, 20164, 20272), (73, 15987, 16095), (73, 21316, 21424), (79, 12482, 12590), (79, 18723, 18831), (83, 13778, 13886)]

def row109_layer000_block013 : List ColouredInterval :=
  [(83, 20667, 20775), (89, 15842, 15950), (97, 18818, 18926), (101, 20402, 20510), (103, 21218, 21326), (107, 22898, 23006)]

def row109_layer000_chunks : List (List ColouredInterval) :=
  [row109_layer000_block000, row109_layer000_block001, row109_layer000_block002, row109_layer000_block003, row109_layer000_block004, row109_layer000_block005, row109_layer000_block006, row109_layer000_block007, row109_layer000_block008, row109_layer000_block009, row109_layer000_block010, row109_layer000_block011, row109_layer000_block012, row109_layer000_block013]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer000_arithmetic : LayerArithmeticValid row109.height { lower := 11772, upper := 23544, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer000_enumeration :
    activePowerIntervalList 109 25 11772 23544 = row109_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer000_pairs000 :
    row109_layer000_block000.all (fun I => row109_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer000_pairs001 :
    row109_layer000_block001.all (fun I => row109_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer000_pairs002 :
    row109_layer000_block002.all (fun I => row109_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer000_pairs003 :
    row109_layer000_block003.all (fun I => row109_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer000_pairs004 :
    row109_layer000_block004.all (fun I => row109_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer000_pairs005 :
    row109_layer000_block005.all (fun I => row109_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer000_pairs005
