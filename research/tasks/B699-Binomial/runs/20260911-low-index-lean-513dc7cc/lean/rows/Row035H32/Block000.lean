import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_height : HeightCertificateDatum := { i := 35, r := 11, s := 23, n0Power10 := 49 }

def row035_goods : List GoodSegment := [
  { lower := 72, upper := 105, witness := RowWitness.topPrime 71 },
  { lower := 106, upper := 137, witness := RowWitness.topPrime 103 },
  { lower := 138, upper := 171, witness := RowWitness.topPrime 137 },
  { lower := 172, upper := 201, witness := RowWitness.topPrime 167 },
  { lower := 202, upper := 233, witness := RowWitness.topPrime 199 },
  { lower := 234, upper := 267, witness := RowWitness.topPrime 233 },
  { lower := 268, upper := 297, witness := RowWitness.topPrime 263 },
  { lower := 298, upper := 327, witness := RowWitness.topPrime 293 },
  { lower := 328, upper := 351, witness := RowWitness.topPrime 317 },
  { lower := 352, upper := 383, witness := RowWitness.topPrime 349 },
  { lower := 384, upper := 417, witness := RowWitness.topPrime 383 },
  { lower := 418, upper := 443, witness := RowWitness.topPrime 409 },
  { lower := 444, upper := 477, witness := RowWitness.topPrime 443 },
  { lower := 478, upper := 501, witness := RowWitness.topPrime 467 },
  { lower := 502, upper := 533, witness := RowWitness.topPrime 499 },
  { lower := 534, upper := 557, witness := RowWitness.topPrime 523 },
  { lower := 558, upper := 591, witness := RowWitness.topPrime 557 },
  { lower := 592, upper := 621, witness := RowWitness.topPrime 587 },
  { lower := 622, upper := 653, witness := RowWitness.topPrime 619 },
  { lower := 654, upper := 687, witness := RowWitness.topPrime 653 },
  { lower := 688, upper := 717, witness := RowWitness.topPrime 683 },
  { lower := 718, upper := 743, witness := RowWitness.topPrime 709 },
  { lower := 744, upper := 777, witness := RowWitness.topPrime 743 },
  { lower := 778, upper := 807, witness := RowWitness.topPrime 773 },
  { lower := 808, upper := 831, witness := RowWitness.topPrime 797 },
  { lower := 832, upper := 863, witness := RowWitness.topPrime 829 },
  { lower := 864, upper := 897, witness := RowWitness.topPrime 863 },
  { lower := 898, upper := 921, witness := RowWitness.topPrime 887 },
  { lower := 922, upper := 953, witness := RowWitness.topPrime 919 },
  { lower := 954, upper := 987, witness := RowWitness.topPrime 953 },
  { lower := 988, upper := 1017, witness := RowWitness.topPrime 983 },
  { lower := 1018, upper := 1047, witness := RowWitness.topPrime 1013 },
  { lower := 1048, upper := 1073, witness := RowWitness.topPrime 1039 },
  { lower := 1074, upper := 1103, witness := RowWitness.topPrime 1069 },
  { lower := 1104, upper := 1137, witness := RowWitness.topPrime 1103 },
  { lower := 1138, upper := 1163, witness := RowWitness.topPrime 1129 },
  { lower := 1164, upper := 1197, witness := RowWitness.topPrime 1163 },
  { lower := 1198, upper := 1227, witness := RowWitness.topPrime 1193 },
  { lower := 1228, upper := 1250, witness := RowWitness.topPrime 1223 },
  { lower := 1280, upper := 1284, witness := RowWitness.topPrime 1279 },
  { lower := 1296, upper := 1314, witness := RowWitness.topPrime 1291 },
  { lower := 1344, upper := 1361, witness := RowWitness.topPrime 1327 },
  { lower := 1362, upper := 1395, witness := RowWitness.topPrime 1361 },
  { lower := 1396, upper := 1406, witness := RowWitness.topPrime 1381 },
  { lower := 1408, upper := 1411, witness := RowWitness.topPrime 1399 },
  { lower := 1445, upper := 1473, witness := RowWitness.topPrime 1439 },
  { lower := 1474, upper := 1492, witness := RowWitness.topPrime 1471 },
  { lower := 1536, upper := 1565, witness := RowWitness.topPrime 1531 },
  { lower := 1566, upper := 1570, witness := RowWitness.topPrime 1559 },
  { lower := 1573, upper := 1573, witness := RowWitness.topPrime 1571 },
  { lower := 1587, upper := 1617, witness := RowWitness.topPrime 1583 },
  { lower := 1618, upper := 1634, witness := RowWitness.topPrime 1613 },
  { lower := 1682, upper := 1703, witness := RowWitness.topPrime 1669 },
  { lower := 1704, upper := 1733, witness := RowWitness.topPrime 1699 },
  { lower := 1734, upper := 1762, witness := RowWitness.topPrime 1733 },
  { lower := 1792, upper := 1823, witness := RowWitness.topPrime 1789 },
  { lower := 1824, upper := 1839, witness := RowWitness.topPrime 1823 },
  { lower := 1859, upper := 1881, witness := RowWitness.topPrime 1847 },
  { lower := 1882, upper := 1897, witness := RowWitness.topPrime 1879 },
  { lower := 1922, upper := 1947, witness := RowWitness.topPrime 1913 },
  { lower := 1948, upper := 1967, witness := RowWitness.topPrime 1933 },
  { lower := 1968, upper := 1970, witness := RowWitness.topPrime 1951 },
  { lower := 2025, upper := 2051, witness := RowWitness.topPrime 2017 },
  { lower := 2052, upper := 2073, witness := RowWitness.topPrime 2039 },
  { lower := 2074, upper := 2082, witness := RowWitness.topPrime 2069 },
  { lower := 2112, upper := 2145, witness := RowWitness.topPrime 2111 },
  { lower := 2146, upper := 2146, witness := RowWitness.topPrime 2143 },
  { lower := 2176, upper := 2195, witness := RowWitness.topPrime 2161 },
  { lower := 2196, upper := 2213, witness := RowWitness.topPrime 2179 },
  { lower := 2214, upper := 2221, witness := RowWitness.topPrime 2213 },
  { lower := 2268, upper := 2274, witness := RowWitness.topPrime 2267 },
  { lower := 2299, upper := 2302, witness := RowWitness.topPrime 2297 },
  { lower := 2304, upper := 2331, witness := RowWitness.topPrime 2297 },
  { lower := 2332, upper := 2338, witness := RowWitness.topPrime 2311 },
  { lower := 2366, upper := 2391, witness := RowWitness.topPrime 2357 },
  { lower := 2392, upper := 2402, witness := RowWitness.topPrime 2389 },
  { lower := 2420, upper := 2451, witness := RowWitness.topPrime 2417 },
  { lower := 2452, upper := 2464, witness := RowWitness.topPrime 2447 },
  { lower := 2511, upper := 2537, witness := RowWitness.topPrime 2503 },
  { lower := 2538, upper := 2565, witness := RowWitness.topPrime 2531 },
  { lower := 2566, upper := 2575, witness := RowWitness.topPrime 2557 },
  { lower := 2592, upper := 2594, witness := RowWitness.topPrime 2591 },
  { lower := 2601, upper := 2626, witness := RowWitness.topPrime 2593 },
  { lower := 2662, upper := 2693, witness := RowWitness.topPrime 2659 },
  { lower := 2694, upper := 2722, witness := RowWitness.topPrime 2693 },
  { lower := 2783, upper := 2788, witness := RowWitness.topPrime 2777 },
  { lower := 2816, upper := 2817, witness := RowWitness.topPrime 2803 },
  { lower := 2835, upper := 2850, witness := RowWitness.topPrime 2833 },
  { lower := 2883, upper := 2913, witness := RowWitness.topPrime 2879 },
  { lower := 2914, upper := 2938, witness := RowWitness.topPrime 2909 },
  { lower := 2944, upper := 2950, witness := RowWitness.topPrime 2939 },
  { lower := 3025, upper := 3031, witness := RowWitness.topPrime 3023 },
  { lower := 3042, upper := 3059, witness := RowWitness.topPrime 3041 },
  { lower := 3072, upper := 3076, witness := RowWitness.topPrime 3067 },
  { lower := 3146, upper := 3171, witness := RowWitness.topPrime 3137 },
  { lower := 3172, upper := 3203, witness := RowWitness.topPrime 3169 },
  { lower := 3204, upper := 3234, witness := RowWitness.topPrime 3203 },
  { lower := 3267, upper := 3283, witness := RowWitness.topPrime 3259 },
  { lower := 3380, upper := 3407, witness := RowWitness.topPrime 3373 },
  { lower := 3408, upper := 3422, witness := RowWitness.topPrime 3407 },
  { lower := 3468, upper := 3490, witness := RowWitness.topPrime 3467 },
  { lower := 3610, upper := 3618, witness := RowWitness.topPrime 3607 },
  { lower := 3630, upper := 3657, witness := RowWitness.topPrime 3623 },
  { lower := 3658, upper := 3664, witness := RowWitness.topPrime 3643 },
  { lower := 3712, upper := 3743, witness := RowWitness.topPrime 3709 },
  { lower := 3744, upper := 3746, witness := RowWitness.topPrime 3739 },
  { lower := 3750, upper := 3773, witness := RowWitness.topPrime 3739 },
  { lower := 3774, upper := 3785, witness := RowWitness.topPrime 3769 },
  { lower := 3844, upper := 3867, witness := RowWitness.topPrime 3833 },
  { lower := 3868, upper := 3878, witness := RowWitness.topPrime 3863 },
  { lower := 3887, upper := 3915, witness := RowWitness.topPrime 3881 },
  { lower := 3916, upper := 3921, witness := RowWitness.topPrime 3911 },
  { lower := 3971, upper := 4001, witness := RowWitness.topPrime 3967 },
  { lower := 4002, upper := 4005, witness := RowWitness.topPrime 4001 },
  { lower := 4056, upper := 4080, witness := RowWitness.topPrime 4051 },
  { lower := 4114, upper := 4145, witness := RowWitness.topPrime 4111 },
  { lower := 4146, upper := 4148, witness := RowWitness.topPrime 4139 },
  { lower := 4224, upper := 4253, witness := RowWitness.topPrime 4219 },
  { lower := 4254, upper := 4266, witness := RowWitness.topPrime 4253 },
  { lower := 4335, upper := 4361, witness := RowWitness.topPrime 4327 },
  { lower := 4362, upper := 4391, witness := RowWitness.topPrime 4357 },
  { lower := 4392, upper := 4409, witness := RowWitness.topPrime 4391 },
  { lower := 4480, upper := 4497, witness := RowWitness.topPrime 4463 },
  { lower := 4498, upper := 4511, witness := RowWitness.topPrime 4493 },
  { lower := 4617, upper := 4637, witness := RowWitness.topPrime 4603 },
  { lower := 4638, upper := 4651, witness := RowWitness.topPrime 4637 },
  { lower := 4736, upper := 4759, witness := RowWitness.topPrime 4733 },
  { lower := 4761, upper := 4766, witness := RowWitness.topPrime 4759 },
  { lower := 4805, upper := 4835, witness := RowWitness.topPrime 4801 },
  { lower := 4836, upper := 4836, witness := RowWitness.topPrime 4831 },
  { lower := 4864, upper := 4894, witness := RowWitness.topPrime 4861 },
  { lower := 4913, upper := 4935, witness := RowWitness.topPrime 4909 },
  { lower := 5054, upper := 5085, witness := RowWitness.topPrime 5051 },
  { lower := 5086, upper := 5088, witness := RowWitness.topPrime 5081 },
  { lower := 5103, upper := 5104, witness := RowWitness.topPrime 5101 },
  { lower := 5120, upper := 5137, witness := RowWitness.topPrime 5119 },
  { lower := 5324, upper := 5324, witness := RowWitness.topPrime 5323 },
  { lower := 5346, upper := 5358, witness := RowWitness.topPrime 5333 },
  { lower := 5376, upper := 5380, witness := RowWitness.topPrime 5351 },
  { lower := 5408, upper := 5410, witness := RowWitness.topPrime 5407 },
  { lower := 5415, upper := 5442, witness := RowWitness.topPrime 5413 },
  { lower := 5589, upper := 5611, witness := RowWitness.topPrime 5581 },
  { lower := 5766, upper := 5783, witness := RowWitness.topPrime 5749 },
  { lower := 5784, upper := 5810, witness := RowWitness.topPrime 5783 },
  { lower := 5832, upper := 5853, witness := RowWitness.topPrime 5827 },
  { lower := 5888, upper := 5915, witness := RowWitness.topPrime 5881 },
  { lower := 5916, upper := 5922, witness := RowWitness.topPrime 5903 },
  { lower := 6075, upper := 6107, witness := RowWitness.topPrime 6073 },
  { lower := 6108, upper := 6109, witness := RowWitness.topPrime 6101 },
  { lower := 6144, upper := 6171, witness := RowWitness.topPrime 6143 },
  { lower := 6348, upper := 6352, witness := RowWitness.topPrime 6343 },
  { lower := 6358, upper := 6382, witness := RowWitness.topPrime 6353 },
  { lower := 6591, upper := 6595, witness := RowWitness.topPrime 6581 },
  { lower := 6655, upper := 6687, witness := RowWitness.topPrime 6653 },
  { lower := 6688, upper := 6689, witness := RowWitness.topPrime 6679 },
  { lower := 6728, upper := 6753, witness := RowWitness.topPrime 6719 },
  { lower := 6754, upper := 6761, witness := RowWitness.topPrime 6737 },
  { lower := 6877, upper := 6893, witness := RowWitness.topPrime 6871 },
  { lower := 6936, upper := 6946, witness := RowWitness.topPrime 6917 },
  { lower := 7220, upper := 7253, witness := RowWitness.topPrime 7219 },
  { lower := 7254, upper := 7254, witness := RowWitness.topPrime 7253 },
  { lower := 7424, upper := 7440, witness := RowWitness.topPrime 7417 },
  { lower := 7533, upper := 7548, witness := RowWitness.topPrime 7529 },
  { lower := 7581, upper := 7603, witness := RowWitness.topPrime 7577 },
  { lower := 7688, upper := 7714, witness := RowWitness.topPrime 7687 },
  { lower := 7803, upper := 7810, witness := RowWitness.topPrime 7793 },
  { lower := 7936, upper := 7967, witness := RowWitness.topPrime 7933 },
  { lower := 7968, upper := 7970, witness := RowWitness.topPrime 7963 },
  { lower := 8019, upper := 8020, witness := RowWitness.topPrime 8017 },
  { lower := 8410, upper := 8415, witness := RowWitness.topPrime 8389 },
  { lower := 8464, upper := 8482, witness := RowWitness.topPrime 8461 },
  { lower := 8664, upper := 8697, witness := RowWitness.topPrime 8663 },
  { lower := 8698, upper := 8698, witness := RowWitness.topPrime 8693 },
  { lower := 8704, upper := 8704, witness := RowWitness.topPrime 8699 },
  { lower := 8960, upper := 8985, witness := RowWitness.topPrime 8951 },
  { lower := 8986, upper := 8994, witness := RowWitness.topPrime 8971 },
  { lower := 9025, upper := 9027, witness := RowWitness.topPrime 9013 },
  { lower := 9248, upper := 9275, witness := RowWitness.topPrime 9241 },
  { lower := 9276, upper := 9282, witness := RowWitness.topPrime 9257 },
  { lower := 9386, upper := 9409, witness := RowWitness.topPrime 9377 },
  { lower := 9537, upper := 9556, witness := RowWitness.topPrime 9533 },
  { lower := 9610, upper := 9635, witness := RowWitness.topPrime 9601 },
  { lower := 9636, upper := 9638, witness := RowWitness.topPrime 9631 },
  { lower := 9747, upper := 9762, witness := RowWitness.topPrime 9743 },
  { lower := 10108, upper := 10137, witness := RowWitness.topPrime 10103 },
  { lower := 10138, upper := 10142, witness := RowWitness.topPrime 10133 },
  { lower := 10240, upper := 10240, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10601, witness := RowWitness.topPrime 10567 },
  { lower := 10602, upper := 10605, witness := RowWitness.topPrime 10601 },
  { lower := 10935, upper := 10943, witness := RowWitness.topPrime 10909 },
  { lower := 10944, upper := 10967, witness := RowWitness.topPrime 10939 },
  { lower := 11552, upper := 11566, witness := RowWitness.topPrime 11551 },
  { lower := 11664, upper := 11672, witness := RowWitness.topPrime 11657 },
  { lower := 11776, upper := 11777, witness := RowWitness.topPrime 11743 },
  { lower := 11778, upper := 11808, witness := RowWitness.topPrime 11777 },
  { lower := 12005, upper := 12013, witness := RowWitness.topPrime 11987 },
  { lower := 12288, upper := 12308, witness := RowWitness.topPrime 12281 },
  { lower := 12500, upper := 12527, witness := RowWitness.topPrime 12497 },
  { lower := 12635, upper := 12649, witness := RowWitness.topPrime 12619 },
  { lower := 13312, upper := 13343, witness := RowWitness.topPrime 13309 },
  { lower := 13344, upper := 13344, witness := RowWitness.topPrime 13339 },
  { lower := 13456, upper := 13485, witness := RowWitness.topPrime 13451 },
  { lower := 13486, upper := 13488, witness := RowWitness.topPrime 13477 },
  { lower := 13851, upper := 13858, witness := RowWitness.topPrime 13841 },
  { lower := 14297, upper := 14317, witness := RowWitness.topPrime 14293 },
  { lower := 15341, upper := 15343, witness := RowWitness.topPrime 15331 },
  { lower := 15360, upper := 15393, witness := RowWitness.topPrime 15359 },
  { lower := 15394, upper := 15410, witness := RowWitness.topPrime 15391 },
  { lower := 15872, upper := 15893, witness := RowWitness.topPrime 15859 },
  { lower := 15894, upper := 15904, witness := RowWitness.topPrime 15889 },
  { lower := 15979, upper := 16006, witness := RowWitness.topPrime 15973 },
  { lower := 16399, upper := 16415, witness := RowWitness.topPrime 16381 },
  { lower := 16416, upper := 16418, witness := RowWitness.topPrime 16411 },
  { lower := 16820, upper := 16841, witness := RowWitness.topPrime 16811 },
  { lower := 16928, upper := 16930, witness := RowWitness.topPrime 16927 },
  { lower := 17303, upper := 17332, witness := RowWitness.topPrime 17299 },
  { lower := 18259, upper := 18259, witness := RowWitness.topPrime 18257 },
  { lower := 18515, upper := 18536, witness := RowWitness.topPrime 18503 },
  { lower := 19683, upper := 19686, witness := RowWitness.topPrime 19681 },
  { lower := 20184, upper := 20215, witness := RowWitness.topPrime 20183 },
  { lower := 21142, upper := 21173, witness := RowWitness.topPrime 21139 },
  { lower := 21174, upper := 21175, witness := RowWitness.topPrime 21169 },
  { lower := 21870, upper := 21897, witness := RowWitness.topPrime 21863 },
  { lower := 21898, upper := 21900, witness := RowWitness.topPrime 21893 },
  { lower := 22627, upper := 22633, witness := RowWitness.topPrime 22621 },
  { lower := 23552, upper := 23582, witness := RowWitness.topPrime 23549 },
  { lower := 24057, upper := 24059, witness := RowWitness.topPrime 24049 },
  { lower := 24576, upper := 24599, witness := RowWitness.topPrime 24571 },
  { lower := 26624, upper := 26631, witness := RowWitness.topPrime 26597 },
  { lower := 26632, upper := 26654, witness := RowWitness.topPrime 26627 },
  { lower := 26912, upper := 26937, witness := RowWitness.topPrime 26903 },
  { lower := 26938, upper := 26942, witness := RowWitness.topPrime 26927 },
  { lower := 28594, upper := 28595, witness := RowWitness.topPrime 28591 },
  { lower := 30618, upper := 30627, witness := RowWitness.topPrime 30593 },
  { lower := 30628, upper := 30628, witness := RowWitness.largeDivisor 14303490897463494516675862543180546846166241569527665681170565565386068032859947087143100170929235154267 },
  { lower := 30629, upper := 30629, witness := RowWitness.largeDivisor 85919125847893581790795252762321429564860916460690894714370122122418097230528989867053542878092085416757 },
  { lower := 30630, upper := 30630, witness := RowWitness.largeDivisor 415750841188148564020862336826209381922857799556234139826407083824591835414076296939628754874559332751227 },
  { lower := 30631, upper := 30647, witness := RowWitness.topPrime 30631 },
  { lower := 30752, upper := 30754, witness := RowWitness.topPrime 30727 },
  { lower := 30758, upper := 30786, witness := RowWitness.topPrime 30757 },
  { lower := 31744, upper := 31747, witness := RowWitness.topPrime 31741 },
  { lower := 43940, upper := 43957, witness := RowWitness.topPrime 43933 },
  { lower := 49152, upper := 49164, witness := RowWitness.topPrime 49139 },
  { lower := 73728, upper := 73729, witness := RowWitness.topPrime 73727 },
  { lower := 150903, upper := 150932, witness := RowWitness.topPrime 150901 },
  { lower := 219501, upper := 219522, witness := RowWitness.topPrime 219491 },
  { lower := 327701, upper := 327714, witness := RowWitness.topPrime 327689 }
]

