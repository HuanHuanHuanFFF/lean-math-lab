import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row054_height : HeightCertificateDatum := { i := 54, r := 17, s := 37, n0Power10 := 18 }

def row054_goods : List GoodSegment := [
  { lower := 110, upper := 162, witness := RowWitness.topPrime 109 },
  { lower := 163, upper := 216, witness := RowWitness.topPrime 163 },
  { lower := 217, upper := 264, witness := RowWitness.topPrime 211 },
  { lower := 265, upper := 316, witness := RowWitness.topPrime 263 },
  { lower := 317, upper := 370, witness := RowWitness.topPrime 317 },
  { lower := 371, upper := 420, witness := RowWitness.topPrime 367 },
  { lower := 421, upper := 474, witness := RowWitness.topPrime 421 },
  { lower := 475, upper := 520, witness := RowWitness.topPrime 467 },
  { lower := 521, upper := 574, witness := RowWitness.topPrime 521 },
  { lower := 575, upper := 624, witness := RowWitness.topPrime 571 },
  { lower := 625, upper := 672, witness := RowWitness.topPrime 619 },
  { lower := 673, upper := 726, witness := RowWitness.topPrime 673 },
  { lower := 727, upper := 780, witness := RowWitness.topPrime 727 },
  { lower := 781, upper := 826, witness := RowWitness.topPrime 773 },
  { lower := 827, upper := 880, witness := RowWitness.topPrime 827 },
  { lower := 881, upper := 934, witness := RowWitness.topPrime 881 },
  { lower := 935, upper := 982, witness := RowWitness.topPrime 929 },
  { lower := 983, upper := 1036, witness := RowWitness.topPrime 983 },
  { lower := 1037, upper := 1086, witness := RowWitness.topPrime 1033 },
  { lower := 1087, upper := 1140, witness := RowWitness.topPrime 1087 },
  { lower := 1141, upper := 1182, witness := RowWitness.topPrime 1129 },
  { lower := 1183, upper := 1234, witness := RowWitness.topPrime 1181 },
  { lower := 1235, upper := 1284, witness := RowWitness.topPrime 1231 },
  { lower := 1285, upper := 1336, witness := RowWitness.topPrime 1283 },
  { lower := 1337, upper := 1380, witness := RowWitness.topPrime 1327 },
  { lower := 1381, upper := 1434, witness := RowWitness.topPrime 1381 },
  { lower := 1435, upper := 1486, witness := RowWitness.topPrime 1433 },
  { lower := 1487, upper := 1540, witness := RowWitness.topPrime 1487 },
  { lower := 1541, upper := 1584, witness := RowWitness.topPrime 1531 },
  { lower := 1585, upper := 1636, witness := RowWitness.topPrime 1583 },
  { lower := 1637, upper := 1690, witness := RowWitness.topPrime 1637 },
  { lower := 1691, upper := 1722, witness := RowWitness.topPrime 1669 },
  { lower := 1723, upper := 1776, witness := RowWitness.topPrime 1723 },
  { lower := 1777, upper := 1830, witness := RowWitness.topPrime 1777 },
  { lower := 1831, upper := 1884, witness := RowWitness.topPrime 1831 },
  { lower := 1885, upper := 1932, witness := RowWitness.topPrime 1879 },
  { lower := 1933, upper := 1986, witness := RowWitness.topPrime 1933 },
  { lower := 1987, upper := 2040, witness := RowWitness.topPrime 1987 },
  { lower := 2041, upper := 2092, witness := RowWitness.topPrime 2039 },
  { lower := 2093, upper := 2142, witness := RowWitness.topPrime 2089 },
  { lower := 2143, upper := 2196, witness := RowWitness.topPrime 2143 },
  { lower := 2197, upper := 2232, witness := RowWitness.topPrime 2179 },
  { lower := 2233, upper := 2274, witness := RowWitness.topPrime 2221 },
  { lower := 2275, upper := 2326, witness := RowWitness.topPrime 2273 },
  { lower := 2327, upper := 2364, witness := RowWitness.topPrime 2311 },
  { lower := 2365, upper := 2410, witness := RowWitness.topPrime 2357 },
  { lower := 2411, upper := 2464, witness := RowWitness.topPrime 2411 },
  { lower := 2465, upper := 2512, witness := RowWitness.topPrime 2459 },
  { lower := 2513, upper := 2556, witness := RowWitness.topPrime 2503 },
  { lower := 2557, upper := 2610, witness := RowWitness.topPrime 2557 },
  { lower := 2611, upper := 2662, witness := RowWitness.topPrime 2609 },
  { lower := 2663, upper := 2716, witness := RowWitness.topPrime 2663 },
  { lower := 2717, upper := 2766, witness := RowWitness.topPrime 2713 },
  { lower := 2767, upper := 2820, witness := RowWitness.topPrime 2767 },
  { lower := 2821, upper := 2862, witness := RowWitness.topPrime 2819 },
  { lower := 2875, upper := 2914, witness := RowWitness.topPrime 2861 },
  { lower := 2915, upper := 2943, witness := RowWitness.topPrime 2909 },
  { lower := 3025, upper := 3076, witness := RowWitness.topPrime 3023 },
  { lower := 3077, upper := 3120, witness := RowWitness.topPrime 3067 },
  { lower := 3121, upper := 3140, witness := RowWitness.topPrime 3121 },
  { lower := 3146, upper := 3190, witness := RowWitness.topPrime 3137 },
  { lower := 3191, upper := 3232, witness := RowWitness.topPrime 3191 },
  { lower := 3249, upper := 3282, witness := RowWitness.topPrime 3229 },
  { lower := 3283, upper := 3303, witness := RowWitness.topPrime 3271 },
  { lower := 3362, upper := 3414, witness := RowWitness.topPrime 3361 },
  { lower := 3415, upper := 3441, witness := RowWitness.topPrime 3413 },
  { lower := 3468, upper := 3483, witness := RowWitness.topPrime 3467 },
  { lower := 3500, upper := 3552, witness := RowWitness.topPrime 3499 },
  { lower := 3553, upper := 3562, witness := RowWitness.topPrime 3547 },
  { lower := 3584, upper := 3602, witness := RowWitness.topPrime 3583 },
  { lower := 3610, upper := 3660, witness := RowWitness.topPrime 3607 },
  { lower := 3661, upper := 3678, witness := RowWitness.topPrime 3659 },
  { lower := 3703, upper := 3754, witness := RowWitness.topPrime 3701 },
  { lower := 3755, upper := 3792, witness := RowWitness.topPrime 3739 },
  { lower := 3793, upper := 3810, witness := RowWitness.topPrime 3793 },
  { lower := 3844, upper := 3886, witness := RowWitness.topPrime 3833 },
  { lower := 3887, upper := 3928, witness := RowWitness.topPrime 3881 },
  { lower := 3993, upper := 4042, witness := RowWitness.topPrime 3989 },
  { lower := 4043, upper := 4053, witness := RowWitness.topPrime 4027 },
  { lower := 4056, upper := 4104, witness := RowWitness.topPrime 4051 },
  { lower := 4105, upper := 4152, witness := RowWitness.topPrime 4099 },
  { lower := 4153, upper := 4169, witness := RowWitness.topPrime 4153 },
  { lower := 4225, upper := 4272, witness := RowWitness.topPrime 4219 },
  { lower := 4273, upper := 4288, witness := RowWitness.topPrime 4273 },
  { lower := 4335, upper := 4380, witness := RowWitness.topPrime 4327 },
  { lower := 4381, upper := 4426, witness := RowWitness.topPrime 4373 },
  { lower := 4427, upper := 4447, witness := RowWitness.topPrime 4423 },
  { lower := 4459, upper := 4471, witness := RowWitness.topPrime 4457 },
  { lower := 4500, upper := 4512, witness := RowWitness.topPrime 4493 },
  { lower := 4608, upper := 4616, witness := RowWitness.topPrime 4603 },
  { lower := 4624, upper := 4661, witness := RowWitness.topPrime 4621 },
  { lower := 4732, upper := 4746, witness := RowWitness.topPrime 4729 },
  { lower := 4761, upper := 4785, witness := RowWitness.topPrime 4759 },
  { lower := 4802, upper := 4854, witness := RowWitness.topPrime 4801 },
  { lower := 4855, upper := 4855, witness := RowWitness.topPrime 4831 },
  { lower := 4913, upper := 4954, witness := RowWitness.topPrime 4909 },
  { lower := 5043, upper := 5092, witness := RowWitness.topPrime 5039 },
  { lower := 5093, upper := 5107, witness := RowWitness.topPrime 5087 },
  { lower := 5120, upper := 5123, witness := RowWitness.topPrime 5119 },
  { lower := 5145, upper := 5172, witness := RowWitness.topPrime 5119 },
  { lower := 5173, upper := 5173, witness := RowWitness.topPrime 5171 },
  { lower := 5239, upper := 5255, witness := RowWitness.topPrime 5237 },
  { lower := 5290, upper := 5292, witness := RowWitness.topPrime 5281 },
  { lower := 5324, upper := 5343, witness := RowWitness.topPrime 5323 },
  { lower := 5415, upper := 5461, witness := RowWitness.topPrime 5413 },
  { lower := 5488, upper := 5536, witness := RowWitness.topPrime 5483 },
  { lower := 5537, upper := 5541, witness := RowWitness.topPrime 5531 },
  { lower := 5577, upper := 5600, witness := RowWitness.topPrime 5573 },
  { lower := 5618, upper := 5644, witness := RowWitness.topPrime 5591 },
  { lower := 5645, upper := 5678, witness := RowWitness.topPrime 5641 },
  { lower := 5776, upper := 5802, witness := RowWitness.topPrime 5749 },
  { lower := 5803, upper := 5854, witness := RowWitness.topPrime 5801 },
  { lower := 5855, upper := 5872, witness := RowWitness.topPrime 5851 },
  { lower := 6144, upper := 6196, witness := RowWitness.topPrime 6143 },
  { lower := 6197, upper := 6197, witness := RowWitness.topPrime 6197 },
  { lower := 6358, upper := 6401, witness := RowWitness.topPrime 6353 },
  { lower := 6517, upper := 6544, witness := RowWitness.topPrime 6491 },
  { lower := 6545, upper := 6551, witness := RowWitness.topPrime 6529 },
  { lower := 6561, upper := 6570, witness := RowWitness.topPrime 6553 },
  { lower := 6591, upper := 6614, witness := RowWitness.topPrime 6581 },
  { lower := 6627, upper := 6644, witness := RowWitness.topPrime 6619 },
  { lower := 6647, upper := 6690, witness := RowWitness.topPrime 6637 },
  { lower := 6691, upper := 6708, witness := RowWitness.topPrime 6691 },
  { lower := 6727, upper := 6772, witness := RowWitness.topPrime 6719 },
  { lower := 6773, upper := 6780, witness := RowWitness.topPrime 6763 },
  { lower := 6859, upper := 6910, witness := RowWitness.topPrime 6857 },
  { lower := 6911, upper := 6928, witness := RowWitness.topPrime 6911 },
  { lower := 7203, upper := 7246, witness := RowWitness.topPrime 7193 },
  { lower := 7247, upper := 7273, witness := RowWitness.topPrime 7247 },
  { lower := 7406, upper := 7446, witness := RowWitness.topPrime 7393 },
  { lower := 7447, upper := 7449, witness := RowWitness.topPrime 7433 },
  { lower := 7514, upper := 7560, witness := RowWitness.topPrime 7507 },
  { lower := 7561, upper := 7567, witness := RowWitness.topPrime 7561 },
  { lower := 7569, upper := 7614, witness := RowWitness.topPrime 7561 },
  { lower := 7615, upper := 7622, witness := RowWitness.topPrime 7607 },
  { lower := 7688, upper := 7733, witness := RowWitness.topPrime 7687 },
  { lower := 7935, upper := 7986, witness := RowWitness.topPrime 7933 },
  { lower := 7987, upper := 7995, witness := RowWitness.topPrime 7963 },
  { lower := 8125, upper := 8145, witness := RowWitness.topPrime 8123 },
  { lower := 8214, upper := 8262, witness := RowWitness.topPrime 8209 },
  { lower := 8263, upper := 8267, witness := RowWitness.topPrime 8263 },
  { lower := 8405, upper := 8442, witness := RowWitness.topPrime 8389 },
  { lower := 8443, upper := 8480, witness := RowWitness.topPrime 8443 },
  { lower := 8664, upper := 8716, witness := RowWitness.topPrime 8663 },
  { lower := 8717, upper := 8717, witness := RowWitness.topPrime 8713 },
  { lower := 8788, upper := 8803, witness := RowWitness.topPrime 8783 },
  { lower := 8836, upper := 8841, witness := RowWitness.topPrime 8831 },
  { lower := 8959, upper := 8971, witness := RowWitness.topPrime 8951 },
  { lower := 8993, upper := 9012, witness := RowWitness.topPrime 8971 },
  { lower := 9025, upper := 9046, witness := RowWitness.topPrime 9013 },
  { lower := 9245, upper := 9294, witness := RowWitness.topPrime 9241 },
  { lower := 9295, upper := 9304, witness := RowWitness.topPrime 9293 },
  { lower := 9386, upper := 9428, witness := RowWitness.topPrime 9377 },
  { lower := 9537, upper := 9575, witness := RowWitness.topPrime 9533 },
  { lower := 9583, upper := 9590, witness := RowWitness.topPrime 9551 },
  { lower := 9604, upper := 9654, witness := RowWitness.topPrime 9601 },
  { lower := 9655, upper := 9657, witness := RowWitness.topPrime 9649 },
  { lower := 10000, upper := 10000, witness := RowWitness.topPrime 9973 },
  { lower := 10051, upper := 10053, witness := RowWitness.topPrime 10039 },
  { lower := 10086, upper := 10132, witness := RowWitness.topPrime 10079 },
  { lower := 10133, upper := 10145, witness := RowWitness.topPrime 10133 },
  { lower := 10290, upper := 10293, witness := RowWitness.topPrime 10289 },
  { lower := 10580, upper := 10620, witness := RowWitness.topPrime 10567 },
  { lower := 10621, upper := 10666, witness := RowWitness.topPrime 10613 },
  { lower := 10667, upper := 10686, witness := RowWitness.topPrime 10667 },
  { lower := 10952, upper := 11002, witness := RowWitness.topPrime 10949 },
  { lower := 11003, upper := 11029, witness := RowWitness.topPrime 11003 },
  { lower := 11094, upper := 11098, witness := RowWitness.topPrime 11093 },
  { lower := 11109, upper := 11146, witness := RowWitness.topPrime 11093 },
  { lower := 11147, upper := 11147, witness := RowWitness.topPrime 11131 },
  { lower := 11236, upper := 11244, witness := RowWitness.topPrime 11213 },
  { lower := 11250, upper := 11296, witness := RowWitness.topPrime 11243 },
  { lower := 11297, upper := 11303, witness := RowWitness.topPrime 11287 },
  { lower := 11774, upper := 11796, witness := RowWitness.topPrime 11743 },
  { lower := 11797, upper := 11820, witness := RowWitness.topPrime 11789 },
  { lower := 12005, upper := 12032, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12341, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12546, witness := RowWitness.topPrime 12497 },
  { lower := 13225, upper := 13235, witness := RowWitness.topPrime 13219 },
  { lower := 13254, upper := 13278, witness := RowWitness.topPrime 13249 },
  { lower := 13312, upper := 13362, witness := RowWitness.topPrime 13309 },
  { lower := 13363, upper := 13363, witness := RowWitness.topPrime 13339 },
  { lower := 13454, upper := 13504, witness := RowWitness.topPrime 13451 },
  { lower := 13505, upper := 13507, witness := RowWitness.topPrime 13499 },
  { lower := 13718, upper := 13743, witness := RowWitness.topPrime 13711 },
  { lower := 13750, upper := 13782, witness := RowWitness.topPrime 13729 },
  { lower := 13783, upper := 13803, witness := RowWitness.topPrime 13781 },
  { lower := 14297, upper := 14346, witness := RowWitness.topPrime 14293 },
  { lower := 14347, upper := 14350, witness := RowWitness.topPrime 14347 },
  { lower := 14375, upper := 14389, witness := RowWitness.topPrime 14369 },
  { lower := 14406, upper := 14454, witness := RowWitness.topPrime 14401 },
  { lower := 14455, upper := 14459, witness := RowWitness.topPrime 14449 },
  { lower := 14792, upper := 14792, witness := RowWitness.topPrime 14783 },
  { lower := 14812, upper := 14845, witness := RowWitness.topPrime 14797 },
  { lower := 15138, upper := 15182, witness := RowWitness.topPrime 15137 },
  { lower := 15360, upper := 15412, witness := RowWitness.topPrime 15359 },
  { lower := 15413, upper := 15429, witness := RowWitness.topPrime 15413 },
  { lower := 15979, upper := 16025, witness := RowWitness.topPrime 15973 },
  { lower := 16384, upper := 16390, witness := RowWitness.topPrime 16381 },
  { lower := 16399, upper := 16434, witness := RowWitness.topPrime 16381 },
  { lower := 16435, upper := 16452, witness := RowWitness.topPrime 16433 },
  { lower := 16810, upper := 16840, witness := RowWitness.topPrime 16787 },
  { lower := 16841, upper := 16873, witness := RowWitness.topPrime 16831 },
  { lower := 16875, upper := 16907, witness := RowWitness.topPrime 16871 },
  { lower := 17303, upper := 17351, witness := RowWitness.topPrime 17299 },
  { lower := 17672, upper := 17714, witness := RowWitness.topPrime 17669 },
  { lower := 18491, upper := 18534, witness := RowWitness.topPrime 18481 },
  { lower := 18535, upper := 18544, witness := RowWitness.topPrime 18523 },
  { lower := 19208, upper := 19260, witness := RowWitness.topPrime 19207 },
  { lower := 19261, upper := 19261, witness := RowWitness.topPrime 19259 },
  { lower := 19375, upper := 19396, witness := RowWitness.topPrime 19373 },
  { lower := 19663, upper := 19714, witness := RowWitness.topPrime 19661 },
  { lower := 19715, upper := 19716, witness := RowWitness.topPrime 19709 },
  { lower := 20181, upper := 20230, witness := RowWitness.topPrime 20177 },
  { lower := 20231, upper := 20234, witness := RowWitness.topPrime 20231 },
  { lower := 20577, upper := 20588, witness := RowWitness.topPrime 20563 },
  { lower := 21866, upper := 21916, witness := RowWitness.topPrime 21863 },
  { lower := 21917, upper := 21928, witness := RowWitness.topPrime 21911 },
  { lower := 22103, upper := 22143, witness := RowWitness.topPrime 22093 },
  { lower := 23548, upper := 23587, witness := RowWitness.topPrime 23539 },
  { lower := 24010, upper := 24011, witness := RowWitness.topPrime 24007 },
  { lower := 24025, upper := 24076, witness := RowWitness.topPrime 24023 },
  { lower := 24077, upper := 24078, witness := RowWitness.topPrime 24077 },
  { lower := 24334, upper := 24352, witness := RowWitness.topPrime 24329 },
  { lower := 24576, upper := 24618, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25039, witness := RowWitness.topPrime 24989 },
  { lower := 25289, upper := 25314, witness := RowWitness.topPrime 25261 },
  { lower := 25315, upper := 25334, witness := RowWitness.topPrime 25309 },
  { lower := 26411, upper := 26417, witness := RowWitness.topPrime 26407 },
  { lower := 26624, upper := 26650, witness := RowWitness.topPrime 26597 },
  { lower := 26651, upper := 26673, witness := RowWitness.topPrime 26647 },
  { lower := 26908, upper := 26949, witness := RowWitness.topPrime 26903 },
  { lower := 28125, upper := 28143, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28614, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28725, witness := RowWitness.topPrime 28711 },
  { lower := 28749, upper := 28770, witness := RowWitness.topPrime 28729 },
  { lower := 30926, upper := 30952, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31266, witness := RowWitness.topPrime 31249 },
  { lower := 31944, upper := 31960, witness := RowWitness.topPrime 31907 },
  { lower := 31961, upper := 31992, witness := RowWitness.topPrime 31957 },
  { lower := 33282, upper := 33300, witness := RowWitness.topPrime 33247 },
  { lower := 33301, upper := 33328, witness := RowWitness.topPrime 33301 },
  { lower := 33620, upper := 33667, witness := RowWitness.topPrime 33619 },
  { lower := 34391, upper := 34428, witness := RowWitness.topPrime 34381 },
  { lower := 35152, upper := 35184, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35354, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36550, witness := RowWitness.topPrime 36497 },
  { lower := 36551, upper := 36554, witness := RowWitness.topPrime 36551 },
  { lower := 36980, upper := 37032, witness := RowWitness.topPrime 36979 },
  { lower := 37033, upper := 37033, witness := RowWitness.topPrime 37021 },
  { lower := 37553, upper := 37553, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39357, witness := RowWitness.topPrime 39323 },
  { lower := 40678, upper := 40678, witness := RowWitness.topPrime 40639 },
  { lower := 43750, upper := 43759, witness := RowWitness.topPrime 43721 },
  { lower := 43940, upper := 43976, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44233, witness := RowWitness.topPrime 44207 },
  { lower := 48020, upper := 48066, witness := RowWitness.topPrime 48017 },
  { lower := 49152, upper := 49183, witness := RowWitness.topPrime 49139 },
  { lower := 50562, upper := 50584, witness := RowWitness.topPrime 50551 },
  { lower := 54925, upper := 54925, witness := RowWitness.topPrime 54919 },
  { lower := 55225, upper := 55272, witness := RowWitness.topPrime 55219 },
  { lower := 55273, upper := 55276, witness := RowWitness.topPrime 55259 },
  { lower := 58989, upper := 59009, witness := RowWitness.topPrime 58979 },
  { lower := 68782, upper := 68803, witness := RowWitness.topPrime 68777 },
  { lower := 73034, upper := 73055, witness := RowWitness.topPrime 73019 },
  { lower := 73205, upper := 73220, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73748, witness := RowWitness.topPrime 73727 },
  { lower := 98304, upper := 98313, witness := RowWitness.topPrime 98299 },
  { lower := 327701, upper := 327733, witness := RowWitness.topPrime 327689 }
]

