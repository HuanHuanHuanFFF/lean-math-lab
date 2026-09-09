import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row091_height : HeightCertificateDatum := { i := 91, r := 30, s := 63, n0Power10 := 10 }

def row091_goods : List GoodSegment := [
  { lower := 184, upper := 271, witness := RowWitness.topPrime 181 },
  { lower := 272, upper := 361, witness := RowWitness.topPrime 271 },
  { lower := 362, upper := 449, witness := RowWitness.topPrime 359 },
  { lower := 450, upper := 539, witness := RowWitness.topPrime 449 },
  { lower := 540, upper := 613, witness := RowWitness.topPrime 523 },
  { lower := 614, upper := 703, witness := RowWitness.topPrime 613 },
  { lower := 704, upper := 791, witness := RowWitness.topPrime 701 },
  { lower := 792, upper := 877, witness := RowWitness.topPrime 787 },
  { lower := 878, upper := 967, witness := RowWitness.topPrime 877 },
  { lower := 968, upper := 1057, witness := RowWitness.topPrime 967 },
  { lower := 1058, upper := 1141, witness := RowWitness.topPrime 1051 },
  { lower := 1142, upper := 1219, witness := RowWitness.topPrime 1129 },
  { lower := 1220, upper := 1307, witness := RowWitness.topPrime 1217 },
  { lower := 1308, upper := 1397, witness := RowWitness.topPrime 1307 },
  { lower := 1398, upper := 1471, witness := RowWitness.topPrime 1381 },
  { lower := 1472, upper := 1561, witness := RowWitness.topPrime 1471 },
  { lower := 1562, upper := 1649, witness := RowWitness.topPrime 1559 },
  { lower := 1650, upper := 1727, witness := RowWitness.topPrime 1637 },
  { lower := 1728, upper := 1813, witness := RowWitness.topPrime 1723 },
  { lower := 1814, upper := 1901, witness := RowWitness.topPrime 1811 },
  { lower := 1902, upper := 1991, witness := RowWitness.topPrime 1901 },
  { lower := 1992, upper := 2077, witness := RowWitness.topPrime 1987 },
  { lower := 2078, upper := 2159, witness := RowWitness.topPrime 2069 },
  { lower := 2160, upper := 2243, witness := RowWitness.topPrime 2153 },
  { lower := 2244, upper := 2333, witness := RowWitness.topPrime 2243 },
  { lower := 2334, upper := 2423, witness := RowWitness.topPrime 2333 },
  { lower := 2424, upper := 2513, witness := RowWitness.topPrime 2423 },
  { lower := 2514, upper := 2593, witness := RowWitness.topPrime 2503 },
  { lower := 2594, upper := 2683, witness := RowWitness.topPrime 2593 },
  { lower := 2684, upper := 2773, witness := RowWitness.topPrime 2683 },
  { lower := 2774, upper := 2857, witness := RowWitness.topPrime 2767 },
  { lower := 2858, upper := 2947, witness := RowWitness.topPrime 2857 },
  { lower := 2948, upper := 3029, witness := RowWitness.topPrime 2939 },
  { lower := 3030, upper := 3113, witness := RowWitness.topPrime 3023 },
  { lower := 3114, upper := 3199, witness := RowWitness.topPrime 3109 },
  { lower := 3200, upper := 3281, witness := RowWitness.topPrime 3191 },
  { lower := 3282, upper := 3361, witness := RowWitness.topPrime 3271 },
  { lower := 3362, upper := 3451, witness := RowWitness.topPrime 3361 },
  { lower := 3452, upper := 3539, witness := RowWitness.topPrime 3449 },
  { lower := 3540, upper := 3629, witness := RowWitness.topPrime 3539 },
  { lower := 3630, upper := 3713, witness := RowWitness.topPrime 3623 },
  { lower := 3714, upper := 3799, witness := RowWitness.topPrime 3709 },
  { lower := 3800, upper := 3887, witness := RowWitness.topPrime 3797 },
  { lower := 3888, upper := 3971, witness := RowWitness.topPrime 3881 },
  { lower := 3972, upper := 4057, witness := RowWitness.topPrime 3967 },
  { lower := 4058, upper := 4147, witness := RowWitness.topPrime 4057 },
  { lower := 4148, upper := 4229, witness := RowWitness.topPrime 4139 },
  { lower := 4230, upper := 4319, witness := RowWitness.topPrime 4229 },
  { lower := 4320, upper := 4387, witness := RowWitness.topPrime 4297 },
  { lower := 4388, upper := 4463, witness := RowWitness.topPrime 4373 },
  { lower := 4464, upper := 4553, witness := RowWitness.topPrime 4463 },
  { lower := 4554, upper := 4639, witness := RowWitness.topPrime 4549 },
  { lower := 4640, upper := 4729, witness := RowWitness.topPrime 4639 },
  { lower := 4730, upper := 4819, witness := RowWitness.topPrime 4729 },
  { lower := 4820, upper := 4907, witness := RowWitness.topPrime 4817 },
  { lower := 4908, upper := 4993, witness := RowWitness.topPrime 4903 },
  { lower := 4994, upper := 5083, witness := RowWitness.topPrime 4993 },
  { lower := 5084, upper := 5171, witness := RowWitness.topPrime 5081 },
  { lower := 5172, upper := 5261, witness := RowWitness.topPrime 5171 },
  { lower := 5262, upper := 5351, witness := RowWitness.topPrime 5261 },
  { lower := 5352, upper := 5441, witness := RowWitness.topPrime 5351 },
  { lower := 5442, upper := 5531, witness := RowWitness.topPrime 5441 },
  { lower := 5532, upper := 5621, witness := RowWitness.topPrime 5531 },
  { lower := 5622, upper := 5681, witness := RowWitness.topPrime 5591 },
  { lower := 5682, upper := 5759, witness := RowWitness.topPrime 5669 },
  { lower := 5760, upper := 5839, witness := RowWitness.topPrime 5749 },
  { lower := 5840, upper := 5929, witness := RowWitness.topPrime 5839 },
  { lower := 5930, upper := 6017, witness := RowWitness.topPrime 5927 },
  { lower := 6018, upper := 6101, witness := RowWitness.topPrime 6011 },
  { lower := 6102, upper := 6191, witness := RowWitness.topPrime 6101 },
  { lower := 6192, upper := 6263, witness := RowWitness.topPrime 6173 },
  { lower := 6264, upper := 6353, witness := RowWitness.topPrime 6263 },
  { lower := 6354, upper := 6443, witness := RowWitness.topPrime 6353 },
  { lower := 6444, upper := 6517, witness := RowWitness.topPrime 6427 },
  { lower := 6518, upper := 6581, witness := RowWitness.topPrime 6491 },
  { lower := 6582, upper := 6671, witness := RowWitness.topPrime 6581 },
  { lower := 6672, upper := 6751, witness := RowWitness.topPrime 6661 },
  { lower := 6752, upper := 6827, witness := RowWitness.topPrime 6737 },
  { lower := 6828, upper := 6917, witness := RowWitness.topPrime 6827 },
  { lower := 6918, upper := 7007, witness := RowWitness.topPrime 6917 },
  { lower := 7008, upper := 7091, witness := RowWitness.topPrime 7001 },
  { lower := 7092, upper := 7169, witness := RowWitness.topPrime 7079 },
  { lower := 7170, upper := 7249, witness := RowWitness.topPrime 7159 },
  { lower := 7250, upper := 7337, witness := RowWitness.topPrime 7247 },
  { lower := 7338, upper := 7423, witness := RowWitness.topPrime 7333 },
  { lower := 7424, upper := 7507, witness := RowWitness.topPrime 7417 },
  { lower := 7508, upper := 7597, witness := RowWitness.topPrime 7507 },
  { lower := 7598, upper := 7681, witness := RowWitness.topPrime 7591 },
  { lower := 7682, upper := 7771, witness := RowWitness.topPrime 7681 },
  { lower := 7772, upper := 7849, witness := RowWitness.topPrime 7759 },
  { lower := 7850, upper := 7931, witness := RowWitness.topPrime 7841 },
  { lower := 7932, upper := 8017, witness := RowWitness.topPrime 7927 },
  { lower := 8018, upper := 8107, witness := RowWitness.topPrime 8017 },
  { lower := 8108, upper := 8189, witness := RowWitness.topPrime 8101 },
  { lower := 8192, upper := 8281, witness := RowWitness.topPrime 8191 },
  { lower := 8282, upper := 8282, witness := RowWitness.topPrime 8273 },
  { lower := 8303, upper := 8304, witness := RowWitness.topPrime 8297 },
  { lower := 8410, upper := 8479, witness := RowWitness.topPrime 8389 },
  { lower := 8480, upper := 8517, witness := RowWitness.topPrime 8467 },
  { lower := 8664, upper := 8753, witness := RowWitness.topPrime 8663 },
  { lower := 8754, upper := 8840, witness := RowWitness.topPrime 8753 },
  { lower := 8993, upper := 9061, witness := RowWitness.topPrime 8971 },
  { lower := 9062, upper := 9083, witness := RowWitness.topPrime 9059 },
  { lower := 9245, upper := 9331, witness := RowWitness.topPrime 9241 },
  { lower := 9332, upper := 9341, witness := RowWitness.topPrime 9323 },
  { lower := 9375, upper := 9461, witness := RowWitness.topPrime 9371 },
  { lower := 9462, upper := 9465, witness := RowWitness.topPrime 9461 },
  { lower := 9522, upper := 9567, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9641, witness := RowWitness.topPrime 9551 },
  { lower := 9642, upper := 9673, witness := RowWitness.topPrime 9631 },
  { lower := 10051, upper := 10129, witness := RowWitness.topPrime 10039 },
  { lower := 10130, upper := 10176, witness := RowWitness.topPrime 10111 },
  { lower := 10240, upper := 10296, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10657, witness := RowWitness.topPrime 10567 },
  { lower := 10658, upper := 10738, witness := RowWitness.topPrime 10657 },
  { lower := 10935, upper := 10999, witness := RowWitness.topPrime 10909 },
  { lower := 11000, upper := 11025, witness := RowWitness.topPrime 10993 },
  { lower := 11094, upper := 11183, witness := RowWitness.topPrime 11093 },
  { lower := 11184, upper := 11199, witness := RowWitness.topPrime 11177 },
  { lower := 11236, upper := 11303, witness := RowWitness.topPrime 11213 },
  { lower := 11304, upper := 11340, witness := RowWitness.topPrime 11299 },
  { lower := 11664, upper := 11728, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11833, witness := RowWitness.topPrime 11743 },
  { lower := 11834, upper := 11864, witness := RowWitness.topPrime 11833 },
  { lower := 12321, upper := 12378, witness := RowWitness.topPrime 12301 },
  { lower := 12393, upper := 12411, witness := RowWitness.topPrime 12391 },
  { lower := 12482, upper := 12483, witness := RowWitness.topPrime 12479 },
  { lower := 12493, upper := 12581, witness := RowWitness.topPrime 12491 },
  { lower := 12582, upper := 12583, witness := RowWitness.topPrime 12577 },
  { lower := 12696, upper := 12705, witness := RowWitness.topPrime 12689 },
  { lower := 13125, upper := 13211, witness := RowWitness.topPrime 13121 },
  { lower := 13212, upper := 13212, witness := RowWitness.topPrime 13187 },
  { lower := 13254, upper := 13339, witness := RowWitness.topPrime 13249 },
  { lower := 13340, upper := 13400, witness := RowWitness.topPrime 13339 },
  { lower := 13454, upper := 13541, witness := RowWitness.topPrime 13451 },
  { lower := 13542, upper := 13546, witness := RowWitness.topPrime 13537 },
  { lower := 13718, upper := 13801, witness := RowWitness.topPrime 13711 },
  { lower := 13802, upper := 13844, witness := RowWitness.topPrime 13799 },
  { lower := 13851, upper := 13868, witness := RowWitness.topPrime 13841 },
  { lower := 13924, upper := 13941, witness := RowWitness.topPrime 13921 },
  { lower := 14336, upper := 14417, witness := RowWitness.topPrime 14327 },
  { lower := 14418, upper := 14465, witness := RowWitness.topPrime 14411 },
  { lower := 14641, upper := 14670, witness := RowWitness.topPrime 14639 },
  { lower := 14792, upper := 14829, witness := RowWitness.topPrime 14783 },
  { lower := 15059, upper := 15090, witness := RowWitness.topPrime 15053 },
  { lower := 15123, upper := 15211, witness := RowWitness.topPrime 15121 },
  { lower := 15212, upper := 15219, witness := RowWitness.topPrime 15199 },
  { lower := 15360, upper := 15449, witness := RowWitness.topPrime 15359 },
  { lower := 15450, upper := 15450, witness := RowWitness.topPrime 15443 },
  { lower := 15463, upper := 15466, witness := RowWitness.topPrime 15461 },
  { lower := 15979, upper := 16063, witness := RowWitness.topPrime 15973 },
  { lower := 16064, upper := 16077, witness := RowWitness.topPrime 16063 },
  { lower := 16337, upper := 16340, witness := RowWitness.topPrime 16333 },
  { lower := 16384, upper := 16471, witness := RowWitness.topPrime 16381 },
  { lower := 16472, upper := 16474, witness := RowWitness.topPrime 16453 },
  { lower := 16810, upper := 16877, witness := RowWitness.topPrime 16787 },
  { lower := 16878, upper := 16910, witness := RowWitness.topPrime 16871 },
  { lower := 17303, upper := 17388, witness := RowWitness.topPrime 17299 },
  { lower := 17408, upper := 17491, witness := RowWitness.topPrime 17401 },
  { lower := 17492, upper := 17498, witness := RowWitness.topPrime 17491 },
  { lower := 17672, upper := 17751, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18571, witness := RowWitness.topPrime 18481 },
  { lower := 18572, upper := 18581, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18695, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18724, witness := RowWitness.topPrime 18719 },
  { lower := 18750, upper := 18813, witness := RowWitness.topPrime 18749 },
  { lower := 19220, upper := 19256, witness := RowWitness.topPrime 19219 },
  { lower := 19663, upper := 19751, witness := RowWitness.topPrime 19661 },
  { lower := 19752, upper := 19753, witness := RowWitness.topPrime 19751 },
  { lower := 19965, upper := 19971, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20251, witness := RowWitness.topPrime 20161 },
  { lower := 20252, upper := 20262, witness := RowWitness.topPrime 20249 },
  { lower := 20535, upper := 20570, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20625, witness := RowWitness.topPrime 20563 },
  { lower := 20667, upper := 20667, witness := RowWitness.topPrime 20663 },
  { lower := 21316, upper := 21386, witness := RowWitness.topPrime 21313 },
  { lower := 21870, upper := 21953, witness := RowWitness.topPrime 21863 },
  { lower := 21954, upper := 21965, witness := RowWitness.topPrime 21943 },
  { lower := 22472, upper := 22559, witness := RowWitness.topPrime 22469 },
  { lower := 22560, upper := 22562, witness := RowWitness.topPrime 22549 },
  { lower := 24037, upper := 24048, witness := RowWitness.topPrime 24029 },
  { lower := 24057, upper := 24127, witness := RowWitness.topPrime 24049 },
  { lower := 24334, upper := 24419, witness := RowWitness.topPrime 24329 },
  { lower := 24420, upper := 24457, witness := RowWitness.topPrime 24419 },
  { lower := 24576, upper := 24661, witness := RowWitness.topPrime 24571 },
  { lower := 24662, upper := 24666, witness := RowWitness.topPrime 24659 },
  { lower := 25000, upper := 25054, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25279, witness := RowWitness.topPrime 25189 },
  { lower := 25280, upper := 25351, witness := RowWitness.topPrime 25261 },
  { lower := 25352, upper := 25371, witness := RowWitness.topPrime 25349 },
  { lower := 26047, upper := 26101, witness := RowWitness.topPrime 26041 },
  { lower := 26624, upper := 26687, witness := RowWitness.topPrime 26597 },
  { lower := 26688, upper := 26714, witness := RowWitness.topPrime 26687 },
  { lower := 26934, upper := 26986, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27470, witness := RowWitness.topPrime 27431 },
  { lower := 28125, upper := 28180, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28651, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28801, witness := RowWitness.topPrime 28711 },
  { lower := 28802, upper := 28807, witness := RowWitness.topPrime 28793 },
  { lower := 29791, upper := 29858, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30336, witness := RowWitness.topPrime 30253 },
  { lower := 30926, upper := 30989, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31295, witness := RowWitness.topPrime 31249 },
  { lower := 31329, upper := 31340, witness := RowWitness.topPrime 31327 },
  { lower := 31433, upper := 31487, witness := RowWitness.topPrime 31397 },
  { lower := 31488, upper := 31513, witness := RowWitness.topPrime 31481 },
  { lower := 31974, upper := 32029, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32858, witness := RowWitness.topPrime 32803 },
  { lower := 34375, upper := 34385, witness := RowWitness.topPrime 34369 },
  { lower := 34391, upper := 34471, witness := RowWitness.topPrime 34381 },
  { lower := 34472, upper := 34481, witness := RowWitness.topPrime 34471 },
  { lower := 34816, upper := 34897, witness := RowWitness.topPrime 34807 },
  { lower := 34898, upper := 34900, witness := RowWitness.topPrime 34897 },
  { lower := 35344, upper := 35377, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36587, witness := RowWitness.topPrime 36497 },
  { lower := 36588, upper := 36591, witness := RowWitness.topPrime 36587 },
  { lower := 37210, upper := 37269, witness := RowWitness.topPrime 37201 },
  { lower := 37500, upper := 37536, witness := RowWitness.topPrime 37493 },
  { lower := 37553, upper := 37590, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39413, witness := RowWitness.topPrime 39323 },
  { lower := 39414, upper := 39416, witness := RowWitness.topPrime 39409 },
  { lower := 40401, upper := 40418, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41021, witness := RowWitness.topPrime 40949 },
  { lower := 43750, upper := 43777, witness := RowWitness.topPrime 43721 },
  { lower := 44944, upper := 44980, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48051, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48758, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48824, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49220, witness := RowWitness.topPrime 49139 },
  { lower := 50000, upper := 50018, witness := RowWitness.topPrime 49999 },
  { lower := 53290, upper := 53338, witness := RowWitness.topPrime 53281 },
  { lower := 53371, upper := 53380, witness := RowWitness.topPrime 53359 },
  { lower := 55451, upper := 55531, witness := RowWitness.topPrime 55441 },
  { lower := 55532, upper := 55537, witness := RowWitness.topPrime 55529 },
  { lower := 56250, upper := 56259, witness := RowWitness.topPrime 56249 },
  { lower := 58619, upper := 58654, witness := RowWitness.topPrime 58613 },
  { lower := 59582, upper := 59626, witness := RowWitness.topPrime 59581 },
  { lower := 62500, upper := 62500, witness := RowWitness.topPrime 62497 },
  { lower := 63948, upper := 63959, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65611, witness := RowWitness.topPrime 65521 },
  { lower := 65612, upper := 65626, witness := RowWitness.topPrime 65609 },
  { lower := 68651, upper := 68680, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68980, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73257, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73785, witness := RowWitness.topPrime 73727 },
  { lower := 85293, upper := 85349, witness := RowWitness.topPrime 85259 },
  { lower := 85350, upper := 85354, witness := RowWitness.topPrime 85333 },
  { lower := 102973, upper := 102975, witness := RowWitness.topPrime 102967 },
  { lower := 137842, upper := 137871, witness := RowWitness.topPrime 137831 },
  { lower := 146410, upper := 146424, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 148967, witness := RowWitness.topPrime 148949 },
  { lower := 327701, upper := 327770, witness := RowWitness.topPrime 327689 }
]

