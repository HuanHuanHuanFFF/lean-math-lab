import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row062_registered :
    decide (row062.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row062_goods_checked :
    row062.goods.all (goodSegmentCheck row062.height.i row062.height.r row062.height.s) = true := by
  decide +kernel

theorem row062_small_checked :
    coverCheck (2 * row062.height.i + 2) (row062.height.i * (row062.height.i - 1) - 1)
      (row062.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row062_layerCover_checked :
    coverCheck (row062.height.i * (row062.height.i - 1)) (row062.height.n0 - 1)
      (row062.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row062_layer000_checked :
    coverLayerCheck row062.height row062.goods { lower := 3782, upper := 7564, M := 36 } = true := by
  decide +kernel

theorem row062_layer001_checked :
    coverLayerCheck row062.height row062.goods { lower := 7564, upper := 15128, M := 33 } = true := by
  decide +kernel

theorem row062_layer002_checked :
    coverLayerCheck row062.height row062.goods { lower := 15128, upper := 30256, M := 30 } = true := by
  decide +kernel

theorem row062_layer003_checked :
    coverLayerCheck row062.height row062.goods { lower := 30256, upper := 60512, M := 27 } = true := by
  decide +kernel

theorem row062_layer004_checked :
    coverLayerCheck row062.height row062.goods { lower := 60512, upper := 121024, M := 25 } = true := by
  decide +kernel

theorem row062_layer005_checked :
    coverLayerCheck row062.height row062.goods { lower := 121024, upper := 242048, M := 23 } = true := by
  decide +kernel

theorem row062_layer006_checked :
    coverLayerCheck row062.height row062.goods { lower := 242048, upper := 484096, M := 21 } = true := by
  decide +kernel

theorem row062_layer007_checked :
    coverLayerCheck row062.height row062.goods { lower := 484096, upper := 968192, M := 19 } = true := by
  decide +kernel

theorem row062_layer008_checked :
    coverLayerCheck row062.height row062.goods { lower := 968192, upper := 1936384, M := 17 } = true := by
  decide +kernel

theorem row062_layer009_checked :
    coverLayerCheck row062.height row062.goods { lower := 1936384, upper := 3872768, M := 16 } = true := by
  decide +kernel

theorem row062_layer010_checked :
    coverLayerCheck row062.height row062.goods { lower := 3872768, upper := 7745536, M := 14 } = true := by
  decide +kernel

theorem row062_layer011_checked :
    coverLayerCheck row062.height row062.goods { lower := 7745536, upper := 15491072, M := 13 } = true := by
  decide +kernel

theorem row062_layer012_checked :
    coverLayerCheck row062.height row062.goods { lower := 15491072, upper := 30982144, M := 12 } = true := by
  decide +kernel

theorem row062_layer013_checked :
    coverLayerCheck row062.height row062.goods { lower := 30982144, upper := 61964288, M := 11 } = true := by
  decide +kernel

theorem row062_layer014_checked :
    coverLayerCheck row062.height row062.goods { lower := 61964288, upper := 123928576, M := 10 } = true := by
  decide +kernel

theorem row062_layer015_checked :
    coverLayerCheck row062.height row062.goods { lower := 123928576, upper := 247857152, M := 9 } = true := by
  decide +kernel

theorem row062_layer016_checked :
    coverLayerCheck row062.height row062.goods { lower := 247857152, upper := 495714304, M := 8 } = true := by
  decide +kernel

theorem row062_layer017_checked :
    coverLayerCheck row062.height row062.goods { lower := 495714304, upper := 991428608, M := 8 } = true := by
  decide +kernel

theorem row062_layer018_checked :
    coverLayerCheck row062.height row062.goods { lower := 991428608, upper := 1982857216, M := 7 } = true := by
  decide +kernel

theorem row062_layer019_checked :
    coverLayerCheck row062.height row062.goods { lower := 1982857216, upper := 3965714432, M := 6 } = true := by
  decide +kernel

theorem row062_layer020_checked :
    coverLayerCheck row062.height row062.goods { lower := 3965714432, upper := 7931428864, M := 6 } = true := by
  decide +kernel

theorem row062_layer021_checked :
    coverLayerCheck row062.height row062.goods { lower := 7931428864, upper := 15862857728, M := 5 } = true := by
  decide +kernel

theorem row062_layer022_checked :
    coverLayerCheck row062.height row062.goods { lower := 15862857728, upper := 31725715456, M := 5 } = true := by
  decide +kernel

theorem row062_layer023_checked :
    coverLayerCheck row062.height row062.goods { lower := 31725715456, upper := 63451430912, M := 5 } = true := by
  decide +kernel

theorem row062_layer024_checked :
    coverLayerCheck row062.height row062.goods { lower := 63451430912, upper := 126902861824, M := 4 } = true := by
  decide +kernel

theorem row062_layer025_checked :
    coverLayerCheck row062.height row062.goods { lower := 126902861824, upper := 253805723648, M := 4 } = true := by
  decide +kernel

theorem row062_layer026_checked :
    coverLayerCheck row062.height row062.goods { lower := 253805723648, upper := 507611447296, M := 4 } = true := by
  decide +kernel

theorem row062_layer027_checked :
    coverLayerCheck row062.height row062.goods { lower := 507611447296, upper := 1015222894592, M := 3 } = true := by
  decide +kernel

theorem row062_layer028_checked :
    coverLayerCheck row062.height row062.goods { lower := 1015222894592, upper := 2030445789184, M := 3 } = true := by
  decide +kernel

theorem row062_layer029_checked :
    coverLayerCheck row062.height row062.goods { lower := 2030445789184, upper := 4060891578368, M := 3 } = true := by
  decide +kernel

theorem row062_layer030_checked :
    coverLayerCheck row062.height row062.goods { lower := 4060891578368, upper := 8121783156736, M := 3 } = true := by
  decide +kernel

theorem row062_layer031_checked :
    coverLayerCheck row062.height row062.goods { lower := 8121783156736, upper := 16243566313472, M := 2 } = true := by
  decide +kernel

theorem row062_layer032_checked :
    coverLayerCheck row062.height row062.goods { lower := 16243566313472, upper := 32487132626944, M := 2 } = true := by
  decide +kernel

theorem row062_layer033_checked :
    coverLayerCheck row062.height row062.goods { lower := 32487132626944, upper := 64974265253888, M := 2 } = true := by
  decide +kernel

theorem row062_layer034_checked :
    coverLayerCheck row062.height row062.goods { lower := 64974265253888, upper := 129948530507776, M := 2 } = true := by
  decide +kernel

theorem row062_layer035_checked :
    coverLayerCheck row062.height row062.goods { lower := 129948530507776, upper := 259897061015552, M := 2 } = true := by
  decide +kernel

theorem row062_layer036_checked :
    coverLayerCheck row062.height row062.goods { lower := 259897061015552, upper := 519794122031104, M := 2 } = true := by
  decide +kernel

theorem row062_layer037_checked :
    coverLayerCheck row062.height row062.goods { lower := 519794122031104, upper := 1000000000000000, M := 2 } = true := by
  decide +kernel

theorem row062_layers_checked :
    row062.layers.all (coverLayerCheck row062.height row062.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row062.height row062.goods) = true
  simp only [List.all_cons, List.all_nil,
    row062_layer000_checked,
    row062_layer001_checked,
    row062_layer002_checked,
    row062_layer003_checked,
    row062_layer004_checked,
    row062_layer005_checked,
    row062_layer006_checked,
    row062_layer007_checked,
    row062_layer008_checked,
    row062_layer009_checked,
    row062_layer010_checked,
    row062_layer011_checked,
    row062_layer012_checked,
    row062_layer013_checked,
    row062_layer014_checked,
    row062_layer015_checked,
    row062_layer016_checked,
    row062_layer017_checked,
    row062_layer018_checked,
    row062_layer019_checked,
    row062_layer020_checked,
    row062_layer021_checked,
    row062_layer022_checked,
    row062_layer023_checked,
    row062_layer024_checked,
    row062_layer025_checked,
    row062_layer026_checked,
    row062_layer027_checked,
    row062_layer028_checked,
    row062_layer029_checked,
    row062_layer030_checked,
    row062_layer031_checked,
    row062_layer032_checked,
    row062_layer033_checked,
    row062_layer034_checked,
    row062_layer035_checked,
    row062_layer036_checked,
    row062_layer037_checked,
    Bool.true_and]

theorem row062_checked : finiteCoverRowCheck row062 = true := by
  simp only [finiteCoverRowCheck, row062_registered, row062_goods_checked,
    row062_small_checked, row062_layerCover_checked, row062_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row062_checked

end B699LowIndex
