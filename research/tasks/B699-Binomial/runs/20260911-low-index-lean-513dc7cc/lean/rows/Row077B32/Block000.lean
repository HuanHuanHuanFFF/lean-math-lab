import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

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

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_good240_checked :
    goodSegmentCheck 77 25 53
      { lower := 48778, upper := 48810, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good241_checked :
    goodSegmentCheck 77 25 53
      { lower := 49152, upper := 49206, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good242_checked :
    goodSegmentCheck 77 25 53
      { lower := 53290, upper := 53324, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good243_checked :
    goodSegmentCheck 77 25 53
      { lower := 59582, upper := 59612, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good244_checked :
    goodSegmentCheck 77 25 53
      { lower := 65536, upper := 65597, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good245_checked :
    goodSegmentCheck 77 25 53
      { lower := 65598, upper := 65612, witness := RowWitness.topPrime 65587 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good246_checked :
    goodSegmentCheck 77 25 53
      { lower := 73728, upper := 73771, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good247_checked :
    goodSegmentCheck 77 25 53
      { lower := 85291, upper := 85335, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good248_checked :
    goodSegmentCheck 77 25 53
      { lower := 85336, upper := 85367, witness := RowWitness.topPrime 85333 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good249_checked :
    goodSegmentCheck 77 25 53
      { lower := 85697, upper := 85759, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good250_checked :
    goodSegmentCheck 77 25 53
      { lower := 137842, upper := 137857, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good251_checked :
    goodSegmentCheck 77 25 53
      { lower := 327701, upper := 327756, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good251_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_goods_checked :
    row077.goods.all (goodSegmentCheck row077.height.i row077.height.r row077.height.s) = true := by
  change row077_goods.all (goodSegmentCheck 77 25 53) = true
  simp only [row077_goods, List.all_cons, List.all_nil,
    row077_good000_checked,
    row077_good001_checked,
    row077_good002_checked,
    row077_good003_checked,
    row077_good004_checked,
    row077_good005_checked,
    row077_good006_checked,
    row077_good007_checked,
    row077_good008_checked,
    row077_good009_checked,
    row077_good010_checked,
    row077_good011_checked,
    row077_good012_checked,
    row077_good013_checked,
    row077_good014_checked,
    row077_good015_checked,
    row077_good016_checked,
    row077_good017_checked,
    row077_good018_checked,
    row077_good019_checked,
    row077_good020_checked,
    row077_good021_checked,
    row077_good022_checked,
    row077_good023_checked,
    row077_good024_checked,
    row077_good025_checked,
    row077_good026_checked,
    row077_good027_checked,
    row077_good028_checked,
    row077_good029_checked,
    row077_good030_checked,
    row077_good031_checked,
    row077_good032_checked,
    row077_good033_checked,
    row077_good034_checked,
    row077_good035_checked,
    row077_good036_checked,
    row077_good037_checked,
    row077_good038_checked,
    row077_good039_checked,
    row077_good040_checked,
    row077_good041_checked,
    row077_good042_checked,
    row077_good043_checked,
    row077_good044_checked,
    row077_good045_checked,
    row077_good046_checked,
    row077_good047_checked,
    row077_good048_checked,
    row077_good049_checked,
    row077_good050_checked,
    row077_good051_checked,
    row077_good052_checked,
    row077_good053_checked,
    row077_good054_checked,
    row077_good055_checked,
    row077_good056_checked,
    row077_good057_checked,
    row077_good058_checked,
    row077_good059_checked,
    row077_good060_checked,
    row077_good061_checked,
    row077_good062_checked,
    row077_good063_checked,
    row077_good064_checked,
    row077_good065_checked,
    row077_good066_checked,
    row077_good067_checked,
    row077_good068_checked,
    row077_good069_checked,
    row077_good070_checked,
    row077_good071_checked,
    row077_good072_checked,
    row077_good073_checked,
    row077_good074_checked,
    row077_good075_checked,
    row077_good076_checked,
    row077_good077_checked,
    row077_good078_checked,
    row077_good079_checked,
    row077_good080_checked,
    row077_good081_checked,
    row077_good082_checked,
    row077_good083_checked,
    row077_good084_checked,
    row077_good085_checked,
    row077_good086_checked,
    row077_good087_checked,
    row077_good088_checked,
    row077_good089_checked,
    row077_good090_checked,
    row077_good091_checked,
    row077_good092_checked,
    row077_good093_checked,
    row077_good094_checked,
    row077_good095_checked,
    row077_good096_checked,
    row077_good097_checked,
    row077_good098_checked,
    row077_good099_checked,
    row077_good100_checked,
    row077_good101_checked,
    row077_good102_checked,
    row077_good103_checked,
    row077_good104_checked,
    row077_good105_checked,
    row077_good106_checked,
    row077_good107_checked,
    row077_good108_checked,
    row077_good109_checked,
    row077_good110_checked,
    row077_good111_checked,
    row077_good112_checked,
    row077_good113_checked,
    row077_good114_checked,
    row077_good115_checked,
    row077_good116_checked,
    row077_good117_checked,
    row077_good118_checked,
    row077_good119_checked,
    row077_good120_checked,
    row077_good121_checked,
    row077_good122_checked,
    row077_good123_checked,
    row077_good124_checked,
    row077_good125_checked,
    row077_good126_checked,
    row077_good127_checked,
    row077_good128_checked,
    row077_good129_checked,
    row077_good130_checked,
    row077_good131_checked,
    row077_good132_checked,
    row077_good133_checked,
    row077_good134_checked,
    row077_good135_checked,
    row077_good136_checked,
    row077_good137_checked,
    row077_good138_checked,
    row077_good139_checked,
    row077_good140_checked,
    row077_good141_checked,
    row077_good142_checked,
    row077_good143_checked,
    row077_good144_checked,
    row077_good145_checked,
    row077_good146_checked,
    row077_good147_checked,
    row077_good148_checked,
    row077_good149_checked,
    row077_good150_checked,
    row077_good151_checked,
    row077_good152_checked,
    row077_good153_checked,
    row077_good154_checked,
    row077_good155_checked,
    row077_good156_checked,
    row077_good157_checked,
    row077_good158_checked,
    row077_good159_checked,
    row077_good160_checked,
    row077_good161_checked,
    row077_good162_checked,
    row077_good163_checked,
    row077_good164_checked,
    row077_good165_checked,
    row077_good166_checked,
    row077_good167_checked,
    row077_good168_checked,
    row077_good169_checked,
    row077_good170_checked,
    row077_good171_checked,
    row077_good172_checked,
    row077_good173_checked,
    row077_good174_checked,
    row077_good175_checked,
    row077_good176_checked,
    row077_good177_checked,
    row077_good178_checked,
    row077_good179_checked,
    row077_good180_checked,
    row077_good181_checked,
    row077_good182_checked,
    row077_good183_checked,
    row077_good184_checked,
    row077_good185_checked,
    row077_good186_checked,
    row077_good187_checked,
    row077_good188_checked,
    row077_good189_checked,
    row077_good190_checked,
    row077_good191_checked,
    row077_good192_checked,
    row077_good193_checked,
    row077_good194_checked,
    row077_good195_checked,
    row077_good196_checked,
    row077_good197_checked,
    row077_good198_checked,
    row077_good199_checked,
    row077_good200_checked,
    row077_good201_checked,
    row077_good202_checked,
    row077_good203_checked,
    row077_good204_checked,
    row077_good205_checked,
    row077_good206_checked,
    row077_good207_checked,
    row077_good208_checked,
    row077_good209_checked,
    row077_good210_checked,
    row077_good211_checked,
    row077_good212_checked,
    row077_good213_checked,
    row077_good214_checked,
    row077_good215_checked,
    row077_good216_checked,
    row077_good217_checked,
    row077_good218_checked,
    row077_good219_checked,
    row077_good220_checked,
    row077_good221_checked,
    row077_good222_checked,
    row077_good223_checked,
    row077_good224_checked,
    row077_good225_checked,
    row077_good226_checked,
    row077_good227_checked,
    row077_good228_checked,
    row077_good229_checked,
    row077_good230_checked,
    row077_good231_checked,
    row077_good232_checked,
    row077_good233_checked,
    row077_good234_checked,
    row077_good235_checked,
    row077_good236_checked,
    row077_good237_checked,
    row077_good238_checked,
    row077_good239_checked,
    row077_good240_checked,
    row077_good241_checked,
    row077_good242_checked,
    row077_good243_checked,
    row077_good244_checked,
    row077_good245_checked,
    row077_good246_checked,
    row077_good247_checked,
    row077_good248_checked,
    row077_good249_checked,
    row077_good250_checked,
    row077_good251_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_registered :
    decide (row077.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row077_small_checked :
    coverCheck (2 * row077.height.i + 2) (row077.height.i * (row077.height.i - 1) - 1)
      (row077.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row077_layerCover_checked :
    coverCheck (row077.height.i * (row077.height.i - 1)) (row077.height.n0 - 1)
      (row077.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row077_bounds : List NatInterval :=
  [(156, 227), (228, 303), (304, 369), (370, 443), (444, 519), (520, 585), (586, 653), (654, 729), (730, 803), (804, 873), (874, 939), (940, 1013), (1014, 1089), (1090, 1163), (1164, 1239), (1240, 1313), (1314, 1383), (1384, 1457), (1458, 1529), (1530, 1599), (1600, 1673), (1674, 1745), (1746, 1817), (1818, 1887), (1888, 1955), (1956, 2027), (2028, 2103), (2104, 2175), (2176, 2237), (2238, 2313), (2314, 2387), (2388, 2459), (2460, 2535), (2536, 2607), (2608, 2669), (2670, 2739), (2740, 2807), (2808, 2879), (2880, 2955), (2956, 3029), (3030, 3099), (3100, 3165), (3166, 3239), (3240, 3305), (3306, 3377), (3378, 3449), (3450, 3525), (3526, 3593), (3594, 3669), (3670, 3735), (3736, 3809), (3810, 3879), (3880, 3953), (3954, 4023), (4024, 4097), (4098, 4169), (4170, 4235), (4236, 4307), (4308, 4373), (4374, 4449), (4450, 4523), (4524, 4599), (4600, 4673), (4674, 4749), (4750, 4809), (4810, 4877), (4878, 4953), (4954, 5027), (5028, 5099), (5100, 5175), (5176, 5247), (5248, 5313), (5314, 5385), (5386, 5457), (5458, 5525), (5526, 5597), (5598, 5667), (5668, 5735), (5736, 5793), (5794, 5867), (5868, 5943), (5944, 5963), (6075, 6149), (6150, 6213), (6318, 6326), (6348, 6419), (6420, 6434), (6561, 6574), (6591, 6657), (6658, 6729), (6730, 6795), (6796, 6804), (6845, 6917), (6918, 6993), (6994, 7012), (7203, 7269), (7270, 7301), (7406, 7469), (7470, 7535), (7536, 7605), (7606, 7645), (7688, 7756), (7942, 8011), (8092, 8095), (8125, 8168), (8192, 8201), (8214, 8268), (8405, 8465), (8466, 8503), (8664, 8739), (8740, 8740), (8748, 8823), (8824, 8826), (8836, 8864), (8993, 9047), (9048, 9069), (9245, 9317), (9318, 9321), (9386, 9451), (9522, 9553), (9583, 9598), (9604, 9677), (9678, 9680), (9747, 9804), (10051, 10076), (10082, 10155), (10156, 10168), (10240, 10282), (10469, 10519), (10580, 10643), (10644, 10656), (10658, 10701), (10935, 10985), (10986, 11028), (11045, 11061), (11094, 11169), (11170, 11185), (11236, 11239), (11250, 11319), (11320, 11326), (11664, 11714), (11774, 11819), (11820, 11850), (12321, 12364), (12393, 12397), (12500, 12569), (13125, 13197), (13198, 13201), (13225, 13295), (13296, 13301), (13312, 13330), (13454, 13527), (13528, 13532), (13718, 13787), (13788, 13794), (13924, 13927), (14336, 14373), (14375, 14412), (14415, 14451), (14641, 14656), (14792, 14815), (15059, 15076), (15123, 15197), (15198, 15205), (15360, 15435), (15436, 15452), (15987, 16049), (16050, 16063), (16384, 16413), (16428, 16460), (16807, 16863), (16864, 16896), (17408, 17477), (17478, 17481), (17672, 17737), (18259, 18301), (18490, 18557), (18558, 18567), (19220, 19242), (19663, 19737), (19738, 19739), (20172, 20237), (20238, 20257), (20535, 20556), (20577, 20611), (21870, 21939), (21940, 21951), (21970, 21980), (22103, 22166), (22472, 22521), (22528, 22548), (24057, 24113), (24334, 24405), (24406, 24443), (24576, 24647), (24648, 24652), (25215, 25265), (25266, 25291), (26047, 26087), (26645, 26700), (26934, 26972), (27436, 27456), (28125, 28166), (28577, 28637), (28717, 28787), (28788, 28793), (29791, 29844), (30258, 30322), (30758, 30796), (30926, 30975), (31433, 31473), (31474, 31499), (31974, 32015), (32805, 32844), (33620, 33690), (34391, 34451), (34816, 34883), (34884, 34886), (35152, 35207), (35301, 35367), (35368, 35377), (36517, 36573), (36574, 36577), (36982, 37055), (37056, 37056), (37210, 37255), (37349, 37379), (37553, 37576), (39326, 39399), (39400, 39402), (40401, 40404), (40678, 40701), (40960, 41007), (41772, 41819), (43750, 43797), (43798, 43816), (44217, 44256), (44944, 44966), (48013, 48037), (48734, 48744), (48778, 48810), (49152, 49206), (53290, 53324), (59582, 59612), (65536, 65597), (65598, 65612), (73728, 73771), (85291, 85335), (85336, 85367), (85697, 85759), (137842, 137857), (327701, 327756)]

theorem row077_bounds_eq : row077.goods.map goodSegmentBounds = row077_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row077_layer000_intervals : List ColouredInterval :=
  [(2, 5888, 5964), (2, 6144, 6220), (2, 6400, 6476), (2, 6656, 6732), (2, 6912, 6988), (2, 7168, 7244), (2, 7424, 7500), (2, 6144, 6220), (2, 6656, 6732), (2, 7168, 7244), (2, 7680, 7756), (2, 8192, 8268), (2, 8704, 8780), (2, 9216, 9292), (2, 9728, 9804), (2, 10240, 10316), (2, 10752, 10828), (2, 11264, 11340), (2, 6144, 6220), (2, 7168, 7244), (2, 8192, 8268), (2, 9216, 9292), (2, 10240, 10316), (2, 11264, 11340), (2, 6144, 6220), (2, 8192, 8268), (2, 10240, 10316), (2, 8192, 8268), (2, 8192, 8268), (3, 5852, 5908), (3, 6075, 6151), (3, 6318, 6394), (3, 6561, 6637), (3, 6804, 6880), (3, 7047, 7123), (3, 5852, 5908), (3, 6561, 6637), (3, 7290, 7366), (3, 8019, 8095), (3, 8748, 8824), (3, 9477, 9553), (3, 10206, 10282), (3, 10935, 11011), (3, 11664, 11703), (3, 6561, 6637), (3, 8748, 8824), (3, 10935, 11011), (3, 6561, 6637), (5, 6250, 6326), (5, 6875, 6951), (5, 7500, 7576), (5, 8125, 8201), (5, 8750, 8826), (5, 9375, 9451), (5, 10000, 10076), (5, 10625, 10701), (5, 11250, 11326), (5, 6250, 6326), (5, 9375, 9451), (7, 7203, 7279), (7, 9604, 9680), (13, 6591, 6667), (13, 8788, 8864), (13, 10985, 11061), (17, 5852, 5856), (17, 6069, 6145), (17, 6358, 6434), (17, 6647, 6723), (17, 6936, 7012), (17, 7225, 7301), (17, 7514, 7590), (17, 7803, 7879), (17, 8092, 8168), (17, 8381, 8457), (17, 9826, 9902), (19, 5852, 5852), (19, 6137, 6213), (19, 6498, 6574), (19, 6859, 6935), (19, 7220, 7296), (19, 7581, 7657), (19, 7942, 8018), (19, 8303, 8379), (19, 8664, 8740), (19, 9025, 9101), (19, 9386, 9462), (19, 9747, 9823), (19, 10108, 10184), (19, 10469, 10545), (19, 6859, 6935), (23, 5852, 5895), (23, 6348, 6424), (23, 6877, 6953), (23, 7406, 7482), (23, 7935, 8011), (23, 8464, 8540), (23, 8993, 9069), (23, 9522, 9598), (23, 10051, 10127), (23, 10580, 10656), (23, 11109, 11185), (23, 11638, 11703), (29, 5887, 5963), (29, 6728, 6804), (29, 7569, 7645), (29, 8410, 8486), (29, 9251, 9327), (29, 10092, 10168), (29, 10933, 11009), (31, 6727, 6803), (31, 7688, 7764), (31, 8649, 8725), (31, 9610, 9686), (31, 10571, 10647), (31, 11532, 11608), (37, 6845, 6921), (37, 8214, 8290), (37, 9583, 9659), (37, 10952, 11028), (41, 6724, 6800), (41, 8405, 8481), (41, 10086, 10162), (43, 7396, 7472), (43, 9245, 9321), (43, 11094, 11170), (47, 6627, 6703), (47, 8836, 8912), (47, 11045, 11121), (53, 8427, 8503), (53, 11236, 11312), (59, 6962, 7038), (59, 10443, 10519), (61, 7442, 7518), (61, 11163, 11239), (67, 8978, 9054), (71, 10082, 10158), (73, 10658, 10734)]

def row077_layer000_block000 : List ColouredInterval :=
  [(2, 5888, 5964), (2, 6144, 6220), (2, 6400, 6476), (2, 6656, 6732), (2, 6912, 6988), (2, 7168, 7244), (2, 7424, 7500), (2, 6144, 6220), (2, 6656, 6732), (2, 7168, 7244), (2, 7680, 7756), (2, 8192, 8268), (2, 8704, 8780), (2, 9216, 9292)]

def row077_layer000_block001 : List ColouredInterval :=
  [(2, 9728, 9804), (2, 10240, 10316), (2, 10752, 10828), (2, 11264, 11340), (2, 6144, 6220), (2, 7168, 7244), (2, 8192, 8268), (2, 9216, 9292), (2, 10240, 10316), (2, 11264, 11340), (2, 6144, 6220), (2, 8192, 8268), (2, 10240, 10316), (2, 8192, 8268)]

def row077_layer000_block002 : List ColouredInterval :=
  [(2, 8192, 8268), (3, 5852, 5908), (3, 6075, 6151), (3, 6318, 6394), (3, 6561, 6637), (3, 6804, 6880), (3, 7047, 7123), (3, 5852, 5908), (3, 6561, 6637), (3, 7290, 7366), (3, 8019, 8095), (3, 8748, 8824), (3, 9477, 9553), (3, 10206, 10282)]

def row077_layer000_block003 : List ColouredInterval :=
  [(3, 10935, 11011), (3, 11664, 11703), (3, 6561, 6637), (3, 8748, 8824), (3, 10935, 11011), (3, 6561, 6637), (5, 6250, 6326), (5, 6875, 6951), (5, 7500, 7576), (5, 8125, 8201), (5, 8750, 8826), (5, 9375, 9451), (5, 10000, 10076), (5, 10625, 10701)]

def row077_layer000_block004 : List ColouredInterval :=
  [(5, 11250, 11326), (5, 6250, 6326), (5, 9375, 9451), (7, 7203, 7279), (7, 9604, 9680), (13, 6591, 6667), (13, 8788, 8864), (13, 10985, 11061), (17, 5852, 5856), (17, 6069, 6145), (17, 6358, 6434), (17, 6647, 6723), (17, 6936, 7012), (17, 7225, 7301)]

def row077_layer000_block005 : List ColouredInterval :=
  [(17, 7514, 7590), (17, 7803, 7879), (17, 8092, 8168), (17, 8381, 8457), (17, 9826, 9902), (19, 5852, 5852), (19, 6137, 6213), (19, 6498, 6574), (19, 6859, 6935), (19, 7220, 7296), (19, 7581, 7657), (19, 7942, 8018), (19, 8303, 8379), (19, 8664, 8740)]

def row077_layer000_block006 : List ColouredInterval :=
  [(19, 9025, 9101), (19, 9386, 9462), (19, 9747, 9823), (19, 10108, 10184), (19, 10469, 10545), (19, 6859, 6935), (23, 5852, 5895), (23, 6348, 6424), (23, 6877, 6953), (23, 7406, 7482), (23, 7935, 8011), (23, 8464, 8540), (23, 8993, 9069), (23, 9522, 9598)]

def row077_layer000_block007 : List ColouredInterval :=
  [(23, 10051, 10127), (23, 10580, 10656), (23, 11109, 11185), (23, 11638, 11703), (29, 5887, 5963), (29, 6728, 6804), (29, 7569, 7645), (29, 8410, 8486), (29, 9251, 9327), (29, 10092, 10168), (29, 10933, 11009), (31, 6727, 6803), (31, 7688, 7764), (31, 8649, 8725)]

def row077_layer000_block008 : List ColouredInterval :=
  [(31, 9610, 9686), (31, 10571, 10647), (31, 11532, 11608), (37, 6845, 6921), (37, 8214, 8290), (37, 9583, 9659), (37, 10952, 11028), (41, 6724, 6800), (41, 8405, 8481), (41, 10086, 10162), (43, 7396, 7472), (43, 9245, 9321), (43, 11094, 11170), (47, 6627, 6703)]

def row077_layer000_block009 : List ColouredInterval :=
  [(47, 8836, 8912), (47, 11045, 11121), (53, 8427, 8503), (53, 11236, 11312), (59, 6962, 7038), (59, 10443, 10519), (61, 7442, 7518), (61, 11163, 11239), (67, 8978, 9054), (71, 10082, 10158), (73, 10658, 10734)]

def row077_layer000_chunks : List (List ColouredInterval) :=
  [row077_layer000_block000, row077_layer000_block001, row077_layer000_block002, row077_layer000_block003, row077_layer000_block004, row077_layer000_block005, row077_layer000_block006, row077_layer000_block007, row077_layer000_block008, row077_layer000_block009]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_arithmetic : LayerArithmeticValid row077.height { lower := 5852, upper := 11704, M := 29 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_enumeration :
    activePowerIntervalList 77 29 5852 11704 = row077_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_pairs000 :
    row077_layer000_block000.all (fun I => row077_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_pairs001 :
    row077_layer000_block001.all (fun I => row077_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_pairs002 :
    row077_layer000_block002.all (fun I => row077_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_pairs003 :
    row077_layer000_block003.all (fun I => row077_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_pairs004 :
    row077_layer000_block004.all (fun I => row077_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_pairs005 :
    row077_layer000_block005.all (fun I => row077_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_pairs006 :
    row077_layer000_block006.all (fun I => row077_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_pairs007 :
    row077_layer000_block007.all (fun I => row077_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_pairs008 :
    row077_layer000_block008.all (fun I => row077_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_pairs008
