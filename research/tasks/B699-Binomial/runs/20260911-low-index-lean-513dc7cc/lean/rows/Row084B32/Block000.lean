import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row084_height : HeightCertificateDatum := { i := 84, r := 27, s := 58, n0Power10 := 11 }

def row084_goods : List GoodSegment := [
  { lower := 170, upper := 250, witness := RowWitness.topPrime 167 },
  { lower := 251, upper := 334, witness := RowWitness.topPrime 251 },
  { lower := 335, upper := 414, witness := RowWitness.topPrime 331 },
  { lower := 415, upper := 492, witness := RowWitness.topPrime 409 },
  { lower := 493, upper := 574, witness := RowWitness.topPrime 491 },
  { lower := 575, upper := 654, witness := RowWitness.topPrime 571 },
  { lower := 655, upper := 736, witness := RowWitness.topPrime 653 },
  { lower := 737, upper := 816, witness := RowWitness.topPrime 733 },
  { lower := 817, upper := 894, witness := RowWitness.topPrime 811 },
  { lower := 895, upper := 970, witness := RowWitness.topPrime 887 },
  { lower := 971, upper := 1054, witness := RowWitness.topPrime 971 },
  { lower := 1055, upper := 1134, witness := RowWitness.topPrime 1051 },
  { lower := 1135, upper := 1212, witness := RowWitness.topPrime 1129 },
  { lower := 1213, upper := 1296, witness := RowWitness.topPrime 1213 },
  { lower := 1297, upper := 1380, witness := RowWitness.topPrime 1297 },
  { lower := 1381, upper := 1464, witness := RowWitness.topPrime 1381 },
  { lower := 1465, upper := 1542, witness := RowWitness.topPrime 1459 },
  { lower := 1543, upper := 1626, witness := RowWitness.topPrime 1543 },
  { lower := 1627, upper := 1710, witness := RowWitness.topPrime 1627 },
  { lower := 1711, upper := 1792, witness := RowWitness.topPrime 1709 },
  { lower := 1793, upper := 1872, witness := RowWitness.topPrime 1789 },
  { lower := 1873, upper := 1956, witness := RowWitness.topPrime 1873 },
  { lower := 1957, upper := 2034, witness := RowWitness.topPrime 1951 },
  { lower := 2035, upper := 2112, witness := RowWitness.topPrime 2029 },
  { lower := 2113, upper := 2196, witness := RowWitness.topPrime 2113 },
  { lower := 2197, upper := 2262, witness := RowWitness.topPrime 2179 },
  { lower := 2263, upper := 2334, witness := RowWitness.topPrime 2251 },
  { lower := 2335, upper := 2416, witness := RowWitness.topPrime 2333 },
  { lower := 2417, upper := 2500, witness := RowWitness.topPrime 2417 },
  { lower := 2501, upper := 2560, witness := RowWitness.topPrime 2477 },
  { lower := 2561, upper := 2640, witness := RowWitness.topPrime 2557 },
  { lower := 2641, upper := 2716, witness := RowWitness.topPrime 2633 },
  { lower := 2717, upper := 2796, witness := RowWitness.topPrime 2713 },
  { lower := 2797, upper := 2880, witness := RowWitness.topPrime 2797 },
  { lower := 2881, upper := 2962, witness := RowWitness.topPrime 2879 },
  { lower := 2963, upper := 3046, witness := RowWitness.topPrime 2963 },
  { lower := 3047, upper := 3124, witness := RowWitness.topPrime 3041 },
  { lower := 3125, upper := 3204, witness := RowWitness.topPrime 3121 },
  { lower := 3205, upper := 3286, witness := RowWitness.topPrime 3203 },
  { lower := 3287, upper := 3354, witness := RowWitness.topPrime 3271 },
  { lower := 3355, upper := 3430, witness := RowWitness.topPrime 3347 },
  { lower := 3431, upper := 3496, witness := RowWitness.topPrime 3413 },
  { lower := 3497, upper := 3574, witness := RowWitness.topPrime 3491 },
  { lower := 3575, upper := 3654, witness := RowWitness.topPrime 3571 },
  { lower := 3655, upper := 3726, witness := RowWitness.topPrime 3643 },
  { lower := 3727, upper := 3810, witness := RowWitness.topPrime 3727 },
  { lower := 3811, upper := 3886, witness := RowWitness.topPrime 3803 },
  { lower := 3887, upper := 3964, witness := RowWitness.topPrime 3881 },
  { lower := 3965, upper := 4030, witness := RowWitness.topPrime 3947 },
  { lower := 4031, upper := 4110, witness := RowWitness.topPrime 4027 },
  { lower := 4111, upper := 4194, witness := RowWitness.topPrime 4111 },
  { lower := 4195, upper := 4260, witness := RowWitness.topPrime 4177 },
  { lower := 4261, upper := 4344, witness := RowWitness.topPrime 4261 },
  { lower := 4345, upper := 4422, witness := RowWitness.topPrime 4339 },
  { lower := 4423, upper := 4506, witness := RowWitness.topPrime 4423 },
  { lower := 4507, upper := 4590, witness := RowWitness.topPrime 4507 },
  { lower := 4591, upper := 4674, witness := RowWitness.topPrime 4591 },
  { lower := 4675, upper := 4756, witness := RowWitness.topPrime 4673 },
  { lower := 4757, upper := 4834, witness := RowWitness.topPrime 4751 },
  { lower := 4835, upper := 4914, witness := RowWitness.topPrime 4831 },
  { lower := 4915, upper := 4992, witness := RowWitness.topPrime 4909 },
  { lower := 4993, upper := 5076, witness := RowWitness.topPrime 4993 },
  { lower := 5077, upper := 5160, witness := RowWitness.topPrime 5077 },
  { lower := 5161, upper := 5236, witness := RowWitness.topPrime 5153 },
  { lower := 5237, upper := 5320, witness := RowWitness.topPrime 5237 },
  { lower := 5321, upper := 5392, witness := RowWitness.topPrime 5309 },
  { lower := 5393, upper := 5476, witness := RowWitness.topPrime 5393 },
  { lower := 5477, upper := 5560, witness := RowWitness.topPrime 5477 },
  { lower := 5561, upper := 5640, witness := RowWitness.topPrime 5557 },
  { lower := 5641, upper := 5724, witness := RowWitness.topPrime 5641 },
  { lower := 5725, upper := 5800, witness := RowWitness.topPrime 5717 },
  { lower := 5801, upper := 5884, witness := RowWitness.topPrime 5801 },
  { lower := 5885, upper := 5964, witness := RowWitness.topPrime 5881 },
  { lower := 5965, upper := 6036, witness := RowWitness.topPrime 5953 },
  { lower := 6037, upper := 6120, witness := RowWitness.topPrime 6037 },
  { lower := 6121, upper := 6204, witness := RowWitness.topPrime 6121 },
  { lower := 6205, upper := 6286, witness := RowWitness.topPrime 6203 },
  { lower := 6287, upper := 6370, witness := RowWitness.topPrime 6287 },
  { lower := 6371, upper := 6450, witness := RowWitness.topPrime 6367 },
  { lower := 6451, upper := 6534, witness := RowWitness.topPrime 6451 },
  { lower := 6535, upper := 6612, witness := RowWitness.topPrime 6529 },
  { lower := 6613, upper := 6690, witness := RowWitness.topPrime 6607 },
  { lower := 6691, upper := 6774, witness := RowWitness.topPrime 6691 },
  { lower := 6775, upper := 6846, witness := RowWitness.topPrime 6763 },
  { lower := 6847, upper := 6924, witness := RowWitness.topPrime 6841 },
  { lower := 6925, upper := 7000, witness := RowWitness.topPrime 6917 },
  { lower := 7001, upper := 7019, witness := RowWitness.topPrime 7001 },
  { lower := 7203, upper := 7276, witness := RowWitness.topPrime 7193 },
  { lower := 7277, upper := 7308, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7476, witness := RowWitness.topPrime 7393 },
  { lower := 7477, upper := 7489, witness := RowWitness.topPrime 7477 },
  { lower := 7500, upper := 7582, witness := RowWitness.topPrime 7499 },
  { lower := 7583, upper := 7652, witness := RowWitness.topPrime 7583 },
  { lower := 7942, upper := 8020, witness := RowWitness.topPrime 7937 },
  { lower := 8021, upper := 8025, witness := RowWitness.topPrime 8017 },
  { lower := 8125, upper := 8175, witness := RowWitness.topPrime 8123 },
  { lower := 8192, upper := 8208, witness := RowWitness.topPrime 8191 },
  { lower := 8214, upper := 8275, witness := RowWitness.topPrime 8209 },
  { lower := 8381, upper := 8386, witness := RowWitness.topPrime 8377 },
  { lower := 8405, upper := 8472, witness := RowWitness.topPrime 8389 },
  { lower := 8473, upper := 8510, witness := RowWitness.topPrime 8467 },
  { lower := 8664, upper := 8746, witness := RowWitness.topPrime 8663 },
  { lower := 8747, upper := 8830, witness := RowWitness.topPrime 8747 },
  { lower := 8831, upper := 8833, witness := RowWitness.topPrime 8831 },
  { lower := 8836, upper := 8871, witness := RowWitness.topPrime 8831 },
  { lower := 8978, upper := 9054, witness := RowWitness.topPrime 8971 },
  { lower := 9055, upper := 9076, witness := RowWitness.topPrime 9049 },
  { lower := 9251, upper := 9324, witness := RowWitness.topPrime 9241 },
  { lower := 9325, upper := 9334, witness := RowWitness.topPrime 9323 },
  { lower := 9375, upper := 9454, witness := RowWitness.topPrime 9371 },
  { lower := 9455, upper := 9458, witness := RowWitness.topPrime 9439 },
  { lower := 9583, upper := 9634, witness := RowWitness.topPrime 9551 },
  { lower := 9635, upper := 9687, witness := RowWitness.topPrime 9631 },
  { lower := 9826, upper := 9830, witness := RowWitness.topPrime 9817 },
  { lower := 10051, upper := 10122, witness := RowWitness.topPrime 10039 },
  { lower := 10123, upper := 10175, witness := RowWitness.topPrime 10111 },
  { lower := 10469, upper := 10526, witness := RowWitness.topPrime 10463 },
  { lower := 10580, upper := 10650, witness := RowWitness.topPrime 10567 },
  { lower := 10651, upper := 10731, witness := RowWitness.topPrime 10651 },
  { lower := 10935, upper := 10992, witness := RowWitness.topPrime 10909 },
  { lower := 10993, upper := 11035, witness := RowWitness.topPrime 10993 },
  { lower := 11045, upper := 11068, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11176, witness := RowWitness.topPrime 11093 },
  { lower := 11177, upper := 11260, witness := RowWitness.topPrime 11177 },
  { lower := 11261, upper := 11319, witness := RowWitness.topPrime 11261 },
  { lower := 11774, upper := 11826, witness := RowWitness.topPrime 11743 },
  { lower := 11827, upper := 11850, witness := RowWitness.topPrime 11827 },
  { lower := 12321, upper := 12371, witness := RowWitness.topPrime 12301 },
  { lower := 12493, upper := 12574, witness := RowWitness.topPrime 12491 },
  { lower := 12575, upper := 12576, witness := RowWitness.topPrime 12569 },
  { lower := 12696, upper := 12698, witness := RowWitness.topPrime 12689 },
  { lower := 13125, upper := 13204, witness := RowWitness.topPrime 13121 },
  { lower := 13205, upper := 13208, witness := RowWitness.topPrime 13187 },
  { lower := 13225, upper := 13302, witness := RowWitness.topPrime 13219 },
  { lower := 13303, upper := 13308, witness := RowWitness.topPrime 13297 },
  { lower := 13310, upper := 13337, witness := RowWitness.topPrime 13309 },
  { lower := 13454, upper := 13534, witness := RowWitness.topPrime 13451 },
  { lower := 13535, upper := 13539, witness := RowWitness.topPrime 13523 },
  { lower := 13718, upper := 13794, witness := RowWitness.topPrime 13711 },
  { lower := 13795, upper := 13837, witness := RowWitness.topPrime 13789 },
  { lower := 14297, upper := 14366, witness := RowWitness.topPrime 14293 },
  { lower := 14375, upper := 14380, witness := RowWitness.topPrime 14369 },
  { lower := 14415, upper := 14458, witness := RowWitness.topPrime 14411 },
  { lower := 14792, upper := 14822, witness := RowWitness.topPrime 14783 },
  { lower := 15059, upper := 15083, witness := RowWitness.topPrime 15053 },
  { lower := 15123, upper := 15204, witness := RowWitness.topPrime 15121 },
  { lower := 15205, upper := 15212, witness := RowWitness.topPrime 15199 },
  { lower := 15376, upper := 15456, witness := RowWitness.topPrime 15373 },
  { lower := 15457, upper := 15459, witness := RowWitness.topPrime 15451 },
  { lower := 15979, upper := 16056, witness := RowWitness.topPrime 15973 },
  { lower := 16057, upper := 16062, witness := RowWitness.topPrime 16057 },
  { lower := 16384, upper := 16420, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16467, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16870, witness := RowWitness.topPrime 16787 },
  { lower := 16871, upper := 16937, witness := RowWitness.topPrime 16871 },
  { lower := 17303, upper := 17381, witness := RowWitness.topPrime 17299 },
  { lower := 17576, upper := 17579, witness := RowWitness.topPrime 17573 },
  { lower := 17672, upper := 17744, witness := RowWitness.topPrime 17669 },
  { lower := 18491, upper := 18564, witness := RowWitness.topPrime 18481 },
  { lower := 18565, upper := 18574, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18688, witness := RowWitness.topPrime 18617 },
  { lower := 18750, upper := 18806, witness := RowWitness.topPrime 18749 },
  { lower := 19220, upper := 19249, witness := RowWitness.topPrime 19219 },
  { lower := 19663, upper := 19744, witness := RowWitness.topPrime 19661 },
  { lower := 19745, upper := 19746, witness := RowWitness.topPrime 19739 },
  { lower := 20172, upper := 20244, witness := RowWitness.topPrime 20161 },
  { lower := 20245, upper := 20264, witness := RowWitness.topPrime 20233 },
  { lower := 20535, upper := 20563, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20618, witness := RowWitness.topPrime 20563 },
  { lower := 21316, upper := 21379, witness := RowWitness.topPrime 21313 },
  { lower := 21866, upper := 21946, witness := RowWitness.topPrime 21863 },
  { lower := 21947, upper := 21958, witness := RowWitness.topPrime 21943 },
  { lower := 21970, upper := 21987, witness := RowWitness.topPrime 21961 },
  { lower := 22103, upper := 22173, witness := RowWitness.topPrime 22093 },
  { lower := 22472, upper := 22528, witness := RowWitness.topPrime 22469 },
  { lower := 22707, upper := 22710, witness := RowWitness.topPrime 22699 },
  { lower := 24025, upper := 24106, witness := RowWitness.topPrime 24023 },
  { lower := 24107, upper := 24108, witness := RowWitness.topPrime 24107 },
  { lower := 24334, upper := 24412, witness := RowWitness.topPrime 24329 },
  { lower := 24413, upper := 24450, witness := RowWitness.topPrime 24413 },
  { lower := 24576, upper := 24654, witness := RowWitness.topPrime 24571 },
  { lower := 24655, upper := 24659, witness := RowWitness.topPrime 24631 },
  { lower := 24986, upper := 25062, witness := RowWitness.topPrime 24979 },
  { lower := 25063, upper := 25069, witness := RowWitness.topPrime 25057 },
  { lower := 25215, upper := 25272, witness := RowWitness.topPrime 25189 },
  { lower := 25273, upper := 25344, witness := RowWitness.topPrime 25261 },
  { lower := 25345, upper := 25364, witness := RowWitness.topPrime 25343 },
  { lower := 25947, upper := 25969, witness := RowWitness.topPrime 25943 },
  { lower := 26011, upper := 26030, witness := RowWitness.topPrime 26003 },
  { lower := 26047, upper := 26094, witness := RowWitness.topPrime 26041 },
  { lower := 26645, upper := 26703, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 26979, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27463, witness := RowWitness.topPrime 27431 },
  { lower := 28125, upper := 28173, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28644, witness := RowWitness.topPrime 28573 },
  { lower := 28749, upper := 28800, witness := RowWitness.topPrime 28729 },
  { lower := 29791, upper := 29851, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30329, witness := RowWitness.topPrime 30253 },
  { lower := 30926, upper := 30982, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31288, witness := RowWitness.topPrime 31249 },
  { lower := 31329, upper := 31333, witness := RowWitness.topPrime 31327 },
  { lower := 31433, upper := 31480, witness := RowWitness.topPrime 31397 },
  { lower := 31481, upper := 31516, witness := RowWitness.topPrime 31481 },
  { lower := 31944, upper := 31990, witness := RowWitness.topPrime 31907 },
  { lower := 31991, upper := 32027, witness := RowWitness.topPrime 31991 },
  { lower := 32805, upper := 32851, witness := RowWitness.topPrime 32803 },
  { lower := 32856, upper := 32888, witness := RowWitness.topPrime 32843 },
  { lower := 33620, upper := 33697, witness := RowWitness.topPrime 33619 },
  { lower := 34375, upper := 34378, witness := RowWitness.topPrime 34369 },
  { lower := 34391, upper := 34464, witness := RowWitness.topPrime 34381 },
  { lower := 34465, upper := 34474, witness := RowWitness.topPrime 34457 },
  { lower := 35152, upper := 35214, witness := RowWitness.topPrime 35149 },
  { lower := 35301, upper := 35374, witness := RowWitness.topPrime 35291 },
  { lower := 35375, upper := 35384, witness := RowWitness.topPrime 35363 },
  { lower := 36517, upper := 36580, witness := RowWitness.topPrime 36497 },
  { lower := 36581, upper := 36584, witness := RowWitness.topPrime 36571 },
  { lower := 36982, upper := 37062, witness := RowWitness.topPrime 36979 },
  { lower := 37063, upper := 37063, witness := RowWitness.topPrime 37061 },
  { lower := 37349, upper := 37386, witness := RowWitness.topPrime 37339 },
  { lower := 37500, upper := 37529, witness := RowWitness.topPrime 37493 },
  { lower := 37553, upper := 37583, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39406, witness := RowWitness.topPrime 39323 },
  { lower := 39407, upper := 39409, witness := RowWitness.topPrime 39397 },
  { lower := 40344, upper := 40426, witness := RowWitness.topPrime 40343 },
  { lower := 40427, upper := 40427, witness := RowWitness.topPrime 40427 },
  { lower := 40678, upper := 40708, witness := RowWitness.topPrime 40639 },
  { lower := 40960, upper := 41014, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41826, witness := RowWitness.topPrime 41771 },
  { lower := 43750, upper := 43770, witness := RowWitness.topPrime 43721 },
  { lower := 43940, upper := 44006, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44263, witness := RowWitness.topPrime 44207 },
  { lower := 44944, upper := 44973, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48044, witness := RowWitness.topPrime 47981 },
  { lower := 48373, upper := 48417, witness := RowWitness.topPrime 48371 },
  { lower := 48668, upper := 48681, witness := RowWitness.topPrime 48661 },
  { lower := 48734, upper := 48751, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48817, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49213, witness := RowWitness.topPrime 49139 },
  { lower := 50000, upper := 50011, witness := RowWitness.topPrime 49999 },
  { lower := 50421, upper := 50493, witness := RowWitness.topPrime 50417 },
  { lower := 50562, upper := 50614, witness := RowWitness.topPrime 50551 },
  { lower := 53371, upper := 53373, witness := RowWitness.topPrime 53359 },
  { lower := 56180, upper := 56262, witness := RowWitness.topPrime 56179 },
  { lower := 56263, upper := 56263, witness := RowWitness.topPrime 56263 },
  { lower := 58619, upper := 58647, witness := RowWitness.topPrime 58613 },
  { lower := 59582, upper := 59619, witness := RowWitness.topPrime 59581 },
  { lower := 63948, upper := 63952, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65604, witness := RowWitness.topPrime 65521 },
  { lower := 65605, upper := 65616, witness := RowWitness.topPrime 65599 },
  { lower := 68651, upper := 68673, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68973, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73250, witness := RowWitness.topPrime 73189 },
  { lower := 85291, upper := 85342, witness := RowWitness.topPrime 85259 },
  { lower := 85343, upper := 85347, witness := RowWitness.topPrime 85333 },
  { lower := 85697, upper := 85766, witness := RowWitness.topPrime 85691 },
  { lower := 98304, upper := 98343, witness := RowWitness.topPrime 98299 },
  { lower := 101306, upper := 101334, witness := RowWitness.topPrime 101293 },
  { lower := 117128, upper := 117196, witness := RowWitness.topPrime 117127 },
  { lower := 146410, upper := 146417, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 148960, witness := RowWitness.topPrime 148949 },
  { lower := 206839, upper := 206846, witness := RowWitness.topPrime 206827 }
]

