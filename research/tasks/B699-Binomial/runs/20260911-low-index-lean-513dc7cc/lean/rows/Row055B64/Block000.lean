import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row055_height : HeightCertificateDatum := { i := 55, r := 18, s := 37, n0Power10 := 15 }

def row055_goods : List GoodSegment := [
  { lower := 112, upper := 163, witness := RowWitness.topPrime 109 },
  { lower := 164, upper := 217, witness := RowWitness.topPrime 163 },
  { lower := 218, upper := 265, witness := RowWitness.topPrime 211 },
  { lower := 266, upper := 317, witness := RowWitness.topPrime 263 },
  { lower := 318, upper := 371, witness := RowWitness.topPrime 317 },
  { lower := 372, upper := 421, witness := RowWitness.topPrime 367 },
  { lower := 422, upper := 475, witness := RowWitness.topPrime 421 },
  { lower := 476, upper := 521, witness := RowWitness.topPrime 467 },
  { lower := 522, upper := 575, witness := RowWitness.topPrime 521 },
  { lower := 576, upper := 625, witness := RowWitness.topPrime 571 },
  { lower := 626, upper := 673, witness := RowWitness.topPrime 619 },
  { lower := 674, upper := 727, witness := RowWitness.topPrime 673 },
  { lower := 728, upper := 781, witness := RowWitness.topPrime 727 },
  { lower := 782, upper := 827, witness := RowWitness.topPrime 773 },
  { lower := 828, upper := 881, witness := RowWitness.topPrime 827 },
  { lower := 882, upper := 935, witness := RowWitness.topPrime 881 },
  { lower := 936, upper := 983, witness := RowWitness.topPrime 929 },
  { lower := 984, upper := 1037, witness := RowWitness.topPrime 983 },
  { lower := 1038, upper := 1087, witness := RowWitness.topPrime 1033 },
  { lower := 1088, upper := 1141, witness := RowWitness.topPrime 1087 },
  { lower := 1142, upper := 1183, witness := RowWitness.topPrime 1129 },
  { lower := 1184, upper := 1235, witness := RowWitness.topPrime 1181 },
  { lower := 1236, upper := 1285, witness := RowWitness.topPrime 1231 },
  { lower := 1286, upper := 1337, witness := RowWitness.topPrime 1283 },
  { lower := 1338, upper := 1381, witness := RowWitness.topPrime 1327 },
  { lower := 1382, upper := 1435, witness := RowWitness.topPrime 1381 },
  { lower := 1436, upper := 1487, witness := RowWitness.topPrime 1433 },
  { lower := 1488, upper := 1541, witness := RowWitness.topPrime 1487 },
  { lower := 1542, upper := 1585, witness := RowWitness.topPrime 1531 },
  { lower := 1586, upper := 1637, witness := RowWitness.topPrime 1583 },
  { lower := 1638, upper := 1691, witness := RowWitness.topPrime 1637 },
  { lower := 1692, upper := 1723, witness := RowWitness.topPrime 1669 },
  { lower := 1724, upper := 1777, witness := RowWitness.topPrime 1723 },
  { lower := 1778, upper := 1831, witness := RowWitness.topPrime 1777 },
  { lower := 1832, upper := 1885, witness := RowWitness.topPrime 1831 },
  { lower := 1886, upper := 1933, witness := RowWitness.topPrime 1879 },
  { lower := 1934, upper := 1987, witness := RowWitness.topPrime 1933 },
  { lower := 1988, upper := 2041, witness := RowWitness.topPrime 1987 },
  { lower := 2042, upper := 2093, witness := RowWitness.topPrime 2039 },
  { lower := 2094, upper := 2143, witness := RowWitness.topPrime 2089 },
  { lower := 2144, upper := 2197, witness := RowWitness.topPrime 2143 },
  { lower := 2198, upper := 2233, witness := RowWitness.topPrime 2179 },
  { lower := 2234, upper := 2275, witness := RowWitness.topPrime 2221 },
  { lower := 2276, upper := 2327, witness := RowWitness.topPrime 2273 },
  { lower := 2328, upper := 2365, witness := RowWitness.topPrime 2311 },
  { lower := 2366, upper := 2411, witness := RowWitness.topPrime 2357 },
  { lower := 2412, upper := 2465, witness := RowWitness.topPrime 2411 },
  { lower := 2466, upper := 2513, witness := RowWitness.topPrime 2459 },
  { lower := 2514, upper := 2557, witness := RowWitness.topPrime 2503 },
  { lower := 2558, upper := 2611, witness := RowWitness.topPrime 2557 },
  { lower := 2612, upper := 2663, witness := RowWitness.topPrime 2609 },
  { lower := 2664, upper := 2717, witness := RowWitness.topPrime 2663 },
  { lower := 2718, upper := 2767, witness := RowWitness.topPrime 2713 },
  { lower := 2768, upper := 2821, witness := RowWitness.topPrime 2767 },
  { lower := 2822, upper := 2873, witness := RowWitness.topPrime 2819 },
  { lower := 2874, upper := 2915, witness := RowWitness.topPrime 2861 },
  { lower := 2916, upper := 2963, witness := RowWitness.topPrime 2909 },
  { lower := 2964, upper := 2970, witness := RowWitness.topPrime 2963 },
  { lower := 3072, upper := 3121, witness := RowWitness.topPrime 3067 },
  { lower := 3122, upper := 3141, witness := RowWitness.topPrime 3121 },
  { lower := 3159, upper := 3191, witness := RowWitness.topPrime 3137 },
  { lower := 3192, upper := 3245, witness := RowWitness.topPrime 3191 },
  { lower := 3246, upper := 3265, witness := RowWitness.topPrime 3229 },
  { lower := 3362, upper := 3415, witness := RowWitness.topPrime 3361 },
  { lower := 3416, upper := 3467, witness := RowWitness.topPrime 3413 },
  { lower := 3468, upper := 3510, witness := RowWitness.topPrime 3467 },
  { lower := 3584, upper := 3603, witness := RowWitness.topPrime 3583 },
  { lower := 3610, upper := 3638, witness := RowWitness.topPrime 3607 },
  { lower := 3645, upper := 3664, witness := RowWitness.topPrime 3643 },
  { lower := 3698, upper := 3699, witness := RowWitness.topPrime 3697 },
  { lower := 3703, upper := 3755, witness := RowWitness.topPrime 3701 },
  { lower := 3756, upper := 3793, witness := RowWitness.topPrime 3739 },
  { lower := 3794, upper := 3811, witness := RowWitness.topPrime 3793 },
  { lower := 3844, upper := 3887, witness := RowWitness.topPrime 3833 },
  { lower := 3888, upper := 3935, witness := RowWitness.topPrime 3881 },
  { lower := 3936, upper := 3941, witness := RowWitness.topPrime 3931 },
  { lower := 3971, upper := 4021, witness := RowWitness.topPrime 3967 },
  { lower := 4022, upper := 4025, witness := RowWitness.topPrime 4021 },
  { lower := 4046, upper := 4047, witness := RowWitness.topPrime 4027 },
  { lower := 4056, upper := 4105, witness := RowWitness.topPrime 4051 },
  { lower := 4106, upper := 4153, witness := RowWitness.topPrime 4099 },
  { lower := 4154, upper := 4170, witness := RowWitness.topPrime 4153 },
  { lower := 4224, upper := 4273, witness := RowWitness.topPrime 4219 },
  { lower := 4274, upper := 4279, witness := RowWitness.topPrime 4273 },
  { lower := 4335, upper := 4381, witness := RowWitness.topPrime 4327 },
  { lower := 4382, upper := 4427, witness := RowWitness.topPrime 4373 },
  { lower := 4428, upper := 4448, witness := RowWitness.topPrime 4423 },
  { lower := 4459, upper := 4472, witness := RowWitness.topPrime 4457 },
  { lower := 4608, upper := 4657, witness := RowWitness.topPrime 4603 },
  { lower := 4658, upper := 4671, witness := RowWitness.topPrime 4657 },
  { lower := 4732, upper := 4747, witness := RowWitness.topPrime 4729 },
  { lower := 4761, upper := 4786, witness := RowWitness.topPrime 4759 },
  { lower := 4802, upper := 4855, witness := RowWitness.topPrime 4801 },
  { lower := 4856, upper := 4856, witness := RowWitness.topPrime 4831 },
  { lower := 4864, upper := 4915, witness := RowWitness.topPrime 4861 },
  { lower := 4916, upper := 4955, witness := RowWitness.topPrime 4909 },
  { lower := 5046, upper := 5093, witness := RowWitness.topPrime 5039 },
  { lower := 5094, upper := 5141, witness := RowWitness.topPrime 5087 },
  { lower := 5142, upper := 5173, witness := RowWitness.topPrime 5119 },
  { lower := 5174, upper := 5174, witness := RowWitness.topPrime 5171 },
  { lower := 5239, upper := 5256, witness := RowWitness.topPrime 5237 },
  { lower := 5290, upper := 5293, witness := RowWitness.topPrime 5281 },
  { lower := 5376, upper := 5400, witness := RowWitness.topPrime 5351 },
  { lower := 5408, upper := 5461, witness := RowWitness.topPrime 5407 },
  { lower := 5462, upper := 5462, witness := RowWitness.topPrime 5449 },
  { lower := 5488, upper := 5537, witness := RowWitness.topPrime 5483 },
  { lower := 5538, upper := 5542, witness := RowWitness.topPrime 5531 },
  { lower := 5577, upper := 5627, witness := RowWitness.topPrime 5573 },
  { lower := 5628, upper := 5672, witness := RowWitness.topPrime 5623 },
  { lower := 5766, upper := 5803, witness := RowWitness.topPrime 5749 },
  { lower := 5804, upper := 5855, witness := RowWitness.topPrime 5801 },
  { lower := 5856, upper := 5885, witness := RowWitness.topPrime 5851 },
  { lower := 5888, upper := 5935, witness := RowWitness.topPrime 5881 },
  { lower := 5936, upper := 5941, witness := RowWitness.topPrime 5927 },
  { lower := 6075, upper := 6123, witness := RowWitness.topPrime 6073 },
  { lower := 6144, upper := 6197, witness := RowWitness.topPrime 6143 },
  { lower := 6198, upper := 6198, witness := RowWitness.topPrime 6197 },
  { lower := 6348, upper := 6397, witness := RowWitness.topPrime 6343 },
  { lower := 6398, upper := 6412, witness := RowWitness.topPrime 6397 },
  { lower := 6517, upper := 6545, witness := RowWitness.topPrime 6491 },
  { lower := 6546, upper := 6552, witness := RowWitness.topPrime 6529 },
  { lower := 6561, upper := 6571, witness := RowWitness.topPrime 6553 },
  { lower := 6591, upper := 6615, witness := RowWitness.topPrime 6581 },
  { lower := 6627, upper := 6645, witness := RowWitness.topPrime 6619 },
  { lower := 6647, upper := 6691, witness := RowWitness.topPrime 6637 },
  { lower := 6692, upper := 6701, witness := RowWitness.topPrime 6691 },
  { lower := 6727, upper := 6773, witness := RowWitness.topPrime 6719 },
  { lower := 6774, upper := 6781, witness := RowWitness.topPrime 6763 },
  { lower := 6845, upper := 6895, witness := RowWitness.topPrime 6841 },
  { lower := 6896, upper := 6931, witness := RowWitness.topPrime 6883 },
  { lower := 6936, upper := 6966, witness := RowWitness.topPrime 6917 },
  { lower := 7203, upper := 7247, witness := RowWitness.topPrime 7193 },
  { lower := 7248, upper := 7274, witness := RowWitness.topPrime 7247 },
  { lower := 7406, upper := 7447, witness := RowWitness.topPrime 7393 },
  { lower := 7448, upper := 7460, witness := RowWitness.topPrime 7433 },
  { lower := 7533, upper := 7583, witness := RowWitness.topPrime 7529 },
  { lower := 7584, upper := 7623, witness := RowWitness.topPrime 7583 },
  { lower := 7688, upper := 7734, witness := RowWitness.topPrime 7687 },
  { lower := 7935, upper := 7987, witness := RowWitness.topPrime 7933 },
  { lower := 7988, upper := 7990, witness := RowWitness.topPrime 7963 },
  { lower := 8214, upper := 8263, witness := RowWitness.topPrime 8209 },
  { lower := 8264, upper := 8268, witness := RowWitness.topPrime 8263 },
  { lower := 8405, upper := 8443, witness := RowWitness.topPrime 8389 },
  { lower := 8444, upper := 8481, witness := RowWitness.topPrime 8443 },
  { lower := 8664, upper := 8717, witness := RowWitness.topPrime 8663 },
  { lower := 8718, upper := 8724, witness := RowWitness.topPrime 8713 },
  { lower := 8748, upper := 8758, witness := RowWitness.topPrime 8747 },
  { lower := 8788, upper := 8802, witness := RowWitness.topPrime 8783 },
  { lower := 8836, upper := 8842, witness := RowWitness.topPrime 8831 },
  { lower := 8959, upper := 8972, witness := RowWitness.topPrime 8951 },
  { lower := 8993, upper := 9013, witness := RowWitness.topPrime 8971 },
  { lower := 9025, upper := 9047, witness := RowWitness.topPrime 9013 },
  { lower := 9245, upper := 9295, witness := RowWitness.topPrime 9241 },
  { lower := 9296, upper := 9305, witness := RowWitness.topPrime 9293 },
  { lower := 9386, upper := 9429, witness := RowWitness.topPrime 9377 },
  { lower := 9522, upper := 9531, witness := RowWitness.topPrime 9521 },
  { lower := 9604, upper := 9655, witness := RowWitness.topPrime 9601 },
  { lower := 9656, upper := 9658, witness := RowWitness.topPrime 9649 },
  { lower := 9747, upper := 9782, witness := RowWitness.topPrime 9743 },
  { lower := 10086, upper := 10133, witness := RowWitness.topPrime 10079 },
  { lower := 10134, upper := 10146, witness := RowWitness.topPrime 10133 },
  { lower := 10240, upper := 10260, witness := RowWitness.topPrime 10223 },
  { lower := 10290, upper := 10294, witness := RowWitness.topPrime 10289 },
  { lower := 10580, upper := 10621, witness := RowWitness.topPrime 10567 },
  { lower := 10622, upper := 10625, witness := RowWitness.topPrime 10613 },
  { lower := 10633, upper := 10634, witness := RowWitness.topPrime 10631 },
  { lower := 10935, upper := 10963, witness := RowWitness.topPrime 10909 },
  { lower := 10964, upper := 11006, witness := RowWitness.topPrime 10957 },
  { lower := 11094, upper := 11099, witness := RowWitness.topPrime 11093 },
  { lower := 11109, upper := 11147, witness := RowWitness.topPrime 11093 },
  { lower := 11148, upper := 11148, witness := RowWitness.topPrime 11131 },
  { lower := 11236, upper := 11245, witness := RowWitness.topPrime 11213 },
  { lower := 11264, upper := 11290, witness := RowWitness.topPrime 11261 },
  { lower := 11664, upper := 11692, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11797, witness := RowWitness.topPrime 11743 },
  { lower := 11798, upper := 11828, witness := RowWitness.topPrime 11789 },
  { lower := 12321, upper := 12342, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12547, witness := RowWitness.topPrime 12497 },
  { lower := 13225, upper := 13236, witness := RowWitness.topPrime 13219 },
  { lower := 13254, upper := 13279, witness := RowWitness.topPrime 13249 },
  { lower := 13454, upper := 13505, witness := RowWitness.topPrime 13451 },
  { lower := 13506, upper := 13508, witness := RowWitness.topPrime 13499 },
  { lower := 13718, upper := 13744, witness := RowWitness.topPrime 13711 },
  { lower := 13754, upper := 13772, witness := RowWitness.topPrime 13751 },
  { lower := 13851, upper := 13878, witness := RowWitness.topPrime 13841 },
  { lower := 14297, upper := 14347, witness := RowWitness.topPrime 14293 },
  { lower := 14348, upper := 14351, witness := RowWitness.topPrime 14347 },
  { lower := 14415, upper := 14460, witness := RowWitness.topPrime 14411 },
  { lower := 14792, upper := 14793, witness := RowWitness.topPrime 14783 },
  { lower := 14812, upper := 14846, witness := RowWitness.topPrime 14797 },
  { lower := 14848, upper := 14866, witness := RowWitness.topPrime 14843 },
  { lower := 15138, upper := 15183, witness := RowWitness.topPrime 15137 },
  { lower := 15341, upper := 15385, witness := RowWitness.topPrime 15331 },
  { lower := 15386, upper := 15430, witness := RowWitness.topPrime 15383 },
  { lower := 16384, upper := 16391, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16438, witness := RowWitness.topPrime 16427 },
  { lower := 16807, upper := 16841, witness := RowWitness.topPrime 16787 },
  { lower := 16842, upper := 16874, witness := RowWitness.topPrime 16831 },
  { lower := 17672, upper := 17715, witness := RowWitness.topPrime 17669 },
  { lower := 18259, upper := 18279, witness := RowWitness.topPrime 18257 },
  { lower := 18491, upper := 18535, witness := RowWitness.topPrime 18481 },
  { lower := 18536, upper := 18545, witness := RowWitness.topPrime 18523 },
  { lower := 19208, upper := 19261, witness := RowWitness.topPrime 19207 },
  { lower := 19262, upper := 19262, witness := RowWitness.topPrime 19259 },
  { lower := 19663, upper := 19715, witness := RowWitness.topPrime 19661 },
  { lower := 19716, upper := 19717, witness := RowWitness.topPrime 19709 },
  { lower := 20181, upper := 20231, witness := RowWitness.topPrime 20177 },
  { lower := 20232, upper := 20235, witness := RowWitness.topPrime 20231 },
  { lower := 20577, upper := 20589, witness := RowWitness.topPrime 20563 },
  { lower := 21142, upper := 21193, witness := RowWitness.topPrime 21139 },
  { lower := 21194, upper := 21195, witness := RowWitness.topPrime 21193 },
  { lower := 21866, upper := 21917, witness := RowWitness.topPrime 21863 },
  { lower := 21918, upper := 21924, witness := RowWitness.topPrime 21911 },
  { lower := 22103, upper := 22144, witness := RowWitness.topPrime 22093 },
  { lower := 23548, upper := 23593, witness := RowWitness.topPrime 23539 },
  { lower := 23594, upper := 23602, witness := RowWitness.topPrime 23593 },
  { lower := 24025, upper := 24077, witness := RowWitness.topPrime 24023 },
  { lower := 24078, upper := 24091, witness := RowWitness.topPrime 24077 },
  { lower := 24334, upper := 24353, witness := RowWitness.topPrime 24329 },
  { lower := 24576, upper := 24619, witness := RowWitness.topPrime 24571 },
  { lower := 26411, upper := 26418, witness := RowWitness.topPrime 26407 },
  { lower := 28577, upper := 28615, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28726, witness := RowWitness.topPrime 28711 },
  { lower := 28749, upper := 28771, witness := RowWitness.topPrime 28729 },
  { lower := 30758, upper := 30774, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30953, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31267, witness := RowWitness.topPrime 31249 },
  { lower := 31487, upper := 31487, witness := RowWitness.topPrime 31481 },
  { lower := 32805, upper := 32822, witness := RowWitness.topPrime 32803 },
  { lower := 32856, upper := 32859, witness := RowWitness.topPrime 32843 },
  { lower := 33620, upper := 33668, witness := RowWitness.topPrime 33619 },
  { lower := 35152, upper := 35185, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35355, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36551, witness := RowWitness.topPrime 36497 },
  { lower := 36552, upper := 36555, witness := RowWitness.topPrime 36551 },
  { lower := 36982, upper := 37033, witness := RowWitness.topPrime 36979 },
  { lower := 37034, upper := 37034, witness := RowWitness.topPrime 37021 },
  { lower := 39326, upper := 39358, witness := RowWitness.topPrime 39323 },
  { lower := 39366, upper := 39380, witness := RowWitness.topPrime 39359 },
  { lower := 42025, upper := 42025, witness := RowWitness.topPrime 42023 },
  { lower := 43740, upper := 43760, witness := RowWitness.topPrime 43721 },
  { lower := 44217, upper := 44234, witness := RowWitness.topPrime 44207 },
  { lower := 48020, upper := 48067, witness := RowWitness.topPrime 48017 },
  { lower := 49152, upper := 49184, witness := RowWitness.topPrime 49139 },
  { lower := 50562, upper := 50585, witness := RowWitness.topPrime 50551 },
  { lower := 58989, upper := 59010, witness := RowWitness.topPrime 58979 },
  { lower := 73728, upper := 73749, witness := RowWitness.topPrime 73727 },
  { lower := 98304, upper := 98314, witness := RowWitness.topPrime 98299 },
  { lower := 327701, upper := 327734, witness := RowWitness.topPrime 327689 }
]

