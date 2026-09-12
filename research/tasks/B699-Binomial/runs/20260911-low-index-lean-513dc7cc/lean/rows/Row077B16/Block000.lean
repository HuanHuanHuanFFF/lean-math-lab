import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row077_height : HeightCertificateDatum := { i := 77, r := 25, s := 53, n0Power10 := 11 }

def row077_goods : List GoodSegment := [
  { lower := 156, upper := 227, witness := RowWitness.topPrime 151 },
  { lower := 228, upper := 303, witness := RowWitness.topPrime 227 },
  { lower := 304, upper := 369, witness := RowWitness.topPrime 293 },
  { lower := 370, upper := 443, witness := RowWitness.topPrime 367 },
  { lower := 444, upper := 519, witness := RowWitness.topPrime 443 },
  { lower := 520, upper := 585, witness := RowWitness.topPrime 509 },
  { lower := 586, upper := 653, witness := RowWitness.topPrime 577 },
  { lower := 654, upper := 729, witness := RowWitness.topPrime 653 },
  { lower := 730, upper := 803, witness := RowWitness.topPrime 727 },
  { lower := 804, upper := 873, witness := RowWitness.topPrime 797 },
  { lower := 874, upper := 939, witness := RowWitness.topPrime 863 },
  { lower := 940, upper := 1013, witness := RowWitness.topPrime 937 },
  { lower := 1014, upper := 1089, witness := RowWitness.topPrime 1013 },
  { lower := 1090, upper := 1163, witness := RowWitness.topPrime 1087 },
  { lower := 1164, upper := 1239, witness := RowWitness.topPrime 1163 },
  { lower := 1240, upper := 1313, witness := RowWitness.topPrime 1237 },
  { lower := 1314, upper := 1383, witness := RowWitness.topPrime 1307 },
  { lower := 1384, upper := 1457, witness := RowWitness.topPrime 1381 },
  { lower := 1458, upper := 1529, witness := RowWitness.topPrime 1453 },
  { lower := 1530, upper := 1599, witness := RowWitness.topPrime 1523 },
  { lower := 1600, upper := 1673, witness := RowWitness.topPrime 1597 },
  { lower := 1674, upper := 1745, witness := RowWitness.topPrime 1669 },
  { lower := 1746, upper := 1817, witness := RowWitness.topPrime 1741 },
  { lower := 1818, upper := 1887, witness := RowWitness.topPrime 1811 },
  { lower := 1888, upper := 1955, witness := RowWitness.topPrime 1879 },
  { lower := 1956, upper := 2027, witness := RowWitness.topPrime 1951 },
  { lower := 2028, upper := 2103, witness := RowWitness.topPrime 2027 },
  { lower := 2104, upper := 2175, witness := RowWitness.topPrime 2099 },
  { lower := 2176, upper := 2237, witness := RowWitness.topPrime 2161 },
  { lower := 2238, upper := 2313, witness := RowWitness.topPrime 2237 },
  { lower := 2314, upper := 2387, witness := RowWitness.topPrime 2311 },
  { lower := 2388, upper := 2459, witness := RowWitness.topPrime 2383 },
  { lower := 2460, upper := 2535, witness := RowWitness.topPrime 2459 },
  { lower := 2536, upper := 2607, witness := RowWitness.topPrime 2531 },
  { lower := 2608, upper := 2669, witness := RowWitness.topPrime 2593 },
  { lower := 2670, upper := 2739, witness := RowWitness.topPrime 2663 },
  { lower := 2740, upper := 2807, witness := RowWitness.topPrime 2731 },
  { lower := 2808, upper := 2879, witness := RowWitness.topPrime 2803 },
  { lower := 2880, upper := 2955, witness := RowWitness.topPrime 2879 },
  { lower := 2956, upper := 3029, witness := RowWitness.topPrime 2953 },
  { lower := 3030, upper := 3099, witness := RowWitness.topPrime 3023 },
  { lower := 3100, upper := 3165, witness := RowWitness.topPrime 3089 },
  { lower := 3166, upper := 3239, witness := RowWitness.topPrime 3163 },
  { lower := 3240, upper := 3305, witness := RowWitness.topPrime 3229 },
  { lower := 3306, upper := 3377, witness := RowWitness.topPrime 3301 },
  { lower := 3378, upper := 3449, witness := RowWitness.topPrime 3373 },
  { lower := 3450, upper := 3525, witness := RowWitness.topPrime 3449 },
  { lower := 3526, upper := 3593, witness := RowWitness.topPrime 3517 },
  { lower := 3594, upper := 3669, witness := RowWitness.topPrime 3593 },
  { lower := 3670, upper := 3735, witness := RowWitness.topPrime 3659 },
  { lower := 3736, upper := 3809, witness := RowWitness.topPrime 3733 },
  { lower := 3810, upper := 3879, witness := RowWitness.topPrime 3803 },
  { lower := 3880, upper := 3953, witness := RowWitness.topPrime 3877 },
  { lower := 3954, upper := 4023, witness := RowWitness.topPrime 3947 },
  { lower := 4024, upper := 4097, witness := RowWitness.topPrime 4021 },
  { lower := 4098, upper := 4169, witness := RowWitness.topPrime 4093 },
  { lower := 4170, upper := 4235, witness := RowWitness.topPrime 4159 },
  { lower := 4236, upper := 4307, witness := RowWitness.topPrime 4231 },
  { lower := 4308, upper := 4373, witness := RowWitness.topPrime 4297 },
  { lower := 4374, upper := 4449, witness := RowWitness.topPrime 4373 },
  { lower := 4450, upper := 4523, witness := RowWitness.topPrime 4447 },
  { lower := 4524, upper := 4599, witness := RowWitness.topPrime 4523 },
  { lower := 4600, upper := 4673, witness := RowWitness.topPrime 4597 },
  { lower := 4674, upper := 4749, witness := RowWitness.topPrime 4673 },
  { lower := 4750, upper := 4809, witness := RowWitness.topPrime 4733 },
  { lower := 4810, upper := 4877, witness := RowWitness.topPrime 4801 },
  { lower := 4878, upper := 4953, witness := RowWitness.topPrime 4877 },
  { lower := 4954, upper := 5027, witness := RowWitness.topPrime 4951 },
  { lower := 5028, upper := 5099, witness := RowWitness.topPrime 5023 },
  { lower := 5100, upper := 5175, witness := RowWitness.topPrime 5099 },
  { lower := 5176, upper := 5247, witness := RowWitness.topPrime 5171 },
  { lower := 5248, upper := 5313, witness := RowWitness.topPrime 5237 },
  { lower := 5314, upper := 5385, witness := RowWitness.topPrime 5309 },
  { lower := 5386, upper := 5457, witness := RowWitness.topPrime 5381 },
  { lower := 5458, upper := 5525, witness := RowWitness.topPrime 5449 },
  { lower := 5526, upper := 5597, witness := RowWitness.topPrime 5521 },
  { lower := 5598, upper := 5667, witness := RowWitness.topPrime 5591 },
  { lower := 5668, upper := 5735, witness := RowWitness.topPrime 5659 },
  { lower := 5736, upper := 5793, witness := RowWitness.topPrime 5717 },
  { lower := 5794, upper := 5867, witness := RowWitness.topPrime 5791 },
  { lower := 5868, upper := 5943, witness := RowWitness.topPrime 5867 },
  { lower := 5944, upper := 5963, witness := RowWitness.topPrime 5939 },
  { lower := 6075, upper := 6149, witness := RowWitness.topPrime 6073 },
  { lower := 6150, upper := 6213, witness := RowWitness.topPrime 6143 },
  { lower := 6318, upper := 6326, witness := RowWitness.topPrime 6317 },
  { lower := 6348, upper := 6419, witness := RowWitness.topPrime 6343 },
  { lower := 6420, upper := 6434, witness := RowWitness.topPrime 6397 },
  { lower := 6561, upper := 6574, witness := RowWitness.topPrime 6553 },
  { lower := 6591, upper := 6657, witness := RowWitness.topPrime 6581 },
  { lower := 6658, upper := 6729, witness := RowWitness.topPrime 6653 },
  { lower := 6730, upper := 6795, witness := RowWitness.topPrime 6719 },
  { lower := 6796, upper := 6804, witness := RowWitness.topPrime 6793 },
  { lower := 6845, upper := 6917, witness := RowWitness.topPrime 6841 },
  { lower := 6918, upper := 6993, witness := RowWitness.topPrime 6917 },
  { lower := 6994, upper := 7012, witness := RowWitness.topPrime 6991 },
  { lower := 7203, upper := 7269, witness := RowWitness.topPrime 7193 },
  { lower := 7270, upper := 7301, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7469, witness := RowWitness.topPrime 7393 },
  { lower := 7470, upper := 7535, witness := RowWitness.topPrime 7459 },
  { lower := 7536, upper := 7605, witness := RowWitness.topPrime 7529 },
  { lower := 7606, upper := 7645, witness := RowWitness.topPrime 7603 },
  { lower := 7688, upper := 7756, witness := RowWitness.topPrime 7687 },
  { lower := 7942, upper := 8011, witness := RowWitness.topPrime 7937 },
  { lower := 8092, upper := 8095, witness := RowWitness.topPrime 8089 },
  { lower := 8125, upper := 8168, witness := RowWitness.topPrime 8123 },
  { lower := 8192, upper := 8201, witness := RowWitness.topPrime 8191 },
  { lower := 8214, upper := 8268, witness := RowWitness.topPrime 8209 },
  { lower := 8405, upper := 8465, witness := RowWitness.topPrime 8389 },
  { lower := 8466, upper := 8503, witness := RowWitness.topPrime 8461 },
  { lower := 8664, upper := 8739, witness := RowWitness.topPrime 8663 },
  { lower := 8740, upper := 8740, witness := RowWitness.topPrime 8737 },
  { lower := 8748, upper := 8823, witness := RowWitness.topPrime 8747 },
  { lower := 8824, upper := 8826, witness := RowWitness.topPrime 8821 },
  { lower := 8836, upper := 8864, witness := RowWitness.topPrime 8831 },
  { lower := 8993, upper := 9047, witness := RowWitness.topPrime 8971 },
  { lower := 9048, upper := 9069, witness := RowWitness.topPrime 9043 },
  { lower := 9245, upper := 9317, witness := RowWitness.topPrime 9241 },
  { lower := 9318, upper := 9321, witness := RowWitness.topPrime 9311 },
  { lower := 9386, upper := 9451, witness := RowWitness.topPrime 9377 },
  { lower := 9522, upper := 9553, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9598, witness := RowWitness.topPrime 9551 },
  { lower := 9604, upper := 9677, witness := RowWitness.topPrime 9601 },
  { lower := 9678, upper := 9680, witness := RowWitness.topPrime 9677 },
  { lower := 9747, upper := 9804, witness := RowWitness.topPrime 9743 },
  { lower := 10051, upper := 10076, witness := RowWitness.topPrime 10039 },
  { lower := 10082, upper := 10155, witness := RowWitness.topPrime 10079 },
  { lower := 10156, upper := 10168, witness := RowWitness.topPrime 10151 },
  { lower := 10240, upper := 10282, witness := RowWitness.topPrime 10223 },
  { lower := 10469, upper := 10519, witness := RowWitness.topPrime 10463 },
  { lower := 10580, upper := 10643, witness := RowWitness.topPrime 10567 },
  { lower := 10644, upper := 10656, witness := RowWitness.topPrime 10639 },
  { lower := 10658, upper := 10701, witness := RowWitness.topPrime 10657 },
  { lower := 10935, upper := 10985, witness := RowWitness.topPrime 10909 },
  { lower := 10986, upper := 11028, witness := RowWitness.topPrime 10979 },
  { lower := 11045, upper := 11061, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11169, witness := RowWitness.topPrime 11093 },
  { lower := 11170, upper := 11185, witness := RowWitness.topPrime 11161 },
  { lower := 11236, upper := 11239, witness := RowWitness.topPrime 11213 },
  { lower := 11250, upper := 11319, witness := RowWitness.topPrime 11243 },
  { lower := 11320, upper := 11326, witness := RowWitness.topPrime 11317 },
  { lower := 11664, upper := 11714, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11819, witness := RowWitness.topPrime 11743 },
  { lower := 11820, upper := 11850, witness := RowWitness.topPrime 11813 },
  { lower := 12321, upper := 12364, witness := RowWitness.topPrime 12301 },
  { lower := 12393, upper := 12397, witness := RowWitness.topPrime 12391 },
  { lower := 12500, upper := 12569, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13197, witness := RowWitness.topPrime 13121 },
  { lower := 13198, upper := 13201, witness := RowWitness.topPrime 13187 },
  { lower := 13225, upper := 13295, witness := RowWitness.topPrime 13219 },
  { lower := 13296, upper := 13301, witness := RowWitness.topPrime 13291 },
  { lower := 13312, upper := 13330, witness := RowWitness.topPrime 13309 },
  { lower := 13454, upper := 13527, witness := RowWitness.topPrime 13451 },
  { lower := 13528, upper := 13532, witness := RowWitness.topPrime 13523 },
  { lower := 13718, upper := 13787, witness := RowWitness.topPrime 13711 },
  { lower := 13788, upper := 13794, witness := RowWitness.topPrime 13781 },
  { lower := 13924, upper := 13927, witness := RowWitness.topPrime 13921 },
  { lower := 14336, upper := 14373, witness := RowWitness.topPrime 14327 },
  { lower := 14375, upper := 14412, witness := RowWitness.topPrime 14369 },
  { lower := 14415, upper := 14451, witness := RowWitness.topPrime 14411 },
  { lower := 14641, upper := 14656, witness := RowWitness.topPrime 14639 },
  { lower := 14792, upper := 14815, witness := RowWitness.topPrime 14783 },
  { lower := 15059, upper := 15076, witness := RowWitness.topPrime 15053 },
  { lower := 15123, upper := 15197, witness := RowWitness.topPrime 15121 },
  { lower := 15198, upper := 15205, witness := RowWitness.topPrime 15193 },
  { lower := 15360, upper := 15435, witness := RowWitness.topPrime 15359 },
  { lower := 15436, upper := 15452, witness := RowWitness.topPrime 15427 },
  { lower := 15987, upper := 16049, witness := RowWitness.topPrime 15973 },
  { lower := 16050, upper := 16063, witness := RowWitness.topPrime 16033 },
  { lower := 16384, upper := 16413, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16460, witness := RowWitness.topPrime 16427 },
  { lower := 16807, upper := 16863, witness := RowWitness.topPrime 16787 },
  { lower := 16864, upper := 16896, witness := RowWitness.topPrime 16843 },
  { lower := 17408, upper := 17477, witness := RowWitness.topPrime 17401 },
  { lower := 17478, upper := 17481, witness := RowWitness.topPrime 17477 },
  { lower := 17672, upper := 17737, witness := RowWitness.topPrime 17669 },
  { lower := 18259, upper := 18301, witness := RowWitness.topPrime 18257 },
  { lower := 18490, upper := 18557, witness := RowWitness.topPrime 18481 },
  { lower := 18558, upper := 18567, witness := RowWitness.topPrime 18553 },
  { lower := 19220, upper := 19242, witness := RowWitness.topPrime 19219 },
  { lower := 19663, upper := 19737, witness := RowWitness.topPrime 19661 },
  { lower := 19738, upper := 19739, witness := RowWitness.topPrime 19727 },
  { lower := 20172, upper := 20237, witness := RowWitness.topPrime 20161 },
  { lower := 20238, upper := 20257, witness := RowWitness.topPrime 20233 },
  { lower := 20535, upper := 20556, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20611, witness := RowWitness.topPrime 20563 },
  { lower := 21870, upper := 21939, witness := RowWitness.topPrime 21863 },
  { lower := 21940, upper := 21951, witness := RowWitness.topPrime 21937 },
  { lower := 21970, upper := 21980, witness := RowWitness.topPrime 21961 },
  { lower := 22103, upper := 22166, witness := RowWitness.topPrime 22093 },
  { lower := 22472, upper := 22521, witness := RowWitness.topPrime 22469 },
  { lower := 22528, upper := 22548, witness := RowWitness.topPrime 22511 },
  { lower := 24057, upper := 24113, witness := RowWitness.topPrime 24049 },
  { lower := 24334, upper := 24405, witness := RowWitness.topPrime 24329 },
  { lower := 24406, upper := 24443, witness := RowWitness.topPrime 24391 },
  { lower := 24576, upper := 24647, witness := RowWitness.topPrime 24571 },
  { lower := 24648, upper := 24652, witness := RowWitness.topPrime 24631 },
  { lower := 25215, upper := 25265, witness := RowWitness.topPrime 25189 },
  { lower := 25266, upper := 25291, witness := RowWitness.topPrime 25261 },
  { lower := 26047, upper := 26087, witness := RowWitness.topPrime 26041 },
  { lower := 26645, upper := 26700, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 26972, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27456, witness := RowWitness.topPrime 27431 },
  { lower := 28125, upper := 28166, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28637, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28787, witness := RowWitness.topPrime 28711 },
  { lower := 28788, upper := 28793, witness := RowWitness.topPrime 28771 },
  { lower := 29791, upper := 29844, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30322, witness := RowWitness.topPrime 30253 },
  { lower := 30758, upper := 30796, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30975, witness := RowWitness.topPrime 30911 },
  { lower := 31433, upper := 31473, witness := RowWitness.topPrime 31397 },
  { lower := 31474, upper := 31499, witness := RowWitness.topPrime 31469 },
  { lower := 31974, upper := 32015, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32844, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33690, witness := RowWitness.topPrime 33619 },
  { lower := 34391, upper := 34451, witness := RowWitness.topPrime 34381 },
  { lower := 34816, upper := 34883, witness := RowWitness.topPrime 34807 },
  { lower := 34884, upper := 34886, witness := RowWitness.topPrime 34883 },
  { lower := 35152, upper := 35207, witness := RowWitness.topPrime 35149 },
  { lower := 35301, upper := 35367, witness := RowWitness.topPrime 35291 },
  { lower := 35368, upper := 35377, witness := RowWitness.topPrime 35363 },
  { lower := 36517, upper := 36573, witness := RowWitness.topPrime 36497 },
  { lower := 36574, upper := 36577, witness := RowWitness.topPrime 36571 },
  { lower := 36982, upper := 37055, witness := RowWitness.topPrime 36979 },
  { lower := 37056, upper := 37056, witness := RowWitness.topPrime 37049 },
  { lower := 37210, upper := 37255, witness := RowWitness.topPrime 37201 },
  { lower := 37349, upper := 37379, witness := RowWitness.topPrime 37339 },
  { lower := 37553, upper := 37576, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39399, witness := RowWitness.topPrime 39323 },
  { lower := 39400, upper := 39402, witness := RowWitness.topPrime 39397 },
  { lower := 40401, upper := 40404, witness := RowWitness.topPrime 40387 },
  { lower := 40678, upper := 40701, witness := RowWitness.topPrime 40639 },
  { lower := 40960, upper := 41007, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41819, witness := RowWitness.topPrime 41771 },
  { lower := 43750, upper := 43797, witness := RowWitness.topPrime 43721 },
  { lower := 43798, upper := 43816, witness := RowWitness.topPrime 43793 },
  { lower := 44217, upper := 44256, witness := RowWitness.topPrime 44207 },
  { lower := 44944, upper := 44966, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48037, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48744, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48810, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49206, witness := RowWitness.topPrime 49139 },
  { lower := 53290, upper := 53324, witness := RowWitness.topPrime 53281 },
  { lower := 59582, upper := 59612, witness := RowWitness.topPrime 59581 },
  { lower := 65536, upper := 65597, witness := RowWitness.topPrime 65521 },
  { lower := 65598, upper := 65612, witness := RowWitness.topPrime 65587 },
  { lower := 73728, upper := 73771, witness := RowWitness.topPrime 73727 },
  { lower := 85291, upper := 85335, witness := RowWitness.topPrime 85259 },
  { lower := 85336, upper := 85367, witness := RowWitness.topPrime 85333 },
  { lower := 85697, upper := 85759, witness := RowWitness.topPrime 85691 },
  { lower := 137842, upper := 137857, witness := RowWitness.topPrime 137831 },
  { lower := 327701, upper := 327756, witness := RowWitness.topPrime 327689 }
]

