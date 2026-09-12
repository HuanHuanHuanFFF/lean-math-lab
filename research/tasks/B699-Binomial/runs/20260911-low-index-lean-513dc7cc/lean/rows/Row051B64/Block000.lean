import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row051_height : HeightCertificateDatum := { i := 51, r := 16, s := 35, n0Power10 := 17 }

def row051_goods : List GoodSegment := [
  { lower := 104, upper := 153, witness := RowWitness.topPrime 103 },
  { lower := 154, upper := 201, witness := RowWitness.topPrime 151 },
  { lower := 202, upper := 249, witness := RowWitness.topPrime 199 },
  { lower := 250, upper := 291, witness := RowWitness.topPrime 241 },
  { lower := 292, upper := 333, witness := RowWitness.topPrime 283 },
  { lower := 334, upper := 381, witness := RowWitness.topPrime 331 },
  { lower := 382, upper := 429, witness := RowWitness.topPrime 379 },
  { lower := 430, upper := 471, witness := RowWitness.topPrime 421 },
  { lower := 472, upper := 517, witness := RowWitness.topPrime 467 },
  { lower := 518, upper := 559, witness := RowWitness.topPrime 509 },
  { lower := 560, upper := 607, witness := RowWitness.topPrime 557 },
  { lower := 608, upper := 657, witness := RowWitness.topPrime 607 },
  { lower := 658, upper := 703, witness := RowWitness.topPrime 653 },
  { lower := 704, upper := 751, witness := RowWitness.topPrime 701 },
  { lower := 752, upper := 801, witness := RowWitness.topPrime 751 },
  { lower := 802, upper := 847, witness := RowWitness.topPrime 797 },
  { lower := 848, upper := 889, witness := RowWitness.topPrime 839 },
  { lower := 890, upper := 937, witness := RowWitness.topPrime 887 },
  { lower := 938, upper := 987, witness := RowWitness.topPrime 937 },
  { lower := 988, upper := 1033, witness := RowWitness.topPrime 983 },
  { lower := 1034, upper := 1083, witness := RowWitness.topPrime 1033 },
  { lower := 1084, upper := 1119, witness := RowWitness.topPrime 1069 },
  { lower := 1120, upper := 1167, witness := RowWitness.topPrime 1117 },
  { lower := 1168, upper := 1213, witness := RowWitness.topPrime 1163 },
  { lower := 1214, upper := 1263, witness := RowWitness.topPrime 1213 },
  { lower := 1264, upper := 1309, witness := RowWitness.topPrime 1259 },
  { lower := 1310, upper := 1357, witness := RowWitness.topPrime 1307 },
  { lower := 1358, upper := 1377, witness := RowWitness.topPrime 1327 },
  { lower := 1378, upper := 1423, witness := RowWitness.topPrime 1373 },
  { lower := 1424, upper := 1473, witness := RowWitness.topPrime 1423 },
  { lower := 1474, upper := 1521, witness := RowWitness.topPrime 1471 },
  { lower := 1522, upper := 1561, witness := RowWitness.topPrime 1511 },
  { lower := 1562, upper := 1609, witness := RowWitness.topPrime 1559 },
  { lower := 1610, upper := 1659, witness := RowWitness.topPrime 1609 },
  { lower := 1660, upper := 1707, witness := RowWitness.topPrime 1657 },
  { lower := 1708, upper := 1749, witness := RowWitness.topPrime 1699 },
  { lower := 1750, upper := 1797, witness := RowWitness.topPrime 1747 },
  { lower := 1798, upper := 1839, witness := RowWitness.topPrime 1789 },
  { lower := 1840, upper := 1881, witness := RowWitness.topPrime 1831 },
  { lower := 1882, upper := 1929, witness := RowWitness.topPrime 1879 },
  { lower := 1930, upper := 1963, witness := RowWitness.topPrime 1913 },
  { lower := 1964, upper := 2001, witness := RowWitness.topPrime 1951 },
  { lower := 2002, upper := 2049, witness := RowWitness.topPrime 1999 },
  { lower := 2050, upper := 2089, witness := RowWitness.topPrime 2039 },
  { lower := 2090, upper := 2139, witness := RowWitness.topPrime 2089 },
  { lower := 2140, upper := 2187, witness := RowWitness.topPrime 2137 },
  { lower := 2188, upper := 2229, witness := RowWitness.topPrime 2179 },
  { lower := 2230, upper := 2271, witness := RowWitness.topPrime 2221 },
  { lower := 2272, upper := 2319, witness := RowWitness.topPrime 2269 },
  { lower := 2320, upper := 2361, witness := RowWitness.topPrime 2311 },
  { lower := 2362, upper := 2407, witness := RowWitness.topPrime 2357 },
  { lower := 2408, upper := 2449, witness := RowWitness.topPrime 2399 },
  { lower := 2450, upper := 2497, witness := RowWitness.topPrime 2447 },
  { lower := 2498, upper := 2527, witness := RowWitness.topPrime 2477 },
  { lower := 2528, upper := 2571, witness := RowWitness.topPrime 2521 },
  { lower := 2572, upper := 2591, witness := RowWitness.topPrime 2557 },
  { lower := 2645, upper := 2683, witness := RowWitness.topPrime 2633 },
  { lower := 2684, upper := 2733, witness := RowWitness.topPrime 2683 },
  { lower := 2734, upper := 2781, witness := RowWitness.topPrime 2731 },
  { lower := 2782, upper := 2800, witness := RowWitness.topPrime 2777 },
  { lower := 2816, upper := 2833, witness := RowWitness.topPrime 2803 },
  { lower := 2875, upper := 2911, witness := RowWitness.topPrime 2861 },
  { lower := 2912, upper := 2959, witness := RowWitness.topPrime 2909 },
  { lower := 2960, upper := 2966, witness := RowWitness.topPrime 2957 },
  { lower := 3025, upper := 3073, witness := RowWitness.topPrime 3023 },
  { lower := 3074, upper := 3117, witness := RowWitness.topPrime 3067 },
  { lower := 3118, upper := 3122, witness := RowWitness.topPrime 3109 },
  { lower := 3125, upper := 3137, witness := RowWitness.topPrime 3121 },
  { lower := 3146, upper := 3187, witness := RowWitness.topPrime 3137 },
  { lower := 3188, upper := 3196, witness := RowWitness.topPrime 3187 },
  { lower := 3200, upper := 3241, witness := RowWitness.topPrime 3191 },
  { lower := 3242, upper := 3279, witness := RowWitness.topPrime 3229 },
  { lower := 3280, upper := 3300, witness := RowWitness.topPrime 3271 },
  { lower := 3362, upper := 3411, witness := RowWitness.topPrime 3361 },
  { lower := 3412, upper := 3438, witness := RowWitness.topPrime 3407 },
  { lower := 3456, upper := 3480, witness := RowWitness.topPrime 3449 },
  { lower := 3500, upper := 3506, witness := RowWitness.topPrime 3499 },
  { lower := 3509, upper := 3549, witness := RowWitness.topPrime 3499 },
  { lower := 3550, upper := 3559, witness := RowWitness.topPrime 3547 },
  { lower := 3584, upper := 3599, witness := RowWitness.topPrime 3583 },
  { lower := 3610, upper := 3657, witness := RowWitness.topPrime 3607 },
  { lower := 3658, upper := 3680, witness := RowWitness.topPrime 3643 },
  { lower := 3703, upper := 3751, witness := RowWitness.topPrime 3701 },
  { lower := 3752, upper := 3789, witness := RowWitness.topPrime 3739 },
  { lower := 3790, upper := 3801, witness := RowWitness.topPrime 3779 },
  { lower := 3844, upper := 3883, witness := RowWitness.topPrime 3833 },
  { lower := 3884, upper := 3925, witness := RowWitness.topPrime 3881 },
  { lower := 3971, upper := 4017, witness := RowWitness.topPrime 3967 },
  { lower := 4018, upper := 4043, witness := RowWitness.topPrime 4013 },
  { lower := 4096, upper := 4143, witness := RowWitness.topPrime 4093 },
  { lower := 4144, upper := 4166, witness := RowWitness.topPrime 4139 },
  { lower := 4224, upper := 4269, witness := RowWitness.topPrime 4219 },
  { lower := 4270, upper := 4275, witness := RowWitness.topPrime 4261 },
  { lower := 4352, upper := 4399, witness := RowWitness.topPrime 4349 },
  { lower := 4400, upper := 4444, witness := RowWitness.topPrime 4397 },
  { lower := 4459, upper := 4468, witness := RowWitness.topPrime 4457 },
  { lower := 4608, upper := 4613, witness := RowWitness.topPrime 4603 },
  { lower := 4732, upper := 4743, witness := RowWitness.topPrime 4729 },
  { lower := 4761, upper := 4782, witness := RowWitness.topPrime 4759 },
  { lower := 4802, upper := 4851, witness := RowWitness.topPrime 4801 },
  { lower := 4852, upper := 4852, witness := RowWitness.topPrime 4831 },
  { lower := 4901, upper := 4939, witness := RowWitness.topPrime 4889 },
  { lower := 4940, upper := 4951, witness := RowWitness.topPrime 4937 },
  { lower := 5043, upper := 5089, witness := RowWitness.topPrime 5039 },
  { lower := 5090, upper := 5137, witness := RowWitness.topPrime 5087 },
  { lower := 5138, upper := 5169, witness := RowWitness.topPrime 5119 },
  { lower := 5170, upper := 5170, witness := RowWitness.topPrime 5167 },
  { lower := 5324, upper := 5340, witness := RowWitness.topPrime 5323 },
  { lower := 5415, upper := 5426, witness := RowWitness.topPrime 5413 },
  { lower := 5488, upper := 5526, witness := RowWitness.topPrime 5483 },
  { lower := 5632, upper := 5673, witness := RowWitness.topPrime 5623 },
  { lower := 5674, upper := 5675, witness := RowWitness.topPrime 5669 },
  { lower := 5776, upper := 5799, witness := RowWitness.topPrime 5749 },
  { lower := 5800, upper := 5816, witness := RowWitness.topPrime 5791 },
  { lower := 5819, upper := 5826, witness := RowWitness.topPrime 5813 },
  { lower := 5831, upper := 5877, witness := RowWitness.topPrime 5827 },
  { lower := 5878, upper := 5881, witness := RowWitness.topPrime 5869 },
  { lower := 5888, upper := 5931, witness := RowWitness.topPrime 5881 },
  { lower := 5932, upper := 5937, witness := RowWitness.topPrime 5927 },
  { lower := 6144, upper := 6193, witness := RowWitness.topPrime 6143 },
  { lower := 6194, upper := 6194, witness := RowWitness.topPrime 6173 },
  { lower := 6517, upper := 6541, witness := RowWitness.topPrime 6491 },
  { lower := 6542, upper := 6548, witness := RowWitness.topPrime 6529 },
  { lower := 6561, upper := 6567, witness := RowWitness.topPrime 6553 },
  { lower := 6591, upper := 6611, witness := RowWitness.topPrime 6581 },
  { lower := 6627, upper := 6641, witness := RowWitness.topPrime 6619 },
  { lower := 6655, upper := 6703, witness := RowWitness.topPrime 6653 },
  { lower := 6704, upper := 6705, witness := RowWitness.topPrime 6703 },
  { lower := 6727, upper := 6769, witness := RowWitness.topPrime 6719 },
  { lower := 6770, upper := 6777, witness := RowWitness.topPrime 6763 },
  { lower := 6859, upper := 6907, witness := RowWitness.topPrime 6857 },
  { lower := 6908, upper := 6927, witness := RowWitness.topPrime 6907 },
  { lower := 7203, upper := 7218, witness := RowWitness.topPrime 7193 },
  { lower := 7220, upper := 7253, witness := RowWitness.topPrime 7219 },
  { lower := 7406, upper := 7443, witness := RowWitness.topPrime 7393 },
  { lower := 7444, upper := 7456, witness := RowWitness.topPrime 7433 },
  { lower := 7546, upper := 7550, witness := RowWitness.topPrime 7541 },
  { lower := 7569, upper := 7611, witness := RowWitness.topPrime 7561 },
  { lower := 7612, upper := 7619, witness := RowWitness.topPrime 7607 },
  { lower := 7688, upper := 7730, witness := RowWitness.topPrime 7687 },
  { lower := 7935, upper := 7983, witness := RowWitness.topPrime 7933 },
  { lower := 7984, upper := 7992, witness := RowWitness.topPrime 7963 },
  { lower := 8214, upper := 8259, witness := RowWitness.topPrime 8209 },
  { lower := 8260, upper := 8264, witness := RowWitness.topPrime 8243 },
  { lower := 8410, upper := 8439, witness := RowWitness.topPrime 8389 },
  { lower := 8440, upper := 8455, witness := RowWitness.topPrime 8431 },
  { lower := 8664, upper := 8699, witness := RowWitness.topPrime 8663 },
  { lower := 8704, upper := 8714, witness := RowWitness.topPrime 8699 },
  { lower := 8748, upper := 8797, witness := RowWitness.topPrime 8747 },
  { lower := 8798, upper := 8800, witness := RowWitness.topPrime 8783 },
  { lower := 8836, upper := 8838, witness := RowWitness.topPrime 8831 },
  { lower := 9025, upper := 9043, witness := RowWitness.topPrime 9013 },
  { lower := 9245, upper := 9291, witness := RowWitness.topPrime 9241 },
  { lower := 9292, upper := 9301, witness := RowWitness.topPrime 9283 },
  { lower := 9386, upper := 9425, witness := RowWitness.topPrime 9377 },
  { lower := 9604, upper := 9651, witness := RowWitness.topPrime 9601 },
  { lower := 9652, upper := 9654, witness := RowWitness.topPrime 9649 },
  { lower := 9747, upper := 9778, witness := RowWitness.topPrime 9743 },
  { lower := 10086, upper := 10129, witness := RowWitness.topPrime 10079 },
  { lower := 10130, upper := 10142, witness := RowWitness.topPrime 10111 },
  { lower := 10580, upper := 10617, witness := RowWitness.topPrime 10567 },
  { lower := 10618, upper := 10621, witness := RowWitness.topPrime 10613 },
  { lower := 10625, upper := 10630, witness := RowWitness.topPrime 10613 },
  { lower := 10648, upper := 10675, witness := RowWitness.topPrime 10639 },
  { lower := 10935, upper := 10959, witness := RowWitness.topPrime 10909 },
  { lower := 10960, upper := 11002, witness := RowWitness.topPrime 10957 },
  { lower := 11094, upper := 11095, witness := RowWitness.topPrime 11093 },
  { lower := 11109, upper := 11143, witness := RowWitness.topPrime 11093 },
  { lower := 11144, upper := 11144, witness := RowWitness.topPrime 11131 },
  { lower := 11264, upper := 11300, witness := RowWitness.topPrime 11261 },
  { lower := 11774, upper := 11793, witness := RowWitness.topPrime 11743 },
  { lower := 11794, upper := 11824, witness := RowWitness.topPrime 11789 },
  { lower := 12005, upper := 12029, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12338, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12543, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13171, witness := RowWitness.topPrime 13121 },
  { lower := 13172, upper := 13172, witness := RowWitness.topPrime 13171 },
  { lower := 13225, upper := 13232, witness := RowWitness.topPrime 13219 },
  { lower := 13254, upper := 13275, witness := RowWitness.topPrime 13249 },
  { lower := 13312, upper := 13359, witness := RowWitness.topPrime 13309 },
  { lower := 13360, upper := 13360, witness := RowWitness.topPrime 13339 },
  { lower := 13454, upper := 13501, witness := RowWitness.topPrime 13451 },
  { lower := 13502, upper := 13504, witness := RowWitness.topPrime 13499 },
  { lower := 13718, upper := 13740, witness := RowWitness.topPrime 13711 },
  { lower := 13750, upper := 13779, witness := RowWitness.topPrime 13729 },
  { lower := 13780, upper := 13800, witness := RowWitness.topPrime 13763 },
  { lower := 14297, upper := 14333, witness := RowWitness.topPrime 14293 },
  { lower := 14336, upper := 14347, witness := RowWitness.topPrime 14327 },
  { lower := 14375, upper := 14386, witness := RowWitness.topPrime 14369 },
  { lower := 14406, upper := 14451, witness := RowWitness.topPrime 14401 },
  { lower := 14452, upper := 14456, witness := RowWitness.topPrime 14449 },
  { lower := 14812, upper := 14842, witness := RowWitness.topPrime 14797 },
  { lower := 15138, upper := 15179, witness := RowWitness.topPrime 15137 },
  { lower := 15376, upper := 15423, witness := RowWitness.topPrime 15373 },
  { lower := 15424, upper := 15426, witness := RowWitness.topPrime 15413 },
  { lower := 15979, upper := 16022, witness := RowWitness.topPrime 15973 },
  { lower := 16384, upper := 16387, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16434, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16837, witness := RowWitness.topPrime 16787 },
  { lower := 16838, upper := 16860, witness := RowWitness.topPrime 16831 },
  { lower := 17303, upper := 17348, witness := RowWitness.topPrime 17299 },
  { lower := 17500, upper := 17546, witness := RowWitness.topPrime 17497 },
  { lower := 17672, upper := 17711, witness := RowWitness.topPrime 17669 },
  { lower := 18491, upper := 18531, witness := RowWitness.topPrime 18481 },
  { lower := 18532, upper := 18541, witness := RowWitness.topPrime 18523 },
  { lower := 19208, upper := 19216, witness := RowWitness.topPrime 19207 },
  { lower := 19220, upper := 19258, witness := RowWitness.topPrime 19219 },
  { lower := 20181, upper := 20227, witness := RowWitness.topPrime 20177 },
  { lower := 20228, upper := 20231, witness := RowWitness.topPrime 20219 },
  { lower := 20577, upper := 20585, witness := RowWitness.topPrime 20563 },
  { lower := 21866, upper := 21913, witness := RowWitness.topPrime 21863 },
  { lower := 21914, upper := 21925, witness := RowWitness.topPrime 21911 },
  { lower := 22103, upper := 22140, witness := RowWitness.topPrime 22093 },
  { lower := 23552, upper := 23584, witness := RowWitness.topPrime 23549 },
  { lower := 24025, upper := 24073, witness := RowWitness.topPrime 24023 },
  { lower := 24074, upper := 24075, witness := RowWitness.topPrime 24071 },
  { lower := 24334, upper := 24349, witness := RowWitness.topPrime 24329 },
  { lower := 25000, upper := 25036, witness := RowWitness.topPrime 24989 },
  { lower := 26411, upper := 26414, witness := RowWitness.topPrime 26407 },
  { lower := 26624, upper := 26647, witness := RowWitness.topPrime 26597 },
  { lower := 26648, upper := 26670, witness := RowWitness.topPrime 26647 },
  { lower := 28577, upper := 28611, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28722, witness := RowWitness.topPrime 28711 },
  { lower := 28749, upper := 28767, witness := RowWitness.topPrime 28729 },
  { lower := 30758, upper := 30770, witness := RowWitness.topPrime 30757 },
  { lower := 31250, upper := 31263, witness := RowWitness.topPrime 31249 },
  { lower := 31944, upper := 31957, witness := RowWitness.topPrime 31907 },
  { lower := 31958, upper := 31989, witness := RowWitness.topPrime 31957 },
  { lower := 32805, upper := 32818, witness := RowWitness.topPrime 32803 },
  { lower := 33282, upper := 33297, witness := RowWitness.topPrime 33247 },
  { lower := 33298, upper := 33325, witness := RowWitness.topPrime 33289 },
  { lower := 33620, upper := 33664, witness := RowWitness.topPrime 33619 },
  { lower := 35152, upper := 35181, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35351, witness := RowWitness.topPrime 35339 },
  { lower := 36982, upper := 37029, witness := RowWitness.topPrime 36979 },
  { lower := 37030, upper := 37030, witness := RowWitness.topPrime 37021 },
  { lower := 43940, upper := 43973, witness := RowWitness.topPrime 43933 },
  { lower := 48020, upper := 48063, witness := RowWitness.topPrime 48017 },
  { lower := 73205, upper := 73217, witness := RowWitness.topPrime 73189 },
  { lower := 327701, upper := 327730, witness := RowWitness.topPrime 327689 }
]

