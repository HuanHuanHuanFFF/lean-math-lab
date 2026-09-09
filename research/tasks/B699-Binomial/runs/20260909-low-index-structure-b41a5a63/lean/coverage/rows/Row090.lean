import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row090_height : HeightCertificateDatum := { i := 90, r := 29, s := 62, n0Power10 := 10 }

def row090_goods : List GoodSegment := [
  { lower := 182, upper := 270, witness := RowWitness.topPrime 181 },
  { lower := 271, upper := 360, witness := RowWitness.topPrime 271 },
  { lower := 361, upper := 448, witness := RowWitness.topPrime 359 },
  { lower := 449, upper := 538, witness := RowWitness.topPrime 449 },
  { lower := 539, upper := 612, witness := RowWitness.topPrime 523 },
  { lower := 613, upper := 702, witness := RowWitness.topPrime 613 },
  { lower := 703, upper := 790, witness := RowWitness.topPrime 701 },
  { lower := 791, upper := 876, witness := RowWitness.topPrime 787 },
  { lower := 877, upper := 966, witness := RowWitness.topPrime 877 },
  { lower := 967, upper := 1056, witness := RowWitness.topPrime 967 },
  { lower := 1057, upper := 1140, witness := RowWitness.topPrime 1051 },
  { lower := 1141, upper := 1218, witness := RowWitness.topPrime 1129 },
  { lower := 1219, upper := 1306, witness := RowWitness.topPrime 1217 },
  { lower := 1307, upper := 1396, witness := RowWitness.topPrime 1307 },
  { lower := 1397, upper := 1470, witness := RowWitness.topPrime 1381 },
  { lower := 1471, upper := 1560, witness := RowWitness.topPrime 1471 },
  { lower := 1561, upper := 1648, witness := RowWitness.topPrime 1559 },
  { lower := 1649, upper := 1726, witness := RowWitness.topPrime 1637 },
  { lower := 1727, upper := 1812, witness := RowWitness.topPrime 1723 },
  { lower := 1813, upper := 1900, witness := RowWitness.topPrime 1811 },
  { lower := 1901, upper := 1990, witness := RowWitness.topPrime 1901 },
  { lower := 1991, upper := 2076, witness := RowWitness.topPrime 1987 },
  { lower := 2077, upper := 2158, witness := RowWitness.topPrime 2069 },
  { lower := 2159, upper := 2242, witness := RowWitness.topPrime 2153 },
  { lower := 2243, upper := 2332, witness := RowWitness.topPrime 2243 },
  { lower := 2333, upper := 2422, witness := RowWitness.topPrime 2333 },
  { lower := 2423, upper := 2512, witness := RowWitness.topPrime 2423 },
  { lower := 2513, upper := 2592, witness := RowWitness.topPrime 2503 },
  { lower := 2593, upper := 2682, witness := RowWitness.topPrime 2593 },
  { lower := 2683, upper := 2772, witness := RowWitness.topPrime 2683 },
  { lower := 2773, upper := 2856, witness := RowWitness.topPrime 2767 },
  { lower := 2857, upper := 2946, witness := RowWitness.topPrime 2857 },
  { lower := 2947, upper := 3028, witness := RowWitness.topPrime 2939 },
  { lower := 3029, upper := 3112, witness := RowWitness.topPrime 3023 },
  { lower := 3113, upper := 3198, witness := RowWitness.topPrime 3109 },
  { lower := 3199, upper := 3280, witness := RowWitness.topPrime 3191 },
  { lower := 3281, upper := 3360, witness := RowWitness.topPrime 3271 },
  { lower := 3361, upper := 3450, witness := RowWitness.topPrime 3361 },
  { lower := 3451, upper := 3538, witness := RowWitness.topPrime 3449 },
  { lower := 3539, upper := 3628, witness := RowWitness.topPrime 3539 },
  { lower := 3629, upper := 3712, witness := RowWitness.topPrime 3623 },
  { lower := 3713, upper := 3798, witness := RowWitness.topPrime 3709 },
  { lower := 3799, upper := 3886, witness := RowWitness.topPrime 3797 },
  { lower := 3887, upper := 3970, witness := RowWitness.topPrime 3881 },
  { lower := 3971, upper := 4056, witness := RowWitness.topPrime 3967 },
  { lower := 4057, upper := 4146, witness := RowWitness.topPrime 4057 },
  { lower := 4147, upper := 4228, witness := RowWitness.topPrime 4139 },
  { lower := 4229, upper := 4318, witness := RowWitness.topPrime 4229 },
  { lower := 4319, upper := 4386, witness := RowWitness.topPrime 4297 },
  { lower := 4387, upper := 4462, witness := RowWitness.topPrime 4373 },
  { lower := 4463, upper := 4552, witness := RowWitness.topPrime 4463 },
  { lower := 4553, upper := 4638, witness := RowWitness.topPrime 4549 },
  { lower := 4639, upper := 4728, witness := RowWitness.topPrime 4639 },
  { lower := 4729, upper := 4818, witness := RowWitness.topPrime 4729 },
  { lower := 4819, upper := 4906, witness := RowWitness.topPrime 4817 },
  { lower := 4907, upper := 4992, witness := RowWitness.topPrime 4903 },
  { lower := 4993, upper := 5082, witness := RowWitness.topPrime 4993 },
  { lower := 5083, upper := 5170, witness := RowWitness.topPrime 5081 },
  { lower := 5171, upper := 5260, witness := RowWitness.topPrime 5171 },
  { lower := 5261, upper := 5350, witness := RowWitness.topPrime 5261 },
  { lower := 5351, upper := 5440, witness := RowWitness.topPrime 5351 },
  { lower := 5441, upper := 5530, witness := RowWitness.topPrime 5441 },
  { lower := 5531, upper := 5620, witness := RowWitness.topPrime 5531 },
  { lower := 5621, upper := 5680, witness := RowWitness.topPrime 5591 },
  { lower := 5681, upper := 5758, witness := RowWitness.topPrime 5669 },
  { lower := 5759, upper := 5838, witness := RowWitness.topPrime 5749 },
  { lower := 5839, upper := 5928, witness := RowWitness.topPrime 5839 },
  { lower := 5929, upper := 6016, witness := RowWitness.topPrime 5927 },
  { lower := 6017, upper := 6100, witness := RowWitness.topPrime 6011 },
  { lower := 6101, upper := 6190, witness := RowWitness.topPrime 6101 },
  { lower := 6191, upper := 6262, witness := RowWitness.topPrime 6173 },
  { lower := 6263, upper := 6352, witness := RowWitness.topPrime 6263 },
  { lower := 6353, upper := 6442, witness := RowWitness.topPrime 6353 },
  { lower := 6443, upper := 6516, witness := RowWitness.topPrime 6427 },
  { lower := 6517, upper := 6580, witness := RowWitness.topPrime 6491 },
  { lower := 6581, upper := 6670, witness := RowWitness.topPrime 6581 },
  { lower := 6671, upper := 6750, witness := RowWitness.topPrime 6661 },
  { lower := 6751, upper := 6826, witness := RowWitness.topPrime 6737 },
  { lower := 6827, upper := 6916, witness := RowWitness.topPrime 6827 },
  { lower := 6917, upper := 7006, witness := RowWitness.topPrime 6917 },
  { lower := 7007, upper := 7090, witness := RowWitness.topPrime 7001 },
  { lower := 7091, upper := 7168, witness := RowWitness.topPrime 7079 },
  { lower := 7169, upper := 7248, witness := RowWitness.topPrime 7159 },
  { lower := 7249, upper := 7336, witness := RowWitness.topPrime 7247 },
  { lower := 7337, upper := 7422, witness := RowWitness.topPrime 7333 },
  { lower := 7423, upper := 7506, witness := RowWitness.topPrime 7417 },
  { lower := 7507, upper := 7596, witness := RowWitness.topPrime 7507 },
  { lower := 7597, upper := 7680, witness := RowWitness.topPrime 7591 },
  { lower := 7681, upper := 7770, witness := RowWitness.topPrime 7681 },
  { lower := 7771, upper := 7848, witness := RowWitness.topPrime 7759 },
  { lower := 7849, upper := 7930, witness := RowWitness.topPrime 7841 },
  { lower := 7931, upper := 8016, witness := RowWitness.topPrime 7927 },
  { lower := 8017, upper := 8031, witness := RowWitness.topPrime 8017 },
  { lower := 8214, upper := 8298, witness := RowWitness.topPrime 8209 },
  { lower := 8299, upper := 8321, witness := RowWitness.topPrime 8297 },
  { lower := 8410, upper := 8478, witness := RowWitness.topPrime 8389 },
  { lower := 8479, upper := 8516, witness := RowWitness.topPrime 8467 },
  { lower := 8649, upper := 8736, witness := RowWitness.topPrime 8647 },
  { lower := 8737, upper := 8738, witness := RowWitness.topPrime 8737 },
  { lower := 8836, upper := 8877, witness := RowWitness.topPrime 8831 },
  { lower := 8918, upper := 8925, witness := RowWitness.topPrime 8893 },
  { lower := 8978, upper := 9060, witness := RowWitness.topPrime 8971 },
  { lower := 9061, upper := 9082, witness := RowWitness.topPrime 9059 },
  { lower := 9245, upper := 9330, witness := RowWitness.topPrime 9241 },
  { lower := 9331, upper := 9350, witness := RowWitness.topPrime 9323 },
  { lower := 9375, upper := 9460, witness := RowWitness.topPrime 9371 },
  { lower := 9461, upper := 9464, witness := RowWitness.topPrime 9461 },
  { lower := 9583, upper := 9640, witness := RowWitness.topPrime 9551 },
  { lower := 9641, upper := 9693, witness := RowWitness.topPrime 9631 },
  { lower := 9826, upper := 9836, witness := RowWitness.topPrime 9817 },
  { lower := 10082, upper := 10168, witness := RowWitness.topPrime 10079 },
  { lower := 10169, upper := 10181, witness := RowWitness.topPrime 10169 },
  { lower := 10580, upper := 10656, witness := RowWitness.topPrime 10567 },
  { lower := 10657, upper := 10737, witness := RowWitness.topPrime 10657 },
  { lower := 10952, upper := 11038, witness := RowWitness.topPrime 10949 },
  { lower := 11039, upper := 11041, witness := RowWitness.topPrime 11027 },
  { lower := 11045, upper := 11074, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11182, witness := RowWitness.topPrime 11093 },
  { lower := 11183, upper := 11198, witness := RowWitness.topPrime 11177 },
  { lower := 11236, upper := 11252, witness := RowWitness.topPrime 11213 },
  { lower := 11264, upper := 11325, witness := RowWitness.topPrime 11261 },
  { lower := 11774, upper := 11832, witness := RowWitness.topPrime 11743 },
  { lower := 11833, upper := 11856, witness := RowWitness.topPrime 11833 },
  { lower := 12005, upper := 12068, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12377, witness := RowWitness.topPrime 12301 },
  { lower := 12493, upper := 12580, witness := RowWitness.topPrime 12491 },
  { lower := 12581, upper := 12582, witness := RowWitness.topPrime 12577 },
  { lower := 12696, upper := 12704, witness := RowWitness.topPrime 12689 },
  { lower := 13182, upper := 13211, witness := RowWitness.topPrime 13177 },
  { lower := 13225, upper := 13308, witness := RowWitness.topPrime 13219 },
  { lower := 13309, upper := 13398, witness := RowWitness.topPrime 13309 },
  { lower := 13399, upper := 13399, witness := RowWitness.topPrime 13399 },
  { lower := 13454, upper := 13540, witness := RowWitness.topPrime 13451 },
  { lower := 13541, upper := 13545, witness := RowWitness.topPrime 13537 },
  { lower := 13718, upper := 13800, witness := RowWitness.topPrime 13711 },
  { lower := 13801, upper := 13843, witness := RowWitness.topPrime 13799 },
  { lower := 14297, upper := 14382, witness := RowWitness.topPrime 14293 },
  { lower := 14383, upper := 14386, witness := RowWitness.topPrime 14369 },
  { lower := 14406, upper := 14490, witness := RowWitness.topPrime 14401 },
  { lower := 14491, upper := 14495, witness := RowWitness.topPrime 14489 },
  { lower := 14792, upper := 14872, witness := RowWitness.topPrime 14783 },
  { lower := 14873, upper := 14881, witness := RowWitness.topPrime 14869 },
  { lower := 14884, upper := 14901, witness := RowWitness.topPrime 14879 },
  { lower := 15123, upper := 15210, witness := RowWitness.topPrime 15121 },
  { lower := 15211, upper := 15218, witness := RowWitness.topPrime 15199 },
  { lower := 15379, upper := 15466, witness := RowWitness.topPrime 15377 },
  { lower := 15467, upper := 15468, witness := RowWitness.topPrime 15467 },
  { lower := 15979, upper := 16062, witness := RowWitness.topPrime 15973 },
  { lower := 16063, upper := 16068, witness := RowWitness.topPrime 16063 },
  { lower := 16384, upper := 16426, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16473, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16876, witness := RowWitness.topPrime 16787 },
  { lower := 16877, upper := 16909, witness := RowWitness.topPrime 16871 },
  { lower := 17303, upper := 17387, witness := RowWitness.topPrime 17299 },
  { lower := 17661, upper := 17665, witness := RowWitness.topPrime 17659 },
  { lower := 17672, upper := 17750, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18570, witness := RowWitness.topPrime 18481 },
  { lower := 18571, upper := 18580, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18694, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18723, witness := RowWitness.topPrime 18719 },
  { lower := 19208, upper := 19296, witness := RowWitness.topPrime 19207 },
  { lower := 19297, upper := 19297, witness := RowWitness.topPrime 19289 },
  { lower := 19663, upper := 19750, witness := RowWitness.topPrime 19661 },
  { lower := 19751, upper := 19752, witness := RowWitness.topPrime 19751 },
  { lower := 19965, upper := 19970, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20250, witness := RowWitness.topPrime 20161 },
  { lower := 20251, upper := 20270, witness := RowWitness.topPrime 20249 },
  { lower := 20535, upper := 20569, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20624, witness := RowWitness.topPrime 20563 },
  { lower := 21316, upper := 21385, witness := RowWitness.topPrime 21313 },
  { lower := 21904, upper := 21942, witness := RowWitness.topPrime 21893 },
  { lower := 21970, upper := 21993, witness := RowWitness.topPrime 21961 },
  { lower := 22103, upper := 22179, witness := RowWitness.topPrime 22093 },
  { lower := 22188, upper := 22192, witness := RowWitness.topPrime 22171 },
  { lower := 22472, upper := 22558, witness := RowWitness.topPrime 22469 },
  { lower := 22559, upper := 22561, witness := RowWitness.topPrime 22549 },
  { lower := 24010, upper := 24096, witness := RowWitness.topPrime 24007 },
  { lower := 24097, upper := 24099, witness := RowWitness.topPrime 24097 },
  { lower := 24334, upper := 24418, witness := RowWitness.topPrime 24329 },
  { lower := 24419, upper := 24456, witness := RowWitness.topPrime 24419 },
  { lower := 24576, upper := 24660, witness := RowWitness.topPrime 24571 },
  { lower := 24661, upper := 24665, witness := RowWitness.topPrime 24659 },
  { lower := 25215, upper := 25278, witness := RowWitness.topPrime 25189 },
  { lower := 25279, upper := 25350, witness := RowWitness.topPrime 25261 },
  { lower := 25351, upper := 25370, witness := RowWitness.topPrime 25349 },
  { lower := 26047, upper := 26100, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26453, witness := RowWitness.topPrime 26407 },
  { lower := 26645, upper := 26709, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 26985, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27469, witness := RowWitness.topPrime 27431 },
  { lower := 28577, upper := 28650, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28800, witness := RowWitness.topPrime 28711 },
  { lower := 28801, upper := 28806, witness := RowWitness.topPrime 28793 },
  { lower := 28812, upper := 28838, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29857, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30335, witness := RowWitness.topPrime 30253 },
  { lower := 30926, upper := 30988, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31282, witness := RowWitness.topPrime 31193 },
  { lower := 31283, upper := 31302, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31339, witness := RowWitness.topPrime 31327 },
  { lower := 31433, upper := 31486, witness := RowWitness.topPrime 31397 },
  { lower := 31487, upper := 31522, witness := RowWitness.topPrime 31481 },
  { lower := 31944, upper := 31996, witness := RowWitness.topPrime 31907 },
  { lower := 31997, upper := 32033, witness := RowWitness.topPrime 31991 },
  { lower := 33620, upper := 33703, witness := RowWitness.topPrime 33619 },
  { lower := 33708, upper := 33709, witness := RowWitness.topPrime 33703 },
  { lower := 34445, upper := 34480, witness := RowWitness.topPrime 34439 },
  { lower := 35152, upper := 35220, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35376, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36586, witness := RowWitness.topPrime 36497 },
  { lower := 36587, upper := 36590, witness := RowWitness.topPrime 36587 },
  { lower := 37349, upper := 37392, witness := RowWitness.topPrime 37339 },
  { lower := 39326, upper := 39412, witness := RowWitness.topPrime 39323 },
  { lower := 39413, upper := 39415, witness := RowWitness.topPrime 39409 },
  { lower := 39605, upper := 39635, witness := RowWitness.topPrime 39581 },
  { lower := 40401, upper := 40417, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41020, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41832, witness := RowWitness.topPrime 41771 },
  { lower := 43940, upper := 44012, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44269, witness := RowWitness.topPrime 44207 },
  { lower := 44944, upper := 44979, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48070, witness := RowWitness.topPrime 47981 },
  { lower := 48071, upper := 48102, witness := RowWitness.topPrime 48049 },
  { lower := 48734, upper := 48757, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48823, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49219, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50499, witness := RowWitness.topPrime 50417 },
  { lower := 53371, upper := 53379, witness := RowWitness.topPrime 53359 },
  { lower := 55451, upper := 55530, witness := RowWitness.topPrime 55441 },
  { lower := 55531, upper := 55536, witness := RowWitness.topPrime 55529 },
  { lower := 56180, upper := 56258, witness := RowWitness.topPrime 56179 },
  { lower := 58619, upper := 58653, witness := RowWitness.topPrime 58613 },
  { lower := 59582, upper := 59625, witness := RowWitness.topPrime 59581 },
  { lower := 63948, upper := 63958, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65610, witness := RowWitness.topPrime 65521 },
  { lower := 65611, upper := 65622, witness := RowWitness.topPrime 65609 },
  { lower := 68651, upper := 68679, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68979, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73256, witness := RowWitness.topPrime 73189 },
  { lower := 85697, upper := 85772, witness := RowWitness.topPrime 85691 },
  { lower := 102973, upper := 102974, witness := RowWitness.topPrime 102967 },
  { lower := 117128, upper := 117202, witness := RowWitness.topPrime 117127 },
  { lower := 146410, upper := 146423, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 148966, witness := RowWitness.topPrime 148949 },
  { lower := 327701, upper := 327769, witness := RowWitness.topPrime 327689 }
]

