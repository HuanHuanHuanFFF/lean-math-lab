import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row081_height : HeightCertificateDatum := { i := 81, r := 26, s := 56, n0Power10 := 11 }

def row081_goods : List GoodSegment := [
  { lower := 164, upper := 243, witness := RowWitness.topPrime 163 },
  { lower := 244, upper := 321, witness := RowWitness.topPrime 241 },
  { lower := 322, upper := 397, witness := RowWitness.topPrime 317 },
  { lower := 398, upper := 477, witness := RowWitness.topPrime 397 },
  { lower := 478, upper := 547, witness := RowWitness.topPrime 467 },
  { lower := 548, upper := 627, witness := RowWitness.topPrime 547 },
  { lower := 628, upper := 699, witness := RowWitness.topPrime 619 },
  { lower := 700, upper := 771, witness := RowWitness.topPrime 691 },
  { lower := 772, upper := 849, witness := RowWitness.topPrime 769 },
  { lower := 850, upper := 919, witness := RowWitness.topPrime 839 },
  { lower := 920, upper := 999, witness := RowWitness.topPrime 919 },
  { lower := 1000, upper := 1077, witness := RowWitness.topPrime 997 },
  { lower := 1078, upper := 1149, witness := RowWitness.topPrime 1069 },
  { lower := 1150, upper := 1209, witness := RowWitness.topPrime 1129 },
  { lower := 1210, upper := 1281, witness := RowWitness.topPrime 1201 },
  { lower := 1282, upper := 1359, witness := RowWitness.topPrime 1279 },
  { lower := 1360, upper := 1407, witness := RowWitness.topPrime 1327 },
  { lower := 1408, upper := 1479, witness := RowWitness.topPrime 1399 },
  { lower := 1480, upper := 1551, witness := RowWitness.topPrime 1471 },
  { lower := 1552, upper := 1629, witness := RowWitness.topPrime 1549 },
  { lower := 1630, upper := 1707, witness := RowWitness.topPrime 1627 },
  { lower := 1708, upper := 1779, witness := RowWitness.topPrime 1699 },
  { lower := 1780, upper := 1857, witness := RowWitness.topPrime 1777 },
  { lower := 1858, upper := 1927, witness := RowWitness.topPrime 1847 },
  { lower := 1928, upper := 1993, witness := RowWitness.topPrime 1913 },
  { lower := 1994, upper := 2073, witness := RowWitness.topPrime 1993 },
  { lower := 2074, upper := 2149, witness := RowWitness.topPrime 2069 },
  { lower := 2150, upper := 2223, witness := RowWitness.topPrime 2143 },
  { lower := 2224, upper := 2301, witness := RowWitness.topPrime 2221 },
  { lower := 2302, upper := 2377, witness := RowWitness.topPrime 2297 },
  { lower := 2378, upper := 2457, witness := RowWitness.topPrime 2377 },
  { lower := 2458, upper := 2527, witness := RowWitness.topPrime 2447 },
  { lower := 2528, upper := 2601, witness := RowWitness.topPrime 2521 },
  { lower := 2602, upper := 2673, witness := RowWitness.topPrime 2593 },
  { lower := 2674, upper := 2751, witness := RowWitness.topPrime 2671 },
  { lower := 2752, upper := 2829, witness := RowWitness.topPrime 2749 },
  { lower := 2830, upper := 2899, witness := RowWitness.topPrime 2819 },
  { lower := 2900, upper := 2977, witness := RowWitness.topPrime 2897 },
  { lower := 2978, upper := 3051, witness := RowWitness.topPrime 2971 },
  { lower := 3052, upper := 3129, witness := RowWitness.topPrime 3049 },
  { lower := 3130, upper := 3201, witness := RowWitness.topPrime 3121 },
  { lower := 3202, upper := 3271, witness := RowWitness.topPrime 3191 },
  { lower := 3272, upper := 3351, witness := RowWitness.topPrime 3271 },
  { lower := 3352, upper := 3427, witness := RowWitness.topPrime 3347 },
  { lower := 3428, upper := 3493, witness := RowWitness.topPrime 3413 },
  { lower := 3494, upper := 3571, witness := RowWitness.topPrime 3491 },
  { lower := 3572, upper := 3651, witness := RowWitness.topPrime 3571 },
  { lower := 3652, upper := 3723, witness := RowWitness.topPrime 3643 },
  { lower := 3724, upper := 3799, witness := RowWitness.topPrime 3719 },
  { lower := 3800, upper := 3877, witness := RowWitness.topPrime 3797 },
  { lower := 3878, upper := 3957, witness := RowWitness.topPrime 3877 },
  { lower := 3958, upper := 4027, witness := RowWitness.topPrime 3947 },
  { lower := 4028, upper := 4107, witness := RowWitness.topPrime 4027 },
  { lower := 4108, upper := 4179, witness := RowWitness.topPrime 4099 },
  { lower := 4180, upper := 4257, witness := RowWitness.topPrime 4177 },
  { lower := 4258, upper := 4333, witness := RowWitness.topPrime 4253 },
  { lower := 4334, upper := 4407, witness := RowWitness.topPrime 4327 },
  { lower := 4408, upper := 4477, witness := RowWitness.topPrime 4397 },
  { lower := 4478, upper := 4543, witness := RowWitness.topPrime 4463 },
  { lower := 4544, upper := 4603, witness := RowWitness.topPrime 4523 },
  { lower := 4604, upper := 4683, witness := RowWitness.topPrime 4603 },
  { lower := 4684, upper := 4759, witness := RowWitness.topPrime 4679 },
  { lower := 4760, upper := 4839, witness := RowWitness.topPrime 4759 },
  { lower := 4840, upper := 4911, witness := RowWitness.topPrime 4831 },
  { lower := 4912, upper := 4989, witness := RowWitness.topPrime 4909 },
  { lower := 4990, upper := 5067, witness := RowWitness.topPrime 4987 },
  { lower := 5068, upper := 5139, witness := RowWitness.topPrime 5059 },
  { lower := 5140, upper := 5199, witness := RowWitness.topPrime 5119 },
  { lower := 5200, upper := 5277, witness := RowWitness.topPrime 5197 },
  { lower := 5278, upper := 5353, witness := RowWitness.topPrime 5273 },
  { lower := 5354, upper := 5431, witness := RowWitness.topPrime 5351 },
  { lower := 5432, upper := 5511, witness := RowWitness.topPrime 5431 },
  { lower := 5512, upper := 5587, witness := RowWitness.topPrime 5507 },
  { lower := 5588, upper := 5661, witness := RowWitness.topPrime 5581 },
  { lower := 5662, upper := 5739, witness := RowWitness.topPrime 5659 },
  { lower := 5740, upper := 5817, witness := RowWitness.topPrime 5737 },
  { lower := 5818, upper := 5893, witness := RowWitness.topPrime 5813 },
  { lower := 5894, upper := 5961, witness := RowWitness.topPrime 5881 },
  { lower := 5962, upper := 6033, witness := RowWitness.topPrime 5953 },
  { lower := 6034, upper := 6109, witness := RowWitness.topPrime 6029 },
  { lower := 6110, upper := 6181, witness := RowWitness.topPrime 6101 },
  { lower := 6182, upper := 6253, witness := RowWitness.topPrime 6173 },
  { lower := 6254, upper := 6327, witness := RowWitness.topPrime 6247 },
  { lower := 6328, upper := 6403, witness := RowWitness.topPrime 6323 },
  { lower := 6404, upper := 6477, witness := RowWitness.topPrime 6397 },
  { lower := 6478, upper := 6479, witness := RowWitness.topPrime 6473 },
  { lower := 6517, upper := 6571, witness := RowWitness.topPrime 6491 },
  { lower := 6572, upper := 6578, witness := RowWitness.topPrime 6571 },
  { lower := 6591, upper := 6597, witness := RowWitness.topPrime 6581 },
  { lower := 6627, upper := 6699, witness := RowWitness.topPrime 6619 },
  { lower := 6700, upper := 6771, witness := RowWitness.topPrime 6691 },
  { lower := 6772, upper := 6807, witness := RowWitness.topPrime 6763 },
  { lower := 6859, upper := 6937, witness := RowWitness.topPrime 6857 },
  { lower := 6938, upper := 6997, witness := RowWitness.topPrime 6917 },
  { lower := 6998, upper := 7016, witness := RowWitness.topPrime 6997 },
  { lower := 7203, upper := 7273, witness := RowWitness.topPrime 7193 },
  { lower := 7274, upper := 7300, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7473, witness := RowWitness.topPrime 7393 },
  { lower := 7474, upper := 7539, witness := RowWitness.topPrime 7459 },
  { lower := 7540, upper := 7617, witness := RowWitness.topPrime 7537 },
  { lower := 7618, upper := 7649, witness := RowWitness.topPrime 7607 },
  { lower := 7688, upper := 7760, witness := RowWitness.topPrime 7687 },
  { lower := 7935, upper := 8013, witness := RowWitness.topPrime 7933 },
  { lower := 8014, upper := 8022, witness := RowWitness.topPrime 8011 },
  { lower := 8125, upper := 8172, witness := RowWitness.topPrime 8123 },
  { lower := 8192, upper := 8205, witness := RowWitness.topPrime 8191 },
  { lower := 8214, upper := 8289, witness := RowWitness.topPrime 8209 },
  { lower := 8290, upper := 8294, witness := RowWitness.topPrime 8287 },
  { lower := 8303, upper := 8312, witness := RowWitness.topPrime 8297 },
  { lower := 8381, upper := 8383, witness := RowWitness.topPrime 8377 },
  { lower := 8405, upper := 8469, witness := RowWitness.topPrime 8389 },
  { lower := 8470, upper := 8507, witness := RowWitness.topPrime 8467 },
  { lower := 8649, upper := 8655, witness := RowWitness.topPrime 8647 },
  { lower := 8664, upper := 8743, witness := RowWitness.topPrime 8663 },
  { lower := 8744, upper := 8744, witness := RowWitness.topPrime 8741 },
  { lower := 8750, upper := 8784, witness := RowWitness.topPrime 8747 },
  { lower := 8788, upper := 8830, witness := RowWitness.topPrime 8783 },
  { lower := 8836, upper := 8868, witness := RowWitness.topPrime 8831 },
  { lower := 8978, upper := 9051, witness := RowWitness.topPrime 8971 },
  { lower := 9052, upper := 9073, witness := RowWitness.topPrime 9049 },
  { lower := 9245, upper := 9321, witness := RowWitness.topPrime 9241 },
  { lower := 9322, upper := 9341, witness := RowWitness.topPrime 9319 },
  { lower := 9375, upper := 9451, witness := RowWitness.topPrime 9371 },
  { lower := 9452, upper := 9455, witness := RowWitness.topPrime 9439 },
  { lower := 9583, upper := 9602, witness := RowWitness.topPrime 9551 },
  { lower := 9604, upper := 9681, witness := RowWitness.topPrime 9601 },
  { lower := 9682, upper := 9684, witness := RowWitness.topPrime 9679 },
  { lower := 9747, upper := 9808, witness := RowWitness.topPrime 9743 },
  { lower := 9826, upper := 9827, witness := RowWitness.topPrime 9817 },
  { lower := 10000, upper := 10027, witness := RowWitness.topPrime 9973 },
  { lower := 10051, upper := 10080, witness := RowWitness.topPrime 10039 },
  { lower := 10082, upper := 10159, witness := RowWitness.topPrime 10079 },
  { lower := 10160, upper := 10172, witness := RowWitness.topPrime 10159 },
  { lower := 10469, upper := 10523, witness := RowWitness.topPrime 10463 },
  { lower := 10580, upper := 10647, witness := RowWitness.topPrime 10567 },
  { lower := 10648, upper := 10719, witness := RowWitness.topPrime 10639 },
  { lower := 10720, upper := 10728, witness := RowWitness.topPrime 10711 },
  { lower := 10952, upper := 11029, witness := RowWitness.topPrime 10949 },
  { lower := 11030, upper := 11032, witness := RowWitness.topPrime 11027 },
  { lower := 11045, upper := 11065, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11173, witness := RowWitness.topPrime 11093 },
  { lower := 11174, upper := 11189, witness := RowWitness.topPrime 11173 },
  { lower := 11236, upper := 11243, witness := RowWitness.topPrime 11213 },
  { lower := 11250, upper := 11323, witness := RowWitness.topPrime 11243 },
  { lower := 11324, upper := 11330, witness := RowWitness.topPrime 11321 },
  { lower := 11774, upper := 11823, witness := RowWitness.topPrime 11743 },
  { lower := 11824, upper := 11854, witness := RowWitness.topPrime 11821 },
  { lower := 12005, upper := 12059, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12368, witness := RowWitness.topPrime 12301 },
  { lower := 12493, upper := 12571, witness := RowWitness.topPrime 12491 },
  { lower := 12572, upper := 12573, witness := RowWitness.topPrime 12569 },
  { lower := 13182, upper := 13205, witness := RowWitness.topPrime 13177 },
  { lower := 13225, upper := 13299, witness := RowWitness.topPrime 13219 },
  { lower := 13300, upper := 13305, witness := RowWitness.topPrime 13297 },
  { lower := 13310, upper := 13389, witness := RowWitness.topPrime 13309 },
  { lower := 13390, upper := 13390, witness := RowWitness.topPrime 13381 },
  { lower := 13454, upper := 13531, witness := RowWitness.topPrime 13451 },
  { lower := 13532, upper := 13536, witness := RowWitness.topPrime 13523 },
  { lower := 13718, upper := 13791, witness := RowWitness.topPrime 13711 },
  { lower := 13792, upper := 13798, witness := RowWitness.topPrime 13789 },
  { lower := 14336, upper := 14407, witness := RowWitness.topPrime 14327 },
  { lower := 14408, upper := 14486, witness := RowWitness.topPrime 14407 },
  { lower := 14792, upper := 14819, witness := RowWitness.topPrime 14783 },
  { lower := 15059, upper := 15080, witness := RowWitness.topPrime 15053 },
  { lower := 15123, upper := 15201, witness := RowWitness.topPrime 15121 },
  { lower := 15202, upper := 15209, witness := RowWitness.topPrime 15199 },
  { lower := 15376, upper := 15453, witness := RowWitness.topPrime 15373 },
  { lower := 15454, upper := 15456, witness := RowWitness.topPrime 15451 },
  { lower := 15979, upper := 16053, witness := RowWitness.topPrime 15973 },
  { lower := 16054, upper := 16059, witness := RowWitness.topPrime 16033 },
  { lower := 16384, upper := 16417, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16464, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16867, witness := RowWitness.topPrime 16787 },
  { lower := 16868, upper := 16900, witness := RowWitness.topPrime 16843 },
  { lower := 17303, upper := 17378, witness := RowWitness.topPrime 17299 },
  { lower := 17408, upper := 17481, witness := RowWitness.topPrime 17401 },
  { lower := 17482, upper := 17485, witness := RowWitness.topPrime 17477 },
  { lower := 17672, upper := 17741, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18561, witness := RowWitness.topPrime 18481 },
  { lower := 18562, upper := 18571, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18685, witness := RowWitness.topPrime 18617 },
  { lower := 18750, upper := 18803, witness := RowWitness.topPrime 18749 },
  { lower := 19208, upper := 19287, witness := RowWitness.topPrime 19207 },
  { lower := 19288, upper := 19288, witness := RowWitness.topPrime 19273 },
  { lower := 19663, upper := 19732, witness := RowWitness.topPrime 19661 },
  { lower := 20172, upper := 20241, witness := RowWitness.topPrime 20161 },
  { lower := 20242, upper := 20261, witness := RowWitness.topPrime 20233 },
  { lower := 20535, upper := 20560, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20615, witness := RowWitness.topPrime 20563 },
  { lower := 21316, upper := 21376, witness := RowWitness.topPrime 21313 },
  { lower := 21875, upper := 21951, witness := RowWitness.topPrime 21871 },
  { lower := 21952, upper := 21955, witness := RowWitness.topPrime 21943 },
  { lower := 21970, upper := 21984, witness := RowWitness.topPrime 21961 },
  { lower := 22103, upper := 22170, witness := RowWitness.topPrime 22093 },
  { lower := 22472, upper := 22525, witness := RowWitness.topPrime 22469 },
  { lower := 22528, upper := 22552, witness := RowWitness.topPrime 22511 },
  { lower := 23552, upper := 23614, witness := RowWitness.topPrime 23549 },
  { lower := 24010, upper := 24087, witness := RowWitness.topPrime 24007 },
  { lower := 24088, upper := 24105, witness := RowWitness.topPrime 24083 },
  { lower := 24334, upper := 24409, witness := RowWitness.topPrime 24329 },
  { lower := 24410, upper := 24447, witness := RowWitness.topPrime 24407 },
  { lower := 24576, upper := 24651, witness := RowWitness.topPrime 24571 },
  { lower := 24652, upper := 24656, witness := RowWitness.topPrime 24631 },
  { lower := 25000, upper := 25044, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25269, witness := RowWitness.topPrime 25189 },
  { lower := 25270, upper := 25341, witness := RowWitness.topPrime 25261 },
  { lower := 25342, upper := 25361, witness := RowWitness.topPrime 25339 },
  { lower := 26047, upper := 26091, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26444, witness := RowWitness.topPrime 26407 },
  { lower := 26624, upper := 26677, witness := RowWitness.topPrime 26597 },
  { lower := 26678, upper := 26704, witness := RowWitness.topPrime 26669 },
  { lower := 26934, upper := 26976, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27460, witness := RowWitness.topPrime 27431 },
  { lower := 28125, upper := 28170, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28641, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28791, witness := RowWitness.topPrime 28711 },
  { lower := 28792, upper := 28797, witness := RowWitness.topPrime 28789 },
  { lower := 28812, upper := 28829, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29848, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30326, witness := RowWitness.topPrime 30253 },
  { lower := 30758, upper := 30800, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30979, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31273, witness := RowWitness.topPrime 31193 },
  { lower := 31274, upper := 31293, witness := RowWitness.topPrime 31271 },
  { lower := 31329, upper := 31330, witness := RowWitness.topPrime 31327 },
  { lower := 31433, upper := 31477, witness := RowWitness.topPrime 31397 },
  { lower := 31478, upper := 31503, witness := RowWitness.topPrime 31477 },
  { lower := 31974, upper := 32019, witness := RowWitness.topPrime 31973 },
  { lower := 33620, upper := 33694, witness := RowWitness.topPrime 33619 },
  { lower := 34375, upper := 34375, witness := RowWitness.topPrime 34369 },
  { lower := 34391, upper := 34455, witness := RowWitness.topPrime 34381 },
  { lower := 34816, upper := 34887, witness := RowWitness.topPrime 34807 },
  { lower := 34888, upper := 34890, witness := RowWitness.topPrime 34883 },
  { lower := 35152, upper := 35211, witness := RowWitness.topPrime 35149 },
  { lower := 35301, upper := 35371, witness := RowWitness.topPrime 35291 },
  { lower := 35372, upper := 35381, witness := RowWitness.topPrime 35363 },
  { lower := 36517, upper := 36577, witness := RowWitness.topPrime 36497 },
  { lower := 36578, upper := 36581, witness := RowWitness.topPrime 36571 },
  { lower := 36982, upper := 37059, witness := RowWitness.topPrime 36979 },
  { lower := 37060, upper := 37060, witness := RowWitness.topPrime 37057 },
  { lower := 37349, upper := 37383, witness := RowWitness.topPrime 37339 },
  { lower := 37500, upper := 37526, witness := RowWitness.topPrime 37493 },
  { lower := 37553, upper := 37580, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39384, witness := RowWitness.topPrime 39323 },
  { lower := 40401, upper := 40408, witness := RowWitness.topPrime 40387 },
  { lower := 40678, upper := 40705, witness := RowWitness.topPrime 40639 },
  { lower := 40960, upper := 41011, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41823, witness := RowWitness.topPrime 41771 },
  { lower := 43750, upper := 43767, witness := RowWitness.topPrime 43721 },
  { lower := 43940, upper := 44003, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44260, witness := RowWitness.topPrime 44207 },
  { lower := 44944, upper := 44970, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48061, witness := RowWitness.topPrime 47981 },
  { lower := 48062, upper := 48093, witness := RowWitness.topPrime 48049 },
  { lower := 48373, upper := 48414, witness := RowWitness.topPrime 48371 },
  { lower := 48668, upper := 48678, witness := RowWitness.topPrime 48661 },
  { lower := 48734, upper := 48748, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48814, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49210, witness := RowWitness.topPrime 49139 },
  { lower := 50000, upper := 50008, witness := RowWitness.topPrime 49999 },
  { lower := 50421, upper := 50490, witness := RowWitness.topPrime 50417 },
  { lower := 53290, upper := 53328, witness := RowWitness.topPrime 53281 },
  { lower := 58619, upper := 58644, witness := RowWitness.topPrime 58613 },
  { lower := 59582, upper := 59616, witness := RowWitness.topPrime 59581 },
  { lower := 63948, upper := 63949, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65601, witness := RowWitness.topPrime 65521 },
  { lower := 65602, upper := 65613, witness := RowWitness.topPrime 65599 },
  { lower := 68651, upper := 68670, witness := RowWitness.topPrime 68639 },
  { lower := 73205, upper := 73247, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73775, witness := RowWitness.topPrime 73727 },
  { lower := 85291, upper := 85339, witness := RowWitness.topPrime 85259 },
  { lower := 85340, upper := 85344, witness := RowWitness.topPrime 85333 },
  { lower := 85697, upper := 85763, witness := RowWitness.topPrime 85691 },
  { lower := 101306, upper := 101331, witness := RowWitness.topPrime 101293 },
  { lower := 146410, upper := 146414, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 148957, witness := RowWitness.topPrime 148949 },
  { lower := 327701, upper := 327760, witness := RowWitness.topPrime 327689 }
]

