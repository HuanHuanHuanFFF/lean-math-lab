import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row036_height : HeightCertificateDatum := { i := 36, r := 11, s := 24, n0Power10 := 26 }

def row036_goods : List GoodSegment := [
  { lower := 74, upper := 108, witness := RowWitness.topPrime 73 },
  { lower := 109, upper := 144, witness := RowWitness.topPrime 109 },
  { lower := 145, upper := 174, witness := RowWitness.topPrime 139 },
  { lower := 175, upper := 208, witness := RowWitness.topPrime 173 },
  { lower := 209, upper := 234, witness := RowWitness.topPrime 199 },
  { lower := 235, upper := 268, witness := RowWitness.topPrime 233 },
  { lower := 269, upper := 304, witness := RowWitness.topPrime 269 },
  { lower := 305, upper := 328, witness := RowWitness.topPrime 293 },
  { lower := 329, upper := 352, witness := RowWitness.topPrime 317 },
  { lower := 353, upper := 388, witness := RowWitness.topPrime 353 },
  { lower := 389, upper := 424, witness := RowWitness.topPrime 389 },
  { lower := 425, upper := 456, witness := RowWitness.topPrime 421 },
  { lower := 457, upper := 492, witness := RowWitness.topPrime 457 },
  { lower := 493, upper := 526, witness := RowWitness.topPrime 491 },
  { lower := 527, upper := 558, witness := RowWitness.topPrime 523 },
  { lower := 559, upper := 592, witness := RowWitness.topPrime 557 },
  { lower := 593, upper := 628, witness := RowWitness.topPrime 593 },
  { lower := 629, upper := 654, witness := RowWitness.topPrime 619 },
  { lower := 655, upper := 688, witness := RowWitness.topPrime 653 },
  { lower := 689, upper := 718, witness := RowWitness.topPrime 683 },
  { lower := 719, upper := 754, witness := RowWitness.topPrime 719 },
  { lower := 755, upper := 786, witness := RowWitness.topPrime 751 },
  { lower := 787, upper := 822, witness := RowWitness.topPrime 787 },
  { lower := 823, upper := 858, witness := RowWitness.topPrime 823 },
  { lower := 859, upper := 894, witness := RowWitness.topPrime 859 },
  { lower := 895, upper := 922, witness := RowWitness.topPrime 887 },
  { lower := 923, upper := 954, witness := RowWitness.topPrime 919 },
  { lower := 955, upper := 988, witness := RowWitness.topPrime 953 },
  { lower := 989, upper := 1018, witness := RowWitness.topPrime 983 },
  { lower := 1019, upper := 1054, witness := RowWitness.topPrime 1019 },
  { lower := 1055, upper := 1086, witness := RowWitness.topPrime 1051 },
  { lower := 1087, upper := 1122, witness := RowWitness.topPrime 1087 },
  { lower := 1123, upper := 1158, witness := RowWitness.topPrime 1123 },
  { lower := 1159, upper := 1188, witness := RowWitness.topPrime 1153 },
  { lower := 1189, upper := 1222, witness := RowWitness.topPrime 1187 },
  { lower := 1223, upper := 1258, witness := RowWitness.topPrime 1223 },
  { lower := 1259, upper := 1260, witness := RowWitness.topPrime 1259 },
  { lower := 1274, upper := 1294, witness := RowWitness.topPrime 1259 },
  { lower := 1295, upper := 1309, witness := RowWitness.topPrime 1291 },
  { lower := 1331, upper := 1362, witness := RowWitness.topPrime 1327 },
  { lower := 1363, upper := 1366, witness := RowWitness.topPrime 1361 },
  { lower := 1372, upper := 1402, witness := RowWitness.topPrime 1367 },
  { lower := 1403, upper := 1407, witness := RowWitness.topPrime 1399 },
  { lower := 1444, upper := 1474, witness := RowWitness.topPrime 1439 },
  { lower := 1475, upper := 1493, witness := RowWitness.topPrime 1471 },
  { lower := 1500, upper := 1505, witness := RowWitness.topPrime 1499 },
  { lower := 1519, upper := 1546, witness := RowWitness.topPrime 1511 },
  { lower := 1547, upper := 1556, witness := RowWitness.topPrime 1543 },
  { lower := 1568, upper := 1571, witness := RowWitness.topPrime 1567 },
  { lower := 1573, upper := 1606, witness := RowWitness.topPrime 1571 },
  { lower := 1607, upper := 1608, witness := RowWitness.topPrime 1607 },
  { lower := 1617, upper := 1622, witness := RowWitness.topPrime 1613 },
  { lower := 1625, upper := 1652, witness := RowWitness.topPrime 1621 },
  { lower := 1682, upper := 1704, witness := RowWitness.topPrime 1669 },
  { lower := 1705, upper := 1729, witness := RowWitness.topPrime 1699 },
  { lower := 1734, upper := 1768, witness := RowWitness.topPrime 1733 },
  { lower := 1769, upper := 1769, witness := RowWitness.topPrime 1759 },
  { lower := 1805, upper := 1836, witness := RowWitness.topPrime 1801 },
  { lower := 1837, upper := 1840, witness := RowWitness.topPrime 1831 },
  { lower := 1875, upper := 1894, witness := RowWitness.topPrime 1873 },
  { lower := 1936, upper := 1957, witness := RowWitness.topPrime 1933 },
  { lower := 2023, upper := 2052, witness := RowWitness.topPrime 2017 },
  { lower := 2053, upper := 2088, witness := RowWitness.topPrime 2053 },
  { lower := 2089, upper := 2092, witness := RowWitness.topPrime 2089 },
  { lower := 2125, upper := 2148, witness := RowWitness.topPrime 2113 },
  { lower := 2149, upper := 2151, witness := RowWitness.topPrime 2143 },
  { lower := 2178, upper := 2196, witness := RowWitness.topPrime 2161 },
  { lower := 2197, upper := 2214, witness := RowWitness.topPrime 2179 },
  { lower := 2215, upper := 2222, witness := RowWitness.topPrime 2213 },
  { lower := 2312, upper := 2334, witness := RowWitness.topPrime 2311 },
  { lower := 2375, upper := 2406, witness := RowWitness.topPrime 2371 },
  { lower := 2407, upper := 2410, witness := RowWitness.topPrime 2399 },
  { lower := 2420, upper := 2436, witness := RowWitness.topPrime 2417 },
  { lower := 2523, upper := 2556, witness := RowWitness.topPrime 2521 },
  { lower := 2557, upper := 2576, witness := RowWitness.topPrime 2557 },
  { lower := 2625, upper := 2636, witness := RowWitness.topPrime 2621 },
  { lower := 2645, upper := 2660, witness := RowWitness.topPrime 2633 },
  { lower := 2662, upper := 2680, witness := RowWitness.topPrime 2659 },
  { lower := 2750, upper := 2779, witness := RowWitness.topPrime 2749 },
  { lower := 2783, upper := 2785, witness := RowWitness.topPrime 2777 },
  { lower := 2875, upper := 2896, witness := RowWitness.topPrime 2861 },
  { lower := 2897, upper := 2925, witness := RowWitness.topPrime 2897 },
  { lower := 3025, upper := 3035, witness := RowWitness.topPrime 3023 },
  { lower := 3042, upper := 3060, witness := RowWitness.topPrime 3041 },
  { lower := 3072, upper := 3077, witness := RowWitness.topPrime 3067 },
  { lower := 3087, upper := 3107, witness := RowWitness.topPrime 3083 },
  { lower := 3146, upper := 3160, witness := RowWitness.topPrime 3137 },
  { lower := 3174, upper := 3204, witness := RowWitness.topPrime 3169 },
  { lower := 3205, upper := 3209, witness := RowWitness.topPrime 3203 },
  { lower := 3211, upper := 3214, witness := RowWitness.topPrime 3209 },
  { lower := 3250, upper := 3264, witness := RowWitness.topPrime 3229 },
  { lower := 3265, upper := 3285, witness := RowWitness.topPrime 3259 },
  { lower := 3375, upper := 3408, witness := RowWitness.topPrime 3373 },
  { lower := 3409, upper := 3415, witness := RowWitness.topPrime 3407 },
  { lower := 3500, upper := 3503, witness := RowWitness.topPrime 3499 },
  { lower := 3509, upper := 3534, witness := RowWitness.topPrime 3499 },
  { lower := 3535, upper := 3535, witness := RowWitness.topPrime 3533 },
  { lower := 3584, upper := 3584, witness := RowWitness.topPrime 3583 },
  { lower := 3610, upper := 3619, witness := RowWitness.topPrime 3607 },
  { lower := 3625, upper := 3658, witness := RowWitness.topPrime 3623 },
  { lower := 3659, upper := 3660, witness := RowWitness.topPrime 3659 },
  { lower := 3718, upper := 3738, witness := RowWitness.topPrime 3709 },
  { lower := 3750, upper := 3774, witness := RowWitness.topPrime 3739 },
  { lower := 3775, upper := 3792, witness := RowWitness.topPrime 3769 },
  { lower := 3872, upper := 3898, witness := RowWitness.topPrime 3863 },
  { lower := 3899, upper := 3910, witness := RowWitness.topPrime 3889 },
  { lower := 3993, upper := 4024, witness := RowWitness.topPrime 3989 },
  { lower := 4025, upper := 4028, witness := RowWitness.topPrime 4021 },
  { lower := 4056, upper := 4081, witness := RowWitness.topPrime 4051 },
  { lower := 4116, upper := 4131, witness := RowWitness.topPrime 4111 },
  { lower := 4225, upper := 4254, witness := RowWitness.topPrime 4219 },
  { lower := 4255, upper := 4260, witness := RowWitness.topPrime 4253 },
  { lower := 4335, upper := 4362, witness := RowWitness.topPrime 4327 },
  { lower := 4363, upper := 4367, witness := RowWitness.topPrime 4363 },
  { lower := 4375, upper := 4408, witness := RowWitness.topPrime 4373 },
  { lower := 4409, upper := 4410, witness := RowWitness.topPrime 4409 },
  { lower := 4761, upper := 4767, witness := RowWitness.topPrime 4759 },
  { lower := 4805, upper := 4836, witness := RowWitness.topPrime 4801 },
  { lower := 4837, upper := 4837, witness := RowWitness.topPrime 4831 },
  { lower := 4913, upper := 4936, witness := RowWitness.topPrime 4909 },
  { lower := 5054, upper := 5086, witness := RowWitness.topPrime 5051 },
  { lower := 5087, upper := 5089, witness := RowWitness.topPrime 5087 },
  { lower := 5145, upper := 5154, witness := RowWitness.topPrime 5119 },
  { lower := 5155, upper := 5155, witness := RowWitness.topPrime 5153 },
  { lower := 5324, upper := 5325, witness := RowWitness.topPrime 5323 },
  { lower := 5491, upper := 5518, witness := RowWitness.topPrime 5483 },
  { lower := 5519, upper := 5523, witness := RowWitness.topPrime 5519 },
  { lower := 5776, upper := 5784, witness := RowWitness.topPrime 5749 },
  { lower := 5785, upper := 5811, witness := RowWitness.topPrime 5783 },
  { lower := 5831, upper := 5854, witness := RowWitness.topPrime 5827 },
  { lower := 6144, upper := 6172, witness := RowWitness.topPrime 6143 },
  { lower := 6174, upper := 6179, witness := RowWitness.topPrime 6173 },
  { lower := 6358, upper := 6383, witness := RowWitness.topPrime 6353 },
  { lower := 6517, upper := 6526, witness := RowWitness.topPrime 6491 },
  { lower := 6527, upper := 6533, witness := RowWitness.topPrime 6521 },
  { lower := 6591, upper := 6596, witness := RowWitness.topPrime 6581 },
  { lower := 6655, upper := 6682, witness := RowWitness.topPrime 6653 },
  { lower := 6728, upper := 6754, witness := RowWitness.topPrime 6719 },
  { lower := 6755, upper := 6762, witness := RowWitness.topPrime 6737 },
  { lower := 6860, upper := 6892, witness := RowWitness.topPrime 6857 },
  { lower := 6893, upper := 6910, witness := RowWitness.topPrime 6883 },
  { lower := 7203, upper := 7203, witness := RowWitness.topPrime 7193 },
  { lower := 7220, upper := 7254, witness := RowWitness.topPrime 7219 },
  { lower := 7255, upper := 7255, witness := RowWitness.topPrime 7253 },
  { lower := 7514, upper := 7535, witness := RowWitness.topPrime 7507 },
  { lower := 7546, upper := 7549, witness := RowWitness.topPrime 7541 },
  { lower := 7569, upper := 7596, witness := RowWitness.topPrime 7561 },
  { lower := 7597, upper := 7604, witness := RowWitness.topPrime 7591 },
  { lower := 7942, upper := 7970, witness := RowWitness.topPrime 7937 },
  { lower := 8125, upper := 8127, witness := RowWitness.topPrime 8123 },
  { lower := 8410, upper := 8416, witness := RowWitness.topPrime 8389 },
  { lower := 8664, upper := 8698, witness := RowWitness.topPrime 8663 },
  { lower := 8699, upper := 8699, witness := RowWitness.topPrime 8699 },
  { lower := 8993, upper := 8994, witness := RowWitness.topPrime 8971 },
  { lower := 9025, upper := 9028, witness := RowWitness.topPrime 9013 },
  { lower := 9261, upper := 9286, witness := RowWitness.topPrime 9257 },
  { lower := 9386, upper := 9410, witness := RowWitness.topPrime 9377 },
  { lower := 9610, upper := 9636, witness := RowWitness.topPrime 9601 },
  { lower := 9637, upper := 9639, witness := RowWitness.topPrime 9631 },
  { lower := 10108, upper := 10127, witness := RowWitness.topPrime 10103 },
  { lower := 10580, upper := 10602, witness := RowWitness.topPrime 10567 },
  { lower := 10603, upper := 10606, witness := RowWitness.topPrime 10601 },
  { lower := 10648, upper := 10660, witness := RowWitness.topPrime 10639 },
  { lower := 12005, upper := 12014, witness := RowWitness.topPrime 11987 },
  { lower := 12500, upper := 12528, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13156, witness := RowWitness.topPrime 13121 },
  { lower := 13157, upper := 13157, witness := RowWitness.topPrime 13151 },
  { lower := 13456, upper := 13486, witness := RowWitness.topPrime 13451 },
  { lower := 13487, upper := 13489, witness := RowWitness.topPrime 13487 },
  { lower := 13750, upper := 13764, witness := RowWitness.topPrime 13729 },
  { lower := 13765, upper := 13785, witness := RowWitness.topPrime 13763 },
  { lower := 14297, upper := 14318, witness := RowWitness.topPrime 14293 },
  { lower := 14406, upper := 14410, witness := RowWitness.topPrime 14401 },
  { lower := 14415, upper := 14441, witness := RowWitness.topPrime 14411 },
  { lower := 15376, upper := 15376, witness := RowWitness.topPrime 15373 },
  { lower := 15379, upper := 15411, witness := RowWitness.topPrime 15377 },
  { lower := 15979, upper := 16007, witness := RowWitness.topPrime 15973 },
  { lower := 16820, upper := 16842, witness := RowWitness.topPrime 16811 },
  { lower := 17303, upper := 17333, witness := RowWitness.topPrime 17299 },
  { lower := 19220, upper := 19243, witness := RowWitness.topPrime 19219 },
  { lower := 19683, upper := 19687, witness := RowWitness.topPrime 19681 },
  { lower := 20184, upper := 20216, witness := RowWitness.topPrime 20183 },
  { lower := 21875, upper := 21901, witness := RowWitness.topPrime 21871 },
  { lower := 24025, upper := 24045, witness := RowWitness.topPrime 24023 },
  { lower := 24576, upper := 24600, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25021, witness := RowWitness.topPrime 24989 },
  { lower := 34391, upper := 34410, witness := RowWitness.topPrime 34381 },
  { lower := 43940, upper := 43958, witness := RowWitness.topPrime 43933 },
  { lower := 48020, upper := 48048, witness := RowWitness.topPrime 48017 },
  { lower := 49152, upper := 49165, witness := RowWitness.topPrime 49139 },
  { lower := 68782, upper := 68785, witness := RowWitness.topPrime 68777 },
  { lower := 327701, upper := 327715, witness := RowWitness.topPrime 327689 }
]