def row035_layers : List CoverLayer := [
  { lower := 1190, upper := 2380, M := 38 },
  { lower := 2380, upper := 4760, M := 37 },
  { lower := 4760, upper := 9520, M := 36 },
  { lower := 9520, upper := 19040, M := 35 },
  { lower := 19040, upper := 38080, M := 34 },
  { lower := 38080, upper := 76160, M := 34 },
  { lower := 76160, upper := 152320, M := 33 },
  { lower := 152320, upper := 304640, M := 32 },
  { lower := 304640, upper := 609280, M := 31 },
  { lower := 609280, upper := 1218560, M := 31 },
  { lower := 1218560, upper := 2437120, M := 30 },
  { lower := 2437120, upper := 4874240, M := 29 },
  { lower := 4874240, upper := 9748480, M := 29 },
  { lower := 9748480, upper := 19496960, M := 28 },
  { lower := 19496960, upper := 38993920, M := 27 },
  { lower := 38993920, upper := 77987840, M := 27 },
  { lower := 77987840, upper := 155975680, M := 26 },
  { lower := 155975680, upper := 311951360, M := 25 },
  { lower := 311951360, upper := 623902720, M := 25 },
  { lower := 623902720, upper := 1247805440, M := 24 },
  { lower := 1247805440, upper := 2495610880, M := 24 },
  { lower := 2495610880, upper := 4991221760, M := 23 },
  { lower := 4991221760, upper := 9982443520, M := 23 },
  { lower := 9982443520, upper := 19964887040, M := 22 },
  { lower := 19964887040, upper := 39929774080, M := 22 },
  { lower := 39929774080, upper := 79859548160, M := 21 },
  { lower := 79859548160, upper := 159719096320, M := 21 },
  { lower := 159719096320, upper := 319438192640, M := 20 },
  { lower := 319438192640, upper := 638876385280, M := 20 },
  { lower := 638876385280, upper := 1277752770560, M := 19 },
  { lower := 1277752770560, upper := 2555505541120, M := 19 },
  { lower := 2555505541120, upper := 5111011082240, M := 18 },
  { lower := 5111011082240, upper := 10222022164480, M := 18 },
  { lower := 10222022164480, upper := 20444044328960, M := 18 },
  { lower := 20444044328960, upper := 40888088657920, M := 17 },
  { lower := 40888088657920, upper := 81776177315840, M := 17 },
  { lower := 81776177315840, upper := 163552354631680, M := 16 },
  { lower := 163552354631680, upper := 327104709263360, M := 16 },
  { lower := 327104709263360, upper := 654209418526720, M := 16 },
  { lower := 654209418526720, upper := 1308418837053440, M := 15 },
  { lower := 1308418837053440, upper := 2616837674106880, M := 15 },
  { lower := 2616837674106880, upper := 5233675348213760, M := 15 },
  { lower := 5233675348213760, upper := 10467350696427520, M := 14 },
  { lower := 10467350696427520, upper := 20934701392855040, M := 14 },
  { lower := 20934701392855040, upper := 41869402785710080, M := 14 },
  { lower := 41869402785710080, upper := 83738805571420160, M := 13 },
  { lower := 83738805571420160, upper := 167477611142840320, M := 13 },
  { lower := 167477611142840320, upper := 334955222285680640, M := 13 },
  { lower := 334955222285680640, upper := 669910444571361280, M := 12 },
  { lower := 669910444571361280, upper := 1339820889142722560, M := 12 },
  { lower := 1339820889142722560, upper := 2679641778285445120, M := 12 },
  { lower := 2679641778285445120, upper := 5359283556570890240, M := 12 },
  { lower := 5359283556570890240, upper := 10718567113141780480, M := 11 },
  { lower := 10718567113141780480, upper := 21437134226283560960, M := 11 },
  { lower := 21437134226283560960, upper := 42874268452567121920, M := 11 },
  { lower := 42874268452567121920, upper := 85748536905134243840, M := 11 },
  { lower := 85748536905134243840, upper := 171497073810268487680, M := 10 },
  { lower := 171497073810268487680, upper := 342994147620536975360, M := 10 },
  { lower := 342994147620536975360, upper := 685988295241073950720, M := 10 },
  { lower := 685988295241073950720, upper := 1371976590482147901440, M := 10 },
  { lower := 1371976590482147901440, upper := 2743953180964295802880, M := 9 },
  { lower := 2743953180964295802880, upper := 5487906361928591605760, M := 9 },
  { lower := 5487906361928591605760, upper := 10975812723857183211520, M := 9 },
  { lower := 10975812723857183211520, upper := 21951625447714366423040, M := 9 },
  { lower := 21951625447714366423040, upper := 43903250895428732846080, M := 9 },
  { lower := 43903250895428732846080, upper := 87806501790857465692160, M := 8 },
  { lower := 87806501790857465692160, upper := 175613003581714931384320, M := 8 },
  { lower := 175613003581714931384320, upper := 351226007163429862768640, M := 8 },
  { lower := 351226007163429862768640, upper := 702452014326859725537280, M := 8 },
  { lower := 702452014326859725537280, upper := 1404904028653719451074560, M := 8 },
  { lower := 1404904028653719451074560, upper := 2809808057307438902149120, M := 8 },
  { lower := 2809808057307438902149120, upper := 5619616114614877804298240, M := 7 },
  { lower := 5619616114614877804298240, upper := 11239232229229755608596480, M := 7 },
  { lower := 11239232229229755608596480, upper := 22478464458459511217192960, M := 7 },
  { lower := 22478464458459511217192960, upper := 44956928916919022434385920, M := 7 },
  { lower := 44956928916919022434385920, upper := 89913857833838044868771840, M := 7 },
  { lower := 89913857833838044868771840, upper := 179827715667676089737543680, M := 7 },
  { lower := 179827715667676089737543680, upper := 359655431335352179475087360, M := 6 },
  { lower := 359655431335352179475087360, upper := 719310862670704358950174720, M := 6 },
  { lower := 719310862670704358950174720, upper := 1438621725341408717900349440, M := 6 },
  { lower := 1438621725341408717900349440, upper := 2877243450682817435800698880, M := 6 },
  { lower := 2877243450682817435800698880, upper := 5754486901365634871601397760, M := 6 },
  { lower := 5754486901365634871601397760, upper := 11508973802731269743202795520, M := 6 },
  { lower := 11508973802731269743202795520, upper := 23017947605462539486405591040, M := 6 },
  { lower := 23017947605462539486405591040, upper := 46035895210925078972811182080, M := 6 },
  { lower := 46035895210925078972811182080, upper := 92071790421850157945622364160, M := 5 },
  { lower := 92071790421850157945622364160, upper := 184143580843700315891244728320, M := 5 },
  { lower := 184143580843700315891244728320, upper := 368287161687400631782489456640, M := 5 },
  { lower := 368287161687400631782489456640, upper := 736574323374801263564978913280, M := 5 },
  { lower := 736574323374801263564978913280, upper := 1473148646749602527129957826560, M := 5 },
  { lower := 1473148646749602527129957826560, upper := 2946297293499205054259915653120, M := 5 },
  { lower := 2946297293499205054259915653120, upper := 5892594586998410108519831306240, M := 5 },
  { lower := 5892594586998410108519831306240, upper := 11785189173996820217039662612480, M := 5 },
  { lower := 11785189173996820217039662612480, upper := 23570378347993640434079325224960, M := 5 },
  { lower := 23570378347993640434079325224960, upper := 47140756695987280868158650449920, M := 4 },
  { lower := 47140756695987280868158650449920, upper := 94281513391974561736317300899840, M := 4 },
  { lower := 94281513391974561736317300899840, upper := 188563026783949123472634601799680, M := 4 },
  { lower := 188563026783949123472634601799680, upper := 377126053567898246945269203599360, M := 4 },
  { lower := 377126053567898246945269203599360, upper := 754252107135796493890538407198720, M := 4 },
  { lower := 754252107135796493890538407198720, upper := 1508504214271592987781076814397440, M := 4 },
  { lower := 1508504214271592987781076814397440, upper := 3017008428543185975562153628794880, M := 4 },
  { lower := 3017008428543185975562153628794880, upper := 6034016857086371951124307257589760, M := 4 },
  { lower := 6034016857086371951124307257589760, upper := 12068033714172743902248614515179520, M := 4 },
  { lower := 12068033714172743902248614515179520, upper := 24136067428345487804497229030359040, M := 4 },
  { lower := 24136067428345487804497229030359040, upper := 48272134856690975608994458060718080, M := 4 },
  { lower := 48272134856690975608994458060718080, upper := 96544269713381951217988916121436160, M := 4 },
  { lower := 96544269713381951217988916121436160, upper := 193088539426763902435977832242872320, M := 4 },
  { lower := 193088539426763902435977832242872320, upper := 386177078853527804871955664485744640, M := 3 },
  { lower := 386177078853527804871955664485744640, upper := 772354157707055609743911328971489280, M := 3 },
  { lower := 772354157707055609743911328971489280, upper := 1544708315414111219487822657942978560, M := 3 },
  { lower := 1544708315414111219487822657942978560, upper := 3089416630828222438975645315885957120, M := 3 },
  { lower := 3089416630828222438975645315885957120, upper := 6178833261656444877951290631771914240, M := 3 },
  { lower := 6178833261656444877951290631771914240, upper := 12357666523312889755902581263543828480, M := 3 },
  { lower := 12357666523312889755902581263543828480, upper := 24715333046625779511805162527087656960, M := 3 },
  { lower := 24715333046625779511805162527087656960, upper := 49430666093251559023610325054175313920, M := 3 },
  { lower := 49430666093251559023610325054175313920, upper := 98861332186503118047220650108350627840, M := 3 },
  { lower := 98861332186503118047220650108350627840, upper := 197722664373006236094441300216701255680, M := 3 },
  { lower := 197722664373006236094441300216701255680, upper := 395445328746012472188882600433402511360, M := 3 },
  { lower := 395445328746012472188882600433402511360, upper := 790890657492024944377765200866805022720, M := 3 },
  { lower := 790890657492024944377765200866805022720, upper := 1581781314984049888755530401733610045440, M := 3 },
  { lower := 1581781314984049888755530401733610045440, upper := 3163562629968099777511060803467220090880, M := 3 },
  { lower := 3163562629968099777511060803467220090880, upper := 6327125259936199555022121606934440181760, M := 3 },
  { lower := 6327125259936199555022121606934440181760, upper := 12654250519872399110044243213868880363520, M := 3 },
  { lower := 12654250519872399110044243213868880363520, upper := 25308501039744798220088486427737760727040, M := 3 },
  { lower := 25308501039744798220088486427737760727040, upper := 50617002079489596440176972855475521454080, M := 2 },
  { lower := 50617002079489596440176972855475521454080, upper := 101234004158979192880353945710951042908160, M := 2 },
  { lower := 101234004158979192880353945710951042908160, upper := 202468008317958385760707891421902085816320, M := 2 },
  { lower := 202468008317958385760707891421902085816320, upper := 404936016635916771521415782843804171632640, M := 2 },
  { lower := 404936016635916771521415782843804171632640, upper := 809872033271833543042831565687608343265280, M := 2 },
  { lower := 809872033271833543042831565687608343265280, upper := 1619744066543667086085663131375216686530560, M := 2 },
  { lower := 1619744066543667086085663131375216686530560, upper := 3239488133087334172171326262750433373061120, M := 2 },
  { lower := 3239488133087334172171326262750433373061120, upper := 6478976266174668344342652525500866746122240, M := 2 },
  { lower := 6478976266174668344342652525500866746122240, upper := 12957952532349336688685305051001733492244480, M := 2 },
  { lower := 12957952532349336688685305051001733492244480, upper := 25915905064698673377370610102003466984488960, M := 2 },
  { lower := 25915905064698673377370610102003466984488960, upper := 51831810129397346754741220204006933968977920, M := 2 },
  { lower := 51831810129397346754741220204006933968977920, upper := 103663620258794693509482440408013867937955840, M := 2 },
  { lower := 103663620258794693509482440408013867937955840, upper := 207327240517589387018964880816027735875911680, M := 2 },
  { lower := 207327240517589387018964880816027735875911680, upper := 414654481035178774037929761632055471751823360, M := 2 },
  { lower := 414654481035178774037929761632055471751823360, upper := 829308962070357548075859523264110943503646720, M := 2 },
  { lower := 829308962070357548075859523264110943503646720, upper := 1658617924140715096151719046528221887007293440, M := 2 },
  { lower := 1658617924140715096151719046528221887007293440, upper := 3317235848281430192303438093056443774014586880, M := 2 },
  { lower := 3317235848281430192303438093056443774014586880, upper := 6634471696562860384606876186112887548029173760, M := 2 },
  { lower := 6634471696562860384606876186112887548029173760, upper := 13268943393125720769213752372225775096058347520, M := 2 },
  { lower := 13268943393125720769213752372225775096058347520, upper := 26537886786251441538427504744451550192116695040, M := 2 },
  { lower := 26537886786251441538427504744451550192116695040, upper := 53075773572502883076855009488903100384233390080, M := 2 },
  { lower := 53075773572502883076855009488903100384233390080, upper := 106151547145005766153710018977806200768466780160, M := 2 },
  { lower := 106151547145005766153710018977806200768466780160, upper := 212303094290011532307420037955612401536933560320, M := 2 },
  { lower := 212303094290011532307420037955612401536933560320, upper := 424606188580023064614840075911224803073867120640, M := 2 },
  { lower := 424606188580023064614840075911224803073867120640, upper := 849212377160046129229680151822449606147734241280, M := 2 },
  { lower := 849212377160046129229680151822449606147734241280, upper := 1698424754320092258459360303644899212295468482560, M := 2 },
  { lower := 1698424754320092258459360303644899212295468482560, upper := 3396849508640184516918720607289798424590936965120, M := 2 },
  { lower := 3396849508640184516918720607289798424590936965120, upper := 6793699017280369033837441214579596849181873930240, M := 2 },
  { lower := 6793699017280369033837441214579596849181873930240, upper := 10000000000000000000000000000000000000000000000000, M := 2 }
]

