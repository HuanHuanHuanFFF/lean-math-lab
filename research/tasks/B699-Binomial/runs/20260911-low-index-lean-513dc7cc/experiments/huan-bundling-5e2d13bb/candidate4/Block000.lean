import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row046_height : HeightCertificateDatum := { i := 46, r := 15, s := 31, n0Power10 := 24 }

def row046_goods : List GoodSegment := [
  { lower := 94, upper := 134, witness := RowWitness.topPrime 89 },
  { lower := 135, upper := 176, witness := RowWitness.topPrime 131 },
  { lower := 177, upper := 218, witness := RowWitness.topPrime 173 },
  { lower := 219, upper := 256, witness := RowWitness.topPrime 211 },
  { lower := 257, upper := 302, witness := RowWitness.topPrime 257 },
  { lower := 303, upper := 338, witness := RowWitness.topPrime 293 },
  { lower := 339, upper := 382, witness := RowWitness.topPrime 337 },
  { lower := 383, upper := 428, witness := RowWitness.topPrime 383 },
  { lower := 429, upper := 466, witness := RowWitness.topPrime 421 },
  { lower := 467, upper := 512, witness := RowWitness.topPrime 467 },
  { lower := 513, upper := 554, witness := RowWitness.topPrime 509 },
  { lower := 555, upper := 592, witness := RowWitness.topPrime 547 },
  { lower := 593, upper := 638, witness := RowWitness.topPrime 593 },
  { lower := 639, upper := 676, witness := RowWitness.topPrime 631 },
  { lower := 677, upper := 722, witness := RowWitness.topPrime 677 },
  { lower := 723, upper := 764, witness := RowWitness.topPrime 719 },
  { lower := 765, upper := 806, witness := RowWitness.topPrime 761 },
  { lower := 807, upper := 842, witness := RowWitness.topPrime 797 },
  { lower := 843, upper := 884, witness := RowWitness.topPrime 839 },
  { lower := 885, upper := 928, witness := RowWitness.topPrime 883 },
  { lower := 929, upper := 974, witness := RowWitness.topPrime 929 },
  { lower := 975, upper := 1016, witness := RowWitness.topPrime 971 },
  { lower := 1017, upper := 1058, witness := RowWitness.topPrime 1013 },
  { lower := 1059, upper := 1096, witness := RowWitness.topPrime 1051 },
  { lower := 1097, upper := 1142, witness := RowWitness.topPrime 1097 },
  { lower := 1143, upper := 1174, witness := RowWitness.topPrime 1129 },
  { lower := 1175, upper := 1216, witness := RowWitness.topPrime 1171 },
  { lower := 1217, upper := 1262, witness := RowWitness.topPrime 1217 },
  { lower := 1263, upper := 1304, witness := RowWitness.topPrime 1259 },
  { lower := 1305, upper := 1348, witness := RowWitness.topPrime 1303 },
  { lower := 1349, upper := 1372, witness := RowWitness.topPrime 1327 },
  { lower := 1373, upper := 1418, witness := RowWitness.topPrime 1373 },
  { lower := 1419, upper := 1454, witness := RowWitness.topPrime 1409 },
  { lower := 1455, upper := 1498, witness := RowWitness.topPrime 1453 },
  { lower := 1499, upper := 1544, witness := RowWitness.topPrime 1499 },
  { lower := 1545, upper := 1588, witness := RowWitness.topPrime 1543 },
  { lower := 1589, upper := 1628, witness := RowWitness.topPrime 1583 },
  { lower := 1629, upper := 1672, witness := RowWitness.topPrime 1627 },
  { lower := 1673, upper := 1714, witness := RowWitness.topPrime 1669 },
  { lower := 1715, upper := 1754, witness := RowWitness.topPrime 1709 },
  { lower := 1755, upper := 1798, witness := RowWitness.topPrime 1753 },
  { lower := 1799, upper := 1834, witness := RowWitness.topPrime 1789 },
  { lower := 1835, upper := 1876, witness := RowWitness.topPrime 1831 },
  { lower := 1877, upper := 1922, witness := RowWitness.topPrime 1877 },
  { lower := 1923, upper := 1958, witness := RowWitness.topPrime 1913 },
  { lower := 1959, upper := 1996, witness := RowWitness.topPrime 1951 },
  { lower := 1997, upper := 2042, witness := RowWitness.topPrime 1997 },
  { lower := 2043, upper := 2084, witness := RowWitness.topPrime 2039 },
  { lower := 2085, upper := 2102, witness := RowWitness.topPrime 2083 },
  { lower := 2125, upper := 2151, witness := RowWitness.topPrime 2113 },
  { lower := 2166, upper := 2170, witness := RowWitness.topPrime 2161 },
  { lower := 2176, upper := 2206, witness := RowWitness.topPrime 2161 },
  { lower := 2207, upper := 2232, witness := RowWitness.topPrime 2207 },
  { lower := 2268, upper := 2295, witness := RowWitness.topPrime 2267 },
  { lower := 2299, upper := 2342, witness := RowWitness.topPrime 2297 },
  { lower := 2343, upper := 2357, witness := RowWitness.topPrime 2341 },
  { lower := 2366, upper := 2402, witness := RowWitness.topPrime 2357 },
  { lower := 2403, upper := 2444, witness := RowWitness.topPrime 2399 },
  { lower := 2445, upper := 2475, witness := RowWitness.topPrime 2441 },
  { lower := 2511, upper := 2548, witness := RowWitness.topPrime 2503 },
  { lower := 2549, upper := 2586, witness := RowWitness.topPrime 2549 },
  { lower := 2592, upper := 2636, witness := RowWitness.topPrime 2591 },
  { lower := 2637, upper := 2646, witness := RowWitness.topPrime 2633 },
  { lower := 2662, upper := 2670, witness := RowWitness.topPrime 2659 },
  { lower := 2673, upper := 2716, witness := RowWitness.topPrime 2671 },
  { lower := 2717, upper := 2718, witness := RowWitness.topPrime 2713 },
  { lower := 2738, upper := 2776, witness := RowWitness.topPrime 2731 },
  { lower := 2777, upper := 2799, witness := RowWitness.topPrime 2777 },
  { lower := 2816, upper := 2828, witness := RowWitness.topPrime 2803 },
  { lower := 2835, upper := 2861, witness := RowWitness.topPrime 2833 },
  { lower := 2873, upper := 2906, witness := RowWitness.topPrime 2861 },
  { lower := 2907, upper := 2948, witness := RowWitness.topPrime 2903 },
  { lower := 2949, upper := 2949, witness := RowWitness.topPrime 2939 },
  { lower := 3000, upper := 3044, witness := RowWitness.topPrime 2999 },
  { lower := 3045, upper := 3070, witness := RowWitness.topPrime 3041 },
  { lower := 3072, upper := 3112, witness := RowWitness.topPrime 3067 },
  { lower := 3113, upper := 3123, witness := RowWitness.topPrime 3109 },
  { lower := 3125, upper := 3132, witness := RowWitness.topPrime 3121 },
  { lower := 3146, upper := 3182, witness := RowWitness.topPrime 3137 },
  { lower := 3183, upper := 3204, witness := RowWitness.topPrime 3181 },
  { lower := 3211, upper := 3224, witness := RowWitness.topPrime 3209 },
  { lower := 3249, upper := 3274, witness := RowWitness.topPrime 3229 },
  { lower := 3275, upper := 3295, witness := RowWitness.topPrime 3271 },
  { lower := 3362, upper := 3406, witness := RowWitness.topPrime 3361 },
  { lower := 3407, upper := 3447, witness := RowWitness.topPrime 3407 },
  { lower := 3468, upper := 3475, witness := RowWitness.topPrime 3467 },
  { lower := 3500, upper := 3544, witness := RowWitness.topPrime 3499 },
  { lower := 3545, upper := 3545, witness := RowWitness.topPrime 3541 },
  { lower := 3549, upper := 3554, witness := RowWitness.topPrime 3547 },
  { lower := 3584, upper := 3594, witness := RowWitness.topPrime 3583 },
  { lower := 3610, upper := 3652, witness := RowWitness.topPrime 3607 },
  { lower := 3653, upper := 3675, witness := RowWitness.topPrime 3643 },
  { lower := 3718, upper := 3743, witness := RowWitness.topPrime 3709 },
  { lower := 3750, upper := 3784, witness := RowWitness.topPrime 3739 },
  { lower := 3785, upper := 3802, witness := RowWitness.topPrime 3779 },
  { lower := 3844, upper := 3878, witness := RowWitness.topPrime 3833 },
  { lower := 3879, upper := 3922, witness := RowWitness.topPrime 3877 },
  { lower := 3923, upper := 3932, witness := RowWitness.topPrime 3923 },
  { lower := 3993, upper := 4034, witness := RowWitness.topPrime 3989 },
  { lower := 4035, upper := 4038, witness := RowWitness.topPrime 4027 },
  { lower := 4056, upper := 4091, witness := RowWitness.topPrime 4051 },
  { lower := 4096, upper := 4101, witness := RowWitness.topPrime 4093 },
  { lower := 4107, upper := 4144, witness := RowWitness.topPrime 4099 },
  { lower := 4145, upper := 4170, witness := RowWitness.topPrime 4139 },
  { lower := 4225, upper := 4264, witness := RowWitness.topPrime 4219 },
  { lower := 4265, upper := 4280, witness := RowWitness.topPrime 4261 },
  { lower := 4335, upper := 4372, witness := RowWitness.topPrime 4327 },
  { lower := 4373, upper := 4418, witness := RowWitness.topPrime 4373 },
  { lower := 4419, upper := 4420, witness := RowWitness.topPrime 4409 },
  { lower := 4500, upper := 4504, witness := RowWitness.topPrime 4493 },
  { lower := 4608, upper := 4608, witness := RowWitness.topPrime 4603 },
  { lower := 4617, upper := 4648, witness := RowWitness.topPrime 4603 },
  { lower := 4649, upper := 4662, witness := RowWitness.topPrime 4649 },
  { lower := 4732, upper := 4738, witness := RowWitness.topPrime 4729 },
  { lower := 4805, upper := 4846, witness := RowWitness.topPrime 4801 },
  { lower := 4847, upper := 4847, witness := RowWitness.topPrime 4831 },
  { lower := 4901, upper := 4905, witness := RowWitness.topPrime 4889 },
  { lower := 4913, upper := 4946, witness := RowWitness.topPrime 4909 },
  { lower := 5043, upper := 5084, witness := RowWitness.topPrime 5039 },
  { lower := 5085, upper := 5099, witness := RowWitness.topPrime 5081 },
  { lower := 5103, upper := 5115, witness := RowWitness.topPrime 5101 },
  { lower := 5120, upper := 5164, witness := RowWitness.topPrime 5119 },
  { lower := 5165, upper := 5165, witness := RowWitness.topPrime 5153 },
  { lower := 5239, upper := 5247, witness := RowWitness.topPrime 5237 },
  { lower := 5346, upper := 5369, witness := RowWitness.topPrime 5333 },
  { lower := 5415, upper := 5453, witness := RowWitness.topPrime 5413 },
  { lower := 5488, upper := 5528, witness := RowWitness.topPrime 5483 },
  { lower := 5529, upper := 5533, witness := RowWitness.topPrime 5527 },
  { lower := 5577, upper := 5618, witness := RowWitness.topPrime 5573 },
  { lower := 5619, upper := 5622, witness := RowWitness.topPrime 5591 },
  { lower := 5625, upper := 5668, witness := RowWitness.topPrime 5623 },
  { lower := 5669, upper := 5670, witness := RowWitness.topPrime 5669 },
  { lower := 5766, upper := 5794, witness := RowWitness.topPrime 5749 },
  { lower := 5795, upper := 5821, witness := RowWitness.topPrime 5791 },
  { lower := 5832, upper := 5872, witness := RowWitness.topPrime 5827 },
  { lower := 5873, upper := 5876, witness := RowWitness.topPrime 5869 },
  { lower := 5915, upper := 5932, witness := RowWitness.topPrime 5903 },
  { lower := 6075, upper := 6118, witness := RowWitness.topPrime 6073 },
  { lower := 6119, upper := 6120, witness := RowWitness.topPrime 6113 },
  { lower := 6144, upper := 6188, witness := RowWitness.topPrime 6143 },
  { lower := 6189, upper := 6189, witness := RowWitness.topPrime 6173 },
  { lower := 6358, upper := 6363, witness := RowWitness.topPrime 6353 },
  { lower := 6517, upper := 6536, witness := RowWitness.topPrime 6491 },
  { lower := 6537, upper := 6543, witness := RowWitness.topPrime 6529 },
  { lower := 6561, upper := 6562, witness := RowWitness.topPrime 6553 },
  { lower := 6591, upper := 6606, witness := RowWitness.topPrime 6581 },
  { lower := 6655, upper := 6698, witness := RowWitness.topPrime 6653 },
  { lower := 6699, upper := 6700, witness := RowWitness.topPrime 6691 },
  { lower := 6727, upper := 6764, witness := RowWitness.topPrime 6719 },
  { lower := 6765, upper := 6772, witness := RowWitness.topPrime 6763 },
  { lower := 6845, upper := 6849, witness := RowWitness.topPrime 6841 },
  { lower := 6859, upper := 6902, witness := RowWitness.topPrime 6857 },
  { lower := 6903, upper := 6905, witness := RowWitness.topPrime 6899 },
  { lower := 7203, upper := 7213, witness := RowWitness.topPrime 7193 },
  { lower := 7220, upper := 7264, witness := RowWitness.topPrime 7219 },
  { lower := 7265, upper := 7265, witness := RowWitness.topPrime 7253 },
  { lower := 7514, upper := 7552, witness := RowWitness.topPrime 7507 },
  { lower := 7553, upper := 7594, witness := RowWitness.topPrime 7549 },
  { lower := 7595, upper := 7614, witness := RowWitness.topPrime 7591 },
  { lower := 7688, upper := 7725, witness := RowWitness.topPrime 7687 },
  { lower := 7803, upper := 7821, witness := RowWitness.topPrime 7793 },
  { lower := 7986, upper := 7987, witness := RowWitness.topPrime 7963 },
  { lower := 8019, upper := 8031, witness := RowWitness.topPrime 8017 },
  { lower := 8125, upper := 8137, witness := RowWitness.topPrime 8123 },
  { lower := 8214, upper := 8254, witness := RowWitness.topPrime 8209 },
  { lower := 8255, upper := 8259, witness := RowWitness.topPrime 8243 },
  { lower := 8262, upper := 8277, witness := RowWitness.topPrime 8243 },
  { lower := 8303, upper := 8307, witness := RowWitness.topPrime 8297 },
  { lower := 8405, upper := 8434, witness := RowWitness.topPrime 8389 },
  { lower := 8435, upper := 8450, witness := RowWitness.topPrime 8431 },
  { lower := 8664, upper := 8708, witness := RowWitness.topPrime 8663 },
  { lower := 8709, upper := 8715, witness := RowWitness.topPrime 8707 },
  { lower := 8748, upper := 8792, witness := RowWitness.topPrime 8747 },
  { lower := 8793, upper := 8795, witness := RowWitness.topPrime 8783 },
  { lower := 8959, upper := 8963, witness := RowWitness.topPrime 8951 },
  { lower := 9245, upper := 9286, witness := RowWitness.topPrime 9241 },
  { lower := 9287, upper := 9296, witness := RowWitness.topPrime 9283 },
  { lower := 9386, upper := 9420, witness := RowWitness.topPrime 9377 },
  { lower := 9604, upper := 9646, witness := RowWitness.topPrime 9601 },
  { lower := 9647, upper := 9649, witness := RowWitness.topPrime 9643 },
  { lower := 10092, upper := 10136, witness := RowWitness.topPrime 10091 },
  { lower := 10137, upper := 10137, witness := RowWitness.topPrime 10133 },
  { lower := 10240, upper := 10251, witness := RowWitness.topPrime 10223 },
  { lower := 10633, upper := 10676, witness := RowWitness.topPrime 10631 },
  { lower := 10677, upper := 10678, witness := RowWitness.topPrime 10667 },
  { lower := 10935, upper := 10954, witness := RowWitness.topPrime 10909 },
  { lower := 10955, upper := 10994, witness := RowWitness.topPrime 10949 },
  { lower := 10995, upper := 11021, witness := RowWitness.topPrime 10993 },
  { lower := 11264, upper := 11295, witness := RowWitness.topPrime 11261 },
  { lower := 11552, upper := 11577, witness := RowWitness.topPrime 11551 },
  { lower := 11664, upper := 11702, witness := RowWitness.topPrime 11657 },
  { lower := 11703, upper := 11707, witness := RowWitness.topPrime 11701 },
  { lower := 11774, upper := 11788, witness := RowWitness.topPrime 11743 },
  { lower := 11789, upper := 11812, witness := RowWitness.topPrime 11789 },
  { lower := 11913, upper := 11920, witness := RowWitness.topPrime 11909 },
  { lower := 12005, upper := 12024, witness := RowWitness.topPrime 11987 },
  { lower := 12288, upper := 12319, witness := RowWitness.topPrime 12281 },
  { lower := 12321, upper := 12333, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12538, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13166, witness := RowWitness.topPrime 13121 },
  { lower := 13167, upper := 13167, witness := RowWitness.topPrime 13163 },
  { lower := 13312, upper := 13354, witness := RowWitness.topPrime 13309 },
  { lower := 13355, upper := 13355, witness := RowWitness.topPrime 13339 },
  { lower := 13454, upper := 13496, witness := RowWitness.topPrime 13451 },
  { lower := 13497, upper := 13499, witness := RowWitness.topPrime 13487 },
  { lower := 13718, upper := 13735, witness := RowWitness.topPrime 13711 },
  { lower := 13750, upper := 13763, witness := RowWitness.topPrime 13729 },
  { lower := 14336, upper := 14342, witness := RowWitness.topPrime 14327 },
  { lower := 14375, upper := 14381, witness := RowWitness.topPrime 14369 },
  { lower := 14406, upper := 14446, witness := RowWitness.topPrime 14401 },
  { lower := 14447, upper := 14451, witness := RowWitness.topPrime 14447 },
  { lower := 15138, upper := 15174, witness := RowWitness.topPrime 15137 },
  { lower := 15376, upper := 15418, witness := RowWitness.topPrime 15373 },
  { lower := 15419, upper := 15421, witness := RowWitness.topPrime 15413 },
  { lower := 15979, upper := 16017, witness := RowWitness.topPrime 15973 },
  { lower := 16428, upper := 16429, witness := RowWitness.topPrime 16427 },
  { lower := 16807, upper := 16832, witness := RowWitness.topPrime 16787 },
  { lower := 16833, upper := 16855, witness := RowWitness.topPrime 16831 },
  { lower := 17303, upper := 17343, witness := RowWitness.topPrime 17299 },
  { lower := 17500, upper := 17541, witness := RowWitness.topPrime 17497 },
  { lower := 18259, upper := 18270, witness := RowWitness.topPrime 18257 },
  { lower := 18491, upper := 18526, witness := RowWitness.topPrime 18481 },
  { lower := 18527, upper := 18536, witness := RowWitness.topPrime 18523 },
  { lower := 19208, upper := 19211, witness := RowWitness.topPrime 19207 },
  { lower := 19220, upper := 19253, witness := RowWitness.topPrime 19219 },
  { lower := 19375, upper := 19388, witness := RowWitness.topPrime 19373 },
  { lower := 19683, upper := 19697, witness := RowWitness.topPrime 19681 },
  { lower := 20000, upper := 20010, witness := RowWitness.topPrime 19997 },
  { lower := 20181, upper := 20222, witness := RowWitness.topPrime 20177 },
  { lower := 20223, upper := 20226, witness := RowWitness.topPrime 20219 },
  { lower := 20577, upper := 20580, witness := RowWitness.topPrime 20563 },
  { lower := 21142, upper := 21184, witness := RowWitness.topPrime 21139 },
  { lower := 21185, upper := 21186, witness := RowWitness.topPrime 21179 },
  { lower := 21866, upper := 21908, witness := RowWitness.topPrime 21863 },
  { lower := 21909, upper := 21920, witness := RowWitness.topPrime 21893 },
  { lower := 22627, upper := 22644, witness := RowWitness.topPrime 22621 },
  { lower := 23548, upper := 23579, witness := RowWitness.topPrime 23539 },
  { lower := 24025, upper := 24068, witness := RowWitness.topPrime 24023 },
  { lower := 24069, upper := 24082, witness := RowWitness.topPrime 24061 },
  { lower := 24576, upper := 24610, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25031, witness := RowWitness.topPrime 24989 },
  { lower := 25230, upper := 25260, witness := RowWitness.topPrime 25229 },
  { lower := 26624, upper := 26642, witness := RowWitness.topPrime 26597 },
  { lower := 26643, upper := 26665, witness := RowWitness.topPrime 26641 },
  { lower := 26908, upper := 26948, witness := RowWitness.topPrime 26903 },
  { lower := 26949, upper := 26953, witness := RowWitness.topPrime 26947 },
  { lower := 28577, upper := 28606, witness := RowWitness.topPrime 28573 },
  { lower := 28830, upper := 28857, witness := RowWitness.topPrime 28817 },
  { lower := 30618, upper := 30638, witness := RowWitness.topPrime 30593 },
  { lower := 30639, upper := 30658, witness := RowWitness.topPrime 30637 },
  { lower := 30752, upper := 30772, witness := RowWitness.topPrime 30727 },
  { lower := 30773, upper := 30797, witness := RowWitness.topPrime 30773 },
  { lower := 31250, upper := 31258, witness := RowWitness.topPrime 31249 },
  { lower := 31944, upper := 31952, witness := RowWitness.topPrime 31907 },
  { lower := 31953, upper := 31953, witness := RowWitness.largeDivisor 17115057889135301844305933153483940914333379716590980402543177863334491171589963438810421784811903438715696792928298074537370064927331842057 },
  { lower := 31954, upper := 31954, witness := RowWitness.largeDivisor 7910645410209584793776604680568545838178158582809445248110404510732639958587463357013165992303057287018274298047716560213022869422975116167 },
  { lower := 31955, upper := 31955, witness := RowWitness.largeDivisor 349804778394989631264495571916456741911980374199884899090657205322753924647181384460358432264866145350301953509835095630091048567984514993 },
  { lower := 31956, upper := 31956, witness := RowWitness.largeDivisor 291924200835430080870370325294116046290066981038637883509376414219521686410355382894996711100388136968929521214882751382930887601548970049 },
  { lower := 31957, upper := 31984, witness := RowWitness.topPrime 31957 },
  { lower := 32805, upper := 32813, witness := RowWitness.topPrime 32803 },
  { lower := 33282, upper := 33292, witness := RowWitness.topPrime 33247 },
  { lower := 33293, upper := 33320, witness := RowWitness.topPrime 33289 },
  { lower := 33620, upper := 33659, witness := RowWitness.topPrime 33619 },
  { lower := 34391, upper := 34420, witness := RowWitness.topPrime 34381 },
  { lower := 35152, upper := 35176, witness := RowWitness.topPrime 35149 },
  { lower := 36980, upper := 37024, witness := RowWitness.topPrime 36979 },
  { lower := 37025, upper := 37025, witness := RowWitness.topPrime 37021 },
  { lower := 43740, upper := 43766, witness := RowWitness.topPrime 43721 },
  { lower := 43767, upper := 43785, witness := RowWitness.topPrime 43759 },
  { lower := 43940, upper := 43968, witness := RowWitness.topPrime 43933 },
  { lower := 48020, upper := 48058, witness := RowWitness.topPrime 48017 },
  { lower := 48114, upper := 48119, witness := RowWitness.topPrime 48109 },
  { lower := 48778, upper := 48794, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49175, witness := RowWitness.topPrime 49139 },
  { lower := 50430, upper := 50466, witness := RowWitness.topPrime 50423 },
  { lower := 65625, upper := 65655, witness := RowWitness.topPrime 65617 },
  { lower := 68782, upper := 68795, witness := RowWitness.topPrime 68777 },
  { lower := 73205, upper := 73212, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73740, witness := RowWitness.topPrime 73727 },
  { lower := 98304, upper := 98305, witness := RowWitness.topPrime 98299 },
  { lower := 150903, upper := 150943, witness := RowWitness.topPrime 150901 },
  { lower := 327701, upper := 327725, witness := RowWitness.topPrime 327689 },
  { lower := 655402, upper := 655405, witness := RowWitness.topPrime 655399 }
]

