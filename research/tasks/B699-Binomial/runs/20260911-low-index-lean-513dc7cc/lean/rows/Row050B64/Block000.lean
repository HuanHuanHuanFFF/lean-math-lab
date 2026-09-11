import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row050_height : HeightCertificateDatum := { i := 50, r := 16, s := 34, n0Power10 := 20 }

def row050_goods : List GoodSegment := [
  { lower := 102, upper := 150, witness := RowWitness.topPrime 101 },
  { lower := 151, upper := 200, witness := RowWitness.topPrime 151 },
  { lower := 201, upper := 248, witness := RowWitness.topPrime 199 },
  { lower := 249, upper := 290, witness := RowWitness.topPrime 241 },
  { lower := 291, upper := 332, witness := RowWitness.topPrime 283 },
  { lower := 333, upper := 380, witness := RowWitness.topPrime 331 },
  { lower := 381, upper := 428, witness := RowWitness.topPrime 379 },
  { lower := 429, upper := 470, witness := RowWitness.topPrime 421 },
  { lower := 471, upper := 516, witness := RowWitness.topPrime 467 },
  { lower := 517, upper := 558, witness := RowWitness.topPrime 509 },
  { lower := 559, upper := 606, witness := RowWitness.topPrime 557 },
  { lower := 607, upper := 656, witness := RowWitness.topPrime 607 },
  { lower := 657, upper := 702, witness := RowWitness.topPrime 653 },
  { lower := 703, upper := 750, witness := RowWitness.topPrime 701 },
  { lower := 751, upper := 800, witness := RowWitness.topPrime 751 },
  { lower := 801, upper := 846, witness := RowWitness.topPrime 797 },
  { lower := 847, upper := 888, witness := RowWitness.topPrime 839 },
  { lower := 889, upper := 936, witness := RowWitness.topPrime 887 },
  { lower := 937, upper := 986, witness := RowWitness.topPrime 937 },
  { lower := 987, upper := 1032, witness := RowWitness.topPrime 983 },
  { lower := 1033, upper := 1082, witness := RowWitness.topPrime 1033 },
  { lower := 1083, upper := 1118, witness := RowWitness.topPrime 1069 },
  { lower := 1119, upper := 1166, witness := RowWitness.topPrime 1117 },
  { lower := 1167, upper := 1212, witness := RowWitness.topPrime 1163 },
  { lower := 1213, upper := 1262, witness := RowWitness.topPrime 1213 },
  { lower := 1263, upper := 1308, witness := RowWitness.topPrime 1259 },
  { lower := 1309, upper := 1356, witness := RowWitness.topPrime 1307 },
  { lower := 1357, upper := 1376, witness := RowWitness.topPrime 1327 },
  { lower := 1377, upper := 1422, witness := RowWitness.topPrime 1373 },
  { lower := 1423, upper := 1472, witness := RowWitness.topPrime 1423 },
  { lower := 1473, upper := 1520, witness := RowWitness.topPrime 1471 },
  { lower := 1521, upper := 1560, witness := RowWitness.topPrime 1511 },
  { lower := 1561, upper := 1608, witness := RowWitness.topPrime 1559 },
  { lower := 1609, upper := 1658, witness := RowWitness.topPrime 1609 },
  { lower := 1659, upper := 1706, witness := RowWitness.topPrime 1657 },
  { lower := 1707, upper := 1748, witness := RowWitness.topPrime 1699 },
  { lower := 1749, upper := 1796, witness := RowWitness.topPrime 1747 },
  { lower := 1797, upper := 1838, witness := RowWitness.topPrime 1789 },
  { lower := 1839, upper := 1880, witness := RowWitness.topPrime 1831 },
  { lower := 1881, upper := 1928, witness := RowWitness.topPrime 1879 },
  { lower := 1929, upper := 1962, witness := RowWitness.topPrime 1913 },
  { lower := 1963, upper := 2000, witness := RowWitness.topPrime 1951 },
  { lower := 2001, upper := 2048, witness := RowWitness.topPrime 1999 },
  { lower := 2049, upper := 2088, witness := RowWitness.topPrime 2039 },
  { lower := 2089, upper := 2138, witness := RowWitness.topPrime 2089 },
  { lower := 2139, upper := 2186, witness := RowWitness.topPrime 2137 },
  { lower := 2187, upper := 2228, witness := RowWitness.topPrime 2179 },
  { lower := 2229, upper := 2270, witness := RowWitness.topPrime 2221 },
  { lower := 2271, upper := 2318, witness := RowWitness.topPrime 2269 },
  { lower := 2319, upper := 2360, witness := RowWitness.topPrime 2311 },
  { lower := 2361, upper := 2406, witness := RowWitness.topPrime 2357 },
  { lower := 2407, upper := 2448, witness := RowWitness.topPrime 2399 },
  { lower := 2449, upper := 2469, witness := RowWitness.topPrime 2447 },
  { lower := 2523, upper := 2570, witness := RowWitness.topPrime 2521 },
  { lower := 2571, upper := 2590, witness := RowWitness.topPrime 2557 },
  { lower := 2592, upper := 2640, witness := RowWitness.topPrime 2591 },
  { lower := 2641, upper := 2641, witness := RowWitness.topPrime 2633 },
  { lower := 2645, upper := 2650, witness := RowWitness.topPrime 2633 },
  { lower := 2662, upper := 2708, witness := RowWitness.topPrime 2659 },
  { lower := 2709, upper := 2722, witness := RowWitness.topPrime 2707 },
  { lower := 2738, upper := 2780, witness := RowWitness.topPrime 2731 },
  { lower := 2781, upper := 2803, witness := RowWitness.topPrime 2777 },
  { lower := 2816, upper := 2832, witness := RowWitness.topPrime 2803 },
  { lower := 2835, upper := 2865, witness := RowWitness.topPrime 2833 },
  { lower := 2873, upper := 2910, witness := RowWitness.topPrime 2861 },
  { lower := 2911, upper := 2953, witness := RowWitness.topPrime 2909 },
  { lower := 3025, upper := 3072, witness := RowWitness.topPrime 3023 },
  { lower := 3073, upper := 3116, witness := RowWitness.topPrime 3067 },
  { lower := 3117, upper := 3121, witness := RowWitness.topPrime 3109 },
  { lower := 3125, upper := 3136, witness := RowWitness.topPrime 3121 },
  { lower := 3146, upper := 3186, witness := RowWitness.topPrime 3137 },
  { lower := 3187, upper := 3228, witness := RowWitness.topPrime 3187 },
  { lower := 3249, upper := 3260, witness := RowWitness.topPrime 3229 },
  { lower := 3267, upper := 3298, witness := RowWitness.topPrime 3259 },
  { lower := 3362, upper := 3410, witness := RowWitness.topPrime 3361 },
  { lower := 3411, upper := 3451, witness := RowWitness.topPrime 3407 },
  { lower := 3468, upper := 3479, witness := RowWitness.topPrime 3467 },
  { lower := 3509, upper := 3517, witness := RowWitness.topPrime 3499 },
  { lower := 3549, upper := 3558, witness := RowWitness.topPrime 3547 },
  { lower := 3584, upper := 3598, witness := RowWitness.topPrime 3583 },
  { lower := 3610, upper := 3656, witness := RowWitness.topPrime 3607 },
  { lower := 3657, upper := 3679, witness := RowWitness.topPrime 3643 },
  { lower := 3703, upper := 3750, witness := RowWitness.topPrime 3701 },
  { lower := 3751, upper := 3788, witness := RowWitness.topPrime 3739 },
  { lower := 3789, upper := 3806, witness := RowWitness.topPrime 3779 },
  { lower := 3844, upper := 3882, witness := RowWitness.topPrime 3833 },
  { lower := 3883, upper := 3930, witness := RowWitness.topPrime 3881 },
  { lower := 3931, upper := 3936, witness := RowWitness.topPrime 3931 },
  { lower := 3993, upper := 4020, witness := RowWitness.topPrime 3989 },
  { lower := 4056, upper := 4100, witness := RowWitness.topPrime 4051 },
  { lower := 4101, upper := 4105, witness := RowWitness.topPrime 4099 },
  { lower := 4107, upper := 4148, witness := RowWitness.topPrime 4099 },
  { lower := 4149, upper := 4165, witness := RowWitness.topPrime 4139 },
  { lower := 4225, upper := 4268, witness := RowWitness.topPrime 4219 },
  { lower := 4269, upper := 4281, witness := RowWitness.topPrime 4261 },
  { lower := 4335, upper := 4376, witness := RowWitness.topPrime 4327 },
  { lower := 4377, upper := 4422, witness := RowWitness.topPrime 4373 },
  { lower := 4423, upper := 4443, witness := RowWitness.topPrime 4423 },
  { lower := 4459, upper := 4467, witness := RowWitness.topPrime 4457 },
  { lower := 4477, upper := 4508, witness := RowWitness.topPrime 4463 },
  { lower := 4608, upper := 4612, witness := RowWitness.topPrime 4603 },
  { lower := 4617, upper := 4652, witness := RowWitness.topPrime 4603 },
  { lower := 4653, upper := 4666, witness := RowWitness.topPrime 4651 },
  { lower := 4732, upper := 4742, witness := RowWitness.topPrime 4729 },
  { lower := 4761, upper := 4781, witness := RowWitness.topPrime 4759 },
  { lower := 4802, upper := 4850, witness := RowWitness.topPrime 4801 },
  { lower := 4851, upper := 4851, witness := RowWitness.topPrime 4831 },
  { lower := 4901, upper := 4909, witness := RowWitness.topPrime 4889 },
  { lower := 4913, upper := 4950, witness := RowWitness.topPrime 4909 },
  { lower := 5046, upper := 5088, witness := RowWitness.topPrime 5039 },
  { lower := 5089, upper := 5136, witness := RowWitness.topPrime 5087 },
  { lower := 5137, upper := 5168, witness := RowWitness.topPrime 5119 },
  { lower := 5169, upper := 5169, witness := RowWitness.topPrime 5167 },
  { lower := 5239, upper := 5251, witness := RowWitness.topPrime 5237 },
  { lower := 5324, upper := 5339, witness := RowWitness.topPrime 5323 },
  { lower := 5346, upper := 5373, witness := RowWitness.topPrime 5333 },
  { lower := 5415, upper := 5457, witness := RowWitness.topPrime 5413 },
  { lower := 5488, upper := 5532, witness := RowWitness.topPrime 5483 },
  { lower := 5533, upper := 5537, witness := RowWitness.topPrime 5531 },
  { lower := 5577, upper := 5622, witness := RowWitness.topPrime 5573 },
  { lower := 5623, upper := 5626, witness := RowWitness.topPrime 5623 },
  { lower := 5632, upper := 5638, witness := RowWitness.topPrime 5623 },
  { lower := 5766, upper := 5798, witness := RowWitness.topPrime 5749 },
  { lower := 5799, upper := 5829, witness := RowWitness.topPrime 5791 },
  { lower := 5831, upper := 5876, witness := RowWitness.topPrime 5827 },
  { lower := 5877, upper := 5880, witness := RowWitness.topPrime 5869 },
  { lower := 6075, upper := 6118, witness := RowWitness.topPrime 6073 },
  { lower := 6144, upper := 6192, witness := RowWitness.topPrime 6143 },
  { lower := 6193, upper := 6193, witness := RowWitness.topPrime 6173 },
  { lower := 6348, upper := 6392, witness := RowWitness.topPrime 6343 },
  { lower := 6393, upper := 6397, witness := RowWitness.topPrime 6389 },
  { lower := 6517, upper := 6540, witness := RowWitness.topPrime 6491 },
  { lower := 6541, upper := 6547, witness := RowWitness.topPrime 6529 },
  { lower := 6561, upper := 6566, witness := RowWitness.topPrime 6553 },
  { lower := 6591, upper := 6610, witness := RowWitness.topPrime 6581 },
  { lower := 6627, upper := 6640, witness := RowWitness.topPrime 6619 },
  { lower := 6647, upper := 6686, witness := RowWitness.topPrime 6637 },
  { lower := 6687, upper := 6704, witness := RowWitness.topPrime 6679 },
  { lower := 6727, upper := 6768, witness := RowWitness.topPrime 6719 },
  { lower := 6769, upper := 6776, witness := RowWitness.topPrime 6763 },
  { lower := 6845, upper := 6853, witness := RowWitness.topPrime 6841 },
  { lower := 6859, upper := 6906, witness := RowWitness.topPrime 6857 },
  { lower := 6907, upper := 6909, witness := RowWitness.topPrime 6907 },
  { lower := 7203, upper := 7217, witness := RowWitness.topPrime 7193 },
  { lower := 7220, upper := 7268, witness := RowWitness.topPrime 7219 },
  { lower := 7269, upper := 7269, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7442, witness := RowWitness.topPrime 7393 },
  { lower := 7443, upper := 7445, witness := RowWitness.topPrime 7433 },
  { lower := 7533, upper := 7578, witness := RowWitness.topPrime 7529 },
  { lower := 7579, upper := 7618, witness := RowWitness.topPrime 7577 },
  { lower := 7688, upper := 7729, witness := RowWitness.topPrime 7687 },
  { lower := 7803, upper := 7825, witness := RowWitness.topPrime 7793 },
  { lower := 7935, upper := 7938, witness := RowWitness.topPrime 7933 },
  { lower := 7942, upper := 7984, witness := RowWitness.topPrime 7937 },
  { lower := 7986, upper := 7991, witness := RowWitness.topPrime 7963 },
  { lower := 8019, upper := 8035, witness := RowWitness.topPrime 8017 },
  { lower := 8214, upper := 8258, witness := RowWitness.topPrime 8209 },
  { lower := 8259, upper := 8281, witness := RowWitness.topPrime 8243 },
  { lower := 8303, upper := 8311, witness := RowWitness.topPrime 8297 },
  { lower := 8405, upper := 8438, witness := RowWitness.topPrime 8389 },
  { lower := 8439, upper := 8454, witness := RowWitness.topPrime 8431 },
  { lower := 8664, upper := 8712, witness := RowWitness.topPrime 8663 },
  { lower := 8713, upper := 8719, witness := RowWitness.topPrime 8713 },
  { lower := 8748, upper := 8753, witness := RowWitness.topPrime 8747 },
  { lower := 8788, upper := 8797, witness := RowWitness.topPrime 8783 },
  { lower := 8836, upper := 8837, witness := RowWitness.topPrime 8831 },
  { lower := 8959, upper := 8967, witness := RowWitness.topPrime 8951 },
  { lower := 8993, upper := 9008, witness := RowWitness.topPrime 8971 },
  { lower := 9025, upper := 9042, witness := RowWitness.topPrime 9013 },
  { lower := 9245, upper := 9290, witness := RowWitness.topPrime 9241 },
  { lower := 9291, upper := 9300, witness := RowWitness.topPrime 9283 },
  { lower := 9522, upper := 9526, witness := RowWitness.topPrime 9521 },
  { lower := 9537, upper := 9571, witness := RowWitness.topPrime 9533 },
  { lower := 9583, upper := 9586, witness := RowWitness.topPrime 9551 },
  { lower := 9604, upper := 9650, witness := RowWitness.topPrime 9601 },
  { lower := 9651, upper := 9653, witness := RowWitness.topPrime 9649 },
  { lower := 10086, upper := 10128, witness := RowWitness.topPrime 10079 },
  { lower := 10129, upper := 10141, witness := RowWitness.topPrime 10111 },
  { lower := 10240, upper := 10255, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10616, witness := RowWitness.topPrime 10567 },
  { lower := 10617, upper := 10620, witness := RowWitness.topPrime 10613 },
  { lower := 10648, upper := 10682, witness := RowWitness.topPrime 10639 },
  { lower := 10935, upper := 10958, witness := RowWitness.topPrime 10909 },
  { lower := 10959, upper := 11006, witness := RowWitness.topPrime 10957 },
  { lower := 11007, upper := 11025, witness := RowWitness.topPrime 11003 },
  { lower := 11094, upper := 11094, witness := RowWitness.topPrime 11093 },
  { lower := 11109, upper := 11142, witness := RowWitness.topPrime 11093 },
  { lower := 11143, upper := 11143, witness := RowWitness.topPrime 11131 },
  { lower := 11552, upper := 11581, witness := RowWitness.topPrime 11551 },
  { lower := 11664, upper := 11687, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11792, witness := RowWitness.topPrime 11743 },
  { lower := 11793, upper := 11816, witness := RowWitness.topPrime 11789 },
  { lower := 12005, upper := 12028, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12337, witness := RowWitness.topPrime 12301 },
  { lower := 13225, upper := 13231, witness := RowWitness.topPrime 13219 },
  { lower := 13254, upper := 13274, witness := RowWitness.topPrime 13249 },
  { lower := 13312, upper := 13358, witness := RowWitness.topPrime 13309 },
  { lower := 13359, upper := 13359, witness := RowWitness.topPrime 13339 },
  { lower := 13454, upper := 13500, witness := RowWitness.topPrime 13451 },
  { lower := 13501, upper := 13503, witness := RowWitness.topPrime 13499 },
  { lower := 13718, upper := 13739, witness := RowWitness.topPrime 13711 },
  { lower := 13754, upper := 13767, witness := RowWitness.topPrime 13751 },
  { lower := 14297, upper := 14332, witness := RowWitness.topPrime 14293 },
  { lower := 14336, upper := 14346, witness := RowWitness.topPrime 14327 },
  { lower := 14415, upper := 14455, witness := RowWitness.topPrime 14411 },
  { lower := 14812, upper := 14841, witness := RowWitness.topPrime 14797 },
  { lower := 15138, upper := 15178, witness := RowWitness.topPrime 15137 },
  { lower := 15341, upper := 15358, witness := RowWitness.topPrime 15331 },
  { lower := 15360, upper := 15408, witness := RowWitness.topPrime 15359 },
  { lower := 15409, upper := 15425, witness := RowWitness.topPrime 15401 },
  { lower := 15979, upper := 16021, witness := RowWitness.topPrime 15973 },
  { lower := 16384, upper := 16386, witness := RowWitness.topPrime 16381 },
  { lower := 16399, upper := 16430, witness := RowWitness.topPrime 16381 },
  { lower := 16431, upper := 16448, witness := RowWitness.topPrime 16427 },
  { lower := 16807, upper := 16836, witness := RowWitness.topPrime 16787 },
  { lower := 16837, upper := 16859, witness := RowWitness.topPrime 16831 },
  { lower := 17303, upper := 17347, witness := RowWitness.topPrime 17299 },
  { lower := 17672, upper := 17710, witness := RowWitness.topPrime 17669 },
  { lower := 18259, upper := 18274, witness := RowWitness.topPrime 18257 },
  { lower := 18491, upper := 18530, witness := RowWitness.topPrime 18481 },
  { lower := 18531, upper := 18540, witness := RowWitness.topPrime 18523 },
  { lower := 19208, upper := 19215, witness := RowWitness.topPrime 19207 },
  { lower := 19220, upper := 19257, witness := RowWitness.topPrime 19219 },
  { lower := 19683, upper := 19701, witness := RowWitness.topPrime 19681 },
  { lower := 20181, upper := 20226, witness := RowWitness.topPrime 20177 },
  { lower := 20227, upper := 20230, witness := RowWitness.topPrime 20219 },
  { lower := 20577, upper := 20584, witness := RowWitness.topPrime 20563 },
  { lower := 21142, upper := 21188, witness := RowWitness.topPrime 21139 },
  { lower := 21189, upper := 21190, witness := RowWitness.topPrime 21187 },
  { lower := 21866, upper := 21912, witness := RowWitness.topPrime 21863 },
  { lower := 21913, upper := 21919, witness := RowWitness.topPrime 21911 },
  { lower := 22103, upper := 22139, witness := RowWitness.topPrime 22093 },
  { lower := 23548, upper := 23583, witness := RowWitness.topPrime 23539 },
  { lower := 24025, upper := 24072, witness := RowWitness.topPrime 24023 },
  { lower := 24073, upper := 24086, witness := RowWitness.topPrime 24071 },
  { lower := 24334, upper := 24348, witness := RowWitness.topPrime 24329 },
  { lower := 24576, upper := 24614, witness := RowWitness.topPrime 24571 },
  { lower := 25230, upper := 25264, witness := RowWitness.topPrime 25229 },
  { lower := 26411, upper := 26413, witness := RowWitness.topPrime 26407 },
  { lower := 26624, upper := 26646, witness := RowWitness.topPrime 26597 },
  { lower := 26647, upper := 26669, witness := RowWitness.topPrime 26647 },
  { lower := 26908, upper := 26945, witness := RowWitness.topPrime 26903 },
  { lower := 28577, upper := 28610, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28721, witness := RowWitness.topPrime 28711 },
  { lower := 28749, upper := 28766, witness := RowWitness.topPrime 28729 },
  { lower := 28830, upper := 28861, witness := RowWitness.topPrime 28817 },
  { lower := 30618, upper := 30642, witness := RowWitness.topPrime 30593 },
  { lower := 30643, upper := 30662, witness := RowWitness.topPrime 30643 },
  { lower := 30758, upper := 30769, witness := RowWitness.topPrime 30757 },
  { lower := 31944, upper := 31956, witness := RowWitness.topPrime 31907 },
  { lower := 31957, upper := 31988, witness := RowWitness.topPrime 31957 },
  { lower := 32805, upper := 32817, witness := RowWitness.topPrime 32803 },
  { lower := 33282, upper := 33296, witness := RowWitness.topPrime 33247 },
  { lower := 33297, upper := 33324, witness := RowWitness.topPrime 33289 },
  { lower := 33620, upper := 33663, witness := RowWitness.topPrime 33619 },
  { lower := 35152, upper := 35180, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35350, witness := RowWitness.topPrime 35339 },
  { lower := 36980, upper := 37028, witness := RowWitness.topPrime 36979 },
  { lower := 37029, upper := 37029, witness := RowWitness.topPrime 37021 },
  { lower := 43740, upper := 43755, witness := RowWitness.topPrime 43721 },
  { lower := 43940, upper := 43972, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44229, witness := RowWitness.topPrime 44207 },
  { lower := 48020, upper := 48062, witness := RowWitness.topPrime 48017 },
  { lower := 48114, upper := 48123, witness := RowWitness.topPrime 48109 },
  { lower := 49152, upper := 49179, witness := RowWitness.topPrime 49139 },
  { lower := 55225, upper := 55268, witness := RowWitness.topPrime 55219 },
  { lower := 55269, upper := 55272, witness := RowWitness.topPrime 55259 },
  { lower := 73205, upper := 73216, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73744, witness := RowWitness.topPrime 73727 },
  { lower := 98304, upper := 98309, witness := RowWitness.topPrime 98299 },
  { lower := 150903, upper := 150947, witness := RowWitness.topPrime 150901 },
  { lower := 327701, upper := 327729, witness := RowWitness.topPrime 327689 },
  { lower := 655402, upper := 655409, witness := RowWitness.topPrime 655399 }
]

