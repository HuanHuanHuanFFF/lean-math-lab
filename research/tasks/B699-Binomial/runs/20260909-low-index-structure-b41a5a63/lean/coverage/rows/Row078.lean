import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row078_registered :
    decide (row078.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row078_goods_checked :
    row078.goods.all (goodSegmentCheck row078.height.i row078.height.r row078.height.s) = true := by
  decide +kernel

theorem row078_small_checked :
    coverCheck (2 * row078.height.i + 2) (row078.height.i * (row078.height.i - 1) - 1)
      (row078.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row078_layerCover_checked :
    coverCheck (row078.height.i * (row078.height.i - 1)) (row078.height.n0 - 1)
      (row078.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row078_layer000_checked :
    coverLayerCheck row078.height row078.goods { lower := 6006, upper := 12012, M := 27 } = true := by
  decide +kernel

theorem row078_layer001_checked :
    coverLayerCheck row078.height row078.goods { lower := 12012, upper := 24024, M := 23 } = true := by
  decide +kernel

theorem row078_layer002_checked :
    coverLayerCheck row078.height row078.goods { lower := 24024, upper := 48048, M := 20 } = true := by
  decide +kernel

theorem row078_layer003_checked :
    coverLayerCheck row078.height row078.goods { lower := 48048, upper := 96096, M := 17 } = true := by
  decide +kernel

theorem row078_layer004_checked :
    coverLayerCheck row078.height row078.goods { lower := 96096, upper := 192192, M := 15 } = true := by
  decide +kernel

theorem row078_layer005_checked :
    coverLayerCheck row078.height row078.goods { lower := 192192, upper := 384384, M := 13 } = true := by
  decide +kernel

theorem row078_layer006_checked :
    coverLayerCheck row078.height row078.goods { lower := 384384, upper := 768768, M := 11 } = true := by
  decide +kernel

theorem row078_layer007_checked :
    coverLayerCheck row078.height row078.goods { lower := 768768, upper := 1537536, M := 9 } = true := by
  decide +kernel

theorem row078_layer008_checked :
    coverLayerCheck row078.height row078.goods { lower := 1537536, upper := 3075072, M := 8 } = true := by
  decide +kernel

theorem row078_layer009_checked :
    coverLayerCheck row078.height row078.goods { lower := 3075072, upper := 6150144, M := 7 } = true := by
  decide +kernel

theorem row078_layer010_checked :
    coverLayerCheck row078.height row078.goods { lower := 6150144, upper := 12300288, M := 6 } = true := by
  decide +kernel

theorem row078_layer011_checked :
    coverLayerCheck row078.height row078.goods { lower := 12300288, upper := 24600576, M := 5 } = true := by
  decide +kernel

theorem row078_layer012_checked :
    coverLayerCheck row078.height row078.goods { lower := 24600576, upper := 49201152, M := 4 } = true := by
  decide +kernel

theorem row078_layer013_checked :
    coverLayerCheck row078.height row078.goods { lower := 49201152, upper := 98402304, M := 4 } = true := by
  decide +kernel

theorem row078_layer014_checked :
    coverLayerCheck row078.height row078.goods { lower := 98402304, upper := 196804608, M := 3 } = true := by
  decide +kernel

theorem row078_layer015_checked :
    coverLayerCheck row078.height row078.goods { lower := 196804608, upper := 393609216, M := 3 } = true := by
  decide +kernel

theorem row078_layer016_checked :
    coverLayerCheck row078.height row078.goods { lower := 393609216, upper := 787218432, M := 3 } = true := by
  decide +kernel

theorem row078_layer017_checked :
    coverLayerCheck row078.height row078.goods { lower := 787218432, upper := 1574436864, M := 2 } = true := by
  decide +kernel

theorem row078_layer018_checked :
    coverLayerCheck row078.height row078.goods { lower := 1574436864, upper := 3148873728, M := 2 } = true := by
  decide +kernel

theorem row078_layer019_checked :
    coverLayerCheck row078.height row078.goods { lower := 3148873728, upper := 6297747456, M := 2 } = true := by
  decide +kernel

theorem row078_layer020_checked :
    coverLayerCheck row078.height row078.goods { lower := 6297747456, upper := 10000000000, M := 2 } = true := by
  decide +kernel

theorem row078_layers_checked :
    row078.layers.all (coverLayerCheck row078.height row078.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row078.height row078.goods) = true
  simp only [List.all_cons, List.all_nil,
    row078_layer000_checked,
    row078_layer001_checked,
    row078_layer002_checked,
    row078_layer003_checked,
    row078_layer004_checked,
    row078_layer005_checked,
    row078_layer006_checked,
    row078_layer007_checked,
    row078_layer008_checked,
    row078_layer009_checked,
    row078_layer010_checked,
    row078_layer011_checked,
    row078_layer012_checked,
    row078_layer013_checked,
    row078_layer014_checked,
    row078_layer015_checked,
    row078_layer016_checked,
    row078_layer017_checked,
    row078_layer018_checked,
    row078_layer019_checked,
    row078_layer020_checked,
    Bool.true_and]

theorem row078_checked : finiteCoverRowCheck row078 = true := by
  simp only [finiteCoverRowCheck, row078_registered, row078_goods_checked,
    row078_small_checked, row078_layerCover_checked, row078_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row078_checked

end B699LowIndex