def row046_layers : List CoverLayer := [
  { lower := 2070, upper := 4140, M := 38 },
  { lower := 4140, upper := 8280, M := 36 },
  { lower := 8280, upper := 16560, M := 34 },
  { lower := 16560, upper := 33120, M := 32 },
  { lower := 33120, upper := 66240, M := 30 },
  { lower := 66240, upper := 132480, M := 29 },
  { lower := 132480, upper := 264960, M := 27 },
  { lower := 264960, upper := 529920, M := 26 },
  { lower := 529920, upper := 1059840, M := 25 },
  { lower := 1059840, upper := 2119680, M := 23 },
  { lower := 2119680, upper := 4239360, M := 22 },
  { lower := 4239360, upper := 8478720, M := 21 },
  { lower := 8478720, upper := 16957440, M := 20 },
  { lower := 16957440, upper := 33914880, M := 19 },
  { lower := 33914880, upper := 67829760, M := 18 },
  { lower := 67829760, upper := 135659520, M := 17 },
  { lower := 135659520, upper := 271319040, M := 16 },
  { lower := 271319040, upper := 542638080, M := 15 },
  { lower := 542638080, upper := 1085276160, M := 15 },
  { lower := 1085276160, upper := 2170552320, M := 14 },
  { lower := 2170552320, upper := 4341104640, M := 13 },
  { lower := 4341104640, upper := 8682209280, M := 13 },
  { lower := 8682209280, upper := 17364418560, M := 12 },
  { lower := 17364418560, upper := 34728837120, M := 11 },
  { lower := 34728837120, upper := 69457674240, M := 11 },
  { lower := 69457674240, upper := 138915348480, M := 10 },
  { lower := 138915348480, upper := 277830696960, M := 10 },
  { lower := 277830696960, upper := 555661393920, M := 9 },
  { lower := 555661393920, upper := 1111322787840, M := 9 },
  { lower := 1111322787840, upper := 2222645575680, M := 8 },
  { lower := 2222645575680, upper := 4445291151360, M := 8 },
  { lower := 4445291151360, upper := 8890582302720, M := 8 },
  { lower := 8890582302720, upper := 17781164605440, M := 7 },
  { lower := 17781164605440, upper := 35562329210880, M := 7 },
  { lower := 35562329210880, upper := 71124658421760, M := 7 },
  { lower := 71124658421760, upper := 142249316843520, M := 6 },
  { lower := 142249316843520, upper := 284498633687040, M := 6 },
  { lower := 284498633687040, upper := 568997267374080, M := 6 },
  { lower := 568997267374080, upper := 1137994534748160, M := 5 },
  { lower := 1137994534748160, upper := 2275989069496320, M := 5 },
  { lower := 2275989069496320, upper := 4551978138992640, M := 5 },
  { lower := 4551978138992640, upper := 9103956277985280, M := 5 },
  { lower := 9103956277985280, upper := 18207912555970560, M := 4 },
  { lower := 18207912555970560, upper := 36415825111941120, M := 4 },
  { lower := 36415825111941120, upper := 72831650223882240, M := 4 },
  { lower := 72831650223882240, upper := 145663300447764480, M := 4 },
  { lower := 145663300447764480, upper := 291326600895528960, M := 4 },
  { lower := 291326600895528960, upper := 582653201791057920, M := 4 },
  { lower := 582653201791057920, upper := 1165306403582115840, M := 3 },
  { lower := 1165306403582115840, upper := 2330612807164231680, M := 3 },
  { lower := 2330612807164231680, upper := 4661225614328463360, M := 3 },
  { lower := 4661225614328463360, upper := 9322451228656926720, M := 3 },
  { lower := 9322451228656926720, upper := 18644902457313853440, M := 3 },
  { lower := 18644902457313853440, upper := 37289804914627706880, M := 3 },
  { lower := 37289804914627706880, upper := 74579609829255413760, M := 3 },
  { lower := 74579609829255413760, upper := 149159219658510827520, M := 2 },
  { lower := 149159219658510827520, upper := 298318439317021655040, M := 2 },
  { lower := 298318439317021655040, upper := 596636878634043310080, M := 2 },
  { lower := 596636878634043310080, upper := 1193273757268086620160, M := 2 },
  { lower := 1193273757268086620160, upper := 2386547514536173240320, M := 2 },
  { lower := 2386547514536173240320, upper := 4773095029072346480640, M := 2 },
  { lower := 4773095029072346480640, upper := 9546190058144692961280, M := 2 },
  { lower := 9546190058144692961280, upper := 19092380116289385922560, M := 2 },
  { lower := 19092380116289385922560, upper := 38184760232578771845120, M := 2 },
  { lower := 38184760232578771845120, upper := 76369520465157543690240, M := 2 },
  { lower := 76369520465157543690240, upper := 152739040930315087380480, M := 2 },
  { lower := 152739040930315087380480, upper := 305478081860630174760960, M := 2 },
  { lower := 305478081860630174760960, upper := 610956163721260349521920, M := 2 },
  { lower := 610956163721260349521920, upper := 1000000000000000000000000, M := 1 }
]