def row050_layers : List CoverLayer := [
  { lower := 2450, upper := 4900, M := 37 },
  { lower := 4900, upper := 9800, M := 34 },
  { lower := 9800, upper := 19600, M := 32 },
  { lower := 19600, upper := 39200, M := 30 },
  { lower := 39200, upper := 78400, M := 28 },
  { lower := 78400, upper := 156800, M := 26 },
  { lower := 156800, upper := 313600, M := 25 },
  { lower := 313600, upper := 627200, M := 23 },
  { lower := 627200, upper := 1254400, M := 22 },
  { lower := 1254400, upper := 2508800, M := 20 },
  { lower := 2508800, upper := 5017600, M := 19 },
  { lower := 5017600, upper := 10035200, M := 18 },
  { lower := 10035200, upper := 20070400, M := 17 },
  { lower := 20070400, upper := 40140800, M := 16 },
  { lower := 40140800, upper := 80281600, M := 15 },
  { lower := 80281600, upper := 160563200, M := 14 },
  { lower := 160563200, upper := 321126400, M := 13 },
  { lower := 321126400, upper := 642252800, M := 12 },
  { lower := 642252800, upper := 1284505600, M := 12 },
  { lower := 1284505600, upper := 2569011200, M := 11 },
  { lower := 2569011200, upper := 5138022400, M := 10 },
  { lower := 5138022400, upper := 10276044800, M := 10 },
  { lower := 10276044800, upper := 20552089600, M := 9 },
  { lower := 20552089600, upper := 41104179200, M := 8 },
  { lower := 41104179200, upper := 82208358400, M := 8 },
  { lower := 82208358400, upper := 164416716800, M := 7 },
  { lower := 164416716800, upper := 328833433600, M := 7 },
  { lower := 328833433600, upper := 657666867200, M := 7 },
  { lower := 657666867200, upper := 1315333734400, M := 6 },
  { lower := 1315333734400, upper := 2630667468800, M := 6 },
  { lower := 2630667468800, upper := 5261334937600, M := 6 },
  { lower := 5261334937600, upper := 10522669875200, M := 5 },
  { lower := 10522669875200, upper := 21045339750400, M := 5 },
  { lower := 21045339750400, upper := 42090679500800, M := 5 },
  { lower := 42090679500800, upper := 84181359001600, M := 4 },
  { lower := 84181359001600, upper := 168362718003200, M := 4 },
  { lower := 168362718003200, upper := 336725436006400, M := 4 },
  { lower := 336725436006400, upper := 673450872012800, M := 4 },
  { lower := 673450872012800, upper := 1346901744025600, M := 3 },
  { lower := 1346901744025600, upper := 2693803488051200, M := 3 },
  { lower := 2693803488051200, upper := 5387606976102400, M := 3 },
  { lower := 5387606976102400, upper := 10775213952204800, M := 3 },
  { lower := 10775213952204800, upper := 21550427904409600, M := 3 },
  { lower := 21550427904409600, upper := 43100855808819200, M := 3 },
  { lower := 43100855808819200, upper := 86201711617638400, M := 3 },
  { lower := 86201711617638400, upper := 172403423235276800, M := 2 },
  { lower := 172403423235276800, upper := 344806846470553600, M := 2 },
  { lower := 344806846470553600, upper := 689613692941107200, M := 2 },
  { lower := 689613692941107200, upper := 1379227385882214400, M := 2 },
  { lower := 1379227385882214400, upper := 2758454771764428800, M := 2 },
  { lower := 2758454771764428800, upper := 5516909543528857600, M := 2 },
  { lower := 5516909543528857600, upper := 11033819087057715200, M := 2 },
  { lower := 11033819087057715200, upper := 22067638174115430400, M := 2 },
  { lower := 22067638174115430400, upper := 44135276348230860800, M := 2 },
  { lower := 44135276348230860800, upper := 88270552696461721600, M := 2 },
  { lower := 88270552696461721600, upper := 100000000000000000000, M := 1 }
]

