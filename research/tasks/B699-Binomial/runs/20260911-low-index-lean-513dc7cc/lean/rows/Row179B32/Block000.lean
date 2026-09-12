import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row179_height : HeightCertificateDatum := { i := 179, r := 59, s := 128, n0Power10 := 7 }

def row179_goods : List GoodSegment := [
  { lower := 360, upper := 537, witness := RowWitness.topPrime 359 },
  { lower := 538, upper := 701, witness := RowWitness.topPrime 523 },
  { lower := 702, upper := 879, witness := RowWitness.topPrime 701 },
  { lower := 880, upper := 1055, witness := RowWitness.topPrime 877 },
  { lower := 1056, upper := 1229, witness := RowWitness.topPrime 1051 },
  { lower := 1230, upper := 1407, witness := RowWitness.topPrime 1229 },
  { lower := 1408, upper := 1577, witness := RowWitness.topPrime 1399 },
  { lower := 1578, upper := 1749, witness := RowWitness.topPrime 1571 },
  { lower := 1750, upper := 1925, witness := RowWitness.topPrime 1747 },
  { lower := 1926, upper := 2091, witness := RowWitness.topPrime 1913 },
  { lower := 2092, upper := 2267, witness := RowWitness.topPrime 2089 },
  { lower := 2268, upper := 2445, witness := RowWitness.topPrime 2267 },
  { lower := 2446, upper := 2619, witness := RowWitness.topPrime 2441 },
  { lower := 2620, upper := 2795, witness := RowWitness.topPrime 2617 },
  { lower := 2796, upper := 2969, witness := RowWitness.topPrime 2791 },
  { lower := 2970, upper := 3147, witness := RowWitness.topPrime 2969 },
  { lower := 3148, upper := 3315, witness := RowWitness.topPrime 3137 },
  { lower := 3316, upper := 3491, witness := RowWitness.topPrime 3313 },
  { lower := 3492, upper := 3669, witness := RowWitness.topPrime 3491 },
  { lower := 3670, upper := 3837, witness := RowWitness.topPrime 3659 },
  { lower := 3838, upper := 4011, witness := RowWitness.topPrime 3833 },
  { lower := 4012, upper := 4185, witness := RowWitness.topPrime 4007 },
  { lower := 4186, upper := 4355, witness := RowWitness.topPrime 4177 },
  { lower := 4356, upper := 4527, witness := RowWitness.topPrime 4349 },
  { lower := 4528, upper := 4701, witness := RowWitness.topPrime 4523 },
  { lower := 4702, upper := 4869, witness := RowWitness.topPrime 4691 },
  { lower := 4870, upper := 5039, witness := RowWitness.topPrime 4861 },
  { lower := 5040, upper := 5217, witness := RowWitness.topPrime 5039 },
  { lower := 5218, upper := 5387, witness := RowWitness.topPrime 5209 },
  { lower := 5388, upper := 5565, witness := RowWitness.topPrime 5387 },
  { lower := 5566, upper := 5741, witness := RowWitness.topPrime 5563 },
  { lower := 5742, upper := 5919, witness := RowWitness.topPrime 5741 },
  { lower := 5920, upper := 6081, witness := RowWitness.topPrime 5903 },
  { lower := 6082, upper := 6257, witness := RowWitness.topPrime 6079 },
  { lower := 6258, upper := 6435, witness := RowWitness.topPrime 6257 },
  { lower := 6436, upper := 6605, witness := RowWitness.topPrime 6427 },
  { lower := 6606, upper := 6777, witness := RowWitness.topPrime 6599 },
  { lower := 6778, upper := 6941, witness := RowWitness.topPrime 6763 },
  { lower := 6942, upper := 7095, witness := RowWitness.topPrime 6917 },
  { lower := 7096, upper := 7257, witness := RowWitness.topPrime 7079 },
  { lower := 7258, upper := 7431, witness := RowWitness.topPrime 7253 },
  { lower := 7432, upper := 7595, witness := RowWitness.topPrime 7417 },
  { lower := 7596, upper := 7769, witness := RowWitness.topPrime 7591 },
  { lower := 7770, upper := 7937, witness := RowWitness.topPrime 7759 },
  { lower := 7938, upper := 8115, witness := RowWitness.topPrime 7937 },
  { lower := 8116, upper := 8289, witness := RowWitness.topPrime 8111 },
  { lower := 8290, upper := 8465, witness := RowWitness.topPrime 8287 },
  { lower := 8466, upper := 8639, witness := RowWitness.topPrime 8461 },
  { lower := 8640, upper := 8807, witness := RowWitness.topPrime 8629 },
  { lower := 8808, upper := 8985, witness := RowWitness.topPrime 8807 },
  { lower := 8986, upper := 9149, witness := RowWitness.topPrime 8971 },
  { lower := 9150, upper := 9315, witness := RowWitness.topPrime 9137 },
  { lower := 9316, upper := 9489, witness := RowWitness.topPrime 9311 },
  { lower := 9490, upper := 9657, witness := RowWitness.topPrime 9479 },
  { lower := 9658, upper := 9827, witness := RowWitness.topPrime 9649 },
  { lower := 9828, upper := 9995, witness := RowWitness.topPrime 9817 },
  { lower := 9996, upper := 10151, witness := RowWitness.topPrime 9973 },
  { lower := 10152, upper := 10329, witness := RowWitness.topPrime 10151 },
  { lower := 10330, upper := 10499, witness := RowWitness.topPrime 10321 },
  { lower := 10500, upper := 10677, witness := RowWitness.topPrime 10499 },
  { lower := 10678, upper := 10845, witness := RowWitness.topPrime 10667 },
  { lower := 10846, upper := 11015, witness := RowWitness.topPrime 10837 },
  { lower := 11016, upper := 11181, witness := RowWitness.topPrime 11003 },
  { lower := 11182, upper := 11355, witness := RowWitness.topPrime 11177 },
  { lower := 11356, upper := 11531, witness := RowWitness.topPrime 11353 },
  { lower := 11532, upper := 11705, witness := RowWitness.topPrime 11527 },
  { lower := 11706, upper := 11879, witness := RowWitness.topPrime 11701 },
  { lower := 11880, upper := 12045, witness := RowWitness.topPrime 11867 },
  { lower := 12046, upper := 12221, witness := RowWitness.topPrime 12043 },
  { lower := 12222, upper := 12389, witness := RowWitness.topPrime 12211 },
  { lower := 12390, upper := 12557, witness := RowWitness.topPrime 12379 },
  { lower := 12558, upper := 12731, witness := RowWitness.topPrime 12553 },
  { lower := 12732, upper := 12899, witness := RowWitness.topPrime 12721 },
  { lower := 12900, upper := 13077, witness := RowWitness.topPrime 12899 },
  { lower := 13078, upper := 13241, witness := RowWitness.topPrime 13063 },
  { lower := 13242, upper := 13419, witness := RowWitness.topPrime 13241 },
  { lower := 13420, upper := 13595, witness := RowWitness.topPrime 13417 },
  { lower := 13596, upper := 13769, witness := RowWitness.topPrime 13591 },
  { lower := 13770, upper := 13941, witness := RowWitness.topPrime 13763 },
  { lower := 13942, upper := 14111, witness := RowWitness.topPrime 13933 },
  { lower := 14112, upper := 14285, witness := RowWitness.topPrime 14107 },
  { lower := 14286, upper := 14459, witness := RowWitness.topPrime 14281 },
  { lower := 14460, upper := 14627, witness := RowWitness.topPrime 14449 },
  { lower := 14628, upper := 14805, witness := RowWitness.topPrime 14627 },
  { lower := 14806, upper := 14975, witness := RowWitness.topPrime 14797 },
  { lower := 14976, upper := 15147, witness := RowWitness.topPrime 14969 },
  { lower := 15148, upper := 15317, witness := RowWitness.topPrime 15139 },
  { lower := 15318, upper := 15491, witness := RowWitness.topPrime 15313 },
  { lower := 15492, upper := 15651, witness := RowWitness.topPrime 15473 },
  { lower := 15652, upper := 15827, witness := RowWitness.topPrime 15649 },
  { lower := 15828, upper := 16001, witness := RowWitness.topPrime 15823 },
  { lower := 16002, upper := 16179, witness := RowWitness.topPrime 16001 },
  { lower := 16180, upper := 16319, witness := RowWitness.topPrime 16141 },
  { lower := 16320, upper := 16497, witness := RowWitness.topPrime 16319 },
  { lower := 16498, upper := 16671, witness := RowWitness.topPrime 16493 },
  { lower := 16672, upper := 16839, witness := RowWitness.topPrime 16661 },
  { lower := 16840, upper := 17009, witness := RowWitness.topPrime 16831 },
  { lower := 17010, upper := 17171, witness := RowWitness.topPrime 16993 },
  { lower := 17172, upper := 17345, witness := RowWitness.topPrime 17167 },
  { lower := 17346, upper := 17519, witness := RowWitness.topPrime 17341 },
  { lower := 17520, upper := 17697, witness := RowWitness.topPrime 17519 },
  { lower := 17698, upper := 17861, witness := RowWitness.topPrime 17683 },
  { lower := 17862, upper := 18029, witness := RowWitness.topPrime 17851 },
  { lower := 18030, upper := 18191, witness := RowWitness.topPrime 18013 },
  { lower := 18192, upper := 18369, witness := RowWitness.topPrime 18191 },
  { lower := 18370, upper := 18545, witness := RowWitness.topPrime 18367 },
  { lower := 18546, upper := 18719, witness := RowWitness.topPrime 18541 },
  { lower := 18720, upper := 18897, witness := RowWitness.topPrime 18719 },
  { lower := 18898, upper := 19047, witness := RowWitness.topPrime 18869 },
  { lower := 19048, upper := 19215, witness := RowWitness.topPrime 19037 },
  { lower := 19216, upper := 19391, witness := RowWitness.topPrime 19213 },
  { lower := 19392, upper := 19569, witness := RowWitness.topPrime 19391 },
  { lower := 19570, upper := 19737, witness := RowWitness.topPrime 19559 },
  { lower := 19738, upper := 19905, witness := RowWitness.topPrime 19727 },
  { lower := 19906, upper := 20069, witness := RowWitness.topPrime 19891 },
  { lower := 20070, upper := 20241, witness := RowWitness.topPrime 20063 },
  { lower := 20242, upper := 20411, witness := RowWitness.topPrime 20233 },
  { lower := 20412, upper := 20589, witness := RowWitness.topPrime 20411 },
  { lower := 20590, upper := 20741, witness := RowWitness.topPrime 20563 },
  { lower := 20742, upper := 20909, witness := RowWitness.topPrime 20731 },
  { lower := 20910, upper := 21081, witness := RowWitness.topPrime 20903 },
  { lower := 21082, upper := 21245, witness := RowWitness.topPrime 21067 },
  { lower := 21246, upper := 21405, witness := RowWitness.topPrime 21227 },
  { lower := 21406, upper := 21579, witness := RowWitness.topPrime 21401 },
  { lower := 21580, upper := 21755, witness := RowWitness.topPrime 21577 },
  { lower := 21756, upper := 21929, witness := RowWitness.topPrime 21751 },
  { lower := 21930, upper := 22107, witness := RowWitness.topPrime 21929 },
  { lower := 22108, upper := 22271, witness := RowWitness.topPrime 22093 },
  { lower := 22272, upper := 22449, witness := RowWitness.topPrime 22271 },
  { lower := 22450, upper := 22625, witness := RowWitness.topPrime 22447 },
  { lower := 22626, upper := 22799, witness := RowWitness.topPrime 22621 },
  { lower := 22800, upper := 22965, witness := RowWitness.topPrime 22787 },
  { lower := 22966, upper := 23141, witness := RowWitness.topPrime 22963 },
  { lower := 23142, upper := 23309, witness := RowWitness.topPrime 23131 },
  { lower := 23310, upper := 23475, witness := RowWitness.topPrime 23297 },
  { lower := 23476, upper := 23651, witness := RowWitness.topPrime 23473 },
  { lower := 23652, upper := 23811, witness := RowWitness.topPrime 23633 },
  { lower := 23812, upper := 23979, witness := RowWitness.topPrime 23801 },
  { lower := 23980, upper := 24155, witness := RowWitness.topPrime 23977 },
  { lower := 24156, upper := 24329, witness := RowWitness.topPrime 24151 },
  { lower := 24330, upper := 24507, witness := RowWitness.topPrime 24329 },
  { lower := 24508, upper := 24677, witness := RowWitness.topPrime 24499 },
  { lower := 24678, upper := 24855, witness := RowWitness.topPrime 24677 },
  { lower := 24856, upper := 25029, witness := RowWitness.topPrime 24851 },
  { lower := 25030, upper := 25191, witness := RowWitness.topPrime 25013 },
  { lower := 25192, upper := 25367, witness := RowWitness.topPrime 25189 },
  { lower := 25368, upper := 25545, witness := RowWitness.topPrime 25367 },
  { lower := 25546, upper := 25719, witness := RowWitness.topPrime 25541 },
  { lower := 25720, upper := 25895, witness := RowWitness.topPrime 25717 },
  { lower := 25896, upper := 26067, witness := RowWitness.topPrime 25889 },
  { lower := 26068, upper := 26231, witness := RowWitness.topPrime 26053 },
  { lower := 26232, upper := 26405, witness := RowWitness.topPrime 26227 },
  { lower := 26406, upper := 26577, witness := RowWitness.topPrime 26399 },
  { lower := 26578, upper := 26751, witness := RowWitness.topPrime 26573 },
  { lower := 26752, upper := 26915, witness := RowWitness.topPrime 26737 },
  { lower := 26916, upper := 27081, witness := RowWitness.topPrime 26903 },
  { lower := 27082, upper := 27255, witness := RowWitness.topPrime 27077 },
  { lower := 27256, upper := 27431, witness := RowWitness.topPrime 27253 },
  { lower := 27432, upper := 27609, witness := RowWitness.topPrime 27431 },
  { lower := 27610, upper := 27761, witness := RowWitness.topPrime 27583 },
  { lower := 27762, upper := 27929, witness := RowWitness.topPrime 27751 },
  { lower := 27930, upper := 28097, witness := RowWitness.topPrime 27919 },
  { lower := 28098, upper := 28275, witness := RowWitness.topPrime 28097 },
  { lower := 28276, upper := 28407, witness := RowWitness.topPrime 28229 },
  { lower := 28408, upper := 28581, witness := RowWitness.topPrime 28403 },
  { lower := 28582, upper := 28757, witness := RowWitness.topPrime 28579 },
  { lower := 28758, upper := 28931, witness := RowWitness.topPrime 28753 },
  { lower := 28932, upper := 29105, witness := RowWitness.topPrime 28927 },
  { lower := 29106, upper := 29279, witness := RowWitness.topPrime 29101 },
  { lower := 29280, upper := 29447, witness := RowWitness.topPrime 29269 },
  { lower := 29448, upper := 29621, witness := RowWitness.topPrime 29443 },
  { lower := 29622, upper := 29789, witness := RowWitness.topPrime 29611 },
  { lower := 29790, upper := 29967, witness := RowWitness.topPrime 29789 },
  { lower := 29968, upper := 30137, witness := RowWitness.topPrime 29959 },
  { lower := 30138, upper := 30315, witness := RowWitness.topPrime 30137 },
  { lower := 30316, upper := 30491, witness := RowWitness.topPrime 30313 },
  { lower := 30492, upper := 30669, witness := RowWitness.topPrime 30491 },
  { lower := 30670, upper := 30839, witness := RowWitness.topPrime 30661 },
  { lower := 30840, upper := 31017, witness := RowWitness.topPrime 30839 },
  { lower := 31018, upper := 31191, witness := RowWitness.topPrime 31013 },
  { lower := 31192, upper := 31367, witness := RowWitness.topPrime 31189 },
  { lower := 31368, upper := 31535, witness := RowWitness.topPrime 31357 },
  { lower := 31536, upper := 31709, witness := RowWitness.topPrime 31531 },
  { lower := 31710, upper := 31862, witness := RowWitness.topPrime 31699 },
  { lower := 31974, upper := 32005, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32946, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33667, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33792, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34497, witness := RowWitness.topPrime 34319 },
  { lower := 34498, upper := 34569, witness := RowWitness.topPrime 34487 },
  { lower := 37303, upper := 37388, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37481, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37671, witness := RowWitness.topPrime 37493 },
  { lower := 37672, upper := 37716, witness := RowWitness.topPrime 37663 },
  { lower := 38307, upper := 38469, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39482, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40506, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 41105, witness := RowWitness.topPrime 40927 },
  { lower := 41106, upper := 41109, witness := RowWitness.topPrime 41081 },
  { lower := 45056, upper := 45068, witness := RowWitness.topPrime 45053 },
  { lower := 45927, upper := 45974, witness := RowWitness.topPrime 45893 },
  { lower := 47045, upper := 47053, witness := RowWitness.topPrime 47041 },
  { lower := 47526, upper := 47699, witness := RowWitness.topPrime 47521 },
  { lower := 47700, upper := 47702, witness := RowWitness.topPrime 47699 },
  { lower := 48013, upper := 48139, witness := RowWitness.topPrime 47981 },
  { lower := 48387, upper := 48401, witness := RowWitness.topPrime 48383 },
  { lower := 48778, upper := 48846, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49317, witness := RowWitness.topPrime 49139 },
  { lower := 49318, upper := 49330, witness := RowWitness.topPrime 49307 },
  { lower := 49379, upper := 49476, witness := RowWitness.topPrime 49369 },
  { lower := 50421, upper := 50588, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51183, witness := RowWitness.topPrime 51071 },
  { lower := 53138, upper := 53223, witness := RowWitness.topPrime 53129 },
  { lower := 53290, upper := 53316, witness := RowWitness.topPrime 53281 },
  { lower := 54043, upper := 54046, witness := RowWitness.topPrime 54037 },
  { lower := 55451, upper := 55619, witness := RowWitness.topPrime 55441 },
  { lower := 55620, upper := 55625, witness := RowWitness.topPrime 55619 },
  { lower := 56307, upper := 56347, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56485, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57300, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57423, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58742, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59134, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59583, witness := RowWitness.topPrime 59581 },
  { lower := 62500, upper := 62588, witness := RowWitness.topPrime 62497 },
  { lower := 68694, upper := 68822, witness := RowWitness.topPrime 68687 },
  { lower := 71407, upper := 71464, witness := RowWitness.topPrime 71399 },
  { lower := 73167, upper := 73180, witness := RowWitness.topPrime 73141 },
  { lower := 73205, upper := 73345, witness := RowWitness.topPrime 73189 },
  { lower := 83667, upper := 83699, witness := RowWitness.topPrime 83663 },
  { lower := 85805, upper := 85861, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89551, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93928, witness := RowWitness.topPrime 93827 },
  { lower := 96774, upper := 96783, witness := RowWitness.topPrime 96769 },
  { lower := 98415, upper := 98482, witness := RowWitness.topPrime 98411 },
  { lower := 148955, upper := 149055, witness := RowWitness.topPrime 148949 }
]