def row051_layers : List CoverLayer := [
  { lower := 2550, upper := 5100, M := 33 },
  { lower := 5100, upper := 10200, M := 31 },
  { lower := 10200, upper := 20400, M := 28 },
  { lower := 20400, upper := 40800, M := 26 },
  { lower := 40800, upper := 81600, M := 24 },
  { lower := 81600, upper := 163200, M := 22 },
  { lower := 163200, upper := 326400, M := 21 },
  { lower := 326400, upper := 652800, M := 19 },
  { lower := 652800, upper := 1305600, M := 18 },
  { lower := 1305600, upper := 2611200, M := 16 },
  { lower := 2611200, upper := 5222400, M := 15 },
  { lower := 5222400, upper := 10444800, M := 14 },
  { lower := 10444800, upper := 20889600, M := 13 },
  { lower := 20889600, upper := 41779200, M := 12 },
  { lower := 41779200, upper := 83558400, M := 11 },
  { lower := 83558400, upper := 167116800, M := 10 },
  { lower := 167116800, upper := 334233600, M := 9 },
  { lower := 334233600, upper := 668467200, M := 9 },
  { lower := 668467200, upper := 1336934400, M := 8 },
  { lower := 1336934400, upper := 2673868800, M := 7 },
  { lower := 2673868800, upper := 5347737600, M := 7 },
  { lower := 5347737600, upper := 10695475200, M := 6 },
  { lower := 10695475200, upper := 21390950400, M := 6 },
  { lower := 21390950400, upper := 42781900800, M := 6 },
  { lower := 42781900800, upper := 85563801600, M := 5 },
  { lower := 85563801600, upper := 171127603200, M := 5 },
  { lower := 171127603200, upper := 342255206400, M := 4 },
  { lower := 342255206400, upper := 684510412800, M := 4 },
  { lower := 684510412800, upper := 1369020825600, M := 4 },
  { lower := 1369020825600, upper := 2738041651200, M := 4 },
  { lower := 2738041651200, upper := 5476083302400, M := 3 },
  { lower := 5476083302400, upper := 10952166604800, M := 3 },
  { lower := 10952166604800, upper := 21904333209600, M := 3 },
  { lower := 21904333209600, upper := 43808666419200, M := 3 },
  { lower := 43808666419200, upper := 87617332838400, M := 3 },
  { lower := 87617332838400, upper := 175234665676800, M := 2 },
  { lower := 175234665676800, upper := 350469331353600, M := 2 },
  { lower := 350469331353600, upper := 700938662707200, M := 2 },
  { lower := 700938662707200, upper := 1401877325414400, M := 2 },
  { lower := 1401877325414400, upper := 2803754650828800, M := 2 },
  { lower := 2803754650828800, upper := 5607509301657600, M := 2 },
  { lower := 5607509301657600, upper := 11215018603315200, M := 2 },
  { lower := 11215018603315200, upper := 22430037206630400, M := 2 },
  { lower := 22430037206630400, upper := 44860074413260800, M := 1 },
  { lower := 44860074413260800, upper := 89720148826521600, M := 1 },
  { lower := 89720148826521600, upper := 100000000000000000, M := 1 }
]

