import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row041_height : HeightCertificateDatum := { i := 41, r := 13, s := 28, n0Power10 := 16 }

def row041_goods : List GoodSegment := [
  { lower := 84, upper := 123, witness := RowWitness.topPrime 83 },
  { lower := 124, upper := 153, witness := RowWitness.topPrime 113 },
  { lower := 154, upper := 191, witness := RowWitness.topPrime 151 },
  { lower := 192, upper := 231, witness := RowWitness.topPrime 191 },
  { lower := 232, upper := 269, witness := RowWitness.topPrime 229 },
  { lower := 270, upper := 309, witness := RowWitness.topPrime 269 },
  { lower := 310, upper := 347, witness := RowWitness.topPrime 307 },
  { lower := 348, upper := 387, witness := RowWitness.topPrime 347 },
  { lower := 388, upper := 423, witness := RowWitness.topPrime 383 },
  { lower := 424, upper := 461, witness := RowWitness.topPrime 421 },
  { lower := 462, upper := 501, witness := RowWitness.topPrime 461 },
  { lower := 502, upper := 539, witness := RowWitness.topPrime 499 },
  { lower := 540, upper := 563, witness := RowWitness.topPrime 523 },
  { lower := 564, upper := 603, witness := RowWitness.topPrime 563 },
  { lower := 604, upper := 641, witness := RowWitness.topPrime 601 },
  { lower := 642, upper := 681, witness := RowWitness.topPrime 641 },
  { lower := 682, upper := 717, witness := RowWitness.topPrime 677 },
  { lower := 718, upper := 749, witness := RowWitness.topPrime 709 },
  { lower := 750, upper := 783, witness := RowWitness.topPrime 743 },
  { lower := 784, upper := 813, witness := RowWitness.topPrime 773 },
  { lower := 814, upper := 851, witness := RowWitness.topPrime 811 },
  { lower := 852, upper := 879, witness := RowWitness.topPrime 839 },
  { lower := 880, upper := 917, witness := RowWitness.topPrime 877 },
  { lower := 918, upper := 951, witness := RowWitness.topPrime 911 },
  { lower := 952, upper := 987, witness := RowWitness.topPrime 947 },
  { lower := 988, upper := 1023, witness := RowWitness.topPrime 983 },
  { lower := 1024, upper := 1061, witness := RowWitness.topPrime 1021 },
  { lower := 1062, upper := 1101, witness := RowWitness.topPrime 1061 },
  { lower := 1102, upper := 1137, witness := RowWitness.topPrime 1097 },
  { lower := 1138, upper := 1169, witness := RowWitness.topPrime 1129 },
  { lower := 1170, upper := 1203, witness := RowWitness.topPrime 1163 },
  { lower := 1204, upper := 1241, witness := RowWitness.topPrime 1201 },
  { lower := 1242, upper := 1277, witness := RowWitness.topPrime 1237 },
  { lower := 1278, upper := 1317, witness := RowWitness.topPrime 1277 },
  { lower := 1318, upper := 1347, witness := RowWitness.topPrime 1307 },
  { lower := 1348, upper := 1367, witness := RowWitness.topPrime 1327 },
  { lower := 1368, upper := 1407, witness := RowWitness.topPrime 1367 },
  { lower := 1408, upper := 1439, witness := RowWitness.topPrime 1399 },
  { lower := 1440, upper := 1479, witness := RowWitness.topPrime 1439 },
  { lower := 1480, upper := 1511, witness := RowWitness.topPrime 1471 },
  { lower := 1512, upper := 1551, witness := RowWitness.topPrime 1511 },
  { lower := 1552, upper := 1589, witness := RowWitness.topPrime 1549 },
  { lower := 1590, upper := 1623, witness := RowWitness.topPrime 1583 },
  { lower := 1624, upper := 1660, witness := RowWitness.topPrime 1621 },
  { lower := 1664, upper := 1665, witness := RowWitness.topPrime 1663 },
  { lower := 1682, upper := 1709, witness := RowWitness.topPrime 1669 },
  { lower := 1710, upper := 1749, witness := RowWitness.topPrime 1709 },
  { lower := 1750, upper := 1774, witness := RowWitness.topPrime 1747 },
  { lower := 1782, upper := 1790, witness := RowWitness.topPrime 1777 },
  { lower := 1792, upper := 1829, witness := RowWitness.topPrime 1789 },
  { lower := 1830, upper := 1845, witness := RowWitness.topPrime 1823 },
  { lower := 1859, upper := 1887, witness := RowWitness.topPrime 1847 },
  { lower := 1888, upper := 1903, witness := RowWitness.topPrime 1879 },
  { lower := 1922, upper := 1953, witness := RowWitness.topPrime 1913 },
  { lower := 1954, upper := 1976, witness := RowWitness.topPrime 1951 },
  { lower := 2023, upper := 2057, witness := RowWitness.topPrime 2017 },
  { lower := 2058, upper := 2093, witness := RowWitness.topPrime 2053 },
  { lower := 2094, upper := 2097, witness := RowWitness.topPrime 2089 },
  { lower := 2116, upper := 2153, witness := RowWitness.topPrime 2113 },
  { lower := 2154, upper := 2156, witness := RowWitness.topPrime 2153 },
  { lower := 2176, upper := 2201, witness := RowWitness.topPrime 2161 },
  { lower := 2202, upper := 2219, witness := RowWitness.topPrime 2179 },
  { lower := 2220, upper := 2227, witness := RowWitness.topPrime 2213 },
  { lower := 2268, upper := 2290, witness := RowWitness.topPrime 2267 },
  { lower := 2299, upper := 2337, witness := RowWitness.topPrime 2297 },
  { lower := 2338, upper := 2344, witness := RowWitness.topPrime 2333 },
  { lower := 2349, upper := 2352, witness := RowWitness.topPrime 2347 },
  { lower := 2366, upper := 2397, witness := RowWitness.topPrime 2357 },
  { lower := 2398, upper := 2415, witness := RowWitness.topPrime 2393 },
  { lower := 2420, upper := 2457, witness := RowWitness.topPrime 2417 },
  { lower := 2458, upper := 2470, witness := RowWitness.topPrime 2447 },
  { lower := 2523, upper := 2561, witness := RowWitness.topPrime 2521 },
  { lower := 2562, upper := 2581, witness := RowWitness.topPrime 2557 },
  { lower := 2625, upper := 2641, witness := RowWitness.topPrime 2621 },
  { lower := 2645, upper := 2673, witness := RowWitness.topPrime 2633 },
  { lower := 2674, upper := 2711, witness := RowWitness.topPrime 2671 },
  { lower := 2712, upper := 2728, witness := RowWitness.topPrime 2711 },
  { lower := 2738, upper := 2771, witness := RowWitness.topPrime 2731 },
  { lower := 2772, upper := 2790, witness := RowWitness.topPrime 2767 },
  { lower := 2816, upper := 2823, witness := RowWitness.topPrime 2803 },
  { lower := 2875, upper := 2901, witness := RowWitness.topPrime 2861 },
  { lower := 2902, upper := 2937, witness := RowWitness.topPrime 2897 },
  { lower := 2938, upper := 2956, witness := RowWitness.topPrime 2927 },
  { lower := 3025, upper := 3040, witness := RowWitness.topPrime 3023 },
  { lower := 3042, upper := 3065, witness := RowWitness.topPrime 3041 },
  { lower := 3072, upper := 3082, witness := RowWitness.topPrime 3067 },
  { lower := 3087, upper := 3112, witness := RowWitness.topPrime 3083 },
  { lower := 3125, upper := 3127, witness := RowWitness.topPrime 3121 },
  { lower := 3146, upper := 3177, witness := RowWitness.topPrime 3137 },
  { lower := 3178, upper := 3209, witness := RowWitness.topPrime 3169 },
  { lower := 3210, upper := 3240, witness := RowWitness.topPrime 3209 },
  { lower := 3249, upper := 3269, witness := RowWitness.topPrime 3229 },
  { lower := 3270, upper := 3290, witness := RowWitness.topPrime 3259 },
  { lower := 3364, upper := 3368, witness := RowWitness.topPrime 3361 },
  { lower := 3375, upper := 3413, witness := RowWitness.topPrime 3373 },
  { lower := 3414, upper := 3420, witness := RowWitness.topPrime 3413 },
  { lower := 3430, upper := 3442, witness := RowWitness.topPrime 3413 },
  { lower := 3456, upper := 3489, witness := RowWitness.topPrime 3449 },
  { lower := 3490, upper := 3496, witness := RowWitness.topPrime 3469 },
  { lower := 3584, upper := 3589, witness := RowWitness.topPrime 3583 },
  { lower := 3610, upper := 3624, witness := RowWitness.topPrime 3607 },
  { lower := 3645, upper := 3650, witness := RowWitness.topPrime 3643 },
  { lower := 3718, upper := 3743, witness := RowWitness.topPrime 3709 },
  { lower := 3750, upper := 3779, witness := RowWitness.topPrime 3739 },
  { lower := 3780, upper := 3797, witness := RowWitness.topPrime 3779 },
  { lower := 3844, upper := 3873, witness := RowWitness.topPrime 3833 },
  { lower := 3874, upper := 3880, witness := RowWitness.topPrime 3863 },
  { lower := 3888, upper := 3921, witness := RowWitness.topPrime 3881 },
  { lower := 3922, upper := 3927, witness := RowWitness.topPrime 3919 },
  { lower := 3993, upper := 4011, witness := RowWitness.topPrime 3989 },
  { lower := 4056, upper := 4086, witness := RowWitness.topPrime 4051 },
  { lower := 4096, upper := 4096, witness := RowWitness.topPrime 4093 },
  { lower := 4107, upper := 4139, witness := RowWitness.topPrime 4099 },
  { lower := 4140, upper := 4156, witness := RowWitness.topPrime 4139 },
  { lower := 4225, upper := 4259, witness := RowWitness.topPrime 4219 },
  { lower := 4260, upper := 4265, witness := RowWitness.topPrime 4259 },
  { lower := 4335, upper := 4367, witness := RowWitness.topPrime 4327 },
  { lower := 4368, upper := 4403, witness := RowWitness.topPrime 4363 },
  { lower := 4404, upper := 4415, witness := RowWitness.topPrime 4397 },
  { lower := 4617, upper := 4643, witness := RowWitness.topPrime 4603 },
  { lower := 4644, upper := 4657, witness := RowWitness.topPrime 4643 },
  { lower := 4805, upper := 4841, witness := RowWitness.topPrime 4801 },
  { lower := 4842, upper := 4842, witness := RowWitness.topPrime 4831 },
  { lower := 4864, upper := 4900, witness := RowWitness.topPrime 4861 },
  { lower := 5054, upper := 5086, witness := RowWitness.topPrime 5051 },
  { lower := 5120, upper := 5143, witness := RowWitness.topPrime 5119 },
  { lower := 5145, upper := 5159, witness := RowWitness.topPrime 5119 },
  { lower := 5160, upper := 5160, witness := RowWitness.topPrime 5153 },
  { lower := 5324, upper := 5330, witness := RowWitness.topPrime 5323 },
  { lower := 5346, upper := 5364, witness := RowWitness.topPrime 5333 },
  { lower := 5376, upper := 5386, witness := RowWitness.topPrime 5351 },
  { lower := 5415, upper := 5416, witness := RowWitness.topPrime 5413 },
  { lower := 5488, upper := 5523, witness := RowWitness.topPrime 5483 },
  { lower := 5524, upper := 5528, witness := RowWitness.topPrime 5521 },
  { lower := 5625, upper := 5629, witness := RowWitness.topPrime 5623 },
  { lower := 5632, upper := 5663, witness := RowWitness.topPrime 5623 },
  { lower := 5664, upper := 5665, witness := RowWitness.topPrime 5659 },
  { lower := 5776, upper := 5789, witness := RowWitness.topPrime 5749 },
  { lower := 5790, upper := 5816, witness := RowWitness.topPrime 5783 },
  { lower := 5819, upper := 5820, witness := RowWitness.topPrime 5813 },
  { lower := 5831, upper := 5867, witness := RowWitness.topPrime 5827 },
  { lower := 5868, upper := 5871, witness := RowWitness.topPrime 5867 },
  { lower := 5888, upper := 5921, witness := RowWitness.topPrime 5881 },
  { lower := 5922, upper := 5927, witness := RowWitness.topPrime 5903 },
  { lower := 6075, upper := 6109, witness := RowWitness.topPrime 6073 },
  { lower := 6144, upper := 6183, witness := RowWitness.topPrime 6143 },
  { lower := 6184, upper := 6184, witness := RowWitness.topPrime 6173 },
  { lower := 6348, upper := 6383, witness := RowWitness.topPrime 6343 },
  { lower := 6384, upper := 6388, witness := RowWitness.topPrime 6379 },
  { lower := 6517, upper := 6531, witness := RowWitness.topPrime 6491 },
  { lower := 6532, upper := 6538, witness := RowWitness.topPrime 6529 },
  { lower := 6591, upper := 6601, witness := RowWitness.topPrime 6581 },
  { lower := 6655, upper := 6693, witness := RowWitness.topPrime 6653 },
  { lower := 6694, upper := 6695, witness := RowWitness.topPrime 6691 },
  { lower := 6728, upper := 6759, witness := RowWitness.topPrime 6719 },
  { lower := 6760, upper := 6767, witness := RowWitness.topPrime 6737 },
  { lower := 6859, upper := 6897, witness := RowWitness.topPrime 6857 },
  { lower := 6898, upper := 6915, witness := RowWitness.topPrime 6883 },
  { lower := 7203, upper := 7208, witness := RowWitness.topPrime 7193 },
  { lower := 7220, upper := 7243, witness := RowWitness.topPrime 7219 },
  { lower := 7569, upper := 7601, witness := RowWitness.topPrime 7561 },
  { lower := 7602, upper := 7609, witness := RowWitness.topPrime 7591 },
  { lower := 7688, upper := 7720, witness := RowWitness.topPrime 7687 },
  { lower := 7942, upper := 7975, witness := RowWitness.topPrime 7937 },
  { lower := 8019, upper := 8026, witness := RowWitness.topPrime 8017 },
  { lower := 8214, upper := 8249, witness := RowWitness.topPrime 8209 },
  { lower := 8250, upper := 8254, witness := RowWitness.topPrime 8243 },
  { lower := 8664, upper := 8689, witness := RowWitness.topPrime 8663 },
  { lower := 8704, upper := 8704, witness := RowWitness.topPrime 8699 },
  { lower := 8750, upper := 8787, witness := RowWitness.topPrime 8747 },
  { lower := 8788, upper := 8790, witness := RowWitness.topPrime 8783 },
  { lower := 9251, upper := 9256, witness := RowWitness.topPrime 9241 },
  { lower := 9604, upper := 9641, witness := RowWitness.topPrime 9601 },
  { lower := 9642, upper := 9644, witness := RowWitness.topPrime 9631 },
  { lower := 10240, upper := 10246, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10607, witness := RowWitness.topPrime 10567 },
  { lower := 10608, upper := 10611, witness := RowWitness.topPrime 10607 },
  { lower := 10648, upper := 10665, witness := RowWitness.topPrime 10639 },
  { lower := 10935, upper := 10949, witness := RowWitness.topPrime 10909 },
  { lower := 10950, upper := 10975, witness := RowWitness.topPrime 10949 },
  { lower := 10985, upper := 10992, witness := RowWitness.topPrime 10979 },
  { lower := 11264, upper := 11290, witness := RowWitness.topPrime 11261 },
  { lower := 11664, upper := 11678, witness := RowWitness.topPrime 11657 },
  { lower := 11776, upper := 11783, witness := RowWitness.topPrime 11743 },
  { lower := 11784, upper := 11814, witness := RowWitness.topPrime 11783 },
  { lower := 12005, upper := 12019, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12328, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12533, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13161, witness := RowWitness.topPrime 13121 },
  { lower := 13162, upper := 13162, witness := RowWitness.topPrime 13159 },
  { lower := 13312, upper := 13349, witness := RowWitness.topPrime 13309 },
  { lower := 13350, upper := 13350, witness := RowWitness.topPrime 13339 },
  { lower := 13456, upper := 13491, witness := RowWitness.topPrime 13451 },
  { lower := 13492, upper := 13494, witness := RowWitness.topPrime 13487 },
  { lower := 13718, upper := 13730, witness := RowWitness.topPrime 13711 },
  { lower := 13750, upper := 13758, witness := RowWitness.topPrime 13729 },
  { lower := 14336, upper := 14337, witness := RowWitness.topPrime 14327 },
  { lower := 14375, upper := 14376, witness := RowWitness.topPrime 14369 },
  { lower := 14406, upper := 14441, witness := RowWitness.topPrime 14401 },
  { lower := 14442, upper := 14446, witness := RowWitness.topPrime 14437 },
  { lower := 15376, upper := 15413, witness := RowWitness.topPrime 15373 },
  { lower := 15414, upper := 15416, witness := RowWitness.topPrime 15413 },
  { lower := 15979, upper := 16012, witness := RowWitness.topPrime 15973 },
  { lower := 16807, upper := 16807, witness := RowWitness.topPrime 16787 },
  { lower := 16820, upper := 16847, witness := RowWitness.topPrime 16811 },
  { lower := 17303, upper := 17338, witness := RowWitness.topPrime 17299 },
  { lower := 19220, upper := 19248, witness := RowWitness.topPrime 19219 },
  { lower := 19683, upper := 19692, witness := RowWitness.topPrime 19681 },
  { lower := 21875, upper := 21911, witness := RowWitness.topPrime 21871 },
  { lower := 21912, upper := 21915, witness := RowWitness.topPrime 21911 },
  { lower := 24576, upper := 24605, witness := RowWitness.topPrime 24571 },
  { lower := 26624, upper := 26637, witness := RowWitness.topPrime 26597 },
  { lower := 26638, upper := 26660, witness := RowWitness.topPrime 26633 },
  { lower := 30758, upper := 30760, witness := RowWitness.topPrime 30757 },
  { lower := 31250, upper := 31253, witness := RowWitness.topPrime 31249 },
  { lower := 32805, upper := 32808, witness := RowWitness.topPrime 32803 },
  { lower := 34391, upper := 34415, witness := RowWitness.topPrime 34381 },
  { lower := 43750, upper := 43761, witness := RowWitness.topPrime 43721 },
  { lower := 43762, upper := 43780, witness := RowWitness.topPrime 43759 },
  { lower := 43940, upper := 43963, witness := RowWitness.topPrime 43933 },
  { lower := 48020, upper := 48053, witness := RowWitness.topPrime 48017 },
  { lower := 49152, upper := 49170, witness := RowWitness.topPrime 49139 },
  { lower := 73205, upper := 73207, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73735, witness := RowWitness.topPrime 73727 },
  { lower := 327701, upper := 327720, witness := RowWitness.topPrime 327689 }
]

