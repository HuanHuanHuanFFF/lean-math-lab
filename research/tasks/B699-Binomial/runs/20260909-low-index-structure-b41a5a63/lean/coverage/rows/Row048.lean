import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row048_height : HeightCertificateDatum := { i := 48, r := 15, s := 32, n0Power10 := 37 }

def row048_goods : List GoodSegment := [
  { lower := 98, upper := 144, witness := RowWitness.topPrime 97 },
  { lower := 145, upper := 186, witness := RowWitness.topPrime 139 },
  { lower := 187, upper := 228, witness := RowWitness.topPrime 181 },
  { lower := 229, upper := 276, witness := RowWitness.topPrime 229 },
  { lower := 277, upper := 324, witness := RowWitness.topPrime 277 },
  { lower := 325, upper := 364, witness := RowWitness.topPrime 317 },
  { lower := 365, upper := 406, witness := RowWitness.topPrime 359 },
  { lower := 407, upper := 448, witness := RowWitness.topPrime 401 },
  { lower := 449, upper := 496, witness := RowWitness.topPrime 449 },
  { lower := 497, upper := 538, witness := RowWitness.topPrime 491 },
  { lower := 539, upper := 570, witness := RowWitness.topPrime 523 },
  { lower := 571, upper := 618, witness := RowWitness.topPrime 571 },
  { lower := 619, upper := 666, witness := RowWitness.topPrime 619 },
  { lower := 667, upper := 708, witness := RowWitness.topPrime 661 },
  { lower := 709, upper := 756, witness := RowWitness.topPrime 709 },
  { lower := 757, upper := 804, witness := RowWitness.topPrime 757 },
  { lower := 805, upper := 844, witness := RowWitness.topPrime 797 },
  { lower := 845, upper := 886, witness := RowWitness.topPrime 839 },
  { lower := 887, upper := 934, witness := RowWitness.topPrime 887 },
  { lower := 935, upper := 976, witness := RowWitness.topPrime 929 },
  { lower := 977, upper := 1024, witness := RowWitness.topPrime 977 },
  { lower := 1025, upper := 1068, witness := RowWitness.topPrime 1021 },
  { lower := 1069, upper := 1116, witness := RowWitness.topPrime 1069 },
  { lower := 1117, upper := 1164, witness := RowWitness.topPrime 1117 },
  { lower := 1165, upper := 1210, witness := RowWitness.topPrime 1163 },
  { lower := 1211, upper := 1248, witness := RowWitness.topPrime 1201 },
  { lower := 1249, upper := 1296, witness := RowWitness.topPrime 1249 },
  { lower := 1297, upper := 1344, witness := RowWitness.topPrime 1297 },
  { lower := 1345, upper := 1374, witness := RowWitness.topPrime 1327 },
  { lower := 1375, upper := 1420, witness := RowWitness.topPrime 1373 },
  { lower := 1421, upper := 1456, witness := RowWitness.topPrime 1409 },
  { lower := 1457, upper := 1500, witness := RowWitness.topPrime 1453 },
  { lower := 1501, upper := 1546, witness := RowWitness.topPrime 1499 },
  { lower := 1547, upper := 1590, witness := RowWitness.topPrime 1543 },
  { lower := 1591, upper := 1630, witness := RowWitness.topPrime 1583 },
  { lower := 1631, upper := 1674, witness := RowWitness.topPrime 1627 },
  { lower := 1675, upper := 1716, witness := RowWitness.topPrime 1669 },
  { lower := 1717, upper := 1756, witness := RowWitness.topPrime 1709 },
  { lower := 1757, upper := 1800, witness := RowWitness.topPrime 1753 },
  { lower := 1801, upper := 1848, witness := RowWitness.topPrime 1801 },
  { lower := 1849, upper := 1894, witness := RowWitness.topPrime 1847 },
  { lower := 1895, upper := 1936, witness := RowWitness.topPrime 1889 },
  { lower := 1937, upper := 1980, witness := RowWitness.topPrime 1933 },
  { lower := 1981, upper := 2026, witness := RowWitness.topPrime 1979 },
  { lower := 2027, upper := 2074, witness := RowWitness.topPrime 2027 },
  { lower := 2075, upper := 2116, witness := RowWitness.topPrime 2069 },
  { lower := 2117, upper := 2160, witness := RowWitness.topPrime 2113 },
  { lower := 2161, upper := 2208, witness := RowWitness.topPrime 2161 },
  { lower := 2209, upper := 2254, witness := RowWitness.topPrime 2207 },
  { lower := 2255, upper := 2256, witness := RowWitness.topPrime 2251 },
  { lower := 2312, upper := 2346, witness := RowWitness.topPrime 2311 },
  { lower := 2375, upper := 2418, witness := RowWitness.topPrime 2371 },
  { lower := 2419, upper := 2464, witness := RowWitness.topPrime 2417 },
  { lower := 2465, upper := 2467, witness := RowWitness.topPrime 2459 },
  { lower := 2523, upper := 2568, witness := RowWitness.topPrime 2521 },
  { lower := 2569, upper := 2582, witness := RowWitness.topPrime 2557 },
  { lower := 2625, upper := 2668, witness := RowWitness.topPrime 2621 },
  { lower := 2669, upper := 2710, witness := RowWitness.topPrime 2663 },
  { lower := 2711, upper := 2720, witness := RowWitness.topPrime 2711 },
  { lower := 2738, upper := 2778, witness := RowWitness.topPrime 2731 },
  { lower := 2779, upper := 2797, witness := RowWitness.topPrime 2777 },
  { lower := 2875, upper := 2908, witness := RowWitness.topPrime 2861 },
  { lower := 2909, upper := 2951, witness := RowWitness.topPrime 2909 },
  { lower := 3025, upper := 3070, witness := RowWitness.topPrime 3023 },
  { lower := 3071, upper := 3072, witness := RowWitness.topPrime 3067 },
  { lower := 3087, upper := 3089, witness := RowWitness.topPrime 3083 },
  { lower := 3125, upper := 3134, witness := RowWitness.topPrime 3121 },
  { lower := 3146, upper := 3184, witness := RowWitness.topPrime 3137 },
  { lower := 3185, upper := 3226, witness := RowWitness.topPrime 3181 },
  { lower := 3249, upper := 3276, witness := RowWitness.topPrime 3229 },
  { lower := 3277, upper := 3297, witness := RowWitness.topPrime 3271 },
  { lower := 3364, upper := 3408, witness := RowWitness.topPrime 3361 },
  { lower := 3409, upper := 3449, witness := RowWitness.topPrime 3407 },
  { lower := 3468, upper := 3477, witness := RowWitness.topPrime 3467 },
  { lower := 3500, upper := 3546, witness := RowWitness.topPrime 3499 },
  { lower := 3547, upper := 3547, witness := RowWitness.topPrime 3547 },
  { lower := 3549, upper := 3556, witness := RowWitness.topPrime 3547 },
  { lower := 3625, upper := 3670, witness := RowWitness.topPrime 3623 },
  { lower := 3671, upper := 3677, witness := RowWitness.topPrime 3671 },
  { lower := 3703, upper := 3748, witness := RowWitness.topPrime 3701 },
  { lower := 3749, upper := 3786, witness := RowWitness.topPrime 3739 },
  { lower := 3787, upper := 3804, witness := RowWitness.topPrime 3779 },
  { lower := 3872, upper := 3910, witness := RowWitness.topPrime 3863 },
  { lower := 3911, upper := 3922, witness := RowWitness.topPrime 3911 },
  { lower := 3993, upper := 4036, witness := RowWitness.topPrime 3989 },
  { lower := 4037, upper := 4040, witness := RowWitness.topPrime 4027 },
  { lower := 4046, upper := 4047, witness := RowWitness.topPrime 4027 },
  { lower := 4056, upper := 4093, witness := RowWitness.topPrime 4051 },
  { lower := 4096, upper := 4103, witness := RowWitness.topPrime 4093 },
  { lower := 4107, upper := 4146, witness := RowWitness.topPrime 4099 },
  { lower := 4147, upper := 4163, witness := RowWitness.topPrime 4139 },
  { lower := 4225, upper := 4266, witness := RowWitness.topPrime 4219 },
  { lower := 4267, upper := 4282, witness := RowWitness.topPrime 4261 },
  { lower := 4335, upper := 4374, witness := RowWitness.topPrime 4327 },
  { lower := 4375, upper := 4420, witness := RowWitness.topPrime 4373 },
  { lower := 4421, upper := 4441, witness := RowWitness.topPrime 4421 },
  { lower := 4459, upper := 4465, witness := RowWitness.topPrime 4457 },
  { lower := 4477, upper := 4510, witness := RowWitness.topPrime 4463 },
  { lower := 4511, upper := 4524, witness := RowWitness.topPrime 4507 },
  { lower := 4598, upper := 4610, witness := RowWitness.topPrime 4597 },
  { lower := 4624, upper := 4668, witness := RowWitness.topPrime 4621 },
  { lower := 4669, upper := 4671, witness := RowWitness.topPrime 4663 },
  { lower := 4719, upper := 4750, witness := RowWitness.topPrime 4703 },
  { lower := 4751, upper := 4797, witness := RowWitness.topPrime 4751 },
  { lower := 4802, upper := 4848, witness := RowWitness.topPrime 4801 },
  { lower := 4849, upper := 4852, witness := RowWitness.topPrime 4831 },
  { lower := 4875, upper := 4887, witness := RowWitness.topPrime 4871 },
  { lower := 4901, upper := 4936, witness := RowWitness.topPrime 4889 },
  { lower := 4937, upper := 4948, witness := RowWitness.topPrime 4937 },
  { lower := 5000, upper := 5008, witness := RowWitness.topPrime 4999 },
  { lower := 5043, upper := 5086, witness := RowWitness.topPrime 5039 },
  { lower := 5087, upper := 5134, witness := RowWitness.topPrime 5087 },
  { lower := 5135, upper := 5166, witness := RowWitness.topPrime 5119 },
  { lower := 5167, upper := 5172, witness := RowWitness.topPrime 5167 },
  { lower := 5203, upper := 5244, witness := RowWitness.topPrime 5197 },
  { lower := 5245, upper := 5284, witness := RowWitness.topPrime 5237 },
  { lower := 5285, upper := 5286, witness := RowWitness.topPrime 5281 },
  { lower := 5290, upper := 5297, witness := RowWitness.topPrime 5281 },
  { lower := 5324, upper := 5337, witness := RowWitness.topPrime 5323 },
  { lower := 5408, upper := 5454, witness := RowWitness.topPrime 5407 },
  { lower := 5455, upper := 5455, witness := RowWitness.topPrime 5449 },
  { lower := 5488, upper := 5530, witness := RowWitness.topPrime 5483 },
  { lower := 5531, upper := 5535, witness := RowWitness.topPrime 5531 },
  { lower := 5577, upper := 5594, witness := RowWitness.topPrime 5573 },
  { lower := 5766, upper := 5796, witness := RowWitness.topPrime 5749 },
  { lower := 5797, upper := 5827, witness := RowWitness.topPrime 5791 },
  { lower := 5831, upper := 5874, witness := RowWitness.topPrime 5827 },
  { lower := 5875, upper := 5878, witness := RowWitness.topPrime 5869 },
  { lower := 5915, upper := 5934, witness := RowWitness.topPrime 5903 },
  { lower := 6084, upper := 6116, witness := RowWitness.topPrime 6079 },
  { lower := 6174, upper := 6184, witness := RowWitness.topPrime 6173 },
  { lower := 6253, upper := 6294, witness := RowWitness.topPrime 6247 },
  { lower := 6295, upper := 6297, witness := RowWitness.topPrime 6287 },
  { lower := 6358, upper := 6395, witness := RowWitness.topPrime 6353 },
  { lower := 6517, upper := 6538, witness := RowWitness.topPrime 6491 },
  { lower := 6539, upper := 6545, witness := RowWitness.topPrime 6529 },
  { lower := 6561, upper := 6564, witness := RowWitness.topPrime 6553 },
  { lower := 6591, upper := 6608, witness := RowWitness.topPrime 6581 },
  { lower := 6627, upper := 6638, witness := RowWitness.topPrime 6619 },
  { lower := 6647, upper := 6684, witness := RowWitness.topPrime 6637 },
  { lower := 6685, upper := 6694, witness := RowWitness.topPrime 6679 },
  { lower := 6727, upper := 6766, witness := RowWitness.topPrime 6719 },
  { lower := 6767, upper := 6775, witness := RowWitness.topPrime 6763 },
  { lower := 6859, upper := 6904, witness := RowWitness.topPrime 6857 },
  { lower := 6905, upper := 6922, witness := RowWitness.topPrime 6899 },
  { lower := 6936, upper := 6964, witness := RowWitness.topPrime 6917 },
  { lower := 6965, upper := 6976, witness := RowWitness.topPrime 6961 },
  { lower := 7220, upper := 7266, witness := RowWitness.topPrime 7219 },
  { lower := 7267, upper := 7272, witness := RowWitness.topPrime 7253 },
  { lower := 7290, upper := 7314, witness := RowWitness.topPrime 7283 },
  { lower := 7406, upper := 7440, witness := RowWitness.topPrime 7393 },
  { lower := 7441, upper := 7443, witness := RowWitness.topPrime 7433 },
  { lower := 7514, upper := 7554, witness := RowWitness.topPrime 7507 },
  { lower := 7555, upper := 7561, witness := RowWitness.topPrime 7549 },
  { lower := 7569, upper := 7608, witness := RowWitness.topPrime 7561 },
  { lower := 7609, upper := 7616, witness := RowWitness.topPrime 7607 },
  { lower := 7935, upper := 7936, witness := RowWitness.topPrime 7933 },
  { lower := 7942, upper := 7982, witness := RowWitness.topPrime 7937 },
  { lower := 7986, upper := 7989, witness := RowWitness.topPrime 7963 },
  { lower := 8019, upper := 8033, witness := RowWitness.topPrime 8017 },
  { lower := 8125, upper := 8139, witness := RowWitness.topPrime 8123 },
  { lower := 8214, upper := 8256, witness := RowWitness.topPrime 8209 },
  { lower := 8257, upper := 8261, witness := RowWitness.topPrime 8243 },
  { lower := 8405, upper := 8436, witness := RowWitness.topPrime 8389 },
  { lower := 8437, upper := 8452, witness := RowWitness.topPrime 8431 },
  { lower := 8664, upper := 8710, witness := RowWitness.topPrime 8663 },
  { lower := 8711, upper := 8711, witness := RowWitness.topPrime 8707 },
  { lower := 8750, upper := 8794, witness := RowWitness.topPrime 8747 },
  { lower := 8795, upper := 8797, witness := RowWitness.topPrime 8783 },
  { lower := 8959, upper := 8965, witness := RowWitness.topPrime 8951 },
  { lower := 8993, upper := 9006, witness := RowWitness.topPrime 8971 },
  { lower := 9025, upper := 9040, witness := RowWitness.topPrime 9013 },
  { lower := 9248, upper := 9288, witness := RowWitness.topPrime 9241 },
  { lower := 9289, upper := 9298, witness := RowWitness.topPrime 9283 },
  { lower := 9386, upper := 9422, witness := RowWitness.topPrime 9377 },
  { lower := 9522, upper := 9524, witness := RowWitness.topPrime 9521 },
  { lower := 9537, upper := 9569, witness := RowWitness.topPrime 9533 },
  { lower := 9583, upper := 9584, witness := RowWitness.topPrime 9551 },
  { lower := 9604, upper := 9648, witness := RowWitness.topPrime 9601 },
  { lower := 9649, upper := 9651, witness := RowWitness.topPrime 9649 },
  { lower := 10086, upper := 10126, witness := RowWitness.topPrime 10079 },
  { lower := 10127, upper := 10155, witness := RowWitness.topPrime 10111 },
  { lower := 10580, upper := 10614, witness := RowWitness.topPrime 10567 },
  { lower := 10615, upper := 10618, witness := RowWitness.topPrime 10613 },
  { lower := 10625, upper := 10627, witness := RowWitness.topPrime 10613 },
  { lower := 10633, upper := 10678, witness := RowWitness.topPrime 10631 },
  { lower := 10679, upper := 10680, witness := RowWitness.topPrime 10667 },
  { lower := 10693, upper := 10695, witness := RowWitness.topPrime 10691 },
  { lower := 10935, upper := 10956, witness := RowWitness.topPrime 10909 },
  { lower := 10957, upper := 11004, witness := RowWitness.topPrime 10957 },
  { lower := 11005, upper := 11029, witness := RowWitness.topPrime 11003 },
  { lower := 11109, upper := 11140, witness := RowWitness.topPrime 11093 },
  { lower := 11141, upper := 11141, witness := RowWitness.topPrime 11131 },
  { lower := 11271, upper := 11297, witness := RowWitness.topPrime 11261 },
  { lower := 11552, upper := 11598, witness := RowWitness.topPrime 11551 },
  { lower := 11599, upper := 11599, witness := RowWitness.topPrime 11597 },
  { lower := 11662, upper := 11685, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11790, witness := RowWitness.topPrime 11743 },
  { lower := 11791, upper := 11814, witness := RowWitness.topPrime 11789 },
  { lower := 11875, upper := 11896, witness := RowWitness.topPrime 11867 },
  { lower := 11913, upper := 11922, witness := RowWitness.topPrime 11909 },
  { lower := 12005, upper := 12026, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12321, witness := RowWitness.topPrime 12301 },
  { lower := 12348, upper := 12368, witness := RowWitness.topPrime 12347 },
  { lower := 12500, upper := 12540, witness := RowWitness.topPrime 12497 },
  { lower := 12635, upper := 12662, witness := RowWitness.topPrime 12619 },
  { lower := 12696, upper := 12736, witness := RowWitness.topPrime 12689 },
  { lower := 12737, upper := 12738, witness := RowWitness.topPrime 12721 },
  { lower := 13034, upper := 13043, witness := RowWitness.topPrime 13033 },
  { lower := 13125, upper := 13168, witness := RowWitness.topPrime 13121 },
  { lower := 13169, upper := 13169, witness := RowWitness.topPrime 13163 },
  { lower := 13225, upper := 13229, witness := RowWitness.topPrime 13219 },
  { lower := 13254, upper := 13272, witness := RowWitness.topPrime 13249 },
  { lower := 13357, upper := 13357, witness := RowWitness.topPrime 13339 },
  { lower := 13377, upper := 13404, witness := RowWitness.topPrime 13367 },
  { lower := 13454, upper := 13498, witness := RowWitness.topPrime 13451 },
  { lower := 13499, upper := 13501, witness := RowWitness.topPrime 13499 },
  { lower := 13718, upper := 13758, witness := RowWitness.topPrime 13711 },
  { lower := 13759, upper := 13797, witness := RowWitness.topPrime 13759 },
  { lower := 14079, upper := 14110, witness := RowWitness.topPrime 14071 },
  { lower := 14297, upper := 14330, witness := RowWitness.topPrime 14293 },
  { lower := 14406, upper := 14448, witness := RowWitness.topPrime 14401 },
  { lower := 14449, upper := 14462, witness := RowWitness.topPrime 14449 },
  { lower := 14801, upper := 14844, witness := RowWitness.topPrime 14797 },
  { lower := 14845, upper := 14848, witness := RowWitness.topPrime 14843 },
  { lower := 15138, upper := 15176, witness := RowWitness.topPrime 15137 },
  { lower := 15341, upper := 15356, witness := RowWitness.topPrime 15331 },
  { lower := 15376, upper := 15420, witness := RowWitness.topPrime 15373 },
  { lower := 15421, upper := 15423, witness := RowWitness.topPrime 15413 },
  { lower := 15979, upper := 16019, witness := RowWitness.topPrime 15973 },
  { lower := 16384, upper := 16384, witness := RowWitness.topPrime 16381 },
  { lower := 16399, upper := 16428, witness := RowWitness.topPrime 16381 },
  { lower := 16429, upper := 16446, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16834, witness := RowWitness.topPrime 16787 },
  { lower := 16835, upper := 16857, witness := RowWitness.topPrime 16831 },
  { lower := 17303, upper := 17345, witness := RowWitness.topPrime 17299 },
  { lower := 17496, upper := 17538, witness := RowWitness.topPrime 17491 },
  { lower := 17539, upper := 17543, witness := RowWitness.topPrime 17539 },
  { lower := 17672, upper := 17708, witness := RowWitness.topPrime 17669 },
  { lower := 18491, upper := 18528, witness := RowWitness.topPrime 18481 },
  { lower := 18529, upper := 18549, witness := RowWitness.topPrime 18523 },
  { lower := 19208, upper := 19213, witness := RowWitness.topPrime 19207 },
  { lower := 19220, upper := 19255, witness := RowWitness.topPrime 19219 },
  { lower := 19375, upper := 19390, witness := RowWitness.topPrime 19373 },
  { lower := 19683, upper := 19699, witness := RowWitness.topPrime 19681 },
  { lower := 20000, upper := 20012, witness := RowWitness.topPrime 19997 },
  { lower := 20181, upper := 20224, witness := RowWitness.topPrime 20177 },
  { lower := 20225, upper := 20228, witness := RowWitness.topPrime 20219 },
  { lower := 20577, upper := 20582, witness := RowWitness.topPrime 20563 },
  { lower := 20631, upper := 20672, witness := RowWitness.topPrime 20627 },
  { lower := 21160, upper := 21189, witness := RowWitness.topPrime 21157 },
  { lower := 21296, upper := 21297, witness := RowWitness.topPrime 21283 },
  { lower := 21866, upper := 21910, witness := RowWitness.topPrime 21863 },
  { lower := 21911, upper := 21922, witness := RowWitness.topPrime 21911 },
  { lower := 22103, upper := 22137, witness := RowWitness.topPrime 22093 },
  { lower := 23548, upper := 23581, witness := RowWitness.topPrime 23539 },
  { lower := 24025, upper := 24070, witness := RowWitness.topPrime 24023 },
  { lower := 24071, upper := 24084, witness := RowWitness.topPrime 24071 },
  { lower := 24334, upper := 24346, witness := RowWitness.topPrime 24329 },
  { lower := 24375, upper := 24381, witness := RowWitness.topPrime 24373 },
  { lower := 24389, upper := 24422, witness := RowWitness.topPrime 24379 },
  { lower := 25000, upper := 25033, witness := RowWitness.topPrime 24989 },
  { lower := 25230, upper := 25262, witness := RowWitness.topPrime 25229 },
  { lower := 26411, upper := 26411, witness := RowWitness.topPrime 26407 },
  { lower := 26908, upper := 26950, witness := RowWitness.topPrime 26903 },
  { lower := 26951, upper := 26955, witness := RowWitness.topPrime 26951 },
  { lower := 27753, upper := 27782, witness := RowWitness.topPrime 27751 },
  { lower := 28577, upper := 28620, witness := RowWitness.topPrime 28573 },
  { lower := 28621, upper := 28624, witness := RowWitness.topPrime 28621 },
  { lower := 28749, upper := 28764, witness := RowWitness.topPrime 28729 },
  { lower := 28830, upper := 28859, witness := RowWitness.topPrime 28817 },
  { lower := 29478, upper := 29482, witness := RowWitness.topPrime 29473 },
  { lower := 30276, upper := 30305, witness := RowWitness.topPrime 30271 },
  { lower := 30758, upper := 30799, witness := RowWitness.topPrime 30757 },
  { lower := 31250, upper := 31260, witness := RowWitness.topPrime 31249 },
  { lower := 31944, upper := 31954, witness := RowWitness.topPrime 31907 },
  { lower := 31955, upper := 31955, witness := RowWitness.largeDivisor 37145866172277122026215219642285880018051171590431832721749403070322583849795263840483716914963996469639831548005040461475181025809411472610817 },
  { lower := 31956, upper := 31956, witness := RowWitness.largeDivisor 37201745624962006752843599062582662086525110923399763271161587204313291008651668900792831193888349980688556379216781778453707059695548233005869 },
  { lower := 31957, upper := 31991, witness := RowWitness.topPrime 31957 },
  { lower := 32799, upper := 32844, witness := RowWitness.topPrime 32797 },
  { lower := 32845, upper := 32846, witness := RowWitness.topPrime 32843 },
  { lower := 33282, upper := 33294, witness := RowWitness.topPrime 33247 },
  { lower := 33295, upper := 33322, witness := RowWitness.topPrime 33289 },
  { lower := 33620, upper := 33666, witness := RowWitness.topPrime 33619 },
  { lower := 33667, upper := 33682, witness := RowWitness.topPrime 33647 },
  { lower := 34391, upper := 34422, witness := RowWitness.topPrime 34381 },
  { lower := 34606, upper := 34643, witness := RowWitness.topPrime 34603 },
  { lower := 35152, upper := 35178, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35348, witness := RowWitness.topPrime 35339 },
  { lower := 35594, upper := 35604, witness := RowWitness.topPrime 35593 },
  { lower := 36518, upper := 36544, witness := RowWitness.topPrime 36497 },
  { lower := 36545, upper := 36548, witness := RowWitness.topPrime 36541 },
  { lower := 36980, upper := 37026, witness := RowWitness.topPrime 36979 },
  { lower := 37027, upper := 37027, witness := RowWitness.topPrime 37021 },
  { lower := 37500, upper := 37526, witness := RowWitness.topPrime 37493 },
  { lower := 43750, upper := 43753, witness := RowWitness.topPrime 43721 },
  { lower := 43940, upper := 43970, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44227, witness := RowWitness.topPrime 44207 },
  { lower := 46585, upper := 46593, witness := RowWitness.topPrime 46573 },
  { lower := 47916, upper := 47958, witness := RowWitness.topPrime 47911 },
  { lower := 47959, upper := 47962, witness := RowWitness.topPrime 47951 },
  { lower := 48020, upper := 48060, witness := RowWitness.topPrime 48017 },
  { lower := 48778, upper := 48796, witness := RowWitness.topPrime 48767 },
  { lower := 49284, upper := 49294, witness := RowWitness.topPrime 49279 },
  { lower := 50430, upper := 50468, witness := RowWitness.topPrime 50423 },
  { lower := 50578, upper := 50578, witness := RowWitness.topPrime 50551 },
  { lower := 55225, upper := 55266, witness := RowWitness.topPrime 55219 },
  { lower := 55267, upper := 55270, witness := RowWitness.topPrime 55259 },
  { lower := 55473, upper := 55516, witness := RowWitness.topPrime 55469 },
  { lower := 55517, upper := 55517, witness := RowWitness.topPrime 55511 },
  { lower := 57154, upper := 57169, witness := RowWitness.topPrime 57149 },
  { lower := 63878, upper := 63910, witness := RowWitness.topPrime 63863 },
  { lower := 63911, upper := 63916, witness := RowWitness.topPrime 63907 },
  { lower := 65559, upper := 65583, witness := RowWitness.topPrime 65557 },
  { lower := 65625, upper := 65657, witness := RowWitness.topPrime 65617 },
  { lower := 68782, upper := 68797, witness := RowWitness.topPrime 68777 },
  { lower := 70304, upper := 70309, witness := RowWitness.topPrime 70297 },
  { lower := 73205, upper := 73214, witness := RowWitness.topPrime 73189 },
  { lower := 79524, upper := 79540, witness := RowWitness.topPrime 79493 },
  { lower := 79541, upper := 79554, witness := RowWitness.topPrime 79537 },
  { lower := 81289, upper := 81297, witness := RowWitness.topPrime 81283 },
  { lower := 219501, upper := 219535, witness := RowWitness.topPrime 219491 },
  { lower := 658503, upper := 658534, witness := RowWitness.topPrime 658487 },
  { lower := 658535, upper := 658536, witness := RowWitness.topPrime 658507 }
]