def row077_layers : List CoverLayer := [
  { lower := 5852, upper := 11704, M := 29 },
  { lower := 11704, upper := 23408, M := 25 },
  { lower := 23408, upper := 46816, M := 22 },
  { lower := 46816, upper := 93632, M := 19 },
  { lower := 93632, upper := 187264, M := 16 },
  { lower := 187264, upper := 374528, M := 14 },
  { lower := 374528, upper := 749056, M := 12 },
  { lower := 749056, upper := 1498112, M := 11 },
  { lower := 1498112, upper := 2996224, M := 9 },
  { lower := 2996224, upper := 5992448, M := 8 },
  { lower := 5992448, upper := 11984896, M := 7 },
  { lower := 11984896, upper := 23969792, M := 6 },
  { lower := 23969792, upper := 47939584, M := 5 },
  { lower := 47939584, upper := 95879168, M := 5 },
  { lower := 95879168, upper := 191758336, M := 4 },
  { lower := 191758336, upper := 383516672, M := 4 },
  { lower := 383516672, upper := 767033344, M := 3 },
  { lower := 767033344, upper := 1534066688, M := 3 },
  { lower := 1534066688, upper := 3068133376, M := 2 },
  { lower := 3068133376, upper := 6136266752, M := 2 },
  { lower := 6136266752, upper := 12272533504, M := 2 },
  { lower := 12272533504, upper := 24545067008, M := 2 },
  { lower := 24545067008, upper := 49090134016, M := 2 },
  { lower := 49090134016, upper := 98180268032, M := 1 },
  { lower := 98180268032, upper := 100000000000, M := 1 }
]