def row081_layers : List CoverLayer := [
  { lower := 6480, upper := 12960, M := 29 },
  { lower := 12960, upper := 25920, M := 25 },
  { lower := 25920, upper := 51840, M := 22 },
  { lower := 51840, upper := 103680, M := 19 },
  { lower := 103680, upper := 207360, M := 16 },
  { lower := 207360, upper := 414720, M := 14 },
  { lower := 414720, upper := 829440, M := 12 },
  { lower := 829440, upper := 1658880, M := 10 },
  { lower := 1658880, upper := 3317760, M := 9 },
  { lower := 3317760, upper := 6635520, M := 8 },
  { lower := 6635520, upper := 13271040, M := 7 },
  { lower := 13271040, upper := 26542080, M := 6 },
  { lower := 26542080, upper := 53084160, M := 5 },
  { lower := 53084160, upper := 106168320, M := 4 },
  { lower := 106168320, upper := 212336640, M := 4 },
  { lower := 212336640, upper := 424673280, M := 3 },
  { lower := 424673280, upper := 849346560, M := 3 },
  { lower := 849346560, upper := 1698693120, M := 3 },
  { lower := 1698693120, upper := 3397386240, M := 2 },
  { lower := 3397386240, upper := 6794772480, M := 2 },
  { lower := 6794772480, upper := 13589544960, M := 2 },
  { lower := 13589544960, upper := 27179089920, M := 2 },
  { lower := 27179089920, upper := 54358179840, M := 2 },
  { lower := 54358179840, upper := 100000000000, M := 1 }
]