def row048_layers : List CoverLayer := [
  { lower := 2256, upper := 4512, M := 44 },
  { lower := 4512, upper := 9024, M := 43 },
  { lower := 9024, upper := 18048, M := 41 },
  { lower := 18048, upper := 36096, M := 40 },
  { lower := 36096, upper := 72192, M := 39 },
  { lower := 72192, upper := 144384, M := 37 },
  { lower := 144384, upper := 288768, M := 36 },
  { lower := 288768, upper := 577536, M := 35 },
  { lower := 577536, upper := 1155072, M := 34 },
  { lower := 1155072, upper := 2310144, M := 33 },
  { lower := 2310144, upper := 4620288, M := 32 },
  { lower := 4620288, upper := 9240576, M := 31 },
  { lower := 9240576, upper := 18481152, M := 30 },
  { lower := 18481152, upper := 36962304, M := 29 },
  { lower := 36962304, upper := 73924608, M := 28 },
  { lower := 73924608, upper := 147849216, M := 27 },
  { lower := 147849216, upper := 295698432, M := 26 },
  { lower := 295698432, upper := 591396864, M := 25 },
  { lower := 591396864, upper := 1182793728, M := 24 },
  { lower := 1182793728, upper := 2365587456, M := 24 },
  { lower := 2365587456, upper := 4731174912, M := 23 },
  { lower := 4731174912, upper := 9462349824, M := 22 },
  { lower := 9462349824, upper := 18924699648, M := 21 },
  { lower := 18924699648, upper := 37849399296, M := 21 },
  { lower := 37849399296, upper := 75698798592, M := 20 },
  { lower := 75698798592, upper := 151397597184, M := 19 },
  { lower := 151397597184, upper := 302795194368, M := 19 },
  { lower := 302795194368, upper := 605590388736, M := 18 },
  { lower := 605590388736, upper := 1211180777472, M := 18 },
  { lower := 1211180777472, upper := 2422361554944, M := 17 },
  { lower := 2422361554944, upper := 4844723109888, M := 17 },
  { lower := 4844723109888, upper := 9689446219776, M := 16 },
  { lower := 9689446219776, upper := 19378892439552, M := 15 },
  { lower := 19378892439552, upper := 38757784879104, M := 15 },
  { lower := 38757784879104, upper := 77515569758208, M := 15 },
  { lower := 77515569758208, upper := 155031139516416, M := 14 },
  { lower := 155031139516416, upper := 310062279032832, M := 14 },
  { lower := 310062279032832, upper := 620124558065664, M := 13 },
  { lower := 620124558065664, upper := 1240249116131328, M := 13 },
  { lower := 1240249116131328, upper := 2480498232262656, M := 12 },
  { lower := 2480498232262656, upper := 4960996464525312, M := 12 },
  { lower := 4960996464525312, upper := 9921992929050624, M := 12 },
  { lower := 9921992929050624, upper := 19843985858101248, M := 11 },
  { lower := 19843985858101248, upper := 39687971716202496, M := 11 },
  { lower := 39687971716202496, upper := 79375943432404992, M := 11 },
  { lower := 79375943432404992, upper := 158751886864809984, M := 10 },
  { lower := 158751886864809984, upper := 317503773729619968, M := 10 },
  { lower := 317503773729619968, upper := 635007547459239936, M := 10 },
  { lower := 635007547459239936, upper := 1270015094918479872, M := 9 },
  { lower := 1270015094918479872, upper := 2540030189836959744, M := 9 },
  { lower := 2540030189836959744, upper := 5080060379673919488, M := 9 },
  { lower := 5080060379673919488, upper := 10160120759347838976, M := 8 },
  { lower := 10160120759347838976, upper := 20320241518695677952, M := 8 },
  { lower := 20320241518695677952, upper := 40640483037391355904, M := 8 },
  { lower := 40640483037391355904, upper := 81280966074782711808, M := 8 },
  { lower := 81280966074782711808, upper := 162561932149565423616, M := 7 },
  { lower := 162561932149565423616, upper := 325123864299130847232, M := 7 },
  { lower := 325123864299130847232, upper := 650247728598261694464, M := 7 },
  { lower := 650247728598261694464, upper := 1300495457196523388928, M := 7 },
  { lower := 1300495457196523388928, upper := 2600990914393046777856, M := 7 },
  { lower := 2600990914393046777856, upper := 5201981828786093555712, M := 6 },
  { lower := 5201981828786093555712, upper := 10403963657572187111424, M := 6 },
  { lower := 10403963657572187111424, upper := 20807927315144374222848, M := 6 },
  { lower := 20807927315144374222848, upper := 41615854630288748445696, M := 6 },
  { lower := 41615854630288748445696, upper := 83231709260577496891392, M := 6 },
  { lower := 83231709260577496891392, upper := 166463418521154993782784, M := 5 },
  { lower := 166463418521154993782784, upper := 332926837042309987565568, M := 5 },
  { lower := 332926837042309987565568, upper := 665853674084619975131136, M := 5 },
  { lower := 665853674084619975131136, upper := 1331707348169239950262272, M := 5 },
  { lower := 1331707348169239950262272, upper := 2663414696338479900524544, M := 5 },
  { lower := 2663414696338479900524544, upper := 5326829392676959801049088, M := 5 },
  { lower := 5326829392676959801049088, upper := 10653658785353919602098176, M := 5 },
  { lower := 10653658785353919602098176, upper := 21307317570707839204196352, M := 4 },
  { lower := 21307317570707839204196352, upper := 42614635141415678408392704, M := 4 },
  { lower := 42614635141415678408392704, upper := 85229270282831356816785408, M := 4 },
  { lower := 85229270282831356816785408, upper := 170458540565662713633570816, M := 4 },
  { lower := 170458540565662713633570816, upper := 340917081131325427267141632, M := 4 },
  { lower := 340917081131325427267141632, upper := 681834162262650854534283264, M := 4 },
  { lower := 681834162262650854534283264, upper := 1363668324525301709068566528, M := 4 },
  { lower := 1363668324525301709068566528, upper := 2727336649050603418137133056, M := 4 },
  { lower := 2727336649050603418137133056, upper := 5454673298101206836274266112, M := 4 },
  { lower := 5454673298101206836274266112, upper := 10909346596202413672548532224, M := 3 },
  { lower := 10909346596202413672548532224, upper := 21818693192404827345097064448, M := 3 },
  { lower := 21818693192404827345097064448, upper := 43637386384809654690194128896, M := 3 },
  { lower := 43637386384809654690194128896, upper := 87274772769619309380388257792, M := 3 },
  { lower := 87274772769619309380388257792, upper := 174549545539238618760776515584, M := 3 },
  { lower := 174549545539238618760776515584, upper := 349099091078477237521553031168, M := 3 },
  { lower := 349099091078477237521553031168, upper := 698198182156954475043106062336, M := 3 },
  { lower := 698198182156954475043106062336, upper := 1396396364313908950086212124672, M := 3 },
  { lower := 1396396364313908950086212124672, upper := 2792792728627817900172424249344, M := 3 },
  { lower := 2792792728627817900172424249344, upper := 5585585457255635800344848498688, M := 3 },
  { lower := 5585585457255635800344848498688, upper := 11171170914511271600689696997376, M := 3 },
  { lower := 11171170914511271600689696997376, upper := 22342341829022543201379393994752, M := 3 },
  { lower := 22342341829022543201379393994752, upper := 44684683658045086402758787989504, M := 2 },
  { lower := 44684683658045086402758787989504, upper := 89369367316090172805517575979008, M := 2 },
  { lower := 89369367316090172805517575979008, upper := 178738734632180345611035151958016, M := 2 },
  { lower := 178738734632180345611035151958016, upper := 357477469264360691222070303916032, M := 2 },
  { lower := 357477469264360691222070303916032, upper := 714954938528721382444140607832064, M := 2 },
  { lower := 714954938528721382444140607832064, upper := 1429909877057442764888281215664128, M := 2 },
  { lower := 1429909877057442764888281215664128, upper := 2859819754114885529776562431328256, M := 2 },
  { lower := 2859819754114885529776562431328256, upper := 5719639508229771059553124862656512, M := 2 },
  { lower := 5719639508229771059553124862656512, upper := 11439279016459542119106249725313024, M := 2 },
  { lower := 11439279016459542119106249725313024, upper := 22878558032919084238212499450626048, M := 2 },
  { lower := 22878558032919084238212499450626048, upper := 45757116065838168476424998901252096, M := 2 },
  { lower := 45757116065838168476424998901252096, upper := 91514232131676336952849997802504192, M := 2 },
  { lower := 91514232131676336952849997802504192, upper := 183028464263352673905699995605008384, M := 2 },
  { lower := 183028464263352673905699995605008384, upper := 366056928526705347811399991210016768, M := 2 },
  { lower := 366056928526705347811399991210016768, upper := 732113857053410695622799982420033536, M := 2 },
  { lower := 732113857053410695622799982420033536, upper := 1464227714106821391245599964840067072, M := 2 },
  { lower := 1464227714106821391245599964840067072, upper := 2928455428213642782491199929680134144, M := 2 },
  { lower := 2928455428213642782491199929680134144, upper := 5856910856427285564982399859360268288, M := 2 },
  { lower := 5856910856427285564982399859360268288, upper := 10000000000000000000000000000000000000, M := 2 }
]