def row090_layers : List CoverLayer := [
  { lower := 8010, upper := 16020, M := 28 },
  { lower := 16020, upper := 32040, M := 24 },
  { lower := 32040, upper := 64080, M := 20 },
  { lower := 64080, upper := 128160, M := 17 },
  { lower := 128160, upper := 256320, M := 15 },
  { lower := 256320, upper := 512640, M := 12 },
  { lower := 512640, upper := 1025280, M := 11 },
  { lower := 1025280, upper := 2050560, M := 9 },
  { lower := 2050560, upper := 4101120, M := 8 },
  { lower := 4101120, upper := 8202240, M := 7 },
  { lower := 8202240, upper := 16404480, M := 6 },
  { lower := 16404480, upper := 32808960, M := 5 },
  { lower := 32808960, upper := 65617920, M := 4 },
  { lower := 65617920, upper := 131235840, M := 4 },
  { lower := 131235840, upper := 262471680, M := 3 },
  { lower := 262471680, upper := 524943360, M := 3 },
  { lower := 524943360, upper := 1049886720, M := 2 },
  { lower := 1049886720, upper := 2099773440, M := 2 },
  { lower := 2099773440, upper := 4199546880, M := 2 },
  { lower := 4199546880, upper := 8399093760, M := 2 },
  { lower := 8399093760, upper := 10000000000, M := 1 }
]

