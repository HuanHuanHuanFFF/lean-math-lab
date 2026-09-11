import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row085_height : HeightCertificateDatum := { i := 85, r := 28, s := 59, n0Power10 := 11 }

def row085_goods : List GoodSegment := [
  { lower := 172, upper := 251, witness := RowWitness.topPrime 167 },
  { lower := 252, upper := 335, witness := RowWitness.topPrime 251 },
  { lower := 336, upper := 415, witness := RowWitness.topPrime 331 },
  { lower := 416, upper := 493, witness := RowWitness.topPrime 409 },
  { lower := 494, upper := 575, witness := RowWitness.topPrime 491 },
  { lower := 576, upper := 655, witness := RowWitness.topPrime 571 },
  { lower := 656, upper := 737, witness := RowWitness.topPrime 653 },
  { lower := 738, upper := 817, witness := RowWitness.topPrime 733 },
  { lower := 818, upper := 895, witness := RowWitness.topPrime 811 },
  { lower := 896, upper := 971, witness := RowWitness.topPrime 887 },
  { lower := 972, upper := 1055, witness := RowWitness.topPrime 971 },
  { lower := 1056, upper := 1135, witness := RowWitness.topPrime 1051 },
  { lower := 1136, upper := 1213, witness := RowWitness.topPrime 1129 },
  { lower := 1214, upper := 1297, witness := RowWitness.topPrime 1213 },
  { lower := 1298, upper := 1381, witness := RowWitness.topPrime 1297 },
  { lower := 1382, upper := 1465, witness := RowWitness.topPrime 1381 },
  { lower := 1466, upper := 1543, witness := RowWitness.topPrime 1459 },
  { lower := 1544, upper := 1627, witness := RowWitness.topPrime 1543 },
  { lower := 1628, upper := 1711, witness := RowWitness.topPrime 1627 },
  { lower := 1712, upper := 1793, witness := RowWitness.topPrime 1709 },
  { lower := 1794, upper := 1873, witness := RowWitness.topPrime 1789 },
  { lower := 1874, upper := 1957, witness := RowWitness.topPrime 1873 },
  { lower := 1958, upper := 2035, witness := RowWitness.topPrime 1951 },
  { lower := 2036, upper := 2113, witness := RowWitness.topPrime 2029 },
  { lower := 2114, upper := 2197, witness := RowWitness.topPrime 2113 },
  { lower := 2198, upper := 2263, witness := RowWitness.topPrime 2179 },
  { lower := 2264, upper := 2335, witness := RowWitness.topPrime 2251 },
  { lower := 2336, upper := 2417, witness := RowWitness.topPrime 2333 },
  { lower := 2418, upper := 2501, witness := RowWitness.topPrime 2417 },
  { lower := 2502, upper := 2561, witness := RowWitness.topPrime 2477 },
  { lower := 2562, upper := 2641, witness := RowWitness.topPrime 2557 },
  { lower := 2642, upper := 2717, witness := RowWitness.topPrime 2633 },
  { lower := 2718, upper := 2797, witness := RowWitness.topPrime 2713 },
  { lower := 2798, upper := 2881, witness := RowWitness.topPrime 2797 },
  { lower := 2882, upper := 2963, witness := RowWitness.topPrime 2879 },
  { lower := 2964, upper := 3047, witness := RowWitness.topPrime 2963 },
  { lower := 3048, upper := 3125, witness := RowWitness.topPrime 3041 },
  { lower := 3126, upper := 3205, witness := RowWitness.topPrime 3121 },
  { lower := 3206, upper := 3287, witness := RowWitness.topPrime 3203 },
  { lower := 3288, upper := 3355, witness := RowWitness.topPrime 3271 },
  { lower := 3356, upper := 3431, witness := RowWitness.topPrime 3347 },
  { lower := 3432, upper := 3497, witness := RowWitness.topPrime 3413 },
  { lower := 3498, upper := 3575, witness := RowWitness.topPrime 3491 },
  { lower := 3576, upper := 3655, witness := RowWitness.topPrime 3571 },
  { lower := 3656, upper := 3727, witness := RowWitness.topPrime 3643 },
  { lower := 3728, upper := 3811, witness := RowWitness.topPrime 3727 },
  { lower := 3812, upper := 3887, witness := RowWitness.topPrime 3803 },
  { lower := 3888, upper := 3965, witness := RowWitness.topPrime 3881 },
  { lower := 3966, upper := 4031, witness := RowWitness.topPrime 3947 },
  { lower := 4032, upper := 4111, witness := RowWitness.topPrime 4027 },
  { lower := 4112, upper := 4195, witness := RowWitness.topPrime 4111 },
  { lower := 4196, upper := 4261, witness := RowWitness.topPrime 4177 },
  { lower := 4262, upper := 4345, witness := RowWitness.topPrime 4261 },
  { lower := 4346, upper := 4423, witness := RowWitness.topPrime 4339 },
  { lower := 4424, upper := 4507, witness := RowWitness.topPrime 4423 },
  { lower := 4508, upper := 4591, witness := RowWitness.topPrime 4507 },
  { lower := 4592, upper := 4675, witness := RowWitness.topPrime 4591 },
  { lower := 4676, upper := 4757, witness := RowWitness.topPrime 4673 },
  { lower := 4758, upper := 4835, witness := RowWitness.topPrime 4751 },
  { lower := 4836, upper := 4915, witness := RowWitness.topPrime 4831 },
  { lower := 4916, upper := 4993, witness := RowWitness.topPrime 4909 },
  { lower := 4994, upper := 5077, witness := RowWitness.topPrime 4993 },
  { lower := 5078, upper := 5161, witness := RowWitness.topPrime 5077 },
  { lower := 5162, upper := 5237, witness := RowWitness.topPrime 5153 },
  { lower := 5238, upper := 5321, witness := RowWitness.topPrime 5237 },
  { lower := 5322, upper := 5393, witness := RowWitness.topPrime 5309 },
  { lower := 5394, upper := 5477, witness := RowWitness.topPrime 5393 },
  { lower := 5478, upper := 5561, witness := RowWitness.topPrime 5477 },
  { lower := 5562, upper := 5641, witness := RowWitness.topPrime 5557 },
  { lower := 5642, upper := 5725, witness := RowWitness.topPrime 5641 },
  { lower := 5726, upper := 5801, witness := RowWitness.topPrime 5717 },
  { lower := 5802, upper := 5885, witness := RowWitness.topPrime 5801 },
  { lower := 5886, upper := 5965, witness := RowWitness.topPrime 5881 },
  { lower := 5966, upper := 6037, witness := RowWitness.topPrime 5953 },
  { lower := 6038, upper := 6121, witness := RowWitness.topPrime 6037 },
  { lower := 6122, upper := 6205, witness := RowWitness.topPrime 6121 },
  { lower := 6206, upper := 6287, witness := RowWitness.topPrime 6203 },
  { lower := 6288, upper := 6371, witness := RowWitness.topPrime 6287 },
  { lower := 6372, upper := 6451, witness := RowWitness.topPrime 6367 },
  { lower := 6452, upper := 6535, witness := RowWitness.topPrime 6451 },
  { lower := 6536, upper := 6613, witness := RowWitness.topPrime 6529 },
  { lower := 6614, upper := 6691, witness := RowWitness.topPrime 6607 },
  { lower := 6692, upper := 6775, witness := RowWitness.topPrime 6691 },
  { lower := 6776, upper := 6847, witness := RowWitness.topPrime 6763 },
  { lower := 6848, upper := 6925, witness := RowWitness.topPrime 6841 },
  { lower := 6926, upper := 7001, witness := RowWitness.topPrime 6917 },
  { lower := 7002, upper := 7085, witness := RowWitness.topPrime 7001 },
  { lower := 7086, upper := 7139, witness := RowWitness.topPrime 7079 },
  { lower := 7203, upper := 7277, witness := RowWitness.topPrime 7193 },
  { lower := 7278, upper := 7287, witness := RowWitness.topPrime 7253 },
  { lower := 7290, upper := 7304, witness := RowWitness.topPrime 7283 },
  { lower := 7406, upper := 7477, witness := RowWitness.topPrime 7393 },
  { lower := 7478, upper := 7508, witness := RowWitness.topPrime 7477 },
  { lower := 7569, upper := 7645, witness := RowWitness.topPrime 7561 },
  { lower := 7646, upper := 7653, witness := RowWitness.topPrime 7643 },
  { lower := 7688, upper := 7764, witness := RowWitness.topPrime 7687 },
  { lower := 7935, upper := 8017, witness := RowWitness.topPrime 7933 },
  { lower := 8018, upper := 8070, witness := RowWitness.topPrime 8017 },
  { lower := 8214, upper := 8293, witness := RowWitness.topPrime 8209 },
  { lower := 8294, upper := 8298, witness := RowWitness.topPrime 8293 },
  { lower := 8303, upper := 8316, witness := RowWitness.topPrime 8297 },
  { lower := 8410, upper := 8473, witness := RowWitness.topPrime 8389 },
  { lower := 8474, upper := 8511, witness := RowWitness.topPrime 8467 },
  { lower := 8649, upper := 8659, witness := RowWitness.topPrime 8647 },
  { lower := 8664, upper := 8747, witness := RowWitness.topPrime 8663 },
  { lower := 8748, upper := 8831, witness := RowWitness.topPrime 8747 },
  { lower := 8832, upper := 8832, witness := RowWitness.topPrime 8831 },
  { lower := 8836, upper := 8872, witness := RowWitness.topPrime 8831 },
  { lower := 8918, upper := 8920, witness := RowWitness.topPrime 8893 },
  { lower := 8978, upper := 9055, witness := RowWitness.topPrime 8971 },
  { lower := 9056, upper := 9077, witness := RowWitness.topPrime 9049 },
  { lower := 9245, upper := 9325, witness := RowWitness.topPrime 9241 },
  { lower := 9326, upper := 9345, witness := RowWitness.topPrime 9323 },
  { lower := 9375, upper := 9455, witness := RowWitness.topPrime 9371 },
  { lower := 9456, upper := 9459, witness := RowWitness.topPrime 9439 },
  { lower := 9522, upper := 9561, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9635, witness := RowWitness.topPrime 9551 },
  { lower := 9636, upper := 9688, witness := RowWitness.topPrime 9631 },
  { lower := 9747, upper := 9812, witness := RowWitness.topPrime 9743 },
  { lower := 10082, upper := 10163, witness := RowWitness.topPrime 10079 },
  { lower := 10164, upper := 10176, witness := RowWitness.topPrime 10163 },
  { lower := 10240, upper := 10290, witness := RowWitness.topPrime 10223 },
  { lower := 10469, upper := 10527, witness := RowWitness.topPrime 10463 },
  { lower := 10580, upper := 10651, witness := RowWitness.topPrime 10567 },
  { lower := 10652, upper := 10732, witness := RowWitness.topPrime 10651 },
  { lower := 10935, upper := 10993, witness := RowWitness.topPrime 10909 },
  { lower := 10994, upper := 11036, witness := RowWitness.topPrime 10993 },
  { lower := 11045, upper := 11069, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11177, witness := RowWitness.topPrime 11093 },
  { lower := 11178, upper := 11193, witness := RowWitness.topPrime 11177 },
  { lower := 11236, upper := 11247, witness := RowWitness.topPrime 11213 },
  { lower := 11264, upper := 11320, witness := RowWitness.topPrime 11261 },
  { lower := 11664, upper := 11722, witness := RowWitness.topPrime 11657 },
  { lower := 11774, upper := 11827, witness := RowWitness.topPrime 11743 },
  { lower := 11828, upper := 11858, witness := RowWitness.topPrime 11827 },
  { lower := 12005, upper := 12063, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12372, witness := RowWitness.topPrime 12301 },
  { lower := 12393, upper := 12405, witness := RowWitness.topPrime 12391 },
  { lower := 12493, upper := 12575, witness := RowWitness.topPrime 12491 },
  { lower := 12576, upper := 12577, witness := RowWitness.topPrime 12569 },
  { lower := 12696, upper := 12699, witness := RowWitness.topPrime 12689 },
  { lower := 13182, upper := 13206, witness := RowWitness.topPrime 13177 },
  { lower := 13225, upper := 13303, witness := RowWitness.topPrime 13219 },
  { lower := 13304, upper := 13381, witness := RowWitness.topPrime 13297 },
  { lower := 13382, upper := 13394, witness := RowWitness.topPrime 13381 },
  { lower := 13454, upper := 13535, witness := RowWitness.topPrime 13451 },
  { lower := 13536, upper := 13540, witness := RowWitness.topPrime 13523 },
  { lower := 13718, upper := 13795, witness := RowWitness.topPrime 13711 },
  { lower := 13796, upper := 13873, witness := RowWitness.topPrime 13789 },
  { lower := 13874, upper := 13908, witness := RowWitness.topPrime 13873 },
  { lower := 13924, upper := 13935, witness := RowWitness.topPrime 13921 },
  { lower := 14336, upper := 14381, witness := RowWitness.topPrime 14327 },
  { lower := 14406, upper := 14485, witness := RowWitness.topPrime 14401 },
  { lower := 14486, upper := 14490, witness := RowWitness.topPrime 14479 },
  { lower := 14641, upper := 14664, witness := RowWitness.topPrime 14639 },
  { lower := 15123, upper := 15205, witness := RowWitness.topPrime 15121 },
  { lower := 15206, upper := 15213, witness := RowWitness.topPrime 15199 },
  { lower := 15360, upper := 15443, witness := RowWitness.topPrime 15359 },
  { lower := 15444, upper := 15460, witness := RowWitness.topPrime 15443 },
  { lower := 15463, upper := 15463, witness := RowWitness.topPrime 15461 },
  { lower := 15979, upper := 16057, witness := RowWitness.topPrime 15973 },
  { lower := 16058, upper := 16071, witness := RowWitness.topPrime 16057 },
  { lower := 16384, upper := 16421, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16468, witness := RowWitness.topPrime 16427 },
  { lower := 16807, upper := 16871, witness := RowWitness.topPrime 16787 },
  { lower := 16872, upper := 16904, witness := RowWitness.topPrime 16871 },
  { lower := 17303, upper := 17382, witness := RowWitness.topPrime 17299 },
  { lower := 17408, upper := 17485, witness := RowWitness.topPrime 17401 },
  { lower := 17486, upper := 17489, witness := RowWitness.topPrime 17483 },
  { lower := 17576, upper := 17580, witness := RowWitness.topPrime 17573 },
  { lower := 17672, upper := 17745, witness := RowWitness.topPrime 17669 },
  { lower := 18259, upper := 18309, witness := RowWitness.topPrime 18257 },
  { lower := 18490, upper := 18565, witness := RowWitness.topPrime 18481 },
  { lower := 18566, upper := 18575, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18689, witness := RowWitness.topPrime 18617 },
  { lower := 19208, upper := 19291, witness := RowWitness.topPrime 19207 },
  { lower := 19292, upper := 19292, witness := RowWitness.topPrime 19289 },
  { lower := 19683, upper := 19747, witness := RowWitness.topPrime 19681 },
  { lower := 19965, upper := 19965, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20245, witness := RowWitness.topPrime 20161 },
  { lower := 20246, upper := 20265, witness := RowWitness.topPrime 20233 },
  { lower := 20535, upper := 20564, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20619, witness := RowWitness.topPrime 20563 },
  { lower := 21316, upper := 21380, witness := RowWitness.topPrime 21313 },
  { lower := 21870, upper := 21947, witness := RowWitness.topPrime 21863 },
  { lower := 21948, upper := 21954, witness := RowWitness.topPrime 21943 },
  { lower := 21970, upper := 21988, witness := RowWitness.topPrime 21961 },
  { lower := 22103, upper := 22174, witness := RowWitness.topPrime 22093 },
  { lower := 22472, upper := 22553, witness := RowWitness.topPrime 22469 },
  { lower := 22554, upper := 22556, witness := RowWitness.topPrime 22549 },
  { lower := 23552, upper := 23618, witness := RowWitness.topPrime 23549 },
  { lower := 24010, upper := 24091, witness := RowWitness.topPrime 24007 },
  { lower := 24092, upper := 24121, witness := RowWitness.topPrime 24091 },
  { lower := 24334, upper := 24413, witness := RowWitness.topPrime 24329 },
  { lower := 24414, upper := 24451, witness := RowWitness.topPrime 24413 },
  { lower := 24642, upper := 24660, witness := RowWitness.topPrime 24631 },
  { lower := 25215, upper := 25273, witness := RowWitness.topPrime 25189 },
  { lower := 25274, upper := 25345, witness := RowWitness.topPrime 25261 },
  { lower := 25346, upper := 25365, witness := RowWitness.topPrime 25343 },
  { lower := 26047, upper := 26095, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26448, witness := RowWitness.topPrime 26407 },
  { lower := 26624, upper := 26681, witness := RowWitness.topPrime 26597 },
  { lower := 26682, upper := 26708, witness := RowWitness.topPrime 26681 },
  { lower := 26934, upper := 26980, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27464, witness := RowWitness.topPrime 27431 },
  { lower := 28577, upper := 28645, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28795, witness := RowWitness.topPrime 28711 },
  { lower := 28796, upper := 28801, witness := RowWitness.topPrime 28793 },
  { lower := 28812, upper := 28833, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29852, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30330, witness := RowWitness.topPrime 30253 },
  { lower := 30758, upper := 30804, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 30983, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31277, witness := RowWitness.topPrime 31193 },
  { lower := 31278, upper := 31297, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31334, witness := RowWitness.topPrime 31327 },
  { lower := 31433, upper := 31481, witness := RowWitness.topPrime 31397 },
  { lower := 31482, upper := 31507, witness := RowWitness.topPrime 31481 },
  { lower := 31974, upper := 32023, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32852, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33698, witness := RowWitness.topPrime 33619 },
  { lower := 34816, upper := 34891, witness := RowWitness.topPrime 34807 },
  { lower := 34892, upper := 34894, witness := RowWitness.topPrime 34883 },
  { lower := 35152, upper := 35215, witness := RowWitness.topPrime 35149 },
  { lower := 35301, upper := 35375, witness := RowWitness.topPrime 35291 },
  { lower := 35376, upper := 35385, witness := RowWitness.topPrime 35363 },
  { lower := 36517, upper := 36581, witness := RowWitness.topPrime 36497 },
  { lower := 36582, upper := 36585, witness := RowWitness.topPrime 36571 },
  { lower := 36982, upper := 37063, witness := RowWitness.topPrime 36979 },
  { lower := 37064, upper := 37064, witness := RowWitness.topPrime 37061 },
  { lower := 37210, upper := 37263, witness := RowWitness.topPrime 37201 },
  { lower := 37349, upper := 37387, witness := RowWitness.topPrime 37339 },
  { lower := 38912, upper := 38913, witness := RowWitness.topPrime 38903 },
  { lower := 39366, upper := 39410, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40412, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41015, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41827, witness := RowWitness.topPrime 41771 },
  { lower := 43740, upper := 43771, witness := RowWitness.topPrime 43721 },
  { lower := 43940, upper := 44007, witness := RowWitness.topPrime 43933 },
  { lower := 44944, upper := 44974, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48065, witness := RowWitness.topPrime 47981 },
  { lower := 48066, upper := 48097, witness := RowWitness.topPrime 48049 },
  { lower := 48373, upper := 48418, witness := RowWitness.topPrime 48371 },
  { lower := 48668, upper := 48682, witness := RowWitness.topPrime 48661 },
  { lower := 48734, upper := 48752, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48818, witness := RowWitness.topPrime 48767 },
  { lower := 50421, upper := 50494, witness := RowWitness.topPrime 50417 },
  { lower := 53290, upper := 53332, witness := RowWitness.topPrime 53281 },
  { lower := 53371, upper := 53374, witness := RowWitness.topPrime 53359 },
  { lower := 56180, upper := 56253, witness := RowWitness.topPrime 56179 },
  { lower := 58619, upper := 58648, witness := RowWitness.topPrime 58613 },
  { lower := 59582, upper := 59620, witness := RowWitness.topPrime 59581 },
  { lower := 65536, upper := 65605, witness := RowWitness.topPrime 65521 },
  { lower := 65606, upper := 65620, witness := RowWitness.topPrime 65599 },
  { lower := 68651, upper := 68674, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68974, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73251, witness := RowWitness.topPrime 73189 },
  { lower := 85291, upper := 85343, witness := RowWitness.topPrime 85259 },
  { lower := 85344, upper := 85375, witness := RowWitness.topPrime 85333 },
  { lower := 85697, upper := 85767, witness := RowWitness.topPrime 85691 },
  { lower := 101306, upper := 101335, witness := RowWitness.topPrime 101293 },
  { lower := 137842, upper := 137865, witness := RowWitness.topPrime 137831 },
  { lower := 146410, upper := 146418, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 148961, witness := RowWitness.topPrime 148949 },
  { lower := 327701, upper := 327764, witness := RowWitness.topPrime 327689 }
]