def row041_layers : List CoverLayer := [
  { lower := 1640, upper := 3280, M := 29 },
  { lower := 3280, upper := 6560, M := 27 },
  { lower := 6560, upper := 13120, M := 24 },
  { lower := 13120, upper := 26240, M := 23 },
  { lower := 26240, upper := 52480, M := 21 },
  { lower := 52480, upper := 104960, M := 19 },
  { lower := 104960, upper := 209920, M := 18 },
  { lower := 209920, upper := 419840, M := 16 },
  { lower := 419840, upper := 839680, M := 15 },
  { lower := 839680, upper := 1679360, M := 14 },
  { lower := 1679360, upper := 3358720, M := 13 },
  { lower := 3358720, upper := 6717440, M := 12 },
  { lower := 6717440, upper := 13434880, M := 11 },
  { lower := 13434880, upper := 26869760, M := 10 },
  { lower := 26869760, upper := 53739520, M := 9 },
  { lower := 53739520, upper := 107479040, M := 9 },
  { lower := 107479040, upper := 214958080, M := 8 },
  { lower := 214958080, upper := 429916160, M := 7 },
  { lower := 429916160, upper := 859832320, M := 7 },
  { lower := 859832320, upper := 1719664640, M := 6 },
  { lower := 1719664640, upper := 3439329280, M := 6 },
  { lower := 3439329280, upper := 6878658560, M := 5 },
  { lower := 6878658560, upper := 13757317120, M := 5 },
  { lower := 13757317120, upper := 27514634240, M := 5 },
  { lower := 27514634240, upper := 55029268480, M := 4 },
  { lower := 55029268480, upper := 110058536960, M := 4 },
  { lower := 110058536960, upper := 220117073920, M := 4 },
  { lower := 220117073920, upper := 440234147840, M := 3 },
  { lower := 440234147840, upper := 880468295680, M := 3 },
  { lower := 880468295680, upper := 1760936591360, M := 3 },
  { lower := 1760936591360, upper := 3521873182720, M := 3 },
  { lower := 3521873182720, upper := 7043746365440, M := 3 },
  { lower := 7043746365440, upper := 14087492730880, M := 2 },
  { lower := 14087492730880, upper := 28174985461760, M := 2 },
  { lower := 28174985461760, upper := 56349970923520, M := 2 },
  { lower := 56349970923520, upper := 112699941847040, M := 2 },
  { lower := 112699941847040, upper := 225399883694080, M := 2 },
  { lower := 225399883694080, upper := 450799767388160, M := 2 },
  { lower := 450799767388160, upper := 901599534776320, M := 2 },
  { lower := 901599534776320, upper := 1803199069552640, M := 2 },
  { lower := 1803199069552640, upper := 3606398139105280, M := 2 },
  { lower := 3606398139105280, upper := 7212796278210560, M := 1 },
  { lower := 7212796278210560, upper := 10000000000000000, M := 1 }
]