def row055_layers : List CoverLayer := [
  { lower := 2970, upper := 5940, M := 34 },
  { lower := 5940, upper := 11880, M := 31 },
  { lower := 11880, upper := 23760, M := 29 },
  { lower := 23760, upper := 47520, M := 26 },
  { lower := 47520, upper := 95040, M := 24 },
  { lower := 95040, upper := 190080, M := 22 },
  { lower := 190080, upper := 380160, M := 20 },
  { lower := 380160, upper := 760320, M := 18 },
  { lower := 760320, upper := 1520640, M := 17 },
  { lower := 1520640, upper := 3041280, M := 15 },
  { lower := 3041280, upper := 6082560, M := 14 },
  { lower := 6082560, upper := 12165120, M := 13 },
  { lower := 12165120, upper := 24330240, M := 12 },
  { lower := 24330240, upper := 48660480, M := 11 },
  { lower := 48660480, upper := 97320960, M := 10 },
  { lower := 97320960, upper := 194641920, M := 9 },
  { lower := 194641920, upper := 389283840, M := 8 },
  { lower := 389283840, upper := 778567680, M := 8 },
  { lower := 778567680, upper := 1557135360, M := 7 },
  { lower := 1557135360, upper := 3114270720, M := 6 },
  { lower := 3114270720, upper := 6228541440, M := 6 },
  { lower := 6228541440, upper := 12457082880, M := 5 },
  { lower := 12457082880, upper := 24914165760, M := 5 },
  { lower := 24914165760, upper := 49828331520, M := 5 },
  { lower := 49828331520, upper := 99656663040, M := 4 },
  { lower := 99656663040, upper := 199313326080, M := 4 },
  { lower := 199313326080, upper := 398626652160, M := 4 },
  { lower := 398626652160, upper := 797253304320, M := 3 },
  { lower := 797253304320, upper := 1594506608640, M := 3 },
  { lower := 1594506608640, upper := 3189013217280, M := 3 },
  { lower := 3189013217280, upper := 6378026434560, M := 3 },
  { lower := 6378026434560, upper := 12756052869120, M := 2 },
  { lower := 12756052869120, upper := 25512105738240, M := 2 },
  { lower := 25512105738240, upper := 51024211476480, M := 2 },
  { lower := 51024211476480, upper := 102048422952960, M := 2 },
  { lower := 102048422952960, upper := 204096845905920, M := 2 },
  { lower := 204096845905920, upper := 408193691811840, M := 2 },
  { lower := 408193691811840, upper := 816387383623680, M := 2 },
  { lower := 816387383623680, upper := 1000000000000000, M := 2 }
]

