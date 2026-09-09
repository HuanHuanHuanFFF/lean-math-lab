import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row047_height : HeightCertificateDatum := { i := 47, r := 15, s := 32, n0Power10 := 19 }

def row047_goods : List GoodSegment := [
  { lower := 96, upper := 135, witness := RowWitness.topPrime 89 },
  { lower := 136, upper := 177, witness := RowWitness.topPrime 131 },
  { lower := 178, upper := 219, witness := RowWitness.topPrime 173 },
  { lower := 220, upper := 257, witness := RowWitness.topPrime 211 },
  { lower := 258, upper := 303, witness := RowWitness.topPrime 257 },
  { lower := 304, upper := 339, witness := RowWitness.topPrime 293 },
  { lower := 340, upper := 383, witness := RowWitness.topPrime 337 },
  { lower := 384, upper := 429, witness := RowWitness.topPrime 383 },
  { lower := 430, upper := 467, witness := RowWitness.topPrime 421 },
  { lower := 468, upper := 513, witness := RowWitness.topPrime 467 },
  { lower := 514, upper := 555, witness := RowWitness.topPrime 509 },
  { lower := 556, upper := 593, witness := RowWitness.topPrime 547 },
  { lower := 594, upper := 639, witness := RowWitness.topPrime 593 },
  { lower := 640, upper := 677, witness := RowWitness.topPrime 631 },
  { lower := 678, upper := 723, witness := RowWitness.topPrime 677 },
  { lower := 724, upper := 765, witness := RowWitness.topPrime 719 },
  { lower := 766, upper := 807, witness := RowWitness.topPrime 761 },
  { lower := 808, upper := 843, witness := RowWitness.topPrime 797 },
  { lower := 844, upper := 885, witness := RowWitness.topPrime 839 },
  { lower := 886, upper := 929, witness := RowWitness.topPrime 883 },
  { lower := 930, upper := 975, witness := RowWitness.topPrime 929 },
  { lower := 976, upper := 1017, witness := RowWitness.topPrime 971 },
  { lower := 1018, upper := 1059, witness := RowWitness.topPrime 1013 },
  { lower := 1060, upper := 1097, witness := RowWitness.topPrime 1051 },
  { lower := 1098, upper := 1143, witness := RowWitness.topPrime 1097 },
  { lower := 1144, upper := 1175, witness := RowWitness.topPrime 1129 },
  { lower := 1176, upper := 1217, witness := RowWitness.topPrime 1171 },
  { lower := 1218, upper := 1263, witness := RowWitness.topPrime 1217 },
  { lower := 1264, upper := 1305, witness := RowWitness.topPrime 1259 },
  { lower := 1306, upper := 1349, witness := RowWitness.topPrime 1303 },
  { lower := 1350, upper := 1373, witness := RowWitness.topPrime 1327 },
  { lower := 1374, upper := 1419, witness := RowWitness.topPrime 1373 },
  { lower := 1420, upper := 1455, witness := RowWitness.topPrime 1409 },
  { lower := 1456, upper := 1499, witness := RowWitness.topPrime 1453 },
  { lower := 1500, upper := 1545, witness := RowWitness.topPrime 1499 },
  { lower := 1546, upper := 1589, witness := RowWitness.topPrime 1543 },
  { lower := 1590, upper := 1629, witness := RowWitness.topPrime 1583 },
  { lower := 1630, upper := 1673, witness := RowWitness.topPrime 1627 },
  { lower := 1674, upper := 1715, witness := RowWitness.topPrime 1669 },
  { lower := 1716, upper := 1755, witness := RowWitness.topPrime 1709 },
  { lower := 1756, upper := 1799, witness := RowWitness.topPrime 1753 },
  { lower := 1800, upper := 1835, witness := RowWitness.topPrime 1789 },
  { lower := 1836, upper := 1877, witness := RowWitness.topPrime 1831 },
  { lower := 1878, upper := 1923, witness := RowWitness.topPrime 1877 },
  { lower := 1924, upper := 1959, witness := RowWitness.topPrime 1913 },
  { lower := 1960, upper := 1997, witness := RowWitness.topPrime 1951 },
  { lower := 1998, upper := 2043, witness := RowWitness.topPrime 1997 },
  { lower := 2044, upper := 2085, witness := RowWitness.topPrime 2039 },
  { lower := 2086, upper := 2129, witness := RowWitness.topPrime 2083 },
  { lower := 2130, upper := 2162, witness := RowWitness.topPrime 2129 },
  { lower := 2166, upper := 2171, witness := RowWitness.topPrime 2161 },
  { lower := 2176, upper := 2207, witness := RowWitness.topPrime 2161 },
  { lower := 2208, upper := 2233, witness := RowWitness.topPrime 2207 },
  { lower := 2268, upper := 2296, witness := RowWitness.topPrime 2267 },
  { lower := 2299, upper := 2343, witness := RowWitness.topPrime 2297 },
  { lower := 2344, upper := 2358, witness := RowWitness.topPrime 2341 },
  { lower := 2366, upper := 2403, witness := RowWitness.topPrime 2357 },
  { lower := 2404, upper := 2445, witness := RowWitness.topPrime 2399 },
  { lower := 2446, upper := 2476, witness := RowWitness.topPrime 2441 },
  { lower := 2511, upper := 2549, witness := RowWitness.topPrime 2503 },
  { lower := 2550, upper := 2587, witness := RowWitness.topPrime 2549 },
  { lower := 2592, upper := 2637, witness := RowWitness.topPrime 2591 },
  { lower := 2638, upper := 2679, witness := RowWitness.topPrime 2633 },
  { lower := 2680, upper := 2723, witness := RowWitness.topPrime 2677 },
  { lower := 2724, upper := 2734, witness := RowWitness.topPrime 2719 },
  { lower := 2738, upper := 2777, witness := RowWitness.topPrime 2731 },
  { lower := 2778, upper := 2800, witness := RowWitness.topPrime 2777 },
  { lower := 2816, upper := 2829, witness := RowWitness.topPrime 2803 },
  { lower := 2875, upper := 2907, witness := RowWitness.topPrime 2861 },
  { lower := 2908, upper := 2949, witness := RowWitness.topPrime 2903 },
  { lower := 2950, upper := 2962, witness := RowWitness.topPrime 2939 },
  { lower := 3025, upper := 3069, witness := RowWitness.topPrime 3023 },
  { lower := 3070, upper := 3113, witness := RowWitness.topPrime 3067 },
  { lower := 3114, upper := 3118, witness := RowWitness.topPrime 3109 },
  { lower := 3125, upper := 3133, witness := RowWitness.topPrime 3121 },
  { lower := 3146, upper := 3183, witness := RowWitness.topPrime 3137 },
  { lower := 3184, upper := 3227, witness := RowWitness.topPrime 3181 },
  { lower := 3228, upper := 3246, witness := RowWitness.topPrime 3221 },
  { lower := 3249, upper := 3275, witness := RowWitness.topPrime 3229 },
  { lower := 3276, upper := 3296, witness := RowWitness.topPrime 3271 },
  { lower := 3362, upper := 3407, witness := RowWitness.topPrime 3361 },
  { lower := 3408, upper := 3448, witness := RowWitness.topPrime 3407 },
  { lower := 3456, upper := 3495, witness := RowWitness.topPrime 3449 },
  { lower := 3496, upper := 3537, witness := RowWitness.topPrime 3491 },
  { lower := 3538, upper := 3546, witness := RowWitness.topPrime 3533 },
  { lower := 3549, upper := 3555, witness := RowWitness.topPrime 3547 },
  { lower := 3584, upper := 3595, witness := RowWitness.topPrime 3583 },
  { lower := 3610, upper := 3653, witness := RowWitness.topPrime 3607 },
  { lower := 3654, upper := 3676, witness := RowWitness.topPrime 3643 },
  { lower := 3703, upper := 3747, witness := RowWitness.topPrime 3701 },
  { lower := 3748, upper := 3785, witness := RowWitness.topPrime 3739 },
  { lower := 3786, upper := 3803, witness := RowWitness.topPrime 3779 },
  { lower := 3844, upper := 3879, witness := RowWitness.topPrime 3833 },
  { lower := 3880, upper := 3923, witness := RowWitness.topPrime 3877 },
  { lower := 3924, upper := 3933, witness := RowWitness.topPrime 3923 },
  { lower := 3971, upper := 4013, witness := RowWitness.topPrime 3967 },
  { lower := 4014, upper := 4039, witness := RowWitness.topPrime 4013 },
  { lower := 4046, upper := 4046, witness := RowWitness.topPrime 4027 },
  { lower := 4056, upper := 4092, witness := RowWitness.topPrime 4051 },
  { lower := 4096, upper := 4102, witness := RowWitness.topPrime 4093 },
  { lower := 4107, upper := 4145, witness := RowWitness.topPrime 4099 },
  { lower := 4146, upper := 4171, witness := RowWitness.topPrime 4139 },
  { lower := 4224, upper := 4265, witness := RowWitness.topPrime 4219 },
  { lower := 4266, upper := 4278, witness := RowWitness.topPrime 4261 },
  { lower := 4335, upper := 4373, witness := RowWitness.topPrime 4327 },
  { lower := 4374, upper := 4419, witness := RowWitness.topPrime 4373 },
  { lower := 4420, upper := 4421, witness := RowWitness.topPrime 4409 },
  { lower := 4608, upper := 4609, witness := RowWitness.topPrime 4603 },
  { lower := 4617, upper := 4649, witness := RowWitness.topPrime 4603 },
  { lower := 4650, upper := 4663, witness := RowWitness.topPrime 4649 },
  { lower := 4732, upper := 4739, witness := RowWitness.topPrime 4729 },
  { lower := 4761, upper := 4778, witness := RowWitness.topPrime 4759 },
  { lower := 4802, upper := 4847, witness := RowWitness.topPrime 4801 },
  { lower := 4848, upper := 4848, witness := RowWitness.topPrime 4831 },
  { lower := 4864, upper := 4907, witness := RowWitness.topPrime 4861 },
  { lower := 4908, upper := 4910, witness := RowWitness.topPrime 4903 },
  { lower := 4913, upper := 4947, witness := RowWitness.topPrime 4909 },
  { lower := 5043, upper := 5085, witness := RowWitness.topPrime 5039 },
  { lower := 5086, upper := 5100, witness := RowWitness.topPrime 5081 },
  { lower := 5103, upper := 5116, witness := RowWitness.topPrime 5101 },
  { lower := 5120, upper := 5165, witness := RowWitness.topPrime 5119 },
  { lower := 5166, upper := 5166, witness := RowWitness.topPrime 5153 },
  { lower := 5239, upper := 5248, witness := RowWitness.topPrime 5237 },
  { lower := 5324, upper := 5336, witness := RowWitness.topPrime 5323 },
  { lower := 5346, upper := 5370, witness := RowWitness.topPrime 5333 },
  { lower := 5376, upper := 5392, witness := RowWitness.topPrime 5351 },
  { lower := 5408, upper := 5453, witness := RowWitness.topPrime 5407 },
  { lower := 5454, upper := 5454, witness := RowWitness.topPrime 5449 },
  { lower := 5488, upper := 5529, witness := RowWitness.topPrime 5483 },
  { lower := 5530, upper := 5534, witness := RowWitness.topPrime 5527 },
  { lower := 5589, upper := 5593, witness := RowWitness.topPrime 5581 },
  { lower := 5625, upper := 5669, witness := RowWitness.topPrime 5623 },
  { lower := 5670, upper := 5671, witness := RowWitness.topPrime 5669 },
  { lower := 5776, upper := 5795, witness := RowWitness.topPrime 5749 },
  { lower := 5796, upper := 5826, witness := RowWitness.topPrime 5791 },
  { lower := 5831, upper := 5873, witness := RowWitness.topPrime 5827 },
  { lower := 5874, upper := 5877, witness := RowWitness.topPrime 5869 },
  { lower := 5888, upper := 5927, witness := RowWitness.topPrime 5881 },
  { lower := 5928, upper := 5933, witness := RowWitness.topPrime 5927 },
  { lower := 6075, upper := 6115, witness := RowWitness.topPrime 6073 },
  { lower := 6144, upper := 6189, witness := RowWitness.topPrime 6143 },
  { lower := 6190, upper := 6190, witness := RowWitness.topPrime 6173 },
  { lower := 6348, upper := 6389, witness := RowWitness.topPrime 6343 },
  { lower := 6390, upper := 6394, witness := RowWitness.topPrime 6389 },
  { lower := 6400, upper := 6404, witness := RowWitness.topPrime 6397 },
  { lower := 6517, upper := 6537, witness := RowWitness.topPrime 6491 },
  { lower := 6538, upper := 6544, witness := RowWitness.topPrime 6529 },
  { lower := 6561, upper := 6563, witness := RowWitness.topPrime 6553 },
  { lower := 6591, upper := 6607, witness := RowWitness.topPrime 6581 },
  { lower := 6655, upper := 6699, witness := RowWitness.topPrime 6653 },
  { lower := 6700, upper := 6701, witness := RowWitness.topPrime 6691 },
  { lower := 6727, upper := 6765, witness := RowWitness.topPrime 6719 },
  { lower := 6766, upper := 6773, witness := RowWitness.topPrime 6763 },
  { lower := 6845, upper := 6850, witness := RowWitness.topPrime 6841 },
  { lower := 6859, upper := 6903, witness := RowWitness.topPrime 6857 },
  { lower := 6904, upper := 6923, witness := RowWitness.topPrime 6899 },
  { lower := 6936, upper := 6958, witness := RowWitness.topPrime 6917 },
  { lower := 7203, upper := 7214, witness := RowWitness.topPrime 7193 },
  { lower := 7220, upper := 7265, witness := RowWitness.topPrime 7219 },
  { lower := 7266, upper := 7266, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7439, witness := RowWitness.topPrime 7393 },
  { lower := 7440, upper := 7452, witness := RowWitness.topPrime 7433 },
  { lower := 7514, upper := 7553, witness := RowWitness.topPrime 7507 },
  { lower := 7554, upper := 7595, witness := RowWitness.topPrime 7549 },
  { lower := 7596, upper := 7615, witness := RowWitness.topPrime 7591 },
  { lower := 7688, upper := 7726, witness := RowWitness.topPrime 7687 },
  { lower := 7803, upper := 7822, witness := RowWitness.topPrime 7793 },
  { lower := 7935, upper := 7979, witness := RowWitness.topPrime 7933 },
  { lower := 7980, upper := 7982, witness := RowWitness.topPrime 7963 },
  { lower := 7986, upper := 7988, witness := RowWitness.topPrime 7963 },
  { lower := 8019, upper := 8032, witness := RowWitness.topPrime 8017 },
  { lower := 8125, upper := 8138, witness := RowWitness.topPrime 8123 },
  { lower := 8214, upper := 8255, witness := RowWitness.topPrime 8209 },
  { lower := 8256, upper := 8260, witness := RowWitness.topPrime 8243 },
  { lower := 8405, upper := 8435, witness := RowWitness.topPrime 8389 },
  { lower := 8436, upper := 8451, witness := RowWitness.topPrime 8431 },
  { lower := 8664, upper := 8709, witness := RowWitness.topPrime 8663 },
  { lower := 8710, upper := 8716, witness := RowWitness.topPrime 8707 },
  { lower := 8748, upper := 8793, witness := RowWitness.topPrime 8747 },
  { lower := 8794, upper := 8796, witness := RowWitness.topPrime 8783 },
  { lower := 9025, upper := 9039, witness := RowWitness.topPrime 9013 },
  { lower := 9245, upper := 9287, witness := RowWitness.topPrime 9241 },
  { lower := 9288, upper := 9297, witness := RowWitness.topPrime 9283 },
  { lower := 9386, upper := 9421, witness := RowWitness.topPrime 9377 },
  { lower := 9522, upper := 9523, witness := RowWitness.topPrime 9521 },
  { lower := 9604, upper := 9647, witness := RowWitness.topPrime 9601 },
  { lower := 9648, upper := 9650, witness := RowWitness.topPrime 9643 },
  { lower := 9747, upper := 9774, witness := RowWitness.topPrime 9743 },
  { lower := 10086, upper := 10125, witness := RowWitness.topPrime 10079 },
  { lower := 10126, upper := 10138, witness := RowWitness.topPrime 10111 },
  { lower := 10240, upper := 10252, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10613, witness := RowWitness.topPrime 10567 },
  { lower := 10614, upper := 10617, witness := RowWitness.topPrime 10613 },
  { lower := 10625, upper := 10626, witness := RowWitness.topPrime 10613 },
  { lower := 10648, upper := 10671, witness := RowWitness.topPrime 10639 },
  { lower := 10935, upper := 10955, witness := RowWitness.topPrime 10909 },
  { lower := 10956, upper := 10981, witness := RowWitness.topPrime 10949 },
  { lower := 10985, upper := 10998, witness := RowWitness.topPrime 10979 },
  { lower := 11109, upper := 11139, witness := RowWitness.topPrime 11093 },
  { lower := 11140, upper := 11140, witness := RowWitness.topPrime 11131 },
  { lower := 11264, upper := 11296, witness := RowWitness.topPrime 11261 },
  { lower := 11664, upper := 11684, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11789, witness := RowWitness.topPrime 11743 },
  { lower := 11790, upper := 11820, witness := RowWitness.topPrime 11789 },
  { lower := 12005, upper := 12025, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12334, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12539, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13167, witness := RowWitness.topPrime 13121 },
  { lower := 13168, upper := 13168, witness := RowWitness.topPrime 13163 },
  { lower := 13225, upper := 13228, witness := RowWitness.topPrime 13219 },
  { lower := 13312, upper := 13355, witness := RowWitness.topPrime 13309 },
  { lower := 13356, upper := 13356, witness := RowWitness.topPrime 13339 },
  { lower := 13454, upper := 13497, witness := RowWitness.topPrime 13451 },
  { lower := 13498, upper := 13500, witness := RowWitness.topPrime 13487 },
  { lower := 13718, upper := 13736, witness := RowWitness.topPrime 13711 },
  { lower := 13750, upper := 13775, witness := RowWitness.topPrime 13729 },
  { lower := 13776, upper := 13796, witness := RowWitness.topPrime 13763 },
  { lower := 13851, upper := 13870, witness := RowWitness.topPrime 13841 },
  { lower := 14297, upper := 14329, witness := RowWitness.topPrime 14293 },
  { lower := 14336, upper := 14343, witness := RowWitness.topPrime 14327 },
  { lower := 14375, upper := 14382, witness := RowWitness.topPrime 14369 },
  { lower := 14406, upper := 14447, witness := RowWitness.topPrime 14401 },
  { lower := 14448, upper := 14452, witness := RowWitness.topPrime 14447 },
  { lower := 14812, upper := 14838, witness := RowWitness.topPrime 14797 },
  { lower := 14848, upper := 14858, witness := RowWitness.topPrime 14843 },
  { lower := 15138, upper := 15175, witness := RowWitness.topPrime 15137 },
  { lower := 15341, upper := 15355, witness := RowWitness.topPrime 15331 },
  { lower := 15360, upper := 15405, witness := RowWitness.topPrime 15359 },
  { lower := 15406, upper := 15422, witness := RowWitness.topPrime 15401 },
  { lower := 15979, upper := 16018, witness := RowWitness.topPrime 15973 },
  { lower := 16428, upper := 16430, witness := RowWitness.topPrime 16427 },
  { lower := 16807, upper := 16833, witness := RowWitness.topPrime 16787 },
  { lower := 16834, upper := 16856, witness := RowWitness.topPrime 16831 },
  { lower := 17303, upper := 17344, witness := RowWitness.topPrime 17299 },
  { lower := 17500, upper := 17542, witness := RowWitness.topPrime 17497 },
  { lower := 18259, upper := 18271, witness := RowWitness.topPrime 18257 },
  { lower := 18491, upper := 18527, witness := RowWitness.topPrime 18481 },
  { lower := 18528, upper := 18537, witness := RowWitness.topPrime 18523 },
  { lower := 19208, upper := 19212, witness := RowWitness.topPrime 19207 },
  { lower := 19220, upper := 19254, witness := RowWitness.topPrime 19219 },
  { lower := 19683, upper := 19698, witness := RowWitness.topPrime 19681 },
  { lower := 20181, upper := 20223, witness := RowWitness.topPrime 20177 },
  { lower := 20224, upper := 20227, witness := RowWitness.topPrime 20219 },
  { lower := 20577, upper := 20581, witness := RowWitness.topPrime 20563 },
  { lower := 21866, upper := 21909, witness := RowWitness.topPrime 21863 },
  { lower := 21910, upper := 21921, witness := RowWitness.topPrime 21893 },
  { lower := 23548, upper := 23585, witness := RowWitness.topPrime 23539 },
  { lower := 23586, upper := 23594, witness := RowWitness.topPrime 23581 },
  { lower := 24025, upper := 24069, witness := RowWitness.topPrime 24023 },
  { lower := 24070, upper := 24083, witness := RowWitness.topPrime 24061 },
  { lower := 24576, upper := 24611, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25032, witness := RowWitness.topPrime 24989 },
  { lower := 26624, upper := 26643, witness := RowWitness.topPrime 26597 },
  { lower := 26644, upper := 26666, witness := RowWitness.topPrime 26641 },
  { lower := 26908, upper := 26942, witness := RowWitness.topPrime 26903 },
  { lower := 28577, upper := 28607, witness := RowWitness.topPrime 28573 },
  { lower := 30618, upper := 30639, witness := RowWitness.topPrime 30593 },
  { lower := 30640, upper := 30659, witness := RowWitness.topPrime 30637 },
  { lower := 30758, upper := 30766, witness := RowWitness.topPrime 30757 },
  { lower := 31250, upper := 31259, witness := RowWitness.topPrime 31249 },
  { lower := 31944, upper := 31953, witness := RowWitness.topPrime 31907 },
  { lower := 31954, upper := 31954, witness := RowWitness.largeDivisor 447540556292495446098978549907058795398206886631708827972884374341235949997533299282936348373060198429395560819337836885243144889270017742299 },
  { lower := 31955, upper := 31955, witness := RowWitness.largeDivisor 13969863171221181657094855074195517118484833241982637353046033497676789714101265077278569731088377762181207802935329244631508471534190098763 },
  { lower := 31956, upper := 31956, witness := RowWitness.largeDivisor 19819789890762923150156419319436687313012845457325393325072768888819014922030723974849670321730607341869236216950869354530477922054101349497 },
  { lower := 31957, upper := 31985, witness := RowWitness.topPrime 31957 },
  { lower := 32805, upper := 32814, witness := RowWitness.topPrime 32803 },
  { lower := 33282, upper := 33293, witness := RowWitness.topPrime 33247 },
  { lower := 33294, upper := 33321, witness := RowWitness.topPrime 33289 },
  { lower := 33620, upper := 33660, witness := RowWitness.topPrime 33619 },
  { lower := 34391, upper := 34421, witness := RowWitness.topPrime 34381 },
  { lower := 35152, upper := 35177, witness := RowWitness.topPrime 35149 },
  { lower := 36982, upper := 37025, witness := RowWitness.topPrime 36979 },
  { lower := 37026, upper := 37026, witness := RowWitness.topPrime 37021 },
  { lower := 43740, upper := 43767, witness := RowWitness.topPrime 43721 },
  { lower := 43768, upper := 43786, witness := RowWitness.topPrime 43759 },
  { lower := 43940, upper := 43969, witness := RowWitness.topPrime 43933 },
  { lower := 48020, upper := 48059, witness := RowWitness.topPrime 48017 },
  { lower := 48114, upper := 48120, witness := RowWitness.topPrime 48109 },
  { lower := 49152, upper := 49176, witness := RowWitness.topPrime 49139 },
  { lower := 65625, upper := 65656, witness := RowWitness.topPrime 65617 },
  { lower := 68782, upper := 68796, witness := RowWitness.topPrime 68777 },
  { lower := 73205, upper := 73213, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73741, witness := RowWitness.topPrime 73727 },
  { lower := 98304, upper := 98306, witness := RowWitness.topPrime 98299 },
  { lower := 327701, upper := 327726, witness := RowWitness.topPrime 327689 }
]

