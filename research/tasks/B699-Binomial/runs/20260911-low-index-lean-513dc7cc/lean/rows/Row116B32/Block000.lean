import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

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


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_good000_checked :
    goodSegmentCheck 116 38 81
      { lower := 234, upper := 348, witness := RowWitness.topPrime 233 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good001_checked :
    goodSegmentCheck 116 38 81
      { lower := 349, upper := 464, witness := RowWitness.topPrime 349 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good002_checked :
    goodSegmentCheck 116 38 81
      { lower := 465, upper := 578, witness := RowWitness.topPrime 463 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good003_checked :
    goodSegmentCheck 116 38 81
      { lower := 579, upper := 692, witness := RowWitness.topPrime 577 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good004_checked :
    goodSegmentCheck 116 38 81
      { lower := 693, upper := 806, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good005_checked :
    goodSegmentCheck 116 38 81
      { lower := 807, upper := 912, witness := RowWitness.topPrime 797 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good006_checked :
    goodSegmentCheck 116 38 81
      { lower := 913, upper := 1026, witness := RowWitness.topPrime 911 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good007_checked :
    goodSegmentCheck 116 38 81
      { lower := 1027, upper := 1136, witness := RowWitness.topPrime 1021 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good008_checked :
    goodSegmentCheck 116 38 81
      { lower := 1137, upper := 1244, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good009_checked :
    goodSegmentCheck 116 38 81
      { lower := 1245, upper := 1352, witness := RowWitness.topPrime 1237 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good010_checked :
    goodSegmentCheck 116 38 81
      { lower := 1353, upper := 1442, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good011_checked :
    goodSegmentCheck 116 38 81
      { lower := 1443, upper := 1554, witness := RowWitness.topPrime 1439 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good012_checked :
    goodSegmentCheck 116 38 81
      { lower := 1555, upper := 1668, witness := RowWitness.topPrime 1553 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good013_checked :
    goodSegmentCheck 116 38 81
      { lower := 1669, upper := 1784, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good014_checked :
    goodSegmentCheck 116 38 81
      { lower := 1785, upper := 1898, witness := RowWitness.topPrime 1783 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good015_checked :
    goodSegmentCheck 116 38 81
      { lower := 1899, upper := 2004, witness := RowWitness.topPrime 1889 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_good016_checked :
    goodSegmentCheck 116 38 81
      { lower := 2005, upper := 2118, witness := RowWitness.topPrime 2003 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good017_checked :
    goodSegmentCheck 116 38 81
      { lower := 2119, upper := 2228, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good018_checked :
    goodSegmentCheck 116 38 81
      { lower := 2229, upper := 2336, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good019_checked :
    goodSegmentCheck 116 38 81
      { lower := 2337, upper := 2448, witness := RowWitness.topPrime 2333 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good020_checked :
    goodSegmentCheck 116 38 81
      { lower := 2449, upper := 2562, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good021_checked :
    goodSegmentCheck 116 38 81
      { lower := 2563, upper := 2672, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good022_checked :
    goodSegmentCheck 116 38 81
      { lower := 2673, upper := 2786, witness := RowWitness.topPrime 2671 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good023_checked :
    goodSegmentCheck 116 38 81
      { lower := 2787, upper := 2892, witness := RowWitness.topPrime 2777 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good024_checked :
    goodSegmentCheck 116 38 81
      { lower := 2893, upper := 3002, witness := RowWitness.topPrime 2887 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good025_checked :
    goodSegmentCheck 116 38 81
      { lower := 3003, upper := 3116, witness := RowWitness.topPrime 3001 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good026_checked :
    goodSegmentCheck 116 38 81
      { lower := 3117, upper := 3224, witness := RowWitness.topPrime 3109 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good027_checked :
    goodSegmentCheck 116 38 81
      { lower := 3225, upper := 3336, witness := RowWitness.topPrime 3221 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good028_checked :
    goodSegmentCheck 116 38 81
      { lower := 3337, upper := 3446, witness := RowWitness.topPrime 3331 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good029_checked :
    goodSegmentCheck 116 38 81
      { lower := 3447, upper := 3548, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good030_checked :
    goodSegmentCheck 116 38 81
      { lower := 3549, upper := 3662, witness := RowWitness.topPrime 3547 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good031_checked :
    goodSegmentCheck 116 38 81
      { lower := 3663, upper := 3774, witness := RowWitness.topPrime 3659 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_good032_checked :
    goodSegmentCheck 116 38 81
      { lower := 3775, upper := 3884, witness := RowWitness.topPrime 3769 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good033_checked :
    goodSegmentCheck 116 38 81
      { lower := 3885, upper := 3996, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good034_checked :
    goodSegmentCheck 116 38 81
      { lower := 3997, upper := 4104, witness := RowWitness.topPrime 3989 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good035_checked :
    goodSegmentCheck 116 38 81
      { lower := 4105, upper := 4214, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good036_checked :
    goodSegmentCheck 116 38 81
      { lower := 4215, upper := 4326, witness := RowWitness.topPrime 4211 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good037_checked :
    goodSegmentCheck 116 38 81
      { lower := 4327, upper := 4442, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good038_checked :
    goodSegmentCheck 116 38 81
      { lower := 4443, upper := 4556, witness := RowWitness.topPrime 4441 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good039_checked :
    goodSegmentCheck 116 38 81
      { lower := 4557, upper := 4664, witness := RowWitness.topPrime 4549 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good040_checked :
    goodSegmentCheck 116 38 81
      { lower := 4665, upper := 4778, witness := RowWitness.topPrime 4663 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good041_checked :
    goodSegmentCheck 116 38 81
      { lower := 4779, upper := 4874, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good042_checked :
    goodSegmentCheck 116 38 81
      { lower := 4875, upper := 4986, witness := RowWitness.topPrime 4871 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good043_checked :
    goodSegmentCheck 116 38 81
      { lower := 4987, upper := 5102, witness := RowWitness.topPrime 4987 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good044_checked :
    goodSegmentCheck 116 38 81
      { lower := 5103, upper := 5216, witness := RowWitness.topPrime 5101 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good045_checked :
    goodSegmentCheck 116 38 81
      { lower := 5217, upper := 5324, witness := RowWitness.topPrime 5209 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good046_checked :
    goodSegmentCheck 116 38 81
      { lower := 5325, upper := 5438, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good047_checked :
    goodSegmentCheck 116 38 81
      { lower := 5439, upper := 5552, witness := RowWitness.topPrime 5437 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_good048_checked :
    goodSegmentCheck 116 38 81
      { lower := 5553, upper := 5646, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good049_checked :
    goodSegmentCheck 116 38 81
      { lower := 5647, upper := 5762, witness := RowWitness.topPrime 5647 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good050_checked :
    goodSegmentCheck 116 38 81
      { lower := 5763, upper := 5864, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good051_checked :
    goodSegmentCheck 116 38 81
      { lower := 5865, upper := 5976, witness := RowWitness.topPrime 5861 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good052_checked :
    goodSegmentCheck 116 38 81
      { lower := 5977, upper := 6068, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good053_checked :
    goodSegmentCheck 116 38 81
      { lower := 6069, upper := 6182, witness := RowWitness.topPrime 6067 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good054_checked :
    goodSegmentCheck 116 38 81
      { lower := 6183, upper := 6288, witness := RowWitness.topPrime 6173 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good055_checked :
    goodSegmentCheck 116 38 81
      { lower := 6289, upper := 6402, witness := RowWitness.topPrime 6287 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good056_checked :
    goodSegmentCheck 116 38 81
      { lower := 6403, upper := 6512, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good057_checked :
    goodSegmentCheck 116 38 81
      { lower := 6513, upper := 6606, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good058_checked :
    goodSegmentCheck 116 38 81
      { lower := 6607, upper := 6722, witness := RowWitness.topPrime 6607 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good059_checked :
    goodSegmentCheck 116 38 81
      { lower := 6723, upper := 6834, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good060_checked :
    goodSegmentCheck 116 38 81
      { lower := 6835, upper := 6948, witness := RowWitness.topPrime 6833 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good061_checked :
    goodSegmentCheck 116 38 81
      { lower := 6949, upper := 7064, witness := RowWitness.topPrime 6949 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good062_checked :
    goodSegmentCheck 116 38 81
      { lower := 7065, upper := 7172, witness := RowWitness.topPrime 7057 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good063_checked :
    goodSegmentCheck 116 38 81
      { lower := 7173, upper := 7274, witness := RowWitness.topPrime 7159 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_good064_checked :
    goodSegmentCheck 116 38 81
      { lower := 7275, upper := 7368, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good065_checked :
    goodSegmentCheck 116 38 81
      { lower := 7369, upper := 7484, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good066_checked :
    goodSegmentCheck 116 38 81
      { lower := 7485, upper := 7596, witness := RowWitness.topPrime 7481 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good067_checked :
    goodSegmentCheck 116 38 81
      { lower := 7597, upper := 7706, witness := RowWitness.topPrime 7591 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good068_checked :
    goodSegmentCheck 116 38 81
      { lower := 7707, upper := 7818, witness := RowWitness.topPrime 7703 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good069_checked :
    goodSegmentCheck 116 38 81
      { lower := 7819, upper := 7932, witness := RowWitness.topPrime 7817 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good070_checked :
    goodSegmentCheck 116 38 81
      { lower := 7933, upper := 8048, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good071_checked :
    goodSegmentCheck 116 38 81
      { lower := 8049, upper := 8154, witness := RowWitness.topPrime 8039 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good072_checked :
    goodSegmentCheck 116 38 81
      { lower := 8155, upper := 8262, witness := RowWitness.topPrime 8147 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good073_checked :
    goodSegmentCheck 116 38 81
      { lower := 8263, upper := 8378, witness := RowWitness.topPrime 8263 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good074_checked :
    goodSegmentCheck 116 38 81
      { lower := 8379, upper := 8492, witness := RowWitness.topPrime 8377 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good075_checked :
    goodSegmentCheck 116 38 81
      { lower := 8493, upper := 8582, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good076_checked :
    goodSegmentCheck 116 38 81
      { lower := 8583, upper := 8696, witness := RowWitness.topPrime 8581 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good077_checked :
    goodSegmentCheck 116 38 81
      { lower := 8697, upper := 8808, witness := RowWitness.topPrime 8693 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good078_checked :
    goodSegmentCheck 116 38 81
      { lower := 8809, upper := 8922, witness := RowWitness.topPrime 8807 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good079_checked :
    goodSegmentCheck 116 38 81
      { lower := 8923, upper := 9038, witness := RowWitness.topPrime 8923 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_good080_checked :
    goodSegmentCheck 116 38 81
      { lower := 9039, upper := 9144, witness := RowWitness.topPrime 9029 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good081_checked :
    goodSegmentCheck 116 38 81
      { lower := 9145, upper := 9252, witness := RowWitness.topPrime 9137 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good082_checked :
    goodSegmentCheck 116 38 81
      { lower := 9253, upper := 9356, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good083_checked :
    goodSegmentCheck 116 38 81
      { lower := 9357, upper := 9464, witness := RowWitness.topPrime 9349 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good084_checked :
    goodSegmentCheck 116 38 81
      { lower := 9465, upper := 9578, witness := RowWitness.topPrime 9463 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good085_checked :
    goodSegmentCheck 116 38 81
      { lower := 9579, upper := 9666, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good086_checked :
    goodSegmentCheck 116 38 81
      { lower := 9667, upper := 9776, witness := RowWitness.topPrime 9661 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good087_checked :
    goodSegmentCheck 116 38 81
      { lower := 9777, upper := 9884, witness := RowWitness.topPrime 9769 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good088_checked :
    goodSegmentCheck 116 38 81
      { lower := 9885, upper := 9998, witness := RowWitness.topPrime 9883 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good089_checked :
    goodSegmentCheck 116 38 81
      { lower := 9999, upper := 10088, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good090_checked :
    goodSegmentCheck 116 38 81
      { lower := 10089, upper := 10194, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good091_checked :
    goodSegmentCheck 116 38 81
      { lower := 10195, upper := 10308, witness := RowWitness.topPrime 10193 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good092_checked :
    goodSegmentCheck 116 38 81
      { lower := 10309, upper := 10418, witness := RowWitness.topPrime 10303 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good093_checked :
    goodSegmentCheck 116 38 81
      { lower := 10419, upper := 10514, witness := RowWitness.topPrime 10399 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good094_checked :
    goodSegmentCheck 116 38 81
      { lower := 10515, upper := 10628, witness := RowWitness.topPrime 10513 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good095_checked :
    goodSegmentCheck 116 38 81
      { lower := 10629, upper := 10742, witness := RowWitness.topPrime 10627 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_good096_checked :
    goodSegmentCheck 116 38 81
      { lower := 10743, upper := 10854, witness := RowWitness.topPrime 10739 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good097_checked :
    goodSegmentCheck 116 38 81
      { lower := 10855, upper := 10968, witness := RowWitness.topPrime 10853 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good098_checked :
    goodSegmentCheck 116 38 81
      { lower := 10969, upper := 11072, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good099_checked :
    goodSegmentCheck 116 38 81
      { lower := 11073, upper := 11186, witness := RowWitness.topPrime 11071 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good100_checked :
    goodSegmentCheck 116 38 81
      { lower := 11187, upper := 11292, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good101_checked :
    goodSegmentCheck 116 38 81
      { lower := 11293, upper := 11402, witness := RowWitness.topPrime 11287 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good102_checked :
    goodSegmentCheck 116 38 81
      { lower := 11403, upper := 11514, witness := RowWitness.topPrime 11399 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good103_checked :
    goodSegmentCheck 116 38 81
      { lower := 11515, upper := 11618, witness := RowWitness.topPrime 11503 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good104_checked :
    goodSegmentCheck 116 38 81
      { lower := 11619, upper := 11732, witness := RowWitness.topPrime 11617 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good105_checked :
    goodSegmentCheck 116 38 81
      { lower := 11733, upper := 11846, witness := RowWitness.topPrime 11731 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good106_checked :
    goodSegmentCheck 116 38 81
      { lower := 11847, upper := 11954, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good107_checked :
    goodSegmentCheck 116 38 81
      { lower := 11955, upper := 12068, witness := RowWitness.topPrime 11953 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good108_checked :
    goodSegmentCheck 116 38 81
      { lower := 12069, upper := 12164, witness := RowWitness.topPrime 12049 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good109_checked :
    goodSegmentCheck 116 38 81
      { lower := 12165, upper := 12278, witness := RowWitness.topPrime 12163 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good110_checked :
    goodSegmentCheck 116 38 81
      { lower := 12279, upper := 12392, witness := RowWitness.topPrime 12277 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good111_checked :
    goodSegmentCheck 116 38 81
      { lower := 12393, upper := 12506, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_good112_checked :
    goodSegmentCheck 116 38 81
      { lower := 12507, upper := 12618, witness := RowWitness.topPrime 12503 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good113_checked :
    goodSegmentCheck 116 38 81
      { lower := 12619, upper := 12734, witness := RowWitness.topPrime 12619 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good114_checked :
    goodSegmentCheck 116 38 81
      { lower := 12735, upper := 12836, witness := RowWitness.topPrime 12721 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good115_checked :
    goodSegmentCheck 116 38 81
      { lower := 12837, upper := 12944, witness := RowWitness.topPrime 12829 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good116_checked :
    goodSegmentCheck 116 38 81
      { lower := 12945, upper := 13056, witness := RowWitness.topPrime 12941 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good117_checked :
    goodSegmentCheck 116 38 81
      { lower := 13057, upper := 13164, witness := RowWitness.topPrime 13049 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good118_checked :
    goodSegmentCheck 116 38 81
      { lower := 13165, upper := 13278, witness := RowWitness.topPrime 13163 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good119_checked :
    goodSegmentCheck 116 38 81
      { lower := 13279, upper := 13369, witness := RowWitness.topPrime 13267 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good120_checked :
    goodSegmentCheck 116 38 81
      { lower := 13454, upper := 13566, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good121_checked :
    goodSegmentCheck 116 38 81
      { lower := 13567, upper := 13569, witness := RowWitness.topPrime 13567 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good122_checked :
    goodSegmentCheck 116 38 81
      { lower := 13718, upper := 13826, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good123_checked :
    goodSegmentCheck 116 38 81
      { lower := 13827, upper := 13893, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good124_checked :
    goodSegmentCheck 116 38 81
      { lower := 13924, upper := 13966, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good125_checked :
    goodSegmentCheck 116 38 81
      { lower := 14375, upper := 14398, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good126_checked :
    goodSegmentCheck 116 38 81
      { lower := 14406, upper := 14516, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good127_checked :
    goodSegmentCheck 116 38 81
      { lower := 14517, upper := 14521, witness := RowWitness.topPrime 14503 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_good128_checked :
    goodSegmentCheck 116 38 81
      { lower := 14641, upper := 14695, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good129_checked :
    goodSegmentCheck 116 38 81
      { lower := 14739, upper := 14756, witness := RowWitness.topPrime 14737 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good130_checked :
    goodSegmentCheck 116 38 81
      { lower := 14792, upper := 14854, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good131_checked :
    goodSegmentCheck 116 38 81
      { lower := 14884, upper := 14907, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good132_checked :
    goodSegmentCheck 116 38 81
      { lower := 15059, upper := 15115, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good133_checked :
    goodSegmentCheck 116 38 81
      { lower := 15123, upper := 15236, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good134_checked :
    goodSegmentCheck 116 38 81
      { lower := 15237, upper := 15238, witness := RowWitness.topPrime 15233 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good135_checked :
    goodSegmentCheck 116 38 81
      { lower := 15376, upper := 15488, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good136_checked :
    goodSegmentCheck 116 38 81
      { lower := 15489, upper := 15494, witness := RowWitness.topPrime 15473 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good137_checked :
    goodSegmentCheck 116 38 81
      { lower := 15987, upper := 16088, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good138_checked :
    goodSegmentCheck 116 38 81
      { lower := 16089, upper := 16102, witness := RowWitness.topPrime 16087 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good139_checked :
    goodSegmentCheck 116 38 81
      { lower := 16337, upper := 16365, witness := RowWitness.topPrime 16333 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good140_checked :
    goodSegmentCheck 116 38 81
      { lower := 16384, upper := 16496, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good141_checked :
    goodSegmentCheck 116 38 81
      { lower := 16497, upper := 16499, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good142_checked :
    goodSegmentCheck 116 38 81
      { lower := 16807, upper := 16902, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good143_checked :
    goodSegmentCheck 116 38 81
      { lower := 16903, upper := 16969, witness := RowWitness.topPrime 16903 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_good144_checked :
    goodSegmentCheck 116 38 81
      { lower := 17303, upper := 17414, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good145_checked :
    goodSegmentCheck 116 38 81
      { lower := 17415, upper := 17418, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good146_checked :
    goodSegmentCheck 116 38 81
      { lower := 17496, upper := 17520, witness := RowWitness.topPrime 17491 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good147_checked :
    goodSegmentCheck 116 38 81
      { lower := 17576, upper := 17611, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good148_checked :
    goodSegmentCheck 116 38 81
      { lower := 17672, upper := 17691, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good149_checked :
    goodSegmentCheck 116 38 81
      { lower := 18259, upper := 18340, witness := RowWitness.topPrime 18257 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good150_checked :
    goodSegmentCheck 116 38 81
      { lower := 18491, upper := 18596, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good151_checked :
    goodSegmentCheck 116 38 81
      { lower := 18597, upper := 18606, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good152_checked :
    goodSegmentCheck 116 38 81
      { lower := 18634, upper := 18720, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good153_checked :
    goodSegmentCheck 116 38 81
      { lower := 18723, upper := 18834, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good154_checked :
    goodSegmentCheck 116 38 81
      { lower := 18835, upper := 18865, witness := RowWitness.topPrime 18803 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good155_checked :
    goodSegmentCheck 116 38 81
      { lower := 19208, upper := 19322, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good156_checked :
    goodSegmentCheck 116 38 81
      { lower := 19323, upper := 19323, witness := RowWitness.topPrime 19319 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good157_checked :
    goodSegmentCheck 116 38 81
      { lower := 19663, upper := 19776, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good158_checked :
    goodSegmentCheck 116 38 81
      { lower := 19777, upper := 19798, witness := RowWitness.topPrime 19777 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good159_checked :
    goodSegmentCheck 116 38 81
      { lower := 19881, upper := 19888, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_good160_checked :
    goodSegmentCheck 116 38 81
      { lower := 19965, upper := 19996, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good161_checked :
    goodSegmentCheck 116 38 81
      { lower := 20172, upper := 20276, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good162_checked :
    goodSegmentCheck 116 38 81
      { lower := 20277, upper := 20287, witness := RowWitness.topPrime 20269 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good163_checked :
    goodSegmentCheck 116 38 81
      { lower := 20402, upper := 20454, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good164_checked :
    goodSegmentCheck 116 38 81
      { lower := 20480, upper := 20517, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good165_checked :
    goodSegmentCheck 116 38 81
      { lower := 20535, upper := 20648, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good166_checked :
    goodSegmentCheck 116 38 81
      { lower := 20649, upper := 20650, witness := RowWitness.topPrime 20641 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good167_checked :
    goodSegmentCheck 116 38 81
      { lower := 20667, upper := 20692, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good168_checked :
    goodSegmentCheck 116 38 81
      { lower := 21218, upper := 21257, witness := RowWitness.topPrime 21211 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good169_checked :
    goodSegmentCheck 116 38 81
      { lower := 21296, upper := 21398, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good170_checked :
    goodSegmentCheck 116 38 81
      { lower := 21399, upper := 21411, witness := RowWitness.topPrime 21397 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good171_checked :
    goodSegmentCheck 116 38 81
      { lower := 21870, upper := 21978, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good172_checked :
    goodSegmentCheck 116 38 81
      { lower := 21979, upper := 22019, witness := RowWitness.topPrime 21977 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good173_checked :
    goodSegmentCheck 116 38 81
      { lower := 22103, upper := 22208, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good174_checked :
    goodSegmentCheck 116 38 81
      { lower := 22209, upper := 22218, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good175_checked :
    goodSegmentCheck 116 38 81
      { lower := 22472, upper := 22560, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_good176_checked :
    goodSegmentCheck 116 38 81
      { lower := 23763, upper := 23876, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good177_checked :
    goodSegmentCheck 116 38 81
      { lower := 23877, upper := 23877, witness := RowWitness.topPrime 23873 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good178_checked :
    goodSegmentCheck 116 38 81
      { lower := 24010, upper := 24122, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good179_checked :
    goodSegmentCheck 116 38 81
      { lower := 24123, upper := 24152, witness := RowWitness.topPrime 24121 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good180_checked :
    goodSegmentCheck 116 38 81
      { lower := 24167, upper := 24172, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good181_checked :
    goodSegmentCheck 116 38 81
      { lower := 24334, upper := 24444, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good182_checked :
    goodSegmentCheck 116 38 81
      { lower := 24445, upper := 24449, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good183_checked :
    goodSegmentCheck 116 38 81
      { lower := 24576, upper := 24686, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good184_checked :
    goodSegmentCheck 116 38 81
      { lower := 24687, upper := 24691, witness := RowWitness.topPrime 24683 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good185_checked :
    goodSegmentCheck 116 38 81
      { lower := 24986, upper := 25094, witness := RowWitness.topPrime 24979 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good186_checked :
    goodSegmentCheck 116 38 81
      { lower := 25095, upper := 25101, witness := RowWitness.topPrime 25087 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good187_checked :
    goodSegmentCheck 116 38 81
      { lower := 25215, upper := 25304, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good188_checked :
    goodSegmentCheck 116 38 81
      { lower := 25305, upper := 25396, witness := RowWitness.topPrime 25303 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good189_checked :
    goodSegmentCheck 116 38 81
      { lower := 25947, upper := 26001, witness := RowWitness.topPrime 25943 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good190_checked :
    goodSegmentCheck 116 38 81
      { lower := 26011, upper := 26118, witness := RowWitness.topPrime 26003 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good191_checked :
    goodSegmentCheck 116 38 81
      { lower := 26119, upper := 26126, witness := RowWitness.topPrime 26119 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_good192_checked :
    goodSegmentCheck 116 38 81
      { lower := 26411, upper := 26479, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good193_checked :
    goodSegmentCheck 116 38 81
      { lower := 26508, upper := 26526, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good194_checked :
    goodSegmentCheck 116 38 81
      { lower := 26620, upper := 26623, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good195_checked :
    goodSegmentCheck 116 38 81
      { lower := 26645, upper := 26735, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good196_checked :
    goodSegmentCheck 116 38 81
      { lower := 26934, upper := 27011, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good197_checked :
    goodSegmentCheck 116 38 81
      { lower := 27436, upper := 27495, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good198_checked :
    goodSegmentCheck 116 38 81
      { lower := 27848, upper := 27850, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good199_checked :
    goodSegmentCheck 116 38 81
      { lower := 27951, upper := 27963, witness := RowWitness.topPrime 27947 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good200_checked :
    goodSegmentCheck 116 38 81
      { lower := 28125, upper := 28205, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good201_checked :
    goodSegmentCheck 116 38 81
      { lower := 28227, upper := 28240, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good202_checked :
    goodSegmentCheck 116 38 81
      { lower := 28577, upper := 28676, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good203_checked :
    goodSegmentCheck 116 38 81
      { lower := 28749, upper := 28844, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good204_checked :
    goodSegmentCheck 116 38 81
      { lower := 28845, upper := 28864, witness := RowWitness.topPrime 28843 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good205_checked :
    goodSegmentCheck 116 38 81
      { lower := 29584, upper := 29593, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good206_checked :
    goodSegmentCheck 116 38 81
      { lower := 29791, upper := 29883, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good207_checked :
    goodSegmentCheck 116 38 81
      { lower := 30258, upper := 30361, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_good208_checked :
    goodSegmentCheck 116 38 81
      { lower := 30618, upper := 30708, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good209_checked :
    goodSegmentCheck 116 38 81
      { lower := 30709, upper := 30718, witness := RowWitness.topPrime 30707 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good210_checked :
    goodSegmentCheck 116 38 81
      { lower := 30926, upper := 31014, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good211_checked :
    goodSegmentCheck 116 38 81
      { lower := 31213, upper := 31308, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good212_checked :
    goodSegmentCheck 116 38 81
      { lower := 31309, upper := 31365, witness := RowWitness.topPrime 31307 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good213_checked :
    goodSegmentCheck 116 38 81
      { lower := 31423, upper := 31512, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good214_checked :
    goodSegmentCheck 116 38 81
      { lower := 31513, upper := 31538, witness := RowWitness.topPrime 31513 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good215_checked :
    goodSegmentCheck 116 38 81
      { lower := 31939, upper := 31942, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good216_checked :
    goodSegmentCheck 116 38 81
      { lower := 31974, upper := 32054, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good217_checked :
    goodSegmentCheck 116 38 81
      { lower := 32805, upper := 32883, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good218_checked :
    goodSegmentCheck 116 38 81
      { lower := 33620, upper := 33734, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good219_checked :
    goodSegmentCheck 116 38 81
      { lower := 33735, upper := 33735, witness := RowWitness.topPrime 33721 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good220_checked :
    goodSegmentCheck 116 38 81
      { lower := 34347, upper := 34452, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good221_checked :
    goodSegmentCheck 116 38 81
      { lower := 34453, upper := 34506, witness := RowWitness.topPrime 34439 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good222_checked :
    goodSegmentCheck 116 38 81
      { lower := 35152, upper := 35246, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good223_checked :
    goodSegmentCheck 116 38 81
      { lower := 35301, upper := 35406, witness := RowWitness.topPrime 35291 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_good224_checked :
    goodSegmentCheck 116 38 81
      { lower := 35407, upper := 35416, witness := RowWitness.topPrime 35407 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good225_checked :
    goodSegmentCheck 116 38 81
      { lower := 36015, upper := 36027, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good226_checked :
    goodSegmentCheck 116 38 81
      { lower := 36517, upper := 36612, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good227_checked :
    goodSegmentCheck 116 38 81
      { lower := 36613, upper := 36616, witness := RowWitness.topPrime 36607 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good228_checked :
    goodSegmentCheck 116 38 81
      { lower := 36982, upper := 37094, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good229_checked :
    goodSegmentCheck 116 38 81
      { lower := 37095, upper := 37095, witness := RowWitness.topPrime 37087 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good230_checked :
    goodSegmentCheck 116 38 81
      { lower := 37210, upper := 37294, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good231_checked :
    goodSegmentCheck 116 38 81
      { lower := 37303, upper := 37325, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good232_checked :
    goodSegmentCheck 116 38 81
      { lower := 37349, upper := 37418, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good233_checked :
    goodSegmentCheck 116 38 81
      { lower := 37446, upper := 37464, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good234_checked :
    goodSegmentCheck 116 38 81
      { lower := 37500, upper := 37608, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good235_checked :
    goodSegmentCheck 116 38 81
      { lower := 37609, upper := 37615, witness := RowWitness.topPrime 37607 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good236_checked :
    goodSegmentCheck 116 38 81
      { lower := 37636, upper := 37668, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good237_checked :
    goodSegmentCheck 116 38 81
      { lower := 38307, upper := 38406, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good238_checked :
    goodSegmentCheck 116 38 81
      { lower := 38416, upper := 38422, witness := RowWitness.topPrime 38393 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good239_checked :
    goodSegmentCheck 116 38 81
      { lower := 39326, upper := 39438, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_good240_checked :
    goodSegmentCheck 116 38 81
      { lower := 39439, upper := 39441, witness := RowWitness.topPrime 39439 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good241_checked :
    goodSegmentCheck 116 38 81
      { lower := 39605, upper := 39661, witness := RowWitness.topPrime 39581 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good242_checked :
    goodSegmentCheck 116 38 81
      { lower := 40401, upper := 40443, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good243_checked :
    goodSegmentCheck 116 38 81
      { lower := 40678, upper := 40740, witness := RowWitness.topPrime 40639 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good244_checked :
    goodSegmentCheck 116 38 81
      { lower := 40817, upper := 40919, witness := RowWitness.topPrime 40813 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good245_checked :
    goodSegmentCheck 116 38 81
      { lower := 40931, upper := 40932, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good246_checked :
    goodSegmentCheck 116 38 81
      { lower := 40960, upper := 41046, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good247_checked :
    goodSegmentCheck 116 38 81
      { lower := 41772, upper := 41858, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good248_checked :
    goodSegmentCheck 116 38 81
      { lower := 43740, upper := 43836, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good249_checked :
    goodSegmentCheck 116 38 81
      { lower := 43837, upper := 43855, witness := RowWitness.topPrime 43801 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good250_checked :
    goodSegmentCheck 116 38 81
      { lower := 43940, upper := 44038, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good251_checked :
    goodSegmentCheck 116 38 81
      { lower := 44217, upper := 44295, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good252_checked :
    goodSegmentCheck 116 38 81
      { lower := 44944, upper := 45005, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good253_checked :
    goodSegmentCheck 116 38 81
      { lower := 47526, upper := 47636, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good254_checked :
    goodSegmentCheck 116 38 81
      { lower := 47637, upper := 47639, witness := RowWitness.topPrime 47629 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good255_checked :
    goodSegmentCheck 116 38 81
      { lower := 48013, upper := 48096, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_good256_checked :
    goodSegmentCheck 116 38 81
      { lower := 48097, upper := 48135, witness := RowWitness.topPrime 48091 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good257_checked :
    goodSegmentCheck 116 38 81
      { lower := 48223, upper := 48229, witness := RowWitness.topPrime 48221 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good258_checked :
    goodSegmentCheck 116 38 81
      { lower := 48334, upper := 48338, witness := RowWitness.topPrime 48313 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good259_checked :
    goodSegmentCheck 116 38 81
      { lower := 48373, upper := 48449, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good260_checked :
    goodSegmentCheck 116 38 81
      { lower := 48668, upper := 48713, witness := RowWitness.topPrime 48661 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good261_checked :
    goodSegmentCheck 116 38 81
      { lower := 48734, upper := 48783, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good262_checked :
    goodSegmentCheck 116 38 81
      { lower := 49152, upper := 49245, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good263_checked :
    goodSegmentCheck 116 38 81
      { lower := 50000, upper := 50043, witness := RowWitness.topPrime 49999 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good264_checked :
    goodSegmentCheck 116 38 81
      { lower := 50421, upper := 50525, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good265_checked :
    goodSegmentCheck 116 38 81
      { lower := 50653, upper := 50677, witness := RowWitness.topPrime 50651 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good266_checked :
    goodSegmentCheck 116 38 81
      { lower := 51076, upper := 51120, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good267_checked :
    goodSegmentCheck 116 38 81
      { lower := 53125, upper := 53160, witness := RowWitness.topPrime 53117 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good268_checked :
    goodSegmentCheck 116 38 81
      { lower := 55451, upper := 55556, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good269_checked :
    goodSegmentCheck 116 38 81
      { lower := 55557, upper := 55562, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good270_checked :
    goodSegmentCheck 116 38 81
      { lower := 56250, upper := 56284, witness := RowWitness.topPrime 56249 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good271_checked :
    goodSegmentCheck 116 38 81
      { lower := 58619, upper := 58679, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good264_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good265_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good266_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good267_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good268_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good269_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good270_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good271_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_good272_checked :
    goodSegmentCheck 116 38 81
      { lower := 59049, upper := 59071, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good273_checked :
    goodSegmentCheck 116 38 81
      { lower := 59582, upper := 59651, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good274_checked :
    goodSegmentCheck 116 38 81
      { lower := 62500, upper := 62525, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good275_checked :
    goodSegmentCheck 116 38 81
      { lower := 63368, upper := 63372, witness := RowWitness.topPrime 63367 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good276_checked :
    goodSegmentCheck 116 38 81
      { lower := 63869, upper := 63978, witness := RowWitness.topPrime 63863 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good277_checked :
    goodSegmentCheck 116 38 81
      { lower := 63979, upper := 63984, witness := RowWitness.topPrime 63977 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good278_checked :
    goodSegmentCheck 116 38 81
      { lower := 65536, upper := 65636, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good279_checked :
    goodSegmentCheck 116 38 81
      { lower := 65637, upper := 65651, witness := RowWitness.topPrime 65633 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good280_checked :
    goodSegmentCheck 116 38 81
      { lower := 67335, upper := 67343, witness := RowWitness.topPrime 67307 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good281_checked :
    goodSegmentCheck 116 38 81
      { lower := 68651, upper := 68754, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good282_checked :
    goodSegmentCheck 116 38 81
      { lower := 68755, upper := 68766, witness := RowWitness.topPrime 68749 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good283_checked :
    goodSegmentCheck 116 38 81
      { lower := 68782, upper := 68809, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good284_checked :
    goodSegmentCheck 116 38 81
      { lower := 68890, upper := 68897, witness := RowWitness.topPrime 68881 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good285_checked :
    goodSegmentCheck 116 38 81
      { lower := 68921, upper := 69005, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good286_checked :
    goodSegmentCheck 116 38 81
      { lower := 71289, upper := 71401, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good287_checked :
    goodSegmentCheck 116 38 81
      { lower := 85264, upper := 85284, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good272_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good273_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good274_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good275_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good276_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good277_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good278_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good279_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good280_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good281_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good282_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good283_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good284_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good285_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good286_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good287_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_good288_checked :
    goodSegmentCheck 116 38 81
      { lower := 85293, upper := 85374, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good289_checked :
    goodSegmentCheck 116 38 81
      { lower := 85375, upper := 85379, witness := RowWitness.topPrime 85369 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good290_checked :
    goodSegmentCheck 116 38 81
      { lower := 85697, upper := 85798, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good291_checked :
    goodSegmentCheck 116 38 81
      { lower := 89383, upper := 89488, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good292_checked :
    goodSegmentCheck 116 38 81
      { lower := 91854, upper := 91924, witness := RowWitness.topPrime 91841 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good293_checked :
    goodSegmentCheck 116 38 81
      { lower := 95052, upper := 95142, witness := RowWitness.topPrime 95027 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good294_checked :
    goodSegmentCheck 116 38 81
      { lower := 95143, upper := 95163, witness := RowWitness.topPrime 95143 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good295_checked :
    goodSegmentCheck 116 38 81
      { lower := 96026, upper := 96037, witness := RowWitness.topPrime 96017 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good296_checked :
    goodSegmentCheck 116 38 81
      { lower := 98415, upper := 98419, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good297_checked :
    goodSegmentCheck 116 38 81
      { lower := 102973, upper := 103000, witness := RowWitness.topPrime 102967 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good298_checked :
    goodSegmentCheck 116 38 81
      { lower := 103041, upper := 103088, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good299_checked :
    goodSegmentCheck 116 38 81
      { lower := 106097, upper := 106202, witness := RowWitness.topPrime 106087 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good300_checked :
    goodSegmentCheck 116 38 81
      { lower := 106203, upper := 106205, witness := RowWitness.topPrime 106189 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good301_checked :
    goodSegmentCheck 116 38 81
      { lower := 118815, upper := 118916, witness := RowWitness.topPrime 118801 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good302_checked :
    goodSegmentCheck 116 38 81
      { lower := 118917, upper := 118925, witness := RowWitness.topPrime 118913 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good303_checked :
    goodSegmentCheck 116 38 81
      { lower := 122412, upper := 122432, witness := RowWitness.topPrime 122401 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good288_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good289_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good290_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good291_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good292_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good293_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good294_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good295_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good296_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good297_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good298_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good299_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good300_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good301_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good302_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good303_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_good304_checked :
    goodSegmentCheck 116 38 81
      { lower := 131769, upper := 131841, witness := RowWitness.topPrime 131759 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good305_checked :
    goodSegmentCheck 116 38 81
      { lower := 137842, upper := 137896, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good306_checked :
    goodSegmentCheck 116 38 81
      { lower := 137917, upper := 137957, witness := RowWitness.topPrime 137911 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good307_checked :
    goodSegmentCheck 116 38 81
      { lower := 142814, upper := 142920, witness := RowWitness.topPrime 142811 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good308_checked :
    goodSegmentCheck 116 38 81
      { lower := 148877, upper := 148952, witness := RowWitness.topPrime 148873 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good309_checked :
    goodSegmentCheck 116 38 81
      { lower := 148955, upper := 148992, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row116_good310_checked :
    goodSegmentCheck 116 38 81
      { lower := 178766, upper := 178861, witness := RowWitness.topPrime 178757 } = true := by
  exact good_top_prime_checked (i := 116) (r := 38) (s := 81) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good304_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good305_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good306_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good307_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good308_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good309_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_good310_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_goods_checked :
    row116.goods.all (goodSegmentCheck row116.height.i row116.height.r row116.height.s) = true := by
  change row116_goods.all (goodSegmentCheck 116 38 81) = true
  simp only [row116_goods, List.all_cons, List.all_nil,
    row116_good000_checked,
    row116_good001_checked,
    row116_good002_checked,
    row116_good003_checked,
    row116_good004_checked,
    row116_good005_checked,
    row116_good006_checked,
    row116_good007_checked,
    row116_good008_checked,
    row116_good009_checked,
    row116_good010_checked,
    row116_good011_checked,
    row116_good012_checked,
    row116_good013_checked,
    row116_good014_checked,
    row116_good015_checked,
    row116_good016_checked,
    row116_good017_checked,
    row116_good018_checked,
    row116_good019_checked,
    row116_good020_checked,
    row116_good021_checked,
    row116_good022_checked,
    row116_good023_checked,
    row116_good024_checked,
    row116_good025_checked,
    row116_good026_checked,
    row116_good027_checked,
    row116_good028_checked,
    row116_good029_checked,
    row116_good030_checked,
    row116_good031_checked,
    row116_good032_checked,
    row116_good033_checked,
    row116_good034_checked,
    row116_good035_checked,
    row116_good036_checked,
    row116_good037_checked,
    row116_good038_checked,
    row116_good039_checked,
    row116_good040_checked,
    row116_good041_checked,
    row116_good042_checked,
    row116_good043_checked,
    row116_good044_checked,
    row116_good045_checked,
    row116_good046_checked,
    row116_good047_checked,
    row116_good048_checked,
    row116_good049_checked,
    row116_good050_checked,
    row116_good051_checked,
    row116_good052_checked,
    row116_good053_checked,
    row116_good054_checked,
    row116_good055_checked,
    row116_good056_checked,
    row116_good057_checked,
    row116_good058_checked,
    row116_good059_checked,
    row116_good060_checked,
    row116_good061_checked,
    row116_good062_checked,
    row116_good063_checked,
    row116_good064_checked,
    row116_good065_checked,
    row116_good066_checked,
    row116_good067_checked,
    row116_good068_checked,
    row116_good069_checked,
    row116_good070_checked,
    row116_good071_checked,
    row116_good072_checked,
    row116_good073_checked,
    row116_good074_checked,
    row116_good075_checked,
    row116_good076_checked,
    row116_good077_checked,
    row116_good078_checked,
    row116_good079_checked,
    row116_good080_checked,
    row116_good081_checked,
    row116_good082_checked,
    row116_good083_checked,
    row116_good084_checked,
    row116_good085_checked,
    row116_good086_checked,
    row116_good087_checked,
    row116_good088_checked,
    row116_good089_checked,
    row116_good090_checked,
    row116_good091_checked,
    row116_good092_checked,
    row116_good093_checked,
    row116_good094_checked,
    row116_good095_checked,
    row116_good096_checked,
    row116_good097_checked,
    row116_good098_checked,
    row116_good099_checked,
    row116_good100_checked,
    row116_good101_checked,
    row116_good102_checked,
    row116_good103_checked,
    row116_good104_checked,
    row116_good105_checked,
    row116_good106_checked,
    row116_good107_checked,
    row116_good108_checked,
    row116_good109_checked,
    row116_good110_checked,
    row116_good111_checked,
    row116_good112_checked,
    row116_good113_checked,
    row116_good114_checked,
    row116_good115_checked,
    row116_good116_checked,
    row116_good117_checked,
    row116_good118_checked,
    row116_good119_checked,
    row116_good120_checked,
    row116_good121_checked,
    row116_good122_checked,
    row116_good123_checked,
    row116_good124_checked,
    row116_good125_checked,
    row116_good126_checked,
    row116_good127_checked,
    row116_good128_checked,
    row116_good129_checked,
    row116_good130_checked,
    row116_good131_checked,
    row116_good132_checked,
    row116_good133_checked,
    row116_good134_checked,
    row116_good135_checked,
    row116_good136_checked,
    row116_good137_checked,
    row116_good138_checked,
    row116_good139_checked,
    row116_good140_checked,
    row116_good141_checked,
    row116_good142_checked,
    row116_good143_checked,
    row116_good144_checked,
    row116_good145_checked,
    row116_good146_checked,
    row116_good147_checked,
    row116_good148_checked,
    row116_good149_checked,
    row116_good150_checked,
    row116_good151_checked,
    row116_good152_checked,
    row116_good153_checked,
    row116_good154_checked,
    row116_good155_checked,
    row116_good156_checked,
    row116_good157_checked,
    row116_good158_checked,
    row116_good159_checked,
    row116_good160_checked,
    row116_good161_checked,
    row116_good162_checked,
    row116_good163_checked,
    row116_good164_checked,
    row116_good165_checked,
    row116_good166_checked,
    row116_good167_checked,
    row116_good168_checked,
    row116_good169_checked,
    row116_good170_checked,
    row116_good171_checked,
    row116_good172_checked,
    row116_good173_checked,
    row116_good174_checked,
    row116_good175_checked,
    row116_good176_checked,
    row116_good177_checked,
    row116_good178_checked,
    row116_good179_checked,
    row116_good180_checked,
    row116_good181_checked,
    row116_good182_checked,
    row116_good183_checked,
    row116_good184_checked,
    row116_good185_checked,
    row116_good186_checked,
    row116_good187_checked,
    row116_good188_checked,
    row116_good189_checked,
    row116_good190_checked,
    row116_good191_checked,
    row116_good192_checked,
    row116_good193_checked,
    row116_good194_checked,
    row116_good195_checked,
    row116_good196_checked,
    row116_good197_checked,
    row116_good198_checked,
    row116_good199_checked,
    row116_good200_checked,
    row116_good201_checked,
    row116_good202_checked,
    row116_good203_checked,
    row116_good204_checked,
    row116_good205_checked,
    row116_good206_checked,
    row116_good207_checked,
    row116_good208_checked,
    row116_good209_checked,
    row116_good210_checked,
    row116_good211_checked,
    row116_good212_checked,
    row116_good213_checked,
    row116_good214_checked,
    row116_good215_checked,
    row116_good216_checked,
    row116_good217_checked,
    row116_good218_checked,
    row116_good219_checked,
    row116_good220_checked,
    row116_good221_checked,
    row116_good222_checked,
    row116_good223_checked,
    row116_good224_checked,
    row116_good225_checked,
    row116_good226_checked,
    row116_good227_checked,
    row116_good228_checked,
    row116_good229_checked,
    row116_good230_checked,
    row116_good231_checked,
    row116_good232_checked,
    row116_good233_checked,
    row116_good234_checked,
    row116_good235_checked,
    row116_good236_checked,
    row116_good237_checked,
    row116_good238_checked,
    row116_good239_checked,
    row116_good240_checked,
    row116_good241_checked,
    row116_good242_checked,
    row116_good243_checked,
    row116_good244_checked,
    row116_good245_checked,
    row116_good246_checked,
    row116_good247_checked,
    row116_good248_checked,
    row116_good249_checked,
    row116_good250_checked,
    row116_good251_checked,
    row116_good252_checked,
    row116_good253_checked,
    row116_good254_checked,
    row116_good255_checked,
    row116_good256_checked,
    row116_good257_checked,
    row116_good258_checked,
    row116_good259_checked,
    row116_good260_checked,
    row116_good261_checked,
    row116_good262_checked,
    row116_good263_checked,
    row116_good264_checked,
    row116_good265_checked,
    row116_good266_checked,
    row116_good267_checked,
    row116_good268_checked,
    row116_good269_checked,
    row116_good270_checked,
    row116_good271_checked,
    row116_good272_checked,
    row116_good273_checked,
    row116_good274_checked,
    row116_good275_checked,
    row116_good276_checked,
    row116_good277_checked,
    row116_good278_checked,
    row116_good279_checked,
    row116_good280_checked,
    row116_good281_checked,
    row116_good282_checked,
    row116_good283_checked,
    row116_good284_checked,
    row116_good285_checked,
    row116_good286_checked,
    row116_good287_checked,
    row116_good288_checked,
    row116_good289_checked,
    row116_good290_checked,
    row116_good291_checked,
    row116_good292_checked,
    row116_good293_checked,
    row116_good294_checked,
    row116_good295_checked,
    row116_good296_checked,
    row116_good297_checked,
    row116_good298_checked,
    row116_good299_checked,
    row116_good300_checked,
    row116_good301_checked,
    row116_good302_checked,
    row116_good303_checked,
    row116_good304_checked,
    row116_good305_checked,
    row116_good306_checked,
    row116_good307_checked,
    row116_good308_checked,
    row116_good309_checked,
    row116_good310_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_registered :
    decide (row116.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row116_small_checked :
    coverCheck (2 * row116.height.i + 2) (row116.height.i * (row116.height.i - 1) - 1)
      (row116.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row116_layerCover_checked :
    coverCheck (row116.height.i * (row116.height.i - 1)) (row116.height.n0 - 1)
      (row116.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row116_bounds : List NatInterval :=
  [(234, 348), (349, 464), (465, 578), (579, 692), (693, 806), (807, 912), (913, 1026), (1027, 1136), (1137, 1244), (1245, 1352), (1353, 1442), (1443, 1554), (1555, 1668), (1669, 1784), (1785, 1898), (1899, 2004), (2005, 2118), (2119, 2228), (2229, 2336), (2337, 2448), (2449, 2562), (2563, 2672), (2673, 2786), (2787, 2892), (2893, 3002), (3003, 3116), (3117, 3224), (3225, 3336), (3337, 3446), (3447, 3548), (3549, 3662), (3663, 3774), (3775, 3884), (3885, 3996), (3997, 4104), (4105, 4214), (4215, 4326), (4327, 4442), (4443, 4556), (4557, 4664), (4665, 4778), (4779, 4874), (4875, 4986), (4987, 5102), (5103, 5216), (5217, 5324), (5325, 5438), (5439, 5552), (5553, 5646), (5647, 5762), (5763, 5864), (5865, 5976), (5977, 6068), (6069, 6182), (6183, 6288), (6289, 6402), (6403, 6512), (6513, 6606), (6607, 6722), (6723, 6834), (6835, 6948), (6949, 7064), (7065, 7172), (7173, 7274), (7275, 7368), (7369, 7484), (7485, 7596), (7597, 7706), (7707, 7818), (7819, 7932), (7933, 8048), (8049, 8154), (8155, 8262), (8263, 8378), (8379, 8492), (8493, 8582), (8583, 8696), (8697, 8808), (8809, 8922), (8923, 9038), (9039, 9144), (9145, 9252), (9253, 9356), (9357, 9464), (9465, 9578), (9579, 9666), (9667, 9776), (9777, 9884), (9885, 9998), (9999, 10088), (10089, 10194), (10195, 10308), (10309, 10418), (10419, 10514), (10515, 10628), (10629, 10742), (10743, 10854), (10855, 10968), (10969, 11072), (11073, 11186), (11187, 11292), (11293, 11402), (11403, 11514), (11515, 11618), (11619, 11732), (11733, 11846), (11847, 11954), (11955, 12068), (12069, 12164), (12165, 12278), (12279, 12392), (12393, 12506), (12507, 12618), (12619, 12734), (12735, 12836), (12837, 12944), (12945, 13056), (13057, 13164), (13165, 13278), (13279, 13369), (13454, 13566), (13567, 13569), (13718, 13826), (13827, 13893), (13924, 13966), (14375, 14398), (14406, 14516), (14517, 14521), (14641, 14695), (14739, 14756), (14792, 14854), (14884, 14907), (15059, 15115), (15123, 15236), (15237, 15238), (15376, 15488), (15489, 15494), (15987, 16088), (16089, 16102), (16337, 16365), (16384, 16496), (16497, 16499), (16807, 16902), (16903, 16969), (17303, 17414), (17415, 17418), (17496, 17520), (17576, 17611), (17672, 17691), (18259, 18340), (18491, 18596), (18597, 18606), (18634, 18720), (18723, 18834), (18835, 18865), (19208, 19322), (19323, 19323), (19663, 19776), (19777, 19798), (19881, 19888), (19965, 19996), (20172, 20276), (20277, 20287), (20402, 20454), (20480, 20517), (20535, 20648), (20649, 20650), (20667, 20692), (21218, 21257), (21296, 21398), (21399, 21411), (21870, 21978), (21979, 22019), (22103, 22208), (22209, 22218), (22472, 22560), (23763, 23876), (23877, 23877), (24010, 24122), (24123, 24152), (24167, 24172), (24334, 24444), (24445, 24449), (24576, 24686), (24687, 24691), (24986, 25094), (25095, 25101), (25215, 25304), (25305, 25396), (25947, 26001), (26011, 26118), (26119, 26126), (26411, 26479), (26508, 26526), (26620, 26623), (26645, 26735), (26934, 27011), (27436, 27495), (27848, 27850), (27951, 27963), (28125, 28205), (28227, 28240), (28577, 28676), (28749, 28844), (28845, 28864), (29584, 29593), (29791, 29883), (30258, 30361), (30618, 30708), (30709, 30718), (30926, 31014), (31213, 31308), (31309, 31365), (31423, 31512), (31513, 31538), (31939, 31942), (31974, 32054), (32805, 32883), (33620, 33734), (33735, 33735), (34347, 34452), (34453, 34506), (35152, 35246), (35301, 35406), (35407, 35416), (36015, 36027), (36517, 36612), (36613, 36616), (36982, 37094), (37095, 37095), (37210, 37294), (37303, 37325), (37349, 37418), (37446, 37464), (37500, 37608), (37609, 37615), (37636, 37668), (38307, 38406), (38416, 38422), (39326, 39438), (39439, 39441), (39605, 39661), (40401, 40443), (40678, 40740), (40817, 40919), (40931, 40932), (40960, 41046), (41772, 41858), (43740, 43836), (43837, 43855), (43940, 44038), (44217, 44295), (44944, 45005), (47526, 47636), (47637, 47639), (48013, 48096), (48097, 48135), (48223, 48229), (48334, 48338), (48373, 48449), (48668, 48713), (48734, 48783), (49152, 49245), (50000, 50043), (50421, 50525), (50653, 50677), (51076, 51120), (53125, 53160), (55451, 55556), (55557, 55562), (56250, 56284), (58619, 58679), (59049, 59071), (59582, 59651), (62500, 62525), (63368, 63372), (63869, 63978), (63979, 63984), (65536, 65636), (65637, 65651), (67335, 67343), (68651, 68754), (68755, 68766), (68782, 68809), (68890, 68897), (68921, 69005), (71289, 71401), (85264, 85284), (85293, 85374), (85375, 85379), (85697, 85798), (89383, 89488), (91854, 91924), (95052, 95142), (95143, 95163), (96026, 96037), (98415, 98419), (102973, 103000), (103041, 103088), (106097, 106202), (106203, 106205), (118815, 118916), (118917, 118925), (122412, 122432), (131769, 131841), (137842, 137896), (137917, 137957), (142814, 142920), (148877, 148952), (148955, 148992), (178766, 178861)]

theorem row116_bounds_eq : row116.goods.map goodSegmentBounds = row116_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row116_layer000_intervals : List ColouredInterval :=
  [(2, 16384, 16499), (2, 20480, 20595), (2, 24576, 24691), (2, 16384, 16499), (2, 24576, 24691), (2, 16384, 16499), (3, 13851, 13966), (3, 14580, 14695), (3, 15309, 15424), (3, 16038, 16153), (3, 16767, 16882), (3, 17496, 17611), (3, 18225, 18340), (3, 18954, 19069), (3, 19683, 19798), (3, 15309, 15424), (3, 17496, 17611), (3, 19683, 19798), (3, 21870, 21985), (3, 24057, 24172), (3, 26244, 26359), (3, 19683, 19798), (3, 26244, 26359), (3, 19683, 19798), (5, 13750, 13865), (5, 14375, 14490), (5, 15000, 15115), (5, 15625, 15740), (5, 16250, 16365), (5, 16875, 16990), (5, 15625, 15740), (5, 18750, 18865), (5, 21875, 21990), (5, 25000, 25115), (5, 15625, 15740), (7, 14406, 14521), (7, 16807, 16922), (7, 19208, 19323), (7, 21609, 21724), (7, 24010, 24125), (7, 26411, 26526), (7, 16807, 16922), (11, 13340, 13425), (11, 14641, 14756), (11, 15972, 16087), (11, 17303, 17418), (11, 18634, 18749), (11, 19965, 20080), (11, 21296, 21411), (11, 22627, 22742), (11, 23958, 24073), (11, 25289, 25404), (11, 26620, 26679), (11, 14641, 14756), (13, 15379, 15494), (13, 17576, 17691), (13, 19773, 19888), (13, 21970, 22085), (13, 24167, 24282), (13, 26364, 26479), (17, 14739, 14854), (17, 19652, 19767), (17, 24565, 24680), (19, 13718, 13833), (19, 20577, 20692), (23, 13340, 13340), (23, 13754, 13869), (23, 14283, 14398), (23, 24334, 24449), (31, 13454, 13569), (31, 14415, 14530), (31, 15376, 15491), (31, 16337, 16452), (31, 17298, 17413), (31, 18259, 18374), (31, 19220, 19335), (31, 20181, 20296), (31, 21142, 21257), (31, 22103, 22218), (31, 23064, 23179), (31, 24025, 24140), (31, 24986, 25101), (31, 25947, 26062), (37, 13690, 13805), (37, 15059, 15174), (37, 16428, 16543), (37, 17797, 17912), (37, 19166, 19281), (37, 20535, 20650), (37, 21904, 22019), (37, 23273, 23388), (37, 24642, 24757), (37, 26011, 26126), (41, 13448, 13563), (41, 15129, 15244), (41, 16810, 16925), (41, 18491, 18606), (41, 20172, 20287), (41, 21853, 21968), (41, 23534, 23649), (41, 25215, 25330), (43, 14792, 14907), (43, 16641, 16756), (43, 18490, 18605), (43, 20339, 20454), (43, 22188, 22303), (43, 24037, 24152), (43, 25886, 26001), (47, 13340, 13369), (47, 15463, 15578), (47, 17672, 17787), (47, 19881, 19996), (47, 22090, 22205), (47, 24299, 24414), (47, 26508, 26623), (53, 14045, 14160), (53, 16854, 16969), (53, 19663, 19778), (53, 22472, 22587), (53, 25281, 25396), (59, 13924, 14039), (59, 17405, 17520), (59, 20886, 21001), (59, 24367, 24482), (61, 14884, 14999), (61, 18605, 18720), (61, 22326, 22441), (61, 26047, 26162), (67, 13467, 13582), (67, 17956, 18071), (67, 22445, 22560), (71, 15123, 15238), (71, 20164, 20279), (71, 25205, 25320), (73, 15987, 16102), (73, 21316, 21431), (73, 26645, 26679), (79, 18723, 18838), (79, 24964, 25079), (83, 13778, 13893), (83, 20667, 20782), (89, 15842, 15957), (89, 23763, 23878), (97, 18818, 18933), (101, 20402, 20517), (103, 21218, 21333), (107, 22898, 23013), (109, 23762, 23877), (113, 25538, 25653)]

def row116_layer000_block000 : List ColouredInterval :=
  [(2, 16384, 16499), (2, 20480, 20595), (2, 24576, 24691), (2, 16384, 16499), (2, 24576, 24691), (2, 16384, 16499), (3, 13851, 13966), (3, 14580, 14695), (3, 15309, 15424), (3, 16038, 16153), (3, 16767, 16882), (3, 17496, 17611), (3, 18225, 18340)]

def row116_layer000_block001 : List ColouredInterval :=
  [(3, 18954, 19069), (3, 19683, 19798), (3, 15309, 15424), (3, 17496, 17611), (3, 19683, 19798), (3, 21870, 21985), (3, 24057, 24172), (3, 26244, 26359), (3, 19683, 19798), (3, 26244, 26359), (3, 19683, 19798), (5, 13750, 13865), (5, 14375, 14490)]

def row116_layer000_block002 : List ColouredInterval :=
  [(5, 15000, 15115), (5, 15625, 15740), (5, 16250, 16365), (5, 16875, 16990), (5, 15625, 15740), (5, 18750, 18865), (5, 21875, 21990), (5, 25000, 25115), (5, 15625, 15740), (7, 14406, 14521), (7, 16807, 16922), (7, 19208, 19323), (7, 21609, 21724)]

def row116_layer000_block003 : List ColouredInterval :=
  [(7, 24010, 24125), (7, 26411, 26526), (7, 16807, 16922), (11, 13340, 13425), (11, 14641, 14756), (11, 15972, 16087), (11, 17303, 17418), (11, 18634, 18749), (11, 19965, 20080), (11, 21296, 21411), (11, 22627, 22742), (11, 23958, 24073), (11, 25289, 25404)]

def row116_layer000_block004 : List ColouredInterval :=
  [(11, 26620, 26679), (11, 14641, 14756), (13, 15379, 15494), (13, 17576, 17691), (13, 19773, 19888), (13, 21970, 22085), (13, 24167, 24282), (13, 26364, 26479), (17, 14739, 14854), (17, 19652, 19767), (17, 24565, 24680), (19, 13718, 13833), (19, 20577, 20692)]

def row116_layer000_block005 : List ColouredInterval :=
  [(23, 13340, 13340), (23, 13754, 13869), (23, 14283, 14398), (23, 24334, 24449), (31, 13454, 13569), (31, 14415, 14530), (31, 15376, 15491), (31, 16337, 16452), (31, 17298, 17413), (31, 18259, 18374), (31, 19220, 19335), (31, 20181, 20296), (31, 21142, 21257)]

def row116_layer000_block006 : List ColouredInterval :=
  [(31, 22103, 22218), (31, 23064, 23179), (31, 24025, 24140), (31, 24986, 25101), (31, 25947, 26062), (37, 13690, 13805), (37, 15059, 15174), (37, 16428, 16543), (37, 17797, 17912), (37, 19166, 19281), (37, 20535, 20650), (37, 21904, 22019), (37, 23273, 23388)]

def row116_layer000_block007 : List ColouredInterval :=
  [(37, 24642, 24757), (37, 26011, 26126), (41, 13448, 13563), (41, 15129, 15244), (41, 16810, 16925), (41, 18491, 18606), (41, 20172, 20287), (41, 21853, 21968), (41, 23534, 23649), (41, 25215, 25330), (43, 14792, 14907), (43, 16641, 16756), (43, 18490, 18605)]

def row116_layer000_block008 : List ColouredInterval :=
  [(43, 20339, 20454), (43, 22188, 22303), (43, 24037, 24152), (43, 25886, 26001), (47, 13340, 13369), (47, 15463, 15578), (47, 17672, 17787), (47, 19881, 19996), (47, 22090, 22205), (47, 24299, 24414), (47, 26508, 26623), (53, 14045, 14160), (53, 16854, 16969)]

def row116_layer000_block009 : List ColouredInterval :=
  [(53, 19663, 19778), (53, 22472, 22587), (53, 25281, 25396), (59, 13924, 14039), (59, 17405, 17520), (59, 20886, 21001), (59, 24367, 24482), (61, 14884, 14999), (61, 18605, 18720), (61, 22326, 22441), (61, 26047, 26162), (67, 13467, 13582), (67, 17956, 18071)]

def row116_layer000_block010 : List ColouredInterval :=
  [(67, 22445, 22560), (71, 15123, 15238), (71, 20164, 20279), (71, 25205, 25320), (73, 15987, 16102), (73, 21316, 21431), (73, 26645, 26679), (79, 18723, 18838), (79, 24964, 25079), (83, 13778, 13893), (83, 20667, 20782), (89, 15842, 15957), (89, 23763, 23878)]

def row116_layer000_block011 : List ColouredInterval :=
  [(97, 18818, 18933), (101, 20402, 20517), (103, 21218, 21333), (107, 22898, 23013), (109, 23762, 23877), (113, 25538, 25653)]

def row116_layer000_chunks : List (List ColouredInterval) :=
  [row116_layer000_block000, row116_layer000_block001, row116_layer000_block002, row116_layer000_block003, row116_layer000_block004, row116_layer000_block005, row116_layer000_block006, row116_layer000_block007, row116_layer000_block008, row116_layer000_block009, row116_layer000_block010, row116_layer000_block011]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer000_arithmetic : LayerArithmeticValid row116.height { lower := 13340, upper := 26680, M := 27 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer000_enumeration :
    activePowerIntervalList 116 27 13340 26680 = row116_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer000_pairs000 :
    row116_layer000_block000.all (fun I => row116_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer000_pairs001 :
    row116_layer000_block001.all (fun I => row116_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer000_pairs002 :
    row116_layer000_block002.all (fun I => row116_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer000_pairs003 :
    row116_layer000_block003.all (fun I => row116_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer000_pairs004 :
    row116_layer000_block004.all (fun I => row116_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row116_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer000_pairs004