def row036_layers : List CoverLayer := [
  { lower := 1260, upper := 2520, M := 34 },
  { lower := 2520, upper := 5040, M := 32 },
  { lower := 5040, upper := 10080, M := 31 },
  { lower := 10080, upper := 20160, M := 29 },
  { lower := 20160, upper := 40320, M := 28 },
  { lower := 40320, upper := 80640, M := 27 },
  { lower := 80640, upper := 161280, M := 25 },
  { lower := 161280, upper := 322560, M := 24 },
  { lower := 322560, upper := 645120, M := 23 },
  { lower := 645120, upper := 1290240, M := 22 },
  { lower := 1290240, upper := 2580480, M := 21 },
  { lower := 2580480, upper := 5160960, M := 20 },
  { lower := 5160960, upper := 10321920, M := 19 },
  { lower := 10321920, upper := 20643840, M := 18 },
  { lower := 20643840, upper := 41287680, M := 18 },
  { lower := 41287680, upper := 82575360, M := 17 },
  { lower := 82575360, upper := 165150720, M := 16 },
  { lower := 165150720, upper := 330301440, M := 15 },
  { lower := 330301440, upper := 660602880, M := 15 },
  { lower := 660602880, upper := 1321205760, M := 14 },
  { lower := 1321205760, upper := 2642411520, M := 13 },
  { lower := 2642411520, upper := 5284823040, M := 13 },
  { lower := 5284823040, upper := 10569646080, M := 12 },
  { lower := 10569646080, upper := 21139292160, M := 12 },
  { lower := 21139292160, upper := 42278584320, M := 11 },
  { lower := 42278584320, upper := 84557168640, M := 11 },
  { lower := 84557168640, upper := 169114337280, M := 10 },
  { lower := 169114337280, upper := 338228674560, M := 10 },
  { lower := 338228674560, upper := 676457349120, M := 9 },
  { lower := 676457349120, upper := 1352914698240, M := 9 },
  { lower := 1352914698240, upper := 2705829396480, M := 9 },
  { lower := 2705829396480, upper := 5411658792960, M := 8 },
  { lower := 5411658792960, upper := 10823317585920, M := 8 },
  { lower := 10823317585920, upper := 21646635171840, M := 8 },
  { lower := 21646635171840, upper := 43293270343680, M := 7 },
  { lower := 43293270343680, upper := 86586540687360, M := 7 },
  { lower := 86586540687360, upper := 173173081374720, M := 7 },
  { lower := 173173081374720, upper := 346346162749440, M := 6 },
  { lower := 346346162749440, upper := 692692325498880, M := 6 },
  { lower := 692692325498880, upper := 1385384650997760, M := 6 },
  { lower := 1385384650997760, upper := 2770769301995520, M := 6 },
  { lower := 2770769301995520, upper := 5541538603991040, M := 5 },
  { lower := 5541538603991040, upper := 11083077207982080, M := 5 },
  { lower := 11083077207982080, upper := 22166154415964160, M := 5 },
  { lower := 22166154415964160, upper := 44332308831928320, M := 5 },
  { lower := 44332308831928320, upper := 88664617663856640, M := 5 },
  { lower := 88664617663856640, upper := 177329235327713280, M := 4 },
  { lower := 177329235327713280, upper := 354658470655426560, M := 4 },
  { lower := 354658470655426560, upper := 709316941310853120, M := 4 },
  { lower := 709316941310853120, upper := 1418633882621706240, M := 4 },
  { lower := 1418633882621706240, upper := 2837267765243412480, M := 4 },
  { lower := 2837267765243412480, upper := 5674535530486824960, M := 4 },
  { lower := 5674535530486824960, upper := 11349071060973649920, M := 3 },
  { lower := 11349071060973649920, upper := 22698142121947299840, M := 3 },
  { lower := 22698142121947299840, upper := 45396284243894599680, M := 3 },
  { lower := 45396284243894599680, upper := 90792568487789199360, M := 3 },
  { lower := 90792568487789199360, upper := 181585136975578398720, M := 3 },
  { lower := 181585136975578398720, upper := 363170273951156797440, M := 3 },
  { lower := 363170273951156797440, upper := 726340547902313594880, M := 3 },
  { lower := 726340547902313594880, upper := 1452681095804627189760, M := 3 },
  { lower := 1452681095804627189760, upper := 2905362191609254379520, M := 2 },
  { lower := 2905362191609254379520, upper := 5810724383218508759040, M := 2 },
  { lower := 5810724383218508759040, upper := 11621448766437017518080, M := 2 },
  { lower := 11621448766437017518080, upper := 23242897532874035036160, M := 2 },
  { lower := 23242897532874035036160, upper := 46485795065748070072320, M := 2 },
  { lower := 46485795065748070072320, upper := 92971590131496140144640, M := 2 },
  { lower := 92971590131496140144640, upper := 185943180262992280289280, M := 2 },
  { lower := 185943180262992280289280, upper := 371886360525984560578560, M := 2 },
  { lower := 371886360525984560578560, upper := 743772721051969121157120, M := 2 },
  { lower := 743772721051969121157120, upper := 1487545442103938242314240, M := 2 },
  { lower := 1487545442103938242314240, upper := 2975090884207876484628480, M := 2 },
  { lower := 2975090884207876484628480, upper := 5950181768415752969256960, M := 2 },
  { lower := 5950181768415752969256960, upper := 11900363536831505938513920, M := 2 },
  { lower := 11900363536831505938513920, upper := 23800727073663011877027840, M := 2 },
  { lower := 23800727073663011877027840, upper := 47601454147326023754055680, M := 2 },
  { lower := 47601454147326023754055680, upper := 95202908294652047508111360, M := 1 },
  { lower := 95202908294652047508111360, upper := 100000000000000000000000000, M := 1 }
]