def row041 : FiniteCoverRow := {
  height := row041_height,
  goods := row041_goods,
  layers := row041_layers
}

theorem row041_registered :
    decide (row041.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row041_goods_checked :
    row041.goods.all (goodSegmentCheck row041.height.i row041.height.r row041.height.s) = true := by
  decide +kernel

theorem row041_small_checked :
    coverCheck (2 * row041.height.i + 2) (row041.height.i * (row041.height.i - 1) - 1)
      (row041.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row041_layerCover_checked :
    coverCheck (row041.height.i * (row041.height.i - 1)) (row041.height.n0 - 1)
      (row041.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row041_layer000_checked :
    coverLayerCheck row041.height row041.goods { lower := 1640, upper := 3280, M := 29 } = true := by
  decide +kernel

theorem row041_layer001_checked :
    coverLayerCheck row041.height row041.goods { lower := 3280, upper := 6560, M := 27 } = true := by
  decide +kernel

theorem row041_layer002_checked :
    coverLayerCheck row041.height row041.goods { lower := 6560, upper := 13120, M := 24 } = true := by
  decide +kernel

theorem row041_layer003_checked :
    coverLayerCheck row041.height row041.goods { lower := 13120, upper := 26240, M := 23 } = true := by
  decide +kernel

theorem row041_layer004_checked :
    coverLayerCheck row041.height row041.goods { lower := 26240, upper := 52480, M := 21 } = true := by
  decide +kernel

theorem row041_layer005_checked :
    coverLayerCheck row041.height row041.goods { lower := 52480, upper := 104960, M := 19 } = true := by
  decide +kernel

theorem row041_layer006_checked :
    coverLayerCheck row041.height row041.goods { lower := 104960, upper := 209920, M := 18 } = true := by
  decide +kernel

theorem row041_layer007_checked :
    coverLayerCheck row041.height row041.goods { lower := 209920, upper := 419840, M := 16 } = true := by
  decide +kernel

theorem row041_layer008_checked :
    coverLayerCheck row041.height row041.goods { lower := 419840, upper := 839680, M := 15 } = true := by
  decide +kernel

theorem row041_layer009_checked :
    coverLayerCheck row041.height row041.goods { lower := 839680, upper := 1679360, M := 14 } = true := by
  decide +kernel

theorem row041_layer010_checked :
    coverLayerCheck row041.height row041.goods { lower := 1679360, upper := 3358720, M := 13 } = true := by
  decide +kernel

theorem row041_layer011_checked :
    coverLayerCheck row041.height row041.goods { lower := 3358720, upper := 6717440, M := 12 } = true := by
  decide +kernel

theorem row041_layer012_checked :
    coverLayerCheck row041.height row041.goods { lower := 6717440, upper := 13434880, M := 11 } = true := by
  decide +kernel

theorem row041_layer013_checked :
    coverLayerCheck row041.height row041.goods { lower := 13434880, upper := 26869760, M := 10 } = true := by
  decide +kernel

theorem row041_layer014_checked :
    coverLayerCheck row041.height row041.goods { lower := 26869760, upper := 53739520, M := 9 } = true := by
  decide +kernel

theorem row041_layer015_checked :
    coverLayerCheck row041.height row041.goods { lower := 53739520, upper := 107479040, M := 9 } = true := by
  decide +kernel

theorem row041_layer016_checked :
    coverLayerCheck row041.height row041.goods { lower := 107479040, upper := 214958080, M := 8 } = true := by
  decide +kernel

theorem row041_layer017_checked :
    coverLayerCheck row041.height row041.goods { lower := 214958080, upper := 429916160, M := 7 } = true := by
  decide +kernel

theorem row041_layer018_checked :
    coverLayerCheck row041.height row041.goods { lower := 429916160, upper := 859832320, M := 7 } = true := by
  decide +kernel

theorem row041_layer019_checked :
    coverLayerCheck row041.height row041.goods { lower := 859832320, upper := 1719664640, M := 6 } = true := by
  decide +kernel

theorem row041_layer020_checked :
    coverLayerCheck row041.height row041.goods { lower := 1719664640, upper := 3439329280, M := 6 } = true := by
  decide +kernel

theorem row041_layer021_checked :
    coverLayerCheck row041.height row041.goods { lower := 3439329280, upper := 6878658560, M := 5 } = true := by
  decide +kernel

theorem row041_layer022_checked :
    coverLayerCheck row041.height row041.goods { lower := 6878658560, upper := 13757317120, M := 5 } = true := by
  decide +kernel

theorem row041_layer023_checked :
    coverLayerCheck row041.height row041.goods { lower := 13757317120, upper := 27514634240, M := 5 } = true := by
  decide +kernel

theorem row041_layer024_checked :
    coverLayerCheck row041.height row041.goods { lower := 27514634240, upper := 55029268480, M := 4 } = true := by
  decide +kernel

theorem row041_layer025_checked :
    coverLayerCheck row041.height row041.goods { lower := 55029268480, upper := 110058536960, M := 4 } = true := by
  decide +kernel

theorem row041_layer026_checked :
    coverLayerCheck row041.height row041.goods { lower := 110058536960, upper := 220117073920, M := 4 } = true := by
  decide +kernel

theorem row041_layer027_checked :
    coverLayerCheck row041.height row041.goods { lower := 220117073920, upper := 440234147840, M := 3 } = true := by
  decide +kernel

theorem row041_layer028_checked :
    coverLayerCheck row041.height row041.goods { lower := 440234147840, upper := 880468295680, M := 3 } = true := by
  decide +kernel

theorem row041_layer029_checked :
    coverLayerCheck row041.height row041.goods { lower := 880468295680, upper := 1760936591360, M := 3 } = true := by
  decide +kernel

theorem row041_layer030_checked :
    coverLayerCheck row041.height row041.goods { lower := 1760936591360, upper := 3521873182720, M := 3 } = true := by
  decide +kernel

theorem row041_layer031_checked :
    coverLayerCheck row041.height row041.goods { lower := 3521873182720, upper := 7043746365440, M := 3 } = true := by
  decide +kernel

theorem row041_layer032_checked :
    coverLayerCheck row041.height row041.goods { lower := 7043746365440, upper := 14087492730880, M := 2 } = true := by
  decide +kernel

theorem row041_layer033_checked :
    coverLayerCheck row041.height row041.goods { lower := 14087492730880, upper := 28174985461760, M := 2 } = true := by
  decide +kernel

theorem row041_layer034_checked :
    coverLayerCheck row041.height row041.goods { lower := 28174985461760, upper := 56349970923520, M := 2 } = true := by
  decide +kernel

theorem row041_layer035_checked :
    coverLayerCheck row041.height row041.goods { lower := 56349970923520, upper := 112699941847040, M := 2 } = true := by
  decide +kernel

theorem row041_layer036_checked :
    coverLayerCheck row041.height row041.goods { lower := 112699941847040, upper := 225399883694080, M := 2 } = true := by
  decide +kernel

theorem row041_layer037_checked :
    coverLayerCheck row041.height row041.goods { lower := 225399883694080, upper := 450799767388160, M := 2 } = true := by
  decide +kernel

theorem row041_layer038_checked :
    coverLayerCheck row041.height row041.goods { lower := 450799767388160, upper := 901599534776320, M := 2 } = true := by
  decide +kernel

theorem row041_layer039_checked :
    coverLayerCheck row041.height row041.goods { lower := 901599534776320, upper := 1803199069552640, M := 2 } = true := by
  decide +kernel

theorem row041_layer040_checked :
    coverLayerCheck row041.height row041.goods { lower := 1803199069552640, upper := 3606398139105280, M := 2 } = true := by
  decide +kernel

theorem row041_layer041_checked :
    coverLayerCheck row041.height row041.goods { lower := 3606398139105280, upper := 7212796278210560, M := 1 } = true := by
  decide +kernel

theorem row041_layer042_checked :
    coverLayerCheck row041.height row041.goods { lower := 7212796278210560, upper := 10000000000000000, M := 1 } = true := by
  decide +kernel

theorem row041_layers_checked :
    row041.layers.all (coverLayerCheck row041.height row041.goods) = true := by
  change List.all [
    { lower := 1640, upper := 3280, M := 29 },
    { lower := 3280, upper := 6560, M := 27 },
    { lower := 6560, upper := 13120, M := 24 },
    { lower := 13120, upper := 26240, M := 23 },
    { lower := 26240, upper := 52480, M := 21 },
    { lower := 52480, upper := 104960, M := 19 },
    { lower := 104960, upper := 209920, M := 18 },
    { lower := 209920, upper := 419840, M := 16 },
    { lower := 419840, upper := 839680, M := 15 },
    { lower := 839680, upper := 1679360, M := 14 },
    { lower := 1679360, upper := 3358720, M := 13 },
    { lower := 3358720, upper := 6717440, M := 12 },
    { lower := 6717440, upper := 13434880, M := 11 },
    { lower := 13434880, upper := 26869760, M := 10 },
    { lower := 26869760, upper := 53739520, M := 9 },
    { lower := 53739520, upper := 107479040, M := 9 },
    { lower := 107479040, upper := 214958080, M := 8 },
    { lower := 214958080, upper := 429916160, M := 7 },
    { lower := 429916160, upper := 859832320, M := 7 },
    { lower := 859832320, upper := 1719664640, M := 6 },
    { lower := 1719664640, upper := 3439329280, M := 6 },
    { lower := 3439329280, upper := 6878658560, M := 5 },
    { lower := 6878658560, upper := 13757317120, M := 5 },
    { lower := 13757317120, upper := 27514634240, M := 5 },
    { lower := 27514634240, upper := 55029268480, M := 4 },
    { lower := 55029268480, upper := 110058536960, M := 4 },
    { lower := 110058536960, upper := 220117073920, M := 4 },
    { lower := 220117073920, upper := 440234147840, M := 3 },
    { lower := 440234147840, upper := 880468295680, M := 3 },
    { lower := 880468295680, upper := 1760936591360, M := 3 },
    { lower := 1760936591360, upper := 3521873182720, M := 3 },
    { lower := 3521873182720, upper := 7043746365440, M := 3 },
    { lower := 7043746365440, upper := 14087492730880, M := 2 },
    { lower := 14087492730880, upper := 28174985461760, M := 2 },
    { lower := 28174985461760, upper := 56349970923520, M := 2 },
    { lower := 56349970923520, upper := 112699941847040, M := 2 },
    { lower := 112699941847040, upper := 225399883694080, M := 2 },
    { lower := 225399883694080, upper := 450799767388160, M := 2 },
    { lower := 450799767388160, upper := 901599534776320, M := 2 },
    { lower := 901599534776320, upper := 1803199069552640, M := 2 },
    { lower := 1803199069552640, upper := 3606398139105280, M := 2 },
    { lower := 3606398139105280, upper := 7212796278210560, M := 1 },
    { lower := 7212796278210560, upper := 10000000000000000, M := 1 }
  ] (coverLayerCheck row041.height row041.goods) = true
  simp only [List.all_cons, List.all_nil,
    row041_layer000_checked,
    row041_layer001_checked,
    row041_layer002_checked,
    row041_layer003_checked,
    row041_layer004_checked,
    row041_layer005_checked,
    row041_layer006_checked,
    row041_layer007_checked,
    row041_layer008_checked,
    row041_layer009_checked,
    row041_layer010_checked,
    row041_layer011_checked,
    row041_layer012_checked,
    row041_layer013_checked,
    row041_layer014_checked,
    row041_layer015_checked,
    row041_layer016_checked,
    row041_layer017_checked,
    row041_layer018_checked,
    row041_layer019_checked,
    row041_layer020_checked,
    row041_layer021_checked,
    row041_layer022_checked,
    row041_layer023_checked,
    row041_layer024_checked,
    row041_layer025_checked,
    row041_layer026_checked,
    row041_layer027_checked,
    row041_layer028_checked,
    row041_layer029_checked,
    row041_layer030_checked,
    row041_layer031_checked,
    row041_layer032_checked,
    row041_layer033_checked,
    row041_layer034_checked,
    row041_layer035_checked,
    row041_layer036_checked,
    row041_layer037_checked,
    row041_layer038_checked,
    row041_layer039_checked,
    row041_layer040_checked,
    row041_layer041_checked,
    row041_layer042_checked,
    Bool.true_and]

theorem row041_checked : finiteCoverRowCheck row041 = true := by
  simp only [finiteCoverRowCheck, row041_registered, row041_goods_checked,
    row041_small_checked, row041_layerCover_checked, row041_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row041_checked

end B699LowIndex