def row054_layers : List CoverLayer := [
  { lower := 2862, upper := 5724, M := 36 },
  { lower := 5724, upper := 11448, M := 33 },
  { lower := 11448, upper := 22896, M := 31 },
  { lower := 22896, upper := 45792, M := 29 },
  { lower := 45792, upper := 91584, M := 27 },
  { lower := 91584, upper := 183168, M := 25 },
  { lower := 183168, upper := 366336, M := 23 },
  { lower := 366336, upper := 732672, M := 21 },
  { lower := 732672, upper := 1465344, M := 20 },
  { lower := 1465344, upper := 2930688, M := 18 },
  { lower := 2930688, upper := 5861376, M := 17 },
  { lower := 5861376, upper := 11722752, M := 16 },
  { lower := 11722752, upper := 23445504, M := 15 },
  { lower := 23445504, upper := 46891008, M := 14 },
  { lower := 46891008, upper := 93782016, M := 13 },
  { lower := 93782016, upper := 187564032, M := 12 },
  { lower := 187564032, upper := 375128064, M := 11 },
  { lower := 375128064, upper := 750256128, M := 10 },
  { lower := 750256128, upper := 1500512256, M := 9 },
  { lower := 1500512256, upper := 3001024512, M := 9 },
  { lower := 3001024512, upper := 6002049024, M := 8 },
  { lower := 6002049024, upper := 12004098048, M := 8 },
  { lower := 12004098048, upper := 24008196096, M := 7 },
  { lower := 24008196096, upper := 48016392192, M := 7 },
  { lower := 48016392192, upper := 96032784384, M := 6 },
  { lower := 96032784384, upper := 192065568768, M := 6 },
  { lower := 192065568768, upper := 384131137536, M := 5 },
  { lower := 384131137536, upper := 768262275072, M := 5 },
  { lower := 768262275072, upper := 1536524550144, M := 5 },
  { lower := 1536524550144, upper := 3073049100288, M := 4 },
  { lower := 3073049100288, upper := 6146098200576, M := 4 },
  { lower := 6146098200576, upper := 12292196401152, M := 4 },
  { lower := 12292196401152, upper := 24584392802304, M := 4 },
  { lower := 24584392802304, upper := 49168785604608, M := 3 },
  { lower := 49168785604608, upper := 98337571209216, M := 3 },
  { lower := 98337571209216, upper := 196675142418432, M := 3 },
  { lower := 196675142418432, upper := 393350284836864, M := 3 },
  { lower := 393350284836864, upper := 786700569673728, M := 3 },
  { lower := 786700569673728, upper := 1573401139347456, M := 2 },
  { lower := 1573401139347456, upper := 3146802278694912, M := 2 },
  { lower := 3146802278694912, upper := 6293604557389824, M := 2 },
  { lower := 6293604557389824, upper := 12587209114779648, M := 2 },
  { lower := 12587209114779648, upper := 25174418229559296, M := 2 },
  { lower := 25174418229559296, upper := 50348836459118592, M := 2 },
  { lower := 50348836459118592, upper := 100697672918237184, M := 2 },
  { lower := 100697672918237184, upper := 201395345836474368, M := 2 },
  { lower := 201395345836474368, upper := 402790691672948736, M := 2 },
  { lower := 402790691672948736, upper := 805581383345897472, M := 1 },
  { lower := 805581383345897472, upper := 1000000000000000000, M := 1 }
]

