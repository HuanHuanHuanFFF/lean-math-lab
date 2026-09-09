import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row035_registered :
    decide (row035.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row035_goods_checked :
    row035.goods.all (goodSegmentCheck row035.height.i row035.height.r row035.height.s) = true := by
  decide +kernel

theorem row035_small_checked :
    coverCheck (2 * row035.height.i + 2) (row035.height.i * (row035.height.i - 1) - 1)
      (row035.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row035_layerCover_checked :
    coverCheck (row035.height.i * (row035.height.i - 1)) (row035.height.n0 - 1)
      (row035.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row035_layer000_checked :
    coverLayerCheck row035.height row035.goods { lower := 1190, upper := 2380, M := 38 } = true := by
  decide +kernel

theorem row035_layer001_checked :
    coverLayerCheck row035.height row035.goods { lower := 2380, upper := 4760, M := 37 } = true := by
  decide +kernel

theorem row035_layer002_checked :
    coverLayerCheck row035.height row035.goods { lower := 4760, upper := 9520, M := 36 } = true := by
  decide +kernel

theorem row035_layer003_checked :
    coverLayerCheck row035.height row035.goods { lower := 9520, upper := 19040, M := 35 } = true := by
  decide +kernel

theorem row035_layer004_checked :
    coverLayerCheck row035.height row035.goods { lower := 19040, upper := 38080, M := 34 } = true := by
  decide +kernel

theorem row035_layer005_checked :
    coverLayerCheck row035.height row035.goods { lower := 38080, upper := 76160, M := 34 } = true := by
  decide +kernel

theorem row035_layer006_checked :
    coverLayerCheck row035.height row035.goods { lower := 76160, upper := 152320, M := 33 } = true := by
  decide +kernel

theorem row035_layer007_checked :
    coverLayerCheck row035.height row035.goods { lower := 152320, upper := 304640, M := 32 } = true := by
  decide +kernel

theorem row035_layer008_checked :
    coverLayerCheck row035.height row035.goods { lower := 304640, upper := 609280, M := 31 } = true := by
  decide +kernel

theorem row035_layer009_checked :
    coverLayerCheck row035.height row035.goods { lower := 609280, upper := 1218560, M := 31 } = true := by
  decide +kernel

theorem row035_layer010_checked :
    coverLayerCheck row035.height row035.goods { lower := 1218560, upper := 2437120, M := 30 } = true := by
  decide +kernel

theorem row035_layer011_checked :
    coverLayerCheck row035.height row035.goods { lower := 2437120, upper := 4874240, M := 29 } = true := by
  decide +kernel

theorem row035_layer012_checked :
    coverLayerCheck row035.height row035.goods { lower := 4874240, upper := 9748480, M := 29 } = true := by
  decide +kernel

theorem row035_layer013_checked :
    coverLayerCheck row035.height row035.goods { lower := 9748480, upper := 19496960, M := 28 } = true := by
  decide +kernel

theorem row035_layer014_checked :
    coverLayerCheck row035.height row035.goods { lower := 19496960, upper := 38993920, M := 27 } = true := by
  decide +kernel

theorem row035_layer015_checked :
    coverLayerCheck row035.height row035.goods { lower := 38993920, upper := 77987840, M := 27 } = true := by
  decide +kernel

theorem row035_layer016_checked :
    coverLayerCheck row035.height row035.goods { lower := 77987840, upper := 155975680, M := 26 } = true := by
  decide +kernel

theorem row035_layer017_checked :
    coverLayerCheck row035.height row035.goods { lower := 155975680, upper := 311951360, M := 25 } = true := by
  decide +kernel

theorem row035_layer018_checked :
    coverLayerCheck row035.height row035.goods { lower := 311951360, upper := 623902720, M := 25 } = true := by
  decide +kernel

theorem row035_layer019_checked :
    coverLayerCheck row035.height row035.goods { lower := 623902720, upper := 1247805440, M := 24 } = true := by
  decide +kernel

theorem row035_layer020_checked :
    coverLayerCheck row035.height row035.goods { lower := 1247805440, upper := 2495610880, M := 24 } = true := by
  decide +kernel

theorem row035_layer021_checked :
    coverLayerCheck row035.height row035.goods { lower := 2495610880, upper := 4991221760, M := 23 } = true := by
  decide +kernel

theorem row035_layer022_checked :
    coverLayerCheck row035.height row035.goods { lower := 4991221760, upper := 9982443520, M := 23 } = true := by
  decide +kernel

theorem row035_layer023_checked :
    coverLayerCheck row035.height row035.goods { lower := 9982443520, upper := 19964887040, M := 22 } = true := by
  decide +kernel

theorem row035_layer024_checked :
    coverLayerCheck row035.height row035.goods { lower := 19964887040, upper := 39929774080, M := 22 } = true := by
  decide +kernel

theorem row035_layer025_checked :
    coverLayerCheck row035.height row035.goods { lower := 39929774080, upper := 79859548160, M := 21 } = true := by
  decide +kernel

theorem row035_layer026_checked :
    coverLayerCheck row035.height row035.goods { lower := 79859548160, upper := 159719096320, M := 21 } = true := by
  decide +kernel

theorem row035_layer027_checked :
    coverLayerCheck row035.height row035.goods { lower := 159719096320, upper := 319438192640, M := 20 } = true := by
  decide +kernel

theorem row035_layer028_checked :
    coverLayerCheck row035.height row035.goods { lower := 319438192640, upper := 638876385280, M := 20 } = true := by
  decide +kernel

theorem row035_layer029_checked :
    coverLayerCheck row035.height row035.goods { lower := 638876385280, upper := 1277752770560, M := 19 } = true := by
  decide +kernel

theorem row035_layer030_checked :
    coverLayerCheck row035.height row035.goods { lower := 1277752770560, upper := 2555505541120, M := 19 } = true := by
  decide +kernel

theorem row035_layer031_checked :
    coverLayerCheck row035.height row035.goods { lower := 2555505541120, upper := 5111011082240, M := 18 } = true := by
  decide +kernel

theorem row035_layer032_checked :
    coverLayerCheck row035.height row035.goods { lower := 5111011082240, upper := 10222022164480, M := 18 } = true := by
  decide +kernel

theorem row035_layer033_checked :
    coverLayerCheck row035.height row035.goods { lower := 10222022164480, upper := 20444044328960, M := 18 } = true := by
  decide +kernel

theorem row035_layer034_checked :
    coverLayerCheck row035.height row035.goods { lower := 20444044328960, upper := 40888088657920, M := 17 } = true := by
  decide +kernel

theorem row035_layer035_checked :
    coverLayerCheck row035.height row035.goods { lower := 40888088657920, upper := 81776177315840, M := 17 } = true := by
  decide +kernel

theorem row035_layer036_checked :
    coverLayerCheck row035.height row035.goods { lower := 81776177315840, upper := 163552354631680, M := 16 } = true := by
  decide +kernel

theorem row035_layer037_checked :
    coverLayerCheck row035.height row035.goods { lower := 163552354631680, upper := 327104709263360, M := 16 } = true := by
  decide +kernel

theorem row035_layer038_checked :
    coverLayerCheck row035.height row035.goods { lower := 327104709263360, upper := 654209418526720, M := 16 } = true := by
  decide +kernel

theorem row035_layer039_checked :
    coverLayerCheck row035.height row035.goods { lower := 654209418526720, upper := 1308418837053440, M := 15 } = true := by
  decide +kernel

theorem row035_layer040_checked :
    coverLayerCheck row035.height row035.goods { lower := 1308418837053440, upper := 2616837674106880, M := 15 } = true := by
  decide +kernel

theorem row035_layer041_checked :
    coverLayerCheck row035.height row035.goods { lower := 2616837674106880, upper := 5233675348213760, M := 15 } = true := by
  decide +kernel

theorem row035_layer042_checked :
    coverLayerCheck row035.height row035.goods { lower := 5233675348213760, upper := 10467350696427520, M := 14 } = true := by
  decide +kernel

theorem row035_layer043_checked :
    coverLayerCheck row035.height row035.goods { lower := 10467350696427520, upper := 20934701392855040, M := 14 } = true := by
  decide +kernel

theorem row035_layer044_checked :
    coverLayerCheck row035.height row035.goods { lower := 20934701392855040, upper := 41869402785710080, M := 14 } = true := by
  decide +kernel

theorem row035_layer045_checked :
    coverLayerCheck row035.height row035.goods { lower := 41869402785710080, upper := 83738805571420160, M := 13 } = true := by
  decide +kernel

theorem row035_layer046_checked :
    coverLayerCheck row035.height row035.goods { lower := 83738805571420160, upper := 167477611142840320, M := 13 } = true := by
  decide +kernel

theorem row035_layer047_checked :
    coverLayerCheck row035.height row035.goods { lower := 167477611142840320, upper := 334955222285680640, M := 13 } = true := by
  decide +kernel

theorem row035_layer048_checked :
    coverLayerCheck row035.height row035.goods { lower := 334955222285680640, upper := 669910444571361280, M := 12 } = true := by
  decide +kernel

theorem row035_layer049_checked :
    coverLayerCheck row035.height row035.goods { lower := 669910444571361280, upper := 1339820889142722560, M := 12 } = true := by
  decide +kernel

theorem row035_layer050_checked :
    coverLayerCheck row035.height row035.goods { lower := 1339820889142722560, upper := 2679641778285445120, M := 12 } = true := by
  decide +kernel

theorem row035_layer051_checked :
    coverLayerCheck row035.height row035.goods { lower := 2679641778285445120, upper := 5359283556570890240, M := 12 } = true := by
  decide +kernel

theorem row035_layer052_checked :
    coverLayerCheck row035.height row035.goods { lower := 5359283556570890240, upper := 10718567113141780480, M := 11 } = true := by
  decide +kernel

theorem row035_layer053_checked :
    coverLayerCheck row035.height row035.goods { lower := 10718567113141780480, upper := 21437134226283560960, M := 11 } = true := by
  decide +kernel

theorem row035_layer054_checked :
    coverLayerCheck row035.height row035.goods { lower := 21437134226283560960, upper := 42874268452567121920, M := 11 } = true := by
  decide +kernel

theorem row035_layer055_checked :
    coverLayerCheck row035.height row035.goods { lower := 42874268452567121920, upper := 85748536905134243840, M := 11 } = true := by
  decide +kernel

theorem row035_layer056_checked :
    coverLayerCheck row035.height row035.goods { lower := 85748536905134243840, upper := 171497073810268487680, M := 10 } = true := by
  decide +kernel

theorem row035_layer057_checked :
    coverLayerCheck row035.height row035.goods { lower := 171497073810268487680, upper := 342994147620536975360, M := 10 } = true := by
  decide +kernel

theorem row035_layer058_checked :
    coverLayerCheck row035.height row035.goods { lower := 342994147620536975360, upper := 685988295241073950720, M := 10 } = true := by
  decide +kernel

theorem row035_layer059_checked :
    coverLayerCheck row035.height row035.goods { lower := 685988295241073950720, upper := 1371976590482147901440, M := 10 } = true := by
  decide +kernel

theorem row035_layer060_checked :
    coverLayerCheck row035.height row035.goods { lower := 1371976590482147901440, upper := 2743953180964295802880, M := 9 } = true := by
  decide +kernel

theorem row035_layer061_checked :
    coverLayerCheck row035.height row035.goods { lower := 2743953180964295802880, upper := 5487906361928591605760, M := 9 } = true := by
  decide +kernel

theorem row035_layer062_checked :
    coverLayerCheck row035.height row035.goods { lower := 5487906361928591605760, upper := 10975812723857183211520, M := 9 } = true := by
  decide +kernel

theorem row035_layer063_checked :
    coverLayerCheck row035.height row035.goods { lower := 10975812723857183211520, upper := 21951625447714366423040, M := 9 } = true := by
  decide +kernel

theorem row035_layer064_checked :
    coverLayerCheck row035.height row035.goods { lower := 21951625447714366423040, upper := 43903250895428732846080, M := 9 } = true := by
  decide +kernel

theorem row035_layer065_checked :
    coverLayerCheck row035.height row035.goods { lower := 43903250895428732846080, upper := 87806501790857465692160, M := 8 } = true := by
  decide +kernel

theorem row035_layer066_checked :
    coverLayerCheck row035.height row035.goods { lower := 87806501790857465692160, upper := 175613003581714931384320, M := 8 } = true := by
  decide +kernel

theorem row035_layer067_checked :
    coverLayerCheck row035.height row035.goods { lower := 175613003581714931384320, upper := 351226007163429862768640, M := 8 } = true := by
  decide +kernel

theorem row035_layer068_checked :
    coverLayerCheck row035.height row035.goods { lower := 351226007163429862768640, upper := 702452014326859725537280, M := 8 } = true := by
  decide +kernel

theorem row035_layer069_checked :
    coverLayerCheck row035.height row035.goods { lower := 702452014326859725537280, upper := 1404904028653719451074560, M := 8 } = true := by
  decide +kernel

theorem row035_layer070_checked :
    coverLayerCheck row035.height row035.goods { lower := 1404904028653719451074560, upper := 2809808057307438902149120, M := 8 } = true := by
  decide +kernel

theorem row035_layer071_checked :
    coverLayerCheck row035.height row035.goods { lower := 2809808057307438902149120, upper := 5619616114614877804298240, M := 7 } = true := by
  decide +kernel

theorem row035_layer072_checked :
    coverLayerCheck row035.height row035.goods { lower := 5619616114614877804298240, upper := 11239232229229755608596480, M := 7 } = true := by
  decide +kernel

theorem row035_layer073_checked :
    coverLayerCheck row035.height row035.goods { lower := 11239232229229755608596480, upper := 22478464458459511217192960, M := 7 } = true := by
  decide +kernel

theorem row035_layer074_checked :
    coverLayerCheck row035.height row035.goods { lower := 22478464458459511217192960, upper := 44956928916919022434385920, M := 7 } = true := by
  decide +kernel

theorem row035_layer075_checked :
    coverLayerCheck row035.height row035.goods { lower := 44956928916919022434385920, upper := 89913857833838044868771840, M := 7 } = true := by
  decide +kernel

theorem row035_layer076_checked :
    coverLayerCheck row035.height row035.goods { lower := 89913857833838044868771840, upper := 179827715667676089737543680, M := 7 } = true := by
  decide +kernel

theorem row035_layer077_checked :
    coverLayerCheck row035.height row035.goods { lower := 179827715667676089737543680, upper := 359655431335352179475087360, M := 6 } = true := by
  decide +kernel

theorem row035_layer078_checked :
    coverLayerCheck row035.height row035.goods { lower := 359655431335352179475087360, upper := 719310862670704358950174720, M := 6 } = true := by
  decide +kernel

theorem row035_layer079_checked :
    coverLayerCheck row035.height row035.goods { lower := 719310862670704358950174720, upper := 1438621725341408717900349440, M := 6 } = true := by
  decide +kernel

theorem row035_layer080_checked :
    coverLayerCheck row035.height row035.goods { lower := 1438621725341408717900349440, upper := 2877243450682817435800698880, M := 6 } = true := by
  decide +kernel

theorem row035_layer081_checked :
    coverLayerCheck row035.height row035.goods { lower := 2877243450682817435800698880, upper := 5754486901365634871601397760, M := 6 } = true := by
  decide +kernel

theorem row035_layer082_checked :
    coverLayerCheck row035.height row035.goods { lower := 5754486901365634871601397760, upper := 11508973802731269743202795520, M := 6 } = true := by
  decide +kernel

theorem row035_layer083_checked :
    coverLayerCheck row035.height row035.goods { lower := 11508973802731269743202795520, upper := 23017947605462539486405591040, M := 6 } = true := by
  decide +kernel

theorem row035_layer084_checked :
    coverLayerCheck row035.height row035.goods { lower := 23017947605462539486405591040, upper := 46035895210925078972811182080, M := 6 } = true := by
  decide +kernel

theorem row035_layer085_checked :
    coverLayerCheck row035.height row035.goods { lower := 46035895210925078972811182080, upper := 92071790421850157945622364160, M := 5 } = true := by
  decide +kernel

theorem row035_layer086_checked :
    coverLayerCheck row035.height row035.goods { lower := 92071790421850157945622364160, upper := 184143580843700315891244728320, M := 5 } = true := by
  decide +kernel

theorem row035_layer087_checked :
    coverLayerCheck row035.height row035.goods { lower := 184143580843700315891244728320, upper := 368287161687400631782489456640, M := 5 } = true := by
  decide +kernel

theorem row035_layer088_checked :
    coverLayerCheck row035.height row035.goods { lower := 368287161687400631782489456640, upper := 736574323374801263564978913280, M := 5 } = true := by
  decide +kernel

theorem row035_layer089_checked :
    coverLayerCheck row035.height row035.goods { lower := 736574323374801263564978913280, upper := 1473148646749602527129957826560, M := 5 } = true := by
  decide +kernel

theorem row035_layer090_checked :
    coverLayerCheck row035.height row035.goods { lower := 1473148646749602527129957826560, upper := 2946297293499205054259915653120, M := 5 } = true := by
  decide +kernel

theorem row035_layer091_checked :
    coverLayerCheck row035.height row035.goods { lower := 2946297293499205054259915653120, upper := 5892594586998410108519831306240, M := 5 } = true := by
  decide +kernel

theorem row035_layer092_checked :
    coverLayerCheck row035.height row035.goods { lower := 5892594586998410108519831306240, upper := 11785189173996820217039662612480, M := 5 } = true := by
  decide +kernel

theorem row035_layer093_checked :
    coverLayerCheck row035.height row035.goods { lower := 11785189173996820217039662612480, upper := 23570378347993640434079325224960, M := 5 } = true := by
  decide +kernel

theorem row035_layer094_checked :
    coverLayerCheck row035.height row035.goods { lower := 23570378347993640434079325224960, upper := 47140756695987280868158650449920, M := 4 } = true := by
  decide +kernel

theorem row035_layer095_checked :
    coverLayerCheck row035.height row035.goods { lower := 47140756695987280868158650449920, upper := 94281513391974561736317300899840, M := 4 } = true := by
  decide +kernel

theorem row035_layer096_checked :
    coverLayerCheck row035.height row035.goods { lower := 94281513391974561736317300899840, upper := 188563026783949123472634601799680, M := 4 } = true := by
  decide +kernel

theorem row035_layer097_checked :
    coverLayerCheck row035.height row035.goods { lower := 188563026783949123472634601799680, upper := 377126053567898246945269203599360, M := 4 } = true := by
  decide +kernel

theorem row035_layer098_checked :
    coverLayerCheck row035.height row035.goods { lower := 377126053567898246945269203599360, upper := 754252107135796493890538407198720, M := 4 } = true := by
  decide +kernel

theorem row035_layer099_checked :
    coverLayerCheck row035.height row035.goods { lower := 754252107135796493890538407198720, upper := 1508504214271592987781076814397440, M := 4 } = true := by
  decide +kernel

theorem row035_layer100_checked :
    coverLayerCheck row035.height row035.goods { lower := 1508504214271592987781076814397440, upper := 3017008428543185975562153628794880, M := 4 } = true := by
  decide +kernel

theorem row035_layer101_checked :
    coverLayerCheck row035.height row035.goods { lower := 3017008428543185975562153628794880, upper := 6034016857086371951124307257589760, M := 4 } = true := by
  decide +kernel

theorem row035_layer102_checked :
    coverLayerCheck row035.height row035.goods { lower := 6034016857086371951124307257589760, upper := 12068033714172743902248614515179520, M := 4 } = true := by
  decide +kernel

theorem row035_layer103_checked :
    coverLayerCheck row035.height row035.goods { lower := 12068033714172743902248614515179520, upper := 24136067428345487804497229030359040, M := 4 } = true := by
  decide +kernel

theorem row035_layer104_checked :
    coverLayerCheck row035.height row035.goods { lower := 24136067428345487804497229030359040, upper := 48272134856690975608994458060718080, M := 4 } = true := by
  decide +kernel

theorem row035_layer105_checked :
    coverLayerCheck row035.height row035.goods { lower := 48272134856690975608994458060718080, upper := 96544269713381951217988916121436160, M := 4 } = true := by
  decide +kernel

theorem row035_layer106_checked :
    coverLayerCheck row035.height row035.goods { lower := 96544269713381951217988916121436160, upper := 193088539426763902435977832242872320, M := 4 } = true := by
  decide +kernel

theorem row035_layer107_checked :
    coverLayerCheck row035.height row035.goods { lower := 193088539426763902435977832242872320, upper := 386177078853527804871955664485744640, M := 3 } = true := by
  decide +kernel

theorem row035_layer108_checked :
    coverLayerCheck row035.height row035.goods { lower := 386177078853527804871955664485744640, upper := 772354157707055609743911328971489280, M := 3 } = true := by
  decide +kernel

theorem row035_layer109_checked :
    coverLayerCheck row035.height row035.goods { lower := 772354157707055609743911328971489280, upper := 1544708315414111219487822657942978560, M := 3 } = true := by
  decide +kernel

theorem row035_layer110_checked :
    coverLayerCheck row035.height row035.goods { lower := 1544708315414111219487822657942978560, upper := 3089416630828222438975645315885957120, M := 3 } = true := by
  decide +kernel

theorem row035_layer111_checked :
    coverLayerCheck row035.height row035.goods { lower := 3089416630828222438975645315885957120, upper := 6178833261656444877951290631771914240, M := 3 } = true := by
  decide +kernel

theorem row035_layer112_checked :
    coverLayerCheck row035.height row035.goods { lower := 6178833261656444877951290631771914240, upper := 12357666523312889755902581263543828480, M := 3 } = true := by
  decide +kernel

theorem row035_layer113_checked :
    coverLayerCheck row035.height row035.goods { lower := 12357666523312889755902581263543828480, upper := 24715333046625779511805162527087656960, M := 3 } = true := by
  decide +kernel

theorem row035_layer114_checked :
    coverLayerCheck row035.height row035.goods { lower := 24715333046625779511805162527087656960, upper := 49430666093251559023610325054175313920, M := 3 } = true := by
  decide +kernel

theorem row035_layer115_checked :
    coverLayerCheck row035.height row035.goods { lower := 49430666093251559023610325054175313920, upper := 98861332186503118047220650108350627840, M := 3 } = true := by
  decide +kernel

theorem row035_layer116_checked :
    coverLayerCheck row035.height row035.goods { lower := 98861332186503118047220650108350627840, upper := 197722664373006236094441300216701255680, M := 3 } = true := by
  decide +kernel

theorem row035_layer117_checked :
    coverLayerCheck row035.height row035.goods { lower := 197722664373006236094441300216701255680, upper := 395445328746012472188882600433402511360, M := 3 } = true := by
  decide +kernel

theorem row035_layer118_checked :
    coverLayerCheck row035.height row035.goods { lower := 395445328746012472188882600433402511360, upper := 790890657492024944377765200866805022720, M := 3 } = true := by
  decide +kernel

theorem row035_layer119_checked :
    coverLayerCheck row035.height row035.goods { lower := 790890657492024944377765200866805022720, upper := 1581781314984049888755530401733610045440, M := 3 } = true := by
  decide +kernel

theorem row035_layer120_checked :
    coverLayerCheck row035.height row035.goods { lower := 1581781314984049888755530401733610045440, upper := 3163562629968099777511060803467220090880, M := 3 } = true := by
  decide +kernel

theorem row035_layer121_checked :
    coverLayerCheck row035.height row035.goods { lower := 3163562629968099777511060803467220090880, upper := 6327125259936199555022121606934440181760, M := 3 } = true := by
  decide +kernel

theorem row035_layer122_checked :
    coverLayerCheck row035.height row035.goods { lower := 6327125259936199555022121606934440181760, upper := 12654250519872399110044243213868880363520, M := 3 } = true := by
  decide +kernel

theorem row035_layer123_checked :
    coverLayerCheck row035.height row035.goods { lower := 12654250519872399110044243213868880363520, upper := 25308501039744798220088486427737760727040, M := 3 } = true := by
  decide +kernel

theorem row035_layer124_checked :
    coverLayerCheck row035.height row035.goods { lower := 25308501039744798220088486427737760727040, upper := 50617002079489596440176972855475521454080, M := 2 } = true := by
  decide +kernel

theorem row035_layer125_checked :
    coverLayerCheck row035.height row035.goods { lower := 50617002079489596440176972855475521454080, upper := 101234004158979192880353945710951042908160, M := 2 } = true := by
  decide +kernel

theorem row035_layer126_checked :
    coverLayerCheck row035.height row035.goods { lower := 101234004158979192880353945710951042908160, upper := 202468008317958385760707891421902085816320, M := 2 } = true := by
  decide +kernel

theorem row035_layer127_checked :
    coverLayerCheck row035.height row035.goods { lower := 202468008317958385760707891421902085816320, upper := 404936016635916771521415782843804171632640, M := 2 } = true := by
  decide +kernel

theorem row035_layer128_checked :
    coverLayerCheck row035.height row035.goods { lower := 404936016635916771521415782843804171632640, upper := 809872033271833543042831565687608343265280, M := 2 } = true := by
  decide +kernel

theorem row035_layer129_checked :
    coverLayerCheck row035.height row035.goods { lower := 809872033271833543042831565687608343265280, upper := 1619744066543667086085663131375216686530560, M := 2 } = true := by
  decide +kernel

theorem row035_layer130_checked :
    coverLayerCheck row035.height row035.goods { lower := 1619744066543667086085663131375216686530560, upper := 3239488133087334172171326262750433373061120, M := 2 } = true := by
  decide +kernel

theorem row035_layer131_checked :
    coverLayerCheck row035.height row035.goods { lower := 3239488133087334172171326262750433373061120, upper := 6478976266174668344342652525500866746122240, M := 2 } = true := by
  decide +kernel

theorem row035_layer132_checked :
    coverLayerCheck row035.height row035.goods { lower := 6478976266174668344342652525500866746122240, upper := 12957952532349336688685305051001733492244480, M := 2 } = true := by
  decide +kernel

theorem row035_layer133_checked :
    coverLayerCheck row035.height row035.goods { lower := 12957952532349336688685305051001733492244480, upper := 25915905064698673377370610102003466984488960, M := 2 } = true := by
  decide +kernel

theorem row035_layer134_checked :
    coverLayerCheck row035.height row035.goods { lower := 25915905064698673377370610102003466984488960, upper := 51831810129397346754741220204006933968977920, M := 2 } = true := by
  decide +kernel

theorem row035_layer135_checked :
    coverLayerCheck row035.height row035.goods { lower := 51831810129397346754741220204006933968977920, upper := 103663620258794693509482440408013867937955840, M := 2 } = true := by
  decide +kernel

theorem row035_layer136_checked :
    coverLayerCheck row035.height row035.goods { lower := 103663620258794693509482440408013867937955840, upper := 207327240517589387018964880816027735875911680, M := 2 } = true := by
  decide +kernel

theorem row035_layer137_checked :
    coverLayerCheck row035.height row035.goods { lower := 207327240517589387018964880816027735875911680, upper := 414654481035178774037929761632055471751823360, M := 2 } = true := by
  decide +kernel

theorem row035_layer138_checked :
    coverLayerCheck row035.height row035.goods { lower := 414654481035178774037929761632055471751823360, upper := 829308962070357548075859523264110943503646720, M := 2 } = true := by
  decide +kernel

theorem row035_layer139_checked :
    coverLayerCheck row035.height row035.goods { lower := 829308962070357548075859523264110943503646720, upper := 1658617924140715096151719046528221887007293440, M := 2 } = true := by
  decide +kernel

theorem row035_layer140_checked :
    coverLayerCheck row035.height row035.goods { lower := 1658617924140715096151719046528221887007293440, upper := 3317235848281430192303438093056443774014586880, M := 2 } = true := by
  decide +kernel

theorem row035_layer141_checked :
    coverLayerCheck row035.height row035.goods { lower := 3317235848281430192303438093056443774014586880, upper := 6634471696562860384606876186112887548029173760, M := 2 } = true := by
  decide +kernel

theorem row035_layer142_checked :
    coverLayerCheck row035.height row035.goods { lower := 6634471696562860384606876186112887548029173760, upper := 13268943393125720769213752372225775096058347520, M := 2 } = true := by
  decide +kernel

theorem row035_layer143_checked :
    coverLayerCheck row035.height row035.goods { lower := 13268943393125720769213752372225775096058347520, upper := 26537886786251441538427504744451550192116695040, M := 2 } = true := by
  decide +kernel

theorem row035_layer144_checked :
    coverLayerCheck row035.height row035.goods { lower := 26537886786251441538427504744451550192116695040, upper := 53075773572502883076855009488903100384233390080, M := 2 } = true := by
  decide +kernel

theorem row035_layer145_checked :
    coverLayerCheck row035.height row035.goods { lower := 53075773572502883076855009488903100384233390080, upper := 106151547145005766153710018977806200768466780160, M := 2 } = true := by
  decide +kernel

theorem row035_layer146_checked :
    coverLayerCheck row035.height row035.goods { lower := 106151547145005766153710018977806200768466780160, upper := 212303094290011532307420037955612401536933560320, M := 2 } = true := by
  decide +kernel

theorem row035_layer147_checked :
    coverLayerCheck row035.height row035.goods { lower := 212303094290011532307420037955612401536933560320, upper := 424606188580023064614840075911224803073867120640, M := 2 } = true := by
  decide +kernel

theorem row035_layer148_checked :
    coverLayerCheck row035.height row035.goods { lower := 424606188580023064614840075911224803073867120640, upper := 849212377160046129229680151822449606147734241280, M := 2 } = true := by
  decide +kernel

theorem row035_layer149_checked :
    coverLayerCheck row035.height row035.goods { lower := 849212377160046129229680151822449606147734241280, upper := 1698424754320092258459360303644899212295468482560, M := 2 } = true := by
  decide +kernel

theorem row035_layer150_checked :
    coverLayerCheck row035.height row035.goods { lower := 1698424754320092258459360303644899212295468482560, upper := 3396849508640184516918720607289798424590936965120, M := 2 } = true := by
  decide +kernel

theorem row035_layer151_checked :
    coverLayerCheck row035.height row035.goods { lower := 3396849508640184516918720607289798424590936965120, upper := 6793699017280369033837441214579596849181873930240, M := 2 } = true := by
  decide +kernel

theorem row035_layer152_checked :
    coverLayerCheck row035.height row035.goods { lower := 6793699017280369033837441214579596849181873930240, upper := 10000000000000000000000000000000000000000000000000, M := 2 } = true := by
  decide +kernel

theorem row035_layers_checked :
    row035.layers.all (coverLayerCheck row035.height row035.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row035.height row035.goods) = true
  simp only [List.all_cons, List.all_nil,
    row035_layer000_checked,
    row035_layer001_checked,
    row035_layer002_checked,
    row035_layer003_checked,
    row035_layer004_checked,
    row035_layer005_checked,
    row035_layer006_checked,
    row035_layer007_checked,
    row035_layer008_checked,
    row035_layer009_checked,
    row035_layer010_checked,
    row035_layer011_checked,
    row035_layer012_checked,
    row035_layer013_checked,
    row035_layer014_checked,
    row035_layer015_checked,
    row035_layer016_checked,
    row035_layer017_checked,
    row035_layer018_checked,
    row035_layer019_checked,
    row035_layer020_checked,
    row035_layer021_checked,
    row035_layer022_checked,
    row035_layer023_checked,
    row035_layer024_checked,
    row035_layer025_checked,
    row035_layer026_checked,
    row035_layer027_checked,
    row035_layer028_checked,
    row035_layer029_checked,
    row035_layer030_checked,
    row035_layer031_checked,
    row035_layer032_checked,
    row035_layer033_checked,
    row035_layer034_checked,
    row035_layer035_checked,
    row035_layer036_checked,
    row035_layer037_checked,
    row035_layer038_checked,
    row035_layer039_checked,
    row035_layer040_checked,
    row035_layer041_checked,
    row035_layer042_checked,
    row035_layer043_checked,
    row035_layer044_checked,
    row035_layer045_checked,
    row035_layer046_checked,
    row035_layer047_checked,
    row035_layer048_checked,
    row035_layer049_checked,
    row035_layer050_checked,
    row035_layer051_checked,
    row035_layer052_checked,
    row035_layer053_checked,
    row035_layer054_checked,
    row035_layer055_checked,
    row035_layer056_checked,
    row035_layer057_checked,
    row035_layer058_checked,
    row035_layer059_checked,
    row035_layer060_checked,
    row035_layer061_checked,
    row035_layer062_checked,
    row035_layer063_checked,
    row035_layer064_checked,
    row035_layer065_checked,
    row035_layer066_checked,
    row035_layer067_checked,
    row035_layer068_checked,
    row035_layer069_checked,
    row035_layer070_checked,
    row035_layer071_checked,
    row035_layer072_checked,
    row035_layer073_checked,
    row035_layer074_checked,
    row035_layer075_checked,
    row035_layer076_checked,
    row035_layer077_checked,
    row035_layer078_checked,
    row035_layer079_checked,
    row035_layer080_checked,
    row035_layer081_checked,
    row035_layer082_checked,
    row035_layer083_checked,
    row035_layer084_checked,
    row035_layer085_checked,
    row035_layer086_checked,
    row035_layer087_checked,
    row035_layer088_checked,
    row035_layer089_checked,
    row035_layer090_checked,
    row035_layer091_checked,
    row035_layer092_checked,
    row035_layer093_checked,
    row035_layer094_checked,
    row035_layer095_checked,
    row035_layer096_checked,
    row035_layer097_checked,
    row035_layer098_checked,
    row035_layer099_checked,
    row035_layer100_checked,
    row035_layer101_checked,
    row035_layer102_checked,
    row035_layer103_checked,
    row035_layer104_checked,
    row035_layer105_checked,
    row035_layer106_checked,
    row035_layer107_checked,
    row035_layer108_checked,
    row035_layer109_checked,
    row035_layer110_checked,
    row035_layer111_checked,
    row035_layer112_checked,
    row035_layer113_checked,
    row035_layer114_checked,
    row035_layer115_checked,
    row035_layer116_checked,
    row035_layer117_checked,
    row035_layer118_checked,
    row035_layer119_checked,
    row035_layer120_checked,
    row035_layer121_checked,
    row035_layer122_checked,
    row035_layer123_checked,
    row035_layer124_checked,
    row035_layer125_checked,
    row035_layer126_checked,
    row035_layer127_checked,
    row035_layer128_checked,
    row035_layer129_checked,
    row035_layer130_checked,
    row035_layer131_checked,
    row035_layer132_checked,
    row035_layer133_checked,
    row035_layer134_checked,
    row035_layer135_checked,
    row035_layer136_checked,
    row035_layer137_checked,
    row035_layer138_checked,
    row035_layer139_checked,
    row035_layer140_checked,
    row035_layer141_checked,
    row035_layer142_checked,
    row035_layer143_checked,
    row035_layer144_checked,
    row035_layer145_checked,
    row035_layer146_checked,
    row035_layer147_checked,
    row035_layer148_checked,
    row035_layer149_checked,
    row035_layer150_checked,
    row035_layer151_checked,
    row035_layer152_checked,
    Bool.true_and]

theorem row035_checked : finiteCoverRowCheck row035 = true := by
  simp only [finiteCoverRowCheck, row035_registered, row035_goods_checked,
    row035_small_checked, row035_layerCover_checked, row035_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row035_checked

end B699LowIndex
