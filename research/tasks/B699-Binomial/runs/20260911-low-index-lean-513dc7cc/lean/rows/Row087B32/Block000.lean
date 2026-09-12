import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row087_height : HeightCertificateDatum := { i := 87, r := 28, s := 60, n0Power10 := 10 }

def row087_goods : List GoodSegment := [
  { lower := 176, upper := 259, witness := RowWitness.topPrime 173 },
  { lower := 260, upper := 343, witness := RowWitness.topPrime 257 },
  { lower := 344, upper := 423, witness := RowWitness.topPrime 337 },
  { lower := 424, upper := 507, witness := RowWitness.topPrime 421 },
  { lower := 508, upper := 589, witness := RowWitness.topPrime 503 },
  { lower := 590, upper := 673, witness := RowWitness.topPrime 587 },
  { lower := 674, upper := 759, witness := RowWitness.topPrime 673 },
  { lower := 760, upper := 843, witness := RowWitness.topPrime 757 },
  { lower := 844, upper := 925, witness := RowWitness.topPrime 839 },
  { lower := 926, upper := 1005, witness := RowWitness.topPrime 919 },
  { lower := 1006, upper := 1083, witness := RowWitness.topPrime 997 },
  { lower := 1084, upper := 1155, witness := RowWitness.topPrime 1069 },
  { lower := 1156, upper := 1239, witness := RowWitness.topPrime 1153 },
  { lower := 1240, upper := 1323, witness := RowWitness.topPrime 1237 },
  { lower := 1324, upper := 1407, witness := RowWitness.topPrime 1321 },
  { lower := 1408, upper := 1485, witness := RowWitness.topPrime 1399 },
  { lower := 1486, upper := 1569, witness := RowWitness.topPrime 1483 },
  { lower := 1570, upper := 1653, witness := RowWitness.topPrime 1567 },
  { lower := 1654, upper := 1723, witness := RowWitness.topPrime 1637 },
  { lower := 1724, upper := 1809, witness := RowWitness.topPrime 1723 },
  { lower := 1810, upper := 1887, witness := RowWitness.topPrime 1801 },
  { lower := 1888, upper := 1965, witness := RowWitness.topPrime 1879 },
  { lower := 1966, upper := 2037, witness := RowWitness.topPrime 1951 },
  { lower := 2038, upper := 2115, witness := RowWitness.topPrime 2029 },
  { lower := 2116, upper := 2199, witness := RowWitness.topPrime 2113 },
  { lower := 2200, upper := 2265, witness := RowWitness.topPrime 2179 },
  { lower := 2266, upper := 2337, witness := RowWitness.topPrime 2251 },
  { lower := 2338, upper := 2419, witness := RowWitness.topPrime 2333 },
  { lower := 2420, upper := 2503, witness := RowWitness.topPrime 2417 },
  { lower := 2504, upper := 2589, witness := RowWitness.topPrime 2503 },
  { lower := 2590, upper := 2665, witness := RowWitness.topPrime 2579 },
  { lower := 2666, upper := 2749, witness := RowWitness.topPrime 2663 },
  { lower := 2750, upper := 2835, witness := RowWitness.topPrime 2749 },
  { lower := 2836, upper := 2919, witness := RowWitness.topPrime 2833 },
  { lower := 2920, upper := 3003, witness := RowWitness.topPrime 2917 },
  { lower := 3004, upper := 3087, witness := RowWitness.topPrime 3001 },
  { lower := 3088, upper := 3169, witness := RowWitness.topPrime 3083 },
  { lower := 3170, upper := 3255, witness := RowWitness.topPrime 3169 },
  { lower := 3256, upper := 3339, witness := RowWitness.topPrime 3253 },
  { lower := 3340, upper := 3417, witness := RowWitness.topPrime 3331 },
  { lower := 3418, upper := 3499, witness := RowWitness.topPrime 3413 },
  { lower := 3500, upper := 3585, witness := RowWitness.topPrime 3499 },
  { lower := 3586, upper := 3669, witness := RowWitness.topPrime 3583 },
  { lower := 3670, upper := 3745, witness := RowWitness.topPrime 3659 },
  { lower := 3746, upper := 3825, witness := RowWitness.topPrime 3739 },
  { lower := 3826, upper := 3909, witness := RowWitness.topPrime 3823 },
  { lower := 3910, upper := 3993, witness := RowWitness.topPrime 3907 },
  { lower := 3994, upper := 4075, witness := RowWitness.topPrime 3989 },
  { lower := 4076, upper := 4159, witness := RowWitness.topPrime 4073 },
  { lower := 4160, upper := 4245, witness := RowWitness.topPrime 4159 },
  { lower := 4246, upper := 4329, witness := RowWitness.topPrime 4243 },
  { lower := 4330, upper := 4413, witness := RowWitness.topPrime 4327 },
  { lower := 4414, upper := 4495, witness := RowWitness.topPrime 4409 },
  { lower := 4496, upper := 4579, witness := RowWitness.topPrime 4493 },
  { lower := 4580, upper := 4653, witness := RowWitness.topPrime 4567 },
  { lower := 4654, upper := 4737, witness := RowWitness.topPrime 4651 },
  { lower := 4738, upper := 4819, witness := RowWitness.topPrime 4733 },
  { lower := 4820, upper := 4903, witness := RowWitness.topPrime 4817 },
  { lower := 4904, upper := 4989, witness := RowWitness.topPrime 4903 },
  { lower := 4990, upper := 5073, witness := RowWitness.topPrime 4987 },
  { lower := 5074, upper := 5145, witness := RowWitness.topPrime 5059 },
  { lower := 5146, upper := 5205, witness := RowWitness.topPrime 5119 },
  { lower := 5206, upper := 5283, witness := RowWitness.topPrime 5197 },
  { lower := 5284, upper := 5367, witness := RowWitness.topPrime 5281 },
  { lower := 5368, upper := 5437, witness := RowWitness.topPrime 5351 },
  { lower := 5438, upper := 5523, witness := RowWitness.topPrime 5437 },
  { lower := 5524, upper := 5607, witness := RowWitness.topPrime 5521 },
  { lower := 5608, upper := 5677, witness := RowWitness.topPrime 5591 },
  { lower := 5678, upper := 5755, witness := RowWitness.topPrime 5669 },
  { lower := 5756, upper := 5835, witness := RowWitness.topPrime 5749 },
  { lower := 5836, upper := 5913, witness := RowWitness.topPrime 5827 },
  { lower := 5914, upper := 5989, witness := RowWitness.topPrime 5903 },
  { lower := 5990, upper := 6073, witness := RowWitness.topPrime 5987 },
  { lower := 6074, upper := 6159, witness := RowWitness.topPrime 6073 },
  { lower := 6160, upper := 6237, witness := RowWitness.topPrime 6151 },
  { lower := 6238, upper := 6315, witness := RowWitness.topPrime 6229 },
  { lower := 6316, upper := 6397, witness := RowWitness.topPrime 6311 },
  { lower := 6398, upper := 6483, witness := RowWitness.topPrime 6397 },
  { lower := 6484, upper := 6567, witness := RowWitness.topPrime 6481 },
  { lower := 6568, upper := 6649, witness := RowWitness.topPrime 6563 },
  { lower := 6650, upper := 6723, witness := RowWitness.topPrime 6637 },
  { lower := 6724, upper := 6805, witness := RowWitness.topPrime 6719 },
  { lower := 6806, upper := 6889, witness := RowWitness.topPrime 6803 },
  { lower := 6890, upper := 6969, witness := RowWitness.topPrime 6883 },
  { lower := 6970, upper := 7053, witness := RowWitness.topPrime 6967 },
  { lower := 7054, upper := 7129, witness := RowWitness.topPrime 7043 },
  { lower := 7130, upper := 7215, witness := RowWitness.topPrime 7129 },
  { lower := 7216, upper := 7299, witness := RowWitness.topPrime 7213 },
  { lower := 7300, upper := 7383, witness := RowWitness.topPrime 7297 },
  { lower := 7384, upper := 7455, witness := RowWitness.topPrime 7369 },
  { lower := 7456, upper := 7492, witness := RowWitness.topPrime 7451 },
  { lower := 7500, upper := 7585, witness := RowWitness.topPrime 7499 },
  { lower := 7586, upper := 7632, witness := RowWitness.topPrime 7583 },
  { lower := 7688, upper := 7766, witness := RowWitness.topPrime 7687 },
  { lower := 7935, upper := 8019, witness := RowWitness.topPrime 7933 },
  { lower := 8020, upper := 8028, witness := RowWitness.topPrime 8017 },
  { lower := 8192, upper := 8211, witness := RowWitness.topPrime 8191 },
  { lower := 8214, upper := 8295, witness := RowWitness.topPrime 8209 },
  { lower := 8296, upper := 8300, witness := RowWitness.topPrime 8293 },
  { lower := 8303, upper := 8318, witness := RowWitness.topPrime 8297 },
  { lower := 8427, upper := 8509, witness := RowWitness.topPrime 8423 },
  { lower := 8510, upper := 8513, witness := RowWitness.topPrime 8501 },
  { lower := 8649, upper := 8661, witness := RowWitness.topPrime 8647 },
  { lower := 8664, upper := 8749, witness := RowWitness.topPrime 8663 },
  { lower := 8750, upper := 8833, witness := RowWitness.topPrime 8747 },
  { lower := 8834, upper := 8874, witness := RowWitness.topPrime 8831 },
  { lower := 8918, upper := 8922, witness := RowWitness.topPrime 8893 },
  { lower := 8978, upper := 9057, witness := RowWitness.topPrime 8971 },
  { lower := 9058, upper := 9079, witness := RowWitness.topPrime 9049 },
  { lower := 9245, upper := 9302, witness := RowWitness.topPrime 9241 },
  { lower := 9317, upper := 9331, witness := RowWitness.topPrime 9311 },
  { lower := 9375, upper := 9457, witness := RowWitness.topPrime 9371 },
  { lower := 9458, upper := 9461, witness := RowWitness.topPrime 9439 },
  { lower := 9583, upper := 9637, witness := RowWitness.topPrime 9551 },
  { lower := 9638, upper := 9690, witness := RowWitness.topPrime 9631 },
  { lower := 10051, upper := 10125, witness := RowWitness.topPrime 10039 },
  { lower := 10126, upper := 10168, witness := RowWitness.topPrime 10111 },
  { lower := 10580, upper := 10653, witness := RowWitness.topPrime 10567 },
  { lower := 10654, upper := 10734, witness := RowWitness.topPrime 10651 },
  { lower := 10952, upper := 11035, witness := RowWitness.topPrime 10949 },
  { lower := 11036, upper := 11038, witness := RowWitness.topPrime 11027 },
  { lower := 11045, upper := 11071, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11179, witness := RowWitness.topPrime 11093 },
  { lower := 11180, upper := 11195, witness := RowWitness.topPrime 11177 },
  { lower := 11236, upper := 11299, witness := RowWitness.topPrime 11213 },
  { lower := 11300, upper := 11336, witness := RowWitness.topPrime 11299 },
  { lower := 11776, upper := 11829, witness := RowWitness.topPrime 11743 },
  { lower := 11830, upper := 11853, witness := RowWitness.topPrime 11827 },
  { lower := 12005, upper := 12065, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12374, witness := RowWitness.topPrime 12301 },
  { lower := 12493, upper := 12577, witness := RowWitness.topPrime 12491 },
  { lower := 12578, upper := 12579, witness := RowWitness.topPrime 12577 },
  { lower := 13125, upper := 13207, witness := RowWitness.topPrime 13121 },
  { lower := 13208, upper := 13211, witness := RowWitness.topPrime 13187 },
  { lower := 13225, upper := 13305, witness := RowWitness.topPrime 13219 },
  { lower := 13306, upper := 13383, witness := RowWitness.topPrime 13297 },
  { lower := 13384, upper := 13396, witness := RowWitness.topPrime 13381 },
  { lower := 13454, upper := 13537, witness := RowWitness.topPrime 13451 },
  { lower := 13538, upper := 13540, witness := RowWitness.topPrime 13537 },
  { lower := 13718, upper := 13797, witness := RowWitness.topPrime 13711 },
  { lower := 13798, upper := 13840, witness := RowWitness.topPrime 13789 },
  { lower := 14375, upper := 14455, witness := RowWitness.topPrime 14369 },
  { lower := 14456, upper := 14492, witness := RowWitness.topPrime 14449 },
  { lower := 14792, upper := 14825, witness := RowWitness.topPrime 14783 },
  { lower := 15123, upper := 15207, witness := RowWitness.topPrime 15121 },
  { lower := 15208, upper := 15209, witness := RowWitness.topPrime 15199 },
  { lower := 15360, upper := 15445, witness := RowWitness.topPrime 15359 },
  { lower := 15446, upper := 15465, witness := RowWitness.topPrime 15443 },
  { lower := 15987, upper := 16058, witness := RowWitness.topPrime 15973 },
  { lower := 16384, upper := 16423, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16470, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16873, witness := RowWitness.topPrime 16787 },
  { lower := 16874, upper := 16896, witness := RowWitness.topPrime 16871 },
  { lower := 17303, upper := 17384, witness := RowWitness.topPrime 17299 },
  { lower := 17408, upper := 17487, witness := RowWitness.topPrime 17401 },
  { lower := 17488, upper := 17491, witness := RowWitness.topPrime 17483 },
  { lower := 18490, upper := 18567, witness := RowWitness.topPrime 18481 },
  { lower := 18568, upper := 18576, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18691, witness := RowWitness.topPrime 18617 },
  { lower := 18750, upper := 18809, witness := RowWitness.topPrime 18749 },
  { lower := 19208, upper := 19293, witness := RowWitness.topPrime 19207 },
  { lower := 19294, upper := 19294, witness := RowWitness.topPrime 19289 },
  { lower := 19663, upper := 19747, witness := RowWitness.topPrime 19661 },
  { lower := 19748, upper := 19749, witness := RowWitness.topPrime 19739 },
  { lower := 19965, upper := 19967, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20247, witness := RowWitness.topPrime 20161 },
  { lower := 20248, upper := 20258, witness := RowWitness.topPrime 20233 },
  { lower := 20535, upper := 20566, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20621, witness := RowWitness.topPrime 20563 },
  { lower := 21316, upper := 21382, witness := RowWitness.topPrime 21313 },
  { lower := 21875, upper := 21957, witness := RowWitness.topPrime 21871 },
  { lower := 21958, upper := 21961, witness := RowWitness.topPrime 21943 },
  { lower := 21970, upper := 21990, witness := RowWitness.topPrime 21961 },
  { lower := 22472, upper := 22555, witness := RowWitness.topPrime 22469 },
  { lower := 22556, upper := 22558, witness := RowWitness.topPrime 22549 },
  { lower := 24010, upper := 24093, witness := RowWitness.topPrime 24007 },
  { lower := 24094, upper := 24096, witness := RowWitness.topPrime 24091 },
  { lower := 24334, upper := 24415, witness := RowWitness.topPrime 24329 },
  { lower := 24416, upper := 24420, witness := RowWitness.topPrime 24413 },
  { lower := 24576, upper := 24657, witness := RowWitness.topPrime 24571 },
  { lower := 24658, upper := 24662, witness := RowWitness.topPrime 24631 },
  { lower := 25000, upper := 25050, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25275, witness := RowWitness.topPrime 25189 },
  { lower := 25276, upper := 25347, witness := RowWitness.topPrime 25261 },
  { lower := 25348, upper := 25367, witness := RowWitness.topPrime 25343 },
  { lower := 26047, upper := 26097, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26450, witness := RowWitness.topPrime 26407 },
  { lower := 26624, upper := 26683, witness := RowWitness.topPrime 26597 },
  { lower := 26684, upper := 26710, witness := RowWitness.topPrime 26683 },
  { lower := 26934, upper := 26982, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27466, witness := RowWitness.topPrime 27431 },
  { lower := 28125, upper := 28176, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28647, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28797, witness := RowWitness.topPrime 28711 },
  { lower := 28798, upper := 28803, witness := RowWitness.topPrime 28793 },
  { lower := 28812, upper := 28835, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29854, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30332, witness := RowWitness.topPrime 30253 },
  { lower := 30758, upper := 30806, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30985, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31279, witness := RowWitness.topPrime 31193 },
  { lower := 31280, upper := 31299, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31336, witness := RowWitness.topPrime 31327 },
  { lower := 31433, upper := 31483, witness := RowWitness.topPrime 31397 },
  { lower := 31484, upper := 31509, witness := RowWitness.topPrime 31481 },
  { lower := 31974, upper := 32025, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32854, witness := RowWitness.topPrime 32803 },
  { lower := 34375, upper := 34381, witness := RowWitness.topPrime 34369 },
  { lower := 34391, upper := 34467, witness := RowWitness.topPrime 34381 },
  { lower := 34468, upper := 34477, witness := RowWitness.topPrime 34457 },
  { lower := 34816, upper := 34893, witness := RowWitness.topPrime 34807 },
  { lower := 34894, upper := 34896, witness := RowWitness.topPrime 34883 },
  { lower := 35152, upper := 35217, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35373, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36583, witness := RowWitness.topPrime 36497 },
  { lower := 36584, upper := 36587, witness := RowWitness.topPrime 36583 },
  { lower := 37349, upper := 37389, witness := RowWitness.topPrime 37339 },
  { lower := 37500, upper := 37532, witness := RowWitness.topPrime 37493 },
  { lower := 37553, upper := 37586, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39409, witness := RowWitness.topPrime 39323 },
  { lower := 39410, upper := 39412, witness := RowWitness.topPrime 39409 },
  { lower := 40401, upper := 40414, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41017, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41829, witness := RowWitness.topPrime 41771 },
  { lower := 43750, upper := 43773, witness := RowWitness.topPrime 43721 },
  { lower := 44944, upper := 44976, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48047, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48754, witness := RowWitness.topPrime 48733 },
  { lower := 49152, upper := 49216, witness := RowWitness.topPrime 49139 },
  { lower := 50000, upper := 50014, witness := RowWitness.topPrime 49999 },
  { lower := 50421, upper := 50496, witness := RowWitness.topPrime 50417 },
  { lower := 53290, upper := 53334, witness := RowWitness.topPrime 53281 },
  { lower := 53371, upper := 53376, witness := RowWitness.topPrime 53359 },
  { lower := 56250, upper := 56255, witness := RowWitness.topPrime 56249 },
  { lower := 58619, upper := 58650, witness := RowWitness.topPrime 58613 },
  { lower := 59582, upper := 59622, witness := RowWitness.topPrime 59581 },
  { lower := 63948, upper := 63955, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65607, witness := RowWitness.topPrime 65521 },
  { lower := 65608, upper := 65619, witness := RowWitness.topPrime 65599 },
  { lower := 68651, upper := 68676, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68976, witness := RowWitness.topPrime 68917 },
  { lower := 73728, upper := 73781, witness := RowWitness.topPrime 73727 },
  { lower := 148955, upper := 148963, witness := RowWitness.topPrime 148949 },
  { lower := 327701, upper := 327766, witness := RowWitness.topPrime 327689 }
]

