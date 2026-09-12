import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row078_height : HeightCertificateDatum := { i := 78, r := 25, s := 54, n0Power10 := 10 }

def row078_goods : List GoodSegment := [
  { lower := 158, upper := 234, witness := RowWitness.topPrime 157 },
  { lower := 235, upper := 310, witness := RowWitness.topPrime 233 },
  { lower := 311, upper := 388, witness := RowWitness.topPrime 311 },
  { lower := 389, upper := 466, witness := RowWitness.topPrime 389 },
  { lower := 467, upper := 544, witness := RowWitness.topPrime 467 },
  { lower := 545, upper := 618, witness := RowWitness.topPrime 541 },
  { lower := 619, upper := 696, witness := RowWitness.topPrime 619 },
  { lower := 697, upper := 768, witness := RowWitness.topPrime 691 },
  { lower := 769, upper := 846, witness := RowWitness.topPrime 769 },
  { lower := 847, upper := 916, witness := RowWitness.topPrime 839 },
  { lower := 917, upper := 988, witness := RowWitness.topPrime 911 },
  { lower := 989, upper := 1060, witness := RowWitness.topPrime 983 },
  { lower := 1061, upper := 1138, witness := RowWitness.topPrime 1061 },
  { lower := 1139, upper := 1206, witness := RowWitness.topPrime 1129 },
  { lower := 1207, upper := 1278, witness := RowWitness.topPrime 1201 },
  { lower := 1279, upper := 1356, witness := RowWitness.topPrime 1279 },
  { lower := 1357, upper := 1404, witness := RowWitness.topPrime 1327 },
  { lower := 1405, upper := 1476, witness := RowWitness.topPrime 1399 },
  { lower := 1477, upper := 1548, witness := RowWitness.topPrime 1471 },
  { lower := 1549, upper := 1626, witness := RowWitness.topPrime 1549 },
  { lower := 1627, upper := 1704, witness := RowWitness.topPrime 1627 },
  { lower := 1705, upper := 1776, witness := RowWitness.topPrime 1699 },
  { lower := 1777, upper := 1854, witness := RowWitness.topPrime 1777 },
  { lower := 1855, upper := 1924, witness := RowWitness.topPrime 1847 },
  { lower := 1925, upper := 1990, witness := RowWitness.topPrime 1913 },
  { lower := 1991, upper := 2064, witness := RowWitness.topPrime 1987 },
  { lower := 2065, upper := 2140, witness := RowWitness.topPrime 2063 },
  { lower := 2141, upper := 2218, witness := RowWitness.topPrime 2141 },
  { lower := 2219, upper := 2290, witness := RowWitness.topPrime 2213 },
  { lower := 2291, upper := 2364, witness := RowWitness.topPrime 2287 },
  { lower := 2365, upper := 2434, witness := RowWitness.topPrime 2357 },
  { lower := 2435, upper := 2500, witness := RowWitness.topPrime 2423 },
  { lower := 2501, upper := 2554, witness := RowWitness.topPrime 2477 },
  { lower := 2555, upper := 2628, witness := RowWitness.topPrime 2551 },
  { lower := 2629, upper := 2698, witness := RowWitness.topPrime 2621 },
  { lower := 2699, upper := 2776, witness := RowWitness.topPrime 2699 },
  { lower := 2777, upper := 2854, witness := RowWitness.topPrime 2777 },
  { lower := 2855, upper := 2928, witness := RowWitness.topPrime 2851 },
  { lower := 2929, upper := 3004, witness := RowWitness.topPrime 2927 },
  { lower := 3005, upper := 3078, witness := RowWitness.topPrime 3001 },
  { lower := 3079, upper := 3156, witness := RowWitness.topPrime 3079 },
  { lower := 3157, upper := 3214, witness := RowWitness.topPrime 3137 },
  { lower := 3215, upper := 3286, witness := RowWitness.topPrime 3209 },
  { lower := 3287, upper := 3348, witness := RowWitness.topPrime 3271 },
  { lower := 3349, upper := 3424, witness := RowWitness.topPrime 3347 },
  { lower := 3425, upper := 3490, witness := RowWitness.topPrime 3413 },
  { lower := 3491, upper := 3568, witness := RowWitness.topPrime 3491 },
  { lower := 3569, upper := 3636, witness := RowWitness.topPrime 3559 },
  { lower := 3637, upper := 3714, witness := RowWitness.topPrime 3637 },
  { lower := 3715, upper := 3786, witness := RowWitness.topPrime 3709 },
  { lower := 3787, upper := 3856, witness := RowWitness.topPrime 3779 },
  { lower := 3857, upper := 3930, witness := RowWitness.topPrime 3853 },
  { lower := 3931, upper := 4008, witness := RowWitness.topPrime 3931 },
  { lower := 4009, upper := 4084, witness := RowWitness.topPrime 4007 },
  { lower := 4085, upper := 4156, witness := RowWitness.topPrime 4079 },
  { lower := 4157, upper := 4234, witness := RowWitness.topPrime 4157 },
  { lower := 4235, upper := 4308, witness := RowWitness.topPrime 4231 },
  { lower := 4309, upper := 4374, witness := RowWitness.topPrime 4297 },
  { lower := 4375, upper := 4450, witness := RowWitness.topPrime 4373 },
  { lower := 4451, upper := 4528, witness := RowWitness.topPrime 4451 },
  { lower := 4529, upper := 4600, witness := RowWitness.topPrime 4523 },
  { lower := 4601, upper := 4674, witness := RowWitness.topPrime 4597 },
  { lower := 4675, upper := 4750, witness := RowWitness.topPrime 4673 },
  { lower := 4751, upper := 4828, witness := RowWitness.topPrime 4751 },
  { lower := 4829, upper := 4894, witness := RowWitness.topPrime 4817 },
  { lower := 4895, upper := 4966, witness := RowWitness.topPrime 4889 },
  { lower := 4967, upper := 5044, witness := RowWitness.topPrime 4967 },
  { lower := 5045, upper := 5116, witness := RowWitness.topPrime 5039 },
  { lower := 5117, upper := 5190, witness := RowWitness.topPrime 5113 },
  { lower := 5191, upper := 5266, witness := RowWitness.topPrime 5189 },
  { lower := 5267, upper := 5338, witness := RowWitness.topPrime 5261 },
  { lower := 5339, upper := 5410, witness := RowWitness.topPrime 5333 },
  { lower := 5411, upper := 5484, witness := RowWitness.topPrime 5407 },
  { lower := 5485, upper := 5560, witness := RowWitness.topPrime 5483 },
  { lower := 5561, upper := 5634, witness := RowWitness.topPrime 5557 },
  { lower := 5635, upper := 5700, witness := RowWitness.topPrime 5623 },
  { lower := 5701, upper := 5778, witness := RowWitness.topPrime 5701 },
  { lower := 5779, upper := 5856, witness := RowWitness.topPrime 5779 },
  { lower := 5857, upper := 5934, witness := RowWitness.topPrime 5857 },
  { lower := 5935, upper := 6004, witness := RowWitness.topPrime 5927 },
  { lower := 6005, upper := 6005, witness := RowWitness.topPrime 5987 },
  { lower := 6137, upper := 6210, witness := RowWitness.topPrime 6133 },
  { lower := 6211, upper := 6221, witness := RowWitness.topPrime 6211 },
  { lower := 6250, upper := 6251, witness := RowWitness.topPrime 6247 },
  { lower := 6358, upper := 6425, witness := RowWitness.topPrime 6353 },
  { lower := 6517, upper := 6568, witness := RowWitness.topPrime 6491 },
  { lower := 6569, upper := 6594, witness := RowWitness.topPrime 6569 },
  { lower := 6627, upper := 6638, witness := RowWitness.topPrime 6619 },
  { lower := 6647, upper := 6714, witness := RowWitness.topPrime 6637 },
  { lower := 6715, upper := 6786, witness := RowWitness.topPrime 6709 },
  { lower := 6787, upper := 6804, witness := RowWitness.topPrime 6781 },
  { lower := 6859, upper := 6934, witness := RowWitness.topPrime 6857 },
  { lower := 6935, upper := 6954, witness := RowWitness.topPrime 6917 },
  { lower := 6962, upper := 7013, witness := RowWitness.topPrime 6961 },
  { lower := 7203, upper := 7270, witness := RowWitness.topPrime 7193 },
  { lower := 7271, upper := 7297, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7470, witness := RowWitness.topPrime 7393 },
  { lower := 7471, upper := 7483, witness := RowWitness.topPrime 7459 },
  { lower := 7500, upper := 7576, witness := RowWitness.topPrime 7499 },
  { lower := 7577, upper := 7646, witness := RowWitness.topPrime 7577 },
  { lower := 7935, upper := 8010, witness := RowWitness.topPrime 7933 },
  { lower := 8011, upper := 8019, witness := RowWitness.topPrime 8011 },
  { lower := 8192, upper := 8202, witness := RowWitness.topPrime 8191 },
  { lower := 8214, upper := 8286, witness := RowWitness.topPrime 8209 },
  { lower := 8287, upper := 8291, witness := RowWitness.topPrime 8287 },
  { lower := 8303, upper := 8309, witness := RowWitness.topPrime 8297 },
  { lower := 8410, upper := 8466, witness := RowWitness.topPrime 8389 },
  { lower := 8467, upper := 8504, witness := RowWitness.topPrime 8467 },
  { lower := 8649, upper := 8652, witness := RowWitness.topPrime 8647 },
  { lower := 8664, upper := 8726, witness := RowWitness.topPrime 8663 },
  { lower := 8750, upper := 8824, witness := RowWitness.topPrime 8747 },
  { lower := 8825, upper := 8825, witness := RowWitness.topPrime 8821 },
  { lower := 8978, upper := 9048, witness := RowWitness.topPrime 8971 },
  { lower := 9049, upper := 9070, witness := RowWitness.topPrime 9049 },
  { lower := 9245, upper := 9318, witness := RowWitness.topPrime 9241 },
  { lower := 9319, upper := 9338, witness := RowWitness.topPrime 9319 },
  { lower := 9375, upper := 9448, witness := RowWitness.topPrime 9371 },
  { lower := 9449, upper := 9452, witness := RowWitness.topPrime 9439 },
  { lower := 9583, upper := 9599, witness := RowWitness.topPrime 9551 },
  { lower := 9604, upper := 9678, witness := RowWitness.topPrime 9601 },
  { lower := 9679, upper := 9681, witness := RowWitness.topPrime 9679 },
  { lower := 10051, upper := 10077, witness := RowWitness.topPrime 10039 },
  { lower := 10082, upper := 10156, witness := RowWitness.topPrime 10079 },
  { lower := 10157, upper := 10163, witness := RowWitness.topPrime 10151 },
  { lower := 10580, upper := 10644, witness := RowWitness.topPrime 10567 },
  { lower := 10645, upper := 10716, witness := RowWitness.topPrime 10639 },
  { lower := 10717, upper := 10725, witness := RowWitness.topPrime 10711 },
  { lower := 10935, upper := 10986, witness := RowWitness.topPrime 10909 },
  { lower := 10987, upper := 11012, witness := RowWitness.topPrime 10987 },
  { lower := 11094, upper := 11170, witness := RowWitness.topPrime 11093 },
  { lower := 11171, upper := 11186, witness := RowWitness.topPrime 11171 },
  { lower := 11236, upper := 11240, witness := RowWitness.topPrime 11213 },
  { lower := 11250, upper := 11320, witness := RowWitness.topPrime 11243 },
  { lower := 11321, upper := 11327, witness := RowWitness.topPrime 11321 },
  { lower := 11774, upper := 11820, witness := RowWitness.topPrime 11743 },
  { lower := 11821, upper := 11844, witness := RowWitness.topPrime 11821 },
  { lower := 12005, upper := 12056, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12365, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12570, witness := RowWitness.topPrime 12497 },
  { lower := 13125, upper := 13198, witness := RowWitness.topPrime 13121 },
  { lower := 13199, upper := 13199, witness := RowWitness.topPrime 13187 },
  { lower := 13310, upper := 13331, witness := RowWitness.topPrime 13309 },
  { lower := 13454, upper := 13528, witness := RowWitness.topPrime 13451 },
  { lower := 13529, upper := 13533, witness := RowWitness.topPrime 13523 },
  { lower := 13718, upper := 13788, witness := RowWitness.topPrime 13711 },
  { lower := 13789, upper := 13795, witness := RowWitness.topPrime 13789 },
  { lower := 14336, upper := 14404, witness := RowWitness.topPrime 14327 },
  { lower := 14405, upper := 14478, witness := RowWitness.topPrime 14401 },
  { lower := 14479, upper := 14483, witness := RowWitness.topPrime 14479 },
  { lower := 14792, upper := 14816, witness := RowWitness.topPrime 14783 },
  { lower := 15123, upper := 15198, witness := RowWitness.topPrime 15121 },
  { lower := 15199, upper := 15206, witness := RowWitness.topPrime 15199 },
  { lower := 15376, upper := 15386, witness := RowWitness.topPrime 15373 },
  { lower := 15979, upper := 16050, witness := RowWitness.topPrime 15973 },
  { lower := 16051, upper := 16056, witness := RowWitness.topPrime 16033 },
  { lower := 16384, upper := 16414, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16461, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16864, witness := RowWitness.topPrime 16787 },
  { lower := 16865, upper := 16897, witness := RowWitness.topPrime 16843 },
  { lower := 17303, upper := 17375, witness := RowWitness.topPrime 17299 },
  { lower := 17672, upper := 17738, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18558, witness := RowWitness.topPrime 18481 },
  { lower := 18559, upper := 18568, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18682, witness := RowWitness.topPrime 18617 },
  { lower := 19208, upper := 19284, witness := RowWitness.topPrime 19207 },
  { lower := 19285, upper := 19285, witness := RowWitness.topPrime 19273 },
  { lower := 19663, upper := 19738, witness := RowWitness.topPrime 19661 },
  { lower := 19739, upper := 19740, witness := RowWitness.topPrime 19739 },
  { lower := 20172, upper := 20238, witness := RowWitness.topPrime 20161 },
  { lower := 20239, upper := 20249, witness := RowWitness.topPrime 20233 },
  { lower := 20535, upper := 20557, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20612, witness := RowWitness.topPrime 20563 },
  { lower := 21316, upper := 21373, witness := RowWitness.topPrime 21313 },
  { lower := 21875, upper := 21948, witness := RowWitness.topPrime 21871 },
  { lower := 21949, upper := 21952, witness := RowWitness.topPrime 21943 },
  { lower := 22103, upper := 22167, witness := RowWitness.topPrime 22093 },
  { lower := 22472, upper := 22522, witness := RowWitness.topPrime 22469 },
  { lower := 22528, upper := 22549, witness := RowWitness.topPrime 22511 },
  { lower := 24010, upper := 24035, witness := RowWitness.topPrime 24007 },
  { lower := 24037, upper := 24087, witness := RowWitness.topPrime 24029 },
  { lower := 24334, upper := 24406, witness := RowWitness.topPrime 24329 },
  { lower := 24407, upper := 24444, witness := RowWitness.topPrime 24407 },
  { lower := 24576, upper := 24648, witness := RowWitness.topPrime 24571 },
  { lower := 24649, upper := 24653, witness := RowWitness.topPrime 24631 },
  { lower := 25215, upper := 25266, witness := RowWitness.topPrime 25189 },
  { lower := 25267, upper := 25338, witness := RowWitness.topPrime 25261 },
  { lower := 25339, upper := 25358, witness := RowWitness.topPrime 25339 },
  { lower := 26047, upper := 26088, witness := RowWitness.topPrime 26041 },
  { lower := 26645, upper := 26697, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 26973, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27457, witness := RowWitness.topPrime 27431 },
  { lower := 28125, upper := 28167, witness := RowWitness.topPrime 28123 },
  { lower := 28577, upper := 28638, witness := RowWitness.topPrime 28573 },
  { lower := 28717, upper := 28749, witness := RowWitness.topPrime 28711 },
  { lower := 29791, upper := 29845, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30323, witness := RowWitness.topPrime 30253 },
  { lower := 30926, upper := 30976, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31290, witness := RowWitness.topPrime 31249 },
  { lower := 31433, upper := 31474, witness := RowWitness.topPrime 31397 },
  { lower := 31475, upper := 31500, witness := RowWitness.topPrime 31469 },
  { lower := 31974, upper := 32016, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32845, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33691, witness := RowWitness.topPrime 33619 },
  { lower := 34391, upper := 34452, witness := RowWitness.topPrime 34381 },
  { lower := 35344, upper := 35364, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36574, witness := RowWitness.topPrime 36497 },
  { lower := 36575, upper := 36578, witness := RowWitness.topPrime 36571 },
  { lower := 37553, upper := 37577, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39400, witness := RowWitness.topPrime 39323 },
  { lower := 39401, upper := 39403, witness := RowWitness.topPrime 39397 },
  { lower := 40401, upper := 40405, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41008, witness := RowWitness.topPrime 40949 },
  { lower := 44217, upper := 44257, witness := RowWitness.topPrime 44207 },
  { lower := 44944, upper := 44967, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48047, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48745, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48811, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49207, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50487, witness := RowWitness.topPrime 50417 },
  { lower := 58619, upper := 58641, witness := RowWitness.topPrime 58613 },
  { lower := 59582, upper := 59613, witness := RowWitness.topPrime 59581 },
  { lower := 65536, upper := 65598, witness := RowWitness.topPrime 65521 },
  { lower := 65599, upper := 65610, witness := RowWitness.topPrime 65599 },
  { lower := 73205, upper := 73244, witness := RowWitness.topPrime 73189 },
  { lower := 146410, upper := 146411, witness := RowWitness.topPrime 146407 },
  { lower := 327701, upper := 327757, witness := RowWitness.topPrime 327689 }
]