def row091_layers : List CoverLayer := [
  { lower := 8190, upper := 16380, M := 26 },
  { lower := 16380, upper := 32760, M := 22 },
  { lower := 32760, upper := 65520, M := 19 },
  { lower := 65520, upper := 131040, M := 16 },
  { lower := 131040, upper := 262080, M := 13 },
  { lower := 262080, upper := 524160, M := 11 },
  { lower := 524160, upper := 1048320, M := 9 },
  { lower := 1048320, upper := 2096640, M := 8 },
  { lower := 2096640, upper := 4193280, M := 7 },
  { lower := 4193280, upper := 8386560, M := 6 },
  { lower := 8386560, upper := 16773120, M := 5 },
  { lower := 16773120, upper := 33546240, M := 4 },
  { lower := 33546240, upper := 67092480, M := 4 },
  { lower := 67092480, upper := 134184960, M := 3 },
  { lower := 134184960, upper := 268369920, M := 3 },
  { lower := 268369920, upper := 536739840, M := 2 },
  { lower := 536739840, upper := 1073479680, M := 2 },
  { lower := 1073479680, upper := 2146959360, M := 2 },
  { lower := 2146959360, upper := 4293918720, M := 2 },
  { lower := 4293918720, upper := 8587837440, M := 1 },
  { lower := 8587837440, upper := 10000000000, M := 1 }
]