def row050 : FiniteCoverRow := {
  height := row050_height,
  goods := row050_goods,
  layers := row050_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_good000_checked :
    goodSegmentCheck 50 16 34
      { lower := 102, upper := 150, witness := RowWitness.topPrime 101 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good001_checked :
    goodSegmentCheck 50 16 34
      { lower := 151, upper := 200, witness := RowWitness.topPrime 151 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good002_checked :
    goodSegmentCheck 50 16 34
      { lower := 201, upper := 248, witness := RowWitness.topPrime 199 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good003_checked :
    goodSegmentCheck 50 16 34
      { lower := 249, upper := 290, witness := RowWitness.topPrime 241 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good004_checked :
    goodSegmentCheck 50 16 34
      { lower := 291, upper := 332, witness := RowWitness.topPrime 283 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good005_checked :
    goodSegmentCheck 50 16 34
      { lower := 333, upper := 380, witness := RowWitness.topPrime 331 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good006_checked :
    goodSegmentCheck 50 16 34
      { lower := 381, upper := 428, witness := RowWitness.topPrime 379 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good007_checked :
    goodSegmentCheck 50 16 34
      { lower := 429, upper := 470, witness := RowWitness.topPrime 421 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good008_checked :
    goodSegmentCheck 50 16 34
      { lower := 471, upper := 516, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good009_checked :
    goodSegmentCheck 50 16 34
      { lower := 517, upper := 558, witness := RowWitness.topPrime 509 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good010_checked :
    goodSegmentCheck 50 16 34
      { lower := 559, upper := 606, witness := RowWitness.topPrime 557 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good011_checked :
    goodSegmentCheck 50 16 34
      { lower := 607, upper := 656, witness := RowWitness.topPrime 607 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good012_checked :
    goodSegmentCheck 50 16 34
      { lower := 657, upper := 702, witness := RowWitness.topPrime 653 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good013_checked :
    goodSegmentCheck 50 16 34
      { lower := 703, upper := 750, witness := RowWitness.topPrime 701 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good014_checked :
    goodSegmentCheck 50 16 34
      { lower := 751, upper := 800, witness := RowWitness.topPrime 751 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good015_checked :
    goodSegmentCheck 50 16 34
      { lower := 801, upper := 846, witness := RowWitness.topPrime 797 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_good016_checked :
    goodSegmentCheck 50 16 34
      { lower := 847, upper := 888, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good017_checked :
    goodSegmentCheck 50 16 34
      { lower := 889, upper := 936, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good018_checked :
    goodSegmentCheck 50 16 34
      { lower := 937, upper := 986, witness := RowWitness.topPrime 937 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good019_checked :
    goodSegmentCheck 50 16 34
      { lower := 987, upper := 1032, witness := RowWitness.topPrime 983 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good020_checked :
    goodSegmentCheck 50 16 34
      { lower := 1033, upper := 1082, witness := RowWitness.topPrime 1033 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good021_checked :
    goodSegmentCheck 50 16 34
      { lower := 1083, upper := 1118, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good022_checked :
    goodSegmentCheck 50 16 34
      { lower := 1119, upper := 1166, witness := RowWitness.topPrime 1117 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good023_checked :
    goodSegmentCheck 50 16 34
      { lower := 1167, upper := 1212, witness := RowWitness.topPrime 1163 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good024_checked :
    goodSegmentCheck 50 16 34
      { lower := 1213, upper := 1262, witness := RowWitness.topPrime 1213 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good025_checked :
    goodSegmentCheck 50 16 34
      { lower := 1263, upper := 1308, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good026_checked :
    goodSegmentCheck 50 16 34
      { lower := 1309, upper := 1356, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good027_checked :
    goodSegmentCheck 50 16 34
      { lower := 1357, upper := 1376, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good028_checked :
    goodSegmentCheck 50 16 34
      { lower := 1377, upper := 1422, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good029_checked :
    goodSegmentCheck 50 16 34
      { lower := 1423, upper := 1472, witness := RowWitness.topPrime 1423 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good030_checked :
    goodSegmentCheck 50 16 34
      { lower := 1473, upper := 1520, witness := RowWitness.topPrime 1471 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good031_checked :
    goodSegmentCheck 50 16 34
      { lower := 1521, upper := 1560, witness := RowWitness.topPrime 1511 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_good032_checked :
    goodSegmentCheck 50 16 34
      { lower := 1561, upper := 1608, witness := RowWitness.topPrime 1559 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good033_checked :
    goodSegmentCheck 50 16 34
      { lower := 1609, upper := 1658, witness := RowWitness.topPrime 1609 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good034_checked :
    goodSegmentCheck 50 16 34
      { lower := 1659, upper := 1706, witness := RowWitness.topPrime 1657 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good035_checked :
    goodSegmentCheck 50 16 34
      { lower := 1707, upper := 1748, witness := RowWitness.topPrime 1699 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good036_checked :
    goodSegmentCheck 50 16 34
      { lower := 1749, upper := 1796, witness := RowWitness.topPrime 1747 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good037_checked :
    goodSegmentCheck 50 16 34
      { lower := 1797, upper := 1838, witness := RowWitness.topPrime 1789 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good038_checked :
    goodSegmentCheck 50 16 34
      { lower := 1839, upper := 1880, witness := RowWitness.topPrime 1831 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good039_checked :
    goodSegmentCheck 50 16 34
      { lower := 1881, upper := 1928, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good040_checked :
    goodSegmentCheck 50 16 34
      { lower := 1929, upper := 1962, witness := RowWitness.topPrime 1913 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good041_checked :
    goodSegmentCheck 50 16 34
      { lower := 1963, upper := 2000, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good042_checked :
    goodSegmentCheck 50 16 34
      { lower := 2001, upper := 2048, witness := RowWitness.topPrime 1999 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good043_checked :
    goodSegmentCheck 50 16 34
      { lower := 2049, upper := 2088, witness := RowWitness.topPrime 2039 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good044_checked :
    goodSegmentCheck 50 16 34
      { lower := 2089, upper := 2138, witness := RowWitness.topPrime 2089 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good045_checked :
    goodSegmentCheck 50 16 34
      { lower := 2139, upper := 2186, witness := RowWitness.topPrime 2137 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good046_checked :
    goodSegmentCheck 50 16 34
      { lower := 2187, upper := 2228, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good047_checked :
    goodSegmentCheck 50 16 34
      { lower := 2229, upper := 2270, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_good048_checked :
    goodSegmentCheck 50 16 34
      { lower := 2271, upper := 2318, witness := RowWitness.topPrime 2269 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good049_checked :
    goodSegmentCheck 50 16 34
      { lower := 2319, upper := 2360, witness := RowWitness.topPrime 2311 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good050_checked :
    goodSegmentCheck 50 16 34
      { lower := 2361, upper := 2406, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good051_checked :
    goodSegmentCheck 50 16 34
      { lower := 2407, upper := 2448, witness := RowWitness.topPrime 2399 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good052_checked :
    goodSegmentCheck 50 16 34
      { lower := 2449, upper := 2469, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good053_checked :
    goodSegmentCheck 50 16 34
      { lower := 2523, upper := 2570, witness := RowWitness.topPrime 2521 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good054_checked :
    goodSegmentCheck 50 16 34
      { lower := 2571, upper := 2590, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good055_checked :
    goodSegmentCheck 50 16 34
      { lower := 2592, upper := 2640, witness := RowWitness.topPrime 2591 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good056_checked :
    goodSegmentCheck 50 16 34
      { lower := 2641, upper := 2641, witness := RowWitness.topPrime 2633 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good057_checked :
    goodSegmentCheck 50 16 34
      { lower := 2645, upper := 2650, witness := RowWitness.topPrime 2633 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good058_checked :
    goodSegmentCheck 50 16 34
      { lower := 2662, upper := 2708, witness := RowWitness.topPrime 2659 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good059_checked :
    goodSegmentCheck 50 16 34
      { lower := 2709, upper := 2722, witness := RowWitness.topPrime 2707 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good060_checked :
    goodSegmentCheck 50 16 34
      { lower := 2738, upper := 2780, witness := RowWitness.topPrime 2731 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good061_checked :
    goodSegmentCheck 50 16 34
      { lower := 2781, upper := 2803, witness := RowWitness.topPrime 2777 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good062_checked :
    goodSegmentCheck 50 16 34
      { lower := 2816, upper := 2832, witness := RowWitness.topPrime 2803 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good063_checked :
    goodSegmentCheck 50 16 34
      { lower := 2835, upper := 2865, witness := RowWitness.topPrime 2833 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_good064_checked :
    goodSegmentCheck 50 16 34
      { lower := 2873, upper := 2910, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good065_checked :
    goodSegmentCheck 50 16 34
      { lower := 2911, upper := 2953, witness := RowWitness.topPrime 2909 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good066_checked :
    goodSegmentCheck 50 16 34
      { lower := 3025, upper := 3072, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good067_checked :
    goodSegmentCheck 50 16 34
      { lower := 3073, upper := 3116, witness := RowWitness.topPrime 3067 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good068_checked :
    goodSegmentCheck 50 16 34
      { lower := 3117, upper := 3121, witness := RowWitness.topPrime 3109 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good069_checked :
    goodSegmentCheck 50 16 34
      { lower := 3125, upper := 3136, witness := RowWitness.topPrime 3121 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good070_checked :
    goodSegmentCheck 50 16 34
      { lower := 3146, upper := 3186, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good071_checked :
    goodSegmentCheck 50 16 34
      { lower := 3187, upper := 3228, witness := RowWitness.topPrime 3187 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good072_checked :
    goodSegmentCheck 50 16 34
      { lower := 3249, upper := 3260, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good073_checked :
    goodSegmentCheck 50 16 34
      { lower := 3267, upper := 3298, witness := RowWitness.topPrime 3259 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good074_checked :
    goodSegmentCheck 50 16 34
      { lower := 3362, upper := 3410, witness := RowWitness.topPrime 3361 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good075_checked :
    goodSegmentCheck 50 16 34
      { lower := 3411, upper := 3451, witness := RowWitness.topPrime 3407 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good076_checked :
    goodSegmentCheck 50 16 34
      { lower := 3468, upper := 3479, witness := RowWitness.topPrime 3467 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good077_checked :
    goodSegmentCheck 50 16 34
      { lower := 3509, upper := 3517, witness := RowWitness.topPrime 3499 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good078_checked :
    goodSegmentCheck 50 16 34
      { lower := 3549, upper := 3558, witness := RowWitness.topPrime 3547 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good079_checked :
    goodSegmentCheck 50 16 34
      { lower := 3584, upper := 3598, witness := RowWitness.topPrime 3583 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_good080_checked :
    goodSegmentCheck 50 16 34
      { lower := 3610, upper := 3656, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good081_checked :
    goodSegmentCheck 50 16 34
      { lower := 3657, upper := 3679, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good082_checked :
    goodSegmentCheck 50 16 34
      { lower := 3703, upper := 3750, witness := RowWitness.topPrime 3701 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good083_checked :
    goodSegmentCheck 50 16 34
      { lower := 3751, upper := 3788, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good084_checked :
    goodSegmentCheck 50 16 34
      { lower := 3789, upper := 3806, witness := RowWitness.topPrime 3779 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good085_checked :
    goodSegmentCheck 50 16 34
      { lower := 3844, upper := 3882, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good086_checked :
    goodSegmentCheck 50 16 34
      { lower := 3883, upper := 3930, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good087_checked :
    goodSegmentCheck 50 16 34
      { lower := 3931, upper := 3936, witness := RowWitness.topPrime 3931 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good088_checked :
    goodSegmentCheck 50 16 34
      { lower := 3993, upper := 4020, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good089_checked :
    goodSegmentCheck 50 16 34
      { lower := 4056, upper := 4100, witness := RowWitness.topPrime 4051 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good090_checked :
    goodSegmentCheck 50 16 34
      { lower := 4101, upper := 4105, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good091_checked :
    goodSegmentCheck 50 16 34
      { lower := 4107, upper := 4148, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good092_checked :
    goodSegmentCheck 50 16 34
      { lower := 4149, upper := 4165, witness := RowWitness.topPrime 4139 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good093_checked :
    goodSegmentCheck 50 16 34
      { lower := 4225, upper := 4268, witness := RowWitness.topPrime 4219 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good094_checked :
    goodSegmentCheck 50 16 34
      { lower := 4269, upper := 4281, witness := RowWitness.topPrime 4261 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good095_checked :
    goodSegmentCheck 50 16 34
      { lower := 4335, upper := 4376, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_good096_checked :
    goodSegmentCheck 50 16 34
      { lower := 4377, upper := 4422, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good097_checked :
    goodSegmentCheck 50 16 34
      { lower := 4423, upper := 4443, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good098_checked :
    goodSegmentCheck 50 16 34
      { lower := 4459, upper := 4467, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good099_checked :
    goodSegmentCheck 50 16 34
      { lower := 4477, upper := 4508, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good100_checked :
    goodSegmentCheck 50 16 34
      { lower := 4608, upper := 4612, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good101_checked :
    goodSegmentCheck 50 16 34
      { lower := 4617, upper := 4652, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good102_checked :
    goodSegmentCheck 50 16 34
      { lower := 4653, upper := 4666, witness := RowWitness.topPrime 4651 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good103_checked :
    goodSegmentCheck 50 16 34
      { lower := 4732, upper := 4742, witness := RowWitness.topPrime 4729 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good104_checked :
    goodSegmentCheck 50 16 34
      { lower := 4761, upper := 4781, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good105_checked :
    goodSegmentCheck 50 16 34
      { lower := 4802, upper := 4850, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good106_checked :
    goodSegmentCheck 50 16 34
      { lower := 4851, upper := 4851, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good107_checked :
    goodSegmentCheck 50 16 34
      { lower := 4901, upper := 4909, witness := RowWitness.topPrime 4889 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good108_checked :
    goodSegmentCheck 50 16 34
      { lower := 4913, upper := 4950, witness := RowWitness.topPrime 4909 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good109_checked :
    goodSegmentCheck 50 16 34
      { lower := 5046, upper := 5088, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good110_checked :
    goodSegmentCheck 50 16 34
      { lower := 5089, upper := 5136, witness := RowWitness.topPrime 5087 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good111_checked :
    goodSegmentCheck 50 16 34
      { lower := 5137, upper := 5168, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_good112_checked :
    goodSegmentCheck 50 16 34
      { lower := 5169, upper := 5169, witness := RowWitness.topPrime 5167 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good113_checked :
    goodSegmentCheck 50 16 34
      { lower := 5239, upper := 5251, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good114_checked :
    goodSegmentCheck 50 16 34
      { lower := 5324, upper := 5339, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good115_checked :
    goodSegmentCheck 50 16 34
      { lower := 5346, upper := 5373, witness := RowWitness.topPrime 5333 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good116_checked :
    goodSegmentCheck 50 16 34
      { lower := 5415, upper := 5457, witness := RowWitness.topPrime 5413 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good117_checked :
    goodSegmentCheck 50 16 34
      { lower := 5488, upper := 5532, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good118_checked :
    goodSegmentCheck 50 16 34
      { lower := 5533, upper := 5537, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good119_checked :
    goodSegmentCheck 50 16 34
      { lower := 5577, upper := 5622, witness := RowWitness.topPrime 5573 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good120_checked :
    goodSegmentCheck 50 16 34
      { lower := 5623, upper := 5626, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good121_checked :
    goodSegmentCheck 50 16 34
      { lower := 5632, upper := 5638, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good122_checked :
    goodSegmentCheck 50 16 34
      { lower := 5766, upper := 5798, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good123_checked :
    goodSegmentCheck 50 16 34
      { lower := 5799, upper := 5829, witness := RowWitness.topPrime 5791 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good124_checked :
    goodSegmentCheck 50 16 34
      { lower := 5831, upper := 5876, witness := RowWitness.topPrime 5827 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good125_checked :
    goodSegmentCheck 50 16 34
      { lower := 5877, upper := 5880, witness := RowWitness.topPrime 5869 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good126_checked :
    goodSegmentCheck 50 16 34
      { lower := 6075, upper := 6118, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good127_checked :
    goodSegmentCheck 50 16 34
      { lower := 6144, upper := 6192, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_good128_checked :
    goodSegmentCheck 50 16 34
      { lower := 6193, upper := 6193, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good129_checked :
    goodSegmentCheck 50 16 34
      { lower := 6348, upper := 6392, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good130_checked :
    goodSegmentCheck 50 16 34
      { lower := 6393, upper := 6397, witness := RowWitness.topPrime 6389 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good131_checked :
    goodSegmentCheck 50 16 34
      { lower := 6517, upper := 6540, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good132_checked :
    goodSegmentCheck 50 16 34
      { lower := 6541, upper := 6547, witness := RowWitness.topPrime 6529 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good133_checked :
    goodSegmentCheck 50 16 34
      { lower := 6561, upper := 6566, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good134_checked :
    goodSegmentCheck 50 16 34
      { lower := 6591, upper := 6610, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good135_checked :
    goodSegmentCheck 50 16 34
      { lower := 6627, upper := 6640, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good136_checked :
    goodSegmentCheck 50 16 34
      { lower := 6647, upper := 6686, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good137_checked :
    goodSegmentCheck 50 16 34
      { lower := 6687, upper := 6704, witness := RowWitness.topPrime 6679 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good138_checked :
    goodSegmentCheck 50 16 34
      { lower := 6727, upper := 6768, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good139_checked :
    goodSegmentCheck 50 16 34
      { lower := 6769, upper := 6776, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good140_checked :
    goodSegmentCheck 50 16 34
      { lower := 6845, upper := 6853, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good141_checked :
    goodSegmentCheck 50 16 34
      { lower := 6859, upper := 6906, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good142_checked :
    goodSegmentCheck 50 16 34
      { lower := 6907, upper := 6909, witness := RowWitness.topPrime 6907 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good143_checked :
    goodSegmentCheck 50 16 34
      { lower := 7203, upper := 7217, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_good144_checked :
    goodSegmentCheck 50 16 34
      { lower := 7220, upper := 7268, witness := RowWitness.topPrime 7219 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good145_checked :
    goodSegmentCheck 50 16 34
      { lower := 7269, upper := 7269, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good146_checked :
    goodSegmentCheck 50 16 34
      { lower := 7406, upper := 7442, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good147_checked :
    goodSegmentCheck 50 16 34
      { lower := 7443, upper := 7445, witness := RowWitness.topPrime 7433 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good148_checked :
    goodSegmentCheck 50 16 34
      { lower := 7533, upper := 7578, witness := RowWitness.topPrime 7529 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good149_checked :
    goodSegmentCheck 50 16 34
      { lower := 7579, upper := 7618, witness := RowWitness.topPrime 7577 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good150_checked :
    goodSegmentCheck 50 16 34
      { lower := 7688, upper := 7729, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good151_checked :
    goodSegmentCheck 50 16 34
      { lower := 7803, upper := 7825, witness := RowWitness.topPrime 7793 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good152_checked :
    goodSegmentCheck 50 16 34
      { lower := 7935, upper := 7938, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good153_checked :
    goodSegmentCheck 50 16 34
      { lower := 7942, upper := 7984, witness := RowWitness.topPrime 7937 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good154_checked :
    goodSegmentCheck 50 16 34
      { lower := 7986, upper := 7991, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good155_checked :
    goodSegmentCheck 50 16 34
      { lower := 8019, upper := 8035, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good156_checked :
    goodSegmentCheck 50 16 34
      { lower := 8214, upper := 8258, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good157_checked :
    goodSegmentCheck 50 16 34
      { lower := 8259, upper := 8281, witness := RowWitness.topPrime 8243 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good158_checked :
    goodSegmentCheck 50 16 34
      { lower := 8303, upper := 8311, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good159_checked :
    goodSegmentCheck 50 16 34
      { lower := 8405, upper := 8438, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_good160_checked :
    goodSegmentCheck 50 16 34
      { lower := 8439, upper := 8454, witness := RowWitness.topPrime 8431 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good161_checked :
    goodSegmentCheck 50 16 34
      { lower := 8664, upper := 8712, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good162_checked :
    goodSegmentCheck 50 16 34
      { lower := 8713, upper := 8719, witness := RowWitness.topPrime 8713 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good163_checked :
    goodSegmentCheck 50 16 34
      { lower := 8748, upper := 8753, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good164_checked :
    goodSegmentCheck 50 16 34
      { lower := 8788, upper := 8797, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good165_checked :
    goodSegmentCheck 50 16 34
      { lower := 8836, upper := 8837, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good166_checked :
    goodSegmentCheck 50 16 34
      { lower := 8959, upper := 8967, witness := RowWitness.topPrime 8951 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good167_checked :
    goodSegmentCheck 50 16 34
      { lower := 8993, upper := 9008, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good168_checked :
    goodSegmentCheck 50 16 34
      { lower := 9025, upper := 9042, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good169_checked :
    goodSegmentCheck 50 16 34
      { lower := 9245, upper := 9290, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good170_checked :
    goodSegmentCheck 50 16 34
      { lower := 9291, upper := 9300, witness := RowWitness.topPrime 9283 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good171_checked :
    goodSegmentCheck 50 16 34
      { lower := 9522, upper := 9526, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good172_checked :
    goodSegmentCheck 50 16 34
      { lower := 9537, upper := 9571, witness := RowWitness.topPrime 9533 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good173_checked :
    goodSegmentCheck 50 16 34
      { lower := 9583, upper := 9586, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good174_checked :
    goodSegmentCheck 50 16 34
      { lower := 9604, upper := 9650, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good175_checked :
    goodSegmentCheck 50 16 34
      { lower := 9651, upper := 9653, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_good176_checked :
    goodSegmentCheck 50 16 34
      { lower := 10086, upper := 10128, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good177_checked :
    goodSegmentCheck 50 16 34
      { lower := 10129, upper := 10141, witness := RowWitness.topPrime 10111 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good178_checked :
    goodSegmentCheck 50 16 34
      { lower := 10240, upper := 10255, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good179_checked :
    goodSegmentCheck 50 16 34
      { lower := 10580, upper := 10616, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good180_checked :
    goodSegmentCheck 50 16 34
      { lower := 10617, upper := 10620, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good181_checked :
    goodSegmentCheck 50 16 34
      { lower := 10648, upper := 10682, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good182_checked :
    goodSegmentCheck 50 16 34
      { lower := 10935, upper := 10958, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good183_checked :
    goodSegmentCheck 50 16 34
      { lower := 10959, upper := 11006, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good184_checked :
    goodSegmentCheck 50 16 34
      { lower := 11007, upper := 11025, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good185_checked :
    goodSegmentCheck 50 16 34
      { lower := 11094, upper := 11094, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good186_checked :
    goodSegmentCheck 50 16 34
      { lower := 11109, upper := 11142, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good187_checked :
    goodSegmentCheck 50 16 34
      { lower := 11143, upper := 11143, witness := RowWitness.topPrime 11131 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good188_checked :
    goodSegmentCheck 50 16 34
      { lower := 11552, upper := 11581, witness := RowWitness.topPrime 11551 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good189_checked :
    goodSegmentCheck 50 16 34
      { lower := 11664, upper := 11687, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good190_checked :
    goodSegmentCheck 50 16 34
      { lower := 11774, upper := 11792, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good191_checked :
    goodSegmentCheck 50 16 34
      { lower := 11793, upper := 11816, witness := RowWitness.topPrime 11789 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_good192_checked :
    goodSegmentCheck 50 16 34
      { lower := 12005, upper := 12028, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good193_checked :
    goodSegmentCheck 50 16 34
      { lower := 12321, upper := 12337, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good194_checked :
    goodSegmentCheck 50 16 34
      { lower := 13225, upper := 13231, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good195_checked :
    goodSegmentCheck 50 16 34
      { lower := 13254, upper := 13274, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good196_checked :
    goodSegmentCheck 50 16 34
      { lower := 13312, upper := 13358, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good197_checked :
    goodSegmentCheck 50 16 34
      { lower := 13359, upper := 13359, witness := RowWitness.topPrime 13339 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good198_checked :
    goodSegmentCheck 50 16 34
      { lower := 13454, upper := 13500, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good199_checked :
    goodSegmentCheck 50 16 34
      { lower := 13501, upper := 13503, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good200_checked :
    goodSegmentCheck 50 16 34
      { lower := 13718, upper := 13739, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good201_checked :
    goodSegmentCheck 50 16 34
      { lower := 13754, upper := 13767, witness := RowWitness.topPrime 13751 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good202_checked :
    goodSegmentCheck 50 16 34
      { lower := 14297, upper := 14332, witness := RowWitness.topPrime 14293 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good203_checked :
    goodSegmentCheck 50 16 34
      { lower := 14336, upper := 14346, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good204_checked :
    goodSegmentCheck 50 16 34
      { lower := 14415, upper := 14455, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good205_checked :
    goodSegmentCheck 50 16 34
      { lower := 14812, upper := 14841, witness := RowWitness.topPrime 14797 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good206_checked :
    goodSegmentCheck 50 16 34
      { lower := 15138, upper := 15178, witness := RowWitness.topPrime 15137 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good207_checked :
    goodSegmentCheck 50 16 34
      { lower := 15341, upper := 15358, witness := RowWitness.topPrime 15331 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_good208_checked :
    goodSegmentCheck 50 16 34
      { lower := 15360, upper := 15408, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good209_checked :
    goodSegmentCheck 50 16 34
      { lower := 15409, upper := 15425, witness := RowWitness.topPrime 15401 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good210_checked :
    goodSegmentCheck 50 16 34
      { lower := 15979, upper := 16021, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good211_checked :
    goodSegmentCheck 50 16 34
      { lower := 16384, upper := 16386, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good212_checked :
    goodSegmentCheck 50 16 34
      { lower := 16399, upper := 16430, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good213_checked :
    goodSegmentCheck 50 16 34
      { lower := 16431, upper := 16448, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good214_checked :
    goodSegmentCheck 50 16 34
      { lower := 16807, upper := 16836, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good215_checked :
    goodSegmentCheck 50 16 34
      { lower := 16837, upper := 16859, witness := RowWitness.topPrime 16831 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good216_checked :
    goodSegmentCheck 50 16 34
      { lower := 17303, upper := 17347, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good217_checked :
    goodSegmentCheck 50 16 34
      { lower := 17672, upper := 17710, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good218_checked :
    goodSegmentCheck 50 16 34
      { lower := 18259, upper := 18274, witness := RowWitness.topPrime 18257 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good219_checked :
    goodSegmentCheck 50 16 34
      { lower := 18491, upper := 18530, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good220_checked :
    goodSegmentCheck 50 16 34
      { lower := 18531, upper := 18540, witness := RowWitness.topPrime 18523 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good221_checked :
    goodSegmentCheck 50 16 34
      { lower := 19208, upper := 19215, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good222_checked :
    goodSegmentCheck 50 16 34
      { lower := 19220, upper := 19257, witness := RowWitness.topPrime 19219 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good223_checked :
    goodSegmentCheck 50 16 34
      { lower := 19683, upper := 19701, witness := RowWitness.topPrime 19681 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_good224_checked :
    goodSegmentCheck 50 16 34
      { lower := 20181, upper := 20226, witness := RowWitness.topPrime 20177 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good225_checked :
    goodSegmentCheck 50 16 34
      { lower := 20227, upper := 20230, witness := RowWitness.topPrime 20219 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good226_checked :
    goodSegmentCheck 50 16 34
      { lower := 20577, upper := 20584, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good227_checked :
    goodSegmentCheck 50 16 34
      { lower := 21142, upper := 21188, witness := RowWitness.topPrime 21139 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good228_checked :
    goodSegmentCheck 50 16 34
      { lower := 21189, upper := 21190, witness := RowWitness.topPrime 21187 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good229_checked :
    goodSegmentCheck 50 16 34
      { lower := 21866, upper := 21912, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good230_checked :
    goodSegmentCheck 50 16 34
      { lower := 21913, upper := 21919, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good231_checked :
    goodSegmentCheck 50 16 34
      { lower := 22103, upper := 22139, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good232_checked :
    goodSegmentCheck 50 16 34
      { lower := 23548, upper := 23583, witness := RowWitness.topPrime 23539 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good233_checked :
    goodSegmentCheck 50 16 34
      { lower := 24025, upper := 24072, witness := RowWitness.topPrime 24023 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good234_checked :
    goodSegmentCheck 50 16 34
      { lower := 24073, upper := 24086, witness := RowWitness.topPrime 24071 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good235_checked :
    goodSegmentCheck 50 16 34
      { lower := 24334, upper := 24348, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good236_checked :
    goodSegmentCheck 50 16 34
      { lower := 24576, upper := 24614, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good237_checked :
    goodSegmentCheck 50 16 34
      { lower := 25230, upper := 25264, witness := RowWitness.topPrime 25229 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good238_checked :
    goodSegmentCheck 50 16 34
      { lower := 26411, upper := 26413, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good239_checked :
    goodSegmentCheck 50 16 34
      { lower := 26624, upper := 26646, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_good240_checked :
    goodSegmentCheck 50 16 34
      { lower := 26647, upper := 26669, witness := RowWitness.topPrime 26647 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good241_checked :
    goodSegmentCheck 50 16 34
      { lower := 26908, upper := 26945, witness := RowWitness.topPrime 26903 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good242_checked :
    goodSegmentCheck 50 16 34
      { lower := 28577, upper := 28610, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good243_checked :
    goodSegmentCheck 50 16 34
      { lower := 28717, upper := 28721, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good244_checked :
    goodSegmentCheck 50 16 34
      { lower := 28749, upper := 28766, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good245_checked :
    goodSegmentCheck 50 16 34
      { lower := 28830, upper := 28861, witness := RowWitness.topPrime 28817 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good246_checked :
    goodSegmentCheck 50 16 34
      { lower := 30618, upper := 30642, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good247_checked :
    goodSegmentCheck 50 16 34
      { lower := 30643, upper := 30662, witness := RowWitness.topPrime 30643 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good248_checked :
    goodSegmentCheck 50 16 34
      { lower := 30758, upper := 30769, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good249_checked :
    goodSegmentCheck 50 16 34
      { lower := 31944, upper := 31956, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good250_checked :
    goodSegmentCheck 50 16 34
      { lower := 31957, upper := 31988, witness := RowWitness.topPrime 31957 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good251_checked :
    goodSegmentCheck 50 16 34
      { lower := 32805, upper := 32817, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good252_checked :
    goodSegmentCheck 50 16 34
      { lower := 33282, upper := 33296, witness := RowWitness.topPrime 33247 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good253_checked :
    goodSegmentCheck 50 16 34
      { lower := 33297, upper := 33324, witness := RowWitness.topPrime 33289 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good254_checked :
    goodSegmentCheck 50 16 34
      { lower := 33620, upper := 33663, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good255_checked :
    goodSegmentCheck 50 16 34
      { lower := 35152, upper := 35180, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_good256_checked :
    goodSegmentCheck 50 16 34
      { lower := 35344, upper := 35350, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good257_checked :
    goodSegmentCheck 50 16 34
      { lower := 36980, upper := 37028, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good258_checked :
    goodSegmentCheck 50 16 34
      { lower := 37029, upper := 37029, witness := RowWitness.topPrime 37021 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good259_checked :
    goodSegmentCheck 50 16 34
      { lower := 43740, upper := 43755, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good260_checked :
    goodSegmentCheck 50 16 34
      { lower := 43940, upper := 43972, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good261_checked :
    goodSegmentCheck 50 16 34
      { lower := 44217, upper := 44229, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good262_checked :
    goodSegmentCheck 50 16 34
      { lower := 48020, upper := 48062, witness := RowWitness.topPrime 48017 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good263_checked :
    goodSegmentCheck 50 16 34
      { lower := 48114, upper := 48123, witness := RowWitness.topPrime 48109 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good264_checked :
    goodSegmentCheck 50 16 34
      { lower := 49152, upper := 49179, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good265_checked :
    goodSegmentCheck 50 16 34
      { lower := 55225, upper := 55268, witness := RowWitness.topPrime 55219 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good266_checked :
    goodSegmentCheck 50 16 34
      { lower := 55269, upper := 55272, witness := RowWitness.topPrime 55259 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good267_checked :
    goodSegmentCheck 50 16 34
      { lower := 73205, upper := 73216, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good268_checked :
    goodSegmentCheck 50 16 34
      { lower := 73728, upper := 73744, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good269_checked :
    goodSegmentCheck 50 16 34
      { lower := 98304, upper := 98309, witness := RowWitness.topPrime 98299 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good270_checked :
    goodSegmentCheck 50 16 34
      { lower := 150903, upper := 150947, witness := RowWitness.topPrime 150901 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row050_good271_checked :
    goodSegmentCheck 50 16 34
      { lower := 327701, upper := 327729, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good264_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good265_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good266_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good267_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good268_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good269_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good270_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good271_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_good272_checked :
    goodSegmentCheck 50 16 34
      { lower := 655402, upper := 655409, witness := RowWitness.topPrime 655399 } = true := by
  exact good_top_prime_checked (i := 50) (r := 16) (s := 34) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_good272_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_goods_checked :
    row050.goods.all (goodSegmentCheck row050.height.i row050.height.r row050.height.s) = true := by
  change row050_goods.all (goodSegmentCheck 50 16 34) = true
  simp only [row050_goods, List.all_cons, List.all_nil,
    row050_good000_checked,
    row050_good001_checked,
    row050_good002_checked,
    row050_good003_checked,
    row050_good004_checked,
    row050_good005_checked,
    row050_good006_checked,
    row050_good007_checked,
    row050_good008_checked,
    row050_good009_checked,
    row050_good010_checked,
    row050_good011_checked,
    row050_good012_checked,
    row050_good013_checked,
    row050_good014_checked,
    row050_good015_checked,
    row050_good016_checked,
    row050_good017_checked,
    row050_good018_checked,
    row050_good019_checked,
    row050_good020_checked,
    row050_good021_checked,
    row050_good022_checked,
    row050_good023_checked,
    row050_good024_checked,
    row050_good025_checked,
    row050_good026_checked,
    row050_good027_checked,
    row050_good028_checked,
    row050_good029_checked,
    row050_good030_checked,
    row050_good031_checked,
    row050_good032_checked,
    row050_good033_checked,
    row050_good034_checked,
    row050_good035_checked,
    row050_good036_checked,
    row050_good037_checked,
    row050_good038_checked,
    row050_good039_checked,
    row050_good040_checked,
    row050_good041_checked,
    row050_good042_checked,
    row050_good043_checked,
    row050_good044_checked,
    row050_good045_checked,
    row050_good046_checked,
    row050_good047_checked,
    row050_good048_checked,
    row050_good049_checked,
    row050_good050_checked,
    row050_good051_checked,
    row050_good052_checked,
    row050_good053_checked,
    row050_good054_checked,
    row050_good055_checked,
    row050_good056_checked,
    row050_good057_checked,
    row050_good058_checked,
    row050_good059_checked,
    row050_good060_checked,
    row050_good061_checked,
    row050_good062_checked,
    row050_good063_checked,
    row050_good064_checked,
    row050_good065_checked,
    row050_good066_checked,
    row050_good067_checked,
    row050_good068_checked,
    row050_good069_checked,
    row050_good070_checked,
    row050_good071_checked,
    row050_good072_checked,
    row050_good073_checked,
    row050_good074_checked,
    row050_good075_checked,
    row050_good076_checked,
    row050_good077_checked,
    row050_good078_checked,
    row050_good079_checked,
    row050_good080_checked,
    row050_good081_checked,
    row050_good082_checked,
    row050_good083_checked,
    row050_good084_checked,
    row050_good085_checked,
    row050_good086_checked,
    row050_good087_checked,
    row050_good088_checked,
    row050_good089_checked,
    row050_good090_checked,
    row050_good091_checked,
    row050_good092_checked,
    row050_good093_checked,
    row050_good094_checked,
    row050_good095_checked,
    row050_good096_checked,
    row050_good097_checked,
    row050_good098_checked,
    row050_good099_checked,
    row050_good100_checked,
    row050_good101_checked,
    row050_good102_checked,
    row050_good103_checked,
    row050_good104_checked,
    row050_good105_checked,
    row050_good106_checked,
    row050_good107_checked,
    row050_good108_checked,
    row050_good109_checked,
    row050_good110_checked,
    row050_good111_checked,
    row050_good112_checked,
    row050_good113_checked,
    row050_good114_checked,
    row050_good115_checked,
    row050_good116_checked,
    row050_good117_checked,
    row050_good118_checked,
    row050_good119_checked,
    row050_good120_checked,
    row050_good121_checked,
    row050_good122_checked,
    row050_good123_checked,
    row050_good124_checked,
    row050_good125_checked,
    row050_good126_checked,
    row050_good127_checked,
    row050_good128_checked,
    row050_good129_checked,
    row050_good130_checked,
    row050_good131_checked,
    row050_good132_checked,
    row050_good133_checked,
    row050_good134_checked,
    row050_good135_checked,
    row050_good136_checked,
    row050_good137_checked,
    row050_good138_checked,
    row050_good139_checked,
    row050_good140_checked,
    row050_good141_checked,
    row050_good142_checked,
    row050_good143_checked,
    row050_good144_checked,
    row050_good145_checked,
    row050_good146_checked,
    row050_good147_checked,
    row050_good148_checked,
    row050_good149_checked,
    row050_good150_checked,
    row050_good151_checked,
    row050_good152_checked,
    row050_good153_checked,
    row050_good154_checked,
    row050_good155_checked,
    row050_good156_checked,
    row050_good157_checked,
    row050_good158_checked,
    row050_good159_checked,
    row050_good160_checked,
    row050_good161_checked,
    row050_good162_checked,
    row050_good163_checked,
    row050_good164_checked,
    row050_good165_checked,
    row050_good166_checked,
    row050_good167_checked,
    row050_good168_checked,
    row050_good169_checked,
    row050_good170_checked,
    row050_good171_checked,
    row050_good172_checked,
    row050_good173_checked,
    row050_good174_checked,
    row050_good175_checked,
    row050_good176_checked,
    row050_good177_checked,
    row050_good178_checked,
    row050_good179_checked,
    row050_good180_checked,
    row050_good181_checked,
    row050_good182_checked,
    row050_good183_checked,
    row050_good184_checked,
    row050_good185_checked,
    row050_good186_checked,
    row050_good187_checked,
    row050_good188_checked,
    row050_good189_checked,
    row050_good190_checked,
    row050_good191_checked,
    row050_good192_checked,
    row050_good193_checked,
    row050_good194_checked,
    row050_good195_checked,
    row050_good196_checked,
    row050_good197_checked,
    row050_good198_checked,
    row050_good199_checked,
    row050_good200_checked,
    row050_good201_checked,
    row050_good202_checked,
    row050_good203_checked,
    row050_good204_checked,
    row050_good205_checked,
    row050_good206_checked,
    row050_good207_checked,
    row050_good208_checked,
    row050_good209_checked,
    row050_good210_checked,
    row050_good211_checked,
    row050_good212_checked,
    row050_good213_checked,
    row050_good214_checked,
    row050_good215_checked,
    row050_good216_checked,
    row050_good217_checked,
    row050_good218_checked,
    row050_good219_checked,
    row050_good220_checked,
    row050_good221_checked,
    row050_good222_checked,
    row050_good223_checked,
    row050_good224_checked,
    row050_good225_checked,
    row050_good226_checked,
    row050_good227_checked,
    row050_good228_checked,
    row050_good229_checked,
    row050_good230_checked,
    row050_good231_checked,
    row050_good232_checked,
    row050_good233_checked,
    row050_good234_checked,
    row050_good235_checked,
    row050_good236_checked,
    row050_good237_checked,
    row050_good238_checked,
    row050_good239_checked,
    row050_good240_checked,
    row050_good241_checked,
    row050_good242_checked,
    row050_good243_checked,
    row050_good244_checked,
    row050_good245_checked,
    row050_good246_checked,
    row050_good247_checked,
    row050_good248_checked,
    row050_good249_checked,
    row050_good250_checked,
    row050_good251_checked,
    row050_good252_checked,
    row050_good253_checked,
    row050_good254_checked,
    row050_good255_checked,
    row050_good256_checked,
    row050_good257_checked,
    row050_good258_checked,
    row050_good259_checked,
    row050_good260_checked,
    row050_good261_checked,
    row050_good262_checked,
    row050_good263_checked,
    row050_good264_checked,
    row050_good265_checked,
    row050_good266_checked,
    row050_good267_checked,
    row050_good268_checked,
    row050_good269_checked,
    row050_good270_checked,
    row050_good271_checked,
    row050_good272_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_registered :
    decide (row050.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row050_small_checked :
    coverCheck (2 * row050.height.i + 2) (row050.height.i * (row050.height.i - 1) - 1)
      (row050.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row050_layerCover_checked :
    coverCheck (row050.height.i * (row050.height.i - 1)) (row050.height.n0 - 1)
      (row050.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row050_bounds : List NatInterval :=
  [(102, 150), (151, 200), (201, 248), (249, 290), (291, 332), (333, 380), (381, 428), (429, 470), (471, 516), (517, 558), (559, 606), (607, 656), (657, 702), (703, 750), (751, 800), (801, 846), (847, 888), (889, 936), (937, 986), (987, 1032), (1033, 1082), (1083, 1118), (1119, 1166), (1167, 1212), (1213, 1262), (1263, 1308), (1309, 1356), (1357, 1376), (1377, 1422), (1423, 1472), (1473, 1520), (1521, 1560), (1561, 1608), (1609, 1658), (1659, 1706), (1707, 1748), (1749, 1796), (1797, 1838), (1839, 1880), (1881, 1928), (1929, 1962), (1963, 2000), (2001, 2048), (2049, 2088), (2089, 2138), (2139, 2186), (2187, 2228), (2229, 2270), (2271, 2318), (2319, 2360), (2361, 2406), (2407, 2448), (2449, 2469), (2523, 2570), (2571, 2590), (2592, 2640), (2641, 2641), (2645, 2650), (2662, 2708), (2709, 2722), (2738, 2780), (2781, 2803), (2816, 2832), (2835, 2865), (2873, 2910), (2911, 2953), (3025, 3072), (3073, 3116), (3117, 3121), (3125, 3136), (3146, 3186), (3187, 3228), (3249, 3260), (3267, 3298), (3362, 3410), (3411, 3451), (3468, 3479), (3509, 3517), (3549, 3558), (3584, 3598), (3610, 3656), (3657, 3679), (3703, 3750), (3751, 3788), (3789, 3806), (3844, 3882), (3883, 3930), (3931, 3936), (3993, 4020), (4056, 4100), (4101, 4105), (4107, 4148), (4149, 4165), (4225, 4268), (4269, 4281), (4335, 4376), (4377, 4422), (4423, 4443), (4459, 4467), (4477, 4508), (4608, 4612), (4617, 4652), (4653, 4666), (4732, 4742), (4761, 4781), (4802, 4850), (4851, 4851), (4901, 4909), (4913, 4950), (5046, 5088), (5089, 5136), (5137, 5168), (5169, 5169), (5239, 5251), (5324, 5339), (5346, 5373), (5415, 5457), (5488, 5532), (5533, 5537), (5577, 5622), (5623, 5626), (5632, 5638), (5766, 5798), (5799, 5829), (5831, 5876), (5877, 5880), (6075, 6118), (6144, 6192), (6193, 6193), (6348, 6392), (6393, 6397), (6517, 6540), (6541, 6547), (6561, 6566), (6591, 6610), (6627, 6640), (6647, 6686), (6687, 6704), (6727, 6768), (6769, 6776), (6845, 6853), (6859, 6906), (6907, 6909), (7203, 7217), (7220, 7268), (7269, 7269), (7406, 7442), (7443, 7445), (7533, 7578), (7579, 7618), (7688, 7729), (7803, 7825), (7935, 7938), (7942, 7984), (7986, 7991), (8019, 8035), (8214, 8258), (8259, 8281), (8303, 8311), (8405, 8438), (8439, 8454), (8664, 8712), (8713, 8719), (8748, 8753), (8788, 8797), (8836, 8837), (8959, 8967), (8993, 9008), (9025, 9042), (9245, 9290), (9291, 9300), (9522, 9526), (9537, 9571), (9583, 9586), (9604, 9650), (9651, 9653), (10086, 10128), (10129, 10141), (10240, 10255), (10580, 10616), (10617, 10620), (10648, 10682), (10935, 10958), (10959, 11006), (11007, 11025), (11094, 11094), (11109, 11142), (11143, 11143), (11552, 11581), (11664, 11687), (11774, 11792), (11793, 11816), (12005, 12028), (12321, 12337), (13225, 13231), (13254, 13274), (13312, 13358), (13359, 13359), (13454, 13500), (13501, 13503), (13718, 13739), (13754, 13767), (14297, 14332), (14336, 14346), (14415, 14455), (14812, 14841), (15138, 15178), (15341, 15358), (15360, 15408), (15409, 15425), (15979, 16021), (16384, 16386), (16399, 16430), (16431, 16448), (16807, 16836), (16837, 16859), (17303, 17347), (17672, 17710), (18259, 18274), (18491, 18530), (18531, 18540), (19208, 19215), (19220, 19257), (19683, 19701), (20181, 20226), (20227, 20230), (20577, 20584), (21142, 21188), (21189, 21190), (21866, 21912), (21913, 21919), (22103, 22139), (23548, 23583), (24025, 24072), (24073, 24086), (24334, 24348), (24576, 24614), (25230, 25264), (26411, 26413), (26624, 26646), (26647, 26669), (26908, 26945), (28577, 28610), (28717, 28721), (28749, 28766), (28830, 28861), (30618, 30642), (30643, 30662), (30758, 30769), (31944, 31956), (31957, 31988), (32805, 32817), (33282, 33296), (33297, 33324), (33620, 33663), (35152, 35180), (35344, 35350), (36980, 37028), (37029, 37029), (43740, 43755), (43940, 43972), (44217, 44229), (48020, 48062), (48114, 48123), (49152, 49179), (55225, 55268), (55269, 55272), (73205, 73216), (73728, 73744), (98304, 98309), (150903, 150947), (327701, 327729), (655402, 655409)]

theorem row050_bounds_eq : row050.goods.map goodSegmentBounds = row050_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row050_layer000_intervals : List ColouredInterval :=
  [(2, 2560, 2609), (2, 2816, 2865), (2, 3072, 3121), (2, 3328, 3377), (2, 3584, 3633), (2, 3840, 3889), (2, 4096, 4145), (2, 4352, 4401), (2, 4608, 4657), (2, 2560, 2609), (2, 3072, 3121), (2, 3584, 3633), (2, 4096, 4145), (2, 4608, 4657), (2, 3072, 3121), (2, 4096, 4145), (2, 4096, 4145), (2, 4096, 4145), (3, 2450, 2479), (3, 2511, 2560), (3, 2592, 2641), (3, 2673, 2722), (3, 2754, 2803), (3, 2835, 2884), (3, 2916, 2965), (3, 2997, 3046), (3, 2450, 2479), (3, 2673, 2722), (3, 2916, 2965), (3, 3159, 3208), (3, 3402, 3451), (3, 3645, 3694), (3, 3888, 3937), (3, 4131, 4180), (3, 4374, 4423), (3, 4617, 4666), (3, 4860, 4899), (3, 2916, 2965), (3, 3645, 3694), (3, 4374, 4423), (3, 4374, 4423), (5, 3125, 3174), (7, 2450, 2450), (7, 2744, 2793), (7, 3087, 3136), (7, 3430, 3479), (7, 3773, 3822), (7, 4116, 4165), (7, 4459, 4508), (7, 4802, 4851), (7, 2450, 2450), (7, 4802, 4851), (11, 2450, 2469), (11, 2541, 2590), (11, 2662, 2711), (11, 2783, 2832), (11, 2904, 2953), (11, 3025, 3074), (11, 3146, 3195), (11, 3267, 3316), (11, 3388, 3437), (11, 3509, 3558), (11, 3630, 3679), (11, 3751, 3800), (11, 3872, 3921), (11, 3993, 4042), (11, 4114, 4163), (11, 4235, 4284), (11, 4356, 4405), (11, 4477, 4526), (11, 2662, 2711), (11, 3993, 4042), (13, 2535, 2584), (13, 2704, 2753), (13, 2873, 2922), (13, 3042, 3091), (13, 3211, 3260), (13, 3380, 3429), (13, 3549, 3598), (13, 3718, 3767), (13, 3887, 3936), (13, 4056, 4105), (13, 4225, 4274), (13, 4394, 4443), (13, 4563, 4612), (13, 4732, 4781), (13, 4394, 4443), (17, 2601, 2650), (17, 2890, 2939), (17, 3179, 3228), (17, 3468, 3517), (17, 3757, 3806), (17, 4046, 4095), (17, 4335, 4384), (17, 4624, 4673), (19, 2527, 2576), (19, 2888, 2937), (19, 3249, 3298), (19, 3610, 3659), (19, 3971, 4020), (19, 4332, 4381), (19, 4693, 4742), (23, 2645, 2694), (23, 3174, 3223), (23, 3703, 3752), (23, 4232, 4281), (23, 4761, 4810), (29, 2523, 2572), (29, 3364, 3413), (29, 4205, 4254), (31, 2883, 2932), (31, 3844, 3893), (31, 4805, 4854), (37, 2738, 2787), (37, 4107, 4156), (41, 3362, 3411), (43, 3698, 3747), (47, 4418, 4467)]

def row050_layer000_block000 : List ColouredInterval :=
  [(2, 2560, 2609), (2, 2816, 2865), (2, 3072, 3121), (2, 3328, 3377), (2, 3584, 3633), (2, 3840, 3889), (2, 4096, 4145), (2, 4352, 4401), (2, 4608, 4657), (2, 2560, 2609), (2, 3072, 3121), (2, 3584, 3633), (2, 4096, 4145), (2, 4608, 4657), (2, 3072, 3121), (2, 4096, 4145)]

def row050_layer000_block001 : List ColouredInterval :=
  [(2, 4096, 4145), (2, 4096, 4145), (3, 2450, 2479), (3, 2511, 2560), (3, 2592, 2641), (3, 2673, 2722), (3, 2754, 2803), (3, 2835, 2884), (3, 2916, 2965), (3, 2997, 3046), (3, 2450, 2479), (3, 2673, 2722), (3, 2916, 2965), (3, 3159, 3208), (3, 3402, 3451), (3, 3645, 3694)]

def row050_layer000_block002 : List ColouredInterval :=
  [(3, 3888, 3937), (3, 4131, 4180), (3, 4374, 4423), (3, 4617, 4666), (3, 4860, 4899), (3, 2916, 2965), (3, 3645, 3694), (3, 4374, 4423), (3, 4374, 4423), (5, 3125, 3174), (7, 2450, 2450), (7, 2744, 2793), (7, 3087, 3136), (7, 3430, 3479), (7, 3773, 3822), (7, 4116, 4165)]

def row050_layer000_block003 : List ColouredInterval :=
  [(7, 4459, 4508), (7, 4802, 4851), (7, 2450, 2450), (7, 4802, 4851), (11, 2450, 2469), (11, 2541, 2590), (11, 2662, 2711), (11, 2783, 2832), (11, 2904, 2953), (11, 3025, 3074), (11, 3146, 3195), (11, 3267, 3316), (11, 3388, 3437), (11, 3509, 3558), (11, 3630, 3679), (11, 3751, 3800)]

def row050_layer000_block004 : List ColouredInterval :=
  [(11, 3872, 3921), (11, 3993, 4042), (11, 4114, 4163), (11, 4235, 4284), (11, 4356, 4405), (11, 4477, 4526), (11, 2662, 2711), (11, 3993, 4042), (13, 2535, 2584), (13, 2704, 2753), (13, 2873, 2922), (13, 3042, 3091), (13, 3211, 3260), (13, 3380, 3429), (13, 3549, 3598), (13, 3718, 3767)]

def row050_layer000_block005 : List ColouredInterval :=
  [(13, 3887, 3936), (13, 4056, 4105), (13, 4225, 4274), (13, 4394, 4443), (13, 4563, 4612), (13, 4732, 4781), (13, 4394, 4443), (17, 2601, 2650), (17, 2890, 2939), (17, 3179, 3228), (17, 3468, 3517), (17, 3757, 3806), (17, 4046, 4095), (17, 4335, 4384), (17, 4624, 4673), (19, 2527, 2576)]

def row050_layer000_block006 : List ColouredInterval :=
  [(19, 2888, 2937), (19, 3249, 3298), (19, 3610, 3659), (19, 3971, 4020), (19, 4332, 4381), (19, 4693, 4742), (23, 2645, 2694), (23, 3174, 3223), (23, 3703, 3752), (23, 4232, 4281), (23, 4761, 4810), (29, 2523, 2572), (29, 3364, 3413), (29, 4205, 4254), (31, 2883, 2932), (31, 3844, 3893)]

def row050_layer000_block007 : List ColouredInterval :=
  [(31, 4805, 4854), (37, 2738, 2787), (37, 4107, 4156), (41, 3362, 3411), (43, 3698, 3747), (47, 4418, 4467)]

def row050_layer000_chunks : List (List ColouredInterval) :=
  [row050_layer000_block000, row050_layer000_block001, row050_layer000_block002, row050_layer000_block003, row050_layer000_block004, row050_layer000_block005, row050_layer000_block006, row050_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer000_arithmetic : LayerArithmeticValid row050.height { lower := 2450, upper := 4900, M := 37 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer000_enumeration :
    activePowerIntervalList 50 37 2450 4900 = row050_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer000_pairs000 :
    row050_layer000_block000.all (fun I => row050_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer000_pairs001 :
    row050_layer000_block001.all (fun I => row050_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer000_pairs002 :
    row050_layer000_block002.all (fun I => row050_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer000_pairs003 :
    row050_layer000_block003.all (fun I => row050_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer000_pairs004 :
    row050_layer000_block004.all (fun I => row050_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer000_pairs005 :
    row050_layer000_block005.all (fun I => row050_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer000_pairs006 :
    row050_layer000_block006.all (fun I => row050_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer000_pairs007 :
    row050_layer000_block007.all (fun I => row050_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer000_chunks_eq : row050_layer000_chunks.flatten = row050_layer000_intervals := by
  rfl

theorem row050_layer000_pairs : pairCoverCheck row050_layer000_intervals row050_bounds = true := by
  apply pairCoverCheck_of_chunks row050_layer000_chunks_eq
  intro block hblock
  simp only [row050_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row050_layer000_pairs000
  · exact row050_layer000_pairs001
  · exact row050_layer000_pairs002
  · exact row050_layer000_pairs003
  · exact row050_layer000_pairs004
  · exact row050_layer000_pairs005
  · exact row050_layer000_pairs006
  · exact row050_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer000_checked :
    coverLayerCheck row050.height row050.goods { lower := 2450, upper := 4900, M := 37 } = true := by
  exact coverLayerCheck_of_parts row050_layer000_arithmetic row050_layer000_enumeration row050_bounds_eq row050_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row050_layer001_intervals : List ColouredInterval :=
  [(2, 5120, 5169), (2, 5632, 5681), (2, 6144, 6193), (2, 6656, 6705), (2, 7168, 7217), (2, 7680, 7729), (2, 8192, 8241), (2, 8704, 8753), (2, 5120, 5169), (2, 6144, 6193), (2, 7168, 7217), (2, 8192, 8241), (2, 9216, 9265), (2, 6144, 6193), (2, 8192, 8241), (2, 8192, 8241), (2, 8192, 8241), (3, 4900, 4909), (3, 5103, 5152), (3, 5346, 5395), (3, 5589, 5638), (3, 5832, 5881), (3, 6075, 6124), (3, 6318, 6367), (3, 6561, 6610), (3, 6804, 6853), (3, 7047, 7096), (3, 7290, 7339), (3, 7533, 7582), (3, 7776, 7825), (3, 8019, 8068), (3, 8262, 8311), (3, 5103, 5152), (3, 5832, 5881), (3, 6561, 6610), (3, 7290, 7339), (3, 8019, 8068), (3, 8748, 8797), (3, 9477, 9526), (3, 6561, 6610), (3, 8748, 8797), (3, 6561, 6610), (7, 5145, 5194), (7, 5488, 5537), (7, 5831, 5880), (7, 6174, 6223), (7, 6517, 6566), (7, 6860, 6909), (7, 7203, 7252), (7, 7546, 7595), (7, 7889, 7938), (7, 8232, 8281), (7, 8575, 8624), (7, 8918, 8967), (7, 9261, 9310), (7, 9604, 9653), (7, 7203, 7252), (7, 9604, 9653), (11, 5324, 5373), (11, 6655, 6704), (11, 7986, 8035), (11, 9317, 9366), (13, 4901, 4950), (13, 5070, 5119), (13, 5239, 5288), (13, 5408, 5457), (13, 5577, 5626), (13, 5746, 5795), (13, 6591, 6640), (13, 8788, 8837), (17, 4913, 4962), (17, 5202, 5251), (17, 5491, 5540), (17, 5780, 5829), (17, 6069, 6118), (17, 6358, 6407), (17, 6647, 6696), (17, 6936, 6985), (17, 7225, 7274), (17, 7514, 7563), (17, 7803, 7852), (17, 8092, 8141), (17, 8381, 8430), (17, 8670, 8719), (17, 8959, 9008), (17, 9248, 9297), (17, 9537, 9586), (17, 4913, 4962), (19, 5054, 5103), (19, 5415, 5464), (19, 5776, 5825), (19, 6137, 6186), (19, 6498, 6547), (19, 6859, 6908), (19, 7220, 7269), (19, 7581, 7630), (19, 7942, 7991), (19, 8303, 8352), (19, 8664, 8713), (19, 9025, 9074), (19, 9386, 9435), (19, 9747, 9796), (19, 6859, 6908), (23, 5290, 5339), (23, 5819, 5868), (23, 6348, 6397), (23, 6877, 6926), (23, 7406, 7455), (23, 7935, 7984), (23, 8464, 8513), (23, 8993, 9042), (23, 9522, 9571), (29, 5046, 5095), (29, 5887, 5936), (29, 6728, 6777), (29, 7569, 7618), (29, 8410, 8459), (29, 9251, 9300), (31, 5766, 5815), (31, 6727, 6776), (31, 7688, 7737), (31, 8649, 8698), (31, 9610, 9659), (37, 5476, 5525), (37, 6845, 6894), (37, 8214, 8263), (37, 9583, 9632), (41, 5043, 5092), (41, 6724, 6773), (41, 8405, 8454), (43, 5547, 5596), (43, 7396, 7445), (43, 9245, 9294), (47, 6627, 6676), (47, 8836, 8885)]

def row050_layer001_block000 : List ColouredInterval :=
  [(2, 5120, 5169), (2, 5632, 5681), (2, 6144, 6193), (2, 6656, 6705), (2, 7168, 7217), (2, 7680, 7729), (2, 8192, 8241), (2, 8704, 8753), (2, 5120, 5169), (2, 6144, 6193), (2, 7168, 7217), (2, 8192, 8241), (2, 9216, 9265), (2, 6144, 6193), (2, 8192, 8241)]

def row050_layer001_block001 : List ColouredInterval :=
  [(2, 8192, 8241), (2, 8192, 8241), (3, 4900, 4909), (3, 5103, 5152), (3, 5346, 5395), (3, 5589, 5638), (3, 5832, 5881), (3, 6075, 6124), (3, 6318, 6367), (3, 6561, 6610), (3, 6804, 6853), (3, 7047, 7096), (3, 7290, 7339), (3, 7533, 7582), (3, 7776, 7825)]

def row050_layer001_block002 : List ColouredInterval :=
  [(3, 8019, 8068), (3, 8262, 8311), (3, 5103, 5152), (3, 5832, 5881), (3, 6561, 6610), (3, 7290, 7339), (3, 8019, 8068), (3, 8748, 8797), (3, 9477, 9526), (3, 6561, 6610), (3, 8748, 8797), (3, 6561, 6610), (7, 5145, 5194), (7, 5488, 5537), (7, 5831, 5880)]

def row050_layer001_block003 : List ColouredInterval :=
  [(7, 6174, 6223), (7, 6517, 6566), (7, 6860, 6909), (7, 7203, 7252), (7, 7546, 7595), (7, 7889, 7938), (7, 8232, 8281), (7, 8575, 8624), (7, 8918, 8967), (7, 9261, 9310), (7, 9604, 9653), (7, 7203, 7252), (7, 9604, 9653), (11, 5324, 5373), (11, 6655, 6704)]

def row050_layer001_block004 : List ColouredInterval :=
  [(11, 7986, 8035), (11, 9317, 9366), (13, 4901, 4950), (13, 5070, 5119), (13, 5239, 5288), (13, 5408, 5457), (13, 5577, 5626), (13, 5746, 5795), (13, 6591, 6640), (13, 8788, 8837), (17, 4913, 4962), (17, 5202, 5251), (17, 5491, 5540), (17, 5780, 5829), (17, 6069, 6118)]

def row050_layer001_block005 : List ColouredInterval :=
  [(17, 6358, 6407), (17, 6647, 6696), (17, 6936, 6985), (17, 7225, 7274), (17, 7514, 7563), (17, 7803, 7852), (17, 8092, 8141), (17, 8381, 8430), (17, 8670, 8719), (17, 8959, 9008), (17, 9248, 9297), (17, 9537, 9586), (17, 4913, 4962), (19, 5054, 5103), (19, 5415, 5464)]

def row050_layer001_block006 : List ColouredInterval :=
  [(19, 5776, 5825), (19, 6137, 6186), (19, 6498, 6547), (19, 6859, 6908), (19, 7220, 7269), (19, 7581, 7630), (19, 7942, 7991), (19, 8303, 8352), (19, 8664, 8713), (19, 9025, 9074), (19, 9386, 9435), (19, 9747, 9796), (19, 6859, 6908), (23, 5290, 5339), (23, 5819, 5868)]

def row050_layer001_block007 : List ColouredInterval :=
  [(23, 6348, 6397), (23, 6877, 6926), (23, 7406, 7455), (23, 7935, 7984), (23, 8464, 8513), (23, 8993, 9042), (23, 9522, 9571), (29, 5046, 5095), (29, 5887, 5936), (29, 6728, 6777), (29, 7569, 7618), (29, 8410, 8459), (29, 9251, 9300), (31, 5766, 5815), (31, 6727, 6776)]

def row050_layer001_block008 : List ColouredInterval :=
  [(31, 7688, 7737), (31, 8649, 8698), (31, 9610, 9659), (37, 5476, 5525), (37, 6845, 6894), (37, 8214, 8263), (37, 9583, 9632), (41, 5043, 5092), (41, 6724, 6773), (41, 8405, 8454), (43, 5547, 5596), (43, 7396, 7445), (43, 9245, 9294), (47, 6627, 6676), (47, 8836, 8885)]

def row050_layer001_chunks : List (List ColouredInterval) :=
  [row050_layer001_block000, row050_layer001_block001, row050_layer001_block002, row050_layer001_block003, row050_layer001_block004, row050_layer001_block005, row050_layer001_block006, row050_layer001_block007, row050_layer001_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer001_arithmetic : LayerArithmeticValid row050.height { lower := 4900, upper := 9800, M := 34 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer001_enumeration :
    activePowerIntervalList 50 34 4900 9800 = row050_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer001_pairs000 :
    row050_layer001_block000.all (fun I => row050_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer001_pairs001 :
    row050_layer001_block001.all (fun I => row050_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer001_pairs002 :
    row050_layer001_block002.all (fun I => row050_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer001_pairs003 :
    row050_layer001_block003.all (fun I => row050_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer001_pairs004 :
    row050_layer001_block004.all (fun I => row050_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer001_pairs005 :
    row050_layer001_block005.all (fun I => row050_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer001_pairs006 :
    row050_layer001_block006.all (fun I => row050_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer001_pairs007 :
    row050_layer001_block007.all (fun I => row050_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer001_pairs008 :
    row050_layer001_block008.all (fun I => row050_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer001_chunks_eq : row050_layer001_chunks.flatten = row050_layer001_intervals := by
  rfl

theorem row050_layer001_pairs : pairCoverCheck row050_layer001_intervals row050_bounds = true := by
  apply pairCoverCheck_of_chunks row050_layer001_chunks_eq
  intro block hblock
  simp only [row050_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row050_layer001_pairs000
  · exact row050_layer001_pairs001
  · exact row050_layer001_pairs002
  · exact row050_layer001_pairs003
  · exact row050_layer001_pairs004
  · exact row050_layer001_pairs005
  · exact row050_layer001_pairs006
  · exact row050_layer001_pairs007
  · exact row050_layer001_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer001_checked :
    coverLayerCheck row050.height row050.goods { lower := 4900, upper := 9800, M := 34 } = true := by
  exact coverLayerCheck_of_parts row050_layer001_arithmetic row050_layer001_enumeration row050_bounds_eq row050_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row050_layer002_intervals : List ColouredInterval :=
  [(2, 10240, 10289), (2, 11264, 11313), (2, 12288, 12337), (2, 13312, 13361), (2, 14336, 14385), (2, 15360, 15409), (2, 16384, 16433), (2, 10240, 10289), (2, 12288, 12337), (2, 14336, 14385), (2, 16384, 16433), (2, 18432, 18481), (2, 12288, 12337), (2, 16384, 16433), (2, 16384, 16433), (2, 16384, 16433), (3, 10206, 10255), (3, 10935, 10984), (3, 11664, 11713), (3, 12393, 12442), (3, 13122, 13171), (3, 13851, 13900), (3, 14580, 14629), (3, 15309, 15358), (3, 16038, 16087), (3, 16767, 16816), (3, 17496, 17545), (3, 18225, 18274), (3, 18954, 19003), (3, 10935, 10984), (3, 13122, 13171), (3, 15309, 15358), (3, 17496, 17545), (3, 13122, 13171), (5, 15625, 15674), (7, 9947, 9996), (7, 10290, 10339), (7, 10633, 10682), (7, 10976, 11025), (7, 12005, 12054), (7, 14406, 14455), (7, 16807, 16856), (7, 19208, 19257), (7, 16807, 16856), (11, 10648, 10697), (11, 11979, 12028), (11, 13310, 13359), (11, 14641, 14690), (11, 15972, 16021), (11, 17303, 17352), (11, 18634, 18683), (11, 14641, 14690), (13, 10985, 11034), (13, 13182, 13231), (13, 15379, 15428), (13, 17576, 17625), (17, 9826, 9875), (17, 14739, 14788), (19, 10108, 10157), (19, 10469, 10518), (19, 10830, 10879), (19, 11191, 11240), (19, 11552, 11601), (19, 13718, 13767), (23, 10051, 10100), (23, 10580, 10629), (23, 11109, 11158), (23, 11638, 11687), (23, 12167, 12216), (23, 12696, 12745), (23, 13225, 13274), (23, 13754, 13803), (23, 14283, 14332), (23, 14812, 14861), (23, 15341, 15390), (23, 15870, 15919), (23, 16399, 16448), (23, 16928, 16977), (23, 12167, 12216), (29, 10092, 10141), (29, 10933, 10982), (29, 11774, 11823), (29, 12615, 12664), (29, 13456, 13505), (29, 14297, 14346), (29, 15138, 15187), (29, 15979, 16028), (29, 16820, 16869), (29, 17661, 17710), (29, 18502, 18551), (29, 19343, 19392), (31, 10571, 10620), (31, 11532, 11581), (31, 12493, 12542), (31, 13454, 13503), (31, 14415, 14464), (31, 15376, 15425), (31, 16337, 16386), (31, 17298, 17347), (31, 18259, 18308), (31, 19220, 19269), (37, 10952, 11001), (37, 12321, 12370), (37, 13690, 13739), (37, 15059, 15108), (37, 16428, 16477), (37, 17797, 17846), (37, 19166, 19215), (41, 10086, 10135), (41, 11767, 11816), (41, 13448, 13497), (41, 15129, 15178), (41, 16810, 16859), (41, 18491, 18540), (43, 11094, 11143), (43, 12943, 12992), (43, 14792, 14841), (43, 16641, 16690), (43, 18490, 18539), (47, 11045, 11094), (47, 13254, 13303), (47, 15463, 15512), (47, 17672, 17721)]

def row050_layer002_block000 : List ColouredInterval :=
  [(2, 10240, 10289), (2, 11264, 11313), (2, 12288, 12337), (2, 13312, 13361), (2, 14336, 14385), (2, 15360, 15409), (2, 16384, 16433), (2, 10240, 10289), (2, 12288, 12337), (2, 14336, 14385), (2, 16384, 16433), (2, 18432, 18481), (2, 12288, 12337), (2, 16384, 16433), (2, 16384, 16433), (2, 16384, 16433)]

def row050_layer002_block001 : List ColouredInterval :=
  [(3, 10206, 10255), (3, 10935, 10984), (3, 11664, 11713), (3, 12393, 12442), (3, 13122, 13171), (3, 13851, 13900), (3, 14580, 14629), (3, 15309, 15358), (3, 16038, 16087), (3, 16767, 16816), (3, 17496, 17545), (3, 18225, 18274), (3, 18954, 19003), (3, 10935, 10984), (3, 13122, 13171), (3, 15309, 15358)]

def row050_layer002_block002 : List ColouredInterval :=
  [(3, 17496, 17545), (3, 13122, 13171), (5, 15625, 15674), (7, 9947, 9996), (7, 10290, 10339), (7, 10633, 10682), (7, 10976, 11025), (7, 12005, 12054), (7, 14406, 14455), (7, 16807, 16856), (7, 19208, 19257), (7, 16807, 16856), (11, 10648, 10697), (11, 11979, 12028), (11, 13310, 13359), (11, 14641, 14690)]

def row050_layer002_block003 : List ColouredInterval :=
  [(11, 15972, 16021), (11, 17303, 17352), (11, 18634, 18683), (11, 14641, 14690), (13, 10985, 11034), (13, 13182, 13231), (13, 15379, 15428), (13, 17576, 17625), (17, 9826, 9875), (17, 14739, 14788), (19, 10108, 10157), (19, 10469, 10518), (19, 10830, 10879), (19, 11191, 11240), (19, 11552, 11601), (19, 13718, 13767)]

def row050_layer002_block004 : List ColouredInterval :=
  [(23, 10051, 10100), (23, 10580, 10629), (23, 11109, 11158), (23, 11638, 11687), (23, 12167, 12216), (23, 12696, 12745), (23, 13225, 13274), (23, 13754, 13803), (23, 14283, 14332), (23, 14812, 14861), (23, 15341, 15390), (23, 15870, 15919), (23, 16399, 16448), (23, 16928, 16977), (23, 12167, 12216), (29, 10092, 10141)]

def row050_layer002_block005 : List ColouredInterval :=
  [(29, 10933, 10982), (29, 11774, 11823), (29, 12615, 12664), (29, 13456, 13505), (29, 14297, 14346), (29, 15138, 15187), (29, 15979, 16028), (29, 16820, 16869), (29, 17661, 17710), (29, 18502, 18551), (29, 19343, 19392), (31, 10571, 10620), (31, 11532, 11581), (31, 12493, 12542), (31, 13454, 13503), (31, 14415, 14464)]

def row050_layer002_block006 : List ColouredInterval :=
  [(31, 15376, 15425), (31, 16337, 16386), (31, 17298, 17347), (31, 18259, 18308), (31, 19220, 19269), (37, 10952, 11001), (37, 12321, 12370), (37, 13690, 13739), (37, 15059, 15108), (37, 16428, 16477), (37, 17797, 17846), (37, 19166, 19215), (41, 10086, 10135), (41, 11767, 11816), (41, 13448, 13497), (41, 15129, 15178)]

def row050_layer002_block007 : List ColouredInterval :=
  [(41, 16810, 16859), (41, 18491, 18540), (43, 11094, 11143), (43, 12943, 12992), (43, 14792, 14841), (43, 16641, 16690), (43, 18490, 18539), (47, 11045, 11094), (47, 13254, 13303), (47, 15463, 15512), (47, 17672, 17721)]

def row050_layer002_chunks : List (List ColouredInterval) :=
  [row050_layer002_block000, row050_layer002_block001, row050_layer002_block002, row050_layer002_block003, row050_layer002_block004, row050_layer002_block005, row050_layer002_block006, row050_layer002_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer002_arithmetic : LayerArithmeticValid row050.height { lower := 9800, upper := 19600, M := 32 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer002_enumeration :
    activePowerIntervalList 50 32 9800 19600 = row050_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer002_pairs000 :
    row050_layer002_block000.all (fun I => row050_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer002_pairs001 :
    row050_layer002_block001.all (fun I => row050_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer002_pairs002 :
    row050_layer002_block002.all (fun I => row050_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer002_pairs003 :
    row050_layer002_block003.all (fun I => row050_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer002_pairs004 :
    row050_layer002_block004.all (fun I => row050_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer002_pairs005 :
    row050_layer002_block005.all (fun I => row050_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer002_pairs006 :
    row050_layer002_block006.all (fun I => row050_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer002_pairs007 :
    row050_layer002_block007.all (fun I => row050_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row050_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer002_chunks_eq : row050_layer002_chunks.flatten = row050_layer002_intervals := by
  rfl

theorem row050_layer002_pairs : pairCoverCheck row050_layer002_intervals row050_bounds = true := by
  apply pairCoverCheck_of_chunks row050_layer002_chunks_eq
  intro block hblock
  simp only [row050_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row050_layer002_pairs000
  · exact row050_layer002_pairs001
  · exact row050_layer002_pairs002
  · exact row050_layer002_pairs003
  · exact row050_layer002_pairs004
  · exact row050_layer002_pairs005
  · exact row050_layer002_pairs006
  · exact row050_layer002_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer002_checked :
    coverLayerCheck row050.height row050.goods { lower := 9800, upper := 19600, M := 32 } = true := by
  exact coverLayerCheck_of_parts row050_layer002_arithmetic row050_layer002_enumeration row050_bounds_eq row050_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row050_layer003_intervals : List ColouredInterval :=
  [(2, 20480, 20529), (2, 22528, 22577), (2, 24576, 24625), (2, 26624, 26673), (2, 28672, 28721), (2, 30720, 30769), (2, 20480, 20529), (2, 24576, 24625), (2, 28672, 28721), (2, 32768, 32817), (2, 36864, 36913), (2, 24576, 24625), (2, 32768, 32817), (2, 32768, 32817), (2, 32768, 32817), (3, 19683, 19732), (3, 20412, 20461), (3, 21141, 21190), (3, 21870, 21919), (3, 19683, 19732), (3, 21870, 21919), (3, 24057, 24106), (3, 26244, 26293), (3, 28431, 28480), (3, 30618, 30667), (3, 32805, 32854), (3, 34992, 35041), (3, 37179, 37228), (3, 19683, 19732), (3, 26244, 26293), (3, 32805, 32854), (3, 19683, 19732), (7, 21609, 21658), (7, 24010, 24059), (7, 26411, 26460), (7, 28812, 28861), (7, 31213, 31262), (7, 33614, 33663), (7, 36015, 36064), (7, 38416, 38465), (7, 33614, 33663), (11, 19965, 20014), (11, 21296, 21345), (11, 22627, 22676), (11, 23958, 24007), (11, 25289, 25338), (11, 26620, 26669), (11, 27951, 28000), (11, 29282, 29331), (11, 30613, 30662), (11, 31944, 31993), (11, 33275, 33324), (11, 34606, 34655), (11, 35937, 35986), (11, 37268, 37317), (11, 38599, 38648), (11, 29282, 29331), (13, 19773, 19822), (13, 21970, 22019), (13, 24167, 24216), (13, 26364, 26413), (13, 28561, 28610), (13, 30758, 30807), (13, 32955, 33004), (13, 35152, 35201), (13, 37349, 37398), (13, 28561, 28610), (17, 19652, 19701), (17, 24565, 24614), (17, 29478, 29527), (17, 34391, 34440), (19, 20577, 20626), (19, 27436, 27485), (19, 34295, 34344), (23, 24334, 24383), (23, 36501, 36550), (29, 20184, 20233), (29, 21025, 21074), (29, 21866, 21915), (29, 22707, 22756), (29, 23548, 23597), (29, 24389, 24438), (29, 25230, 25279), (29, 24389, 24438), (31, 20181, 20230), (31, 21142, 21191), (31, 22103, 22152), (31, 23064, 23113), (31, 24025, 24074), (31, 24986, 25035), (31, 25947, 25996), (31, 26908, 26957), (31, 27869, 27918), (31, 28830, 28879), (31, 29791, 29840), (37, 20535, 20584), (37, 21904, 21953), (37, 23273, 23322), (37, 24642, 24691), (37, 26011, 26060), (37, 27380, 27429), (37, 28749, 28798), (37, 30118, 30167), (37, 31487, 31536), (37, 32856, 32905), (37, 34225, 34274), (37, 35594, 35643), (37, 36963, 37012), (37, 38332, 38381), (41, 20172, 20221), (41, 21853, 21902), (41, 23534, 23583), (41, 25215, 25264), (41, 26896, 26945), (41, 28577, 28626), (41, 30258, 30307), (41, 31939, 31988), (41, 33620, 33669), (41, 35301, 35350), (41, 36982, 37031), (41, 38663, 38712), (43, 20339, 20388), (43, 22188, 22237), (43, 24037, 24086), (43, 25886, 25935), (43, 27735, 27784), (43, 29584, 29633), (43, 31433, 31482), (43, 33282, 33331), (43, 35131, 35180), (43, 36980, 37029), (43, 38829, 38878), (47, 19881, 19930), (47, 22090, 22139), (47, 24299, 24348), (47, 26508, 26557), (47, 28717, 28766), (47, 30926, 30975), (47, 33135, 33184), (47, 35344, 35393), (47, 37553, 37602)]

def row050_layer003_block000 : List ColouredInterval :=
  [(2, 20480, 20529), (2, 22528, 22577), (2, 24576, 24625), (2, 26624, 26673), (2, 28672, 28721), (2, 30720, 30769), (2, 20480, 20529), (2, 24576, 24625), (2, 28672, 28721), (2, 32768, 32817), (2, 36864, 36913), (2, 24576, 24625), (2, 32768, 32817), (2, 32768, 32817)]

def row050_layer003_block001 : List ColouredInterval :=
  [(2, 32768, 32817), (3, 19683, 19732), (3, 20412, 20461), (3, 21141, 21190), (3, 21870, 21919), (3, 19683, 19732), (3, 21870, 21919), (3, 24057, 24106), (3, 26244, 26293), (3, 28431, 28480), (3, 30618, 30667), (3, 32805, 32854), (3, 34992, 35041), (3, 37179, 37228)]

def row050_layer003_block002 : List ColouredInterval :=
  [(3, 19683, 19732), (3, 26244, 26293), (3, 32805, 32854), (3, 19683, 19732), (7, 21609, 21658), (7, 24010, 24059), (7, 26411, 26460), (7, 28812, 28861), (7, 31213, 31262), (7, 33614, 33663), (7, 36015, 36064), (7, 38416, 38465), (7, 33614, 33663), (11, 19965, 20014)]

def row050_layer003_block003 : List ColouredInterval :=
  [(11, 21296, 21345), (11, 22627, 22676), (11, 23958, 24007), (11, 25289, 25338), (11, 26620, 26669), (11, 27951, 28000), (11, 29282, 29331), (11, 30613, 30662), (11, 31944, 31993), (11, 33275, 33324), (11, 34606, 34655), (11, 35937, 35986), (11, 37268, 37317), (11, 38599, 38648)]

def row050_layer003_block004 : List ColouredInterval :=
  [(11, 29282, 29331), (13, 19773, 19822), (13, 21970, 22019), (13, 24167, 24216), (13, 26364, 26413), (13, 28561, 28610), (13, 30758, 30807), (13, 32955, 33004), (13, 35152, 35201), (13, 37349, 37398), (13, 28561, 28610), (17, 19652, 19701), (17, 24565, 24614), (17, 29478, 29527)]

def row050_layer003_block005 : List ColouredInterval :=
  [(17, 34391, 34440), (19, 20577, 20626), (19, 27436, 27485), (19, 34295, 34344), (23, 24334, 24383), (23, 36501, 36550), (29, 20184, 20233), (29, 21025, 21074), (29, 21866, 21915), (29, 22707, 22756), (29, 23548, 23597), (29, 24389, 24438), (29, 25230, 25279), (29, 24389, 24438)]

def row050_layer003_block006 : List ColouredInterval :=
  [(31, 20181, 20230), (31, 21142, 21191), (31, 22103, 22152), (31, 23064, 23113), (31, 24025, 24074), (31, 24986, 25035), (31, 25947, 25996), (31, 26908, 26957), (31, 27869, 27918), (31, 28830, 28879), (31, 29791, 29840), (37, 20535, 20584), (37, 21904, 21953), (37, 23273, 23322)]

def row050_layer003_block007 : List ColouredInterval :=
  [(37, 24642, 24691), (37, 26011, 26060), (37, 27380, 27429), (37, 28749, 28798), (37, 30118, 30167), (37, 31487, 31536), (37, 32856, 32905), (37, 34225, 34274), (37, 35594, 35643), (37, 36963, 37012), (37, 38332, 38381), (41, 20172, 20221), (41, 21853, 21902), (41, 23534, 23583)]

def row050_layer003_block008 : List ColouredInterval :=
  [(41, 25215, 25264), (41, 26896, 26945), (41, 28577, 28626), (41, 30258, 30307), (41, 31939, 31988), (41, 33620, 33669), (41, 35301, 35350), (41, 36982, 37031), (41, 38663, 38712), (43, 20339, 20388), (43, 22188, 22237), (43, 24037, 24086), (43, 25886, 25935), (43, 27735, 27784)]

def row050_layer003_block009 : List ColouredInterval :=
  [(43, 29584, 29633), (43, 31433, 31482), (43, 33282, 33331), (43, 35131, 35180), (43, 36980, 37029), (43, 38829, 38878), (47, 19881, 19930), (47, 22090, 22139), (47, 24299, 24348), (47, 26508, 26557), (47, 28717, 28766), (47, 30926, 30975), (47, 33135, 33184), (47, 35344, 35393)]

def row050_layer003_block010 : List ColouredInterval :=
  [(47, 37553, 37602)]

def row050_layer003_chunks : List (List ColouredInterval) :=
  [row050_layer003_block000, row050_layer003_block001, row050_layer003_block002, row050_layer003_block003, row050_layer003_block004, row050_layer003_block005, row050_layer003_block006, row050_layer003_block007, row050_layer003_block008, row050_layer003_block009, row050_layer003_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer003_arithmetic : LayerArithmeticValid row050.height { lower := 19600, upper := 39200, M := 30 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer003_arithmetic
