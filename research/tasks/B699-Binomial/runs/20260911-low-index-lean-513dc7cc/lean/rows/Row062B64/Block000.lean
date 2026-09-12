import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row062_height : HeightCertificateDatum := { i := 62, r := 20, s := 42, n0Power10 := 15 }

def row062_goods : List GoodSegment := [
  { lower := 126, upper := 174, witness := RowWitness.topPrime 113 },
  { lower := 175, upper := 234, witness := RowWitness.topPrime 173 },
  { lower := 235, upper := 294, witness := RowWitness.topPrime 233 },
  { lower := 295, upper := 354, witness := RowWitness.topPrime 293 },
  { lower := 355, upper := 414, witness := RowWitness.topPrime 353 },
  { lower := 415, upper := 470, witness := RowWitness.topPrime 409 },
  { lower := 471, upper := 528, witness := RowWitness.topPrime 467 },
  { lower := 529, upper := 584, witness := RowWitness.topPrime 523 },
  { lower := 585, upper := 638, witness := RowWitness.topPrime 577 },
  { lower := 639, upper := 692, witness := RowWitness.topPrime 631 },
  { lower := 693, upper := 752, witness := RowWitness.topPrime 691 },
  { lower := 753, upper := 812, witness := RowWitness.topPrime 751 },
  { lower := 813, upper := 872, witness := RowWitness.topPrime 811 },
  { lower := 873, upper := 924, witness := RowWitness.topPrime 863 },
  { lower := 925, upper := 980, witness := RowWitness.topPrime 919 },
  { lower := 981, upper := 1038, witness := RowWitness.topPrime 977 },
  { lower := 1039, upper := 1100, witness := RowWitness.topPrime 1039 },
  { lower := 1101, upper := 1158, witness := RowWitness.topPrime 1097 },
  { lower := 1159, upper := 1214, witness := RowWitness.topPrime 1153 },
  { lower := 1215, upper := 1274, witness := RowWitness.topPrime 1213 },
  { lower := 1275, upper := 1320, witness := RowWitness.topPrime 1259 },
  { lower := 1321, upper := 1382, witness := RowWitness.topPrime 1321 },
  { lower := 1383, upper := 1442, witness := RowWitness.topPrime 1381 },
  { lower := 1443, upper := 1500, witness := RowWitness.topPrime 1439 },
  { lower := 1501, upper := 1560, witness := RowWitness.topPrime 1499 },
  { lower := 1561, upper := 1620, witness := RowWitness.topPrime 1559 },
  { lower := 1621, upper := 1682, witness := RowWitness.topPrime 1621 },
  { lower := 1683, upper := 1730, witness := RowWitness.topPrime 1669 },
  { lower := 1731, upper := 1784, witness := RowWitness.topPrime 1723 },
  { lower := 1785, upper := 1844, witness := RowWitness.topPrime 1783 },
  { lower := 1845, upper := 1892, witness := RowWitness.topPrime 1831 },
  { lower := 1893, upper := 1950, witness := RowWitness.topPrime 1889 },
  { lower := 1951, upper := 2012, witness := RowWitness.topPrime 1951 },
  { lower := 2013, upper := 2072, witness := RowWitness.topPrime 2011 },
  { lower := 2073, upper := 2130, witness := RowWitness.topPrime 2069 },
  { lower := 2131, upper := 2192, witness := RowWitness.topPrime 2131 },
  { lower := 2193, upper := 2240, witness := RowWitness.topPrime 2179 },
  { lower := 2241, upper := 2300, witness := RowWitness.topPrime 2239 },
  { lower := 2301, upper := 2358, witness := RowWitness.topPrime 2297 },
  { lower := 2359, upper := 2418, witness := RowWitness.topPrime 2357 },
  { lower := 2419, upper := 2478, witness := RowWitness.topPrime 2417 },
  { lower := 2479, upper := 2538, witness := RowWitness.topPrime 2477 },
  { lower := 2539, upper := 2600, witness := RowWitness.topPrime 2539 },
  { lower := 2601, upper := 2654, witness := RowWitness.topPrime 2593 },
  { lower := 2655, upper := 2708, witness := RowWitness.topPrime 2647 },
  { lower := 2709, upper := 2768, witness := RowWitness.topPrime 2707 },
  { lower := 2769, upper := 2828, witness := RowWitness.topPrime 2767 },
  { lower := 2829, upper := 2880, witness := RowWitness.topPrime 2819 },
  { lower := 2881, upper := 2940, witness := RowWitness.topPrime 2879 },
  { lower := 2941, upper := 3000, witness := RowWitness.topPrime 2939 },
  { lower := 3001, upper := 3062, witness := RowWitness.topPrime 3001 },
  { lower := 3063, upper := 3122, witness := RowWitness.topPrime 3061 },
  { lower := 3123, upper := 3182, witness := RowWitness.topPrime 3121 },
  { lower := 3183, upper := 3242, witness := RowWitness.topPrime 3181 },
  { lower := 3243, upper := 3290, witness := RowWitness.topPrime 3229 },
  { lower := 3291, upper := 3332, witness := RowWitness.topPrime 3271 },
  { lower := 3333, upper := 3392, witness := RowWitness.topPrime 3331 },
  { lower := 3393, upper := 3452, witness := RowWitness.topPrime 3391 },
  { lower := 3453, upper := 3510, witness := RowWitness.topPrime 3449 },
  { lower := 3511, upper := 3572, witness := RowWitness.topPrime 3511 },
  { lower := 3573, upper := 3632, witness := RowWitness.topPrime 3571 },
  { lower := 3633, upper := 3692, witness := RowWitness.topPrime 3631 },
  { lower := 3693, upper := 3752, witness := RowWitness.topPrime 3691 },
  { lower := 3753, upper := 3800, witness := RowWitness.topPrime 3739 },
  { lower := 3801, upper := 3818, witness := RowWitness.topPrime 3797 },
  { lower := 3872, upper := 3924, witness := RowWitness.topPrime 3863 },
  { lower := 3925, upper := 3948, witness := RowWitness.topPrime 3923 },
  { lower := 3993, upper := 4050, witness := RowWitness.topPrime 3989 },
  { lower := 4051, upper := 4112, witness := RowWitness.topPrime 4051 },
  { lower := 4113, upper := 4172, witness := RowWitness.topPrime 4111 },
  { lower := 4173, upper := 4186, witness := RowWitness.topPrime 4159 },
  { lower := 4225, upper := 4280, witness := RowWitness.topPrime 4219 },
  { lower := 4281, upper := 4296, witness := RowWitness.topPrime 4273 },
  { lower := 4335, upper := 4388, witness := RowWitness.topPrime 4327 },
  { lower := 4389, upper := 4434, witness := RowWitness.topPrime 4373 },
  { lower := 4435, upper := 4455, witness := RowWitness.topPrime 4423 },
  { lower := 4459, upper := 4479, witness := RowWitness.topPrime 4457 },
  { lower := 4500, upper := 4520, witness := RowWitness.topPrime 4493 },
  { lower := 4608, upper := 4664, witness := RowWitness.topPrime 4603 },
  { lower := 4665, upper := 4678, witness := RowWitness.topPrime 4663 },
  { lower := 4732, upper := 4754, witness := RowWitness.topPrime 4729 },
  { lower := 4761, upper := 4793, witness := RowWitness.topPrime 4759 },
  { lower := 4802, upper := 4822, witness := RowWitness.topPrime 4801 },
  { lower := 4860, upper := 4863, witness := RowWitness.topPrime 4831 },
  { lower := 4901, upper := 4950, witness := RowWitness.topPrime 4889 },
  { lower := 4951, upper := 4962, witness := RowWitness.topPrime 4951 },
  { lower := 5043, upper := 5100, witness := RowWitness.topPrime 5039 },
  { lower := 5101, upper := 5162, witness := RowWitness.topPrime 5101 },
  { lower := 5163, upper := 5181, witness := RowWitness.topPrime 5153 },
  { lower := 5202, upper := 5206, witness := RowWitness.topPrime 5197 },
  { lower := 5239, upper := 5263, witness := RowWitness.topPrime 5237 },
  { lower := 5290, upper := 5300, witness := RowWitness.topPrime 5281 },
  { lower := 5324, upper := 5384, witness := RowWitness.topPrime 5323 },
  { lower := 5385, upper := 5385, witness := RowWitness.topPrime 5381 },
  { lower := 5415, upper := 5469, witness := RowWitness.topPrime 5413 },
  { lower := 5476, upper := 5476, witness := RowWitness.topPrime 5471 },
  { lower := 5488, upper := 5544, witness := RowWitness.topPrime 5483 },
  { lower := 5545, upper := 5552, witness := RowWitness.topPrime 5531 },
  { lower := 5577, upper := 5634, witness := RowWitness.topPrime 5573 },
  { lower := 5635, upper := 5684, witness := RowWitness.topPrime 5623 },
  { lower := 5685, upper := 5686, witness := RowWitness.topPrime 5683 },
  { lower := 5776, upper := 5810, witness := RowWitness.topPrime 5749 },
  { lower := 5811, upper := 5868, witness := RowWitness.topPrime 5807 },
  { lower := 5869, upper := 5893, witness := RowWitness.topPrime 5869 },
  { lower := 5915, upper := 5948, witness := RowWitness.topPrime 5903 },
  { lower := 6075, upper := 6134, witness := RowWitness.topPrime 6073 },
  { lower := 6135, upper := 6194, witness := RowWitness.topPrime 6133 },
  { lower := 6195, upper := 6205, witness := RowWitness.topPrime 6173 },
  { lower := 6348, upper := 6404, witness := RowWitness.topPrime 6343 },
  { lower := 6405, upper := 6409, witness := RowWitness.topPrime 6397 },
  { lower := 6517, upper := 6552, witness := RowWitness.topPrime 6491 },
  { lower := 6553, upper := 6559, witness := RowWitness.topPrime 6553 },
  { lower := 6561, upper := 6578, witness := RowWitness.topPrime 6553 },
  { lower := 6591, upper := 6622, witness := RowWitness.topPrime 6581 },
  { lower := 6627, upper := 6680, witness := RowWitness.topPrime 6619 },
  { lower := 6681, upper := 6716, witness := RowWitness.topPrime 6679 },
  { lower := 6728, upper := 6780, witness := RowWitness.topPrime 6719 },
  { lower := 6781, upper := 6785, witness := RowWitness.topPrime 6781 },
  { lower := 6845, upper := 6902, witness := RowWitness.topPrime 6841 },
  { lower := 6903, upper := 6938, witness := RowWitness.topPrime 6899 },
  { lower := 6962, upper := 6997, witness := RowWitness.topPrime 6961 },
  { lower := 7203, upper := 7254, witness := RowWitness.topPrime 7193 },
  { lower := 7255, upper := 7281, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7454, witness := RowWitness.topPrime 7393 },
  { lower := 7455, upper := 7467, witness := RowWitness.topPrime 7451 },
  { lower := 7500, upper := 7503, witness := RowWitness.topPrime 7499 },
  { lower := 7514, upper := 7568, witness := RowWitness.topPrime 7507 },
  { lower := 7569, upper := 7622, witness := RowWitness.topPrime 7561 },
  { lower := 7623, upper := 7630, witness := RowWitness.topPrime 7621 },
  { lower := 7803, upper := 7837, witness := RowWitness.topPrime 7793 },
  { lower := 7935, upper := 7994, witness := RowWitness.topPrime 7933 },
  { lower := 7995, upper := 8003, witness := RowWitness.topPrime 7993 },
  { lower := 8019, upper := 8047, witness := RowWitness.topPrime 8017 },
  { lower := 8125, upper := 8153, witness := RowWitness.topPrime 8123 },
  { lower := 8214, upper := 8270, witness := RowWitness.topPrime 8209 },
  { lower := 8271, upper := 8275, witness := RowWitness.topPrime 8269 },
  { lower := 8405, upper := 8450, witness := RowWitness.topPrime 8389 },
  { lower := 8451, upper := 8488, witness := RowWitness.topPrime 8447 },
  { lower := 8670, upper := 8725, witness := RowWitness.topPrime 8669 },
  { lower := 8750, upper := 8808, witness := RowWitness.topPrime 8747 },
  { lower := 8809, upper := 8811, witness := RowWitness.topPrime 8807 },
  { lower := 8836, upper := 8849, witness := RowWitness.topPrime 8831 },
  { lower := 8959, upper := 8979, witness := RowWitness.topPrime 8951 },
  { lower := 8993, upper := 9020, witness := RowWitness.topPrime 8971 },
  { lower := 9025, upper := 9054, witness := RowWitness.topPrime 9013 },
  { lower := 9245, upper := 9302, witness := RowWitness.topPrime 9241 },
  { lower := 9303, upper := 9312, witness := RowWitness.topPrime 9293 },
  { lower := 9317, upper := 9322, witness := RowWitness.topPrime 9311 },
  { lower := 9375, upper := 9378, witness := RowWitness.topPrime 9371 },
  { lower := 9386, upper := 9436, witness := RowWitness.topPrime 9377 },
  { lower := 9522, upper := 9582, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9598, witness := RowWitness.topPrime 9551 },
  { lower := 9604, upper := 9644, witness := RowWitness.topPrime 9601 },
  { lower := 10000, upper := 10008, witness := RowWitness.topPrime 9973 },
  { lower := 10051, upper := 10061, witness := RowWitness.topPrime 10039 },
  { lower := 10086, upper := 10140, witness := RowWitness.topPrime 10079 },
  { lower := 10141, upper := 10153, witness := RowWitness.topPrime 10141 },
  { lower := 10240, upper := 10267, witness := RowWitness.topPrime 10223 },
  { lower := 10290, upper := 10301, witness := RowWitness.topPrime 10289 },
  { lower := 10469, upper := 10504, witness := RowWitness.topPrime 10463 },
  { lower := 10625, upper := 10674, witness := RowWitness.topPrime 10613 },
  { lower := 10675, upper := 10694, witness := RowWitness.topPrime 10667 },
  { lower := 10935, upper := 10970, witness := RowWitness.topPrime 10909 },
  { lower := 10971, upper := 11018, witness := RowWitness.topPrime 10957 },
  { lower := 11019, upper := 11037, witness := RowWitness.topPrime 11003 },
  { lower := 11045, upper := 11046, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11106, witness := RowWitness.topPrime 11093 },
  { lower := 11109, upper := 11154, witness := RowWitness.topPrime 11093 },
  { lower := 11155, upper := 11155, witness := RowWitness.topPrime 11149 },
  { lower := 11163, upper := 11170, witness := RowWitness.topPrime 11161 },
  { lower := 11191, upper := 11224, witness := RowWitness.topPrime 11177 },
  { lower := 11236, upper := 11274, witness := RowWitness.topPrime 11213 },
  { lower := 11275, upper := 11311, witness := RowWitness.topPrime 11273 },
  { lower := 11319, upper := 11325, witness := RowWitness.topPrime 11317 },
  { lower := 11664, upper := 11699, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11804, witness := RowWitness.topPrime 11743 },
  { lower := 11805, upper := 11828, witness := RowWitness.topPrime 11801 },
  { lower := 11913, upper := 11936, witness := RowWitness.topPrime 11909 },
  { lower := 12005, upper := 12040, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12349, witness := RowWitness.topPrime 12301 },
  { lower := 13125, upper := 13182, witness := RowWitness.topPrime 13121 },
  { lower := 13183, upper := 13186, witness := RowWitness.topPrime 13183 },
  { lower := 13225, upper := 13243, witness := RowWitness.topPrime 13219 },
  { lower := 13254, upper := 13286, witness := RowWitness.topPrime 13249 },
  { lower := 13310, upper := 13370, witness := RowWitness.topPrime 13309 },
  { lower := 13371, upper := 13371, witness := RowWitness.topPrime 13367 },
  { lower := 13456, upper := 13509, witness := RowWitness.topPrime 13451 },
  { lower := 13718, upper := 13772, witness := RowWitness.topPrime 13711 },
  { lower := 13773, upper := 13811, witness := RowWitness.topPrime 13763 },
  { lower := 14297, upper := 14354, witness := RowWitness.topPrime 14293 },
  { lower := 14355, upper := 14358, witness := RowWitness.topPrime 14347 },
  { lower := 14375, upper := 14397, witness := RowWitness.topPrime 14369 },
  { lower := 14406, upper := 14436, witness := RowWitness.topPrime 14401 },
  { lower := 14641, upper := 14641, witness := RowWitness.topPrime 14639 },
  { lower := 14792, upper := 14800, witness := RowWitness.topPrime 14783 },
  { lower := 14812, upper := 14853, witness := RowWitness.topPrime 14797 },
  { lower := 15059, upper := 15061, witness := RowWitness.topPrime 15053 },
  { lower := 15138, upper := 15190, witness := RowWitness.topPrime 15137 },
  { lower := 15341, upper := 15392, witness := RowWitness.topPrime 15331 },
  { lower := 15393, upper := 15421, witness := RowWitness.topPrime 15391 },
  { lower := 15979, upper := 16033, witness := RowWitness.topPrime 15973 },
  { lower := 16038, upper := 16040, witness := RowWitness.topPrime 16033 },
  { lower := 16428, upper := 16445, witness := RowWitness.topPrime 16427 },
  { lower := 16807, upper := 16848, witness := RowWitness.topPrime 16787 },
  { lower := 16849, upper := 16904, witness := RowWitness.topPrime 16843 },
  { lower := 16905, upper := 16915, witness := RowWitness.topPrime 16903 },
  { lower := 17500, upper := 17557, witness := RowWitness.topPrime 17497 },
  { lower := 17672, upper := 17722, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18542, witness := RowWitness.topPrime 18481 },
  { lower := 18543, upper := 18552, witness := RowWitness.topPrime 18541 },
  { lower := 18634, upper := 18666, witness := RowWitness.topPrime 18617 },
  { lower := 19208, upper := 19227, witness := RowWitness.topPrime 19207 },
  { lower := 19663, upper := 19722, witness := RowWitness.topPrime 19661 },
  { lower := 19723, upper := 19724, witness := RowWitness.topPrime 19717 },
  { lower := 20184, upper := 20233, witness := RowWitness.topPrime 20183 },
  { lower := 20535, upper := 20541, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20596, witness := RowWitness.topPrime 20563 },
  { lower := 21866, upper := 21924, witness := RowWitness.topPrime 21863 },
  { lower := 21925, upper := 21936, witness := RowWitness.topPrime 21911 },
  { lower := 22528, upper := 22533, witness := RowWitness.topPrime 22511 },
  { lower := 23548, upper := 23595, witness := RowWitness.topPrime 23539 },
  { lower := 24010, upper := 24019, witness := RowWitness.topPrime 24007 },
  { lower := 24037, upper := 24090, witness := RowWitness.topPrime 24029 },
  { lower := 24091, upper := 24098, witness := RowWitness.topPrime 24091 },
  { lower := 24334, upper := 24360, witness := RowWitness.topPrime 24329 },
  { lower := 24367, upper := 24420, witness := RowWitness.topPrime 24359 },
  { lower := 24421, upper := 24428, witness := RowWitness.topPrime 24421 },
  { lower := 24576, upper := 24626, witness := RowWitness.topPrime 24571 },
  { lower := 25230, upper := 25276, witness := RowWitness.topPrime 25229 },
  { lower := 25281, upper := 25322, witness := RowWitness.topPrime 25261 },
  { lower := 25323, upper := 25342, witness := RowWitness.topPrime 25321 },
  { lower := 26047, upper := 26072, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26425, witness := RowWitness.topPrime 26407 },
  { lower := 26624, upper := 26658, witness := RowWitness.topPrime 26597 },
  { lower := 26659, upper := 26681, witness := RowWitness.topPrime 26647 },
  { lower := 27436, upper := 27441, witness := RowWitness.topPrime 27431 },
  { lower := 28125, upper := 28151, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28622, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28733, witness := RowWitness.topPrime 28711 },
  { lower := 28749, upper := 28778, witness := RowWitness.topPrime 28729 },
  { lower := 30618, upper := 30654, witness := RowWitness.topPrime 30593 },
  { lower := 30655, upper := 30674, witness := RowWitness.topPrime 30649 },
  { lower := 30926, upper := 30960, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31274, witness := RowWitness.topPrime 31249 },
  { lower := 31487, upper := 31494, witness := RowWitness.topPrime 31481 },
  { lower := 31944, upper := 31968, witness := RowWitness.topPrime 31907 },
  { lower := 31969, upper := 32000, witness := RowWitness.topPrime 31963 },
  { lower := 32805, upper := 32829, witness := RowWitness.topPrime 32803 },
  { lower := 32856, upper := 32866, witness := RowWitness.topPrime 32843 },
  { lower := 33282, upper := 33308, witness := RowWitness.topPrime 33247 },
  { lower := 33309, upper := 33336, witness := RowWitness.topPrime 33301 },
  { lower := 33620, upper := 33675, witness := RowWitness.topPrime 33619 },
  { lower := 34391, upper := 34436, witness := RowWitness.topPrime 34381 },
  { lower := 35152, upper := 35192, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35362, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36558, witness := RowWitness.topPrime 36497 },
  { lower := 36559, upper := 36562, witness := RowWitness.topPrime 36559 },
  { lower := 36980, upper := 37040, witness := RowWitness.topPrime 36979 },
  { lower := 37041, upper := 37041, witness := RowWitness.topPrime 37039 },
  { lower := 37210, upper := 37240, witness := RowWitness.topPrime 37201 },
  { lower := 37553, upper := 37561, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39384, witness := RowWitness.topPrime 39323 },
  { lower := 39385, upper := 39387, witness := RowWitness.topPrime 39383 },
  { lower := 40678, upper := 40686, witness := RowWitness.topPrime 40639 },
  { lower := 40960, upper := 40992, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41804, witness := RowWitness.topPrime 41771 },
  { lower := 42025, upper := 42032, witness := RowWitness.topPrime 42023 },
  { lower := 43740, upper := 43782, witness := RowWitness.topPrime 43721 },
  { lower := 43783, upper := 43801, witness := RowWitness.topPrime 43783 },
  { lower := 43940, upper := 43984, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44241, witness := RowWitness.topPrime 44207 },
  { lower := 48020, upper := 48078, witness := RowWitness.topPrime 48017 },
  { lower := 48079, upper := 48081, witness := RowWitness.topPrime 48079 },
  { lower := 48114, upper := 48135, witness := RowWitness.topPrime 48109 },
  { lower := 48373, upper := 48395, witness := RowWitness.topPrime 48371 },
  { lower := 48778, upper := 48795, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49191, witness := RowWitness.topPrime 49139 },
  { lower := 50562, upper := 50592, witness := RowWitness.topPrime 50551 },
  { lower := 54925, upper := 54933, witness := RowWitness.topPrime 54919 },
  { lower := 55225, upper := 55280, witness := RowWitness.topPrime 55219 },
  { lower := 55281, upper := 55284, witness := RowWitness.topPrime 55259 },
  { lower := 58989, upper := 59017, witness := RowWitness.topPrime 58979 },
  { lower := 59049, upper := 59050, witness := RowWitness.topPrime 59029 },
  { lower := 59375, upper := 59380, witness := RowWitness.topPrime 59369 },
  { lower := 65625, upper := 65671, witness := RowWitness.topPrime 65617 },
  { lower := 68782, upper := 68811, witness := RowWitness.topPrime 68777 },
  { lower := 73205, upper := 73228, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73756, witness := RowWitness.topPrime 73727 },
  { lower := 78141, upper := 78186, witness := RowWitness.topPrime 78139 },
  { lower := 81920, upper := 81923, witness := RowWitness.topPrime 81919 },
  { lower := 83544, upper := 83582, witness := RowWitness.topPrime 83537 },
  { lower := 98304, upper := 98321, witness := RowWitness.topPrime 98299 },
  { lower := 137842, upper := 137842, witness := RowWitness.topPrime 137831 },
  { lower := 150903, upper := 150959, witness := RowWitness.topPrime 150901 }
]