def row081 : FiniteCoverRow := {
  height := row081_height,
  goods := row081_goods,
  layers := row081_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_good000_checked :
    goodSegmentCheck 81 26 56
      { lower := 164, upper := 243, witness := RowWitness.topPrime 163 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good001_checked :
    goodSegmentCheck 81 26 56
      { lower := 244, upper := 321, witness := RowWitness.topPrime 241 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good002_checked :
    goodSegmentCheck 81 26 56
      { lower := 322, upper := 397, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good003_checked :
    goodSegmentCheck 81 26 56
      { lower := 398, upper := 477, witness := RowWitness.topPrime 397 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good004_checked :
    goodSegmentCheck 81 26 56
      { lower := 478, upper := 547, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good005_checked :
    goodSegmentCheck 81 26 56
      { lower := 548, upper := 627, witness := RowWitness.topPrime 547 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good006_checked :
    goodSegmentCheck 81 26 56
      { lower := 628, upper := 699, witness := RowWitness.topPrime 619 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good007_checked :
    goodSegmentCheck 81 26 56
      { lower := 700, upper := 771, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good008_checked :
    goodSegmentCheck 81 26 56
      { lower := 772, upper := 849, witness := RowWitness.topPrime 769 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good009_checked :
    goodSegmentCheck 81 26 56
      { lower := 850, upper := 919, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good010_checked :
    goodSegmentCheck 81 26 56
      { lower := 920, upper := 999, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good011_checked :
    goodSegmentCheck 81 26 56
      { lower := 1000, upper := 1077, witness := RowWitness.topPrime 997 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good012_checked :
    goodSegmentCheck 81 26 56
      { lower := 1078, upper := 1149, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good013_checked :
    goodSegmentCheck 81 26 56
      { lower := 1150, upper := 1209, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good014_checked :
    goodSegmentCheck 81 26 56
      { lower := 1210, upper := 1281, witness := RowWitness.topPrime 1201 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good015_checked :
    goodSegmentCheck 81 26 56
      { lower := 1282, upper := 1359, witness := RowWitness.topPrime 1279 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_good016_checked :
    goodSegmentCheck 81 26 56
      { lower := 1360, upper := 1407, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good017_checked :
    goodSegmentCheck 81 26 56
      { lower := 1408, upper := 1479, witness := RowWitness.topPrime 1399 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good018_checked :
    goodSegmentCheck 81 26 56
      { lower := 1480, upper := 1551, witness := RowWitness.topPrime 1471 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good019_checked :
    goodSegmentCheck 81 26 56
      { lower := 1552, upper := 1629, witness := RowWitness.topPrime 1549 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good020_checked :
    goodSegmentCheck 81 26 56
      { lower := 1630, upper := 1707, witness := RowWitness.topPrime 1627 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good021_checked :
    goodSegmentCheck 81 26 56
      { lower := 1708, upper := 1779, witness := RowWitness.topPrime 1699 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good022_checked :
    goodSegmentCheck 81 26 56
      { lower := 1780, upper := 1857, witness := RowWitness.topPrime 1777 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good023_checked :
    goodSegmentCheck 81 26 56
      { lower := 1858, upper := 1927, witness := RowWitness.topPrime 1847 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good024_checked :
    goodSegmentCheck 81 26 56
      { lower := 1928, upper := 1993, witness := RowWitness.topPrime 1913 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good025_checked :
    goodSegmentCheck 81 26 56
      { lower := 1994, upper := 2073, witness := RowWitness.topPrime 1993 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good026_checked :
    goodSegmentCheck 81 26 56
      { lower := 2074, upper := 2149, witness := RowWitness.topPrime 2069 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good027_checked :
    goodSegmentCheck 81 26 56
      { lower := 2150, upper := 2223, witness := RowWitness.topPrime 2143 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good028_checked :
    goodSegmentCheck 81 26 56
      { lower := 2224, upper := 2301, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good029_checked :
    goodSegmentCheck 81 26 56
      { lower := 2302, upper := 2377, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good030_checked :
    goodSegmentCheck 81 26 56
      { lower := 2378, upper := 2457, witness := RowWitness.topPrime 2377 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good031_checked :
    goodSegmentCheck 81 26 56
      { lower := 2458, upper := 2527, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_good032_checked :
    goodSegmentCheck 81 26 56
      { lower := 2528, upper := 2601, witness := RowWitness.topPrime 2521 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good033_checked :
    goodSegmentCheck 81 26 56
      { lower := 2602, upper := 2673, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good034_checked :
    goodSegmentCheck 81 26 56
      { lower := 2674, upper := 2751, witness := RowWitness.topPrime 2671 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good035_checked :
    goodSegmentCheck 81 26 56
      { lower := 2752, upper := 2829, witness := RowWitness.topPrime 2749 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good036_checked :
    goodSegmentCheck 81 26 56
      { lower := 2830, upper := 2899, witness := RowWitness.topPrime 2819 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good037_checked :
    goodSegmentCheck 81 26 56
      { lower := 2900, upper := 2977, witness := RowWitness.topPrime 2897 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good038_checked :
    goodSegmentCheck 81 26 56
      { lower := 2978, upper := 3051, witness := RowWitness.topPrime 2971 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good039_checked :
    goodSegmentCheck 81 26 56
      { lower := 3052, upper := 3129, witness := RowWitness.topPrime 3049 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good040_checked :
    goodSegmentCheck 81 26 56
      { lower := 3130, upper := 3201, witness := RowWitness.topPrime 3121 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good041_checked :
    goodSegmentCheck 81 26 56
      { lower := 3202, upper := 3271, witness := RowWitness.topPrime 3191 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good042_checked :
    goodSegmentCheck 81 26 56
      { lower := 3272, upper := 3351, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good043_checked :
    goodSegmentCheck 81 26 56
      { lower := 3352, upper := 3427, witness := RowWitness.topPrime 3347 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good044_checked :
    goodSegmentCheck 81 26 56
      { lower := 3428, upper := 3493, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good045_checked :
    goodSegmentCheck 81 26 56
      { lower := 3494, upper := 3571, witness := RowWitness.topPrime 3491 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good046_checked :
    goodSegmentCheck 81 26 56
      { lower := 3572, upper := 3651, witness := RowWitness.topPrime 3571 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good047_checked :
    goodSegmentCheck 81 26 56
      { lower := 3652, upper := 3723, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_good048_checked :
    goodSegmentCheck 81 26 56
      { lower := 3724, upper := 3799, witness := RowWitness.topPrime 3719 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good049_checked :
    goodSegmentCheck 81 26 56
      { lower := 3800, upper := 3877, witness := RowWitness.topPrime 3797 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good050_checked :
    goodSegmentCheck 81 26 56
      { lower := 3878, upper := 3957, witness := RowWitness.topPrime 3877 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good051_checked :
    goodSegmentCheck 81 26 56
      { lower := 3958, upper := 4027, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good052_checked :
    goodSegmentCheck 81 26 56
      { lower := 4028, upper := 4107, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good053_checked :
    goodSegmentCheck 81 26 56
      { lower := 4108, upper := 4179, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good054_checked :
    goodSegmentCheck 81 26 56
      { lower := 4180, upper := 4257, witness := RowWitness.topPrime 4177 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good055_checked :
    goodSegmentCheck 81 26 56
      { lower := 4258, upper := 4333, witness := RowWitness.topPrime 4253 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good056_checked :
    goodSegmentCheck 81 26 56
      { lower := 4334, upper := 4407, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good057_checked :
    goodSegmentCheck 81 26 56
      { lower := 4408, upper := 4477, witness := RowWitness.topPrime 4397 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good058_checked :
    goodSegmentCheck 81 26 56
      { lower := 4478, upper := 4543, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good059_checked :
    goodSegmentCheck 81 26 56
      { lower := 4544, upper := 4603, witness := RowWitness.topPrime 4523 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good060_checked :
    goodSegmentCheck 81 26 56
      { lower := 4604, upper := 4683, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good061_checked :
    goodSegmentCheck 81 26 56
      { lower := 4684, upper := 4759, witness := RowWitness.topPrime 4679 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good062_checked :
    goodSegmentCheck 81 26 56
      { lower := 4760, upper := 4839, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good063_checked :
    goodSegmentCheck 81 26 56
      { lower := 4840, upper := 4911, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_good064_checked :
    goodSegmentCheck 81 26 56
      { lower := 4912, upper := 4989, witness := RowWitness.topPrime 4909 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good065_checked :
    goodSegmentCheck 81 26 56
      { lower := 4990, upper := 5067, witness := RowWitness.topPrime 4987 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good066_checked :
    goodSegmentCheck 81 26 56
      { lower := 5068, upper := 5139, witness := RowWitness.topPrime 5059 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good067_checked :
    goodSegmentCheck 81 26 56
      { lower := 5140, upper := 5199, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good068_checked :
    goodSegmentCheck 81 26 56
      { lower := 5200, upper := 5277, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good069_checked :
    goodSegmentCheck 81 26 56
      { lower := 5278, upper := 5353, witness := RowWitness.topPrime 5273 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good070_checked :
    goodSegmentCheck 81 26 56
      { lower := 5354, upper := 5431, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good071_checked :
    goodSegmentCheck 81 26 56
      { lower := 5432, upper := 5511, witness := RowWitness.topPrime 5431 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good072_checked :
    goodSegmentCheck 81 26 56
      { lower := 5512, upper := 5587, witness := RowWitness.topPrime 5507 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good073_checked :
    goodSegmentCheck 81 26 56
      { lower := 5588, upper := 5661, witness := RowWitness.topPrime 5581 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good074_checked :
    goodSegmentCheck 81 26 56
      { lower := 5662, upper := 5739, witness := RowWitness.topPrime 5659 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good075_checked :
    goodSegmentCheck 81 26 56
      { lower := 5740, upper := 5817, witness := RowWitness.topPrime 5737 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good076_checked :
    goodSegmentCheck 81 26 56
      { lower := 5818, upper := 5893, witness := RowWitness.topPrime 5813 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good077_checked :
    goodSegmentCheck 81 26 56
      { lower := 5894, upper := 5961, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good078_checked :
    goodSegmentCheck 81 26 56
      { lower := 5962, upper := 6033, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good079_checked :
    goodSegmentCheck 81 26 56
      { lower := 6034, upper := 6109, witness := RowWitness.topPrime 6029 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_good080_checked :
    goodSegmentCheck 81 26 56
      { lower := 6110, upper := 6181, witness := RowWitness.topPrime 6101 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good081_checked :
    goodSegmentCheck 81 26 56
      { lower := 6182, upper := 6253, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good082_checked :
    goodSegmentCheck 81 26 56
      { lower := 6254, upper := 6327, witness := RowWitness.topPrime 6247 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good083_checked :
    goodSegmentCheck 81 26 56
      { lower := 6328, upper := 6403, witness := RowWitness.topPrime 6323 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good084_checked :
    goodSegmentCheck 81 26 56
      { lower := 6404, upper := 6477, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good085_checked :
    goodSegmentCheck 81 26 56
      { lower := 6478, upper := 6479, witness := RowWitness.topPrime 6473 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good086_checked :
    goodSegmentCheck 81 26 56
      { lower := 6517, upper := 6571, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good087_checked :
    goodSegmentCheck 81 26 56
      { lower := 6572, upper := 6578, witness := RowWitness.topPrime 6571 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good088_checked :
    goodSegmentCheck 81 26 56
      { lower := 6591, upper := 6597, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good089_checked :
    goodSegmentCheck 81 26 56
      { lower := 6627, upper := 6699, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good090_checked :
    goodSegmentCheck 81 26 56
      { lower := 6700, upper := 6771, witness := RowWitness.topPrime 6691 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good091_checked :
    goodSegmentCheck 81 26 56
      { lower := 6772, upper := 6807, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good092_checked :
    goodSegmentCheck 81 26 56
      { lower := 6859, upper := 6937, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good093_checked :
    goodSegmentCheck 81 26 56
      { lower := 6938, upper := 6997, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good094_checked :
    goodSegmentCheck 81 26 56
      { lower := 6998, upper := 7016, witness := RowWitness.topPrime 6997 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good095_checked :
    goodSegmentCheck 81 26 56
      { lower := 7203, upper := 7273, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_good096_checked :
    goodSegmentCheck 81 26 56
      { lower := 7274, upper := 7300, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good097_checked :
    goodSegmentCheck 81 26 56
      { lower := 7406, upper := 7473, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good098_checked :
    goodSegmentCheck 81 26 56
      { lower := 7474, upper := 7539, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good099_checked :
    goodSegmentCheck 81 26 56
      { lower := 7540, upper := 7617, witness := RowWitness.topPrime 7537 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good100_checked :
    goodSegmentCheck 81 26 56
      { lower := 7618, upper := 7649, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good101_checked :
    goodSegmentCheck 81 26 56
      { lower := 7688, upper := 7760, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good102_checked :
    goodSegmentCheck 81 26 56
      { lower := 7935, upper := 8013, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good103_checked :
    goodSegmentCheck 81 26 56
      { lower := 8014, upper := 8022, witness := RowWitness.topPrime 8011 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good104_checked :
    goodSegmentCheck 81 26 56
      { lower := 8125, upper := 8172, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good105_checked :
    goodSegmentCheck 81 26 56
      { lower := 8192, upper := 8205, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good106_checked :
    goodSegmentCheck 81 26 56
      { lower := 8214, upper := 8289, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good107_checked :
    goodSegmentCheck 81 26 56
      { lower := 8290, upper := 8294, witness := RowWitness.topPrime 8287 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good108_checked :
    goodSegmentCheck 81 26 56
      { lower := 8303, upper := 8312, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good109_checked :
    goodSegmentCheck 81 26 56
      { lower := 8381, upper := 8383, witness := RowWitness.topPrime 8377 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good110_checked :
    goodSegmentCheck 81 26 56
      { lower := 8405, upper := 8469, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good111_checked :
    goodSegmentCheck 81 26 56
      { lower := 8470, upper := 8507, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_good112_checked :
    goodSegmentCheck 81 26 56
      { lower := 8649, upper := 8655, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good113_checked :
    goodSegmentCheck 81 26 56
      { lower := 8664, upper := 8743, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good114_checked :
    goodSegmentCheck 81 26 56
      { lower := 8744, upper := 8744, witness := RowWitness.topPrime 8741 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good115_checked :
    goodSegmentCheck 81 26 56
      { lower := 8750, upper := 8784, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good116_checked :
    goodSegmentCheck 81 26 56
      { lower := 8788, upper := 8830, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good117_checked :
    goodSegmentCheck 81 26 56
      { lower := 8836, upper := 8868, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good118_checked :
    goodSegmentCheck 81 26 56
      { lower := 8978, upper := 9051, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good119_checked :
    goodSegmentCheck 81 26 56
      { lower := 9052, upper := 9073, witness := RowWitness.topPrime 9049 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good120_checked :
    goodSegmentCheck 81 26 56
      { lower := 9245, upper := 9321, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good121_checked :
    goodSegmentCheck 81 26 56
      { lower := 9322, upper := 9341, witness := RowWitness.topPrime 9319 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good122_checked :
    goodSegmentCheck 81 26 56
      { lower := 9375, upper := 9451, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good123_checked :
    goodSegmentCheck 81 26 56
      { lower := 9452, upper := 9455, witness := RowWitness.topPrime 9439 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good124_checked :
    goodSegmentCheck 81 26 56
      { lower := 9583, upper := 9602, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good125_checked :
    goodSegmentCheck 81 26 56
      { lower := 9604, upper := 9681, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good126_checked :
    goodSegmentCheck 81 26 56
      { lower := 9682, upper := 9684, witness := RowWitness.topPrime 9679 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good127_checked :
    goodSegmentCheck 81 26 56
      { lower := 9747, upper := 9808, witness := RowWitness.topPrime 9743 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_good128_checked :
    goodSegmentCheck 81 26 56
      { lower := 9826, upper := 9827, witness := RowWitness.topPrime 9817 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good129_checked :
    goodSegmentCheck 81 26 56
      { lower := 10000, upper := 10027, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good130_checked :
    goodSegmentCheck 81 26 56
      { lower := 10051, upper := 10080, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good131_checked :
    goodSegmentCheck 81 26 56
      { lower := 10082, upper := 10159, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good132_checked :
    goodSegmentCheck 81 26 56
      { lower := 10160, upper := 10172, witness := RowWitness.topPrime 10159 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good133_checked :
    goodSegmentCheck 81 26 56
      { lower := 10469, upper := 10523, witness := RowWitness.topPrime 10463 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good134_checked :
    goodSegmentCheck 81 26 56
      { lower := 10580, upper := 10647, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good135_checked :
    goodSegmentCheck 81 26 56
      { lower := 10648, upper := 10719, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good136_checked :
    goodSegmentCheck 81 26 56
      { lower := 10720, upper := 10728, witness := RowWitness.topPrime 10711 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good137_checked :
    goodSegmentCheck 81 26 56
      { lower := 10952, upper := 11029, witness := RowWitness.topPrime 10949 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good138_checked :
    goodSegmentCheck 81 26 56
      { lower := 11030, upper := 11032, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good139_checked :
    goodSegmentCheck 81 26 56
      { lower := 11045, upper := 11065, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good140_checked :
    goodSegmentCheck 81 26 56
      { lower := 11094, upper := 11173, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good141_checked :
    goodSegmentCheck 81 26 56
      { lower := 11174, upper := 11189, witness := RowWitness.topPrime 11173 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good142_checked :
    goodSegmentCheck 81 26 56
      { lower := 11236, upper := 11243, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good143_checked :
    goodSegmentCheck 81 26 56
      { lower := 11250, upper := 11323, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_good144_checked :
    goodSegmentCheck 81 26 56
      { lower := 11324, upper := 11330, witness := RowWitness.topPrime 11321 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good145_checked :
    goodSegmentCheck 81 26 56
      { lower := 11774, upper := 11823, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good146_checked :
    goodSegmentCheck 81 26 56
      { lower := 11824, upper := 11854, witness := RowWitness.topPrime 11821 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good147_checked :
    goodSegmentCheck 81 26 56
      { lower := 12005, upper := 12059, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good148_checked :
    goodSegmentCheck 81 26 56
      { lower := 12321, upper := 12368, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good149_checked :
    goodSegmentCheck 81 26 56
      { lower := 12493, upper := 12571, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good150_checked :
    goodSegmentCheck 81 26 56
      { lower := 12572, upper := 12573, witness := RowWitness.topPrime 12569 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good151_checked :
    goodSegmentCheck 81 26 56
      { lower := 13182, upper := 13205, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good152_checked :
    goodSegmentCheck 81 26 56
      { lower := 13225, upper := 13299, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good153_checked :
    goodSegmentCheck 81 26 56
      { lower := 13300, upper := 13305, witness := RowWitness.topPrime 13297 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good154_checked :
    goodSegmentCheck 81 26 56
      { lower := 13310, upper := 13389, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good155_checked :
    goodSegmentCheck 81 26 56
      { lower := 13390, upper := 13390, witness := RowWitness.topPrime 13381 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good156_checked :
    goodSegmentCheck 81 26 56
      { lower := 13454, upper := 13531, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good157_checked :
    goodSegmentCheck 81 26 56
      { lower := 13532, upper := 13536, witness := RowWitness.topPrime 13523 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good158_checked :
    goodSegmentCheck 81 26 56
      { lower := 13718, upper := 13791, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good159_checked :
    goodSegmentCheck 81 26 56
      { lower := 13792, upper := 13798, witness := RowWitness.topPrime 13789 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_good160_checked :
    goodSegmentCheck 81 26 56
      { lower := 14336, upper := 14407, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good161_checked :
    goodSegmentCheck 81 26 56
      { lower := 14408, upper := 14486, witness := RowWitness.topPrime 14407 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good162_checked :
    goodSegmentCheck 81 26 56
      { lower := 14792, upper := 14819, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good163_checked :
    goodSegmentCheck 81 26 56
      { lower := 15059, upper := 15080, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good164_checked :
    goodSegmentCheck 81 26 56
      { lower := 15123, upper := 15201, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good165_checked :
    goodSegmentCheck 81 26 56
      { lower := 15202, upper := 15209, witness := RowWitness.topPrime 15199 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good166_checked :
    goodSegmentCheck 81 26 56
      { lower := 15376, upper := 15453, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good167_checked :
    goodSegmentCheck 81 26 56
      { lower := 15454, upper := 15456, witness := RowWitness.topPrime 15451 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good168_checked :
    goodSegmentCheck 81 26 56
      { lower := 15979, upper := 16053, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good169_checked :
    goodSegmentCheck 81 26 56
      { lower := 16054, upper := 16059, witness := RowWitness.topPrime 16033 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good170_checked :
    goodSegmentCheck 81 26 56
      { lower := 16384, upper := 16417, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good171_checked :
    goodSegmentCheck 81 26 56
      { lower := 16428, upper := 16464, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good172_checked :
    goodSegmentCheck 81 26 56
      { lower := 16810, upper := 16867, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good173_checked :
    goodSegmentCheck 81 26 56
      { lower := 16868, upper := 16900, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good174_checked :
    goodSegmentCheck 81 26 56
      { lower := 17303, upper := 17378, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good175_checked :
    goodSegmentCheck 81 26 56
      { lower := 17408, upper := 17481, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_good176_checked :
    goodSegmentCheck 81 26 56
      { lower := 17482, upper := 17485, witness := RowWitness.topPrime 17477 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good177_checked :
    goodSegmentCheck 81 26 56
      { lower := 17672, upper := 17741, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good178_checked :
    goodSegmentCheck 81 26 56
      { lower := 18490, upper := 18561, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good179_checked :
    goodSegmentCheck 81 26 56
      { lower := 18562, upper := 18571, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good180_checked :
    goodSegmentCheck 81 26 56
      { lower := 18634, upper := 18685, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good181_checked :
    goodSegmentCheck 81 26 56
      { lower := 18750, upper := 18803, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good182_checked :
    goodSegmentCheck 81 26 56
      { lower := 19208, upper := 19287, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good183_checked :
    goodSegmentCheck 81 26 56
      { lower := 19288, upper := 19288, witness := RowWitness.topPrime 19273 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good184_checked :
    goodSegmentCheck 81 26 56
      { lower := 19663, upper := 19732, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good185_checked :
    goodSegmentCheck 81 26 56
      { lower := 20172, upper := 20241, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good186_checked :
    goodSegmentCheck 81 26 56
      { lower := 20242, upper := 20261, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good187_checked :
    goodSegmentCheck 81 26 56
      { lower := 20535, upper := 20560, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good188_checked :
    goodSegmentCheck 81 26 56
      { lower := 20577, upper := 20615, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good189_checked :
    goodSegmentCheck 81 26 56
      { lower := 21316, upper := 21376, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good190_checked :
    goodSegmentCheck 81 26 56
      { lower := 21875, upper := 21951, witness := RowWitness.topPrime 21871 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good191_checked :
    goodSegmentCheck 81 26 56
      { lower := 21952, upper := 21955, witness := RowWitness.topPrime 21943 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_good192_checked :
    goodSegmentCheck 81 26 56
      { lower := 21970, upper := 21984, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good193_checked :
    goodSegmentCheck 81 26 56
      { lower := 22103, upper := 22170, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good194_checked :
    goodSegmentCheck 81 26 56
      { lower := 22472, upper := 22525, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good195_checked :
    goodSegmentCheck 81 26 56
      { lower := 22528, upper := 22552, witness := RowWitness.topPrime 22511 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good196_checked :
    goodSegmentCheck 81 26 56
      { lower := 23552, upper := 23614, witness := RowWitness.topPrime 23549 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good197_checked :
    goodSegmentCheck 81 26 56
      { lower := 24010, upper := 24087, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good198_checked :
    goodSegmentCheck 81 26 56
      { lower := 24088, upper := 24105, witness := RowWitness.topPrime 24083 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good199_checked :
    goodSegmentCheck 81 26 56
      { lower := 24334, upper := 24409, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good200_checked :
    goodSegmentCheck 81 26 56
      { lower := 24410, upper := 24447, witness := RowWitness.topPrime 24407 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good201_checked :
    goodSegmentCheck 81 26 56
      { lower := 24576, upper := 24651, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good202_checked :
    goodSegmentCheck 81 26 56
      { lower := 24652, upper := 24656, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good203_checked :
    goodSegmentCheck 81 26 56
      { lower := 25000, upper := 25044, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good204_checked :
    goodSegmentCheck 81 26 56
      { lower := 25215, upper := 25269, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good205_checked :
    goodSegmentCheck 81 26 56
      { lower := 25270, upper := 25341, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good206_checked :
    goodSegmentCheck 81 26 56
      { lower := 25342, upper := 25361, witness := RowWitness.topPrime 25339 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good207_checked :
    goodSegmentCheck 81 26 56
      { lower := 26047, upper := 26091, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_good208_checked :
    goodSegmentCheck 81 26 56
      { lower := 26411, upper := 26444, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good209_checked :
    goodSegmentCheck 81 26 56
      { lower := 26624, upper := 26677, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good210_checked :
    goodSegmentCheck 81 26 56
      { lower := 26678, upper := 26704, witness := RowWitness.topPrime 26669 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good211_checked :
    goodSegmentCheck 81 26 56
      { lower := 26934, upper := 26976, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good212_checked :
    goodSegmentCheck 81 26 56
      { lower := 27436, upper := 27460, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good213_checked :
    goodSegmentCheck 81 26 56
      { lower := 28125, upper := 28170, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good214_checked :
    goodSegmentCheck 81 26 56
      { lower := 28577, upper := 28641, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good215_checked :
    goodSegmentCheck 81 26 56
      { lower := 28717, upper := 28791, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good216_checked :
    goodSegmentCheck 81 26 56
      { lower := 28792, upper := 28797, witness := RowWitness.topPrime 28789 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good217_checked :
    goodSegmentCheck 81 26 56
      { lower := 28812, upper := 28829, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good218_checked :
    goodSegmentCheck 81 26 56
      { lower := 29791, upper := 29848, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good219_checked :
    goodSegmentCheck 81 26 56
      { lower := 30258, upper := 30326, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good220_checked :
    goodSegmentCheck 81 26 56
      { lower := 30758, upper := 30800, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good221_checked :
    goodSegmentCheck 81 26 56
      { lower := 30926, upper := 30979, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good222_checked :
    goodSegmentCheck 81 26 56
      { lower := 31213, upper := 31273, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good223_checked :
    goodSegmentCheck 81 26 56
      { lower := 31274, upper := 31293, witness := RowWitness.topPrime 31271 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_good224_checked :
    goodSegmentCheck 81 26 56
      { lower := 31329, upper := 31330, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good225_checked :
    goodSegmentCheck 81 26 56
      { lower := 31433, upper := 31477, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good226_checked :
    goodSegmentCheck 81 26 56
      { lower := 31478, upper := 31503, witness := RowWitness.topPrime 31477 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good227_checked :
    goodSegmentCheck 81 26 56
      { lower := 31974, upper := 32019, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good228_checked :
    goodSegmentCheck 81 26 56
      { lower := 33620, upper := 33694, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good229_checked :
    goodSegmentCheck 81 26 56
      { lower := 34375, upper := 34375, witness := RowWitness.topPrime 34369 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good230_checked :
    goodSegmentCheck 81 26 56
      { lower := 34391, upper := 34455, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good231_checked :
    goodSegmentCheck 81 26 56
      { lower := 34816, upper := 34887, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good232_checked :
    goodSegmentCheck 81 26 56
      { lower := 34888, upper := 34890, witness := RowWitness.topPrime 34883 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good233_checked :
    goodSegmentCheck 81 26 56
      { lower := 35152, upper := 35211, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good234_checked :
    goodSegmentCheck 81 26 56
      { lower := 35301, upper := 35371, witness := RowWitness.topPrime 35291 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good235_checked :
    goodSegmentCheck 81 26 56
      { lower := 35372, upper := 35381, witness := RowWitness.topPrime 35363 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good236_checked :
    goodSegmentCheck 81 26 56
      { lower := 36517, upper := 36577, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good237_checked :
    goodSegmentCheck 81 26 56
      { lower := 36578, upper := 36581, witness := RowWitness.topPrime 36571 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good238_checked :
    goodSegmentCheck 81 26 56
      { lower := 36982, upper := 37059, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row081_good239_checked :
    goodSegmentCheck 81 26 56
      { lower := 37060, upper := 37060, witness := RowWitness.topPrime 37057 } = true := by
  exact good_top_prime_checked (i := 81) (r := 26) (s := 56) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_good239_checked
