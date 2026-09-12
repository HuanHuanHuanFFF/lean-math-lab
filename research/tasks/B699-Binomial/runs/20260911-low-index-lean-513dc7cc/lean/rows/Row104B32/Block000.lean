import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row104_height : HeightCertificateDatum := { i := 104, r := 34, s := 72, n0Power10 := 10 }

def row104_goods : List GoodSegment := [
  { lower := 210, upper := 302, witness := RowWitness.topPrime 199 },
  { lower := 303, upper := 396, witness := RowWitness.topPrime 293 },
  { lower := 397, upper := 500, witness := RowWitness.topPrime 397 },
  { lower := 501, upper := 602, witness := RowWitness.topPrime 499 },
  { lower := 603, upper := 704, witness := RowWitness.topPrime 601 },
  { lower := 705, upper := 804, witness := RowWitness.topPrime 701 },
  { lower := 805, upper := 900, witness := RowWitness.topPrime 797 },
  { lower := 901, upper := 990, witness := RowWitness.topPrime 887 },
  { lower := 991, upper := 1094, witness := RowWitness.topPrime 991 },
  { lower := 1095, upper := 1196, witness := RowWitness.topPrime 1093 },
  { lower := 1197, upper := 1296, witness := RowWitness.topPrime 1193 },
  { lower := 1297, upper := 1400, witness := RowWitness.topPrime 1297 },
  { lower := 1401, upper := 1502, witness := RowWitness.topPrime 1399 },
  { lower := 1503, upper := 1602, witness := RowWitness.topPrime 1499 },
  { lower := 1603, upper := 1704, witness := RowWitness.topPrime 1601 },
  { lower := 1705, upper := 1802, witness := RowWitness.topPrime 1699 },
  { lower := 1803, upper := 1904, witness := RowWitness.topPrime 1801 },
  { lower := 1905, upper := 2004, witness := RowWitness.topPrime 1901 },
  { lower := 2005, upper := 2106, witness := RowWitness.topPrime 2003 },
  { lower := 2107, upper := 2202, witness := RowWitness.topPrime 2099 },
  { lower := 2203, upper := 2306, witness := RowWitness.topPrime 2203 },
  { lower := 2307, upper := 2400, witness := RowWitness.topPrime 2297 },
  { lower := 2401, upper := 2502, witness := RowWitness.topPrime 2399 },
  { lower := 2503, upper := 2606, witness := RowWitness.topPrime 2503 },
  { lower := 2607, upper := 2696, witness := RowWitness.topPrime 2593 },
  { lower := 2697, upper := 2796, witness := RowWitness.topPrime 2693 },
  { lower := 2797, upper := 2900, witness := RowWitness.topPrime 2797 },
  { lower := 2901, upper := 3000, witness := RowWitness.topPrime 2897 },
  { lower := 3001, upper := 3104, witness := RowWitness.topPrime 3001 },
  { lower := 3105, upper := 3192, witness := RowWitness.topPrime 3089 },
  { lower := 3193, upper := 3294, witness := RowWitness.topPrime 3191 },
  { lower := 3295, upper := 3374, witness := RowWitness.topPrime 3271 },
  { lower := 3375, upper := 3476, witness := RowWitness.topPrime 3373 },
  { lower := 3477, upper := 3572, witness := RowWitness.topPrime 3469 },
  { lower := 3573, upper := 3674, witness := RowWitness.topPrime 3571 },
  { lower := 3675, upper := 3776, witness := RowWitness.topPrime 3673 },
  { lower := 3777, upper := 3872, witness := RowWitness.topPrime 3769 },
  { lower := 3873, upper := 3966, witness := RowWitness.topPrime 3863 },
  { lower := 3967, upper := 4070, witness := RowWitness.topPrime 3967 },
  { lower := 4071, upper := 4160, witness := RowWitness.topPrime 4057 },
  { lower := 4161, upper := 4262, witness := RowWitness.topPrime 4159 },
  { lower := 4263, upper := 4364, witness := RowWitness.topPrime 4261 },
  { lower := 4365, upper := 4466, witness := RowWitness.topPrime 4363 },
  { lower := 4467, upper := 4566, witness := RowWitness.topPrime 4463 },
  { lower := 4567, upper := 4670, witness := RowWitness.topPrime 4567 },
  { lower := 4671, upper := 4766, witness := RowWitness.topPrime 4663 },
  { lower := 4767, upper := 4862, witness := RowWitness.topPrime 4759 },
  { lower := 4863, upper := 4964, witness := RowWitness.topPrime 4861 },
  { lower := 4965, upper := 5060, witness := RowWitness.topPrime 4957 },
  { lower := 5061, upper := 5162, witness := RowWitness.topPrime 5059 },
  { lower := 5163, upper := 5256, witness := RowWitness.topPrime 5153 },
  { lower := 5257, upper := 5340, witness := RowWitness.topPrime 5237 },
  { lower := 5341, upper := 5436, witness := RowWitness.topPrime 5333 },
  { lower := 5437, upper := 5540, witness := RowWitness.topPrime 5437 },
  { lower := 5541, upper := 5634, witness := RowWitness.topPrime 5531 },
  { lower := 5635, upper := 5726, witness := RowWitness.topPrime 5623 },
  { lower := 5727, upper := 5820, witness := RowWitness.topPrime 5717 },
  { lower := 5821, upper := 5924, witness := RowWitness.topPrime 5821 },
  { lower := 5925, upper := 6026, witness := RowWitness.topPrime 5923 },
  { lower := 6027, upper := 6114, witness := RowWitness.topPrime 6011 },
  { lower := 6115, upper := 6216, witness := RowWitness.topPrime 6113 },
  { lower := 6217, upper := 6320, witness := RowWitness.topPrime 6217 },
  { lower := 6321, upper := 6420, witness := RowWitness.topPrime 6317 },
  { lower := 6421, upper := 6524, witness := RowWitness.topPrime 6421 },
  { lower := 6525, upper := 6624, witness := RowWitness.topPrime 6521 },
  { lower := 6625, upper := 6722, witness := RowWitness.topPrime 6619 },
  { lower := 6723, upper := 6822, witness := RowWitness.topPrime 6719 },
  { lower := 6823, upper := 6926, witness := RowWitness.topPrime 6823 },
  { lower := 6927, upper := 7020, witness := RowWitness.topPrime 6917 },
  { lower := 7021, upper := 7122, witness := RowWitness.topPrime 7019 },
  { lower := 7123, upper := 7224, witness := RowWitness.topPrime 7121 },
  { lower := 7225, upper := 7322, witness := RowWitness.topPrime 7219 },
  { lower := 7323, upper := 7424, witness := RowWitness.topPrime 7321 },
  { lower := 7425, upper := 7520, witness := RowWitness.topPrime 7417 },
  { lower := 7521, upper := 7620, witness := RowWitness.topPrime 7517 },
  { lower := 7621, upper := 7724, witness := RowWitness.topPrime 7621 },
  { lower := 7725, upper := 7826, witness := RowWitness.topPrime 7723 },
  { lower := 7827, upper := 7926, witness := RowWitness.topPrime 7823 },
  { lower := 7927, upper := 8030, witness := RowWitness.topPrime 7927 },
  { lower := 8031, upper := 8120, witness := RowWitness.topPrime 8017 },
  { lower := 8121, upper := 8220, witness := RowWitness.topPrime 8117 },
  { lower := 8221, upper := 8324, witness := RowWitness.topPrime 8221 },
  { lower := 8325, upper := 8420, witness := RowWitness.topPrime 8317 },
  { lower := 8421, upper := 8522, witness := RowWitness.topPrime 8419 },
  { lower := 8523, upper := 8624, witness := RowWitness.topPrime 8521 },
  { lower := 8625, upper := 8726, witness := RowWitness.topPrime 8623 },
  { lower := 8727, upper := 8822, witness := RowWitness.topPrime 8719 },
  { lower := 8823, upper := 8924, witness := RowWitness.topPrime 8821 },
  { lower := 8925, upper := 9026, witness := RowWitness.topPrime 8923 },
  { lower := 9027, upper := 9116, witness := RowWitness.topPrime 9013 },
  { lower := 9117, upper := 9212, witness := RowWitness.topPrime 9109 },
  { lower := 9213, upper := 9312, witness := RowWitness.topPrime 9209 },
  { lower := 9313, upper := 9414, witness := RowWitness.topPrime 9311 },
  { lower := 9415, upper := 9516, witness := RowWitness.topPrime 9413 },
  { lower := 9517, upper := 9614, witness := RowWitness.topPrime 9511 },
  { lower := 9615, upper := 9716, witness := RowWitness.topPrime 9613 },
  { lower := 9717, upper := 9800, witness := RowWitness.topPrime 9697 },
  { lower := 9801, upper := 9894, witness := RowWitness.topPrime 9791 },
  { lower := 9895, upper := 9990, witness := RowWitness.topPrime 9887 },
  { lower := 9991, upper := 10076, witness := RowWitness.topPrime 9973 },
  { lower := 10077, upper := 10172, witness := RowWitness.topPrime 10069 },
  { lower := 10173, upper := 10272, witness := RowWitness.topPrime 10169 },
  { lower := 10273, upper := 10376, witness := RowWitness.topPrime 10273 },
  { lower := 10377, upper := 10472, witness := RowWitness.topPrime 10369 },
  { lower := 10473, upper := 10566, witness := RowWitness.topPrime 10463 },
  { lower := 10567, upper := 10670, witness := RowWitness.topPrime 10567 },
  { lower := 10671, upper := 10751, witness := RowWitness.topPrime 10667 },
  { lower := 10935, upper := 11012, witness := RowWitness.topPrime 10909 },
  { lower := 11013, upper := 11038, witness := RowWitness.topPrime 11003 },
  { lower := 11045, upper := 11055, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11196, witness := RowWitness.topPrime 11093 },
  { lower := 11197, upper := 11212, witness := RowWitness.topPrime 11197 },
  { lower := 11236, upper := 11316, witness := RowWitness.topPrime 11213 },
  { lower := 11317, upper := 11339, witness := RowWitness.topPrime 11317 },
  { lower := 11664, upper := 11741, witness := RowWitness.topPrime 11657 },
  { lower := 11767, upper := 11767, witness := RowWitness.topPrime 11743 },
  { lower := 11774, upper := 11846, witness := RowWitness.topPrime 11743 },
  { lower := 11847, upper := 11870, witness := RowWitness.topPrime 11839 },
  { lower := 11875, upper := 11877, witness := RowWitness.topPrime 11867 },
  { lower := 12005, upper := 12082, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12391, witness := RowWitness.topPrime 12301 },
  { lower := 12393, upper := 12424, witness := RowWitness.topPrime 12391 },
  { lower := 12482, upper := 12582, witness := RowWitness.topPrime 12479 },
  { lower := 12583, upper := 12596, witness := RowWitness.topPrime 12583 },
  { lower := 12696, upper := 12718, witness := RowWitness.topPrime 12689 },
  { lower := 13125, upper := 13224, witness := RowWitness.topPrime 13121 },
  { lower := 13225, upper := 13228, witness := RowWitness.topPrime 13219 },
  { lower := 13254, upper := 13352, witness := RowWitness.topPrime 13249 },
  { lower := 13353, upper := 13357, witness := RowWitness.topPrime 13339 },
  { lower := 13454, upper := 13554, witness := RowWitness.topPrime 13451 },
  { lower := 13555, upper := 13559, witness := RowWitness.topPrime 13553 },
  { lower := 13718, upper := 13814, witness := RowWitness.topPrime 13711 },
  { lower := 13815, upper := 13881, witness := RowWitness.topPrime 13807 },
  { lower := 13924, upper := 13954, witness := RowWitness.topPrime 13921 },
  { lower := 14375, upper := 14400, witness := RowWitness.topPrime 14369 },
  { lower := 14406, upper := 14504, witness := RowWitness.topPrime 14401 },
  { lower := 14505, upper := 14509, witness := RowWitness.topPrime 14503 },
  { lower := 14641, upper := 14683, witness := RowWitness.topPrime 14639 },
  { lower := 14739, upper := 14744, witness := RowWitness.topPrime 14737 },
  { lower := 14792, upper := 14842, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14895, witness := RowWitness.topPrime 14879 },
  { lower := 15059, upper := 15103, witness := RowWitness.topPrime 15053 },
  { lower := 15123, upper := 15224, witness := RowWitness.topPrime 15121 },
  { lower := 15225, upper := 15232, witness := RowWitness.topPrime 15217 },
  { lower := 15376, upper := 15412, witness := RowWitness.topPrime 15373 },
  { lower := 15463, upper := 15479, witness := RowWitness.topPrime 15461 },
  { lower := 15979, upper := 16076, witness := RowWitness.topPrime 15973 },
  { lower := 16077, upper := 16090, witness := RowWitness.topPrime 16073 },
  { lower := 16337, upper := 16353, witness := RowWitness.topPrime 16333 },
  { lower := 16384, upper := 16484, witness := RowWitness.topPrime 16381 },
  { lower := 16485, upper := 16487, witness := RowWitness.topPrime 16481 },
  { lower := 16807, upper := 16890, witness := RowWitness.topPrime 16787 },
  { lower := 16891, upper := 16923, witness := RowWitness.topPrime 16889 },
  { lower := 17303, upper := 17401, witness := RowWitness.topPrime 17299 },
  { lower := 17405, upper := 17406, witness := RowWitness.topPrime 17401 },
  { lower := 17496, upper := 17508, witness := RowWitness.topPrime 17491 },
  { lower := 17672, upper := 17764, witness := RowWitness.topPrime 17669 },
  { lower := 18259, upper := 18328, witness := RowWitness.topPrime 18257 },
  { lower := 18491, upper := 18584, witness := RowWitness.topPrime 18481 },
  { lower := 18585, upper := 18594, witness := RowWitness.topPrime 18583 },
  { lower := 18605, upper := 18605, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18708, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18737, witness := RowWitness.topPrime 18719 },
  { lower := 18750, upper := 18852, witness := RowWitness.topPrime 18749 },
  { lower := 18853, upper := 18853, witness := RowWitness.topPrime 18839 },
  { lower := 19208, upper := 19310, witness := RowWitness.topPrime 19207 },
  { lower := 19311, upper := 19311, witness := RowWitness.topPrime 19309 },
  { lower := 19663, upper := 19764, witness := RowWitness.topPrime 19661 },
  { lower := 19765, upper := 19766, witness := RowWitness.topPrime 19763 },
  { lower := 19965, upper := 19984, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20264, witness := RowWitness.topPrime 20161 },
  { lower := 20265, upper := 20284, witness := RowWitness.topPrime 20261 },
  { lower := 20402, upper := 20442, witness := RowWitness.topPrime 20399 },
  { lower := 20577, upper := 20638, witness := RowWitness.topPrime 20563 },
  { lower := 20667, upper := 20680, witness := RowWitness.topPrime 20663 },
  { lower := 21218, upper := 21245, witness := RowWitness.topPrime 21211 },
  { lower := 21296, upper := 21386, witness := RowWitness.topPrime 21283 },
  { lower := 21387, upper := 21399, witness := RowWitness.topPrime 21383 },
  { lower := 21870, upper := 21966, witness := RowWitness.topPrime 21863 },
  { lower := 21967, upper := 21978, witness := RowWitness.topPrime 21961 },
  { lower := 22188, upper := 22193, witness := RowWitness.topPrime 22171 },
  { lower := 22472, upper := 22548, witness := RowWitness.topPrime 22469 },
  { lower := 24010, upper := 24110, witness := RowWitness.topPrime 24007 },
  { lower := 24111, upper := 24140, witness := RowWitness.topPrime 24109 },
  { lower := 24334, upper := 24432, witness := RowWitness.topPrime 24329 },
  { lower := 24433, upper := 24470, witness := RowWitness.topPrime 24421 },
  { lower := 24642, upper := 24668, witness := RowWitness.topPrime 24631 },
  { lower := 25000, upper := 25067, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25292, witness := RowWitness.topPrime 25189 },
  { lower := 25293, upper := 25364, witness := RowWitness.topPrime 25261 },
  { lower := 25365, upper := 25384, witness := RowWitness.topPrime 25357 },
  { lower := 26047, upper := 26114, witness := RowWitness.topPrime 26041 },
  { lower := 26508, upper := 26514, witness := RowWitness.topPrime 26501 },
  { lower := 26645, upper := 26723, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 26999, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27483, witness := RowWitness.topPrime 27431 },
  { lower := 27951, upper := 27951, witness := RowWitness.topPrime 27947 },
  { lower := 28125, upper := 28193, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28228, witness := RowWitness.topPrime 28219 },
  { lower := 28577, upper := 28664, witness := RowWitness.topPrime 28573 },
  { lower := 28749, upper := 28832, witness := RowWitness.topPrime 28729 },
  { lower := 28833, upper := 28852, witness := RowWitness.topPrime 28817 },
  { lower := 29791, upper := 29871, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30349, witness := RowWitness.topPrime 30253 },
  { lower := 30618, upper := 30696, witness := RowWitness.topPrime 30593 },
  { lower := 30697, upper := 30706, witness := RowWitness.topPrime 30697 },
  { lower := 30926, upper := 31002, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31296, witness := RowWitness.topPrime 31193 },
  { lower := 31297, upper := 31316, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31353, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31500, witness := RowWitness.topPrime 31397 },
  { lower := 31501, upper := 31526, witness := RowWitness.topPrime 31489 },
  { lower := 31974, upper := 32042, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32871, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33722, witness := RowWitness.topPrime 33619 },
  { lower := 33723, upper := 33723, witness := RowWitness.topPrime 33721 },
  { lower := 34375, upper := 34472, witness := RowWitness.topPrime 34369 },
  { lower := 34473, upper := 34494, witness := RowWitness.topPrime 34471 },
  { lower := 35301, upper := 35394, witness := RowWitness.topPrime 35291 },
  { lower := 35395, upper := 35404, witness := RowWitness.topPrime 35393 },
  { lower := 36015, upper := 36015, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36600, witness := RowWitness.topPrime 36497 },
  { lower := 36601, upper := 36604, witness := RowWitness.topPrime 36599 },
  { lower := 36982, upper := 37082, witness := RowWitness.topPrime 36979 },
  { lower := 37083, upper := 37083, witness := RowWitness.topPrime 37061 },
  { lower := 37210, upper := 37282, witness := RowWitness.topPrime 37201 },
  { lower := 37303, upper := 37313, witness := RowWitness.topPrime 37277 },
  { lower := 37500, upper := 37549, witness := RowWitness.topPrime 37493 },
  { lower := 37553, upper := 37603, witness := RowWitness.topPrime 37549 },
  { lower := 37636, upper := 37656, witness := RowWitness.topPrime 37633 },
  { lower := 39326, upper := 39426, witness := RowWitness.topPrime 39323 },
  { lower := 39427, upper := 39429, witness := RowWitness.topPrime 39419 },
  { lower := 40401, upper := 40431, witness := RowWitness.topPrime 40387 },
  { lower := 40678, upper := 40728, witness := RowWitness.topPrime 40639 },
  { lower := 40817, upper := 40907, witness := RowWitness.topPrime 40813 },
  { lower := 43750, upper := 43790, witness := RowWitness.topPrime 43721 },
  { lower := 44944, upper := 44993, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48064, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48771, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48837, witness := RowWitness.topPrime 48767 },
  { lower := 50000, upper := 50031, witness := RowWitness.topPrime 49999 },
  { lower := 50421, upper := 50513, witness := RowWitness.topPrime 50417 },
  { lower := 50653, upper := 50665, witness := RowWitness.topPrime 50651 },
  { lower := 53125, upper := 53148, witness := RowWitness.topPrime 53117 },
  { lower := 55451, upper := 55544, witness := RowWitness.topPrime 55441 },
  { lower := 55545, upper := 55550, witness := RowWitness.topPrime 55541 },
  { lower := 56250, upper := 56272, witness := RowWitness.topPrime 56249 },
  { lower := 58619, upper := 58667, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59059, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59639, witness := RowWitness.topPrime 59581 },
  { lower := 62500, upper := 62513, witness := RowWitness.topPrime 62497 },
  { lower := 63948, upper := 63972, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65624, witness := RowWitness.topPrime 65521 },
  { lower := 65625, upper := 65639, witness := RowWitness.topPrime 65617 },
  { lower := 68651, upper := 68693, witness := RowWitness.topPrime 68639 },
  { lower := 68921, upper := 68993, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73270, witness := RowWitness.topPrime 73189 },
  { lower := 85264, upper := 85272, witness := RowWitness.topPrime 85259 },
  { lower := 85293, upper := 85362, witness := RowWitness.topPrime 85259 },
  { lower := 85363, upper := 85367, witness := RowWitness.topPrime 85363 },
  { lower := 91854, upper := 91912, witness := RowWitness.topPrime 91841 },
  { lower := 102973, upper := 102988, witness := RowWitness.topPrime 102967 },
  { lower := 122412, upper := 122420, witness := RowWitness.topPrime 122401 },
  { lower := 131769, upper := 131829, witness := RowWitness.topPrime 131759 },
  { lower := 137842, upper := 137884, witness := RowWitness.topPrime 137831 },
  { lower := 137917, upper := 137945, witness := RowWitness.topPrime 137911 },
  { lower := 146410, upper := 146437, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 148980, witness := RowWitness.topPrime 148949 }
]