def row085_layers : List CoverLayer := [
  { lower := 7140, upper := 14280, M := 29 },
  { lower := 14280, upper := 28560, M := 25 },
  { lower := 28560, upper := 57120, M := 22 },
  { lower := 57120, upper := 114240, M := 19 },
  { lower := 114240, upper := 228480, M := 16 },
  { lower := 228480, upper := 456960, M := 14 },
  { lower := 456960, upper := 913920, M := 12 },
  { lower := 913920, upper := 1827840, M := 10 },
  { lower := 1827840, upper := 3655680, M := 9 },
  { lower := 3655680, upper := 7311360, M := 8 },
  { lower := 7311360, upper := 14622720, M := 7 },
  { lower := 14622720, upper := 29245440, M := 6 },
  { lower := 29245440, upper := 58490880, M := 5 },
  { lower := 58490880, upper := 116981760, M := 4 },
  { lower := 116981760, upper := 233963520, M := 4 },
  { lower := 233963520, upper := 467927040, M := 3 },
  { lower := 467927040, upper := 935854080, M := 3 },
  { lower := 935854080, upper := 1871708160, M := 3 },
  { lower := 1871708160, upper := 3743416320, M := 2 },
  { lower := 3743416320, upper := 7486832640, M := 2 },
  { lower := 7486832640, upper := 14973665280, M := 2 },
  { lower := 14973665280, upper := 29947330560, M := 2 },
  { lower := 29947330560, upper := 59894661120, M := 1 },
  { lower := 59894661120, upper := 100000000000, M := 1 }
]