def row087_layers : List CoverLayer := [
  { lower := 7482, upper := 14964, M := 26 },
  { lower := 14964, upper := 29928, M := 22 },
  { lower := 29928, upper := 59856, M := 19 },
  { lower := 59856, upper := 119712, M := 16 },
  { lower := 119712, upper := 239424, M := 13 },
  { lower := 239424, upper := 478848, M := 11 },
  { lower := 478848, upper := 957696, M := 9 },
  { lower := 957696, upper := 1915392, M := 8 },
  { lower := 1915392, upper := 3830784, M := 7 },
  { lower := 3830784, upper := 7661568, M := 6 },
  { lower := 7661568, upper := 15323136, M := 5 },
  { lower := 15323136, upper := 30646272, M := 4 },
  { lower := 30646272, upper := 61292544, M := 4 },
  { lower := 61292544, upper := 122585088, M := 3 },
  { lower := 122585088, upper := 245170176, M := 3 },
  { lower := 245170176, upper := 490340352, M := 2 },
  { lower := 490340352, upper := 980680704, M := 2 },
  { lower := 980680704, upper := 1961361408, M := 2 },
  { lower := 1961361408, upper := 3922722816, M := 2 },
  { lower := 3922722816, upper := 7845445632, M := 1 },
  { lower := 7845445632, upper := 10000000000, M := 1 }
]

