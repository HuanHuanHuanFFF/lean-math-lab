import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_good000_checked :
    goodSegmentCheck 91 30 63
      { lower := 184, upper := 271, witness := RowWitness.topPrime 181 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good001_checked :
    goodSegmentCheck 91 30 63
      { lower := 272, upper := 361, witness := RowWitness.topPrime 271 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good002_checked :
    goodSegmentCheck 91 30 63
      { lower := 362, upper := 449, witness := RowWitness.topPrime 359 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good003_checked :
    goodSegmentCheck 91 30 63
      { lower := 450, upper := 539, witness := RowWitness.topPrime 449 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good004_checked :
    goodSegmentCheck 91 30 63
      { lower := 540, upper := 613, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good005_checked :
    goodSegmentCheck 91 30 63
      { lower := 614, upper := 703, witness := RowWitness.topPrime 613 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good006_checked :
    goodSegmentCheck 91 30 63
      { lower := 704, upper := 791, witness := RowWitness.topPrime 701 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good007_checked :
    goodSegmentCheck 91 30 63
      { lower := 792, upper := 877, witness := RowWitness.topPrime 787 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good008_checked :
    goodSegmentCheck 91 30 63
      { lower := 878, upper := 967, witness := RowWitness.topPrime 877 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good009_checked :
    goodSegmentCheck 91 30 63
      { lower := 968, upper := 1057, witness := RowWitness.topPrime 967 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good010_checked :
    goodSegmentCheck 91 30 63
      { lower := 1058, upper := 1141, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good011_checked :
    goodSegmentCheck 91 30 63
      { lower := 1142, upper := 1219, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good012_checked :
    goodSegmentCheck 91 30 63
      { lower := 1220, upper := 1307, witness := RowWitness.topPrime 1217 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good013_checked :
    goodSegmentCheck 91 30 63
      { lower := 1308, upper := 1397, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good014_checked :
    goodSegmentCheck 91 30 63
      { lower := 1398, upper := 1471, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good015_checked :
    goodSegmentCheck 91 30 63
      { lower := 1472, upper := 1561, witness := RowWitness.topPrime 1471 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_good016_checked :
    goodSegmentCheck 91 30 63
      { lower := 1562, upper := 1649, witness := RowWitness.topPrime 1559 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good017_checked :
    goodSegmentCheck 91 30 63
      { lower := 1650, upper := 1727, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good018_checked :
    goodSegmentCheck 91 30 63
      { lower := 1728, upper := 1813, witness := RowWitness.topPrime 1723 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good019_checked :
    goodSegmentCheck 91 30 63
      { lower := 1814, upper := 1901, witness := RowWitness.topPrime 1811 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good020_checked :
    goodSegmentCheck 91 30 63
      { lower := 1902, upper := 1991, witness := RowWitness.topPrime 1901 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good021_checked :
    goodSegmentCheck 91 30 63
      { lower := 1992, upper := 2077, witness := RowWitness.topPrime 1987 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good022_checked :
    goodSegmentCheck 91 30 63
      { lower := 2078, upper := 2159, witness := RowWitness.topPrime 2069 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good023_checked :
    goodSegmentCheck 91 30 63
      { lower := 2160, upper := 2243, witness := RowWitness.topPrime 2153 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good024_checked :
    goodSegmentCheck 91 30 63
      { lower := 2244, upper := 2333, witness := RowWitness.topPrime 2243 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good025_checked :
    goodSegmentCheck 91 30 63
      { lower := 2334, upper := 2423, witness := RowWitness.topPrime 2333 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good026_checked :
    goodSegmentCheck 91 30 63
      { lower := 2424, upper := 2513, witness := RowWitness.topPrime 2423 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good027_checked :
    goodSegmentCheck 91 30 63
      { lower := 2514, upper := 2593, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good028_checked :
    goodSegmentCheck 91 30 63
      { lower := 2594, upper := 2683, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good029_checked :
    goodSegmentCheck 91 30 63
      { lower := 2684, upper := 2773, witness := RowWitness.topPrime 2683 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good030_checked :
    goodSegmentCheck 91 30 63
      { lower := 2774, upper := 2857, witness := RowWitness.topPrime 2767 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good031_checked :
    goodSegmentCheck 91 30 63
      { lower := 2858, upper := 2947, witness := RowWitness.topPrime 2857 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_good032_checked :
    goodSegmentCheck 91 30 63
      { lower := 2948, upper := 3029, witness := RowWitness.topPrime 2939 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good033_checked :
    goodSegmentCheck 91 30 63
      { lower := 3030, upper := 3113, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good034_checked :
    goodSegmentCheck 91 30 63
      { lower := 3114, upper := 3199, witness := RowWitness.topPrime 3109 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good035_checked :
    goodSegmentCheck 91 30 63
      { lower := 3200, upper := 3281, witness := RowWitness.topPrime 3191 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good036_checked :
    goodSegmentCheck 91 30 63
      { lower := 3282, upper := 3361, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good037_checked :
    goodSegmentCheck 91 30 63
      { lower := 3362, upper := 3451, witness := RowWitness.topPrime 3361 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good038_checked :
    goodSegmentCheck 91 30 63
      { lower := 3452, upper := 3539, witness := RowWitness.topPrime 3449 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good039_checked :
    goodSegmentCheck 91 30 63
      { lower := 3540, upper := 3629, witness := RowWitness.topPrime 3539 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good040_checked :
    goodSegmentCheck 91 30 63
      { lower := 3630, upper := 3713, witness := RowWitness.topPrime 3623 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good041_checked :
    goodSegmentCheck 91 30 63
      { lower := 3714, upper := 3799, witness := RowWitness.topPrime 3709 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good042_checked :
    goodSegmentCheck 91 30 63
      { lower := 3800, upper := 3887, witness := RowWitness.topPrime 3797 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good043_checked :
    goodSegmentCheck 91 30 63
      { lower := 3888, upper := 3971, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good044_checked :
    goodSegmentCheck 91 30 63
      { lower := 3972, upper := 4057, witness := RowWitness.topPrime 3967 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good045_checked :
    goodSegmentCheck 91 30 63
      { lower := 4058, upper := 4147, witness := RowWitness.topPrime 4057 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good046_checked :
    goodSegmentCheck 91 30 63
      { lower := 4148, upper := 4229, witness := RowWitness.topPrime 4139 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good047_checked :
    goodSegmentCheck 91 30 63
      { lower := 4230, upper := 4319, witness := RowWitness.topPrime 4229 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_good048_checked :
    goodSegmentCheck 91 30 63
      { lower := 4320, upper := 4387, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good049_checked :
    goodSegmentCheck 91 30 63
      { lower := 4388, upper := 4463, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good050_checked :
    goodSegmentCheck 91 30 63
      { lower := 4464, upper := 4553, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good051_checked :
    goodSegmentCheck 91 30 63
      { lower := 4554, upper := 4639, witness := RowWitness.topPrime 4549 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good052_checked :
    goodSegmentCheck 91 30 63
      { lower := 4640, upper := 4729, witness := RowWitness.topPrime 4639 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good053_checked :
    goodSegmentCheck 91 30 63
      { lower := 4730, upper := 4819, witness := RowWitness.topPrime 4729 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good054_checked :
    goodSegmentCheck 91 30 63
      { lower := 4820, upper := 4907, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good055_checked :
    goodSegmentCheck 91 30 63
      { lower := 4908, upper := 4993, witness := RowWitness.topPrime 4903 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good056_checked :
    goodSegmentCheck 91 30 63
      { lower := 4994, upper := 5083, witness := RowWitness.topPrime 4993 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good057_checked :
    goodSegmentCheck 91 30 63
      { lower := 5084, upper := 5171, witness := RowWitness.topPrime 5081 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good058_checked :
    goodSegmentCheck 91 30 63
      { lower := 5172, upper := 5261, witness := RowWitness.topPrime 5171 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good059_checked :
    goodSegmentCheck 91 30 63
      { lower := 5262, upper := 5351, witness := RowWitness.topPrime 5261 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good060_checked :
    goodSegmentCheck 91 30 63
      { lower := 5352, upper := 5441, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good061_checked :
    goodSegmentCheck 91 30 63
      { lower := 5442, upper := 5531, witness := RowWitness.topPrime 5441 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good062_checked :
    goodSegmentCheck 91 30 63
      { lower := 5532, upper := 5621, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good063_checked :
    goodSegmentCheck 91 30 63
      { lower := 5622, upper := 5681, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_good064_checked :
    goodSegmentCheck 91 30 63
      { lower := 5682, upper := 5759, witness := RowWitness.topPrime 5669 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good065_checked :
    goodSegmentCheck 91 30 63
      { lower := 5760, upper := 5839, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good066_checked :
    goodSegmentCheck 91 30 63
      { lower := 5840, upper := 5929, witness := RowWitness.topPrime 5839 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good067_checked :
    goodSegmentCheck 91 30 63
      { lower := 5930, upper := 6017, witness := RowWitness.topPrime 5927 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good068_checked :
    goodSegmentCheck 91 30 63
      { lower := 6018, upper := 6101, witness := RowWitness.topPrime 6011 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good069_checked :
    goodSegmentCheck 91 30 63
      { lower := 6102, upper := 6191, witness := RowWitness.topPrime 6101 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good070_checked :
    goodSegmentCheck 91 30 63
      { lower := 6192, upper := 6263, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good071_checked :
    goodSegmentCheck 91 30 63
      { lower := 6264, upper := 6353, witness := RowWitness.topPrime 6263 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good072_checked :
    goodSegmentCheck 91 30 63
      { lower := 6354, upper := 6443, witness := RowWitness.topPrime 6353 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good073_checked :
    goodSegmentCheck 91 30 63
      { lower := 6444, upper := 6517, witness := RowWitness.topPrime 6427 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good074_checked :
    goodSegmentCheck 91 30 63
      { lower := 6518, upper := 6581, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good075_checked :
    goodSegmentCheck 91 30 63
      { lower := 6582, upper := 6671, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good076_checked :
    goodSegmentCheck 91 30 63
      { lower := 6672, upper := 6751, witness := RowWitness.topPrime 6661 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good077_checked :
    goodSegmentCheck 91 30 63
      { lower := 6752, upper := 6827, witness := RowWitness.topPrime 6737 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good078_checked :
    goodSegmentCheck 91 30 63
      { lower := 6828, upper := 6917, witness := RowWitness.topPrime 6827 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good079_checked :
    goodSegmentCheck 91 30 63
      { lower := 6918, upper := 7007, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_good080_checked :
    goodSegmentCheck 91 30 63
      { lower := 7008, upper := 7091, witness := RowWitness.topPrime 7001 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good081_checked :
    goodSegmentCheck 91 30 63
      { lower := 7092, upper := 7169, witness := RowWitness.topPrime 7079 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good082_checked :
    goodSegmentCheck 91 30 63
      { lower := 7170, upper := 7249, witness := RowWitness.topPrime 7159 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good083_checked :
    goodSegmentCheck 91 30 63
      { lower := 7250, upper := 7337, witness := RowWitness.topPrime 7247 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good084_checked :
    goodSegmentCheck 91 30 63
      { lower := 7338, upper := 7423, witness := RowWitness.topPrime 7333 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good085_checked :
    goodSegmentCheck 91 30 63
      { lower := 7424, upper := 7507, witness := RowWitness.topPrime 7417 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good086_checked :
    goodSegmentCheck 91 30 63
      { lower := 7508, upper := 7597, witness := RowWitness.topPrime 7507 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good087_checked :
    goodSegmentCheck 91 30 63
      { lower := 7598, upper := 7681, witness := RowWitness.topPrime 7591 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good088_checked :
    goodSegmentCheck 91 30 63
      { lower := 7682, upper := 7771, witness := RowWitness.topPrime 7681 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good089_checked :
    goodSegmentCheck 91 30 63
      { lower := 7772, upper := 7849, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good090_checked :
    goodSegmentCheck 91 30 63
      { lower := 7850, upper := 7931, witness := RowWitness.topPrime 7841 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good091_checked :
    goodSegmentCheck 91 30 63
      { lower := 7932, upper := 8017, witness := RowWitness.topPrime 7927 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good092_checked :
    goodSegmentCheck 91 30 63
      { lower := 8018, upper := 8107, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good093_checked :
    goodSegmentCheck 91 30 63
      { lower := 8108, upper := 8189, witness := RowWitness.topPrime 8101 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good094_checked :
    goodSegmentCheck 91 30 63
      { lower := 8192, upper := 8281, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good095_checked :
    goodSegmentCheck 91 30 63
      { lower := 8282, upper := 8282, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_good096_checked :
    goodSegmentCheck 91 30 63
      { lower := 8303, upper := 8304, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good097_checked :
    goodSegmentCheck 91 30 63
      { lower := 8410, upper := 8479, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good098_checked :
    goodSegmentCheck 91 30 63
      { lower := 8480, upper := 8517, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good099_checked :
    goodSegmentCheck 91 30 63
      { lower := 8664, upper := 8753, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good100_checked :
    goodSegmentCheck 91 30 63
      { lower := 8754, upper := 8840, witness := RowWitness.topPrime 8753 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good101_checked :
    goodSegmentCheck 91 30 63
      { lower := 8993, upper := 9061, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good102_checked :
    goodSegmentCheck 91 30 63
      { lower := 9062, upper := 9083, witness := RowWitness.topPrime 9059 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good103_checked :
    goodSegmentCheck 91 30 63
      { lower := 9245, upper := 9331, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good104_checked :
    goodSegmentCheck 91 30 63
      { lower := 9332, upper := 9341, witness := RowWitness.topPrime 9323 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good105_checked :
    goodSegmentCheck 91 30 63
      { lower := 9375, upper := 9461, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good106_checked :
    goodSegmentCheck 91 30 63
      { lower := 9462, upper := 9465, witness := RowWitness.topPrime 9461 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good107_checked :
    goodSegmentCheck 91 30 63
      { lower := 9522, upper := 9567, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good108_checked :
    goodSegmentCheck 91 30 63
      { lower := 9583, upper := 9641, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good109_checked :
    goodSegmentCheck 91 30 63
      { lower := 9642, upper := 9673, witness := RowWitness.topPrime 9631 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good110_checked :
    goodSegmentCheck 91 30 63
      { lower := 10051, upper := 10129, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good111_checked :
    goodSegmentCheck 91 30 63
      { lower := 10130, upper := 10176, witness := RowWitness.topPrime 10111 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_good112_checked :
    goodSegmentCheck 91 30 63
      { lower := 10240, upper := 10296, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good113_checked :
    goodSegmentCheck 91 30 63
      { lower := 10580, upper := 10657, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good114_checked :
    goodSegmentCheck 91 30 63
      { lower := 10658, upper := 10738, witness := RowWitness.topPrime 10657 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good115_checked :
    goodSegmentCheck 91 30 63
      { lower := 10935, upper := 10999, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good116_checked :
    goodSegmentCheck 91 30 63
      { lower := 11000, upper := 11025, witness := RowWitness.topPrime 10993 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good117_checked :
    goodSegmentCheck 91 30 63
      { lower := 11094, upper := 11183, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good118_checked :
    goodSegmentCheck 91 30 63
      { lower := 11184, upper := 11199, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good119_checked :
    goodSegmentCheck 91 30 63
      { lower := 11236, upper := 11303, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good120_checked :
    goodSegmentCheck 91 30 63
      { lower := 11304, upper := 11340, witness := RowWitness.topPrime 11299 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good121_checked :
    goodSegmentCheck 91 30 63
      { lower := 11664, upper := 11728, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good122_checked :
    goodSegmentCheck 91 30 63
      { lower := 11774, upper := 11833, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good123_checked :
    goodSegmentCheck 91 30 63
      { lower := 11834, upper := 11864, witness := RowWitness.topPrime 11833 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good124_checked :
    goodSegmentCheck 91 30 63
      { lower := 12321, upper := 12378, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good125_checked :
    goodSegmentCheck 91 30 63
      { lower := 12393, upper := 12411, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good126_checked :
    goodSegmentCheck 91 30 63
      { lower := 12482, upper := 12483, witness := RowWitness.topPrime 12479 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good127_checked :
    goodSegmentCheck 91 30 63
      { lower := 12493, upper := 12581, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_good128_checked :
    goodSegmentCheck 91 30 63
      { lower := 12582, upper := 12583, witness := RowWitness.topPrime 12577 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good129_checked :
    goodSegmentCheck 91 30 63
      { lower := 12696, upper := 12705, witness := RowWitness.topPrime 12689 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good130_checked :
    goodSegmentCheck 91 30 63
      { lower := 13125, upper := 13211, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good131_checked :
    goodSegmentCheck 91 30 63
      { lower := 13212, upper := 13212, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good132_checked :
    goodSegmentCheck 91 30 63
      { lower := 13254, upper := 13339, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good133_checked :
    goodSegmentCheck 91 30 63
      { lower := 13340, upper := 13400, witness := RowWitness.topPrime 13339 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good134_checked :
    goodSegmentCheck 91 30 63
      { lower := 13454, upper := 13541, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good135_checked :
    goodSegmentCheck 91 30 63
      { lower := 13542, upper := 13546, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good136_checked :
    goodSegmentCheck 91 30 63
      { lower := 13718, upper := 13801, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good137_checked :
    goodSegmentCheck 91 30 63
      { lower := 13802, upper := 13844, witness := RowWitness.topPrime 13799 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good138_checked :
    goodSegmentCheck 91 30 63
      { lower := 13851, upper := 13868, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good139_checked :
    goodSegmentCheck 91 30 63
      { lower := 13924, upper := 13941, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good140_checked :
    goodSegmentCheck 91 30 63
      { lower := 14336, upper := 14417, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good141_checked :
    goodSegmentCheck 91 30 63
      { lower := 14418, upper := 14465, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good142_checked :
    goodSegmentCheck 91 30 63
      { lower := 14641, upper := 14670, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good143_checked :
    goodSegmentCheck 91 30 63
      { lower := 14792, upper := 14829, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_good144_checked :
    goodSegmentCheck 91 30 63
      { lower := 15059, upper := 15090, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good145_checked :
    goodSegmentCheck 91 30 63
      { lower := 15123, upper := 15211, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good146_checked :
    goodSegmentCheck 91 30 63
      { lower := 15212, upper := 15219, witness := RowWitness.topPrime 15199 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good147_checked :
    goodSegmentCheck 91 30 63
      { lower := 15360, upper := 15449, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good148_checked :
    goodSegmentCheck 91 30 63
      { lower := 15450, upper := 15450, witness := RowWitness.topPrime 15443 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good149_checked :
    goodSegmentCheck 91 30 63
      { lower := 15463, upper := 15466, witness := RowWitness.topPrime 15461 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good150_checked :
    goodSegmentCheck 91 30 63
      { lower := 15979, upper := 16063, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good151_checked :
    goodSegmentCheck 91 30 63
      { lower := 16064, upper := 16077, witness := RowWitness.topPrime 16063 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good152_checked :
    goodSegmentCheck 91 30 63
      { lower := 16337, upper := 16340, witness := RowWitness.topPrime 16333 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good153_checked :
    goodSegmentCheck 91 30 63
      { lower := 16384, upper := 16471, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good154_checked :
    goodSegmentCheck 91 30 63
      { lower := 16472, upper := 16474, witness := RowWitness.topPrime 16453 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good155_checked :
    goodSegmentCheck 91 30 63
      { lower := 16810, upper := 16877, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good156_checked :
    goodSegmentCheck 91 30 63
      { lower := 16878, upper := 16910, witness := RowWitness.topPrime 16871 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good157_checked :
    goodSegmentCheck 91 30 63
      { lower := 17303, upper := 17388, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good158_checked :
    goodSegmentCheck 91 30 63
      { lower := 17408, upper := 17491, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good159_checked :
    goodSegmentCheck 91 30 63
      { lower := 17492, upper := 17498, witness := RowWitness.topPrime 17491 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_good160_checked :
    goodSegmentCheck 91 30 63
      { lower := 17672, upper := 17751, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good161_checked :
    goodSegmentCheck 91 30 63
      { lower := 18490, upper := 18571, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good162_checked :
    goodSegmentCheck 91 30 63
      { lower := 18572, upper := 18581, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good163_checked :
    goodSegmentCheck 91 30 63
      { lower := 18634, upper := 18695, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good164_checked :
    goodSegmentCheck 91 30 63
      { lower := 18723, upper := 18724, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good165_checked :
    goodSegmentCheck 91 30 63
      { lower := 18750, upper := 18813, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good166_checked :
    goodSegmentCheck 91 30 63
      { lower := 19220, upper := 19256, witness := RowWitness.topPrime 19219 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good167_checked :
    goodSegmentCheck 91 30 63
      { lower := 19663, upper := 19751, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good168_checked :
    goodSegmentCheck 91 30 63
      { lower := 19752, upper := 19753, witness := RowWitness.topPrime 19751 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good169_checked :
    goodSegmentCheck 91 30 63
      { lower := 19965, upper := 19971, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good170_checked :
    goodSegmentCheck 91 30 63
      { lower := 20172, upper := 20251, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good171_checked :
    goodSegmentCheck 91 30 63
      { lower := 20252, upper := 20262, witness := RowWitness.topPrime 20249 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good172_checked :
    goodSegmentCheck 91 30 63
      { lower := 20535, upper := 20570, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good173_checked :
    goodSegmentCheck 91 30 63
      { lower := 20577, upper := 20625, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good174_checked :
    goodSegmentCheck 91 30 63
      { lower := 20667, upper := 20667, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good175_checked :
    goodSegmentCheck 91 30 63
      { lower := 21316, upper := 21386, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_good176_checked :
    goodSegmentCheck 91 30 63
      { lower := 21870, upper := 21953, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good177_checked :
    goodSegmentCheck 91 30 63
      { lower := 21954, upper := 21965, witness := RowWitness.topPrime 21943 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good178_checked :
    goodSegmentCheck 91 30 63
      { lower := 22472, upper := 22559, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good179_checked :
    goodSegmentCheck 91 30 63
      { lower := 22560, upper := 22562, witness := RowWitness.topPrime 22549 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good180_checked :
    goodSegmentCheck 91 30 63
      { lower := 24037, upper := 24048, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good181_checked :
    goodSegmentCheck 91 30 63
      { lower := 24057, upper := 24127, witness := RowWitness.topPrime 24049 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good182_checked :
    goodSegmentCheck 91 30 63
      { lower := 24334, upper := 24419, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good183_checked :
    goodSegmentCheck 91 30 63
      { lower := 24420, upper := 24457, witness := RowWitness.topPrime 24419 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good184_checked :
    goodSegmentCheck 91 30 63
      { lower := 24576, upper := 24661, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good185_checked :
    goodSegmentCheck 91 30 63
      { lower := 24662, upper := 24666, witness := RowWitness.topPrime 24659 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good186_checked :
    goodSegmentCheck 91 30 63
      { lower := 25000, upper := 25054, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good187_checked :
    goodSegmentCheck 91 30 63
      { lower := 25215, upper := 25279, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good188_checked :
    goodSegmentCheck 91 30 63
      { lower := 25280, upper := 25351, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good189_checked :
    goodSegmentCheck 91 30 63
      { lower := 25352, upper := 25371, witness := RowWitness.topPrime 25349 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good190_checked :
    goodSegmentCheck 91 30 63
      { lower := 26047, upper := 26101, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good191_checked :
    goodSegmentCheck 91 30 63
      { lower := 26624, upper := 26687, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_good192_checked :
    goodSegmentCheck 91 30 63
      { lower := 26688, upper := 26714, witness := RowWitness.topPrime 26687 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good193_checked :
    goodSegmentCheck 91 30 63
      { lower := 26934, upper := 26986, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good194_checked :
    goodSegmentCheck 91 30 63
      { lower := 27436, upper := 27470, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good195_checked :
    goodSegmentCheck 91 30 63
      { lower := 28125, upper := 28180, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good196_checked :
    goodSegmentCheck 91 30 63
      { lower := 28577, upper := 28651, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good197_checked :
    goodSegmentCheck 91 30 63
      { lower := 28717, upper := 28801, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good198_checked :
    goodSegmentCheck 91 30 63
      { lower := 28802, upper := 28807, witness := RowWitness.topPrime 28793 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good199_checked :
    goodSegmentCheck 91 30 63
      { lower := 29791, upper := 29858, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good200_checked :
    goodSegmentCheck 91 30 63
      { lower := 30258, upper := 30336, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good201_checked :
    goodSegmentCheck 91 30 63
      { lower := 30926, upper := 30989, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good202_checked :
    goodSegmentCheck 91 30 63
      { lower := 31250, upper := 31295, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good203_checked :
    goodSegmentCheck 91 30 63
      { lower := 31329, upper := 31340, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good204_checked :
    goodSegmentCheck 91 30 63
      { lower := 31433, upper := 31487, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good205_checked :
    goodSegmentCheck 91 30 63
      { lower := 31488, upper := 31513, witness := RowWitness.topPrime 31481 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good206_checked :
    goodSegmentCheck 91 30 63
      { lower := 31974, upper := 32029, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good207_checked :
    goodSegmentCheck 91 30 63
      { lower := 32805, upper := 32858, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_good208_checked :
    goodSegmentCheck 91 30 63
      { lower := 34375, upper := 34385, witness := RowWitness.topPrime 34369 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good209_checked :
    goodSegmentCheck 91 30 63
      { lower := 34391, upper := 34471, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good210_checked :
    goodSegmentCheck 91 30 63
      { lower := 34472, upper := 34481, witness := RowWitness.topPrime 34471 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good211_checked :
    goodSegmentCheck 91 30 63
      { lower := 34816, upper := 34897, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good212_checked :
    goodSegmentCheck 91 30 63
      { lower := 34898, upper := 34900, witness := RowWitness.topPrime 34897 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good213_checked :
    goodSegmentCheck 91 30 63
      { lower := 35344, upper := 35377, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good214_checked :
    goodSegmentCheck 91 30 63
      { lower := 36517, upper := 36587, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good215_checked :
    goodSegmentCheck 91 30 63
      { lower := 36588, upper := 36591, witness := RowWitness.topPrime 36587 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good216_checked :
    goodSegmentCheck 91 30 63
      { lower := 37210, upper := 37269, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good217_checked :
    goodSegmentCheck 91 30 63
      { lower := 37500, upper := 37536, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good218_checked :
    goodSegmentCheck 91 30 63
      { lower := 37553, upper := 37590, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good219_checked :
    goodSegmentCheck 91 30 63
      { lower := 39326, upper := 39413, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good220_checked :
    goodSegmentCheck 91 30 63
      { lower := 39414, upper := 39416, witness := RowWitness.topPrime 39409 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good221_checked :
    goodSegmentCheck 91 30 63
      { lower := 40401, upper := 40418, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good222_checked :
    goodSegmentCheck 91 30 63
      { lower := 40960, upper := 41021, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good223_checked :
    goodSegmentCheck 91 30 63
      { lower := 43750, upper := 43777, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_good224_checked :
    goodSegmentCheck 91 30 63
      { lower := 44944, upper := 44980, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good225_checked :
    goodSegmentCheck 91 30 63
      { lower := 48013, upper := 48051, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good226_checked :
    goodSegmentCheck 91 30 63
      { lower := 48734, upper := 48758, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good227_checked :
    goodSegmentCheck 91 30 63
      { lower := 48778, upper := 48824, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good228_checked :
    goodSegmentCheck 91 30 63
      { lower := 49152, upper := 49220, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good229_checked :
    goodSegmentCheck 91 30 63
      { lower := 50000, upper := 50018, witness := RowWitness.topPrime 49999 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good230_checked :
    goodSegmentCheck 91 30 63
      { lower := 53290, upper := 53338, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good231_checked :
    goodSegmentCheck 91 30 63
      { lower := 53371, upper := 53380, witness := RowWitness.topPrime 53359 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good232_checked :
    goodSegmentCheck 91 30 63
      { lower := 55451, upper := 55531, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good233_checked :
    goodSegmentCheck 91 30 63
      { lower := 55532, upper := 55537, witness := RowWitness.topPrime 55529 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good234_checked :
    goodSegmentCheck 91 30 63
      { lower := 56250, upper := 56259, witness := RowWitness.topPrime 56249 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good235_checked :
    goodSegmentCheck 91 30 63
      { lower := 58619, upper := 58654, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good236_checked :
    goodSegmentCheck 91 30 63
      { lower := 59582, upper := 59626, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good237_checked :
    goodSegmentCheck 91 30 63
      { lower := 62500, upper := 62500, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good238_checked :
    goodSegmentCheck 91 30 63
      { lower := 63948, upper := 63959, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good239_checked :
    goodSegmentCheck 91 30 63
      { lower := 65536, upper := 65611, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_good240_checked :
    goodSegmentCheck 91 30 63
      { lower := 65612, upper := 65626, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good241_checked :
    goodSegmentCheck 91 30 63
      { lower := 68651, upper := 68680, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good242_checked :
    goodSegmentCheck 91 30 63
      { lower := 68921, upper := 68980, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good243_checked :
    goodSegmentCheck 91 30 63
      { lower := 73205, upper := 73257, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good244_checked :
    goodSegmentCheck 91 30 63
      { lower := 73728, upper := 73785, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good245_checked :
    goodSegmentCheck 91 30 63
      { lower := 85293, upper := 85349, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good246_checked :
    goodSegmentCheck 91 30 63
      { lower := 85350, upper := 85354, witness := RowWitness.topPrime 85333 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good247_checked :
    goodSegmentCheck 91 30 63
      { lower := 102973, upper := 102975, witness := RowWitness.topPrime 102967 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good248_checked :
    goodSegmentCheck 91 30 63
      { lower := 137842, upper := 137871, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good249_checked :
    goodSegmentCheck 91 30 63
      { lower := 146410, upper := 146424, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good250_checked :
    goodSegmentCheck 91 30 63
      { lower := 148955, upper := 148967, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row091_good251_checked :
    goodSegmentCheck 91 30 63
      { lower := 327701, upper := 327770, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 91) (r := 30) (s := 63) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_good251_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_goods_checked :
    row091.goods.all (goodSegmentCheck row091.height.i row091.height.r row091.height.s) = true := by
  change row091_goods.all (goodSegmentCheck 91 30 63) = true
  simp only [row091_goods, List.all_cons, List.all_nil,
    row091_good000_checked,
    row091_good001_checked,
    row091_good002_checked,
    row091_good003_checked,
    row091_good004_checked,
    row091_good005_checked,
    row091_good006_checked,
    row091_good007_checked,
    row091_good008_checked,
    row091_good009_checked,
    row091_good010_checked,
    row091_good011_checked,
    row091_good012_checked,
    row091_good013_checked,
    row091_good014_checked,
    row091_good015_checked,
    row091_good016_checked,
    row091_good017_checked,
    row091_good018_checked,
    row091_good019_checked,
    row091_good020_checked,
    row091_good021_checked,
    row091_good022_checked,
    row091_good023_checked,
    row091_good024_checked,
    row091_good025_checked,
    row091_good026_checked,
    row091_good027_checked,
    row091_good028_checked,
    row091_good029_checked,
    row091_good030_checked,
    row091_good031_checked,
    row091_good032_checked,
    row091_good033_checked,
    row091_good034_checked,
    row091_good035_checked,
    row091_good036_checked,
    row091_good037_checked,
    row091_good038_checked,
    row091_good039_checked,
    row091_good040_checked,
    row091_good041_checked,
    row091_good042_checked,
    row091_good043_checked,
    row091_good044_checked,
    row091_good045_checked,
    row091_good046_checked,
    row091_good047_checked,
    row091_good048_checked,
    row091_good049_checked,
    row091_good050_checked,
    row091_good051_checked,
    row091_good052_checked,
    row091_good053_checked,
    row091_good054_checked,
    row091_good055_checked,
    row091_good056_checked,
    row091_good057_checked,
    row091_good058_checked,
    row091_good059_checked,
    row091_good060_checked,
    row091_good061_checked,
    row091_good062_checked,
    row091_good063_checked,
    row091_good064_checked,
    row091_good065_checked,
    row091_good066_checked,
    row091_good067_checked,
    row091_good068_checked,
    row091_good069_checked,
    row091_good070_checked,
    row091_good071_checked,
    row091_good072_checked,
    row091_good073_checked,
    row091_good074_checked,
    row091_good075_checked,
    row091_good076_checked,
    row091_good077_checked,
    row091_good078_checked,
    row091_good079_checked,
    row091_good080_checked,
    row091_good081_checked,
    row091_good082_checked,
    row091_good083_checked,
    row091_good084_checked,
    row091_good085_checked,
    row091_good086_checked,
    row091_good087_checked,
    row091_good088_checked,
    row091_good089_checked,
    row091_good090_checked,
    row091_good091_checked,
    row091_good092_checked,
    row091_good093_checked,
    row091_good094_checked,
    row091_good095_checked,
    row091_good096_checked,
    row091_good097_checked,
    row091_good098_checked,
    row091_good099_checked,
    row091_good100_checked,
    row091_good101_checked,
    row091_good102_checked,
    row091_good103_checked,
    row091_good104_checked,
    row091_good105_checked,
    row091_good106_checked,
    row091_good107_checked,
    row091_good108_checked,
    row091_good109_checked,
    row091_good110_checked,
    row091_good111_checked,
    row091_good112_checked,
    row091_good113_checked,
    row091_good114_checked,
    row091_good115_checked,
    row091_good116_checked,
    row091_good117_checked,
    row091_good118_checked,
    row091_good119_checked,
    row091_good120_checked,
    row091_good121_checked,
    row091_good122_checked,
    row091_good123_checked,
    row091_good124_checked,
    row091_good125_checked,
    row091_good126_checked,
    row091_good127_checked,
    row091_good128_checked,
    row091_good129_checked,
    row091_good130_checked,
    row091_good131_checked,
    row091_good132_checked,
    row091_good133_checked,
    row091_good134_checked,
    row091_good135_checked,
    row091_good136_checked,
    row091_good137_checked,
    row091_good138_checked,
    row091_good139_checked,
    row091_good140_checked,
    row091_good141_checked,
    row091_good142_checked,
    row091_good143_checked,
    row091_good144_checked,
    row091_good145_checked,
    row091_good146_checked,
    row091_good147_checked,
    row091_good148_checked,
    row091_good149_checked,
    row091_good150_checked,
    row091_good151_checked,
    row091_good152_checked,
    row091_good153_checked,
    row091_good154_checked,
    row091_good155_checked,
    row091_good156_checked,
    row091_good157_checked,
    row091_good158_checked,
    row091_good159_checked,
    row091_good160_checked,
    row091_good161_checked,
    row091_good162_checked,
    row091_good163_checked,
    row091_good164_checked,
    row091_good165_checked,
    row091_good166_checked,
    row091_good167_checked,
    row091_good168_checked,
    row091_good169_checked,
    row091_good170_checked,
    row091_good171_checked,
    row091_good172_checked,
    row091_good173_checked,
    row091_good174_checked,
    row091_good175_checked,
    row091_good176_checked,
    row091_good177_checked,
    row091_good178_checked,
    row091_good179_checked,
    row091_good180_checked,
    row091_good181_checked,
    row091_good182_checked,
    row091_good183_checked,
    row091_good184_checked,
    row091_good185_checked,
    row091_good186_checked,
    row091_good187_checked,
    row091_good188_checked,
    row091_good189_checked,
    row091_good190_checked,
    row091_good191_checked,
    row091_good192_checked,
    row091_good193_checked,
    row091_good194_checked,
    row091_good195_checked,
    row091_good196_checked,
    row091_good197_checked,
    row091_good198_checked,
    row091_good199_checked,
    row091_good200_checked,
    row091_good201_checked,
    row091_good202_checked,
    row091_good203_checked,
    row091_good204_checked,
    row091_good205_checked,
    row091_good206_checked,
    row091_good207_checked,
    row091_good208_checked,
    row091_good209_checked,
    row091_good210_checked,
    row091_good211_checked,
    row091_good212_checked,
    row091_good213_checked,
    row091_good214_checked,
    row091_good215_checked,
    row091_good216_checked,
    row091_good217_checked,
    row091_good218_checked,
    row091_good219_checked,
    row091_good220_checked,
    row091_good221_checked,
    row091_good222_checked,
    row091_good223_checked,
    row091_good224_checked,
    row091_good225_checked,
    row091_good226_checked,
    row091_good227_checked,
    row091_good228_checked,
    row091_good229_checked,
    row091_good230_checked,
    row091_good231_checked,
    row091_good232_checked,
    row091_good233_checked,
    row091_good234_checked,
    row091_good235_checked,
    row091_good236_checked,
    row091_good237_checked,
    row091_good238_checked,
    row091_good239_checked,
    row091_good240_checked,
    row091_good241_checked,
    row091_good242_checked,
    row091_good243_checked,
    row091_good244_checked,
    row091_good245_checked,
    row091_good246_checked,
    row091_good247_checked,
    row091_good248_checked,
    row091_good249_checked,
    row091_good250_checked,
    row091_good251_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_registered :
    decide (row091.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row091_small_checked :
    coverCheck (2 * row091.height.i + 2) (row091.height.i * (row091.height.i - 1) - 1)
      (row091.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row091_layerCover_checked :
    coverCheck (row091.height.i * (row091.height.i - 1)) (row091.height.n0 - 1)
      (row091.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row091_bounds : List NatInterval :=
  [(184, 271), (272, 361), (362, 449), (450, 539), (540, 613), (614, 703), (704, 791), (792, 877), (878, 967), (968, 1057), (1058, 1141), (1142, 1219), (1220, 1307), (1308, 1397), (1398, 1471), (1472, 1561), (1562, 1649), (1650, 1727), (1728, 1813), (1814, 1901), (1902, 1991), (1992, 2077), (2078, 2159), (2160, 2243), (2244, 2333), (2334, 2423), (2424, 2513), (2514, 2593), (2594, 2683), (2684, 2773), (2774, 2857), (2858, 2947), (2948, 3029), (3030, 3113), (3114, 3199), (3200, 3281), (3282, 3361), (3362, 3451), (3452, 3539), (3540, 3629), (3630, 3713), (3714, 3799), (3800, 3887), (3888, 3971), (3972, 4057), (4058, 4147), (4148, 4229), (4230, 4319), (4320, 4387), (4388, 4463), (4464, 4553), (4554, 4639), (4640, 4729), (4730, 4819), (4820, 4907), (4908, 4993), (4994, 5083), (5084, 5171), (5172, 5261), (5262, 5351), (5352, 5441), (5442, 5531), (5532, 5621), (5622, 5681), (5682, 5759), (5760, 5839), (5840, 5929), (5930, 6017), (6018, 6101), (6102, 6191), (6192, 6263), (6264, 6353), (6354, 6443), (6444, 6517), (6518, 6581), (6582, 6671), (6672, 6751), (6752, 6827), (6828, 6917), (6918, 7007), (7008, 7091), (7092, 7169), (7170, 7249), (7250, 7337), (7338, 7423), (7424, 7507), (7508, 7597), (7598, 7681), (7682, 7771), (7772, 7849), (7850, 7931), (7932, 8017), (8018, 8107), (8108, 8189), (8192, 8281), (8282, 8282), (8303, 8304), (8410, 8479), (8480, 8517), (8664, 8753), (8754, 8840), (8993, 9061), (9062, 9083), (9245, 9331), (9332, 9341), (9375, 9461), (9462, 9465), (9522, 9567), (9583, 9641), (9642, 9673), (10051, 10129), (10130, 10176), (10240, 10296), (10580, 10657), (10658, 10738), (10935, 10999), (11000, 11025), (11094, 11183), (11184, 11199), (11236, 11303), (11304, 11340), (11664, 11728), (11774, 11833), (11834, 11864), (12321, 12378), (12393, 12411), (12482, 12483), (12493, 12581), (12582, 12583), (12696, 12705), (13125, 13211), (13212, 13212), (13254, 13339), (13340, 13400), (13454, 13541), (13542, 13546), (13718, 13801), (13802, 13844), (13851, 13868), (13924, 13941), (14336, 14417), (14418, 14465), (14641, 14670), (14792, 14829), (15059, 15090), (15123, 15211), (15212, 15219), (15360, 15449), (15450, 15450), (15463, 15466), (15979, 16063), (16064, 16077), (16337, 16340), (16384, 16471), (16472, 16474), (16810, 16877), (16878, 16910), (17303, 17388), (17408, 17491), (17492, 17498), (17672, 17751), (18490, 18571), (18572, 18581), (18634, 18695), (18723, 18724), (18750, 18813), (19220, 19256), (19663, 19751), (19752, 19753), (19965, 19971), (20172, 20251), (20252, 20262), (20535, 20570), (20577, 20625), (20667, 20667), (21316, 21386), (21870, 21953), (21954, 21965), (22472, 22559), (22560, 22562), (24037, 24048), (24057, 24127), (24334, 24419), (24420, 24457), (24576, 24661), (24662, 24666), (25000, 25054), (25215, 25279), (25280, 25351), (25352, 25371), (26047, 26101), (26624, 26687), (26688, 26714), (26934, 26986), (27436, 27470), (28125, 28180), (28577, 28651), (28717, 28801), (28802, 28807), (29791, 29858), (30258, 30336), (30926, 30989), (31250, 31295), (31329, 31340), (31433, 31487), (31488, 31513), (31974, 32029), (32805, 32858), (34375, 34385), (34391, 34471), (34472, 34481), (34816, 34897), (34898, 34900), (35344, 35377), (36517, 36587), (36588, 36591), (37210, 37269), (37500, 37536), (37553, 37590), (39326, 39413), (39414, 39416), (40401, 40418), (40960, 41021), (43750, 43777), (44944, 44980), (48013, 48051), (48734, 48758), (48778, 48824), (49152, 49220), (50000, 50018), (53290, 53338), (53371, 53380), (55451, 55531), (55532, 55537), (56250, 56259), (58619, 58654), (59582, 59626), (62500, 62500), (63948, 63959), (65536, 65611), (65612, 65626), (68651, 68680), (68921, 68980), (73205, 73257), (73728, 73785), (85293, 85349), (85350, 85354), (102973, 102975), (137842, 137871), (146410, 146424), (148955, 148967), (327701, 327770)]

theorem row091_bounds_eq : row091.goods.map goodSegmentBounds = row091_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row091_layer000_intervals : List ColouredInterval :=
  [(2, 8192, 8282), (2, 8704, 8794), (2, 9216, 9306), (2, 9728, 9818), (2, 10240, 10330), (2, 10752, 10842), (2, 11264, 11354), (2, 11776, 11866), (2, 12288, 12378), (2, 12800, 12890), (2, 13312, 13402), (2, 8192, 8282), (2, 9216, 9306), (2, 10240, 10330), (2, 11264, 11354), (2, 12288, 12378), (2, 13312, 13402), (2, 14336, 14426), (2, 15360, 15450), (2, 8192, 8282), (2, 10240, 10330), (2, 12288, 12378), (2, 14336, 14426), (2, 8192, 8282), (2, 12288, 12378), (2, 8192, 8282), (3, 8748, 8838), (3, 9477, 9567), (3, 10206, 10296), (3, 10935, 11025), (3, 11664, 11754), (3, 12393, 12483), (3, 13122, 13212), (3, 13851, 13941), (3, 14580, 14670), (3, 15309, 15399), (3, 16038, 16128), (3, 8748, 8838), (3, 10935, 11025), (3, 13122, 13212), (3, 15309, 15399), (3, 13122, 13212), (5, 8190, 8215), (5, 8750, 8840), (5, 9375, 9465), (5, 10000, 10090), (5, 10625, 10715), (5, 11250, 11340), (5, 11875, 11965), (5, 12500, 12590), (5, 13125, 13215), (5, 13750, 13840), (5, 14375, 14465), (5, 15000, 15090), (5, 15625, 15715), (5, 16250, 16340), (5, 9375, 9465), (5, 12500, 12590), (5, 15625, 15715), (5, 15625, 15715), (11, 9317, 9407), (11, 10648, 10738), (11, 11979, 12069), (11, 13310, 13400), (11, 14641, 14731), (11, 15972, 16062), (11, 14641, 14731), (17, 9826, 9916), (17, 14739, 14829), (19, 8303, 8393), (19, 8664, 8754), (19, 9025, 9115), (19, 9386, 9476), (19, 13718, 13808), (23, 8464, 8554), (23, 8993, 9083), (23, 9522, 9612), (23, 10051, 10141), (23, 10580, 10670), (23, 11109, 11199), (23, 11638, 11728), (23, 12167, 12257), (23, 12696, 12786), (23, 13225, 13315), (23, 13754, 13844), (23, 12167, 12257), (29, 8410, 8500), (29, 9251, 9341), (29, 10092, 10182), (29, 10933, 11023), (29, 11774, 11864), (29, 12615, 12705), (29, 13456, 13546), (29, 14297, 14387), (29, 15138, 15228), (29, 15979, 16069), (31, 8649, 8739), (31, 9610, 9700), (31, 10571, 10661), (31, 11532, 11622), (31, 12493, 12583), (31, 13454, 13544), (31, 14415, 14505), (31, 15376, 15466), (31, 16337, 16379), (37, 8214, 8304), (37, 9583, 9673), (37, 10952, 11042), (37, 12321, 12411), (37, 13690, 13780), (37, 15059, 15149), (41, 8405, 8495), (41, 10086, 10176), (41, 11767, 11857), (41, 13448, 13538), (41, 15129, 15219), (43, 9245, 9335), (43, 11094, 11184), (43, 12943, 13033), (43, 14792, 14882), (47, 8836, 8926), (47, 11045, 11135), (47, 13254, 13344), (47, 15463, 15553), (53, 8427, 8517), (53, 11236, 11326), (53, 14045, 14135), (59, 10443, 10533), (59, 13924, 14014), (61, 11163, 11253), (61, 14884, 14974), (67, 8978, 9068), (67, 13467, 13557), (71, 10082, 10172), (71, 15123, 15213), (73, 10658, 10748), (73, 15987, 16077), (79, 12482, 12572), (83, 13778, 13868), (89, 15842, 15932)]

def row091_layer000_block000 : List ColouredInterval :=
  [(2, 8192, 8282), (2, 8704, 8794), (2, 9216, 9306), (2, 9728, 9818), (2, 10240, 10330), (2, 10752, 10842), (2, 11264, 11354), (2, 11776, 11866), (2, 12288, 12378), (2, 12800, 12890), (2, 13312, 13402), (2, 8192, 8282), (2, 9216, 9306), (2, 10240, 10330)]

def row091_layer000_block001 : List ColouredInterval :=
  [(2, 11264, 11354), (2, 12288, 12378), (2, 13312, 13402), (2, 14336, 14426), (2, 15360, 15450), (2, 8192, 8282), (2, 10240, 10330), (2, 12288, 12378), (2, 14336, 14426), (2, 8192, 8282), (2, 12288, 12378), (2, 8192, 8282), (3, 8748, 8838), (3, 9477, 9567)]

def row091_layer000_block002 : List ColouredInterval :=
  [(3, 10206, 10296), (3, 10935, 11025), (3, 11664, 11754), (3, 12393, 12483), (3, 13122, 13212), (3, 13851, 13941), (3, 14580, 14670), (3, 15309, 15399), (3, 16038, 16128), (3, 8748, 8838), (3, 10935, 11025), (3, 13122, 13212), (3, 15309, 15399), (3, 13122, 13212)]

def row091_layer000_block003 : List ColouredInterval :=
  [(5, 8190, 8215), (5, 8750, 8840), (5, 9375, 9465), (5, 10000, 10090), (5, 10625, 10715), (5, 11250, 11340), (5, 11875, 11965), (5, 12500, 12590), (5, 13125, 13215), (5, 13750, 13840), (5, 14375, 14465), (5, 15000, 15090), (5, 15625, 15715), (5, 16250, 16340)]

def row091_layer000_block004 : List ColouredInterval :=
  [(5, 9375, 9465), (5, 12500, 12590), (5, 15625, 15715), (5, 15625, 15715), (11, 9317, 9407), (11, 10648, 10738), (11, 11979, 12069), (11, 13310, 13400), (11, 14641, 14731), (11, 15972, 16062), (11, 14641, 14731), (17, 9826, 9916), (17, 14739, 14829), (19, 8303, 8393)]

def row091_layer000_block005 : List ColouredInterval :=
  [(19, 8664, 8754), (19, 9025, 9115), (19, 9386, 9476), (19, 13718, 13808), (23, 8464, 8554), (23, 8993, 9083), (23, 9522, 9612), (23, 10051, 10141), (23, 10580, 10670), (23, 11109, 11199), (23, 11638, 11728), (23, 12167, 12257), (23, 12696, 12786), (23, 13225, 13315)]

def row091_layer000_block006 : List ColouredInterval :=
  [(23, 13754, 13844), (23, 12167, 12257), (29, 8410, 8500), (29, 9251, 9341), (29, 10092, 10182), (29, 10933, 11023), (29, 11774, 11864), (29, 12615, 12705), (29, 13456, 13546), (29, 14297, 14387), (29, 15138, 15228), (29, 15979, 16069), (31, 8649, 8739), (31, 9610, 9700)]

def row091_layer000_block007 : List ColouredInterval :=
  [(31, 10571, 10661), (31, 11532, 11622), (31, 12493, 12583), (31, 13454, 13544), (31, 14415, 14505), (31, 15376, 15466), (31, 16337, 16379), (37, 8214, 8304), (37, 9583, 9673), (37, 10952, 11042), (37, 12321, 12411), (37, 13690, 13780), (37, 15059, 15149), (41, 8405, 8495)]

def row091_layer000_block008 : List ColouredInterval :=
  [(41, 10086, 10176), (41, 11767, 11857), (41, 13448, 13538), (41, 15129, 15219), (43, 9245, 9335), (43, 11094, 11184), (43, 12943, 13033), (43, 14792, 14882), (47, 8836, 8926), (47, 11045, 11135), (47, 13254, 13344), (47, 15463, 15553), (53, 8427, 8517), (53, 11236, 11326)]

def row091_layer000_block009 : List ColouredInterval :=
  [(53, 14045, 14135), (59, 10443, 10533), (59, 13924, 14014), (61, 11163, 11253), (61, 14884, 14974), (67, 8978, 9068), (67, 13467, 13557), (71, 10082, 10172), (71, 15123, 15213), (73, 10658, 10748), (73, 15987, 16077), (79, 12482, 12572), (83, 13778, 13868), (89, 15842, 15932)]

def row091_layer000_chunks : List (List ColouredInterval) :=
  [row091_layer000_block000, row091_layer000_block001, row091_layer000_block002, row091_layer000_block003, row091_layer000_block004, row091_layer000_block005, row091_layer000_block006, row091_layer000_block007, row091_layer000_block008, row091_layer000_block009]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer000_arithmetic : LayerArithmeticValid row091.height { lower := 8190, upper := 16380, M := 26 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer000_enumeration :
    activePowerIntervalList 91 26 8190 16380 = row091_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer000_pairs000 :
    row091_layer000_block000.all (fun I => row091_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer000_pairs001 :
    row091_layer000_block001.all (fun I => row091_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer000_pairs002 :
    row091_layer000_block002.all (fun I => row091_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer000_pairs003 :
    row091_layer000_block003.all (fun I => row091_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer000_pairs004 :
    row091_layer000_block004.all (fun I => row091_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer000_pairs005 :
    row091_layer000_block005.all (fun I => row091_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer000_pairs006 :
    row091_layer000_block006.all (fun I => row091_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer000_pairs007 :
    row091_layer000_block007.all (fun I => row091_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer000_pairs008 :
    row091_layer000_block008.all (fun I => row091_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row091_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer000_pairs008