def row078_layers : List CoverLayer := [
  { lower := 6006, upper := 12012, M := 27 },
  { lower := 12012, upper := 24024, M := 23 },
  { lower := 24024, upper := 48048, M := 20 },
  { lower := 48048, upper := 96096, M := 17 },
  { lower := 96096, upper := 192192, M := 15 },
  { lower := 192192, upper := 384384, M := 13 },
  { lower := 384384, upper := 768768, M := 11 },
  { lower := 768768, upper := 1537536, M := 9 },
  { lower := 1537536, upper := 3075072, M := 8 },
  { lower := 3075072, upper := 6150144, M := 7 },
  { lower := 6150144, upper := 12300288, M := 6 },
  { lower := 12300288, upper := 24600576, M := 5 },
  { lower := 24600576, upper := 49201152, M := 4 },
  { lower := 49201152, upper := 98402304, M := 4 },
  { lower := 98402304, upper := 196804608, M := 3 },
  { lower := 196804608, upper := 393609216, M := 3 },
  { lower := 393609216, upper := 787218432, M := 3 },
  { lower := 787218432, upper := 1574436864, M := 2 },
  { lower := 1574436864, upper := 3148873728, M := 2 },
  { lower := 3148873728, upper := 6297747456, M := 2 },
  { lower := 6297747456, upper := 10000000000, M := 2 }
]