def row084_layers : List CoverLayer := [
  { lower := 6972, upper := 13944, M := 31 },
  { lower := 13944, upper := 27888, M := 27 },
  { lower := 27888, upper := 55776, M := 24 },
  { lower := 55776, upper := 111552, M := 20 },
  { lower := 111552, upper := 223104, M := 18 },
  { lower := 223104, upper := 446208, M := 15 },
  { lower := 446208, upper := 892416, M := 13 },
  { lower := 892416, upper := 1784832, M := 12 },
  { lower := 1784832, upper := 3569664, M := 10 },
  { lower := 3569664, upper := 7139328, M := 9 },
  { lower := 7139328, upper := 14278656, M := 8 },
  { lower := 14278656, upper := 28557312, M := 7 },
  { lower := 28557312, upper := 57114624, M := 6 },
  { lower := 57114624, upper := 114229248, M := 5 },
  { lower := 114229248, upper := 228458496, M := 5 },
  { lower := 228458496, upper := 456916992, M := 4 },
  { lower := 456916992, upper := 913833984, M := 4 },
  { lower := 913833984, upper := 1827667968, M := 3 },
  { lower := 1827667968, upper := 3655335936, M := 3 },
  { lower := 3655335936, upper := 7310671872, M := 2 },
  { lower := 7310671872, upper := 14621343744, M := 2 },
  { lower := 14621343744, upper := 29242687488, M := 2 },
  { lower := 29242687488, upper := 58485374976, M := 2 },
  { lower := 58485374976, upper := 100000000000, M := 2 }
]

