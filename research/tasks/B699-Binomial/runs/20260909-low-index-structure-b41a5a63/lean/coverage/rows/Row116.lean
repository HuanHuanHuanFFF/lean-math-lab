import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row116_height : HeightCertificateDatum := { i := 116, r := 38, s := 81, n0Power10 := 10 }

def row116_goods : List GoodSegment := [
  { lower := 234, upper := 348, witness := RowWitness.topPrime 233 },
  { lower := 349, upper := 464, witness := RowWitness.topPrime 349 },
  { lower := 465, upper := 578, witness := RowWitness.topPrime 463 },
  { lower := 579, upper := 692, witness := RowWitness.topPrime 577 },
  { lower := 693, upper := 806, witness := RowWitness.topPrime 691 },
  { lower := 807, upper := 912, witness := RowWitness.topPrime 797 },
  { lower := 913, upper := 1026, witness := RowWitness.topPrime 911 },
  { lower := 1027, upper := 1136, witness := RowWitness.topPrime 1021 },
  { lower := 1137, upper := 1244, witness := RowWitness.topPrime 1129 },
  { lower := 1245, upper := 1352, witness := RowWitness.topPrime 1237 },
  { lower := 1353, upper := 1442, witness := RowWitness.topPrime 1327 },
  { lower := 1443, upper := 1554, witness := RowWitness.topPrime 1439 },
  { lower := 1555, upper := 1668, witness := RowWitness.topPrime 1553 },
  { lower := 1669, upper := 1784, witness := RowWitness.topPrime 1669 },
  { lower := 1785, upper := 1898, witness := RowWitness.topPrime 1783 },
  { lower := 1899, upper := 2004, witness := RowWitness.topPrime 1889 },
  { lower := 2005, upper := 2118, witness := RowWitness.topPrime 2003 },
  { lower := 2119, upper := 2228, witness := RowWitness.topPrime 2113 },
  { lower := 2229, upper := 2336, witness := RowWitness.topPrime 2221 },
  { lower := 2337, upper := 2448, witness := RowWitness.topPrime 2333 },
  { lower := 2449, upper := 2562, witness := RowWitness.topPrime 2447 },
  { lower := 2563, upper := 2672, witness := RowWitness.topPrime 2557 },
  { lower := 2673, upper := 2786, witness := RowWitness.topPrime 2671 },
  { lower := 2787, upper := 2892, witness := RowWitness.topPrime 2777 },
  { lower := 2893, upper := 3002, witness := RowWitness.topPrime 2887 },
  { lower := 3003, upper := 3116, witness := RowWitness.topPrime 3001 },
  { lower := 3117, upper := 3224, witness := RowWitness.topPrime 3109 },
  { lower := 3225, upper := 3336, witness := RowWitness.topPrime 3221 },
  { lower := 3337, upper := 3446, witness := RowWitness.topPrime 3331 },
  { lower := 3447, upper := 3548, witness := RowWitness.topPrime 3433 },
  { lower := 3549, upper := 3662, witness := RowWitness.topPrime 3547 },
  { lower := 3663, upper := 3774, witness := RowWitness.topPrime 3659 },
  { lower := 3775, upper := 3884, witness := RowWitness.topPrime 3769 },
  { lower := 3885, upper := 3996, witness := RowWitness.topPrime 3881 },
  { lower := 3997, upper := 4104, witness := RowWitness.topPrime 3989 },
  { lower := 4105, upper := 4214, witness := RowWitness.topPrime 4099 },
  { lower := 4215, upper := 4326, witness := RowWitness.topPrime 4211 },
  { lower := 4327, upper := 4442, witness := RowWitness.topPrime 4327 },
  { lower := 4443, upper := 4556, witness := RowWitness.topPrime 4441 },
  { lower := 4557, upper := 4664, witness := RowWitness.topPrime 4549 },
  { lower := 4665, upper := 4778, witness := RowWitness.topPrime 4663 },
  { lower := 4779, upper := 4874, witness := RowWitness.topPrime 4759 },
  { lower := 4875, upper := 4986, witness := RowWitness.topPrime 4871 },
  { lower := 4987, upper := 5102, witness := RowWitness.topPrime 4987 },
  { lower := 5103, upper := 5216, witness := RowWitness.topPrime 5101 },
  { lower := 5217, upper := 5324, witness := RowWitness.topPrime 5209 },
  { lower := 5325, upper := 5438, witness := RowWitness.topPrime 5323 },
  { lower := 5439, upper := 5552, witness := RowWitness.topPrime 5437 },
  { lower := 5553, upper := 5646, witness := RowWitness.topPrime 5531 },
  { lower := 5647, upper := 5762, witness := RowWitness.topPrime 5647 },
  { lower := 5763, upper := 5864, witness := RowWitness.topPrime 5749 },
  { lower := 5865, upper := 5976, witness := RowWitness.topPrime 5861 },
  { lower := 5977, upper := 6068, witness := RowWitness.topPrime 5953 },
  { lower := 6069, upper := 6182, witness := RowWitness.topPrime 6067 },
  { lower := 6183, upper := 6288, witness := RowWitness.topPrime 6173 },
  { lower := 6289, upper := 6402, witness := RowWitness.topPrime 6287 },
  { lower := 6403, upper := 6512, witness := RowWitness.topPrime 6397 },
  { lower := 6513, upper := 6606, witness := RowWitness.topPrime 6491 },
  { lower := 6607, upper := 6722, witness := RowWitness.topPrime 6607 },
  { lower := 6723, upper := 6834, witness := RowWitness.topPrime 6719 },
  { lower := 6835, upper := 6948, witness := RowWitness.topPrime 6833 },
  { lower := 6949, upper := 7064, witness := RowWitness.topPrime 6949 },
  { lower := 7065, upper := 7172, witness := RowWitness.topPrime 7057 },
  { lower := 7173, upper := 7274, witness := RowWitness.topPrime 7159 },
  { lower := 7275, upper := 7368, witness := RowWitness.topPrime 7253 },
  { lower := 7369, upper := 7484, witness := RowWitness.topPrime 7369 },
  { lower := 7485, upper := 7596, witness := RowWitness.topPrime 7481 },
  { lower := 7597, upper := 7706, witness := RowWitness.topPrime 7591 },
  { lower := 7707, upper := 7818, witness := RowWitness.topPrime 7703 },
  { lower := 7819, upper := 7932, witness := RowWitness.topPrime 7817 },
  { lower := 7933, upper := 8048, witness := RowWitness.topPrime 7933 },
  { lower := 8049, upper := 8154, witness := RowWitness.topPrime 8039 },
  { lower := 8155, upper := 8262, witness := RowWitness.topPrime 8147 },
  { lower := 8263, upper := 8378, witness := RowWitness.topPrime 8263 },
  { lower := 8379, upper := 8492, witness := RowWitness.topPrime 8377 },
  { lower := 8493, upper := 8582, witness := RowWitness.topPrime 8467 },
  { lower := 8583, upper := 8696, witness := RowWitness.topPrime 8581 },
  { lower := 8697, upper := 8808, witness := RowWitness.topPrime 8693 },
  { lower := 8809, upper := 8922, witness := RowWitness.topPrime 8807 },
  { lower := 8923, upper := 9038, witness := RowWitness.topPrime 8923 },
  { lower := 9039, upper := 9144, witness := RowWitness.topPrime 9029 },
  { lower := 9145, upper := 9252, witness := RowWitness.topPrime 9137 },
  { lower := 9253, upper := 9356, witness := RowWitness.topPrime 9241 },
  { lower := 9357, upper := 9464, witness := RowWitness.topPrime 9349 },
  { lower := 9465, upper := 9578, witness := RowWitness.topPrime 9463 },
  { lower := 9579, upper := 9666, witness := RowWitness.topPrime 9551 },
  { lower := 9667, upper := 9776, witness := RowWitness.topPrime 9661 },
  { lower := 9777, upper := 9884, witness := RowWitness.topPrime 9769 },
  { lower := 9885, upper := 9998, witness := RowWitness.topPrime 9883 },
  { lower := 9999, upper := 10088, witness := RowWitness.topPrime 9973 },
  { lower := 10089, upper := 10194, witness := RowWitness.topPrime 10079 },
  { lower := 10195, upper := 10308, witness := RowWitness.topPrime 10193 },
  { lower := 10309, upper := 10418, witness := RowWitness.topPrime 10303 },
  { lower := 10419, upper := 10514, witness := RowWitness.topPrime 10399 },
  { lower := 10515, upper := 10628, witness := RowWitness.topPrime 10513 },
  { lower := 10629, upper := 10742, witness := RowWitness.topPrime 10627 },
  { lower := 10743, upper := 10854, witness := RowWitness.topPrime 10739 },
  { lower := 10855, upper := 10968, witness := RowWitness.topPrime 10853 },
  { lower := 10969, upper := 11072, witness := RowWitness.topPrime 10957 },
  { lower := 11073, upper := 11186, witness := RowWitness.topPrime 11071 },
  { lower := 11187, upper := 11292, witness := RowWitness.topPrime 11177 },
  { lower := 11293, upper := 11402, witness := RowWitness.topPrime 11287 },
  { lower := 11403, upper := 11514, witness := RowWitness.topPrime 11399 },
  { lower := 11515, upper := 11618, witness := RowWitness.topPrime 11503 },
  { lower := 11619, upper := 11732, witness := RowWitness.topPrime 11617 },
  { lower := 11733, upper := 11846, witness := RowWitness.topPrime 11731 },
  { lower := 11847, upper := 11954, witness := RowWitness.topPrime 11839 },
  { lower := 11955, upper := 12068, witness := RowWitness.topPrime 11953 },
  { lower := 12069, upper := 12164, witness := RowWitness.topPrime 12049 },
  { lower := 12165, upper := 12278, witness := RowWitness.topPrime 12163 },
  { lower := 12279, upper := 12392, witness := RowWitness.topPrime 12277 },
  { lower := 12393, upper := 12506, witness := RowWitness.topPrime 12391 },
  { lower := 12507, upper := 12618, witness := RowWitness.topPrime 12503 },
  { lower := 12619, upper := 12734, witness := RowWitness.topPrime 12619 },
  { lower := 12735, upper := 12836, witness := RowWitness.topPrime 12721 },
  { lower := 12837, upper := 12944, witness := RowWitness.topPrime 12829 },
  { lower := 12945, upper := 13056, witness := RowWitness.topPrime 12941 },
  { lower := 13057, upper := 13164, witness := RowWitness.topPrime 13049 },
  { lower := 13165, upper := 13278, witness := RowWitness.topPrime 13163 },
  { lower := 13279, upper := 13369, witness := RowWitness.topPrime 13267 },
  { lower := 13454, upper := 13566, witness := RowWitness.topPrime 13451 },
  { lower := 13567, upper := 13569, witness := RowWitness.topPrime 13567 },
  { lower := 13718, upper := 13826, witness := RowWitness.topPrime 13711 },
  { lower := 13827, upper := 13893, witness := RowWitness.topPrime 13807 },
  { lower := 13924, upper := 13966, witness := RowWitness.topPrime 13921 },
  { lower := 14375, upper := 14398, witness := RowWitness.topPrime 14369 },
  { lower := 14406, upper := 14516, witness := RowWitness.topPrime 14401 },
  { lower := 14517, upper := 14521, witness := RowWitness.topPrime 14503 },
  { lower := 14641, upper := 14695, witness := RowWitness.topPrime 14639 },
  { lower := 14739, upper := 14756, witness := RowWitness.topPrime 14737 },
  { lower := 14792, upper := 14854, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14907, witness := RowWitness.topPrime 14879 },
  { lower := 15059, upper := 15115, witness := RowWitness.topPrime 15053 },
  { lower := 15123, upper := 15236, witness := RowWitness.topPrime 15121 },
  { lower := 15237, upper := 15238, witness := RowWitness.topPrime 15233 },
  { lower := 15376, upper := 15488, witness := RowWitness.topPrime 15373 },
  { lower := 15489, upper := 15494, witness := RowWitness.topPrime 15473 },
  { lower := 15987, upper := 16088, witness := RowWitness.topPrime 15973 },
  { lower := 16089, upper := 16102, witness := RowWitness.topPrime 16087 },
  { lower := 16337, upper := 16365, witness := RowWitness.topPrime 16333 },
  { lower := 16384, upper := 16496, witness := RowWitness.topPrime 16381 },
  { lower := 16497, upper := 16499, witness := RowWitness.topPrime 16493 },
  { lower := 16807, upper := 16902, witness := RowWitness.topPrime 16787 },
  { lower := 16903, upper := 16969, witness := RowWitness.topPrime 16903 },
  { lower := 17303, upper := 17414, witness := RowWitness.topPrime 17299 },
  { lower := 17415, upper := 17418, witness := RowWitness.topPrime 17401 },
  { lower := 17496, upper := 17520, witness := RowWitness.topPrime 17491 },
  { lower := 17576, upper := 17611, witness := RowWitness.topPrime 17573 },
  { lower := 17672, upper := 17691, witness := RowWitness.topPrime 17669 },
  { lower := 18259, upper := 18340, witness := RowWitness.topPrime 18257 },
  { lower := 18491, upper := 18596, witness := RowWitness.topPrime 18481 },
  { lower := 18597, upper := 18606, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18720, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18834, witness := RowWitness.topPrime 18719 },
  { lower := 18835, upper := 18865, witness := RowWitness.topPrime 18803 },
  { lower := 19208, upper := 19322, witness := RowWitness.topPrime 19207 },
  { lower := 19323, upper := 19323, witness := RowWitness.topPrime 19319 },
  { lower := 19663, upper := 19776, witness := RowWitness.topPrime 19661 },
  { lower := 19777, upper := 19798, witness := RowWitness.topPrime 19777 },
  { lower := 19881, upper := 19888, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 19996, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20276, witness := RowWitness.topPrime 20161 },
  { lower := 20277, upper := 20287, witness := RowWitness.topPrime 20269 },
  { lower := 20402, upper := 20454, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20517, witness := RowWitness.topPrime 20479 },
  { lower := 20535, upper := 20648, witness := RowWitness.topPrime 20533 },
  { lower := 20649, upper := 20650, witness := RowWitness.topPrime 20641 },
  { lower := 20667, upper := 20692, witness := RowWitness.topPrime 20663 },
  { lower := 21218, upper := 21257, witness := RowWitness.topPrime 21211 },
  { lower := 21296, upper := 21398, witness := RowWitness.topPrime 21283 },
  { lower := 21399, upper := 21411, witness := RowWitness.topPrime 21397 },
  { lower := 21870, upper := 21978, witness := RowWitness.topPrime 21863 },
  { lower := 21979, upper := 22019, witness := RowWitness.topPrime 21977 },
  { lower := 22103, upper := 22208, witness := RowWitness.topPrime 22093 },
  { lower := 22209, upper := 22218, witness := RowWitness.topPrime 22193 },
  { lower := 22472, upper := 22560, witness := RowWitness.topPrime 22469 },
  { lower := 23763, upper := 23876, witness := RowWitness.topPrime 23761 },
  { lower := 23877, upper := 23877, witness := RowWitness.topPrime 23873 },
  { lower := 24010, upper := 24122, witness := RowWitness.topPrime 24007 },
  { lower := 24123, upper := 24152, witness := RowWitness.topPrime 24121 },
  { lower := 24167, upper := 24172, witness := RowWitness.topPrime 24151 },
  { lower := 24334, upper := 24444, witness := RowWitness.topPrime 24329 },
  { lower := 24445, upper := 24449, witness := RowWitness.topPrime 24443 },
  { lower := 24576, upper := 24686, witness := RowWitness.topPrime 24571 },
  { lower := 24687, upper := 24691, witness := RowWitness.topPrime 24683 },
  { lower := 24986, upper := 25094, witness := RowWitness.topPrime 24979 },
  { lower := 25095, upper := 25101, witness := RowWitness.topPrime 25087 },
  { lower := 25215, upper := 25304, witness := RowWitness.topPrime 25189 },
  { lower := 25305, upper := 25396, witness := RowWitness.topPrime 25303 },
  { lower := 25947, upper := 26001, witness := RowWitness.topPrime 25943 },
  { lower := 26011, upper := 26118, witness := RowWitness.topPrime 26003 },
  { lower := 26119, upper := 26126, witness := RowWitness.topPrime 26119 },
  { lower := 26411, upper := 26479, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26526, witness := RowWitness.topPrime 26501 },
  { lower := 26620, upper := 26623, witness := RowWitness.topPrime 26597 },
  { lower := 26645, upper := 26735, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 27011, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27495, witness := RowWitness.topPrime 27431 },
  { lower := 27848, upper := 27850, witness := RowWitness.topPrime 27847 },
  { lower := 27951, upper := 27963, witness := RowWitness.topPrime 27947 },
  { lower := 28125, upper := 28205, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28240, witness := RowWitness.topPrime 28219 },
  { lower := 28577, upper := 28676, witness := RowWitness.topPrime 28573 },
  { lower := 28749, upper := 28844, witness := RowWitness.topPrime 28729 },
  { lower := 28845, upper := 28864, witness := RowWitness.topPrime 28843 },
  { lower := 29584, upper := 29593, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29883, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30361, witness := RowWitness.topPrime 30253 },
  { lower := 30618, upper := 30708, witness := RowWitness.topPrime 30593 },
  { lower := 30709, upper := 30718, witness := RowWitness.topPrime 30707 },
  { lower := 30926, upper := 31014, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31308, witness := RowWitness.topPrime 31193 },
  { lower := 31309, upper := 31365, witness := RowWitness.topPrime 31307 },
  { lower := 31423, upper := 31512, witness := RowWitness.topPrime 31397 },
  { lower := 31513, upper := 31538, witness := RowWitness.topPrime 31513 },
  { lower := 31939, upper := 31942, witness := RowWitness.topPrime 31907 },
  { lower := 31974, upper := 32054, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32883, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33734, witness := RowWitness.topPrime 33619 },
  { lower := 33735, upper := 33735, witness := RowWitness.topPrime 33721 },
  { lower := 34347, upper := 34452, witness := RowWitness.topPrime 34337 },
  { lower := 34453, upper := 34506, witness := RowWitness.topPrime 34439 },
  { lower := 35152, upper := 35246, witness := RowWitness.topPrime 35149 },
  { lower := 35301, upper := 35406, witness := RowWitness.topPrime 35291 },
  { lower := 35407, upper := 35416, witness := RowWitness.topPrime 35407 },
  { lower := 36015, upper := 36027, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36612, witness := RowWitness.topPrime 36497 },
  { lower := 36613, upper := 36616, witness := RowWitness.topPrime 36607 },
  { lower := 36982, upper := 37094, witness := RowWitness.topPrime 36979 },
  { lower := 37095, upper := 37095, witness := RowWitness.topPrime 37087 },
  { lower := 37210, upper := 37294, witness := RowWitness.topPrime 37201 },
  { lower := 37303, upper := 37325, witness := RowWitness.topPrime 37277 },
  { lower := 37349, upper := 37418, witness := RowWitness.topPrime 37339 },
  { lower := 37446, upper := 37464, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37608, witness := RowWitness.topPrime 37493 },
  { lower := 37609, upper := 37615, witness := RowWitness.topPrime 37607 },
  { lower := 37636, upper := 37668, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38406, witness := RowWitness.topPrime 38303 },
  { lower := 38416, upper := 38422, witness := RowWitness.topPrime 38393 },
  { lower := 39326, upper := 39438, witness := RowWitness.topPrime 39323 },
  { lower := 39439, upper := 39441, witness := RowWitness.topPrime 39439 },
  { lower := 39605, upper := 39661, witness := RowWitness.topPrime 39581 },
  { lower := 40401, upper := 40443, witness := RowWitness.topPrime 40387 },
  { lower := 40678, upper := 40740, witness := RowWitness.topPrime 40639 },
  { lower := 40817, upper := 40919, witness := RowWitness.topPrime 40813 },
  { lower := 40931, upper := 40932, witness := RowWitness.topPrime 40927 },
  { lower := 40960, upper := 41046, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41858, witness := RowWitness.topPrime 41771 },
  { lower := 43740, upper := 43836, witness := RowWitness.topPrime 43721 },
  { lower := 43837, upper := 43855, witness := RowWitness.topPrime 43801 },
  { lower := 43940, upper := 44038, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44295, witness := RowWitness.topPrime 44207 },
  { lower := 44944, upper := 45005, witness := RowWitness.topPrime 44939 },
  { lower := 47526, upper := 47636, witness := RowWitness.topPrime 47521 },
  { lower := 47637, upper := 47639, witness := RowWitness.topPrime 47629 },
  { lower := 48013, upper := 48096, witness := RowWitness.topPrime 47981 },
  { lower := 48097, upper := 48135, witness := RowWitness.topPrime 48091 },
  { lower := 48223, upper := 48229, witness := RowWitness.topPrime 48221 },
  { lower := 48334, upper := 48338, witness := RowWitness.topPrime 48313 },
  { lower := 48373, upper := 48449, witness := RowWitness.topPrime 48371 },
  { lower := 48668, upper := 48713, witness := RowWitness.topPrime 48661 },
  { lower := 48734, upper := 48783, witness := RowWitness.topPrime 48733 },
  { lower := 49152, upper := 49245, witness := RowWitness.topPrime 49139 },
  { lower := 50000, upper := 50043, witness := RowWitness.topPrime 49999 },
  { lower := 50421, upper := 50525, witness := RowWitness.topPrime 50417 },
  { lower := 50653, upper := 50677, witness := RowWitness.topPrime 50651 },
  { lower := 51076, upper := 51120, witness := RowWitness.topPrime 51071 },
  { lower := 53125, upper := 53160, witness := RowWitness.topPrime 53117 },
  { lower := 55451, upper := 55556, witness := RowWitness.topPrime 55441 },
  { lower := 55557, upper := 55562, witness := RowWitness.topPrime 55547 },
  { lower := 56250, upper := 56284, witness := RowWitness.topPrime 56249 },
  { lower := 58619, upper := 58679, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59071, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59651, witness := RowWitness.topPrime 59581 },
  { lower := 62500, upper := 62525, witness := RowWitness.topPrime 62497 },
  { lower := 63368, upper := 63372, witness := RowWitness.topPrime 63367 },
  { lower := 63869, upper := 63978, witness := RowWitness.topPrime 63863 },
  { lower := 63979, upper := 63984, witness := RowWitness.topPrime 63977 },
  { lower := 65536, upper := 65636, witness := RowWitness.topPrime 65521 },
  { lower := 65637, upper := 65651, witness := RowWitness.topPrime 65633 },
  { lower := 67335, upper := 67343, witness := RowWitness.topPrime 67307 },
  { lower := 68651, upper := 68754, witness := RowWitness.topPrime 68639 },
  { lower := 68755, upper := 68766, witness := RowWitness.topPrime 68749 },
  { lower := 68782, upper := 68809, witness := RowWitness.topPrime 68777 },
  { lower := 68890, upper := 68897, witness := RowWitness.topPrime 68881 },
  { lower := 68921, upper := 69005, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71401, witness := RowWitness.topPrime 71287 },
  { lower := 85264, upper := 85284, witness := RowWitness.topPrime 85259 },
  { lower := 85293, upper := 85374, witness := RowWitness.topPrime 85259 },
  { lower := 85375, upper := 85379, witness := RowWitness.topPrime 85369 },
  { lower := 85697, upper := 85798, witness := RowWitness.topPrime 85691 },
  { lower := 89383, upper := 89488, witness := RowWitness.topPrime 89381 },
  { lower := 91854, upper := 91924, witness := RowWitness.topPrime 91841 },
  { lower := 95052, upper := 95142, witness := RowWitness.topPrime 95027 },
  { lower := 95143, upper := 95163, witness := RowWitness.topPrime 95143 },
  { lower := 96026, upper := 96037, witness := RowWitness.topPrime 96017 },
  { lower := 98415, upper := 98419, witness := RowWitness.topPrime 98411 },
  { lower := 102973, upper := 103000, witness := RowWitness.topPrime 102967 },
  { lower := 103041, upper := 103088, witness := RowWitness.topPrime 103007 },
  { lower := 106097, upper := 106202, witness := RowWitness.topPrime 106087 },
  { lower := 106203, upper := 106205, witness := RowWitness.topPrime 106189 },
  { lower := 118815, upper := 118916, witness := RowWitness.topPrime 118801 },
  { lower := 118917, upper := 118925, witness := RowWitness.topPrime 118913 },
  { lower := 122412, upper := 122432, witness := RowWitness.topPrime 122401 },
  { lower := 131769, upper := 131841, witness := RowWitness.topPrime 131759 },
  { lower := 137842, upper := 137896, witness := RowWitness.topPrime 137831 },
  { lower := 137917, upper := 137957, witness := RowWitness.topPrime 137911 },
  { lower := 142814, upper := 142920, witness := RowWitness.topPrime 142811 },
  { lower := 148877, upper := 148952, witness := RowWitness.topPrime 148873 },
  { lower := 148955, upper := 148992, witness := RowWitness.topPrime 148949 },
  { lower := 178766, upper := 178861, witness := RowWitness.topPrime 178757 }
]