def row062_layers : List CoverLayer := [
  { lower := 3782, upper := 7564, M := 36 },
  { lower := 7564, upper := 15128, M := 33 },
  { lower := 15128, upper := 30256, M := 30 },
  { lower := 30256, upper := 60512, M := 27 },
  { lower := 60512, upper := 121024, M := 25 },
  { lower := 121024, upper := 242048, M := 23 },
  { lower := 242048, upper := 484096, M := 21 },
  { lower := 484096, upper := 968192, M := 19 },
  { lower := 968192, upper := 1936384, M := 17 },
  { lower := 1936384, upper := 3872768, M := 16 },
  { lower := 3872768, upper := 7745536, M := 14 },
  { lower := 7745536, upper := 15491072, M := 13 },
  { lower := 15491072, upper := 30982144, M := 12 },
  { lower := 30982144, upper := 61964288, M := 11 },
  { lower := 61964288, upper := 123928576, M := 10 },
  { lower := 123928576, upper := 247857152, M := 9 },
  { lower := 247857152, upper := 495714304, M := 8 },
  { lower := 495714304, upper := 991428608, M := 8 },
  { lower := 991428608, upper := 1982857216, M := 7 },
  { lower := 1982857216, upper := 3965714432, M := 6 },
  { lower := 3965714432, upper := 7931428864, M := 6 },
  { lower := 7931428864, upper := 15862857728, M := 5 },
  { lower := 15862857728, upper := 31725715456, M := 5 },
  { lower := 31725715456, upper := 63451430912, M := 5 },
  { lower := 63451430912, upper := 126902861824, M := 4 },
  { lower := 126902861824, upper := 253805723648, M := 4 },
  { lower := 253805723648, upper := 507611447296, M := 4 },
  { lower := 507611447296, upper := 1015222894592, M := 3 },
  { lower := 1015222894592, upper := 2030445789184, M := 3 },
  { lower := 2030445789184, upper := 4060891578368, M := 3 },
  { lower := 4060891578368, upper := 8121783156736, M := 3 },
  { lower := 8121783156736, upper := 16243566313472, M := 2 },
  { lower := 16243566313472, upper := 32487132626944, M := 2 },
  { lower := 32487132626944, upper := 64974265253888, M := 2 },
  { lower := 64974265253888, upper := 129948530507776, M := 2 },
  { lower := 129948530507776, upper := 259897061015552, M := 2 },
  { lower := 259897061015552, upper := 519794122031104, M := 2 },
  { lower := 519794122031104, upper := 1000000000000000, M := 2 }
]