def row084 : FiniteCoverRow := {
  height := row084_height,
  goods := row084_goods,
  layers := row084_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_good000_checked :
    goodSegmentCheck 84 27 58
      { lower := 170, upper := 250, witness := RowWitness.topPrime 167 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good001_checked :
    goodSegmentCheck 84 27 58
      { lower := 251, upper := 334, witness := RowWitness.topPrime 251 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good002_checked :
    goodSegmentCheck 84 27 58
      { lower := 335, upper := 414, witness := RowWitness.topPrime 331 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good003_checked :
    goodSegmentCheck 84 27 58
      { lower := 415, upper := 492, witness := RowWitness.topPrime 409 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good004_checked :
    goodSegmentCheck 84 27 58
      { lower := 493, upper := 574, witness := RowWitness.topPrime 491 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good005_checked :
    goodSegmentCheck 84 27 58
      { lower := 575, upper := 654, witness := RowWitness.topPrime 571 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good006_checked :
    goodSegmentCheck 84 27 58
      { lower := 655, upper := 736, witness := RowWitness.topPrime 653 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good007_checked :
    goodSegmentCheck 84 27 58
      { lower := 737, upper := 816, witness := RowWitness.topPrime 733 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good008_checked :
    goodSegmentCheck 84 27 58
      { lower := 817, upper := 894, witness := RowWitness.topPrime 811 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good009_checked :
    goodSegmentCheck 84 27 58
      { lower := 895, upper := 970, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good010_checked :
    goodSegmentCheck 84 27 58
      { lower := 971, upper := 1054, witness := RowWitness.topPrime 971 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good011_checked :
    goodSegmentCheck 84 27 58
      { lower := 1055, upper := 1134, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good012_checked :
    goodSegmentCheck 84 27 58
      { lower := 1135, upper := 1212, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good013_checked :
    goodSegmentCheck 84 27 58
      { lower := 1213, upper := 1296, witness := RowWitness.topPrime 1213 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good014_checked :
    goodSegmentCheck 84 27 58
      { lower := 1297, upper := 1380, witness := RowWitness.topPrime 1297 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good015_checked :
    goodSegmentCheck 84 27 58
      { lower := 1381, upper := 1464, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_good016_checked :
    goodSegmentCheck 84 27 58
      { lower := 1465, upper := 1542, witness := RowWitness.topPrime 1459 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good017_checked :
    goodSegmentCheck 84 27 58
      { lower := 1543, upper := 1626, witness := RowWitness.topPrime 1543 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good018_checked :
    goodSegmentCheck 84 27 58
      { lower := 1627, upper := 1710, witness := RowWitness.topPrime 1627 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good019_checked :
    goodSegmentCheck 84 27 58
      { lower := 1711, upper := 1792, witness := RowWitness.topPrime 1709 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good020_checked :
    goodSegmentCheck 84 27 58
      { lower := 1793, upper := 1872, witness := RowWitness.topPrime 1789 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good021_checked :
    goodSegmentCheck 84 27 58
      { lower := 1873, upper := 1956, witness := RowWitness.topPrime 1873 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good022_checked :
    goodSegmentCheck 84 27 58
      { lower := 1957, upper := 2034, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good023_checked :
    goodSegmentCheck 84 27 58
      { lower := 2035, upper := 2112, witness := RowWitness.topPrime 2029 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good024_checked :
    goodSegmentCheck 84 27 58
      { lower := 2113, upper := 2196, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good025_checked :
    goodSegmentCheck 84 27 58
      { lower := 2197, upper := 2262, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good026_checked :
    goodSegmentCheck 84 27 58
      { lower := 2263, upper := 2334, witness := RowWitness.topPrime 2251 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good027_checked :
    goodSegmentCheck 84 27 58
      { lower := 2335, upper := 2416, witness := RowWitness.topPrime 2333 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good028_checked :
    goodSegmentCheck 84 27 58
      { lower := 2417, upper := 2500, witness := RowWitness.topPrime 2417 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good029_checked :
    goodSegmentCheck 84 27 58
      { lower := 2501, upper := 2560, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good030_checked :
    goodSegmentCheck 84 27 58
      { lower := 2561, upper := 2640, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good031_checked :
    goodSegmentCheck 84 27 58
      { lower := 2641, upper := 2716, witness := RowWitness.topPrime 2633 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_good032_checked :
    goodSegmentCheck 84 27 58
      { lower := 2717, upper := 2796, witness := RowWitness.topPrime 2713 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good033_checked :
    goodSegmentCheck 84 27 58
      { lower := 2797, upper := 2880, witness := RowWitness.topPrime 2797 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good034_checked :
    goodSegmentCheck 84 27 58
      { lower := 2881, upper := 2962, witness := RowWitness.topPrime 2879 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good035_checked :
    goodSegmentCheck 84 27 58
      { lower := 2963, upper := 3046, witness := RowWitness.topPrime 2963 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good036_checked :
    goodSegmentCheck 84 27 58
      { lower := 3047, upper := 3124, witness := RowWitness.topPrime 3041 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good037_checked :
    goodSegmentCheck 84 27 58
      { lower := 3125, upper := 3204, witness := RowWitness.topPrime 3121 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good038_checked :
    goodSegmentCheck 84 27 58
      { lower := 3205, upper := 3286, witness := RowWitness.topPrime 3203 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good039_checked :
    goodSegmentCheck 84 27 58
      { lower := 3287, upper := 3354, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good040_checked :
    goodSegmentCheck 84 27 58
      { lower := 3355, upper := 3430, witness := RowWitness.topPrime 3347 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good041_checked :
    goodSegmentCheck 84 27 58
      { lower := 3431, upper := 3496, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good042_checked :
    goodSegmentCheck 84 27 58
      { lower := 3497, upper := 3574, witness := RowWitness.topPrime 3491 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good043_checked :
    goodSegmentCheck 84 27 58
      { lower := 3575, upper := 3654, witness := RowWitness.topPrime 3571 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good044_checked :
    goodSegmentCheck 84 27 58
      { lower := 3655, upper := 3726, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good045_checked :
    goodSegmentCheck 84 27 58
      { lower := 3727, upper := 3810, witness := RowWitness.topPrime 3727 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good046_checked :
    goodSegmentCheck 84 27 58
      { lower := 3811, upper := 3886, witness := RowWitness.topPrime 3803 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good047_checked :
    goodSegmentCheck 84 27 58
      { lower := 3887, upper := 3964, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_good048_checked :
    goodSegmentCheck 84 27 58
      { lower := 3965, upper := 4030, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good049_checked :
    goodSegmentCheck 84 27 58
      { lower := 4031, upper := 4110, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good050_checked :
    goodSegmentCheck 84 27 58
      { lower := 4111, upper := 4194, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good051_checked :
    goodSegmentCheck 84 27 58
      { lower := 4195, upper := 4260, witness := RowWitness.topPrime 4177 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good052_checked :
    goodSegmentCheck 84 27 58
      { lower := 4261, upper := 4344, witness := RowWitness.topPrime 4261 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good053_checked :
    goodSegmentCheck 84 27 58
      { lower := 4345, upper := 4422, witness := RowWitness.topPrime 4339 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good054_checked :
    goodSegmentCheck 84 27 58
      { lower := 4423, upper := 4506, witness := RowWitness.topPrime 4423 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good055_checked :
    goodSegmentCheck 84 27 58
      { lower := 4507, upper := 4590, witness := RowWitness.topPrime 4507 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good056_checked :
    goodSegmentCheck 84 27 58
      { lower := 4591, upper := 4674, witness := RowWitness.topPrime 4591 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good057_checked :
    goodSegmentCheck 84 27 58
      { lower := 4675, upper := 4756, witness := RowWitness.topPrime 4673 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good058_checked :
    goodSegmentCheck 84 27 58
      { lower := 4757, upper := 4834, witness := RowWitness.topPrime 4751 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good059_checked :
    goodSegmentCheck 84 27 58
      { lower := 4835, upper := 4914, witness := RowWitness.topPrime 4831 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good060_checked :
    goodSegmentCheck 84 27 58
      { lower := 4915, upper := 4992, witness := RowWitness.topPrime 4909 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good061_checked :
    goodSegmentCheck 84 27 58
      { lower := 4993, upper := 5076, witness := RowWitness.topPrime 4993 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good062_checked :
    goodSegmentCheck 84 27 58
      { lower := 5077, upper := 5160, witness := RowWitness.topPrime 5077 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good063_checked :
    goodSegmentCheck 84 27 58
      { lower := 5161, upper := 5236, witness := RowWitness.topPrime 5153 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_good064_checked :
    goodSegmentCheck 84 27 58
      { lower := 5237, upper := 5320, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good065_checked :
    goodSegmentCheck 84 27 58
      { lower := 5321, upper := 5392, witness := RowWitness.topPrime 5309 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good066_checked :
    goodSegmentCheck 84 27 58
      { lower := 5393, upper := 5476, witness := RowWitness.topPrime 5393 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good067_checked :
    goodSegmentCheck 84 27 58
      { lower := 5477, upper := 5560, witness := RowWitness.topPrime 5477 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good068_checked :
    goodSegmentCheck 84 27 58
      { lower := 5561, upper := 5640, witness := RowWitness.topPrime 5557 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good069_checked :
    goodSegmentCheck 84 27 58
      { lower := 5641, upper := 5724, witness := RowWitness.topPrime 5641 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good070_checked :
    goodSegmentCheck 84 27 58
      { lower := 5725, upper := 5800, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good071_checked :
    goodSegmentCheck 84 27 58
      { lower := 5801, upper := 5884, witness := RowWitness.topPrime 5801 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good072_checked :
    goodSegmentCheck 84 27 58
      { lower := 5885, upper := 5964, witness := RowWitness.topPrime 5881 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good073_checked :
    goodSegmentCheck 84 27 58
      { lower := 5965, upper := 6036, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good074_checked :
    goodSegmentCheck 84 27 58
      { lower := 6037, upper := 6120, witness := RowWitness.topPrime 6037 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good075_checked :
    goodSegmentCheck 84 27 58
      { lower := 6121, upper := 6204, witness := RowWitness.topPrime 6121 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good076_checked :
    goodSegmentCheck 84 27 58
      { lower := 6205, upper := 6286, witness := RowWitness.topPrime 6203 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good077_checked :
    goodSegmentCheck 84 27 58
      { lower := 6287, upper := 6370, witness := RowWitness.topPrime 6287 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good078_checked :
    goodSegmentCheck 84 27 58
      { lower := 6371, upper := 6450, witness := RowWitness.topPrime 6367 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good079_checked :
    goodSegmentCheck 84 27 58
      { lower := 6451, upper := 6534, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_good080_checked :
    goodSegmentCheck 84 27 58
      { lower := 6535, upper := 6612, witness := RowWitness.topPrime 6529 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good081_checked :
    goodSegmentCheck 84 27 58
      { lower := 6613, upper := 6690, witness := RowWitness.topPrime 6607 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good082_checked :
    goodSegmentCheck 84 27 58
      { lower := 6691, upper := 6774, witness := RowWitness.topPrime 6691 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good083_checked :
    goodSegmentCheck 84 27 58
      { lower := 6775, upper := 6846, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good084_checked :
    goodSegmentCheck 84 27 58
      { lower := 6847, upper := 6924, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good085_checked :
    goodSegmentCheck 84 27 58
      { lower := 6925, upper := 7000, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good086_checked :
    goodSegmentCheck 84 27 58
      { lower := 7001, upper := 7019, witness := RowWitness.topPrime 7001 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good087_checked :
    goodSegmentCheck 84 27 58
      { lower := 7203, upper := 7276, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good088_checked :
    goodSegmentCheck 84 27 58
      { lower := 7277, upper := 7308, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good089_checked :
    goodSegmentCheck 84 27 58
      { lower := 7406, upper := 7476, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good090_checked :
    goodSegmentCheck 84 27 58
      { lower := 7477, upper := 7489, witness := RowWitness.topPrime 7477 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good091_checked :
    goodSegmentCheck 84 27 58
      { lower := 7500, upper := 7582, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good092_checked :
    goodSegmentCheck 84 27 58
      { lower := 7583, upper := 7652, witness := RowWitness.topPrime 7583 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good093_checked :
    goodSegmentCheck 84 27 58
      { lower := 7942, upper := 8020, witness := RowWitness.topPrime 7937 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good094_checked :
    goodSegmentCheck 84 27 58
      { lower := 8021, upper := 8025, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good095_checked :
    goodSegmentCheck 84 27 58
      { lower := 8125, upper := 8175, witness := RowWitness.topPrime 8123 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_good096_checked :
    goodSegmentCheck 84 27 58
      { lower := 8192, upper := 8208, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good097_checked :
    goodSegmentCheck 84 27 58
      { lower := 8214, upper := 8275, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good098_checked :
    goodSegmentCheck 84 27 58
      { lower := 8381, upper := 8386, witness := RowWitness.topPrime 8377 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good099_checked :
    goodSegmentCheck 84 27 58
      { lower := 8405, upper := 8472, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good100_checked :
    goodSegmentCheck 84 27 58
      { lower := 8473, upper := 8510, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good101_checked :
    goodSegmentCheck 84 27 58
      { lower := 8664, upper := 8746, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good102_checked :
    goodSegmentCheck 84 27 58
      { lower := 8747, upper := 8830, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good103_checked :
    goodSegmentCheck 84 27 58
      { lower := 8831, upper := 8833, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good104_checked :
    goodSegmentCheck 84 27 58
      { lower := 8836, upper := 8871, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good105_checked :
    goodSegmentCheck 84 27 58
      { lower := 8978, upper := 9054, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good106_checked :
    goodSegmentCheck 84 27 58
      { lower := 9055, upper := 9076, witness := RowWitness.topPrime 9049 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good107_checked :
    goodSegmentCheck 84 27 58
      { lower := 9251, upper := 9324, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good108_checked :
    goodSegmentCheck 84 27 58
      { lower := 9325, upper := 9334, witness := RowWitness.topPrime 9323 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good109_checked :
    goodSegmentCheck 84 27 58
      { lower := 9375, upper := 9454, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good110_checked :
    goodSegmentCheck 84 27 58
      { lower := 9455, upper := 9458, witness := RowWitness.topPrime 9439 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good111_checked :
    goodSegmentCheck 84 27 58
      { lower := 9583, upper := 9634, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_good112_checked :
    goodSegmentCheck 84 27 58
      { lower := 9635, upper := 9687, witness := RowWitness.topPrime 9631 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good113_checked :
    goodSegmentCheck 84 27 58
      { lower := 9826, upper := 9830, witness := RowWitness.topPrime 9817 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good114_checked :
    goodSegmentCheck 84 27 58
      { lower := 10051, upper := 10122, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good115_checked :
    goodSegmentCheck 84 27 58
      { lower := 10123, upper := 10175, witness := RowWitness.topPrime 10111 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good116_checked :
    goodSegmentCheck 84 27 58
      { lower := 10469, upper := 10526, witness := RowWitness.topPrime 10463 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good117_checked :
    goodSegmentCheck 84 27 58
      { lower := 10580, upper := 10650, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good118_checked :
    goodSegmentCheck 84 27 58
      { lower := 10651, upper := 10731, witness := RowWitness.topPrime 10651 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good119_checked :
    goodSegmentCheck 84 27 58
      { lower := 10935, upper := 10992, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good120_checked :
    goodSegmentCheck 84 27 58
      { lower := 10993, upper := 11035, witness := RowWitness.topPrime 10993 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good121_checked :
    goodSegmentCheck 84 27 58
      { lower := 11045, upper := 11068, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good122_checked :
    goodSegmentCheck 84 27 58
      { lower := 11094, upper := 11176, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good123_checked :
    goodSegmentCheck 84 27 58
      { lower := 11177, upper := 11260, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good124_checked :
    goodSegmentCheck 84 27 58
      { lower := 11261, upper := 11319, witness := RowWitness.topPrime 11261 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good125_checked :
    goodSegmentCheck 84 27 58
      { lower := 11774, upper := 11826, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good126_checked :
    goodSegmentCheck 84 27 58
      { lower := 11827, upper := 11850, witness := RowWitness.topPrime 11827 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good127_checked :
    goodSegmentCheck 84 27 58
      { lower := 12321, upper := 12371, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_good128_checked :
    goodSegmentCheck 84 27 58
      { lower := 12493, upper := 12574, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good129_checked :
    goodSegmentCheck 84 27 58
      { lower := 12575, upper := 12576, witness := RowWitness.topPrime 12569 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good130_checked :
    goodSegmentCheck 84 27 58
      { lower := 12696, upper := 12698, witness := RowWitness.topPrime 12689 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good131_checked :
    goodSegmentCheck 84 27 58
      { lower := 13125, upper := 13204, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good132_checked :
    goodSegmentCheck 84 27 58
      { lower := 13205, upper := 13208, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good133_checked :
    goodSegmentCheck 84 27 58
      { lower := 13225, upper := 13302, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good134_checked :
    goodSegmentCheck 84 27 58
      { lower := 13303, upper := 13308, witness := RowWitness.topPrime 13297 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good135_checked :
    goodSegmentCheck 84 27 58
      { lower := 13310, upper := 13337, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good136_checked :
    goodSegmentCheck 84 27 58
      { lower := 13454, upper := 13534, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good137_checked :
    goodSegmentCheck 84 27 58
      { lower := 13535, upper := 13539, witness := RowWitness.topPrime 13523 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good138_checked :
    goodSegmentCheck 84 27 58
      { lower := 13718, upper := 13794, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good139_checked :
    goodSegmentCheck 84 27 58
      { lower := 13795, upper := 13837, witness := RowWitness.topPrime 13789 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good140_checked :
    goodSegmentCheck 84 27 58
      { lower := 14297, upper := 14366, witness := RowWitness.topPrime 14293 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good141_checked :
    goodSegmentCheck 84 27 58
      { lower := 14375, upper := 14380, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good142_checked :
    goodSegmentCheck 84 27 58
      { lower := 14415, upper := 14458, witness := RowWitness.topPrime 14411 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good143_checked :
    goodSegmentCheck 84 27 58
      { lower := 14792, upper := 14822, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_good144_checked :
    goodSegmentCheck 84 27 58
      { lower := 15059, upper := 15083, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good145_checked :
    goodSegmentCheck 84 27 58
      { lower := 15123, upper := 15204, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good146_checked :
    goodSegmentCheck 84 27 58
      { lower := 15205, upper := 15212, witness := RowWitness.topPrime 15199 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good147_checked :
    goodSegmentCheck 84 27 58
      { lower := 15376, upper := 15456, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good148_checked :
    goodSegmentCheck 84 27 58
      { lower := 15457, upper := 15459, witness := RowWitness.topPrime 15451 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good149_checked :
    goodSegmentCheck 84 27 58
      { lower := 15979, upper := 16056, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good150_checked :
    goodSegmentCheck 84 27 58
      { lower := 16057, upper := 16062, witness := RowWitness.topPrime 16057 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good151_checked :
    goodSegmentCheck 84 27 58
      { lower := 16384, upper := 16420, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good152_checked :
    goodSegmentCheck 84 27 58
      { lower := 16428, upper := 16467, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good153_checked :
    goodSegmentCheck 84 27 58
      { lower := 16810, upper := 16870, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good154_checked :
    goodSegmentCheck 84 27 58
      { lower := 16871, upper := 16937, witness := RowWitness.topPrime 16871 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good155_checked :
    goodSegmentCheck 84 27 58
      { lower := 17303, upper := 17381, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good156_checked :
    goodSegmentCheck 84 27 58
      { lower := 17576, upper := 17579, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good157_checked :
    goodSegmentCheck 84 27 58
      { lower := 17672, upper := 17744, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good158_checked :
    goodSegmentCheck 84 27 58
      { lower := 18491, upper := 18564, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good159_checked :
    goodSegmentCheck 84 27 58
      { lower := 18565, upper := 18574, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_good160_checked :
    goodSegmentCheck 84 27 58
      { lower := 18634, upper := 18688, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good161_checked :
    goodSegmentCheck 84 27 58
      { lower := 18750, upper := 18806, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good162_checked :
    goodSegmentCheck 84 27 58
      { lower := 19220, upper := 19249, witness := RowWitness.topPrime 19219 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good163_checked :
    goodSegmentCheck 84 27 58
      { lower := 19663, upper := 19744, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good164_checked :
    goodSegmentCheck 84 27 58
      { lower := 19745, upper := 19746, witness := RowWitness.topPrime 19739 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good165_checked :
    goodSegmentCheck 84 27 58
      { lower := 20172, upper := 20244, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good166_checked :
    goodSegmentCheck 84 27 58
      { lower := 20245, upper := 20264, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good167_checked :
    goodSegmentCheck 84 27 58
      { lower := 20535, upper := 20563, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good168_checked :
    goodSegmentCheck 84 27 58
      { lower := 20577, upper := 20618, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good169_checked :
    goodSegmentCheck 84 27 58
      { lower := 21316, upper := 21379, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good170_checked :
    goodSegmentCheck 84 27 58
      { lower := 21866, upper := 21946, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good171_checked :
    goodSegmentCheck 84 27 58
      { lower := 21947, upper := 21958, witness := RowWitness.topPrime 21943 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good172_checked :
    goodSegmentCheck 84 27 58
      { lower := 21970, upper := 21987, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good173_checked :
    goodSegmentCheck 84 27 58
      { lower := 22103, upper := 22173, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good174_checked :
    goodSegmentCheck 84 27 58
      { lower := 22472, upper := 22528, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good175_checked :
    goodSegmentCheck 84 27 58
      { lower := 22707, upper := 22710, witness := RowWitness.topPrime 22699 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_good176_checked :
    goodSegmentCheck 84 27 58
      { lower := 24025, upper := 24106, witness := RowWitness.topPrime 24023 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good177_checked :
    goodSegmentCheck 84 27 58
      { lower := 24107, upper := 24108, witness := RowWitness.topPrime 24107 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good178_checked :
    goodSegmentCheck 84 27 58
      { lower := 24334, upper := 24412, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good179_checked :
    goodSegmentCheck 84 27 58
      { lower := 24413, upper := 24450, witness := RowWitness.topPrime 24413 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good180_checked :
    goodSegmentCheck 84 27 58
      { lower := 24576, upper := 24654, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good181_checked :
    goodSegmentCheck 84 27 58
      { lower := 24655, upper := 24659, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good182_checked :
    goodSegmentCheck 84 27 58
      { lower := 24986, upper := 25062, witness := RowWitness.topPrime 24979 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good183_checked :
    goodSegmentCheck 84 27 58
      { lower := 25063, upper := 25069, witness := RowWitness.topPrime 25057 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good184_checked :
    goodSegmentCheck 84 27 58
      { lower := 25215, upper := 25272, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good185_checked :
    goodSegmentCheck 84 27 58
      { lower := 25273, upper := 25344, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good186_checked :
    goodSegmentCheck 84 27 58
      { lower := 25345, upper := 25364, witness := RowWitness.topPrime 25343 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good187_checked :
    goodSegmentCheck 84 27 58
      { lower := 25947, upper := 25969, witness := RowWitness.topPrime 25943 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good188_checked :
    goodSegmentCheck 84 27 58
      { lower := 26011, upper := 26030, witness := RowWitness.topPrime 26003 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good189_checked :
    goodSegmentCheck 84 27 58
      { lower := 26047, upper := 26094, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good190_checked :
    goodSegmentCheck 84 27 58
      { lower := 26645, upper := 26703, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good191_checked :
    goodSegmentCheck 84 27 58
      { lower := 26934, upper := 26979, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_good192_checked :
    goodSegmentCheck 84 27 58
      { lower := 27436, upper := 27463, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good193_checked :
    goodSegmentCheck 84 27 58
      { lower := 28125, upper := 28173, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good194_checked :
    goodSegmentCheck 84 27 58
      { lower := 28577, upper := 28644, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good195_checked :
    goodSegmentCheck 84 27 58
      { lower := 28749, upper := 28800, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good196_checked :
    goodSegmentCheck 84 27 58
      { lower := 29791, upper := 29851, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good197_checked :
    goodSegmentCheck 84 27 58
      { lower := 30258, upper := 30329, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good198_checked :
    goodSegmentCheck 84 27 58
      { lower := 30926, upper := 30982, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good199_checked :
    goodSegmentCheck 84 27 58
      { lower := 31250, upper := 31288, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good200_checked :
    goodSegmentCheck 84 27 58
      { lower := 31329, upper := 31333, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good201_checked :
    goodSegmentCheck 84 27 58
      { lower := 31433, upper := 31480, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good202_checked :
    goodSegmentCheck 84 27 58
      { lower := 31481, upper := 31516, witness := RowWitness.topPrime 31481 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good203_checked :
    goodSegmentCheck 84 27 58
      { lower := 31944, upper := 31990, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good204_checked :
    goodSegmentCheck 84 27 58
      { lower := 31991, upper := 32027, witness := RowWitness.topPrime 31991 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good205_checked :
    goodSegmentCheck 84 27 58
      { lower := 32805, upper := 32851, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good206_checked :
    goodSegmentCheck 84 27 58
      { lower := 32856, upper := 32888, witness := RowWitness.topPrime 32843 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good207_checked :
    goodSegmentCheck 84 27 58
      { lower := 33620, upper := 33697, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_good208_checked :
    goodSegmentCheck 84 27 58
      { lower := 34375, upper := 34378, witness := RowWitness.topPrime 34369 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good209_checked :
    goodSegmentCheck 84 27 58
      { lower := 34391, upper := 34464, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good210_checked :
    goodSegmentCheck 84 27 58
      { lower := 34465, upper := 34474, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good211_checked :
    goodSegmentCheck 84 27 58
      { lower := 35152, upper := 35214, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good212_checked :
    goodSegmentCheck 84 27 58
      { lower := 35301, upper := 35374, witness := RowWitness.topPrime 35291 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good213_checked :
    goodSegmentCheck 84 27 58
      { lower := 35375, upper := 35384, witness := RowWitness.topPrime 35363 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good214_checked :
    goodSegmentCheck 84 27 58
      { lower := 36517, upper := 36580, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good215_checked :
    goodSegmentCheck 84 27 58
      { lower := 36581, upper := 36584, witness := RowWitness.topPrime 36571 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good216_checked :
    goodSegmentCheck 84 27 58
      { lower := 36982, upper := 37062, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good217_checked :
    goodSegmentCheck 84 27 58
      { lower := 37063, upper := 37063, witness := RowWitness.topPrime 37061 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good218_checked :
    goodSegmentCheck 84 27 58
      { lower := 37349, upper := 37386, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good219_checked :
    goodSegmentCheck 84 27 58
      { lower := 37500, upper := 37529, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good220_checked :
    goodSegmentCheck 84 27 58
      { lower := 37553, upper := 37583, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good221_checked :
    goodSegmentCheck 84 27 58
      { lower := 39326, upper := 39406, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good222_checked :
    goodSegmentCheck 84 27 58
      { lower := 39407, upper := 39409, witness := RowWitness.topPrime 39397 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good223_checked :
    goodSegmentCheck 84 27 58
      { lower := 40344, upper := 40426, witness := RowWitness.topPrime 40343 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_good224_checked :
    goodSegmentCheck 84 27 58
      { lower := 40427, upper := 40427, witness := RowWitness.topPrime 40427 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good225_checked :
    goodSegmentCheck 84 27 58
      { lower := 40678, upper := 40708, witness := RowWitness.topPrime 40639 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good226_checked :
    goodSegmentCheck 84 27 58
      { lower := 40960, upper := 41014, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good227_checked :
    goodSegmentCheck 84 27 58
      { lower := 41772, upper := 41826, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good228_checked :
    goodSegmentCheck 84 27 58
      { lower := 43750, upper := 43770, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good229_checked :
    goodSegmentCheck 84 27 58
      { lower := 43940, upper := 44006, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good230_checked :
    goodSegmentCheck 84 27 58
      { lower := 44217, upper := 44263, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good231_checked :
    goodSegmentCheck 84 27 58
      { lower := 44944, upper := 44973, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good232_checked :
    goodSegmentCheck 84 27 58
      { lower := 48013, upper := 48044, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good233_checked :
    goodSegmentCheck 84 27 58
      { lower := 48373, upper := 48417, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good234_checked :
    goodSegmentCheck 84 27 58
      { lower := 48668, upper := 48681, witness := RowWitness.topPrime 48661 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good235_checked :
    goodSegmentCheck 84 27 58
      { lower := 48734, upper := 48751, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good236_checked :
    goodSegmentCheck 84 27 58
      { lower := 48778, upper := 48817, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good237_checked :
    goodSegmentCheck 84 27 58
      { lower := 49152, upper := 49213, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good238_checked :
    goodSegmentCheck 84 27 58
      { lower := 50000, upper := 50011, witness := RowWitness.topPrime 49999 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good239_checked :
    goodSegmentCheck 84 27 58
      { lower := 50421, upper := 50493, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_good240_checked :
    goodSegmentCheck 84 27 58
      { lower := 50562, upper := 50614, witness := RowWitness.topPrime 50551 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good241_checked :
    goodSegmentCheck 84 27 58
      { lower := 53371, upper := 53373, witness := RowWitness.topPrime 53359 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good242_checked :
    goodSegmentCheck 84 27 58
      { lower := 56180, upper := 56262, witness := RowWitness.topPrime 56179 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good243_checked :
    goodSegmentCheck 84 27 58
      { lower := 56263, upper := 56263, witness := RowWitness.topPrime 56263 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good244_checked :
    goodSegmentCheck 84 27 58
      { lower := 58619, upper := 58647, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good245_checked :
    goodSegmentCheck 84 27 58
      { lower := 59582, upper := 59619, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good246_checked :
    goodSegmentCheck 84 27 58
      { lower := 63948, upper := 63952, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good247_checked :
    goodSegmentCheck 84 27 58
      { lower := 65536, upper := 65604, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good248_checked :
    goodSegmentCheck 84 27 58
      { lower := 65605, upper := 65616, witness := RowWitness.topPrime 65599 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good249_checked :
    goodSegmentCheck 84 27 58
      { lower := 68651, upper := 68673, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good250_checked :
    goodSegmentCheck 84 27 58
      { lower := 68921, upper := 68973, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good251_checked :
    goodSegmentCheck 84 27 58
      { lower := 73205, upper := 73250, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good252_checked :
    goodSegmentCheck 84 27 58
      { lower := 85291, upper := 85342, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good253_checked :
    goodSegmentCheck 84 27 58
      { lower := 85343, upper := 85347, witness := RowWitness.topPrime 85333 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good254_checked :
    goodSegmentCheck 84 27 58
      { lower := 85697, upper := 85766, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good255_checked :
    goodSegmentCheck 84 27 58
      { lower := 98304, upper := 98343, witness := RowWitness.topPrime 98299 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_good256_checked :
    goodSegmentCheck 84 27 58
      { lower := 101306, upper := 101334, witness := RowWitness.topPrime 101293 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good257_checked :
    goodSegmentCheck 84 27 58
      { lower := 117128, upper := 117196, witness := RowWitness.topPrime 117127 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good258_checked :
    goodSegmentCheck 84 27 58
      { lower := 146410, upper := 146417, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good259_checked :
    goodSegmentCheck 84 27 58
      { lower := 148955, upper := 148960, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row084_good260_checked :
    goodSegmentCheck 84 27 58
      { lower := 206839, upper := 206846, witness := RowWitness.topPrime 206827 } = true := by
  exact good_top_prime_checked (i := 84) (r := 27) (s := 58) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_good260_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_goods_checked :
    row084.goods.all (goodSegmentCheck row084.height.i row084.height.r row084.height.s) = true := by
  change row084_goods.all (goodSegmentCheck 84 27 58) = true
  simp only [row084_goods, List.all_cons, List.all_nil,
    row084_good000_checked,
    row084_good001_checked,
    row084_good002_checked,
    row084_good003_checked,
    row084_good004_checked,
    row084_good005_checked,
    row084_good006_checked,
    row084_good007_checked,
    row084_good008_checked,
    row084_good009_checked,
    row084_good010_checked,
    row084_good011_checked,
    row084_good012_checked,
    row084_good013_checked,
    row084_good014_checked,
    row084_good015_checked,
    row084_good016_checked,
    row084_good017_checked,
    row084_good018_checked,
    row084_good019_checked,
    row084_good020_checked,
    row084_good021_checked,
    row084_good022_checked,
    row084_good023_checked,
    row084_good024_checked,
    row084_good025_checked,
    row084_good026_checked,
    row084_good027_checked,
    row084_good028_checked,
    row084_good029_checked,
    row084_good030_checked,
    row084_good031_checked,
    row084_good032_checked,
    row084_good033_checked,
    row084_good034_checked,
    row084_good035_checked,
    row084_good036_checked,
    row084_good037_checked,
    row084_good038_checked,
    row084_good039_checked,
    row084_good040_checked,
    row084_good041_checked,
    row084_good042_checked,
    row084_good043_checked,
    row084_good044_checked,
    row084_good045_checked,
    row084_good046_checked,
    row084_good047_checked,
    row084_good048_checked,
    row084_good049_checked,
    row084_good050_checked,
    row084_good051_checked,
    row084_good052_checked,
    row084_good053_checked,
    row084_good054_checked,
    row084_good055_checked,
    row084_good056_checked,
    row084_good057_checked,
    row084_good058_checked,
    row084_good059_checked,
    row084_good060_checked,
    row084_good061_checked,
    row084_good062_checked,
    row084_good063_checked,
    row084_good064_checked,
    row084_good065_checked,
    row084_good066_checked,
    row084_good067_checked,
    row084_good068_checked,
    row084_good069_checked,
    row084_good070_checked,
    row084_good071_checked,
    row084_good072_checked,
    row084_good073_checked,
    row084_good074_checked,
    row084_good075_checked,
    row084_good076_checked,
    row084_good077_checked,
    row084_good078_checked,
    row084_good079_checked,
    row084_good080_checked,
    row084_good081_checked,
    row084_good082_checked,
    row084_good083_checked,
    row084_good084_checked,
    row084_good085_checked,
    row084_good086_checked,
    row084_good087_checked,
    row084_good088_checked,
    row084_good089_checked,
    row084_good090_checked,
    row084_good091_checked,
    row084_good092_checked,
    row084_good093_checked,
    row084_good094_checked,
    row084_good095_checked,
    row084_good096_checked,
    row084_good097_checked,
    row084_good098_checked,
    row084_good099_checked,
    row084_good100_checked,
    row084_good101_checked,
    row084_good102_checked,
    row084_good103_checked,
    row084_good104_checked,
    row084_good105_checked,
    row084_good106_checked,
    row084_good107_checked,
    row084_good108_checked,
    row084_good109_checked,
    row084_good110_checked,
    row084_good111_checked,
    row084_good112_checked,
    row084_good113_checked,
    row084_good114_checked,
    row084_good115_checked,
    row084_good116_checked,
    row084_good117_checked,
    row084_good118_checked,
    row084_good119_checked,
    row084_good120_checked,
    row084_good121_checked,
    row084_good122_checked,
    row084_good123_checked,
    row084_good124_checked,
    row084_good125_checked,
    row084_good126_checked,
    row084_good127_checked,
    row084_good128_checked,
    row084_good129_checked,
    row084_good130_checked,
    row084_good131_checked,
    row084_good132_checked,
    row084_good133_checked,
    row084_good134_checked,
    row084_good135_checked,
    row084_good136_checked,
    row084_good137_checked,
    row084_good138_checked,
    row084_good139_checked,
    row084_good140_checked,
    row084_good141_checked,
    row084_good142_checked,
    row084_good143_checked,
    row084_good144_checked,
    row084_good145_checked,
    row084_good146_checked,
    row084_good147_checked,
    row084_good148_checked,
    row084_good149_checked,
    row084_good150_checked,
    row084_good151_checked,
    row084_good152_checked,
    row084_good153_checked,
    row084_good154_checked,
    row084_good155_checked,
    row084_good156_checked,
    row084_good157_checked,
    row084_good158_checked,
    row084_good159_checked,
    row084_good160_checked,
    row084_good161_checked,
    row084_good162_checked,
    row084_good163_checked,
    row084_good164_checked,
    row084_good165_checked,
    row084_good166_checked,
    row084_good167_checked,
    row084_good168_checked,
    row084_good169_checked,
    row084_good170_checked,
    row084_good171_checked,
    row084_good172_checked,
    row084_good173_checked,
    row084_good174_checked,
    row084_good175_checked,
    row084_good176_checked,
    row084_good177_checked,
    row084_good178_checked,
    row084_good179_checked,
    row084_good180_checked,
    row084_good181_checked,
    row084_good182_checked,
    row084_good183_checked,
    row084_good184_checked,
    row084_good185_checked,
    row084_good186_checked,
    row084_good187_checked,
    row084_good188_checked,
    row084_good189_checked,
    row084_good190_checked,
    row084_good191_checked,
    row084_good192_checked,
    row084_good193_checked,
    row084_good194_checked,
    row084_good195_checked,
    row084_good196_checked,
    row084_good197_checked,
    row084_good198_checked,
    row084_good199_checked,
    row084_good200_checked,
    row084_good201_checked,
    row084_good202_checked,
    row084_good203_checked,
    row084_good204_checked,
    row084_good205_checked,
    row084_good206_checked,
    row084_good207_checked,
    row084_good208_checked,
    row084_good209_checked,
    row084_good210_checked,
    row084_good211_checked,
    row084_good212_checked,
    row084_good213_checked,
    row084_good214_checked,
    row084_good215_checked,
    row084_good216_checked,
    row084_good217_checked,
    row084_good218_checked,
    row084_good219_checked,
    row084_good220_checked,
    row084_good221_checked,
    row084_good222_checked,
    row084_good223_checked,
    row084_good224_checked,
    row084_good225_checked,
    row084_good226_checked,
    row084_good227_checked,
    row084_good228_checked,
    row084_good229_checked,
    row084_good230_checked,
    row084_good231_checked,
    row084_good232_checked,
    row084_good233_checked,
    row084_good234_checked,
    row084_good235_checked,
    row084_good236_checked,
    row084_good237_checked,
    row084_good238_checked,
    row084_good239_checked,
    row084_good240_checked,
    row084_good241_checked,
    row084_good242_checked,
    row084_good243_checked,
    row084_good244_checked,
    row084_good245_checked,
    row084_good246_checked,
    row084_good247_checked,
    row084_good248_checked,
    row084_good249_checked,
    row084_good250_checked,
    row084_good251_checked,
    row084_good252_checked,
    row084_good253_checked,
    row084_good254_checked,
    row084_good255_checked,
    row084_good256_checked,
    row084_good257_checked,
    row084_good258_checked,
    row084_good259_checked,
    row084_good260_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_registered :
    decide (row084.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row084_small_checked :
    coverCheck (2 * row084.height.i + 2) (row084.height.i * (row084.height.i - 1) - 1)
      (row084.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row084_layerCover_checked :
    coverCheck (row084.height.i * (row084.height.i - 1)) (row084.height.n0 - 1)
      (row084.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row084_bounds : List NatInterval :=
  [(170, 250), (251, 334), (335, 414), (415, 492), (493, 574), (575, 654), (655, 736), (737, 816), (817, 894), (895, 970), (971, 1054), (1055, 1134), (1135, 1212), (1213, 1296), (1297, 1380), (1381, 1464), (1465, 1542), (1543, 1626), (1627, 1710), (1711, 1792), (1793, 1872), (1873, 1956), (1957, 2034), (2035, 2112), (2113, 2196), (2197, 2262), (2263, 2334), (2335, 2416), (2417, 2500), (2501, 2560), (2561, 2640), (2641, 2716), (2717, 2796), (2797, 2880), (2881, 2962), (2963, 3046), (3047, 3124), (3125, 3204), (3205, 3286), (3287, 3354), (3355, 3430), (3431, 3496), (3497, 3574), (3575, 3654), (3655, 3726), (3727, 3810), (3811, 3886), (3887, 3964), (3965, 4030), (4031, 4110), (4111, 4194), (4195, 4260), (4261, 4344), (4345, 4422), (4423, 4506), (4507, 4590), (4591, 4674), (4675, 4756), (4757, 4834), (4835, 4914), (4915, 4992), (4993, 5076), (5077, 5160), (5161, 5236), (5237, 5320), (5321, 5392), (5393, 5476), (5477, 5560), (5561, 5640), (5641, 5724), (5725, 5800), (5801, 5884), (5885, 5964), (5965, 6036), (6037, 6120), (6121, 6204), (6205, 6286), (6287, 6370), (6371, 6450), (6451, 6534), (6535, 6612), (6613, 6690), (6691, 6774), (6775, 6846), (6847, 6924), (6925, 7000), (7001, 7019), (7203, 7276), (7277, 7308), (7406, 7476), (7477, 7489), (7500, 7582), (7583, 7652), (7942, 8020), (8021, 8025), (8125, 8175), (8192, 8208), (8214, 8275), (8381, 8386), (8405, 8472), (8473, 8510), (8664, 8746), (8747, 8830), (8831, 8833), (8836, 8871), (8978, 9054), (9055, 9076), (9251, 9324), (9325, 9334), (9375, 9454), (9455, 9458), (9583, 9634), (9635, 9687), (9826, 9830), (10051, 10122), (10123, 10175), (10469, 10526), (10580, 10650), (10651, 10731), (10935, 10992), (10993, 11035), (11045, 11068), (11094, 11176), (11177, 11260), (11261, 11319), (11774, 11826), (11827, 11850), (12321, 12371), (12493, 12574), (12575, 12576), (12696, 12698), (13125, 13204), (13205, 13208), (13225, 13302), (13303, 13308), (13310, 13337), (13454, 13534), (13535, 13539), (13718, 13794), (13795, 13837), (14297, 14366), (14375, 14380), (14415, 14458), (14792, 14822), (15059, 15083), (15123, 15204), (15205, 15212), (15376, 15456), (15457, 15459), (15979, 16056), (16057, 16062), (16384, 16420), (16428, 16467), (16810, 16870), (16871, 16937), (17303, 17381), (17576, 17579), (17672, 17744), (18491, 18564), (18565, 18574), (18634, 18688), (18750, 18806), (19220, 19249), (19663, 19744), (19745, 19746), (20172, 20244), (20245, 20264), (20535, 20563), (20577, 20618), (21316, 21379), (21866, 21946), (21947, 21958), (21970, 21987), (22103, 22173), (22472, 22528), (22707, 22710), (24025, 24106), (24107, 24108), (24334, 24412), (24413, 24450), (24576, 24654), (24655, 24659), (24986, 25062), (25063, 25069), (25215, 25272), (25273, 25344), (25345, 25364), (25947, 25969), (26011, 26030), (26047, 26094), (26645, 26703), (26934, 26979), (27436, 27463), (28125, 28173), (28577, 28644), (28749, 28800), (29791, 29851), (30258, 30329), (30926, 30982), (31250, 31288), (31329, 31333), (31433, 31480), (31481, 31516), (31944, 31990), (31991, 32027), (32805, 32851), (32856, 32888), (33620, 33697), (34375, 34378), (34391, 34464), (34465, 34474), (35152, 35214), (35301, 35374), (35375, 35384), (36517, 36580), (36581, 36584), (36982, 37062), (37063, 37063), (37349, 37386), (37500, 37529), (37553, 37583), (39326, 39406), (39407, 39409), (40344, 40426), (40427, 40427), (40678, 40708), (40960, 41014), (41772, 41826), (43750, 43770), (43940, 44006), (44217, 44263), (44944, 44973), (48013, 48044), (48373, 48417), (48668, 48681), (48734, 48751), (48778, 48817), (49152, 49213), (50000, 50011), (50421, 50493), (50562, 50614), (53371, 53373), (56180, 56262), (56263, 56263), (58619, 58647), (59582, 59619), (63948, 63952), (65536, 65604), (65605, 65616), (68651, 68673), (68921, 68973), (73205, 73250), (85291, 85342), (85343, 85347), (85697, 85766), (98304, 98343), (101306, 101334), (117128, 117196), (146410, 146417), (148955, 148960), (206839, 206846)]

theorem row084_bounds_eq : row084.goods.map goodSegmentBounds = row084_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row084_layer000_intervals : List ColouredInterval :=
  [(2, 7168, 7251), (2, 8192, 8275), (2, 10240, 10323), (2, 12288, 12371), (2, 8192, 8275), (2, 12288, 12371), (2, 8192, 8275), (3, 7290, 7373), (3, 8748, 8831), (3, 10935, 11018), (3, 13122, 13205), (3, 13122, 13205), (5, 7500, 7583), (5, 8125, 8208), (5, 8750, 8833), (5, 9375, 9458), (5, 10000, 10083), (5, 10625, 10708), (5, 11250, 11333), (5, 11875, 11958), (5, 12500, 12583), (5, 13125, 13208), (5, 13750, 13833), (5, 9375, 9458), (5, 12500, 12583), (7, 7203, 7286), (7, 9604, 9687), (11, 7986, 8069), (11, 9317, 9400), (11, 10648, 10731), (11, 11979, 12062), (11, 13310, 13393), (13, 8788, 8871), (13, 10985, 11068), (13, 13182, 13265), (17, 6972, 7019), (17, 7225, 7308), (17, 7514, 7597), (17, 7803, 7886), (17, 8092, 8175), (17, 8381, 8464), (17, 8670, 8753), (17, 8959, 9042), (17, 9826, 9909), (19, 7220, 7303), (19, 7581, 7664), (19, 7942, 8025), (19, 8303, 8386), (19, 8664, 8747), (19, 9025, 9108), (19, 9386, 9469), (19, 9747, 9830), (19, 10108, 10191), (19, 10469, 10552), (19, 10830, 10913), (19, 11191, 11274), (19, 13718, 13801), (23, 7406, 7489), (23, 7935, 8018), (23, 8464, 8547), (23, 8993, 9076), (23, 9522, 9605), (23, 10051, 10134), (23, 10580, 10663), (23, 11109, 11192), (23, 11638, 11721), (23, 12167, 12250), (23, 12696, 12779), (23, 13225, 13308), (23, 13754, 13837), (23, 12167, 12250), (29, 7569, 7652), (29, 8410, 8493), (29, 9251, 9334), (29, 10092, 10175), (29, 10933, 11016), (29, 11774, 11857), (29, 12615, 12698), (29, 13456, 13539), (31, 7688, 7771), (31, 8649, 8732), (31, 9610, 9693), (31, 10571, 10654), (31, 11532, 11615), (31, 12493, 12576), (31, 13454, 13537), (37, 8214, 8297), (37, 9583, 9666), (37, 10952, 11035), (37, 12321, 12404), (37, 13690, 13773), (41, 8405, 8488), (41, 10086, 10169), (41, 11767, 11850), (41, 13448, 13531), (43, 7396, 7479), (43, 9245, 9328), (43, 11094, 11177), (43, 12943, 13026), (47, 8836, 8919), (47, 11045, 11128), (47, 13254, 13337), (53, 8427, 8510), (53, 11236, 11319), (59, 6972, 7045), (59, 10443, 10526), (59, 13924, 13943), (61, 7442, 7525), (61, 11163, 11246), (67, 8978, 9061), (67, 13467, 13550), (71, 10082, 10165), (73, 10658, 10741), (79, 12482, 12565), (83, 6972, 6972), (83, 13778, 13861)]

def row084_layer000_block000 : List ColouredInterval :=
  [(2, 7168, 7251), (2, 8192, 8275), (2, 10240, 10323), (2, 12288, 12371), (2, 8192, 8275), (2, 12288, 12371), (2, 8192, 8275), (3, 7290, 7373), (3, 8748, 8831), (3, 10935, 11018), (3, 13122, 13205), (3, 13122, 13205), (5, 7500, 7583), (5, 8125, 8208), (5, 8750, 8833), (5, 9375, 9458)]

def row084_layer000_block001 : List ColouredInterval :=
  [(5, 10000, 10083), (5, 10625, 10708), (5, 11250, 11333), (5, 11875, 11958), (5, 12500, 12583), (5, 13125, 13208), (5, 13750, 13833), (5, 9375, 9458), (5, 12500, 12583), (7, 7203, 7286), (7, 9604, 9687), (11, 7986, 8069), (11, 9317, 9400), (11, 10648, 10731), (11, 11979, 12062), (11, 13310, 13393)]

def row084_layer000_block002 : List ColouredInterval :=
  [(13, 8788, 8871), (13, 10985, 11068), (13, 13182, 13265), (17, 6972, 7019), (17, 7225, 7308), (17, 7514, 7597), (17, 7803, 7886), (17, 8092, 8175), (17, 8381, 8464), (17, 8670, 8753), (17, 8959, 9042), (17, 9826, 9909), (19, 7220, 7303), (19, 7581, 7664), (19, 7942, 8025), (19, 8303, 8386)]

def row084_layer000_block003 : List ColouredInterval :=
  [(19, 8664, 8747), (19, 9025, 9108), (19, 9386, 9469), (19, 9747, 9830), (19, 10108, 10191), (19, 10469, 10552), (19, 10830, 10913), (19, 11191, 11274), (19, 13718, 13801), (23, 7406, 7489), (23, 7935, 8018), (23, 8464, 8547), (23, 8993, 9076), (23, 9522, 9605), (23, 10051, 10134), (23, 10580, 10663)]

def row084_layer000_block004 : List ColouredInterval :=
  [(23, 11109, 11192), (23, 11638, 11721), (23, 12167, 12250), (23, 12696, 12779), (23, 13225, 13308), (23, 13754, 13837), (23, 12167, 12250), (29, 7569, 7652), (29, 8410, 8493), (29, 9251, 9334), (29, 10092, 10175), (29, 10933, 11016), (29, 11774, 11857), (29, 12615, 12698), (29, 13456, 13539), (31, 7688, 7771)]

def row084_layer000_block005 : List ColouredInterval :=
  [(31, 8649, 8732), (31, 9610, 9693), (31, 10571, 10654), (31, 11532, 11615), (31, 12493, 12576), (31, 13454, 13537), (37, 8214, 8297), (37, 9583, 9666), (37, 10952, 11035), (37, 12321, 12404), (37, 13690, 13773), (41, 8405, 8488), (41, 10086, 10169), (41, 11767, 11850), (41, 13448, 13531), (43, 7396, 7479)]

def row084_layer000_block006 : List ColouredInterval :=
  [(43, 9245, 9328), (43, 11094, 11177), (43, 12943, 13026), (47, 8836, 8919), (47, 11045, 11128), (47, 13254, 13337), (53, 8427, 8510), (53, 11236, 11319), (59, 6972, 7045), (59, 10443, 10526), (59, 13924, 13943), (61, 7442, 7525), (61, 11163, 11246), (67, 8978, 9061), (67, 13467, 13550), (71, 10082, 10165)]

def row084_layer000_block007 : List ColouredInterval :=
  [(73, 10658, 10741), (79, 12482, 12565), (83, 6972, 6972), (83, 13778, 13861)]

def row084_layer000_chunks : List (List ColouredInterval) :=
  [row084_layer000_block000, row084_layer000_block001, row084_layer000_block002, row084_layer000_block003, row084_layer000_block004, row084_layer000_block005, row084_layer000_block006, row084_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer000_arithmetic : LayerArithmeticValid row084.height { lower := 6972, upper := 13944, M := 31 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer000_enumeration :
    activePowerIntervalList 84 31 6972 13944 = row084_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer000_pairs000 :
    row084_layer000_block000.all (fun I => row084_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer000_pairs001 :
    row084_layer000_block001.all (fun I => row084_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer000_pairs002 :
    row084_layer000_block002.all (fun I => row084_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer000_pairs003 :
    row084_layer000_block003.all (fun I => row084_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer000_pairs004 :
    row084_layer000_block004.all (fun I => row084_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer000_pairs005 :
    row084_layer000_block005.all (fun I => row084_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer000_pairs006 :
    row084_layer000_block006.all (fun I => row084_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer000_pairs007 :
    row084_layer000_block007.all (fun I => row084_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row084_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer000_pairs007