def row035 : FiniteCoverRow := {
  height := row035_height,
  goods := row035_goods,
  layers := row035_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_good000_checked :
    goodSegmentCheck 35 11 23
      { lower := 72, upper := 105, witness := RowWitness.topPrime 71 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good001_checked :
    goodSegmentCheck 35 11 23
      { lower := 106, upper := 137, witness := RowWitness.topPrime 103 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good002_checked :
    goodSegmentCheck 35 11 23
      { lower := 138, upper := 171, witness := RowWitness.topPrime 137 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good003_checked :
    goodSegmentCheck 35 11 23
      { lower := 172, upper := 201, witness := RowWitness.topPrime 167 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good004_checked :
    goodSegmentCheck 35 11 23
      { lower := 202, upper := 233, witness := RowWitness.topPrime 199 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good005_checked :
    goodSegmentCheck 35 11 23
      { lower := 234, upper := 267, witness := RowWitness.topPrime 233 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good006_checked :
    goodSegmentCheck 35 11 23
      { lower := 268, upper := 297, witness := RowWitness.topPrime 263 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good007_checked :
    goodSegmentCheck 35 11 23
      { lower := 298, upper := 327, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good008_checked :
    goodSegmentCheck 35 11 23
      { lower := 328, upper := 351, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good009_checked :
    goodSegmentCheck 35 11 23
      { lower := 352, upper := 383, witness := RowWitness.topPrime 349 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good010_checked :
    goodSegmentCheck 35 11 23
      { lower := 384, upper := 417, witness := RowWitness.topPrime 383 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good011_checked :
    goodSegmentCheck 35 11 23
      { lower := 418, upper := 443, witness := RowWitness.topPrime 409 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good012_checked :
    goodSegmentCheck 35 11 23
      { lower := 444, upper := 477, witness := RowWitness.topPrime 443 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good013_checked :
    goodSegmentCheck 35 11 23
      { lower := 478, upper := 501, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good014_checked :
    goodSegmentCheck 35 11 23
      { lower := 502, upper := 533, witness := RowWitness.topPrime 499 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good015_checked :
    goodSegmentCheck 35 11 23
      { lower := 534, upper := 557, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_good016_checked :
    goodSegmentCheck 35 11 23
      { lower := 558, upper := 591, witness := RowWitness.topPrime 557 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good017_checked :
    goodSegmentCheck 35 11 23
      { lower := 592, upper := 621, witness := RowWitness.topPrime 587 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good018_checked :
    goodSegmentCheck 35 11 23
      { lower := 622, upper := 653, witness := RowWitness.topPrime 619 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good019_checked :
    goodSegmentCheck 35 11 23
      { lower := 654, upper := 687, witness := RowWitness.topPrime 653 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good020_checked :
    goodSegmentCheck 35 11 23
      { lower := 688, upper := 717, witness := RowWitness.topPrime 683 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good021_checked :
    goodSegmentCheck 35 11 23
      { lower := 718, upper := 743, witness := RowWitness.topPrime 709 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good022_checked :
    goodSegmentCheck 35 11 23
      { lower := 744, upper := 777, witness := RowWitness.topPrime 743 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good023_checked :
    goodSegmentCheck 35 11 23
      { lower := 778, upper := 807, witness := RowWitness.topPrime 773 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good024_checked :
    goodSegmentCheck 35 11 23
      { lower := 808, upper := 831, witness := RowWitness.topPrime 797 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good025_checked :
    goodSegmentCheck 35 11 23
      { lower := 832, upper := 863, witness := RowWitness.topPrime 829 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good026_checked :
    goodSegmentCheck 35 11 23
      { lower := 864, upper := 897, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good027_checked :
    goodSegmentCheck 35 11 23
      { lower := 898, upper := 921, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good028_checked :
    goodSegmentCheck 35 11 23
      { lower := 922, upper := 953, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good029_checked :
    goodSegmentCheck 35 11 23
      { lower := 954, upper := 987, witness := RowWitness.topPrime 953 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good030_checked :
    goodSegmentCheck 35 11 23
      { lower := 988, upper := 1017, witness := RowWitness.topPrime 983 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good031_checked :
    goodSegmentCheck 35 11 23
      { lower := 1018, upper := 1047, witness := RowWitness.topPrime 1013 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_good032_checked :
    goodSegmentCheck 35 11 23
      { lower := 1048, upper := 1073, witness := RowWitness.topPrime 1039 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good033_checked :
    goodSegmentCheck 35 11 23
      { lower := 1074, upper := 1103, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good034_checked :
    goodSegmentCheck 35 11 23
      { lower := 1104, upper := 1137, witness := RowWitness.topPrime 1103 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good035_checked :
    goodSegmentCheck 35 11 23
      { lower := 1138, upper := 1163, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good036_checked :
    goodSegmentCheck 35 11 23
      { lower := 1164, upper := 1197, witness := RowWitness.topPrime 1163 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good037_checked :
    goodSegmentCheck 35 11 23
      { lower := 1198, upper := 1227, witness := RowWitness.topPrime 1193 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good038_checked :
    goodSegmentCheck 35 11 23
      { lower := 1228, upper := 1250, witness := RowWitness.topPrime 1223 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good039_checked :
    goodSegmentCheck 35 11 23
      { lower := 1280, upper := 1284, witness := RowWitness.topPrime 1279 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good040_checked :
    goodSegmentCheck 35 11 23
      { lower := 1296, upper := 1314, witness := RowWitness.topPrime 1291 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good041_checked :
    goodSegmentCheck 35 11 23
      { lower := 1344, upper := 1361, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good042_checked :
    goodSegmentCheck 35 11 23
      { lower := 1362, upper := 1395, witness := RowWitness.topPrime 1361 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good043_checked :
    goodSegmentCheck 35 11 23
      { lower := 1396, upper := 1406, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good044_checked :
    goodSegmentCheck 35 11 23
      { lower := 1408, upper := 1411, witness := RowWitness.topPrime 1399 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good045_checked :
    goodSegmentCheck 35 11 23
      { lower := 1445, upper := 1473, witness := RowWitness.topPrime 1439 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good046_checked :
    goodSegmentCheck 35 11 23
      { lower := 1474, upper := 1492, witness := RowWitness.topPrime 1471 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good047_checked :
    goodSegmentCheck 35 11 23
      { lower := 1536, upper := 1565, witness := RowWitness.topPrime 1531 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_good048_checked :
    goodSegmentCheck 35 11 23
      { lower := 1566, upper := 1570, witness := RowWitness.topPrime 1559 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good049_checked :
    goodSegmentCheck 35 11 23
      { lower := 1573, upper := 1573, witness := RowWitness.topPrime 1571 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good050_checked :
    goodSegmentCheck 35 11 23
      { lower := 1587, upper := 1617, witness := RowWitness.topPrime 1583 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good051_checked :
    goodSegmentCheck 35 11 23
      { lower := 1618, upper := 1634, witness := RowWitness.topPrime 1613 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good052_checked :
    goodSegmentCheck 35 11 23
      { lower := 1682, upper := 1703, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good053_checked :
    goodSegmentCheck 35 11 23
      { lower := 1704, upper := 1733, witness := RowWitness.topPrime 1699 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good054_checked :
    goodSegmentCheck 35 11 23
      { lower := 1734, upper := 1762, witness := RowWitness.topPrime 1733 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good055_checked :
    goodSegmentCheck 35 11 23
      { lower := 1792, upper := 1823, witness := RowWitness.topPrime 1789 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good056_checked :
    goodSegmentCheck 35 11 23
      { lower := 1824, upper := 1839, witness := RowWitness.topPrime 1823 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good057_checked :
    goodSegmentCheck 35 11 23
      { lower := 1859, upper := 1881, witness := RowWitness.topPrime 1847 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good058_checked :
    goodSegmentCheck 35 11 23
      { lower := 1882, upper := 1897, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good059_checked :
    goodSegmentCheck 35 11 23
      { lower := 1922, upper := 1947, witness := RowWitness.topPrime 1913 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good060_checked :
    goodSegmentCheck 35 11 23
      { lower := 1948, upper := 1967, witness := RowWitness.topPrime 1933 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good061_checked :
    goodSegmentCheck 35 11 23
      { lower := 1968, upper := 1970, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good062_checked :
    goodSegmentCheck 35 11 23
      { lower := 2025, upper := 2051, witness := RowWitness.topPrime 2017 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good063_checked :
    goodSegmentCheck 35 11 23
      { lower := 2052, upper := 2073, witness := RowWitness.topPrime 2039 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_good064_checked :
    goodSegmentCheck 35 11 23
      { lower := 2074, upper := 2082, witness := RowWitness.topPrime 2069 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good065_checked :
    goodSegmentCheck 35 11 23
      { lower := 2112, upper := 2145, witness := RowWitness.topPrime 2111 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good066_checked :
    goodSegmentCheck 35 11 23
      { lower := 2146, upper := 2146, witness := RowWitness.topPrime 2143 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good067_checked :
    goodSegmentCheck 35 11 23
      { lower := 2176, upper := 2195, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good068_checked :
    goodSegmentCheck 35 11 23
      { lower := 2196, upper := 2213, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good069_checked :
    goodSegmentCheck 35 11 23
      { lower := 2214, upper := 2221, witness := RowWitness.topPrime 2213 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good070_checked :
    goodSegmentCheck 35 11 23
      { lower := 2268, upper := 2274, witness := RowWitness.topPrime 2267 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good071_checked :
    goodSegmentCheck 35 11 23
      { lower := 2299, upper := 2302, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good072_checked :
    goodSegmentCheck 35 11 23
      { lower := 2304, upper := 2331, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good073_checked :
    goodSegmentCheck 35 11 23
      { lower := 2332, upper := 2338, witness := RowWitness.topPrime 2311 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good074_checked :
    goodSegmentCheck 35 11 23
      { lower := 2366, upper := 2391, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good075_checked :
    goodSegmentCheck 35 11 23
      { lower := 2392, upper := 2402, witness := RowWitness.topPrime 2389 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good076_checked :
    goodSegmentCheck 35 11 23
      { lower := 2420, upper := 2451, witness := RowWitness.topPrime 2417 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good077_checked :
    goodSegmentCheck 35 11 23
      { lower := 2452, upper := 2464, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good078_checked :
    goodSegmentCheck 35 11 23
      { lower := 2511, upper := 2537, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good079_checked :
    goodSegmentCheck 35 11 23
      { lower := 2538, upper := 2565, witness := RowWitness.topPrime 2531 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_good080_checked :
    goodSegmentCheck 35 11 23
      { lower := 2566, upper := 2575, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good081_checked :
    goodSegmentCheck 35 11 23
      { lower := 2592, upper := 2594, witness := RowWitness.topPrime 2591 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good082_checked :
    goodSegmentCheck 35 11 23
      { lower := 2601, upper := 2626, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good083_checked :
    goodSegmentCheck 35 11 23
      { lower := 2662, upper := 2693, witness := RowWitness.topPrime 2659 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good084_checked :
    goodSegmentCheck 35 11 23
      { lower := 2694, upper := 2722, witness := RowWitness.topPrime 2693 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good085_checked :
    goodSegmentCheck 35 11 23
      { lower := 2783, upper := 2788, witness := RowWitness.topPrime 2777 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good086_checked :
    goodSegmentCheck 35 11 23
      { lower := 2816, upper := 2817, witness := RowWitness.topPrime 2803 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good087_checked :
    goodSegmentCheck 35 11 23
      { lower := 2835, upper := 2850, witness := RowWitness.topPrime 2833 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good088_checked :
    goodSegmentCheck 35 11 23
      { lower := 2883, upper := 2913, witness := RowWitness.topPrime 2879 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good089_checked :
    goodSegmentCheck 35 11 23
      { lower := 2914, upper := 2938, witness := RowWitness.topPrime 2909 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good090_checked :
    goodSegmentCheck 35 11 23
      { lower := 2944, upper := 2950, witness := RowWitness.topPrime 2939 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good091_checked :
    goodSegmentCheck 35 11 23
      { lower := 3025, upper := 3031, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good092_checked :
    goodSegmentCheck 35 11 23
      { lower := 3042, upper := 3059, witness := RowWitness.topPrime 3041 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good093_checked :
    goodSegmentCheck 35 11 23
      { lower := 3072, upper := 3076, witness := RowWitness.topPrime 3067 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good094_checked :
    goodSegmentCheck 35 11 23
      { lower := 3146, upper := 3171, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good095_checked :
    goodSegmentCheck 35 11 23
      { lower := 3172, upper := 3203, witness := RowWitness.topPrime 3169 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_good096_checked :
    goodSegmentCheck 35 11 23
      { lower := 3204, upper := 3234, witness := RowWitness.topPrime 3203 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good097_checked :
    goodSegmentCheck 35 11 23
      { lower := 3267, upper := 3283, witness := RowWitness.topPrime 3259 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good098_checked :
    goodSegmentCheck 35 11 23
      { lower := 3380, upper := 3407, witness := RowWitness.topPrime 3373 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good099_checked :
    goodSegmentCheck 35 11 23
      { lower := 3408, upper := 3422, witness := RowWitness.topPrime 3407 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good100_checked :
    goodSegmentCheck 35 11 23
      { lower := 3468, upper := 3490, witness := RowWitness.topPrime 3467 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good101_checked :
    goodSegmentCheck 35 11 23
      { lower := 3610, upper := 3618, witness := RowWitness.topPrime 3607 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good102_checked :
    goodSegmentCheck 35 11 23
      { lower := 3630, upper := 3657, witness := RowWitness.topPrime 3623 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good103_checked :
    goodSegmentCheck 35 11 23
      { lower := 3658, upper := 3664, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good104_checked :
    goodSegmentCheck 35 11 23
      { lower := 3712, upper := 3743, witness := RowWitness.topPrime 3709 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good105_checked :
    goodSegmentCheck 35 11 23
      { lower := 3744, upper := 3746, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good106_checked :
    goodSegmentCheck 35 11 23
      { lower := 3750, upper := 3773, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good107_checked :
    goodSegmentCheck 35 11 23
      { lower := 3774, upper := 3785, witness := RowWitness.topPrime 3769 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good108_checked :
    goodSegmentCheck 35 11 23
      { lower := 3844, upper := 3867, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good109_checked :
    goodSegmentCheck 35 11 23
      { lower := 3868, upper := 3878, witness := RowWitness.topPrime 3863 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good110_checked :
    goodSegmentCheck 35 11 23
      { lower := 3887, upper := 3915, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good111_checked :
    goodSegmentCheck 35 11 23
      { lower := 3916, upper := 3921, witness := RowWitness.topPrime 3911 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_good112_checked :
    goodSegmentCheck 35 11 23
      { lower := 3971, upper := 4001, witness := RowWitness.topPrime 3967 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good113_checked :
    goodSegmentCheck 35 11 23
      { lower := 4002, upper := 4005, witness := RowWitness.topPrime 4001 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good114_checked :
    goodSegmentCheck 35 11 23
      { lower := 4056, upper := 4080, witness := RowWitness.topPrime 4051 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good115_checked :
    goodSegmentCheck 35 11 23
      { lower := 4114, upper := 4145, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good116_checked :
    goodSegmentCheck 35 11 23
      { lower := 4146, upper := 4148, witness := RowWitness.topPrime 4139 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good117_checked :
    goodSegmentCheck 35 11 23
      { lower := 4224, upper := 4253, witness := RowWitness.topPrime 4219 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good118_checked :
    goodSegmentCheck 35 11 23
      { lower := 4254, upper := 4266, witness := RowWitness.topPrime 4253 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good119_checked :
    goodSegmentCheck 35 11 23
      { lower := 4335, upper := 4361, witness := RowWitness.topPrime 4327 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good120_checked :
    goodSegmentCheck 35 11 23
      { lower := 4362, upper := 4391, witness := RowWitness.topPrime 4357 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good121_checked :
    goodSegmentCheck 35 11 23
      { lower := 4392, upper := 4409, witness := RowWitness.topPrime 4391 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good122_checked :
    goodSegmentCheck 35 11 23
      { lower := 4480, upper := 4497, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good123_checked :
    goodSegmentCheck 35 11 23
      { lower := 4498, upper := 4511, witness := RowWitness.topPrime 4493 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good124_checked :
    goodSegmentCheck 35 11 23
      { lower := 4617, upper := 4637, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good125_checked :
    goodSegmentCheck 35 11 23
      { lower := 4638, upper := 4651, witness := RowWitness.topPrime 4637 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good126_checked :
    goodSegmentCheck 35 11 23
      { lower := 4736, upper := 4759, witness := RowWitness.topPrime 4733 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good127_checked :
    goodSegmentCheck 35 11 23
      { lower := 4761, upper := 4766, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_good128_checked :
    goodSegmentCheck 35 11 23
      { lower := 4805, upper := 4835, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good129_checked :
    goodSegmentCheck 35 11 23
      { lower := 4836, upper := 4836, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good130_checked :
    goodSegmentCheck 35 11 23
      { lower := 4864, upper := 4894, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good131_checked :
    goodSegmentCheck 35 11 23
      { lower := 4913, upper := 4935, witness := RowWitness.topPrime 4909 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good132_checked :
    goodSegmentCheck 35 11 23
      { lower := 5054, upper := 5085, witness := RowWitness.topPrime 5051 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good133_checked :
    goodSegmentCheck 35 11 23
      { lower := 5086, upper := 5088, witness := RowWitness.topPrime 5081 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good134_checked :
    goodSegmentCheck 35 11 23
      { lower := 5103, upper := 5104, witness := RowWitness.topPrime 5101 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good135_checked :
    goodSegmentCheck 35 11 23
      { lower := 5120, upper := 5137, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good136_checked :
    goodSegmentCheck 35 11 23
      { lower := 5324, upper := 5324, witness := RowWitness.topPrime 5323 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good137_checked :
    goodSegmentCheck 35 11 23
      { lower := 5346, upper := 5358, witness := RowWitness.topPrime 5333 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good138_checked :
    goodSegmentCheck 35 11 23
      { lower := 5376, upper := 5380, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good139_checked :
    goodSegmentCheck 35 11 23
      { lower := 5408, upper := 5410, witness := RowWitness.topPrime 5407 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good140_checked :
    goodSegmentCheck 35 11 23
      { lower := 5415, upper := 5442, witness := RowWitness.topPrime 5413 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good141_checked :
    goodSegmentCheck 35 11 23
      { lower := 5589, upper := 5611, witness := RowWitness.topPrime 5581 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good142_checked :
    goodSegmentCheck 35 11 23
      { lower := 5766, upper := 5783, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good143_checked :
    goodSegmentCheck 35 11 23
      { lower := 5784, upper := 5810, witness := RowWitness.topPrime 5783 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_good144_checked :
    goodSegmentCheck 35 11 23
      { lower := 5832, upper := 5853, witness := RowWitness.topPrime 5827 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good145_checked :
    goodSegmentCheck 35 11 23
      { lower := 5888, upper := 5915, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good146_checked :
    goodSegmentCheck 35 11 23
      { lower := 5916, upper := 5922, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good147_checked :
    goodSegmentCheck 35 11 23
      { lower := 6075, upper := 6107, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good148_checked :
    goodSegmentCheck 35 11 23
      { lower := 6108, upper := 6109, witness := RowWitness.topPrime 6101 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good149_checked :
    goodSegmentCheck 35 11 23
      { lower := 6144, upper := 6171, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good150_checked :
    goodSegmentCheck 35 11 23
      { lower := 6348, upper := 6352, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good151_checked :
    goodSegmentCheck 35 11 23
      { lower := 6358, upper := 6382, witness := RowWitness.topPrime 6353 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good152_checked :
    goodSegmentCheck 35 11 23
      { lower := 6591, upper := 6595, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good153_checked :
    goodSegmentCheck 35 11 23
      { lower := 6655, upper := 6687, witness := RowWitness.topPrime 6653 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good154_checked :
    goodSegmentCheck 35 11 23
      { lower := 6688, upper := 6689, witness := RowWitness.topPrime 6679 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good155_checked :
    goodSegmentCheck 35 11 23
      { lower := 6728, upper := 6753, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good156_checked :
    goodSegmentCheck 35 11 23
      { lower := 6754, upper := 6761, witness := RowWitness.topPrime 6737 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good157_checked :
    goodSegmentCheck 35 11 23
      { lower := 6877, upper := 6893, witness := RowWitness.topPrime 6871 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good158_checked :
    goodSegmentCheck 35 11 23
      { lower := 6936, upper := 6946, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good159_checked :
    goodSegmentCheck 35 11 23
      { lower := 7220, upper := 7253, witness := RowWitness.topPrime 7219 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_good160_checked :
    goodSegmentCheck 35 11 23
      { lower := 7254, upper := 7254, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good161_checked :
    goodSegmentCheck 35 11 23
      { lower := 7424, upper := 7440, witness := RowWitness.topPrime 7417 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good162_checked :
    goodSegmentCheck 35 11 23
      { lower := 7533, upper := 7548, witness := RowWitness.topPrime 7529 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good163_checked :
    goodSegmentCheck 35 11 23
      { lower := 7581, upper := 7603, witness := RowWitness.topPrime 7577 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good164_checked :
    goodSegmentCheck 35 11 23
      { lower := 7688, upper := 7714, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good165_checked :
    goodSegmentCheck 35 11 23
      { lower := 7803, upper := 7810, witness := RowWitness.topPrime 7793 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good166_checked :
    goodSegmentCheck 35 11 23
      { lower := 7936, upper := 7967, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good167_checked :
    goodSegmentCheck 35 11 23
      { lower := 7968, upper := 7970, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good168_checked :
    goodSegmentCheck 35 11 23
      { lower := 8019, upper := 8020, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good169_checked :
    goodSegmentCheck 35 11 23
      { lower := 8410, upper := 8415, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good170_checked :
    goodSegmentCheck 35 11 23
      { lower := 8464, upper := 8482, witness := RowWitness.topPrime 8461 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good171_checked :
    goodSegmentCheck 35 11 23
      { lower := 8664, upper := 8697, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good172_checked :
    goodSegmentCheck 35 11 23
      { lower := 8698, upper := 8698, witness := RowWitness.topPrime 8693 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good173_checked :
    goodSegmentCheck 35 11 23
      { lower := 8704, upper := 8704, witness := RowWitness.topPrime 8699 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good174_checked :
    goodSegmentCheck 35 11 23
      { lower := 8960, upper := 8985, witness := RowWitness.topPrime 8951 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good175_checked :
    goodSegmentCheck 35 11 23
      { lower := 8986, upper := 8994, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_good176_checked :
    goodSegmentCheck 35 11 23
      { lower := 9025, upper := 9027, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good177_checked :
    goodSegmentCheck 35 11 23
      { lower := 9248, upper := 9275, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good178_checked :
    goodSegmentCheck 35 11 23
      { lower := 9276, upper := 9282, witness := RowWitness.topPrime 9257 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good179_checked :
    goodSegmentCheck 35 11 23
      { lower := 9386, upper := 9409, witness := RowWitness.topPrime 9377 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good180_checked :
    goodSegmentCheck 35 11 23
      { lower := 9537, upper := 9556, witness := RowWitness.topPrime 9533 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good181_checked :
    goodSegmentCheck 35 11 23
      { lower := 9610, upper := 9635, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good182_checked :
    goodSegmentCheck 35 11 23
      { lower := 9636, upper := 9638, witness := RowWitness.topPrime 9631 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good183_checked :
    goodSegmentCheck 35 11 23
      { lower := 9747, upper := 9762, witness := RowWitness.topPrime 9743 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good184_checked :
    goodSegmentCheck 35 11 23
      { lower := 10108, upper := 10137, witness := RowWitness.topPrime 10103 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good185_checked :
    goodSegmentCheck 35 11 23
      { lower := 10138, upper := 10142, witness := RowWitness.topPrime 10133 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good186_checked :
    goodSegmentCheck 35 11 23
      { lower := 10240, upper := 10240, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good187_checked :
    goodSegmentCheck 35 11 23
      { lower := 10580, upper := 10601, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good188_checked :
    goodSegmentCheck 35 11 23
      { lower := 10602, upper := 10605, witness := RowWitness.topPrime 10601 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good189_checked :
    goodSegmentCheck 35 11 23
      { lower := 10935, upper := 10943, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good190_checked :
    goodSegmentCheck 35 11 23
      { lower := 10944, upper := 10967, witness := RowWitness.topPrime 10939 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good191_checked :
    goodSegmentCheck 35 11 23
      { lower := 11552, upper := 11566, witness := RowWitness.topPrime 11551 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_good192_checked :
    goodSegmentCheck 35 11 23
      { lower := 11664, upper := 11672, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good193_checked :
    goodSegmentCheck 35 11 23
      { lower := 11776, upper := 11777, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good194_checked :
    goodSegmentCheck 35 11 23
      { lower := 11778, upper := 11808, witness := RowWitness.topPrime 11777 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good195_checked :
    goodSegmentCheck 35 11 23
      { lower := 12005, upper := 12013, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good196_checked :
    goodSegmentCheck 35 11 23
      { lower := 12288, upper := 12308, witness := RowWitness.topPrime 12281 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good197_checked :
    goodSegmentCheck 35 11 23
      { lower := 12500, upper := 12527, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good198_checked :
    goodSegmentCheck 35 11 23
      { lower := 12635, upper := 12649, witness := RowWitness.topPrime 12619 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good199_checked :
    goodSegmentCheck 35 11 23
      { lower := 13312, upper := 13343, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good200_checked :
    goodSegmentCheck 35 11 23
      { lower := 13344, upper := 13344, witness := RowWitness.topPrime 13339 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good201_checked :
    goodSegmentCheck 35 11 23
      { lower := 13456, upper := 13485, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good202_checked :
    goodSegmentCheck 35 11 23
      { lower := 13486, upper := 13488, witness := RowWitness.topPrime 13477 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good203_checked :
    goodSegmentCheck 35 11 23
      { lower := 13851, upper := 13858, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good204_checked :
    goodSegmentCheck 35 11 23
      { lower := 14297, upper := 14317, witness := RowWitness.topPrime 14293 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good205_checked :
    goodSegmentCheck 35 11 23
      { lower := 15341, upper := 15343, witness := RowWitness.topPrime 15331 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good206_checked :
    goodSegmentCheck 35 11 23
      { lower := 15360, upper := 15393, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good207_checked :
    goodSegmentCheck 35 11 23
      { lower := 15394, upper := 15410, witness := RowWitness.topPrime 15391 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_good208_checked :
    goodSegmentCheck 35 11 23
      { lower := 15872, upper := 15893, witness := RowWitness.topPrime 15859 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good209_checked :
    goodSegmentCheck 35 11 23
      { lower := 15894, upper := 15904, witness := RowWitness.topPrime 15889 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good210_checked :
    goodSegmentCheck 35 11 23
      { lower := 15979, upper := 16006, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good211_checked :
    goodSegmentCheck 35 11 23
      { lower := 16399, upper := 16415, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good212_checked :
    goodSegmentCheck 35 11 23
      { lower := 16416, upper := 16418, witness := RowWitness.topPrime 16411 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good213_checked :
    goodSegmentCheck 35 11 23
      { lower := 16820, upper := 16841, witness := RowWitness.topPrime 16811 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good214_checked :
    goodSegmentCheck 35 11 23
      { lower := 16928, upper := 16930, witness := RowWitness.topPrime 16927 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good215_checked :
    goodSegmentCheck 35 11 23
      { lower := 17303, upper := 17332, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good216_checked :
    goodSegmentCheck 35 11 23
      { lower := 18259, upper := 18259, witness := RowWitness.topPrime 18257 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good217_checked :
    goodSegmentCheck 35 11 23
      { lower := 18515, upper := 18536, witness := RowWitness.topPrime 18503 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good218_checked :
    goodSegmentCheck 35 11 23
      { lower := 19683, upper := 19686, witness := RowWitness.topPrime 19681 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good219_checked :
    goodSegmentCheck 35 11 23
      { lower := 20184, upper := 20215, witness := RowWitness.topPrime 20183 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good220_checked :
    goodSegmentCheck 35 11 23
      { lower := 21142, upper := 21173, witness := RowWitness.topPrime 21139 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good221_checked :
    goodSegmentCheck 35 11 23
      { lower := 21174, upper := 21175, witness := RowWitness.topPrime 21169 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good222_checked :
    goodSegmentCheck 35 11 23
      { lower := 21870, upper := 21897, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good223_checked :
    goodSegmentCheck 35 11 23
      { lower := 21898, upper := 21900, witness := RowWitness.topPrime 21893 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_good224_checked :
    goodSegmentCheck 35 11 23
      { lower := 22627, upper := 22633, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good225_checked :
    goodSegmentCheck 35 11 23
      { lower := 23552, upper := 23582, witness := RowWitness.topPrime 23549 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good226_checked :
    goodSegmentCheck 35 11 23
      { lower := 24057, upper := 24059, witness := RowWitness.topPrime 24049 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good227_checked :
    goodSegmentCheck 35 11 23
      { lower := 24576, upper := 24599, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good228_checked :
    goodSegmentCheck 35 11 23
      { lower := 26624, upper := 26631, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good229_checked :
    goodSegmentCheck 35 11 23
      { lower := 26632, upper := 26654, witness := RowWitness.topPrime 26627 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good230_checked :
    goodSegmentCheck 35 11 23
      { lower := 26912, upper := 26937, witness := RowWitness.topPrime 26903 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good231_checked :
    goodSegmentCheck 35 11 23
      { lower := 26938, upper := 26942, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good232_checked :
    goodSegmentCheck 35 11 23
      { lower := 28594, upper := 28595, witness := RowWitness.topPrime 28591 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good233_checked :
    goodSegmentCheck 35 11 23
      { lower := 30618, upper := 30627, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good234_checked :
    goodSegmentCheck 35 11 23
      { lower := 30628, upper := 30628, witness := RowWitness.largeDivisor 14303490897463494516675862543180546846166241569527665681170565565386068032859947087143100170929235154267 } = true := by
  decide +kernel

theorem row035_good235_checked :
    goodSegmentCheck 35 11 23
      { lower := 30629, upper := 30629, witness := RowWitness.largeDivisor 85919125847893581790795252762321429564860916460690894714370122122418097230528989867053542878092085416757 } = true := by
  decide +kernel

theorem row035_good236_checked :
    goodSegmentCheck 35 11 23
      { lower := 30630, upper := 30630, witness := RowWitness.largeDivisor 415750841188148564020862336826209381922857799556234139826407083824591835414076296939628754874559332751227 } = true := by
  decide +kernel

theorem row035_good237_checked :
    goodSegmentCheck 35 11 23
      { lower := 30631, upper := 30647, witness := RowWitness.topPrime 30631 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good238_checked :
    goodSegmentCheck 35 11 23
      { lower := 30752, upper := 30754, witness := RowWitness.topPrime 30727 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good239_checked :
    goodSegmentCheck 35 11 23
      { lower := 30758, upper := 30786, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_good240_checked :
    goodSegmentCheck 35 11 23
      { lower := 31744, upper := 31747, witness := RowWitness.topPrime 31741 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good241_checked :
    goodSegmentCheck 35 11 23
      { lower := 43940, upper := 43957, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good242_checked :
    goodSegmentCheck 35 11 23
      { lower := 49152, upper := 49164, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good243_checked :
    goodSegmentCheck 35 11 23
      { lower := 73728, upper := 73729, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good244_checked :
    goodSegmentCheck 35 11 23
      { lower := 150903, upper := 150932, witness := RowWitness.topPrime 150901 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good245_checked :
    goodSegmentCheck 35 11 23
      { lower := 219501, upper := 219522, witness := RowWitness.topPrime 219491 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row035_good246_checked :
    goodSegmentCheck 35 11 23
      { lower := 327701, upper := 327714, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 35) (r := 11) (s := 23) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_good246_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_goods_checked :
    row035.goods.all (goodSegmentCheck row035.height.i row035.height.r row035.height.s) = true := by
  change row035_goods.all (goodSegmentCheck 35 11 23) = true
  simp only [row035_goods, List.all_cons, List.all_nil,
    row035_good000_checked,
    row035_good001_checked,
    row035_good002_checked,
    row035_good003_checked,
    row035_good004_checked,
    row035_good005_checked,
    row035_good006_checked,
    row035_good007_checked,
    row035_good008_checked,
    row035_good009_checked,
    row035_good010_checked,
    row035_good011_checked,
    row035_good012_checked,
    row035_good013_checked,
    row035_good014_checked,
    row035_good015_checked,
    row035_good016_checked,
    row035_good017_checked,
    row035_good018_checked,
    row035_good019_checked,
    row035_good020_checked,
    row035_good021_checked,
    row035_good022_checked,
    row035_good023_checked,
    row035_good024_checked,
    row035_good025_checked,
    row035_good026_checked,
    row035_good027_checked,
    row035_good028_checked,
    row035_good029_checked,
    row035_good030_checked,
    row035_good031_checked,
    row035_good032_checked,
    row035_good033_checked,
    row035_good034_checked,
    row035_good035_checked,
    row035_good036_checked,
    row035_good037_checked,
    row035_good038_checked,
    row035_good039_checked,
    row035_good040_checked,
    row035_good041_checked,
    row035_good042_checked,
    row035_good043_checked,
    row035_good044_checked,
    row035_good045_checked,
    row035_good046_checked,
    row035_good047_checked,
    row035_good048_checked,
    row035_good049_checked,
    row035_good050_checked,
    row035_good051_checked,
    row035_good052_checked,
    row035_good053_checked,
    row035_good054_checked,
    row035_good055_checked,
    row035_good056_checked,
    row035_good057_checked,
    row035_good058_checked,
    row035_good059_checked,
    row035_good060_checked,
    row035_good061_checked,
    row035_good062_checked,
    row035_good063_checked,
    row035_good064_checked,
    row035_good065_checked,
    row035_good066_checked,
    row035_good067_checked,
    row035_good068_checked,
    row035_good069_checked,
    row035_good070_checked,
    row035_good071_checked,
    row035_good072_checked,
    row035_good073_checked,
    row035_good074_checked,
    row035_good075_checked,
    row035_good076_checked,
    row035_good077_checked,
    row035_good078_checked,
    row035_good079_checked,
    row035_good080_checked,
    row035_good081_checked,
    row035_good082_checked,
    row035_good083_checked,
    row035_good084_checked,
    row035_good085_checked,
    row035_good086_checked,
    row035_good087_checked,
    row035_good088_checked,
    row035_good089_checked,
    row035_good090_checked,
    row035_good091_checked,
    row035_good092_checked,
    row035_good093_checked,
    row035_good094_checked,
    row035_good095_checked,
    row035_good096_checked,
    row035_good097_checked,
    row035_good098_checked,
    row035_good099_checked,
    row035_good100_checked,
    row035_good101_checked,
    row035_good102_checked,
    row035_good103_checked,
    row035_good104_checked,
    row035_good105_checked,
    row035_good106_checked,
    row035_good107_checked,
    row035_good108_checked,
    row035_good109_checked,
    row035_good110_checked,
    row035_good111_checked,
    row035_good112_checked,
    row035_good113_checked,
    row035_good114_checked,
    row035_good115_checked,
    row035_good116_checked,
    row035_good117_checked,
    row035_good118_checked,
    row035_good119_checked,
    row035_good120_checked,
    row035_good121_checked,
    row035_good122_checked,
    row035_good123_checked,
    row035_good124_checked,
    row035_good125_checked,
    row035_good126_checked,
    row035_good127_checked,
    row035_good128_checked,
    row035_good129_checked,
    row035_good130_checked,
    row035_good131_checked,
    row035_good132_checked,
    row035_good133_checked,
    row035_good134_checked,
    row035_good135_checked,
    row035_good136_checked,
    row035_good137_checked,
    row035_good138_checked,
    row035_good139_checked,
    row035_good140_checked,
    row035_good141_checked,
    row035_good142_checked,
    row035_good143_checked,
    row035_good144_checked,
    row035_good145_checked,
    row035_good146_checked,
    row035_good147_checked,
    row035_good148_checked,
    row035_good149_checked,
    row035_good150_checked,
    row035_good151_checked,
    row035_good152_checked,
    row035_good153_checked,
    row035_good154_checked,
    row035_good155_checked,
    row035_good156_checked,
    row035_good157_checked,
    row035_good158_checked,
    row035_good159_checked,
    row035_good160_checked,
    row035_good161_checked,
    row035_good162_checked,
    row035_good163_checked,
    row035_good164_checked,
    row035_good165_checked,
    row035_good166_checked,
    row035_good167_checked,
    row035_good168_checked,
    row035_good169_checked,
    row035_good170_checked,
    row035_good171_checked,
    row035_good172_checked,
    row035_good173_checked,
    row035_good174_checked,
    row035_good175_checked,
    row035_good176_checked,
    row035_good177_checked,
    row035_good178_checked,
    row035_good179_checked,
    row035_good180_checked,
    row035_good181_checked,
    row035_good182_checked,
    row035_good183_checked,
    row035_good184_checked,
    row035_good185_checked,
    row035_good186_checked,
    row035_good187_checked,
    row035_good188_checked,
    row035_good189_checked,
    row035_good190_checked,
    row035_good191_checked,
    row035_good192_checked,
    row035_good193_checked,
    row035_good194_checked,
    row035_good195_checked,
    row035_good196_checked,
    row035_good197_checked,
    row035_good198_checked,
    row035_good199_checked,
    row035_good200_checked,
    row035_good201_checked,
    row035_good202_checked,
    row035_good203_checked,
    row035_good204_checked,
    row035_good205_checked,
    row035_good206_checked,
    row035_good207_checked,
    row035_good208_checked,
    row035_good209_checked,
    row035_good210_checked,
    row035_good211_checked,
    row035_good212_checked,
    row035_good213_checked,
    row035_good214_checked,
    row035_good215_checked,
    row035_good216_checked,
    row035_good217_checked,
    row035_good218_checked,
    row035_good219_checked,
    row035_good220_checked,
    row035_good221_checked,
    row035_good222_checked,
    row035_good223_checked,
    row035_good224_checked,
    row035_good225_checked,
    row035_good226_checked,
    row035_good227_checked,
    row035_good228_checked,
    row035_good229_checked,
    row035_good230_checked,
    row035_good231_checked,
    row035_good232_checked,
    row035_good233_checked,
    row035_good234_checked,
    row035_good235_checked,
    row035_good236_checked,
    row035_good237_checked,
    row035_good238_checked,
    row035_good239_checked,
    row035_good240_checked,
    row035_good241_checked,
    row035_good242_checked,
    row035_good243_checked,
    row035_good244_checked,
    row035_good245_checked,
    row035_good246_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_registered :
    decide (row035.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row035_small_checked :
    coverCheck (2 * row035.height.i + 2) (row035.height.i * (row035.height.i - 1) - 1)
      (row035.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row035_layerCover_checked :
    coverCheck (row035.height.i * (row035.height.i - 1)) (row035.height.n0 - 1)
      (row035.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_bounds : List NatInterval :=
  [(72, 105), (106, 137), (138, 171), (172, 201), (202, 233), (234, 267), (268, 297), (298, 327), (328, 351), (352, 383), (384, 417), (418, 443), (444, 477), (478, 501), (502, 533), (534, 557), (558, 591), (592, 621), (622, 653), (654, 687), (688, 717), (718, 743), (744, 777), (778, 807), (808, 831), (832, 863), (864, 897), (898, 921), (922, 953), (954, 987), (988, 1017), (1018, 1047), (1048, 1073), (1074, 1103), (1104, 1137), (1138, 1163), (1164, 1197), (1198, 1227), (1228, 1250), (1280, 1284), (1296, 1314), (1344, 1361), (1362, 1395), (1396, 1406), (1408, 1411), (1445, 1473), (1474, 1492), (1536, 1565), (1566, 1570), (1573, 1573), (1587, 1617), (1618, 1634), (1682, 1703), (1704, 1733), (1734, 1762), (1792, 1823), (1824, 1839), (1859, 1881), (1882, 1897), (1922, 1947), (1948, 1967), (1968, 1970), (2025, 2051), (2052, 2073), (2074, 2082), (2112, 2145), (2146, 2146), (2176, 2195), (2196, 2213), (2214, 2221), (2268, 2274), (2299, 2302), (2304, 2331), (2332, 2338), (2366, 2391), (2392, 2402), (2420, 2451), (2452, 2464), (2511, 2537), (2538, 2565), (2566, 2575), (2592, 2594), (2601, 2626), (2662, 2693), (2694, 2722), (2783, 2788), (2816, 2817), (2835, 2850), (2883, 2913), (2914, 2938), (2944, 2950), (3025, 3031), (3042, 3059), (3072, 3076), (3146, 3171), (3172, 3203), (3204, 3234), (3267, 3283), (3380, 3407), (3408, 3422), (3468, 3490), (3610, 3618), (3630, 3657), (3658, 3664), (3712, 3743), (3744, 3746), (3750, 3773), (3774, 3785), (3844, 3867), (3868, 3878), (3887, 3915), (3916, 3921), (3971, 4001), (4002, 4005), (4056, 4080), (4114, 4145), (4146, 4148), (4224, 4253), (4254, 4266), (4335, 4361), (4362, 4391), (4392, 4409), (4480, 4497), (4498, 4511), (4617, 4637), (4638, 4651), (4736, 4759), (4761, 4766), (4805, 4835), (4836, 4836), (4864, 4894), (4913, 4935), (5054, 5085), (5086, 5088), (5103, 5104), (5120, 5137), (5324, 5324), (5346, 5358), (5376, 5380), (5408, 5410), (5415, 5442), (5589, 5611), (5766, 5783), (5784, 5810), (5832, 5853), (5888, 5915), (5916, 5922), (6075, 6107), (6108, 6109), (6144, 6171), (6348, 6352), (6358, 6382), (6591, 6595), (6655, 6687), (6688, 6689), (6728, 6753), (6754, 6761), (6877, 6893), (6936, 6946), (7220, 7253), (7254, 7254), (7424, 7440), (7533, 7548), (7581, 7603), (7688, 7714), (7803, 7810), (7936, 7967), (7968, 7970), (8019, 8020), (8410, 8415), (8464, 8482), (8664, 8697), (8698, 8698), (8704, 8704), (8960, 8985), (8986, 8994), (9025, 9027), (9248, 9275), (9276, 9282), (9386, 9409), (9537, 9556), (9610, 9635), (9636, 9638), (9747, 9762), (10108, 10137), (10138, 10142), (10240, 10240), (10580, 10601), (10602, 10605), (10935, 10943), (10944, 10967), (11552, 11566), (11664, 11672), (11776, 11777), (11778, 11808), (12005, 12013), (12288, 12308), (12500, 12527), (12635, 12649), (13312, 13343), (13344, 13344), (13456, 13485), (13486, 13488), (13851, 13858), (14297, 14317), (15341, 15343), (15360, 15393), (15394, 15410), (15872, 15893), (15894, 15904), (15979, 16006), (16399, 16415), (16416, 16418), (16820, 16841), (16928, 16930), (17303, 17332), (18259, 18259), (18515, 18536), (19683, 19686), (20184, 20215), (21142, 21173), (21174, 21175), (21870, 21897), (21898, 21900), (22627, 22633), (23552, 23582), (24057, 24059), (24576, 24599), (26624, 26631), (26632, 26654), (26912, 26937), (26938, 26942), (28594, 28595), (30618, 30627), (30628, 30628), (30629, 30629), (30630, 30630), (30631, 30647), (30752, 30754), (30758, 30786), (31744, 31747), (43940, 43957), (49152, 49164), (73728, 73729), (150903, 150932), (219501, 219522), (327701, 327714)]

theorem row035_bounds_eq : row035.goods.map goodSegmentBounds = row035_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer000_intervals : List ColouredInterval :=
  [(2, 1190, 1218), (2, 1216, 1250), (2, 1216, 1250), (2, 1280, 1314), (2, 1344, 1378), (2, 1408, 1442), (2, 1472, 1506), (2, 1536, 1570), (2, 1600, 1634), (2, 1664, 1698), (2, 1728, 1762), (2, 1792, 1826), (2, 1856, 1890), (2, 1920, 1954), (2, 1984, 2018), (2, 2048, 2082), (2, 2112, 2146), (2, 2176, 2210), (2, 2240, 2274), (2, 2304, 2338), (2, 2368, 2379), (2, 1280, 1314), (2, 1408, 1442), (2, 1536, 1570), (2, 1664, 1698), (2, 1792, 1826), (2, 1920, 1954), (2, 2048, 2082), (2, 2176, 2210), (2, 2304, 2338), (2, 1280, 1314), (2, 1536, 1570), (2, 1792, 1826), (2, 2048, 2082), (2, 2304, 2338), (2, 1536, 1570), (2, 2048, 2082), (2, 2048, 2082), (2, 2048, 2082), (3, 1215, 1249), (3, 1296, 1330), (3, 1377, 1411), (3, 1458, 1492), (3, 1539, 1573), (3, 1620, 1654), (3, 1701, 1735), (3, 1782, 1816), (3, 1863, 1897), (3, 1944, 1978), (3, 2025, 2059), (3, 2106, 2140), (3, 2187, 2221), (3, 2268, 2302), (3, 2349, 2379), (3, 1215, 1249), (3, 1458, 1492), (3, 1701, 1735), (3, 1944, 1978), (3, 2187, 2221), (3, 1458, 1492), (3, 2187, 2221), (3, 2187, 2221), (5, 1250, 1284), (5, 1875, 1909), (7, 1372, 1406), (7, 1715, 1749), (11, 1210, 1244), (11, 1331, 1365), (11, 1452, 1486), (11, 1573, 1607), (11, 1694, 1728), (11, 1815, 1849), (11, 1936, 1970), (11, 2057, 2091), (11, 2178, 2212), (11, 2299, 2333), (11, 1331, 1365), (13, 1190, 1217), (13, 1352, 1386), (13, 1521, 1555), (13, 1690, 1724), (13, 1859, 1893), (13, 2028, 2062), (13, 2197, 2231), (13, 2366, 2379), (13, 2197, 2231), (17, 1190, 1190), (17, 1445, 1479), (17, 1734, 1768), (17, 2023, 2057), (17, 2312, 2346), (19, 1444, 1478), (19, 1805, 1839), (19, 2166, 2200), (23, 1587, 1621), (23, 2116, 2150), (29, 1682, 1716), (31, 1190, 1212), (31, 1922, 1956)]

def row035_layer000_block000 : List ColouredInterval :=
  [(2, 1190, 1218), (2, 1216, 1250), (2, 1216, 1250), (2, 1280, 1314), (2, 1344, 1378), (2, 1408, 1442), (2, 1472, 1506), (2, 1536, 1570), (2, 1600, 1634), (2, 1664, 1698), (2, 1728, 1762), (2, 1792, 1826), (2, 1856, 1890), (2, 1920, 1954), (2, 1984, 2018), (2, 2048, 2082)]

def row035_layer000_block001 : List ColouredInterval :=
  [(2, 2112, 2146), (2, 2176, 2210), (2, 2240, 2274), (2, 2304, 2338), (2, 2368, 2379), (2, 1280, 1314), (2, 1408, 1442), (2, 1536, 1570), (2, 1664, 1698), (2, 1792, 1826), (2, 1920, 1954), (2, 2048, 2082), (2, 2176, 2210), (2, 2304, 2338), (2, 1280, 1314), (2, 1536, 1570)]

def row035_layer000_block002 : List ColouredInterval :=
  [(2, 1792, 1826), (2, 2048, 2082), (2, 2304, 2338), (2, 1536, 1570), (2, 2048, 2082), (2, 2048, 2082), (2, 2048, 2082), (3, 1215, 1249), (3, 1296, 1330), (3, 1377, 1411), (3, 1458, 1492), (3, 1539, 1573), (3, 1620, 1654), (3, 1701, 1735), (3, 1782, 1816), (3, 1863, 1897)]

def row035_layer000_block003 : List ColouredInterval :=
  [(3, 1944, 1978), (3, 2025, 2059), (3, 2106, 2140), (3, 2187, 2221), (3, 2268, 2302), (3, 2349, 2379), (3, 1215, 1249), (3, 1458, 1492), (3, 1701, 1735), (3, 1944, 1978), (3, 2187, 2221), (3, 1458, 1492), (3, 2187, 2221), (3, 2187, 2221), (5, 1250, 1284), (5, 1875, 1909)]

def row035_layer000_block004 : List ColouredInterval :=
  [(7, 1372, 1406), (7, 1715, 1749), (11, 1210, 1244), (11, 1331, 1365), (11, 1452, 1486), (11, 1573, 1607), (11, 1694, 1728), (11, 1815, 1849), (11, 1936, 1970), (11, 2057, 2091), (11, 2178, 2212), (11, 2299, 2333), (11, 1331, 1365), (13, 1190, 1217), (13, 1352, 1386), (13, 1521, 1555)]

def row035_layer000_block005 : List ColouredInterval :=
  [(13, 1690, 1724), (13, 1859, 1893), (13, 2028, 2062), (13, 2197, 2231), (13, 2366, 2379), (13, 2197, 2231), (17, 1190, 1190), (17, 1445, 1479), (17, 1734, 1768), (17, 2023, 2057), (17, 2312, 2346), (19, 1444, 1478), (19, 1805, 1839), (19, 2166, 2200), (23, 1587, 1621), (23, 2116, 2150)]

def row035_layer000_block006 : List ColouredInterval :=
  [(29, 1682, 1716), (31, 1190, 1212), (31, 1922, 1956)]

def row035_layer000_chunks : List (List ColouredInterval) :=
  [row035_layer000_block000, row035_layer000_block001, row035_layer000_block002, row035_layer000_block003, row035_layer000_block004, row035_layer000_block005, row035_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer000_arithmetic : LayerArithmeticValid row035.height { lower := 1190, upper := 2380, M := 38 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer000_enumeration :
    activePowerIntervalList 35 38 1190 2380 = row035_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer000_pairs000 :
    row035_layer000_block000.all (fun I => row035_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer000_pairs001 :
    row035_layer000_block001.all (fun I => row035_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer000_pairs002 :
    row035_layer000_block002.all (fun I => row035_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer000_pairs003 :
    row035_layer000_block003.all (fun I => row035_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer000_pairs004 :
    row035_layer000_block004.all (fun I => row035_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer000_pairs005 :
    row035_layer000_block005.all (fun I => row035_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer000_pairs006 :
    row035_layer000_block006.all (fun I => row035_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer000_chunks_eq : row035_layer000_chunks.flatten = row035_layer000_intervals := by
  rfl

theorem row035_layer000_pairs : pairCoverCheck row035_layer000_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer000_chunks_eq
  intro block hblock
  simp only [row035_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer000_pairs000
  · exact row035_layer000_pairs001
  · exact row035_layer000_pairs002
  · exact row035_layer000_pairs003
  · exact row035_layer000_pairs004
  · exact row035_layer000_pairs005
  · exact row035_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer000_checked :
    coverLayerCheck row035.height row035.goods { lower := 1190, upper := 2380, M := 38 } = true := by
  exact coverLayerCheck_of_parts row035_layer000_arithmetic row035_layer000_enumeration row035_bounds_eq row035_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer000_checked
