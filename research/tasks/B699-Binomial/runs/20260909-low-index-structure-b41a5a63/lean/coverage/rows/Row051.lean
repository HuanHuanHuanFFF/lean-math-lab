import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row051_registered :
    decide (row051.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row051_goods_checked :
    row051.goods.all (goodSegmentCheck row051.height.i row051.height.r row051.height.s) = true := by
  decide +kernel

theorem row051_small_checked :
    coverCheck (2 * row051.height.i + 2) (row051.height.i * (row051.height.i - 1) - 1)
      (row051.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row051_layerCover_checked :
    coverCheck (row051.height.i * (row051.height.i - 1)) (row051.height.n0 - 1)
      (row051.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row051_layer000_checked :
    coverLayerCheck row051.height row051.goods { lower := 2550, upper := 5100, M := 33 } = true := by
  decide +kernel

theorem row051_layer001_checked :
    coverLayerCheck row051.height row051.goods { lower := 5100, upper := 10200, M := 31 } = true := by
  decide +kernel

theorem row051_layer002_checked :
    coverLayerCheck row051.height row051.goods { lower := 10200, upper := 20400, M := 28 } = true := by
  decide +kernel

theorem row051_layer003_checked :
    coverLayerCheck row051.height row051.goods { lower := 20400, upper := 40800, M := 26 } = true := by
  decide +kernel

theorem row051_layer004_checked :
    coverLayerCheck row051.height row051.goods { lower := 40800, upper := 81600, M := 24 } = true := by
  decide +kernel

theorem row051_layer005_checked :
    coverLayerCheck row051.height row051.goods { lower := 81600, upper := 163200, M := 22 } = true := by
  decide +kernel

theorem row051_layer006_checked :
    coverLayerCheck row051.height row051.goods { lower := 163200, upper := 326400, M := 21 } = true := by
  decide +kernel

theorem row051_layer007_checked :
    coverLayerCheck row051.height row051.goods { lower := 326400, upper := 652800, M := 19 } = true := by
  decide +kernel

theorem row051_layer008_checked :
    coverLayerCheck row051.height row051.goods { lower := 652800, upper := 1305600, M := 18 } = true := by
  decide +kernel

theorem row051_layer009_checked :
    coverLayerCheck row051.height row051.goods { lower := 1305600, upper := 2611200, M := 16 } = true := by
  decide +kernel

theorem row051_layer010_checked :
    coverLayerCheck row051.height row051.goods { lower := 2611200, upper := 5222400, M := 15 } = true := by
  decide +kernel

theorem row051_layer011_checked :
    coverLayerCheck row051.height row051.goods { lower := 5222400, upper := 10444800, M := 14 } = true := by
  decide +kernel

theorem row051_layer012_checked :
    coverLayerCheck row051.height row051.goods { lower := 10444800, upper := 20889600, M := 13 } = true := by
  decide +kernel

theorem row051_layer013_checked :
    coverLayerCheck row051.height row051.goods { lower := 20889600, upper := 41779200, M := 12 } = true := by
  decide +kernel

theorem row051_layer014_checked :
    coverLayerCheck row051.height row051.goods { lower := 41779200, upper := 83558400, M := 11 } = true := by
  decide +kernel

theorem row051_layer015_checked :
    coverLayerCheck row051.height row051.goods { lower := 83558400, upper := 167116800, M := 10 } = true := by
  decide +kernel

theorem row051_layer016_checked :
    coverLayerCheck row051.height row051.goods { lower := 167116800, upper := 334233600, M := 9 } = true := by
  decide +kernel

theorem row051_layer017_checked :
    coverLayerCheck row051.height row051.goods { lower := 334233600, upper := 668467200, M := 9 } = true := by
  decide +kernel

theorem row051_layer018_checked :
    coverLayerCheck row051.height row051.goods { lower := 668467200, upper := 1336934400, M := 8 } = true := by
  decide +kernel

theorem row051_layer019_checked :
    coverLayerCheck row051.height row051.goods { lower := 1336934400, upper := 2673868800, M := 7 } = true := by
  decide +kernel

theorem row051_layer020_checked :
    coverLayerCheck row051.height row051.goods { lower := 2673868800, upper := 5347737600, M := 7 } = true := by
  decide +kernel

theorem row051_layer021_checked :
    coverLayerCheck row051.height row051.goods { lower := 5347737600, upper := 10695475200, M := 6 } = true := by
  decide +kernel

theorem row051_layer022_checked :
    coverLayerCheck row051.height row051.goods { lower := 10695475200, upper := 21390950400, M := 6 } = true := by
  decide +kernel

theorem row051_layer023_checked :
    coverLayerCheck row051.height row051.goods { lower := 21390950400, upper := 42781900800, M := 6 } = true := by
  decide +kernel

theorem row051_layer024_checked :
    coverLayerCheck row051.height row051.goods { lower := 42781900800, upper := 85563801600, M := 5 } = true := by
  decide +kernel

theorem row051_layer025_checked :
    coverLayerCheck row051.height row051.goods { lower := 85563801600, upper := 171127603200, M := 5 } = true := by
  decide +kernel

theorem row051_layer026_checked :
    coverLayerCheck row051.height row051.goods { lower := 171127603200, upper := 342255206400, M := 4 } = true := by
  decide +kernel

theorem row051_layer027_checked :
    coverLayerCheck row051.height row051.goods { lower := 342255206400, upper := 684510412800, M := 4 } = true := by
  decide +kernel

theorem row051_layer028_checked :
    coverLayerCheck row051.height row051.goods { lower := 684510412800, upper := 1369020825600, M := 4 } = true := by
  decide +kernel

theorem row051_layer029_checked :
    coverLayerCheck row051.height row051.goods { lower := 1369020825600, upper := 2738041651200, M := 4 } = true := by
  decide +kernel

theorem row051_layer030_checked :
    coverLayerCheck row051.height row051.goods { lower := 2738041651200, upper := 5476083302400, M := 3 } = true := by
  decide +kernel

theorem row051_layer031_checked :
    coverLayerCheck row051.height row051.goods { lower := 5476083302400, upper := 10952166604800, M := 3 } = true := by
  decide +kernel

theorem row051_layer032_checked :
    coverLayerCheck row051.height row051.goods { lower := 10952166604800, upper := 21904333209600, M := 3 } = true := by
  decide +kernel

theorem row051_layer033_checked :
    coverLayerCheck row051.height row051.goods { lower := 21904333209600, upper := 43808666419200, M := 3 } = true := by
  decide +kernel

theorem row051_layer034_checked :
    coverLayerCheck row051.height row051.goods { lower := 43808666419200, upper := 87617332838400, M := 3 } = true := by
  decide +kernel

theorem row051_layer035_checked :
    coverLayerCheck row051.height row051.goods { lower := 87617332838400, upper := 175234665676800, M := 2 } = true := by
  decide +kernel

theorem row051_layer036_checked :
    coverLayerCheck row051.height row051.goods { lower := 175234665676800, upper := 350469331353600, M := 2 } = true := by
  decide +kernel

theorem row051_layer037_checked :
    coverLayerCheck row051.height row051.goods { lower := 350469331353600, upper := 700938662707200, M := 2 } = true := by
  decide +kernel

theorem row051_layer038_checked :
    coverLayerCheck row051.height row051.goods { lower := 700938662707200, upper := 1401877325414400, M := 2 } = true := by
  decide +kernel

theorem row051_layer039_checked :
    coverLayerCheck row051.height row051.goods { lower := 1401877325414400, upper := 2803754650828800, M := 2 } = true := by
  decide +kernel

theorem row051_layer040_checked :
    coverLayerCheck row051.height row051.goods { lower := 2803754650828800, upper := 5607509301657600, M := 2 } = true := by
  decide +kernel

theorem row051_layer041_checked :
    coverLayerCheck row051.height row051.goods { lower := 5607509301657600, upper := 11215018603315200, M := 2 } = true := by
  decide +kernel

theorem row051_layer042_checked :
    coverLayerCheck row051.height row051.goods { lower := 11215018603315200, upper := 22430037206630400, M := 2 } = true := by
  decide +kernel

theorem row051_layer043_checked :
    coverLayerCheck row051.height row051.goods { lower := 22430037206630400, upper := 44860074413260800, M := 1 } = true := by
  decide +kernel

theorem row051_layer044_checked :
    coverLayerCheck row051.height row051.goods { lower := 44860074413260800, upper := 89720148826521600, M := 1 } = true := by
  decide +kernel

theorem row051_layer045_checked :
    coverLayerCheck row051.height row051.goods { lower := 89720148826521600, upper := 100000000000000000, M := 1 } = true := by
  decide +kernel

theorem row051_layers_checked :
    row051.layers.all (coverLayerCheck row051.height row051.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row051.height row051.goods) = true
  simp only [List.all_cons, List.all_nil,
    row051_layer000_checked,
    row051_layer001_checked,
    row051_layer002_checked,
    row051_layer003_checked,
    row051_layer004_checked,
    row051_layer005_checked,
    row051_layer006_checked,
    row051_layer007_checked,
    row051_layer008_checked,
    row051_layer009_checked,
    row051_layer010_checked,
    row051_layer011_checked,
    row051_layer012_checked,
    row051_layer013_checked,
    row051_layer014_checked,
    row051_layer015_checked,
    row051_layer016_checked,
    row051_layer017_checked,
    row051_layer018_checked,
    row051_layer019_checked,
    row051_layer020_checked,
    row051_layer021_checked,
    row051_layer022_checked,
    row051_layer023_checked,
    row051_layer024_checked,
    row051_layer025_checked,
    row051_layer026_checked,
    row051_layer027_checked,
    row051_layer028_checked,
    row051_layer029_checked,
    row051_layer030_checked,
    row051_layer031_checked,
    row051_layer032_checked,
    row051_layer033_checked,
    row051_layer034_checked,
    row051_layer035_checked,
    row051_layer036_checked,
    row051_layer037_checked,
    row051_layer038_checked,
    row051_layer039_checked,
    row051_layer040_checked,
    row051_layer041_checked,
    row051_layer042_checked,
    row051_layer043_checked,
    row051_layer044_checked,
    row051_layer045_checked,
    Bool.true_and]

theorem row051_checked : finiteCoverRowCheck row051 = true := by
  simp only [finiteCoverRowCheck, row051_registered, row051_goods_checked,
    row051_small_checked, row051_layerCover_checked, row051_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row051_checked

end B699LowIndex