def row046 : FiniteCoverRow := {
  height := row046_height,
  goods := row046_goods,
  layers := row046_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_good000_checked :
    goodSegmentCheck 46 15 31
      { lower := 94, upper := 134, witness := RowWitness.topPrime 89 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good001_checked :
    goodSegmentCheck 46 15 31
      { lower := 135, upper := 176, witness := RowWitness.topPrime 131 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good002_checked :
    goodSegmentCheck 46 15 31
      { lower := 177, upper := 218, witness := RowWitness.topPrime 173 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good003_checked :
    goodSegmentCheck 46 15 31
      { lower := 219, upper := 256, witness := RowWitness.topPrime 211 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good004_checked :
    goodSegmentCheck 46 15 31
      { lower := 257, upper := 302, witness := RowWitness.topPrime 257 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good005_checked :
    goodSegmentCheck 46 15 31
      { lower := 303, upper := 338, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good006_checked :
    goodSegmentCheck 46 15 31
      { lower := 339, upper := 382, witness := RowWitness.topPrime 337 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good007_checked :
    goodSegmentCheck 46 15 31
      { lower := 383, upper := 428, witness := RowWitness.topPrime 383 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good008_checked :
    goodSegmentCheck 46 15 31
      { lower := 429, upper := 466, witness := RowWitness.topPrime 421 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good009_checked :
    goodSegmentCheck 46 15 31
      { lower := 467, upper := 512, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good010_checked :
    goodSegmentCheck 46 15 31
      { lower := 513, upper := 554, witness := RowWitness.topPrime 509 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good011_checked :
    goodSegmentCheck 46 15 31
      { lower := 555, upper := 592, witness := RowWitness.topPrime 547 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good012_checked :
    goodSegmentCheck 46 15 31
      { lower := 593, upper := 638, witness := RowWitness.topPrime 593 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good013_checked :
    goodSegmentCheck 46 15 31
      { lower := 639, upper := 676, witness := RowWitness.topPrime 631 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good014_checked :
    goodSegmentCheck 46 15 31
      { lower := 677, upper := 722, witness := RowWitness.topPrime 677 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good015_checked :
    goodSegmentCheck 46 15 31
      { lower := 723, upper := 764, witness := RowWitness.topPrime 719 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_good016_checked :
    goodSegmentCheck 46 15 31
      { lower := 765, upper := 806, witness := RowWitness.topPrime 761 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good017_checked :
    goodSegmentCheck 46 15 31
      { lower := 807, upper := 842, witness := RowWitness.topPrime 797 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good018_checked :
    goodSegmentCheck 46 15 31
      { lower := 843, upper := 884, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good019_checked :
    goodSegmentCheck 46 15 31
      { lower := 885, upper := 928, witness := RowWitness.topPrime 883 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good020_checked :
    goodSegmentCheck 46 15 31
      { lower := 929, upper := 974, witness := RowWitness.topPrime 929 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good021_checked :
    goodSegmentCheck 46 15 31
      { lower := 975, upper := 1016, witness := RowWitness.topPrime 971 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good022_checked :
    goodSegmentCheck 46 15 31
      { lower := 1017, upper := 1058, witness := RowWitness.topPrime 1013 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good023_checked :
    goodSegmentCheck 46 15 31
      { lower := 1059, upper := 1096, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good024_checked :
    goodSegmentCheck 46 15 31
      { lower := 1097, upper := 1142, witness := RowWitness.topPrime 1097 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good025_checked :
    goodSegmentCheck 46 15 31
      { lower := 1143, upper := 1174, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good026_checked :
    goodSegmentCheck 46 15 31
      { lower := 1175, upper := 1216, witness := RowWitness.topPrime 1171 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good027_checked :
    goodSegmentCheck 46 15 31
      { lower := 1217, upper := 1262, witness := RowWitness.topPrime 1217 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good028_checked :
    goodSegmentCheck 46 15 31
      { lower := 1263, upper := 1304, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good029_checked :
    goodSegmentCheck 46 15 31
      { lower := 1305, upper := 1348, witness := RowWitness.topPrime 1303 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good030_checked :
    goodSegmentCheck 46 15 31
      { lower := 1349, upper := 1372, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good031_checked :
    goodSegmentCheck 46 15 31
      { lower := 1373, upper := 1418, witness := RowWitness.topPrime 1373 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_good032_checked :
    goodSegmentCheck 46 15 31
      { lower := 1419, upper := 1454, witness := RowWitness.topPrime 1409 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good033_checked :
    goodSegmentCheck 46 15 31
      { lower := 1455, upper := 1498, witness := RowWitness.topPrime 1453 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good034_checked :
    goodSegmentCheck 46 15 31
      { lower := 1499, upper := 1544, witness := RowWitness.topPrime 1499 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good035_checked :
    goodSegmentCheck 46 15 31
      { lower := 1545, upper := 1588, witness := RowWitness.topPrime 1543 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good036_checked :
    goodSegmentCheck 46 15 31
      { lower := 1589, upper := 1628, witness := RowWitness.topPrime 1583 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good037_checked :
    goodSegmentCheck 46 15 31
      { lower := 1629, upper := 1672, witness := RowWitness.topPrime 1627 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good038_checked :
    goodSegmentCheck 46 15 31
      { lower := 1673, upper := 1714, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good039_checked :
    goodSegmentCheck 46 15 31
      { lower := 1715, upper := 1754, witness := RowWitness.topPrime 1709 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good040_checked :
    goodSegmentCheck 46 15 31
      { lower := 1755, upper := 1798, witness := RowWitness.topPrime 1753 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good041_checked :
    goodSegmentCheck 46 15 31
      { lower := 1799, upper := 1834, witness := RowWitness.topPrime 1789 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good042_checked :
    goodSegmentCheck 46 15 31
      { lower := 1835, upper := 1876, witness := RowWitness.topPrime 1831 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good043_checked :
    goodSegmentCheck 46 15 31
      { lower := 1877, upper := 1922, witness := RowWitness.topPrime 1877 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good044_checked :
    goodSegmentCheck 46 15 31
      { lower := 1923, upper := 1958, witness := RowWitness.topPrime 1913 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good045_checked :
    goodSegmentCheck 46 15 31
      { lower := 1959, upper := 1996, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good046_checked :
    goodSegmentCheck 46 15 31
      { lower := 1997, upper := 2042, witness := RowWitness.topPrime 1997 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row046_good047_checked :
    goodSegmentCheck 46 15 31
      { lower := 2043, upper := 2084, witness := RowWitness.topPrime 2039 } = true := by
  exact good_top_prime_checked (i := 46) (r := 15) (s := 31) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_good047_checked