def row090 : FiniteCoverRow := {
  height := row090_height,
  goods := row090_goods,
  layers := row090_layers
}

theorem row090_registered :
    decide (row090.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row090_goods_checked :
    row090.goods.all (goodSegmentCheck row090.height.i row090.height.r row090.height.s) = true := by
  decide +kernel

theorem row090_small_checked :
    coverCheck (2 * row090.height.i + 2) (row090.height.i * (row090.height.i - 1) - 1)
      (row090.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row090_layerCover_checked :
    coverCheck (row090.height.i * (row090.height.i - 1)) (row090.height.n0 - 1)
      (row090.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row090_layer000_checked :
    coverLayerCheck row090.height row090.goods { lower := 8010, upper := 16020, M := 28 } = true := by
  decide +kernel

theorem row090_layer001_checked :
    coverLayerCheck row090.height row090.goods { lower := 16020, upper := 32040, M := 24 } = true := by
  decide +kernel

theorem row090_layer002_checked :
    coverLayerCheck row090.height row090.goods { lower := 32040, upper := 64080, M := 20 } = true := by
  decide +kernel

theorem row090_layer003_checked :
    coverLayerCheck row090.height row090.goods { lower := 64080, upper := 128160, M := 17 } = true := by
  decide +kernel

theorem row090_layer004_checked :
    coverLayerCheck row090.height row090.goods { lower := 128160, upper := 256320, M := 15 } = true := by
  decide +kernel

theorem row090_layer005_checked :
    coverLayerCheck row090.height row090.goods { lower := 256320, upper := 512640, M := 12 } = true := by
  decide +kernel

theorem row090_layer006_checked :
    coverLayerCheck row090.height row090.goods { lower := 512640, upper := 1025280, M := 11 } = true := by
  decide +kernel

theorem row090_layer007_checked :
    coverLayerCheck row090.height row090.goods { lower := 1025280, upper := 2050560, M := 9 } = true := by
  decide +kernel

theorem row090_layer008_checked :
    coverLayerCheck row090.height row090.goods { lower := 2050560, upper := 4101120, M := 8 } = true := by
  decide +kernel

theorem row090_layer009_checked :
    coverLayerCheck row090.height row090.goods { lower := 4101120, upper := 8202240, M := 7 } = true := by
  decide +kernel

theorem row090_layer010_checked :
    coverLayerCheck row090.height row090.goods { lower := 8202240, upper := 16404480, M := 6 } = true := by
  decide +kernel

theorem row090_layer011_checked :
    coverLayerCheck row090.height row090.goods { lower := 16404480, upper := 32808960, M := 5 } = true := by
  decide +kernel

theorem row090_layer012_checked :
    coverLayerCheck row090.height row090.goods { lower := 32808960, upper := 65617920, M := 4 } = true := by
  decide +kernel

theorem row090_layer013_checked :
    coverLayerCheck row090.height row090.goods { lower := 65617920, upper := 131235840, M := 4 } = true := by
  decide +kernel

theorem row090_layer014_checked :
    coverLayerCheck row090.height row090.goods { lower := 131235840, upper := 262471680, M := 3 } = true := by
  decide +kernel

theorem row090_layer015_checked :
    coverLayerCheck row090.height row090.goods { lower := 262471680, upper := 524943360, M := 3 } = true := by
  decide +kernel

theorem row090_layer016_checked :
    coverLayerCheck row090.height row090.goods { lower := 524943360, upper := 1049886720, M := 2 } = true := by
  decide +kernel

theorem row090_layer017_checked :
    coverLayerCheck row090.height row090.goods { lower := 1049886720, upper := 2099773440, M := 2 } = true := by
  decide +kernel

theorem row090_layer018_checked :
    coverLayerCheck row090.height row090.goods { lower := 2099773440, upper := 4199546880, M := 2 } = true := by
  decide +kernel

theorem row090_layer019_checked :
    coverLayerCheck row090.height row090.goods { lower := 4199546880, upper := 8399093760, M := 2 } = true := by
  decide +kernel

theorem row090_layer020_checked :
    coverLayerCheck row090.height row090.goods { lower := 8399093760, upper := 10000000000, M := 1 } = true := by
  decide +kernel

theorem row090_layers_checked :
    row090.layers.all (coverLayerCheck row090.height row090.goods) = true := by
  change List.all [
    { lower := 8010, upper := 16020, M := 28 },
    { lower := 16020, upper := 32040, M := 24 },
    { lower := 32040, upper := 64080, M := 20 },
    { lower := 64080, upper := 128160, M := 17 },
    { lower := 128160, upper := 256320, M := 15 },
    { lower := 256320, upper := 512640, M := 12 },
    { lower := 512640, upper := 1025280, M := 11 },
    { lower := 1025280, upper := 2050560, M := 9 },
    { lower := 2050560, upper := 4101120, M := 8 },
    { lower := 4101120, upper := 8202240, M := 7 },
    { lower := 8202240, upper := 16404480, M := 6 },
    { lower := 16404480, upper := 32808960, M := 5 },
    { lower := 32808960, upper := 65617920, M := 4 },
    { lower := 65617920, upper := 131235840, M := 4 },
    { lower := 131235840, upper := 262471680, M := 3 },
    { lower := 262471680, upper := 524943360, M := 3 },
    { lower := 524943360, upper := 1049886720, M := 2 },
    { lower := 1049886720, upper := 2099773440, M := 2 },
    { lower := 2099773440, upper := 4199546880, M := 2 },
    { lower := 4199546880, upper := 8399093760, M := 2 },
    { lower := 8399093760, upper := 10000000000, M := 1 }
  ] (coverLayerCheck row090.height row090.goods) = true
  simp only [List.all_cons, List.all_nil,
    row090_layer000_checked,
    row090_layer001_checked,
    row090_layer002_checked,
    row090_layer003_checked,
    row090_layer004_checked,
    row090_layer005_checked,
    row090_layer006_checked,
    row090_layer007_checked,
    row090_layer008_checked,
    row090_layer009_checked,
    row090_layer010_checked,
    row090_layer011_checked,
    row090_layer012_checked,
    row090_layer013_checked,
    row090_layer014_checked,
    row090_layer015_checked,
    row090_layer016_checked,
    row090_layer017_checked,
    row090_layer018_checked,
    row090_layer019_checked,
    row090_layer020_checked,
    Bool.true_and]

theorem row090_checked : finiteCoverRowCheck row090 = true := by
  simp only [finiteCoverRowCheck, row090_registered, row090_goods_checked,
    row090_small_checked, row090_layerCover_checked, row090_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row090_checked

end B699LowIndex