def row054 : FiniteCoverRow := {
  height := row054_height,
  goods := row054_goods,
  layers := row054_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_good000_checked :
    goodSegmentCheck 54 17 37
      { lower := 110, upper := 162, witness := RowWitness.topPrime 109 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good001_checked :
    goodSegmentCheck 54 17 37
      { lower := 163, upper := 216, witness := RowWitness.topPrime 163 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good002_checked :
    goodSegmentCheck 54 17 37
      { lower := 217, upper := 264, witness := RowWitness.topPrime 211 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good003_checked :
    goodSegmentCheck 54 17 37
      { lower := 265, upper := 316, witness := RowWitness.topPrime 263 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good004_checked :
    goodSegmentCheck 54 17 37
      { lower := 317, upper := 370, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good005_checked :
    goodSegmentCheck 54 17 37
      { lower := 371, upper := 420, witness := RowWitness.topPrime 367 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good006_checked :
    goodSegmentCheck 54 17 37
      { lower := 421, upper := 474, witness := RowWitness.topPrime 421 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good007_checked :
    goodSegmentCheck 54 17 37
      { lower := 475, upper := 520, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good008_checked :
    goodSegmentCheck 54 17 37
      { lower := 521, upper := 574, witness := RowWitness.topPrime 521 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good009_checked :
    goodSegmentCheck 54 17 37
      { lower := 575, upper := 624, witness := RowWitness.topPrime 571 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good010_checked :
    goodSegmentCheck 54 17 37
      { lower := 625, upper := 672, witness := RowWitness.topPrime 619 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good011_checked :
    goodSegmentCheck 54 17 37
      { lower := 673, upper := 726, witness := RowWitness.topPrime 673 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good012_checked :
    goodSegmentCheck 54 17 37
      { lower := 727, upper := 780, witness := RowWitness.topPrime 727 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good013_checked :
    goodSegmentCheck 54 17 37
      { lower := 781, upper := 826, witness := RowWitness.topPrime 773 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good014_checked :
    goodSegmentCheck 54 17 37
      { lower := 827, upper := 880, witness := RowWitness.topPrime 827 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good015_checked :
    goodSegmentCheck 54 17 37
      { lower := 881, upper := 934, witness := RowWitness.topPrime 881 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_good016_checked :
    goodSegmentCheck 54 17 37
      { lower := 935, upper := 982, witness := RowWitness.topPrime 929 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good017_checked :
    goodSegmentCheck 54 17 37
      { lower := 983, upper := 1036, witness := RowWitness.topPrime 983 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good018_checked :
    goodSegmentCheck 54 17 37
      { lower := 1037, upper := 1086, witness := RowWitness.topPrime 1033 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good019_checked :
    goodSegmentCheck 54 17 37
      { lower := 1087, upper := 1140, witness := RowWitness.topPrime 1087 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good020_checked :
    goodSegmentCheck 54 17 37
      { lower := 1141, upper := 1182, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good021_checked :
    goodSegmentCheck 54 17 37
      { lower := 1183, upper := 1234, witness := RowWitness.topPrime 1181 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good022_checked :
    goodSegmentCheck 54 17 37
      { lower := 1235, upper := 1284, witness := RowWitness.topPrime 1231 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good023_checked :
    goodSegmentCheck 54 17 37
      { lower := 1285, upper := 1336, witness := RowWitness.topPrime 1283 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good024_checked :
    goodSegmentCheck 54 17 37
      { lower := 1337, upper := 1380, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good025_checked :
    goodSegmentCheck 54 17 37
      { lower := 1381, upper := 1434, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good026_checked :
    goodSegmentCheck 54 17 37
      { lower := 1435, upper := 1486, witness := RowWitness.topPrime 1433 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good027_checked :
    goodSegmentCheck 54 17 37
      { lower := 1487, upper := 1540, witness := RowWitness.topPrime 1487 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good028_checked :
    goodSegmentCheck 54 17 37
      { lower := 1541, upper := 1584, witness := RowWitness.topPrime 1531 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good029_checked :
    goodSegmentCheck 54 17 37
      { lower := 1585, upper := 1636, witness := RowWitness.topPrime 1583 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good030_checked :
    goodSegmentCheck 54 17 37
      { lower := 1637, upper := 1690, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good031_checked :
    goodSegmentCheck 54 17 37
      { lower := 1691, upper := 1722, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_good032_checked :
    goodSegmentCheck 54 17 37
      { lower := 1723, upper := 1776, witness := RowWitness.topPrime 1723 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good033_checked :
    goodSegmentCheck 54 17 37
      { lower := 1777, upper := 1830, witness := RowWitness.topPrime 1777 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good034_checked :
    goodSegmentCheck 54 17 37
      { lower := 1831, upper := 1884, witness := RowWitness.topPrime 1831 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good035_checked :
    goodSegmentCheck 54 17 37
      { lower := 1885, upper := 1932, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good036_checked :
    goodSegmentCheck 54 17 37
      { lower := 1933, upper := 1986, witness := RowWitness.topPrime 1933 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good037_checked :
    goodSegmentCheck 54 17 37
      { lower := 1987, upper := 2040, witness := RowWitness.topPrime 1987 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good038_checked :
    goodSegmentCheck 54 17 37
      { lower := 2041, upper := 2092, witness := RowWitness.topPrime 2039 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good039_checked :
    goodSegmentCheck 54 17 37
      { lower := 2093, upper := 2142, witness := RowWitness.topPrime 2089 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good040_checked :
    goodSegmentCheck 54 17 37
      { lower := 2143, upper := 2196, witness := RowWitness.topPrime 2143 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good041_checked :
    goodSegmentCheck 54 17 37
      { lower := 2197, upper := 2232, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good042_checked :
    goodSegmentCheck 54 17 37
      { lower := 2233, upper := 2274, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good043_checked :
    goodSegmentCheck 54 17 37
      { lower := 2275, upper := 2326, witness := RowWitness.topPrime 2273 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good044_checked :
    goodSegmentCheck 54 17 37
      { lower := 2327, upper := 2364, witness := RowWitness.topPrime 2311 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good045_checked :
    goodSegmentCheck 54 17 37
      { lower := 2365, upper := 2410, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good046_checked :
    goodSegmentCheck 54 17 37
      { lower := 2411, upper := 2464, witness := RowWitness.topPrime 2411 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good047_checked :
    goodSegmentCheck 54 17 37
      { lower := 2465, upper := 2512, witness := RowWitness.topPrime 2459 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_good048_checked :
    goodSegmentCheck 54 17 37
      { lower := 2513, upper := 2556, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good049_checked :
    goodSegmentCheck 54 17 37
      { lower := 2557, upper := 2610, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good050_checked :
    goodSegmentCheck 54 17 37
      { lower := 2611, upper := 2662, witness := RowWitness.topPrime 2609 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good051_checked :
    goodSegmentCheck 54 17 37
      { lower := 2663, upper := 2716, witness := RowWitness.topPrime 2663 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good052_checked :
    goodSegmentCheck 54 17 37
      { lower := 2717, upper := 2766, witness := RowWitness.topPrime 2713 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good053_checked :
    goodSegmentCheck 54 17 37
      { lower := 2767, upper := 2820, witness := RowWitness.topPrime 2767 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good054_checked :
    goodSegmentCheck 54 17 37
      { lower := 2821, upper := 2862, witness := RowWitness.topPrime 2819 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good055_checked :
    goodSegmentCheck 54 17 37
      { lower := 2875, upper := 2914, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good056_checked :
    goodSegmentCheck 54 17 37
      { lower := 2915, upper := 2943, witness := RowWitness.topPrime 2909 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good057_checked :
    goodSegmentCheck 54 17 37
      { lower := 3025, upper := 3076, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good058_checked :
    goodSegmentCheck 54 17 37
      { lower := 3077, upper := 3120, witness := RowWitness.topPrime 3067 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good059_checked :
    goodSegmentCheck 54 17 37
      { lower := 3121, upper := 3140, witness := RowWitness.topPrime 3121 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good060_checked :
    goodSegmentCheck 54 17 37
      { lower := 3146, upper := 3190, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good061_checked :
    goodSegmentCheck 54 17 37
      { lower := 3191, upper := 3232, witness := RowWitness.topPrime 3191 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good062_checked :
    goodSegmentCheck 54 17 37
      { lower := 3249, upper := 3282, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good063_checked :
    goodSegmentCheck 54 17 37
      { lower := 3283, upper := 3303, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_good064_checked :
    goodSegmentCheck 54 17 37
      { lower := 3362, upper := 3414, witness := RowWitness.topPrime 3361 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good065_checked :
    goodSegmentCheck 54 17 37
      { lower := 3415, upper := 3441, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good066_checked :
    goodSegmentCheck 54 17 37
      { lower := 3468, upper := 3483, witness := RowWitness.topPrime 3467 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good067_checked :
    goodSegmentCheck 54 17 37
      { lower := 3500, upper := 3552, witness := RowWitness.topPrime 3499 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good068_checked :
    goodSegmentCheck 54 17 37
      { lower := 3553, upper := 3562, witness := RowWitness.topPrime 3547 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good069_checked :
    goodSegmentCheck 54 17 37
      { lower := 3584, upper := 3602, witness := RowWitness.topPrime 3583 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good070_checked :
    goodSegmentCheck 54 17 37
      { lower := 3610, upper := 3660, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good071_checked :
    goodSegmentCheck 54 17 37
      { lower := 3661, upper := 3678, witness := RowWitness.topPrime 3659 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good072_checked :
    goodSegmentCheck 54 17 37
      { lower := 3703, upper := 3754, witness := RowWitness.topPrime 3701 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good073_checked :
    goodSegmentCheck 54 17 37
      { lower := 3755, upper := 3792, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good074_checked :
    goodSegmentCheck 54 17 37
      { lower := 3793, upper := 3810, witness := RowWitness.topPrime 3793 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good075_checked :
    goodSegmentCheck 54 17 37
      { lower := 3844, upper := 3886, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good076_checked :
    goodSegmentCheck 54 17 37
      { lower := 3887, upper := 3928, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good077_checked :
    goodSegmentCheck 54 17 37
      { lower := 3993, upper := 4042, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good078_checked :
    goodSegmentCheck 54 17 37
      { lower := 4043, upper := 4053, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good079_checked :
    goodSegmentCheck 54 17 37
      { lower := 4056, upper := 4104, witness := RowWitness.topPrime 4051 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_good080_checked :
    goodSegmentCheck 54 17 37
      { lower := 4105, upper := 4152, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good081_checked :
    goodSegmentCheck 54 17 37
      { lower := 4153, upper := 4169, witness := RowWitness.topPrime 4153 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good082_checked :
    goodSegmentCheck 54 17 37
      { lower := 4225, upper := 4272, witness := RowWitness.topPrime 4219 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good083_checked :
    goodSegmentCheck 54 17 37
      { lower := 4273, upper := 4288, witness := RowWitness.topPrime 4273 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good084_checked :
    goodSegmentCheck 54 17 37
      { lower := 4335, upper := 4380, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good085_checked :
    goodSegmentCheck 54 17 37
      { lower := 4381, upper := 4426, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good086_checked :
    goodSegmentCheck 54 17 37
      { lower := 4427, upper := 4447, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good087_checked :
    goodSegmentCheck 54 17 37
      { lower := 4459, upper := 4471, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good088_checked :
    goodSegmentCheck 54 17 37
      { lower := 4500, upper := 4512, witness := RowWitness.topPrime 4493 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good089_checked :
    goodSegmentCheck 54 17 37
      { lower := 4608, upper := 4616, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good090_checked :
    goodSegmentCheck 54 17 37
      { lower := 4624, upper := 4661, witness := RowWitness.topPrime 4621 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good091_checked :
    goodSegmentCheck 54 17 37
      { lower := 4732, upper := 4746, witness := RowWitness.topPrime 4729 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good092_checked :
    goodSegmentCheck 54 17 37
      { lower := 4761, upper := 4785, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good093_checked :
    goodSegmentCheck 54 17 37
      { lower := 4802, upper := 4854, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good094_checked :
    goodSegmentCheck 54 17 37
      { lower := 4855, upper := 4855, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good095_checked :
    goodSegmentCheck 54 17 37
      { lower := 4913, upper := 4954, witness := RowWitness.topPrime 4909 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_good096_checked :
    goodSegmentCheck 54 17 37
      { lower := 5043, upper := 5092, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good097_checked :
    goodSegmentCheck 54 17 37
      { lower := 5093, upper := 5107, witness := RowWitness.topPrime 5087 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good098_checked :
    goodSegmentCheck 54 17 37
      { lower := 5120, upper := 5123, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good099_checked :
    goodSegmentCheck 54 17 37
      { lower := 5145, upper := 5172, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good100_checked :
    goodSegmentCheck 54 17 37
      { lower := 5173, upper := 5173, witness := RowWitness.topPrime 5171 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good101_checked :
    goodSegmentCheck 54 17 37
      { lower := 5239, upper := 5255, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good102_checked :
    goodSegmentCheck 54 17 37
      { lower := 5290, upper := 5292, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good103_checked :
    goodSegmentCheck 54 17 37
      { lower := 5324, upper := 5343, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good104_checked :
    goodSegmentCheck 54 17 37
      { lower := 5415, upper := 5461, witness := RowWitness.topPrime 5413 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good105_checked :
    goodSegmentCheck 54 17 37
      { lower := 5488, upper := 5536, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good106_checked :
    goodSegmentCheck 54 17 37
      { lower := 5537, upper := 5541, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good107_checked :
    goodSegmentCheck 54 17 37
      { lower := 5577, upper := 5600, witness := RowWitness.topPrime 5573 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good108_checked :
    goodSegmentCheck 54 17 37
      { lower := 5618, upper := 5644, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good109_checked :
    goodSegmentCheck 54 17 37
      { lower := 5645, upper := 5678, witness := RowWitness.topPrime 5641 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good110_checked :
    goodSegmentCheck 54 17 37
      { lower := 5776, upper := 5802, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good111_checked :
    goodSegmentCheck 54 17 37
      { lower := 5803, upper := 5854, witness := RowWitness.topPrime 5801 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_good112_checked :
    goodSegmentCheck 54 17 37
      { lower := 5855, upper := 5872, witness := RowWitness.topPrime 5851 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good113_checked :
    goodSegmentCheck 54 17 37
      { lower := 6144, upper := 6196, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good114_checked :
    goodSegmentCheck 54 17 37
      { lower := 6197, upper := 6197, witness := RowWitness.topPrime 6197 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good115_checked :
    goodSegmentCheck 54 17 37
      { lower := 6358, upper := 6401, witness := RowWitness.topPrime 6353 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good116_checked :
    goodSegmentCheck 54 17 37
      { lower := 6517, upper := 6544, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good117_checked :
    goodSegmentCheck 54 17 37
      { lower := 6545, upper := 6551, witness := RowWitness.topPrime 6529 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good118_checked :
    goodSegmentCheck 54 17 37
      { lower := 6561, upper := 6570, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good119_checked :
    goodSegmentCheck 54 17 37
      { lower := 6591, upper := 6614, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good120_checked :
    goodSegmentCheck 54 17 37
      { lower := 6627, upper := 6644, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good121_checked :
    goodSegmentCheck 54 17 37
      { lower := 6647, upper := 6690, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good122_checked :
    goodSegmentCheck 54 17 37
      { lower := 6691, upper := 6708, witness := RowWitness.topPrime 6691 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good123_checked :
    goodSegmentCheck 54 17 37
      { lower := 6727, upper := 6772, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good124_checked :
    goodSegmentCheck 54 17 37
      { lower := 6773, upper := 6780, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good125_checked :
    goodSegmentCheck 54 17 37
      { lower := 6859, upper := 6910, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good126_checked :
    goodSegmentCheck 54 17 37
      { lower := 6911, upper := 6928, witness := RowWitness.topPrime 6911 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good127_checked :
    goodSegmentCheck 54 17 37
      { lower := 7203, upper := 7246, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_good128_checked :
    goodSegmentCheck 54 17 37
      { lower := 7247, upper := 7273, witness := RowWitness.topPrime 7247 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good129_checked :
    goodSegmentCheck 54 17 37
      { lower := 7406, upper := 7446, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good130_checked :
    goodSegmentCheck 54 17 37
      { lower := 7447, upper := 7449, witness := RowWitness.topPrime 7433 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good131_checked :
    goodSegmentCheck 54 17 37
      { lower := 7514, upper := 7560, witness := RowWitness.topPrime 7507 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good132_checked :
    goodSegmentCheck 54 17 37
      { lower := 7561, upper := 7567, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good133_checked :
    goodSegmentCheck 54 17 37
      { lower := 7569, upper := 7614, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good134_checked :
    goodSegmentCheck 54 17 37
      { lower := 7615, upper := 7622, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good135_checked :
    goodSegmentCheck 54 17 37
      { lower := 7688, upper := 7733, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good136_checked :
    goodSegmentCheck 54 17 37
      { lower := 7935, upper := 7986, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good137_checked :
    goodSegmentCheck 54 17 37
      { lower := 7987, upper := 7995, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good138_checked :
    goodSegmentCheck 54 17 37
      { lower := 8125, upper := 8145, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good139_checked :
    goodSegmentCheck 54 17 37
      { lower := 8214, upper := 8262, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good140_checked :
    goodSegmentCheck 54 17 37
      { lower := 8263, upper := 8267, witness := RowWitness.topPrime 8263 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good141_checked :
    goodSegmentCheck 54 17 37
      { lower := 8405, upper := 8442, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good142_checked :
    goodSegmentCheck 54 17 37
      { lower := 8443, upper := 8480, witness := RowWitness.topPrime 8443 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good143_checked :
    goodSegmentCheck 54 17 37
      { lower := 8664, upper := 8716, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_good144_checked :
    goodSegmentCheck 54 17 37
      { lower := 8717, upper := 8717, witness := RowWitness.topPrime 8713 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good145_checked :
    goodSegmentCheck 54 17 37
      { lower := 8788, upper := 8803, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good146_checked :
    goodSegmentCheck 54 17 37
      { lower := 8836, upper := 8841, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good147_checked :
    goodSegmentCheck 54 17 37
      { lower := 8959, upper := 8971, witness := RowWitness.topPrime 8951 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good148_checked :
    goodSegmentCheck 54 17 37
      { lower := 8993, upper := 9012, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good149_checked :
    goodSegmentCheck 54 17 37
      { lower := 9025, upper := 9046, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good150_checked :
    goodSegmentCheck 54 17 37
      { lower := 9245, upper := 9294, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good151_checked :
    goodSegmentCheck 54 17 37
      { lower := 9295, upper := 9304, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good152_checked :
    goodSegmentCheck 54 17 37
      { lower := 9386, upper := 9428, witness := RowWitness.topPrime 9377 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good153_checked :
    goodSegmentCheck 54 17 37
      { lower := 9537, upper := 9575, witness := RowWitness.topPrime 9533 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good154_checked :
    goodSegmentCheck 54 17 37
      { lower := 9583, upper := 9590, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good155_checked :
    goodSegmentCheck 54 17 37
      { lower := 9604, upper := 9654, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good156_checked :
    goodSegmentCheck 54 17 37
      { lower := 9655, upper := 9657, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good157_checked :
    goodSegmentCheck 54 17 37
      { lower := 10000, upper := 10000, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good158_checked :
    goodSegmentCheck 54 17 37
      { lower := 10051, upper := 10053, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good159_checked :
    goodSegmentCheck 54 17 37
      { lower := 10086, upper := 10132, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_good160_checked :
    goodSegmentCheck 54 17 37
      { lower := 10133, upper := 10145, witness := RowWitness.topPrime 10133 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good161_checked :
    goodSegmentCheck 54 17 37
      { lower := 10290, upper := 10293, witness := RowWitness.topPrime 10289 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good162_checked :
    goodSegmentCheck 54 17 37
      { lower := 10580, upper := 10620, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good163_checked :
    goodSegmentCheck 54 17 37
      { lower := 10621, upper := 10666, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good164_checked :
    goodSegmentCheck 54 17 37
      { lower := 10667, upper := 10686, witness := RowWitness.topPrime 10667 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good165_checked :
    goodSegmentCheck 54 17 37
      { lower := 10952, upper := 11002, witness := RowWitness.topPrime 10949 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good166_checked :
    goodSegmentCheck 54 17 37
      { lower := 11003, upper := 11029, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good167_checked :
    goodSegmentCheck 54 17 37
      { lower := 11094, upper := 11098, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good168_checked :
    goodSegmentCheck 54 17 37
      { lower := 11109, upper := 11146, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good169_checked :
    goodSegmentCheck 54 17 37
      { lower := 11147, upper := 11147, witness := RowWitness.topPrime 11131 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good170_checked :
    goodSegmentCheck 54 17 37
      { lower := 11236, upper := 11244, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good171_checked :
    goodSegmentCheck 54 17 37
      { lower := 11250, upper := 11296, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good172_checked :
    goodSegmentCheck 54 17 37
      { lower := 11297, upper := 11303, witness := RowWitness.topPrime 11287 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good173_checked :
    goodSegmentCheck 54 17 37
      { lower := 11774, upper := 11796, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good174_checked :
    goodSegmentCheck 54 17 37
      { lower := 11797, upper := 11820, witness := RowWitness.topPrime 11789 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good175_checked :
    goodSegmentCheck 54 17 37
      { lower := 12005, upper := 12032, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_good176_checked :
    goodSegmentCheck 54 17 37
      { lower := 12321, upper := 12341, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good177_checked :
    goodSegmentCheck 54 17 37
      { lower := 12500, upper := 12546, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good178_checked :
    goodSegmentCheck 54 17 37
      { lower := 13225, upper := 13235, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good179_checked :
    goodSegmentCheck 54 17 37
      { lower := 13254, upper := 13278, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good180_checked :
    goodSegmentCheck 54 17 37
      { lower := 13312, upper := 13362, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good181_checked :
    goodSegmentCheck 54 17 37
      { lower := 13363, upper := 13363, witness := RowWitness.topPrime 13339 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good182_checked :
    goodSegmentCheck 54 17 37
      { lower := 13454, upper := 13504, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good183_checked :
    goodSegmentCheck 54 17 37
      { lower := 13505, upper := 13507, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good184_checked :
    goodSegmentCheck 54 17 37
      { lower := 13718, upper := 13743, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good185_checked :
    goodSegmentCheck 54 17 37
      { lower := 13750, upper := 13782, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good186_checked :
    goodSegmentCheck 54 17 37
      { lower := 13783, upper := 13803, witness := RowWitness.topPrime 13781 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good187_checked :
    goodSegmentCheck 54 17 37
      { lower := 14297, upper := 14346, witness := RowWitness.topPrime 14293 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good188_checked :
    goodSegmentCheck 54 17 37
      { lower := 14347, upper := 14350, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good189_checked :
    goodSegmentCheck 54 17 37
      { lower := 14375, upper := 14389, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good190_checked :
    goodSegmentCheck 54 17 37
      { lower := 14406, upper := 14454, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good191_checked :
    goodSegmentCheck 54 17 37
      { lower := 14455, upper := 14459, witness := RowWitness.topPrime 14449 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_good192_checked :
    goodSegmentCheck 54 17 37
      { lower := 14792, upper := 14792, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good193_checked :
    goodSegmentCheck 54 17 37
      { lower := 14812, upper := 14845, witness := RowWitness.topPrime 14797 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good194_checked :
    goodSegmentCheck 54 17 37
      { lower := 15138, upper := 15182, witness := RowWitness.topPrime 15137 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good195_checked :
    goodSegmentCheck 54 17 37
      { lower := 15360, upper := 15412, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good196_checked :
    goodSegmentCheck 54 17 37
      { lower := 15413, upper := 15429, witness := RowWitness.topPrime 15413 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good197_checked :
    goodSegmentCheck 54 17 37
      { lower := 15979, upper := 16025, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good198_checked :
    goodSegmentCheck 54 17 37
      { lower := 16384, upper := 16390, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good199_checked :
    goodSegmentCheck 54 17 37
      { lower := 16399, upper := 16434, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good200_checked :
    goodSegmentCheck 54 17 37
      { lower := 16435, upper := 16452, witness := RowWitness.topPrime 16433 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good201_checked :
    goodSegmentCheck 54 17 37
      { lower := 16810, upper := 16840, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good202_checked :
    goodSegmentCheck 54 17 37
      { lower := 16841, upper := 16873, witness := RowWitness.topPrime 16831 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good203_checked :
    goodSegmentCheck 54 17 37
      { lower := 16875, upper := 16907, witness := RowWitness.topPrime 16871 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good204_checked :
    goodSegmentCheck 54 17 37
      { lower := 17303, upper := 17351, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good205_checked :
    goodSegmentCheck 54 17 37
      { lower := 17672, upper := 17714, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good206_checked :
    goodSegmentCheck 54 17 37
      { lower := 18491, upper := 18534, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good207_checked :
    goodSegmentCheck 54 17 37
      { lower := 18535, upper := 18544, witness := RowWitness.topPrime 18523 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_good208_checked :
    goodSegmentCheck 54 17 37
      { lower := 19208, upper := 19260, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good209_checked :
    goodSegmentCheck 54 17 37
      { lower := 19261, upper := 19261, witness := RowWitness.topPrime 19259 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good210_checked :
    goodSegmentCheck 54 17 37
      { lower := 19375, upper := 19396, witness := RowWitness.topPrime 19373 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good211_checked :
    goodSegmentCheck 54 17 37
      { lower := 19663, upper := 19714, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good212_checked :
    goodSegmentCheck 54 17 37
      { lower := 19715, upper := 19716, witness := RowWitness.topPrime 19709 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good213_checked :
    goodSegmentCheck 54 17 37
      { lower := 20181, upper := 20230, witness := RowWitness.topPrime 20177 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good214_checked :
    goodSegmentCheck 54 17 37
      { lower := 20231, upper := 20234, witness := RowWitness.topPrime 20231 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good215_checked :
    goodSegmentCheck 54 17 37
      { lower := 20577, upper := 20588, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good216_checked :
    goodSegmentCheck 54 17 37
      { lower := 21866, upper := 21916, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good217_checked :
    goodSegmentCheck 54 17 37
      { lower := 21917, upper := 21928, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good218_checked :
    goodSegmentCheck 54 17 37
      { lower := 22103, upper := 22143, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good219_checked :
    goodSegmentCheck 54 17 37
      { lower := 23548, upper := 23587, witness := RowWitness.topPrime 23539 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good220_checked :
    goodSegmentCheck 54 17 37
      { lower := 24010, upper := 24011, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good221_checked :
    goodSegmentCheck 54 17 37
      { lower := 24025, upper := 24076, witness := RowWitness.topPrime 24023 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good222_checked :
    goodSegmentCheck 54 17 37
      { lower := 24077, upper := 24078, witness := RowWitness.topPrime 24077 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good223_checked :
    goodSegmentCheck 54 17 37
      { lower := 24334, upper := 24352, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_good224_checked :
    goodSegmentCheck 54 17 37
      { lower := 24576, upper := 24618, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good225_checked :
    goodSegmentCheck 54 17 37
      { lower := 25000, upper := 25039, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good226_checked :
    goodSegmentCheck 54 17 37
      { lower := 25289, upper := 25314, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good227_checked :
    goodSegmentCheck 54 17 37
      { lower := 25315, upper := 25334, witness := RowWitness.topPrime 25309 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good228_checked :
    goodSegmentCheck 54 17 37
      { lower := 26411, upper := 26417, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good229_checked :
    goodSegmentCheck 54 17 37
      { lower := 26624, upper := 26650, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good230_checked :
    goodSegmentCheck 54 17 37
      { lower := 26651, upper := 26673, witness := RowWitness.topPrime 26647 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good231_checked :
    goodSegmentCheck 54 17 37
      { lower := 26908, upper := 26949, witness := RowWitness.topPrime 26903 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good232_checked :
    goodSegmentCheck 54 17 37
      { lower := 28125, upper := 28143, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good233_checked :
    goodSegmentCheck 54 17 37
      { lower := 28577, upper := 28614, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good234_checked :
    goodSegmentCheck 54 17 37
      { lower := 28717, upper := 28725, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good235_checked :
    goodSegmentCheck 54 17 37
      { lower := 28749, upper := 28770, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good236_checked :
    goodSegmentCheck 54 17 37
      { lower := 30926, upper := 30952, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good237_checked :
    goodSegmentCheck 54 17 37
      { lower := 31250, upper := 31266, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good238_checked :
    goodSegmentCheck 54 17 37
      { lower := 31944, upper := 31960, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good239_checked :
    goodSegmentCheck 54 17 37
      { lower := 31961, upper := 31992, witness := RowWitness.topPrime 31957 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_good240_checked :
    goodSegmentCheck 54 17 37
      { lower := 33282, upper := 33300, witness := RowWitness.topPrime 33247 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good241_checked :
    goodSegmentCheck 54 17 37
      { lower := 33301, upper := 33328, witness := RowWitness.topPrime 33301 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good242_checked :
    goodSegmentCheck 54 17 37
      { lower := 33620, upper := 33667, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good243_checked :
    goodSegmentCheck 54 17 37
      { lower := 34391, upper := 34428, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good244_checked :
    goodSegmentCheck 54 17 37
      { lower := 35152, upper := 35184, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good245_checked :
    goodSegmentCheck 54 17 37
      { lower := 35344, upper := 35354, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good246_checked :
    goodSegmentCheck 54 17 37
      { lower := 36517, upper := 36550, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good247_checked :
    goodSegmentCheck 54 17 37
      { lower := 36551, upper := 36554, witness := RowWitness.topPrime 36551 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good248_checked :
    goodSegmentCheck 54 17 37
      { lower := 36980, upper := 37032, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good249_checked :
    goodSegmentCheck 54 17 37
      { lower := 37033, upper := 37033, witness := RowWitness.topPrime 37021 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good250_checked :
    goodSegmentCheck 54 17 37
      { lower := 37553, upper := 37553, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good251_checked :
    goodSegmentCheck 54 17 37
      { lower := 39326, upper := 39357, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good252_checked :
    goodSegmentCheck 54 17 37
      { lower := 40678, upper := 40678, witness := RowWitness.topPrime 40639 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good253_checked :
    goodSegmentCheck 54 17 37
      { lower := 43750, upper := 43759, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good254_checked :
    goodSegmentCheck 54 17 37
      { lower := 43940, upper := 43976, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good255_checked :
    goodSegmentCheck 54 17 37
      { lower := 44217, upper := 44233, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_good256_checked :
    goodSegmentCheck 54 17 37
      { lower := 48020, upper := 48066, witness := RowWitness.topPrime 48017 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good257_checked :
    goodSegmentCheck 54 17 37
      { lower := 49152, upper := 49183, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good258_checked :
    goodSegmentCheck 54 17 37
      { lower := 50562, upper := 50584, witness := RowWitness.topPrime 50551 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good259_checked :
    goodSegmentCheck 54 17 37
      { lower := 54925, upper := 54925, witness := RowWitness.topPrime 54919 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good260_checked :
    goodSegmentCheck 54 17 37
      { lower := 55225, upper := 55272, witness := RowWitness.topPrime 55219 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good261_checked :
    goodSegmentCheck 54 17 37
      { lower := 55273, upper := 55276, witness := RowWitness.topPrime 55259 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good262_checked :
    goodSegmentCheck 54 17 37
      { lower := 58989, upper := 59009, witness := RowWitness.topPrime 58979 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good263_checked :
    goodSegmentCheck 54 17 37
      { lower := 68782, upper := 68803, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good264_checked :
    goodSegmentCheck 54 17 37
      { lower := 73034, upper := 73055, witness := RowWitness.topPrime 73019 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good265_checked :
    goodSegmentCheck 54 17 37
      { lower := 73205, upper := 73220, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good266_checked :
    goodSegmentCheck 54 17 37
      { lower := 73728, upper := 73748, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good267_checked :
    goodSegmentCheck 54 17 37
      { lower := 98304, upper := 98313, witness := RowWitness.topPrime 98299 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row054_good268_checked :
    goodSegmentCheck 54 17 37
      { lower := 327701, upper := 327733, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 54) (r := 17) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good264_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good265_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good266_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good267_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_good268_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_goods_checked :
    row054.goods.all (goodSegmentCheck row054.height.i row054.height.r row054.height.s) = true := by
  change row054_goods.all (goodSegmentCheck 54 17 37) = true
  simp only [row054_goods, List.all_cons, List.all_nil,
    row054_good000_checked,
    row054_good001_checked,
    row054_good002_checked,
    row054_good003_checked,
    row054_good004_checked,
    row054_good005_checked,
    row054_good006_checked,
    row054_good007_checked,
    row054_good008_checked,
    row054_good009_checked,
    row054_good010_checked,
    row054_good011_checked,
    row054_good012_checked,
    row054_good013_checked,
    row054_good014_checked,
    row054_good015_checked,
    row054_good016_checked,
    row054_good017_checked,
    row054_good018_checked,
    row054_good019_checked,
    row054_good020_checked,
    row054_good021_checked,
    row054_good022_checked,
    row054_good023_checked,
    row054_good024_checked,
    row054_good025_checked,
    row054_good026_checked,
    row054_good027_checked,
    row054_good028_checked,
    row054_good029_checked,
    row054_good030_checked,
    row054_good031_checked,
    row054_good032_checked,
    row054_good033_checked,
    row054_good034_checked,
    row054_good035_checked,
    row054_good036_checked,
    row054_good037_checked,
    row054_good038_checked,
    row054_good039_checked,
    row054_good040_checked,
    row054_good041_checked,
    row054_good042_checked,
    row054_good043_checked,
    row054_good044_checked,
    row054_good045_checked,
    row054_good046_checked,
    row054_good047_checked,
    row054_good048_checked,
    row054_good049_checked,
    row054_good050_checked,
    row054_good051_checked,
    row054_good052_checked,
    row054_good053_checked,
    row054_good054_checked,
    row054_good055_checked,
    row054_good056_checked,
    row054_good057_checked,
    row054_good058_checked,
    row054_good059_checked,
    row054_good060_checked,
    row054_good061_checked,
    row054_good062_checked,
    row054_good063_checked,
    row054_good064_checked,
    row054_good065_checked,
    row054_good066_checked,
    row054_good067_checked,
    row054_good068_checked,
    row054_good069_checked,
    row054_good070_checked,
    row054_good071_checked,
    row054_good072_checked,
    row054_good073_checked,
    row054_good074_checked,
    row054_good075_checked,
    row054_good076_checked,
    row054_good077_checked,
    row054_good078_checked,
    row054_good079_checked,
    row054_good080_checked,
    row054_good081_checked,
    row054_good082_checked,
    row054_good083_checked,
    row054_good084_checked,
    row054_good085_checked,
    row054_good086_checked,
    row054_good087_checked,
    row054_good088_checked,
    row054_good089_checked,
    row054_good090_checked,
    row054_good091_checked,
    row054_good092_checked,
    row054_good093_checked,
    row054_good094_checked,
    row054_good095_checked,
    row054_good096_checked,
    row054_good097_checked,
    row054_good098_checked,
    row054_good099_checked,
    row054_good100_checked,
    row054_good101_checked,
    row054_good102_checked,
    row054_good103_checked,
    row054_good104_checked,
    row054_good105_checked,
    row054_good106_checked,
    row054_good107_checked,
    row054_good108_checked,
    row054_good109_checked,
    row054_good110_checked,
    row054_good111_checked,
    row054_good112_checked,
    row054_good113_checked,
    row054_good114_checked,
    row054_good115_checked,
    row054_good116_checked,
    row054_good117_checked,
    row054_good118_checked,
    row054_good119_checked,
    row054_good120_checked,
    row054_good121_checked,
    row054_good122_checked,
    row054_good123_checked,
    row054_good124_checked,
    row054_good125_checked,
    row054_good126_checked,
    row054_good127_checked,
    row054_good128_checked,
    row054_good129_checked,
    row054_good130_checked,
    row054_good131_checked,
    row054_good132_checked,
    row054_good133_checked,
    row054_good134_checked,
    row054_good135_checked,
    row054_good136_checked,
    row054_good137_checked,
    row054_good138_checked,
    row054_good139_checked,
    row054_good140_checked,
    row054_good141_checked,
    row054_good142_checked,
    row054_good143_checked,
    row054_good144_checked,
    row054_good145_checked,
    row054_good146_checked,
    row054_good147_checked,
    row054_good148_checked,
    row054_good149_checked,
    row054_good150_checked,
    row054_good151_checked,
    row054_good152_checked,
    row054_good153_checked,
    row054_good154_checked,
    row054_good155_checked,
    row054_good156_checked,
    row054_good157_checked,
    row054_good158_checked,
    row054_good159_checked,
    row054_good160_checked,
    row054_good161_checked,
    row054_good162_checked,
    row054_good163_checked,
    row054_good164_checked,
    row054_good165_checked,
    row054_good166_checked,
    row054_good167_checked,
    row054_good168_checked,
    row054_good169_checked,
    row054_good170_checked,
    row054_good171_checked,
    row054_good172_checked,
    row054_good173_checked,
    row054_good174_checked,
    row054_good175_checked,
    row054_good176_checked,
    row054_good177_checked,
    row054_good178_checked,
    row054_good179_checked,
    row054_good180_checked,
    row054_good181_checked,
    row054_good182_checked,
    row054_good183_checked,
    row054_good184_checked,
    row054_good185_checked,
    row054_good186_checked,
    row054_good187_checked,
    row054_good188_checked,
    row054_good189_checked,
    row054_good190_checked,
    row054_good191_checked,
    row054_good192_checked,
    row054_good193_checked,
    row054_good194_checked,
    row054_good195_checked,
    row054_good196_checked,
    row054_good197_checked,
    row054_good198_checked,
    row054_good199_checked,
    row054_good200_checked,
    row054_good201_checked,
    row054_good202_checked,
    row054_good203_checked,
    row054_good204_checked,
    row054_good205_checked,
    row054_good206_checked,
    row054_good207_checked,
    row054_good208_checked,
    row054_good209_checked,
    row054_good210_checked,
    row054_good211_checked,
    row054_good212_checked,
    row054_good213_checked,
    row054_good214_checked,
    row054_good215_checked,
    row054_good216_checked,
    row054_good217_checked,
    row054_good218_checked,
    row054_good219_checked,
    row054_good220_checked,
    row054_good221_checked,
    row054_good222_checked,
    row054_good223_checked,
    row054_good224_checked,
    row054_good225_checked,
    row054_good226_checked,
    row054_good227_checked,
    row054_good228_checked,
    row054_good229_checked,
    row054_good230_checked,
    row054_good231_checked,
    row054_good232_checked,
    row054_good233_checked,
    row054_good234_checked,
    row054_good235_checked,
    row054_good236_checked,
    row054_good237_checked,
    row054_good238_checked,
    row054_good239_checked,
    row054_good240_checked,
    row054_good241_checked,
    row054_good242_checked,
    row054_good243_checked,
    row054_good244_checked,
    row054_good245_checked,
    row054_good246_checked,
    row054_good247_checked,
    row054_good248_checked,
    row054_good249_checked,
    row054_good250_checked,
    row054_good251_checked,
    row054_good252_checked,
    row054_good253_checked,
    row054_good254_checked,
    row054_good255_checked,
    row054_good256_checked,
    row054_good257_checked,
    row054_good258_checked,
    row054_good259_checked,
    row054_good260_checked,
    row054_good261_checked,
    row054_good262_checked,
    row054_good263_checked,
    row054_good264_checked,
    row054_good265_checked,
    row054_good266_checked,
    row054_good267_checked,
    row054_good268_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_registered :
    decide (row054.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row054_small_checked :
    coverCheck (2 * row054.height.i + 2) (row054.height.i * (row054.height.i - 1) - 1)
      (row054.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row054_layerCover_checked :
    coverCheck (row054.height.i * (row054.height.i - 1)) (row054.height.n0 - 1)
      (row054.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row054_bounds : List NatInterval :=
  [(110, 162), (163, 216), (217, 264), (265, 316), (317, 370), (371, 420), (421, 474), (475, 520), (521, 574), (575, 624), (625, 672), (673, 726), (727, 780), (781, 826), (827, 880), (881, 934), (935, 982), (983, 1036), (1037, 1086), (1087, 1140), (1141, 1182), (1183, 1234), (1235, 1284), (1285, 1336), (1337, 1380), (1381, 1434), (1435, 1486), (1487, 1540), (1541, 1584), (1585, 1636), (1637, 1690), (1691, 1722), (1723, 1776), (1777, 1830), (1831, 1884), (1885, 1932), (1933, 1986), (1987, 2040), (2041, 2092), (2093, 2142), (2143, 2196), (2197, 2232), (2233, 2274), (2275, 2326), (2327, 2364), (2365, 2410), (2411, 2464), (2465, 2512), (2513, 2556), (2557, 2610), (2611, 2662), (2663, 2716), (2717, 2766), (2767, 2820), (2821, 2862), (2875, 2914), (2915, 2943), (3025, 3076), (3077, 3120), (3121, 3140), (3146, 3190), (3191, 3232), (3249, 3282), (3283, 3303), (3362, 3414), (3415, 3441), (3468, 3483), (3500, 3552), (3553, 3562), (3584, 3602), (3610, 3660), (3661, 3678), (3703, 3754), (3755, 3792), (3793, 3810), (3844, 3886), (3887, 3928), (3993, 4042), (4043, 4053), (4056, 4104), (4105, 4152), (4153, 4169), (4225, 4272), (4273, 4288), (4335, 4380), (4381, 4426), (4427, 4447), (4459, 4471), (4500, 4512), (4608, 4616), (4624, 4661), (4732, 4746), (4761, 4785), (4802, 4854), (4855, 4855), (4913, 4954), (5043, 5092), (5093, 5107), (5120, 5123), (5145, 5172), (5173, 5173), (5239, 5255), (5290, 5292), (5324, 5343), (5415, 5461), (5488, 5536), (5537, 5541), (5577, 5600), (5618, 5644), (5645, 5678), (5776, 5802), (5803, 5854), (5855, 5872), (6144, 6196), (6197, 6197), (6358, 6401), (6517, 6544), (6545, 6551), (6561, 6570), (6591, 6614), (6627, 6644), (6647, 6690), (6691, 6708), (6727, 6772), (6773, 6780), (6859, 6910), (6911, 6928), (7203, 7246), (7247, 7273), (7406, 7446), (7447, 7449), (7514, 7560), (7561, 7567), (7569, 7614), (7615, 7622), (7688, 7733), (7935, 7986), (7987, 7995), (8125, 8145), (8214, 8262), (8263, 8267), (8405, 8442), (8443, 8480), (8664, 8716), (8717, 8717), (8788, 8803), (8836, 8841), (8959, 8971), (8993, 9012), (9025, 9046), (9245, 9294), (9295, 9304), (9386, 9428), (9537, 9575), (9583, 9590), (9604, 9654), (9655, 9657), (10000, 10000), (10051, 10053), (10086, 10132), (10133, 10145), (10290, 10293), (10580, 10620), (10621, 10666), (10667, 10686), (10952, 11002), (11003, 11029), (11094, 11098), (11109, 11146), (11147, 11147), (11236, 11244), (11250, 11296), (11297, 11303), (11774, 11796), (11797, 11820), (12005, 12032), (12321, 12341), (12500, 12546), (13225, 13235), (13254, 13278), (13312, 13362), (13363, 13363), (13454, 13504), (13505, 13507), (13718, 13743), (13750, 13782), (13783, 13803), (14297, 14346), (14347, 14350), (14375, 14389), (14406, 14454), (14455, 14459), (14792, 14792), (14812, 14845), (15138, 15182), (15360, 15412), (15413, 15429), (15979, 16025), (16384, 16390), (16399, 16434), (16435, 16452), (16810, 16840), (16841, 16873), (16875, 16907), (17303, 17351), (17672, 17714), (18491, 18534), (18535, 18544), (19208, 19260), (19261, 19261), (19375, 19396), (19663, 19714), (19715, 19716), (20181, 20230), (20231, 20234), (20577, 20588), (21866, 21916), (21917, 21928), (22103, 22143), (23548, 23587), (24010, 24011), (24025, 24076), (24077, 24078), (24334, 24352), (24576, 24618), (25000, 25039), (25289, 25314), (25315, 25334), (26411, 26417), (26624, 26650), (26651, 26673), (26908, 26949), (28125, 28143), (28577, 28614), (28717, 28725), (28749, 28770), (30926, 30952), (31250, 31266), (31944, 31960), (31961, 31992), (33282, 33300), (33301, 33328), (33620, 33667), (34391, 34428), (35152, 35184), (35344, 35354), (36517, 36550), (36551, 36554), (36980, 37032), (37033, 37033), (37553, 37553), (39326, 39357), (40678, 40678), (43750, 43759), (43940, 43976), (44217, 44233), (48020, 48066), (49152, 49183), (50562, 50584), (54925, 54925), (55225, 55272), (55273, 55276), (58989, 59009), (68782, 68803), (73034, 73055), (73205, 73220), (73728, 73748), (98304, 98313), (327701, 327733)]

theorem row054_bounds_eq : row054.goods.map goodSegmentBounds = row054_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row054_layer000_intervals : List ColouredInterval :=
  [(2, 2862, 2869), (2, 3072, 3125), (2, 3328, 3381), (2, 3584, 3637), (2, 3840, 3893), (2, 4096, 4149), (2, 4352, 4405), (2, 4608, 4661), (2, 3072, 3125), (2, 3584, 3637), (2, 4096, 4149), (2, 4608, 4661), (2, 5120, 5173), (2, 5632, 5685), (2, 3072, 3125), (2, 4096, 4149), (2, 5120, 5173), (2, 4096, 4149), (2, 4096, 4149), (5, 2875, 2928), (5, 3000, 3053), (5, 3125, 3178), (5, 3250, 3303), (5, 3375, 3428), (5, 3500, 3553), (5, 3625, 3678), (5, 3750, 3803), (5, 3875, 3928), (5, 4000, 4053), (5, 4125, 4178), (5, 4250, 4303), (5, 4375, 4428), (5, 4500, 4553), (5, 3125, 3178), (5, 3750, 3803), (5, 4375, 4428), (5, 5000, 5053), (5, 5625, 5678), (5, 3125, 3178), (7, 3087, 3140), (7, 3430, 3483), (7, 3773, 3826), (7, 4116, 4169), (7, 4459, 4512), (7, 4802, 4855), (7, 5145, 5198), (7, 5488, 5541), (7, 4802, 4855), (11, 2904, 2957), (11, 3025, 3078), (11, 3146, 3199), (11, 3267, 3320), (11, 3388, 3441), (11, 3509, 3562), (11, 3630, 3683), (11, 3751, 3804), (11, 3872, 3925), (11, 3993, 4046), (11, 4114, 4167), (11, 4235, 4288), (11, 4356, 4409), (11, 3993, 4046), (11, 5324, 5377), (13, 2873, 2926), (13, 3042, 3095), (13, 3211, 3264), (13, 3380, 3433), (13, 3549, 3602), (13, 3718, 3771), (13, 3887, 3940), (13, 4056, 4109), (13, 4225, 4278), (13, 4394, 4447), (13, 4563, 4616), (13, 4732, 4785), (13, 4901, 4954), (13, 5070, 5123), (13, 5239, 5292), (13, 5408, 5461), (13, 5577, 5630), (13, 4394, 4447), (17, 2890, 2943), (17, 3179, 3232), (17, 3468, 3521), (17, 3757, 3810), (17, 4046, 4099), (17, 4335, 4388), (17, 4624, 4677), (17, 4913, 4966), (17, 5202, 5255), (17, 5491, 5544), (17, 4913, 4966), (19, 2888, 2941), (19, 3249, 3302), (19, 3610, 3663), (19, 3971, 4024), (19, 4332, 4385), (19, 4693, 4746), (19, 5054, 5107), (19, 5415, 5468), (23, 3174, 3227), (23, 3703, 3756), (23, 4232, 4285), (23, 4761, 4814), (23, 5290, 5343), (29, 3364, 3417), (29, 4205, 4258), (29, 5046, 5099), (31, 2883, 2936), (31, 3844, 3897), (31, 4805, 4858), (37, 4107, 4160), (37, 5476, 5529), (41, 3362, 3415), (41, 5043, 5096), (43, 3698, 3751), (43, 5547, 5600), (47, 4418, 4471), (53, 2862, 2862), (53, 5618, 5671)]

def row054_layer000_block000 : List ColouredInterval :=
  [(2, 2862, 2869), (2, 3072, 3125), (2, 3328, 3381), (2, 3584, 3637), (2, 3840, 3893), (2, 4096, 4149), (2, 4352, 4405), (2, 4608, 4661), (2, 3072, 3125), (2, 3584, 3637), (2, 4096, 4149), (2, 4608, 4661), (2, 5120, 5173), (2, 5632, 5685), (2, 3072, 3125), (2, 4096, 4149)]

def row054_layer000_block001 : List ColouredInterval :=
  [(2, 5120, 5173), (2, 4096, 4149), (2, 4096, 4149), (5, 2875, 2928), (5, 3000, 3053), (5, 3125, 3178), (5, 3250, 3303), (5, 3375, 3428), (5, 3500, 3553), (5, 3625, 3678), (5, 3750, 3803), (5, 3875, 3928), (5, 4000, 4053), (5, 4125, 4178), (5, 4250, 4303), (5, 4375, 4428)]

def row054_layer000_block002 : List ColouredInterval :=
  [(5, 4500, 4553), (5, 3125, 3178), (5, 3750, 3803), (5, 4375, 4428), (5, 5000, 5053), (5, 5625, 5678), (5, 3125, 3178), (7, 3087, 3140), (7, 3430, 3483), (7, 3773, 3826), (7, 4116, 4169), (7, 4459, 4512), (7, 4802, 4855), (7, 5145, 5198), (7, 5488, 5541), (7, 4802, 4855)]

def row054_layer000_block003 : List ColouredInterval :=
  [(11, 2904, 2957), (11, 3025, 3078), (11, 3146, 3199), (11, 3267, 3320), (11, 3388, 3441), (11, 3509, 3562), (11, 3630, 3683), (11, 3751, 3804), (11, 3872, 3925), (11, 3993, 4046), (11, 4114, 4167), (11, 4235, 4288), (11, 4356, 4409), (11, 3993, 4046), (11, 5324, 5377), (13, 2873, 2926)]

def row054_layer000_block004 : List ColouredInterval :=
  [(13, 3042, 3095), (13, 3211, 3264), (13, 3380, 3433), (13, 3549, 3602), (13, 3718, 3771), (13, 3887, 3940), (13, 4056, 4109), (13, 4225, 4278), (13, 4394, 4447), (13, 4563, 4616), (13, 4732, 4785), (13, 4901, 4954), (13, 5070, 5123), (13, 5239, 5292), (13, 5408, 5461), (13, 5577, 5630)]

def row054_layer000_block005 : List ColouredInterval :=
  [(13, 4394, 4447), (17, 2890, 2943), (17, 3179, 3232), (17, 3468, 3521), (17, 3757, 3810), (17, 4046, 4099), (17, 4335, 4388), (17, 4624, 4677), (17, 4913, 4966), (17, 5202, 5255), (17, 5491, 5544), (17, 4913, 4966), (19, 2888, 2941), (19, 3249, 3302), (19, 3610, 3663), (19, 3971, 4024)]

def row054_layer000_block006 : List ColouredInterval :=
  [(19, 4332, 4385), (19, 4693, 4746), (19, 5054, 5107), (19, 5415, 5468), (23, 3174, 3227), (23, 3703, 3756), (23, 4232, 4285), (23, 4761, 4814), (23, 5290, 5343), (29, 3364, 3417), (29, 4205, 4258), (29, 5046, 5099), (31, 2883, 2936), (31, 3844, 3897), (31, 4805, 4858), (37, 4107, 4160)]

def row054_layer000_block007 : List ColouredInterval :=
  [(37, 5476, 5529), (41, 3362, 3415), (41, 5043, 5096), (43, 3698, 3751), (43, 5547, 5600), (47, 4418, 4471), (53, 2862, 2862), (53, 5618, 5671)]

def row054_layer000_chunks : List (List ColouredInterval) :=
  [row054_layer000_block000, row054_layer000_block001, row054_layer000_block002, row054_layer000_block003, row054_layer000_block004, row054_layer000_block005, row054_layer000_block006, row054_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer000_arithmetic : LayerArithmeticValid row054.height { lower := 2862, upper := 5724, M := 36 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer000_enumeration :
    activePowerIntervalList 54 36 2862 5724 = row054_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer000_pairs000 :
    row054_layer000_block000.all (fun I => row054_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer000_pairs001 :
    row054_layer000_block001.all (fun I => row054_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer000_pairs002 :
    row054_layer000_block002.all (fun I => row054_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer000_pairs003 :
    row054_layer000_block003.all (fun I => row054_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer000_pairs004 :
    row054_layer000_block004.all (fun I => row054_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer000_pairs005 :
    row054_layer000_block005.all (fun I => row054_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer000_pairs006 :
    row054_layer000_block006.all (fun I => row054_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer000_pairs007 :
    row054_layer000_block007.all (fun I => row054_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer000_chunks_eq : row054_layer000_chunks.flatten = row054_layer000_intervals := by
  rfl

theorem row054_layer000_pairs : pairCoverCheck row054_layer000_intervals row054_bounds = true := by
  apply pairCoverCheck_of_chunks row054_layer000_chunks_eq
  intro block hblock
  simp only [row054_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row054_layer000_pairs000
  · exact row054_layer000_pairs001
  · exact row054_layer000_pairs002
  · exact row054_layer000_pairs003
  · exact row054_layer000_pairs004
  · exact row054_layer000_pairs005
  · exact row054_layer000_pairs006
  · exact row054_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer000_checked :
    coverLayerCheck row054.height row054.goods { lower := 2862, upper := 5724, M := 36 } = true := by
  exact coverLayerCheck_of_parts row054_layer000_arithmetic row054_layer000_enumeration row054_bounds_eq row054_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row054_layer001_intervals : List ColouredInterval :=
  [(2, 6144, 6197), (2, 6656, 6709), (2, 7168, 7221), (2, 7680, 7733), (2, 8192, 8245), (2, 6144, 6197), (2, 7168, 7221), (2, 8192, 8245), (2, 9216, 9269), (2, 10240, 10293), (2, 11264, 11317), (2, 6144, 6197), (2, 8192, 8245), (2, 10240, 10293), (2, 8192, 8245), (2, 8192, 8245), (3, 6561, 6614), (5, 6250, 6303), (5, 6875, 6928), (5, 7500, 7553), (5, 8125, 8178), (5, 8750, 8803), (5, 9375, 9428), (5, 10000, 10053), (5, 10625, 10678), (5, 11250, 11303), (5, 6250, 6303), (5, 9375, 9428), (7, 5831, 5884), (7, 6174, 6227), (7, 6517, 6570), (7, 6860, 6913), (7, 7203, 7256), (7, 7546, 7599), (7, 7889, 7942), (7, 8232, 8285), (7, 8575, 8628), (7, 8918, 8971), (7, 9261, 9314), (7, 9604, 9657), (7, 9947, 10000), (7, 10290, 10343), (7, 10633, 10686), (7, 10976, 11029), (7, 11319, 11372), (7, 7203, 7256), (7, 9604, 9657), (11, 6655, 6708), (11, 7986, 8039), (11, 9317, 9370), (11, 10648, 10701), (13, 6591, 6644), (13, 8788, 8841), (13, 10985, 11038), (17, 5780, 5833), (17, 6069, 6122), (17, 6358, 6411), (17, 6647, 6700), (17, 6936, 6989), (17, 7225, 7278), (17, 7514, 7567), (17, 7803, 7856), (17, 8092, 8145), (17, 8381, 8434), (17, 8670, 8723), (17, 8959, 9012), (17, 9248, 9301), (17, 9537, 9590), (17, 9826, 9879), (19, 5776, 5829), (19, 6137, 6190), (19, 6498, 6551), (19, 6859, 6912), (19, 7220, 7273), (19, 7581, 7634), (19, 7942, 7995), (19, 8303, 8356), (19, 8664, 8717), (19, 9025, 9078), (19, 9386, 9439), (19, 9747, 9800), (19, 10108, 10161), (19, 10469, 10522), (19, 10830, 10883), (19, 11191, 11244), (19, 6859, 6912), (23, 5819, 5872), (23, 6348, 6401), (23, 6877, 6930), (23, 7406, 7459), (23, 7935, 7988), (23, 8464, 8517), (23, 8993, 9046), (23, 9522, 9575), (23, 10051, 10104), (23, 10580, 10633), (23, 11109, 11162), (29, 5887, 5940), (29, 6728, 6781), (29, 7569, 7622), (29, 8410, 8463), (29, 9251, 9304), (29, 10092, 10145), (29, 10933, 10986), (31, 5766, 5819), (31, 6727, 6780), (31, 7688, 7741), (31, 8649, 8702), (31, 9610, 9663), (31, 10571, 10624), (37, 6845, 6898), (37, 8214, 8267), (37, 9583, 9636), (37, 10952, 11005), (41, 6724, 6777), (41, 8405, 8458), (41, 10086, 10139), (43, 7396, 7449), (43, 9245, 9298), (43, 11094, 11147), (47, 6627, 6680), (47, 8836, 8889), (47, 11045, 11098), (53, 8427, 8480), (53, 11236, 11289)]

def row054_layer001_block000 : List ColouredInterval :=
  [(2, 6144, 6197), (2, 6656, 6709), (2, 7168, 7221), (2, 7680, 7733), (2, 8192, 8245), (2, 6144, 6197), (2, 7168, 7221), (2, 8192, 8245), (2, 9216, 9269), (2, 10240, 10293), (2, 11264, 11317), (2, 6144, 6197), (2, 8192, 8245), (2, 10240, 10293), (2, 8192, 8245), (2, 8192, 8245)]

def row054_layer001_block001 : List ColouredInterval :=
  [(3, 6561, 6614), (5, 6250, 6303), (5, 6875, 6928), (5, 7500, 7553), (5, 8125, 8178), (5, 8750, 8803), (5, 9375, 9428), (5, 10000, 10053), (5, 10625, 10678), (5, 11250, 11303), (5, 6250, 6303), (5, 9375, 9428), (7, 5831, 5884), (7, 6174, 6227), (7, 6517, 6570), (7, 6860, 6913)]

def row054_layer001_block002 : List ColouredInterval :=
  [(7, 7203, 7256), (7, 7546, 7599), (7, 7889, 7942), (7, 8232, 8285), (7, 8575, 8628), (7, 8918, 8971), (7, 9261, 9314), (7, 9604, 9657), (7, 9947, 10000), (7, 10290, 10343), (7, 10633, 10686), (7, 10976, 11029), (7, 11319, 11372), (7, 7203, 7256), (7, 9604, 9657), (11, 6655, 6708)]

def row054_layer001_block003 : List ColouredInterval :=
  [(11, 7986, 8039), (11, 9317, 9370), (11, 10648, 10701), (13, 6591, 6644), (13, 8788, 8841), (13, 10985, 11038), (17, 5780, 5833), (17, 6069, 6122), (17, 6358, 6411), (17, 6647, 6700), (17, 6936, 6989), (17, 7225, 7278), (17, 7514, 7567), (17, 7803, 7856), (17, 8092, 8145), (17, 8381, 8434)]

def row054_layer001_block004 : List ColouredInterval :=
  [(17, 8670, 8723), (17, 8959, 9012), (17, 9248, 9301), (17, 9537, 9590), (17, 9826, 9879), (19, 5776, 5829), (19, 6137, 6190), (19, 6498, 6551), (19, 6859, 6912), (19, 7220, 7273), (19, 7581, 7634), (19, 7942, 7995), (19, 8303, 8356), (19, 8664, 8717), (19, 9025, 9078), (19, 9386, 9439)]

def row054_layer001_block005 : List ColouredInterval :=
  [(19, 9747, 9800), (19, 10108, 10161), (19, 10469, 10522), (19, 10830, 10883), (19, 11191, 11244), (19, 6859, 6912), (23, 5819, 5872), (23, 6348, 6401), (23, 6877, 6930), (23, 7406, 7459), (23, 7935, 7988), (23, 8464, 8517), (23, 8993, 9046), (23, 9522, 9575), (23, 10051, 10104), (23, 10580, 10633)]

def row054_layer001_block006 : List ColouredInterval :=
  [(23, 11109, 11162), (29, 5887, 5940), (29, 6728, 6781), (29, 7569, 7622), (29, 8410, 8463), (29, 9251, 9304), (29, 10092, 10145), (29, 10933, 10986), (31, 5766, 5819), (31, 6727, 6780), (31, 7688, 7741), (31, 8649, 8702), (31, 9610, 9663), (31, 10571, 10624), (37, 6845, 6898), (37, 8214, 8267)]

def row054_layer001_block007 : List ColouredInterval :=
  [(37, 9583, 9636), (37, 10952, 11005), (41, 6724, 6777), (41, 8405, 8458), (41, 10086, 10139), (43, 7396, 7449), (43, 9245, 9298), (43, 11094, 11147), (47, 6627, 6680), (47, 8836, 8889), (47, 11045, 11098), (53, 8427, 8480), (53, 11236, 11289)]

def row054_layer001_chunks : List (List ColouredInterval) :=
  [row054_layer001_block000, row054_layer001_block001, row054_layer001_block002, row054_layer001_block003, row054_layer001_block004, row054_layer001_block005, row054_layer001_block006, row054_layer001_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer001_arithmetic : LayerArithmeticValid row054.height { lower := 5724, upper := 11448, M := 33 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer001_enumeration :
    activePowerIntervalList 54 33 5724 11448 = row054_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer001_pairs000 :
    row054_layer001_block000.all (fun I => row054_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer001_pairs001 :
    row054_layer001_block001.all (fun I => row054_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer001_pairs002 :
    row054_layer001_block002.all (fun I => row054_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer001_pairs003 :
    row054_layer001_block003.all (fun I => row054_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer001_pairs004 :
    row054_layer001_block004.all (fun I => row054_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer001_pairs005 :
    row054_layer001_block005.all (fun I => row054_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer001_pairs006 :
    row054_layer001_block006.all (fun I => row054_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer001_pairs007 :
    row054_layer001_block007.all (fun I => row054_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer001_chunks_eq : row054_layer001_chunks.flatten = row054_layer001_intervals := by
  rfl

theorem row054_layer001_pairs : pairCoverCheck row054_layer001_intervals row054_bounds = true := by
  apply pairCoverCheck_of_chunks row054_layer001_chunks_eq
  intro block hblock
  simp only [row054_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row054_layer001_pairs000
  · exact row054_layer001_pairs001
  · exact row054_layer001_pairs002
  · exact row054_layer001_pairs003
  · exact row054_layer001_pairs004
  · exact row054_layer001_pairs005
  · exact row054_layer001_pairs006
  · exact row054_layer001_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer001_checked :
    coverLayerCheck row054.height row054.goods { lower := 5724, upper := 11448, M := 33 } = true := by
  exact coverLayerCheck_of_parts row054_layer001_arithmetic row054_layer001_enumeration row054_bounds_eq row054_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row054_layer002_intervals : List ColouredInterval :=
  [(2, 12288, 12341), (2, 13312, 13365), (2, 14336, 14389), (2, 15360, 15413), (2, 12288, 12341), (2, 14336, 14389), (2, 16384, 16437), (2, 18432, 18485), (2, 20480, 20533), (2, 22528, 22581), (2, 12288, 12341), (2, 16384, 16437), (2, 20480, 20533), (2, 16384, 16437), (2, 16384, 16437), (3, 19683, 19736), (5, 11875, 11928), (5, 12500, 12553), (5, 13125, 13178), (5, 13750, 13803), (5, 14375, 14428), (5, 15000, 15053), (5, 15625, 15678), (5, 16250, 16303), (5, 16875, 16928), (5, 17500, 17553), (5, 18125, 18178), (5, 18750, 18803), (5, 19375, 19428), (5, 12500, 12553), (5, 15625, 15678), (5, 18750, 18803), (5, 21875, 21928), (5, 15625, 15678), (7, 12005, 12058), (7, 14406, 14459), (7, 16807, 16860), (7, 19208, 19261), (7, 21609, 21662), (7, 16807, 16860), (11, 11979, 12032), (11, 13310, 13363), (11, 14641, 14694), (11, 15972, 16025), (11, 17303, 17356), (11, 18634, 18687), (11, 19965, 20018), (11, 21296, 21349), (11, 22627, 22680), (11, 14641, 14694), (13, 13182, 13235), (13, 15379, 15432), (13, 17576, 17629), (13, 19773, 19826), (13, 21970, 22023), (17, 14739, 14792), (17, 19652, 19705), (19, 13718, 13771), (19, 20577, 20630), (23, 11638, 11691), (23, 12167, 12220), (23, 12696, 12749), (23, 13225, 13278), (23, 13754, 13807), (23, 14283, 14336), (23, 14812, 14865), (23, 15341, 15394), (23, 15870, 15923), (23, 16399, 16452), (23, 12167, 12220), (29, 11774, 11827), (29, 12615, 12668), (29, 13456, 13509), (29, 14297, 14350), (29, 15138, 15191), (29, 15979, 16032), (29, 16820, 16873), (29, 17661, 17714), (29, 18502, 18555), (29, 19343, 19396), (29, 20184, 20237), (29, 21025, 21078), (29, 21866, 21919), (29, 22707, 22760), (31, 11532, 11585), (31, 12493, 12546), (31, 13454, 13507), (31, 14415, 14468), (31, 15376, 15429), (31, 16337, 16390), (31, 17298, 17351), (31, 18259, 18312), (31, 19220, 19273), (31, 20181, 20234), (31, 21142, 21195), (31, 22103, 22156), (37, 12321, 12374), (37, 13690, 13743), (37, 15059, 15112), (37, 16428, 16481), (37, 17797, 17850), (37, 19166, 19219), (37, 20535, 20588), (37, 21904, 21957), (41, 11767, 11820), (41, 13448, 13501), (41, 15129, 15182), (41, 16810, 16863), (41, 18491, 18544), (41, 20172, 20225), (41, 21853, 21906), (43, 12943, 12996), (43, 14792, 14845), (43, 16641, 16694), (43, 18490, 18543), (43, 20339, 20392), (43, 22188, 22241), (47, 13254, 13307), (47, 15463, 15516), (47, 17672, 17725), (47, 19881, 19934), (47, 22090, 22143), (53, 14045, 14098), (53, 16854, 16907), (53, 19663, 19716), (53, 22472, 22525)]

def row054_layer002_block000 : List ColouredInterval :=
  [(2, 12288, 12341), (2, 13312, 13365), (2, 14336, 14389), (2, 15360, 15413), (2, 12288, 12341), (2, 14336, 14389), (2, 16384, 16437), (2, 18432, 18485), (2, 20480, 20533), (2, 22528, 22581), (2, 12288, 12341), (2, 16384, 16437), (2, 20480, 20533), (2, 16384, 16437), (2, 16384, 16437), (3, 19683, 19736)]

def row054_layer002_block001 : List ColouredInterval :=
  [(5, 11875, 11928), (5, 12500, 12553), (5, 13125, 13178), (5, 13750, 13803), (5, 14375, 14428), (5, 15000, 15053), (5, 15625, 15678), (5, 16250, 16303), (5, 16875, 16928), (5, 17500, 17553), (5, 18125, 18178), (5, 18750, 18803), (5, 19375, 19428), (5, 12500, 12553), (5, 15625, 15678), (5, 18750, 18803)]

def row054_layer002_block002 : List ColouredInterval :=
  [(5, 21875, 21928), (5, 15625, 15678), (7, 12005, 12058), (7, 14406, 14459), (7, 16807, 16860), (7, 19208, 19261), (7, 21609, 21662), (7, 16807, 16860), (11, 11979, 12032), (11, 13310, 13363), (11, 14641, 14694), (11, 15972, 16025), (11, 17303, 17356), (11, 18634, 18687), (11, 19965, 20018), (11, 21296, 21349)]

def row054_layer002_block003 : List ColouredInterval :=
  [(11, 22627, 22680), (11, 14641, 14694), (13, 13182, 13235), (13, 15379, 15432), (13, 17576, 17629), (13, 19773, 19826), (13, 21970, 22023), (17, 14739, 14792), (17, 19652, 19705), (19, 13718, 13771), (19, 20577, 20630), (23, 11638, 11691), (23, 12167, 12220), (23, 12696, 12749), (23, 13225, 13278), (23, 13754, 13807)]

def row054_layer002_block004 : List ColouredInterval :=
  [(23, 14283, 14336), (23, 14812, 14865), (23, 15341, 15394), (23, 15870, 15923), (23, 16399, 16452), (23, 12167, 12220), (29, 11774, 11827), (29, 12615, 12668), (29, 13456, 13509), (29, 14297, 14350), (29, 15138, 15191), (29, 15979, 16032), (29, 16820, 16873), (29, 17661, 17714), (29, 18502, 18555), (29, 19343, 19396)]

def row054_layer002_block005 : List ColouredInterval :=
  [(29, 20184, 20237), (29, 21025, 21078), (29, 21866, 21919), (29, 22707, 22760), (31, 11532, 11585), (31, 12493, 12546), (31, 13454, 13507), (31, 14415, 14468), (31, 15376, 15429), (31, 16337, 16390), (31, 17298, 17351), (31, 18259, 18312), (31, 19220, 19273), (31, 20181, 20234), (31, 21142, 21195), (31, 22103, 22156)]

def row054_layer002_block006 : List ColouredInterval :=
  [(37, 12321, 12374), (37, 13690, 13743), (37, 15059, 15112), (37, 16428, 16481), (37, 17797, 17850), (37, 19166, 19219), (37, 20535, 20588), (37, 21904, 21957), (41, 11767, 11820), (41, 13448, 13501), (41, 15129, 15182), (41, 16810, 16863), (41, 18491, 18544), (41, 20172, 20225), (41, 21853, 21906), (43, 12943, 12996)]

def row054_layer002_block007 : List ColouredInterval :=
  [(43, 14792, 14845), (43, 16641, 16694), (43, 18490, 18543), (43, 20339, 20392), (43, 22188, 22241), (47, 13254, 13307), (47, 15463, 15516), (47, 17672, 17725), (47, 19881, 19934), (47, 22090, 22143), (53, 14045, 14098), (53, 16854, 16907), (53, 19663, 19716), (53, 22472, 22525)]

def row054_layer002_chunks : List (List ColouredInterval) :=
  [row054_layer002_block000, row054_layer002_block001, row054_layer002_block002, row054_layer002_block003, row054_layer002_block004, row054_layer002_block005, row054_layer002_block006, row054_layer002_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer002_arithmetic : LayerArithmeticValid row054.height { lower := 11448, upper := 22896, M := 31 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer002_enumeration :
    activePowerIntervalList 54 31 11448 22896 = row054_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer002_pairs000 :
    row054_layer002_block000.all (fun I => row054_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer002_pairs001 :
    row054_layer002_block001.all (fun I => row054_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer002_pairs002 :
    row054_layer002_block002.all (fun I => row054_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer002_pairs003 :
    row054_layer002_block003.all (fun I => row054_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer002_pairs004 :
    row054_layer002_block004.all (fun I => row054_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer002_pairs005 :
    row054_layer002_block005.all (fun I => row054_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer002_pairs006 :
    row054_layer002_block006.all (fun I => row054_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer002_pairs007 :
    row054_layer002_block007.all (fun I => row054_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer002_chunks_eq : row054_layer002_chunks.flatten = row054_layer002_intervals := by
  rfl

theorem row054_layer002_pairs : pairCoverCheck row054_layer002_intervals row054_bounds = true := by
  apply pairCoverCheck_of_chunks row054_layer002_chunks_eq
  intro block hblock
  simp only [row054_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row054_layer002_pairs000
  · exact row054_layer002_pairs001
  · exact row054_layer002_pairs002
  · exact row054_layer002_pairs003
  · exact row054_layer002_pairs004
  · exact row054_layer002_pairs005
  · exact row054_layer002_pairs006
  · exact row054_layer002_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer002_checked :
    coverLayerCheck row054.height row054.goods { lower := 11448, upper := 22896, M := 31 } = true := by
  exact coverLayerCheck_of_parts row054_layer002_arithmetic row054_layer002_enumeration row054_bounds_eq row054_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row054_layer003_intervals : List ColouredInterval :=
  [(2, 24576, 24629), (2, 26624, 26677), (2, 28672, 28725), (2, 24576, 24629), (2, 28672, 28725), (2, 32768, 32821), (2, 36864, 36917), (2, 40960, 41013), (2, 45056, 45109), (2, 24576, 24629), (2, 32768, 32821), (2, 40960, 41013), (2, 32768, 32821), (2, 32768, 32821), (5, 25000, 25053), (5, 28125, 28178), (5, 31250, 31303), (5, 34375, 34428), (5, 37500, 37553), (5, 40625, 40678), (5, 43750, 43803), (5, 31250, 31303), (7, 24010, 24063), (7, 26411, 26464), (7, 28812, 28865), (7, 31213, 31266), (7, 33614, 33667), (7, 36015, 36068), (7, 38416, 38469), (7, 40817, 40870), (7, 43218, 43271), (7, 45619, 45672), (7, 33614, 33667), (11, 23958, 24011), (11, 25289, 25342), (11, 26620, 26673), (11, 27951, 28004), (11, 29282, 29335), (11, 30613, 30666), (11, 31944, 31997), (11, 33275, 33328), (11, 34606, 34659), (11, 35937, 35990), (11, 37268, 37321), (11, 38599, 38652), (11, 29282, 29335), (11, 43923, 43976), (13, 24167, 24220), (13, 26364, 26417), (13, 28561, 28614), (13, 30758, 30811), (13, 32955, 33008), (13, 35152, 35205), (13, 37349, 37402), (13, 39546, 39599), (13, 41743, 41796), (13, 43940, 43993), (13, 28561, 28614), (17, 24565, 24618), (17, 29478, 29531), (17, 34391, 34444), (17, 39304, 39357), (17, 44217, 44270), (19, 27436, 27489), (19, 34295, 34348), (19, 41154, 41207), (23, 24334, 24387), (23, 36501, 36554), (29, 23548, 23601), (29, 24389, 24442), (29, 24389, 24442), (31, 23064, 23117), (31, 24025, 24078), (31, 24986, 25039), (31, 25947, 26000), (31, 26908, 26961), (31, 27869, 27922), (31, 29791, 29844), (37, 23273, 23326), (37, 24642, 24695), (37, 26011, 26064), (37, 27380, 27433), (37, 28749, 28802), (37, 30118, 30171), (37, 31487, 31540), (37, 32856, 32909), (37, 34225, 34278), (37, 35594, 35647), (37, 36963, 37016), (37, 38332, 38385), (37, 39701, 39754), (41, 23534, 23587), (41, 25215, 25268), (41, 26896, 26949), (41, 28577, 28630), (41, 30258, 30311), (41, 31939, 31992), (41, 33620, 33673), (41, 35301, 35354), (41, 36982, 37035), (41, 38663, 38716), (41, 40344, 40397), (41, 42025, 42078), (41, 43706, 43759), (41, 45387, 45440), (43, 24037, 24090), (43, 25886, 25939), (43, 27735, 27788), (43, 29584, 29637), (43, 31433, 31486), (43, 33282, 33335), (43, 35131, 35184), (43, 36980, 37033), (43, 38829, 38882), (43, 40678, 40731), (43, 42527, 42580), (43, 44376, 44429), (47, 24299, 24352), (47, 26508, 26561), (47, 28717, 28770), (47, 30926, 30979), (47, 33135, 33188), (47, 35344, 35397), (47, 37553, 37606), (47, 39762, 39815), (47, 41971, 42024), (47, 44180, 44233), (53, 25281, 25334), (53, 28090, 28143), (53, 30899, 30952), (53, 33708, 33761), (53, 36517, 36570), (53, 39326, 39379), (53, 42135, 42188), (53, 44944, 44997)]

def row054_layer003_block000 : List ColouredInterval :=
  [(2, 24576, 24629), (2, 26624, 26677), (2, 28672, 28725), (2, 24576, 24629), (2, 28672, 28725), (2, 32768, 32821), (2, 36864, 36917), (2, 40960, 41013), (2, 45056, 45109), (2, 24576, 24629), (2, 32768, 32821), (2, 40960, 41013), (2, 32768, 32821), (2, 32768, 32821), (5, 25000, 25053)]

def row054_layer003_block001 : List ColouredInterval :=
  [(5, 28125, 28178), (5, 31250, 31303), (5, 34375, 34428), (5, 37500, 37553), (5, 40625, 40678), (5, 43750, 43803), (5, 31250, 31303), (7, 24010, 24063), (7, 26411, 26464), (7, 28812, 28865), (7, 31213, 31266), (7, 33614, 33667), (7, 36015, 36068), (7, 38416, 38469), (7, 40817, 40870)]

def row054_layer003_block002 : List ColouredInterval :=
  [(7, 43218, 43271), (7, 45619, 45672), (7, 33614, 33667), (11, 23958, 24011), (11, 25289, 25342), (11, 26620, 26673), (11, 27951, 28004), (11, 29282, 29335), (11, 30613, 30666), (11, 31944, 31997), (11, 33275, 33328), (11, 34606, 34659), (11, 35937, 35990), (11, 37268, 37321), (11, 38599, 38652)]

def row054_layer003_block003 : List ColouredInterval :=
  [(11, 29282, 29335), (11, 43923, 43976), (13, 24167, 24220), (13, 26364, 26417), (13, 28561, 28614), (13, 30758, 30811), (13, 32955, 33008), (13, 35152, 35205), (13, 37349, 37402), (13, 39546, 39599), (13, 41743, 41796), (13, 43940, 43993), (13, 28561, 28614), (17, 24565, 24618), (17, 29478, 29531)]

def row054_layer003_block004 : List ColouredInterval :=
  [(17, 34391, 34444), (17, 39304, 39357), (17, 44217, 44270), (19, 27436, 27489), (19, 34295, 34348), (19, 41154, 41207), (23, 24334, 24387), (23, 36501, 36554), (29, 23548, 23601), (29, 24389, 24442), (29, 24389, 24442), (31, 23064, 23117), (31, 24025, 24078), (31, 24986, 25039), (31, 25947, 26000)]

def row054_layer003_block005 : List ColouredInterval :=
  [(31, 26908, 26961), (31, 27869, 27922), (31, 29791, 29844), (37, 23273, 23326), (37, 24642, 24695), (37, 26011, 26064), (37, 27380, 27433), (37, 28749, 28802), (37, 30118, 30171), (37, 31487, 31540), (37, 32856, 32909), (37, 34225, 34278), (37, 35594, 35647), (37, 36963, 37016), (37, 38332, 38385)]

def row054_layer003_block006 : List ColouredInterval :=
  [(37, 39701, 39754), (41, 23534, 23587), (41, 25215, 25268), (41, 26896, 26949), (41, 28577, 28630), (41, 30258, 30311), (41, 31939, 31992), (41, 33620, 33673), (41, 35301, 35354), (41, 36982, 37035), (41, 38663, 38716), (41, 40344, 40397), (41, 42025, 42078), (41, 43706, 43759), (41, 45387, 45440)]

def row054_layer003_block007 : List ColouredInterval :=
  [(43, 24037, 24090), (43, 25886, 25939), (43, 27735, 27788), (43, 29584, 29637), (43, 31433, 31486), (43, 33282, 33335), (43, 35131, 35184), (43, 36980, 37033), (43, 38829, 38882), (43, 40678, 40731), (43, 42527, 42580), (43, 44376, 44429), (47, 24299, 24352), (47, 26508, 26561), (47, 28717, 28770)]

def row054_layer003_block008 : List ColouredInterval :=
  [(47, 30926, 30979), (47, 33135, 33188), (47, 35344, 35397), (47, 37553, 37606), (47, 39762, 39815), (47, 41971, 42024), (47, 44180, 44233), (53, 25281, 25334), (53, 28090, 28143), (53, 30899, 30952), (53, 33708, 33761), (53, 36517, 36570), (53, 39326, 39379), (53, 42135, 42188), (53, 44944, 44997)]

def row054_layer003_chunks : List (List ColouredInterval) :=
  [row054_layer003_block000, row054_layer003_block001, row054_layer003_block002, row054_layer003_block003, row054_layer003_block004, row054_layer003_block005, row054_layer003_block006, row054_layer003_block007, row054_layer003_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer003_arithmetic : LayerArithmeticValid row054.height { lower := 22896, upper := 45792, M := 29 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer003_enumeration :
    activePowerIntervalList 54 29 22896 45792 = row054_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer003_pairs000 :
    row054_layer003_block000.all (fun I => row054_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer003_pairs000