def row062 : FiniteCoverRow := {
  height := row062_height,
  goods := row062_goods,
  layers := row062_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_good000_checked :
    goodSegmentCheck 62 20 42
      { lower := 126, upper := 174, witness := RowWitness.topPrime 113 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good001_checked :
    goodSegmentCheck 62 20 42
      { lower := 175, upper := 234, witness := RowWitness.topPrime 173 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good002_checked :
    goodSegmentCheck 62 20 42
      { lower := 235, upper := 294, witness := RowWitness.topPrime 233 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good003_checked :
    goodSegmentCheck 62 20 42
      { lower := 295, upper := 354, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good004_checked :
    goodSegmentCheck 62 20 42
      { lower := 355, upper := 414, witness := RowWitness.topPrime 353 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good005_checked :
    goodSegmentCheck 62 20 42
      { lower := 415, upper := 470, witness := RowWitness.topPrime 409 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good006_checked :
    goodSegmentCheck 62 20 42
      { lower := 471, upper := 528, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good007_checked :
    goodSegmentCheck 62 20 42
      { lower := 529, upper := 584, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good008_checked :
    goodSegmentCheck 62 20 42
      { lower := 585, upper := 638, witness := RowWitness.topPrime 577 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good009_checked :
    goodSegmentCheck 62 20 42
      { lower := 639, upper := 692, witness := RowWitness.topPrime 631 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good010_checked :
    goodSegmentCheck 62 20 42
      { lower := 693, upper := 752, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good011_checked :
    goodSegmentCheck 62 20 42
      { lower := 753, upper := 812, witness := RowWitness.topPrime 751 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good012_checked :
    goodSegmentCheck 62 20 42
      { lower := 813, upper := 872, witness := RowWitness.topPrime 811 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good013_checked :
    goodSegmentCheck 62 20 42
      { lower := 873, upper := 924, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good014_checked :
    goodSegmentCheck 62 20 42
      { lower := 925, upper := 980, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good015_checked :
    goodSegmentCheck 62 20 42
      { lower := 981, upper := 1038, witness := RowWitness.topPrime 977 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_good016_checked :
    goodSegmentCheck 62 20 42
      { lower := 1039, upper := 1100, witness := RowWitness.topPrime 1039 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good017_checked :
    goodSegmentCheck 62 20 42
      { lower := 1101, upper := 1158, witness := RowWitness.topPrime 1097 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good018_checked :
    goodSegmentCheck 62 20 42
      { lower := 1159, upper := 1214, witness := RowWitness.topPrime 1153 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good019_checked :
    goodSegmentCheck 62 20 42
      { lower := 1215, upper := 1274, witness := RowWitness.topPrime 1213 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good020_checked :
    goodSegmentCheck 62 20 42
      { lower := 1275, upper := 1320, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good021_checked :
    goodSegmentCheck 62 20 42
      { lower := 1321, upper := 1382, witness := RowWitness.topPrime 1321 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good022_checked :
    goodSegmentCheck 62 20 42
      { lower := 1383, upper := 1442, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good023_checked :
    goodSegmentCheck 62 20 42
      { lower := 1443, upper := 1500, witness := RowWitness.topPrime 1439 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good024_checked :
    goodSegmentCheck 62 20 42
      { lower := 1501, upper := 1560, witness := RowWitness.topPrime 1499 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good025_checked :
    goodSegmentCheck 62 20 42
      { lower := 1561, upper := 1620, witness := RowWitness.topPrime 1559 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good026_checked :
    goodSegmentCheck 62 20 42
      { lower := 1621, upper := 1682, witness := RowWitness.topPrime 1621 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good027_checked :
    goodSegmentCheck 62 20 42
      { lower := 1683, upper := 1730, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good028_checked :
    goodSegmentCheck 62 20 42
      { lower := 1731, upper := 1784, witness := RowWitness.topPrime 1723 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good029_checked :
    goodSegmentCheck 62 20 42
      { lower := 1785, upper := 1844, witness := RowWitness.topPrime 1783 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good030_checked :
    goodSegmentCheck 62 20 42
      { lower := 1845, upper := 1892, witness := RowWitness.topPrime 1831 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good031_checked :
    goodSegmentCheck 62 20 42
      { lower := 1893, upper := 1950, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_good032_checked :
    goodSegmentCheck 62 20 42
      { lower := 1951, upper := 2012, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good033_checked :
    goodSegmentCheck 62 20 42
      { lower := 2013, upper := 2072, witness := RowWitness.topPrime 2011 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good034_checked :
    goodSegmentCheck 62 20 42
      { lower := 2073, upper := 2130, witness := RowWitness.topPrime 2069 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good035_checked :
    goodSegmentCheck 62 20 42
      { lower := 2131, upper := 2192, witness := RowWitness.topPrime 2131 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good036_checked :
    goodSegmentCheck 62 20 42
      { lower := 2193, upper := 2240, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good037_checked :
    goodSegmentCheck 62 20 42
      { lower := 2241, upper := 2300, witness := RowWitness.topPrime 2239 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good038_checked :
    goodSegmentCheck 62 20 42
      { lower := 2301, upper := 2358, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good039_checked :
    goodSegmentCheck 62 20 42
      { lower := 2359, upper := 2418, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good040_checked :
    goodSegmentCheck 62 20 42
      { lower := 2419, upper := 2478, witness := RowWitness.topPrime 2417 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good041_checked :
    goodSegmentCheck 62 20 42
      { lower := 2479, upper := 2538, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good042_checked :
    goodSegmentCheck 62 20 42
      { lower := 2539, upper := 2600, witness := RowWitness.topPrime 2539 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good043_checked :
    goodSegmentCheck 62 20 42
      { lower := 2601, upper := 2654, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good044_checked :
    goodSegmentCheck 62 20 42
      { lower := 2655, upper := 2708, witness := RowWitness.topPrime 2647 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good045_checked :
    goodSegmentCheck 62 20 42
      { lower := 2709, upper := 2768, witness := RowWitness.topPrime 2707 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good046_checked :
    goodSegmentCheck 62 20 42
      { lower := 2769, upper := 2828, witness := RowWitness.topPrime 2767 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good047_checked :
    goodSegmentCheck 62 20 42
      { lower := 2829, upper := 2880, witness := RowWitness.topPrime 2819 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_good048_checked :
    goodSegmentCheck 62 20 42
      { lower := 2881, upper := 2940, witness := RowWitness.topPrime 2879 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good049_checked :
    goodSegmentCheck 62 20 42
      { lower := 2941, upper := 3000, witness := RowWitness.topPrime 2939 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good050_checked :
    goodSegmentCheck 62 20 42
      { lower := 3001, upper := 3062, witness := RowWitness.topPrime 3001 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good051_checked :
    goodSegmentCheck 62 20 42
      { lower := 3063, upper := 3122, witness := RowWitness.topPrime 3061 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good052_checked :
    goodSegmentCheck 62 20 42
      { lower := 3123, upper := 3182, witness := RowWitness.topPrime 3121 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good053_checked :
    goodSegmentCheck 62 20 42
      { lower := 3183, upper := 3242, witness := RowWitness.topPrime 3181 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good054_checked :
    goodSegmentCheck 62 20 42
      { lower := 3243, upper := 3290, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good055_checked :
    goodSegmentCheck 62 20 42
      { lower := 3291, upper := 3332, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good056_checked :
    goodSegmentCheck 62 20 42
      { lower := 3333, upper := 3392, witness := RowWitness.topPrime 3331 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good057_checked :
    goodSegmentCheck 62 20 42
      { lower := 3393, upper := 3452, witness := RowWitness.topPrime 3391 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good058_checked :
    goodSegmentCheck 62 20 42
      { lower := 3453, upper := 3510, witness := RowWitness.topPrime 3449 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good059_checked :
    goodSegmentCheck 62 20 42
      { lower := 3511, upper := 3572, witness := RowWitness.topPrime 3511 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good060_checked :
    goodSegmentCheck 62 20 42
      { lower := 3573, upper := 3632, witness := RowWitness.topPrime 3571 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good061_checked :
    goodSegmentCheck 62 20 42
      { lower := 3633, upper := 3692, witness := RowWitness.topPrime 3631 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good062_checked :
    goodSegmentCheck 62 20 42
      { lower := 3693, upper := 3752, witness := RowWitness.topPrime 3691 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good063_checked :
    goodSegmentCheck 62 20 42
      { lower := 3753, upper := 3800, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_good064_checked :
    goodSegmentCheck 62 20 42
      { lower := 3801, upper := 3818, witness := RowWitness.topPrime 3797 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good065_checked :
    goodSegmentCheck 62 20 42
      { lower := 3872, upper := 3924, witness := RowWitness.topPrime 3863 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good066_checked :
    goodSegmentCheck 62 20 42
      { lower := 3925, upper := 3948, witness := RowWitness.topPrime 3923 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good067_checked :
    goodSegmentCheck 62 20 42
      { lower := 3993, upper := 4050, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good068_checked :
    goodSegmentCheck 62 20 42
      { lower := 4051, upper := 4112, witness := RowWitness.topPrime 4051 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good069_checked :
    goodSegmentCheck 62 20 42
      { lower := 4113, upper := 4172, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good070_checked :
    goodSegmentCheck 62 20 42
      { lower := 4173, upper := 4186, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good071_checked :
    goodSegmentCheck 62 20 42
      { lower := 4225, upper := 4280, witness := RowWitness.topPrime 4219 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good072_checked :
    goodSegmentCheck 62 20 42
      { lower := 4281, upper := 4296, witness := RowWitness.topPrime 4273 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good073_checked :
    goodSegmentCheck 62 20 42
      { lower := 4335, upper := 4388, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good074_checked :
    goodSegmentCheck 62 20 42
      { lower := 4389, upper := 4434, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good075_checked :
    goodSegmentCheck 62 20 42
      { lower := 4435, upper := 4455, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good076_checked :
    goodSegmentCheck 62 20 42
      { lower := 4459, upper := 4479, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good077_checked :
    goodSegmentCheck 62 20 42
      { lower := 4500, upper := 4520, witness := RowWitness.topPrime 4493 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good078_checked :
    goodSegmentCheck 62 20 42
      { lower := 4608, upper := 4664, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good079_checked :
    goodSegmentCheck 62 20 42
      { lower := 4665, upper := 4678, witness := RowWitness.topPrime 4663 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_good080_checked :
    goodSegmentCheck 62 20 42
      { lower := 4732, upper := 4754, witness := RowWitness.topPrime 4729 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good081_checked :
    goodSegmentCheck 62 20 42
      { lower := 4761, upper := 4793, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good082_checked :
    goodSegmentCheck 62 20 42
      { lower := 4802, upper := 4822, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good083_checked :
    goodSegmentCheck 62 20 42
      { lower := 4860, upper := 4863, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good084_checked :
    goodSegmentCheck 62 20 42
      { lower := 4901, upper := 4950, witness := RowWitness.topPrime 4889 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good085_checked :
    goodSegmentCheck 62 20 42
      { lower := 4951, upper := 4962, witness := RowWitness.topPrime 4951 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good086_checked :
    goodSegmentCheck 62 20 42
      { lower := 5043, upper := 5100, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good087_checked :
    goodSegmentCheck 62 20 42
      { lower := 5101, upper := 5162, witness := RowWitness.topPrime 5101 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good088_checked :
    goodSegmentCheck 62 20 42
      { lower := 5163, upper := 5181, witness := RowWitness.topPrime 5153 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good089_checked :
    goodSegmentCheck 62 20 42
      { lower := 5202, upper := 5206, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good090_checked :
    goodSegmentCheck 62 20 42
      { lower := 5239, upper := 5263, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good091_checked :
    goodSegmentCheck 62 20 42
      { lower := 5290, upper := 5300, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good092_checked :
    goodSegmentCheck 62 20 42
      { lower := 5324, upper := 5384, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good093_checked :
    goodSegmentCheck 62 20 42
      { lower := 5385, upper := 5385, witness := RowWitness.topPrime 5381 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good094_checked :
    goodSegmentCheck 62 20 42
      { lower := 5415, upper := 5469, witness := RowWitness.topPrime 5413 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good095_checked :
    goodSegmentCheck 62 20 42
      { lower := 5476, upper := 5476, witness := RowWitness.topPrime 5471 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_good096_checked :
    goodSegmentCheck 62 20 42
      { lower := 5488, upper := 5544, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good097_checked :
    goodSegmentCheck 62 20 42
      { lower := 5545, upper := 5552, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good098_checked :
    goodSegmentCheck 62 20 42
      { lower := 5577, upper := 5634, witness := RowWitness.topPrime 5573 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good099_checked :
    goodSegmentCheck 62 20 42
      { lower := 5635, upper := 5684, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good100_checked :
    goodSegmentCheck 62 20 42
      { lower := 5685, upper := 5686, witness := RowWitness.topPrime 5683 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good101_checked :
    goodSegmentCheck 62 20 42
      { lower := 5776, upper := 5810, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good102_checked :
    goodSegmentCheck 62 20 42
      { lower := 5811, upper := 5868, witness := RowWitness.topPrime 5807 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good103_checked :
    goodSegmentCheck 62 20 42
      { lower := 5869, upper := 5893, witness := RowWitness.topPrime 5869 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good104_checked :
    goodSegmentCheck 62 20 42
      { lower := 5915, upper := 5948, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good105_checked :
    goodSegmentCheck 62 20 42
      { lower := 6075, upper := 6134, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good106_checked :
    goodSegmentCheck 62 20 42
      { lower := 6135, upper := 6194, witness := RowWitness.topPrime 6133 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good107_checked :
    goodSegmentCheck 62 20 42
      { lower := 6195, upper := 6205, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good108_checked :
    goodSegmentCheck 62 20 42
      { lower := 6348, upper := 6404, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good109_checked :
    goodSegmentCheck 62 20 42
      { lower := 6405, upper := 6409, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good110_checked :
    goodSegmentCheck 62 20 42
      { lower := 6517, upper := 6552, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good111_checked :
    goodSegmentCheck 62 20 42
      { lower := 6553, upper := 6559, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_good112_checked :
    goodSegmentCheck 62 20 42
      { lower := 6561, upper := 6578, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good113_checked :
    goodSegmentCheck 62 20 42
      { lower := 6591, upper := 6622, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good114_checked :
    goodSegmentCheck 62 20 42
      { lower := 6627, upper := 6680, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good115_checked :
    goodSegmentCheck 62 20 42
      { lower := 6681, upper := 6716, witness := RowWitness.topPrime 6679 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good116_checked :
    goodSegmentCheck 62 20 42
      { lower := 6728, upper := 6780, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good117_checked :
    goodSegmentCheck 62 20 42
      { lower := 6781, upper := 6785, witness := RowWitness.topPrime 6781 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good118_checked :
    goodSegmentCheck 62 20 42
      { lower := 6845, upper := 6902, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good119_checked :
    goodSegmentCheck 62 20 42
      { lower := 6903, upper := 6938, witness := RowWitness.topPrime 6899 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good120_checked :
    goodSegmentCheck 62 20 42
      { lower := 6962, upper := 6997, witness := RowWitness.topPrime 6961 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good121_checked :
    goodSegmentCheck 62 20 42
      { lower := 7203, upper := 7254, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good122_checked :
    goodSegmentCheck 62 20 42
      { lower := 7255, upper := 7281, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good123_checked :
    goodSegmentCheck 62 20 42
      { lower := 7406, upper := 7454, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good124_checked :
    goodSegmentCheck 62 20 42
      { lower := 7455, upper := 7467, witness := RowWitness.topPrime 7451 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good125_checked :
    goodSegmentCheck 62 20 42
      { lower := 7500, upper := 7503, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good126_checked :
    goodSegmentCheck 62 20 42
      { lower := 7514, upper := 7568, witness := RowWitness.topPrime 7507 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good127_checked :
    goodSegmentCheck 62 20 42
      { lower := 7569, upper := 7622, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_good128_checked :
    goodSegmentCheck 62 20 42
      { lower := 7623, upper := 7630, witness := RowWitness.topPrime 7621 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good129_checked :
    goodSegmentCheck 62 20 42
      { lower := 7803, upper := 7837, witness := RowWitness.topPrime 7793 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good130_checked :
    goodSegmentCheck 62 20 42
      { lower := 7935, upper := 7994, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good131_checked :
    goodSegmentCheck 62 20 42
      { lower := 7995, upper := 8003, witness := RowWitness.topPrime 7993 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good132_checked :
    goodSegmentCheck 62 20 42
      { lower := 8019, upper := 8047, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good133_checked :
    goodSegmentCheck 62 20 42
      { lower := 8125, upper := 8153, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good134_checked :
    goodSegmentCheck 62 20 42
      { lower := 8214, upper := 8270, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good135_checked :
    goodSegmentCheck 62 20 42
      { lower := 8271, upper := 8275, witness := RowWitness.topPrime 8269 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good136_checked :
    goodSegmentCheck 62 20 42
      { lower := 8405, upper := 8450, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good137_checked :
    goodSegmentCheck 62 20 42
      { lower := 8451, upper := 8488, witness := RowWitness.topPrime 8447 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good138_checked :
    goodSegmentCheck 62 20 42
      { lower := 8670, upper := 8725, witness := RowWitness.topPrime 8669 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good139_checked :
    goodSegmentCheck 62 20 42
      { lower := 8750, upper := 8808, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good140_checked :
    goodSegmentCheck 62 20 42
      { lower := 8809, upper := 8811, witness := RowWitness.topPrime 8807 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good141_checked :
    goodSegmentCheck 62 20 42
      { lower := 8836, upper := 8849, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good142_checked :
    goodSegmentCheck 62 20 42
      { lower := 8959, upper := 8979, witness := RowWitness.topPrime 8951 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good143_checked :
    goodSegmentCheck 62 20 42
      { lower := 8993, upper := 9020, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_good144_checked :
    goodSegmentCheck 62 20 42
      { lower := 9025, upper := 9054, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good145_checked :
    goodSegmentCheck 62 20 42
      { lower := 9245, upper := 9302, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good146_checked :
    goodSegmentCheck 62 20 42
      { lower := 9303, upper := 9312, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good147_checked :
    goodSegmentCheck 62 20 42
      { lower := 9317, upper := 9322, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good148_checked :
    goodSegmentCheck 62 20 42
      { lower := 9375, upper := 9378, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good149_checked :
    goodSegmentCheck 62 20 42
      { lower := 9386, upper := 9436, witness := RowWitness.topPrime 9377 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good150_checked :
    goodSegmentCheck 62 20 42
      { lower := 9522, upper := 9582, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good151_checked :
    goodSegmentCheck 62 20 42
      { lower := 9583, upper := 9598, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good152_checked :
    goodSegmentCheck 62 20 42
      { lower := 9604, upper := 9644, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good153_checked :
    goodSegmentCheck 62 20 42
      { lower := 10000, upper := 10008, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good154_checked :
    goodSegmentCheck 62 20 42
      { lower := 10051, upper := 10061, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good155_checked :
    goodSegmentCheck 62 20 42
      { lower := 10086, upper := 10140, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good156_checked :
    goodSegmentCheck 62 20 42
      { lower := 10141, upper := 10153, witness := RowWitness.topPrime 10141 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good157_checked :
    goodSegmentCheck 62 20 42
      { lower := 10240, upper := 10267, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good158_checked :
    goodSegmentCheck 62 20 42
      { lower := 10290, upper := 10301, witness := RowWitness.topPrime 10289 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good159_checked :
    goodSegmentCheck 62 20 42
      { lower := 10469, upper := 10504, witness := RowWitness.topPrime 10463 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_good160_checked :
    goodSegmentCheck 62 20 42
      { lower := 10625, upper := 10674, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good161_checked :
    goodSegmentCheck 62 20 42
      { lower := 10675, upper := 10694, witness := RowWitness.topPrime 10667 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good162_checked :
    goodSegmentCheck 62 20 42
      { lower := 10935, upper := 10970, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good163_checked :
    goodSegmentCheck 62 20 42
      { lower := 10971, upper := 11018, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good164_checked :
    goodSegmentCheck 62 20 42
      { lower := 11019, upper := 11037, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good165_checked :
    goodSegmentCheck 62 20 42
      { lower := 11045, upper := 11046, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good166_checked :
    goodSegmentCheck 62 20 42
      { lower := 11094, upper := 11106, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good167_checked :
    goodSegmentCheck 62 20 42
      { lower := 11109, upper := 11154, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good168_checked :
    goodSegmentCheck 62 20 42
      { lower := 11155, upper := 11155, witness := RowWitness.topPrime 11149 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good169_checked :
    goodSegmentCheck 62 20 42
      { lower := 11163, upper := 11170, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good170_checked :
    goodSegmentCheck 62 20 42
      { lower := 11191, upper := 11224, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good171_checked :
    goodSegmentCheck 62 20 42
      { lower := 11236, upper := 11274, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good172_checked :
    goodSegmentCheck 62 20 42
      { lower := 11275, upper := 11311, witness := RowWitness.topPrime 11273 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good173_checked :
    goodSegmentCheck 62 20 42
      { lower := 11319, upper := 11325, witness := RowWitness.topPrime 11317 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good174_checked :
    goodSegmentCheck 62 20 42
      { lower := 11664, upper := 11699, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good175_checked :
    goodSegmentCheck 62 20 42
      { lower := 11774, upper := 11804, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_good176_checked :
    goodSegmentCheck 62 20 42
      { lower := 11805, upper := 11828, witness := RowWitness.topPrime 11801 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good177_checked :
    goodSegmentCheck 62 20 42
      { lower := 11913, upper := 11936, witness := RowWitness.topPrime 11909 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good178_checked :
    goodSegmentCheck 62 20 42
      { lower := 12005, upper := 12040, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good179_checked :
    goodSegmentCheck 62 20 42
      { lower := 12321, upper := 12349, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good180_checked :
    goodSegmentCheck 62 20 42
      { lower := 13125, upper := 13182, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good181_checked :
    goodSegmentCheck 62 20 42
      { lower := 13183, upper := 13186, witness := RowWitness.topPrime 13183 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good182_checked :
    goodSegmentCheck 62 20 42
      { lower := 13225, upper := 13243, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good183_checked :
    goodSegmentCheck 62 20 42
      { lower := 13254, upper := 13286, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good184_checked :
    goodSegmentCheck 62 20 42
      { lower := 13310, upper := 13370, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good185_checked :
    goodSegmentCheck 62 20 42
      { lower := 13371, upper := 13371, witness := RowWitness.topPrime 13367 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good186_checked :
    goodSegmentCheck 62 20 42
      { lower := 13456, upper := 13509, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good187_checked :
    goodSegmentCheck 62 20 42
      { lower := 13718, upper := 13772, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good188_checked :
    goodSegmentCheck 62 20 42
      { lower := 13773, upper := 13811, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good189_checked :
    goodSegmentCheck 62 20 42
      { lower := 14297, upper := 14354, witness := RowWitness.topPrime 14293 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good190_checked :
    goodSegmentCheck 62 20 42
      { lower := 14355, upper := 14358, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good191_checked :
    goodSegmentCheck 62 20 42
      { lower := 14375, upper := 14397, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_good192_checked :
    goodSegmentCheck 62 20 42
      { lower := 14406, upper := 14436, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good193_checked :
    goodSegmentCheck 62 20 42
      { lower := 14641, upper := 14641, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good194_checked :
    goodSegmentCheck 62 20 42
      { lower := 14792, upper := 14800, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good195_checked :
    goodSegmentCheck 62 20 42
      { lower := 14812, upper := 14853, witness := RowWitness.topPrime 14797 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good196_checked :
    goodSegmentCheck 62 20 42
      { lower := 15059, upper := 15061, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good197_checked :
    goodSegmentCheck 62 20 42
      { lower := 15138, upper := 15190, witness := RowWitness.topPrime 15137 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good198_checked :
    goodSegmentCheck 62 20 42
      { lower := 15341, upper := 15392, witness := RowWitness.topPrime 15331 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good199_checked :
    goodSegmentCheck 62 20 42
      { lower := 15393, upper := 15421, witness := RowWitness.topPrime 15391 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good200_checked :
    goodSegmentCheck 62 20 42
      { lower := 15979, upper := 16033, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good201_checked :
    goodSegmentCheck 62 20 42
      { lower := 16038, upper := 16040, witness := RowWitness.topPrime 16033 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good202_checked :
    goodSegmentCheck 62 20 42
      { lower := 16428, upper := 16445, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good203_checked :
    goodSegmentCheck 62 20 42
      { lower := 16807, upper := 16848, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good204_checked :
    goodSegmentCheck 62 20 42
      { lower := 16849, upper := 16904, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good205_checked :
    goodSegmentCheck 62 20 42
      { lower := 16905, upper := 16915, witness := RowWitness.topPrime 16903 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good206_checked :
    goodSegmentCheck 62 20 42
      { lower := 17500, upper := 17557, witness := RowWitness.topPrime 17497 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good207_checked :
    goodSegmentCheck 62 20 42
      { lower := 17672, upper := 17722, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_good208_checked :
    goodSegmentCheck 62 20 42
      { lower := 18490, upper := 18542, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good209_checked :
    goodSegmentCheck 62 20 42
      { lower := 18543, upper := 18552, witness := RowWitness.topPrime 18541 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good210_checked :
    goodSegmentCheck 62 20 42
      { lower := 18634, upper := 18666, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good211_checked :
    goodSegmentCheck 62 20 42
      { lower := 19208, upper := 19227, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good212_checked :
    goodSegmentCheck 62 20 42
      { lower := 19663, upper := 19722, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good213_checked :
    goodSegmentCheck 62 20 42
      { lower := 19723, upper := 19724, witness := RowWitness.topPrime 19717 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good214_checked :
    goodSegmentCheck 62 20 42
      { lower := 20184, upper := 20233, witness := RowWitness.topPrime 20183 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good215_checked :
    goodSegmentCheck 62 20 42
      { lower := 20535, upper := 20541, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good216_checked :
    goodSegmentCheck 62 20 42
      { lower := 20577, upper := 20596, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good217_checked :
    goodSegmentCheck 62 20 42
      { lower := 21866, upper := 21924, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good218_checked :
    goodSegmentCheck 62 20 42
      { lower := 21925, upper := 21936, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good219_checked :
    goodSegmentCheck 62 20 42
      { lower := 22528, upper := 22533, witness := RowWitness.topPrime 22511 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good220_checked :
    goodSegmentCheck 62 20 42
      { lower := 23548, upper := 23595, witness := RowWitness.topPrime 23539 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good221_checked :
    goodSegmentCheck 62 20 42
      { lower := 24010, upper := 24019, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good222_checked :
    goodSegmentCheck 62 20 42
      { lower := 24037, upper := 24090, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good223_checked :
    goodSegmentCheck 62 20 42
      { lower := 24091, upper := 24098, witness := RowWitness.topPrime 24091 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_good224_checked :
    goodSegmentCheck 62 20 42
      { lower := 24334, upper := 24360, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good225_checked :
    goodSegmentCheck 62 20 42
      { lower := 24367, upper := 24420, witness := RowWitness.topPrime 24359 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good226_checked :
    goodSegmentCheck 62 20 42
      { lower := 24421, upper := 24428, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good227_checked :
    goodSegmentCheck 62 20 42
      { lower := 24576, upper := 24626, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good228_checked :
    goodSegmentCheck 62 20 42
      { lower := 25230, upper := 25276, witness := RowWitness.topPrime 25229 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good229_checked :
    goodSegmentCheck 62 20 42
      { lower := 25281, upper := 25322, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good230_checked :
    goodSegmentCheck 62 20 42
      { lower := 25323, upper := 25342, witness := RowWitness.topPrime 25321 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good231_checked :
    goodSegmentCheck 62 20 42
      { lower := 26047, upper := 26072, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good232_checked :
    goodSegmentCheck 62 20 42
      { lower := 26411, upper := 26425, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good233_checked :
    goodSegmentCheck 62 20 42
      { lower := 26624, upper := 26658, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good234_checked :
    goodSegmentCheck 62 20 42
      { lower := 26659, upper := 26681, witness := RowWitness.topPrime 26647 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good235_checked :
    goodSegmentCheck 62 20 42
      { lower := 27436, upper := 27441, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good236_checked :
    goodSegmentCheck 62 20 42
      { lower := 28125, upper := 28151, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good237_checked :
    goodSegmentCheck 62 20 42
      { lower := 28577, upper := 28622, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good238_checked :
    goodSegmentCheck 62 20 42
      { lower := 28717, upper := 28733, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good239_checked :
    goodSegmentCheck 62 20 42
      { lower := 28749, upper := 28778, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_good240_checked :
    goodSegmentCheck 62 20 42
      { lower := 30618, upper := 30654, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good241_checked :
    goodSegmentCheck 62 20 42
      { lower := 30655, upper := 30674, witness := RowWitness.topPrime 30649 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good242_checked :
    goodSegmentCheck 62 20 42
      { lower := 30926, upper := 30960, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good243_checked :
    goodSegmentCheck 62 20 42
      { lower := 31250, upper := 31274, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good244_checked :
    goodSegmentCheck 62 20 42
      { lower := 31487, upper := 31494, witness := RowWitness.topPrime 31481 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good245_checked :
    goodSegmentCheck 62 20 42
      { lower := 31944, upper := 31968, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good246_checked :
    goodSegmentCheck 62 20 42
      { lower := 31969, upper := 32000, witness := RowWitness.topPrime 31963 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good247_checked :
    goodSegmentCheck 62 20 42
      { lower := 32805, upper := 32829, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good248_checked :
    goodSegmentCheck 62 20 42
      { lower := 32856, upper := 32866, witness := RowWitness.topPrime 32843 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good249_checked :
    goodSegmentCheck 62 20 42
      { lower := 33282, upper := 33308, witness := RowWitness.topPrime 33247 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good250_checked :
    goodSegmentCheck 62 20 42
      { lower := 33309, upper := 33336, witness := RowWitness.topPrime 33301 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good251_checked :
    goodSegmentCheck 62 20 42
      { lower := 33620, upper := 33675, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good252_checked :
    goodSegmentCheck 62 20 42
      { lower := 34391, upper := 34436, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good253_checked :
    goodSegmentCheck 62 20 42
      { lower := 35152, upper := 35192, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good254_checked :
    goodSegmentCheck 62 20 42
      { lower := 35344, upper := 35362, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good255_checked :
    goodSegmentCheck 62 20 42
      { lower := 36517, upper := 36558, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_good256_checked :
    goodSegmentCheck 62 20 42
      { lower := 36559, upper := 36562, witness := RowWitness.topPrime 36559 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good257_checked :
    goodSegmentCheck 62 20 42
      { lower := 36980, upper := 37040, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good258_checked :
    goodSegmentCheck 62 20 42
      { lower := 37041, upper := 37041, witness := RowWitness.topPrime 37039 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good259_checked :
    goodSegmentCheck 62 20 42
      { lower := 37210, upper := 37240, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good260_checked :
    goodSegmentCheck 62 20 42
      { lower := 37553, upper := 37561, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good261_checked :
    goodSegmentCheck 62 20 42
      { lower := 39326, upper := 39384, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good262_checked :
    goodSegmentCheck 62 20 42
      { lower := 39385, upper := 39387, witness := RowWitness.topPrime 39383 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good263_checked :
    goodSegmentCheck 62 20 42
      { lower := 40678, upper := 40686, witness := RowWitness.topPrime 40639 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good264_checked :
    goodSegmentCheck 62 20 42
      { lower := 40960, upper := 40992, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good265_checked :
    goodSegmentCheck 62 20 42
      { lower := 41772, upper := 41804, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good266_checked :
    goodSegmentCheck 62 20 42
      { lower := 42025, upper := 42032, witness := RowWitness.topPrime 42023 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good267_checked :
    goodSegmentCheck 62 20 42
      { lower := 43740, upper := 43782, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good268_checked :
    goodSegmentCheck 62 20 42
      { lower := 43783, upper := 43801, witness := RowWitness.topPrime 43783 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good269_checked :
    goodSegmentCheck 62 20 42
      { lower := 43940, upper := 43984, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good270_checked :
    goodSegmentCheck 62 20 42
      { lower := 44217, upper := 44241, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good271_checked :
    goodSegmentCheck 62 20 42
      { lower := 48020, upper := 48078, witness := RowWitness.topPrime 48017 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good264_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good265_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good266_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good267_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good268_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good269_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good270_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good271_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_good272_checked :
    goodSegmentCheck 62 20 42
      { lower := 48079, upper := 48081, witness := RowWitness.topPrime 48079 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good273_checked :
    goodSegmentCheck 62 20 42
      { lower := 48114, upper := 48135, witness := RowWitness.topPrime 48109 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good274_checked :
    goodSegmentCheck 62 20 42
      { lower := 48373, upper := 48395, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good275_checked :
    goodSegmentCheck 62 20 42
      { lower := 48778, upper := 48795, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good276_checked :
    goodSegmentCheck 62 20 42
      { lower := 49152, upper := 49191, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good277_checked :
    goodSegmentCheck 62 20 42
      { lower := 50562, upper := 50592, witness := RowWitness.topPrime 50551 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good278_checked :
    goodSegmentCheck 62 20 42
      { lower := 54925, upper := 54933, witness := RowWitness.topPrime 54919 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good279_checked :
    goodSegmentCheck 62 20 42
      { lower := 55225, upper := 55280, witness := RowWitness.topPrime 55219 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good280_checked :
    goodSegmentCheck 62 20 42
      { lower := 55281, upper := 55284, witness := RowWitness.topPrime 55259 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good281_checked :
    goodSegmentCheck 62 20 42
      { lower := 58989, upper := 59017, witness := RowWitness.topPrime 58979 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good282_checked :
    goodSegmentCheck 62 20 42
      { lower := 59049, upper := 59050, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good283_checked :
    goodSegmentCheck 62 20 42
      { lower := 59375, upper := 59380, witness := RowWitness.topPrime 59369 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good284_checked :
    goodSegmentCheck 62 20 42
      { lower := 65625, upper := 65671, witness := RowWitness.topPrime 65617 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good285_checked :
    goodSegmentCheck 62 20 42
      { lower := 68782, upper := 68811, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good286_checked :
    goodSegmentCheck 62 20 42
      { lower := 73205, upper := 73228, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good287_checked :
    goodSegmentCheck 62 20 42
      { lower := 73728, upper := 73756, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good272_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good273_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good274_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good275_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good276_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good277_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good278_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good279_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good280_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good281_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good282_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good283_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good284_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good285_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good286_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good287_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_good288_checked :
    goodSegmentCheck 62 20 42
      { lower := 78141, upper := 78186, witness := RowWitness.topPrime 78139 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good289_checked :
    goodSegmentCheck 62 20 42
      { lower := 81920, upper := 81923, witness := RowWitness.topPrime 81919 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good290_checked :
    goodSegmentCheck 62 20 42
      { lower := 83544, upper := 83582, witness := RowWitness.topPrime 83537 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good291_checked :
    goodSegmentCheck 62 20 42
      { lower := 98304, upper := 98321, witness := RowWitness.topPrime 98299 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good292_checked :
    goodSegmentCheck 62 20 42
      { lower := 137842, upper := 137842, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row062_good293_checked :
    goodSegmentCheck 62 20 42
      { lower := 150903, upper := 150959, witness := RowWitness.topPrime 150901 } = true := by
  exact good_top_prime_checked (i := 62) (r := 20) (s := 42) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good288_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good289_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good290_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good291_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good292_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_good293_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_goods_checked :
    row062.goods.all (goodSegmentCheck row062.height.i row062.height.r row062.height.s) = true := by
  change row062_goods.all (goodSegmentCheck 62 20 42) = true
  simp only [row062_goods, List.all_cons, List.all_nil,
    row062_good000_checked,
    row062_good001_checked,
    row062_good002_checked,
    row062_good003_checked,
    row062_good004_checked,
    row062_good005_checked,
    row062_good006_checked,
    row062_good007_checked,
    row062_good008_checked,
    row062_good009_checked,
    row062_good010_checked,
    row062_good011_checked,
    row062_good012_checked,
    row062_good013_checked,
    row062_good014_checked,
    row062_good015_checked,
    row062_good016_checked,
    row062_good017_checked,
    row062_good018_checked,
    row062_good019_checked,
    row062_good020_checked,
    row062_good021_checked,
    row062_good022_checked,
    row062_good023_checked,
    row062_good024_checked,
    row062_good025_checked,
    row062_good026_checked,
    row062_good027_checked,
    row062_good028_checked,
    row062_good029_checked,
    row062_good030_checked,
    row062_good031_checked,
    row062_good032_checked,
    row062_good033_checked,
    row062_good034_checked,
    row062_good035_checked,
    row062_good036_checked,
    row062_good037_checked,
    row062_good038_checked,
    row062_good039_checked,
    row062_good040_checked,
    row062_good041_checked,
    row062_good042_checked,
    row062_good043_checked,
    row062_good044_checked,
    row062_good045_checked,
    row062_good046_checked,
    row062_good047_checked,
    row062_good048_checked,
    row062_good049_checked,
    row062_good050_checked,
    row062_good051_checked,
    row062_good052_checked,
    row062_good053_checked,
    row062_good054_checked,
    row062_good055_checked,
    row062_good056_checked,
    row062_good057_checked,
    row062_good058_checked,
    row062_good059_checked,
    row062_good060_checked,
    row062_good061_checked,
    row062_good062_checked,
    row062_good063_checked,
    row062_good064_checked,
    row062_good065_checked,
    row062_good066_checked,
    row062_good067_checked,
    row062_good068_checked,
    row062_good069_checked,
    row062_good070_checked,
    row062_good071_checked,
    row062_good072_checked,
    row062_good073_checked,
    row062_good074_checked,
    row062_good075_checked,
    row062_good076_checked,
    row062_good077_checked,
    row062_good078_checked,
    row062_good079_checked,
    row062_good080_checked,
    row062_good081_checked,
    row062_good082_checked,
    row062_good083_checked,
    row062_good084_checked,
    row062_good085_checked,
    row062_good086_checked,
    row062_good087_checked,
    row062_good088_checked,
    row062_good089_checked,
    row062_good090_checked,
    row062_good091_checked,
    row062_good092_checked,
    row062_good093_checked,
    row062_good094_checked,
    row062_good095_checked,
    row062_good096_checked,
    row062_good097_checked,
    row062_good098_checked,
    row062_good099_checked,
    row062_good100_checked,
    row062_good101_checked,
    row062_good102_checked,
    row062_good103_checked,
    row062_good104_checked,
    row062_good105_checked,
    row062_good106_checked,
    row062_good107_checked,
    row062_good108_checked,
    row062_good109_checked,
    row062_good110_checked,
    row062_good111_checked,
    row062_good112_checked,
    row062_good113_checked,
    row062_good114_checked,
    row062_good115_checked,
    row062_good116_checked,
    row062_good117_checked,
    row062_good118_checked,
    row062_good119_checked,
    row062_good120_checked,
    row062_good121_checked,
    row062_good122_checked,
    row062_good123_checked,
    row062_good124_checked,
    row062_good125_checked,
    row062_good126_checked,
    row062_good127_checked,
    row062_good128_checked,
    row062_good129_checked,
    row062_good130_checked,
    row062_good131_checked,
    row062_good132_checked,
    row062_good133_checked,
    row062_good134_checked,
    row062_good135_checked,
    row062_good136_checked,
    row062_good137_checked,
    row062_good138_checked,
    row062_good139_checked,
    row062_good140_checked,
    row062_good141_checked,
    row062_good142_checked,
    row062_good143_checked,
    row062_good144_checked,
    row062_good145_checked,
    row062_good146_checked,
    row062_good147_checked,
    row062_good148_checked,
    row062_good149_checked,
    row062_good150_checked,
    row062_good151_checked,
    row062_good152_checked,
    row062_good153_checked,
    row062_good154_checked,
    row062_good155_checked,
    row062_good156_checked,
    row062_good157_checked,
    row062_good158_checked,
    row062_good159_checked,
    row062_good160_checked,
    row062_good161_checked,
    row062_good162_checked,
    row062_good163_checked,
    row062_good164_checked,
    row062_good165_checked,
    row062_good166_checked,
    row062_good167_checked,
    row062_good168_checked,
    row062_good169_checked,
    row062_good170_checked,
    row062_good171_checked,
    row062_good172_checked,
    row062_good173_checked,
    row062_good174_checked,
    row062_good175_checked,
    row062_good176_checked,
    row062_good177_checked,
    row062_good178_checked,
    row062_good179_checked,
    row062_good180_checked,
    row062_good181_checked,
    row062_good182_checked,
    row062_good183_checked,
    row062_good184_checked,
    row062_good185_checked,
    row062_good186_checked,
    row062_good187_checked,
    row062_good188_checked,
    row062_good189_checked,
    row062_good190_checked,
    row062_good191_checked,
    row062_good192_checked,
    row062_good193_checked,
    row062_good194_checked,
    row062_good195_checked,
    row062_good196_checked,
    row062_good197_checked,
    row062_good198_checked,
    row062_good199_checked,
    row062_good200_checked,
    row062_good201_checked,
    row062_good202_checked,
    row062_good203_checked,
    row062_good204_checked,
    row062_good205_checked,
    row062_good206_checked,
    row062_good207_checked,
    row062_good208_checked,
    row062_good209_checked,
    row062_good210_checked,
    row062_good211_checked,
    row062_good212_checked,
    row062_good213_checked,
    row062_good214_checked,
    row062_good215_checked,
    row062_good216_checked,
    row062_good217_checked,
    row062_good218_checked,
    row062_good219_checked,
    row062_good220_checked,
    row062_good221_checked,
    row062_good222_checked,
    row062_good223_checked,
    row062_good224_checked,
    row062_good225_checked,
    row062_good226_checked,
    row062_good227_checked,
    row062_good228_checked,
    row062_good229_checked,
    row062_good230_checked,
    row062_good231_checked,
    row062_good232_checked,
    row062_good233_checked,
    row062_good234_checked,
    row062_good235_checked,
    row062_good236_checked,
    row062_good237_checked,
    row062_good238_checked,
    row062_good239_checked,
    row062_good240_checked,
    row062_good241_checked,
    row062_good242_checked,
    row062_good243_checked,
    row062_good244_checked,
    row062_good245_checked,
    row062_good246_checked,
    row062_good247_checked,
    row062_good248_checked,
    row062_good249_checked,
    row062_good250_checked,
    row062_good251_checked,
    row062_good252_checked,
    row062_good253_checked,
    row062_good254_checked,
    row062_good255_checked,
    row062_good256_checked,
    row062_good257_checked,
    row062_good258_checked,
    row062_good259_checked,
    row062_good260_checked,
    row062_good261_checked,
    row062_good262_checked,
    row062_good263_checked,
    row062_good264_checked,
    row062_good265_checked,
    row062_good266_checked,
    row062_good267_checked,
    row062_good268_checked,
    row062_good269_checked,
    row062_good270_checked,
    row062_good271_checked,
    row062_good272_checked,
    row062_good273_checked,
    row062_good274_checked,
    row062_good275_checked,
    row062_good276_checked,
    row062_good277_checked,
    row062_good278_checked,
    row062_good279_checked,
    row062_good280_checked,
    row062_good281_checked,
    row062_good282_checked,
    row062_good283_checked,
    row062_good284_checked,
    row062_good285_checked,
    row062_good286_checked,
    row062_good287_checked,
    row062_good288_checked,
    row062_good289_checked,
    row062_good290_checked,
    row062_good291_checked,
    row062_good292_checked,
    row062_good293_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_registered :
    decide (row062.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row062_small_checked :
    coverCheck (2 * row062.height.i + 2) (row062.height.i * (row062.height.i - 1) - 1)
      (row062.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row062_layerCover_checked :
    coverCheck (row062.height.i * (row062.height.i - 1)) (row062.height.n0 - 1)
      (row062.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row062_bounds : List NatInterval :=
  [(126, 174), (175, 234), (235, 294), (295, 354), (355, 414), (415, 470), (471, 528), (529, 584), (585, 638), (639, 692), (693, 752), (753, 812), (813, 872), (873, 924), (925, 980), (981, 1038), (1039, 1100), (1101, 1158), (1159, 1214), (1215, 1274), (1275, 1320), (1321, 1382), (1383, 1442), (1443, 1500), (1501, 1560), (1561, 1620), (1621, 1682), (1683, 1730), (1731, 1784), (1785, 1844), (1845, 1892), (1893, 1950), (1951, 2012), (2013, 2072), (2073, 2130), (2131, 2192), (2193, 2240), (2241, 2300), (2301, 2358), (2359, 2418), (2419, 2478), (2479, 2538), (2539, 2600), (2601, 2654), (2655, 2708), (2709, 2768), (2769, 2828), (2829, 2880), (2881, 2940), (2941, 3000), (3001, 3062), (3063, 3122), (3123, 3182), (3183, 3242), (3243, 3290), (3291, 3332), (3333, 3392), (3393, 3452), (3453, 3510), (3511, 3572), (3573, 3632), (3633, 3692), (3693, 3752), (3753, 3800), (3801, 3818), (3872, 3924), (3925, 3948), (3993, 4050), (4051, 4112), (4113, 4172), (4173, 4186), (4225, 4280), (4281, 4296), (4335, 4388), (4389, 4434), (4435, 4455), (4459, 4479), (4500, 4520), (4608, 4664), (4665, 4678), (4732, 4754), (4761, 4793), (4802, 4822), (4860, 4863), (4901, 4950), (4951, 4962), (5043, 5100), (5101, 5162), (5163, 5181), (5202, 5206), (5239, 5263), (5290, 5300), (5324, 5384), (5385, 5385), (5415, 5469), (5476, 5476), (5488, 5544), (5545, 5552), (5577, 5634), (5635, 5684), (5685, 5686), (5776, 5810), (5811, 5868), (5869, 5893), (5915, 5948), (6075, 6134), (6135, 6194), (6195, 6205), (6348, 6404), (6405, 6409), (6517, 6552), (6553, 6559), (6561, 6578), (6591, 6622), (6627, 6680), (6681, 6716), (6728, 6780), (6781, 6785), (6845, 6902), (6903, 6938), (6962, 6997), (7203, 7254), (7255, 7281), (7406, 7454), (7455, 7467), (7500, 7503), (7514, 7568), (7569, 7622), (7623, 7630), (7803, 7837), (7935, 7994), (7995, 8003), (8019, 8047), (8125, 8153), (8214, 8270), (8271, 8275), (8405, 8450), (8451, 8488), (8670, 8725), (8750, 8808), (8809, 8811), (8836, 8849), (8959, 8979), (8993, 9020), (9025, 9054), (9245, 9302), (9303, 9312), (9317, 9322), (9375, 9378), (9386, 9436), (9522, 9582), (9583, 9598), (9604, 9644), (10000, 10008), (10051, 10061), (10086, 10140), (10141, 10153), (10240, 10267), (10290, 10301), (10469, 10504), (10625, 10674), (10675, 10694), (10935, 10970), (10971, 11018), (11019, 11037), (11045, 11046), (11094, 11106), (11109, 11154), (11155, 11155), (11163, 11170), (11191, 11224), (11236, 11274), (11275, 11311), (11319, 11325), (11664, 11699), (11774, 11804), (11805, 11828), (11913, 11936), (12005, 12040), (12321, 12349), (13125, 13182), (13183, 13186), (13225, 13243), (13254, 13286), (13310, 13370), (13371, 13371), (13456, 13509), (13718, 13772), (13773, 13811), (14297, 14354), (14355, 14358), (14375, 14397), (14406, 14436), (14641, 14641), (14792, 14800), (14812, 14853), (15059, 15061), (15138, 15190), (15341, 15392), (15393, 15421), (15979, 16033), (16038, 16040), (16428, 16445), (16807, 16848), (16849, 16904), (16905, 16915), (17500, 17557), (17672, 17722), (18490, 18542), (18543, 18552), (18634, 18666), (19208, 19227), (19663, 19722), (19723, 19724), (20184, 20233), (20535, 20541), (20577, 20596), (21866, 21924), (21925, 21936), (22528, 22533), (23548, 23595), (24010, 24019), (24037, 24090), (24091, 24098), (24334, 24360), (24367, 24420), (24421, 24428), (24576, 24626), (25230, 25276), (25281, 25322), (25323, 25342), (26047, 26072), (26411, 26425), (26624, 26658), (26659, 26681), (27436, 27441), (28125, 28151), (28577, 28622), (28717, 28733), (28749, 28778), (30618, 30654), (30655, 30674), (30926, 30960), (31250, 31274), (31487, 31494), (31944, 31968), (31969, 32000), (32805, 32829), (32856, 32866), (33282, 33308), (33309, 33336), (33620, 33675), (34391, 34436), (35152, 35192), (35344, 35362), (36517, 36558), (36559, 36562), (36980, 37040), (37041, 37041), (37210, 37240), (37553, 37561), (39326, 39384), (39385, 39387), (40678, 40686), (40960, 40992), (41772, 41804), (42025, 42032), (43740, 43782), (43783, 43801), (43940, 43984), (44217, 44241), (48020, 48078), (48079, 48081), (48114, 48135), (48373, 48395), (48778, 48795), (49152, 49191), (50562, 50592), (54925, 54933), (55225, 55280), (55281, 55284), (58989, 59017), (59049, 59050), (59375, 59380), (65625, 65671), (68782, 68811), (73205, 73228), (73728, 73756), (78141, 78186), (81920, 81923), (83544, 83582), (98304, 98321), (137842, 137842), (150903, 150959)]

theorem row062_bounds_eq : row062.goods.map goodSegmentBounds = row062_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row062_layer000_intervals : List ColouredInterval :=
  [(2, 3840, 3901), (2, 4096, 4157), (2, 4352, 4413), (2, 4608, 4669), (2, 4096, 4157), (2, 4608, 4669), (2, 5120, 5181), (2, 5632, 5693), (2, 6144, 6205), (2, 6656, 6717), (2, 7168, 7229), (2, 4096, 4157), (2, 5120, 5181), (2, 6144, 6205), (2, 7168, 7229), (2, 4096, 4157), (2, 6144, 6205), (2, 4096, 4157), (3, 3888, 3949), (3, 4131, 4192), (3, 4374, 4435), (3, 4617, 4678), (3, 4860, 4921), (3, 5103, 5164), (3, 5346, 5407), (3, 5589, 5650), (3, 5832, 5893), (3, 6075, 6136), (3, 6318, 6379), (3, 6561, 6622), (3, 6804, 6865), (3, 7047, 7108), (3, 7290, 7351), (3, 7533, 7563), (3, 4374, 4435), (3, 5103, 5164), (3, 5832, 5893), (3, 6561, 6622), (3, 7290, 7351), (3, 4374, 4435), (3, 6561, 6622), (3, 6561, 6622), (5, 3782, 3811), (5, 3875, 3936), (5, 4000, 4061), (5, 4125, 4186), (5, 4250, 4311), (5, 4375, 4436), (5, 4500, 4561), (5, 3782, 3811), (5, 4375, 4436), (5, 5000, 5061), (5, 5625, 5686), (5, 6250, 6311), (5, 6875, 6936), (5, 7500, 7561), (5, 6250, 6311), (7, 3782, 3834), (7, 4116, 4177), (7, 4459, 4520), (7, 4802, 4863), (7, 5145, 5206), (7, 5488, 5549), (7, 5831, 5892), (7, 6174, 6235), (7, 6517, 6578), (7, 6860, 6921), (7, 7203, 7264), (7, 7546, 7563), (7, 4802, 4863), (7, 7203, 7264), (11, 3782, 3812), (11, 3872, 3933), (11, 3993, 4054), (11, 4114, 4175), (11, 4235, 4296), (11, 4356, 4417), (11, 3993, 4054), (11, 5324, 5385), (11, 6655, 6716), (13, 3887, 3948), (13, 4056, 4117), (13, 4225, 4286), (13, 4394, 4455), (13, 4563, 4624), (13, 4732, 4793), (13, 4901, 4962), (13, 5070, 5131), (13, 5239, 5300), (13, 5408, 5469), (13, 5577, 5638), (13, 5746, 5807), (13, 5915, 5976), (13, 6084, 6145), (13, 4394, 4455), (13, 6591, 6652), (17, 3782, 3818), (17, 4046, 4107), (17, 4335, 4396), (17, 4624, 4685), (17, 4913, 4974), (17, 5202, 5263), (17, 5491, 5552), (17, 5780, 5841), (17, 6069, 6130), (17, 6358, 6419), (17, 6647, 6708), (17, 6936, 6997), (17, 7225, 7286), (17, 7514, 7563), (17, 4913, 4974), (19, 3971, 4032), (19, 4332, 4393), (19, 4693, 4754), (19, 5054, 5115), (19, 5415, 5476), (19, 5776, 5837), (19, 6137, 6198), (19, 6498, 6559), (19, 6859, 6920), (19, 7220, 7281), (19, 6859, 6920), (23, 4232, 4293), (23, 4761, 4822), (23, 5290, 5351), (23, 5819, 5880), (23, 6348, 6409), (23, 6877, 6938), (23, 7406, 7467), (29, 4205, 4266), (29, 5046, 5107), (29, 5887, 5948), (29, 6728, 6789), (37, 4107, 4168), (37, 5476, 5537), (37, 6845, 6906), (41, 5043, 5104), (41, 6724, 6785), (43, 5547, 5608), (43, 7396, 7457), (47, 4418, 4479), (47, 6627, 6688), (53, 5618, 5679), (59, 6962, 7023), (61, 3782, 3782), (61, 7442, 7503)]

def row062_layer000_block000 : List ColouredInterval :=
  [(2, 3840, 3901), (2, 4096, 4157), (2, 4352, 4413), (2, 4608, 4669), (2, 4096, 4157), (2, 4608, 4669), (2, 5120, 5181), (2, 5632, 5693), (2, 6144, 6205), (2, 6656, 6717), (2, 7168, 7229), (2, 4096, 4157), (2, 5120, 5181), (2, 6144, 6205)]

def row062_layer000_block001 : List ColouredInterval :=
  [(2, 7168, 7229), (2, 4096, 4157), (2, 6144, 6205), (2, 4096, 4157), (3, 3888, 3949), (3, 4131, 4192), (3, 4374, 4435), (3, 4617, 4678), (3, 4860, 4921), (3, 5103, 5164), (3, 5346, 5407), (3, 5589, 5650), (3, 5832, 5893), (3, 6075, 6136)]

def row062_layer000_block002 : List ColouredInterval :=
  [(3, 6318, 6379), (3, 6561, 6622), (3, 6804, 6865), (3, 7047, 7108), (3, 7290, 7351), (3, 7533, 7563), (3, 4374, 4435), (3, 5103, 5164), (3, 5832, 5893), (3, 6561, 6622), (3, 7290, 7351), (3, 4374, 4435), (3, 6561, 6622), (3, 6561, 6622)]

def row062_layer000_block003 : List ColouredInterval :=
  [(5, 3782, 3811), (5, 3875, 3936), (5, 4000, 4061), (5, 4125, 4186), (5, 4250, 4311), (5, 4375, 4436), (5, 4500, 4561), (5, 3782, 3811), (5, 4375, 4436), (5, 5000, 5061), (5, 5625, 5686), (5, 6250, 6311), (5, 6875, 6936), (5, 7500, 7561)]

def row062_layer000_block004 : List ColouredInterval :=
  [(5, 6250, 6311), (7, 3782, 3834), (7, 4116, 4177), (7, 4459, 4520), (7, 4802, 4863), (7, 5145, 5206), (7, 5488, 5549), (7, 5831, 5892), (7, 6174, 6235), (7, 6517, 6578), (7, 6860, 6921), (7, 7203, 7264), (7, 7546, 7563), (7, 4802, 4863)]

def row062_layer000_block005 : List ColouredInterval :=
  [(7, 7203, 7264), (11, 3782, 3812), (11, 3872, 3933), (11, 3993, 4054), (11, 4114, 4175), (11, 4235, 4296), (11, 4356, 4417), (11, 3993, 4054), (11, 5324, 5385), (11, 6655, 6716), (13, 3887, 3948), (13, 4056, 4117), (13, 4225, 4286), (13, 4394, 4455)]

def row062_layer000_block006 : List ColouredInterval :=
  [(13, 4563, 4624), (13, 4732, 4793), (13, 4901, 4962), (13, 5070, 5131), (13, 5239, 5300), (13, 5408, 5469), (13, 5577, 5638), (13, 5746, 5807), (13, 5915, 5976), (13, 6084, 6145), (13, 4394, 4455), (13, 6591, 6652), (17, 3782, 3818), (17, 4046, 4107)]

def row062_layer000_block007 : List ColouredInterval :=
  [(17, 4335, 4396), (17, 4624, 4685), (17, 4913, 4974), (17, 5202, 5263), (17, 5491, 5552), (17, 5780, 5841), (17, 6069, 6130), (17, 6358, 6419), (17, 6647, 6708), (17, 6936, 6997), (17, 7225, 7286), (17, 7514, 7563), (17, 4913, 4974), (19, 3971, 4032)]

def row062_layer000_block008 : List ColouredInterval :=
  [(19, 4332, 4393), (19, 4693, 4754), (19, 5054, 5115), (19, 5415, 5476), (19, 5776, 5837), (19, 6137, 6198), (19, 6498, 6559), (19, 6859, 6920), (19, 7220, 7281), (19, 6859, 6920), (23, 4232, 4293), (23, 4761, 4822), (23, 5290, 5351), (23, 5819, 5880)]

def row062_layer000_block009 : List ColouredInterval :=
  [(23, 6348, 6409), (23, 6877, 6938), (23, 7406, 7467), (29, 4205, 4266), (29, 5046, 5107), (29, 5887, 5948), (29, 6728, 6789), (37, 4107, 4168), (37, 5476, 5537), (37, 6845, 6906), (41, 5043, 5104), (41, 6724, 6785), (43, 5547, 5608), (43, 7396, 7457)]

def row062_layer000_block010 : List ColouredInterval :=
  [(47, 4418, 4479), (47, 6627, 6688), (53, 5618, 5679), (59, 6962, 7023), (61, 3782, 3782), (61, 7442, 7503)]

def row062_layer000_chunks : List (List ColouredInterval) :=
  [row062_layer000_block000, row062_layer000_block001, row062_layer000_block002, row062_layer000_block003, row062_layer000_block004, row062_layer000_block005, row062_layer000_block006, row062_layer000_block007, row062_layer000_block008, row062_layer000_block009, row062_layer000_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer000_arithmetic : LayerArithmeticValid row062.height { lower := 3782, upper := 7564, M := 36 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer000_enumeration :
    activePowerIntervalList 62 36 3782 7564 = row062_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer000_pairs000 :
    row062_layer000_block000.all (fun I => row062_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer000_pairs001 :
    row062_layer000_block001.all (fun I => row062_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer000_pairs002 :
    row062_layer000_block002.all (fun I => row062_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer000_pairs003 :
    row062_layer000_block003.all (fun I => row062_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer000_pairs004 :
    row062_layer000_block004.all (fun I => row062_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer000_pairs005 :
    row062_layer000_block005.all (fun I => row062_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer000_pairs006 :
    row062_layer000_block006.all (fun I => row062_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer000_pairs007 :
    row062_layer000_block007.all (fun I => row062_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer000_pairs008 :
    row062_layer000_block008.all (fun I => row062_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer000_pairs009 :
    row062_layer000_block009.all (fun I => row062_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer000_pairs010 :
    row062_layer000_block010.all (fun I => row062_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer000_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer000_chunks_eq : row062_layer000_chunks.flatten = row062_layer000_intervals := by
  rfl

theorem row062_layer000_pairs : pairCoverCheck row062_layer000_intervals row062_bounds = true := by
  apply pairCoverCheck_of_chunks row062_layer000_chunks_eq
  intro block hblock
  simp only [row062_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row062_layer000_pairs000
  · exact row062_layer000_pairs001
  · exact row062_layer000_pairs002
  · exact row062_layer000_pairs003
  · exact row062_layer000_pairs004
  · exact row062_layer000_pairs005
  · exact row062_layer000_pairs006
  · exact row062_layer000_pairs007
  · exact row062_layer000_pairs008
  · exact row062_layer000_pairs009
  · exact row062_layer000_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer000_checked :
    coverLayerCheck row062.height row062.goods { lower := 3782, upper := 7564, M := 36 } = true := by
  exact coverLayerCheck_of_parts row062_layer000_arithmetic row062_layer000_enumeration row062_bounds_eq row062_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row062_layer001_intervals : List ColouredInterval :=
  [(2, 7680, 7741), (2, 8192, 8253), (2, 8192, 8253), (2, 9216, 9277), (2, 10240, 10301), (2, 11264, 11325), (2, 12288, 12349), (2, 13312, 13373), (2, 14336, 14397), (2, 8192, 8253), (2, 10240, 10301), (2, 12288, 12349), (2, 14336, 14397), (2, 8192, 8253), (2, 12288, 12349), (2, 8192, 8253), (3, 7564, 7594), (3, 7776, 7837), (3, 8019, 8080), (3, 8019, 8080), (3, 8748, 8809), (3, 9477, 9538), (3, 10206, 10267), (3, 10935, 10996), (3, 11664, 11725), (3, 12393, 12454), (3, 13122, 13183), (3, 13851, 13912), (3, 14580, 14641), (3, 8748, 8809), (3, 10935, 10996), (3, 13122, 13183), (3, 13122, 13183), (5, 8125, 8186), (5, 8750, 8811), (5, 9375, 9436), (5, 10000, 10061), (5, 10625, 10686), (5, 11250, 11311), (5, 11875, 11936), (5, 12500, 12561), (5, 13125, 13186), (5, 13750, 13811), (5, 14375, 14436), (5, 15000, 15061), (5, 9375, 9436), (5, 12500, 12561), (7, 7564, 7607), (7, 7889, 7950), (7, 8232, 8293), (7, 8575, 8636), (7, 8918, 8979), (7, 9261, 9322), (7, 9604, 9665), (7, 9947, 10008), (7, 10290, 10351), (7, 10633, 10694), (7, 10976, 11037), (7, 11319, 11380), (7, 9604, 9665), (7, 12005, 12066), (7, 14406, 14467), (11, 7986, 8047), (11, 9317, 9378), (11, 10648, 10709), (11, 11979, 12040), (11, 13310, 13371), (11, 14641, 14702), (11, 14641, 14702), (13, 8788, 8849), (13, 10985, 11046), (13, 13182, 13243), (17, 7564, 7575), (17, 7803, 7864), (17, 8092, 8153), (17, 8381, 8442), (17, 8670, 8731), (17, 8959, 9020), (17, 9248, 9309), (17, 9537, 9598), (17, 9826, 9887), (17, 14739, 14800), (19, 7581, 7642), (19, 7942, 8003), (19, 8303, 8364), (19, 8664, 8725), (19, 9025, 9086), (19, 9386, 9447), (19, 9747, 9808), (19, 10108, 10169), (19, 10469, 10530), (19, 10830, 10891), (19, 11191, 11252), (19, 11552, 11613), (19, 11913, 11974), (19, 13718, 13779), (23, 7935, 7996), (23, 8464, 8525), (23, 8993, 9054), (23, 9522, 9583), (23, 10051, 10112), (23, 10580, 10641), (23, 11109, 11170), (23, 11638, 11699), (23, 12167, 12228), (23, 12696, 12757), (23, 13225, 13286), (23, 13754, 13815), (23, 14283, 14344), (23, 14812, 14873), (23, 12167, 12228), (29, 7569, 7630), (29, 8410, 8471), (29, 9251, 9312), (29, 10092, 10153), (29, 10933, 10994), (29, 11774, 11835), (29, 12615, 12676), (29, 13456, 13517), (29, 14297, 14358), (37, 8214, 8275), (37, 9583, 9644), (37, 10952, 11013), (37, 12321, 12382), (37, 13690, 13751), (37, 15059, 15120), (41, 8405, 8466), (41, 10086, 10147), (41, 11767, 11828), (41, 13448, 13509), (43, 9245, 9306), (43, 11094, 11155), (43, 12943, 13004), (43, 14792, 14853), (47, 8836, 8897), (47, 11045, 11106), (47, 13254, 13315), (53, 8427, 8488), (53, 11236, 11297), (53, 14045, 14106), (59, 10443, 10504), (59, 13924, 13985), (61, 11163, 11224), (61, 14884, 14945)]

def row062_layer001_block000 : List ColouredInterval :=
  [(2, 7680, 7741), (2, 8192, 8253), (2, 8192, 8253), (2, 9216, 9277), (2, 10240, 10301), (2, 11264, 11325), (2, 12288, 12349), (2, 13312, 13373), (2, 14336, 14397), (2, 8192, 8253), (2, 10240, 10301), (2, 12288, 12349), (2, 14336, 14397), (2, 8192, 8253)]

def row062_layer001_block001 : List ColouredInterval :=
  [(2, 12288, 12349), (2, 8192, 8253), (3, 7564, 7594), (3, 7776, 7837), (3, 8019, 8080), (3, 8019, 8080), (3, 8748, 8809), (3, 9477, 9538), (3, 10206, 10267), (3, 10935, 10996), (3, 11664, 11725), (3, 12393, 12454), (3, 13122, 13183), (3, 13851, 13912)]

def row062_layer001_block002 : List ColouredInterval :=
  [(3, 14580, 14641), (3, 8748, 8809), (3, 10935, 10996), (3, 13122, 13183), (3, 13122, 13183), (5, 8125, 8186), (5, 8750, 8811), (5, 9375, 9436), (5, 10000, 10061), (5, 10625, 10686), (5, 11250, 11311), (5, 11875, 11936), (5, 12500, 12561), (5, 13125, 13186)]

def row062_layer001_block003 : List ColouredInterval :=
  [(5, 13750, 13811), (5, 14375, 14436), (5, 15000, 15061), (5, 9375, 9436), (5, 12500, 12561), (7, 7564, 7607), (7, 7889, 7950), (7, 8232, 8293), (7, 8575, 8636), (7, 8918, 8979), (7, 9261, 9322), (7, 9604, 9665), (7, 9947, 10008), (7, 10290, 10351)]

def row062_layer001_block004 : List ColouredInterval :=
  [(7, 10633, 10694), (7, 10976, 11037), (7, 11319, 11380), (7, 9604, 9665), (7, 12005, 12066), (7, 14406, 14467), (11, 7986, 8047), (11, 9317, 9378), (11, 10648, 10709), (11, 11979, 12040), (11, 13310, 13371), (11, 14641, 14702), (11, 14641, 14702), (13, 8788, 8849)]

def row062_layer001_block005 : List ColouredInterval :=
  [(13, 10985, 11046), (13, 13182, 13243), (17, 7564, 7575), (17, 7803, 7864), (17, 8092, 8153), (17, 8381, 8442), (17, 8670, 8731), (17, 8959, 9020), (17, 9248, 9309), (17, 9537, 9598), (17, 9826, 9887), (17, 14739, 14800), (19, 7581, 7642), (19, 7942, 8003)]

def row062_layer001_block006 : List ColouredInterval :=
  [(19, 8303, 8364), (19, 8664, 8725), (19, 9025, 9086), (19, 9386, 9447), (19, 9747, 9808), (19, 10108, 10169), (19, 10469, 10530), (19, 10830, 10891), (19, 11191, 11252), (19, 11552, 11613), (19, 11913, 11974), (19, 13718, 13779), (23, 7935, 7996), (23, 8464, 8525)]

def row062_layer001_block007 : List ColouredInterval :=
  [(23, 8993, 9054), (23, 9522, 9583), (23, 10051, 10112), (23, 10580, 10641), (23, 11109, 11170), (23, 11638, 11699), (23, 12167, 12228), (23, 12696, 12757), (23, 13225, 13286), (23, 13754, 13815), (23, 14283, 14344), (23, 14812, 14873), (23, 12167, 12228), (29, 7569, 7630)]

def row062_layer001_block008 : List ColouredInterval :=
  [(29, 8410, 8471), (29, 9251, 9312), (29, 10092, 10153), (29, 10933, 10994), (29, 11774, 11835), (29, 12615, 12676), (29, 13456, 13517), (29, 14297, 14358), (37, 8214, 8275), (37, 9583, 9644), (37, 10952, 11013), (37, 12321, 12382), (37, 13690, 13751), (37, 15059, 15120)]

def row062_layer001_block009 : List ColouredInterval :=
  [(41, 8405, 8466), (41, 10086, 10147), (41, 11767, 11828), (41, 13448, 13509), (43, 9245, 9306), (43, 11094, 11155), (43, 12943, 13004), (43, 14792, 14853), (47, 8836, 8897), (47, 11045, 11106), (47, 13254, 13315), (53, 8427, 8488), (53, 11236, 11297), (53, 14045, 14106)]

def row062_layer001_block010 : List ColouredInterval :=
  [(59, 10443, 10504), (59, 13924, 13985), (61, 11163, 11224), (61, 14884, 14945)]

def row062_layer001_chunks : List (List ColouredInterval) :=
  [row062_layer001_block000, row062_layer001_block001, row062_layer001_block002, row062_layer001_block003, row062_layer001_block004, row062_layer001_block005, row062_layer001_block006, row062_layer001_block007, row062_layer001_block008, row062_layer001_block009, row062_layer001_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer001_arithmetic : LayerArithmeticValid row062.height { lower := 7564, upper := 15128, M := 33 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer001_enumeration :
    activePowerIntervalList 62 33 7564 15128 = row062_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer001_pairs000 :
    row062_layer001_block000.all (fun I => row062_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer001_pairs001 :
    row062_layer001_block001.all (fun I => row062_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer001_pairs002 :
    row062_layer001_block002.all (fun I => row062_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer001_pairs003 :
    row062_layer001_block003.all (fun I => row062_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer001_pairs004 :
    row062_layer001_block004.all (fun I => row062_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer001_pairs005 :
    row062_layer001_block005.all (fun I => row062_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer001_pairs006 :
    row062_layer001_block006.all (fun I => row062_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer001_pairs007 :
    row062_layer001_block007.all (fun I => row062_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer001_pairs008 :
    row062_layer001_block008.all (fun I => row062_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer001_pairs009 :
    row062_layer001_block009.all (fun I => row062_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer001_pairs010 :
    row062_layer001_block010.all (fun I => row062_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer001_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer001_chunks_eq : row062_layer001_chunks.flatten = row062_layer001_intervals := by
  rfl

theorem row062_layer001_pairs : pairCoverCheck row062_layer001_intervals row062_bounds = true := by
  apply pairCoverCheck_of_chunks row062_layer001_chunks_eq
  intro block hblock
  simp only [row062_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row062_layer001_pairs000
  · exact row062_layer001_pairs001
  · exact row062_layer001_pairs002
  · exact row062_layer001_pairs003
  · exact row062_layer001_pairs004
  · exact row062_layer001_pairs005
  · exact row062_layer001_pairs006
  · exact row062_layer001_pairs007
  · exact row062_layer001_pairs008
  · exact row062_layer001_pairs009
  · exact row062_layer001_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer001_checked :
    coverLayerCheck row062.height row062.goods { lower := 7564, upper := 15128, M := 33 } = true := by
  exact coverLayerCheck_of_parts row062_layer001_arithmetic row062_layer001_enumeration row062_bounds_eq row062_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row062_layer002_intervals : List ColouredInterval :=
  [(2, 15360, 15421), (2, 16384, 16445), (2, 18432, 18493), (2, 20480, 20541), (2, 22528, 22589), (2, 24576, 24637), (2, 26624, 26685), (2, 28672, 28733), (2, 16384, 16445), (2, 20480, 20541), (2, 24576, 24637), (2, 28672, 28733), (2, 16384, 16445), (2, 24576, 24637), (2, 16384, 16445), (3, 15309, 15370), (3, 16038, 16099), (3, 16767, 16828), (3, 17496, 17557), (3, 18225, 18286), (3, 18954, 19015), (3, 19683, 19744), (3, 20412, 20473), (3, 21141, 21202), (3, 21870, 21931), (3, 15309, 15370), (3, 17496, 17557), (3, 19683, 19744), (3, 21870, 21931), (3, 24057, 24118), (3, 26244, 26305), (3, 28431, 28492), (3, 19683, 19744), (3, 26244, 26305), (3, 19683, 19744), (5, 15625, 15686), (5, 16250, 16311), (5, 16875, 16936), (5, 17500, 17561), (5, 18125, 18186), (5, 18750, 18811), (5, 15625, 15686), (5, 18750, 18811), (5, 21875, 21936), (5, 25000, 25061), (5, 28125, 28186), (5, 15625, 15686), (7, 16807, 16868), (7, 19208, 19269), (7, 21609, 21670), (7, 24010, 24071), (7, 26411, 26472), (7, 28812, 28873), (7, 16807, 16868), (11, 15972, 16033), (11, 17303, 17364), (11, 18634, 18695), (11, 19965, 20026), (11, 21296, 21357), (11, 22627, 22688), (11, 23958, 24019), (11, 25289, 25350), (11, 26620, 26681), (11, 27951, 28012), (11, 29282, 29343), (11, 29282, 29343), (13, 15379, 15440), (13, 17576, 17637), (13, 19773, 19834), (13, 21970, 22031), (13, 24167, 24228), (13, 26364, 26425), (13, 28561, 28622), (13, 28561, 28622), (17, 19652, 19713), (17, 24565, 24626), (17, 29478, 29539), (19, 20577, 20638), (19, 27436, 27497), (23, 15341, 15402), (23, 15870, 15931), (23, 24334, 24395), (29, 15138, 15199), (29, 15979, 16040), (29, 16820, 16881), (29, 17661, 17722), (29, 18502, 18563), (29, 19343, 19404), (29, 20184, 20245), (29, 21025, 21086), (29, 21866, 21927), (29, 22707, 22768), (29, 23548, 23609), (29, 24389, 24450), (29, 25230, 25291), (29, 24389, 24450), (37, 16428, 16489), (37, 17797, 17858), (37, 19166, 19227), (37, 20535, 20596), (37, 21904, 21965), (37, 23273, 23334), (37, 24642, 24703), (37, 26011, 26072), (37, 27380, 27441), (37, 28749, 28810), (37, 30118, 30179), (41, 15129, 15190), (41, 16810, 16871), (41, 18491, 18552), (41, 20172, 20233), (41, 21853, 21914), (41, 23534, 23595), (41, 25215, 25276), (41, 26896, 26957), (41, 28577, 28638), (43, 16641, 16702), (43, 18490, 18551), (43, 20339, 20400), (43, 22188, 22249), (43, 24037, 24098), (43, 25886, 25947), (43, 27735, 27796), (43, 29584, 29645), (47, 15463, 15524), (47, 17672, 17733), (47, 19881, 19942), (47, 22090, 22151), (47, 24299, 24360), (47, 26508, 26569), (47, 28717, 28778), (53, 16854, 16915), (53, 19663, 19724), (53, 22472, 22533), (53, 25281, 25342), (53, 28090, 28151), (59, 17405, 17466), (59, 20886, 20947), (59, 24367, 24428), (59, 27848, 27909), (61, 18605, 18666), (61, 22326, 22387), (61, 26047, 26108), (61, 29768, 29829)]

def row062_layer002_block000 : List ColouredInterval :=
  [(2, 15360, 15421), (2, 16384, 16445), (2, 18432, 18493), (2, 20480, 20541), (2, 22528, 22589), (2, 24576, 24637), (2, 26624, 26685), (2, 28672, 28733), (2, 16384, 16445), (2, 20480, 20541), (2, 24576, 24637), (2, 28672, 28733), (2, 16384, 16445), (2, 24576, 24637)]

def row062_layer002_block001 : List ColouredInterval :=
  [(2, 16384, 16445), (3, 15309, 15370), (3, 16038, 16099), (3, 16767, 16828), (3, 17496, 17557), (3, 18225, 18286), (3, 18954, 19015), (3, 19683, 19744), (3, 20412, 20473), (3, 21141, 21202), (3, 21870, 21931), (3, 15309, 15370), (3, 17496, 17557), (3, 19683, 19744)]

def row062_layer002_block002 : List ColouredInterval :=
  [(3, 21870, 21931), (3, 24057, 24118), (3, 26244, 26305), (3, 28431, 28492), (3, 19683, 19744), (3, 26244, 26305), (3, 19683, 19744), (5, 15625, 15686), (5, 16250, 16311), (5, 16875, 16936), (5, 17500, 17561), (5, 18125, 18186), (5, 18750, 18811), (5, 15625, 15686)]

def row062_layer002_block003 : List ColouredInterval :=
  [(5, 18750, 18811), (5, 21875, 21936), (5, 25000, 25061), (5, 28125, 28186), (5, 15625, 15686), (7, 16807, 16868), (7, 19208, 19269), (7, 21609, 21670), (7, 24010, 24071), (7, 26411, 26472), (7, 28812, 28873), (7, 16807, 16868), (11, 15972, 16033), (11, 17303, 17364)]

def row062_layer002_block004 : List ColouredInterval :=
  [(11, 18634, 18695), (11, 19965, 20026), (11, 21296, 21357), (11, 22627, 22688), (11, 23958, 24019), (11, 25289, 25350), (11, 26620, 26681), (11, 27951, 28012), (11, 29282, 29343), (11, 29282, 29343), (13, 15379, 15440), (13, 17576, 17637), (13, 19773, 19834), (13, 21970, 22031)]

def row062_layer002_block005 : List ColouredInterval :=
  [(13, 24167, 24228), (13, 26364, 26425), (13, 28561, 28622), (13, 28561, 28622), (17, 19652, 19713), (17, 24565, 24626), (17, 29478, 29539), (19, 20577, 20638), (19, 27436, 27497), (23, 15341, 15402), (23, 15870, 15931), (23, 24334, 24395), (29, 15138, 15199), (29, 15979, 16040)]

def row062_layer002_block006 : List ColouredInterval :=
  [(29, 16820, 16881), (29, 17661, 17722), (29, 18502, 18563), (29, 19343, 19404), (29, 20184, 20245), (29, 21025, 21086), (29, 21866, 21927), (29, 22707, 22768), (29, 23548, 23609), (29, 24389, 24450), (29, 25230, 25291), (29, 24389, 24450), (37, 16428, 16489), (37, 17797, 17858)]

def row062_layer002_block007 : List ColouredInterval :=
  [(37, 19166, 19227), (37, 20535, 20596), (37, 21904, 21965), (37, 23273, 23334), (37, 24642, 24703), (37, 26011, 26072), (37, 27380, 27441), (37, 28749, 28810), (37, 30118, 30179), (41, 15129, 15190), (41, 16810, 16871), (41, 18491, 18552), (41, 20172, 20233), (41, 21853, 21914)]

def row062_layer002_block008 : List ColouredInterval :=
  [(41, 23534, 23595), (41, 25215, 25276), (41, 26896, 26957), (41, 28577, 28638), (43, 16641, 16702), (43, 18490, 18551), (43, 20339, 20400), (43, 22188, 22249), (43, 24037, 24098), (43, 25886, 25947), (43, 27735, 27796), (43, 29584, 29645), (47, 15463, 15524), (47, 17672, 17733)]

def row062_layer002_block009 : List ColouredInterval :=
  [(47, 19881, 19942), (47, 22090, 22151), (47, 24299, 24360), (47, 26508, 26569), (47, 28717, 28778), (53, 16854, 16915), (53, 19663, 19724), (53, 22472, 22533), (53, 25281, 25342), (53, 28090, 28151), (59, 17405, 17466), (59, 20886, 20947), (59, 24367, 24428), (59, 27848, 27909)]

def row062_layer002_block010 : List ColouredInterval :=
  [(61, 18605, 18666), (61, 22326, 22387), (61, 26047, 26108), (61, 29768, 29829)]

def row062_layer002_chunks : List (List ColouredInterval) :=
  [row062_layer002_block000, row062_layer002_block001, row062_layer002_block002, row062_layer002_block003, row062_layer002_block004, row062_layer002_block005, row062_layer002_block006, row062_layer002_block007, row062_layer002_block008, row062_layer002_block009, row062_layer002_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer002_arithmetic : LayerArithmeticValid row062.height { lower := 15128, upper := 30256, M := 30 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer002_enumeration :
    activePowerIntervalList 62 30 15128 30256 = row062_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer002_pairs000 :
    row062_layer002_block000.all (fun I => row062_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer002_pairs001 :
    row062_layer002_block001.all (fun I => row062_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer002_pairs002 :
    row062_layer002_block002.all (fun I => row062_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer002_pairs003 :
    row062_layer002_block003.all (fun I => row062_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer002_pairs004 :
    row062_layer002_block004.all (fun I => row062_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer002_pairs005 :
    row062_layer002_block005.all (fun I => row062_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer002_pairs005