def row047_layers : List CoverLayer := [
  { lower := 2162, upper := 4324, M := 34 },
  { lower := 4324, upper := 8648, M := 32 },
  { lower := 8648, upper := 17296, M := 30 },
  { lower := 17296, upper := 34592, M := 28 },
  { lower := 34592, upper := 69184, M := 26 },
  { lower := 69184, upper := 138368, M := 24 },
  { lower := 138368, upper := 276736, M := 22 },
  { lower := 276736, upper := 553472, M := 21 },
  { lower := 553472, upper := 1106944, M := 20 },
  { lower := 1106944, upper := 2213888, M := 18 },
  { lower := 2213888, upper := 4427776, M := 17 },
  { lower := 4427776, upper := 8855552, M := 16 },
  { lower := 8855552, upper := 17711104, M := 15 },
  { lower := 17711104, upper := 35422208, M := 14 },
  { lower := 35422208, upper := 70844416, M := 13 },
  { lower := 70844416, upper := 141688832, M := 12 },
  { lower := 141688832, upper := 283377664, M := 11 },
  { lower := 283377664, upper := 566755328, M := 11 },
  { lower := 566755328, upper := 1133510656, M := 10 },
  { lower := 1133510656, upper := 2267021312, M := 9 },
  { lower := 2267021312, upper := 4534042624, M := 9 },
  { lower := 4534042624, upper := 9068085248, M := 8 },
  { lower := 9068085248, upper := 18136170496, M := 8 },
  { lower := 18136170496, upper := 36272340992, M := 7 },
  { lower := 36272340992, upper := 72544681984, M := 7 },
  { lower := 72544681984, upper := 145089363968, M := 6 },
  { lower := 145089363968, upper := 290178727936, M := 6 },
  { lower := 290178727936, upper := 580357455872, M := 5 },
  { lower := 580357455872, upper := 1160714911744, M := 5 },
  { lower := 1160714911744, upper := 2321429823488, M := 5 },
  { lower := 2321429823488, upper := 4642859646976, M := 5 },
  { lower := 4642859646976, upper := 9285719293952, M := 4 },
  { lower := 9285719293952, upper := 18571438587904, M := 4 },
  { lower := 18571438587904, upper := 37142877175808, M := 4 },
  { lower := 37142877175808, upper := 74285754351616, M := 4 },
  { lower := 74285754351616, upper := 148571508703232, M := 3 },
  { lower := 148571508703232, upper := 297143017406464, M := 3 },
  { lower := 297143017406464, upper := 594286034812928, M := 3 },
  { lower := 594286034812928, upper := 1188572069625856, M := 3 },
  { lower := 1188572069625856, upper := 2377144139251712, M := 3 },
  { lower := 2377144139251712, upper := 4754288278503424, M := 2 },
  { lower := 4754288278503424, upper := 9508576557006848, M := 2 },
  { lower := 9508576557006848, upper := 19017153114013696, M := 2 },
  { lower := 19017153114013696, upper := 38034306228027392, M := 2 },
  { lower := 38034306228027392, upper := 76068612456054784, M := 2 },
  { lower := 76068612456054784, upper := 152137224912109568, M := 2 },
  { lower := 152137224912109568, upper := 304274449824219136, M := 2 },
  { lower := 304274449824219136, upper := 608548899648438272, M := 2 },
  { lower := 608548899648438272, upper := 1217097799296876544, M := 2 },
  { lower := 1217097799296876544, upper := 2434195598593753088, M := 2 },
  { lower := 2434195598593753088, upper := 4868391197187506176, M := 1 },
  { lower := 4868391197187506176, upper := 9736782394375012352, M := 1 },
  { lower := 9736782394375012352, upper := 10000000000000000000, M := 1 }
]