def row116_layers : List CoverLayer := [
  { lower := 13340, upper := 26680, M := 27 },
  { lower := 26680, upper := 53360, M := 22 },
  { lower := 53360, upper := 106720, M := 18 },
  { lower := 106720, upper := 213440, M := 15 },
  { lower := 213440, upper := 426880, M := 12 },
  { lower := 426880, upper := 853760, M := 10 },
  { lower := 853760, upper := 1707520, M := 9 },
  { lower := 1707520, upper := 3415040, M := 7 },
  { lower := 3415040, upper := 6830080, M := 6 },
  { lower := 6830080, upper := 13660160, M := 5 },
  { lower := 13660160, upper := 27320320, M := 4 },
  { lower := 27320320, upper := 54640640, M := 4 },
  { lower := 54640640, upper := 109281280, M := 3 },
  { lower := 109281280, upper := 218562560, M := 3 },
  { lower := 218562560, upper := 437125120, M := 2 },
  { lower := 437125120, upper := 874250240, M := 2 },
  { lower := 874250240, upper := 1748500480, M := 2 },
  { lower := 1748500480, upper := 3497000960, M := 1 },
  { lower := 3497000960, upper := 6994001920, M := 1 },
  { lower := 6994001920, upper := 10000000000, M := 1 }
]