def row104_layers : List CoverLayer := [
  { lower := 10712, upper := 21424, M := 26 },
  { lower := 21424, upper := 42848, M := 22 },
  { lower := 42848, upper := 85696, M := 18 },
  { lower := 85696, upper := 171392, M := 15 },
  { lower := 171392, upper := 342784, M := 12 },
  { lower := 342784, upper := 685568, M := 10 },
  { lower := 685568, upper := 1371136, M := 8 },
  { lower := 1371136, upper := 2742272, M := 7 },
  { lower := 2742272, upper := 5484544, M := 6 },
  { lower := 5484544, upper := 10969088, M := 5 },
  { lower := 10969088, upper := 21938176, M := 4 },
  { lower := 21938176, upper := 43876352, M := 4 },
  { lower := 43876352, upper := 87752704, M := 3 },
  { lower := 87752704, upper := 175505408, M := 3 },
  { lower := 175505408, upper := 351010816, M := 2 },
  { lower := 351010816, upper := 702021632, M := 2 },
  { lower := 702021632, upper := 1404043264, M := 2 },
  { lower := 1404043264, upper := 2808086528, M := 1 },
  { lower := 2808086528, upper := 5616173056, M := 1 },
  { lower := 5616173056, upper := 10000000000, M := 1 }
]