def row078 : FiniteCoverRow := {
  height := row078_height,
  goods := row078_goods,
  layers := row078_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_good000_checked :
    goodSegmentCheck 78 25 54
      { lower := 158, upper := 234, witness := RowWitness.topPrime 157 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good001_checked :
    goodSegmentCheck 78 25 54
      { lower := 235, upper := 310, witness := RowWitness.topPrime 233 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good002_checked :
    goodSegmentCheck 78 25 54
      { lower := 311, upper := 388, witness := RowWitness.topPrime 311 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good003_checked :
    goodSegmentCheck 78 25 54
      { lower := 389, upper := 466, witness := RowWitness.topPrime 389 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good004_checked :
    goodSegmentCheck 78 25 54
      { lower := 467, upper := 544, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good005_checked :
    goodSegmentCheck 78 25 54
      { lower := 545, upper := 618, witness := RowWitness.topPrime 541 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good006_checked :
    goodSegmentCheck 78 25 54
      { lower := 619, upper := 696, witness := RowWitness.topPrime 619 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good007_checked :
    goodSegmentCheck 78 25 54
      { lower := 697, upper := 768, witness := RowWitness.topPrime 691 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good008_checked :
    goodSegmentCheck 78 25 54
      { lower := 769, upper := 846, witness := RowWitness.topPrime 769 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good009_checked :
    goodSegmentCheck 78 25 54
      { lower := 847, upper := 916, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good010_checked :
    goodSegmentCheck 78 25 54
      { lower := 917, upper := 988, witness := RowWitness.topPrime 911 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good011_checked :
    goodSegmentCheck 78 25 54
      { lower := 989, upper := 1060, witness := RowWitness.topPrime 983 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good012_checked :
    goodSegmentCheck 78 25 54
      { lower := 1061, upper := 1138, witness := RowWitness.topPrime 1061 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good013_checked :
    goodSegmentCheck 78 25 54
      { lower := 1139, upper := 1206, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good014_checked :
    goodSegmentCheck 78 25 54
      { lower := 1207, upper := 1278, witness := RowWitness.topPrime 1201 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good015_checked :
    goodSegmentCheck 78 25 54
      { lower := 1279, upper := 1356, witness := RowWitness.topPrime 1279 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_good016_checked :
    goodSegmentCheck 78 25 54
      { lower := 1357, upper := 1404, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good017_checked :
    goodSegmentCheck 78 25 54
      { lower := 1405, upper := 1476, witness := RowWitness.topPrime 1399 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good018_checked :
    goodSegmentCheck 78 25 54
      { lower := 1477, upper := 1548, witness := RowWitness.topPrime 1471 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good019_checked :
    goodSegmentCheck 78 25 54
      { lower := 1549, upper := 1626, witness := RowWitness.topPrime 1549 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good020_checked :
    goodSegmentCheck 78 25 54
      { lower := 1627, upper := 1704, witness := RowWitness.topPrime 1627 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good021_checked :
    goodSegmentCheck 78 25 54
      { lower := 1705, upper := 1776, witness := RowWitness.topPrime 1699 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good022_checked :
    goodSegmentCheck 78 25 54
      { lower := 1777, upper := 1854, witness := RowWitness.topPrime 1777 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good023_checked :
    goodSegmentCheck 78 25 54
      { lower := 1855, upper := 1924, witness := RowWitness.topPrime 1847 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good024_checked :
    goodSegmentCheck 78 25 54
      { lower := 1925, upper := 1990, witness := RowWitness.topPrime 1913 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good025_checked :
    goodSegmentCheck 78 25 54
      { lower := 1991, upper := 2064, witness := RowWitness.topPrime 1987 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good026_checked :
    goodSegmentCheck 78 25 54
      { lower := 2065, upper := 2140, witness := RowWitness.topPrime 2063 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good027_checked :
    goodSegmentCheck 78 25 54
      { lower := 2141, upper := 2218, witness := RowWitness.topPrime 2141 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good028_checked :
    goodSegmentCheck 78 25 54
      { lower := 2219, upper := 2290, witness := RowWitness.topPrime 2213 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good029_checked :
    goodSegmentCheck 78 25 54
      { lower := 2291, upper := 2364, witness := RowWitness.topPrime 2287 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good030_checked :
    goodSegmentCheck 78 25 54
      { lower := 2365, upper := 2434, witness := RowWitness.topPrime 2357 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good031_checked :
    goodSegmentCheck 78 25 54
      { lower := 2435, upper := 2500, witness := RowWitness.topPrime 2423 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_good032_checked :
    goodSegmentCheck 78 25 54
      { lower := 2501, upper := 2554, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good033_checked :
    goodSegmentCheck 78 25 54
      { lower := 2555, upper := 2628, witness := RowWitness.topPrime 2551 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good034_checked :
    goodSegmentCheck 78 25 54
      { lower := 2629, upper := 2698, witness := RowWitness.topPrime 2621 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good035_checked :
    goodSegmentCheck 78 25 54
      { lower := 2699, upper := 2776, witness := RowWitness.topPrime 2699 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good036_checked :
    goodSegmentCheck 78 25 54
      { lower := 2777, upper := 2854, witness := RowWitness.topPrime 2777 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good037_checked :
    goodSegmentCheck 78 25 54
      { lower := 2855, upper := 2928, witness := RowWitness.topPrime 2851 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good038_checked :
    goodSegmentCheck 78 25 54
      { lower := 2929, upper := 3004, witness := RowWitness.topPrime 2927 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good039_checked :
    goodSegmentCheck 78 25 54
      { lower := 3005, upper := 3078, witness := RowWitness.topPrime 3001 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good040_checked :
    goodSegmentCheck 78 25 54
      { lower := 3079, upper := 3156, witness := RowWitness.topPrime 3079 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good041_checked :
    goodSegmentCheck 78 25 54
      { lower := 3157, upper := 3214, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good042_checked :
    goodSegmentCheck 78 25 54
      { lower := 3215, upper := 3286, witness := RowWitness.topPrime 3209 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good043_checked :
    goodSegmentCheck 78 25 54
      { lower := 3287, upper := 3348, witness := RowWitness.topPrime 3271 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good044_checked :
    goodSegmentCheck 78 25 54
      { lower := 3349, upper := 3424, witness := RowWitness.topPrime 3347 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good045_checked :
    goodSegmentCheck 78 25 54
      { lower := 3425, upper := 3490, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good046_checked :
    goodSegmentCheck 78 25 54
      { lower := 3491, upper := 3568, witness := RowWitness.topPrime 3491 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good047_checked :
    goodSegmentCheck 78 25 54
      { lower := 3569, upper := 3636, witness := RowWitness.topPrime 3559 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_good048_checked :
    goodSegmentCheck 78 25 54
      { lower := 3637, upper := 3714, witness := RowWitness.topPrime 3637 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good049_checked :
    goodSegmentCheck 78 25 54
      { lower := 3715, upper := 3786, witness := RowWitness.topPrime 3709 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good050_checked :
    goodSegmentCheck 78 25 54
      { lower := 3787, upper := 3856, witness := RowWitness.topPrime 3779 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good051_checked :
    goodSegmentCheck 78 25 54
      { lower := 3857, upper := 3930, witness := RowWitness.topPrime 3853 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good052_checked :
    goodSegmentCheck 78 25 54
      { lower := 3931, upper := 4008, witness := RowWitness.topPrime 3931 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good053_checked :
    goodSegmentCheck 78 25 54
      { lower := 4009, upper := 4084, witness := RowWitness.topPrime 4007 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good054_checked :
    goodSegmentCheck 78 25 54
      { lower := 4085, upper := 4156, witness := RowWitness.topPrime 4079 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good055_checked :
    goodSegmentCheck 78 25 54
      { lower := 4157, upper := 4234, witness := RowWitness.topPrime 4157 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good056_checked :
    goodSegmentCheck 78 25 54
      { lower := 4235, upper := 4308, witness := RowWitness.topPrime 4231 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good057_checked :
    goodSegmentCheck 78 25 54
      { lower := 4309, upper := 4374, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good058_checked :
    goodSegmentCheck 78 25 54
      { lower := 4375, upper := 4450, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good059_checked :
    goodSegmentCheck 78 25 54
      { lower := 4451, upper := 4528, witness := RowWitness.topPrime 4451 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good060_checked :
    goodSegmentCheck 78 25 54
      { lower := 4529, upper := 4600, witness := RowWitness.topPrime 4523 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good061_checked :
    goodSegmentCheck 78 25 54
      { lower := 4601, upper := 4674, witness := RowWitness.topPrime 4597 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good062_checked :
    goodSegmentCheck 78 25 54
      { lower := 4675, upper := 4750, witness := RowWitness.topPrime 4673 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good063_checked :
    goodSegmentCheck 78 25 54
      { lower := 4751, upper := 4828, witness := RowWitness.topPrime 4751 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_good064_checked :
    goodSegmentCheck 78 25 54
      { lower := 4829, upper := 4894, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good065_checked :
    goodSegmentCheck 78 25 54
      { lower := 4895, upper := 4966, witness := RowWitness.topPrime 4889 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good066_checked :
    goodSegmentCheck 78 25 54
      { lower := 4967, upper := 5044, witness := RowWitness.topPrime 4967 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good067_checked :
    goodSegmentCheck 78 25 54
      { lower := 5045, upper := 5116, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good068_checked :
    goodSegmentCheck 78 25 54
      { lower := 5117, upper := 5190, witness := RowWitness.topPrime 5113 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good069_checked :
    goodSegmentCheck 78 25 54
      { lower := 5191, upper := 5266, witness := RowWitness.topPrime 5189 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good070_checked :
    goodSegmentCheck 78 25 54
      { lower := 5267, upper := 5338, witness := RowWitness.topPrime 5261 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good071_checked :
    goodSegmentCheck 78 25 54
      { lower := 5339, upper := 5410, witness := RowWitness.topPrime 5333 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good072_checked :
    goodSegmentCheck 78 25 54
      { lower := 5411, upper := 5484, witness := RowWitness.topPrime 5407 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good073_checked :
    goodSegmentCheck 78 25 54
      { lower := 5485, upper := 5560, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good074_checked :
    goodSegmentCheck 78 25 54
      { lower := 5561, upper := 5634, witness := RowWitness.topPrime 5557 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good075_checked :
    goodSegmentCheck 78 25 54
      { lower := 5635, upper := 5700, witness := RowWitness.topPrime 5623 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good076_checked :
    goodSegmentCheck 78 25 54
      { lower := 5701, upper := 5778, witness := RowWitness.topPrime 5701 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good077_checked :
    goodSegmentCheck 78 25 54
      { lower := 5779, upper := 5856, witness := RowWitness.topPrime 5779 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good078_checked :
    goodSegmentCheck 78 25 54
      { lower := 5857, upper := 5934, witness := RowWitness.topPrime 5857 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good079_checked :
    goodSegmentCheck 78 25 54
      { lower := 5935, upper := 6004, witness := RowWitness.topPrime 5927 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_good080_checked :
    goodSegmentCheck 78 25 54
      { lower := 6005, upper := 6005, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good081_checked :
    goodSegmentCheck 78 25 54
      { lower := 6137, upper := 6210, witness := RowWitness.topPrime 6133 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good082_checked :
    goodSegmentCheck 78 25 54
      { lower := 6211, upper := 6221, witness := RowWitness.topPrime 6211 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good083_checked :
    goodSegmentCheck 78 25 54
      { lower := 6250, upper := 6251, witness := RowWitness.topPrime 6247 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good084_checked :
    goodSegmentCheck 78 25 54
      { lower := 6358, upper := 6425, witness := RowWitness.topPrime 6353 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good085_checked :
    goodSegmentCheck 78 25 54
      { lower := 6517, upper := 6568, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good086_checked :
    goodSegmentCheck 78 25 54
      { lower := 6569, upper := 6594, witness := RowWitness.topPrime 6569 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good087_checked :
    goodSegmentCheck 78 25 54
      { lower := 6627, upper := 6638, witness := RowWitness.topPrime 6619 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good088_checked :
    goodSegmentCheck 78 25 54
      { lower := 6647, upper := 6714, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good089_checked :
    goodSegmentCheck 78 25 54
      { lower := 6715, upper := 6786, witness := RowWitness.topPrime 6709 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good090_checked :
    goodSegmentCheck 78 25 54
      { lower := 6787, upper := 6804, witness := RowWitness.topPrime 6781 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good091_checked :
    goodSegmentCheck 78 25 54
      { lower := 6859, upper := 6934, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good092_checked :
    goodSegmentCheck 78 25 54
      { lower := 6935, upper := 6954, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good093_checked :
    goodSegmentCheck 78 25 54
      { lower := 6962, upper := 7013, witness := RowWitness.topPrime 6961 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good094_checked :
    goodSegmentCheck 78 25 54
      { lower := 7203, upper := 7270, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good095_checked :
    goodSegmentCheck 78 25 54
      { lower := 7271, upper := 7297, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_good096_checked :
    goodSegmentCheck 78 25 54
      { lower := 7406, upper := 7470, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good097_checked :
    goodSegmentCheck 78 25 54
      { lower := 7471, upper := 7483, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good098_checked :
    goodSegmentCheck 78 25 54
      { lower := 7500, upper := 7576, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good099_checked :
    goodSegmentCheck 78 25 54
      { lower := 7577, upper := 7646, witness := RowWitness.topPrime 7577 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good100_checked :
    goodSegmentCheck 78 25 54
      { lower := 7935, upper := 8010, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good101_checked :
    goodSegmentCheck 78 25 54
      { lower := 8011, upper := 8019, witness := RowWitness.topPrime 8011 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good102_checked :
    goodSegmentCheck 78 25 54
      { lower := 8192, upper := 8202, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good103_checked :
    goodSegmentCheck 78 25 54
      { lower := 8214, upper := 8286, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good104_checked :
    goodSegmentCheck 78 25 54
      { lower := 8287, upper := 8291, witness := RowWitness.topPrime 8287 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good105_checked :
    goodSegmentCheck 78 25 54
      { lower := 8303, upper := 8309, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good106_checked :
    goodSegmentCheck 78 25 54
      { lower := 8410, upper := 8466, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good107_checked :
    goodSegmentCheck 78 25 54
      { lower := 8467, upper := 8504, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good108_checked :
    goodSegmentCheck 78 25 54
      { lower := 8649, upper := 8652, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good109_checked :
    goodSegmentCheck 78 25 54
      { lower := 8664, upper := 8726, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good110_checked :
    goodSegmentCheck 78 25 54
      { lower := 8750, upper := 8824, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good111_checked :
    goodSegmentCheck 78 25 54
      { lower := 8825, upper := 8825, witness := RowWitness.topPrime 8821 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_good112_checked :
    goodSegmentCheck 78 25 54
      { lower := 8978, upper := 9048, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good113_checked :
    goodSegmentCheck 78 25 54
      { lower := 9049, upper := 9070, witness := RowWitness.topPrime 9049 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good114_checked :
    goodSegmentCheck 78 25 54
      { lower := 9245, upper := 9318, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good115_checked :
    goodSegmentCheck 78 25 54
      { lower := 9319, upper := 9338, witness := RowWitness.topPrime 9319 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good116_checked :
    goodSegmentCheck 78 25 54
      { lower := 9375, upper := 9448, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good117_checked :
    goodSegmentCheck 78 25 54
      { lower := 9449, upper := 9452, witness := RowWitness.topPrime 9439 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good118_checked :
    goodSegmentCheck 78 25 54
      { lower := 9583, upper := 9599, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good119_checked :
    goodSegmentCheck 78 25 54
      { lower := 9604, upper := 9678, witness := RowWitness.topPrime 9601 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good120_checked :
    goodSegmentCheck 78 25 54
      { lower := 9679, upper := 9681, witness := RowWitness.topPrime 9679 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good121_checked :
    goodSegmentCheck 78 25 54
      { lower := 10051, upper := 10077, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good122_checked :
    goodSegmentCheck 78 25 54
      { lower := 10082, upper := 10156, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good123_checked :
    goodSegmentCheck 78 25 54
      { lower := 10157, upper := 10163, witness := RowWitness.topPrime 10151 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good124_checked :
    goodSegmentCheck 78 25 54
      { lower := 10580, upper := 10644, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good125_checked :
    goodSegmentCheck 78 25 54
      { lower := 10645, upper := 10716, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good126_checked :
    goodSegmentCheck 78 25 54
      { lower := 10717, upper := 10725, witness := RowWitness.topPrime 10711 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good127_checked :
    goodSegmentCheck 78 25 54
      { lower := 10935, upper := 10986, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_good128_checked :
    goodSegmentCheck 78 25 54
      { lower := 10987, upper := 11012, witness := RowWitness.topPrime 10987 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good129_checked :
    goodSegmentCheck 78 25 54
      { lower := 11094, upper := 11170, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good130_checked :
    goodSegmentCheck 78 25 54
      { lower := 11171, upper := 11186, witness := RowWitness.topPrime 11171 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good131_checked :
    goodSegmentCheck 78 25 54
      { lower := 11236, upper := 11240, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good132_checked :
    goodSegmentCheck 78 25 54
      { lower := 11250, upper := 11320, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good133_checked :
    goodSegmentCheck 78 25 54
      { lower := 11321, upper := 11327, witness := RowWitness.topPrime 11321 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good134_checked :
    goodSegmentCheck 78 25 54
      { lower := 11774, upper := 11820, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good135_checked :
    goodSegmentCheck 78 25 54
      { lower := 11821, upper := 11844, witness := RowWitness.topPrime 11821 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good136_checked :
    goodSegmentCheck 78 25 54
      { lower := 12005, upper := 12056, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good137_checked :
    goodSegmentCheck 78 25 54
      { lower := 12321, upper := 12365, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good138_checked :
    goodSegmentCheck 78 25 54
      { lower := 12500, upper := 12570, witness := RowWitness.topPrime 12497 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good139_checked :
    goodSegmentCheck 78 25 54
      { lower := 13125, upper := 13198, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good140_checked :
    goodSegmentCheck 78 25 54
      { lower := 13199, upper := 13199, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good141_checked :
    goodSegmentCheck 78 25 54
      { lower := 13310, upper := 13331, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good142_checked :
    goodSegmentCheck 78 25 54
      { lower := 13454, upper := 13528, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good143_checked :
    goodSegmentCheck 78 25 54
      { lower := 13529, upper := 13533, witness := RowWitness.topPrime 13523 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_good144_checked :
    goodSegmentCheck 78 25 54
      { lower := 13718, upper := 13788, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good145_checked :
    goodSegmentCheck 78 25 54
      { lower := 13789, upper := 13795, witness := RowWitness.topPrime 13789 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good146_checked :
    goodSegmentCheck 78 25 54
      { lower := 14336, upper := 14404, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good147_checked :
    goodSegmentCheck 78 25 54
      { lower := 14405, upper := 14478, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good148_checked :
    goodSegmentCheck 78 25 54
      { lower := 14479, upper := 14483, witness := RowWitness.topPrime 14479 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good149_checked :
    goodSegmentCheck 78 25 54
      { lower := 14792, upper := 14816, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good150_checked :
    goodSegmentCheck 78 25 54
      { lower := 15123, upper := 15198, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good151_checked :
    goodSegmentCheck 78 25 54
      { lower := 15199, upper := 15206, witness := RowWitness.topPrime 15199 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good152_checked :
    goodSegmentCheck 78 25 54
      { lower := 15376, upper := 15386, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good153_checked :
    goodSegmentCheck 78 25 54
      { lower := 15979, upper := 16050, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good154_checked :
    goodSegmentCheck 78 25 54
      { lower := 16051, upper := 16056, witness := RowWitness.topPrime 16033 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good155_checked :
    goodSegmentCheck 78 25 54
      { lower := 16384, upper := 16414, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good156_checked :
    goodSegmentCheck 78 25 54
      { lower := 16428, upper := 16461, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good157_checked :
    goodSegmentCheck 78 25 54
      { lower := 16810, upper := 16864, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good158_checked :
    goodSegmentCheck 78 25 54
      { lower := 16865, upper := 16897, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good159_checked :
    goodSegmentCheck 78 25 54
      { lower := 17303, upper := 17375, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_good160_checked :
    goodSegmentCheck 78 25 54
      { lower := 17672, upper := 17738, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good161_checked :
    goodSegmentCheck 78 25 54
      { lower := 18490, upper := 18558, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good162_checked :
    goodSegmentCheck 78 25 54
      { lower := 18559, upper := 18568, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good163_checked :
    goodSegmentCheck 78 25 54
      { lower := 18634, upper := 18682, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good164_checked :
    goodSegmentCheck 78 25 54
      { lower := 19208, upper := 19284, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good165_checked :
    goodSegmentCheck 78 25 54
      { lower := 19285, upper := 19285, witness := RowWitness.topPrime 19273 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good166_checked :
    goodSegmentCheck 78 25 54
      { lower := 19663, upper := 19738, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good167_checked :
    goodSegmentCheck 78 25 54
      { lower := 19739, upper := 19740, witness := RowWitness.topPrime 19739 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good168_checked :
    goodSegmentCheck 78 25 54
      { lower := 20172, upper := 20238, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good169_checked :
    goodSegmentCheck 78 25 54
      { lower := 20239, upper := 20249, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good170_checked :
    goodSegmentCheck 78 25 54
      { lower := 20535, upper := 20557, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good171_checked :
    goodSegmentCheck 78 25 54
      { lower := 20577, upper := 20612, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good172_checked :
    goodSegmentCheck 78 25 54
      { lower := 21316, upper := 21373, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good173_checked :
    goodSegmentCheck 78 25 54
      { lower := 21875, upper := 21948, witness := RowWitness.topPrime 21871 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good174_checked :
    goodSegmentCheck 78 25 54
      { lower := 21949, upper := 21952, witness := RowWitness.topPrime 21943 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good175_checked :
    goodSegmentCheck 78 25 54
      { lower := 22103, upper := 22167, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_good176_checked :
    goodSegmentCheck 78 25 54
      { lower := 22472, upper := 22522, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good177_checked :
    goodSegmentCheck 78 25 54
      { lower := 22528, upper := 22549, witness := RowWitness.topPrime 22511 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good178_checked :
    goodSegmentCheck 78 25 54
      { lower := 24010, upper := 24035, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good179_checked :
    goodSegmentCheck 78 25 54
      { lower := 24037, upper := 24087, witness := RowWitness.topPrime 24029 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good180_checked :
    goodSegmentCheck 78 25 54
      { lower := 24334, upper := 24406, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good181_checked :
    goodSegmentCheck 78 25 54
      { lower := 24407, upper := 24444, witness := RowWitness.topPrime 24407 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good182_checked :
    goodSegmentCheck 78 25 54
      { lower := 24576, upper := 24648, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good183_checked :
    goodSegmentCheck 78 25 54
      { lower := 24649, upper := 24653, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good184_checked :
    goodSegmentCheck 78 25 54
      { lower := 25215, upper := 25266, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good185_checked :
    goodSegmentCheck 78 25 54
      { lower := 25267, upper := 25338, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good186_checked :
    goodSegmentCheck 78 25 54
      { lower := 25339, upper := 25358, witness := RowWitness.topPrime 25339 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good187_checked :
    goodSegmentCheck 78 25 54
      { lower := 26047, upper := 26088, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good188_checked :
    goodSegmentCheck 78 25 54
      { lower := 26645, upper := 26697, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good189_checked :
    goodSegmentCheck 78 25 54
      { lower := 26934, upper := 26973, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good190_checked :
    goodSegmentCheck 78 25 54
      { lower := 27436, upper := 27457, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good191_checked :
    goodSegmentCheck 78 25 54
      { lower := 28125, upper := 28167, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_good192_checked :
    goodSegmentCheck 78 25 54
      { lower := 28577, upper := 28638, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good193_checked :
    goodSegmentCheck 78 25 54
      { lower := 28717, upper := 28749, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good194_checked :
    goodSegmentCheck 78 25 54
      { lower := 29791, upper := 29845, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good195_checked :
    goodSegmentCheck 78 25 54
      { lower := 30258, upper := 30323, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good196_checked :
    goodSegmentCheck 78 25 54
      { lower := 30926, upper := 30976, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good197_checked :
    goodSegmentCheck 78 25 54
      { lower := 31250, upper := 31290, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good198_checked :
    goodSegmentCheck 78 25 54
      { lower := 31433, upper := 31474, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good199_checked :
    goodSegmentCheck 78 25 54
      { lower := 31475, upper := 31500, witness := RowWitness.topPrime 31469 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good200_checked :
    goodSegmentCheck 78 25 54
      { lower := 31974, upper := 32016, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good201_checked :
    goodSegmentCheck 78 25 54
      { lower := 32805, upper := 32845, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good202_checked :
    goodSegmentCheck 78 25 54
      { lower := 33620, upper := 33691, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good203_checked :
    goodSegmentCheck 78 25 54
      { lower := 34391, upper := 34452, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good204_checked :
    goodSegmentCheck 78 25 54
      { lower := 35344, upper := 35364, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good205_checked :
    goodSegmentCheck 78 25 54
      { lower := 36517, upper := 36574, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good206_checked :
    goodSegmentCheck 78 25 54
      { lower := 36575, upper := 36578, witness := RowWitness.topPrime 36571 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good207_checked :
    goodSegmentCheck 78 25 54
      { lower := 37553, upper := 37577, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_good208_checked :
    goodSegmentCheck 78 25 54
      { lower := 39326, upper := 39400, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good209_checked :
    goodSegmentCheck 78 25 54
      { lower := 39401, upper := 39403, witness := RowWitness.topPrime 39397 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good210_checked :
    goodSegmentCheck 78 25 54
      { lower := 40401, upper := 40405, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good211_checked :
    goodSegmentCheck 78 25 54
      { lower := 40960, upper := 41008, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good212_checked :
    goodSegmentCheck 78 25 54
      { lower := 44217, upper := 44257, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good213_checked :
    goodSegmentCheck 78 25 54
      { lower := 44944, upper := 44967, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good214_checked :
    goodSegmentCheck 78 25 54
      { lower := 48013, upper := 48047, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good215_checked :
    goodSegmentCheck 78 25 54
      { lower := 48734, upper := 48745, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good216_checked :
    goodSegmentCheck 78 25 54
      { lower := 48778, upper := 48811, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good217_checked :
    goodSegmentCheck 78 25 54
      { lower := 49152, upper := 49207, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good218_checked :
    goodSegmentCheck 78 25 54
      { lower := 50421, upper := 50487, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good219_checked :
    goodSegmentCheck 78 25 54
      { lower := 58619, upper := 58641, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good220_checked :
    goodSegmentCheck 78 25 54
      { lower := 59582, upper := 59613, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good221_checked :
    goodSegmentCheck 78 25 54
      { lower := 65536, upper := 65598, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good222_checked :
    goodSegmentCheck 78 25 54
      { lower := 65599, upper := 65610, witness := RowWitness.topPrime 65599 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good223_checked :
    goodSegmentCheck 78 25 54
      { lower := 73205, upper := 73244, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_good224_checked :
    goodSegmentCheck 78 25 54
      { lower := 146410, upper := 146411, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row078_good225_checked :
    goodSegmentCheck 78 25 54
      { lower := 327701, upper := 327757, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 78) (r := 25) (s := 54) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_good225_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_goods_checked :
    row078.goods.all (goodSegmentCheck row078.height.i row078.height.r row078.height.s) = true := by
  change row078_goods.all (goodSegmentCheck 78 25 54) = true
  simp only [row078_goods, List.all_cons, List.all_nil,
    row078_good000_checked,
    row078_good001_checked,
    row078_good002_checked,
    row078_good003_checked,
    row078_good004_checked,
    row078_good005_checked,
    row078_good006_checked,
    row078_good007_checked,
    row078_good008_checked,
    row078_good009_checked,
    row078_good010_checked,
    row078_good011_checked,
    row078_good012_checked,
    row078_good013_checked,
    row078_good014_checked,
    row078_good015_checked,
    row078_good016_checked,
    row078_good017_checked,
    row078_good018_checked,
    row078_good019_checked,
    row078_good020_checked,
    row078_good021_checked,
    row078_good022_checked,
    row078_good023_checked,
    row078_good024_checked,
    row078_good025_checked,
    row078_good026_checked,
    row078_good027_checked,
    row078_good028_checked,
    row078_good029_checked,
    row078_good030_checked,
    row078_good031_checked,
    row078_good032_checked,
    row078_good033_checked,
    row078_good034_checked,
    row078_good035_checked,
    row078_good036_checked,
    row078_good037_checked,
    row078_good038_checked,
    row078_good039_checked,
    row078_good040_checked,
    row078_good041_checked,
    row078_good042_checked,
    row078_good043_checked,
    row078_good044_checked,
    row078_good045_checked,
    row078_good046_checked,
    row078_good047_checked,
    row078_good048_checked,
    row078_good049_checked,
    row078_good050_checked,
    row078_good051_checked,
    row078_good052_checked,
    row078_good053_checked,
    row078_good054_checked,
    row078_good055_checked,
    row078_good056_checked,
    row078_good057_checked,
    row078_good058_checked,
    row078_good059_checked,
    row078_good060_checked,
    row078_good061_checked,
    row078_good062_checked,
    row078_good063_checked,
    row078_good064_checked,
    row078_good065_checked,
    row078_good066_checked,
    row078_good067_checked,
    row078_good068_checked,
    row078_good069_checked,
    row078_good070_checked,
    row078_good071_checked,
    row078_good072_checked,
    row078_good073_checked,
    row078_good074_checked,
    row078_good075_checked,
    row078_good076_checked,
    row078_good077_checked,
    row078_good078_checked,
    row078_good079_checked,
    row078_good080_checked,
    row078_good081_checked,
    row078_good082_checked,
    row078_good083_checked,
    row078_good084_checked,
    row078_good085_checked,
    row078_good086_checked,
    row078_good087_checked,
    row078_good088_checked,
    row078_good089_checked,
    row078_good090_checked,
    row078_good091_checked,
    row078_good092_checked,
    row078_good093_checked,
    row078_good094_checked,
    row078_good095_checked,
    row078_good096_checked,
    row078_good097_checked,
    row078_good098_checked,
    row078_good099_checked,
    row078_good100_checked,
    row078_good101_checked,
    row078_good102_checked,
    row078_good103_checked,
    row078_good104_checked,
    row078_good105_checked,
    row078_good106_checked,
    row078_good107_checked,
    row078_good108_checked,
    row078_good109_checked,
    row078_good110_checked,
    row078_good111_checked,
    row078_good112_checked,
    row078_good113_checked,
    row078_good114_checked,
    row078_good115_checked,
    row078_good116_checked,
    row078_good117_checked,
    row078_good118_checked,
    row078_good119_checked,
    row078_good120_checked,
    row078_good121_checked,
    row078_good122_checked,
    row078_good123_checked,
    row078_good124_checked,
    row078_good125_checked,
    row078_good126_checked,
    row078_good127_checked,
    row078_good128_checked,
    row078_good129_checked,
    row078_good130_checked,
    row078_good131_checked,
    row078_good132_checked,
    row078_good133_checked,
    row078_good134_checked,
    row078_good135_checked,
    row078_good136_checked,
    row078_good137_checked,
    row078_good138_checked,
    row078_good139_checked,
    row078_good140_checked,
    row078_good141_checked,
    row078_good142_checked,
    row078_good143_checked,
    row078_good144_checked,
    row078_good145_checked,
    row078_good146_checked,
    row078_good147_checked,
    row078_good148_checked,
    row078_good149_checked,
    row078_good150_checked,
    row078_good151_checked,
    row078_good152_checked,
    row078_good153_checked,
    row078_good154_checked,
    row078_good155_checked,
    row078_good156_checked,
    row078_good157_checked,
    row078_good158_checked,
    row078_good159_checked,
    row078_good160_checked,
    row078_good161_checked,
    row078_good162_checked,
    row078_good163_checked,
    row078_good164_checked,
    row078_good165_checked,
    row078_good166_checked,
    row078_good167_checked,
    row078_good168_checked,
    row078_good169_checked,
    row078_good170_checked,
    row078_good171_checked,
    row078_good172_checked,
    row078_good173_checked,
    row078_good174_checked,
    row078_good175_checked,
    row078_good176_checked,
    row078_good177_checked,
    row078_good178_checked,
    row078_good179_checked,
    row078_good180_checked,
    row078_good181_checked,
    row078_good182_checked,
    row078_good183_checked,
    row078_good184_checked,
    row078_good185_checked,
    row078_good186_checked,
    row078_good187_checked,
    row078_good188_checked,
    row078_good189_checked,
    row078_good190_checked,
    row078_good191_checked,
    row078_good192_checked,
    row078_good193_checked,
    row078_good194_checked,
    row078_good195_checked,
    row078_good196_checked,
    row078_good197_checked,
    row078_good198_checked,
    row078_good199_checked,
    row078_good200_checked,
    row078_good201_checked,
    row078_good202_checked,
    row078_good203_checked,
    row078_good204_checked,
    row078_good205_checked,
    row078_good206_checked,
    row078_good207_checked,
    row078_good208_checked,
    row078_good209_checked,
    row078_good210_checked,
    row078_good211_checked,
    row078_good212_checked,
    row078_good213_checked,
    row078_good214_checked,
    row078_good215_checked,
    row078_good216_checked,
    row078_good217_checked,
    row078_good218_checked,
    row078_good219_checked,
    row078_good220_checked,
    row078_good221_checked,
    row078_good222_checked,
    row078_good223_checked,
    row078_good224_checked,
    row078_good225_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_registered :
    decide (row078.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row078_small_checked :
    coverCheck (2 * row078.height.i + 2) (row078.height.i * (row078.height.i - 1) - 1)
      (row078.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row078_layerCover_checked :
    coverCheck (row078.height.i * (row078.height.i - 1)) (row078.height.n0 - 1)
      (row078.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row078_bounds : List NatInterval :=
  [(158, 234), (235, 310), (311, 388), (389, 466), (467, 544), (545, 618), (619, 696), (697, 768), (769, 846), (847, 916), (917, 988), (989, 1060), (1061, 1138), (1139, 1206), (1207, 1278), (1279, 1356), (1357, 1404), (1405, 1476), (1477, 1548), (1549, 1626), (1627, 1704), (1705, 1776), (1777, 1854), (1855, 1924), (1925, 1990), (1991, 2064), (2065, 2140), (2141, 2218), (2219, 2290), (2291, 2364), (2365, 2434), (2435, 2500), (2501, 2554), (2555, 2628), (2629, 2698), (2699, 2776), (2777, 2854), (2855, 2928), (2929, 3004), (3005, 3078), (3079, 3156), (3157, 3214), (3215, 3286), (3287, 3348), (3349, 3424), (3425, 3490), (3491, 3568), (3569, 3636), (3637, 3714), (3715, 3786), (3787, 3856), (3857, 3930), (3931, 4008), (4009, 4084), (4085, 4156), (4157, 4234), (4235, 4308), (4309, 4374), (4375, 4450), (4451, 4528), (4529, 4600), (4601, 4674), (4675, 4750), (4751, 4828), (4829, 4894), (4895, 4966), (4967, 5044), (5045, 5116), (5117, 5190), (5191, 5266), (5267, 5338), (5339, 5410), (5411, 5484), (5485, 5560), (5561, 5634), (5635, 5700), (5701, 5778), (5779, 5856), (5857, 5934), (5935, 6004), (6005, 6005), (6137, 6210), (6211, 6221), (6250, 6251), (6358, 6425), (6517, 6568), (6569, 6594), (6627, 6638), (6647, 6714), (6715, 6786), (6787, 6804), (6859, 6934), (6935, 6954), (6962, 7013), (7203, 7270), (7271, 7297), (7406, 7470), (7471, 7483), (7500, 7576), (7577, 7646), (7935, 8010), (8011, 8019), (8192, 8202), (8214, 8286), (8287, 8291), (8303, 8309), (8410, 8466), (8467, 8504), (8649, 8652), (8664, 8726), (8750, 8824), (8825, 8825), (8978, 9048), (9049, 9070), (9245, 9318), (9319, 9338), (9375, 9448), (9449, 9452), (9583, 9599), (9604, 9678), (9679, 9681), (10051, 10077), (10082, 10156), (10157, 10163), (10580, 10644), (10645, 10716), (10717, 10725), (10935, 10986), (10987, 11012), (11094, 11170), (11171, 11186), (11236, 11240), (11250, 11320), (11321, 11327), (11774, 11820), (11821, 11844), (12005, 12056), (12321, 12365), (12500, 12570), (13125, 13198), (13199, 13199), (13310, 13331), (13454, 13528), (13529, 13533), (13718, 13788), (13789, 13795), (14336, 14404), (14405, 14478), (14479, 14483), (14792, 14816), (15123, 15198), (15199, 15206), (15376, 15386), (15979, 16050), (16051, 16056), (16384, 16414), (16428, 16461), (16810, 16864), (16865, 16897), (17303, 17375), (17672, 17738), (18490, 18558), (18559, 18568), (18634, 18682), (19208, 19284), (19285, 19285), (19663, 19738), (19739, 19740), (20172, 20238), (20239, 20249), (20535, 20557), (20577, 20612), (21316, 21373), (21875, 21948), (21949, 21952), (22103, 22167), (22472, 22522), (22528, 22549), (24010, 24035), (24037, 24087), (24334, 24406), (24407, 24444), (24576, 24648), (24649, 24653), (25215, 25266), (25267, 25338), (25339, 25358), (26047, 26088), (26645, 26697), (26934, 26973), (27436, 27457), (28125, 28167), (28577, 28638), (28717, 28749), (29791, 29845), (30258, 30323), (30926, 30976), (31250, 31290), (31433, 31474), (31475, 31500), (31974, 32016), (32805, 32845), (33620, 33691), (34391, 34452), (35344, 35364), (36517, 36574), (36575, 36578), (37553, 37577), (39326, 39400), (39401, 39403), (40401, 40405), (40960, 41008), (44217, 44257), (44944, 44967), (48013, 48047), (48734, 48745), (48778, 48811), (49152, 49207), (50421, 50487), (58619, 58641), (59582, 59613), (65536, 65598), (65599, 65610), (73205, 73244), (146410, 146411), (327701, 327757)]

theorem row078_bounds_eq : row078.goods.map goodSegmentBounds = row078_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row078_layer000_intervals : List ColouredInterval :=
  [(2, 6144, 6221), (2, 6656, 6733), (2, 6144, 6221), (2, 7168, 7245), (2, 8192, 8269), (2, 9216, 9293), (2, 10240, 10317), (2, 11264, 11341), (2, 6144, 6221), (2, 8192, 8269), (2, 10240, 10317), (2, 8192, 8269), (2, 8192, 8269), (3, 6561, 6638), (3, 6561, 6638), (3, 8748, 8825), (3, 10935, 11012), (3, 6561, 6638), (5, 6250, 6327), (5, 6875, 6952), (5, 7500, 7577), (5, 8125, 8202), (5, 8750, 8827), (5, 9375, 9452), (5, 10000, 10077), (5, 10625, 10702), (5, 11250, 11327), (5, 11875, 11952), (5, 6250, 6327), (5, 9375, 9452), (7, 6174, 6251), (7, 6517, 6594), (7, 6860, 6937), (7, 7203, 7280), (7, 7546, 7623), (7, 7889, 7966), (7, 8232, 8309), (7, 8575, 8652), (7, 8918, 8995), (7, 9261, 9338), (7, 7203, 7280), (7, 9604, 9681), (7, 12005, 12011), (11, 6655, 6732), (11, 7986, 8063), (11, 9317, 9394), (11, 10648, 10725), (11, 11979, 12011), (17, 6069, 6146), (17, 6358, 6435), (17, 6647, 6724), (17, 6936, 7013), (17, 7225, 7302), (17, 7514, 7591), (17, 7803, 7880), (17, 9826, 9903), (19, 6137, 6214), (19, 6498, 6575), (19, 6859, 6936), (19, 7220, 7297), (19, 7581, 7658), (19, 7942, 8019), (19, 8303, 8380), (19, 8664, 8741), (19, 9025, 9102), (19, 9386, 9463), (19, 9747, 9824), (19, 6859, 6936), (23, 6348, 6425), (23, 6877, 6954), (23, 7406, 7483), (23, 7935, 8012), (23, 8464, 8541), (23, 8993, 9070), (23, 9522, 9599), (23, 10051, 10128), (23, 10580, 10657), (23, 11109, 11186), (23, 11638, 11715), (29, 6728, 6805), (29, 7569, 7646), (29, 8410, 8487), (29, 9251, 9328), (29, 10092, 10169), (29, 10933, 11010), (29, 11774, 11851), (31, 6727, 6804), (31, 7688, 7765), (31, 8649, 8726), (31, 9610, 9687), (31, 10571, 10648), (31, 11532, 11609), (37, 6845, 6922), (37, 8214, 8291), (37, 9583, 9660), (37, 10952, 11029), (41, 6724, 6801), (41, 8405, 8482), (41, 10086, 10163), (41, 11767, 11844), (43, 7396, 7473), (43, 9245, 9322), (43, 11094, 11171), (47, 6627, 6704), (47, 8836, 8913), (47, 11045, 11122), (53, 8427, 8504), (53, 11236, 11313), (59, 6962, 7039), (59, 10443, 10520), (61, 7442, 7519), (61, 11163, 11240), (67, 8978, 9055), (71, 10082, 10159), (73, 10658, 10735)]

def row078_layer000_block000 : List ColouredInterval :=
  [(2, 6144, 6221), (2, 6656, 6733), (2, 6144, 6221), (2, 7168, 7245), (2, 8192, 8269), (2, 9216, 9293), (2, 10240, 10317), (2, 11264, 11341), (2, 6144, 6221), (2, 8192, 8269), (2, 10240, 10317), (2, 8192, 8269), (2, 8192, 8269), (3, 6561, 6638), (3, 6561, 6638), (3, 8748, 8825)]

def row078_layer000_block001 : List ColouredInterval :=
  [(3, 10935, 11012), (3, 6561, 6638), (5, 6250, 6327), (5, 6875, 6952), (5, 7500, 7577), (5, 8125, 8202), (5, 8750, 8827), (5, 9375, 9452), (5, 10000, 10077), (5, 10625, 10702), (5, 11250, 11327), (5, 11875, 11952), (5, 6250, 6327), (5, 9375, 9452), (7, 6174, 6251), (7, 6517, 6594)]

def row078_layer000_block002 : List ColouredInterval :=
  [(7, 6860, 6937), (7, 7203, 7280), (7, 7546, 7623), (7, 7889, 7966), (7, 8232, 8309), (7, 8575, 8652), (7, 8918, 8995), (7, 9261, 9338), (7, 7203, 7280), (7, 9604, 9681), (7, 12005, 12011), (11, 6655, 6732), (11, 7986, 8063), (11, 9317, 9394), (11, 10648, 10725), (11, 11979, 12011)]

def row078_layer000_block003 : List ColouredInterval :=
  [(17, 6069, 6146), (17, 6358, 6435), (17, 6647, 6724), (17, 6936, 7013), (17, 7225, 7302), (17, 7514, 7591), (17, 7803, 7880), (17, 9826, 9903), (19, 6137, 6214), (19, 6498, 6575), (19, 6859, 6936), (19, 7220, 7297), (19, 7581, 7658), (19, 7942, 8019), (19, 8303, 8380), (19, 8664, 8741)]

def row078_layer000_block004 : List ColouredInterval :=
  [(19, 9025, 9102), (19, 9386, 9463), (19, 9747, 9824), (19, 6859, 6936), (23, 6348, 6425), (23, 6877, 6954), (23, 7406, 7483), (23, 7935, 8012), (23, 8464, 8541), (23, 8993, 9070), (23, 9522, 9599), (23, 10051, 10128), (23, 10580, 10657), (23, 11109, 11186), (23, 11638, 11715), (29, 6728, 6805)]

def row078_layer000_block005 : List ColouredInterval :=
  [(29, 7569, 7646), (29, 8410, 8487), (29, 9251, 9328), (29, 10092, 10169), (29, 10933, 11010), (29, 11774, 11851), (31, 6727, 6804), (31, 7688, 7765), (31, 8649, 8726), (31, 9610, 9687), (31, 10571, 10648), (31, 11532, 11609), (37, 6845, 6922), (37, 8214, 8291), (37, 9583, 9660), (37, 10952, 11029)]

def row078_layer000_block006 : List ColouredInterval :=
  [(41, 6724, 6801), (41, 8405, 8482), (41, 10086, 10163), (41, 11767, 11844), (43, 7396, 7473), (43, 9245, 9322), (43, 11094, 11171), (47, 6627, 6704), (47, 8836, 8913), (47, 11045, 11122), (53, 8427, 8504), (53, 11236, 11313), (59, 6962, 7039), (59, 10443, 10520), (61, 7442, 7519), (61, 11163, 11240)]

def row078_layer000_block007 : List ColouredInterval :=
  [(67, 8978, 9055), (71, 10082, 10159), (73, 10658, 10735)]

def row078_layer000_chunks : List (List ColouredInterval) :=
  [row078_layer000_block000, row078_layer000_block001, row078_layer000_block002, row078_layer000_block003, row078_layer000_block004, row078_layer000_block005, row078_layer000_block006, row078_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer000_arithmetic : LayerArithmeticValid row078.height { lower := 6006, upper := 12012, M := 27 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer000_enumeration :
    activePowerIntervalList 78 27 6006 12012 = row078_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer000_pairs000 :
    row078_layer000_block000.all (fun I => row078_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row078_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer000_pairs001 :
    row078_layer000_block001.all (fun I => row078_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row078_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer000_pairs002 :
    row078_layer000_block002.all (fun I => row078_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row078_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer000_pairs003 :
    row078_layer000_block003.all (fun I => row078_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row078_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer000_pairs004 :
    row078_layer000_block004.all (fun I => row078_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row078_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer000_pairs005 :
    row078_layer000_block005.all (fun I => row078_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row078_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer000_pairs006 :
    row078_layer000_block006.all (fun I => row078_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row078_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer000_pairs007 :
    row078_layer000_block007.all (fun I => row078_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row078_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer000_chunks_eq : row078_layer000_chunks.flatten = row078_layer000_intervals := by
  rfl

theorem row078_layer000_pairs : pairCoverCheck row078_layer000_intervals row078_bounds = true := by
  apply pairCoverCheck_of_chunks row078_layer000_chunks_eq
  intro block hblock
  simp only [row078_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row078_layer000_pairs000
  · exact row078_layer000_pairs001
  · exact row078_layer000_pairs002
  · exact row078_layer000_pairs003
  · exact row078_layer000_pairs004
  · exact row078_layer000_pairs005
  · exact row078_layer000_pairs006
  · exact row078_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer000_checked :
    coverLayerCheck row078.height row078.goods { lower := 6006, upper := 12012, M := 27 } = true := by
  exact coverLayerCheck_of_parts row078_layer000_arithmetic row078_layer000_enumeration row078_bounds_eq row078_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer000_checked
