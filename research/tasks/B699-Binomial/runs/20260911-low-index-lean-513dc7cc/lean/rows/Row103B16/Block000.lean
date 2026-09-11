import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row103_height : HeightCertificateDatum := { i := 103, r := 34, s := 72, n0Power10 := 9 }

def row103_goods : List GoodSegment := [
  { lower := 208, upper := 301, witness := RowWitness.topPrime 199 },
  { lower := 302, upper := 395, witness := RowWitness.topPrime 293 },
  { lower := 396, upper := 491, witness := RowWitness.topPrime 389 },
  { lower := 492, upper := 593, witness := RowWitness.topPrime 491 },
  { lower := 594, upper := 695, witness := RowWitness.topPrime 593 },
  { lower := 696, upper := 793, witness := RowWitness.topPrime 691 },
  { lower := 794, upper := 889, witness := RowWitness.topPrime 787 },
  { lower := 890, upper := 989, witness := RowWitness.topPrime 887 },
  { lower := 990, upper := 1085, witness := RowWitness.topPrime 983 },
  { lower := 1086, upper := 1171, witness := RowWitness.topPrime 1069 },
  { lower := 1172, upper := 1273, witness := RowWitness.topPrime 1171 },
  { lower := 1274, upper := 1361, witness := RowWitness.topPrime 1259 },
  { lower := 1362, upper := 1463, witness := RowWitness.topPrime 1361 },
  { lower := 1464, upper := 1561, witness := RowWitness.topPrime 1459 },
  { lower := 1562, upper := 1661, witness := RowWitness.topPrime 1559 },
  { lower := 1662, upper := 1759, witness := RowWitness.topPrime 1657 },
  { lower := 1760, upper := 1861, witness := RowWitness.topPrime 1759 },
  { lower := 1862, upper := 1963, witness := RowWitness.topPrime 1861 },
  { lower := 1964, upper := 2053, witness := RowWitness.topPrime 1951 },
  { lower := 2054, upper := 2155, witness := RowWitness.topPrime 2053 },
  { lower := 2156, upper := 2255, witness := RowWitness.topPrime 2153 },
  { lower := 2256, upper := 2353, witness := RowWitness.topPrime 2251 },
  { lower := 2354, upper := 2453, witness := RowWitness.topPrime 2351 },
  { lower := 2454, upper := 2549, witness := RowWitness.topPrime 2447 },
  { lower := 2550, upper := 2651, witness := RowWitness.topPrime 2549 },
  { lower := 2652, upper := 2749, witness := RowWitness.topPrime 2647 },
  { lower := 2750, upper := 2851, witness := RowWitness.topPrime 2749 },
  { lower := 2852, upper := 2953, witness := RowWitness.topPrime 2851 },
  { lower := 2954, upper := 3055, witness := RowWitness.topPrime 2953 },
  { lower := 3056, upper := 3151, witness := RowWitness.topPrime 3049 },
  { lower := 3152, upper := 3239, witness := RowWitness.topPrime 3137 },
  { lower := 3240, upper := 3331, witness := RowWitness.topPrime 3229 },
  { lower := 3332, upper := 3433, witness := RowWitness.topPrime 3331 },
  { lower := 3434, upper := 3535, witness := RowWitness.topPrime 3433 },
  { lower := 3536, upper := 3635, witness := RowWitness.topPrime 3533 },
  { lower := 3636, upper := 3733, witness := RowWitness.topPrime 3631 },
  { lower := 3734, upper := 3835, witness := RowWitness.topPrime 3733 },
  { lower := 3836, upper := 3935, witness := RowWitness.topPrime 3833 },
  { lower := 3936, upper := 4033, witness := RowWitness.topPrime 3931 },
  { lower := 4034, upper := 4129, witness := RowWitness.topPrime 4027 },
  { lower := 4130, upper := 4231, witness := RowWitness.topPrime 4129 },
  { lower := 4232, upper := 4333, witness := RowWitness.topPrime 4231 },
  { lower := 4334, upper := 4429, witness := RowWitness.topPrime 4327 },
  { lower := 4430, upper := 4525, witness := RowWitness.topPrime 4423 },
  { lower := 4526, upper := 4625, witness := RowWitness.topPrime 4523 },
  { lower := 4626, upper := 4723, witness := RowWitness.topPrime 4621 },
  { lower := 4724, upper := 4825, witness := RowWitness.topPrime 4723 },
  { lower := 4826, upper := 4919, witness := RowWitness.topPrime 4817 },
  { lower := 4920, upper := 5021, witness := RowWitness.topPrime 4919 },
  { lower := 5022, upper := 5123, witness := RowWitness.topPrime 5021 },
  { lower := 5124, upper := 5221, witness := RowWitness.topPrime 5119 },
  { lower := 5222, upper := 5311, witness := RowWitness.topPrime 5209 },
  { lower := 5312, upper := 5411, witness := RowWitness.topPrime 5309 },
  { lower := 5412, upper := 5509, witness := RowWitness.topPrime 5407 },
  { lower := 5510, upper := 5609, witness := RowWitness.topPrime 5507 },
  { lower := 5610, upper := 5693, witness := RowWitness.topPrime 5591 },
  { lower := 5694, upper := 5795, witness := RowWitness.topPrime 5693 },
  { lower := 5796, upper := 5893, witness := RowWitness.topPrime 5791 },
  { lower := 5894, upper := 5983, witness := RowWitness.topPrime 5881 },
  { lower := 5984, upper := 6083, witness := RowWitness.topPrime 5981 },
  { lower := 6084, upper := 6181, witness := RowWitness.topPrime 6079 },
  { lower := 6182, upper := 6275, witness := RowWitness.topPrime 6173 },
  { lower := 6276, upper := 6373, witness := RowWitness.topPrime 6271 },
  { lower := 6374, upper := 6475, witness := RowWitness.topPrime 6373 },
  { lower := 6476, upper := 6575, witness := RowWitness.topPrime 6473 },
  { lower := 6576, upper := 6673, witness := RowWitness.topPrime 6571 },
  { lower := 6674, upper := 6775, witness := RowWitness.topPrime 6673 },
  { lower := 6776, upper := 6865, witness := RowWitness.topPrime 6763 },
  { lower := 6866, upper := 6965, witness := RowWitness.topPrime 6863 },
  { lower := 6966, upper := 7063, witness := RowWitness.topPrime 6961 },
  { lower := 7064, upper := 7159, witness := RowWitness.topPrime 7057 },
  { lower := 7160, upper := 7261, witness := RowWitness.topPrime 7159 },
  { lower := 7262, upper := 7355, witness := RowWitness.topPrime 7253 },
  { lower := 7356, upper := 7453, witness := RowWitness.topPrime 7351 },
  { lower := 7454, upper := 7553, witness := RowWitness.topPrime 7451 },
  { lower := 7554, upper := 7651, witness := RowWitness.topPrime 7549 },
  { lower := 7652, upper := 7751, witness := RowWitness.topPrime 7649 },
  { lower := 7752, upper := 7843, witness := RowWitness.topPrime 7741 },
  { lower := 7844, upper := 7943, witness := RowWitness.topPrime 7841 },
  { lower := 7944, upper := 8039, witness := RowWitness.topPrime 7937 },
  { lower := 8040, upper := 8141, witness := RowWitness.topPrime 8039 },
  { lower := 8142, upper := 8225, witness := RowWitness.topPrime 8123 },
  { lower := 8226, upper := 8323, witness := RowWitness.topPrime 8221 },
  { lower := 8324, upper := 8419, witness := RowWitness.topPrime 8317 },
  { lower := 8420, upper := 8521, witness := RowWitness.topPrime 8419 },
  { lower := 8522, upper := 8623, witness := RowWitness.topPrime 8521 },
  { lower := 8624, upper := 8725, witness := RowWitness.topPrime 8623 },
  { lower := 8726, upper := 8821, witness := RowWitness.topPrime 8719 },
  { lower := 8822, upper := 8923, witness := RowWitness.topPrime 8821 },
  { lower := 8924, upper := 9025, witness := RowWitness.topPrime 8923 },
  { lower := 9026, upper := 9115, witness := RowWitness.topPrime 9013 },
  { lower := 9116, upper := 9211, witness := RowWitness.topPrime 9109 },
  { lower := 9212, upper := 9311, witness := RowWitness.topPrime 9209 },
  { lower := 9312, upper := 9413, witness := RowWitness.topPrime 9311 },
  { lower := 9414, upper := 9515, witness := RowWitness.topPrime 9413 },
  { lower := 9516, upper := 9613, witness := RowWitness.topPrime 9511 },
  { lower := 9614, upper := 9715, witness := RowWitness.topPrime 9613 },
  { lower := 9716, upper := 9799, witness := RowWitness.topPrime 9697 },
  { lower := 9800, upper := 9893, witness := RowWitness.topPrime 9791 },
  { lower := 9894, upper := 9989, witness := RowWitness.topPrime 9887 },
  { lower := 9990, upper := 10075, witness := RowWitness.topPrime 9973 },
  { lower := 10076, upper := 10171, witness := RowWitness.topPrime 10069 },
  { lower := 10172, upper := 10271, witness := RowWitness.topPrime 10169 },
  { lower := 10272, upper := 10373, witness := RowWitness.topPrime 10271 },
  { lower := 10374, upper := 10471, witness := RowWitness.topPrime 10369 },
  { lower := 10472, upper := 10505, witness := RowWitness.topPrime 10463 },
  { lower := 10580, upper := 10669, witness := RowWitness.topPrime 10567 },
  { lower := 10670, upper := 10750, witness := RowWitness.topPrime 10667 },
  { lower := 10752, upper := 10760, witness := RowWitness.topPrime 10739 },
  { lower := 10935, upper := 11011, witness := RowWitness.topPrime 10909 },
  { lower := 11012, upper := 11087, witness := RowWitness.topPrime 11003 },
  { lower := 11094, upper := 11195, witness := RowWitness.topPrime 11093 },
  { lower := 11196, upper := 11211, witness := RowWitness.topPrime 11177 },
  { lower := 11236, upper := 11315, witness := RowWitness.topPrime 11213 },
  { lower := 11316, upper := 11352, witness := RowWitness.topPrime 11311 },
  { lower := 11774, upper := 11845, witness := RowWitness.topPrime 11743 },
  { lower := 11846, upper := 11869, witness := RowWitness.topPrime 11839 },
  { lower := 11875, upper := 11876, witness := RowWitness.topPrime 11867 },
  { lower := 12005, upper := 12081, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12390, witness := RowWitness.topPrime 12301 },
  { lower := 12393, upper := 12423, witness := RowWitness.topPrime 12391 },
  { lower := 12482, upper := 12581, witness := RowWitness.topPrime 12479 },
  { lower := 12582, upper := 12595, witness := RowWitness.topPrime 12577 },
  { lower := 13125, upper := 13223, witness := RowWitness.topPrime 13121 },
  { lower := 13224, upper := 13227, witness := RowWitness.topPrime 13219 },
  { lower := 13254, upper := 13284, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13411, witness := RowWitness.topPrime 13309 },
  { lower := 13412, upper := 13412, witness := RowWitness.topPrime 13411 },
  { lower := 13454, upper := 13553, witness := RowWitness.topPrime 13451 },
  { lower := 13554, upper := 13558, witness := RowWitness.topPrime 13553 },
  { lower := 13718, upper := 13813, witness := RowWitness.topPrime 13711 },
  { lower := 13814, upper := 13820, witness := RowWitness.topPrime 13807 },
  { lower := 13851, upper := 13880, witness := RowWitness.topPrime 13841 },
  { lower := 13924, upper := 13953, witness := RowWitness.topPrime 13921 },
  { lower := 14336, upper := 14399, witness := RowWitness.topPrime 14327 },
  { lower := 14406, upper := 14503, witness := RowWitness.topPrime 14401 },
  { lower := 14504, upper := 14508, witness := RowWitness.topPrime 14503 },
  { lower := 14641, upper := 14682, witness := RowWitness.topPrime 14639 },
  { lower := 14739, upper := 14743, witness := RowWitness.topPrime 14737 },
  { lower := 14792, upper := 14841, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14894, witness := RowWitness.topPrime 14879 },
  { lower := 15123, upper := 15223, witness := RowWitness.topPrime 15121 },
  { lower := 15224, upper := 15231, witness := RowWitness.topPrime 15217 },
  { lower := 15360, upper := 15461, witness := RowWitness.topPrime 15359 },
  { lower := 15462, upper := 15481, witness := RowWitness.topPrime 15461 },
  { lower := 15979, upper := 16075, witness := RowWitness.topPrime 15973 },
  { lower := 16076, upper := 16081, witness := RowWitness.topPrime 16073 },
  { lower := 16384, upper := 16483, witness := RowWitness.topPrime 16381 },
  { lower := 16484, upper := 16486, witness := RowWitness.topPrime 16481 },
  { lower := 16810, upper := 16889, witness := RowWitness.topPrime 16787 },
  { lower := 16890, upper := 16922, witness := RowWitness.topPrime 16889 },
  { lower := 17303, upper := 17400, witness := RowWitness.topPrime 17299 },
  { lower := 17405, upper := 17405, witness := RowWitness.topPrime 17401 },
  { lower := 17408, upper := 17503, witness := RowWitness.topPrime 17401 },
  { lower := 17504, upper := 17510, witness := RowWitness.topPrime 17497 },
  { lower := 17576, upper := 17598, witness := RowWitness.topPrime 17573 },
  { lower := 17661, upper := 17761, witness := RowWitness.topPrime 17659 },
  { lower := 17762, upper := 17763, witness := RowWitness.topPrime 17761 },
  { lower := 18490, upper := 18583, witness := RowWitness.topPrime 18481 },
  { lower := 18584, upper := 18592, witness := RowWitness.topPrime 18583 },
  { lower := 18634, upper := 18707, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18736, witness := RowWitness.topPrime 18719 },
  { lower := 18750, upper := 18851, witness := RowWitness.topPrime 18749 },
  { lower := 18852, upper := 18852, witness := RowWitness.topPrime 18839 },
  { lower := 19208, upper := 19309, witness := RowWitness.topPrime 19207 },
  { lower := 19310, upper := 19310, witness := RowWitness.topPrime 19309 },
  { lower := 19663, upper := 19763, witness := RowWitness.topPrime 19661 },
  { lower := 19764, upper := 19765, witness := RowWitness.topPrime 19763 },
  { lower := 19773, upper := 19785, witness := RowWitness.topPrime 19763 },
  { lower := 19965, upper := 19983, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20263, witness := RowWitness.topPrime 20161 },
  { lower := 20264, upper := 20274, witness := RowWitness.topPrime 20261 },
  { lower := 20402, upper := 20441, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20504, witness := RowWitness.topPrime 20479 },
  { lower := 20535, upper := 20635, witness := RowWitness.topPrime 20533 },
  { lower := 20636, upper := 20637, witness := RowWitness.topPrime 20627 },
  { lower := 20667, upper := 20679, witness := RowWitness.topPrime 20663 },
  { lower := 21316, upper := 21398, witness := RowWitness.topPrime 21313 },
  { lower := 21870, upper := 21965, witness := RowWitness.topPrime 21863 },
  { lower := 21966, upper := 22006, witness := RowWitness.topPrime 21961 },
  { lower := 22188, upper := 22192, witness := RowWitness.topPrime 22171 },
  { lower := 22472, upper := 22571, witness := RowWitness.topPrime 22469 },
  { lower := 22572, upper := 22574, witness := RowWitness.topPrime 22571 },
  { lower := 22627, upper := 22630, witness := RowWitness.topPrime 22621 },
  { lower := 24037, upper := 24131, witness := RowWitness.topPrime 24029 },
  { lower := 24132, upper := 24139, witness := RowWitness.topPrime 24121 },
  { lower := 24334, upper := 24431, witness := RowWitness.topPrime 24329 },
  { lower := 24432, upper := 24469, witness := RowWitness.topPrime 24421 },
  { lower := 24576, upper := 24667, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25066, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25291, witness := RowWitness.topPrime 25189 },
  { lower := 25292, upper := 25317, witness := RowWitness.topPrime 25261 },
  { lower := 26411, upper := 26466, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26513, witness := RowWitness.topPrime 26501 },
  { lower := 26645, upper := 26726, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 26998, witness := RowWitness.topPrime 26927 },
  { lower := 28125, upper := 28192, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28227, witness := RowWitness.topPrime 28219 },
  { lower := 28577, upper := 28663, witness := RowWitness.topPrime 28573 },
  { lower := 28672, upper := 28679, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28774, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28819, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29870, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30695, witness := RowWitness.topPrime 30593 },
  { lower := 30696, upper := 30705, witness := RowWitness.topPrime 30689 },
  { lower := 30720, upper := 30720, witness := RowWitness.topPrime 30713 },
  { lower := 30758, upper := 30822, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 31001, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31295, witness := RowWitness.topPrime 31193 },
  { lower := 31296, upper := 31315, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31352, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31431, witness := RowWitness.topPrime 31397 },
  { lower := 31433, upper := 31499, witness := RowWitness.topPrime 31397 },
  { lower := 31500, upper := 31525, witness := RowWitness.topPrime 31489 },
  { lower := 32805, upper := 32870, witness := RowWitness.topPrime 32803 },
  { lower := 33708, upper := 33716, witness := RowWitness.topPrime 33703 },
  { lower := 34375, upper := 34471, witness := RowWitness.topPrime 34369 },
  { lower := 34472, upper := 34493, witness := RowWitness.topPrime 34471 },
  { lower := 34816, upper := 34909, witness := RowWitness.topPrime 34807 },
  { lower := 34910, upper := 34912, witness := RowWitness.topPrime 34897 },
  { lower := 35344, upper := 35389, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36599, witness := RowWitness.topPrime 36497 },
  { lower := 36600, upper := 36603, witness := RowWitness.topPrime 36599 },
  { lower := 37210, upper := 37281, witness := RowWitness.topPrime 37201 },
  { lower := 37303, upper := 37312, witness := RowWitness.topPrime 37277 },
  { lower := 37349, upper := 37405, witness := RowWitness.topPrime 37339 },
  { lower := 37446, upper := 37451, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37548, witness := RowWitness.topPrime 37493 },
  { lower := 37553, upper := 37602, witness := RowWitness.topPrime 37549 },
  { lower := 37636, upper := 37655, witness := RowWitness.topPrime 37633 },
  { lower := 39326, upper := 39425, witness := RowWitness.topPrime 39323 },
  { lower := 39426, upper := 39428, witness := RowWitness.topPrime 39419 },
  { lower := 40401, upper := 40430, witness := RowWitness.topPrime 40387 },
  { lower := 40817, upper := 40906, witness := RowWitness.topPrime 40813 },
  { lower := 40960, upper := 41033, witness := RowWitness.topPrime 40949 },
  { lower := 43750, upper := 43789, witness := RowWitness.topPrime 43721 },
  { lower := 48013, upper := 48063, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48770, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48836, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49232, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50512, witness := RowWitness.topPrime 50417 },
  { lower := 53290, upper := 53350, witness := RowWitness.topPrime 53281 },
  { lower := 55451, upper := 55543, witness := RowWitness.topPrime 55441 },
  { lower := 55544, upper := 55549, witness := RowWitness.topPrime 55541 },
  { lower := 58619, upper := 58666, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59058, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62512, witness := RowWitness.topPrime 62497 },
  { lower := 63948, upper := 63971, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65623, witness := RowWitness.topPrime 65521 },
  { lower := 65624, upper := 65638, witness := RowWitness.topPrime 65617 },
  { lower := 68651, upper := 68692, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68992, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73269, witness := RowWitness.topPrime 73189 },
  { lower := 137842, upper := 137883, witness := RowWitness.topPrime 137831 },
  { lower := 146410, upper := 146436, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 148979, witness := RowWitness.topPrime 148949 }
]