def row091 : FiniteCoverRow := {
  height := row091_height,
  goods := row091_goods,
  layers := row091_layers
}

theorem row091_registered :
    decide (row091.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row091_goods_checked :
    row091.goods.all (goodSegmentCheck row091.height.i row091.height.r row091.height.s) = true := by
  decide +kernel

theorem row091_small_checked :
    coverCheck (2 * row091.height.i + 2) (row091.height.i * (row091.height.i - 1) - 1)
      (row091.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row091_layerCover_checked :
    coverCheck (row091.height.i * (row091.height.i - 1)) (row091.height.n0 - 1)
      (row091.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row091_layer000_checked :
    coverLayerCheck row091.height row091.goods { lower := 8190, upper := 16380, M := 26 } = true := by
  decide +kernel

theorem row091_layer001_checked :
    coverLayerCheck row091.height row091.goods { lower := 16380, upper := 32760, M := 22 } = true := by
  decide +kernel

theorem row091_layer002_checked :
    coverLayerCheck row091.height row091.goods { lower := 32760, upper := 65520, M := 19 } = true := by
  decide +kernel

theorem row091_layer003_checked :
    coverLayerCheck row091.height row091.goods { lower := 65520, upper := 131040, M := 16 } = true := by
  decide +kernel

theorem row091_layer004_checked :
    coverLayerCheck row091.height row091.goods { lower := 131040, upper := 262080, M := 13 } = true := by
  decide +kernel

theorem row091_layer005_checked :
    coverLayerCheck row091.height row091.goods { lower := 262080, upper := 524160, M := 11 } = true := by
  decide +kernel

theorem row091_layer006_checked :
    coverLayerCheck row091.height row091.goods { lower := 524160, upper := 1048320, M := 9 } = true := by
  decide +kernel

theorem row091_layer007_checked :
    coverLayerCheck row091.height row091.goods { lower := 1048320, upper := 2096640, M := 8 } = true := by
  decide +kernel

theorem row091_layer008_checked :
    coverLayerCheck row091.height row091.goods { lower := 2096640, upper := 4193280, M := 7 } = true := by
  decide +kernel

theorem row091_layer009_checked :
    coverLayerCheck row091.height row091.goods { lower := 4193280, upper := 8386560, M := 6 } = true := by
  decide +kernel

theorem row091_layer010_checked :
    coverLayerCheck row091.height row091.goods { lower := 8386560, upper := 16773120, M := 5 } = true := by
  decide +kernel

theorem row091_layer011_checked :
    coverLayerCheck row091.height row091.goods { lower := 16773120, upper := 33546240, M := 4 } = true := by
  decide +kernel

theorem row091_layer012_checked :
    coverLayerCheck row091.height row091.goods { lower := 33546240, upper := 67092480, M := 4 } = true := by
  decide +kernel

theorem row091_layer013_checked :
    coverLayerCheck row091.height row091.goods { lower := 67092480, upper := 134184960, M := 3 } = true := by
  decide +kernel

theorem row091_layer014_checked :
    coverLayerCheck row091.height row091.goods { lower := 134184960, upper := 268369920, M := 3 } = true := by
  decide +kernel

theorem row091_layer015_checked :
    coverLayerCheck row091.height row091.goods { lower := 268369920, upper := 536739840, M := 2 } = true := by
  decide +kernel

theorem row091_layer016_checked :
    coverLayerCheck row091.height row091.goods { lower := 536739840, upper := 1073479680, M := 2 } = true := by
  decide +kernel

theorem row091_layer017_checked :
    coverLayerCheck row091.height row091.goods { lower := 1073479680, upper := 2146959360, M := 2 } = true := by
  decide +kernel

theorem row091_layer018_checked :
    coverLayerCheck row091.height row091.goods { lower := 2146959360, upper := 4293918720, M := 2 } = true := by
  decide +kernel

theorem row091_layer019_checked :
    coverLayerCheck row091.height row091.goods { lower := 4293918720, upper := 8587837440, M := 1 } = true := by
  decide +kernel

theorem row091_layer020_checked :
    coverLayerCheck row091.height row091.goods { lower := 8587837440, upper := 10000000000, M := 1 } = true := by
  decide +kernel

theorem row091_layers_checked :
    row091.layers.all (coverLayerCheck row091.height row091.goods) = true := by
  change List.all [
    { lower := 8190, upper := 16380, M := 26 },
    { lower := 16380, upper := 32760, M := 22 },
    { lower := 32760, upper := 65520, M := 19 },
    { lower := 65520, upper := 131040, M := 16 },
    { lower := 131040, upper := 262080, M := 13 },
    { lower := 262080, upper := 524160, M := 11 },
    { lower := 524160, upper := 1048320, M := 9 },
    { lower := 1048320, upper := 2096640, M := 8 },
    { lower := 2096640, upper := 4193280, M := 7 },
    { lower := 4193280, upper := 8386560, M := 6 },
    { lower := 8386560, upper := 16773120, M := 5 },
    { lower := 16773120, upper := 33546240, M := 4 },
    { lower := 33546240, upper := 67092480, M := 4 },
    { lower := 67092480, upper := 134184960, M := 3 },
    { lower := 134184960, upper := 268369920, M := 3 },
    { lower := 268369920, upper := 536739840, M := 2 },
    { lower := 536739840, upper := 1073479680, M := 2 },
    { lower := 1073479680, upper := 2146959360, M := 2 },
    { lower := 2146959360, upper := 4293918720, M := 2 },
    { lower := 4293918720, upper := 8587837440, M := 1 },
    { lower := 8587837440, upper := 10000000000, M := 1 }
  ] (coverLayerCheck row091.height row091.goods) = true
  simp only [List.all_cons, List.all_nil,
    row091_layer000_checked,
    row091_layer001_checked,
    row091_layer002_checked,
    row091_layer003_checked,
    row091_layer004_checked,
    row091_layer005_checked,
    row091_layer006_checked,
    row091_layer007_checked,
    row091_layer008_checked,
    row091_layer009_checked,
    row091_layer010_checked,
    row091_layer011_checked,
    row091_layer012_checked,
    row091_layer013_checked,
    row091_layer014_checked,
    row091_layer015_checked,
    row091_layer016_checked,
    row091_layer017_checked,
    row091_layer018_checked,
    row091_layer019_checked,
    row091_layer020_checked,
    Bool.true_and]

theorem row091_checked : finiteCoverRowCheck row091 = true := by
  simp only [finiteCoverRowCheck, row091_registered, row091_goods_checked,
    row091_small_checked, row091_layerCover_checked, row091_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row091_checked

end B699LowIndex