def row051 : FiniteCoverRow := {
  height := row051_height,
  goods := row051_goods,
  layers := row051_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_good000_checked :
    goodSegmentCheck 51 16 35
      { lower := 104, upper := 153, witness := RowWitness.topPrime 103 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good001_checked :
    goodSegmentCheck 51 16 35
      { lower := 154, upper := 201, witness := RowWitness.topPrime 151 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good002_checked :
    goodSegmentCheck 51 16 35
      { lower := 202, upper := 249, witness := RowWitness.topPrime 199 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good003_checked :
    goodSegmentCheck 51 16 35
      { lower := 250, upper := 291, witness := RowWitness.topPrime 241 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good004_checked :
    goodSegmentCheck 51 16 35
      { lower := 292, upper := 333, witness := RowWitness.topPrime 283 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good005_checked :
    goodSegmentCheck 51 16 35
      { lower := 334, upper := 381, witness := RowWitness.topPrime 331 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good006_checked :
    goodSegmentCheck 51 16 35
      { lower := 382, upper := 429, witness := RowWitness.topPrime 379 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good007_checked :
    goodSegmentCheck 51 16 35
      { lower := 430, upper := 471, witness := RowWitness.topPrime 421 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good008_checked :
    goodSegmentCheck 51 16 35
      { lower := 472, upper := 517, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good009_checked :
    goodSegmentCheck 51 16 35
      { lower := 518, upper := 559, witness := RowWitness.topPrime 509 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good010_checked :
    goodSegmentCheck 51 16 35
      { lower := 560, upper := 607, witness := RowWitness.topPrime 557 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good011_checked :
    goodSegmentCheck 51 16 35
      { lower := 608, upper := 657, witness := RowWitness.topPrime 607 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good012_checked :
    goodSegmentCheck 51 16 35
      { lower := 658, upper := 703, witness := RowWitness.topPrime 653 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good013_checked :
    goodSegmentCheck 51 16 35
      { lower := 704, upper := 751, witness := RowWitness.topPrime 701 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good014_checked :
    goodSegmentCheck 51 16 35
      { lower := 752, upper := 801, witness := RowWitness.topPrime 751 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good015_checked :
    goodSegmentCheck 51 16 35
      { lower := 802, upper := 847, witness := RowWitness.topPrime 797 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_good016_checked :
    goodSegmentCheck 51 16 35
      { lower := 848, upper := 889, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good017_checked :
    goodSegmentCheck 51 16 35
      { lower := 890, upper := 937, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good018_checked :
    goodSegmentCheck 51 16 35
      { lower := 938, upper := 987, witness := RowWitness.topPrime 937 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good019_checked :
    goodSegmentCheck 51 16 35
      { lower := 988, upper := 1033, witness := RowWitness.topPrime 983 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good020_checked :
    goodSegmentCheck 51 16 35
      { lower := 1034, upper := 1083, witness := RowWitness.topPrime 1033 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good021_checked :
    goodSegmentCheck 51 16 35
      { lower := 1084, upper := 1119, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good022_checked :
    goodSegmentCheck 51 16 35
      { lower := 1120, upper := 1167, witness := RowWitness.topPrime 1117 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good023_checked :
    goodSegmentCheck 51 16 35
      { lower := 1168, upper := 1213, witness := RowWitness.topPrime 1163 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good024_checked :
    goodSegmentCheck 51 16 35
      { lower := 1214, upper := 1263, witness := RowWitness.topPrime 1213 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good025_checked :
    goodSegmentCheck 51 16 35
      { lower := 1264, upper := 1309, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good026_checked :
    goodSegmentCheck 51 16 35
      { lower := 1310, upper := 1357, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good027_checked :
    goodSegmentCheck 51 16 35
      { lower := 1358, upper := 1377, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good028_checked :
    goodSegmentCheck 51 16 35
      { lower := 1378, upper := 1423, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good029_checked :
    goodSegmentCheck 51 16 35
      { lower := 1424, upper := 1473, witness := RowWitness.topPrime 1423 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good030_checked :
    goodSegmentCheck 51 16 35
      { lower := 1474, upper := 1521, witness := RowWitness.topPrime 1471 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good031_checked :
    goodSegmentCheck 51 16 35
      { lower := 1522, upper := 1561, witness := RowWitness.topPrime 1511 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_good032_checked :
    goodSegmentCheck 51 16 35
      { lower := 1562, upper := 1609, witness := RowWitness.topPrime 1559 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good033_checked :
    goodSegmentCheck 51 16 35
      { lower := 1610, upper := 1659, witness := RowWitness.topPrime 1609 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good034_checked :
    goodSegmentCheck 51 16 35
      { lower := 1660, upper := 1707, witness := RowWitness.topPrime 1657 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good035_checked :
    goodSegmentCheck 51 16 35
      { lower := 1708, upper := 1749, witness := RowWitness.topPrime 1699 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good036_checked :
    goodSegmentCheck 51 16 35
      { lower := 1750, upper := 1797, witness := RowWitness.topPrime 1747 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good037_checked :
    goodSegmentCheck 51 16 35
      { lower := 1798, upper := 1839, witness := RowWitness.topPrime 1789 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good038_checked :
    goodSegmentCheck 51 16 35
      { lower := 1840, upper := 1881, witness := RowWitness.topPrime 1831 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good039_checked :
    goodSegmentCheck 51 16 35
      { lower := 1882, upper := 1929, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good040_checked :
    goodSegmentCheck 51 16 35
      { lower := 1930, upper := 1963, witness := RowWitness.topPrime 1913 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good041_checked :
    goodSegmentCheck 51 16 35
      { lower := 1964, upper := 2001, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good042_checked :
    goodSegmentCheck 51 16 35
      { lower := 2002, upper := 2049, witness := RowWitness.topPrime 1999 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good043_checked :
    goodSegmentCheck 51 16 35
      { lower := 2050, upper := 2089, witness := RowWitness.topPrime 2039 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good044_checked :
    goodSegmentCheck 51 16 35
      { lower := 2090, upper := 2139, witness := RowWitness.topPrime 2089 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good045_checked :
    goodSegmentCheck 51 16 35
      { lower := 2140, upper := 2187, witness := RowWitness.topPrime 2137 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good046_checked :
    goodSegmentCheck 51 16 35
      { lower := 2188, upper := 2229, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good047_checked :
    goodSegmentCheck 51 16 35
      { lower := 2230, upper := 2271, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_good048_checked :
    goodSegmentCheck 51 16 35
      { lower := 2272, upper := 2319, witness := RowWitness.topPrime 2269 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good049_checked :
    goodSegmentCheck 51 16 35
      { lower := 2320, upper := 2361, witness := RowWitness.topPrime 2311 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good050_checked :
    goodSegmentCheck 51 16 35
      { lower := 2362, upper := 2407, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good051_checked :
    goodSegmentCheck 51 16 35
      { lower := 2408, upper := 2449, witness := RowWitness.topPrime 2399 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good052_checked :
    goodSegmentCheck 51 16 35
      { lower := 2450, upper := 2497, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good053_checked :
    goodSegmentCheck 51 16 35
      { lower := 2498, upper := 2527, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good054_checked :
    goodSegmentCheck 51 16 35
      { lower := 2528, upper := 2571, witness := RowWitness.topPrime 2521 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good055_checked :
    goodSegmentCheck 51 16 35
      { lower := 2572, upper := 2591, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good056_checked :
    goodSegmentCheck 51 16 35
      { lower := 2645, upper := 2683, witness := RowWitness.topPrime 2633 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good057_checked :
    goodSegmentCheck 51 16 35
      { lower := 2684, upper := 2733, witness := RowWitness.topPrime 2683 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good058_checked :
    goodSegmentCheck 51 16 35
      { lower := 2734, upper := 2781, witness := RowWitness.topPrime 2731 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good059_checked :
    goodSegmentCheck 51 16 35
      { lower := 2782, upper := 2800, witness := RowWitness.topPrime 2777 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good060_checked :
    goodSegmentCheck 51 16 35
      { lower := 2816, upper := 2833, witness := RowWitness.topPrime 2803 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good061_checked :
    goodSegmentCheck 51 16 35
      { lower := 2875, upper := 2911, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good062_checked :
    goodSegmentCheck 51 16 35
      { lower := 2912, upper := 2959, witness := RowWitness.topPrime 2909 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good063_checked :
    goodSegmentCheck 51 16 35
      { lower := 2960, upper := 2966, witness := RowWitness.topPrime 2957 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_good064_checked :
    goodSegmentCheck 51 16 35
      { lower := 3025, upper := 3073, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good065_checked :
    goodSegmentCheck 51 16 35
      { lower := 3074, upper := 3117, witness := RowWitness.topPrime 3067 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good066_checked :
    goodSegmentCheck 51 16 35
      { lower := 3118, upper := 3122, witness := RowWitness.topPrime 3109 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good067_checked :
    goodSegmentCheck 51 16 35
      { lower := 3125, upper := 3137, witness := RowWitness.topPrime 3121 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good068_checked :
    goodSegmentCheck 51 16 35
      { lower := 3146, upper := 3187, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good069_checked :
    goodSegmentCheck 51 16 35
      { lower := 3188, upper := 3196, witness := RowWitness.topPrime 3187 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good070_checked :
    goodSegmentCheck 51 16 35
      { lower := 3200, upper := 3241, witness := RowWitness.topPrime 3191 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good071_checked :
    goodSegmentCheck 51 16 35
      { lower := 3242, upper := 3279, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good072_checked :
    goodSegmentCheck 51 16 35
      { lower := 3280, upper := 3300, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good073_checked :
    goodSegmentCheck 51 16 35
      { lower := 3362, upper := 3411, witness := RowWitness.topPrime 3361 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good074_checked :
    goodSegmentCheck 51 16 35
      { lower := 3412, upper := 3438, witness := RowWitness.topPrime 3407 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good075_checked :
    goodSegmentCheck 51 16 35
      { lower := 3456, upper := 3480, witness := RowWitness.topPrime 3449 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good076_checked :
    goodSegmentCheck 51 16 35
      { lower := 3500, upper := 3506, witness := RowWitness.topPrime 3499 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good077_checked :
    goodSegmentCheck 51 16 35
      { lower := 3509, upper := 3549, witness := RowWitness.topPrime 3499 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good078_checked :
    goodSegmentCheck 51 16 35
      { lower := 3550, upper := 3559, witness := RowWitness.topPrime 3547 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good079_checked :
    goodSegmentCheck 51 16 35
      { lower := 3584, upper := 3599, witness := RowWitness.topPrime 3583 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_good080_checked :
    goodSegmentCheck 51 16 35
      { lower := 3610, upper := 3657, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good081_checked :
    goodSegmentCheck 51 16 35
      { lower := 3658, upper := 3680, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good082_checked :
    goodSegmentCheck 51 16 35
      { lower := 3703, upper := 3751, witness := RowWitness.topPrime 3701 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good083_checked :
    goodSegmentCheck 51 16 35
      { lower := 3752, upper := 3789, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good084_checked :
    goodSegmentCheck 51 16 35
      { lower := 3790, upper := 3801, witness := RowWitness.topPrime 3779 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good085_checked :
    goodSegmentCheck 51 16 35
      { lower := 3844, upper := 3883, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good086_checked :
    goodSegmentCheck 51 16 35
      { lower := 3884, upper := 3925, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good087_checked :
    goodSegmentCheck 51 16 35
      { lower := 3971, upper := 4017, witness := RowWitness.topPrime 3967 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good088_checked :
    goodSegmentCheck 51 16 35
      { lower := 4018, upper := 4043, witness := RowWitness.topPrime 4013 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good089_checked :
    goodSegmentCheck 51 16 35
      { lower := 4096, upper := 4143, witness := RowWitness.topPrime 4093 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good090_checked :
    goodSegmentCheck 51 16 35
      { lower := 4144, upper := 4166, witness := RowWitness.topPrime 4139 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good091_checked :
    goodSegmentCheck 51 16 35
      { lower := 4224, upper := 4269, witness := RowWitness.topPrime 4219 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good092_checked :
    goodSegmentCheck 51 16 35
      { lower := 4270, upper := 4275, witness := RowWitness.topPrime 4261 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good093_checked :
    goodSegmentCheck 51 16 35
      { lower := 4352, upper := 4399, witness := RowWitness.topPrime 4349 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good094_checked :
    goodSegmentCheck 51 16 35
      { lower := 4400, upper := 4444, witness := RowWitness.topPrime 4397 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good095_checked :
    goodSegmentCheck 51 16 35
      { lower := 4459, upper := 4468, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_good096_checked :
    goodSegmentCheck 51 16 35
      { lower := 4608, upper := 4613, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good097_checked :
    goodSegmentCheck 51 16 35
      { lower := 4732, upper := 4743, witness := RowWitness.topPrime 4729 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good098_checked :
    goodSegmentCheck 51 16 35
      { lower := 4761, upper := 4782, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good099_checked :
    goodSegmentCheck 51 16 35
      { lower := 4802, upper := 4851, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good100_checked :
    goodSegmentCheck 51 16 35
      { lower := 4852, upper := 4852, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good101_checked :
    goodSegmentCheck 51 16 35
      { lower := 4901, upper := 4939, witness := RowWitness.topPrime 4889 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good102_checked :
    goodSegmentCheck 51 16 35
      { lower := 4940, upper := 4951, witness := RowWitness.topPrime 4937 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good103_checked :
    goodSegmentCheck 51 16 35
      { lower := 5043, upper := 5089, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good104_checked :
    goodSegmentCheck 51 16 35
      { lower := 5090, upper := 5137, witness := RowWitness.topPrime 5087 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good105_checked :
    goodSegmentCheck 51 16 35
      { lower := 5138, upper := 5169, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good106_checked :
    goodSegmentCheck 51 16 35
      { lower := 5170, upper := 5170, witness := RowWitness.topPrime 5167 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good107_checked :
    goodSegmentCheck 51 16 35
      { lower := 5324, upper := 5340, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good108_checked :
    goodSegmentCheck 51 16 35
      { lower := 5415, upper := 5426, witness := RowWitness.topPrime 5413 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good109_checked :
    goodSegmentCheck 51 16 35
      { lower := 5488, upper := 5526, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good110_checked :
    goodSegmentCheck 51 16 35
      { lower := 5632, upper := 5673, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good111_checked :
    goodSegmentCheck 51 16 35
      { lower := 5674, upper := 5675, witness := RowWitness.topPrime 5669 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_good112_checked :
    goodSegmentCheck 51 16 35
      { lower := 5776, upper := 5799, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good113_checked :
    goodSegmentCheck 51 16 35
      { lower := 5800, upper := 5816, witness := RowWitness.topPrime 5791 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good114_checked :
    goodSegmentCheck 51 16 35
      { lower := 5819, upper := 5826, witness := RowWitness.topPrime 5813 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good115_checked :
    goodSegmentCheck 51 16 35
      { lower := 5831, upper := 5877, witness := RowWitness.topPrime 5827 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good116_checked :
    goodSegmentCheck 51 16 35
      { lower := 5878, upper := 5881, witness := RowWitness.topPrime 5869 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good117_checked :
    goodSegmentCheck 51 16 35
      { lower := 5888, upper := 5931, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good118_checked :
    goodSegmentCheck 51 16 35
      { lower := 5932, upper := 5937, witness := RowWitness.topPrime 5927 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good119_checked :
    goodSegmentCheck 51 16 35
      { lower := 6144, upper := 6193, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good120_checked :
    goodSegmentCheck 51 16 35
      { lower := 6194, upper := 6194, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good121_checked :
    goodSegmentCheck 51 16 35
      { lower := 6517, upper := 6541, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good122_checked :
    goodSegmentCheck 51 16 35
      { lower := 6542, upper := 6548, witness := RowWitness.topPrime 6529 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good123_checked :
    goodSegmentCheck 51 16 35
      { lower := 6561, upper := 6567, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good124_checked :
    goodSegmentCheck 51 16 35
      { lower := 6591, upper := 6611, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good125_checked :
    goodSegmentCheck 51 16 35
      { lower := 6627, upper := 6641, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good126_checked :
    goodSegmentCheck 51 16 35
      { lower := 6655, upper := 6703, witness := RowWitness.topPrime 6653 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good127_checked :
    goodSegmentCheck 51 16 35
      { lower := 6704, upper := 6705, witness := RowWitness.topPrime 6703 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_good128_checked :
    goodSegmentCheck 51 16 35
      { lower := 6727, upper := 6769, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good129_checked :
    goodSegmentCheck 51 16 35
      { lower := 6770, upper := 6777, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good130_checked :
    goodSegmentCheck 51 16 35
      { lower := 6859, upper := 6907, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good131_checked :
    goodSegmentCheck 51 16 35
      { lower := 6908, upper := 6927, witness := RowWitness.topPrime 6907 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good132_checked :
    goodSegmentCheck 51 16 35
      { lower := 7203, upper := 7218, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good133_checked :
    goodSegmentCheck 51 16 35
      { lower := 7220, upper := 7253, witness := RowWitness.topPrime 7219 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good134_checked :
    goodSegmentCheck 51 16 35
      { lower := 7406, upper := 7443, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good135_checked :
    goodSegmentCheck 51 16 35
      { lower := 7444, upper := 7456, witness := RowWitness.topPrime 7433 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good136_checked :
    goodSegmentCheck 51 16 35
      { lower := 7546, upper := 7550, witness := RowWitness.topPrime 7541 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good137_checked :
    goodSegmentCheck 51 16 35
      { lower := 7569, upper := 7611, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good138_checked :
    goodSegmentCheck 51 16 35
      { lower := 7612, upper := 7619, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good139_checked :
    goodSegmentCheck 51 16 35
      { lower := 7688, upper := 7730, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good140_checked :
    goodSegmentCheck 51 16 35
      { lower := 7935, upper := 7983, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good141_checked :
    goodSegmentCheck 51 16 35
      { lower := 7984, upper := 7992, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good142_checked :
    goodSegmentCheck 51 16 35
      { lower := 8214, upper := 8259, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good143_checked :
    goodSegmentCheck 51 16 35
      { lower := 8260, upper := 8264, witness := RowWitness.topPrime 8243 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_good144_checked :
    goodSegmentCheck 51 16 35
      { lower := 8410, upper := 8439, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good145_checked :
    goodSegmentCheck 51 16 35
      { lower := 8440, upper := 8455, witness := RowWitness.topPrime 8431 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good146_checked :
    goodSegmentCheck 51 16 35
      { lower := 8664, upper := 8699, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good147_checked :
    goodSegmentCheck 51 16 35
      { lower := 8704, upper := 8714, witness := RowWitness.topPrime 8699 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good148_checked :
    goodSegmentCheck 51 16 35
      { lower := 8748, upper := 8797, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good149_checked :
    goodSegmentCheck 51 16 35
      { lower := 8798, upper := 8800, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good150_checked :
    goodSegmentCheck 51 16 35
      { lower := 8836, upper := 8838, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good151_checked :
    goodSegmentCheck 51 16 35
      { lower := 9025, upper := 9043, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good152_checked :
    goodSegmentCheck 51 16 35
      { lower := 9245, upper := 9291, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good153_checked :
    goodSegmentCheck 51 16 35
      { lower := 9292, upper := 9301, witness := RowWitness.topPrime 9283 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good154_checked :
    goodSegmentCheck 51 16 35
      { lower := 9386, upper := 9425, witness := RowWitness.topPrime 9377 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good155_checked :
    goodSegmentCheck 51 16 35
      { lower := 9604, upper := 9651, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good156_checked :
    goodSegmentCheck 51 16 35
      { lower := 9652, upper := 9654, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good157_checked :
    goodSegmentCheck 51 16 35
      { lower := 9747, upper := 9778, witness := RowWitness.topPrime 9743 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good158_checked :
    goodSegmentCheck 51 16 35
      { lower := 10086, upper := 10129, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good159_checked :
    goodSegmentCheck 51 16 35
      { lower := 10130, upper := 10142, witness := RowWitness.topPrime 10111 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_good160_checked :
    goodSegmentCheck 51 16 35
      { lower := 10580, upper := 10617, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good161_checked :
    goodSegmentCheck 51 16 35
      { lower := 10618, upper := 10621, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good162_checked :
    goodSegmentCheck 51 16 35
      { lower := 10625, upper := 10630, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good163_checked :
    goodSegmentCheck 51 16 35
      { lower := 10648, upper := 10675, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good164_checked :
    goodSegmentCheck 51 16 35
      { lower := 10935, upper := 10959, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good165_checked :
    goodSegmentCheck 51 16 35
      { lower := 10960, upper := 11002, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good166_checked :
    goodSegmentCheck 51 16 35
      { lower := 11094, upper := 11095, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good167_checked :
    goodSegmentCheck 51 16 35
      { lower := 11109, upper := 11143, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good168_checked :
    goodSegmentCheck 51 16 35
      { lower := 11144, upper := 11144, witness := RowWitness.topPrime 11131 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good169_checked :
    goodSegmentCheck 51 16 35
      { lower := 11264, upper := 11300, witness := RowWitness.topPrime 11261 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good170_checked :
    goodSegmentCheck 51 16 35
      { lower := 11774, upper := 11793, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good171_checked :
    goodSegmentCheck 51 16 35
      { lower := 11794, upper := 11824, witness := RowWitness.topPrime 11789 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good172_checked :
    goodSegmentCheck 51 16 35
      { lower := 12005, upper := 12029, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good173_checked :
    goodSegmentCheck 51 16 35
      { lower := 12321, upper := 12338, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good174_checked :
    goodSegmentCheck 51 16 35
      { lower := 12500, upper := 12543, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good175_checked :
    goodSegmentCheck 51 16 35
      { lower := 13125, upper := 13171, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_good176_checked :
    goodSegmentCheck 51 16 35
      { lower := 13172, upper := 13172, witness := RowWitness.topPrime 13171 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good177_checked :
    goodSegmentCheck 51 16 35
      { lower := 13225, upper := 13232, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good178_checked :
    goodSegmentCheck 51 16 35
      { lower := 13254, upper := 13275, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good179_checked :
    goodSegmentCheck 51 16 35
      { lower := 13312, upper := 13359, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good180_checked :
    goodSegmentCheck 51 16 35
      { lower := 13360, upper := 13360, witness := RowWitness.topPrime 13339 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good181_checked :
    goodSegmentCheck 51 16 35
      { lower := 13454, upper := 13501, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good182_checked :
    goodSegmentCheck 51 16 35
      { lower := 13502, upper := 13504, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good183_checked :
    goodSegmentCheck 51 16 35
      { lower := 13718, upper := 13740, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good184_checked :
    goodSegmentCheck 51 16 35
      { lower := 13750, upper := 13779, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good185_checked :
    goodSegmentCheck 51 16 35
      { lower := 13780, upper := 13800, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good186_checked :
    goodSegmentCheck 51 16 35
      { lower := 14297, upper := 14333, witness := RowWitness.topPrime 14293 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good187_checked :
    goodSegmentCheck 51 16 35
      { lower := 14336, upper := 14347, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good188_checked :
    goodSegmentCheck 51 16 35
      { lower := 14375, upper := 14386, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good189_checked :
    goodSegmentCheck 51 16 35
      { lower := 14406, upper := 14451, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good190_checked :
    goodSegmentCheck 51 16 35
      { lower := 14452, upper := 14456, witness := RowWitness.topPrime 14449 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good191_checked :
    goodSegmentCheck 51 16 35
      { lower := 14812, upper := 14842, witness := RowWitness.topPrime 14797 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_good192_checked :
    goodSegmentCheck 51 16 35
      { lower := 15138, upper := 15179, witness := RowWitness.topPrime 15137 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good193_checked :
    goodSegmentCheck 51 16 35
      { lower := 15376, upper := 15423, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good194_checked :
    goodSegmentCheck 51 16 35
      { lower := 15424, upper := 15426, witness := RowWitness.topPrime 15413 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good195_checked :
    goodSegmentCheck 51 16 35
      { lower := 15979, upper := 16022, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good196_checked :
    goodSegmentCheck 51 16 35
      { lower := 16384, upper := 16387, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good197_checked :
    goodSegmentCheck 51 16 35
      { lower := 16428, upper := 16434, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good198_checked :
    goodSegmentCheck 51 16 35
      { lower := 16810, upper := 16837, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good199_checked :
    goodSegmentCheck 51 16 35
      { lower := 16838, upper := 16860, witness := RowWitness.topPrime 16831 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good200_checked :
    goodSegmentCheck 51 16 35
      { lower := 17303, upper := 17348, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good201_checked :
    goodSegmentCheck 51 16 35
      { lower := 17500, upper := 17546, witness := RowWitness.topPrime 17497 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good202_checked :
    goodSegmentCheck 51 16 35
      { lower := 17672, upper := 17711, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good203_checked :
    goodSegmentCheck 51 16 35
      { lower := 18491, upper := 18531, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good204_checked :
    goodSegmentCheck 51 16 35
      { lower := 18532, upper := 18541, witness := RowWitness.topPrime 18523 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good205_checked :
    goodSegmentCheck 51 16 35
      { lower := 19208, upper := 19216, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good206_checked :
    goodSegmentCheck 51 16 35
      { lower := 19220, upper := 19258, witness := RowWitness.topPrime 19219 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good207_checked :
    goodSegmentCheck 51 16 35
      { lower := 20181, upper := 20227, witness := RowWitness.topPrime 20177 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_good208_checked :
    goodSegmentCheck 51 16 35
      { lower := 20228, upper := 20231, witness := RowWitness.topPrime 20219 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good209_checked :
    goodSegmentCheck 51 16 35
      { lower := 20577, upper := 20585, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good210_checked :
    goodSegmentCheck 51 16 35
      { lower := 21866, upper := 21913, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good211_checked :
    goodSegmentCheck 51 16 35
      { lower := 21914, upper := 21925, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good212_checked :
    goodSegmentCheck 51 16 35
      { lower := 22103, upper := 22140, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good213_checked :
    goodSegmentCheck 51 16 35
      { lower := 23552, upper := 23584, witness := RowWitness.topPrime 23549 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good214_checked :
    goodSegmentCheck 51 16 35
      { lower := 24025, upper := 24073, witness := RowWitness.topPrime 24023 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good215_checked :
    goodSegmentCheck 51 16 35
      { lower := 24074, upper := 24075, witness := RowWitness.topPrime 24071 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good216_checked :
    goodSegmentCheck 51 16 35
      { lower := 24334, upper := 24349, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good217_checked :
    goodSegmentCheck 51 16 35
      { lower := 25000, upper := 25036, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good218_checked :
    goodSegmentCheck 51 16 35
      { lower := 26411, upper := 26414, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good219_checked :
    goodSegmentCheck 51 16 35
      { lower := 26624, upper := 26647, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good220_checked :
    goodSegmentCheck 51 16 35
      { lower := 26648, upper := 26670, witness := RowWitness.topPrime 26647 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good221_checked :
    goodSegmentCheck 51 16 35
      { lower := 28577, upper := 28611, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good222_checked :
    goodSegmentCheck 51 16 35
      { lower := 28717, upper := 28722, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good223_checked :
    goodSegmentCheck 51 16 35
      { lower := 28749, upper := 28767, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_good224_checked :
    goodSegmentCheck 51 16 35
      { lower := 30758, upper := 30770, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good225_checked :
    goodSegmentCheck 51 16 35
      { lower := 31250, upper := 31263, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good226_checked :
    goodSegmentCheck 51 16 35
      { lower := 31944, upper := 31957, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good227_checked :
    goodSegmentCheck 51 16 35
      { lower := 31958, upper := 31989, witness := RowWitness.topPrime 31957 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good228_checked :
    goodSegmentCheck 51 16 35
      { lower := 32805, upper := 32818, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good229_checked :
    goodSegmentCheck 51 16 35
      { lower := 33282, upper := 33297, witness := RowWitness.topPrime 33247 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good230_checked :
    goodSegmentCheck 51 16 35
      { lower := 33298, upper := 33325, witness := RowWitness.topPrime 33289 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good231_checked :
    goodSegmentCheck 51 16 35
      { lower := 33620, upper := 33664, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good232_checked :
    goodSegmentCheck 51 16 35
      { lower := 35152, upper := 35181, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good233_checked :
    goodSegmentCheck 51 16 35
      { lower := 35344, upper := 35351, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good234_checked :
    goodSegmentCheck 51 16 35
      { lower := 36982, upper := 37029, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good235_checked :
    goodSegmentCheck 51 16 35
      { lower := 37030, upper := 37030, witness := RowWitness.topPrime 37021 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good236_checked :
    goodSegmentCheck 51 16 35
      { lower := 43940, upper := 43973, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good237_checked :
    goodSegmentCheck 51 16 35
      { lower := 48020, upper := 48063, witness := RowWitness.topPrime 48017 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good238_checked :
    goodSegmentCheck 51 16 35
      { lower := 73205, upper := 73217, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row051_good239_checked :
    goodSegmentCheck 51 16 35
      { lower := 327701, upper := 327730, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 51) (r := 16) (s := 35) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_goods_checked :
    row051.goods.all (goodSegmentCheck row051.height.i row051.height.r row051.height.s) = true := by
  change row051_goods.all (goodSegmentCheck 51 16 35) = true
  simp only [row051_goods, List.all_cons, List.all_nil,
    row051_good000_checked,
    row051_good001_checked,
    row051_good002_checked,
    row051_good003_checked,
    row051_good004_checked,
    row051_good005_checked,
    row051_good006_checked,
    row051_good007_checked,
    row051_good008_checked,
    row051_good009_checked,
    row051_good010_checked,
    row051_good011_checked,
    row051_good012_checked,
    row051_good013_checked,
    row051_good014_checked,
    row051_good015_checked,
    row051_good016_checked,
    row051_good017_checked,
    row051_good018_checked,
    row051_good019_checked,
    row051_good020_checked,
    row051_good021_checked,
    row051_good022_checked,
    row051_good023_checked,
    row051_good024_checked,
    row051_good025_checked,
    row051_good026_checked,
    row051_good027_checked,
    row051_good028_checked,
    row051_good029_checked,
    row051_good030_checked,
    row051_good031_checked,
    row051_good032_checked,
    row051_good033_checked,
    row051_good034_checked,
    row051_good035_checked,
    row051_good036_checked,
    row051_good037_checked,
    row051_good038_checked,
    row051_good039_checked,
    row051_good040_checked,
    row051_good041_checked,
    row051_good042_checked,
    row051_good043_checked,
    row051_good044_checked,
    row051_good045_checked,
    row051_good046_checked,
    row051_good047_checked,
    row051_good048_checked,
    row051_good049_checked,
    row051_good050_checked,
    row051_good051_checked,
    row051_good052_checked,
    row051_good053_checked,
    row051_good054_checked,
    row051_good055_checked,
    row051_good056_checked,
    row051_good057_checked,
    row051_good058_checked,
    row051_good059_checked,
    row051_good060_checked,
    row051_good061_checked,
    row051_good062_checked,
    row051_good063_checked,
    row051_good064_checked,
    row051_good065_checked,
    row051_good066_checked,
    row051_good067_checked,
    row051_good068_checked,
    row051_good069_checked,
    row051_good070_checked,
    row051_good071_checked,
    row051_good072_checked,
    row051_good073_checked,
    row051_good074_checked,
    row051_good075_checked,
    row051_good076_checked,
    row051_good077_checked,
    row051_good078_checked,
    row051_good079_checked,
    row051_good080_checked,
    row051_good081_checked,
    row051_good082_checked,
    row051_good083_checked,
    row051_good084_checked,
    row051_good085_checked,
    row051_good086_checked,
    row051_good087_checked,
    row051_good088_checked,
    row051_good089_checked,
    row051_good090_checked,
    row051_good091_checked,
    row051_good092_checked,
    row051_good093_checked,
    row051_good094_checked,
    row051_good095_checked,
    row051_good096_checked,
    row051_good097_checked,
    row051_good098_checked,
    row051_good099_checked,
    row051_good100_checked,
    row051_good101_checked,
    row051_good102_checked,
    row051_good103_checked,
    row051_good104_checked,
    row051_good105_checked,
    row051_good106_checked,
    row051_good107_checked,
    row051_good108_checked,
    row051_good109_checked,
    row051_good110_checked,
    row051_good111_checked,
    row051_good112_checked,
    row051_good113_checked,
    row051_good114_checked,
    row051_good115_checked,
    row051_good116_checked,
    row051_good117_checked,
    row051_good118_checked,
    row051_good119_checked,
    row051_good120_checked,
    row051_good121_checked,
    row051_good122_checked,
    row051_good123_checked,
    row051_good124_checked,
    row051_good125_checked,
    row051_good126_checked,
    row051_good127_checked,
    row051_good128_checked,
    row051_good129_checked,
    row051_good130_checked,
    row051_good131_checked,
    row051_good132_checked,
    row051_good133_checked,
    row051_good134_checked,
    row051_good135_checked,
    row051_good136_checked,
    row051_good137_checked,
    row051_good138_checked,
    row051_good139_checked,
    row051_good140_checked,
    row051_good141_checked,
    row051_good142_checked,
    row051_good143_checked,
    row051_good144_checked,
    row051_good145_checked,
    row051_good146_checked,
    row051_good147_checked,
    row051_good148_checked,
    row051_good149_checked,
    row051_good150_checked,
    row051_good151_checked,
    row051_good152_checked,
    row051_good153_checked,
    row051_good154_checked,
    row051_good155_checked,
    row051_good156_checked,
    row051_good157_checked,
    row051_good158_checked,
    row051_good159_checked,
    row051_good160_checked,
    row051_good161_checked,
    row051_good162_checked,
    row051_good163_checked,
    row051_good164_checked,
    row051_good165_checked,
    row051_good166_checked,
    row051_good167_checked,
    row051_good168_checked,
    row051_good169_checked,
    row051_good170_checked,
    row051_good171_checked,
    row051_good172_checked,
    row051_good173_checked,
    row051_good174_checked,
    row051_good175_checked,
    row051_good176_checked,
    row051_good177_checked,
    row051_good178_checked,
    row051_good179_checked,
    row051_good180_checked,
    row051_good181_checked,
    row051_good182_checked,
    row051_good183_checked,
    row051_good184_checked,
    row051_good185_checked,
    row051_good186_checked,
    row051_good187_checked,
    row051_good188_checked,
    row051_good189_checked,
    row051_good190_checked,
    row051_good191_checked,
    row051_good192_checked,
    row051_good193_checked,
    row051_good194_checked,
    row051_good195_checked,
    row051_good196_checked,
    row051_good197_checked,
    row051_good198_checked,
    row051_good199_checked,
    row051_good200_checked,
    row051_good201_checked,
    row051_good202_checked,
    row051_good203_checked,
    row051_good204_checked,
    row051_good205_checked,
    row051_good206_checked,
    row051_good207_checked,
    row051_good208_checked,
    row051_good209_checked,
    row051_good210_checked,
    row051_good211_checked,
    row051_good212_checked,
    row051_good213_checked,
    row051_good214_checked,
    row051_good215_checked,
    row051_good216_checked,
    row051_good217_checked,
    row051_good218_checked,
    row051_good219_checked,
    row051_good220_checked,
    row051_good221_checked,
    row051_good222_checked,
    row051_good223_checked,
    row051_good224_checked,
    row051_good225_checked,
    row051_good226_checked,
    row051_good227_checked,
    row051_good228_checked,
    row051_good229_checked,
    row051_good230_checked,
    row051_good231_checked,
    row051_good232_checked,
    row051_good233_checked,
    row051_good234_checked,
    row051_good235_checked,
    row051_good236_checked,
    row051_good237_checked,
    row051_good238_checked,
    row051_good239_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_registered :
    decide (row051.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row051_small_checked :
    coverCheck (2 * row051.height.i + 2) (row051.height.i * (row051.height.i - 1) - 1)
      (row051.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row051_layerCover_checked :
    coverCheck (row051.height.i * (row051.height.i - 1)) (row051.height.n0 - 1)
      (row051.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row051_bounds : List NatInterval :=
  [(104, 153), (154, 201), (202, 249), (250, 291), (292, 333), (334, 381), (382, 429), (430, 471), (472, 517), (518, 559), (560, 607), (608, 657), (658, 703), (704, 751), (752, 801), (802, 847), (848, 889), (890, 937), (938, 987), (988, 1033), (1034, 1083), (1084, 1119), (1120, 1167), (1168, 1213), (1214, 1263), (1264, 1309), (1310, 1357), (1358, 1377), (1378, 1423), (1424, 1473), (1474, 1521), (1522, 1561), (1562, 1609), (1610, 1659), (1660, 1707), (1708, 1749), (1750, 1797), (1798, 1839), (1840, 1881), (1882, 1929), (1930, 1963), (1964, 2001), (2002, 2049), (2050, 2089), (2090, 2139), (2140, 2187), (2188, 2229), (2230, 2271), (2272, 2319), (2320, 2361), (2362, 2407), (2408, 2449), (2450, 2497), (2498, 2527), (2528, 2571), (2572, 2591), (2645, 2683), (2684, 2733), (2734, 2781), (2782, 2800), (2816, 2833), (2875, 2911), (2912, 2959), (2960, 2966), (3025, 3073), (3074, 3117), (3118, 3122), (3125, 3137), (3146, 3187), (3188, 3196), (3200, 3241), (3242, 3279), (3280, 3300), (3362, 3411), (3412, 3438), (3456, 3480), (3500, 3506), (3509, 3549), (3550, 3559), (3584, 3599), (3610, 3657), (3658, 3680), (3703, 3751), (3752, 3789), (3790, 3801), (3844, 3883), (3884, 3925), (3971, 4017), (4018, 4043), (4096, 4143), (4144, 4166), (4224, 4269), (4270, 4275), (4352, 4399), (4400, 4444), (4459, 4468), (4608, 4613), (4732, 4743), (4761, 4782), (4802, 4851), (4852, 4852), (4901, 4939), (4940, 4951), (5043, 5089), (5090, 5137), (5138, 5169), (5170, 5170), (5324, 5340), (5415, 5426), (5488, 5526), (5632, 5673), (5674, 5675), (5776, 5799), (5800, 5816), (5819, 5826), (5831, 5877), (5878, 5881), (5888, 5931), (5932, 5937), (6144, 6193), (6194, 6194), (6517, 6541), (6542, 6548), (6561, 6567), (6591, 6611), (6627, 6641), (6655, 6703), (6704, 6705), (6727, 6769), (6770, 6777), (6859, 6907), (6908, 6927), (7203, 7218), (7220, 7253), (7406, 7443), (7444, 7456), (7546, 7550), (7569, 7611), (7612, 7619), (7688, 7730), (7935, 7983), (7984, 7992), (8214, 8259), (8260, 8264), (8410, 8439), (8440, 8455), (8664, 8699), (8704, 8714), (8748, 8797), (8798, 8800), (8836, 8838), (9025, 9043), (9245, 9291), (9292, 9301), (9386, 9425), (9604, 9651), (9652, 9654), (9747, 9778), (10086, 10129), (10130, 10142), (10580, 10617), (10618, 10621), (10625, 10630), (10648, 10675), (10935, 10959), (10960, 11002), (11094, 11095), (11109, 11143), (11144, 11144), (11264, 11300), (11774, 11793), (11794, 11824), (12005, 12029), (12321, 12338), (12500, 12543), (13125, 13171), (13172, 13172), (13225, 13232), (13254, 13275), (13312, 13359), (13360, 13360), (13454, 13501), (13502, 13504), (13718, 13740), (13750, 13779), (13780, 13800), (14297, 14333), (14336, 14347), (14375, 14386), (14406, 14451), (14452, 14456), (14812, 14842), (15138, 15179), (15376, 15423), (15424, 15426), (15979, 16022), (16384, 16387), (16428, 16434), (16810, 16837), (16838, 16860), (17303, 17348), (17500, 17546), (17672, 17711), (18491, 18531), (18532, 18541), (19208, 19216), (19220, 19258), (20181, 20227), (20228, 20231), (20577, 20585), (21866, 21913), (21914, 21925), (22103, 22140), (23552, 23584), (24025, 24073), (24074, 24075), (24334, 24349), (25000, 25036), (26411, 26414), (26624, 26647), (26648, 26670), (28577, 28611), (28717, 28722), (28749, 28767), (30758, 30770), (31250, 31263), (31944, 31957), (31958, 31989), (32805, 32818), (33282, 33297), (33298, 33325), (33620, 33664), (35152, 35181), (35344, 35351), (36982, 37029), (37030, 37030), (43940, 43973), (48020, 48063), (73205, 73217), (327701, 327730)]

theorem row051_bounds_eq : row051.goods.map goodSegmentBounds = row051_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row051_layer000_intervals : List ColouredInterval :=
  [(2, 2560, 2610), (2, 2688, 2738), (2, 2816, 2866), (2, 2944, 2994), (2, 3072, 3122), (2, 3200, 3250), (2, 3328, 3378), (2, 3456, 3506), (2, 3584, 3634), (2, 3712, 3762), (2, 3840, 3890), (2, 3968, 4018), (2, 4096, 4146), (2, 4224, 4274), (2, 2560, 2610), (2, 2816, 2866), (2, 3072, 3122), (2, 3328, 3378), (2, 3584, 3634), (2, 3840, 3890), (2, 4096, 4146), (2, 4352, 4402), (2, 4608, 4658), (2, 4864, 4914), (2, 2560, 2610), (2, 3072, 3122), (2, 3584, 3634), (2, 4096, 4146), (2, 4608, 4658), (2, 3072, 3122), (2, 4096, 4146), (2, 4096, 4146), (2, 4096, 4146), (3, 2673, 2723), (3, 2916, 2966), (3, 3645, 3695), (3, 4374, 4424), (3, 4374, 4424), (5, 2550, 2550), (5, 2625, 2675), (5, 2750, 2800), (5, 2875, 2925), (5, 3000, 3050), (5, 3125, 3175), (5, 3250, 3300), (5, 3375, 3425), (5, 3500, 3550), (5, 3625, 3675), (5, 3750, 3800), (5, 3875, 3925), (5, 4000, 4050), (5, 4125, 4175), (5, 2550, 2550), (5, 3125, 3175), (5, 3750, 3800), (5, 4375, 4425), (5, 5000, 5050), (5, 3125, 3175), (7, 2744, 2794), (7, 3087, 3137), (7, 3430, 3480), (7, 3773, 3823), (7, 4116, 4166), (7, 4459, 4509), (7, 4802, 4852), (7, 4802, 4852), (11, 2550, 2591), (11, 2662, 2712), (11, 2783, 2833), (11, 2904, 2954), (11, 3025, 3075), (11, 3146, 3196), (11, 3267, 3317), (11, 3388, 3438), (11, 3509, 3559), (11, 3630, 3680), (11, 3751, 3801), (11, 3872, 3922), (11, 3993, 4043), (11, 2662, 2712), (11, 3993, 4043), (13, 2550, 2585), (13, 2704, 2754), (13, 2873, 2923), (13, 3042, 3092), (13, 3211, 3261), (13, 3380, 3430), (13, 3549, 3599), (13, 3718, 3768), (13, 3887, 3937), (13, 4056, 4106), (13, 4225, 4275), (13, 4394, 4444), (13, 4563, 4613), (13, 4732, 4782), (13, 4901, 4951), (13, 5070, 5099), (13, 4394, 4444), (17, 4913, 4963), (19, 2550, 2577), (19, 2888, 2938), (19, 3249, 3299), (19, 3610, 3660), (19, 3971, 4021), (19, 4332, 4382), (19, 4693, 4743), (19, 5054, 5099), (23, 2645, 2695), (23, 3174, 3224), (23, 3703, 3753), (23, 4232, 4282), (23, 4761, 4811), (29, 2550, 2573), (29, 3364, 3414), (29, 4205, 4255), (29, 5046, 5096), (31, 2883, 2933), (31, 3844, 3894), (31, 4805, 4855), (37, 2738, 2788), (37, 4107, 4157), (41, 3362, 3412), (41, 5043, 5093), (43, 3698, 3748), (47, 4418, 4468)]

def row051_layer000_block000 : List ColouredInterval :=
  [(2, 2560, 2610), (2, 2688, 2738), (2, 2816, 2866), (2, 2944, 2994), (2, 3072, 3122), (2, 3200, 3250), (2, 3328, 3378), (2, 3456, 3506), (2, 3584, 3634), (2, 3712, 3762), (2, 3840, 3890), (2, 3968, 4018), (2, 4096, 4146), (2, 4224, 4274), (2, 2560, 2610), (2, 2816, 2866)]

def row051_layer000_block001 : List ColouredInterval :=
  [(2, 3072, 3122), (2, 3328, 3378), (2, 3584, 3634), (2, 3840, 3890), (2, 4096, 4146), (2, 4352, 4402), (2, 4608, 4658), (2, 4864, 4914), (2, 2560, 2610), (2, 3072, 3122), (2, 3584, 3634), (2, 4096, 4146), (2, 4608, 4658), (2, 3072, 3122), (2, 4096, 4146), (2, 4096, 4146)]

def row051_layer000_block002 : List ColouredInterval :=
  [(2, 4096, 4146), (3, 2673, 2723), (3, 2916, 2966), (3, 3645, 3695), (3, 4374, 4424), (3, 4374, 4424), (5, 2550, 2550), (5, 2625, 2675), (5, 2750, 2800), (5, 2875, 2925), (5, 3000, 3050), (5, 3125, 3175), (5, 3250, 3300), (5, 3375, 3425), (5, 3500, 3550), (5, 3625, 3675)]

def row051_layer000_block003 : List ColouredInterval :=
  [(5, 3750, 3800), (5, 3875, 3925), (5, 4000, 4050), (5, 4125, 4175), (5, 2550, 2550), (5, 3125, 3175), (5, 3750, 3800), (5, 4375, 4425), (5, 5000, 5050), (5, 3125, 3175), (7, 2744, 2794), (7, 3087, 3137), (7, 3430, 3480), (7, 3773, 3823), (7, 4116, 4166), (7, 4459, 4509)]

def row051_layer000_block004 : List ColouredInterval :=
  [(7, 4802, 4852), (7, 4802, 4852), (11, 2550, 2591), (11, 2662, 2712), (11, 2783, 2833), (11, 2904, 2954), (11, 3025, 3075), (11, 3146, 3196), (11, 3267, 3317), (11, 3388, 3438), (11, 3509, 3559), (11, 3630, 3680), (11, 3751, 3801), (11, 3872, 3922), (11, 3993, 4043), (11, 2662, 2712)]

def row051_layer000_block005 : List ColouredInterval :=
  [(11, 3993, 4043), (13, 2550, 2585), (13, 2704, 2754), (13, 2873, 2923), (13, 3042, 3092), (13, 3211, 3261), (13, 3380, 3430), (13, 3549, 3599), (13, 3718, 3768), (13, 3887, 3937), (13, 4056, 4106), (13, 4225, 4275), (13, 4394, 4444), (13, 4563, 4613), (13, 4732, 4782), (13, 4901, 4951)]

def row051_layer000_block006 : List ColouredInterval :=
  [(13, 5070, 5099), (13, 4394, 4444), (17, 4913, 4963), (19, 2550, 2577), (19, 2888, 2938), (19, 3249, 3299), (19, 3610, 3660), (19, 3971, 4021), (19, 4332, 4382), (19, 4693, 4743), (19, 5054, 5099), (23, 2645, 2695), (23, 3174, 3224), (23, 3703, 3753), (23, 4232, 4282), (23, 4761, 4811)]

def row051_layer000_block007 : List ColouredInterval :=
  [(29, 2550, 2573), (29, 3364, 3414), (29, 4205, 4255), (29, 5046, 5096), (31, 2883, 2933), (31, 3844, 3894), (31, 4805, 4855), (37, 2738, 2788), (37, 4107, 4157), (41, 3362, 3412), (41, 5043, 5093), (43, 3698, 3748), (47, 4418, 4468)]

def row051_layer000_chunks : List (List ColouredInterval) :=
  [row051_layer000_block000, row051_layer000_block001, row051_layer000_block002, row051_layer000_block003, row051_layer000_block004, row051_layer000_block005, row051_layer000_block006, row051_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer000_arithmetic : LayerArithmeticValid row051.height { lower := 2550, upper := 5100, M := 33 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer000_enumeration :
    activePowerIntervalList 51 33 2550 5100 = row051_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer000_pairs000 :
    row051_layer000_block000.all (fun I => row051_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer000_pairs001 :
    row051_layer000_block001.all (fun I => row051_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer000_pairs002 :
    row051_layer000_block002.all (fun I => row051_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer000_pairs003 :
    row051_layer000_block003.all (fun I => row051_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer000_pairs004 :
    row051_layer000_block004.all (fun I => row051_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer000_pairs005 :
    row051_layer000_block005.all (fun I => row051_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer000_pairs006 :
    row051_layer000_block006.all (fun I => row051_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer000_pairs007 :
    row051_layer000_block007.all (fun I => row051_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer000_chunks_eq : row051_layer000_chunks.flatten = row051_layer000_intervals := by
  rfl

theorem row051_layer000_pairs : pairCoverCheck row051_layer000_intervals row051_bounds = true := by
  apply pairCoverCheck_of_chunks row051_layer000_chunks_eq
  intro block hblock
  simp only [row051_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row051_layer000_pairs000
  · exact row051_layer000_pairs001
  · exact row051_layer000_pairs002
  · exact row051_layer000_pairs003
  · exact row051_layer000_pairs004
  · exact row051_layer000_pairs005
  · exact row051_layer000_pairs006
  · exact row051_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer000_checked :
    coverLayerCheck row051.height row051.goods { lower := 2550, upper := 5100, M := 33 } = true := by
  exact coverLayerCheck_of_parts row051_layer000_arithmetic row051_layer000_enumeration row051_bounds_eq row051_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row051_layer001_intervals : List ColouredInterval :=
  [(2, 5120, 5170), (2, 5376, 5426), (2, 5632, 5682), (2, 5888, 5938), (2, 6144, 6194), (2, 6400, 6450), (2, 6656, 6706), (2, 6912, 6962), (2, 7168, 7218), (2, 7424, 7474), (2, 7680, 7730), (2, 7936, 7986), (2, 5120, 5170), (2, 5632, 5682), (2, 6144, 6194), (2, 6656, 6706), (2, 7168, 7218), (2, 7680, 7730), (2, 8192, 8242), (2, 8704, 8754), (2, 9216, 9266), (2, 9728, 9778), (2, 5120, 5170), (2, 6144, 6194), (2, 7168, 7218), (2, 8192, 8242), (2, 9216, 9266), (2, 6144, 6194), (2, 8192, 8242), (2, 8192, 8242), (2, 8192, 8242), (3, 5103, 5153), (3, 5832, 5882), (3, 6561, 6611), (3, 7290, 7340), (3, 6561, 6611), (3, 8748, 8798), (3, 6561, 6611), (5, 5625, 5675), (5, 6250, 6300), (5, 6875, 6925), (5, 7500, 7550), (5, 8125, 8175), (5, 8750, 8800), (5, 9375, 9425), (5, 10000, 10050), (5, 6250, 6300), (5, 9375, 9425), (7, 5145, 5195), (7, 5488, 5538), (7, 5831, 5881), (7, 6174, 6224), (7, 6517, 6567), (7, 6860, 6910), (7, 7203, 7253), (7, 7546, 7596), (7, 7889, 7939), (7, 8232, 8282), (7, 8575, 8625), (7, 8918, 8968), (7, 9261, 9311), (7, 9604, 9654), (7, 9947, 9997), (7, 7203, 7253), (7, 9604, 9654), (11, 5324, 5374), (11, 6655, 6705), (11, 7986, 8036), (11, 9317, 9367), (13, 5100, 5120), (13, 5239, 5289), (13, 6591, 6641), (13, 8788, 8838), (19, 5100, 5104), (19, 5415, 5465), (19, 5776, 5826), (19, 6137, 6187), (19, 6498, 6548), (19, 6859, 6909), (19, 7220, 7270), (19, 7581, 7631), (19, 7942, 7992), (19, 8303, 8353), (19, 8664, 8714), (19, 9025, 9075), (19, 9386, 9436), (19, 9747, 9797), (19, 10108, 10158), (19, 6859, 6909), (23, 5290, 5340), (23, 5819, 5869), (23, 6348, 6398), (23, 6877, 6927), (23, 7406, 7456), (23, 7935, 7985), (23, 8464, 8514), (23, 8993, 9043), (23, 9522, 9572), (23, 10051, 10101), (29, 5887, 5937), (29, 6728, 6778), (29, 7569, 7619), (29, 8410, 8460), (29, 9251, 9301), (29, 10092, 10142), (31, 5766, 5816), (31, 6727, 6777), (31, 7688, 7738), (31, 8649, 8699), (31, 9610, 9660), (37, 5476, 5526), (37, 6845, 6895), (37, 8214, 8264), (37, 9583, 9633), (41, 6724, 6774), (41, 8405, 8455), (41, 10086, 10136), (43, 5547, 5597), (43, 7396, 7446), (43, 9245, 9295), (47, 6627, 6677), (47, 8836, 8886)]

def row051_layer001_block000 : List ColouredInterval :=
  [(2, 5120, 5170), (2, 5376, 5426), (2, 5632, 5682), (2, 5888, 5938), (2, 6144, 6194), (2, 6400, 6450), (2, 6656, 6706), (2, 6912, 6962), (2, 7168, 7218), (2, 7424, 7474), (2, 7680, 7730), (2, 7936, 7986), (2, 5120, 5170), (2, 5632, 5682), (2, 6144, 6194), (2, 6656, 6706)]

def row051_layer001_block001 : List ColouredInterval :=
  [(2, 7168, 7218), (2, 7680, 7730), (2, 8192, 8242), (2, 8704, 8754), (2, 9216, 9266), (2, 9728, 9778), (2, 5120, 5170), (2, 6144, 6194), (2, 7168, 7218), (2, 8192, 8242), (2, 9216, 9266), (2, 6144, 6194), (2, 8192, 8242), (2, 8192, 8242), (2, 8192, 8242), (3, 5103, 5153)]

def row051_layer001_block002 : List ColouredInterval :=
  [(3, 5832, 5882), (3, 6561, 6611), (3, 7290, 7340), (3, 6561, 6611), (3, 8748, 8798), (3, 6561, 6611), (5, 5625, 5675), (5, 6250, 6300), (5, 6875, 6925), (5, 7500, 7550), (5, 8125, 8175), (5, 8750, 8800), (5, 9375, 9425), (5, 10000, 10050), (5, 6250, 6300), (5, 9375, 9425)]

def row051_layer001_block003 : List ColouredInterval :=
  [(7, 5145, 5195), (7, 5488, 5538), (7, 5831, 5881), (7, 6174, 6224), (7, 6517, 6567), (7, 6860, 6910), (7, 7203, 7253), (7, 7546, 7596), (7, 7889, 7939), (7, 8232, 8282), (7, 8575, 8625), (7, 8918, 8968), (7, 9261, 9311), (7, 9604, 9654), (7, 9947, 9997), (7, 7203, 7253)]

def row051_layer001_block004 : List ColouredInterval :=
  [(7, 9604, 9654), (11, 5324, 5374), (11, 6655, 6705), (11, 7986, 8036), (11, 9317, 9367), (13, 5100, 5120), (13, 5239, 5289), (13, 6591, 6641), (13, 8788, 8838), (19, 5100, 5104), (19, 5415, 5465), (19, 5776, 5826), (19, 6137, 6187), (19, 6498, 6548), (19, 6859, 6909), (19, 7220, 7270)]

def row051_layer001_block005 : List ColouredInterval :=
  [(19, 7581, 7631), (19, 7942, 7992), (19, 8303, 8353), (19, 8664, 8714), (19, 9025, 9075), (19, 9386, 9436), (19, 9747, 9797), (19, 10108, 10158), (19, 6859, 6909), (23, 5290, 5340), (23, 5819, 5869), (23, 6348, 6398), (23, 6877, 6927), (23, 7406, 7456), (23, 7935, 7985), (23, 8464, 8514)]

def row051_layer001_block006 : List ColouredInterval :=
  [(23, 8993, 9043), (23, 9522, 9572), (23, 10051, 10101), (29, 5887, 5937), (29, 6728, 6778), (29, 7569, 7619), (29, 8410, 8460), (29, 9251, 9301), (29, 10092, 10142), (31, 5766, 5816), (31, 6727, 6777), (31, 7688, 7738), (31, 8649, 8699), (31, 9610, 9660), (37, 5476, 5526), (37, 6845, 6895)]

def row051_layer001_block007 : List ColouredInterval :=
  [(37, 8214, 8264), (37, 9583, 9633), (41, 6724, 6774), (41, 8405, 8455), (41, 10086, 10136), (43, 5547, 5597), (43, 7396, 7446), (43, 9245, 9295), (47, 6627, 6677), (47, 8836, 8886)]

def row051_layer001_chunks : List (List ColouredInterval) :=
  [row051_layer001_block000, row051_layer001_block001, row051_layer001_block002, row051_layer001_block003, row051_layer001_block004, row051_layer001_block005, row051_layer001_block006, row051_layer001_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer001_arithmetic : LayerArithmeticValid row051.height { lower := 5100, upper := 10200, M := 31 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer001_enumeration :
    activePowerIntervalList 51 31 5100 10200 = row051_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer001_pairs000 :
    row051_layer001_block000.all (fun I => row051_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer001_pairs001 :
    row051_layer001_block001.all (fun I => row051_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer001_pairs002 :
    row051_layer001_block002.all (fun I => row051_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer001_pairs003 :
    row051_layer001_block003.all (fun I => row051_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer001_pairs004 :
    row051_layer001_block004.all (fun I => row051_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer001_pairs005 :
    row051_layer001_block005.all (fun I => row051_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer001_pairs006 :
    row051_layer001_block006.all (fun I => row051_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer001_pairs007 :
    row051_layer001_block007.all (fun I => row051_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer001_chunks_eq : row051_layer001_chunks.flatten = row051_layer001_intervals := by
  rfl

theorem row051_layer001_pairs : pairCoverCheck row051_layer001_intervals row051_bounds = true := by
  apply pairCoverCheck_of_chunks row051_layer001_chunks_eq
  intro block hblock
  simp only [row051_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row051_layer001_pairs000
  · exact row051_layer001_pairs001
  · exact row051_layer001_pairs002
  · exact row051_layer001_pairs003
  · exact row051_layer001_pairs004
  · exact row051_layer001_pairs005
  · exact row051_layer001_pairs006
  · exact row051_layer001_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer001_checked :
    coverLayerCheck row051.height row051.goods { lower := 5100, upper := 10200, M := 31 } = true := by
  exact coverLayerCheck_of_parts row051_layer001_arithmetic row051_layer001_enumeration row051_bounds_eq row051_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row051_layer002_intervals : List ColouredInterval :=
  [(2, 10240, 10290), (2, 10752, 10802), (2, 11264, 11314), (2, 11776, 11826), (2, 12288, 12338), (2, 12800, 12850), (2, 13312, 13362), (2, 13824, 13874), (2, 14336, 14386), (2, 10240, 10290), (2, 11264, 11314), (2, 12288, 12338), (2, 13312, 13362), (2, 14336, 14386), (2, 15360, 15410), (2, 16384, 16434), (2, 17408, 17458), (2, 18432, 18482), (2, 19456, 19506), (2, 10240, 10290), (2, 12288, 12338), (2, 14336, 14386), (2, 16384, 16434), (2, 18432, 18482), (2, 12288, 12338), (2, 16384, 16434), (2, 16384, 16434), (2, 16384, 16434), (3, 10935, 10985), (3, 13122, 13172), (3, 15309, 15359), (3, 17496, 17546), (3, 19683, 19733), (3, 13122, 13172), (3, 19683, 19733), (3, 19683, 19733), (5, 10625, 10675), (5, 11250, 11300), (5, 11875, 11925), (5, 12500, 12550), (5, 13125, 13175), (5, 13750, 13800), (5, 14375, 14425), (5, 15000, 15050), (5, 15625, 15675), (5, 16250, 16300), (5, 16875, 16925), (5, 17500, 17550), (5, 12500, 12550), (5, 15625, 15675), (5, 18750, 18800), (5, 15625, 15675), (7, 12005, 12055), (7, 14406, 14456), (7, 16807, 16857), (7, 19208, 19258), (7, 16807, 16857), (11, 10648, 10698), (11, 11979, 12029), (11, 13310, 13360), (11, 14641, 14691), (11, 15972, 16022), (11, 17303, 17353), (11, 18634, 18684), (11, 19965, 20015), (11, 14641, 14691), (13, 10985, 11035), (13, 13182, 13232), (13, 15379, 15429), (13, 17576, 17626), (13, 19773, 19823), (19, 13718, 13768), (23, 10580, 10630), (23, 11109, 11159), (23, 11638, 11688), (23, 12167, 12217), (23, 12696, 12746), (23, 13225, 13275), (23, 13754, 13804), (23, 14283, 14333), (23, 14812, 14862), (23, 12167, 12217), (29, 10933, 10983), (29, 11774, 11824), (29, 12615, 12665), (29, 13456, 13506), (29, 14297, 14347), (29, 15138, 15188), (29, 15979, 16029), (29, 16820, 16870), (29, 17661, 17711), (29, 18502, 18552), (29, 19343, 19393), (29, 20184, 20234), (31, 10571, 10621), (31, 11532, 11582), (31, 12493, 12543), (31, 13454, 13504), (31, 14415, 14465), (31, 15376, 15426), (31, 16337, 16387), (31, 17298, 17348), (31, 18259, 18309), (31, 19220, 19270), (31, 20181, 20231), (37, 10952, 11002), (37, 12321, 12371), (37, 13690, 13740), (37, 15059, 15109), (37, 16428, 16478), (37, 17797, 17847), (37, 19166, 19216), (41, 11767, 11817), (41, 13448, 13498), (41, 15129, 15179), (41, 16810, 16860), (41, 18491, 18541), (41, 20172, 20222), (43, 11094, 11144), (43, 12943, 12993), (43, 14792, 14842), (43, 16641, 16691), (43, 18490, 18540), (43, 20339, 20389), (47, 11045, 11095), (47, 13254, 13304), (47, 15463, 15513), (47, 17672, 17722), (47, 19881, 19931)]

def row051_layer002_block000 : List ColouredInterval :=
  [(2, 10240, 10290), (2, 10752, 10802), (2, 11264, 11314), (2, 11776, 11826), (2, 12288, 12338), (2, 12800, 12850), (2, 13312, 13362), (2, 13824, 13874), (2, 14336, 14386), (2, 10240, 10290), (2, 11264, 11314), (2, 12288, 12338), (2, 13312, 13362), (2, 14336, 14386), (2, 15360, 15410)]

def row051_layer002_block001 : List ColouredInterval :=
  [(2, 16384, 16434), (2, 17408, 17458), (2, 18432, 18482), (2, 19456, 19506), (2, 10240, 10290), (2, 12288, 12338), (2, 14336, 14386), (2, 16384, 16434), (2, 18432, 18482), (2, 12288, 12338), (2, 16384, 16434), (2, 16384, 16434), (2, 16384, 16434), (3, 10935, 10985), (3, 13122, 13172)]

def row051_layer002_block002 : List ColouredInterval :=
  [(3, 15309, 15359), (3, 17496, 17546), (3, 19683, 19733), (3, 13122, 13172), (3, 19683, 19733), (3, 19683, 19733), (5, 10625, 10675), (5, 11250, 11300), (5, 11875, 11925), (5, 12500, 12550), (5, 13125, 13175), (5, 13750, 13800), (5, 14375, 14425), (5, 15000, 15050), (5, 15625, 15675)]

def row051_layer002_block003 : List ColouredInterval :=
  [(5, 16250, 16300), (5, 16875, 16925), (5, 17500, 17550), (5, 12500, 12550), (5, 15625, 15675), (5, 18750, 18800), (5, 15625, 15675), (7, 12005, 12055), (7, 14406, 14456), (7, 16807, 16857), (7, 19208, 19258), (7, 16807, 16857), (11, 10648, 10698), (11, 11979, 12029), (11, 13310, 13360)]

def row051_layer002_block004 : List ColouredInterval :=
  [(11, 14641, 14691), (11, 15972, 16022), (11, 17303, 17353), (11, 18634, 18684), (11, 19965, 20015), (11, 14641, 14691), (13, 10985, 11035), (13, 13182, 13232), (13, 15379, 15429), (13, 17576, 17626), (13, 19773, 19823), (19, 13718, 13768), (23, 10580, 10630), (23, 11109, 11159), (23, 11638, 11688)]

def row051_layer002_block005 : List ColouredInterval :=
  [(23, 12167, 12217), (23, 12696, 12746), (23, 13225, 13275), (23, 13754, 13804), (23, 14283, 14333), (23, 14812, 14862), (23, 12167, 12217), (29, 10933, 10983), (29, 11774, 11824), (29, 12615, 12665), (29, 13456, 13506), (29, 14297, 14347), (29, 15138, 15188), (29, 15979, 16029), (29, 16820, 16870)]

def row051_layer002_block006 : List ColouredInterval :=
  [(29, 17661, 17711), (29, 18502, 18552), (29, 19343, 19393), (29, 20184, 20234), (31, 10571, 10621), (31, 11532, 11582), (31, 12493, 12543), (31, 13454, 13504), (31, 14415, 14465), (31, 15376, 15426), (31, 16337, 16387), (31, 17298, 17348), (31, 18259, 18309), (31, 19220, 19270), (31, 20181, 20231)]

def row051_layer002_block007 : List ColouredInterval :=
  [(37, 10952, 11002), (37, 12321, 12371), (37, 13690, 13740), (37, 15059, 15109), (37, 16428, 16478), (37, 17797, 17847), (37, 19166, 19216), (41, 11767, 11817), (41, 13448, 13498), (41, 15129, 15179), (41, 16810, 16860), (41, 18491, 18541), (41, 20172, 20222), (43, 11094, 11144), (43, 12943, 12993)]

def row051_layer002_block008 : List ColouredInterval :=
  [(43, 14792, 14842), (43, 16641, 16691), (43, 18490, 18540), (43, 20339, 20389), (47, 11045, 11095), (47, 13254, 13304), (47, 15463, 15513), (47, 17672, 17722), (47, 19881, 19931)]

def row051_layer002_chunks : List (List ColouredInterval) :=
  [row051_layer002_block000, row051_layer002_block001, row051_layer002_block002, row051_layer002_block003, row051_layer002_block004, row051_layer002_block005, row051_layer002_block006, row051_layer002_block007, row051_layer002_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer002_arithmetic : LayerArithmeticValid row051.height { lower := 10200, upper := 20400, M := 28 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer002_enumeration :
    activePowerIntervalList 51 28 10200 20400 = row051_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer002_pairs000 :
    row051_layer002_block000.all (fun I => row051_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer002_pairs001 :
    row051_layer002_block001.all (fun I => row051_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer002_pairs002 :
    row051_layer002_block002.all (fun I => row051_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer002_pairs003 :
    row051_layer002_block003.all (fun I => row051_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer002_pairs004 :
    row051_layer002_block004.all (fun I => row051_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer002_pairs005 :
    row051_layer002_block005.all (fun I => row051_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer002_pairs006 :
    row051_layer002_block006.all (fun I => row051_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer002_pairs007 :
    row051_layer002_block007.all (fun I => row051_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer002_pairs008 :
    row051_layer002_block008.all (fun I => row051_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer002_chunks_eq : row051_layer002_chunks.flatten = row051_layer002_intervals := by
  rfl

theorem row051_layer002_pairs : pairCoverCheck row051_layer002_intervals row051_bounds = true := by
  apply pairCoverCheck_of_chunks row051_layer002_chunks_eq
  intro block hblock
  simp only [row051_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row051_layer002_pairs000
  · exact row051_layer002_pairs001
  · exact row051_layer002_pairs002
  · exact row051_layer002_pairs003
  · exact row051_layer002_pairs004
  · exact row051_layer002_pairs005
  · exact row051_layer002_pairs006
  · exact row051_layer002_pairs007
  · exact row051_layer002_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer002_checked :
    coverLayerCheck row051.height row051.goods { lower := 10200, upper := 20400, M := 28 } = true := by
  exact coverLayerCheck_of_parts row051_layer002_arithmetic row051_layer002_enumeration row051_bounds_eq row051_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row051_layer003_intervals : List ColouredInterval :=
  [(2, 20480, 20530), (2, 21504, 21554), (2, 22528, 22578), (2, 23552, 23602), (2, 24576, 24626), (2, 25600, 25650), (2, 26624, 26674), (2, 20480, 20530), (2, 22528, 22578), (2, 24576, 24626), (2, 26624, 26674), (2, 28672, 28722), (2, 30720, 30770), (2, 32768, 32818), (2, 34816, 34866), (2, 36864, 36914), (2, 38912, 38962), (2, 20480, 20530), (2, 24576, 24626), (2, 28672, 28722), (2, 32768, 32818), (2, 36864, 36914), (2, 24576, 24626), (2, 32768, 32818), (2, 32768, 32818), (2, 32768, 32818), (3, 26244, 26294), (3, 32805, 32855), (3, 39366, 39416), (3, 39366, 39416), (5, 21875, 21925), (5, 25000, 25050), (5, 28125, 28175), (5, 31250, 31300), (5, 34375, 34425), (5, 37500, 37550), (5, 40625, 40675), (5, 31250, 31300), (7, 21609, 21659), (7, 24010, 24060), (7, 26411, 26461), (7, 28812, 28862), (7, 31213, 31263), (7, 33614, 33664), (7, 36015, 36065), (7, 38416, 38466), (7, 33614, 33664), (11, 21296, 21346), (11, 22627, 22677), (11, 23958, 24008), (11, 25289, 25339), (11, 26620, 26670), (11, 27951, 28001), (11, 29282, 29332), (11, 30613, 30663), (11, 31944, 31994), (11, 33275, 33325), (11, 34606, 34656), (11, 29282, 29332), (13, 21970, 22020), (13, 24167, 24217), (13, 26364, 26414), (13, 28561, 28611), (13, 30758, 30808), (13, 32955, 33005), (13, 35152, 35202), (13, 37349, 37399), (13, 39546, 39596), (13, 28561, 28611), (19, 20577, 20627), (19, 27436, 27486), (19, 34295, 34345), (23, 24334, 24384), (23, 36501, 36551), (29, 21025, 21075), (29, 21866, 21916), (29, 24389, 24439), (31, 21142, 21192), (31, 22103, 22153), (31, 23064, 23114), (31, 24025, 24075), (31, 24986, 25036), (31, 29791, 29841), (37, 20535, 20585), (37, 21904, 21954), (37, 23273, 23323), (37, 24642, 24692), (37, 26011, 26061), (37, 27380, 27430), (37, 28749, 28799), (37, 30118, 30168), (37, 31487, 31537), (37, 32856, 32906), (37, 34225, 34275), (37, 35594, 35644), (41, 21853, 21903), (41, 23534, 23584), (41, 25215, 25265), (41, 26896, 26946), (41, 28577, 28627), (41, 30258, 30308), (41, 31939, 31989), (41, 33620, 33670), (41, 35301, 35351), (41, 36982, 37032), (41, 38663, 38713), (41, 40344, 40394), (43, 22188, 22238), (43, 24037, 24087), (43, 25886, 25936), (43, 27735, 27785), (43, 29584, 29634), (43, 31433, 31483), (43, 33282, 33332), (43, 35131, 35181), (43, 36980, 37030), (43, 38829, 38879), (43, 40678, 40728), (47, 22090, 22140), (47, 24299, 24349), (47, 26508, 26558), (47, 28717, 28767), (47, 30926, 30976), (47, 33135, 33185), (47, 35344, 35394), (47, 37553, 37603), (47, 39762, 39812)]

def row051_layer003_block000 : List ColouredInterval :=
  [(2, 20480, 20530), (2, 21504, 21554), (2, 22528, 22578), (2, 23552, 23602), (2, 24576, 24626), (2, 25600, 25650), (2, 26624, 26674), (2, 20480, 20530), (2, 22528, 22578), (2, 24576, 24626), (2, 26624, 26674), (2, 28672, 28722), (2, 30720, 30770), (2, 32768, 32818), (2, 34816, 34866), (2, 36864, 36914)]

def row051_layer003_block001 : List ColouredInterval :=
  [(2, 38912, 38962), (2, 20480, 20530), (2, 24576, 24626), (2, 28672, 28722), (2, 32768, 32818), (2, 36864, 36914), (2, 24576, 24626), (2, 32768, 32818), (2, 32768, 32818), (2, 32768, 32818), (3, 26244, 26294), (3, 32805, 32855), (3, 39366, 39416), (3, 39366, 39416), (5, 21875, 21925), (5, 25000, 25050)]

def row051_layer003_block002 : List ColouredInterval :=
  [(5, 28125, 28175), (5, 31250, 31300), (5, 34375, 34425), (5, 37500, 37550), (5, 40625, 40675), (5, 31250, 31300), (7, 21609, 21659), (7, 24010, 24060), (7, 26411, 26461), (7, 28812, 28862), (7, 31213, 31263), (7, 33614, 33664), (7, 36015, 36065), (7, 38416, 38466), (7, 33614, 33664), (11, 21296, 21346)]

def row051_layer003_block003 : List ColouredInterval :=
  [(11, 22627, 22677), (11, 23958, 24008), (11, 25289, 25339), (11, 26620, 26670), (11, 27951, 28001), (11, 29282, 29332), (11, 30613, 30663), (11, 31944, 31994), (11, 33275, 33325), (11, 34606, 34656), (11, 29282, 29332), (13, 21970, 22020), (13, 24167, 24217), (13, 26364, 26414), (13, 28561, 28611), (13, 30758, 30808)]

def row051_layer003_block004 : List ColouredInterval :=
  [(13, 32955, 33005), (13, 35152, 35202), (13, 37349, 37399), (13, 39546, 39596), (13, 28561, 28611), (19, 20577, 20627), (19, 27436, 27486), (19, 34295, 34345), (23, 24334, 24384), (23, 36501, 36551), (29, 21025, 21075), (29, 21866, 21916), (29, 24389, 24439), (31, 21142, 21192), (31, 22103, 22153), (31, 23064, 23114)]

def row051_layer003_block005 : List ColouredInterval :=
  [(31, 24025, 24075), (31, 24986, 25036), (31, 29791, 29841), (37, 20535, 20585), (37, 21904, 21954), (37, 23273, 23323), (37, 24642, 24692), (37, 26011, 26061), (37, 27380, 27430), (37, 28749, 28799), (37, 30118, 30168), (37, 31487, 31537), (37, 32856, 32906), (37, 34225, 34275), (37, 35594, 35644), (41, 21853, 21903)]

def row051_layer003_block006 : List ColouredInterval :=
  [(41, 23534, 23584), (41, 25215, 25265), (41, 26896, 26946), (41, 28577, 28627), (41, 30258, 30308), (41, 31939, 31989), (41, 33620, 33670), (41, 35301, 35351), (41, 36982, 37032), (41, 38663, 38713), (41, 40344, 40394), (43, 22188, 22238), (43, 24037, 24087), (43, 25886, 25936), (43, 27735, 27785), (43, 29584, 29634)]

def row051_layer003_block007 : List ColouredInterval :=
  [(43, 31433, 31483), (43, 33282, 33332), (43, 35131, 35181), (43, 36980, 37030), (43, 38829, 38879), (43, 40678, 40728), (47, 22090, 22140), (47, 24299, 24349), (47, 26508, 26558), (47, 28717, 28767), (47, 30926, 30976), (47, 33135, 33185), (47, 35344, 35394), (47, 37553, 37603), (47, 39762, 39812)]

def row051_layer003_chunks : List (List ColouredInterval) :=
  [row051_layer003_block000, row051_layer003_block001, row051_layer003_block002, row051_layer003_block003, row051_layer003_block004, row051_layer003_block005, row051_layer003_block006, row051_layer003_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer003_arithmetic : LayerArithmeticValid row051.height { lower := 20400, upper := 40800, M := 26 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer003_enumeration :
    activePowerIntervalList 51 26 20400 40800 = row051_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer003_pairs000 :
    row051_layer003_block000.all (fun I => row051_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer003_pairs001 :
    row051_layer003_block001.all (fun I => row051_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row051_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer003_pairs001