def row048 : FiniteCoverRow := {
  height := row048_height,
  goods := row048_goods,
  layers := row048_layers
}

theorem row048_registered :
    decide (row048.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row048_goods_checked :
    row048.goods.all (goodSegmentCheck row048.height.i row048.height.r row048.height.s) = true := by
  decide +kernel

theorem row048_small_checked :
    coverCheck (2 * row048.height.i + 2) (row048.height.i * (row048.height.i - 1) - 1)
      (row048.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row048_layerCover_checked :
    coverCheck (row048.height.i * (row048.height.i - 1)) (row048.height.n0 - 1)
      (row048.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row048_layer000_checked :
    coverLayerCheck row048.height row048.goods { lower := 2256, upper := 4512, M := 44 } = true := by
  decide +kernel

theorem row048_layer001_checked :
    coverLayerCheck row048.height row048.goods { lower := 4512, upper := 9024, M := 43 } = true := by
  decide +kernel

theorem row048_layer002_checked :
    coverLayerCheck row048.height row048.goods { lower := 9024, upper := 18048, M := 41 } = true := by
  decide +kernel

theorem row048_layer003_checked :
    coverLayerCheck row048.height row048.goods { lower := 18048, upper := 36096, M := 40 } = true := by
  decide +kernel

theorem row048_layer004_checked :
    coverLayerCheck row048.height row048.goods { lower := 36096, upper := 72192, M := 39 } = true := by
  decide +kernel

theorem row048_layer005_checked :
    coverLayerCheck row048.height row048.goods { lower := 72192, upper := 144384, M := 37 } = true := by
  decide +kernel

theorem row048_layer006_checked :
    coverLayerCheck row048.height row048.goods { lower := 144384, upper := 288768, M := 36 } = true := by
  decide +kernel

theorem row048_layer007_checked :
    coverLayerCheck row048.height row048.goods { lower := 288768, upper := 577536, M := 35 } = true := by
  decide +kernel

theorem row048_layer008_checked :
    coverLayerCheck row048.height row048.goods { lower := 577536, upper := 1155072, M := 34 } = true := by
  decide +kernel

theorem row048_layer009_checked :
    coverLayerCheck row048.height row048.goods { lower := 1155072, upper := 2310144, M := 33 } = true := by
  decide +kernel

theorem row048_layer010_checked :
    coverLayerCheck row048.height row048.goods { lower := 2310144, upper := 4620288, M := 32 } = true := by
  decide +kernel

theorem row048_layer011_checked :
    coverLayerCheck row048.height row048.goods { lower := 4620288, upper := 9240576, M := 31 } = true := by
  decide +kernel

theorem row048_layer012_checked :
    coverLayerCheck row048.height row048.goods { lower := 9240576, upper := 18481152, M := 30 } = true := by
  decide +kernel

theorem row048_layer013_checked :
    coverLayerCheck row048.height row048.goods { lower := 18481152, upper := 36962304, M := 29 } = true := by
  decide +kernel

theorem row048_layer014_checked :
    coverLayerCheck row048.height row048.goods { lower := 36962304, upper := 73924608, M := 28 } = true := by
  decide +kernel

theorem row048_layer015_checked :
    coverLayerCheck row048.height row048.goods { lower := 73924608, upper := 147849216, M := 27 } = true := by
  decide +kernel

theorem row048_layer016_checked :
    coverLayerCheck row048.height row048.goods { lower := 147849216, upper := 295698432, M := 26 } = true := by
  decide +kernel

theorem row048_layer017_checked :
    coverLayerCheck row048.height row048.goods { lower := 295698432, upper := 591396864, M := 25 } = true := by
  decide +kernel

theorem row048_layer018_checked :
    coverLayerCheck row048.height row048.goods { lower := 591396864, upper := 1182793728, M := 24 } = true := by
  decide +kernel

theorem row048_layer019_checked :
    coverLayerCheck row048.height row048.goods { lower := 1182793728, upper := 2365587456, M := 24 } = true := by
  decide +kernel

theorem row048_layer020_checked :
    coverLayerCheck row048.height row048.goods { lower := 2365587456, upper := 4731174912, M := 23 } = true := by
  decide +kernel

theorem row048_layer021_checked :
    coverLayerCheck row048.height row048.goods { lower := 4731174912, upper := 9462349824, M := 22 } = true := by
  decide +kernel

theorem row048_layer022_checked :
    coverLayerCheck row048.height row048.goods { lower := 9462349824, upper := 18924699648, M := 21 } = true := by
  decide +kernel

theorem row048_layer023_checked :
    coverLayerCheck row048.height row048.goods { lower := 18924699648, upper := 37849399296, M := 21 } = true := by
  decide +kernel

theorem row048_layer024_checked :
    coverLayerCheck row048.height row048.goods { lower := 37849399296, upper := 75698798592, M := 20 } = true := by
  decide +kernel

theorem row048_layer025_checked :
    coverLayerCheck row048.height row048.goods { lower := 75698798592, upper := 151397597184, M := 19 } = true := by
  decide +kernel

theorem row048_layer026_checked :
    coverLayerCheck row048.height row048.goods { lower := 151397597184, upper := 302795194368, M := 19 } = true := by
  decide +kernel

theorem row048_layer027_checked :
    coverLayerCheck row048.height row048.goods { lower := 302795194368, upper := 605590388736, M := 18 } = true := by
  decide +kernel

theorem row048_layer028_checked :
    coverLayerCheck row048.height row048.goods { lower := 605590388736, upper := 1211180777472, M := 18 } = true := by
  decide +kernel

theorem row048_layer029_checked :
    coverLayerCheck row048.height row048.goods { lower := 1211180777472, upper := 2422361554944, M := 17 } = true := by
  decide +kernel

theorem row048_layer030_checked :
    coverLayerCheck row048.height row048.goods { lower := 2422361554944, upper := 4844723109888, M := 17 } = true := by
  decide +kernel

theorem row048_layer031_checked :
    coverLayerCheck row048.height row048.goods { lower := 4844723109888, upper := 9689446219776, M := 16 } = true := by
  decide +kernel

theorem row048_layer032_checked :
    coverLayerCheck row048.height row048.goods { lower := 9689446219776, upper := 19378892439552, M := 15 } = true := by
  decide +kernel

theorem row048_layer033_checked :
    coverLayerCheck row048.height row048.goods { lower := 19378892439552, upper := 38757784879104, M := 15 } = true := by
  decide +kernel

theorem row048_layer034_checked :
    coverLayerCheck row048.height row048.goods { lower := 38757784879104, upper := 77515569758208, M := 15 } = true := by
  decide +kernel

theorem row048_layer035_checked :
    coverLayerCheck row048.height row048.goods { lower := 77515569758208, upper := 155031139516416, M := 14 } = true := by
  decide +kernel

theorem row048_layer036_checked :
    coverLayerCheck row048.height row048.goods { lower := 155031139516416, upper := 310062279032832, M := 14 } = true := by
  decide +kernel

theorem row048_layer037_checked :
    coverLayerCheck row048.height row048.goods { lower := 310062279032832, upper := 620124558065664, M := 13 } = true := by
  decide +kernel

theorem row048_layer038_checked :
    coverLayerCheck row048.height row048.goods { lower := 620124558065664, upper := 1240249116131328, M := 13 } = true := by
  decide +kernel

theorem row048_layer039_checked :
    coverLayerCheck row048.height row048.goods { lower := 1240249116131328, upper := 2480498232262656, M := 12 } = true := by
  decide +kernel

theorem row048_layer040_checked :
    coverLayerCheck row048.height row048.goods { lower := 2480498232262656, upper := 4960996464525312, M := 12 } = true := by
  decide +kernel

theorem row048_layer041_checked :
    coverLayerCheck row048.height row048.goods { lower := 4960996464525312, upper := 9921992929050624, M := 12 } = true := by
  decide +kernel

theorem row048_layer042_checked :
    coverLayerCheck row048.height row048.goods { lower := 9921992929050624, upper := 19843985858101248, M := 11 } = true := by
  decide +kernel

theorem row048_layer043_checked :
    coverLayerCheck row048.height row048.goods { lower := 19843985858101248, upper := 39687971716202496, M := 11 } = true := by
  decide +kernel

theorem row048_layer044_checked :
    coverLayerCheck row048.height row048.goods { lower := 39687971716202496, upper := 79375943432404992, M := 11 } = true := by
  decide +kernel

theorem row048_layer045_checked :
    coverLayerCheck row048.height row048.goods { lower := 79375943432404992, upper := 158751886864809984, M := 10 } = true := by
  decide +kernel

theorem row048_layer046_checked :
    coverLayerCheck row048.height row048.goods { lower := 158751886864809984, upper := 317503773729619968, M := 10 } = true := by
  decide +kernel

theorem row048_layer047_checked :
    coverLayerCheck row048.height row048.goods { lower := 317503773729619968, upper := 635007547459239936, M := 10 } = true := by
  decide +kernel

theorem row048_layer048_checked :
    coverLayerCheck row048.height row048.goods { lower := 635007547459239936, upper := 1270015094918479872, M := 9 } = true := by
  decide +kernel

theorem row048_layer049_checked :
    coverLayerCheck row048.height row048.goods { lower := 1270015094918479872, upper := 2540030189836959744, M := 9 } = true := by
  decide +kernel

theorem row048_layer050_checked :
    coverLayerCheck row048.height row048.goods { lower := 2540030189836959744, upper := 5080060379673919488, M := 9 } = true := by
  decide +kernel

theorem row048_layer051_checked :
    coverLayerCheck row048.height row048.goods { lower := 5080060379673919488, upper := 10160120759347838976, M := 8 } = true := by
  decide +kernel

theorem row048_layer052_checked :
    coverLayerCheck row048.height row048.goods { lower := 10160120759347838976, upper := 20320241518695677952, M := 8 } = true := by
  decide +kernel

theorem row048_layer053_checked :
    coverLayerCheck row048.height row048.goods { lower := 20320241518695677952, upper := 40640483037391355904, M := 8 } = true := by
  decide +kernel

theorem row048_layer054_checked :
    coverLayerCheck row048.height row048.goods { lower := 40640483037391355904, upper := 81280966074782711808, M := 8 } = true := by
  decide +kernel

theorem row048_layer055_checked :
    coverLayerCheck row048.height row048.goods { lower := 81280966074782711808, upper := 162561932149565423616, M := 7 } = true := by
  decide +kernel

theorem row048_layer056_checked :
    coverLayerCheck row048.height row048.goods { lower := 162561932149565423616, upper := 325123864299130847232, M := 7 } = true := by
  decide +kernel

theorem row048_layer057_checked :
    coverLayerCheck row048.height row048.goods { lower := 325123864299130847232, upper := 650247728598261694464, M := 7 } = true := by
  decide +kernel

theorem row048_layer058_checked :
    coverLayerCheck row048.height row048.goods { lower := 650247728598261694464, upper := 1300495457196523388928, M := 7 } = true := by
  decide +kernel

theorem row048_layer059_checked :
    coverLayerCheck row048.height row048.goods { lower := 1300495457196523388928, upper := 2600990914393046777856, M := 7 } = true := by
  decide +kernel

theorem row048_layer060_checked :
    coverLayerCheck row048.height row048.goods { lower := 2600990914393046777856, upper := 5201981828786093555712, M := 6 } = true := by
  decide +kernel

theorem row048_layer061_checked :
    coverLayerCheck row048.height row048.goods { lower := 5201981828786093555712, upper := 10403963657572187111424, M := 6 } = true := by
  decide +kernel

theorem row048_layer062_checked :
    coverLayerCheck row048.height row048.goods { lower := 10403963657572187111424, upper := 20807927315144374222848, M := 6 } = true := by
  decide +kernel

theorem row048_layer063_checked :
    coverLayerCheck row048.height row048.goods { lower := 20807927315144374222848, upper := 41615854630288748445696, M := 6 } = true := by
  decide +kernel

theorem row048_layer064_checked :
    coverLayerCheck row048.height row048.goods { lower := 41615854630288748445696, upper := 83231709260577496891392, M := 6 } = true := by
  decide +kernel

theorem row048_layer065_checked :
    coverLayerCheck row048.height row048.goods { lower := 83231709260577496891392, upper := 166463418521154993782784, M := 5 } = true := by
  decide +kernel

theorem row048_layer066_checked :
    coverLayerCheck row048.height row048.goods { lower := 166463418521154993782784, upper := 332926837042309987565568, M := 5 } = true := by
  decide +kernel

theorem row048_layer067_checked :
    coverLayerCheck row048.height row048.goods { lower := 332926837042309987565568, upper := 665853674084619975131136, M := 5 } = true := by
  decide +kernel

theorem row048_layer068_checked :
    coverLayerCheck row048.height row048.goods { lower := 665853674084619975131136, upper := 1331707348169239950262272, M := 5 } = true := by
  decide +kernel

theorem row048_layer069_checked :
    coverLayerCheck row048.height row048.goods { lower := 1331707348169239950262272, upper := 2663414696338479900524544, M := 5 } = true := by
  decide +kernel

theorem row048_layer070_checked :
    coverLayerCheck row048.height row048.goods { lower := 2663414696338479900524544, upper := 5326829392676959801049088, M := 5 } = true := by
  decide +kernel

theorem row048_layer071_checked :
    coverLayerCheck row048.height row048.goods { lower := 5326829392676959801049088, upper := 10653658785353919602098176, M := 5 } = true := by
  decide +kernel

theorem row048_layer072_checked :
    coverLayerCheck row048.height row048.goods { lower := 10653658785353919602098176, upper := 21307317570707839204196352, M := 4 } = true := by
  decide +kernel

theorem row048_layer073_checked :
    coverLayerCheck row048.height row048.goods { lower := 21307317570707839204196352, upper := 42614635141415678408392704, M := 4 } = true := by
  decide +kernel

theorem row048_layer074_checked :
    coverLayerCheck row048.height row048.goods { lower := 42614635141415678408392704, upper := 85229270282831356816785408, M := 4 } = true := by
  decide +kernel

theorem row048_layer075_checked :
    coverLayerCheck row048.height row048.goods { lower := 85229270282831356816785408, upper := 170458540565662713633570816, M := 4 } = true := by
  decide +kernel

theorem row048_layer076_checked :
    coverLayerCheck row048.height row048.goods { lower := 170458540565662713633570816, upper := 340917081131325427267141632, M := 4 } = true := by
  decide +kernel

theorem row048_layer077_checked :
    coverLayerCheck row048.height row048.goods { lower := 340917081131325427267141632, upper := 681834162262650854534283264, M := 4 } = true := by
  decide +kernel

theorem row048_layer078_checked :
    coverLayerCheck row048.height row048.goods { lower := 681834162262650854534283264, upper := 1363668324525301709068566528, M := 4 } = true := by
  decide +kernel

theorem row048_layer079_checked :
    coverLayerCheck row048.height row048.goods { lower := 1363668324525301709068566528, upper := 2727336649050603418137133056, M := 4 } = true := by
  decide +kernel

theorem row048_layer080_checked :
    coverLayerCheck row048.height row048.goods { lower := 2727336649050603418137133056, upper := 5454673298101206836274266112, M := 4 } = true := by
  decide +kernel

theorem row048_layer081_checked :
    coverLayerCheck row048.height row048.goods { lower := 5454673298101206836274266112, upper := 10909346596202413672548532224, M := 3 } = true := by
  decide +kernel

theorem row048_layer082_checked :
    coverLayerCheck row048.height row048.goods { lower := 10909346596202413672548532224, upper := 21818693192404827345097064448, M := 3 } = true := by
  decide +kernel

theorem row048_layer083_checked :
    coverLayerCheck row048.height row048.goods { lower := 21818693192404827345097064448, upper := 43637386384809654690194128896, M := 3 } = true := by
  decide +kernel

theorem row048_layer084_checked :
    coverLayerCheck row048.height row048.goods { lower := 43637386384809654690194128896, upper := 87274772769619309380388257792, M := 3 } = true := by
  decide +kernel

theorem row048_layer085_checked :
    coverLayerCheck row048.height row048.goods { lower := 87274772769619309380388257792, upper := 174549545539238618760776515584, M := 3 } = true := by
  decide +kernel

theorem row048_layer086_checked :
    coverLayerCheck row048.height row048.goods { lower := 174549545539238618760776515584, upper := 349099091078477237521553031168, M := 3 } = true := by
  decide +kernel

theorem row048_layer087_checked :
    coverLayerCheck row048.height row048.goods { lower := 349099091078477237521553031168, upper := 698198182156954475043106062336, M := 3 } = true := by
  decide +kernel

theorem row048_layer088_checked :
    coverLayerCheck row048.height row048.goods { lower := 698198182156954475043106062336, upper := 1396396364313908950086212124672, M := 3 } = true := by
  decide +kernel

theorem row048_layer089_checked :
    coverLayerCheck row048.height row048.goods { lower := 1396396364313908950086212124672, upper := 2792792728627817900172424249344, M := 3 } = true := by
  decide +kernel

theorem row048_layer090_checked :
    coverLayerCheck row048.height row048.goods { lower := 2792792728627817900172424249344, upper := 5585585457255635800344848498688, M := 3 } = true := by
  decide +kernel

theorem row048_layer091_checked :
    coverLayerCheck row048.height row048.goods { lower := 5585585457255635800344848498688, upper := 11171170914511271600689696997376, M := 3 } = true := by
  decide +kernel

theorem row048_layer092_checked :
    coverLayerCheck row048.height row048.goods { lower := 11171170914511271600689696997376, upper := 22342341829022543201379393994752, M := 3 } = true := by
  decide +kernel

theorem row048_layer093_checked :
    coverLayerCheck row048.height row048.goods { lower := 22342341829022543201379393994752, upper := 44684683658045086402758787989504, M := 2 } = true := by
  decide +kernel

theorem row048_layer094_checked :
    coverLayerCheck row048.height row048.goods { lower := 44684683658045086402758787989504, upper := 89369367316090172805517575979008, M := 2 } = true := by
  decide +kernel

theorem row048_layer095_checked :
    coverLayerCheck row048.height row048.goods { lower := 89369367316090172805517575979008, upper := 178738734632180345611035151958016, M := 2 } = true := by
  decide +kernel

theorem row048_layer096_checked :
    coverLayerCheck row048.height row048.goods { lower := 178738734632180345611035151958016, upper := 357477469264360691222070303916032, M := 2 } = true := by
  decide +kernel

theorem row048_layer097_checked :
    coverLayerCheck row048.height row048.goods { lower := 357477469264360691222070303916032, upper := 714954938528721382444140607832064, M := 2 } = true := by
  decide +kernel

theorem row048_layer098_checked :
    coverLayerCheck row048.height row048.goods { lower := 714954938528721382444140607832064, upper := 1429909877057442764888281215664128, M := 2 } = true := by
  decide +kernel

theorem row048_layer099_checked :
    coverLayerCheck row048.height row048.goods { lower := 1429909877057442764888281215664128, upper := 2859819754114885529776562431328256, M := 2 } = true := by
  decide +kernel

theorem row048_layer100_checked :
    coverLayerCheck row048.height row048.goods { lower := 2859819754114885529776562431328256, upper := 5719639508229771059553124862656512, M := 2 } = true := by
  decide +kernel

theorem row048_layer101_checked :
    coverLayerCheck row048.height row048.goods { lower := 5719639508229771059553124862656512, upper := 11439279016459542119106249725313024, M := 2 } = true := by
  decide +kernel

theorem row048_layer102_checked :
    coverLayerCheck row048.height row048.goods { lower := 11439279016459542119106249725313024, upper := 22878558032919084238212499450626048, M := 2 } = true := by
  decide +kernel

theorem row048_layer103_checked :
    coverLayerCheck row048.height row048.goods { lower := 22878558032919084238212499450626048, upper := 45757116065838168476424998901252096, M := 2 } = true := by
  decide +kernel

theorem row048_layer104_checked :
    coverLayerCheck row048.height row048.goods { lower := 45757116065838168476424998901252096, upper := 91514232131676336952849997802504192, M := 2 } = true := by
  decide +kernel

theorem row048_layer105_checked :
    coverLayerCheck row048.height row048.goods { lower := 91514232131676336952849997802504192, upper := 183028464263352673905699995605008384, M := 2 } = true := by
  decide +kernel

theorem row048_layer106_checked :
    coverLayerCheck row048.height row048.goods { lower := 183028464263352673905699995605008384, upper := 366056928526705347811399991210016768, M := 2 } = true := by
  decide +kernel

theorem row048_layer107_checked :
    coverLayerCheck row048.height row048.goods { lower := 366056928526705347811399991210016768, upper := 732113857053410695622799982420033536, M := 2 } = true := by
  decide +kernel

theorem row048_layer108_checked :
    coverLayerCheck row048.height row048.goods { lower := 732113857053410695622799982420033536, upper := 1464227714106821391245599964840067072, M := 2 } = true := by
  decide +kernel

theorem row048_layer109_checked :
    coverLayerCheck row048.height row048.goods { lower := 1464227714106821391245599964840067072, upper := 2928455428213642782491199929680134144, M := 2 } = true := by
  decide +kernel

theorem row048_layer110_checked :
    coverLayerCheck row048.height row048.goods { lower := 2928455428213642782491199929680134144, upper := 5856910856427285564982399859360268288, M := 2 } = true := by
  decide +kernel

theorem row048_layer111_checked :
    coverLayerCheck row048.height row048.goods { lower := 5856910856427285564982399859360268288, upper := 10000000000000000000000000000000000000, M := 2 } = true := by
  decide +kernel

theorem row048_layers_checked :
    row048.layers.all (coverLayerCheck row048.height row048.goods) = true := by
  change List.all [
    { lower := 2256, upper := 4512, M := 44 },
    { lower := 4512, upper := 9024, M := 43 },
    { lower := 9024, upper := 18048, M := 41 },
    { lower := 18048, upper := 36096, M := 40 },
    { lower := 36096, upper := 72192, M := 39 },
    { lower := 72192, upper := 144384, M := 37 },
    { lower := 144384, upper := 288768, M := 36 },
    { lower := 288768, upper := 577536, M := 35 },
    { lower := 577536, upper := 1155072, M := 34 },
    { lower := 1155072, upper := 2310144, M := 33 },
    { lower := 2310144, upper := 4620288, M := 32 },
    { lower := 4620288, upper := 9240576, M := 31 },
    { lower := 9240576, upper := 18481152, M := 30 },
    { lower := 18481152, upper := 36962304, M := 29 },
    { lower := 36962304, upper := 73924608, M := 28 },
    { lower := 73924608, upper := 147849216, M := 27 },
    { lower := 147849216, upper := 295698432, M := 26 },
    { lower := 295698432, upper := 591396864, M := 25 },
    { lower := 591396864, upper := 1182793728, M := 24 },
    { lower := 1182793728, upper := 2365587456, M := 24 },
    { lower := 2365587456, upper := 4731174912, M := 23 },
    { lower := 4731174912, upper := 9462349824, M := 22 },
    { lower := 9462349824, upper := 18924699648, M := 21 },
    { lower := 18924699648, upper := 37849399296, M := 21 },
    { lower := 37849399296, upper := 75698798592, M := 20 },
    { lower := 75698798592, upper := 151397597184, M := 19 },
    { lower := 151397597184, upper := 302795194368, M := 19 },
    { lower := 302795194368, upper := 605590388736, M := 18 },
    { lower := 605590388736, upper := 1211180777472, M := 18 },
    { lower := 1211180777472, upper := 2422361554944, M := 17 },
    { lower := 2422361554944, upper := 4844723109888, M := 17 },
    { lower := 4844723109888, upper := 9689446219776, M := 16 },
    { lower := 9689446219776, upper := 19378892439552, M := 15 },
    { lower := 19378892439552, upper := 38757784879104, M := 15 },
    { lower := 38757784879104, upper := 77515569758208, M := 15 },
    { lower := 77515569758208, upper := 155031139516416, M := 14 },
    { lower := 155031139516416, upper := 310062279032832, M := 14 },
    { lower := 310062279032832, upper := 620124558065664, M := 13 },
    { lower := 620124558065664, upper := 1240249116131328, M := 13 },
    { lower := 1240249116131328, upper := 2480498232262656, M := 12 },
    { lower := 2480498232262656, upper := 4960996464525312, M := 12 },
    { lower := 4960996464525312, upper := 9921992929050624, M := 12 },
    { lower := 9921992929050624, upper := 19843985858101248, M := 11 },
    { lower := 19843985858101248, upper := 39687971716202496, M := 11 },
    { lower := 39687971716202496, upper := 79375943432404992, M := 11 },
    { lower := 79375943432404992, upper := 158751886864809984, M := 10 },
    { lower := 158751886864809984, upper := 317503773729619968, M := 10 },
    { lower := 317503773729619968, upper := 635007547459239936, M := 10 },
    { lower := 635007547459239936, upper := 1270015094918479872, M := 9 },
    { lower := 1270015094918479872, upper := 2540030189836959744, M := 9 },
    { lower := 2540030189836959744, upper := 5080060379673919488, M := 9 },
    { lower := 5080060379673919488, upper := 10160120759347838976, M := 8 },
    { lower := 10160120759347838976, upper := 20320241518695677952, M := 8 },
    { lower := 20320241518695677952, upper := 40640483037391355904, M := 8 },
    { lower := 40640483037391355904, upper := 81280966074782711808, M := 8 },
    { lower := 81280966074782711808, upper := 162561932149565423616, M := 7 },
    { lower := 162561932149565423616, upper := 325123864299130847232, M := 7 },
    { lower := 325123864299130847232, upper := 650247728598261694464, M := 7 },
    { lower := 650247728598261694464, upper := 1300495457196523388928, M := 7 },
    { lower := 1300495457196523388928, upper := 2600990914393046777856, M := 7 },
    { lower := 2600990914393046777856, upper := 5201981828786093555712, M := 6 },
    { lower := 5201981828786093555712, upper := 10403963657572187111424, M := 6 },
    { lower := 10403963657572187111424, upper := 20807927315144374222848, M := 6 },
    { lower := 20807927315144374222848, upper := 41615854630288748445696, M := 6 },
    { lower := 41615854630288748445696, upper := 83231709260577496891392, M := 6 },
    { lower := 83231709260577496891392, upper := 166463418521154993782784, M := 5 },
    { lower := 166463418521154993782784, upper := 332926837042309987565568, M := 5 },
    { lower := 332926837042309987565568, upper := 665853674084619975131136, M := 5 },
    { lower := 665853674084619975131136, upper := 1331707348169239950262272, M := 5 },
    { lower := 1331707348169239950262272, upper := 2663414696338479900524544, M := 5 },
    { lower := 2663414696338479900524544, upper := 5326829392676959801049088, M := 5 },
    { lower := 5326829392676959801049088, upper := 10653658785353919602098176, M := 5 },
    { lower := 10653658785353919602098176, upper := 21307317570707839204196352, M := 4 },
    { lower := 21307317570707839204196352, upper := 42614635141415678408392704, M := 4 },
    { lower := 42614635141415678408392704, upper := 85229270282831356816785408, M := 4 },
    { lower := 85229270282831356816785408, upper := 170458540565662713633570816, M := 4 },
    { lower := 170458540565662713633570816, upper := 340917081131325427267141632, M := 4 },
    { lower := 340917081131325427267141632, upper := 681834162262650854534283264, M := 4 },
    { lower := 681834162262650854534283264, upper := 1363668324525301709068566528, M := 4 },
    { lower := 1363668324525301709068566528, upper := 2727336649050603418137133056, M := 4 },
    { lower := 2727336649050603418137133056, upper := 5454673298101206836274266112, M := 4 },
    { lower := 5454673298101206836274266112, upper := 10909346596202413672548532224, M := 3 },
    { lower := 10909346596202413672548532224, upper := 21818693192404827345097064448, M := 3 },
    { lower := 21818693192404827345097064448, upper := 43637386384809654690194128896, M := 3 },
    { lower := 43637386384809654690194128896, upper := 87274772769619309380388257792, M := 3 },
    { lower := 87274772769619309380388257792, upper := 174549545539238618760776515584, M := 3 },
    { lower := 174549545539238618760776515584, upper := 349099091078477237521553031168, M := 3 },
    { lower := 349099091078477237521553031168, upper := 698198182156954475043106062336, M := 3 },
    { lower := 698198182156954475043106062336, upper := 1396396364313908950086212124672, M := 3 },
    { lower := 1396396364313908950086212124672, upper := 2792792728627817900172424249344, M := 3 },
    { lower := 2792792728627817900172424249344, upper := 5585585457255635800344848498688, M := 3 },
    { lower := 5585585457255635800344848498688, upper := 11171170914511271600689696997376, M := 3 },
    { lower := 11171170914511271600689696997376, upper := 22342341829022543201379393994752, M := 3 },
    { lower := 22342341829022543201379393994752, upper := 44684683658045086402758787989504, M := 2 },
    { lower := 44684683658045086402758787989504, upper := 89369367316090172805517575979008, M := 2 },
    { lower := 89369367316090172805517575979008, upper := 178738734632180345611035151958016, M := 2 },
    { lower := 178738734632180345611035151958016, upper := 357477469264360691222070303916032, M := 2 },
    { lower := 357477469264360691222070303916032, upper := 714954938528721382444140607832064, M := 2 },
    { lower := 714954938528721382444140607832064, upper := 1429909877057442764888281215664128, M := 2 },
    { lower := 1429909877057442764888281215664128, upper := 2859819754114885529776562431328256, M := 2 },
    { lower := 2859819754114885529776562431328256, upper := 5719639508229771059553124862656512, M := 2 },
    { lower := 5719639508229771059553124862656512, upper := 11439279016459542119106249725313024, M := 2 },
    { lower := 11439279016459542119106249725313024, upper := 22878558032919084238212499450626048, M := 2 },
    { lower := 22878558032919084238212499450626048, upper := 45757116065838168476424998901252096, M := 2 },
    { lower := 45757116065838168476424998901252096, upper := 91514232131676336952849997802504192, M := 2 },
    { lower := 91514232131676336952849997802504192, upper := 183028464263352673905699995605008384, M := 2 },
    { lower := 183028464263352673905699995605008384, upper := 366056928526705347811399991210016768, M := 2 },
    { lower := 366056928526705347811399991210016768, upper := 732113857053410695622799982420033536, M := 2 },
    { lower := 732113857053410695622799982420033536, upper := 1464227714106821391245599964840067072, M := 2 },
    { lower := 1464227714106821391245599964840067072, upper := 2928455428213642782491199929680134144, M := 2 },
    { lower := 2928455428213642782491199929680134144, upper := 5856910856427285564982399859360268288, M := 2 },
    { lower := 5856910856427285564982399859360268288, upper := 10000000000000000000000000000000000000, M := 2 }
  ] (coverLayerCheck row048.height row048.goods) = true
  simp only [List.all_cons, List.all_nil,
    row048_layer000_checked,
    row048_layer001_checked,
    row048_layer002_checked,
    row048_layer003_checked,
    row048_layer004_checked,
    row048_layer005_checked,
    row048_layer006_checked,
    row048_layer007_checked,
    row048_layer008_checked,
    row048_layer009_checked,
    row048_layer010_checked,
    row048_layer011_checked,
    row048_layer012_checked,
    row048_layer013_checked,
    row048_layer014_checked,
    row048_layer015_checked,
    row048_layer016_checked,
    row048_layer017_checked,
    row048_layer018_checked,
    row048_layer019_checked,
    row048_layer020_checked,
    row048_layer021_checked,
    row048_layer022_checked,
    row048_layer023_checked,
    row048_layer024_checked,
    row048_layer025_checked,
    row048_layer026_checked,
    row048_layer027_checked,
    row048_layer028_checked,
    row048_layer029_checked,
    row048_layer030_checked,
    row048_layer031_checked,
    row048_layer032_checked,
    row048_layer033_checked,
    row048_layer034_checked,
    row048_layer035_checked,
    row048_layer036_checked,
    row048_layer037_checked,
    row048_layer038_checked,
    row048_layer039_checked,
    row048_layer040_checked,
    row048_layer041_checked,
    row048_layer042_checked,
    row048_layer043_checked,
    row048_layer044_checked,
    row048_layer045_checked,
    row048_layer046_checked,
    row048_layer047_checked,
    row048_layer048_checked,
    row048_layer049_checked,
    row048_layer050_checked,
    row048_layer051_checked,
    row048_layer052_checked,
    row048_layer053_checked,
    row048_layer054_checked,
    row048_layer055_checked,
    row048_layer056_checked,
    row048_layer057_checked,
    row048_layer058_checked,
    row048_layer059_checked,
    row048_layer060_checked,
    row048_layer061_checked,
    row048_layer062_checked,
    row048_layer063_checked,
    row048_layer064_checked,
    row048_layer065_checked,
    row048_layer066_checked,
    row048_layer067_checked,
    row048_layer068_checked,
    row048_layer069_checked,
    row048_layer070_checked,
    row048_layer071_checked,
    row048_layer072_checked,
    row048_layer073_checked,
    row048_layer074_checked,
    row048_layer075_checked,
    row048_layer076_checked,
    row048_layer077_checked,
    row048_layer078_checked,
    row048_layer079_checked,
    row048_layer080_checked,
    row048_layer081_checked,
    row048_layer082_checked,
    row048_layer083_checked,
    row048_layer084_checked,
    row048_layer085_checked,
    row048_layer086_checked,
    row048_layer087_checked,
    row048_layer088_checked,
    row048_layer089_checked,
    row048_layer090_checked,
    row048_layer091_checked,
    row048_layer092_checked,
    row048_layer093_checked,
    row048_layer094_checked,
    row048_layer095_checked,
    row048_layer096_checked,
    row048_layer097_checked,
    row048_layer098_checked,
    row048_layer099_checked,
    row048_layer100_checked,
    row048_layer101_checked,
    row048_layer102_checked,
    row048_layer103_checked,
    row048_layer104_checked,
    row048_layer105_checked,
    row048_layer106_checked,
    row048_layer107_checked,
    row048_layer108_checked,
    row048_layer109_checked,
    row048_layer110_checked,
    row048_layer111_checked,
    Bool.true_and]

theorem row048_checked : finiteCoverRowCheck row048 = true := by
  simp only [finiteCoverRowCheck, row048_registered, row048_goods_checked,
    row048_small_checked, row048_layerCover_checked, row048_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row048_checked

end B699LowIndex
