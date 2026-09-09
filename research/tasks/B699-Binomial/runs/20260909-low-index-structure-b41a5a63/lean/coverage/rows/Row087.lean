import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row087_registered :
    decide (row087.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row087_goods_checked :
    row087.goods.all (goodSegmentCheck row087.height.i row087.height.r row087.height.s) = true := by
  decide +kernel

theorem row087_small_checked :
    coverCheck (2 * row087.height.i + 2) (row087.height.i * (row087.height.i - 1) - 1)
      (row087.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row087_layerCover_checked :
    coverCheck (row087.height.i * (row087.height.i - 1)) (row087.height.n0 - 1)
      (row087.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row087_layer000_checked :
    coverLayerCheck row087.height row087.goods { lower := 7482, upper := 14964, M := 26 } = true := by
  decide +kernel

theorem row087_layer001_checked :
    coverLayerCheck row087.height row087.goods { lower := 14964, upper := 29928, M := 22 } = true := by
  decide +kernel

theorem row087_layer002_checked :
    coverLayerCheck row087.height row087.goods { lower := 29928, upper := 59856, M := 19 } = true := by
  decide +kernel

theorem row087_layer003_checked :
    coverLayerCheck row087.height row087.goods { lower := 59856, upper := 119712, M := 16 } = true := by
  decide +kernel

theorem row087_layer004_checked :
    coverLayerCheck row087.height row087.goods { lower := 119712, upper := 239424, M := 13 } = true := by
  decide +kernel

theorem row087_layer005_checked :
    coverLayerCheck row087.height row087.goods { lower := 239424, upper := 478848, M := 11 } = true := by
  decide +kernel

theorem row087_layer006_checked :
    coverLayerCheck row087.height row087.goods { lower := 478848, upper := 957696, M := 9 } = true := by
  decide +kernel

theorem row087_layer007_checked :
    coverLayerCheck row087.height row087.goods { lower := 957696, upper := 1915392, M := 8 } = true := by
  decide +kernel

theorem row087_layer008_checked :
    coverLayerCheck row087.height row087.goods { lower := 1915392, upper := 3830784, M := 7 } = true := by
  decide +kernel

theorem row087_layer009_checked :
    coverLayerCheck row087.height row087.goods { lower := 3830784, upper := 7661568, M := 6 } = true := by
  decide +kernel

theorem row087_layer010_checked :
    coverLayerCheck row087.height row087.goods { lower := 7661568, upper := 15323136, M := 5 } = true := by
  decide +kernel

theorem row087_layer011_checked :
    coverLayerCheck row087.height row087.goods { lower := 15323136, upper := 30646272, M := 4 } = true := by
  decide +kernel

theorem row087_layer012_checked :
    coverLayerCheck row087.height row087.goods { lower := 30646272, upper := 61292544, M := 4 } = true := by
  decide +kernel

theorem row087_layer013_checked :
    coverLayerCheck row087.height row087.goods { lower := 61292544, upper := 122585088, M := 3 } = true := by
  decide +kernel

theorem row087_layer014_checked :
    coverLayerCheck row087.height row087.goods { lower := 122585088, upper := 245170176, M := 3 } = true := by
  decide +kernel

theorem row087_layer015_checked :
    coverLayerCheck row087.height row087.goods { lower := 245170176, upper := 490340352, M := 2 } = true := by
  decide +kernel

theorem row087_layer016_checked :
    coverLayerCheck row087.height row087.goods { lower := 490340352, upper := 980680704, M := 2 } = true := by
  decide +kernel

theorem row087_layer017_checked :
    coverLayerCheck row087.height row087.goods { lower := 980680704, upper := 1961361408, M := 2 } = true := by
  decide +kernel

theorem row087_layer018_checked :
    coverLayerCheck row087.height row087.goods { lower := 1961361408, upper := 3922722816, M := 2 } = true := by
  decide +kernel

theorem row087_layer019_checked :
    coverLayerCheck row087.height row087.goods { lower := 3922722816, upper := 7845445632, M := 1 } = true := by
  decide +kernel

theorem row087_layer020_checked :
    coverLayerCheck row087.height row087.goods { lower := 7845445632, upper := 10000000000, M := 1 } = true := by
  decide +kernel

theorem row087_layers_checked :
    row087.layers.all (coverLayerCheck row087.height row087.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row087.height row087.goods) = true
  simp only [List.all_cons, List.all_nil,
    row087_layer000_checked,
    row087_layer001_checked,
    row087_layer002_checked,
    row087_layer003_checked,
    row087_layer004_checked,
    row087_layer005_checked,
    row087_layer006_checked,
    row087_layer007_checked,
    row087_layer008_checked,
    row087_layer009_checked,
    row087_layer010_checked,
    row087_layer011_checked,
    row087_layer012_checked,
    row087_layer013_checked,
    row087_layer014_checked,
    row087_layer015_checked,
    row087_layer016_checked,
    row087_layer017_checked,
    row087_layer018_checked,
    row087_layer019_checked,
    row087_layer020_checked,
    Bool.true_and]

theorem row087_checked : finiteCoverRowCheck row087 = true := by
  simp only [finiteCoverRowCheck, row087_registered, row087_goods_checked,
    row087_small_checked, row087_layerCover_checked, row087_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row087_checked

end B699LowIndex