def row047 : FiniteCoverRow := {
  height := row047_height,
  goods := row047_goods,
  layers := row047_layers
}

theorem row047_registered :
    decide (row047.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row047_goods_checked :
    row047.goods.all (goodSegmentCheck row047.height.i row047.height.r row047.height.s) = true := by
  decide +kernel

theorem row047_small_checked :
    coverCheck (2 * row047.height.i + 2) (row047.height.i * (row047.height.i - 1) - 1)
      (row047.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row047_layerCover_checked :
    coverCheck (row047.height.i * (row047.height.i - 1)) (row047.height.n0 - 1)
      (row047.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row047_layer000_checked :
    coverLayerCheck row047.height row047.goods { lower := 2162, upper := 4324, M := 34 } = true := by
  decide +kernel

theorem row047_layer001_checked :
    coverLayerCheck row047.height row047.goods { lower := 4324, upper := 8648, M := 32 } = true := by
  decide +kernel

theorem row047_layer002_checked :
    coverLayerCheck row047.height row047.goods { lower := 8648, upper := 17296, M := 30 } = true := by
  decide +kernel

theorem row047_layer003_checked :
    coverLayerCheck row047.height row047.goods { lower := 17296, upper := 34592, M := 28 } = true := by
  decide +kernel

theorem row047_layer004_checked :
    coverLayerCheck row047.height row047.goods { lower := 34592, upper := 69184, M := 26 } = true := by
  decide +kernel

theorem row047_layer005_checked :
    coverLayerCheck row047.height row047.goods { lower := 69184, upper := 138368, M := 24 } = true := by
  decide +kernel

theorem row047_layer006_checked :
    coverLayerCheck row047.height row047.goods { lower := 138368, upper := 276736, M := 22 } = true := by
  decide +kernel

theorem row047_layer007_checked :
    coverLayerCheck row047.height row047.goods { lower := 276736, upper := 553472, M := 21 } = true := by
  decide +kernel

theorem row047_layer008_checked :
    coverLayerCheck row047.height row047.goods { lower := 553472, upper := 1106944, M := 20 } = true := by
  decide +kernel

theorem row047_layer009_checked :
    coverLayerCheck row047.height row047.goods { lower := 1106944, upper := 2213888, M := 18 } = true := by
  decide +kernel

theorem row047_layer010_checked :
    coverLayerCheck row047.height row047.goods { lower := 2213888, upper := 4427776, M := 17 } = true := by
  decide +kernel

theorem row047_layer011_checked :
    coverLayerCheck row047.height row047.goods { lower := 4427776, upper := 8855552, M := 16 } = true := by
  decide +kernel

theorem row047_layer012_checked :
    coverLayerCheck row047.height row047.goods { lower := 8855552, upper := 17711104, M := 15 } = true := by
  decide +kernel

theorem row047_layer013_checked :
    coverLayerCheck row047.height row047.goods { lower := 17711104, upper := 35422208, M := 14 } = true := by
  decide +kernel

theorem row047_layer014_checked :
    coverLayerCheck row047.height row047.goods { lower := 35422208, upper := 70844416, M := 13 } = true := by
  decide +kernel

theorem row047_layer015_checked :
    coverLayerCheck row047.height row047.goods { lower := 70844416, upper := 141688832, M := 12 } = true := by
  decide +kernel

theorem row047_layer016_checked :
    coverLayerCheck row047.height row047.goods { lower := 141688832, upper := 283377664, M := 11 } = true := by
  decide +kernel

theorem row047_layer017_checked :
    coverLayerCheck row047.height row047.goods { lower := 283377664, upper := 566755328, M := 11 } = true := by
  decide +kernel

theorem row047_layer018_checked :
    coverLayerCheck row047.height row047.goods { lower := 566755328, upper := 1133510656, M := 10 } = true := by
  decide +kernel

theorem row047_layer019_checked :
    coverLayerCheck row047.height row047.goods { lower := 1133510656, upper := 2267021312, M := 9 } = true := by
  decide +kernel

theorem row047_layer020_checked :
    coverLayerCheck row047.height row047.goods { lower := 2267021312, upper := 4534042624, M := 9 } = true := by
  decide +kernel

theorem row047_layer021_checked :
    coverLayerCheck row047.height row047.goods { lower := 4534042624, upper := 9068085248, M := 8 } = true := by
  decide +kernel

theorem row047_layer022_checked :
    coverLayerCheck row047.height row047.goods { lower := 9068085248, upper := 18136170496, M := 8 } = true := by
  decide +kernel

theorem row047_layer023_checked :
    coverLayerCheck row047.height row047.goods { lower := 18136170496, upper := 36272340992, M := 7 } = true := by
  decide +kernel

theorem row047_layer024_checked :
    coverLayerCheck row047.height row047.goods { lower := 36272340992, upper := 72544681984, M := 7 } = true := by
  decide +kernel

theorem row047_layer025_checked :
    coverLayerCheck row047.height row047.goods { lower := 72544681984, upper := 145089363968, M := 6 } = true := by
  decide +kernel

theorem row047_layer026_checked :
    coverLayerCheck row047.height row047.goods { lower := 145089363968, upper := 290178727936, M := 6 } = true := by
  decide +kernel

theorem row047_layer027_checked :
    coverLayerCheck row047.height row047.goods { lower := 290178727936, upper := 580357455872, M := 5 } = true := by
  decide +kernel

theorem row047_layer028_checked :
    coverLayerCheck row047.height row047.goods { lower := 580357455872, upper := 1160714911744, M := 5 } = true := by
  decide +kernel

theorem row047_layer029_checked :
    coverLayerCheck row047.height row047.goods { lower := 1160714911744, upper := 2321429823488, M := 5 } = true := by
  decide +kernel

theorem row047_layer030_checked :
    coverLayerCheck row047.height row047.goods { lower := 2321429823488, upper := 4642859646976, M := 5 } = true := by
  decide +kernel

theorem row047_layer031_checked :
    coverLayerCheck row047.height row047.goods { lower := 4642859646976, upper := 9285719293952, M := 4 } = true := by
  decide +kernel

theorem row047_layer032_checked :
    coverLayerCheck row047.height row047.goods { lower := 9285719293952, upper := 18571438587904, M := 4 } = true := by
  decide +kernel

theorem row047_layer033_checked :
    coverLayerCheck row047.height row047.goods { lower := 18571438587904, upper := 37142877175808, M := 4 } = true := by
  decide +kernel

theorem row047_layer034_checked :
    coverLayerCheck row047.height row047.goods { lower := 37142877175808, upper := 74285754351616, M := 4 } = true := by
  decide +kernel

theorem row047_layer035_checked :
    coverLayerCheck row047.height row047.goods { lower := 74285754351616, upper := 148571508703232, M := 3 } = true := by
  decide +kernel

theorem row047_layer036_checked :
    coverLayerCheck row047.height row047.goods { lower := 148571508703232, upper := 297143017406464, M := 3 } = true := by
  decide +kernel

theorem row047_layer037_checked :
    coverLayerCheck row047.height row047.goods { lower := 297143017406464, upper := 594286034812928, M := 3 } = true := by
  decide +kernel

theorem row047_layer038_checked :
    coverLayerCheck row047.height row047.goods { lower := 594286034812928, upper := 1188572069625856, M := 3 } = true := by
  decide +kernel

theorem row047_layer039_checked :
    coverLayerCheck row047.height row047.goods { lower := 1188572069625856, upper := 2377144139251712, M := 3 } = true := by
  decide +kernel

theorem row047_layer040_checked :
    coverLayerCheck row047.height row047.goods { lower := 2377144139251712, upper := 4754288278503424, M := 2 } = true := by
  decide +kernel

theorem row047_layer041_checked :
    coverLayerCheck row047.height row047.goods { lower := 4754288278503424, upper := 9508576557006848, M := 2 } = true := by
  decide +kernel

theorem row047_layer042_checked :
    coverLayerCheck row047.height row047.goods { lower := 9508576557006848, upper := 19017153114013696, M := 2 } = true := by
  decide +kernel

theorem row047_layer043_checked :
    coverLayerCheck row047.height row047.goods { lower := 19017153114013696, upper := 38034306228027392, M := 2 } = true := by
  decide +kernel

theorem row047_layer044_checked :
    coverLayerCheck row047.height row047.goods { lower := 38034306228027392, upper := 76068612456054784, M := 2 } = true := by
  decide +kernel

theorem row047_layer045_checked :
    coverLayerCheck row047.height row047.goods { lower := 76068612456054784, upper := 152137224912109568, M := 2 } = true := by
  decide +kernel

theorem row047_layer046_checked :
    coverLayerCheck row047.height row047.goods { lower := 152137224912109568, upper := 304274449824219136, M := 2 } = true := by
  decide +kernel

theorem row047_layer047_checked :
    coverLayerCheck row047.height row047.goods { lower := 304274449824219136, upper := 608548899648438272, M := 2 } = true := by
  decide +kernel

theorem row047_layer048_checked :
    coverLayerCheck row047.height row047.goods { lower := 608548899648438272, upper := 1217097799296876544, M := 2 } = true := by
  decide +kernel

theorem row047_layer049_checked :
    coverLayerCheck row047.height row047.goods { lower := 1217097799296876544, upper := 2434195598593753088, M := 2 } = true := by
  decide +kernel

theorem row047_layer050_checked :
    coverLayerCheck row047.height row047.goods { lower := 2434195598593753088, upper := 4868391197187506176, M := 1 } = true := by
  decide +kernel

theorem row047_layer051_checked :
    coverLayerCheck row047.height row047.goods { lower := 4868391197187506176, upper := 9736782394375012352, M := 1 } = true := by
  decide +kernel

theorem row047_layer052_checked :
    coverLayerCheck row047.height row047.goods { lower := 9736782394375012352, upper := 10000000000000000000, M := 1 } = true := by
  decide +kernel

theorem row047_layers_checked :
    row047.layers.all (coverLayerCheck row047.height row047.goods) = true := by
  change List.all [
    { lower := 2162, upper := 4324, M := 34 },
    { lower := 4324, upper := 8648, M := 32 },
    { lower := 8648, upper := 17296, M := 30 },
    { lower := 17296, upper := 34592, M := 28 },
    { lower := 34592, upper := 69184, M := 26 },
    { lower := 69184, upper := 138368, M := 24 },
    { lower := 138368, upper := 276736, M := 22 },
    { lower := 276736, upper := 553472, M := 21 },
    { lower := 553472, upper := 1106944, M := 20 },
    { lower := 1106944, upper := 2213888, M := 18 },
    { lower := 2213888, upper := 4427776, M := 17 },
    { lower := 4427776, upper := 8855552, M := 16 },
    { lower := 8855552, upper := 17711104, M := 15 },
    { lower := 17711104, upper := 35422208, M := 14 },
    { lower := 35422208, upper := 70844416, M := 13 },
    { lower := 70844416, upper := 141688832, M := 12 },
    { lower := 141688832, upper := 283377664, M := 11 },
    { lower := 283377664, upper := 566755328, M := 11 },
    { lower := 566755328, upper := 1133510656, M := 10 },
    { lower := 1133510656, upper := 2267021312, M := 9 },
    { lower := 2267021312, upper := 4534042624, M := 9 },
    { lower := 4534042624, upper := 9068085248, M := 8 },
    { lower := 9068085248, upper := 18136170496, M := 8 },
    { lower := 18136170496, upper := 36272340992, M := 7 },
    { lower := 36272340992, upper := 72544681984, M := 7 },
    { lower := 72544681984, upper := 145089363968, M := 6 },
    { lower := 145089363968, upper := 290178727936, M := 6 },
    { lower := 290178727936, upper := 580357455872, M := 5 },
    { lower := 580357455872, upper := 1160714911744, M := 5 },
    { lower := 1160714911744, upper := 2321429823488, M := 5 },
    { lower := 2321429823488, upper := 4642859646976, M := 5 },
    { lower := 4642859646976, upper := 9285719293952, M := 4 },
    { lower := 9285719293952, upper := 18571438587904, M := 4 },
    { lower := 18571438587904, upper := 37142877175808, M := 4 },
    { lower := 37142877175808, upper := 74285754351616, M := 4 },
    { lower := 74285754351616, upper := 148571508703232, M := 3 },
    { lower := 148571508703232, upper := 297143017406464, M := 3 },
    { lower := 297143017406464, upper := 594286034812928, M := 3 },
    { lower := 594286034812928, upper := 1188572069625856, M := 3 },
    { lower := 1188572069625856, upper := 2377144139251712, M := 3 },
    { lower := 2377144139251712, upper := 4754288278503424, M := 2 },
    { lower := 4754288278503424, upper := 9508576557006848, M := 2 },
    { lower := 9508576557006848, upper := 19017153114013696, M := 2 },
    { lower := 19017153114013696, upper := 38034306228027392, M := 2 },
    { lower := 38034306228027392, upper := 76068612456054784, M := 2 },
    { lower := 76068612456054784, upper := 152137224912109568, M := 2 },
    { lower := 152137224912109568, upper := 304274449824219136, M := 2 },
    { lower := 304274449824219136, upper := 608548899648438272, M := 2 },
    { lower := 608548899648438272, upper := 1217097799296876544, M := 2 },
    { lower := 1217097799296876544, upper := 2434195598593753088, M := 2 },
    { lower := 2434195598593753088, upper := 4868391197187506176, M := 1 },
    { lower := 4868391197187506176, upper := 9736782394375012352, M := 1 },
    { lower := 9736782394375012352, upper := 10000000000000000000, M := 1 }
  ] (coverLayerCheck row047.height row047.goods) = true
  simp only [List.all_cons, List.all_nil,
    row047_layer000_checked,
    row047_layer001_checked,
    row047_layer002_checked,
    row047_layer003_checked,
    row047_layer004_checked,
    row047_layer005_checked,
    row047_layer006_checked,
    row047_layer007_checked,
    row047_layer008_checked,
    row047_layer009_checked,
    row047_layer010_checked,
    row047_layer011_checked,
    row047_layer012_checked,
    row047_layer013_checked,
    row047_layer014_checked,
    row047_layer015_checked,
    row047_layer016_checked,
    row047_layer017_checked,
    row047_layer018_checked,
    row047_layer019_checked,
    row047_layer020_checked,
    row047_layer021_checked,
    row047_layer022_checked,
    row047_layer023_checked,
    row047_layer024_checked,
    row047_layer025_checked,
    row047_layer026_checked,
    row047_layer027_checked,
    row047_layer028_checked,
    row047_layer029_checked,
    row047_layer030_checked,
    row047_layer031_checked,
    row047_layer032_checked,
    row047_layer033_checked,
    row047_layer034_checked,
    row047_layer035_checked,
    row047_layer036_checked,
    row047_layer037_checked,
    row047_layer038_checked,
    row047_layer039_checked,
    row047_layer040_checked,
    row047_layer041_checked,
    row047_layer042_checked,
    row047_layer043_checked,
    row047_layer044_checked,
    row047_layer045_checked,
    row047_layer046_checked,
    row047_layer047_checked,
    row047_layer048_checked,
    row047_layer049_checked,
    row047_layer050_checked,
    row047_layer051_checked,
    row047_layer052_checked,
    Bool.true_and]

theorem row047_checked : finiteCoverRowCheck row047 = true := by
  simp only [finiteCoverRowCheck, row047_registered, row047_goods_checked,
    row047_small_checked, row047_layerCover_checked, row047_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row047_checked

end B699LowIndex