def row055 : FiniteCoverRow := {
  height := row055_height,
  goods := row055_goods,
  layers := row055_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_good000_checked :
    goodSegmentCheck 55 18 37
      { lower := 112, upper := 163, witness := RowWitness.topPrime 109 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good001_checked :
    goodSegmentCheck 55 18 37
      { lower := 164, upper := 217, witness := RowWitness.topPrime 163 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good002_checked :
    goodSegmentCheck 55 18 37
      { lower := 218, upper := 265, witness := RowWitness.topPrime 211 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good003_checked :
    goodSegmentCheck 55 18 37
      { lower := 266, upper := 317, witness := RowWitness.topPrime 263 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good004_checked :
    goodSegmentCheck 55 18 37
      { lower := 318, upper := 371, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good005_checked :
    goodSegmentCheck 55 18 37
      { lower := 372, upper := 421, witness := RowWitness.topPrime 367 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good006_checked :
    goodSegmentCheck 55 18 37
      { lower := 422, upper := 475, witness := RowWitness.topPrime 421 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good007_checked :
    goodSegmentCheck 55 18 37
      { lower := 476, upper := 521, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good008_checked :
    goodSegmentCheck 55 18 37
      { lower := 522, upper := 575, witness := RowWitness.topPrime 521 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good009_checked :
    goodSegmentCheck 55 18 37
      { lower := 576, upper := 625, witness := RowWitness.topPrime 571 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good010_checked :
    goodSegmentCheck 55 18 37
      { lower := 626, upper := 673, witness := RowWitness.topPrime 619 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good011_checked :
    goodSegmentCheck 55 18 37
      { lower := 674, upper := 727, witness := RowWitness.topPrime 673 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good012_checked :
    goodSegmentCheck 55 18 37
      { lower := 728, upper := 781, witness := RowWitness.topPrime 727 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good013_checked :
    goodSegmentCheck 55 18 37
      { lower := 782, upper := 827, witness := RowWitness.topPrime 773 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good014_checked :
    goodSegmentCheck 55 18 37
      { lower := 828, upper := 881, witness := RowWitness.topPrime 827 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good015_checked :
    goodSegmentCheck 55 18 37
      { lower := 882, upper := 935, witness := RowWitness.topPrime 881 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_good016_checked :
    goodSegmentCheck 55 18 37
      { lower := 936, upper := 983, witness := RowWitness.topPrime 929 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good017_checked :
    goodSegmentCheck 55 18 37
      { lower := 984, upper := 1037, witness := RowWitness.topPrime 983 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good018_checked :
    goodSegmentCheck 55 18 37
      { lower := 1038, upper := 1087, witness := RowWitness.topPrime 1033 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good019_checked :
    goodSegmentCheck 55 18 37
      { lower := 1088, upper := 1141, witness := RowWitness.topPrime 1087 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good020_checked :
    goodSegmentCheck 55 18 37
      { lower := 1142, upper := 1183, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good021_checked :
    goodSegmentCheck 55 18 37
      { lower := 1184, upper := 1235, witness := RowWitness.topPrime 1181 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good022_checked :
    goodSegmentCheck 55 18 37
      { lower := 1236, upper := 1285, witness := RowWitness.topPrime 1231 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good023_checked :
    goodSegmentCheck 55 18 37
      { lower := 1286, upper := 1337, witness := RowWitness.topPrime 1283 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good024_checked :
    goodSegmentCheck 55 18 37
      { lower := 1338, upper := 1381, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good025_checked :
    goodSegmentCheck 55 18 37
      { lower := 1382, upper := 1435, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good026_checked :
    goodSegmentCheck 55 18 37
      { lower := 1436, upper := 1487, witness := RowWitness.topPrime 1433 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good027_checked :
    goodSegmentCheck 55 18 37
      { lower := 1488, upper := 1541, witness := RowWitness.topPrime 1487 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good028_checked :
    goodSegmentCheck 55 18 37
      { lower := 1542, upper := 1585, witness := RowWitness.topPrime 1531 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good029_checked :
    goodSegmentCheck 55 18 37
      { lower := 1586, upper := 1637, witness := RowWitness.topPrime 1583 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good030_checked :
    goodSegmentCheck 55 18 37
      { lower := 1638, upper := 1691, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good031_checked :
    goodSegmentCheck 55 18 37
      { lower := 1692, upper := 1723, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_good032_checked :
    goodSegmentCheck 55 18 37
      { lower := 1724, upper := 1777, witness := RowWitness.topPrime 1723 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good033_checked :
    goodSegmentCheck 55 18 37
      { lower := 1778, upper := 1831, witness := RowWitness.topPrime 1777 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good034_checked :
    goodSegmentCheck 55 18 37
      { lower := 1832, upper := 1885, witness := RowWitness.topPrime 1831 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good035_checked :
    goodSegmentCheck 55 18 37
      { lower := 1886, upper := 1933, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good036_checked :
    goodSegmentCheck 55 18 37
      { lower := 1934, upper := 1987, witness := RowWitness.topPrime 1933 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good037_checked :
    goodSegmentCheck 55 18 37
      { lower := 1988, upper := 2041, witness := RowWitness.topPrime 1987 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good038_checked :
    goodSegmentCheck 55 18 37
      { lower := 2042, upper := 2093, witness := RowWitness.topPrime 2039 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good039_checked :
    goodSegmentCheck 55 18 37
      { lower := 2094, upper := 2143, witness := RowWitness.topPrime 2089 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good040_checked :
    goodSegmentCheck 55 18 37
      { lower := 2144, upper := 2197, witness := RowWitness.topPrime 2143 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good041_checked :
    goodSegmentCheck 55 18 37
      { lower := 2198, upper := 2233, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good042_checked :
    goodSegmentCheck 55 18 37
      { lower := 2234, upper := 2275, witness := RowWitness.topPrime 2221 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good043_checked :
    goodSegmentCheck 55 18 37
      { lower := 2276, upper := 2327, witness := RowWitness.topPrime 2273 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good044_checked :
    goodSegmentCheck 55 18 37
      { lower := 2328, upper := 2365, witness := RowWitness.topPrime 2311 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good045_checked :
    goodSegmentCheck 55 18 37
      { lower := 2366, upper := 2411, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good046_checked :
    goodSegmentCheck 55 18 37
      { lower := 2412, upper := 2465, witness := RowWitness.topPrime 2411 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good047_checked :
    goodSegmentCheck 55 18 37
      { lower := 2466, upper := 2513, witness := RowWitness.topPrime 2459 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_good048_checked :
    goodSegmentCheck 55 18 37
      { lower := 2514, upper := 2557, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good049_checked :
    goodSegmentCheck 55 18 37
      { lower := 2558, upper := 2611, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good050_checked :
    goodSegmentCheck 55 18 37
      { lower := 2612, upper := 2663, witness := RowWitness.topPrime 2609 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good051_checked :
    goodSegmentCheck 55 18 37
      { lower := 2664, upper := 2717, witness := RowWitness.topPrime 2663 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good052_checked :
    goodSegmentCheck 55 18 37
      { lower := 2718, upper := 2767, witness := RowWitness.topPrime 2713 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good053_checked :
    goodSegmentCheck 55 18 37
      { lower := 2768, upper := 2821, witness := RowWitness.topPrime 2767 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good054_checked :
    goodSegmentCheck 55 18 37
      { lower := 2822, upper := 2873, witness := RowWitness.topPrime 2819 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good055_checked :
    goodSegmentCheck 55 18 37
      { lower := 2874, upper := 2915, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good056_checked :
    goodSegmentCheck 55 18 37
      { lower := 2916, upper := 2963, witness := RowWitness.topPrime 2909 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good057_checked :
    goodSegmentCheck 55 18 37
      { lower := 2964, upper := 2970, witness := RowWitness.topPrime 2963 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good058_checked :
    goodSegmentCheck 55 18 37
      { lower := 3072, upper := 3121, witness := RowWitness.topPrime 3067 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good059_checked :
    goodSegmentCheck 55 18 37
      { lower := 3122, upper := 3141, witness := RowWitness.topPrime 3121 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good060_checked :
    goodSegmentCheck 55 18 37
      { lower := 3159, upper := 3191, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good061_checked :
    goodSegmentCheck 55 18 37
      { lower := 3192, upper := 3245, witness := RowWitness.topPrime 3191 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good062_checked :
    goodSegmentCheck 55 18 37
      { lower := 3246, upper := 3265, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good063_checked :
    goodSegmentCheck 55 18 37
      { lower := 3362, upper := 3415, witness := RowWitness.topPrime 3361 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_good064_checked :
    goodSegmentCheck 55 18 37
      { lower := 3416, upper := 3467, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good065_checked :
    goodSegmentCheck 55 18 37
      { lower := 3468, upper := 3510, witness := RowWitness.topPrime 3467 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good066_checked :
    goodSegmentCheck 55 18 37
      { lower := 3584, upper := 3603, witness := RowWitness.topPrime 3583 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good067_checked :
    goodSegmentCheck 55 18 37
      { lower := 3610, upper := 3638, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good068_checked :
    goodSegmentCheck 55 18 37
      { lower := 3645, upper := 3664, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good069_checked :
    goodSegmentCheck 55 18 37
      { lower := 3698, upper := 3699, witness := RowWitness.topPrime 3697 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good070_checked :
    goodSegmentCheck 55 18 37
      { lower := 3703, upper := 3755, witness := RowWitness.topPrime 3701 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good071_checked :
    goodSegmentCheck 55 18 37
      { lower := 3756, upper := 3793, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good072_checked :
    goodSegmentCheck 55 18 37
      { lower := 3794, upper := 3811, witness := RowWitness.topPrime 3793 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good073_checked :
    goodSegmentCheck 55 18 37
      { lower := 3844, upper := 3887, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good074_checked :
    goodSegmentCheck 55 18 37
      { lower := 3888, upper := 3935, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good075_checked :
    goodSegmentCheck 55 18 37
      { lower := 3936, upper := 3941, witness := RowWitness.topPrime 3931 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good076_checked :
    goodSegmentCheck 55 18 37
      { lower := 3971, upper := 4021, witness := RowWitness.topPrime 3967 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good077_checked :
    goodSegmentCheck 55 18 37
      { lower := 4022, upper := 4025, witness := RowWitness.topPrime 4021 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good078_checked :
    goodSegmentCheck 55 18 37
      { lower := 4046, upper := 4047, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good079_checked :
    goodSegmentCheck 55 18 37
      { lower := 4056, upper := 4105, witness := RowWitness.topPrime 4051 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_good080_checked :
    goodSegmentCheck 55 18 37
      { lower := 4106, upper := 4153, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good081_checked :
    goodSegmentCheck 55 18 37
      { lower := 4154, upper := 4170, witness := RowWitness.topPrime 4153 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good082_checked :
    goodSegmentCheck 55 18 37
      { lower := 4224, upper := 4273, witness := RowWitness.topPrime 4219 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good083_checked :
    goodSegmentCheck 55 18 37
      { lower := 4274, upper := 4279, witness := RowWitness.topPrime 4273 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good084_checked :
    goodSegmentCheck 55 18 37
      { lower := 4335, upper := 4381, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good085_checked :
    goodSegmentCheck 55 18 37
      { lower := 4382, upper := 4427, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good086_checked :
    goodSegmentCheck 55 18 37
      { lower := 4428, upper := 4448, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good087_checked :
    goodSegmentCheck 55 18 37
      { lower := 4459, upper := 4472, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good088_checked :
    goodSegmentCheck 55 18 37
      { lower := 4608, upper := 4657, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good089_checked :
    goodSegmentCheck 55 18 37
      { lower := 4658, upper := 4671, witness := RowWitness.topPrime 4657 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good090_checked :
    goodSegmentCheck 55 18 37
      { lower := 4732, upper := 4747, witness := RowWitness.topPrime 4729 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good091_checked :
    goodSegmentCheck 55 18 37
      { lower := 4761, upper := 4786, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good092_checked :
    goodSegmentCheck 55 18 37
      { lower := 4802, upper := 4855, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good093_checked :
    goodSegmentCheck 55 18 37
      { lower := 4856, upper := 4856, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good094_checked :
    goodSegmentCheck 55 18 37
      { lower := 4864, upper := 4915, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good095_checked :
    goodSegmentCheck 55 18 37
      { lower := 4916, upper := 4955, witness := RowWitness.topPrime 4909 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_good096_checked :
    goodSegmentCheck 55 18 37
      { lower := 5046, upper := 5093, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good097_checked :
    goodSegmentCheck 55 18 37
      { lower := 5094, upper := 5141, witness := RowWitness.topPrime 5087 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good098_checked :
    goodSegmentCheck 55 18 37
      { lower := 5142, upper := 5173, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good099_checked :
    goodSegmentCheck 55 18 37
      { lower := 5174, upper := 5174, witness := RowWitness.topPrime 5171 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good100_checked :
    goodSegmentCheck 55 18 37
      { lower := 5239, upper := 5256, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good101_checked :
    goodSegmentCheck 55 18 37
      { lower := 5290, upper := 5293, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good102_checked :
    goodSegmentCheck 55 18 37
      { lower := 5376, upper := 5400, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good103_checked :
    goodSegmentCheck 55 18 37
      { lower := 5408, upper := 5461, witness := RowWitness.topPrime 5407 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good104_checked :
    goodSegmentCheck 55 18 37
      { lower := 5462, upper := 5462, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good105_checked :
    goodSegmentCheck 55 18 37
      { lower := 5488, upper := 5537, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good106_checked :
    goodSegmentCheck 55 18 37
      { lower := 5538, upper := 5542, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good107_checked :
    goodSegmentCheck 55 18 37
      { lower := 5577, upper := 5627, witness := RowWitness.topPrime 5573 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good108_checked :
    goodSegmentCheck 55 18 37
      { lower := 5628, upper := 5672, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good109_checked :
    goodSegmentCheck 55 18 37
      { lower := 5766, upper := 5803, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good110_checked :
    goodSegmentCheck 55 18 37
      { lower := 5804, upper := 5855, witness := RowWitness.topPrime 5801 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good111_checked :
    goodSegmentCheck 55 18 37
      { lower := 5856, upper := 5885, witness := RowWitness.topPrime 5851 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_good112_checked :
    goodSegmentCheck 55 18 37
      { lower := 5888, upper := 5935, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good113_checked :
    goodSegmentCheck 55 18 37
      { lower := 5936, upper := 5941, witness := RowWitness.topPrime 5927 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good114_checked :
    goodSegmentCheck 55 18 37
      { lower := 6075, upper := 6123, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good115_checked :
    goodSegmentCheck 55 18 37
      { lower := 6144, upper := 6197, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good116_checked :
    goodSegmentCheck 55 18 37
      { lower := 6198, upper := 6198, witness := RowWitness.topPrime 6197 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good117_checked :
    goodSegmentCheck 55 18 37
      { lower := 6348, upper := 6397, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good118_checked :
    goodSegmentCheck 55 18 37
      { lower := 6398, upper := 6412, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good119_checked :
    goodSegmentCheck 55 18 37
      { lower := 6517, upper := 6545, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good120_checked :
    goodSegmentCheck 55 18 37
      { lower := 6546, upper := 6552, witness := RowWitness.topPrime 6529 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good121_checked :
    goodSegmentCheck 55 18 37
      { lower := 6561, upper := 6571, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good122_checked :
    goodSegmentCheck 55 18 37
      { lower := 6591, upper := 6615, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good123_checked :
    goodSegmentCheck 55 18 37
      { lower := 6627, upper := 6645, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good124_checked :
    goodSegmentCheck 55 18 37
      { lower := 6647, upper := 6691, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good125_checked :
    goodSegmentCheck 55 18 37
      { lower := 6692, upper := 6701, witness := RowWitness.topPrime 6691 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good126_checked :
    goodSegmentCheck 55 18 37
      { lower := 6727, upper := 6773, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good127_checked :
    goodSegmentCheck 55 18 37
      { lower := 6774, upper := 6781, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_good128_checked :
    goodSegmentCheck 55 18 37
      { lower := 6845, upper := 6895, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good129_checked :
    goodSegmentCheck 55 18 37
      { lower := 6896, upper := 6931, witness := RowWitness.topPrime 6883 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good130_checked :
    goodSegmentCheck 55 18 37
      { lower := 6936, upper := 6966, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good131_checked :
    goodSegmentCheck 55 18 37
      { lower := 7203, upper := 7247, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good132_checked :
    goodSegmentCheck 55 18 37
      { lower := 7248, upper := 7274, witness := RowWitness.topPrime 7247 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good133_checked :
    goodSegmentCheck 55 18 37
      { lower := 7406, upper := 7447, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good134_checked :
    goodSegmentCheck 55 18 37
      { lower := 7448, upper := 7460, witness := RowWitness.topPrime 7433 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good135_checked :
    goodSegmentCheck 55 18 37
      { lower := 7533, upper := 7583, witness := RowWitness.topPrime 7529 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good136_checked :
    goodSegmentCheck 55 18 37
      { lower := 7584, upper := 7623, witness := RowWitness.topPrime 7583 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good137_checked :
    goodSegmentCheck 55 18 37
      { lower := 7688, upper := 7734, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good138_checked :
    goodSegmentCheck 55 18 37
      { lower := 7935, upper := 7987, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good139_checked :
    goodSegmentCheck 55 18 37
      { lower := 7988, upper := 7990, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good140_checked :
    goodSegmentCheck 55 18 37
      { lower := 8214, upper := 8263, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good141_checked :
    goodSegmentCheck 55 18 37
      { lower := 8264, upper := 8268, witness := RowWitness.topPrime 8263 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good142_checked :
    goodSegmentCheck 55 18 37
      { lower := 8405, upper := 8443, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good143_checked :
    goodSegmentCheck 55 18 37
      { lower := 8444, upper := 8481, witness := RowWitness.topPrime 8443 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_good144_checked :
    goodSegmentCheck 55 18 37
      { lower := 8664, upper := 8717, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good145_checked :
    goodSegmentCheck 55 18 37
      { lower := 8718, upper := 8724, witness := RowWitness.topPrime 8713 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good146_checked :
    goodSegmentCheck 55 18 37
      { lower := 8748, upper := 8758, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good147_checked :
    goodSegmentCheck 55 18 37
      { lower := 8788, upper := 8802, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good148_checked :
    goodSegmentCheck 55 18 37
      { lower := 8836, upper := 8842, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good149_checked :
    goodSegmentCheck 55 18 37
      { lower := 8959, upper := 8972, witness := RowWitness.topPrime 8951 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good150_checked :
    goodSegmentCheck 55 18 37
      { lower := 8993, upper := 9013, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good151_checked :
    goodSegmentCheck 55 18 37
      { lower := 9025, upper := 9047, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good152_checked :
    goodSegmentCheck 55 18 37
      { lower := 9245, upper := 9295, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good153_checked :
    goodSegmentCheck 55 18 37
      { lower := 9296, upper := 9305, witness := RowWitness.topPrime 9293 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good154_checked :
    goodSegmentCheck 55 18 37
      { lower := 9386, upper := 9429, witness := RowWitness.topPrime 9377 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good155_checked :
    goodSegmentCheck 55 18 37
      { lower := 9522, upper := 9531, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good156_checked :
    goodSegmentCheck 55 18 37
      { lower := 9604, upper := 9655, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good157_checked :
    goodSegmentCheck 55 18 37
      { lower := 9656, upper := 9658, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good158_checked :
    goodSegmentCheck 55 18 37
      { lower := 9747, upper := 9782, witness := RowWitness.topPrime 9743 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good159_checked :
    goodSegmentCheck 55 18 37
      { lower := 10086, upper := 10133, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_good160_checked :
    goodSegmentCheck 55 18 37
      { lower := 10134, upper := 10146, witness := RowWitness.topPrime 10133 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good161_checked :
    goodSegmentCheck 55 18 37
      { lower := 10240, upper := 10260, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good162_checked :
    goodSegmentCheck 55 18 37
      { lower := 10290, upper := 10294, witness := RowWitness.topPrime 10289 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good163_checked :
    goodSegmentCheck 55 18 37
      { lower := 10580, upper := 10621, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good164_checked :
    goodSegmentCheck 55 18 37
      { lower := 10622, upper := 10625, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good165_checked :
    goodSegmentCheck 55 18 37
      { lower := 10633, upper := 10634, witness := RowWitness.topPrime 10631 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good166_checked :
    goodSegmentCheck 55 18 37
      { lower := 10935, upper := 10963, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good167_checked :
    goodSegmentCheck 55 18 37
      { lower := 10964, upper := 11006, witness := RowWitness.topPrime 10957 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good168_checked :
    goodSegmentCheck 55 18 37
      { lower := 11094, upper := 11099, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good169_checked :
    goodSegmentCheck 55 18 37
      { lower := 11109, upper := 11147, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good170_checked :
    goodSegmentCheck 55 18 37
      { lower := 11148, upper := 11148, witness := RowWitness.topPrime 11131 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good171_checked :
    goodSegmentCheck 55 18 37
      { lower := 11236, upper := 11245, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good172_checked :
    goodSegmentCheck 55 18 37
      { lower := 11264, upper := 11290, witness := RowWitness.topPrime 11261 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good173_checked :
    goodSegmentCheck 55 18 37
      { lower := 11664, upper := 11692, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good174_checked :
    goodSegmentCheck 55 18 37
      { lower := 11774, upper := 11797, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good175_checked :
    goodSegmentCheck 55 18 37
      { lower := 11798, upper := 11828, witness := RowWitness.topPrime 11789 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_good176_checked :
    goodSegmentCheck 55 18 37
      { lower := 12321, upper := 12342, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good177_checked :
    goodSegmentCheck 55 18 37
      { lower := 12500, upper := 12547, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good178_checked :
    goodSegmentCheck 55 18 37
      { lower := 13225, upper := 13236, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good179_checked :
    goodSegmentCheck 55 18 37
      { lower := 13254, upper := 13279, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good180_checked :
    goodSegmentCheck 55 18 37
      { lower := 13454, upper := 13505, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good181_checked :
    goodSegmentCheck 55 18 37
      { lower := 13506, upper := 13508, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good182_checked :
    goodSegmentCheck 55 18 37
      { lower := 13718, upper := 13744, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good183_checked :
    goodSegmentCheck 55 18 37
      { lower := 13754, upper := 13772, witness := RowWitness.topPrime 13751 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good184_checked :
    goodSegmentCheck 55 18 37
      { lower := 13851, upper := 13878, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good185_checked :
    goodSegmentCheck 55 18 37
      { lower := 14297, upper := 14347, witness := RowWitness.topPrime 14293 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good186_checked :
    goodSegmentCheck 55 18 37
      { lower := 14348, upper := 14351, witness := RowWitness.topPrime 14347 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good187_checked :
    goodSegmentCheck 55 18 37
      { lower := 14415, upper := 14460, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good188_checked :
    goodSegmentCheck 55 18 37
      { lower := 14792, upper := 14793, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good189_checked :
    goodSegmentCheck 55 18 37
      { lower := 14812, upper := 14846, witness := RowWitness.topPrime 14797 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good190_checked :
    goodSegmentCheck 55 18 37
      { lower := 14848, upper := 14866, witness := RowWitness.topPrime 14843 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good191_checked :
    goodSegmentCheck 55 18 37
      { lower := 15138, upper := 15183, witness := RowWitness.topPrime 15137 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_good192_checked :
    goodSegmentCheck 55 18 37
      { lower := 15341, upper := 15385, witness := RowWitness.topPrime 15331 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good193_checked :
    goodSegmentCheck 55 18 37
      { lower := 15386, upper := 15430, witness := RowWitness.topPrime 15383 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good194_checked :
    goodSegmentCheck 55 18 37
      { lower := 16384, upper := 16391, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good195_checked :
    goodSegmentCheck 55 18 37
      { lower := 16428, upper := 16438, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good196_checked :
    goodSegmentCheck 55 18 37
      { lower := 16807, upper := 16841, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good197_checked :
    goodSegmentCheck 55 18 37
      { lower := 16842, upper := 16874, witness := RowWitness.topPrime 16831 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good198_checked :
    goodSegmentCheck 55 18 37
      { lower := 17672, upper := 17715, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good199_checked :
    goodSegmentCheck 55 18 37
      { lower := 18259, upper := 18279, witness := RowWitness.topPrime 18257 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good200_checked :
    goodSegmentCheck 55 18 37
      { lower := 18491, upper := 18535, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good201_checked :
    goodSegmentCheck 55 18 37
      { lower := 18536, upper := 18545, witness := RowWitness.topPrime 18523 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good202_checked :
    goodSegmentCheck 55 18 37
      { lower := 19208, upper := 19261, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good203_checked :
    goodSegmentCheck 55 18 37
      { lower := 19262, upper := 19262, witness := RowWitness.topPrime 19259 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good204_checked :
    goodSegmentCheck 55 18 37
      { lower := 19663, upper := 19715, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good205_checked :
    goodSegmentCheck 55 18 37
      { lower := 19716, upper := 19717, witness := RowWitness.topPrime 19709 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good206_checked :
    goodSegmentCheck 55 18 37
      { lower := 20181, upper := 20231, witness := RowWitness.topPrime 20177 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good207_checked :
    goodSegmentCheck 55 18 37
      { lower := 20232, upper := 20235, witness := RowWitness.topPrime 20231 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_good208_checked :
    goodSegmentCheck 55 18 37
      { lower := 20577, upper := 20589, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good209_checked :
    goodSegmentCheck 55 18 37
      { lower := 21142, upper := 21193, witness := RowWitness.topPrime 21139 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good210_checked :
    goodSegmentCheck 55 18 37
      { lower := 21194, upper := 21195, witness := RowWitness.topPrime 21193 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good211_checked :
    goodSegmentCheck 55 18 37
      { lower := 21866, upper := 21917, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good212_checked :
    goodSegmentCheck 55 18 37
      { lower := 21918, upper := 21924, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good213_checked :
    goodSegmentCheck 55 18 37
      { lower := 22103, upper := 22144, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good214_checked :
    goodSegmentCheck 55 18 37
      { lower := 23548, upper := 23593, witness := RowWitness.topPrime 23539 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good215_checked :
    goodSegmentCheck 55 18 37
      { lower := 23594, upper := 23602, witness := RowWitness.topPrime 23593 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good216_checked :
    goodSegmentCheck 55 18 37
      { lower := 24025, upper := 24077, witness := RowWitness.topPrime 24023 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good217_checked :
    goodSegmentCheck 55 18 37
      { lower := 24078, upper := 24091, witness := RowWitness.topPrime 24077 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good218_checked :
    goodSegmentCheck 55 18 37
      { lower := 24334, upper := 24353, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good219_checked :
    goodSegmentCheck 55 18 37
      { lower := 24576, upper := 24619, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good220_checked :
    goodSegmentCheck 55 18 37
      { lower := 26411, upper := 26418, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good221_checked :
    goodSegmentCheck 55 18 37
      { lower := 28577, upper := 28615, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good222_checked :
    goodSegmentCheck 55 18 37
      { lower := 28717, upper := 28726, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good223_checked :
    goodSegmentCheck 55 18 37
      { lower := 28749, upper := 28771, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_good224_checked :
    goodSegmentCheck 55 18 37
      { lower := 30758, upper := 30774, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good225_checked :
    goodSegmentCheck 55 18 37
      { lower := 30926, upper := 30953, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good226_checked :
    goodSegmentCheck 55 18 37
      { lower := 31250, upper := 31267, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good227_checked :
    goodSegmentCheck 55 18 37
      { lower := 31487, upper := 31487, witness := RowWitness.topPrime 31481 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good228_checked :
    goodSegmentCheck 55 18 37
      { lower := 32805, upper := 32822, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good229_checked :
    goodSegmentCheck 55 18 37
      { lower := 32856, upper := 32859, witness := RowWitness.topPrime 32843 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good230_checked :
    goodSegmentCheck 55 18 37
      { lower := 33620, upper := 33668, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good231_checked :
    goodSegmentCheck 55 18 37
      { lower := 35152, upper := 35185, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good232_checked :
    goodSegmentCheck 55 18 37
      { lower := 35344, upper := 35355, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good233_checked :
    goodSegmentCheck 55 18 37
      { lower := 36517, upper := 36551, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good234_checked :
    goodSegmentCheck 55 18 37
      { lower := 36552, upper := 36555, witness := RowWitness.topPrime 36551 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good235_checked :
    goodSegmentCheck 55 18 37
      { lower := 36982, upper := 37033, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good236_checked :
    goodSegmentCheck 55 18 37
      { lower := 37034, upper := 37034, witness := RowWitness.topPrime 37021 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good237_checked :
    goodSegmentCheck 55 18 37
      { lower := 39326, upper := 39358, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good238_checked :
    goodSegmentCheck 55 18 37
      { lower := 39366, upper := 39380, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good239_checked :
    goodSegmentCheck 55 18 37
      { lower := 42025, upper := 42025, witness := RowWitness.topPrime 42023 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_good240_checked :
    goodSegmentCheck 55 18 37
      { lower := 43740, upper := 43760, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good241_checked :
    goodSegmentCheck 55 18 37
      { lower := 44217, upper := 44234, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good242_checked :
    goodSegmentCheck 55 18 37
      { lower := 48020, upper := 48067, witness := RowWitness.topPrime 48017 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good243_checked :
    goodSegmentCheck 55 18 37
      { lower := 49152, upper := 49184, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good244_checked :
    goodSegmentCheck 55 18 37
      { lower := 50562, upper := 50585, witness := RowWitness.topPrime 50551 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good245_checked :
    goodSegmentCheck 55 18 37
      { lower := 58989, upper := 59010, witness := RowWitness.topPrime 58979 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good246_checked :
    goodSegmentCheck 55 18 37
      { lower := 73728, upper := 73749, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good247_checked :
    goodSegmentCheck 55 18 37
      { lower := 98304, upper := 98314, witness := RowWitness.topPrime 98299 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row055_good248_checked :
    goodSegmentCheck 55 18 37
      { lower := 327701, upper := 327734, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 55) (r := 18) (s := 37) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_good248_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_goods_checked :
    row055.goods.all (goodSegmentCheck row055.height.i row055.height.r row055.height.s) = true := by
  change row055_goods.all (goodSegmentCheck 55 18 37) = true
  simp only [row055_goods, List.all_cons, List.all_nil,
    row055_good000_checked,
    row055_good001_checked,
    row055_good002_checked,
    row055_good003_checked,
    row055_good004_checked,
    row055_good005_checked,
    row055_good006_checked,
    row055_good007_checked,
    row055_good008_checked,
    row055_good009_checked,
    row055_good010_checked,
    row055_good011_checked,
    row055_good012_checked,
    row055_good013_checked,
    row055_good014_checked,
    row055_good015_checked,
    row055_good016_checked,
    row055_good017_checked,
    row055_good018_checked,
    row055_good019_checked,
    row055_good020_checked,
    row055_good021_checked,
    row055_good022_checked,
    row055_good023_checked,
    row055_good024_checked,
    row055_good025_checked,
    row055_good026_checked,
    row055_good027_checked,
    row055_good028_checked,
    row055_good029_checked,
    row055_good030_checked,
    row055_good031_checked,
    row055_good032_checked,
    row055_good033_checked,
    row055_good034_checked,
    row055_good035_checked,
    row055_good036_checked,
    row055_good037_checked,
    row055_good038_checked,
    row055_good039_checked,
    row055_good040_checked,
    row055_good041_checked,
    row055_good042_checked,
    row055_good043_checked,
    row055_good044_checked,
    row055_good045_checked,
    row055_good046_checked,
    row055_good047_checked,
    row055_good048_checked,
    row055_good049_checked,
    row055_good050_checked,
    row055_good051_checked,
    row055_good052_checked,
    row055_good053_checked,
    row055_good054_checked,
    row055_good055_checked,
    row055_good056_checked,
    row055_good057_checked,
    row055_good058_checked,
    row055_good059_checked,
    row055_good060_checked,
    row055_good061_checked,
    row055_good062_checked,
    row055_good063_checked,
    row055_good064_checked,
    row055_good065_checked,
    row055_good066_checked,
    row055_good067_checked,
    row055_good068_checked,
    row055_good069_checked,
    row055_good070_checked,
    row055_good071_checked,
    row055_good072_checked,
    row055_good073_checked,
    row055_good074_checked,
    row055_good075_checked,
    row055_good076_checked,
    row055_good077_checked,
    row055_good078_checked,
    row055_good079_checked,
    row055_good080_checked,
    row055_good081_checked,
    row055_good082_checked,
    row055_good083_checked,
    row055_good084_checked,
    row055_good085_checked,
    row055_good086_checked,
    row055_good087_checked,
    row055_good088_checked,
    row055_good089_checked,
    row055_good090_checked,
    row055_good091_checked,
    row055_good092_checked,
    row055_good093_checked,
    row055_good094_checked,
    row055_good095_checked,
    row055_good096_checked,
    row055_good097_checked,
    row055_good098_checked,
    row055_good099_checked,
    row055_good100_checked,
    row055_good101_checked,
    row055_good102_checked,
    row055_good103_checked,
    row055_good104_checked,
    row055_good105_checked,
    row055_good106_checked,
    row055_good107_checked,
    row055_good108_checked,
    row055_good109_checked,
    row055_good110_checked,
    row055_good111_checked,
    row055_good112_checked,
    row055_good113_checked,
    row055_good114_checked,
    row055_good115_checked,
    row055_good116_checked,
    row055_good117_checked,
    row055_good118_checked,
    row055_good119_checked,
    row055_good120_checked,
    row055_good121_checked,
    row055_good122_checked,
    row055_good123_checked,
    row055_good124_checked,
    row055_good125_checked,
    row055_good126_checked,
    row055_good127_checked,
    row055_good128_checked,
    row055_good129_checked,
    row055_good130_checked,
    row055_good131_checked,
    row055_good132_checked,
    row055_good133_checked,
    row055_good134_checked,
    row055_good135_checked,
    row055_good136_checked,
    row055_good137_checked,
    row055_good138_checked,
    row055_good139_checked,
    row055_good140_checked,
    row055_good141_checked,
    row055_good142_checked,
    row055_good143_checked,
    row055_good144_checked,
    row055_good145_checked,
    row055_good146_checked,
    row055_good147_checked,
    row055_good148_checked,
    row055_good149_checked,
    row055_good150_checked,
    row055_good151_checked,
    row055_good152_checked,
    row055_good153_checked,
    row055_good154_checked,
    row055_good155_checked,
    row055_good156_checked,
    row055_good157_checked,
    row055_good158_checked,
    row055_good159_checked,
    row055_good160_checked,
    row055_good161_checked,
    row055_good162_checked,
    row055_good163_checked,
    row055_good164_checked,
    row055_good165_checked,
    row055_good166_checked,
    row055_good167_checked,
    row055_good168_checked,
    row055_good169_checked,
    row055_good170_checked,
    row055_good171_checked,
    row055_good172_checked,
    row055_good173_checked,
    row055_good174_checked,
    row055_good175_checked,
    row055_good176_checked,
    row055_good177_checked,
    row055_good178_checked,
    row055_good179_checked,
    row055_good180_checked,
    row055_good181_checked,
    row055_good182_checked,
    row055_good183_checked,
    row055_good184_checked,
    row055_good185_checked,
    row055_good186_checked,
    row055_good187_checked,
    row055_good188_checked,
    row055_good189_checked,
    row055_good190_checked,
    row055_good191_checked,
    row055_good192_checked,
    row055_good193_checked,
    row055_good194_checked,
    row055_good195_checked,
    row055_good196_checked,
    row055_good197_checked,
    row055_good198_checked,
    row055_good199_checked,
    row055_good200_checked,
    row055_good201_checked,
    row055_good202_checked,
    row055_good203_checked,
    row055_good204_checked,
    row055_good205_checked,
    row055_good206_checked,
    row055_good207_checked,
    row055_good208_checked,
    row055_good209_checked,
    row055_good210_checked,
    row055_good211_checked,
    row055_good212_checked,
    row055_good213_checked,
    row055_good214_checked,
    row055_good215_checked,
    row055_good216_checked,
    row055_good217_checked,
    row055_good218_checked,
    row055_good219_checked,
    row055_good220_checked,
    row055_good221_checked,
    row055_good222_checked,
    row055_good223_checked,
    row055_good224_checked,
    row055_good225_checked,
    row055_good226_checked,
    row055_good227_checked,
    row055_good228_checked,
    row055_good229_checked,
    row055_good230_checked,
    row055_good231_checked,
    row055_good232_checked,
    row055_good233_checked,
    row055_good234_checked,
    row055_good235_checked,
    row055_good236_checked,
    row055_good237_checked,
    row055_good238_checked,
    row055_good239_checked,
    row055_good240_checked,
    row055_good241_checked,
    row055_good242_checked,
    row055_good243_checked,
    row055_good244_checked,
    row055_good245_checked,
    row055_good246_checked,
    row055_good247_checked,
    row055_good248_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_registered :
    decide (row055.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row055_small_checked :
    coverCheck (2 * row055.height.i + 2) (row055.height.i * (row055.height.i - 1) - 1)
      (row055.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row055_layerCover_checked :
    coverCheck (row055.height.i * (row055.height.i - 1)) (row055.height.n0 - 1)
      (row055.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row055_bounds : List NatInterval :=
  [(112, 163), (164, 217), (218, 265), (266, 317), (318, 371), (372, 421), (422, 475), (476, 521), (522, 575), (576, 625), (626, 673), (674, 727), (728, 781), (782, 827), (828, 881), (882, 935), (936, 983), (984, 1037), (1038, 1087), (1088, 1141), (1142, 1183), (1184, 1235), (1236, 1285), (1286, 1337), (1338, 1381), (1382, 1435), (1436, 1487), (1488, 1541), (1542, 1585), (1586, 1637), (1638, 1691), (1692, 1723), (1724, 1777), (1778, 1831), (1832, 1885), (1886, 1933), (1934, 1987), (1988, 2041), (2042, 2093), (2094, 2143), (2144, 2197), (2198, 2233), (2234, 2275), (2276, 2327), (2328, 2365), (2366, 2411), (2412, 2465), (2466, 2513), (2514, 2557), (2558, 2611), (2612, 2663), (2664, 2717), (2718, 2767), (2768, 2821), (2822, 2873), (2874, 2915), (2916, 2963), (2964, 2970), (3072, 3121), (3122, 3141), (3159, 3191), (3192, 3245), (3246, 3265), (3362, 3415), (3416, 3467), (3468, 3510), (3584, 3603), (3610, 3638), (3645, 3664), (3698, 3699), (3703, 3755), (3756, 3793), (3794, 3811), (3844, 3887), (3888, 3935), (3936, 3941), (3971, 4021), (4022, 4025), (4046, 4047), (4056, 4105), (4106, 4153), (4154, 4170), (4224, 4273), (4274, 4279), (4335, 4381), (4382, 4427), (4428, 4448), (4459, 4472), (4608, 4657), (4658, 4671), (4732, 4747), (4761, 4786), (4802, 4855), (4856, 4856), (4864, 4915), (4916, 4955), (5046, 5093), (5094, 5141), (5142, 5173), (5174, 5174), (5239, 5256), (5290, 5293), (5376, 5400), (5408, 5461), (5462, 5462), (5488, 5537), (5538, 5542), (5577, 5627), (5628, 5672), (5766, 5803), (5804, 5855), (5856, 5885), (5888, 5935), (5936, 5941), (6075, 6123), (6144, 6197), (6198, 6198), (6348, 6397), (6398, 6412), (6517, 6545), (6546, 6552), (6561, 6571), (6591, 6615), (6627, 6645), (6647, 6691), (6692, 6701), (6727, 6773), (6774, 6781), (6845, 6895), (6896, 6931), (6936, 6966), (7203, 7247), (7248, 7274), (7406, 7447), (7448, 7460), (7533, 7583), (7584, 7623), (7688, 7734), (7935, 7987), (7988, 7990), (8214, 8263), (8264, 8268), (8405, 8443), (8444, 8481), (8664, 8717), (8718, 8724), (8748, 8758), (8788, 8802), (8836, 8842), (8959, 8972), (8993, 9013), (9025, 9047), (9245, 9295), (9296, 9305), (9386, 9429), (9522, 9531), (9604, 9655), (9656, 9658), (9747, 9782), (10086, 10133), (10134, 10146), (10240, 10260), (10290, 10294), (10580, 10621), (10622, 10625), (10633, 10634), (10935, 10963), (10964, 11006), (11094, 11099), (11109, 11147), (11148, 11148), (11236, 11245), (11264, 11290), (11664, 11692), (11774, 11797), (11798, 11828), (12321, 12342), (12500, 12547), (13225, 13236), (13254, 13279), (13454, 13505), (13506, 13508), (13718, 13744), (13754, 13772), (13851, 13878), (14297, 14347), (14348, 14351), (14415, 14460), (14792, 14793), (14812, 14846), (14848, 14866), (15138, 15183), (15341, 15385), (15386, 15430), (16384, 16391), (16428, 16438), (16807, 16841), (16842, 16874), (17672, 17715), (18259, 18279), (18491, 18535), (18536, 18545), (19208, 19261), (19262, 19262), (19663, 19715), (19716, 19717), (20181, 20231), (20232, 20235), (20577, 20589), (21142, 21193), (21194, 21195), (21866, 21917), (21918, 21924), (22103, 22144), (23548, 23593), (23594, 23602), (24025, 24077), (24078, 24091), (24334, 24353), (24576, 24619), (26411, 26418), (28577, 28615), (28717, 28726), (28749, 28771), (30758, 30774), (30926, 30953), (31250, 31267), (31487, 31487), (32805, 32822), (32856, 32859), (33620, 33668), (35152, 35185), (35344, 35355), (36517, 36551), (36552, 36555), (36982, 37033), (37034, 37034), (39326, 39358), (39366, 39380), (42025, 42025), (43740, 43760), (44217, 44234), (48020, 48067), (49152, 49184), (50562, 50585), (58989, 59010), (73728, 73749), (98304, 98314), (327701, 327734)]

theorem row055_bounds_eq : row055.goods.map goodSegmentBounds = row055_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row055_layer000_intervals : List ColouredInterval :=
  [(2, 2970, 2998), (2, 3072, 3126), (2, 3200, 3254), (2, 3328, 3382), (2, 3456, 3510), (2, 3584, 3638), (2, 3712, 3766), (2, 3840, 3894), (2, 3968, 4022), (2, 4096, 4150), (2, 4224, 4278), (2, 4352, 4406), (2, 3072, 3126), (2, 3328, 3382), (2, 3584, 3638), (2, 3840, 3894), (2, 4096, 4150), (2, 4352, 4406), (2, 4608, 4662), (2, 4864, 4918), (2, 5120, 5174), (2, 5376, 5430), (2, 5632, 5686), (2, 5888, 5939), (2, 3072, 3126), (2, 3584, 3638), (2, 4096, 4150), (2, 4608, 4662), (2, 5120, 5174), (2, 5632, 5686), (2, 3072, 3126), (2, 4096, 4150), (2, 5120, 5174), (2, 4096, 4150), (2, 4096, 4150), (3, 2970, 2970), (3, 3159, 3213), (3, 3402, 3456), (3, 3645, 3699), (3, 3888, 3942), (3, 4131, 4185), (3, 4374, 4428), (3, 4617, 4671), (3, 4860, 4914), (3, 5103, 5157), (3, 5346, 5400), (3, 5589, 5643), (3, 5832, 5886), (3, 2970, 2970), (3, 3645, 3699), (3, 4374, 4428), (3, 5103, 5157), (3, 5832, 5886), (3, 4374, 4428), (5, 3125, 3179), (5, 3750, 3804), (5, 3125, 3179), (7, 3087, 3141), (7, 3430, 3484), (7, 3773, 3827), (7, 4116, 4170), (7, 4459, 4513), (7, 4802, 4856), (7, 5145, 5199), (7, 5488, 5542), (7, 5831, 5885), (7, 4802, 4856), (11, 3993, 4047), (13, 3042, 3096), (13, 3211, 3265), (13, 3380, 3434), (13, 3549, 3603), (13, 3718, 3772), (13, 3887, 3941), (13, 4056, 4110), (13, 4225, 4279), (13, 4394, 4448), (13, 4563, 4617), (13, 4732, 4786), (13, 4901, 4955), (13, 5070, 5124), (13, 5239, 5293), (13, 5408, 5462), (13, 5577, 5631), (13, 5746, 5800), (13, 4394, 4448), (17, 3179, 3233), (17, 3468, 3522), (17, 3757, 3811), (17, 4046, 4100), (17, 4335, 4389), (17, 4624, 4678), (17, 4913, 4967), (17, 5202, 5256), (17, 5491, 5545), (17, 5780, 5834), (17, 4913, 4967), (19, 3249, 3303), (19, 3610, 3664), (19, 3971, 4025), (19, 4332, 4386), (19, 4693, 4747), (19, 5054, 5108), (19, 5415, 5469), (19, 5776, 5830), (23, 3174, 3228), (23, 3703, 3757), (23, 4232, 4286), (23, 4761, 4815), (23, 5290, 5344), (23, 5819, 5873), (29, 3364, 3418), (29, 4205, 4259), (29, 5046, 5100), (29, 5887, 5939), (31, 3844, 3898), (31, 4805, 4859), (31, 5766, 5820), (37, 4107, 4161), (37, 5476, 5530), (41, 3362, 3416), (41, 5043, 5097), (43, 3698, 3752), (43, 5547, 5601), (47, 4418, 4472), (53, 5618, 5672)]

def row055_layer000_block000 : List ColouredInterval :=
  [(2, 2970, 2998), (2, 3072, 3126), (2, 3200, 3254), (2, 3328, 3382), (2, 3456, 3510), (2, 3584, 3638), (2, 3712, 3766), (2, 3840, 3894), (2, 3968, 4022), (2, 4096, 4150), (2, 4224, 4278), (2, 4352, 4406), (2, 3072, 3126), (2, 3328, 3382), (2, 3584, 3638), (2, 3840, 3894)]

def row055_layer000_block001 : List ColouredInterval :=
  [(2, 4096, 4150), (2, 4352, 4406), (2, 4608, 4662), (2, 4864, 4918), (2, 5120, 5174), (2, 5376, 5430), (2, 5632, 5686), (2, 5888, 5939), (2, 3072, 3126), (2, 3584, 3638), (2, 4096, 4150), (2, 4608, 4662), (2, 5120, 5174), (2, 5632, 5686), (2, 3072, 3126), (2, 4096, 4150)]

def row055_layer000_block002 : List ColouredInterval :=
  [(2, 5120, 5174), (2, 4096, 4150), (2, 4096, 4150), (3, 2970, 2970), (3, 3159, 3213), (3, 3402, 3456), (3, 3645, 3699), (3, 3888, 3942), (3, 4131, 4185), (3, 4374, 4428), (3, 4617, 4671), (3, 4860, 4914), (3, 5103, 5157), (3, 5346, 5400), (3, 5589, 5643), (3, 5832, 5886)]

def row055_layer000_block003 : List ColouredInterval :=
  [(3, 2970, 2970), (3, 3645, 3699), (3, 4374, 4428), (3, 5103, 5157), (3, 5832, 5886), (3, 4374, 4428), (5, 3125, 3179), (5, 3750, 3804), (5, 3125, 3179), (7, 3087, 3141), (7, 3430, 3484), (7, 3773, 3827), (7, 4116, 4170), (7, 4459, 4513), (7, 4802, 4856), (7, 5145, 5199)]

def row055_layer000_block004 : List ColouredInterval :=
  [(7, 5488, 5542), (7, 5831, 5885), (7, 4802, 4856), (11, 3993, 4047), (13, 3042, 3096), (13, 3211, 3265), (13, 3380, 3434), (13, 3549, 3603), (13, 3718, 3772), (13, 3887, 3941), (13, 4056, 4110), (13, 4225, 4279), (13, 4394, 4448), (13, 4563, 4617), (13, 4732, 4786), (13, 4901, 4955)]

def row055_layer000_block005 : List ColouredInterval :=
  [(13, 5070, 5124), (13, 5239, 5293), (13, 5408, 5462), (13, 5577, 5631), (13, 5746, 5800), (13, 4394, 4448), (17, 3179, 3233), (17, 3468, 3522), (17, 3757, 3811), (17, 4046, 4100), (17, 4335, 4389), (17, 4624, 4678), (17, 4913, 4967), (17, 5202, 5256), (17, 5491, 5545), (17, 5780, 5834)]

def row055_layer000_block006 : List ColouredInterval :=
  [(17, 4913, 4967), (19, 3249, 3303), (19, 3610, 3664), (19, 3971, 4025), (19, 4332, 4386), (19, 4693, 4747), (19, 5054, 5108), (19, 5415, 5469), (19, 5776, 5830), (23, 3174, 3228), (23, 3703, 3757), (23, 4232, 4286), (23, 4761, 4815), (23, 5290, 5344), (23, 5819, 5873), (29, 3364, 3418)]

def row055_layer000_block007 : List ColouredInterval :=
  [(29, 4205, 4259), (29, 5046, 5100), (29, 5887, 5939), (31, 3844, 3898), (31, 4805, 4859), (31, 5766, 5820), (37, 4107, 4161), (37, 5476, 5530), (41, 3362, 3416), (41, 5043, 5097), (43, 3698, 3752), (43, 5547, 5601), (47, 4418, 4472), (53, 5618, 5672)]

def row055_layer000_chunks : List (List ColouredInterval) :=
  [row055_layer000_block000, row055_layer000_block001, row055_layer000_block002, row055_layer000_block003, row055_layer000_block004, row055_layer000_block005, row055_layer000_block006, row055_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer000_arithmetic : LayerArithmeticValid row055.height { lower := 2970, upper := 5940, M := 34 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer000_enumeration :
    activePowerIntervalList 55 34 2970 5940 = row055_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer000_pairs000 :
    row055_layer000_block000.all (fun I => row055_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer000_pairs001 :
    row055_layer000_block001.all (fun I => row055_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer000_pairs002 :
    row055_layer000_block002.all (fun I => row055_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer000_pairs003 :
    row055_layer000_block003.all (fun I => row055_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer000_pairs004 :
    row055_layer000_block004.all (fun I => row055_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer000_pairs005 :
    row055_layer000_block005.all (fun I => row055_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer000_pairs006 :
    row055_layer000_block006.all (fun I => row055_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer000_pairs007 :
    row055_layer000_block007.all (fun I => row055_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer000_chunks_eq : row055_layer000_chunks.flatten = row055_layer000_intervals := by
  rfl

theorem row055_layer000_pairs : pairCoverCheck row055_layer000_intervals row055_bounds = true := by
  apply pairCoverCheck_of_chunks row055_layer000_chunks_eq
  intro block hblock
  simp only [row055_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row055_layer000_pairs000
  · exact row055_layer000_pairs001
  · exact row055_layer000_pairs002
  · exact row055_layer000_pairs003
  · exact row055_layer000_pairs004
  · exact row055_layer000_pairs005
  · exact row055_layer000_pairs006
  · exact row055_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer000_checked :
    coverLayerCheck row055.height row055.goods { lower := 2970, upper := 5940, M := 34 } = true := by
  exact coverLayerCheck_of_parts row055_layer000_arithmetic row055_layer000_enumeration row055_bounds_eq row055_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row055_layer001_intervals : List ColouredInterval :=
  [(2, 5940, 5942), (2, 6144, 6198), (2, 6400, 6454), (2, 6656, 6710), (2, 6912, 6966), (2, 7168, 7222), (2, 7424, 7478), (2, 7680, 7734), (2, 7936, 7990), (2, 6144, 6198), (2, 6656, 6710), (2, 7168, 7222), (2, 7680, 7734), (2, 8192, 8246), (2, 8704, 8758), (2, 9216, 9270), (2, 9728, 9782), (2, 10240, 10294), (2, 10752, 10806), (2, 11264, 11318), (2, 11776, 11830), (2, 6144, 6198), (2, 7168, 7222), (2, 8192, 8246), (2, 9216, 9270), (2, 10240, 10294), (2, 11264, 11318), (2, 6144, 6198), (2, 8192, 8246), (2, 10240, 10294), (2, 8192, 8246), (2, 8192, 8246), (3, 6075, 6129), (3, 6318, 6372), (3, 6561, 6615), (3, 6804, 6858), (3, 7047, 7101), (3, 7290, 7344), (3, 7533, 7587), (3, 6561, 6615), (3, 7290, 7344), (3, 8019, 8073), (3, 8748, 8802), (3, 9477, 9531), (3, 10206, 10260), (3, 10935, 10989), (3, 11664, 11718), (3, 6561, 6615), (3, 8748, 8802), (3, 10935, 10989), (3, 6561, 6615), (5, 6250, 6304), (5, 9375, 9429), (7, 6174, 6228), (7, 6517, 6571), (7, 6860, 6914), (7, 7203, 7257), (7, 7546, 7600), (7, 7889, 7943), (7, 8232, 8286), (7, 8575, 8629), (7, 8918, 8972), (7, 9261, 9315), (7, 9604, 9658), (7, 9947, 10001), (7, 10290, 10344), (7, 10633, 10687), (7, 7203, 7257), (7, 9604, 9658), (13, 6591, 6645), (13, 8788, 8842), (13, 10985, 11039), (17, 6069, 6123), (17, 6358, 6412), (17, 6647, 6701), (17, 6936, 6990), (17, 7225, 7279), (17, 7514, 7568), (17, 7803, 7857), (17, 8092, 8146), (17, 8381, 8435), (17, 8670, 8724), (17, 8959, 9013), (17, 9826, 9880), (19, 6137, 6191), (19, 6498, 6552), (19, 6859, 6913), (19, 7220, 7274), (19, 7581, 7635), (19, 7942, 7996), (19, 8303, 8357), (19, 8664, 8718), (19, 9025, 9079), (19, 9386, 9440), (19, 9747, 9801), (19, 10108, 10162), (19, 10469, 10523), (19, 10830, 10884), (19, 11191, 11245), (19, 6859, 6913), (23, 6348, 6402), (23, 6877, 6931), (23, 7406, 7460), (23, 7935, 7989), (23, 8464, 8518), (23, 8993, 9047), (23, 9522, 9576), (23, 10051, 10105), (23, 10580, 10634), (23, 11109, 11163), (23, 11638, 11692), (29, 5940, 5941), (29, 6728, 6782), (29, 7569, 7623), (29, 8410, 8464), (29, 9251, 9305), (29, 10092, 10146), (29, 10933, 10987), (29, 11774, 11828), (31, 6727, 6781), (31, 7688, 7742), (31, 8649, 8703), (31, 9610, 9664), (31, 10571, 10625), (31, 11532, 11586), (37, 6845, 6899), (37, 8214, 8268), (37, 9583, 9637), (37, 10952, 11006), (41, 6724, 6778), (41, 8405, 8459), (41, 10086, 10140), (41, 11767, 11821), (43, 7396, 7450), (43, 9245, 9299), (43, 11094, 11148), (47, 6627, 6681), (47, 8836, 8890), (47, 11045, 11099), (53, 8427, 8481), (53, 11236, 11290)]

def row055_layer001_block000 : List ColouredInterval :=
  [(2, 5940, 5942), (2, 6144, 6198), (2, 6400, 6454), (2, 6656, 6710), (2, 6912, 6966), (2, 7168, 7222), (2, 7424, 7478), (2, 7680, 7734), (2, 7936, 7990), (2, 6144, 6198), (2, 6656, 6710), (2, 7168, 7222), (2, 7680, 7734), (2, 8192, 8246)]

def row055_layer001_block001 : List ColouredInterval :=
  [(2, 8704, 8758), (2, 9216, 9270), (2, 9728, 9782), (2, 10240, 10294), (2, 10752, 10806), (2, 11264, 11318), (2, 11776, 11830), (2, 6144, 6198), (2, 7168, 7222), (2, 8192, 8246), (2, 9216, 9270), (2, 10240, 10294), (2, 11264, 11318), (2, 6144, 6198)]

def row055_layer001_block002 : List ColouredInterval :=
  [(2, 8192, 8246), (2, 10240, 10294), (2, 8192, 8246), (2, 8192, 8246), (3, 6075, 6129), (3, 6318, 6372), (3, 6561, 6615), (3, 6804, 6858), (3, 7047, 7101), (3, 7290, 7344), (3, 7533, 7587), (3, 6561, 6615), (3, 7290, 7344), (3, 8019, 8073)]

def row055_layer001_block003 : List ColouredInterval :=
  [(3, 8748, 8802), (3, 9477, 9531), (3, 10206, 10260), (3, 10935, 10989), (3, 11664, 11718), (3, 6561, 6615), (3, 8748, 8802), (3, 10935, 10989), (3, 6561, 6615), (5, 6250, 6304), (5, 9375, 9429), (7, 6174, 6228), (7, 6517, 6571), (7, 6860, 6914)]

def row055_layer001_block004 : List ColouredInterval :=
  [(7, 7203, 7257), (7, 7546, 7600), (7, 7889, 7943), (7, 8232, 8286), (7, 8575, 8629), (7, 8918, 8972), (7, 9261, 9315), (7, 9604, 9658), (7, 9947, 10001), (7, 10290, 10344), (7, 10633, 10687), (7, 7203, 7257), (7, 9604, 9658), (13, 6591, 6645)]

def row055_layer001_block005 : List ColouredInterval :=
  [(13, 8788, 8842), (13, 10985, 11039), (17, 6069, 6123), (17, 6358, 6412), (17, 6647, 6701), (17, 6936, 6990), (17, 7225, 7279), (17, 7514, 7568), (17, 7803, 7857), (17, 8092, 8146), (17, 8381, 8435), (17, 8670, 8724), (17, 8959, 9013), (17, 9826, 9880)]

def row055_layer001_block006 : List ColouredInterval :=
  [(19, 6137, 6191), (19, 6498, 6552), (19, 6859, 6913), (19, 7220, 7274), (19, 7581, 7635), (19, 7942, 7996), (19, 8303, 8357), (19, 8664, 8718), (19, 9025, 9079), (19, 9386, 9440), (19, 9747, 9801), (19, 10108, 10162), (19, 10469, 10523), (19, 10830, 10884)]

def row055_layer001_block007 : List ColouredInterval :=
  [(19, 11191, 11245), (19, 6859, 6913), (23, 6348, 6402), (23, 6877, 6931), (23, 7406, 7460), (23, 7935, 7989), (23, 8464, 8518), (23, 8993, 9047), (23, 9522, 9576), (23, 10051, 10105), (23, 10580, 10634), (23, 11109, 11163), (23, 11638, 11692), (29, 5940, 5941)]

def row055_layer001_block008 : List ColouredInterval :=
  [(29, 6728, 6782), (29, 7569, 7623), (29, 8410, 8464), (29, 9251, 9305), (29, 10092, 10146), (29, 10933, 10987), (29, 11774, 11828), (31, 6727, 6781), (31, 7688, 7742), (31, 8649, 8703), (31, 9610, 9664), (31, 10571, 10625), (31, 11532, 11586), (37, 6845, 6899)]

def row055_layer001_block009 : List ColouredInterval :=
  [(37, 8214, 8268), (37, 9583, 9637), (37, 10952, 11006), (41, 6724, 6778), (41, 8405, 8459), (41, 10086, 10140), (41, 11767, 11821), (43, 7396, 7450), (43, 9245, 9299), (43, 11094, 11148), (47, 6627, 6681), (47, 8836, 8890), (47, 11045, 11099), (53, 8427, 8481)]

def row055_layer001_block010 : List ColouredInterval :=
  [(53, 11236, 11290)]

def row055_layer001_chunks : List (List ColouredInterval) :=
  [row055_layer001_block000, row055_layer001_block001, row055_layer001_block002, row055_layer001_block003, row055_layer001_block004, row055_layer001_block005, row055_layer001_block006, row055_layer001_block007, row055_layer001_block008, row055_layer001_block009, row055_layer001_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer001_arithmetic : LayerArithmeticValid row055.height { lower := 5940, upper := 11880, M := 31 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer001_enumeration :
    activePowerIntervalList 55 31 5940 11880 = row055_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer001_pairs000 :
    row055_layer001_block000.all (fun I => row055_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer001_pairs001 :
    row055_layer001_block001.all (fun I => row055_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer001_pairs002 :
    row055_layer001_block002.all (fun I => row055_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer001_pairs003 :
    row055_layer001_block003.all (fun I => row055_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer001_pairs004 :
    row055_layer001_block004.all (fun I => row055_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer001_pairs005 :
    row055_layer001_block005.all (fun I => row055_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer001_pairs006 :
    row055_layer001_block006.all (fun I => row055_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer001_pairs007 :
    row055_layer001_block007.all (fun I => row055_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer001_pairs008 :
    row055_layer001_block008.all (fun I => row055_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer001_pairs009 :
    row055_layer001_block009.all (fun I => row055_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer001_pairs010 :
    row055_layer001_block010.all (fun I => row055_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer001_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer001_chunks_eq : row055_layer001_chunks.flatten = row055_layer001_intervals := by
  rfl

theorem row055_layer001_pairs : pairCoverCheck row055_layer001_intervals row055_bounds = true := by
  apply pairCoverCheck_of_chunks row055_layer001_chunks_eq
  intro block hblock
  simp only [row055_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row055_layer001_pairs000
  · exact row055_layer001_pairs001
  · exact row055_layer001_pairs002
  · exact row055_layer001_pairs003
  · exact row055_layer001_pairs004
  · exact row055_layer001_pairs005
  · exact row055_layer001_pairs006
  · exact row055_layer001_pairs007
  · exact row055_layer001_pairs008
  · exact row055_layer001_pairs009
  · exact row055_layer001_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer001_checked :
    coverLayerCheck row055.height row055.goods { lower := 5940, upper := 11880, M := 31 } = true := by
  exact coverLayerCheck_of_parts row055_layer001_arithmetic row055_layer001_enumeration row055_bounds_eq row055_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row055_layer002_intervals : List ColouredInterval :=
  [(2, 12288, 12342), (2, 12800, 12854), (2, 13312, 13366), (2, 13824, 13878), (2, 14336, 14390), (2, 14848, 14902), (2, 12288, 12342), (2, 13312, 13366), (2, 14336, 14390), (2, 15360, 15414), (2, 16384, 16438), (2, 17408, 17462), (2, 18432, 18486), (2, 19456, 19510), (2, 20480, 20534), (2, 21504, 21558), (2, 22528, 22582), (2, 23552, 23606), (2, 12288, 12342), (2, 14336, 14390), (2, 16384, 16438), (2, 18432, 18486), (2, 20480, 20534), (2, 22528, 22582), (2, 12288, 12342), (2, 16384, 16438), (2, 20480, 20534), (2, 16384, 16438), (2, 16384, 16438), (3, 12393, 12447), (3, 13122, 13176), (3, 13851, 13905), (3, 14580, 14634), (3, 15309, 15363), (3, 16038, 16092), (3, 16767, 16821), (3, 17496, 17550), (3, 18225, 18279), (3, 18954, 19008), (3, 19683, 19737), (3, 20412, 20466), (3, 21141, 21195), (3, 13122, 13176), (3, 15309, 15363), (3, 17496, 17550), (3, 19683, 19737), (3, 21870, 21924), (3, 13122, 13176), (3, 19683, 19737), (3, 19683, 19737), (5, 12500, 12554), (5, 15625, 15679), (5, 15625, 15679), (7, 12005, 12059), (7, 14406, 14460), (7, 16807, 16861), (7, 19208, 19262), (7, 21609, 21663), (7, 16807, 16861), (11, 14641, 14695), (13, 13182, 13236), (13, 15379, 15433), (13, 17576, 17630), (13, 19773, 19827), (13, 21970, 22024), (17, 14739, 14793), (17, 19652, 19706), (19, 13718, 13772), (19, 20577, 20631), (23, 12167, 12221), (23, 12696, 12750), (23, 13225, 13279), (23, 13754, 13808), (23, 14283, 14337), (23, 14812, 14866), (23, 15341, 15395), (23, 12167, 12221), (29, 12615, 12669), (29, 13456, 13510), (29, 14297, 14351), (29, 15138, 15192), (29, 15979, 16033), (29, 16820, 16874), (29, 17661, 17715), (29, 18502, 18556), (29, 19343, 19397), (29, 20184, 20238), (29, 21025, 21079), (29, 21866, 21920), (29, 22707, 22761), (29, 23548, 23602), (31, 12493, 12547), (31, 13454, 13508), (31, 14415, 14469), (31, 15376, 15430), (31, 16337, 16391), (31, 17298, 17352), (31, 18259, 18313), (31, 19220, 19274), (31, 20181, 20235), (31, 21142, 21196), (31, 22103, 22157), (31, 23064, 23118), (37, 12321, 12375), (37, 13690, 13744), (37, 15059, 15113), (37, 16428, 16482), (37, 17797, 17851), (37, 19166, 19220), (37, 20535, 20589), (37, 21904, 21958), (37, 23273, 23327), (41, 13448, 13502), (41, 15129, 15183), (41, 16810, 16864), (41, 18491, 18545), (41, 20172, 20226), (41, 21853, 21907), (41, 23534, 23588), (43, 12943, 12997), (43, 14792, 14846), (43, 16641, 16695), (43, 18490, 18544), (43, 20339, 20393), (43, 22188, 22242), (47, 13254, 13308), (47, 15463, 15517), (47, 17672, 17726), (47, 19881, 19935), (47, 22090, 22144), (53, 14045, 14099), (53, 16854, 16908), (53, 19663, 19717), (53, 22472, 22526)]

def row055_layer002_block000 : List ColouredInterval :=
  [(2, 12288, 12342), (2, 12800, 12854), (2, 13312, 13366), (2, 13824, 13878), (2, 14336, 14390), (2, 14848, 14902), (2, 12288, 12342), (2, 13312, 13366), (2, 14336, 14390), (2, 15360, 15414), (2, 16384, 16438), (2, 17408, 17462), (2, 18432, 18486), (2, 19456, 19510), (2, 20480, 20534)]

def row055_layer002_block001 : List ColouredInterval :=
  [(2, 21504, 21558), (2, 22528, 22582), (2, 23552, 23606), (2, 12288, 12342), (2, 14336, 14390), (2, 16384, 16438), (2, 18432, 18486), (2, 20480, 20534), (2, 22528, 22582), (2, 12288, 12342), (2, 16384, 16438), (2, 20480, 20534), (2, 16384, 16438), (2, 16384, 16438), (3, 12393, 12447)]

def row055_layer002_block002 : List ColouredInterval :=
  [(3, 13122, 13176), (3, 13851, 13905), (3, 14580, 14634), (3, 15309, 15363), (3, 16038, 16092), (3, 16767, 16821), (3, 17496, 17550), (3, 18225, 18279), (3, 18954, 19008), (3, 19683, 19737), (3, 20412, 20466), (3, 21141, 21195), (3, 13122, 13176), (3, 15309, 15363), (3, 17496, 17550)]

def row055_layer002_block003 : List ColouredInterval :=
  [(3, 19683, 19737), (3, 21870, 21924), (3, 13122, 13176), (3, 19683, 19737), (3, 19683, 19737), (5, 12500, 12554), (5, 15625, 15679), (5, 15625, 15679), (7, 12005, 12059), (7, 14406, 14460), (7, 16807, 16861), (7, 19208, 19262), (7, 21609, 21663), (7, 16807, 16861), (11, 14641, 14695)]

def row055_layer002_block004 : List ColouredInterval :=
  [(13, 13182, 13236), (13, 15379, 15433), (13, 17576, 17630), (13, 19773, 19827), (13, 21970, 22024), (17, 14739, 14793), (17, 19652, 19706), (19, 13718, 13772), (19, 20577, 20631), (23, 12167, 12221), (23, 12696, 12750), (23, 13225, 13279), (23, 13754, 13808), (23, 14283, 14337), (23, 14812, 14866)]

def row055_layer002_block005 : List ColouredInterval :=
  [(23, 15341, 15395), (23, 12167, 12221), (29, 12615, 12669), (29, 13456, 13510), (29, 14297, 14351), (29, 15138, 15192), (29, 15979, 16033), (29, 16820, 16874), (29, 17661, 17715), (29, 18502, 18556), (29, 19343, 19397), (29, 20184, 20238), (29, 21025, 21079), (29, 21866, 21920), (29, 22707, 22761)]

def row055_layer002_block006 : List ColouredInterval :=
  [(29, 23548, 23602), (31, 12493, 12547), (31, 13454, 13508), (31, 14415, 14469), (31, 15376, 15430), (31, 16337, 16391), (31, 17298, 17352), (31, 18259, 18313), (31, 19220, 19274), (31, 20181, 20235), (31, 21142, 21196), (31, 22103, 22157), (31, 23064, 23118), (37, 12321, 12375), (37, 13690, 13744)]

def row055_layer002_block007 : List ColouredInterval :=
  [(37, 15059, 15113), (37, 16428, 16482), (37, 17797, 17851), (37, 19166, 19220), (37, 20535, 20589), (37, 21904, 21958), (37, 23273, 23327), (41, 13448, 13502), (41, 15129, 15183), (41, 16810, 16864), (41, 18491, 18545), (41, 20172, 20226), (41, 21853, 21907), (41, 23534, 23588), (43, 12943, 12997)]

def row055_layer002_block008 : List ColouredInterval :=
  [(43, 14792, 14846), (43, 16641, 16695), (43, 18490, 18544), (43, 20339, 20393), (43, 22188, 22242), (47, 13254, 13308), (47, 15463, 15517), (47, 17672, 17726), (47, 19881, 19935), (47, 22090, 22144), (53, 14045, 14099), (53, 16854, 16908), (53, 19663, 19717), (53, 22472, 22526)]

def row055_layer002_chunks : List (List ColouredInterval) :=
  [row055_layer002_block000, row055_layer002_block001, row055_layer002_block002, row055_layer002_block003, row055_layer002_block004, row055_layer002_block005, row055_layer002_block006, row055_layer002_block007, row055_layer002_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer002_arithmetic : LayerArithmeticValid row055.height { lower := 11880, upper := 23760, M := 29 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer002_enumeration :
    activePowerIntervalList 55 29 11880 23760 = row055_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer002_pairs000 :
    row055_layer002_block000.all (fun I => row055_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer002_pairs001 :
    row055_layer002_block001.all (fun I => row055_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer002_pairs002 :
    row055_layer002_block002.all (fun I => row055_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer002_pairs003 :
    row055_layer002_block003.all (fun I => row055_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer002_pairs004 :
    row055_layer002_block004.all (fun I => row055_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer002_pairs005 :
    row055_layer002_block005.all (fun I => row055_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer002_pairs006 :
    row055_layer002_block006.all (fun I => row055_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer002_pairs007 :
    row055_layer002_block007.all (fun I => row055_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer002_pairs008 :
    row055_layer002_block008.all (fun I => row055_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row055_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer002_chunks_eq : row055_layer002_chunks.flatten = row055_layer002_intervals := by
  rfl

theorem row055_layer002_pairs : pairCoverCheck row055_layer002_intervals row055_bounds = true := by
  apply pairCoverCheck_of_chunks row055_layer002_chunks_eq
  intro block hblock
  simp only [row055_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row055_layer002_pairs000
  · exact row055_layer002_pairs001
  · exact row055_layer002_pairs002
  · exact row055_layer002_pairs003
  · exact row055_layer002_pairs004
  · exact row055_layer002_pairs005
  · exact row055_layer002_pairs006
  · exact row055_layer002_pairs007
  · exact row055_layer002_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer002_checked :
    coverLayerCheck row055.height row055.goods { lower := 11880, upper := 23760, M := 29 } = true := by
  exact coverLayerCheck_of_parts row055_layer002_arithmetic row055_layer002_enumeration row055_bounds_eq row055_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row055_layer003_intervals : List ColouredInterval :=
  [(2, 24576, 24630), (2, 25600, 25654), (2, 26624, 26678), (2, 24576, 24630), (2, 26624, 26678), (2, 28672, 28726), (2, 30720, 30774), (2, 32768, 32822), (2, 34816, 34870), (2, 36864, 36918), (2, 38912, 38966), (2, 40960, 41014), (2, 43008, 43062), (2, 45056, 45110), (2, 47104, 47158), (2, 24576, 24630), (2, 28672, 28726), (2, 32768, 32822), (2, 36864, 36918), (2, 40960, 41014), (2, 45056, 45110), (2, 24576, 24630), (2, 32768, 32822), (2, 40960, 41014), (2, 32768, 32822), (2, 32768, 32822), (3, 24057, 24111), (3, 26244, 26298), (3, 28431, 28485), (3, 30618, 30672), (3, 32805, 32859), (3, 34992, 35046), (3, 37179, 37233), (3, 39366, 39420), (3, 41553, 41607), (3, 43740, 43794), (3, 45927, 45981), (3, 26244, 26298), (3, 32805, 32859), (3, 39366, 39420), (3, 45927, 45981), (3, 39366, 39420), (5, 31250, 31304), (5, 46875, 46929), (7, 24010, 24064), (7, 26411, 26465), (7, 28812, 28866), (7, 31213, 31267), (7, 33614, 33668), (7, 36015, 36069), (7, 38416, 38470), (7, 40817, 40871), (7, 43218, 43272), (7, 45619, 45673), (7, 33614, 33668), (11, 29282, 29336), (13, 24167, 24221), (13, 26364, 26418), (13, 28561, 28615), (13, 30758, 30812), (13, 32955, 33009), (13, 35152, 35206), (13, 37349, 37403), (13, 39546, 39600), (13, 41743, 41797), (13, 43940, 43994), (13, 46137, 46191), (13, 28561, 28615), (17, 24565, 24619), (17, 29478, 29532), (17, 34391, 34445), (17, 39304, 39358), (17, 44217, 44271), (19, 27436, 27490), (19, 34295, 34349), (19, 41154, 41208), (23, 24334, 24388), (23, 36501, 36555), (29, 24389, 24443), (31, 24025, 24079), (31, 24986, 25040), (31, 29791, 29845), (37, 24642, 24696), (37, 26011, 26065), (37, 27380, 27434), (37, 28749, 28803), (37, 30118, 30172), (37, 31487, 31541), (37, 32856, 32910), (37, 34225, 34279), (37, 35594, 35648), (41, 25215, 25269), (41, 26896, 26950), (41, 28577, 28631), (41, 30258, 30312), (41, 31939, 31993), (41, 33620, 33674), (41, 35301, 35355), (41, 36982, 37036), (41, 38663, 38717), (41, 40344, 40398), (41, 42025, 42079), (41, 43706, 43760), (43, 24037, 24091), (43, 25886, 25940), (43, 27735, 27789), (43, 29584, 29638), (43, 31433, 31487), (43, 33282, 33336), (43, 35131, 35185), (43, 36980, 37034), (43, 38829, 38883), (43, 40678, 40732), (43, 42527, 42581), (43, 44376, 44430), (43, 46225, 46279), (47, 24299, 24353), (47, 26508, 26562), (47, 28717, 28771), (47, 30926, 30980), (47, 33135, 33189), (47, 35344, 35398), (47, 37553, 37607), (47, 39762, 39816), (47, 41971, 42025), (47, 44180, 44234), (47, 46389, 46443), (53, 25281, 25335), (53, 28090, 28144), (53, 30899, 30953), (53, 33708, 33762), (53, 36517, 36571), (53, 39326, 39380), (53, 42135, 42189), (53, 44944, 44998)]

def row055_layer003_block000 : List ColouredInterval :=
  [(2, 24576, 24630), (2, 25600, 25654), (2, 26624, 26678), (2, 24576, 24630), (2, 26624, 26678), (2, 28672, 28726), (2, 30720, 30774), (2, 32768, 32822), (2, 34816, 34870), (2, 36864, 36918), (2, 38912, 38966), (2, 40960, 41014), (2, 43008, 43062), (2, 45056, 45110), (2, 47104, 47158)]

def row055_layer003_block001 : List ColouredInterval :=
  [(2, 24576, 24630), (2, 28672, 28726), (2, 32768, 32822), (2, 36864, 36918), (2, 40960, 41014), (2, 45056, 45110), (2, 24576, 24630), (2, 32768, 32822), (2, 40960, 41014), (2, 32768, 32822), (2, 32768, 32822), (3, 24057, 24111), (3, 26244, 26298), (3, 28431, 28485), (3, 30618, 30672)]

def row055_layer003_block002 : List ColouredInterval :=
  [(3, 32805, 32859), (3, 34992, 35046), (3, 37179, 37233), (3, 39366, 39420), (3, 41553, 41607), (3, 43740, 43794), (3, 45927, 45981), (3, 26244, 26298), (3, 32805, 32859), (3, 39366, 39420), (3, 45927, 45981), (3, 39366, 39420), (5, 31250, 31304), (5, 46875, 46929), (7, 24010, 24064)]

def row055_layer003_block003 : List ColouredInterval :=
  [(7, 26411, 26465), (7, 28812, 28866), (7, 31213, 31267), (7, 33614, 33668), (7, 36015, 36069), (7, 38416, 38470), (7, 40817, 40871), (7, 43218, 43272), (7, 45619, 45673), (7, 33614, 33668), (11, 29282, 29336), (13, 24167, 24221), (13, 26364, 26418), (13, 28561, 28615), (13, 30758, 30812)]

def row055_layer003_block004 : List ColouredInterval :=
  [(13, 32955, 33009), (13, 35152, 35206), (13, 37349, 37403), (13, 39546, 39600), (13, 41743, 41797), (13, 43940, 43994), (13, 46137, 46191), (13, 28561, 28615), (17, 24565, 24619), (17, 29478, 29532), (17, 34391, 34445), (17, 39304, 39358), (17, 44217, 44271), (19, 27436, 27490), (19, 34295, 34349)]

def row055_layer003_block005 : List ColouredInterval :=
  [(19, 41154, 41208), (23, 24334, 24388), (23, 36501, 36555), (29, 24389, 24443), (31, 24025, 24079), (31, 24986, 25040), (31, 29791, 29845), (37, 24642, 24696), (37, 26011, 26065), (37, 27380, 27434), (37, 28749, 28803), (37, 30118, 30172), (37, 31487, 31541), (37, 32856, 32910), (37, 34225, 34279)]

def row055_layer003_block006 : List ColouredInterval :=
  [(37, 35594, 35648), (41, 25215, 25269), (41, 26896, 26950), (41, 28577, 28631), (41, 30258, 30312), (41, 31939, 31993), (41, 33620, 33674), (41, 35301, 35355), (41, 36982, 37036), (41, 38663, 38717), (41, 40344, 40398), (41, 42025, 42079), (41, 43706, 43760), (43, 24037, 24091), (43, 25886, 25940)]

def row055_layer003_block007 : List ColouredInterval :=
  [(43, 27735, 27789), (43, 29584, 29638), (43, 31433, 31487), (43, 33282, 33336), (43, 35131, 35185), (43, 36980, 37034), (43, 38829, 38883), (43, 40678, 40732), (43, 42527, 42581), (43, 44376, 44430), (43, 46225, 46279), (47, 24299, 24353), (47, 26508, 26562), (47, 28717, 28771), (47, 30926, 30980)]

def row055_layer003_block008 : List ColouredInterval :=
  [(47, 33135, 33189), (47, 35344, 35398), (47, 37553, 37607), (47, 39762, 39816), (47, 41971, 42025), (47, 44180, 44234), (47, 46389, 46443), (53, 25281, 25335), (53, 28090, 28144), (53, 30899, 30953), (53, 33708, 33762), (53, 36517, 36571), (53, 39326, 39380), (53, 42135, 42189), (53, 44944, 44998)]

def row055_layer003_chunks : List (List ColouredInterval) :=
  [row055_layer003_block000, row055_layer003_block001, row055_layer003_block002, row055_layer003_block003, row055_layer003_block004, row055_layer003_block005, row055_layer003_block006, row055_layer003_block007, row055_layer003_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer003_intervals