def row077 : FiniteCoverRow := {
  height := row077_height,
  goods := row077_goods,
  layers := row077_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_good000_checked :
    goodSegmentCheck 77 25 53
      { lower := 156, upper := 227, witness := RowWitness.topPrime 151 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good001_checked :
    goodSegmentCheck 77 25 53
      { lower := 228, upper := 303, witness := RowWitness.topPrime 227 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good002_checked :
    goodSegmentCheck 77 25 53
      { lower := 304, upper := 369, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good003_checked :
    goodSegmentCheck 77 25 53
      { lower := 370, upper := 443, witness := RowWitness.topPrime 367 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good004_checked :
    goodSegmentCheck 77 25 53
      { lower := 444, upper := 519, witness := RowWitness.topPrime 443 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good005_checked :
    goodSegmentCheck 77 25 53
      { lower := 520, upper := 585, witness := RowWitness.topPrime 509 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good006_checked :
    goodSegmentCheck 77 25 53
      { lower := 586, upper := 653, witness := RowWitness.topPrime 577 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good007_checked :
    goodSegmentCheck 77 25 53
      { lower := 654, upper := 729, witness := RowWitness.topPrime 653 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good008_checked :
    goodSegmentCheck 77 25 53
      { lower := 730, upper := 803, witness := RowWitness.topPrime 727 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good009_checked :
    goodSegmentCheck 77 25 53
      { lower := 804, upper := 873, witness := RowWitness.topPrime 797 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good010_checked :
    goodSegmentCheck 77 25 53
      { lower := 874, upper := 939, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good011_checked :
    goodSegmentCheck 77 25 53
      { lower := 940, upper := 1013, witness := RowWitness.topPrime 937 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good012_checked :
    goodSegmentCheck 77 25 53
      { lower := 1014, upper := 1089, witness := RowWitness.topPrime 1013 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good013_checked :
    goodSegmentCheck 77 25 53
      { lower := 1090, upper := 1163, witness := RowWitness.topPrime 1087 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good014_checked :
    goodSegmentCheck 77 25 53
      { lower := 1164, upper := 1239, witness := RowWitness.topPrime 1163 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good015_checked :
    goodSegmentCheck 77 25 53
      { lower := 1240, upper := 1313, witness := RowWitness.topPrime 1237 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_good016_checked :
    goodSegmentCheck 77 25 53
      { lower := 1314, upper := 1383, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good017_checked :
    goodSegmentCheck 77 25 53
      { lower := 1384, upper := 1457, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good018_checked :
    goodSegmentCheck 77 25 53
      { lower := 1458, upper := 1529, witness := RowWitness.topPrime 1453 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good019_checked :
    goodSegmentCheck 77 25 53
      { lower := 1530, upper := 1599, witness := RowWitness.topPrime 1523 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good020_checked :
    goodSegmentCheck 77 25 53
      { lower := 1600, upper := 1673, witness := RowWitness.topPrime 1597 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good021_checked :
    goodSegmentCheck 77 25 53
      { lower := 1674, upper := 1745, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good022_checked :
    goodSegmentCheck 77 25 53
      { lower := 1746, upper := 1817, witness := RowWitness.topPrime 1741 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good023_checked :
    goodSegmentCheck 77 25 53
      { lower := 1818, upper := 1887, witness := RowWitness.topPrime 1811 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good024_checked :
    goodSegmentCheck 77 25 53
      { lower := 1888, upper := 1955, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good025_checked :
    goodSegmentCheck 77 25 53
      { lower := 1956, upper := 2027, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good026_checked :
    goodSegmentCheck 77 25 53
      { lower := 2028, upper := 2103, witness := RowWitness.topPrime 2027 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good027_checked :
    goodSegmentCheck 77 25 53
      { lower := 2104, upper := 2175, witness := RowWitness.topPrime 2099 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good028_checked :
    goodSegmentCheck 77 25 53
      { lower := 2176, upper := 2237, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good029_checked :
    goodSegmentCheck 77 25 53
      { lower := 2238, upper := 2313, witness := RowWitness.topPrime 2237 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good030_checked :
    goodSegmentCheck 77 25 53
      { lower := 2314, upper := 2387, witness := RowWitness.topPrime 2311 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good031_checked :
    goodSegmentCheck 77 25 53
      { lower := 2388, upper := 2459, witness := RowWitness.topPrime 2383 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_good032_checked :
    goodSegmentCheck 77 25 53
      { lower := 2460, upper := 2535, witness := RowWitness.topPrime 2459 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good033_checked :
    goodSegmentCheck 77 25 53
      { lower := 2536, upper := 2607, witness := RowWitness.topPrime 2531 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good034_checked :
    goodSegmentCheck 77 25 53
      { lower := 2608, upper := 2669, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good035_checked :
    goodSegmentCheck 77 25 53
      { lower := 2670, upper := 2739, witness := RowWitness.topPrime 2663 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good036_checked :
    goodSegmentCheck 77 25 53
      { lower := 2740, upper := 2807, witness := RowWitness.topPrime 2731 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good037_checked :
    goodSegmentCheck 77 25 53
      { lower := 2808, upper := 2879, witness := RowWitness.topPrime 2803 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good038_checked :
    goodSegmentCheck 77 25 53
      { lower := 2880, upper := 2955, witness := RowWitness.topPrime 2879 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good039_checked :
    goodSegmentCheck 77 25 53
      { lower := 2956, upper := 3029, witness := RowWitness.topPrime 2953 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good040_checked :
    goodSegmentCheck 77 25 53
      { lower := 3030, upper := 3099, witness := RowWitness.topPrime 3023 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good041_checked :
    goodSegmentCheck 77 25 53
      { lower := 3100, upper := 3165, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good042_checked :
    goodSegmentCheck 77 25 53
      { lower := 3166, upper := 3239, witness := RowWitness.topPrime 3163 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good043_checked :
    goodSegmentCheck 77 25 53
      { lower := 3240, upper := 3305, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good044_checked :
    goodSegmentCheck 77 25 53
      { lower := 3306, upper := 3377, witness := RowWitness.topPrime 3301 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good045_checked :
    goodSegmentCheck 77 25 53
      { lower := 3378, upper := 3449, witness := RowWitness.topPrime 3373 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good046_checked :
    goodSegmentCheck 77 25 53
      { lower := 3450, upper := 3525, witness := RowWitness.topPrime 3449 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good047_checked :
    goodSegmentCheck 77 25 53
      { lower := 3526, upper := 3593, witness := RowWitness.topPrime 3517 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_good048_checked :
    goodSegmentCheck 77 25 53
      { lower := 3594, upper := 3669, witness := RowWitness.topPrime 3593 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good049_checked :
    goodSegmentCheck 77 25 53
      { lower := 3670, upper := 3735, witness := RowWitness.topPrime 3659 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good050_checked :
    goodSegmentCheck 77 25 53
      { lower := 3736, upper := 3809, witness := RowWitness.topPrime 3733 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good051_checked :
    goodSegmentCheck 77 25 53
      { lower := 3810, upper := 3879, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good052_checked :
    goodSegmentCheck 77 25 53
      { lower := 3880, upper := 3953, witness := RowWitness.topPrime 3877 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good053_checked :
    goodSegmentCheck 77 25 53
      { lower := 3954, upper := 4023, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good054_checked :
    goodSegmentCheck 77 25 53
      { lower := 4024, upper := 4097, witness := RowWitness.topPrime 4021 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good055_checked :
    goodSegmentCheck 77 25 53
      { lower := 4098, upper := 4169, witness := RowWitness.topPrime 4093 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good056_checked :
    goodSegmentCheck 77 25 53
      { lower := 4170, upper := 4235, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good057_checked :
    goodSegmentCheck 77 25 53
      { lower := 4236, upper := 4307, witness := RowWitness.topPrime 4231 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good058_checked :
    goodSegmentCheck 77 25 53
      { lower := 4308, upper := 4373, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good059_checked :
    goodSegmentCheck 77 25 53
      { lower := 4374, upper := 4449, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good060_checked :
    goodSegmentCheck 77 25 53
      { lower := 4450, upper := 4523, witness := RowWitness.topPrime 4447 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good061_checked :
    goodSegmentCheck 77 25 53
      { lower := 4524, upper := 4599, witness := RowWitness.topPrime 4523 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good062_checked :
    goodSegmentCheck 77 25 53
      { lower := 4600, upper := 4673, witness := RowWitness.topPrime 4597 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good063_checked :
    goodSegmentCheck 77 25 53
      { lower := 4674, upper := 4749, witness := RowWitness.topPrime 4673 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_good064_checked :
    goodSegmentCheck 77 25 53
      { lower := 4750, upper := 4809, witness := RowWitness.topPrime 4733 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good065_checked :
    goodSegmentCheck 77 25 53
      { lower := 4810, upper := 4877, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good066_checked :
    goodSegmentCheck 77 25 53
      { lower := 4878, upper := 4953, witness := RowWitness.topPrime 4877 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good067_checked :
    goodSegmentCheck 77 25 53
      { lower := 4954, upper := 5027, witness := RowWitness.topPrime 4951 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good068_checked :
    goodSegmentCheck 77 25 53
      { lower := 5028, upper := 5099, witness := RowWitness.topPrime 5023 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good069_checked :
    goodSegmentCheck 77 25 53
      { lower := 5100, upper := 5175, witness := RowWitness.topPrime 5099 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good070_checked :
    goodSegmentCheck 77 25 53
      { lower := 5176, upper := 5247, witness := RowWitness.topPrime 5171 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good071_checked :
    goodSegmentCheck 77 25 53
      { lower := 5248, upper := 5313, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good072_checked :
    goodSegmentCheck 77 25 53
      { lower := 5314, upper := 5385, witness := RowWitness.topPrime 5309 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good073_checked :
    goodSegmentCheck 77 25 53
      { lower := 5386, upper := 5457, witness := RowWitness.topPrime 5381 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good074_checked :
    goodSegmentCheck 77 25 53
      { lower := 5458, upper := 5525, witness := RowWitness.topPrime 5449 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good075_checked :
    goodSegmentCheck 77 25 53
      { lower := 5526, upper := 5597, witness := RowWitness.topPrime 5521 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good076_checked :
    goodSegmentCheck 77 25 53
      { lower := 5598, upper := 5667, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good077_checked :
    goodSegmentCheck 77 25 53
      { lower := 5668, upper := 5735, witness := RowWitness.topPrime 5659 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good078_checked :
    goodSegmentCheck 77 25 53
      { lower := 5736, upper := 5793, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good079_checked :
    goodSegmentCheck 77 25 53
      { lower := 5794, upper := 5867, witness := RowWitness.topPrime 5791 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_good080_checked :
    goodSegmentCheck 77 25 53
      { lower := 5868, upper := 5943, witness := RowWitness.topPrime 5867 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good081_checked :
    goodSegmentCheck 77 25 53
      { lower := 5944, upper := 5963, witness := RowWitness.topPrime 5939 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good082_checked :
    goodSegmentCheck 77 25 53
      { lower := 6075, upper := 6149, witness := RowWitness.topPrime 6073 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good083_checked :
    goodSegmentCheck 77 25 53
      { lower := 6150, upper := 6213, witness := RowWitness.topPrime 6143 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good084_checked :
    goodSegmentCheck 77 25 53
      { lower := 6318, upper := 6326, witness := RowWitness.topPrime 6317 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good085_checked :
    goodSegmentCheck 77 25 53
      { lower := 6348, upper := 6419, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good086_checked :
    goodSegmentCheck 77 25 53
      { lower := 6420, upper := 6434, witness := RowWitness.topPrime 6397 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good087_checked :
    goodSegmentCheck 77 25 53
      { lower := 6561, upper := 6574, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good088_checked :
    goodSegmentCheck 77 25 53
      { lower := 6591, upper := 6657, witness := RowWitness.topPrime 6581 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good089_checked :
    goodSegmentCheck 77 25 53
      { lower := 6658, upper := 6729, witness := RowWitness.topPrime 6653 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good090_checked :
    goodSegmentCheck 77 25 53
      { lower := 6730, upper := 6795, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good091_checked :
    goodSegmentCheck 77 25 53
      { lower := 6796, upper := 6804, witness := RowWitness.topPrime 6793 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good092_checked :
    goodSegmentCheck 77 25 53
      { lower := 6845, upper := 6917, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good093_checked :
    goodSegmentCheck 77 25 53
      { lower := 6918, upper := 6993, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good094_checked :
    goodSegmentCheck 77 25 53
      { lower := 6994, upper := 7012, witness := RowWitness.topPrime 6991 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good095_checked :
    goodSegmentCheck 77 25 53
      { lower := 7203, upper := 7269, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_good096_checked :
    goodSegmentCheck 77 25 53
      { lower := 7270, upper := 7301, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good097_checked :
    goodSegmentCheck 77 25 53
      { lower := 7406, upper := 7469, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good098_checked :
    goodSegmentCheck 77 25 53
      { lower := 7470, upper := 7535, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good099_checked :
    goodSegmentCheck 77 25 53
      { lower := 7536, upper := 7605, witness := RowWitness.topPrime 7529 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good100_checked :
    goodSegmentCheck 77 25 53
      { lower := 7606, upper := 7645, witness := RowWitness.topPrime 7603 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good101_checked :
    goodSegmentCheck 77 25 53
      { lower := 7688, upper := 7756, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good102_checked :
    goodSegmentCheck 77 25 53
      { lower := 7942, upper := 8011, witness := RowWitness.topPrime 7937 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good103_checked :
    goodSegmentCheck 77 25 53
      { lower := 8092, upper := 8095, witness := RowWitness.topPrime 8089 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good104_checked :
    goodSegmentCheck 77 25 53
      { lower := 8125, upper := 8168, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good105_checked :
    goodSegmentCheck 77 25 53
      { lower := 8192, upper := 8201, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good106_checked :
    goodSegmentCheck 77 25 53
      { lower := 8214, upper := 8268, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good107_checked :
    goodSegmentCheck 77 25 53
      { lower := 8405, upper := 8465, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good108_checked :
    goodSegmentCheck 77 25 53
      { lower := 8466, upper := 8503, witness := RowWitness.topPrime 8461 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good109_checked :
    goodSegmentCheck 77 25 53
      { lower := 8664, upper := 8739, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good110_checked :
    goodSegmentCheck 77 25 53
      { lower := 8740, upper := 8740, witness := RowWitness.topPrime 8737 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good111_checked :
    goodSegmentCheck 77 25 53
      { lower := 8748, upper := 8823, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_good112_checked :
    goodSegmentCheck 77 25 53
      { lower := 8824, upper := 8826, witness := RowWitness.topPrime 8821 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good113_checked :
    goodSegmentCheck 77 25 53
      { lower := 8836, upper := 8864, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good114_checked :
    goodSegmentCheck 77 25 53
      { lower := 8993, upper := 9047, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good115_checked :
    goodSegmentCheck 77 25 53
      { lower := 9048, upper := 9069, witness := RowWitness.topPrime 9043 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good116_checked :
    goodSegmentCheck 77 25 53
      { lower := 9245, upper := 9317, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good117_checked :
    goodSegmentCheck 77 25 53
      { lower := 9318, upper := 9321, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good118_checked :
    goodSegmentCheck 77 25 53
      { lower := 9386, upper := 9451, witness := RowWitness.topPrime 9377 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good119_checked :
    goodSegmentCheck 77 25 53
      { lower := 9522, upper := 9553, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good120_checked :
    goodSegmentCheck 77 25 53
      { lower := 9583, upper := 9598, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good121_checked :
    goodSegmentCheck 77 25 53
      { lower := 9604, upper := 9677, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good122_checked :
    goodSegmentCheck 77 25 53
      { lower := 9678, upper := 9680, witness := RowWitness.topPrime 9677 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good123_checked :
    goodSegmentCheck 77 25 53
      { lower := 9747, upper := 9804, witness := RowWitness.topPrime 9743 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good124_checked :
    goodSegmentCheck 77 25 53
      { lower := 10051, upper := 10076, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good125_checked :
    goodSegmentCheck 77 25 53
      { lower := 10082, upper := 10155, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good126_checked :
    goodSegmentCheck 77 25 53
      { lower := 10156, upper := 10168, witness := RowWitness.topPrime 10151 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good127_checked :
    goodSegmentCheck 77 25 53
      { lower := 10240, upper := 10282, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_good128_checked :
    goodSegmentCheck 77 25 53
      { lower := 10469, upper := 10519, witness := RowWitness.topPrime 10463 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good129_checked :
    goodSegmentCheck 77 25 53
      { lower := 10580, upper := 10643, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good130_checked :
    goodSegmentCheck 77 25 53
      { lower := 10644, upper := 10656, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good131_checked :
    goodSegmentCheck 77 25 53
      { lower := 10658, upper := 10701, witness := RowWitness.topPrime 10657 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good132_checked :
    goodSegmentCheck 77 25 53
      { lower := 10935, upper := 10985, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good133_checked :
    goodSegmentCheck 77 25 53
      { lower := 10986, upper := 11028, witness := RowWitness.topPrime 10979 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good134_checked :
    goodSegmentCheck 77 25 53
      { lower := 11045, upper := 11061, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good135_checked :
    goodSegmentCheck 77 25 53
      { lower := 11094, upper := 11169, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good136_checked :
    goodSegmentCheck 77 25 53
      { lower := 11170, upper := 11185, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good137_checked :
    goodSegmentCheck 77 25 53
      { lower := 11236, upper := 11239, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good138_checked :
    goodSegmentCheck 77 25 53
      { lower := 11250, upper := 11319, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good139_checked :
    goodSegmentCheck 77 25 53
      { lower := 11320, upper := 11326, witness := RowWitness.topPrime 11317 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good140_checked :
    goodSegmentCheck 77 25 53
      { lower := 11664, upper := 11714, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good141_checked :
    goodSegmentCheck 77 25 53
      { lower := 11774, upper := 11819, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good142_checked :
    goodSegmentCheck 77 25 53
      { lower := 11820, upper := 11850, witness := RowWitness.topPrime 11813 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good143_checked :
    goodSegmentCheck 77 25 53
      { lower := 12321, upper := 12364, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_good144_checked :
    goodSegmentCheck 77 25 53
      { lower := 12393, upper := 12397, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good145_checked :
    goodSegmentCheck 77 25 53
      { lower := 12500, upper := 12569, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good146_checked :
    goodSegmentCheck 77 25 53
      { lower := 13125, upper := 13197, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good147_checked :
    goodSegmentCheck 77 25 53
      { lower := 13198, upper := 13201, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good148_checked :
    goodSegmentCheck 77 25 53
      { lower := 13225, upper := 13295, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good149_checked :
    goodSegmentCheck 77 25 53
      { lower := 13296, upper := 13301, witness := RowWitness.topPrime 13291 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good150_checked :
    goodSegmentCheck 77 25 53
      { lower := 13312, upper := 13330, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good151_checked :
    goodSegmentCheck 77 25 53
      { lower := 13454, upper := 13527, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good152_checked :
    goodSegmentCheck 77 25 53
      { lower := 13528, upper := 13532, witness := RowWitness.topPrime 13523 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good153_checked :
    goodSegmentCheck 77 25 53
      { lower := 13718, upper := 13787, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good154_checked :
    goodSegmentCheck 77 25 53
      { lower := 13788, upper := 13794, witness := RowWitness.topPrime 13781 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good155_checked :
    goodSegmentCheck 77 25 53
      { lower := 13924, upper := 13927, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good156_checked :
    goodSegmentCheck 77 25 53
      { lower := 14336, upper := 14373, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good157_checked :
    goodSegmentCheck 77 25 53
      { lower := 14375, upper := 14412, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good158_checked :
    goodSegmentCheck 77 25 53
      { lower := 14415, upper := 14451, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good159_checked :
    goodSegmentCheck 77 25 53
      { lower := 14641, upper := 14656, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_good160_checked :
    goodSegmentCheck 77 25 53
      { lower := 14792, upper := 14815, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good161_checked :
    goodSegmentCheck 77 25 53
      { lower := 15059, upper := 15076, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good162_checked :
    goodSegmentCheck 77 25 53
      { lower := 15123, upper := 15197, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good163_checked :
    goodSegmentCheck 77 25 53
      { lower := 15198, upper := 15205, witness := RowWitness.topPrime 15193 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good164_checked :
    goodSegmentCheck 77 25 53
      { lower := 15360, upper := 15435, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good165_checked :
    goodSegmentCheck 77 25 53
      { lower := 15436, upper := 15452, witness := RowWitness.topPrime 15427 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good166_checked :
    goodSegmentCheck 77 25 53
      { lower := 15987, upper := 16049, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good167_checked :
    goodSegmentCheck 77 25 53
      { lower := 16050, upper := 16063, witness := RowWitness.topPrime 16033 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good168_checked :
    goodSegmentCheck 77 25 53
      { lower := 16384, upper := 16413, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good169_checked :
    goodSegmentCheck 77 25 53
      { lower := 16428, upper := 16460, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good170_checked :
    goodSegmentCheck 77 25 53
      { lower := 16807, upper := 16863, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good171_checked :
    goodSegmentCheck 77 25 53
      { lower := 16864, upper := 16896, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good172_checked :
    goodSegmentCheck 77 25 53
      { lower := 17408, upper := 17477, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good173_checked :
    goodSegmentCheck 77 25 53
      { lower := 17478, upper := 17481, witness := RowWitness.topPrime 17477 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good174_checked :
    goodSegmentCheck 77 25 53
      { lower := 17672, upper := 17737, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good175_checked :
    goodSegmentCheck 77 25 53
      { lower := 18259, upper := 18301, witness := RowWitness.topPrime 18257 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_good176_checked :
    goodSegmentCheck 77 25 53
      { lower := 18490, upper := 18557, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good177_checked :
    goodSegmentCheck 77 25 53
      { lower := 18558, upper := 18567, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good178_checked :
    goodSegmentCheck 77 25 53
      { lower := 19220, upper := 19242, witness := RowWitness.topPrime 19219 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good179_checked :
    goodSegmentCheck 77 25 53
      { lower := 19663, upper := 19737, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good180_checked :
    goodSegmentCheck 77 25 53
      { lower := 19738, upper := 19739, witness := RowWitness.topPrime 19727 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good181_checked :
    goodSegmentCheck 77 25 53
      { lower := 20172, upper := 20237, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good182_checked :
    goodSegmentCheck 77 25 53
      { lower := 20238, upper := 20257, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good183_checked :
    goodSegmentCheck 77 25 53
      { lower := 20535, upper := 20556, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good184_checked :
    goodSegmentCheck 77 25 53
      { lower := 20577, upper := 20611, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good185_checked :
    goodSegmentCheck 77 25 53
      { lower := 21870, upper := 21939, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good186_checked :
    goodSegmentCheck 77 25 53
      { lower := 21940, upper := 21951, witness := RowWitness.topPrime 21937 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good187_checked :
    goodSegmentCheck 77 25 53
      { lower := 21970, upper := 21980, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good188_checked :
    goodSegmentCheck 77 25 53
      { lower := 22103, upper := 22166, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good189_checked :
    goodSegmentCheck 77 25 53
      { lower := 22472, upper := 22521, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good190_checked :
    goodSegmentCheck 77 25 53
      { lower := 22528, upper := 22548, witness := RowWitness.topPrime 22511 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good191_checked :
    goodSegmentCheck 77 25 53
      { lower := 24057, upper := 24113, witness := RowWitness.topPrime 24049 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_good192_checked :
    goodSegmentCheck 77 25 53
      { lower := 24334, upper := 24405, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good193_checked :
    goodSegmentCheck 77 25 53
      { lower := 24406, upper := 24443, witness := RowWitness.topPrime 24391 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good194_checked :
    goodSegmentCheck 77 25 53
      { lower := 24576, upper := 24647, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good195_checked :
    goodSegmentCheck 77 25 53
      { lower := 24648, upper := 24652, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good196_checked :
    goodSegmentCheck 77 25 53
      { lower := 25215, upper := 25265, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good197_checked :
    goodSegmentCheck 77 25 53
      { lower := 25266, upper := 25291, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good198_checked :
    goodSegmentCheck 77 25 53
      { lower := 26047, upper := 26087, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good199_checked :
    goodSegmentCheck 77 25 53
      { lower := 26645, upper := 26700, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good200_checked :
    goodSegmentCheck 77 25 53
      { lower := 26934, upper := 26972, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good201_checked :
    goodSegmentCheck 77 25 53
      { lower := 27436, upper := 27456, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good202_checked :
    goodSegmentCheck 77 25 53
      { lower := 28125, upper := 28166, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good203_checked :
    goodSegmentCheck 77 25 53
      { lower := 28577, upper := 28637, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good204_checked :
    goodSegmentCheck 77 25 53
      { lower := 28717, upper := 28787, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good205_checked :
    goodSegmentCheck 77 25 53
      { lower := 28788, upper := 28793, witness := RowWitness.topPrime 28771 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good206_checked :
    goodSegmentCheck 77 25 53
      { lower := 29791, upper := 29844, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good207_checked :
    goodSegmentCheck 77 25 53
      { lower := 30258, upper := 30322, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_good208_checked :
    goodSegmentCheck 77 25 53
      { lower := 30758, upper := 30796, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good209_checked :
    goodSegmentCheck 77 25 53
      { lower := 30926, upper := 30975, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good210_checked :
    goodSegmentCheck 77 25 53
      { lower := 31433, upper := 31473, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good211_checked :
    goodSegmentCheck 77 25 53
      { lower := 31474, upper := 31499, witness := RowWitness.topPrime 31469 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good212_checked :
    goodSegmentCheck 77 25 53
      { lower := 31974, upper := 32015, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good213_checked :
    goodSegmentCheck 77 25 53
      { lower := 32805, upper := 32844, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good214_checked :
    goodSegmentCheck 77 25 53
      { lower := 33620, upper := 33690, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good215_checked :
    goodSegmentCheck 77 25 53
      { lower := 34391, upper := 34451, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good216_checked :
    goodSegmentCheck 77 25 53
      { lower := 34816, upper := 34883, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good217_checked :
    goodSegmentCheck 77 25 53
      { lower := 34884, upper := 34886, witness := RowWitness.topPrime 34883 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good218_checked :
    goodSegmentCheck 77 25 53
      { lower := 35152, upper := 35207, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good219_checked :
    goodSegmentCheck 77 25 53
      { lower := 35301, upper := 35367, witness := RowWitness.topPrime 35291 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good220_checked :
    goodSegmentCheck 77 25 53
      { lower := 35368, upper := 35377, witness := RowWitness.topPrime 35363 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good221_checked :
    goodSegmentCheck 77 25 53
      { lower := 36517, upper := 36573, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good222_checked :
    goodSegmentCheck 77 25 53
      { lower := 36574, upper := 36577, witness := RowWitness.topPrime 36571 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good223_checked :
    goodSegmentCheck 77 25 53
      { lower := 36982, upper := 37055, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_good224_checked :
    goodSegmentCheck 77 25 53
      { lower := 37056, upper := 37056, witness := RowWitness.topPrime 37049 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good225_checked :
    goodSegmentCheck 77 25 53
      { lower := 37210, upper := 37255, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good226_checked :
    goodSegmentCheck 77 25 53
      { lower := 37349, upper := 37379, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good227_checked :
    goodSegmentCheck 77 25 53
      { lower := 37553, upper := 37576, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good228_checked :
    goodSegmentCheck 77 25 53
      { lower := 39326, upper := 39399, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good229_checked :
    goodSegmentCheck 77 25 53
      { lower := 39400, upper := 39402, witness := RowWitness.topPrime 39397 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good230_checked :
    goodSegmentCheck 77 25 53
      { lower := 40401, upper := 40404, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good231_checked :
    goodSegmentCheck 77 25 53
      { lower := 40678, upper := 40701, witness := RowWitness.topPrime 40639 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good232_checked :
    goodSegmentCheck 77 25 53
      { lower := 40960, upper := 41007, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good233_checked :
    goodSegmentCheck 77 25 53
      { lower := 41772, upper := 41819, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good234_checked :
    goodSegmentCheck 77 25 53
      { lower := 43750, upper := 43797, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good235_checked :
    goodSegmentCheck 77 25 53
      { lower := 43798, upper := 43816, witness := RowWitness.topPrime 43793 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good236_checked :
    goodSegmentCheck 77 25 53
      { lower := 44217, upper := 44256, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good237_checked :
    goodSegmentCheck 77 25 53
      { lower := 44944, upper := 44966, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good238_checked :
    goodSegmentCheck 77 25 53
      { lower := 48013, upper := 48037, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good239_checked :
    goodSegmentCheck 77 25 53
      { lower := 48734, upper := 48744, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good239_checked