def row087 : FiniteCoverRow := {
  height := row087_height,
  goods := row087_goods,
  layers := row087_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_good000_checked :
    goodSegmentCheck 87 28 60
      { lower := 176, upper := 259, witness := RowWitness.topPrime 173 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good001_checked :
    goodSegmentCheck 87 28 60
      { lower := 260, upper := 343, witness := RowWitness.topPrime 257 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good002_checked :
    goodSegmentCheck 87 28 60
      { lower := 344, upper := 423, witness := RowWitness.topPrime 337 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good003_checked :
    goodSegmentCheck 87 28 60
      { lower := 424, upper := 507, witness := RowWitness.topPrime 421 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good004_checked :
    goodSegmentCheck 87 28 60
      { lower := 508, upper := 589, witness := RowWitness.topPrime 503 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good005_checked :
    goodSegmentCheck 87 28 60
      { lower := 590, upper := 673, witness := RowWitness.topPrime 587 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good006_checked :
    goodSegmentCheck 87 28 60
      { lower := 674, upper := 759, witness := RowWitness.topPrime 673 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good007_checked :
    goodSegmentCheck 87 28 60
      { lower := 760, upper := 843, witness := RowWitness.topPrime 757 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good008_checked :
    goodSegmentCheck 87 28 60
      { lower := 844, upper := 925, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good009_checked :
    goodSegmentCheck 87 28 60
      { lower := 926, upper := 1005, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good010_checked :
    goodSegmentCheck 87 28 60
      { lower := 1006, upper := 1083, witness := RowWitness.topPrime 997 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good011_checked :
    goodSegmentCheck 87 28 60
      { lower := 1084, upper := 1155, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good012_checked :
    goodSegmentCheck 87 28 60
      { lower := 1156, upper := 1239, witness := RowWitness.topPrime 1153 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good013_checked :
    goodSegmentCheck 87 28 60
      { lower := 1240, upper := 1323, witness := RowWitness.topPrime 1237 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good014_checked :
    goodSegmentCheck 87 28 60
      { lower := 1324, upper := 1407, witness := RowWitness.topPrime 1321 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good015_checked :
    goodSegmentCheck 87 28 60
      { lower := 1408, upper := 1485, witness := RowWitness.topPrime 1399 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_good016_checked :
    goodSegmentCheck 87 28 60
      { lower := 1486, upper := 1569, witness := RowWitness.topPrime 1483 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good017_checked :
    goodSegmentCheck 87 28 60
      { lower := 1570, upper := 1653, witness := RowWitness.topPrime 1567 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good018_checked :
    goodSegmentCheck 87 28 60
      { lower := 1654, upper := 1723, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good019_checked :
    goodSegmentCheck 87 28 60
      { lower := 1724, upper := 1809, witness := RowWitness.topPrime 1723 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good020_checked :
    goodSegmentCheck 87 28 60
      { lower := 1810, upper := 1887, witness := RowWitness.topPrime 1801 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good021_checked :
    goodSegmentCheck 87 28 60
      { lower := 1888, upper := 1965, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good022_checked :
    goodSegmentCheck 87 28 60
      { lower := 1966, upper := 2037, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good023_checked :
    goodSegmentCheck 87 28 60
      { lower := 2038, upper := 2115, witness := RowWitness.topPrime 2029 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good024_checked :
    goodSegmentCheck 87 28 60
      { lower := 2116, upper := 2199, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good025_checked :
    goodSegmentCheck 87 28 60
      { lower := 2200, upper := 2265, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good026_checked :
    goodSegmentCheck 87 28 60
      { lower := 2266, upper := 2337, witness := RowWitness.topPrime 2251 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good027_checked :
    goodSegmentCheck 87 28 60
      { lower := 2338, upper := 2419, witness := RowWitness.topPrime 2333 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good028_checked :
    goodSegmentCheck 87 28 60
      { lower := 2420, upper := 2503, witness := RowWitness.topPrime 2417 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good029_checked :
    goodSegmentCheck 87 28 60
      { lower := 2504, upper := 2589, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good030_checked :
    goodSegmentCheck 87 28 60
      { lower := 2590, upper := 2665, witness := RowWitness.topPrime 2579 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good031_checked :
    goodSegmentCheck 87 28 60
      { lower := 2666, upper := 2749, witness := RowWitness.topPrime 2663 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_good032_checked :
    goodSegmentCheck 87 28 60
      { lower := 2750, upper := 2835, witness := RowWitness.topPrime 2749 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good033_checked :
    goodSegmentCheck 87 28 60
      { lower := 2836, upper := 2919, witness := RowWitness.topPrime 2833 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good034_checked :
    goodSegmentCheck 87 28 60
      { lower := 2920, upper := 3003, witness := RowWitness.topPrime 2917 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good035_checked :
    goodSegmentCheck 87 28 60
      { lower := 3004, upper := 3087, witness := RowWitness.topPrime 3001 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good036_checked :
    goodSegmentCheck 87 28 60
      { lower := 3088, upper := 3169, witness := RowWitness.topPrime 3083 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good037_checked :
    goodSegmentCheck 87 28 60
      { lower := 3170, upper := 3255, witness := RowWitness.topPrime 3169 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good038_checked :
    goodSegmentCheck 87 28 60
      { lower := 3256, upper := 3339, witness := RowWitness.topPrime 3253 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good039_checked :
    goodSegmentCheck 87 28 60
      { lower := 3340, upper := 3417, witness := RowWitness.topPrime 3331 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good040_checked :
    goodSegmentCheck 87 28 60
      { lower := 3418, upper := 3499, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good041_checked :
    goodSegmentCheck 87 28 60
      { lower := 3500, upper := 3585, witness := RowWitness.topPrime 3499 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good042_checked :
    goodSegmentCheck 87 28 60
      { lower := 3586, upper := 3669, witness := RowWitness.topPrime 3583 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good043_checked :
    goodSegmentCheck 87 28 60
      { lower := 3670, upper := 3745, witness := RowWitness.topPrime 3659 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good044_checked :
    goodSegmentCheck 87 28 60
      { lower := 3746, upper := 3825, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good045_checked :
    goodSegmentCheck 87 28 60
      { lower := 3826, upper := 3909, witness := RowWitness.topPrime 3823 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good046_checked :
    goodSegmentCheck 87 28 60
      { lower := 3910, upper := 3993, witness := RowWitness.topPrime 3907 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good047_checked :
    goodSegmentCheck 87 28 60
      { lower := 3994, upper := 4075, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_good048_checked :
    goodSegmentCheck 87 28 60
      { lower := 4076, upper := 4159, witness := RowWitness.topPrime 4073 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good049_checked :
    goodSegmentCheck 87 28 60
      { lower := 4160, upper := 4245, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good050_checked :
    goodSegmentCheck 87 28 60
      { lower := 4246, upper := 4329, witness := RowWitness.topPrime 4243 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good051_checked :
    goodSegmentCheck 87 28 60
      { lower := 4330, upper := 4413, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good052_checked :
    goodSegmentCheck 87 28 60
      { lower := 4414, upper := 4495, witness := RowWitness.topPrime 4409 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good053_checked :
    goodSegmentCheck 87 28 60
      { lower := 4496, upper := 4579, witness := RowWitness.topPrime 4493 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good054_checked :
    goodSegmentCheck 87 28 60
      { lower := 4580, upper := 4653, witness := RowWitness.topPrime 4567 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good055_checked :
    goodSegmentCheck 87 28 60
      { lower := 4654, upper := 4737, witness := RowWitness.topPrime 4651 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good056_checked :
    goodSegmentCheck 87 28 60
      { lower := 4738, upper := 4819, witness := RowWitness.topPrime 4733 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good057_checked :
    goodSegmentCheck 87 28 60
      { lower := 4820, upper := 4903, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good058_checked :
    goodSegmentCheck 87 28 60
      { lower := 4904, upper := 4989, witness := RowWitness.topPrime 4903 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good059_checked :
    goodSegmentCheck 87 28 60
      { lower := 4990, upper := 5073, witness := RowWitness.topPrime 4987 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good060_checked :
    goodSegmentCheck 87 28 60
      { lower := 5074, upper := 5145, witness := RowWitness.topPrime 5059 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good061_checked :
    goodSegmentCheck 87 28 60
      { lower := 5146, upper := 5205, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good062_checked :
    goodSegmentCheck 87 28 60
      { lower := 5206, upper := 5283, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good063_checked :
    goodSegmentCheck 87 28 60
      { lower := 5284, upper := 5367, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_good064_checked :
    goodSegmentCheck 87 28 60
      { lower := 5368, upper := 5437, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good065_checked :
    goodSegmentCheck 87 28 60
      { lower := 5438, upper := 5523, witness := RowWitness.topPrime 5437 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good066_checked :
    goodSegmentCheck 87 28 60
      { lower := 5524, upper := 5607, witness := RowWitness.topPrime 5521 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good067_checked :
    goodSegmentCheck 87 28 60
      { lower := 5608, upper := 5677, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good068_checked :
    goodSegmentCheck 87 28 60
      { lower := 5678, upper := 5755, witness := RowWitness.topPrime 5669 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good069_checked :
    goodSegmentCheck 87 28 60
      { lower := 5756, upper := 5835, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good070_checked :
    goodSegmentCheck 87 28 60
      { lower := 5836, upper := 5913, witness := RowWitness.topPrime 5827 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good071_checked :
    goodSegmentCheck 87 28 60
      { lower := 5914, upper := 5989, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good072_checked :
    goodSegmentCheck 87 28 60
      { lower := 5990, upper := 6073, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good073_checked :
    goodSegmentCheck 87 28 60
      { lower := 6074, upper := 6159, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good074_checked :
    goodSegmentCheck 87 28 60
      { lower := 6160, upper := 6237, witness := RowWitness.topPrime 6151 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good075_checked :
    goodSegmentCheck 87 28 60
      { lower := 6238, upper := 6315, witness := RowWitness.topPrime 6229 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good076_checked :
    goodSegmentCheck 87 28 60
      { lower := 6316, upper := 6397, witness := RowWitness.topPrime 6311 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good077_checked :
    goodSegmentCheck 87 28 60
      { lower := 6398, upper := 6483, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good078_checked :
    goodSegmentCheck 87 28 60
      { lower := 6484, upper := 6567, witness := RowWitness.topPrime 6481 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good079_checked :
    goodSegmentCheck 87 28 60
      { lower := 6568, upper := 6649, witness := RowWitness.topPrime 6563 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_good080_checked :
    goodSegmentCheck 87 28 60
      { lower := 6650, upper := 6723, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good081_checked :
    goodSegmentCheck 87 28 60
      { lower := 6724, upper := 6805, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good082_checked :
    goodSegmentCheck 87 28 60
      { lower := 6806, upper := 6889, witness := RowWitness.topPrime 6803 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good083_checked :
    goodSegmentCheck 87 28 60
      { lower := 6890, upper := 6969, witness := RowWitness.topPrime 6883 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good084_checked :
    goodSegmentCheck 87 28 60
      { lower := 6970, upper := 7053, witness := RowWitness.topPrime 6967 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good085_checked :
    goodSegmentCheck 87 28 60
      { lower := 7054, upper := 7129, witness := RowWitness.topPrime 7043 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good086_checked :
    goodSegmentCheck 87 28 60
      { lower := 7130, upper := 7215, witness := RowWitness.topPrime 7129 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good087_checked :
    goodSegmentCheck 87 28 60
      { lower := 7216, upper := 7299, witness := RowWitness.topPrime 7213 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good088_checked :
    goodSegmentCheck 87 28 60
      { lower := 7300, upper := 7383, witness := RowWitness.topPrime 7297 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good089_checked :
    goodSegmentCheck 87 28 60
      { lower := 7384, upper := 7455, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good090_checked :
    goodSegmentCheck 87 28 60
      { lower := 7456, upper := 7492, witness := RowWitness.topPrime 7451 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good091_checked :
    goodSegmentCheck 87 28 60
      { lower := 7500, upper := 7585, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good092_checked :
    goodSegmentCheck 87 28 60
      { lower := 7586, upper := 7632, witness := RowWitness.topPrime 7583 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good093_checked :
    goodSegmentCheck 87 28 60
      { lower := 7688, upper := 7766, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good094_checked :
    goodSegmentCheck 87 28 60
      { lower := 7935, upper := 8019, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good095_checked :
    goodSegmentCheck 87 28 60
      { lower := 8020, upper := 8028, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_good096_checked :
    goodSegmentCheck 87 28 60
      { lower := 8192, upper := 8211, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good097_checked :
    goodSegmentCheck 87 28 60
      { lower := 8214, upper := 8295, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good098_checked :
    goodSegmentCheck 87 28 60
      { lower := 8296, upper := 8300, witness := RowWitness.topPrime 8293 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good099_checked :
    goodSegmentCheck 87 28 60
      { lower := 8303, upper := 8318, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good100_checked :
    goodSegmentCheck 87 28 60
      { lower := 8427, upper := 8509, witness := RowWitness.topPrime 8423 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good101_checked :
    goodSegmentCheck 87 28 60
      { lower := 8510, upper := 8513, witness := RowWitness.topPrime 8501 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good102_checked :
    goodSegmentCheck 87 28 60
      { lower := 8649, upper := 8661, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good103_checked :
    goodSegmentCheck 87 28 60
      { lower := 8664, upper := 8749, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good104_checked :
    goodSegmentCheck 87 28 60
      { lower := 8750, upper := 8833, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good105_checked :
    goodSegmentCheck 87 28 60
      { lower := 8834, upper := 8874, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good106_checked :
    goodSegmentCheck 87 28 60
      { lower := 8918, upper := 8922, witness := RowWitness.topPrime 8893 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good107_checked :
    goodSegmentCheck 87 28 60
      { lower := 8978, upper := 9057, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good108_checked :
    goodSegmentCheck 87 28 60
      { lower := 9058, upper := 9079, witness := RowWitness.topPrime 9049 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good109_checked :
    goodSegmentCheck 87 28 60
      { lower := 9245, upper := 9302, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good110_checked :
    goodSegmentCheck 87 28 60
      { lower := 9317, upper := 9331, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good111_checked :
    goodSegmentCheck 87 28 60
      { lower := 9375, upper := 9457, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_good112_checked :
    goodSegmentCheck 87 28 60
      { lower := 9458, upper := 9461, witness := RowWitness.topPrime 9439 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good113_checked :
    goodSegmentCheck 87 28 60
      { lower := 9583, upper := 9637, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good114_checked :
    goodSegmentCheck 87 28 60
      { lower := 9638, upper := 9690, witness := RowWitness.topPrime 9631 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good115_checked :
    goodSegmentCheck 87 28 60
      { lower := 10051, upper := 10125, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good116_checked :
    goodSegmentCheck 87 28 60
      { lower := 10126, upper := 10168, witness := RowWitness.topPrime 10111 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good117_checked :
    goodSegmentCheck 87 28 60
      { lower := 10580, upper := 10653, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good118_checked :
    goodSegmentCheck 87 28 60
      { lower := 10654, upper := 10734, witness := RowWitness.topPrime 10651 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good119_checked :
    goodSegmentCheck 87 28 60
      { lower := 10952, upper := 11035, witness := RowWitness.topPrime 10949 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good120_checked :
    goodSegmentCheck 87 28 60
      { lower := 11036, upper := 11038, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good121_checked :
    goodSegmentCheck 87 28 60
      { lower := 11045, upper := 11071, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good122_checked :
    goodSegmentCheck 87 28 60
      { lower := 11094, upper := 11179, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good123_checked :
    goodSegmentCheck 87 28 60
      { lower := 11180, upper := 11195, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good124_checked :
    goodSegmentCheck 87 28 60
      { lower := 11236, upper := 11299, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good125_checked :
    goodSegmentCheck 87 28 60
      { lower := 11300, upper := 11336, witness := RowWitness.topPrime 11299 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good126_checked :
    goodSegmentCheck 87 28 60
      { lower := 11776, upper := 11829, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good127_checked :
    goodSegmentCheck 87 28 60
      { lower := 11830, upper := 11853, witness := RowWitness.topPrime 11827 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_good128_checked :
    goodSegmentCheck 87 28 60
      { lower := 12005, upper := 12065, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good129_checked :
    goodSegmentCheck 87 28 60
      { lower := 12321, upper := 12374, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good130_checked :
    goodSegmentCheck 87 28 60
      { lower := 12493, upper := 12577, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good131_checked :
    goodSegmentCheck 87 28 60
      { lower := 12578, upper := 12579, witness := RowWitness.topPrime 12577 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good132_checked :
    goodSegmentCheck 87 28 60
      { lower := 13125, upper := 13207, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good133_checked :
    goodSegmentCheck 87 28 60
      { lower := 13208, upper := 13211, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good134_checked :
    goodSegmentCheck 87 28 60
      { lower := 13225, upper := 13305, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good135_checked :
    goodSegmentCheck 87 28 60
      { lower := 13306, upper := 13383, witness := RowWitness.topPrime 13297 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good136_checked :
    goodSegmentCheck 87 28 60
      { lower := 13384, upper := 13396, witness := RowWitness.topPrime 13381 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good137_checked :
    goodSegmentCheck 87 28 60
      { lower := 13454, upper := 13537, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good138_checked :
    goodSegmentCheck 87 28 60
      { lower := 13538, upper := 13540, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good139_checked :
    goodSegmentCheck 87 28 60
      { lower := 13718, upper := 13797, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good140_checked :
    goodSegmentCheck 87 28 60
      { lower := 13798, upper := 13840, witness := RowWitness.topPrime 13789 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good141_checked :
    goodSegmentCheck 87 28 60
      { lower := 14375, upper := 14455, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good142_checked :
    goodSegmentCheck 87 28 60
      { lower := 14456, upper := 14492, witness := RowWitness.topPrime 14449 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good143_checked :
    goodSegmentCheck 87 28 60
      { lower := 14792, upper := 14825, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_good144_checked :
    goodSegmentCheck 87 28 60
      { lower := 15123, upper := 15207, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good145_checked :
    goodSegmentCheck 87 28 60
      { lower := 15208, upper := 15209, witness := RowWitness.topPrime 15199 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good146_checked :
    goodSegmentCheck 87 28 60
      { lower := 15360, upper := 15445, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good147_checked :
    goodSegmentCheck 87 28 60
      { lower := 15446, upper := 15465, witness := RowWitness.topPrime 15443 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good148_checked :
    goodSegmentCheck 87 28 60
      { lower := 15987, upper := 16058, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good149_checked :
    goodSegmentCheck 87 28 60
      { lower := 16384, upper := 16423, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good150_checked :
    goodSegmentCheck 87 28 60
      { lower := 16428, upper := 16470, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good151_checked :
    goodSegmentCheck 87 28 60
      { lower := 16810, upper := 16873, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good152_checked :
    goodSegmentCheck 87 28 60
      { lower := 16874, upper := 16896, witness := RowWitness.topPrime 16871 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good153_checked :
    goodSegmentCheck 87 28 60
      { lower := 17303, upper := 17384, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good154_checked :
    goodSegmentCheck 87 28 60
      { lower := 17408, upper := 17487, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good155_checked :
    goodSegmentCheck 87 28 60
      { lower := 17488, upper := 17491, witness := RowWitness.topPrime 17483 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good156_checked :
    goodSegmentCheck 87 28 60
      { lower := 18490, upper := 18567, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good157_checked :
    goodSegmentCheck 87 28 60
      { lower := 18568, upper := 18576, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good158_checked :
    goodSegmentCheck 87 28 60
      { lower := 18634, upper := 18691, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good159_checked :
    goodSegmentCheck 87 28 60
      { lower := 18750, upper := 18809, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_good160_checked :
    goodSegmentCheck 87 28 60
      { lower := 19208, upper := 19293, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good161_checked :
    goodSegmentCheck 87 28 60
      { lower := 19294, upper := 19294, witness := RowWitness.topPrime 19289 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good162_checked :
    goodSegmentCheck 87 28 60
      { lower := 19663, upper := 19747, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good163_checked :
    goodSegmentCheck 87 28 60
      { lower := 19748, upper := 19749, witness := RowWitness.topPrime 19739 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good164_checked :
    goodSegmentCheck 87 28 60
      { lower := 19965, upper := 19967, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good165_checked :
    goodSegmentCheck 87 28 60
      { lower := 20172, upper := 20247, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good166_checked :
    goodSegmentCheck 87 28 60
      { lower := 20248, upper := 20258, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good167_checked :
    goodSegmentCheck 87 28 60
      { lower := 20535, upper := 20566, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good168_checked :
    goodSegmentCheck 87 28 60
      { lower := 20577, upper := 20621, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good169_checked :
    goodSegmentCheck 87 28 60
      { lower := 21316, upper := 21382, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good170_checked :
    goodSegmentCheck 87 28 60
      { lower := 21875, upper := 21957, witness := RowWitness.topPrime 21871 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good171_checked :
    goodSegmentCheck 87 28 60
      { lower := 21958, upper := 21961, witness := RowWitness.topPrime 21943 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good172_checked :
    goodSegmentCheck 87 28 60
      { lower := 21970, upper := 21990, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good173_checked :
    goodSegmentCheck 87 28 60
      { lower := 22472, upper := 22555, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good174_checked :
    goodSegmentCheck 87 28 60
      { lower := 22556, upper := 22558, witness := RowWitness.topPrime 22549 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good175_checked :
    goodSegmentCheck 87 28 60
      { lower := 24010, upper := 24093, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_good176_checked :
    goodSegmentCheck 87 28 60
      { lower := 24094, upper := 24096, witness := RowWitness.topPrime 24091 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good177_checked :
    goodSegmentCheck 87 28 60
      { lower := 24334, upper := 24415, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good178_checked :
    goodSegmentCheck 87 28 60
      { lower := 24416, upper := 24420, witness := RowWitness.topPrime 24413 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good179_checked :
    goodSegmentCheck 87 28 60
      { lower := 24576, upper := 24657, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good180_checked :
    goodSegmentCheck 87 28 60
      { lower := 24658, upper := 24662, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good181_checked :
    goodSegmentCheck 87 28 60
      { lower := 25000, upper := 25050, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good182_checked :
    goodSegmentCheck 87 28 60
      { lower := 25215, upper := 25275, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good183_checked :
    goodSegmentCheck 87 28 60
      { lower := 25276, upper := 25347, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good184_checked :
    goodSegmentCheck 87 28 60
      { lower := 25348, upper := 25367, witness := RowWitness.topPrime 25343 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good185_checked :
    goodSegmentCheck 87 28 60
      { lower := 26047, upper := 26097, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good186_checked :
    goodSegmentCheck 87 28 60
      { lower := 26411, upper := 26450, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good187_checked :
    goodSegmentCheck 87 28 60
      { lower := 26624, upper := 26683, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good188_checked :
    goodSegmentCheck 87 28 60
      { lower := 26684, upper := 26710, witness := RowWitness.topPrime 26683 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good189_checked :
    goodSegmentCheck 87 28 60
      { lower := 26934, upper := 26982, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good190_checked :
    goodSegmentCheck 87 28 60
      { lower := 27436, upper := 27466, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good191_checked :
    goodSegmentCheck 87 28 60
      { lower := 28125, upper := 28176, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_good192_checked :
    goodSegmentCheck 87 28 60
      { lower := 28577, upper := 28647, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good193_checked :
    goodSegmentCheck 87 28 60
      { lower := 28717, upper := 28797, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good194_checked :
    goodSegmentCheck 87 28 60
      { lower := 28798, upper := 28803, witness := RowWitness.topPrime 28793 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good195_checked :
    goodSegmentCheck 87 28 60
      { lower := 28812, upper := 28835, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good196_checked :
    goodSegmentCheck 87 28 60
      { lower := 29791, upper := 29854, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good197_checked :
    goodSegmentCheck 87 28 60
      { lower := 30258, upper := 30332, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good198_checked :
    goodSegmentCheck 87 28 60
      { lower := 30758, upper := 30806, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good199_checked :
    goodSegmentCheck 87 28 60
      { lower := 30926, upper := 30985, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good200_checked :
    goodSegmentCheck 87 28 60
      { lower := 31213, upper := 31279, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good201_checked :
    goodSegmentCheck 87 28 60
      { lower := 31280, upper := 31299, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good202_checked :
    goodSegmentCheck 87 28 60
      { lower := 31329, upper := 31336, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good203_checked :
    goodSegmentCheck 87 28 60
      { lower := 31433, upper := 31483, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good204_checked :
    goodSegmentCheck 87 28 60
      { lower := 31484, upper := 31509, witness := RowWitness.topPrime 31481 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good205_checked :
    goodSegmentCheck 87 28 60
      { lower := 31974, upper := 32025, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good206_checked :
    goodSegmentCheck 87 28 60
      { lower := 32805, upper := 32854, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good207_checked :
    goodSegmentCheck 87 28 60
      { lower := 34375, upper := 34381, witness := RowWitness.topPrime 34369 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_good208_checked :
    goodSegmentCheck 87 28 60
      { lower := 34391, upper := 34467, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good209_checked :
    goodSegmentCheck 87 28 60
      { lower := 34468, upper := 34477, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good210_checked :
    goodSegmentCheck 87 28 60
      { lower := 34816, upper := 34893, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good211_checked :
    goodSegmentCheck 87 28 60
      { lower := 34894, upper := 34896, witness := RowWitness.topPrime 34883 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good212_checked :
    goodSegmentCheck 87 28 60
      { lower := 35152, upper := 35217, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good213_checked :
    goodSegmentCheck 87 28 60
      { lower := 35344, upper := 35373, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good214_checked :
    goodSegmentCheck 87 28 60
      { lower := 36517, upper := 36583, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good215_checked :
    goodSegmentCheck 87 28 60
      { lower := 36584, upper := 36587, witness := RowWitness.topPrime 36583 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good216_checked :
    goodSegmentCheck 87 28 60
      { lower := 37349, upper := 37389, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good217_checked :
    goodSegmentCheck 87 28 60
      { lower := 37500, upper := 37532, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good218_checked :
    goodSegmentCheck 87 28 60
      { lower := 37553, upper := 37586, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good219_checked :
    goodSegmentCheck 87 28 60
      { lower := 39326, upper := 39409, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good220_checked :
    goodSegmentCheck 87 28 60
      { lower := 39410, upper := 39412, witness := RowWitness.topPrime 39409 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good221_checked :
    goodSegmentCheck 87 28 60
      { lower := 40401, upper := 40414, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good222_checked :
    goodSegmentCheck 87 28 60
      { lower := 40960, upper := 41017, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good223_checked :
    goodSegmentCheck 87 28 60
      { lower := 41772, upper := 41829, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_good224_checked :
    goodSegmentCheck 87 28 60
      { lower := 43750, upper := 43773, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good225_checked :
    goodSegmentCheck 87 28 60
      { lower := 44944, upper := 44976, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good226_checked :
    goodSegmentCheck 87 28 60
      { lower := 48013, upper := 48047, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good227_checked :
    goodSegmentCheck 87 28 60
      { lower := 48734, upper := 48754, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good228_checked :
    goodSegmentCheck 87 28 60
      { lower := 49152, upper := 49216, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good229_checked :
    goodSegmentCheck 87 28 60
      { lower := 50000, upper := 50014, witness := RowWitness.topPrime 49999 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good230_checked :
    goodSegmentCheck 87 28 60
      { lower := 50421, upper := 50496, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good231_checked :
    goodSegmentCheck 87 28 60
      { lower := 53290, upper := 53334, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good232_checked :
    goodSegmentCheck 87 28 60
      { lower := 53371, upper := 53376, witness := RowWitness.topPrime 53359 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good233_checked :
    goodSegmentCheck 87 28 60
      { lower := 56250, upper := 56255, witness := RowWitness.topPrime 56249 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good234_checked :
    goodSegmentCheck 87 28 60
      { lower := 58619, upper := 58650, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good235_checked :
    goodSegmentCheck 87 28 60
      { lower := 59582, upper := 59622, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good236_checked :
    goodSegmentCheck 87 28 60
      { lower := 63948, upper := 63955, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good237_checked :
    goodSegmentCheck 87 28 60
      { lower := 65536, upper := 65607, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good238_checked :
    goodSegmentCheck 87 28 60
      { lower := 65608, upper := 65619, witness := RowWitness.topPrime 65599 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good239_checked :
    goodSegmentCheck 87 28 60
      { lower := 68651, upper := 68676, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_good240_checked :
    goodSegmentCheck 87 28 60
      { lower := 68921, upper := 68976, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good241_checked :
    goodSegmentCheck 87 28 60
      { lower := 73728, upper := 73781, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good242_checked :
    goodSegmentCheck 87 28 60
      { lower := 148955, upper := 148963, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row087_good243_checked :
    goodSegmentCheck 87 28 60
      { lower := 327701, upper := 327766, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 87) (r := 28) (s := 60) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_good243_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_goods_checked :
    row087.goods.all (goodSegmentCheck row087.height.i row087.height.r row087.height.s) = true := by
  change row087_goods.all (goodSegmentCheck 87 28 60) = true
  simp only [row087_goods, List.all_cons, List.all_nil,
    row087_good000_checked,
    row087_good001_checked,
    row087_good002_checked,
    row087_good003_checked,
    row087_good004_checked,
    row087_good005_checked,
    row087_good006_checked,
    row087_good007_checked,
    row087_good008_checked,
    row087_good009_checked,
    row087_good010_checked,
    row087_good011_checked,
    row087_good012_checked,
    row087_good013_checked,
    row087_good014_checked,
    row087_good015_checked,
    row087_good016_checked,
    row087_good017_checked,
    row087_good018_checked,
    row087_good019_checked,
    row087_good020_checked,
    row087_good021_checked,
    row087_good022_checked,
    row087_good023_checked,
    row087_good024_checked,
    row087_good025_checked,
    row087_good026_checked,
    row087_good027_checked,
    row087_good028_checked,
    row087_good029_checked,
    row087_good030_checked,
    row087_good031_checked,
    row087_good032_checked,
    row087_good033_checked,
    row087_good034_checked,
    row087_good035_checked,
    row087_good036_checked,
    row087_good037_checked,
    row087_good038_checked,
    row087_good039_checked,
    row087_good040_checked,
    row087_good041_checked,
    row087_good042_checked,
    row087_good043_checked,
    row087_good044_checked,
    row087_good045_checked,
    row087_good046_checked,
    row087_good047_checked,
    row087_good048_checked,
    row087_good049_checked,
    row087_good050_checked,
    row087_good051_checked,
    row087_good052_checked,
    row087_good053_checked,
    row087_good054_checked,
    row087_good055_checked,
    row087_good056_checked,
    row087_good057_checked,
    row087_good058_checked,
    row087_good059_checked,
    row087_good060_checked,
    row087_good061_checked,
    row087_good062_checked,
    row087_good063_checked,
    row087_good064_checked,
    row087_good065_checked,
    row087_good066_checked,
    row087_good067_checked,
    row087_good068_checked,
    row087_good069_checked,
    row087_good070_checked,
    row087_good071_checked,
    row087_good072_checked,
    row087_good073_checked,
    row087_good074_checked,
    row087_good075_checked,
    row087_good076_checked,
    row087_good077_checked,
    row087_good078_checked,
    row087_good079_checked,
    row087_good080_checked,
    row087_good081_checked,
    row087_good082_checked,
    row087_good083_checked,
    row087_good084_checked,
    row087_good085_checked,
    row087_good086_checked,
    row087_good087_checked,
    row087_good088_checked,
    row087_good089_checked,
    row087_good090_checked,
    row087_good091_checked,
    row087_good092_checked,
    row087_good093_checked,
    row087_good094_checked,
    row087_good095_checked,
    row087_good096_checked,
    row087_good097_checked,
    row087_good098_checked,
    row087_good099_checked,
    row087_good100_checked,
    row087_good101_checked,
    row087_good102_checked,
    row087_good103_checked,
    row087_good104_checked,
    row087_good105_checked,
    row087_good106_checked,
    row087_good107_checked,
    row087_good108_checked,
    row087_good109_checked,
    row087_good110_checked,
    row087_good111_checked,
    row087_good112_checked,
    row087_good113_checked,
    row087_good114_checked,
    row087_good115_checked,
    row087_good116_checked,
    row087_good117_checked,
    row087_good118_checked,
    row087_good119_checked,
    row087_good120_checked,
    row087_good121_checked,
    row087_good122_checked,
    row087_good123_checked,
    row087_good124_checked,
    row087_good125_checked,
    row087_good126_checked,
    row087_good127_checked,
    row087_good128_checked,
    row087_good129_checked,
    row087_good130_checked,
    row087_good131_checked,
    row087_good132_checked,
    row087_good133_checked,
    row087_good134_checked,
    row087_good135_checked,
    row087_good136_checked,
    row087_good137_checked,
    row087_good138_checked,
    row087_good139_checked,
    row087_good140_checked,
    row087_good141_checked,
    row087_good142_checked,
    row087_good143_checked,
    row087_good144_checked,
    row087_good145_checked,
    row087_good146_checked,
    row087_good147_checked,
    row087_good148_checked,
    row087_good149_checked,
    row087_good150_checked,
    row087_good151_checked,
    row087_good152_checked,
    row087_good153_checked,
    row087_good154_checked,
    row087_good155_checked,
    row087_good156_checked,
    row087_good157_checked,
    row087_good158_checked,
    row087_good159_checked,
    row087_good160_checked,
    row087_good161_checked,
    row087_good162_checked,
    row087_good163_checked,
    row087_good164_checked,
    row087_good165_checked,
    row087_good166_checked,
    row087_good167_checked,
    row087_good168_checked,
    row087_good169_checked,
    row087_good170_checked,
    row087_good171_checked,
    row087_good172_checked,
    row087_good173_checked,
    row087_good174_checked,
    row087_good175_checked,
    row087_good176_checked,
    row087_good177_checked,
    row087_good178_checked,
    row087_good179_checked,
    row087_good180_checked,
    row087_good181_checked,
    row087_good182_checked,
    row087_good183_checked,
    row087_good184_checked,
    row087_good185_checked,
    row087_good186_checked,
    row087_good187_checked,
    row087_good188_checked,
    row087_good189_checked,
    row087_good190_checked,
    row087_good191_checked,
    row087_good192_checked,
    row087_good193_checked,
    row087_good194_checked,
    row087_good195_checked,
    row087_good196_checked,
    row087_good197_checked,
    row087_good198_checked,
    row087_good199_checked,
    row087_good200_checked,
    row087_good201_checked,
    row087_good202_checked,
    row087_good203_checked,
    row087_good204_checked,
    row087_good205_checked,
    row087_good206_checked,
    row087_good207_checked,
    row087_good208_checked,
    row087_good209_checked,
    row087_good210_checked,
    row087_good211_checked,
    row087_good212_checked,
    row087_good213_checked,
    row087_good214_checked,
    row087_good215_checked,
    row087_good216_checked,
    row087_good217_checked,
    row087_good218_checked,
    row087_good219_checked,
    row087_good220_checked,
    row087_good221_checked,
    row087_good222_checked,
    row087_good223_checked,
    row087_good224_checked,
    row087_good225_checked,
    row087_good226_checked,
    row087_good227_checked,
    row087_good228_checked,
    row087_good229_checked,
    row087_good230_checked,
    row087_good231_checked,
    row087_good232_checked,
    row087_good233_checked,
    row087_good234_checked,
    row087_good235_checked,
    row087_good236_checked,
    row087_good237_checked,
    row087_good238_checked,
    row087_good239_checked,
    row087_good240_checked,
    row087_good241_checked,
    row087_good242_checked,
    row087_good243_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_registered :
    decide (row087.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row087_small_checked :
    coverCheck (2 * row087.height.i + 2) (row087.height.i * (row087.height.i - 1) - 1)
      (row087.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row087_layerCover_checked :
    coverCheck (row087.height.i * (row087.height.i - 1)) (row087.height.n0 - 1)
      (row087.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row087_bounds : List NatInterval :=
  [(176, 259), (260, 343), (344, 423), (424, 507), (508, 589), (590, 673), (674, 759), (760, 843), (844, 925), (926, 1005), (1006, 1083), (1084, 1155), (1156, 1239), (1240, 1323), (1324, 1407), (1408, 1485), (1486, 1569), (1570, 1653), (1654, 1723), (1724, 1809), (1810, 1887), (1888, 1965), (1966, 2037), (2038, 2115), (2116, 2199), (2200, 2265), (2266, 2337), (2338, 2419), (2420, 2503), (2504, 2589), (2590, 2665), (2666, 2749), (2750, 2835), (2836, 2919), (2920, 3003), (3004, 3087), (3088, 3169), (3170, 3255), (3256, 3339), (3340, 3417), (3418, 3499), (3500, 3585), (3586, 3669), (3670, 3745), (3746, 3825), (3826, 3909), (3910, 3993), (3994, 4075), (4076, 4159), (4160, 4245), (4246, 4329), (4330, 4413), (4414, 4495), (4496, 4579), (4580, 4653), (4654, 4737), (4738, 4819), (4820, 4903), (4904, 4989), (4990, 5073), (5074, 5145), (5146, 5205), (5206, 5283), (5284, 5367), (5368, 5437), (5438, 5523), (5524, 5607), (5608, 5677), (5678, 5755), (5756, 5835), (5836, 5913), (5914, 5989), (5990, 6073), (6074, 6159), (6160, 6237), (6238, 6315), (6316, 6397), (6398, 6483), (6484, 6567), (6568, 6649), (6650, 6723), (6724, 6805), (6806, 6889), (6890, 6969), (6970, 7053), (7054, 7129), (7130, 7215), (7216, 7299), (7300, 7383), (7384, 7455), (7456, 7492), (7500, 7585), (7586, 7632), (7688, 7766), (7935, 8019), (8020, 8028), (8192, 8211), (8214, 8295), (8296, 8300), (8303, 8318), (8427, 8509), (8510, 8513), (8649, 8661), (8664, 8749), (8750, 8833), (8834, 8874), (8918, 8922), (8978, 9057), (9058, 9079), (9245, 9302), (9317, 9331), (9375, 9457), (9458, 9461), (9583, 9637), (9638, 9690), (10051, 10125), (10126, 10168), (10580, 10653), (10654, 10734), (10952, 11035), (11036, 11038), (11045, 11071), (11094, 11179), (11180, 11195), (11236, 11299), (11300, 11336), (11776, 11829), (11830, 11853), (12005, 12065), (12321, 12374), (12493, 12577), (12578, 12579), (13125, 13207), (13208, 13211), (13225, 13305), (13306, 13383), (13384, 13396), (13454, 13537), (13538, 13540), (13718, 13797), (13798, 13840), (14375, 14455), (14456, 14492), (14792, 14825), (15123, 15207), (15208, 15209), (15360, 15445), (15446, 15465), (15987, 16058), (16384, 16423), (16428, 16470), (16810, 16873), (16874, 16896), (17303, 17384), (17408, 17487), (17488, 17491), (18490, 18567), (18568, 18576), (18634, 18691), (18750, 18809), (19208, 19293), (19294, 19294), (19663, 19747), (19748, 19749), (19965, 19967), (20172, 20247), (20248, 20258), (20535, 20566), (20577, 20621), (21316, 21382), (21875, 21957), (21958, 21961), (21970, 21990), (22472, 22555), (22556, 22558), (24010, 24093), (24094, 24096), (24334, 24415), (24416, 24420), (24576, 24657), (24658, 24662), (25000, 25050), (25215, 25275), (25276, 25347), (25348, 25367), (26047, 26097), (26411, 26450), (26624, 26683), (26684, 26710), (26934, 26982), (27436, 27466), (28125, 28176), (28577, 28647), (28717, 28797), (28798, 28803), (28812, 28835), (29791, 29854), (30258, 30332), (30758, 30806), (30926, 30985), (31213, 31279), (31280, 31299), (31329, 31336), (31433, 31483), (31484, 31509), (31974, 32025), (32805, 32854), (34375, 34381), (34391, 34467), (34468, 34477), (34816, 34893), (34894, 34896), (35152, 35217), (35344, 35373), (36517, 36583), (36584, 36587), (37349, 37389), (37500, 37532), (37553, 37586), (39326, 39409), (39410, 39412), (40401, 40414), (40960, 41017), (41772, 41829), (43750, 43773), (44944, 44976), (48013, 48047), (48734, 48754), (49152, 49216), (50000, 50014), (50421, 50496), (53290, 53334), (53371, 53376), (56250, 56255), (58619, 58650), (59582, 59622), (63948, 63955), (65536, 65607), (65608, 65619), (68651, 68676), (68921, 68976), (73728, 73781), (148955, 148963), (327701, 327766)]

theorem row087_bounds_eq : row087.goods.map goodSegmentBounds = row087_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row087_layer000_intervals : List ColouredInterval :=
  [(2, 7680, 7766), (2, 8192, 8278), (2, 8704, 8790), (2, 9216, 9302), (2, 9728, 9814), (2, 10240, 10326), (2, 10752, 10838), (2, 11264, 11350), (2, 11776, 11862), (2, 12288, 12374), (2, 12800, 12886), (2, 13312, 13398), (2, 8192, 8278), (2, 9216, 9302), (2, 10240, 10326), (2, 11264, 11350), (2, 12288, 12374), (2, 13312, 13398), (2, 14336, 14422), (2, 8192, 8278), (2, 10240, 10326), (2, 12288, 12374), (2, 14336, 14422), (2, 8192, 8278), (2, 12288, 12374), (2, 8192, 8278), (3, 8748, 8834), (3, 10935, 11021), (3, 13122, 13208), (3, 13122, 13208), (5, 7500, 7586), (5, 8125, 8211), (5, 8750, 8836), (5, 9375, 9461), (5, 10000, 10086), (5, 10625, 10711), (5, 11250, 11336), (5, 11875, 11961), (5, 12500, 12586), (5, 13125, 13211), (5, 13750, 13836), (5, 14375, 14461), (5, 9375, 9461), (5, 12500, 12586), (7, 7546, 7632), (7, 7889, 7975), (7, 8232, 8318), (7, 8575, 8661), (7, 8918, 9004), (7, 9604, 9690), (7, 12005, 12091), (7, 14406, 14492), (11, 7986, 8072), (11, 9317, 9403), (11, 10648, 10734), (11, 11979, 12065), (11, 13310, 13396), (11, 14641, 14727), (11, 14641, 14727), (13, 8788, 8874), (13, 10985, 11071), (13, 13182, 13268), (17, 7514, 7600), (17, 9826, 9912), (17, 14739, 14825), (19, 7581, 7667), (19, 7942, 8028), (19, 8303, 8389), (19, 8664, 8750), (19, 9025, 9111), (19, 9386, 9472), (19, 13718, 13804), (23, 7482, 7492), (23, 7935, 8021), (23, 8464, 8550), (23, 8993, 9079), (23, 9522, 9608), (23, 10051, 10137), (23, 10580, 10666), (23, 11109, 11195), (23, 11638, 11724), (23, 12167, 12253), (23, 12696, 12782), (23, 13225, 13311), (23, 13754, 13840), (23, 12167, 12253), (31, 7688, 7774), (31, 8649, 8735), (31, 9610, 9696), (31, 10571, 10657), (31, 11532, 11618), (31, 12493, 12579), (31, 13454, 13540), (31, 14415, 14501), (37, 8214, 8300), (37, 9583, 9669), (37, 10952, 11038), (37, 12321, 12407), (37, 13690, 13776), (41, 8405, 8491), (41, 10086, 10172), (41, 11767, 11853), (41, 13448, 13534), (43, 7482, 7482), (43, 9245, 9331), (43, 11094, 11180), (43, 12943, 13029), (43, 14792, 14878), (47, 8836, 8922), (47, 11045, 11131), (47, 13254, 13340), (53, 8427, 8513), (53, 11236, 11322), (53, 14045, 14131), (59, 10443, 10529), (59, 13924, 14010), (61, 7482, 7528), (61, 11163, 11249), (61, 14884, 14963), (67, 8978, 9064), (67, 13467, 13553), (71, 10082, 10168), (73, 10658, 10744), (79, 12482, 12568), (83, 13778, 13864)]

def row087_layer000_block000 : List ColouredInterval :=
  [(2, 7680, 7766), (2, 8192, 8278), (2, 8704, 8790), (2, 9216, 9302), (2, 9728, 9814), (2, 10240, 10326), (2, 10752, 10838), (2, 11264, 11350), (2, 11776, 11862), (2, 12288, 12374), (2, 12800, 12886), (2, 13312, 13398), (2, 8192, 8278), (2, 9216, 9302), (2, 10240, 10326), (2, 11264, 11350)]

def row087_layer000_block001 : List ColouredInterval :=
  [(2, 12288, 12374), (2, 13312, 13398), (2, 14336, 14422), (2, 8192, 8278), (2, 10240, 10326), (2, 12288, 12374), (2, 14336, 14422), (2, 8192, 8278), (2, 12288, 12374), (2, 8192, 8278), (3, 8748, 8834), (3, 10935, 11021), (3, 13122, 13208), (3, 13122, 13208), (5, 7500, 7586), (5, 8125, 8211)]

def row087_layer000_block002 : List ColouredInterval :=
  [(5, 8750, 8836), (5, 9375, 9461), (5, 10000, 10086), (5, 10625, 10711), (5, 11250, 11336), (5, 11875, 11961), (5, 12500, 12586), (5, 13125, 13211), (5, 13750, 13836), (5, 14375, 14461), (5, 9375, 9461), (5, 12500, 12586), (7, 7546, 7632), (7, 7889, 7975), (7, 8232, 8318), (7, 8575, 8661)]

def row087_layer000_block003 : List ColouredInterval :=
  [(7, 8918, 9004), (7, 9604, 9690), (7, 12005, 12091), (7, 14406, 14492), (11, 7986, 8072), (11, 9317, 9403), (11, 10648, 10734), (11, 11979, 12065), (11, 13310, 13396), (11, 14641, 14727), (11, 14641, 14727), (13, 8788, 8874), (13, 10985, 11071), (13, 13182, 13268), (17, 7514, 7600), (17, 9826, 9912)]

def row087_layer000_block004 : List ColouredInterval :=
  [(17, 14739, 14825), (19, 7581, 7667), (19, 7942, 8028), (19, 8303, 8389), (19, 8664, 8750), (19, 9025, 9111), (19, 9386, 9472), (19, 13718, 13804), (23, 7482, 7492), (23, 7935, 8021), (23, 8464, 8550), (23, 8993, 9079), (23, 9522, 9608), (23, 10051, 10137), (23, 10580, 10666), (23, 11109, 11195)]

def row087_layer000_block005 : List ColouredInterval :=
  [(23, 11638, 11724), (23, 12167, 12253), (23, 12696, 12782), (23, 13225, 13311), (23, 13754, 13840), (23, 12167, 12253), (31, 7688, 7774), (31, 8649, 8735), (31, 9610, 9696), (31, 10571, 10657), (31, 11532, 11618), (31, 12493, 12579), (31, 13454, 13540), (31, 14415, 14501), (37, 8214, 8300), (37, 9583, 9669)]

def row087_layer000_block006 : List ColouredInterval :=
  [(37, 10952, 11038), (37, 12321, 12407), (37, 13690, 13776), (41, 8405, 8491), (41, 10086, 10172), (41, 11767, 11853), (41, 13448, 13534), (43, 7482, 7482), (43, 9245, 9331), (43, 11094, 11180), (43, 12943, 13029), (43, 14792, 14878), (47, 8836, 8922), (47, 11045, 11131), (47, 13254, 13340), (53, 8427, 8513)]

def row087_layer000_block007 : List ColouredInterval :=
  [(53, 11236, 11322), (53, 14045, 14131), (59, 10443, 10529), (59, 13924, 14010), (61, 7482, 7528), (61, 11163, 11249), (61, 14884, 14963), (67, 8978, 9064), (67, 13467, 13553), (71, 10082, 10168), (73, 10658, 10744), (79, 12482, 12568), (83, 13778, 13864)]

def row087_layer000_chunks : List (List ColouredInterval) :=
  [row087_layer000_block000, row087_layer000_block001, row087_layer000_block002, row087_layer000_block003, row087_layer000_block004, row087_layer000_block005, row087_layer000_block006, row087_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer000_arithmetic : LayerArithmeticValid row087.height { lower := 7482, upper := 14964, M := 26 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer000_enumeration :
    activePowerIntervalList 87 26 7482 14964 = row087_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer000_pairs000 :
    row087_layer000_block000.all (fun I => row087_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer000_pairs001 :
    row087_layer000_block001.all (fun I => row087_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer000_pairs002 :
    row087_layer000_block002.all (fun I => row087_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer000_pairs003 :
    row087_layer000_block003.all (fun I => row087_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer000_pairs004 :
    row087_layer000_block004.all (fun I => row087_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer000_pairs005 :
    row087_layer000_block005.all (fun I => row087_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer000_pairs006 :
    row087_layer000_block006.all (fun I => row087_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer000_pairs007 :
    row087_layer000_block007.all (fun I => row087_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row087_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer000_chunks_eq : row087_layer000_chunks.flatten = row087_layer000_intervals := by
  rfl

theorem row087_layer000_pairs : pairCoverCheck row087_layer000_intervals row087_bounds = true := by
  apply pairCoverCheck_of_chunks row087_layer000_chunks_eq
  intro block hblock
  simp only [row087_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row087_layer000_pairs000
  · exact row087_layer000_pairs001
  · exact row087_layer000_pairs002
  · exact row087_layer000_pairs003
  · exact row087_layer000_pairs004
  · exact row087_layer000_pairs005
  · exact row087_layer000_pairs006
  · exact row087_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer000_pairs