def row179_layers : List CoverLayer := [
  { lower := 31862, upper := 63724, M := 12 },
  { lower := 63724, upper := 127448, M := 8 },
  { lower := 127448, upper := 254896, M := 6 },
  { lower := 254896, upper := 509792, M := 5 },
  { lower := 509792, upper := 1019584, M := 3 },
  { lower := 1019584, upper := 2039168, M := 3 },
  { lower := 2039168, upper := 4078336, M := 2 },
  { lower := 4078336, upper := 8156672, M := 2 },
  { lower := 8156672, upper := 10000000, M := 1 }
]

def row179 : FiniteCoverRow := {
  height := row179_height,
  goods := row179_goods,
  layers := row179_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_good000_checked :
    goodSegmentCheck 179 59 128
      { lower := 360, upper := 537, witness := RowWitness.topPrime 359 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good001_checked :
    goodSegmentCheck 179 59 128
      { lower := 538, upper := 701, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good002_checked :
    goodSegmentCheck 179 59 128
      { lower := 702, upper := 879, witness := RowWitness.topPrime 701 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good003_checked :
    goodSegmentCheck 179 59 128
      { lower := 880, upper := 1055, witness := RowWitness.topPrime 877 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good004_checked :
    goodSegmentCheck 179 59 128
      { lower := 1056, upper := 1229, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good005_checked :
    goodSegmentCheck 179 59 128
      { lower := 1230, upper := 1407, witness := RowWitness.topPrime 1229 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good006_checked :
    goodSegmentCheck 179 59 128
      { lower := 1408, upper := 1577, witness := RowWitness.topPrime 1399 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good007_checked :
    goodSegmentCheck 179 59 128
      { lower := 1578, upper := 1749, witness := RowWitness.topPrime 1571 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good008_checked :
    goodSegmentCheck 179 59 128
      { lower := 1750, upper := 1925, witness := RowWitness.topPrime 1747 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good009_checked :
    goodSegmentCheck 179 59 128
      { lower := 1926, upper := 2091, witness := RowWitness.topPrime 1913 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good010_checked :
    goodSegmentCheck 179 59 128
      { lower := 2092, upper := 2267, witness := RowWitness.topPrime 2089 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good011_checked :
    goodSegmentCheck 179 59 128
      { lower := 2268, upper := 2445, witness := RowWitness.topPrime 2267 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good012_checked :
    goodSegmentCheck 179 59 128
      { lower := 2446, upper := 2619, witness := RowWitness.topPrime 2441 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good013_checked :
    goodSegmentCheck 179 59 128
      { lower := 2620, upper := 2795, witness := RowWitness.topPrime 2617 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good014_checked :
    goodSegmentCheck 179 59 128
      { lower := 2796, upper := 2969, witness := RowWitness.topPrime 2791 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good015_checked :
    goodSegmentCheck 179 59 128
      { lower := 2970, upper := 3147, witness := RowWitness.topPrime 2969 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_good016_checked :
    goodSegmentCheck 179 59 128
      { lower := 3148, upper := 3315, witness := RowWitness.topPrime 3137 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good017_checked :
    goodSegmentCheck 179 59 128
      { lower := 3316, upper := 3491, witness := RowWitness.topPrime 3313 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good018_checked :
    goodSegmentCheck 179 59 128
      { lower := 3492, upper := 3669, witness := RowWitness.topPrime 3491 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good019_checked :
    goodSegmentCheck 179 59 128
      { lower := 3670, upper := 3837, witness := RowWitness.topPrime 3659 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good020_checked :
    goodSegmentCheck 179 59 128
      { lower := 3838, upper := 4011, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good021_checked :
    goodSegmentCheck 179 59 128
      { lower := 4012, upper := 4185, witness := RowWitness.topPrime 4007 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good022_checked :
    goodSegmentCheck 179 59 128
      { lower := 4186, upper := 4355, witness := RowWitness.topPrime 4177 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good023_checked :
    goodSegmentCheck 179 59 128
      { lower := 4356, upper := 4527, witness := RowWitness.topPrime 4349 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good024_checked :
    goodSegmentCheck 179 59 128
      { lower := 4528, upper := 4701, witness := RowWitness.topPrime 4523 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good025_checked :
    goodSegmentCheck 179 59 128
      { lower := 4702, upper := 4869, witness := RowWitness.topPrime 4691 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good026_checked :
    goodSegmentCheck 179 59 128
      { lower := 4870, upper := 5039, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good027_checked :
    goodSegmentCheck 179 59 128
      { lower := 5040, upper := 5217, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good028_checked :
    goodSegmentCheck 179 59 128
      { lower := 5218, upper := 5387, witness := RowWitness.topPrime 5209 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good029_checked :
    goodSegmentCheck 179 59 128
      { lower := 5388, upper := 5565, witness := RowWitness.topPrime 5387 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good030_checked :
    goodSegmentCheck 179 59 128
      { lower := 5566, upper := 5741, witness := RowWitness.topPrime 5563 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good031_checked :
    goodSegmentCheck 179 59 128
      { lower := 5742, upper := 5919, witness := RowWitness.topPrime 5741 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_good032_checked :
    goodSegmentCheck 179 59 128
      { lower := 5920, upper := 6081, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good033_checked :
    goodSegmentCheck 179 59 128
      { lower := 6082, upper := 6257, witness := RowWitness.topPrime 6079 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good034_checked :
    goodSegmentCheck 179 59 128
      { lower := 6258, upper := 6435, witness := RowWitness.topPrime 6257 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good035_checked :
    goodSegmentCheck 179 59 128
      { lower := 6436, upper := 6605, witness := RowWitness.topPrime 6427 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good036_checked :
    goodSegmentCheck 179 59 128
      { lower := 6606, upper := 6777, witness := RowWitness.topPrime 6599 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good037_checked :
    goodSegmentCheck 179 59 128
      { lower := 6778, upper := 6941, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good038_checked :
    goodSegmentCheck 179 59 128
      { lower := 6942, upper := 7095, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good039_checked :
    goodSegmentCheck 179 59 128
      { lower := 7096, upper := 7257, witness := RowWitness.topPrime 7079 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good040_checked :
    goodSegmentCheck 179 59 128
      { lower := 7258, upper := 7431, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good041_checked :
    goodSegmentCheck 179 59 128
      { lower := 7432, upper := 7595, witness := RowWitness.topPrime 7417 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good042_checked :
    goodSegmentCheck 179 59 128
      { lower := 7596, upper := 7769, witness := RowWitness.topPrime 7591 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good043_checked :
    goodSegmentCheck 179 59 128
      { lower := 7770, upper := 7937, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good044_checked :
    goodSegmentCheck 179 59 128
      { lower := 7938, upper := 8115, witness := RowWitness.topPrime 7937 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good045_checked :
    goodSegmentCheck 179 59 128
      { lower := 8116, upper := 8289, witness := RowWitness.topPrime 8111 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good046_checked :
    goodSegmentCheck 179 59 128
      { lower := 8290, upper := 8465, witness := RowWitness.topPrime 8287 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good047_checked :
    goodSegmentCheck 179 59 128
      { lower := 8466, upper := 8639, witness := RowWitness.topPrime 8461 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_good048_checked :
    goodSegmentCheck 179 59 128
      { lower := 8640, upper := 8807, witness := RowWitness.topPrime 8629 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good049_checked :
    goodSegmentCheck 179 59 128
      { lower := 8808, upper := 8985, witness := RowWitness.topPrime 8807 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good050_checked :
    goodSegmentCheck 179 59 128
      { lower := 8986, upper := 9149, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good051_checked :
    goodSegmentCheck 179 59 128
      { lower := 9150, upper := 9315, witness := RowWitness.topPrime 9137 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good052_checked :
    goodSegmentCheck 179 59 128
      { lower := 9316, upper := 9489, witness := RowWitness.topPrime 9311 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good053_checked :
    goodSegmentCheck 179 59 128
      { lower := 9490, upper := 9657, witness := RowWitness.topPrime 9479 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good054_checked :
    goodSegmentCheck 179 59 128
      { lower := 9658, upper := 9827, witness := RowWitness.topPrime 9649 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good055_checked :
    goodSegmentCheck 179 59 128
      { lower := 9828, upper := 9995, witness := RowWitness.topPrime 9817 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good056_checked :
    goodSegmentCheck 179 59 128
      { lower := 9996, upper := 10151, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good057_checked :
    goodSegmentCheck 179 59 128
      { lower := 10152, upper := 10329, witness := RowWitness.topPrime 10151 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good058_checked :
    goodSegmentCheck 179 59 128
      { lower := 10330, upper := 10499, witness := RowWitness.topPrime 10321 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good059_checked :
    goodSegmentCheck 179 59 128
      { lower := 10500, upper := 10677, witness := RowWitness.topPrime 10499 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good060_checked :
    goodSegmentCheck 179 59 128
      { lower := 10678, upper := 10845, witness := RowWitness.topPrime 10667 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good061_checked :
    goodSegmentCheck 179 59 128
      { lower := 10846, upper := 11015, witness := RowWitness.topPrime 10837 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good062_checked :
    goodSegmentCheck 179 59 128
      { lower := 11016, upper := 11181, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good063_checked :
    goodSegmentCheck 179 59 128
      { lower := 11182, upper := 11355, witness := RowWitness.topPrime 11177 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_good064_checked :
    goodSegmentCheck 179 59 128
      { lower := 11356, upper := 11531, witness := RowWitness.topPrime 11353 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good065_checked :
    goodSegmentCheck 179 59 128
      { lower := 11532, upper := 11705, witness := RowWitness.topPrime 11527 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good066_checked :
    goodSegmentCheck 179 59 128
      { lower := 11706, upper := 11879, witness := RowWitness.topPrime 11701 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good067_checked :
    goodSegmentCheck 179 59 128
      { lower := 11880, upper := 12045, witness := RowWitness.topPrime 11867 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good068_checked :
    goodSegmentCheck 179 59 128
      { lower := 12046, upper := 12221, witness := RowWitness.topPrime 12043 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good069_checked :
    goodSegmentCheck 179 59 128
      { lower := 12222, upper := 12389, witness := RowWitness.topPrime 12211 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good070_checked :
    goodSegmentCheck 179 59 128
      { lower := 12390, upper := 12557, witness := RowWitness.topPrime 12379 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good071_checked :
    goodSegmentCheck 179 59 128
      { lower := 12558, upper := 12731, witness := RowWitness.topPrime 12553 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good072_checked :
    goodSegmentCheck 179 59 128
      { lower := 12732, upper := 12899, witness := RowWitness.topPrime 12721 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good073_checked :
    goodSegmentCheck 179 59 128
      { lower := 12900, upper := 13077, witness := RowWitness.topPrime 12899 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good074_checked :
    goodSegmentCheck 179 59 128
      { lower := 13078, upper := 13241, witness := RowWitness.topPrime 13063 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good075_checked :
    goodSegmentCheck 179 59 128
      { lower := 13242, upper := 13419, witness := RowWitness.topPrime 13241 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good076_checked :
    goodSegmentCheck 179 59 128
      { lower := 13420, upper := 13595, witness := RowWitness.topPrime 13417 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good077_checked :
    goodSegmentCheck 179 59 128
      { lower := 13596, upper := 13769, witness := RowWitness.topPrime 13591 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good078_checked :
    goodSegmentCheck 179 59 128
      { lower := 13770, upper := 13941, witness := RowWitness.topPrime 13763 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good079_checked :
    goodSegmentCheck 179 59 128
      { lower := 13942, upper := 14111, witness := RowWitness.topPrime 13933 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_good080_checked :
    goodSegmentCheck 179 59 128
      { lower := 14112, upper := 14285, witness := RowWitness.topPrime 14107 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good081_checked :
    goodSegmentCheck 179 59 128
      { lower := 14286, upper := 14459, witness := RowWitness.topPrime 14281 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good082_checked :
    goodSegmentCheck 179 59 128
      { lower := 14460, upper := 14627, witness := RowWitness.topPrime 14449 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good083_checked :
    goodSegmentCheck 179 59 128
      { lower := 14628, upper := 14805, witness := RowWitness.topPrime 14627 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good084_checked :
    goodSegmentCheck 179 59 128
      { lower := 14806, upper := 14975, witness := RowWitness.topPrime 14797 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good085_checked :
    goodSegmentCheck 179 59 128
      { lower := 14976, upper := 15147, witness := RowWitness.topPrime 14969 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good086_checked :
    goodSegmentCheck 179 59 128
      { lower := 15148, upper := 15317, witness := RowWitness.topPrime 15139 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good087_checked :
    goodSegmentCheck 179 59 128
      { lower := 15318, upper := 15491, witness := RowWitness.topPrime 15313 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good088_checked :
    goodSegmentCheck 179 59 128
      { lower := 15492, upper := 15651, witness := RowWitness.topPrime 15473 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good089_checked :
    goodSegmentCheck 179 59 128
      { lower := 15652, upper := 15827, witness := RowWitness.topPrime 15649 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good090_checked :
    goodSegmentCheck 179 59 128
      { lower := 15828, upper := 16001, witness := RowWitness.topPrime 15823 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good091_checked :
    goodSegmentCheck 179 59 128
      { lower := 16002, upper := 16179, witness := RowWitness.topPrime 16001 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good092_checked :
    goodSegmentCheck 179 59 128
      { lower := 16180, upper := 16319, witness := RowWitness.topPrime 16141 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good093_checked :
    goodSegmentCheck 179 59 128
      { lower := 16320, upper := 16497, witness := RowWitness.topPrime 16319 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good094_checked :
    goodSegmentCheck 179 59 128
      { lower := 16498, upper := 16671, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good095_checked :
    goodSegmentCheck 179 59 128
      { lower := 16672, upper := 16839, witness := RowWitness.topPrime 16661 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_good096_checked :
    goodSegmentCheck 179 59 128
      { lower := 16840, upper := 17009, witness := RowWitness.topPrime 16831 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good097_checked :
    goodSegmentCheck 179 59 128
      { lower := 17010, upper := 17171, witness := RowWitness.topPrime 16993 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good098_checked :
    goodSegmentCheck 179 59 128
      { lower := 17172, upper := 17345, witness := RowWitness.topPrime 17167 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good099_checked :
    goodSegmentCheck 179 59 128
      { lower := 17346, upper := 17519, witness := RowWitness.topPrime 17341 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good100_checked :
    goodSegmentCheck 179 59 128
      { lower := 17520, upper := 17697, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good101_checked :
    goodSegmentCheck 179 59 128
      { lower := 17698, upper := 17861, witness := RowWitness.topPrime 17683 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good102_checked :
    goodSegmentCheck 179 59 128
      { lower := 17862, upper := 18029, witness := RowWitness.topPrime 17851 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good103_checked :
    goodSegmentCheck 179 59 128
      { lower := 18030, upper := 18191, witness := RowWitness.topPrime 18013 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good104_checked :
    goodSegmentCheck 179 59 128
      { lower := 18192, upper := 18369, witness := RowWitness.topPrime 18191 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good105_checked :
    goodSegmentCheck 179 59 128
      { lower := 18370, upper := 18545, witness := RowWitness.topPrime 18367 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good106_checked :
    goodSegmentCheck 179 59 128
      { lower := 18546, upper := 18719, witness := RowWitness.topPrime 18541 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good107_checked :
    goodSegmentCheck 179 59 128
      { lower := 18720, upper := 18897, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good108_checked :
    goodSegmentCheck 179 59 128
      { lower := 18898, upper := 19047, witness := RowWitness.topPrime 18869 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good109_checked :
    goodSegmentCheck 179 59 128
      { lower := 19048, upper := 19215, witness := RowWitness.topPrime 19037 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good110_checked :
    goodSegmentCheck 179 59 128
      { lower := 19216, upper := 19391, witness := RowWitness.topPrime 19213 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good111_checked :
    goodSegmentCheck 179 59 128
      { lower := 19392, upper := 19569, witness := RowWitness.topPrime 19391 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_good112_checked :
    goodSegmentCheck 179 59 128
      { lower := 19570, upper := 19737, witness := RowWitness.topPrime 19559 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good113_checked :
    goodSegmentCheck 179 59 128
      { lower := 19738, upper := 19905, witness := RowWitness.topPrime 19727 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good114_checked :
    goodSegmentCheck 179 59 128
      { lower := 19906, upper := 20069, witness := RowWitness.topPrime 19891 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good115_checked :
    goodSegmentCheck 179 59 128
      { lower := 20070, upper := 20241, witness := RowWitness.topPrime 20063 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good116_checked :
    goodSegmentCheck 179 59 128
      { lower := 20242, upper := 20411, witness := RowWitness.topPrime 20233 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good117_checked :
    goodSegmentCheck 179 59 128
      { lower := 20412, upper := 20589, witness := RowWitness.topPrime 20411 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good118_checked :
    goodSegmentCheck 179 59 128
      { lower := 20590, upper := 20741, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good119_checked :
    goodSegmentCheck 179 59 128
      { lower := 20742, upper := 20909, witness := RowWitness.topPrime 20731 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good120_checked :
    goodSegmentCheck 179 59 128
      { lower := 20910, upper := 21081, witness := RowWitness.topPrime 20903 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good121_checked :
    goodSegmentCheck 179 59 128
      { lower := 21082, upper := 21245, witness := RowWitness.topPrime 21067 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good122_checked :
    goodSegmentCheck 179 59 128
      { lower := 21246, upper := 21405, witness := RowWitness.topPrime 21227 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good123_checked :
    goodSegmentCheck 179 59 128
      { lower := 21406, upper := 21579, witness := RowWitness.topPrime 21401 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good124_checked :
    goodSegmentCheck 179 59 128
      { lower := 21580, upper := 21755, witness := RowWitness.topPrime 21577 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good125_checked :
    goodSegmentCheck 179 59 128
      { lower := 21756, upper := 21929, witness := RowWitness.topPrime 21751 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good126_checked :
    goodSegmentCheck 179 59 128
      { lower := 21930, upper := 22107, witness := RowWitness.topPrime 21929 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good127_checked :
    goodSegmentCheck 179 59 128
      { lower := 22108, upper := 22271, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_good128_checked :
    goodSegmentCheck 179 59 128
      { lower := 22272, upper := 22449, witness := RowWitness.topPrime 22271 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good129_checked :
    goodSegmentCheck 179 59 128
      { lower := 22450, upper := 22625, witness := RowWitness.topPrime 22447 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good130_checked :
    goodSegmentCheck 179 59 128
      { lower := 22626, upper := 22799, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good131_checked :
    goodSegmentCheck 179 59 128
      { lower := 22800, upper := 22965, witness := RowWitness.topPrime 22787 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good132_checked :
    goodSegmentCheck 179 59 128
      { lower := 22966, upper := 23141, witness := RowWitness.topPrime 22963 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good133_checked :
    goodSegmentCheck 179 59 128
      { lower := 23142, upper := 23309, witness := RowWitness.topPrime 23131 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good134_checked :
    goodSegmentCheck 179 59 128
      { lower := 23310, upper := 23475, witness := RowWitness.topPrime 23297 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good135_checked :
    goodSegmentCheck 179 59 128
      { lower := 23476, upper := 23651, witness := RowWitness.topPrime 23473 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good136_checked :
    goodSegmentCheck 179 59 128
      { lower := 23652, upper := 23811, witness := RowWitness.topPrime 23633 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good137_checked :
    goodSegmentCheck 179 59 128
      { lower := 23812, upper := 23979, witness := RowWitness.topPrime 23801 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good138_checked :
    goodSegmentCheck 179 59 128
      { lower := 23980, upper := 24155, witness := RowWitness.topPrime 23977 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good139_checked :
    goodSegmentCheck 179 59 128
      { lower := 24156, upper := 24329, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good140_checked :
    goodSegmentCheck 179 59 128
      { lower := 24330, upper := 24507, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good141_checked :
    goodSegmentCheck 179 59 128
      { lower := 24508, upper := 24677, witness := RowWitness.topPrime 24499 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good142_checked :
    goodSegmentCheck 179 59 128
      { lower := 24678, upper := 24855, witness := RowWitness.topPrime 24677 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good143_checked :
    goodSegmentCheck 179 59 128
      { lower := 24856, upper := 25029, witness := RowWitness.topPrime 24851 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_good144_checked :
    goodSegmentCheck 179 59 128
      { lower := 25030, upper := 25191, witness := RowWitness.topPrime 25013 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good145_checked :
    goodSegmentCheck 179 59 128
      { lower := 25192, upper := 25367, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good146_checked :
    goodSegmentCheck 179 59 128
      { lower := 25368, upper := 25545, witness := RowWitness.topPrime 25367 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good147_checked :
    goodSegmentCheck 179 59 128
      { lower := 25546, upper := 25719, witness := RowWitness.topPrime 25541 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good148_checked :
    goodSegmentCheck 179 59 128
      { lower := 25720, upper := 25895, witness := RowWitness.topPrime 25717 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good149_checked :
    goodSegmentCheck 179 59 128
      { lower := 25896, upper := 26067, witness := RowWitness.topPrime 25889 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good150_checked :
    goodSegmentCheck 179 59 128
      { lower := 26068, upper := 26231, witness := RowWitness.topPrime 26053 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good151_checked :
    goodSegmentCheck 179 59 128
      { lower := 26232, upper := 26405, witness := RowWitness.topPrime 26227 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good152_checked :
    goodSegmentCheck 179 59 128
      { lower := 26406, upper := 26577, witness := RowWitness.topPrime 26399 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good153_checked :
    goodSegmentCheck 179 59 128
      { lower := 26578, upper := 26751, witness := RowWitness.topPrime 26573 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good154_checked :
    goodSegmentCheck 179 59 128
      { lower := 26752, upper := 26915, witness := RowWitness.topPrime 26737 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good155_checked :
    goodSegmentCheck 179 59 128
      { lower := 26916, upper := 27081, witness := RowWitness.topPrime 26903 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good156_checked :
    goodSegmentCheck 179 59 128
      { lower := 27082, upper := 27255, witness := RowWitness.topPrime 27077 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good157_checked :
    goodSegmentCheck 179 59 128
      { lower := 27256, upper := 27431, witness := RowWitness.topPrime 27253 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good158_checked :
    goodSegmentCheck 179 59 128
      { lower := 27432, upper := 27609, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good159_checked :
    goodSegmentCheck 179 59 128
      { lower := 27610, upper := 27761, witness := RowWitness.topPrime 27583 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_good160_checked :
    goodSegmentCheck 179 59 128
      { lower := 27762, upper := 27929, witness := RowWitness.topPrime 27751 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good161_checked :
    goodSegmentCheck 179 59 128
      { lower := 27930, upper := 28097, witness := RowWitness.topPrime 27919 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good162_checked :
    goodSegmentCheck 179 59 128
      { lower := 28098, upper := 28275, witness := RowWitness.topPrime 28097 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good163_checked :
    goodSegmentCheck 179 59 128
      { lower := 28276, upper := 28407, witness := RowWitness.topPrime 28229 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good164_checked :
    goodSegmentCheck 179 59 128
      { lower := 28408, upper := 28581, witness := RowWitness.topPrime 28403 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good165_checked :
    goodSegmentCheck 179 59 128
      { lower := 28582, upper := 28757, witness := RowWitness.topPrime 28579 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good166_checked :
    goodSegmentCheck 179 59 128
      { lower := 28758, upper := 28931, witness := RowWitness.topPrime 28753 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good167_checked :
    goodSegmentCheck 179 59 128
      { lower := 28932, upper := 29105, witness := RowWitness.topPrime 28927 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good168_checked :
    goodSegmentCheck 179 59 128
      { lower := 29106, upper := 29279, witness := RowWitness.topPrime 29101 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good169_checked :
    goodSegmentCheck 179 59 128
      { lower := 29280, upper := 29447, witness := RowWitness.topPrime 29269 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good170_checked :
    goodSegmentCheck 179 59 128
      { lower := 29448, upper := 29621, witness := RowWitness.topPrime 29443 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good171_checked :
    goodSegmentCheck 179 59 128
      { lower := 29622, upper := 29789, witness := RowWitness.topPrime 29611 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good172_checked :
    goodSegmentCheck 179 59 128
      { lower := 29790, upper := 29967, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good173_checked :
    goodSegmentCheck 179 59 128
      { lower := 29968, upper := 30137, witness := RowWitness.topPrime 29959 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good174_checked :
    goodSegmentCheck 179 59 128
      { lower := 30138, upper := 30315, witness := RowWitness.topPrime 30137 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good175_checked :
    goodSegmentCheck 179 59 128
      { lower := 30316, upper := 30491, witness := RowWitness.topPrime 30313 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_good176_checked :
    goodSegmentCheck 179 59 128
      { lower := 30492, upper := 30669, witness := RowWitness.topPrime 30491 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good177_checked :
    goodSegmentCheck 179 59 128
      { lower := 30670, upper := 30839, witness := RowWitness.topPrime 30661 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good178_checked :
    goodSegmentCheck 179 59 128
      { lower := 30840, upper := 31017, witness := RowWitness.topPrime 30839 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good179_checked :
    goodSegmentCheck 179 59 128
      { lower := 31018, upper := 31191, witness := RowWitness.topPrime 31013 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good180_checked :
    goodSegmentCheck 179 59 128
      { lower := 31192, upper := 31367, witness := RowWitness.topPrime 31189 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good181_checked :
    goodSegmentCheck 179 59 128
      { lower := 31368, upper := 31535, witness := RowWitness.topPrime 31357 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good182_checked :
    goodSegmentCheck 179 59 128
      { lower := 31536, upper := 31709, witness := RowWitness.topPrime 31531 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good183_checked :
    goodSegmentCheck 179 59 128
      { lower := 31710, upper := 31862, witness := RowWitness.topPrime 31699 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good184_checked :
    goodSegmentCheck 179 59 128
      { lower := 31974, upper := 32005, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good185_checked :
    goodSegmentCheck 179 59 128
      { lower := 32805, upper := 32946, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good186_checked :
    goodSegmentCheck 179 59 128
      { lower := 33614, upper := 33667, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good187_checked :
    goodSegmentCheck 179 59 128
      { lower := 33708, upper := 33792, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good188_checked :
    goodSegmentCheck 179 59 128
      { lower := 34322, upper := 34497, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good189_checked :
    goodSegmentCheck 179 59 128
      { lower := 34498, upper := 34569, witness := RowWitness.topPrime 34487 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good190_checked :
    goodSegmentCheck 179 59 128
      { lower := 37303, upper := 37388, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good191_checked :
    goodSegmentCheck 179 59 128
      { lower := 37446, upper := 37481, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_good192_checked :
    goodSegmentCheck 179 59 128
      { lower := 37500, upper := 37671, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good193_checked :
    goodSegmentCheck 179 59 128
      { lower := 37672, upper := 37716, witness := RowWitness.topPrime 37663 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good194_checked :
    goodSegmentCheck 179 59 128
      { lower := 38307, upper := 38469, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good195_checked :
    goodSegmentCheck 179 59 128
      { lower := 39366, upper := 39482, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good196_checked :
    goodSegmentCheck 179 59 128
      { lower := 40401, upper := 40506, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good197_checked :
    goodSegmentCheck 179 59 128
      { lower := 40931, upper := 41105, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good198_checked :
    goodSegmentCheck 179 59 128
      { lower := 41106, upper := 41109, witness := RowWitness.topPrime 41081 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good199_checked :
    goodSegmentCheck 179 59 128
      { lower := 45056, upper := 45068, witness := RowWitness.topPrime 45053 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good200_checked :
    goodSegmentCheck 179 59 128
      { lower := 45927, upper := 45974, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good201_checked :
    goodSegmentCheck 179 59 128
      { lower := 47045, upper := 47053, witness := RowWitness.topPrime 47041 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good202_checked :
    goodSegmentCheck 179 59 128
      { lower := 47526, upper := 47699, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good203_checked :
    goodSegmentCheck 179 59 128
      { lower := 47700, upper := 47702, witness := RowWitness.topPrime 47699 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good204_checked :
    goodSegmentCheck 179 59 128
      { lower := 48013, upper := 48139, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good205_checked :
    goodSegmentCheck 179 59 128
      { lower := 48387, upper := 48401, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good206_checked :
    goodSegmentCheck 179 59 128
      { lower := 48778, upper := 48846, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good207_checked :
    goodSegmentCheck 179 59 128
      { lower := 49152, upper := 49317, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_good208_checked :
    goodSegmentCheck 179 59 128
      { lower := 49318, upper := 49330, witness := RowWitness.topPrime 49307 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good209_checked :
    goodSegmentCheck 179 59 128
      { lower := 49379, upper := 49476, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good210_checked :
    goodSegmentCheck 179 59 128
      { lower := 50421, upper := 50588, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good211_checked :
    goodSegmentCheck 179 59 128
      { lower := 51076, upper := 51183, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good212_checked :
    goodSegmentCheck 179 59 128
      { lower := 53138, upper := 53223, witness := RowWitness.topPrime 53129 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good213_checked :
    goodSegmentCheck 179 59 128
      { lower := 53290, upper := 53316, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good214_checked :
    goodSegmentCheck 179 59 128
      { lower := 54043, upper := 54046, witness := RowWitness.topPrime 54037 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good215_checked :
    goodSegmentCheck 179 59 128
      { lower := 55451, upper := 55619, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good216_checked :
    goodSegmentCheck 179 59 128
      { lower := 55620, upper := 55625, witness := RowWitness.topPrime 55619 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good217_checked :
    goodSegmentCheck 179 59 128
      { lower := 56307, upper := 56347, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good218_checked :
    goodSegmentCheck 179 59 128
      { lower := 56454, upper := 56485, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good219_checked :
    goodSegmentCheck 179 59 128
      { lower := 57245, upper := 57300, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good220_checked :
    goodSegmentCheck 179 59 128
      { lower := 57344, upper := 57423, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good221_checked :
    goodSegmentCheck 179 59 128
      { lower := 58619, upper := 58742, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good222_checked :
    goodSegmentCheck 179 59 128
      { lower := 59049, upper := 59134, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good223_checked :
    goodSegmentCheck 179 59 128
      { lower := 59582, upper := 59583, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_good224_checked :
    goodSegmentCheck 179 59 128
      { lower := 62500, upper := 62588, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good225_checked :
    goodSegmentCheck 179 59 128
      { lower := 68694, upper := 68822, witness := RowWitness.topPrime 68687 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good226_checked :
    goodSegmentCheck 179 59 128
      { lower := 71407, upper := 71464, witness := RowWitness.topPrime 71399 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good227_checked :
    goodSegmentCheck 179 59 128
      { lower := 73167, upper := 73180, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good228_checked :
    goodSegmentCheck 179 59 128
      { lower := 73205, upper := 73345, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good229_checked :
    goodSegmentCheck 179 59 128
      { lower := 83667, upper := 83699, witness := RowWitness.topPrime 83663 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good230_checked :
    goodSegmentCheck 179 59 128
      { lower := 85805, upper := 85861, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good231_checked :
    goodSegmentCheck 179 59 128
      { lower := 89383, upper := 89551, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good232_checked :
    goodSegmentCheck 179 59 128
      { lower := 93845, upper := 93928, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good233_checked :
    goodSegmentCheck 179 59 128
      { lower := 96774, upper := 96783, witness := RowWitness.topPrime 96769 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good234_checked :
    goodSegmentCheck 179 59 128
      { lower := 98415, upper := 98482, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row179_good235_checked :
    goodSegmentCheck 179 59 128
      { lower := 148955, upper := 149055, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 179) (r := 59) (s := 128) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_good235_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_goods_checked :
    row179.goods.all (goodSegmentCheck row179.height.i row179.height.r row179.height.s) = true := by
  change row179_goods.all (goodSegmentCheck 179 59 128) = true
  simp only [row179_goods, List.all_cons, List.all_nil,
    row179_good000_checked,
    row179_good001_checked,
    row179_good002_checked,
    row179_good003_checked,
    row179_good004_checked,
    row179_good005_checked,
    row179_good006_checked,
    row179_good007_checked,
    row179_good008_checked,
    row179_good009_checked,
    row179_good010_checked,
    row179_good011_checked,
    row179_good012_checked,
    row179_good013_checked,
    row179_good014_checked,
    row179_good015_checked,
    row179_good016_checked,
    row179_good017_checked,
    row179_good018_checked,
    row179_good019_checked,
    row179_good020_checked,
    row179_good021_checked,
    row179_good022_checked,
    row179_good023_checked,
    row179_good024_checked,
    row179_good025_checked,
    row179_good026_checked,
    row179_good027_checked,
    row179_good028_checked,
    row179_good029_checked,
    row179_good030_checked,
    row179_good031_checked,
    row179_good032_checked,
    row179_good033_checked,
    row179_good034_checked,
    row179_good035_checked,
    row179_good036_checked,
    row179_good037_checked,
    row179_good038_checked,
    row179_good039_checked,
    row179_good040_checked,
    row179_good041_checked,
    row179_good042_checked,
    row179_good043_checked,
    row179_good044_checked,
    row179_good045_checked,
    row179_good046_checked,
    row179_good047_checked,
    row179_good048_checked,
    row179_good049_checked,
    row179_good050_checked,
    row179_good051_checked,
    row179_good052_checked,
    row179_good053_checked,
    row179_good054_checked,
    row179_good055_checked,
    row179_good056_checked,
    row179_good057_checked,
    row179_good058_checked,
    row179_good059_checked,
    row179_good060_checked,
    row179_good061_checked,
    row179_good062_checked,
    row179_good063_checked,
    row179_good064_checked,
    row179_good065_checked,
    row179_good066_checked,
    row179_good067_checked,
    row179_good068_checked,
    row179_good069_checked,
    row179_good070_checked,
    row179_good071_checked,
    row179_good072_checked,
    row179_good073_checked,
    row179_good074_checked,
    row179_good075_checked,
    row179_good076_checked,
    row179_good077_checked,
    row179_good078_checked,
    row179_good079_checked,
    row179_good080_checked,
    row179_good081_checked,
    row179_good082_checked,
    row179_good083_checked,
    row179_good084_checked,
    row179_good085_checked,
    row179_good086_checked,
    row179_good087_checked,
    row179_good088_checked,
    row179_good089_checked,
    row179_good090_checked,
    row179_good091_checked,
    row179_good092_checked,
    row179_good093_checked,
    row179_good094_checked,
    row179_good095_checked,
    row179_good096_checked,
    row179_good097_checked,
    row179_good098_checked,
    row179_good099_checked,
    row179_good100_checked,
    row179_good101_checked,
    row179_good102_checked,
    row179_good103_checked,
    row179_good104_checked,
    row179_good105_checked,
    row179_good106_checked,
    row179_good107_checked,
    row179_good108_checked,
    row179_good109_checked,
    row179_good110_checked,
    row179_good111_checked,
    row179_good112_checked,
    row179_good113_checked,
    row179_good114_checked,
    row179_good115_checked,
    row179_good116_checked,
    row179_good117_checked,
    row179_good118_checked,
    row179_good119_checked,
    row179_good120_checked,
    row179_good121_checked,
    row179_good122_checked,
    row179_good123_checked,
    row179_good124_checked,
    row179_good125_checked,
    row179_good126_checked,
    row179_good127_checked,
    row179_good128_checked,
    row179_good129_checked,
    row179_good130_checked,
    row179_good131_checked,
    row179_good132_checked,
    row179_good133_checked,
    row179_good134_checked,
    row179_good135_checked,
    row179_good136_checked,
    row179_good137_checked,
    row179_good138_checked,
    row179_good139_checked,
    row179_good140_checked,
    row179_good141_checked,
    row179_good142_checked,
    row179_good143_checked,
    row179_good144_checked,
    row179_good145_checked,
    row179_good146_checked,
    row179_good147_checked,
    row179_good148_checked,
    row179_good149_checked,
    row179_good150_checked,
    row179_good151_checked,
    row179_good152_checked,
    row179_good153_checked,
    row179_good154_checked,
    row179_good155_checked,
    row179_good156_checked,
    row179_good157_checked,
    row179_good158_checked,
    row179_good159_checked,
    row179_good160_checked,
    row179_good161_checked,
    row179_good162_checked,
    row179_good163_checked,
    row179_good164_checked,
    row179_good165_checked,
    row179_good166_checked,
    row179_good167_checked,
    row179_good168_checked,
    row179_good169_checked,
    row179_good170_checked,
    row179_good171_checked,
    row179_good172_checked,
    row179_good173_checked,
    row179_good174_checked,
    row179_good175_checked,
    row179_good176_checked,
    row179_good177_checked,
    row179_good178_checked,
    row179_good179_checked,
    row179_good180_checked,
    row179_good181_checked,
    row179_good182_checked,
    row179_good183_checked,
    row179_good184_checked,
    row179_good185_checked,
    row179_good186_checked,
    row179_good187_checked,
    row179_good188_checked,
    row179_good189_checked,
    row179_good190_checked,
    row179_good191_checked,
    row179_good192_checked,
    row179_good193_checked,
    row179_good194_checked,
    row179_good195_checked,
    row179_good196_checked,
    row179_good197_checked,
    row179_good198_checked,
    row179_good199_checked,
    row179_good200_checked,
    row179_good201_checked,
    row179_good202_checked,
    row179_good203_checked,
    row179_good204_checked,
    row179_good205_checked,
    row179_good206_checked,
    row179_good207_checked,
    row179_good208_checked,
    row179_good209_checked,
    row179_good210_checked,
    row179_good211_checked,
    row179_good212_checked,
    row179_good213_checked,
    row179_good214_checked,
    row179_good215_checked,
    row179_good216_checked,
    row179_good217_checked,
    row179_good218_checked,
    row179_good219_checked,
    row179_good220_checked,
    row179_good221_checked,
    row179_good222_checked,
    row179_good223_checked,
    row179_good224_checked,
    row179_good225_checked,
    row179_good226_checked,
    row179_good227_checked,
    row179_good228_checked,
    row179_good229_checked,
    row179_good230_checked,
    row179_good231_checked,
    row179_good232_checked,
    row179_good233_checked,
    row179_good234_checked,
    row179_good235_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_registered :
    decide (row179.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row179_small_checked :
    coverCheck (2 * row179.height.i + 2) (row179.height.i * (row179.height.i - 1) - 1)
      (row179.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row179_layerCover_checked :
    coverCheck (row179.height.i * (row179.height.i - 1)) (row179.height.n0 - 1)
      (row179.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row179_bounds : List NatInterval :=
  [(360, 537), (538, 701), (702, 879), (880, 1055), (1056, 1229), (1230, 1407), (1408, 1577), (1578, 1749), (1750, 1925), (1926, 2091), (2092, 2267), (2268, 2445), (2446, 2619), (2620, 2795), (2796, 2969), (2970, 3147), (3148, 3315), (3316, 3491), (3492, 3669), (3670, 3837), (3838, 4011), (4012, 4185), (4186, 4355), (4356, 4527), (4528, 4701), (4702, 4869), (4870, 5039), (5040, 5217), (5218, 5387), (5388, 5565), (5566, 5741), (5742, 5919), (5920, 6081), (6082, 6257), (6258, 6435), (6436, 6605), (6606, 6777), (6778, 6941), (6942, 7095), (7096, 7257), (7258, 7431), (7432, 7595), (7596, 7769), (7770, 7937), (7938, 8115), (8116, 8289), (8290, 8465), (8466, 8639), (8640, 8807), (8808, 8985), (8986, 9149), (9150, 9315), (9316, 9489), (9490, 9657), (9658, 9827), (9828, 9995), (9996, 10151), (10152, 10329), (10330, 10499), (10500, 10677), (10678, 10845), (10846, 11015), (11016, 11181), (11182, 11355), (11356, 11531), (11532, 11705), (11706, 11879), (11880, 12045), (12046, 12221), (12222, 12389), (12390, 12557), (12558, 12731), (12732, 12899), (12900, 13077), (13078, 13241), (13242, 13419), (13420, 13595), (13596, 13769), (13770, 13941), (13942, 14111), (14112, 14285), (14286, 14459), (14460, 14627), (14628, 14805), (14806, 14975), (14976, 15147), (15148, 15317), (15318, 15491), (15492, 15651), (15652, 15827), (15828, 16001), (16002, 16179), (16180, 16319), (16320, 16497), (16498, 16671), (16672, 16839), (16840, 17009), (17010, 17171), (17172, 17345), (17346, 17519), (17520, 17697), (17698, 17861), (17862, 18029), (18030, 18191), (18192, 18369), (18370, 18545), (18546, 18719), (18720, 18897), (18898, 19047), (19048, 19215), (19216, 19391), (19392, 19569), (19570, 19737), (19738, 19905), (19906, 20069), (20070, 20241), (20242, 20411), (20412, 20589), (20590, 20741), (20742, 20909), (20910, 21081), (21082, 21245), (21246, 21405), (21406, 21579), (21580, 21755), (21756, 21929), (21930, 22107), (22108, 22271), (22272, 22449), (22450, 22625), (22626, 22799), (22800, 22965), (22966, 23141), (23142, 23309), (23310, 23475), (23476, 23651), (23652, 23811), (23812, 23979), (23980, 24155), (24156, 24329), (24330, 24507), (24508, 24677), (24678, 24855), (24856, 25029), (25030, 25191), (25192, 25367), (25368, 25545), (25546, 25719), (25720, 25895), (25896, 26067), (26068, 26231), (26232, 26405), (26406, 26577), (26578, 26751), (26752, 26915), (26916, 27081), (27082, 27255), (27256, 27431), (27432, 27609), (27610, 27761), (27762, 27929), (27930, 28097), (28098, 28275), (28276, 28407), (28408, 28581), (28582, 28757), (28758, 28931), (28932, 29105), (29106, 29279), (29280, 29447), (29448, 29621), (29622, 29789), (29790, 29967), (29968, 30137), (30138, 30315), (30316, 30491), (30492, 30669), (30670, 30839), (30840, 31017), (31018, 31191), (31192, 31367), (31368, 31535), (31536, 31709), (31710, 31862), (31974, 32005), (32805, 32946), (33614, 33667), (33708, 33792), (34322, 34497), (34498, 34569), (37303, 37388), (37446, 37481), (37500, 37671), (37672, 37716), (38307, 38469), (39366, 39482), (40401, 40506), (40931, 41105), (41106, 41109), (45056, 45068), (45927, 45974), (47045, 47053), (47526, 47699), (47700, 47702), (48013, 48139), (48387, 48401), (48778, 48846), (49152, 49317), (49318, 49330), (49379, 49476), (50421, 50588), (51076, 51183), (53138, 53223), (53290, 53316), (54043, 54046), (55451, 55619), (55620, 55625), (56307, 56347), (56454, 56485), (57245, 57300), (57344, 57423), (58619, 58742), (59049, 59134), (59582, 59583), (62500, 62588), (68694, 68822), (71407, 71464), (73167, 73180), (73205, 73345), (83667, 83699), (85805, 85861), (89383, 89551), (93845, 93928), (96774, 96783), (98415, 98482), (148955, 149055)]

theorem row179_bounds_eq : row179.goods.map goodSegmentBounds = row179_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row179_layer000_intervals : List ColouredInterval :=
  [(2, 32768, 32946), (2, 36864, 37042), (2, 40960, 41138), (2, 45056, 45234), (2, 49152, 49330), (2, 32768, 32946), (2, 40960, 41138), (2, 49152, 49330), (2, 57344, 57522), (2, 32768, 32946), (2, 49152, 49330), (2, 32768, 32946), (3, 32805, 32983), (3, 39366, 39544), (3, 45927, 46105), (3, 52488, 52666), (3, 59049, 59227), (3, 39366, 39544), (3, 59049, 59227), (3, 59049, 59227), (5, 34375, 34553), (5, 37500, 37678), (5, 46875, 47053), (5, 62500, 62678), (7, 33614, 33792), (7, 50421, 50599), (11, 43923, 44101), (11, 58564, 58742), (13, 57122, 57300), (17, 34391, 34569), (17, 39304, 39482), (17, 44217, 44395), (17, 49130, 49308), (17, 54043, 54221), (17, 58956, 59134), (19, 34295, 34473), (19, 41154, 41332), (19, 48013, 48191), (19, 54872, 55050), (19, 61731, 61909), (23, 36501, 36679), (23, 48668, 48846), (23, 60835, 61013), (29, 48778, 48956), (31, 59582, 59760), (37, 50653, 50831), (53, 33708, 33886), (59, 34810, 34988), (59, 38291, 38469), (59, 41772, 41950), (61, 33489, 33667), (61, 37210, 37388), (61, 40931, 41109), (61, 44652, 44830), (67, 35912, 36090), (67, 40401, 40579), (67, 44890, 45068), (67, 49379, 49557), (67, 53868, 54046), (71, 35287, 35465), (71, 40328, 40506), (71, 45369, 45547), (71, 50410, 50588), (71, 55451, 55629), (71, 60492, 60670), (73, 31974, 32152), (73, 37303, 37481), (73, 42632, 42810), (73, 47961, 48139), (73, 53290, 53468), (73, 58619, 58797), (79, 37446, 37624), (79, 43687, 43865), (79, 49928, 50106), (79, 56169, 56347), (79, 62410, 62588), (83, 34445, 34623), (83, 41334, 41512), (83, 48223, 48401), (83, 55112, 55290), (83, 62001, 62179), (89, 31862, 31862), (89, 39605, 39783), (89, 47526, 47704), (89, 55447, 55625), (89, 63368, 63546), (97, 37636, 37814), (97, 47045, 47223), (97, 56454, 56632), (101, 40804, 40982), (101, 51005, 51183), (101, 61206, 61384), (103, 31862, 32005), (103, 42436, 42614), (103, 53045, 53223), (103, 63654, 63723), (107, 34347, 34525), (107, 45796, 45974), (107, 57245, 57423), (109, 35643, 35821), (109, 47524, 47702), (109, 59405, 59583), (113, 38307, 38485), (113, 51076, 51254), (127, 32258, 32436), (127, 48387, 48565), (131, 34322, 34500), (131, 51483, 51661), (137, 37538, 37716), (137, 56307, 56485), (139, 38642, 38820), (139, 57963, 58141), (149, 44402, 44580), (151, 45602, 45780), (157, 49298, 49476), (163, 53138, 53316), (167, 55778, 55956), (173, 59858, 60036)]

def row179_layer000_block000 : List ColouredInterval :=
  [(2, 32768, 32946), (2, 36864, 37042), (2, 40960, 41138), (2, 45056, 45234), (2, 49152, 49330), (2, 32768, 32946), (2, 40960, 41138), (2, 49152, 49330), (2, 57344, 57522), (2, 32768, 32946), (2, 49152, 49330), (2, 32768, 32946), (3, 32805, 32983), (3, 39366, 39544), (3, 45927, 46105), (3, 52488, 52666)]

def row179_layer000_block001 : List ColouredInterval :=
  [(3, 59049, 59227), (3, 39366, 39544), (3, 59049, 59227), (3, 59049, 59227), (5, 34375, 34553), (5, 37500, 37678), (5, 46875, 47053), (5, 62500, 62678), (7, 33614, 33792), (7, 50421, 50599), (11, 43923, 44101), (11, 58564, 58742), (13, 57122, 57300), (17, 34391, 34569), (17, 39304, 39482), (17, 44217, 44395)]

def row179_layer000_block002 : List ColouredInterval :=
  [(17, 49130, 49308), (17, 54043, 54221), (17, 58956, 59134), (19, 34295, 34473), (19, 41154, 41332), (19, 48013, 48191), (19, 54872, 55050), (19, 61731, 61909), (23, 36501, 36679), (23, 48668, 48846), (23, 60835, 61013), (29, 48778, 48956), (31, 59582, 59760), (37, 50653, 50831), (53, 33708, 33886), (59, 34810, 34988)]

def row179_layer000_block003 : List ColouredInterval :=
  [(59, 38291, 38469), (59, 41772, 41950), (61, 33489, 33667), (61, 37210, 37388), (61, 40931, 41109), (61, 44652, 44830), (67, 35912, 36090), (67, 40401, 40579), (67, 44890, 45068), (67, 49379, 49557), (67, 53868, 54046), (71, 35287, 35465), (71, 40328, 40506), (71, 45369, 45547), (71, 50410, 50588), (71, 55451, 55629)]

def row179_layer000_block004 : List ColouredInterval :=
  [(71, 60492, 60670), (73, 31974, 32152), (73, 37303, 37481), (73, 42632, 42810), (73, 47961, 48139), (73, 53290, 53468), (73, 58619, 58797), (79, 37446, 37624), (79, 43687, 43865), (79, 49928, 50106), (79, 56169, 56347), (79, 62410, 62588), (83, 34445, 34623), (83, 41334, 41512), (83, 48223, 48401), (83, 55112, 55290)]

def row179_layer000_block005 : List ColouredInterval :=
  [(83, 62001, 62179), (89, 31862, 31862), (89, 39605, 39783), (89, 47526, 47704), (89, 55447, 55625), (89, 63368, 63546), (97, 37636, 37814), (97, 47045, 47223), (97, 56454, 56632), (101, 40804, 40982), (101, 51005, 51183), (101, 61206, 61384), (103, 31862, 32005), (103, 42436, 42614), (103, 53045, 53223), (103, 63654, 63723)]

def row179_layer000_block006 : List ColouredInterval :=
  [(107, 34347, 34525), (107, 45796, 45974), (107, 57245, 57423), (109, 35643, 35821), (109, 47524, 47702), (109, 59405, 59583), (113, 38307, 38485), (113, 51076, 51254), (127, 32258, 32436), (127, 48387, 48565), (131, 34322, 34500), (131, 51483, 51661), (137, 37538, 37716), (137, 56307, 56485), (139, 38642, 38820), (139, 57963, 58141)]

def row179_layer000_block007 : List ColouredInterval :=
  [(149, 44402, 44580), (151, 45602, 45780), (157, 49298, 49476), (163, 53138, 53316), (167, 55778, 55956), (173, 59858, 60036)]

def row179_layer000_chunks : List (List ColouredInterval) :=
  [row179_layer000_block000, row179_layer000_block001, row179_layer000_block002, row179_layer000_block003, row179_layer000_block004, row179_layer000_block005, row179_layer000_block006, row179_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_layer000_arithmetic : LayerArithmeticValid row179.height { lower := 31862, upper := 63724, M := 12 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_layer000_enumeration :
    activePowerIntervalList 179 12 31862 63724 = row179_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_layer000_pairs000 :
    row179_layer000_block000.all (fun I => row179_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row179_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_layer000_pairs001 :
    row179_layer000_block001.all (fun I => row179_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row179_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_layer000_pairs002 :
    row179_layer000_block002.all (fun I => row179_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row179_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_layer000_pairs003 :
    row179_layer000_block003.all (fun I => row179_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row179_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_layer000_pairs004 :
    row179_layer000_block004.all (fun I => row179_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row179_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_layer000_pairs005 :
    row179_layer000_block005.all (fun I => row179_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row179_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_layer000_pairs006 :
    row179_layer000_block006.all (fun I => row179_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row179_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_layer000_pairs007 :
    row179_layer000_block007.all (fun I => row179_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row179_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_layer000_chunks_eq : row179_layer000_chunks.flatten = row179_layer000_intervals := by
  rfl

theorem row179_layer000_pairs : pairCoverCheck row179_layer000_intervals row179_bounds = true := by
  apply pairCoverCheck_of_chunks row179_layer000_chunks_eq
  intro block hblock
  simp only [row179_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row179_layer000_pairs000
  · exact row179_layer000_pairs001
  · exact row179_layer000_pairs002
  · exact row179_layer000_pairs003
  · exact row179_layer000_pairs004
  · exact row179_layer000_pairs005
  · exact row179_layer000_pairs006
  · exact row179_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_layer000_checked :
    coverLayerCheck row179.height row179.goods { lower := 31862, upper := 63724, M := 12 } = true := by
  exact coverLayerCheck_of_parts row179_layer000_arithmetic row179_layer000_enumeration row179_bounds_eq row179_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_layer000_checked