def row036 : FiniteCoverRow := {
  height := row036_height,
  goods := row036_goods,
  layers := row036_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row036

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row036_registered :
    decide (row036.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row036_small_checked :
    coverCheck (2 * row036.height.i + 2) (row036.height.i * (row036.height.i - 1) - 1)
      (row036.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row036_layerCover_checked :
    coverCheck (row036.height.i * (row036.height.i - 1)) (row036.height.n0 - 1)
      (row036.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row036_good000_checked :
    goodSegmentCheck 36 11 24
      { lower := 74, upper := 108, witness := RowWitness.topPrime 73 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good001_checked :
    goodSegmentCheck 36 11 24
      { lower := 109, upper := 144, witness := RowWitness.topPrime 109 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good002_checked :
    goodSegmentCheck 36 11 24
      { lower := 145, upper := 174, witness := RowWitness.topPrime 139 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good003_checked :
    goodSegmentCheck 36 11 24
      { lower := 175, upper := 208, witness := RowWitness.topPrime 173 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good004_checked :
    goodSegmentCheck 36 11 24
      { lower := 209, upper := 234, witness := RowWitness.topPrime 199 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good005_checked :
    goodSegmentCheck 36 11 24
      { lower := 235, upper := 268, witness := RowWitness.topPrime 233 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good006_checked :
    goodSegmentCheck 36 11 24
      { lower := 269, upper := 304, witness := RowWitness.topPrime 269 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good007_checked :
    goodSegmentCheck 36 11 24
      { lower := 305, upper := 328, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good008_checked :
    goodSegmentCheck 36 11 24
      { lower := 329, upper := 352, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good009_checked :
    goodSegmentCheck 36 11 24
      { lower := 353, upper := 388, witness := RowWitness.topPrime 353 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good010_checked :
    goodSegmentCheck 36 11 24
      { lower := 389, upper := 424, witness := RowWitness.topPrime 389 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good011_checked :
    goodSegmentCheck 36 11 24
      { lower := 425, upper := 456, witness := RowWitness.topPrime 421 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good012_checked :
    goodSegmentCheck 36 11 24
      { lower := 457, upper := 492, witness := RowWitness.topPrime 457 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good013_checked :
    goodSegmentCheck 36 11 24
      { lower := 493, upper := 526, witness := RowWitness.topPrime 491 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good014_checked :
    goodSegmentCheck 36 11 24
      { lower := 527, upper := 558, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good015_checked :
    goodSegmentCheck 36 11 24
      { lower := 559, upper := 592, witness := RowWitness.topPrime 557 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row036_good016_checked :
    goodSegmentCheck 36 11 24
      { lower := 593, upper := 628, witness := RowWitness.topPrime 593 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good017_checked :
    goodSegmentCheck 36 11 24
      { lower := 629, upper := 654, witness := RowWitness.topPrime 619 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good018_checked :
    goodSegmentCheck 36 11 24
      { lower := 655, upper := 688, witness := RowWitness.topPrime 653 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good019_checked :
    goodSegmentCheck 36 11 24
      { lower := 689, upper := 718, witness := RowWitness.topPrime 683 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good020_checked :
    goodSegmentCheck 36 11 24
      { lower := 719, upper := 754, witness := RowWitness.topPrime 719 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good021_checked :
    goodSegmentCheck 36 11 24
      { lower := 755, upper := 786, witness := RowWitness.topPrime 751 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good022_checked :
    goodSegmentCheck 36 11 24
      { lower := 787, upper := 822, witness := RowWitness.topPrime 787 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good023_checked :
    goodSegmentCheck 36 11 24
      { lower := 823, upper := 858, witness := RowWitness.topPrime 823 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good024_checked :
    goodSegmentCheck 36 11 24
      { lower := 859, upper := 894, witness := RowWitness.topPrime 859 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good025_checked :
    goodSegmentCheck 36 11 24
      { lower := 895, upper := 922, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good026_checked :
    goodSegmentCheck 36 11 24
      { lower := 923, upper := 954, witness := RowWitness.topPrime 919 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good027_checked :
    goodSegmentCheck 36 11 24
      { lower := 955, upper := 988, witness := RowWitness.topPrime 953 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good028_checked :
    goodSegmentCheck 36 11 24
      { lower := 989, upper := 1018, witness := RowWitness.topPrime 983 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good029_checked :
    goodSegmentCheck 36 11 24
      { lower := 1019, upper := 1054, witness := RowWitness.topPrime 1019 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good030_checked :
    goodSegmentCheck 36 11 24
      { lower := 1055, upper := 1086, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row036_good031_checked :
    goodSegmentCheck 36 11 24
      { lower := 1087, upper := 1122, witness := RowWitness.topPrime 1087 } = true := by
  exact good_top_prime_checked (i := 36) (r := 11) (s := 24) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_good031_checked