def row104 : FiniteCoverRow := {
  height := row104_height,
  goods := row104_goods,
  layers := row104_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_good000_checked :
    goodSegmentCheck 104 34 72
      { lower := 210, upper := 302, witness := RowWitness.topPrime 199 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good001_checked :
    goodSegmentCheck 104 34 72
      { lower := 303, upper := 396, witness := RowWitness.topPrime 293 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good002_checked :
    goodSegmentCheck 104 34 72
      { lower := 397, upper := 500, witness := RowWitness.topPrime 397 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good003_checked :
    goodSegmentCheck 104 34 72
      { lower := 501, upper := 602, witness := RowWitness.topPrime 499 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good004_checked :
    goodSegmentCheck 104 34 72
      { lower := 603, upper := 704, witness := RowWitness.topPrime 601 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good005_checked :
    goodSegmentCheck 104 34 72
      { lower := 705, upper := 804, witness := RowWitness.topPrime 701 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good006_checked :
    goodSegmentCheck 104 34 72
      { lower := 805, upper := 900, witness := RowWitness.topPrime 797 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good007_checked :
    goodSegmentCheck 104 34 72
      { lower := 901, upper := 990, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good008_checked :
    goodSegmentCheck 104 34 72
      { lower := 991, upper := 1094, witness := RowWitness.topPrime 991 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good009_checked :
    goodSegmentCheck 104 34 72
      { lower := 1095, upper := 1196, witness := RowWitness.topPrime 1093 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good010_checked :
    goodSegmentCheck 104 34 72
      { lower := 1197, upper := 1296, witness := RowWitness.topPrime 1193 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good011_checked :
    goodSegmentCheck 104 34 72
      { lower := 1297, upper := 1400, witness := RowWitness.topPrime 1297 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good012_checked :
    goodSegmentCheck 104 34 72
      { lower := 1401, upper := 1502, witness := RowWitness.topPrime 1399 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good013_checked :
    goodSegmentCheck 104 34 72
      { lower := 1503, upper := 1602, witness := RowWitness.topPrime 1499 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good014_checked :
    goodSegmentCheck 104 34 72
      { lower := 1603, upper := 1704, witness := RowWitness.topPrime 1601 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good015_checked :
    goodSegmentCheck 104 34 72
      { lower := 1705, upper := 1802, witness := RowWitness.topPrime 1699 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_good016_checked :
    goodSegmentCheck 104 34 72
      { lower := 1803, upper := 1904, witness := RowWitness.topPrime 1801 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good017_checked :
    goodSegmentCheck 104 34 72
      { lower := 1905, upper := 2004, witness := RowWitness.topPrime 1901 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good018_checked :
    goodSegmentCheck 104 34 72
      { lower := 2005, upper := 2106, witness := RowWitness.topPrime 2003 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good019_checked :
    goodSegmentCheck 104 34 72
      { lower := 2107, upper := 2202, witness := RowWitness.topPrime 2099 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good020_checked :
    goodSegmentCheck 104 34 72
      { lower := 2203, upper := 2306, witness := RowWitness.topPrime 2203 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good021_checked :
    goodSegmentCheck 104 34 72
      { lower := 2307, upper := 2400, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good022_checked :
    goodSegmentCheck 104 34 72
      { lower := 2401, upper := 2502, witness := RowWitness.topPrime 2399 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good023_checked :
    goodSegmentCheck 104 34 72
      { lower := 2503, upper := 2606, witness := RowWitness.topPrime 2503 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good024_checked :
    goodSegmentCheck 104 34 72
      { lower := 2607, upper := 2696, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good025_checked :
    goodSegmentCheck 104 34 72
      { lower := 2697, upper := 2796, witness := RowWitness.topPrime 2693 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good026_checked :
    goodSegmentCheck 104 34 72
      { lower := 2797, upper := 2900, witness := RowWitness.topPrime 2797 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good027_checked :
    goodSegmentCheck 104 34 72
      { lower := 2901, upper := 3000, witness := RowWitness.topPrime 2897 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good028_checked :
    goodSegmentCheck 104 34 72
      { lower := 3001, upper := 3104, witness := RowWitness.topPrime 3001 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good029_checked :
    goodSegmentCheck 104 34 72
      { lower := 3105, upper := 3192, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good030_checked :
    goodSegmentCheck 104 34 72
      { lower := 3193, upper := 3294, witness := RowWitness.topPrime 3191 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good031_checked :
    goodSegmentCheck 104 34 72
      { lower := 3295, upper := 3374, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_good032_checked :
    goodSegmentCheck 104 34 72
      { lower := 3375, upper := 3476, witness := RowWitness.topPrime 3373 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good033_checked :
    goodSegmentCheck 104 34 72
      { lower := 3477, upper := 3572, witness := RowWitness.topPrime 3469 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good034_checked :
    goodSegmentCheck 104 34 72
      { lower := 3573, upper := 3674, witness := RowWitness.topPrime 3571 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good035_checked :
    goodSegmentCheck 104 34 72
      { lower := 3675, upper := 3776, witness := RowWitness.topPrime 3673 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good036_checked :
    goodSegmentCheck 104 34 72
      { lower := 3777, upper := 3872, witness := RowWitness.topPrime 3769 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good037_checked :
    goodSegmentCheck 104 34 72
      { lower := 3873, upper := 3966, witness := RowWitness.topPrime 3863 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good038_checked :
    goodSegmentCheck 104 34 72
      { lower := 3967, upper := 4070, witness := RowWitness.topPrime 3967 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good039_checked :
    goodSegmentCheck 104 34 72
      { lower := 4071, upper := 4160, witness := RowWitness.topPrime 4057 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good040_checked :
    goodSegmentCheck 104 34 72
      { lower := 4161, upper := 4262, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good041_checked :
    goodSegmentCheck 104 34 72
      { lower := 4263, upper := 4364, witness := RowWitness.topPrime 4261 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good042_checked :
    goodSegmentCheck 104 34 72
      { lower := 4365, upper := 4466, witness := RowWitness.topPrime 4363 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good043_checked :
    goodSegmentCheck 104 34 72
      { lower := 4467, upper := 4566, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good044_checked :
    goodSegmentCheck 104 34 72
      { lower := 4567, upper := 4670, witness := RowWitness.topPrime 4567 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good045_checked :
    goodSegmentCheck 104 34 72
      { lower := 4671, upper := 4766, witness := RowWitness.topPrime 4663 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good046_checked :
    goodSegmentCheck 104 34 72
      { lower := 4767, upper := 4862, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good047_checked :
    goodSegmentCheck 104 34 72
      { lower := 4863, upper := 4964, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_good048_checked :
    goodSegmentCheck 104 34 72
      { lower := 4965, upper := 5060, witness := RowWitness.topPrime 4957 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good049_checked :
    goodSegmentCheck 104 34 72
      { lower := 5061, upper := 5162, witness := RowWitness.topPrime 5059 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good050_checked :
    goodSegmentCheck 104 34 72
      { lower := 5163, upper := 5256, witness := RowWitness.topPrime 5153 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good051_checked :
    goodSegmentCheck 104 34 72
      { lower := 5257, upper := 5340, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good052_checked :
    goodSegmentCheck 104 34 72
      { lower := 5341, upper := 5436, witness := RowWitness.topPrime 5333 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good053_checked :
    goodSegmentCheck 104 34 72
      { lower := 5437, upper := 5540, witness := RowWitness.topPrime 5437 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good054_checked :
    goodSegmentCheck 104 34 72
      { lower := 5541, upper := 5634, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good055_checked :
    goodSegmentCheck 104 34 72
      { lower := 5635, upper := 5726, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good056_checked :
    goodSegmentCheck 104 34 72
      { lower := 5727, upper := 5820, witness := RowWitness.topPrime 5717 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good057_checked :
    goodSegmentCheck 104 34 72
      { lower := 5821, upper := 5924, witness := RowWitness.topPrime 5821 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good058_checked :
    goodSegmentCheck 104 34 72
      { lower := 5925, upper := 6026, witness := RowWitness.topPrime 5923 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good059_checked :
    goodSegmentCheck 104 34 72
      { lower := 6027, upper := 6114, witness := RowWitness.topPrime 6011 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good060_checked :
    goodSegmentCheck 104 34 72
      { lower := 6115, upper := 6216, witness := RowWitness.topPrime 6113 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good061_checked :
    goodSegmentCheck 104 34 72
      { lower := 6217, upper := 6320, witness := RowWitness.topPrime 6217 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good062_checked :
    goodSegmentCheck 104 34 72
      { lower := 6321, upper := 6420, witness := RowWitness.topPrime 6317 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good063_checked :
    goodSegmentCheck 104 34 72
      { lower := 6421, upper := 6524, witness := RowWitness.topPrime 6421 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_good064_checked :
    goodSegmentCheck 104 34 72
      { lower := 6525, upper := 6624, witness := RowWitness.topPrime 6521 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good065_checked :
    goodSegmentCheck 104 34 72
      { lower := 6625, upper := 6722, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good066_checked :
    goodSegmentCheck 104 34 72
      { lower := 6723, upper := 6822, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good067_checked :
    goodSegmentCheck 104 34 72
      { lower := 6823, upper := 6926, witness := RowWitness.topPrime 6823 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good068_checked :
    goodSegmentCheck 104 34 72
      { lower := 6927, upper := 7020, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good069_checked :
    goodSegmentCheck 104 34 72
      { lower := 7021, upper := 7122, witness := RowWitness.topPrime 7019 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good070_checked :
    goodSegmentCheck 104 34 72
      { lower := 7123, upper := 7224, witness := RowWitness.topPrime 7121 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good071_checked :
    goodSegmentCheck 104 34 72
      { lower := 7225, upper := 7322, witness := RowWitness.topPrime 7219 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good072_checked :
    goodSegmentCheck 104 34 72
      { lower := 7323, upper := 7424, witness := RowWitness.topPrime 7321 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good073_checked :
    goodSegmentCheck 104 34 72
      { lower := 7425, upper := 7520, witness := RowWitness.topPrime 7417 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good074_checked :
    goodSegmentCheck 104 34 72
      { lower := 7521, upper := 7620, witness := RowWitness.topPrime 7517 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good075_checked :
    goodSegmentCheck 104 34 72
      { lower := 7621, upper := 7724, witness := RowWitness.topPrime 7621 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good076_checked :
    goodSegmentCheck 104 34 72
      { lower := 7725, upper := 7826, witness := RowWitness.topPrime 7723 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good077_checked :
    goodSegmentCheck 104 34 72
      { lower := 7827, upper := 7926, witness := RowWitness.topPrime 7823 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good078_checked :
    goodSegmentCheck 104 34 72
      { lower := 7927, upper := 8030, witness := RowWitness.topPrime 7927 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good079_checked :
    goodSegmentCheck 104 34 72
      { lower := 8031, upper := 8120, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_good080_checked :
    goodSegmentCheck 104 34 72
      { lower := 8121, upper := 8220, witness := RowWitness.topPrime 8117 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good081_checked :
    goodSegmentCheck 104 34 72
      { lower := 8221, upper := 8324, witness := RowWitness.topPrime 8221 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good082_checked :
    goodSegmentCheck 104 34 72
      { lower := 8325, upper := 8420, witness := RowWitness.topPrime 8317 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good083_checked :
    goodSegmentCheck 104 34 72
      { lower := 8421, upper := 8522, witness := RowWitness.topPrime 8419 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good084_checked :
    goodSegmentCheck 104 34 72
      { lower := 8523, upper := 8624, witness := RowWitness.topPrime 8521 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good085_checked :
    goodSegmentCheck 104 34 72
      { lower := 8625, upper := 8726, witness := RowWitness.topPrime 8623 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good086_checked :
    goodSegmentCheck 104 34 72
      { lower := 8727, upper := 8822, witness := RowWitness.topPrime 8719 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good087_checked :
    goodSegmentCheck 104 34 72
      { lower := 8823, upper := 8924, witness := RowWitness.topPrime 8821 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good088_checked :
    goodSegmentCheck 104 34 72
      { lower := 8925, upper := 9026, witness := RowWitness.topPrime 8923 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good089_checked :
    goodSegmentCheck 104 34 72
      { lower := 9027, upper := 9116, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good090_checked :
    goodSegmentCheck 104 34 72
      { lower := 9117, upper := 9212, witness := RowWitness.topPrime 9109 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good091_checked :
    goodSegmentCheck 104 34 72
      { lower := 9213, upper := 9312, witness := RowWitness.topPrime 9209 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good092_checked :
    goodSegmentCheck 104 34 72
      { lower := 9313, upper := 9414, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good093_checked :
    goodSegmentCheck 104 34 72
      { lower := 9415, upper := 9516, witness := RowWitness.topPrime 9413 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good094_checked :
    goodSegmentCheck 104 34 72
      { lower := 9517, upper := 9614, witness := RowWitness.topPrime 9511 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good095_checked :
    goodSegmentCheck 104 34 72
      { lower := 9615, upper := 9716, witness := RowWitness.topPrime 9613 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_good096_checked :
    goodSegmentCheck 104 34 72
      { lower := 9717, upper := 9800, witness := RowWitness.topPrime 9697 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good097_checked :
    goodSegmentCheck 104 34 72
      { lower := 9801, upper := 9894, witness := RowWitness.topPrime 9791 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good098_checked :
    goodSegmentCheck 104 34 72
      { lower := 9895, upper := 9990, witness := RowWitness.topPrime 9887 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good099_checked :
    goodSegmentCheck 104 34 72
      { lower := 9991, upper := 10076, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good100_checked :
    goodSegmentCheck 104 34 72
      { lower := 10077, upper := 10172, witness := RowWitness.topPrime 10069 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good101_checked :
    goodSegmentCheck 104 34 72
      { lower := 10173, upper := 10272, witness := RowWitness.topPrime 10169 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good102_checked :
    goodSegmentCheck 104 34 72
      { lower := 10273, upper := 10376, witness := RowWitness.topPrime 10273 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good103_checked :
    goodSegmentCheck 104 34 72
      { lower := 10377, upper := 10472, witness := RowWitness.topPrime 10369 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good104_checked :
    goodSegmentCheck 104 34 72
      { lower := 10473, upper := 10566, witness := RowWitness.topPrime 10463 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good105_checked :
    goodSegmentCheck 104 34 72
      { lower := 10567, upper := 10670, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good106_checked :
    goodSegmentCheck 104 34 72
      { lower := 10671, upper := 10751, witness := RowWitness.topPrime 10667 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good107_checked :
    goodSegmentCheck 104 34 72
      { lower := 10935, upper := 11012, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good108_checked :
    goodSegmentCheck 104 34 72
      { lower := 11013, upper := 11038, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good109_checked :
    goodSegmentCheck 104 34 72
      { lower := 11045, upper := 11055, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good110_checked :
    goodSegmentCheck 104 34 72
      { lower := 11094, upper := 11196, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good111_checked :
    goodSegmentCheck 104 34 72
      { lower := 11197, upper := 11212, witness := RowWitness.topPrime 11197 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_good112_checked :
    goodSegmentCheck 104 34 72
      { lower := 11236, upper := 11316, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good113_checked :
    goodSegmentCheck 104 34 72
      { lower := 11317, upper := 11339, witness := RowWitness.topPrime 11317 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good114_checked :
    goodSegmentCheck 104 34 72
      { lower := 11664, upper := 11741, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good115_checked :
    goodSegmentCheck 104 34 72
      { lower := 11767, upper := 11767, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good116_checked :
    goodSegmentCheck 104 34 72
      { lower := 11774, upper := 11846, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good117_checked :
    goodSegmentCheck 104 34 72
      { lower := 11847, upper := 11870, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good118_checked :
    goodSegmentCheck 104 34 72
      { lower := 11875, upper := 11877, witness := RowWitness.topPrime 11867 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good119_checked :
    goodSegmentCheck 104 34 72
      { lower := 12005, upper := 12082, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good120_checked :
    goodSegmentCheck 104 34 72
      { lower := 12321, upper := 12391, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good121_checked :
    goodSegmentCheck 104 34 72
      { lower := 12393, upper := 12424, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good122_checked :
    goodSegmentCheck 104 34 72
      { lower := 12482, upper := 12582, witness := RowWitness.topPrime 12479 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good123_checked :
    goodSegmentCheck 104 34 72
      { lower := 12583, upper := 12596, witness := RowWitness.topPrime 12583 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good124_checked :
    goodSegmentCheck 104 34 72
      { lower := 12696, upper := 12718, witness := RowWitness.topPrime 12689 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good125_checked :
    goodSegmentCheck 104 34 72
      { lower := 13125, upper := 13224, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good126_checked :
    goodSegmentCheck 104 34 72
      { lower := 13225, upper := 13228, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good127_checked :
    goodSegmentCheck 104 34 72
      { lower := 13254, upper := 13352, witness := RowWitness.topPrime 13249 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_good128_checked :
    goodSegmentCheck 104 34 72
      { lower := 13353, upper := 13357, witness := RowWitness.topPrime 13339 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good129_checked :
    goodSegmentCheck 104 34 72
      { lower := 13454, upper := 13554, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good130_checked :
    goodSegmentCheck 104 34 72
      { lower := 13555, upper := 13559, witness := RowWitness.topPrime 13553 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good131_checked :
    goodSegmentCheck 104 34 72
      { lower := 13718, upper := 13814, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good132_checked :
    goodSegmentCheck 104 34 72
      { lower := 13815, upper := 13881, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good133_checked :
    goodSegmentCheck 104 34 72
      { lower := 13924, upper := 13954, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good134_checked :
    goodSegmentCheck 104 34 72
      { lower := 14375, upper := 14400, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good135_checked :
    goodSegmentCheck 104 34 72
      { lower := 14406, upper := 14504, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good136_checked :
    goodSegmentCheck 104 34 72
      { lower := 14505, upper := 14509, witness := RowWitness.topPrime 14503 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good137_checked :
    goodSegmentCheck 104 34 72
      { lower := 14641, upper := 14683, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good138_checked :
    goodSegmentCheck 104 34 72
      { lower := 14739, upper := 14744, witness := RowWitness.topPrime 14737 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good139_checked :
    goodSegmentCheck 104 34 72
      { lower := 14792, upper := 14842, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good140_checked :
    goodSegmentCheck 104 34 72
      { lower := 14884, upper := 14895, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good141_checked :
    goodSegmentCheck 104 34 72
      { lower := 15059, upper := 15103, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good142_checked :
    goodSegmentCheck 104 34 72
      { lower := 15123, upper := 15224, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good143_checked :
    goodSegmentCheck 104 34 72
      { lower := 15225, upper := 15232, witness := RowWitness.topPrime 15217 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_good144_checked :
    goodSegmentCheck 104 34 72
      { lower := 15376, upper := 15412, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good145_checked :
    goodSegmentCheck 104 34 72
      { lower := 15463, upper := 15479, witness := RowWitness.topPrime 15461 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good146_checked :
    goodSegmentCheck 104 34 72
      { lower := 15979, upper := 16076, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good147_checked :
    goodSegmentCheck 104 34 72
      { lower := 16077, upper := 16090, witness := RowWitness.topPrime 16073 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good148_checked :
    goodSegmentCheck 104 34 72
      { lower := 16337, upper := 16353, witness := RowWitness.topPrime 16333 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good149_checked :
    goodSegmentCheck 104 34 72
      { lower := 16384, upper := 16484, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good150_checked :
    goodSegmentCheck 104 34 72
      { lower := 16485, upper := 16487, witness := RowWitness.topPrime 16481 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good151_checked :
    goodSegmentCheck 104 34 72
      { lower := 16807, upper := 16890, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good152_checked :
    goodSegmentCheck 104 34 72
      { lower := 16891, upper := 16923, witness := RowWitness.topPrime 16889 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good153_checked :
    goodSegmentCheck 104 34 72
      { lower := 17303, upper := 17401, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good154_checked :
    goodSegmentCheck 104 34 72
      { lower := 17405, upper := 17406, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good155_checked :
    goodSegmentCheck 104 34 72
      { lower := 17496, upper := 17508, witness := RowWitness.topPrime 17491 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good156_checked :
    goodSegmentCheck 104 34 72
      { lower := 17672, upper := 17764, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good157_checked :
    goodSegmentCheck 104 34 72
      { lower := 18259, upper := 18328, witness := RowWitness.topPrime 18257 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good158_checked :
    goodSegmentCheck 104 34 72
      { lower := 18491, upper := 18584, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good159_checked :
    goodSegmentCheck 104 34 72
      { lower := 18585, upper := 18594, witness := RowWitness.topPrime 18583 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_good160_checked :
    goodSegmentCheck 104 34 72
      { lower := 18605, upper := 18605, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good161_checked :
    goodSegmentCheck 104 34 72
      { lower := 18634, upper := 18708, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good162_checked :
    goodSegmentCheck 104 34 72
      { lower := 18723, upper := 18737, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good163_checked :
    goodSegmentCheck 104 34 72
      { lower := 18750, upper := 18852, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good164_checked :
    goodSegmentCheck 104 34 72
      { lower := 18853, upper := 18853, witness := RowWitness.topPrime 18839 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good165_checked :
    goodSegmentCheck 104 34 72
      { lower := 19208, upper := 19310, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good166_checked :
    goodSegmentCheck 104 34 72
      { lower := 19311, upper := 19311, witness := RowWitness.topPrime 19309 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good167_checked :
    goodSegmentCheck 104 34 72
      { lower := 19663, upper := 19764, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good168_checked :
    goodSegmentCheck 104 34 72
      { lower := 19765, upper := 19766, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good169_checked :
    goodSegmentCheck 104 34 72
      { lower := 19965, upper := 19984, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good170_checked :
    goodSegmentCheck 104 34 72
      { lower := 20172, upper := 20264, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good171_checked :
    goodSegmentCheck 104 34 72
      { lower := 20265, upper := 20284, witness := RowWitness.topPrime 20261 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good172_checked :
    goodSegmentCheck 104 34 72
      { lower := 20402, upper := 20442, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good173_checked :
    goodSegmentCheck 104 34 72
      { lower := 20577, upper := 20638, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good174_checked :
    goodSegmentCheck 104 34 72
      { lower := 20667, upper := 20680, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good175_checked :
    goodSegmentCheck 104 34 72
      { lower := 21218, upper := 21245, witness := RowWitness.topPrime 21211 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_good176_checked :
    goodSegmentCheck 104 34 72
      { lower := 21296, upper := 21386, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good177_checked :
    goodSegmentCheck 104 34 72
      { lower := 21387, upper := 21399, witness := RowWitness.topPrime 21383 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good178_checked :
    goodSegmentCheck 104 34 72
      { lower := 21870, upper := 21966, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good179_checked :
    goodSegmentCheck 104 34 72
      { lower := 21967, upper := 21978, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good180_checked :
    goodSegmentCheck 104 34 72
      { lower := 22188, upper := 22193, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good181_checked :
    goodSegmentCheck 104 34 72
      { lower := 22472, upper := 22548, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good182_checked :
    goodSegmentCheck 104 34 72
      { lower := 24010, upper := 24110, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good183_checked :
    goodSegmentCheck 104 34 72
      { lower := 24111, upper := 24140, witness := RowWitness.topPrime 24109 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good184_checked :
    goodSegmentCheck 104 34 72
      { lower := 24334, upper := 24432, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good185_checked :
    goodSegmentCheck 104 34 72
      { lower := 24433, upper := 24470, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good186_checked :
    goodSegmentCheck 104 34 72
      { lower := 24642, upper := 24668, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good187_checked :
    goodSegmentCheck 104 34 72
      { lower := 25000, upper := 25067, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good188_checked :
    goodSegmentCheck 104 34 72
      { lower := 25215, upper := 25292, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good189_checked :
    goodSegmentCheck 104 34 72
      { lower := 25293, upper := 25364, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good190_checked :
    goodSegmentCheck 104 34 72
      { lower := 25365, upper := 25384, witness := RowWitness.topPrime 25357 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good191_checked :
    goodSegmentCheck 104 34 72
      { lower := 26047, upper := 26114, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_good192_checked :
    goodSegmentCheck 104 34 72
      { lower := 26508, upper := 26514, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good193_checked :
    goodSegmentCheck 104 34 72
      { lower := 26645, upper := 26723, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good194_checked :
    goodSegmentCheck 104 34 72
      { lower := 26934, upper := 26999, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good195_checked :
    goodSegmentCheck 104 34 72
      { lower := 27436, upper := 27483, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good196_checked :
    goodSegmentCheck 104 34 72
      { lower := 27951, upper := 27951, witness := RowWitness.topPrime 27947 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good197_checked :
    goodSegmentCheck 104 34 72
      { lower := 28125, upper := 28193, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good198_checked :
    goodSegmentCheck 104 34 72
      { lower := 28227, upper := 28228, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good199_checked :
    goodSegmentCheck 104 34 72
      { lower := 28577, upper := 28664, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good200_checked :
    goodSegmentCheck 104 34 72
      { lower := 28749, upper := 28832, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good201_checked :
    goodSegmentCheck 104 34 72
      { lower := 28833, upper := 28852, witness := RowWitness.topPrime 28817 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good202_checked :
    goodSegmentCheck 104 34 72
      { lower := 29791, upper := 29871, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good203_checked :
    goodSegmentCheck 104 34 72
      { lower := 30258, upper := 30349, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good204_checked :
    goodSegmentCheck 104 34 72
      { lower := 30618, upper := 30696, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good205_checked :
    goodSegmentCheck 104 34 72
      { lower := 30697, upper := 30706, witness := RowWitness.topPrime 30697 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good206_checked :
    goodSegmentCheck 104 34 72
      { lower := 30926, upper := 31002, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good207_checked :
    goodSegmentCheck 104 34 72
      { lower := 31213, upper := 31296, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_good208_checked :
    goodSegmentCheck 104 34 72
      { lower := 31297, upper := 31316, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good209_checked :
    goodSegmentCheck 104 34 72
      { lower := 31329, upper := 31353, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good210_checked :
    goodSegmentCheck 104 34 72
      { lower := 31423, upper := 31500, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good211_checked :
    goodSegmentCheck 104 34 72
      { lower := 31501, upper := 31526, witness := RowWitness.topPrime 31489 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good212_checked :
    goodSegmentCheck 104 34 72
      { lower := 31974, upper := 32042, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good213_checked :
    goodSegmentCheck 104 34 72
      { lower := 32805, upper := 32871, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good214_checked :
    goodSegmentCheck 104 34 72
      { lower := 33620, upper := 33722, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good215_checked :
    goodSegmentCheck 104 34 72
      { lower := 33723, upper := 33723, witness := RowWitness.topPrime 33721 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good216_checked :
    goodSegmentCheck 104 34 72
      { lower := 34375, upper := 34472, witness := RowWitness.topPrime 34369 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good217_checked :
    goodSegmentCheck 104 34 72
      { lower := 34473, upper := 34494, witness := RowWitness.topPrime 34471 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good218_checked :
    goodSegmentCheck 104 34 72
      { lower := 35301, upper := 35394, witness := RowWitness.topPrime 35291 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good219_checked :
    goodSegmentCheck 104 34 72
      { lower := 35395, upper := 35404, witness := RowWitness.topPrime 35393 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good220_checked :
    goodSegmentCheck 104 34 72
      { lower := 36015, upper := 36015, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good221_checked :
    goodSegmentCheck 104 34 72
      { lower := 36517, upper := 36600, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good222_checked :
    goodSegmentCheck 104 34 72
      { lower := 36601, upper := 36604, witness := RowWitness.topPrime 36599 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good223_checked :
    goodSegmentCheck 104 34 72
      { lower := 36982, upper := 37082, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_good224_checked :
    goodSegmentCheck 104 34 72
      { lower := 37083, upper := 37083, witness := RowWitness.topPrime 37061 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good225_checked :
    goodSegmentCheck 104 34 72
      { lower := 37210, upper := 37282, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good226_checked :
    goodSegmentCheck 104 34 72
      { lower := 37303, upper := 37313, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good227_checked :
    goodSegmentCheck 104 34 72
      { lower := 37500, upper := 37549, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good228_checked :
    goodSegmentCheck 104 34 72
      { lower := 37553, upper := 37603, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good229_checked :
    goodSegmentCheck 104 34 72
      { lower := 37636, upper := 37656, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good230_checked :
    goodSegmentCheck 104 34 72
      { lower := 39326, upper := 39426, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good231_checked :
    goodSegmentCheck 104 34 72
      { lower := 39427, upper := 39429, witness := RowWitness.topPrime 39419 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good232_checked :
    goodSegmentCheck 104 34 72
      { lower := 40401, upper := 40431, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good233_checked :
    goodSegmentCheck 104 34 72
      { lower := 40678, upper := 40728, witness := RowWitness.topPrime 40639 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good234_checked :
    goodSegmentCheck 104 34 72
      { lower := 40817, upper := 40907, witness := RowWitness.topPrime 40813 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good235_checked :
    goodSegmentCheck 104 34 72
      { lower := 43750, upper := 43790, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good236_checked :
    goodSegmentCheck 104 34 72
      { lower := 44944, upper := 44993, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good237_checked :
    goodSegmentCheck 104 34 72
      { lower := 48013, upper := 48064, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good238_checked :
    goodSegmentCheck 104 34 72
      { lower := 48734, upper := 48771, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good239_checked :
    goodSegmentCheck 104 34 72
      { lower := 48778, upper := 48837, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_good240_checked :
    goodSegmentCheck 104 34 72
      { lower := 50000, upper := 50031, witness := RowWitness.topPrime 49999 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good241_checked :
    goodSegmentCheck 104 34 72
      { lower := 50421, upper := 50513, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good242_checked :
    goodSegmentCheck 104 34 72
      { lower := 50653, upper := 50665, witness := RowWitness.topPrime 50651 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good243_checked :
    goodSegmentCheck 104 34 72
      { lower := 53125, upper := 53148, witness := RowWitness.topPrime 53117 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good244_checked :
    goodSegmentCheck 104 34 72
      { lower := 55451, upper := 55544, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good245_checked :
    goodSegmentCheck 104 34 72
      { lower := 55545, upper := 55550, witness := RowWitness.topPrime 55541 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good246_checked :
    goodSegmentCheck 104 34 72
      { lower := 56250, upper := 56272, witness := RowWitness.topPrime 56249 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good247_checked :
    goodSegmentCheck 104 34 72
      { lower := 58619, upper := 58667, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good248_checked :
    goodSegmentCheck 104 34 72
      { lower := 59049, upper := 59059, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good249_checked :
    goodSegmentCheck 104 34 72
      { lower := 59582, upper := 59639, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good250_checked :
    goodSegmentCheck 104 34 72
      { lower := 62500, upper := 62513, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good251_checked :
    goodSegmentCheck 104 34 72
      { lower := 63948, upper := 63972, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good252_checked :
    goodSegmentCheck 104 34 72
      { lower := 65536, upper := 65624, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good253_checked :
    goodSegmentCheck 104 34 72
      { lower := 65625, upper := 65639, witness := RowWitness.topPrime 65617 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good254_checked :
    goodSegmentCheck 104 34 72
      { lower := 68651, upper := 68693, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good255_checked :
    goodSegmentCheck 104 34 72
      { lower := 68921, upper := 68993, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_good256_checked :
    goodSegmentCheck 104 34 72
      { lower := 73205, upper := 73270, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good257_checked :
    goodSegmentCheck 104 34 72
      { lower := 85264, upper := 85272, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good258_checked :
    goodSegmentCheck 104 34 72
      { lower := 85293, upper := 85362, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good259_checked :
    goodSegmentCheck 104 34 72
      { lower := 85363, upper := 85367, witness := RowWitness.topPrime 85363 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good260_checked :
    goodSegmentCheck 104 34 72
      { lower := 91854, upper := 91912, witness := RowWitness.topPrime 91841 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good261_checked :
    goodSegmentCheck 104 34 72
      { lower := 102973, upper := 102988, witness := RowWitness.topPrime 102967 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good262_checked :
    goodSegmentCheck 104 34 72
      { lower := 122412, upper := 122420, witness := RowWitness.topPrime 122401 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good263_checked :
    goodSegmentCheck 104 34 72
      { lower := 131769, upper := 131829, witness := RowWitness.topPrime 131759 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good264_checked :
    goodSegmentCheck 104 34 72
      { lower := 137842, upper := 137884, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good265_checked :
    goodSegmentCheck 104 34 72
      { lower := 137917, upper := 137945, witness := RowWitness.topPrime 137911 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good266_checked :
    goodSegmentCheck 104 34 72
      { lower := 146410, upper := 146437, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row104_good267_checked :
    goodSegmentCheck 104 34 72
      { lower := 148955, upper := 148980, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 104) (r := 34) (s := 72) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good264_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good265_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good266_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_good267_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_goods_checked :
    row104.goods.all (goodSegmentCheck row104.height.i row104.height.r row104.height.s) = true := by
  change row104_goods.all (goodSegmentCheck 104 34 72) = true
  simp only [row104_goods, List.all_cons, List.all_nil,
    row104_good000_checked,
    row104_good001_checked,
    row104_good002_checked,
    row104_good003_checked,
    row104_good004_checked,
    row104_good005_checked,
    row104_good006_checked,
    row104_good007_checked,
    row104_good008_checked,
    row104_good009_checked,
    row104_good010_checked,
    row104_good011_checked,
    row104_good012_checked,
    row104_good013_checked,
    row104_good014_checked,
    row104_good015_checked,
    row104_good016_checked,
    row104_good017_checked,
    row104_good018_checked,
    row104_good019_checked,
    row104_good020_checked,
    row104_good021_checked,
    row104_good022_checked,
    row104_good023_checked,
    row104_good024_checked,
    row104_good025_checked,
    row104_good026_checked,
    row104_good027_checked,
    row104_good028_checked,
    row104_good029_checked,
    row104_good030_checked,
    row104_good031_checked,
    row104_good032_checked,
    row104_good033_checked,
    row104_good034_checked,
    row104_good035_checked,
    row104_good036_checked,
    row104_good037_checked,
    row104_good038_checked,
    row104_good039_checked,
    row104_good040_checked,
    row104_good041_checked,
    row104_good042_checked,
    row104_good043_checked,
    row104_good044_checked,
    row104_good045_checked,
    row104_good046_checked,
    row104_good047_checked,
    row104_good048_checked,
    row104_good049_checked,
    row104_good050_checked,
    row104_good051_checked,
    row104_good052_checked,
    row104_good053_checked,
    row104_good054_checked,
    row104_good055_checked,
    row104_good056_checked,
    row104_good057_checked,
    row104_good058_checked,
    row104_good059_checked,
    row104_good060_checked,
    row104_good061_checked,
    row104_good062_checked,
    row104_good063_checked,
    row104_good064_checked,
    row104_good065_checked,
    row104_good066_checked,
    row104_good067_checked,
    row104_good068_checked,
    row104_good069_checked,
    row104_good070_checked,
    row104_good071_checked,
    row104_good072_checked,
    row104_good073_checked,
    row104_good074_checked,
    row104_good075_checked,
    row104_good076_checked,
    row104_good077_checked,
    row104_good078_checked,
    row104_good079_checked,
    row104_good080_checked,
    row104_good081_checked,
    row104_good082_checked,
    row104_good083_checked,
    row104_good084_checked,
    row104_good085_checked,
    row104_good086_checked,
    row104_good087_checked,
    row104_good088_checked,
    row104_good089_checked,
    row104_good090_checked,
    row104_good091_checked,
    row104_good092_checked,
    row104_good093_checked,
    row104_good094_checked,
    row104_good095_checked,
    row104_good096_checked,
    row104_good097_checked,
    row104_good098_checked,
    row104_good099_checked,
    row104_good100_checked,
    row104_good101_checked,
    row104_good102_checked,
    row104_good103_checked,
    row104_good104_checked,
    row104_good105_checked,
    row104_good106_checked,
    row104_good107_checked,
    row104_good108_checked,
    row104_good109_checked,
    row104_good110_checked,
    row104_good111_checked,
    row104_good112_checked,
    row104_good113_checked,
    row104_good114_checked,
    row104_good115_checked,
    row104_good116_checked,
    row104_good117_checked,
    row104_good118_checked,
    row104_good119_checked,
    row104_good120_checked,
    row104_good121_checked,
    row104_good122_checked,
    row104_good123_checked,
    row104_good124_checked,
    row104_good125_checked,
    row104_good126_checked,
    row104_good127_checked,
    row104_good128_checked,
    row104_good129_checked,
    row104_good130_checked,
    row104_good131_checked,
    row104_good132_checked,
    row104_good133_checked,
    row104_good134_checked,
    row104_good135_checked,
    row104_good136_checked,
    row104_good137_checked,
    row104_good138_checked,
    row104_good139_checked,
    row104_good140_checked,
    row104_good141_checked,
    row104_good142_checked,
    row104_good143_checked,
    row104_good144_checked,
    row104_good145_checked,
    row104_good146_checked,
    row104_good147_checked,
    row104_good148_checked,
    row104_good149_checked,
    row104_good150_checked,
    row104_good151_checked,
    row104_good152_checked,
    row104_good153_checked,
    row104_good154_checked,
    row104_good155_checked,
    row104_good156_checked,
    row104_good157_checked,
    row104_good158_checked,
    row104_good159_checked,
    row104_good160_checked,
    row104_good161_checked,
    row104_good162_checked,
    row104_good163_checked,
    row104_good164_checked,
    row104_good165_checked,
    row104_good166_checked,
    row104_good167_checked,
    row104_good168_checked,
    row104_good169_checked,
    row104_good170_checked,
    row104_good171_checked,
    row104_good172_checked,
    row104_good173_checked,
    row104_good174_checked,
    row104_good175_checked,
    row104_good176_checked,
    row104_good177_checked,
    row104_good178_checked,
    row104_good179_checked,
    row104_good180_checked,
    row104_good181_checked,
    row104_good182_checked,
    row104_good183_checked,
    row104_good184_checked,
    row104_good185_checked,
    row104_good186_checked,
    row104_good187_checked,
    row104_good188_checked,
    row104_good189_checked,
    row104_good190_checked,
    row104_good191_checked,
    row104_good192_checked,
    row104_good193_checked,
    row104_good194_checked,
    row104_good195_checked,
    row104_good196_checked,
    row104_good197_checked,
    row104_good198_checked,
    row104_good199_checked,
    row104_good200_checked,
    row104_good201_checked,
    row104_good202_checked,
    row104_good203_checked,
    row104_good204_checked,
    row104_good205_checked,
    row104_good206_checked,
    row104_good207_checked,
    row104_good208_checked,
    row104_good209_checked,
    row104_good210_checked,
    row104_good211_checked,
    row104_good212_checked,
    row104_good213_checked,
    row104_good214_checked,
    row104_good215_checked,
    row104_good216_checked,
    row104_good217_checked,
    row104_good218_checked,
    row104_good219_checked,
    row104_good220_checked,
    row104_good221_checked,
    row104_good222_checked,
    row104_good223_checked,
    row104_good224_checked,
    row104_good225_checked,
    row104_good226_checked,
    row104_good227_checked,
    row104_good228_checked,
    row104_good229_checked,
    row104_good230_checked,
    row104_good231_checked,
    row104_good232_checked,
    row104_good233_checked,
    row104_good234_checked,
    row104_good235_checked,
    row104_good236_checked,
    row104_good237_checked,
    row104_good238_checked,
    row104_good239_checked,
    row104_good240_checked,
    row104_good241_checked,
    row104_good242_checked,
    row104_good243_checked,
    row104_good244_checked,
    row104_good245_checked,
    row104_good246_checked,
    row104_good247_checked,
    row104_good248_checked,
    row104_good249_checked,
    row104_good250_checked,
    row104_good251_checked,
    row104_good252_checked,
    row104_good253_checked,
    row104_good254_checked,
    row104_good255_checked,
    row104_good256_checked,
    row104_good257_checked,
    row104_good258_checked,
    row104_good259_checked,
    row104_good260_checked,
    row104_good261_checked,
    row104_good262_checked,
    row104_good263_checked,
    row104_good264_checked,
    row104_good265_checked,
    row104_good266_checked,
    row104_good267_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_registered :
    decide (row104.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row104_small_checked :
    coverCheck (2 * row104.height.i + 2) (row104.height.i * (row104.height.i - 1) - 1)
      (row104.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row104_layerCover_checked :
    coverCheck (row104.height.i * (row104.height.i - 1)) (row104.height.n0 - 1)
      (row104.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row104_bounds : List NatInterval :=
  [(210, 302), (303, 396), (397, 500), (501, 602), (603, 704), (705, 804), (805, 900), (901, 990), (991, 1094), (1095, 1196), (1197, 1296), (1297, 1400), (1401, 1502), (1503, 1602), (1603, 1704), (1705, 1802), (1803, 1904), (1905, 2004), (2005, 2106), (2107, 2202), (2203, 2306), (2307, 2400), (2401, 2502), (2503, 2606), (2607, 2696), (2697, 2796), (2797, 2900), (2901, 3000), (3001, 3104), (3105, 3192), (3193, 3294), (3295, 3374), (3375, 3476), (3477, 3572), (3573, 3674), (3675, 3776), (3777, 3872), (3873, 3966), (3967, 4070), (4071, 4160), (4161, 4262), (4263, 4364), (4365, 4466), (4467, 4566), (4567, 4670), (4671, 4766), (4767, 4862), (4863, 4964), (4965, 5060), (5061, 5162), (5163, 5256), (5257, 5340), (5341, 5436), (5437, 5540), (5541, 5634), (5635, 5726), (5727, 5820), (5821, 5924), (5925, 6026), (6027, 6114), (6115, 6216), (6217, 6320), (6321, 6420), (6421, 6524), (6525, 6624), (6625, 6722), (6723, 6822), (6823, 6926), (6927, 7020), (7021, 7122), (7123, 7224), (7225, 7322), (7323, 7424), (7425, 7520), (7521, 7620), (7621, 7724), (7725, 7826), (7827, 7926), (7927, 8030), (8031, 8120), (8121, 8220), (8221, 8324), (8325, 8420), (8421, 8522), (8523, 8624), (8625, 8726), (8727, 8822), (8823, 8924), (8925, 9026), (9027, 9116), (9117, 9212), (9213, 9312), (9313, 9414), (9415, 9516), (9517, 9614), (9615, 9716), (9717, 9800), (9801, 9894), (9895, 9990), (9991, 10076), (10077, 10172), (10173, 10272), (10273, 10376), (10377, 10472), (10473, 10566), (10567, 10670), (10671, 10751), (10935, 11012), (11013, 11038), (11045, 11055), (11094, 11196), (11197, 11212), (11236, 11316), (11317, 11339), (11664, 11741), (11767, 11767), (11774, 11846), (11847, 11870), (11875, 11877), (12005, 12082), (12321, 12391), (12393, 12424), (12482, 12582), (12583, 12596), (12696, 12718), (13125, 13224), (13225, 13228), (13254, 13352), (13353, 13357), (13454, 13554), (13555, 13559), (13718, 13814), (13815, 13881), (13924, 13954), (14375, 14400), (14406, 14504), (14505, 14509), (14641, 14683), (14739, 14744), (14792, 14842), (14884, 14895), (15059, 15103), (15123, 15224), (15225, 15232), (15376, 15412), (15463, 15479), (15979, 16076), (16077, 16090), (16337, 16353), (16384, 16484), (16485, 16487), (16807, 16890), (16891, 16923), (17303, 17401), (17405, 17406), (17496, 17508), (17672, 17764), (18259, 18328), (18491, 18584), (18585, 18594), (18605, 18605), (18634, 18708), (18723, 18737), (18750, 18852), (18853, 18853), (19208, 19310), (19311, 19311), (19663, 19764), (19765, 19766), (19965, 19984), (20172, 20264), (20265, 20284), (20402, 20442), (20577, 20638), (20667, 20680), (21218, 21245), (21296, 21386), (21387, 21399), (21870, 21966), (21967, 21978), (22188, 22193), (22472, 22548), (24010, 24110), (24111, 24140), (24334, 24432), (24433, 24470), (24642, 24668), (25000, 25067), (25215, 25292), (25293, 25364), (25365, 25384), (26047, 26114), (26508, 26514), (26645, 26723), (26934, 26999), (27436, 27483), (27951, 27951), (28125, 28193), (28227, 28228), (28577, 28664), (28749, 28832), (28833, 28852), (29791, 29871), (30258, 30349), (30618, 30696), (30697, 30706), (30926, 31002), (31213, 31296), (31297, 31316), (31329, 31353), (31423, 31500), (31501, 31526), (31974, 32042), (32805, 32871), (33620, 33722), (33723, 33723), (34375, 34472), (34473, 34494), (35301, 35394), (35395, 35404), (36015, 36015), (36517, 36600), (36601, 36604), (36982, 37082), (37083, 37083), (37210, 37282), (37303, 37313), (37500, 37549), (37553, 37603), (37636, 37656), (39326, 39426), (39427, 39429), (40401, 40431), (40678, 40728), (40817, 40907), (43750, 43790), (44944, 44993), (48013, 48064), (48734, 48771), (48778, 48837), (50000, 50031), (50421, 50513), (50653, 50665), (53125, 53148), (55451, 55544), (55545, 55550), (56250, 56272), (58619, 58667), (59049, 59059), (59582, 59639), (62500, 62513), (63948, 63972), (65536, 65624), (65625, 65639), (68651, 68693), (68921, 68993), (73205, 73270), (85264, 85272), (85293, 85362), (85363, 85367), (91854, 91912), (102973, 102988), (122412, 122420), (131769, 131829), (137842, 137884), (137917, 137945), (146410, 146437), (148955, 148980)]

theorem row104_bounds_eq : row104.goods.map goodSegmentBounds = row104_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row104_layer000_intervals : List ColouredInterval :=
  [(2, 12288, 12391), (2, 16384, 16487), (2, 16384, 16487), (3, 10935, 11038), (3, 11664, 11767), (3, 12393, 12496), (3, 13122, 13225), (3, 13851, 13954), (3, 14580, 14683), (3, 15309, 15412), (3, 16038, 16141), (3, 16767, 16870), (3, 17496, 17599), (3, 18225, 18328), (3, 18954, 19057), (3, 10935, 11038), (3, 13122, 13225), (3, 15309, 15412), (3, 17496, 17599), (3, 19683, 19786), (3, 13122, 13225), (3, 19683, 19786), (3, 19683, 19786), (5, 10712, 10728), (5, 11250, 11353), (5, 11875, 11978), (5, 12500, 12603), (5, 13125, 13228), (5, 13750, 13853), (5, 14375, 14478), (5, 15000, 15103), (5, 15625, 15728), (5, 16250, 16353), (5, 12500, 12603), (5, 15625, 15728), (5, 18750, 18853), (5, 15625, 15728), (7, 12005, 12108), (7, 14406, 14509), (7, 16807, 16910), (7, 19208, 19311), (7, 16807, 16910), (11, 10712, 10751), (11, 11979, 12082), (11, 13310, 13413), (11, 14641, 14744), (11, 15972, 16075), (11, 17303, 17406), (11, 18634, 18737), (11, 19965, 20068), (11, 21296, 21399), (11, 14641, 14744), (17, 14739, 14842), (17, 19652, 19755), (19, 13718, 13821), (19, 20577, 20680), (23, 11109, 11212), (23, 11638, 11741), (23, 12167, 12270), (23, 12696, 12799), (23, 13225, 13328), (23, 13754, 13857), (23, 12167, 12270), (29, 10933, 11036), (29, 11774, 11877), (29, 12615, 12718), (29, 13456, 13559), (29, 14297, 14400), (29, 15138, 15241), (29, 15979, 16082), (29, 16820, 16923), (29, 17661, 17764), (29, 18502, 18605), (29, 19343, 19446), (29, 20184, 20287), (29, 21025, 21128), (31, 11532, 11635), (31, 12493, 12596), (31, 13454, 13557), (31, 14415, 14518), (31, 15376, 15479), (31, 16337, 16440), (31, 17298, 17401), (31, 18259, 18362), (31, 19220, 19323), (31, 20181, 20284), (31, 21142, 21245), (37, 10952, 11055), (37, 12321, 12424), (37, 13690, 13793), (37, 15059, 15162), (37, 16428, 16531), (37, 17797, 17900), (37, 19166, 19269), (37, 20535, 20638), (41, 11767, 11870), (41, 13448, 13551), (41, 15129, 15232), (41, 16810, 16913), (41, 18491, 18594), (41, 20172, 20275), (43, 11094, 11197), (43, 12943, 13046), (43, 14792, 14895), (43, 16641, 16744), (43, 18490, 18593), (43, 20339, 20442), (47, 11045, 11148), (47, 13254, 13357), (47, 15463, 15566), (47, 17672, 17775), (47, 19881, 19984), (53, 11236, 11339), (53, 14045, 14148), (53, 16854, 16957), (53, 19663, 19766), (59, 13924, 14027), (59, 17405, 17508), (59, 20886, 20989), (61, 11163, 11266), (61, 14884, 14987), (61, 18605, 18708), (67, 13467, 13570), (67, 17956, 18059), (71, 15123, 15226), (71, 20164, 20267), (73, 10712, 10761), (73, 15987, 16090), (73, 21316, 21419), (79, 12482, 12585), (79, 18723, 18826), (83, 13778, 13881), (83, 20667, 20770), (89, 15842, 15945), (97, 18818, 18921), (101, 20402, 20505), (103, 10712, 10712), (103, 21218, 21321)]

def row104_layer000_block000 : List ColouredInterval :=
  [(2, 12288, 12391), (2, 16384, 16487), (2, 16384, 16487), (3, 10935, 11038), (3, 11664, 11767), (3, 12393, 12496), (3, 13122, 13225), (3, 13851, 13954), (3, 14580, 14683), (3, 15309, 15412), (3, 16038, 16141), (3, 16767, 16870), (3, 17496, 17599), (3, 18225, 18328)]

def row104_layer000_block001 : List ColouredInterval :=
  [(3, 18954, 19057), (3, 10935, 11038), (3, 13122, 13225), (3, 15309, 15412), (3, 17496, 17599), (3, 19683, 19786), (3, 13122, 13225), (3, 19683, 19786), (3, 19683, 19786), (5, 10712, 10728), (5, 11250, 11353), (5, 11875, 11978), (5, 12500, 12603), (5, 13125, 13228)]

def row104_layer000_block002 : List ColouredInterval :=
  [(5, 13750, 13853), (5, 14375, 14478), (5, 15000, 15103), (5, 15625, 15728), (5, 16250, 16353), (5, 12500, 12603), (5, 15625, 15728), (5, 18750, 18853), (5, 15625, 15728), (7, 12005, 12108), (7, 14406, 14509), (7, 16807, 16910), (7, 19208, 19311), (7, 16807, 16910)]

def row104_layer000_block003 : List ColouredInterval :=
  [(11, 10712, 10751), (11, 11979, 12082), (11, 13310, 13413), (11, 14641, 14744), (11, 15972, 16075), (11, 17303, 17406), (11, 18634, 18737), (11, 19965, 20068), (11, 21296, 21399), (11, 14641, 14744), (17, 14739, 14842), (17, 19652, 19755), (19, 13718, 13821), (19, 20577, 20680)]

def row104_layer000_block004 : List ColouredInterval :=
  [(23, 11109, 11212), (23, 11638, 11741), (23, 12167, 12270), (23, 12696, 12799), (23, 13225, 13328), (23, 13754, 13857), (23, 12167, 12270), (29, 10933, 11036), (29, 11774, 11877), (29, 12615, 12718), (29, 13456, 13559), (29, 14297, 14400), (29, 15138, 15241), (29, 15979, 16082)]

def row104_layer000_block005 : List ColouredInterval :=
  [(29, 16820, 16923), (29, 17661, 17764), (29, 18502, 18605), (29, 19343, 19446), (29, 20184, 20287), (29, 21025, 21128), (31, 11532, 11635), (31, 12493, 12596), (31, 13454, 13557), (31, 14415, 14518), (31, 15376, 15479), (31, 16337, 16440), (31, 17298, 17401), (31, 18259, 18362)]

def row104_layer000_block006 : List ColouredInterval :=
  [(31, 19220, 19323), (31, 20181, 20284), (31, 21142, 21245), (37, 10952, 11055), (37, 12321, 12424), (37, 13690, 13793), (37, 15059, 15162), (37, 16428, 16531), (37, 17797, 17900), (37, 19166, 19269), (37, 20535, 20638), (41, 11767, 11870), (41, 13448, 13551), (41, 15129, 15232)]

def row104_layer000_block007 : List ColouredInterval :=
  [(41, 16810, 16913), (41, 18491, 18594), (41, 20172, 20275), (43, 11094, 11197), (43, 12943, 13046), (43, 14792, 14895), (43, 16641, 16744), (43, 18490, 18593), (43, 20339, 20442), (47, 11045, 11148), (47, 13254, 13357), (47, 15463, 15566), (47, 17672, 17775), (47, 19881, 19984)]

def row104_layer000_block008 : List ColouredInterval :=
  [(53, 11236, 11339), (53, 14045, 14148), (53, 16854, 16957), (53, 19663, 19766), (59, 13924, 14027), (59, 17405, 17508), (59, 20886, 20989), (61, 11163, 11266), (61, 14884, 14987), (61, 18605, 18708), (67, 13467, 13570), (67, 17956, 18059), (71, 15123, 15226), (71, 20164, 20267)]

def row104_layer000_block009 : List ColouredInterval :=
  [(73, 10712, 10761), (73, 15987, 16090), (73, 21316, 21419), (79, 12482, 12585), (79, 18723, 18826), (83, 13778, 13881), (83, 20667, 20770), (89, 15842, 15945), (97, 18818, 18921), (101, 20402, 20505), (103, 10712, 10712), (103, 21218, 21321)]

def row104_layer000_chunks : List (List ColouredInterval) :=
  [row104_layer000_block000, row104_layer000_block001, row104_layer000_block002, row104_layer000_block003, row104_layer000_block004, row104_layer000_block005, row104_layer000_block006, row104_layer000_block007, row104_layer000_block008, row104_layer000_block009]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer000_arithmetic : LayerArithmeticValid row104.height { lower := 10712, upper := 21424, M := 26 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer000_enumeration :
    activePowerIntervalList 104 26 10712 21424 = row104_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer000_pairs000 :
    row104_layer000_block000.all (fun I => row104_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer000_pairs001 :
    row104_layer000_block001.all (fun I => row104_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer000_pairs002 :
    row104_layer000_block002.all (fun I => row104_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer000_pairs003 :
    row104_layer000_block003.all (fun I => row104_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer000_pairs004 :
    row104_layer000_block004.all (fun I => row104_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer000_pairs005 :
    row104_layer000_block005.all (fun I => row104_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer000_pairs006 :
    row104_layer000_block006.all (fun I => row104_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer000_pairs007 :
    row104_layer000_block007.all (fun I => row104_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer000_pairs007