def row116 : FiniteCoverRow := {
  height := row116_height,
  goods := row116_goods,
  layers := row116_layers
}

theorem row116_registered :
    decide (row116.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row116_goods_checked :
    row116.goods.all (goodSegmentCheck row116.height.i row116.height.r row116.height.s) = true := by
  decide +kernel

theorem row116_small_checked :
    coverCheck (2 * row116.height.i + 2) (row116.height.i * (row116.height.i - 1) - 1)
      (row116.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row116_layerCover_checked :
    coverCheck (row116.height.i * (row116.height.i - 1)) (row116.height.n0 - 1)
      (row116.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row116_layer000_checked :
    coverLayerCheck row116.height row116.goods { lower := 13340, upper := 26680, M := 27 } = true := by
  decide +kernel

theorem row116_layer001_checked :
    coverLayerCheck row116.height row116.goods { lower := 26680, upper := 53360, M := 22 } = true := by
  decide +kernel

theorem row116_layer002_checked :
    coverLayerCheck row116.height row116.goods { lower := 53360, upper := 106720, M := 18 } = true := by
  decide +kernel

theorem row116_layer003_checked :
    coverLayerCheck row116.height row116.goods { lower := 106720, upper := 213440, M := 15 } = true := by
  decide +kernel

theorem row116_layer004_checked :
    coverLayerCheck row116.height row116.goods { lower := 213440, upper := 426880, M := 12 } = true := by
  decide +kernel

theorem row116_layer005_checked :
    coverLayerCheck row116.height row116.goods { lower := 426880, upper := 853760, M := 10 } = true := by
  decide +kernel

theorem row116_layer006_checked :
    coverLayerCheck row116.height row116.goods { lower := 853760, upper := 1707520, M := 9 } = true := by
  decide +kernel

theorem row116_layer007_checked :
    coverLayerCheck row116.height row116.goods { lower := 1707520, upper := 3415040, M := 7 } = true := by
  decide +kernel

theorem row116_layer008_checked :
    coverLayerCheck row116.height row116.goods { lower := 3415040, upper := 6830080, M := 6 } = true := by
  decide +kernel

theorem row116_layer009_checked :
    coverLayerCheck row116.height row116.goods { lower := 6830080, upper := 13660160, M := 5 } = true := by
  decide +kernel

theorem row116_layer010_checked :
    coverLayerCheck row116.height row116.goods { lower := 13660160, upper := 27320320, M := 4 } = true := by
  decide +kernel

theorem row116_layer011_checked :
    coverLayerCheck row116.height row116.goods { lower := 27320320, upper := 54640640, M := 4 } = true := by
  decide +kernel

theorem row116_layer012_checked :
    coverLayerCheck row116.height row116.goods { lower := 54640640, upper := 109281280, M := 3 } = true := by
  decide +kernel

theorem row116_layer013_checked :
    coverLayerCheck row116.height row116.goods { lower := 109281280, upper := 218562560, M := 3 } = true := by
  decide +kernel

theorem row116_layer014_checked :
    coverLayerCheck row116.height row116.goods { lower := 218562560, upper := 437125120, M := 2 } = true := by
  decide +kernel

theorem row116_layer015_checked :
    coverLayerCheck row116.height row116.goods { lower := 437125120, upper := 874250240, M := 2 } = true := by
  decide +kernel

theorem row116_layer016_checked :
    coverLayerCheck row116.height row116.goods { lower := 874250240, upper := 1748500480, M := 2 } = true := by
  decide +kernel

theorem row116_layer017_checked :
    coverLayerCheck row116.height row116.goods { lower := 1748500480, upper := 3497000960, M := 1 } = true := by
  decide +kernel

theorem row116_layer018_checked :
    coverLayerCheck row116.height row116.goods { lower := 3497000960, upper := 6994001920, M := 1 } = true := by
  decide +kernel

theorem row116_layer019_checked :
    coverLayerCheck row116.height row116.goods { lower := 6994001920, upper := 10000000000, M := 1 } = true := by
  decide +kernel

theorem row116_layers_checked :
    row116.layers.all (coverLayerCheck row116.height row116.goods) = true := by
  change List.all [
    { lower := 13340, upper := 26680, M := 27 },
    { lower := 26680, upper := 53360, M := 22 },
    { lower := 53360, upper := 106720, M := 18 },
    { lower := 106720, upper := 213440, M := 15 },
    { lower := 213440, upper := 426880, M := 12 },
    { lower := 426880, upper := 853760, M := 10 },
    { lower := 853760, upper := 1707520, M := 9 },
    { lower := 1707520, upper := 3415040, M := 7 },
    { lower := 3415040, upper := 6830080, M := 6 },
    { lower := 6830080, upper := 13660160, M := 5 },
    { lower := 13660160, upper := 27320320, M := 4 },
    { lower := 27320320, upper := 54640640, M := 4 },
    { lower := 54640640, upper := 109281280, M := 3 },
    { lower := 109281280, upper := 218562560, M := 3 },
    { lower := 218562560, upper := 437125120, M := 2 },
    { lower := 437125120, upper := 874250240, M := 2 },
    { lower := 874250240, upper := 1748500480, M := 2 },
    { lower := 1748500480, upper := 3497000960, M := 1 },
    { lower := 3497000960, upper := 6994001920, M := 1 },
    { lower := 6994001920, upper := 10000000000, M := 1 }
  ] (coverLayerCheck row116.height row116.goods) = true
  simp only [List.all_cons, List.all_nil,
    row116_layer000_checked,
    row116_layer001_checked,
    row116_layer002_checked,
    row116_layer003_checked,
    row116_layer004_checked,
    row116_layer005_checked,
    row116_layer006_checked,
    row116_layer007_checked,
    row116_layer008_checked,
    row116_layer009_checked,
    row116_layer010_checked,
    row116_layer011_checked,
    row116_layer012_checked,
    row116_layer013_checked,
    row116_layer014_checked,
    row116_layer015_checked,
    row116_layer016_checked,
    row116_layer017_checked,
    row116_layer018_checked,
    row116_layer019_checked,
    Bool.true_and]

theorem row116_checked : finiteCoverRowCheck row116 = true := by
  simp only [finiteCoverRowCheck, row116_registered, row116_goods_checked,
    row116_small_checked, row116_layerCover_checked, row116_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row116_checked

end B699LowIndex