def row085 : FiniteCoverRow := {
  height := row085_height,
  goods := row085_goods,
  layers := row085_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_good000_checked :
    goodSegmentCheck 85 28 59
      { lower := 172, upper := 251, witness := RowWitness.topPrime 167 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good001_checked :
    goodSegmentCheck 85 28 59
      { lower := 252, upper := 335, witness := RowWitness.topPrime 251 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good002_checked :
    goodSegmentCheck 85 28 59
      { lower := 336, upper := 415, witness := RowWitness.topPrime 331 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good003_checked :
    goodSegmentCheck 85 28 59
      { lower := 416, upper := 493, witness := RowWitness.topPrime 409 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good004_checked :
    goodSegmentCheck 85 28 59
      { lower := 494, upper := 575, witness := RowWitness.topPrime 491 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good005_checked :
    goodSegmentCheck 85 28 59
      { lower := 576, upper := 655, witness := RowWitness.topPrime 571 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good006_checked :
    goodSegmentCheck 85 28 59
      { lower := 656, upper := 737, witness := RowWitness.topPrime 653 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good007_checked :
    goodSegmentCheck 85 28 59
      { lower := 738, upper := 817, witness := RowWitness.topPrime 733 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good008_checked :
    goodSegmentCheck 85 28 59
      { lower := 818, upper := 895, witness := RowWitness.topPrime 811 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good009_checked :
    goodSegmentCheck 85 28 59
      { lower := 896, upper := 971, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good010_checked :
    goodSegmentCheck 85 28 59
      { lower := 972, upper := 1055, witness := RowWitness.topPrime 971 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good011_checked :
    goodSegmentCheck 85 28 59
      { lower := 1056, upper := 1135, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good012_checked :
    goodSegmentCheck 85 28 59
      { lower := 1136, upper := 1213, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good013_checked :
    goodSegmentCheck 85 28 59
      { lower := 1214, upper := 1297, witness := RowWitness.topPrime 1213 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good014_checked :
    goodSegmentCheck 85 28 59
      { lower := 1298, upper := 1381, witness := RowWitness.topPrime 1297 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good015_checked :
    goodSegmentCheck 85 28 59
      { lower := 1382, upper := 1465, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_good016_checked :
    goodSegmentCheck 85 28 59
      { lower := 1466, upper := 1543, witness := RowWitness.topPrime 1459 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good017_checked :
    goodSegmentCheck 85 28 59
      { lower := 1544, upper := 1627, witness := RowWitness.topPrime 1543 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good018_checked :
    goodSegmentCheck 85 28 59
      { lower := 1628, upper := 1711, witness := RowWitness.topPrime 1627 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good019_checked :
    goodSegmentCheck 85 28 59
      { lower := 1712, upper := 1793, witness := RowWitness.topPrime 1709 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good020_checked :
    goodSegmentCheck 85 28 59
      { lower := 1794, upper := 1873, witness := RowWitness.topPrime 1789 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good021_checked :
    goodSegmentCheck 85 28 59
      { lower := 1874, upper := 1957, witness := RowWitness.topPrime 1873 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good022_checked :
    goodSegmentCheck 85 28 59
      { lower := 1958, upper := 2035, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good023_checked :
    goodSegmentCheck 85 28 59
      { lower := 2036, upper := 2113, witness := RowWitness.topPrime 2029 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good024_checked :
    goodSegmentCheck 85 28 59
      { lower := 2114, upper := 2197, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good025_checked :
    goodSegmentCheck 85 28 59
      { lower := 2198, upper := 2263, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good026_checked :
    goodSegmentCheck 85 28 59
      { lower := 2264, upper := 2335, witness := RowWitness.topPrime 2251 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good027_checked :
    goodSegmentCheck 85 28 59
      { lower := 2336, upper := 2417, witness := RowWitness.topPrime 2333 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good028_checked :
    goodSegmentCheck 85 28 59
      { lower := 2418, upper := 2501, witness := RowWitness.topPrime 2417 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good029_checked :
    goodSegmentCheck 85 28 59
      { lower := 2502, upper := 2561, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good030_checked :
    goodSegmentCheck 85 28 59
      { lower := 2562, upper := 2641, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good031_checked :
    goodSegmentCheck 85 28 59
      { lower := 2642, upper := 2717, witness := RowWitness.topPrime 2633 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_good032_checked :
    goodSegmentCheck 85 28 59
      { lower := 2718, upper := 2797, witness := RowWitness.topPrime 2713 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good033_checked :
    goodSegmentCheck 85 28 59
      { lower := 2798, upper := 2881, witness := RowWitness.topPrime 2797 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good034_checked :
    goodSegmentCheck 85 28 59
      { lower := 2882, upper := 2963, witness := RowWitness.topPrime 2879 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good035_checked :
    goodSegmentCheck 85 28 59
      { lower := 2964, upper := 3047, witness := RowWitness.topPrime 2963 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good036_checked :
    goodSegmentCheck 85 28 59
      { lower := 3048, upper := 3125, witness := RowWitness.topPrime 3041 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good037_checked :
    goodSegmentCheck 85 28 59
      { lower := 3126, upper := 3205, witness := RowWitness.topPrime 3121 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good038_checked :
    goodSegmentCheck 85 28 59
      { lower := 3206, upper := 3287, witness := RowWitness.topPrime 3203 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good039_checked :
    goodSegmentCheck 85 28 59
      { lower := 3288, upper := 3355, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good040_checked :
    goodSegmentCheck 85 28 59
      { lower := 3356, upper := 3431, witness := RowWitness.topPrime 3347 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good041_checked :
    goodSegmentCheck 85 28 59
      { lower := 3432, upper := 3497, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good042_checked :
    goodSegmentCheck 85 28 59
      { lower := 3498, upper := 3575, witness := RowWitness.topPrime 3491 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good043_checked :
    goodSegmentCheck 85 28 59
      { lower := 3576, upper := 3655, witness := RowWitness.topPrime 3571 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good044_checked :
    goodSegmentCheck 85 28 59
      { lower := 3656, upper := 3727, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good045_checked :
    goodSegmentCheck 85 28 59
      { lower := 3728, upper := 3811, witness := RowWitness.topPrime 3727 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good046_checked :
    goodSegmentCheck 85 28 59
      { lower := 3812, upper := 3887, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good047_checked :
    goodSegmentCheck 85 28 59
      { lower := 3888, upper := 3965, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_good048_checked :
    goodSegmentCheck 85 28 59
      { lower := 3966, upper := 4031, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good049_checked :
    goodSegmentCheck 85 28 59
      { lower := 4032, upper := 4111, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good050_checked :
    goodSegmentCheck 85 28 59
      { lower := 4112, upper := 4195, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good051_checked :
    goodSegmentCheck 85 28 59
      { lower := 4196, upper := 4261, witness := RowWitness.topPrime 4177 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good052_checked :
    goodSegmentCheck 85 28 59
      { lower := 4262, upper := 4345, witness := RowWitness.topPrime 4261 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good053_checked :
    goodSegmentCheck 85 28 59
      { lower := 4346, upper := 4423, witness := RowWitness.topPrime 4339 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good054_checked :
    goodSegmentCheck 85 28 59
      { lower := 4424, upper := 4507, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good055_checked :
    goodSegmentCheck 85 28 59
      { lower := 4508, upper := 4591, witness := RowWitness.topPrime 4507 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good056_checked :
    goodSegmentCheck 85 28 59
      { lower := 4592, upper := 4675, witness := RowWitness.topPrime 4591 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good057_checked :
    goodSegmentCheck 85 28 59
      { lower := 4676, upper := 4757, witness := RowWitness.topPrime 4673 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good058_checked :
    goodSegmentCheck 85 28 59
      { lower := 4758, upper := 4835, witness := RowWitness.topPrime 4751 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good059_checked :
    goodSegmentCheck 85 28 59
      { lower := 4836, upper := 4915, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good060_checked :
    goodSegmentCheck 85 28 59
      { lower := 4916, upper := 4993, witness := RowWitness.topPrime 4909 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good061_checked :
    goodSegmentCheck 85 28 59
      { lower := 4994, upper := 5077, witness := RowWitness.topPrime 4993 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good062_checked :
    goodSegmentCheck 85 28 59
      { lower := 5078, upper := 5161, witness := RowWitness.topPrime 5077 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good063_checked :
    goodSegmentCheck 85 28 59
      { lower := 5162, upper := 5237, witness := RowWitness.topPrime 5153 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_good064_checked :
    goodSegmentCheck 85 28 59
      { lower := 5238, upper := 5321, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good065_checked :
    goodSegmentCheck 85 28 59
      { lower := 5322, upper := 5393, witness := RowWitness.topPrime 5309 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good066_checked :
    goodSegmentCheck 85 28 59
      { lower := 5394, upper := 5477, witness := RowWitness.topPrime 5393 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good067_checked :
    goodSegmentCheck 85 28 59
      { lower := 5478, upper := 5561, witness := RowWitness.topPrime 5477 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good068_checked :
    goodSegmentCheck 85 28 59
      { lower := 5562, upper := 5641, witness := RowWitness.topPrime 5557 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good069_checked :
    goodSegmentCheck 85 28 59
      { lower := 5642, upper := 5725, witness := RowWitness.topPrime 5641 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good070_checked :
    goodSegmentCheck 85 28 59
      { lower := 5726, upper := 5801, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good071_checked :
    goodSegmentCheck 85 28 59
      { lower := 5802, upper := 5885, witness := RowWitness.topPrime 5801 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good072_checked :
    goodSegmentCheck 85 28 59
      { lower := 5886, upper := 5965, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good073_checked :
    goodSegmentCheck 85 28 59
      { lower := 5966, upper := 6037, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good074_checked :
    goodSegmentCheck 85 28 59
      { lower := 6038, upper := 6121, witness := RowWitness.topPrime 6037 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good075_checked :
    goodSegmentCheck 85 28 59
      { lower := 6122, upper := 6205, witness := RowWitness.topPrime 6121 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good076_checked :
    goodSegmentCheck 85 28 59
      { lower := 6206, upper := 6287, witness := RowWitness.topPrime 6203 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good077_checked :
    goodSegmentCheck 85 28 59
      { lower := 6288, upper := 6371, witness := RowWitness.topPrime 6287 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good078_checked :
    goodSegmentCheck 85 28 59
      { lower := 6372, upper := 6451, witness := RowWitness.topPrime 6367 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good079_checked :
    goodSegmentCheck 85 28 59
      { lower := 6452, upper := 6535, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_good080_checked :
    goodSegmentCheck 85 28 59
      { lower := 6536, upper := 6613, witness := RowWitness.topPrime 6529 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good081_checked :
    goodSegmentCheck 85 28 59
      { lower := 6614, upper := 6691, witness := RowWitness.topPrime 6607 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good082_checked :
    goodSegmentCheck 85 28 59
      { lower := 6692, upper := 6775, witness := RowWitness.topPrime 6691 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good083_checked :
    goodSegmentCheck 85 28 59
      { lower := 6776, upper := 6847, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good084_checked :
    goodSegmentCheck 85 28 59
      { lower := 6848, upper := 6925, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good085_checked :
    goodSegmentCheck 85 28 59
      { lower := 6926, upper := 7001, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good086_checked :
    goodSegmentCheck 85 28 59
      { lower := 7002, upper := 7085, witness := RowWitness.topPrime 7001 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good087_checked :
    goodSegmentCheck 85 28 59
      { lower := 7086, upper := 7139, witness := RowWitness.topPrime 7079 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good088_checked :
    goodSegmentCheck 85 28 59
      { lower := 7203, upper := 7277, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good089_checked :
    goodSegmentCheck 85 28 59
      { lower := 7278, upper := 7287, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good090_checked :
    goodSegmentCheck 85 28 59
      { lower := 7290, upper := 7304, witness := RowWitness.topPrime 7283 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good091_checked :
    goodSegmentCheck 85 28 59
      { lower := 7406, upper := 7477, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good092_checked :
    goodSegmentCheck 85 28 59
      { lower := 7478, upper := 7508, witness := RowWitness.topPrime 7477 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good093_checked :
    goodSegmentCheck 85 28 59
      { lower := 7569, upper := 7645, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good094_checked :
    goodSegmentCheck 85 28 59
      { lower := 7646, upper := 7653, witness := RowWitness.topPrime 7643 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good095_checked :
    goodSegmentCheck 85 28 59
      { lower := 7688, upper := 7764, witness := RowWitness.topPrime 7687 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_good096_checked :
    goodSegmentCheck 85 28 59
      { lower := 7935, upper := 8017, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good097_checked :
    goodSegmentCheck 85 28 59
      { lower := 8018, upper := 8070, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good098_checked :
    goodSegmentCheck 85 28 59
      { lower := 8214, upper := 8293, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good099_checked :
    goodSegmentCheck 85 28 59
      { lower := 8294, upper := 8298, witness := RowWitness.topPrime 8293 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good100_checked :
    goodSegmentCheck 85 28 59
      { lower := 8303, upper := 8316, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good101_checked :
    goodSegmentCheck 85 28 59
      { lower := 8410, upper := 8473, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good102_checked :
    goodSegmentCheck 85 28 59
      { lower := 8474, upper := 8511, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good103_checked :
    goodSegmentCheck 85 28 59
      { lower := 8649, upper := 8659, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good104_checked :
    goodSegmentCheck 85 28 59
      { lower := 8664, upper := 8747, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good105_checked :
    goodSegmentCheck 85 28 59
      { lower := 8748, upper := 8831, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good106_checked :
    goodSegmentCheck 85 28 59
      { lower := 8832, upper := 8832, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good107_checked :
    goodSegmentCheck 85 28 59
      { lower := 8836, upper := 8872, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good108_checked :
    goodSegmentCheck 85 28 59
      { lower := 8918, upper := 8920, witness := RowWitness.topPrime 8893 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good109_checked :
    goodSegmentCheck 85 28 59
      { lower := 8978, upper := 9055, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good110_checked :
    goodSegmentCheck 85 28 59
      { lower := 9056, upper := 9077, witness := RowWitness.topPrime 9049 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good111_checked :
    goodSegmentCheck 85 28 59
      { lower := 9245, upper := 9325, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_good112_checked :
    goodSegmentCheck 85 28 59
      { lower := 9326, upper := 9345, witness := RowWitness.topPrime 9323 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good113_checked :
    goodSegmentCheck 85 28 59
      { lower := 9375, upper := 9455, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good114_checked :
    goodSegmentCheck 85 28 59
      { lower := 9456, upper := 9459, witness := RowWitness.topPrime 9439 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good115_checked :
    goodSegmentCheck 85 28 59
      { lower := 9522, upper := 9561, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good116_checked :
    goodSegmentCheck 85 28 59
      { lower := 9583, upper := 9635, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good117_checked :
    goodSegmentCheck 85 28 59
      { lower := 9636, upper := 9688, witness := RowWitness.topPrime 9631 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good118_checked :
    goodSegmentCheck 85 28 59
      { lower := 9747, upper := 9812, witness := RowWitness.topPrime 9743 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good119_checked :
    goodSegmentCheck 85 28 59
      { lower := 10082, upper := 10163, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good120_checked :
    goodSegmentCheck 85 28 59
      { lower := 10164, upper := 10176, witness := RowWitness.topPrime 10163 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good121_checked :
    goodSegmentCheck 85 28 59
      { lower := 10240, upper := 10290, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good122_checked :
    goodSegmentCheck 85 28 59
      { lower := 10469, upper := 10527, witness := RowWitness.topPrime 10463 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good123_checked :
    goodSegmentCheck 85 28 59
      { lower := 10580, upper := 10651, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good124_checked :
    goodSegmentCheck 85 28 59
      { lower := 10652, upper := 10732, witness := RowWitness.topPrime 10651 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good125_checked :
    goodSegmentCheck 85 28 59
      { lower := 10935, upper := 10993, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good126_checked :
    goodSegmentCheck 85 28 59
      { lower := 10994, upper := 11036, witness := RowWitness.topPrime 10993 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good127_checked :
    goodSegmentCheck 85 28 59
      { lower := 11045, upper := 11069, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_good128_checked :
    goodSegmentCheck 85 28 59
      { lower := 11094, upper := 11177, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good129_checked :
    goodSegmentCheck 85 28 59
      { lower := 11178, upper := 11193, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good130_checked :
    goodSegmentCheck 85 28 59
      { lower := 11236, upper := 11247, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good131_checked :
    goodSegmentCheck 85 28 59
      { lower := 11264, upper := 11320, witness := RowWitness.topPrime 11261 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good132_checked :
    goodSegmentCheck 85 28 59
      { lower := 11664, upper := 11722, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good133_checked :
    goodSegmentCheck 85 28 59
      { lower := 11774, upper := 11827, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good134_checked :
    goodSegmentCheck 85 28 59
      { lower := 11828, upper := 11858, witness := RowWitness.topPrime 11827 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good135_checked :
    goodSegmentCheck 85 28 59
      { lower := 12005, upper := 12063, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good136_checked :
    goodSegmentCheck 85 28 59
      { lower := 12321, upper := 12372, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good137_checked :
    goodSegmentCheck 85 28 59
      { lower := 12393, upper := 12405, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good138_checked :
    goodSegmentCheck 85 28 59
      { lower := 12493, upper := 12575, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good139_checked :
    goodSegmentCheck 85 28 59
      { lower := 12576, upper := 12577, witness := RowWitness.topPrime 12569 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good140_checked :
    goodSegmentCheck 85 28 59
      { lower := 12696, upper := 12699, witness := RowWitness.topPrime 12689 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good141_checked :
    goodSegmentCheck 85 28 59
      { lower := 13182, upper := 13206, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good142_checked :
    goodSegmentCheck 85 28 59
      { lower := 13225, upper := 13303, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good143_checked :
    goodSegmentCheck 85 28 59
      { lower := 13304, upper := 13381, witness := RowWitness.topPrime 13297 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_good144_checked :
    goodSegmentCheck 85 28 59
      { lower := 13382, upper := 13394, witness := RowWitness.topPrime 13381 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good145_checked :
    goodSegmentCheck 85 28 59
      { lower := 13454, upper := 13535, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good146_checked :
    goodSegmentCheck 85 28 59
      { lower := 13536, upper := 13540, witness := RowWitness.topPrime 13523 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good147_checked :
    goodSegmentCheck 85 28 59
      { lower := 13718, upper := 13795, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good148_checked :
    goodSegmentCheck 85 28 59
      { lower := 13796, upper := 13873, witness := RowWitness.topPrime 13789 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good149_checked :
    goodSegmentCheck 85 28 59
      { lower := 13874, upper := 13908, witness := RowWitness.topPrime 13873 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good150_checked :
    goodSegmentCheck 85 28 59
      { lower := 13924, upper := 13935, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good151_checked :
    goodSegmentCheck 85 28 59
      { lower := 14336, upper := 14381, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good152_checked :
    goodSegmentCheck 85 28 59
      { lower := 14406, upper := 14485, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good153_checked :
    goodSegmentCheck 85 28 59
      { lower := 14486, upper := 14490, witness := RowWitness.topPrime 14479 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good154_checked :
    goodSegmentCheck 85 28 59
      { lower := 14641, upper := 14664, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good155_checked :
    goodSegmentCheck 85 28 59
      { lower := 15123, upper := 15205, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good156_checked :
    goodSegmentCheck 85 28 59
      { lower := 15206, upper := 15213, witness := RowWitness.topPrime 15199 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good157_checked :
    goodSegmentCheck 85 28 59
      { lower := 15360, upper := 15443, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good158_checked :
    goodSegmentCheck 85 28 59
      { lower := 15444, upper := 15460, witness := RowWitness.topPrime 15443 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good159_checked :
    goodSegmentCheck 85 28 59
      { lower := 15463, upper := 15463, witness := RowWitness.topPrime 15461 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_good160_checked :
    goodSegmentCheck 85 28 59
      { lower := 15979, upper := 16057, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good161_checked :
    goodSegmentCheck 85 28 59
      { lower := 16058, upper := 16071, witness := RowWitness.topPrime 16057 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good162_checked :
    goodSegmentCheck 85 28 59
      { lower := 16384, upper := 16421, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good163_checked :
    goodSegmentCheck 85 28 59
      { lower := 16428, upper := 16468, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good164_checked :
    goodSegmentCheck 85 28 59
      { lower := 16807, upper := 16871, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good165_checked :
    goodSegmentCheck 85 28 59
      { lower := 16872, upper := 16904, witness := RowWitness.topPrime 16871 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good166_checked :
    goodSegmentCheck 85 28 59
      { lower := 17303, upper := 17382, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good167_checked :
    goodSegmentCheck 85 28 59
      { lower := 17408, upper := 17485, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good168_checked :
    goodSegmentCheck 85 28 59
      { lower := 17486, upper := 17489, witness := RowWitness.topPrime 17483 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good169_checked :
    goodSegmentCheck 85 28 59
      { lower := 17576, upper := 17580, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good170_checked :
    goodSegmentCheck 85 28 59
      { lower := 17672, upper := 17745, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good171_checked :
    goodSegmentCheck 85 28 59
      { lower := 18259, upper := 18309, witness := RowWitness.topPrime 18257 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good172_checked :
    goodSegmentCheck 85 28 59
      { lower := 18490, upper := 18565, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good173_checked :
    goodSegmentCheck 85 28 59
      { lower := 18566, upper := 18575, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good174_checked :
    goodSegmentCheck 85 28 59
      { lower := 18634, upper := 18689, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good175_checked :
    goodSegmentCheck 85 28 59
      { lower := 19208, upper := 19291, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_good176_checked :
    goodSegmentCheck 85 28 59
      { lower := 19292, upper := 19292, witness := RowWitness.topPrime 19289 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good177_checked :
    goodSegmentCheck 85 28 59
      { lower := 19683, upper := 19747, witness := RowWitness.topPrime 19681 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good178_checked :
    goodSegmentCheck 85 28 59
      { lower := 19965, upper := 19965, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good179_checked :
    goodSegmentCheck 85 28 59
      { lower := 20172, upper := 20245, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good180_checked :
    goodSegmentCheck 85 28 59
      { lower := 20246, upper := 20265, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good181_checked :
    goodSegmentCheck 85 28 59
      { lower := 20535, upper := 20564, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good182_checked :
    goodSegmentCheck 85 28 59
      { lower := 20577, upper := 20619, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good183_checked :
    goodSegmentCheck 85 28 59
      { lower := 21316, upper := 21380, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good184_checked :
    goodSegmentCheck 85 28 59
      { lower := 21870, upper := 21947, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good185_checked :
    goodSegmentCheck 85 28 59
      { lower := 21948, upper := 21954, witness := RowWitness.topPrime 21943 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good186_checked :
    goodSegmentCheck 85 28 59
      { lower := 21970, upper := 21988, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good187_checked :
    goodSegmentCheck 85 28 59
      { lower := 22103, upper := 22174, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good188_checked :
    goodSegmentCheck 85 28 59
      { lower := 22472, upper := 22553, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good189_checked :
    goodSegmentCheck 85 28 59
      { lower := 22554, upper := 22556, witness := RowWitness.topPrime 22549 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good190_checked :
    goodSegmentCheck 85 28 59
      { lower := 23552, upper := 23618, witness := RowWitness.topPrime 23549 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good191_checked :
    goodSegmentCheck 85 28 59
      { lower := 24010, upper := 24091, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_good192_checked :
    goodSegmentCheck 85 28 59
      { lower := 24092, upper := 24121, witness := RowWitness.topPrime 24091 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good193_checked :
    goodSegmentCheck 85 28 59
      { lower := 24334, upper := 24413, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good194_checked :
    goodSegmentCheck 85 28 59
      { lower := 24414, upper := 24451, witness := RowWitness.topPrime 24413 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good195_checked :
    goodSegmentCheck 85 28 59
      { lower := 24642, upper := 24660, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good196_checked :
    goodSegmentCheck 85 28 59
      { lower := 25215, upper := 25273, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good197_checked :
    goodSegmentCheck 85 28 59
      { lower := 25274, upper := 25345, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good198_checked :
    goodSegmentCheck 85 28 59
      { lower := 25346, upper := 25365, witness := RowWitness.topPrime 25343 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good199_checked :
    goodSegmentCheck 85 28 59
      { lower := 26047, upper := 26095, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good200_checked :
    goodSegmentCheck 85 28 59
      { lower := 26411, upper := 26448, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good201_checked :
    goodSegmentCheck 85 28 59
      { lower := 26624, upper := 26681, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good202_checked :
    goodSegmentCheck 85 28 59
      { lower := 26682, upper := 26708, witness := RowWitness.topPrime 26681 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good203_checked :
    goodSegmentCheck 85 28 59
      { lower := 26934, upper := 26980, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good204_checked :
    goodSegmentCheck 85 28 59
      { lower := 27436, upper := 27464, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good205_checked :
    goodSegmentCheck 85 28 59
      { lower := 28577, upper := 28645, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good206_checked :
    goodSegmentCheck 85 28 59
      { lower := 28717, upper := 28795, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good207_checked :
    goodSegmentCheck 85 28 59
      { lower := 28796, upper := 28801, witness := RowWitness.topPrime 28793 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_good208_checked :
    goodSegmentCheck 85 28 59
      { lower := 28812, upper := 28833, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good209_checked :
    goodSegmentCheck 85 28 59
      { lower := 29791, upper := 29852, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good210_checked :
    goodSegmentCheck 85 28 59
      { lower := 30258, upper := 30330, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good211_checked :
    goodSegmentCheck 85 28 59
      { lower := 30758, upper := 30804, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good212_checked :
    goodSegmentCheck 85 28 59
      { lower := 30926, upper := 30983, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good213_checked :
    goodSegmentCheck 85 28 59
      { lower := 31213, upper := 31277, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good214_checked :
    goodSegmentCheck 85 28 59
      { lower := 31278, upper := 31297, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good215_checked :
    goodSegmentCheck 85 28 59
      { lower := 31329, upper := 31334, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good216_checked :
    goodSegmentCheck 85 28 59
      { lower := 31433, upper := 31481, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good217_checked :
    goodSegmentCheck 85 28 59
      { lower := 31482, upper := 31507, witness := RowWitness.topPrime 31481 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good218_checked :
    goodSegmentCheck 85 28 59
      { lower := 31974, upper := 32023, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good219_checked :
    goodSegmentCheck 85 28 59
      { lower := 32805, upper := 32852, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good220_checked :
    goodSegmentCheck 85 28 59
      { lower := 33620, upper := 33698, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good221_checked :
    goodSegmentCheck 85 28 59
      { lower := 34816, upper := 34891, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good222_checked :
    goodSegmentCheck 85 28 59
      { lower := 34892, upper := 34894, witness := RowWitness.topPrime 34883 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good223_checked :
    goodSegmentCheck 85 28 59
      { lower := 35152, upper := 35215, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_good224_checked :
    goodSegmentCheck 85 28 59
      { lower := 35301, upper := 35375, witness := RowWitness.topPrime 35291 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good225_checked :
    goodSegmentCheck 85 28 59
      { lower := 35376, upper := 35385, witness := RowWitness.topPrime 35363 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good226_checked :
    goodSegmentCheck 85 28 59
      { lower := 36517, upper := 36581, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good227_checked :
    goodSegmentCheck 85 28 59
      { lower := 36582, upper := 36585, witness := RowWitness.topPrime 36571 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good228_checked :
    goodSegmentCheck 85 28 59
      { lower := 36982, upper := 37063, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good229_checked :
    goodSegmentCheck 85 28 59
      { lower := 37064, upper := 37064, witness := RowWitness.topPrime 37061 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good230_checked :
    goodSegmentCheck 85 28 59
      { lower := 37210, upper := 37263, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good231_checked :
    goodSegmentCheck 85 28 59
      { lower := 37349, upper := 37387, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good232_checked :
    goodSegmentCheck 85 28 59
      { lower := 38912, upper := 38913, witness := RowWitness.topPrime 38903 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good233_checked :
    goodSegmentCheck 85 28 59
      { lower := 39366, upper := 39410, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good234_checked :
    goodSegmentCheck 85 28 59
      { lower := 40401, upper := 40412, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good235_checked :
    goodSegmentCheck 85 28 59
      { lower := 40960, upper := 41015, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good236_checked :
    goodSegmentCheck 85 28 59
      { lower := 41772, upper := 41827, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good237_checked :
    goodSegmentCheck 85 28 59
      { lower := 43740, upper := 43771, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good238_checked :
    goodSegmentCheck 85 28 59
      { lower := 43940, upper := 44007, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good239_checked :
    goodSegmentCheck 85 28 59
      { lower := 44944, upper := 44974, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_good240_checked :
    goodSegmentCheck 85 28 59
      { lower := 48013, upper := 48065, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good241_checked :
    goodSegmentCheck 85 28 59
      { lower := 48066, upper := 48097, witness := RowWitness.topPrime 48049 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good242_checked :
    goodSegmentCheck 85 28 59
      { lower := 48373, upper := 48418, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good243_checked :
    goodSegmentCheck 85 28 59
      { lower := 48668, upper := 48682, witness := RowWitness.topPrime 48661 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good244_checked :
    goodSegmentCheck 85 28 59
      { lower := 48734, upper := 48752, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good245_checked :
    goodSegmentCheck 85 28 59
      { lower := 48778, upper := 48818, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good246_checked :
    goodSegmentCheck 85 28 59
      { lower := 50421, upper := 50494, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good247_checked :
    goodSegmentCheck 85 28 59
      { lower := 53290, upper := 53332, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good248_checked :
    goodSegmentCheck 85 28 59
      { lower := 53371, upper := 53374, witness := RowWitness.topPrime 53359 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good249_checked :
    goodSegmentCheck 85 28 59
      { lower := 56180, upper := 56253, witness := RowWitness.topPrime 56179 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good250_checked :
    goodSegmentCheck 85 28 59
      { lower := 58619, upper := 58648, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good251_checked :
    goodSegmentCheck 85 28 59
      { lower := 59582, upper := 59620, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good252_checked :
    goodSegmentCheck 85 28 59
      { lower := 65536, upper := 65605, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good253_checked :
    goodSegmentCheck 85 28 59
      { lower := 65606, upper := 65620, witness := RowWitness.topPrime 65599 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good254_checked :
    goodSegmentCheck 85 28 59
      { lower := 68651, upper := 68674, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good255_checked :
    goodSegmentCheck 85 28 59
      { lower := 68921, upper := 68974, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_good256_checked :
    goodSegmentCheck 85 28 59
      { lower := 73205, upper := 73251, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good257_checked :
    goodSegmentCheck 85 28 59
      { lower := 85291, upper := 85343, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good258_checked :
    goodSegmentCheck 85 28 59
      { lower := 85344, upper := 85375, witness := RowWitness.topPrime 85333 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good259_checked :
    goodSegmentCheck 85 28 59
      { lower := 85697, upper := 85767, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good260_checked :
    goodSegmentCheck 85 28 59
      { lower := 101306, upper := 101335, witness := RowWitness.topPrime 101293 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good261_checked :
    goodSegmentCheck 85 28 59
      { lower := 137842, upper := 137865, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good262_checked :
    goodSegmentCheck 85 28 59
      { lower := 146410, upper := 146418, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good263_checked :
    goodSegmentCheck 85 28 59
      { lower := 148955, upper := 148961, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row085_good264_checked :
    goodSegmentCheck 85 28 59
      { lower := 327701, upper := 327764, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 85) (r := 28) (s := 59) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_good264_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_goods_checked :
    row085.goods.all (goodSegmentCheck row085.height.i row085.height.r row085.height.s) = true := by
  change row085_goods.all (goodSegmentCheck 85 28 59) = true
  simp only [row085_goods, List.all_cons, List.all_nil,
    row085_good000_checked,
    row085_good001_checked,
    row085_good002_checked,
    row085_good003_checked,
    row085_good004_checked,
    row085_good005_checked,
    row085_good006_checked,
    row085_good007_checked,
    row085_good008_checked,
    row085_good009_checked,
    row085_good010_checked,
    row085_good011_checked,
    row085_good012_checked,
    row085_good013_checked,
    row085_good014_checked,
    row085_good015_checked,
    row085_good016_checked,
    row085_good017_checked,
    row085_good018_checked,
    row085_good019_checked,
    row085_good020_checked,
    row085_good021_checked,
    row085_good022_checked,
    row085_good023_checked,
    row085_good024_checked,
    row085_good025_checked,
    row085_good026_checked,
    row085_good027_checked,
    row085_good028_checked,
    row085_good029_checked,
    row085_good030_checked,
    row085_good031_checked,
    row085_good032_checked,
    row085_good033_checked,
    row085_good034_checked,
    row085_good035_checked,
    row085_good036_checked,
    row085_good037_checked,
    row085_good038_checked,
    row085_good039_checked,
    row085_good040_checked,
    row085_good041_checked,
    row085_good042_checked,
    row085_good043_checked,
    row085_good044_checked,
    row085_good045_checked,
    row085_good046_checked,
    row085_good047_checked,
    row085_good048_checked,
    row085_good049_checked,
    row085_good050_checked,
    row085_good051_checked,
    row085_good052_checked,
    row085_good053_checked,
    row085_good054_checked,
    row085_good055_checked,
    row085_good056_checked,
    row085_good057_checked,
    row085_good058_checked,
    row085_good059_checked,
    row085_good060_checked,
    row085_good061_checked,
    row085_good062_checked,
    row085_good063_checked,
    row085_good064_checked,
    row085_good065_checked,
    row085_good066_checked,
    row085_good067_checked,
    row085_good068_checked,
    row085_good069_checked,
    row085_good070_checked,
    row085_good071_checked,
    row085_good072_checked,
    row085_good073_checked,
    row085_good074_checked,
    row085_good075_checked,
    row085_good076_checked,
    row085_good077_checked,
    row085_good078_checked,
    row085_good079_checked,
    row085_good080_checked,
    row085_good081_checked,
    row085_good082_checked,
    row085_good083_checked,
    row085_good084_checked,
    row085_good085_checked,
    row085_good086_checked,
    row085_good087_checked,
    row085_good088_checked,
    row085_good089_checked,
    row085_good090_checked,
    row085_good091_checked,
    row085_good092_checked,
    row085_good093_checked,
    row085_good094_checked,
    row085_good095_checked,
    row085_good096_checked,
    row085_good097_checked,
    row085_good098_checked,
    row085_good099_checked,
    row085_good100_checked,
    row085_good101_checked,
    row085_good102_checked,
    row085_good103_checked,
    row085_good104_checked,
    row085_good105_checked,
    row085_good106_checked,
    row085_good107_checked,
    row085_good108_checked,
    row085_good109_checked,
    row085_good110_checked,
    row085_good111_checked,
    row085_good112_checked,
    row085_good113_checked,
    row085_good114_checked,
    row085_good115_checked,
    row085_good116_checked,
    row085_good117_checked,
    row085_good118_checked,
    row085_good119_checked,
    row085_good120_checked,
    row085_good121_checked,
    row085_good122_checked,
    row085_good123_checked,
    row085_good124_checked,
    row085_good125_checked,
    row085_good126_checked,
    row085_good127_checked,
    row085_good128_checked,
    row085_good129_checked,
    row085_good130_checked,
    row085_good131_checked,
    row085_good132_checked,
    row085_good133_checked,
    row085_good134_checked,
    row085_good135_checked,
    row085_good136_checked,
    row085_good137_checked,
    row085_good138_checked,
    row085_good139_checked,
    row085_good140_checked,
    row085_good141_checked,
    row085_good142_checked,
    row085_good143_checked,
    row085_good144_checked,
    row085_good145_checked,
    row085_good146_checked,
    row085_good147_checked,
    row085_good148_checked,
    row085_good149_checked,
    row085_good150_checked,
    row085_good151_checked,
    row085_good152_checked,
    row085_good153_checked,
    row085_good154_checked,
    row085_good155_checked,
    row085_good156_checked,
    row085_good157_checked,
    row085_good158_checked,
    row085_good159_checked,
    row085_good160_checked,
    row085_good161_checked,
    row085_good162_checked,
    row085_good163_checked,
    row085_good164_checked,
    row085_good165_checked,
    row085_good166_checked,
    row085_good167_checked,
    row085_good168_checked,
    row085_good169_checked,
    row085_good170_checked,
    row085_good171_checked,
    row085_good172_checked,
    row085_good173_checked,
    row085_good174_checked,
    row085_good175_checked,
    row085_good176_checked,
    row085_good177_checked,
    row085_good178_checked,
    row085_good179_checked,
    row085_good180_checked,
    row085_good181_checked,
    row085_good182_checked,
    row085_good183_checked,
    row085_good184_checked,
    row085_good185_checked,
    row085_good186_checked,
    row085_good187_checked,
    row085_good188_checked,
    row085_good189_checked,
    row085_good190_checked,
    row085_good191_checked,
    row085_good192_checked,
    row085_good193_checked,
    row085_good194_checked,
    row085_good195_checked,
    row085_good196_checked,
    row085_good197_checked,
    row085_good198_checked,
    row085_good199_checked,
    row085_good200_checked,
    row085_good201_checked,
    row085_good202_checked,
    row085_good203_checked,
    row085_good204_checked,
    row085_good205_checked,
    row085_good206_checked,
    row085_good207_checked,
    row085_good208_checked,
    row085_good209_checked,
    row085_good210_checked,
    row085_good211_checked,
    row085_good212_checked,
    row085_good213_checked,
    row085_good214_checked,
    row085_good215_checked,
    row085_good216_checked,
    row085_good217_checked,
    row085_good218_checked,
    row085_good219_checked,
    row085_good220_checked,
    row085_good221_checked,
    row085_good222_checked,
    row085_good223_checked,
    row085_good224_checked,
    row085_good225_checked,
    row085_good226_checked,
    row085_good227_checked,
    row085_good228_checked,
    row085_good229_checked,
    row085_good230_checked,
    row085_good231_checked,
    row085_good232_checked,
    row085_good233_checked,
    row085_good234_checked,
    row085_good235_checked,
    row085_good236_checked,
    row085_good237_checked,
    row085_good238_checked,
    row085_good239_checked,
    row085_good240_checked,
    row085_good241_checked,
    row085_good242_checked,
    row085_good243_checked,
    row085_good244_checked,
    row085_good245_checked,
    row085_good246_checked,
    row085_good247_checked,
    row085_good248_checked,
    row085_good249_checked,
    row085_good250_checked,
    row085_good251_checked,
    row085_good252_checked,
    row085_good253_checked,
    row085_good254_checked,
    row085_good255_checked,
    row085_good256_checked,
    row085_good257_checked,
    row085_good258_checked,
    row085_good259_checked,
    row085_good260_checked,
    row085_good261_checked,
    row085_good262_checked,
    row085_good263_checked,
    row085_good264_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_registered :
    decide (row085.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row085_small_checked :
    coverCheck (2 * row085.height.i + 2) (row085.height.i * (row085.height.i - 1) - 1)
      (row085.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row085_layerCover_checked :
    coverCheck (row085.height.i * (row085.height.i - 1)) (row085.height.n0 - 1)
      (row085.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row085_bounds : List NatInterval :=
  [(172, 251), (252, 335), (336, 415), (416, 493), (494, 575), (576, 655), (656, 737), (738, 817), (818, 895), (896, 971), (972, 1055), (1056, 1135), (1136, 1213), (1214, 1297), (1298, 1381), (1382, 1465), (1466, 1543), (1544, 1627), (1628, 1711), (1712, 1793), (1794, 1873), (1874, 1957), (1958, 2035), (2036, 2113), (2114, 2197), (2198, 2263), (2264, 2335), (2336, 2417), (2418, 2501), (2502, 2561), (2562, 2641), (2642, 2717), (2718, 2797), (2798, 2881), (2882, 2963), (2964, 3047), (3048, 3125), (3126, 3205), (3206, 3287), (3288, 3355), (3356, 3431), (3432, 3497), (3498, 3575), (3576, 3655), (3656, 3727), (3728, 3811), (3812, 3887), (3888, 3965), (3966, 4031), (4032, 4111), (4112, 4195), (4196, 4261), (4262, 4345), (4346, 4423), (4424, 4507), (4508, 4591), (4592, 4675), (4676, 4757), (4758, 4835), (4836, 4915), (4916, 4993), (4994, 5077), (5078, 5161), (5162, 5237), (5238, 5321), (5322, 5393), (5394, 5477), (5478, 5561), (5562, 5641), (5642, 5725), (5726, 5801), (5802, 5885), (5886, 5965), (5966, 6037), (6038, 6121), (6122, 6205), (6206, 6287), (6288, 6371), (6372, 6451), (6452, 6535), (6536, 6613), (6614, 6691), (6692, 6775), (6776, 6847), (6848, 6925), (6926, 7001), (7002, 7085), (7086, 7139), (7203, 7277), (7278, 7287), (7290, 7304), (7406, 7477), (7478, 7508), (7569, 7645), (7646, 7653), (7688, 7764), (7935, 8017), (8018, 8070), (8214, 8293), (8294, 8298), (8303, 8316), (8410, 8473), (8474, 8511), (8649, 8659), (8664, 8747), (8748, 8831), (8832, 8832), (8836, 8872), (8918, 8920), (8978, 9055), (9056, 9077), (9245, 9325), (9326, 9345), (9375, 9455), (9456, 9459), (9522, 9561), (9583, 9635), (9636, 9688), (9747, 9812), (10082, 10163), (10164, 10176), (10240, 10290), (10469, 10527), (10580, 10651), (10652, 10732), (10935, 10993), (10994, 11036), (11045, 11069), (11094, 11177), (11178, 11193), (11236, 11247), (11264, 11320), (11664, 11722), (11774, 11827), (11828, 11858), (12005, 12063), (12321, 12372), (12393, 12405), (12493, 12575), (12576, 12577), (12696, 12699), (13182, 13206), (13225, 13303), (13304, 13381), (13382, 13394), (13454, 13535), (13536, 13540), (13718, 13795), (13796, 13873), (13874, 13908), (13924, 13935), (14336, 14381), (14406, 14485), (14486, 14490), (14641, 14664), (15123, 15205), (15206, 15213), (15360, 15443), (15444, 15460), (15463, 15463), (15979, 16057), (16058, 16071), (16384, 16421), (16428, 16468), (16807, 16871), (16872, 16904), (17303, 17382), (17408, 17485), (17486, 17489), (17576, 17580), (17672, 17745), (18259, 18309), (18490, 18565), (18566, 18575), (18634, 18689), (19208, 19291), (19292, 19292), (19683, 19747), (19965, 19965), (20172, 20245), (20246, 20265), (20535, 20564), (20577, 20619), (21316, 21380), (21870, 21947), (21948, 21954), (21970, 21988), (22103, 22174), (22472, 22553), (22554, 22556), (23552, 23618), (24010, 24091), (24092, 24121), (24334, 24413), (24414, 24451), (24642, 24660), (25215, 25273), (25274, 25345), (25346, 25365), (26047, 26095), (26411, 26448), (26624, 26681), (26682, 26708), (26934, 26980), (27436, 27464), (28577, 28645), (28717, 28795), (28796, 28801), (28812, 28833), (29791, 29852), (30258, 30330), (30758, 30804), (30926, 30983), (31213, 31277), (31278, 31297), (31329, 31334), (31433, 31481), (31482, 31507), (31974, 32023), (32805, 32852), (33620, 33698), (34816, 34891), (34892, 34894), (35152, 35215), (35301, 35375), (35376, 35385), (36517, 36581), (36582, 36585), (36982, 37063), (37064, 37064), (37210, 37263), (37349, 37387), (38912, 38913), (39366, 39410), (40401, 40412), (40960, 41015), (41772, 41827), (43740, 43771), (43940, 44007), (44944, 44974), (48013, 48065), (48066, 48097), (48373, 48418), (48668, 48682), (48734, 48752), (48778, 48818), (50421, 50494), (53290, 53332), (53371, 53374), (56180, 56253), (58619, 58648), (59582, 59620), (65536, 65605), (65606, 65620), (68651, 68674), (68921, 68974), (73205, 73251), (85291, 85343), (85344, 85375), (85697, 85767), (101306, 101335), (137842, 137865), (146410, 146418), (148955, 148961), (327701, 327764)]

theorem row085_bounds_eq : row085.goods.map goodSegmentBounds = row085_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row085_layer000_intervals : List ColouredInterval :=
  [(2, 7168, 7252), (2, 7424, 7508), (2, 7168, 7252), (2, 7680, 7764), (2, 8192, 8276), (2, 8704, 8788), (2, 9216, 9300), (2, 9728, 9812), (2, 10240, 10324), (2, 10752, 10836), (2, 11264, 11348), (2, 11776, 11860), (2, 12288, 12372), (2, 12800, 12884), (2, 13312, 13396), (2, 13824, 13908), (2, 7168, 7252), (2, 8192, 8276), (2, 9216, 9300), (2, 10240, 10324), (2, 11264, 11348), (2, 12288, 12372), (2, 13312, 13396), (2, 8192, 8276), (2, 10240, 10324), (2, 12288, 12372), (2, 8192, 8276), (2, 12288, 12372), (2, 8192, 8276), (3, 7290, 7374), (3, 8019, 8103), (3, 8748, 8832), (3, 9477, 9561), (3, 10206, 10290), (3, 10935, 11019), (3, 11664, 11748), (3, 12393, 12477), (3, 13122, 13206), (3, 13851, 13935), (3, 8748, 8832), (3, 10935, 11019), (3, 13122, 13206), (3, 13122, 13206), (5, 9375, 9459), (5, 12500, 12584), (7, 7203, 7287), (7, 7546, 7630), (7, 7889, 7973), (7, 8232, 8316), (7, 8575, 8659), (7, 8918, 9002), (7, 9261, 9345), (7, 9604, 9688), (7, 9947, 10031), (7, 7203, 7287), (7, 9604, 9688), (7, 12005, 12089), (11, 7986, 8070), (11, 9317, 9401), (11, 10648, 10732), (11, 11979, 12063), (11, 13310, 13394), (13, 8788, 8872), (13, 10985, 11069), (13, 13182, 13266), (19, 7220, 7304), (19, 7581, 7665), (19, 7942, 8026), (19, 8303, 8387), (19, 8664, 8748), (19, 9025, 9109), (19, 9386, 9470), (19, 9747, 9831), (19, 10108, 10192), (19, 10469, 10553), (19, 13718, 13802), (23, 7406, 7490), (23, 7935, 8019), (23, 8464, 8548), (23, 8993, 9077), (23, 9522, 9606), (23, 10051, 10135), (23, 10580, 10664), (23, 11109, 11193), (23, 11638, 11722), (23, 12167, 12251), (23, 12696, 12780), (23, 13225, 13309), (23, 13754, 13838), (23, 12167, 12251), (29, 7569, 7653), (29, 8410, 8494), (29, 9251, 9335), (29, 10092, 10176), (29, 10933, 11017), (29, 11774, 11858), (29, 12615, 12699), (29, 13456, 13540), (31, 7688, 7772), (31, 8649, 8733), (31, 9610, 9694), (31, 10571, 10655), (31, 11532, 11616), (31, 12493, 12577), (31, 13454, 13538), (37, 8214, 8298), (37, 9583, 9667), (37, 10952, 11036), (37, 12321, 12405), (37, 13690, 13774), (41, 8405, 8489), (41, 10086, 10170), (41, 11767, 11851), (41, 13448, 13532), (43, 7396, 7480), (43, 9245, 9329), (43, 11094, 11178), (43, 12943, 13027), (47, 8836, 8920), (47, 11045, 11129), (47, 13254, 13338), (53, 8427, 8511), (53, 11236, 11320), (53, 14045, 14129), (59, 10443, 10527), (59, 13924, 14008), (61, 7442, 7526), (61, 11163, 11247), (67, 8978, 9062), (67, 13467, 13551), (71, 10082, 10166), (73, 10658, 10742), (79, 12482, 12566), (83, 13778, 13862)]

def row085_layer000_block000 : List ColouredInterval :=
  [(2, 7168, 7252), (2, 7424, 7508), (2, 7168, 7252), (2, 7680, 7764), (2, 8192, 8276), (2, 8704, 8788), (2, 9216, 9300), (2, 9728, 9812), (2, 10240, 10324), (2, 10752, 10836), (2, 11264, 11348), (2, 11776, 11860), (2, 12288, 12372), (2, 12800, 12884), (2, 13312, 13396)]

def row085_layer000_block001 : List ColouredInterval :=
  [(2, 13824, 13908), (2, 7168, 7252), (2, 8192, 8276), (2, 9216, 9300), (2, 10240, 10324), (2, 11264, 11348), (2, 12288, 12372), (2, 13312, 13396), (2, 8192, 8276), (2, 10240, 10324), (2, 12288, 12372), (2, 8192, 8276), (2, 12288, 12372), (2, 8192, 8276), (3, 7290, 7374)]

def row085_layer000_block002 : List ColouredInterval :=
  [(3, 8019, 8103), (3, 8748, 8832), (3, 9477, 9561), (3, 10206, 10290), (3, 10935, 11019), (3, 11664, 11748), (3, 12393, 12477), (3, 13122, 13206), (3, 13851, 13935), (3, 8748, 8832), (3, 10935, 11019), (3, 13122, 13206), (3, 13122, 13206), (5, 9375, 9459), (5, 12500, 12584)]

def row085_layer000_block003 : List ColouredInterval :=
  [(7, 7203, 7287), (7, 7546, 7630), (7, 7889, 7973), (7, 8232, 8316), (7, 8575, 8659), (7, 8918, 9002), (7, 9261, 9345), (7, 9604, 9688), (7, 9947, 10031), (7, 7203, 7287), (7, 9604, 9688), (7, 12005, 12089), (11, 7986, 8070), (11, 9317, 9401), (11, 10648, 10732)]

def row085_layer000_block004 : List ColouredInterval :=
  [(11, 11979, 12063), (11, 13310, 13394), (13, 8788, 8872), (13, 10985, 11069), (13, 13182, 13266), (19, 7220, 7304), (19, 7581, 7665), (19, 7942, 8026), (19, 8303, 8387), (19, 8664, 8748), (19, 9025, 9109), (19, 9386, 9470), (19, 9747, 9831), (19, 10108, 10192), (19, 10469, 10553)]

def row085_layer000_block005 : List ColouredInterval :=
  [(19, 13718, 13802), (23, 7406, 7490), (23, 7935, 8019), (23, 8464, 8548), (23, 8993, 9077), (23, 9522, 9606), (23, 10051, 10135), (23, 10580, 10664), (23, 11109, 11193), (23, 11638, 11722), (23, 12167, 12251), (23, 12696, 12780), (23, 13225, 13309), (23, 13754, 13838), (23, 12167, 12251)]

def row085_layer000_block006 : List ColouredInterval :=
  [(29, 7569, 7653), (29, 8410, 8494), (29, 9251, 9335), (29, 10092, 10176), (29, 10933, 11017), (29, 11774, 11858), (29, 12615, 12699), (29, 13456, 13540), (31, 7688, 7772), (31, 8649, 8733), (31, 9610, 9694), (31, 10571, 10655), (31, 11532, 11616), (31, 12493, 12577), (31, 13454, 13538)]

def row085_layer000_block007 : List ColouredInterval :=
  [(37, 8214, 8298), (37, 9583, 9667), (37, 10952, 11036), (37, 12321, 12405), (37, 13690, 13774), (41, 8405, 8489), (41, 10086, 10170), (41, 11767, 11851), (41, 13448, 13532), (43, 7396, 7480), (43, 9245, 9329), (43, 11094, 11178), (43, 12943, 13027), (47, 8836, 8920), (47, 11045, 11129)]

def row085_layer000_block008 : List ColouredInterval :=
  [(47, 13254, 13338), (53, 8427, 8511), (53, 11236, 11320), (53, 14045, 14129), (59, 10443, 10527), (59, 13924, 14008), (61, 7442, 7526), (61, 11163, 11247), (67, 8978, 9062), (67, 13467, 13551), (71, 10082, 10166), (73, 10658, 10742), (79, 12482, 12566), (83, 13778, 13862)]

def row085_layer000_chunks : List (List ColouredInterval) :=
  [row085_layer000_block000, row085_layer000_block001, row085_layer000_block002, row085_layer000_block003, row085_layer000_block004, row085_layer000_block005, row085_layer000_block006, row085_layer000_block007, row085_layer000_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer000_arithmetic : LayerArithmeticValid row085.height { lower := 7140, upper := 14280, M := 29 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer000_enumeration :
    activePowerIntervalList 85 29 7140 14280 = row085_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer000_pairs000 :
    row085_layer000_block000.all (fun I => row085_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer000_pairs001 :
    row085_layer000_block001.all (fun I => row085_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer000_pairs002 :
    row085_layer000_block002.all (fun I => row085_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer000_pairs003 :
    row085_layer000_block003.all (fun I => row085_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer000_pairs004 :
    row085_layer000_block004.all (fun I => row085_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer000_pairs005 :
    row085_layer000_block005.all (fun I => row085_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer000_pairs006 :
    row085_layer000_block006.all (fun I => row085_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer000_pairs007 :
    row085_layer000_block007.all (fun I => row085_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer000_pairs007