def row103_layers : List CoverLayer := [
  { lower := 10506, upper := 21012, M := 21 },
  { lower := 21012, upper := 42024, M := 17 },
  { lower := 42024, upper := 84048, M := 14 },
  { lower := 84048, upper := 168096, M := 11 },
  { lower := 168096, upper := 336192, M := 9 },
  { lower := 336192, upper := 672384, M := 7 },
  { lower := 672384, upper := 1344768, M := 6 },
  { lower := 1344768, upper := 2689536, M := 5 },
  { lower := 2689536, upper := 5379072, M := 4 },
  { lower := 5379072, upper := 10758144, M := 3 },
  { lower := 10758144, upper := 21516288, M := 3 },
  { lower := 21516288, upper := 43032576, M := 2 },
  { lower := 43032576, upper := 86065152, M := 2 },
  { lower := 86065152, upper := 172130304, M := 2 },
  { lower := 172130304, upper := 344260608, M := 1 },
  { lower := 344260608, upper := 688521216, M := 1 },
  { lower := 688521216, upper := 1000000000, M := 1 }
]

def row103 : FiniteCoverRow := {
  height := row103_height,
  goods := row103_goods,
  layers := row103_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_good000_checked :
    goodSegmentCheck 103 34 72
      { lower := 208, upper := 301, witness := RowWitness.topPrime 199 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good001_checked :
    goodSegmentCheck 103 34 72
      { lower := 302, upper := 395, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good002_checked :
    goodSegmentCheck 103 34 72
      { lower := 396, upper := 491, witness := RowWitness.topPrime 389 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good003_checked :
    goodSegmentCheck 103 34 72
      { lower := 492, upper := 593, witness := RowWitness.topPrime 491 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good004_checked :
    goodSegmentCheck 103 34 72
      { lower := 594, upper := 695, witness := RowWitness.topPrime 593 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good005_checked :
    goodSegmentCheck 103 34 72
      { lower := 696, upper := 793, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good006_checked :
    goodSegmentCheck 103 34 72
      { lower := 794, upper := 889, witness := RowWitness.topPrime 787 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good007_checked :
    goodSegmentCheck 103 34 72
      { lower := 890, upper := 989, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good008_checked :
    goodSegmentCheck 103 34 72
      { lower := 990, upper := 1085, witness := RowWitness.topPrime 983 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good009_checked :
    goodSegmentCheck 103 34 72
      { lower := 1086, upper := 1171, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good010_checked :
    goodSegmentCheck 103 34 72
      { lower := 1172, upper := 1273, witness := RowWitness.topPrime 1171 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good011_checked :
    goodSegmentCheck 103 34 72
      { lower := 1274, upper := 1361, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good012_checked :
    goodSegmentCheck 103 34 72
      { lower := 1362, upper := 1463, witness := RowWitness.topPrime 1361 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good013_checked :
    goodSegmentCheck 103 34 72
      { lower := 1464, upper := 1561, witness := RowWitness.topPrime 1459 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good014_checked :
    goodSegmentCheck 103 34 72
      { lower := 1562, upper := 1661, witness := RowWitness.topPrime 1559 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good015_checked :
    goodSegmentCheck 103 34 72
      { lower := 1662, upper := 1759, witness := RowWitness.topPrime 1657 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_good016_checked :
    goodSegmentCheck 103 34 72
      { lower := 1760, upper := 1861, witness := RowWitness.topPrime 1759 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good017_checked :
    goodSegmentCheck 103 34 72
      { lower := 1862, upper := 1963, witness := RowWitness.topPrime 1861 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good018_checked :
    goodSegmentCheck 103 34 72
      { lower := 1964, upper := 2053, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good019_checked :
    goodSegmentCheck 103 34 72
      { lower := 2054, upper := 2155, witness := RowWitness.topPrime 2053 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good020_checked :
    goodSegmentCheck 103 34 72
      { lower := 2156, upper := 2255, witness := RowWitness.topPrime 2153 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good021_checked :
    goodSegmentCheck 103 34 72
      { lower := 2256, upper := 2353, witness := RowWitness.topPrime 2251 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good022_checked :
    goodSegmentCheck 103 34 72
      { lower := 2354, upper := 2453, witness := RowWitness.topPrime 2351 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good023_checked :
    goodSegmentCheck 103 34 72
      { lower := 2454, upper := 2549, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good024_checked :
    goodSegmentCheck 103 34 72
      { lower := 2550, upper := 2651, witness := RowWitness.topPrime 2549 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good025_checked :
    goodSegmentCheck 103 34 72
      { lower := 2652, upper := 2749, witness := RowWitness.topPrime 2647 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good026_checked :
    goodSegmentCheck 103 34 72
      { lower := 2750, upper := 2851, witness := RowWitness.topPrime 2749 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good027_checked :
    goodSegmentCheck 103 34 72
      { lower := 2852, upper := 2953, witness := RowWitness.topPrime 2851 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good028_checked :
    goodSegmentCheck 103 34 72
      { lower := 2954, upper := 3055, witness := RowWitness.topPrime 2953 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good029_checked :
    goodSegmentCheck 103 34 72
      { lower := 3056, upper := 3151, witness := RowWitness.topPrime 3049 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good030_checked :
    goodSegmentCheck 103 34 72
      { lower := 3152, upper := 3239, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good031_checked :
    goodSegmentCheck 103 34 72
      { lower := 3240, upper := 3331, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_good032_checked :
    goodSegmentCheck 103 34 72
      { lower := 3332, upper := 3433, witness := RowWitness.topPrime 3331 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good033_checked :
    goodSegmentCheck 103 34 72
      { lower := 3434, upper := 3535, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good034_checked :
    goodSegmentCheck 103 34 72
      { lower := 3536, upper := 3635, witness := RowWitness.topPrime 3533 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good035_checked :
    goodSegmentCheck 103 34 72
      { lower := 3636, upper := 3733, witness := RowWitness.topPrime 3631 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good036_checked :
    goodSegmentCheck 103 34 72
      { lower := 3734, upper := 3835, witness := RowWitness.topPrime 3733 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good037_checked :
    goodSegmentCheck 103 34 72
      { lower := 3836, upper := 3935, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good038_checked :
    goodSegmentCheck 103 34 72
      { lower := 3936, upper := 4033, witness := RowWitness.topPrime 3931 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good039_checked :
    goodSegmentCheck 103 34 72
      { lower := 4034, upper := 4129, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good040_checked :
    goodSegmentCheck 103 34 72
      { lower := 4130, upper := 4231, witness := RowWitness.topPrime 4129 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good041_checked :
    goodSegmentCheck 103 34 72
      { lower := 4232, upper := 4333, witness := RowWitness.topPrime 4231 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good042_checked :
    goodSegmentCheck 103 34 72
      { lower := 4334, upper := 4429, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good043_checked :
    goodSegmentCheck 103 34 72
      { lower := 4430, upper := 4525, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good044_checked :
    goodSegmentCheck 103 34 72
      { lower := 4526, upper := 4625, witness := RowWitness.topPrime 4523 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good045_checked :
    goodSegmentCheck 103 34 72
      { lower := 4626, upper := 4723, witness := RowWitness.topPrime 4621 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good046_checked :
    goodSegmentCheck 103 34 72
      { lower := 4724, upper := 4825, witness := RowWitness.topPrime 4723 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good047_checked :
    goodSegmentCheck 103 34 72
      { lower := 4826, upper := 4919, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_good048_checked :
    goodSegmentCheck 103 34 72
      { lower := 4920, upper := 5021, witness := RowWitness.topPrime 4919 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good049_checked :
    goodSegmentCheck 103 34 72
      { lower := 5022, upper := 5123, witness := RowWitness.topPrime 5021 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good050_checked :
    goodSegmentCheck 103 34 72
      { lower := 5124, upper := 5221, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good051_checked :
    goodSegmentCheck 103 34 72
      { lower := 5222, upper := 5311, witness := RowWitness.topPrime 5209 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good052_checked :
    goodSegmentCheck 103 34 72
      { lower := 5312, upper := 5411, witness := RowWitness.topPrime 5309 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good053_checked :
    goodSegmentCheck 103 34 72
      { lower := 5412, upper := 5509, witness := RowWitness.topPrime 5407 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good054_checked :
    goodSegmentCheck 103 34 72
      { lower := 5510, upper := 5609, witness := RowWitness.topPrime 5507 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good055_checked :
    goodSegmentCheck 103 34 72
      { lower := 5610, upper := 5693, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good056_checked :
    goodSegmentCheck 103 34 72
      { lower := 5694, upper := 5795, witness := RowWitness.topPrime 5693 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good057_checked :
    goodSegmentCheck 103 34 72
      { lower := 5796, upper := 5893, witness := RowWitness.topPrime 5791 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good058_checked :
    goodSegmentCheck 103 34 72
      { lower := 5894, upper := 5983, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good059_checked :
    goodSegmentCheck 103 34 72
      { lower := 5984, upper := 6083, witness := RowWitness.topPrime 5981 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good060_checked :
    goodSegmentCheck 103 34 72
      { lower := 6084, upper := 6181, witness := RowWitness.topPrime 6079 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good061_checked :
    goodSegmentCheck 103 34 72
      { lower := 6182, upper := 6275, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good062_checked :
    goodSegmentCheck 103 34 72
      { lower := 6276, upper := 6373, witness := RowWitness.topPrime 6271 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good063_checked :
    goodSegmentCheck 103 34 72
      { lower := 6374, upper := 6475, witness := RowWitness.topPrime 6373 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_good064_checked :
    goodSegmentCheck 103 34 72
      { lower := 6476, upper := 6575, witness := RowWitness.topPrime 6473 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good065_checked :
    goodSegmentCheck 103 34 72
      { lower := 6576, upper := 6673, witness := RowWitness.topPrime 6571 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good066_checked :
    goodSegmentCheck 103 34 72
      { lower := 6674, upper := 6775, witness := RowWitness.topPrime 6673 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good067_checked :
    goodSegmentCheck 103 34 72
      { lower := 6776, upper := 6865, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good068_checked :
    goodSegmentCheck 103 34 72
      { lower := 6866, upper := 6965, witness := RowWitness.topPrime 6863 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good069_checked :
    goodSegmentCheck 103 34 72
      { lower := 6966, upper := 7063, witness := RowWitness.topPrime 6961 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good070_checked :
    goodSegmentCheck 103 34 72
      { lower := 7064, upper := 7159, witness := RowWitness.topPrime 7057 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good071_checked :
    goodSegmentCheck 103 34 72
      { lower := 7160, upper := 7261, witness := RowWitness.topPrime 7159 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good072_checked :
    goodSegmentCheck 103 34 72
      { lower := 7262, upper := 7355, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good073_checked :
    goodSegmentCheck 103 34 72
      { lower := 7356, upper := 7453, witness := RowWitness.topPrime 7351 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good074_checked :
    goodSegmentCheck 103 34 72
      { lower := 7454, upper := 7553, witness := RowWitness.topPrime 7451 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good075_checked :
    goodSegmentCheck 103 34 72
      { lower := 7554, upper := 7651, witness := RowWitness.topPrime 7549 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good076_checked :
    goodSegmentCheck 103 34 72
      { lower := 7652, upper := 7751, witness := RowWitness.topPrime 7649 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good077_checked :
    goodSegmentCheck 103 34 72
      { lower := 7752, upper := 7843, witness := RowWitness.topPrime 7741 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good078_checked :
    goodSegmentCheck 103 34 72
      { lower := 7844, upper := 7943, witness := RowWitness.topPrime 7841 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good079_checked :
    goodSegmentCheck 103 34 72
      { lower := 7944, upper := 8039, witness := RowWitness.topPrime 7937 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_good080_checked :
    goodSegmentCheck 103 34 72
      { lower := 8040, upper := 8141, witness := RowWitness.topPrime 8039 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good081_checked :
    goodSegmentCheck 103 34 72
      { lower := 8142, upper := 8225, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good082_checked :
    goodSegmentCheck 103 34 72
      { lower := 8226, upper := 8323, witness := RowWitness.topPrime 8221 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good083_checked :
    goodSegmentCheck 103 34 72
      { lower := 8324, upper := 8419, witness := RowWitness.topPrime 8317 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good084_checked :
    goodSegmentCheck 103 34 72
      { lower := 8420, upper := 8521, witness := RowWitness.topPrime 8419 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good085_checked :
    goodSegmentCheck 103 34 72
      { lower := 8522, upper := 8623, witness := RowWitness.topPrime 8521 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good086_checked :
    goodSegmentCheck 103 34 72
      { lower := 8624, upper := 8725, witness := RowWitness.topPrime 8623 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good087_checked :
    goodSegmentCheck 103 34 72
      { lower := 8726, upper := 8821, witness := RowWitness.topPrime 8719 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good088_checked :
    goodSegmentCheck 103 34 72
      { lower := 8822, upper := 8923, witness := RowWitness.topPrime 8821 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good089_checked :
    goodSegmentCheck 103 34 72
      { lower := 8924, upper := 9025, witness := RowWitness.topPrime 8923 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good090_checked :
    goodSegmentCheck 103 34 72
      { lower := 9026, upper := 9115, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good091_checked :
    goodSegmentCheck 103 34 72
      { lower := 9116, upper := 9211, witness := RowWitness.topPrime 9109 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good092_checked :
    goodSegmentCheck 103 34 72
      { lower := 9212, upper := 9311, witness := RowWitness.topPrime 9209 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good093_checked :
    goodSegmentCheck 103 34 72
      { lower := 9312, upper := 9413, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good094_checked :
    goodSegmentCheck 103 34 72
      { lower := 9414, upper := 9515, witness := RowWitness.topPrime 9413 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good095_checked :
    goodSegmentCheck 103 34 72
      { lower := 9516, upper := 9613, witness := RowWitness.topPrime 9511 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_good096_checked :
    goodSegmentCheck 103 34 72
      { lower := 9614, upper := 9715, witness := RowWitness.topPrime 9613 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good097_checked :
    goodSegmentCheck 103 34 72
      { lower := 9716, upper := 9799, witness := RowWitness.topPrime 9697 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good098_checked :
    goodSegmentCheck 103 34 72
      { lower := 9800, upper := 9893, witness := RowWitness.topPrime 9791 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good099_checked :
    goodSegmentCheck 103 34 72
      { lower := 9894, upper := 9989, witness := RowWitness.topPrime 9887 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good100_checked :
    goodSegmentCheck 103 34 72
      { lower := 9990, upper := 10075, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good101_checked :
    goodSegmentCheck 103 34 72
      { lower := 10076, upper := 10171, witness := RowWitness.topPrime 10069 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good102_checked :
    goodSegmentCheck 103 34 72
      { lower := 10172, upper := 10271, witness := RowWitness.topPrime 10169 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good103_checked :
    goodSegmentCheck 103 34 72
      { lower := 10272, upper := 10373, witness := RowWitness.topPrime 10271 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good104_checked :
    goodSegmentCheck 103 34 72
      { lower := 10374, upper := 10471, witness := RowWitness.topPrime 10369 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good105_checked :
    goodSegmentCheck 103 34 72
      { lower := 10472, upper := 10505, witness := RowWitness.topPrime 10463 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good106_checked :
    goodSegmentCheck 103 34 72
      { lower := 10580, upper := 10669, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good107_checked :
    goodSegmentCheck 103 34 72
      { lower := 10670, upper := 10750, witness := RowWitness.topPrime 10667 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good108_checked :
    goodSegmentCheck 103 34 72
      { lower := 10752, upper := 10760, witness := RowWitness.topPrime 10739 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good109_checked :
    goodSegmentCheck 103 34 72
      { lower := 10935, upper := 11011, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good110_checked :
    goodSegmentCheck 103 34 72
      { lower := 11012, upper := 11087, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good111_checked :
    goodSegmentCheck 103 34 72
      { lower := 11094, upper := 11195, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_good112_checked :
    goodSegmentCheck 103 34 72
      { lower := 11196, upper := 11211, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good113_checked :
    goodSegmentCheck 103 34 72
      { lower := 11236, upper := 11315, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good114_checked :
    goodSegmentCheck 103 34 72
      { lower := 11316, upper := 11352, witness := RowWitness.topPrime 11311 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good115_checked :
    goodSegmentCheck 103 34 72
      { lower := 11774, upper := 11845, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good116_checked :
    goodSegmentCheck 103 34 72
      { lower := 11846, upper := 11869, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good117_checked :
    goodSegmentCheck 103 34 72
      { lower := 11875, upper := 11876, witness := RowWitness.topPrime 11867 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good118_checked :
    goodSegmentCheck 103 34 72
      { lower := 12005, upper := 12081, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good119_checked :
    goodSegmentCheck 103 34 72
      { lower := 12321, upper := 12390, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good120_checked :
    goodSegmentCheck 103 34 72
      { lower := 12393, upper := 12423, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good121_checked :
    goodSegmentCheck 103 34 72
      { lower := 12482, upper := 12581, witness := RowWitness.topPrime 12479 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good122_checked :
    goodSegmentCheck 103 34 72
      { lower := 12582, upper := 12595, witness := RowWitness.topPrime 12577 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good123_checked :
    goodSegmentCheck 103 34 72
      { lower := 13125, upper := 13223, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good124_checked :
    goodSegmentCheck 103 34 72
      { lower := 13224, upper := 13227, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good125_checked :
    goodSegmentCheck 103 34 72
      { lower := 13254, upper := 13284, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good126_checked :
    goodSegmentCheck 103 34 72
      { lower := 13310, upper := 13411, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good127_checked :
    goodSegmentCheck 103 34 72
      { lower := 13412, upper := 13412, witness := RowWitness.topPrime 13411 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_good128_checked :
    goodSegmentCheck 103 34 72
      { lower := 13454, upper := 13553, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good129_checked :
    goodSegmentCheck 103 34 72
      { lower := 13554, upper := 13558, witness := RowWitness.topPrime 13553 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good130_checked :
    goodSegmentCheck 103 34 72
      { lower := 13718, upper := 13813, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good131_checked :
    goodSegmentCheck 103 34 72
      { lower := 13814, upper := 13820, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good132_checked :
    goodSegmentCheck 103 34 72
      { lower := 13851, upper := 13880, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good133_checked :
    goodSegmentCheck 103 34 72
      { lower := 13924, upper := 13953, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good134_checked :
    goodSegmentCheck 103 34 72
      { lower := 14336, upper := 14399, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good135_checked :
    goodSegmentCheck 103 34 72
      { lower := 14406, upper := 14503, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good136_checked :
    goodSegmentCheck 103 34 72
      { lower := 14504, upper := 14508, witness := RowWitness.topPrime 14503 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good137_checked :
    goodSegmentCheck 103 34 72
      { lower := 14641, upper := 14682, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good138_checked :
    goodSegmentCheck 103 34 72
      { lower := 14739, upper := 14743, witness := RowWitness.topPrime 14737 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good139_checked :
    goodSegmentCheck 103 34 72
      { lower := 14792, upper := 14841, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good140_checked :
    goodSegmentCheck 103 34 72
      { lower := 14884, upper := 14894, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good141_checked :
    goodSegmentCheck 103 34 72
      { lower := 15123, upper := 15223, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good142_checked :
    goodSegmentCheck 103 34 72
      { lower := 15224, upper := 15231, witness := RowWitness.topPrime 15217 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good143_checked :
    goodSegmentCheck 103 34 72
      { lower := 15360, upper := 15461, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_good144_checked :
    goodSegmentCheck 103 34 72
      { lower := 15462, upper := 15481, witness := RowWitness.topPrime 15461 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good145_checked :
    goodSegmentCheck 103 34 72
      { lower := 15979, upper := 16075, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good146_checked :
    goodSegmentCheck 103 34 72
      { lower := 16076, upper := 16081, witness := RowWitness.topPrime 16073 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good147_checked :
    goodSegmentCheck 103 34 72
      { lower := 16384, upper := 16483, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good148_checked :
    goodSegmentCheck 103 34 72
      { lower := 16484, upper := 16486, witness := RowWitness.topPrime 16481 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good149_checked :
    goodSegmentCheck 103 34 72
      { lower := 16810, upper := 16889, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good150_checked :
    goodSegmentCheck 103 34 72
      { lower := 16890, upper := 16922, witness := RowWitness.topPrime 16889 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good151_checked :
    goodSegmentCheck 103 34 72
      { lower := 17303, upper := 17400, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good152_checked :
    goodSegmentCheck 103 34 72
      { lower := 17405, upper := 17405, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good153_checked :
    goodSegmentCheck 103 34 72
      { lower := 17408, upper := 17503, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good154_checked :
    goodSegmentCheck 103 34 72
      { lower := 17504, upper := 17510, witness := RowWitness.topPrime 17497 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good155_checked :
    goodSegmentCheck 103 34 72
      { lower := 17576, upper := 17598, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good156_checked :
    goodSegmentCheck 103 34 72
      { lower := 17661, upper := 17761, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good157_checked :
    goodSegmentCheck 103 34 72
      { lower := 17762, upper := 17763, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good158_checked :
    goodSegmentCheck 103 34 72
      { lower := 18490, upper := 18583, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good159_checked :
    goodSegmentCheck 103 34 72
      { lower := 18584, upper := 18592, witness := RowWitness.topPrime 18583 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_good160_checked :
    goodSegmentCheck 103 34 72
      { lower := 18634, upper := 18707, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good161_checked :
    goodSegmentCheck 103 34 72
      { lower := 18723, upper := 18736, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good162_checked :
    goodSegmentCheck 103 34 72
      { lower := 18750, upper := 18851, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good163_checked :
    goodSegmentCheck 103 34 72
      { lower := 18852, upper := 18852, witness := RowWitness.topPrime 18839 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good164_checked :
    goodSegmentCheck 103 34 72
      { lower := 19208, upper := 19309, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good165_checked :
    goodSegmentCheck 103 34 72
      { lower := 19310, upper := 19310, witness := RowWitness.topPrime 19309 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good166_checked :
    goodSegmentCheck 103 34 72
      { lower := 19663, upper := 19763, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good167_checked :
    goodSegmentCheck 103 34 72
      { lower := 19764, upper := 19765, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good168_checked :
    goodSegmentCheck 103 34 72
      { lower := 19773, upper := 19785, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good169_checked :
    goodSegmentCheck 103 34 72
      { lower := 19965, upper := 19983, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good170_checked :
    goodSegmentCheck 103 34 72
      { lower := 20172, upper := 20263, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good171_checked :
    goodSegmentCheck 103 34 72
      { lower := 20264, upper := 20274, witness := RowWitness.topPrime 20261 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good172_checked :
    goodSegmentCheck 103 34 72
      { lower := 20402, upper := 20441, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good173_checked :
    goodSegmentCheck 103 34 72
      { lower := 20480, upper := 20504, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good174_checked :
    goodSegmentCheck 103 34 72
      { lower := 20535, upper := 20635, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good175_checked :
    goodSegmentCheck 103 34 72
      { lower := 20636, upper := 20637, witness := RowWitness.topPrime 20627 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_good176_checked :
    goodSegmentCheck 103 34 72
      { lower := 20667, upper := 20679, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good177_checked :
    goodSegmentCheck 103 34 72
      { lower := 21316, upper := 21398, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good178_checked :
    goodSegmentCheck 103 34 72
      { lower := 21870, upper := 21965, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good179_checked :
    goodSegmentCheck 103 34 72
      { lower := 21966, upper := 22006, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good180_checked :
    goodSegmentCheck 103 34 72
      { lower := 22188, upper := 22192, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good181_checked :
    goodSegmentCheck 103 34 72
      { lower := 22472, upper := 22571, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good182_checked :
    goodSegmentCheck 103 34 72
      { lower := 22572, upper := 22574, witness := RowWitness.topPrime 22571 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good183_checked :
    goodSegmentCheck 103 34 72
      { lower := 22627, upper := 22630, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good184_checked :
    goodSegmentCheck 103 34 72
      { lower := 24037, upper := 24131, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good185_checked :
    goodSegmentCheck 103 34 72
      { lower := 24132, upper := 24139, witness := RowWitness.topPrime 24121 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good186_checked :
    goodSegmentCheck 103 34 72
      { lower := 24334, upper := 24431, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good187_checked :
    goodSegmentCheck 103 34 72
      { lower := 24432, upper := 24469, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good188_checked :
    goodSegmentCheck 103 34 72
      { lower := 24576, upper := 24667, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good189_checked :
    goodSegmentCheck 103 34 72
      { lower := 25000, upper := 25066, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good190_checked :
    goodSegmentCheck 103 34 72
      { lower := 25215, upper := 25291, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good191_checked :
    goodSegmentCheck 103 34 72
      { lower := 25292, upper := 25317, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_good192_checked :
    goodSegmentCheck 103 34 72
      { lower := 26411, upper := 26466, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good193_checked :
    goodSegmentCheck 103 34 72
      { lower := 26508, upper := 26513, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good194_checked :
    goodSegmentCheck 103 34 72
      { lower := 26645, upper := 26726, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good195_checked :
    goodSegmentCheck 103 34 72
      { lower := 26934, upper := 26998, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good196_checked :
    goodSegmentCheck 103 34 72
      { lower := 28125, upper := 28192, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good197_checked :
    goodSegmentCheck 103 34 72
      { lower := 28227, upper := 28227, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good198_checked :
    goodSegmentCheck 103 34 72
      { lower := 28577, upper := 28663, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good199_checked :
    goodSegmentCheck 103 34 72
      { lower := 28672, upper := 28679, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good200_checked :
    goodSegmentCheck 103 34 72
      { lower := 28717, upper := 28774, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good201_checked :
    goodSegmentCheck 103 34 72
      { lower := 28812, upper := 28819, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good202_checked :
    goodSegmentCheck 103 34 72
      { lower := 29791, upper := 29870, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good203_checked :
    goodSegmentCheck 103 34 72
      { lower := 30618, upper := 30695, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good204_checked :
    goodSegmentCheck 103 34 72
      { lower := 30696, upper := 30705, witness := RowWitness.topPrime 30689 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good205_checked :
    goodSegmentCheck 103 34 72
      { lower := 30720, upper := 30720, witness := RowWitness.topPrime 30713 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good206_checked :
    goodSegmentCheck 103 34 72
      { lower := 30758, upper := 30822, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good207_checked :
    goodSegmentCheck 103 34 72
      { lower := 30926, upper := 31001, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_good208_checked :
    goodSegmentCheck 103 34 72
      { lower := 31213, upper := 31295, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good209_checked :
    goodSegmentCheck 103 34 72
      { lower := 31296, upper := 31315, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good210_checked :
    goodSegmentCheck 103 34 72
      { lower := 31329, upper := 31352, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good211_checked :
    goodSegmentCheck 103 34 72
      { lower := 31423, upper := 31431, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good212_checked :
    goodSegmentCheck 103 34 72
      { lower := 31433, upper := 31499, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good213_checked :
    goodSegmentCheck 103 34 72
      { lower := 31500, upper := 31525, witness := RowWitness.topPrime 31489 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good214_checked :
    goodSegmentCheck 103 34 72
      { lower := 32805, upper := 32870, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good215_checked :
    goodSegmentCheck 103 34 72
      { lower := 33708, upper := 33716, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good216_checked :
    goodSegmentCheck 103 34 72
      { lower := 34375, upper := 34471, witness := RowWitness.topPrime 34369 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good217_checked :
    goodSegmentCheck 103 34 72
      { lower := 34472, upper := 34493, witness := RowWitness.topPrime 34471 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good218_checked :
    goodSegmentCheck 103 34 72
      { lower := 34816, upper := 34909, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good219_checked :
    goodSegmentCheck 103 34 72
      { lower := 34910, upper := 34912, witness := RowWitness.topPrime 34897 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good220_checked :
    goodSegmentCheck 103 34 72
      { lower := 35344, upper := 35389, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good221_checked :
    goodSegmentCheck 103 34 72
      { lower := 36517, upper := 36599, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good222_checked :
    goodSegmentCheck 103 34 72
      { lower := 36600, upper := 36603, witness := RowWitness.topPrime 36599 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good223_checked :
    goodSegmentCheck 103 34 72
      { lower := 37210, upper := 37281, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_good224_checked :
    goodSegmentCheck 103 34 72
      { lower := 37303, upper := 37312, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good225_checked :
    goodSegmentCheck 103 34 72
      { lower := 37349, upper := 37405, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good226_checked :
    goodSegmentCheck 103 34 72
      { lower := 37446, upper := 37451, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good227_checked :
    goodSegmentCheck 103 34 72
      { lower := 37500, upper := 37548, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good228_checked :
    goodSegmentCheck 103 34 72
      { lower := 37553, upper := 37602, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good229_checked :
    goodSegmentCheck 103 34 72
      { lower := 37636, upper := 37655, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good230_checked :
    goodSegmentCheck 103 34 72
      { lower := 39326, upper := 39425, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good231_checked :
    goodSegmentCheck 103 34 72
      { lower := 39426, upper := 39428, witness := RowWitness.topPrime 39419 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good232_checked :
    goodSegmentCheck 103 34 72
      { lower := 40401, upper := 40430, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good233_checked :
    goodSegmentCheck 103 34 72
      { lower := 40817, upper := 40906, witness := RowWitness.topPrime 40813 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good234_checked :
    goodSegmentCheck 103 34 72
      { lower := 40960, upper := 41033, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good235_checked :
    goodSegmentCheck 103 34 72
      { lower := 43750, upper := 43789, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good236_checked :
    goodSegmentCheck 103 34 72
      { lower := 48013, upper := 48063, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good237_checked :
    goodSegmentCheck 103 34 72
      { lower := 48734, upper := 48770, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good238_checked :
    goodSegmentCheck 103 34 72
      { lower := 48778, upper := 48836, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row103_good239_checked :
    goodSegmentCheck 103 34 72
      { lower := 49152, upper := 49232, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 103) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_good239_checked
